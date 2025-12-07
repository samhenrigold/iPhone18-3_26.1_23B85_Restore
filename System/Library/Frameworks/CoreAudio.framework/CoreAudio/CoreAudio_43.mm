void sub_1DE536714(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5366E8);
}

void CAAudioValueRange_ComputeUnion(double *a1, double **a2, void *a3)
{
  a3[1] = *a3;
  v6 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
LABEL_9:
    v15 = *a1;
    std::vector<CAAudioValueRange>::push_back[abi:ne200100](a3, &v15);
    return;
  }

  v8 = *a1;
  if (v6[1] < *a1)
  {
    v9 = v6 + 2;
    while (1)
    {
      std::vector<CAAudioValueRange>::push_back[abi:ne200100](a3, v9 - 1);
      v5 = a2[1];
      if (v9 == v5)
      {
        goto LABEL_9;
      }

      v10 = v9[1];
      v8 = *a1;
      v9 += 2;
      if (v10 >= *a1)
      {
        v6 = v9 - 2;
        break;
      }
    }
  }

  v11 = a1[1];
  if (*v6 <= v11)
  {
    v13 = v6 + 2;
    do
    {
      v12 = v13;
      if (v13 == v5)
      {
        break;
      }

      v13 += 2;
    }

    while (*v12 <= v11);
    if (v8 >= *v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = a1;
    }

    if (*(v12 - 1) >= v11)
    {
      v11 = *(v12 - 1);
    }

    *&v15 = *v14;
    *(&v15 + 1) = v11;
    std::vector<CAAudioValueRange>::push_back[abi:ne200100](a3, &v15);
  }

  else
  {
    *&v15 = v8;
    *(&v15 + 1) = v11;
    std::vector<CAAudioValueRange>::push_back[abi:ne200100](a3, &v15);
    v12 = v6;
  }

  while (v12 != a2[1])
  {
    std::vector<CAAudioValueRange>::push_back[abi:ne200100](a3, v12);
    v12 += 2;
  }
}

void std::vector<CAAudioValueRange>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<CA::ValueRange>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void ADS::PropertyManager::FindProperty(ADS::PropertyManager *this, __int128 a2, int a3)
{
  v4 = *(&a2 + 1);
  v5 = a2;
  std::mutex::lock(a2);
  v7 = *(v5 + 64);
  v8 = *(v5 + 72);
  if (v7 != v8)
  {
    while (1)
    {
      v9 = *v7;
      v10 = v7[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = (*(*v9 + 64))(v9) == v4 && a3 == v11;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v13)
      {
        break;
      }

      v7 += 2;
      if (v7 == v8)
      {
        v7 = v8;
        break;
      }
    }

    v8 = *(v5 + 72);
  }

  if (v7 == v8)
  {
    *this = 0;
    *(this + 1) = 0;
  }

  else
  {
    v14 = v7[1];
    *this = *v7;
    *(this + 1) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::mutex::unlock(v5);
}

void sub_1DE536A40(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t ADS::PropertyManager::Size(std::mutex *this)
{
  std::mutex::lock(this);
  v2 = (*this[1].__m_.__opaque - this[1].__m_.__sig) >> 4;
  std::mutex::unlock(this);
  return v2;
}

void ADS::PropertyManager::AddProperty(uint64_t a1, __int128 *a2)
{
  std::mutex::lock(a1);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  if (v4 >= v5)
  {
    v8 = *(a1 + 64);
    v9 = (v4 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
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
      if (!(v12 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = 16 * v9;
    v14 = *a2;
    *(16 * v9) = *a2;
    if (*(&v14 + 1))
    {
      atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v13 + 16);
    v15 = *(a1 + 64);
    v16 = *(a1 + 72) - v15;
    v17 = v13 - v16;
    memcpy((v13 - v16), v15, v16);
    *(a1 + 64) = v17;
    *(a1 + 72) = v7;
    *(a1 + 80) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 72) = v7;

  std::mutex::unlock(a1);
}

void sub_1DE536BE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE536C48(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t std::__split_buffer<std::unique_ptr<HALS_PlugInManager::DeferredPlugInLoadInfo>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<HALS_PlugInManager::DeferredPlugInLoadInfo>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

HALS_PlugInManager::DeferredPlugInLoadInfo *std::unique_ptr<HALS_PlugInManager::DeferredPlugInLoadInfo>::reset[abi:ne200100](HALS_PlugInManager::DeferredPlugInLoadInfo **a1, HALS_PlugInManager::DeferredPlugInLoadInfo *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HALS_PlugInManager::DeferredPlugInLoadInfo::~DeferredPlugInLoadInfo(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void HALS_PlugInManager::DeferredPlugInLoadInfo::~DeferredPlugInLoadInfo(HALS_PlugInManager::DeferredPlugInLoadInfo *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  v4 = *(this + 4);
  if (v3 != v4)
  {
    do
    {
      IOObjectRelease(*v3++);
    }

    while (v3 != v4);
    v3 = *(this + 3);
  }

  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

void HALS_PlugInManager::LoadPlugIns(HALS_PlugInManager *this)
{
  v6[128] = *MEMORY[0x1E69E9840];
  v2 = xmmword_1E8676898;
  v4 = xmmword_1E8676898;
  v1 = "/Library/Apple/Audio/Plug-Ins/HAL";
  v5 = "/Library/Apple/Audio/Plug-Ins/HAL";
  memset(v3, 0, sizeof(v3));
  std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(v3, &v4, v6);
}

void sub_1DE537C1C(_Unwind_Exception *a1)
{
  v3 = v1[25];
  CACFArray::~CACFArray((v1 + 19));
  CACFObject<__CFURL const*>::~CACFObject((v1 + 21));
  CACFString::~CACFString((v1 + 23));
  if (v3)
  {
    v1[26] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1DE537CC4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE537CCCLL);
  }

  __clang_call_terminate(a1);
}

void HALS_PlugInManager::CreatePlugIn(HALS_PlugInManager *this, const __CFURL *a2)
{
  v3[10] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v2[1] = 0;
  HALS_System::GetInstance(v3, 0, v2);
  operator new();
}

void sub_1DE538FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  __cxa_free_exception(v20);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef((v19 + 88));
  applesauce::CF::StringRef::~StringRef((v19 + 80));
  v23 = *v21;
  *v21 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v24);
  MEMORY[0x1E12C1730](v18, 0x10E1C402831BD4ELL);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_PlugInManager::DeferredPlugInLoadingMatchingHandler(HALS_PlugInManager *this, io_iterator_t iterator)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *HALS_PlugInManager::sDeferredPlugInLoadList;
  v3 = *(HALS_PlugInManager::sDeferredPlugInLoadList + 8);
  if (*HALS_PlugInManager::sDeferredPlugInLoadList != v3)
  {
    while (**v4 != this)
    {
      v4 += 8;
      if (v4 == v3)
      {
        goto LABEL_9;
      }
    }
  }

  if (v4 != v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 136315394;
      *&v7[1] = "HALS_PlugInManager.cpp";
      v8 = 1024;
      v9 = 655;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInManager::DeferredPlugInLoadingMatchingHandler: Loading....", v7, 0x12u);
    }

    HALS_PlugInManager::CreatePlugIn(*(*v4 + 8), v5);
  }

LABEL_9:
  for (result = IOIteratorNext(iterator); result; result = IOIteratorNext(iterator))
  {
    IOObjectRelease(result);
  }

  return result;
}

void sub_1DE5392F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE5392A4);
  }

  _Unwind_Resume(a1);
}

uint64_t CATimeUtilities::GregorianDateFromAbsoluteTime(CATimeUtilities *this, CFAbsoluteTime a2)
{
  {
    CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz = CFTimeZoneCopySystem();
  }

  v3 = CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz;

  return *&CFAbsoluteTimeGetGregorianDate(a2, v3);
}

void non-virtual thunk toAMCP::Null::Driver::~Driver(AMCP::Null::Driver *this)
{
  AMCP::Null::Driver::~Driver((this - 24));

  JUMPOUT(0x1E12C1730);
}

{
  AMCP::Null::Driver::~Driver((this - 24));
}

void AMCP::Null::Driver::~Driver(AMCP::Null::Driver *this)
{
  *this = &unk_1F5978CF0;
  *(this + 3) = &unk_1F5978D18;
  v4 = (this + 120);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::mutex::~mutex((this + 56));
  *(this + 3) = &unk_1F59748E8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  AMCP::Null::Driver::~Driver(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Null::Driver::shutdown(AMCP::Null::Driver *this)
{
  v1 = this;
  v24 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    this = AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 16);
  switch(v5)
  {
    case 3:
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "Null_Driver_Imp.cpp";
        v22 = 1024;
        v23 = 41;
        v18 = v17;
        v19 = OS_LOG_TYPE_INFO;
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v18, v19, "%32s:%-5d Tearing down Null driver", &v20, 0x12u);
      }

      break;
    case 2:
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
        v20 = 136315394;
        v21 = "Null_Driver_Imp.cpp";
        v22 = 1024;
        v23 = 41;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tearing down Null driver", &v20, 0x12u);
      }

      break;
    case 1:
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315394;
        v21 = "Null_Driver_Imp.cpp";
        v22 = 1024;
        v23 = 41;
        v18 = v9;
        v19 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_29;
      }

      break;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  AMCP::Core::Broker::destroy_core(*(*(v1 + 4) + 16), *(v1 + 12));
}

void sub_1DE53974C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Null::Driver::build_core(void)::$_1,std::allocator<AMCP::Null::Driver::build_core(void)::$_1>,void ()(std::vector<unsigned int> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Driver10build_coreEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Driver::build_core(void)::$_1,std::allocator<AMCP::Null::Driver::build_core(void)::$_1>,void ()(std::vector<unsigned int> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v7[7] = *MEMORY[0x1E69E9840];
  std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(lpsrc, *(*(a1 + 8) + 8), *(*(a1 + 8) + 16));
  {
    v6[0] = v3;
    v6[1] = lpsrc[1];
    v4 = lpsrc;
  }

  else
  {
    v4 = v6;
  }

  *v4 = 0;
  v4[1] = 0;
  memset(v7, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v7, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  v7[6] = 0;
  operator new();
}

void sub_1DE539A78(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v4 = v2[2];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Driver15destroy_objectsERKNSt3__16vectorIjNS2_9allocatorIjEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[1];
  std::mutex::lock((v2 + 56));
  v3 = a1[3];
  v4 = a1[4];
  while (v3 != v4)
  {
    v5 = a1[1];
    v7 = *(v5 + 120);
    v6 = *(v5 + 128);
    if (v7 != v6)
    {
      while (*(*v7 + 88) != *v3)
      {
        v7 += 16;
        if (v7 == v6)
        {
          v7 = *(v5 + 128);
          break;
        }
      }
    }

    if (v6 != v7)
    {
      if (v7 + 16 == v6)
      {
        v10 = v7;
      }

      else
      {
        do
        {
          v8 = *(v7 + 16);
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
          v9 = *(v7 + 8);
          *v7 = v8;
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          v10 = v7 + 16;
          v11 = v7 + 32;
          v7 += 16;
        }

        while (v11 != v6);
        v6 = *(v5 + 128);
      }

      while (v6 != v10)
      {
        v12 = *(v6 - 8);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v6 -= 16;
      }

      *(v5 + 128) = v10;
    }

    ++v3;
  }

  std::mutex::unlock((v2 + 56));
}

void std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::destroy[abi:ne200100](void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t *std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F5978F70;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2 + 3, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
}

void sub_1DE539D10(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE539DB8(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5978F70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0,std::allocator<AMCP::Null::Driver::destroy_objects(std::vector<unsigned int> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5978F70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Driver::build_core(void)::$_1,std::allocator<AMCP::Null::Driver::build_core(void)::$_1>,void ()(std::vector<unsigned int> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5978E70;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Null::Driver::build_core(void)::$_0,std::allocator<AMCP::Null::Driver::build_core(void)::$_0>,std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Driver10build_coreEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Driver::build_core(void)::$_0,std::allocator<AMCP::Null::Driver::build_core(void)::$_0>,std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::operator()(void *a3@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  operator new();
}

void sub_1DE53A2A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6Driver14create_objectsERKN10applesauce2CF8ArrayRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v11[0] = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 1));
  if (is_valid)
  {
    v3 = *(v1 + 40);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(v8) = 1633841016;
    BYTE4(v8) = 1;
    memset(buf, 0, 24);
    std::vector<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*,std::tuple<unsigned int,AMCP::Null::Expected_Class_Is_Subclass> const*>(buf, &v8, &v9);
  }

  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
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
    *buf = 136315650;
    *&buf[4] = "Null_Driver_Imp.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 113;
    *&buf[18] = 2080;
    *&buf[20] = "expiration_check.is_valid()";
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", buf, 0x1Cu);
  }

  abort();
}

void sub_1DE53A970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void ***a25, uint64_t a26, uint64_t a27, void **a28)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  a25 = &a28;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a28 = &a22;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5978EF0;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5978EF0;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0,std::allocator<AMCP::Null::Driver::create_objects(applesauce::CF::ArrayRef const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5978EF0;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<AMCP::Null::Driver::build_core(void)::$_0,std::allocator<AMCP::Null::Driver::build_core(void)::$_0>,std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5978DE0;
  a2[1] = v2;
  return result;
}

void AMCP::DAL::AUParameter_Data_Handler::get_data(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t *AMCP::DAL::AUParameter_Data_Handler::get_ring_buffer_time_translator(AMCP::DAL::AUParameter_Data_Handler *this)
{
  {
    AMCP::DAL::AUParameter_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator = &unk_1F59790B0;
  }

  return &AMCP::DAL::AUParameter_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator;
}

void AMCP::DAL::AUParameter_Buffer_Time_Translator::translate_range(const AMCP::DAL::DAL_Time_Range *a1@<X1>, const AMCP::DAL::DAL_Time_Range *a2@<X2>, std::__shared_weak_count *a3@<X8>)
{
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(a1);
  v7 = *(a1 + 24);
  v8 = *(a1 + 4);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v28) = 2;
  *(&v28 + 1) = sample_time;
  v29 = 0;
  v30 = v7;
  v31 = *a2;
  v9 = *(a2 + 3);
  *&v32 = *(a2 + 2);
  *(&v32 + 1) = v9;
  v10 = *(a2 + 4);
  v33 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = *(a2 + 40);
  v11 = *(a2 + 8);
  v35 = *(a2 + 7);
  v36 = v11;
  v12 = *(a2 + 9);
  v37 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Time::operator-=(&v31, &v28);
  AMCP::DAL::DAL_Time::operator-=(&v34, &v28);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(v38, &v31);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (*(&v30 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
  }

  v13 = AMCP::DAL::DAL_Time::get_sample_time(v38);
  v14 = AMCP::DAL::DAL_Time::get_sample_time(&v40);
  v28 = *a2;
  v15 = *(a2 + 3);
  v29 = *(a2 + 2);
  v16 = *(a2 + 4);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = *(a2 + 40);
  v17 = *(a2 + 8);
  v27 = *(a2 + 7);
  v18 = *(a2 + 9);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a3->__vftable = 0;
  a3->__shared_owners_ = 0;
  a3->__shared_weak_owners_ = 0;
  v33 = a3;
  v19 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>(1);
  *(&v32 + 1) = v19 + 96 * v20;
  *v19 = v13;
  *(v19 + 1) = v14;
  *(v19 + 1) = v28;
  *(v19 + 4) = v29;
  *(v19 + 5) = v15;
  *(v19 + 6) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v19 + 56) = v26;
  *(v19 + 9) = v27;
  *(v19 + 10) = v17;
  *(v19 + 11) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v32 = v19 + 96;
  shared_owners = a3->__shared_owners_;
  v22 = (v19 + a3->__vftable - shared_owners);
  std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>,AMCP::DAL::Buffer_Time_Translator::Translation_Range*>(a3->__vftable, shared_owners, v22);
  v23 = a3->__vftable;
  a3->__vftable = v22;
  shared_weak_owners = a3->__shared_weak_owners_;
  v25 = v32;
  *&a3->__shared_owners_ = v32;
  *&v32 = v23;
  *(&v32 + 1) = shared_weak_owners;
  *&v31 = v23;
  *(&v31 + 1) = v23;
  std::__split_buffer<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range> &>::~__split_buffer(&v31);
  a3->__shared_owners_ = v25;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }
}

void sub_1DE53AF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, ...)
{
  va_start(va, a20);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(va);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *AMCP::DAL::AUParameter_Data_Handler::mix(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v9 = (AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::AUParameter_Data_Handler>(*a2) + 56);
  v10 = *(a1 + 80);

  return AMCP::DAL::merge_values(v10, v9, a3, a4, a5);
}

uint64_t AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::AUParameter_Data_Handler>(uint64_t result)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v1 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

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

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "Container.h";
      v18 = 1024;
      v19 = 121;
      v20 = 2080;
      v21 = "not ((m_impl.get()) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to call Container::GetContainerData on a null Container", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v15);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v7, "Attempt to call Container::GetContainerData on a null Container", v5);
    std::logic_error::logic_error(&v8, &v7);
    v8.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v9, &v8);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = -1;
    v9.__vftable = &unk_1F5991430;
    v10 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v9);
    v22 = "T *AMCP::DAL::Container::get_container_data_ptr() const [T = AMCP::DAL::AUParameter_Data_Handler]";
    v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.h";
    v24 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v6);
  }

  return result;
}

void sub_1DE53B2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *AMCP::DAL::merge_values(caulk::rt_safe_memory_resource *result, uint64_t *a2, double a3, double a4, double a5)
{
  if (result)
  {
    v9 = result;
    v10 = a3 - a5;
    v11 = round(a3);
    v12 = round(a4);
    v13 = a2 + 4;
    v66 = a2 + 3;
    do
    {
      v69 = 0;
      v14 = 0uLL;
      v68 = 0u;
      v15 = *(v9 + 4);
      v16 = *(v9 + 5);
      if (v15 != v16)
      {
        do
        {
          v18 = *v15;
          v19 = *v15 + 1.0;
          v20 = round(*v15);
          v21 = round(v19);
          if (v20 < v11)
          {
            v18 = a3;
          }

          if (v12 < v21)
          {
            v19 = a4;
          }

          v22 = round(v18);
          v23 = round(v19);
          if (v20 < v21)
          {
            v24 = v12;
          }

          else
          {
            v24 = v21;
          }

          if (v20 < v21)
          {
            v25 = v11;
          }

          else
          {
            v25 = v20;
          }

          if (v20 >= v21 || v11 >= v12)
          {
            v23 = v24;
            v22 = v25;
          }

          if (v22 < v23 || v11 < v12 && v20 < v21 && (v20 != v12 ? (v17 = v11 == v21) : (v17 = 1), v17))
          {
            caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>::push_back(&v68, v15);
          }

          v15 += 2;
        }

        while (v15 != v16);
        v14 = v68;
      }

      v27 = *(&v14 + 1);
      for (i = v14; i != v27; ++i)
      {
        v67 = *i;
        *&v67 = *&v67 - v10;
        v29 = *a2;
        v30 = a2[1];
        v31 = std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::find<AMCP::DAL::AUParameterKey>(*a2, v30, v9 + 4);
        if (v31)
        {
          goto LABEL_115;
        }

        v32 = *(v9 + 4);
        v33 = *(v9 + 5);
        v34 = *(v9 + 6);
        v35 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v33) ^ ((0xC6A4A7935BD1E995 * v33) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v32) ^ ((0xC6A4A7935BD1E995 * v32) >> 47)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v34) ^ ((0xC6A4A7935BD1E995 * v34) >> 47)))) + 3864292196u;
        if (v30)
        {
          v36 = vcnt_s8(v30);
          v36.i16[0] = vaddlv_u8(v36);
          if (v36.u32[0] > 1uLL)
          {
            v5 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v33) ^ ((0xC6A4A7935BD1E995 * v33) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v32) ^ ((0xC6A4A7935BD1E995 * v32) >> 47)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v34) ^ ((0xC6A4A7935BD1E995 * v34) >> 47)))) + 3864292196u;
            if (v35 >= v30)
            {
              v5 = v35 % v30;
            }
          }

          else
          {
            v5 = v35 & (v30 - 1);
          }

          v37 = *(v29 + 8 * v5);
          if (v37)
          {
            for (j = *v37; j; j = *j)
            {
              v39 = j[1];
              if (v39 == v35)
              {
                if (*(j + 4) == v32 && *(j + 20) == __PAIR64__(v34, v33))
                {
                  goto LABEL_114;
                }
              }

              else
              {
                if (v36.u32[0] > 1uLL)
                {
                  if (v39 >= v30)
                  {
                    v39 %= v30;
                  }
                }

                else
                {
                  v39 &= v30 - 1;
                }

                if (v39 != v5)
                {
                  break;
                }
              }
            }
          }
        }

        v40 = (*(**v13 + 16))(*v13, 56, 8);
        v70 = v40;
        v71 = v13;
        v72 = 0;
        *v40 = 0;
        *(v40 + 8) = v35;
        v41 = *(v9 + 6);
        *(v40 + 16) = *(v9 + 2);
        *(v40 + 24) = v41;
        *(v40 + 40) = 0;
        *(v40 + 48) = 0;
        *(v40 + 32) = 0;
        v42 = a2[5];
        v43 = *(a2 + 12);
        LOBYTE(v72) = 1;
        v44 = (v42 + 1);
        if (!v30 || (v43 * v30) < v44)
        {
          v45 = (v30 & (v30 - 1)) != 0;
          if (v30 < 3)
          {
            v45 = 1;
          }

          v46 = v45 | (2 * v30);
          v47 = vcvtps_u32_f32(v44 / v43);
          if (v46 <= v47)
          {
            prime = v47;
          }

          else
          {
            prime = v46;
          }

          if (*&prime == 1)
          {
            prime = 2;
          }

          else if ((*&prime & (*&prime - 1)) != 0)
          {
            prime = std::__next_prime(*&prime);
          }

          v49 = a2[1];
          if (*&prime > *&v49)
          {
            goto LABEL_63;
          }

          if (*&prime < *&v49)
          {
            v56 = vcvtps_u32_f32(a2[5] / *(a2 + 12));
            if (*&v49 < 3uLL || (v57 = vcnt_s8(v49), v57.i16[0] = vaddlv_u8(v57), v57.u32[0] > 1uLL))
            {
              v56 = std::__next_prime(v56);
            }

            else
            {
              v58 = 1 << -__clz(v56 - 1);
              if (v56 >= 2)
              {
                v56 = v58;
              }
            }

            if (*&prime <= v56)
            {
              prime = v56;
            }

            if (*&prime < *&v49)
            {
              if (prime)
              {
LABEL_63:
                if (*&prime >> 61)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v50 = (*(*a2[2] + 16))(a2[2], 8 * *&prime, 8);
                v51 = *a2;
                *a2 = v50;
                if (v51)
                {
                  std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *> *> *>>::deallocate[abi:ne200100](a2[2], v51, a2[1]);
                }

                v52 = 0;
                a2[1] = prime;
                do
                {
                  *(*a2 + 8 * v52++) = 0;
                }

                while (*&prime != v52);
                v53 = *v66;
                if (*v66)
                {
                  v54 = v53[1];
                  v55 = vcnt_s8(prime);
                  v55.i16[0] = vaddlv_u8(v55);
                  if (v55.u32[0] > 1uLL)
                  {
                    if (v54 >= *&prime)
                    {
                      v54 %= *&prime;
                    }
                  }

                  else
                  {
                    v54 &= *&prime - 1;
                  }

                  *(*a2 + 8 * v54) = v66;
                  v59 = *v53;
                  if (*v53)
                  {
                    do
                    {
                      v60 = v59[1];
                      if (v55.u32[0] > 1uLL)
                      {
                        if (v60 >= *&prime)
                        {
                          v60 %= *&prime;
                        }
                      }

                      else
                      {
                        v60 &= *&prime - 1;
                      }

                      if (v60 != v54)
                      {
                        v61 = *a2;
                        if (!*(*a2 + 8 * v60))
                        {
                          *(v61 + 8 * v60) = v53;
                          goto LABEL_88;
                        }

                        *v53 = *v59;
                        *v59 = **(v61 + 8 * v60);
                        **(v61 + 8 * v60) = v59;
                        v59 = v53;
                      }

                      v60 = v54;
LABEL_88:
                      v53 = v59;
                      v59 = *v59;
                      v54 = v60;
                    }

                    while (v59);
                  }
                }
              }

              else
              {
                v62 = *a2;
                *a2 = 0;
                if (v62)
                {
                  std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *> *> *>>::deallocate[abi:ne200100](a2[2], v62, a2[1]);
                }

                a2[1] = 0;
              }
            }
          }

          v30 = a2[1];
          if ((v30 & (v30 - 1)) != 0)
          {
            if (v35 >= v30)
            {
              v5 = v35 % v30;
            }

            else
            {
              v5 = v35;
            }
          }

          else
          {
            v5 = (v30 - 1) & v35;
          }
        }

        v63 = *a2;
        v64 = *(*a2 + 8 * v5);
        if (v64)
        {
          *v40 = *v64;
        }

        else
        {
          *v40 = *v66;
          *v66 = v40;
          *(v63 + 8 * v5) = v66;
          if (!*v40)
          {
            goto LABEL_113;
          }

          v65 = *(*v40 + 8);
          if ((v30 & (v30 - 1)) != 0)
          {
            if (v65 >= v30)
            {
              v65 %= v30;
            }
          }

          else
          {
            v65 &= v30 - 1;
          }

          v64 = (*a2 + 8 * v65);
        }

        *v64 = v40;
LABEL_113:
        ++a2[5];
        v29 = *a2;
        v30 = a2[1];
LABEL_114:
        v31 = std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::find<AMCP::DAL::AUParameterKey>(v29, v30, v9 + 4);
LABEL_115:
        caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>::push_back((v31 + 4), &v67);
      }

      result = std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v68);
      v9 = *v9;
    }

    while (v9);
  }

  return result;
}

void sub_1DE53B958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_arg(va1, void);
  v15 = 0;
  std::__hash_node_destructor<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *>>>::operator()[abi:ne200100](va1, v9);
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::find<AMCP::DAL::AUParameterKey>(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47)))) + 3864292196u;
  v7 = vcnt_s8(a2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47)))) + 3864292196u;
    if (v6 >= a2)
    {
      v8 = v6 % a2;
    }
  }

  else
  {
    v8 = v6 & (a2 - 1);
  }

  v9 = *(a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (*(result + 4) == v3 && *(result + 20) == __PAIR64__(v5, v4))
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= a2)
        {
          v11 %= a2;
        }
      }

      else
      {
        v11 &= a2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>::push_back(caulk::rt_safe_memory_resource *result, _OWORD *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 < v4)
  {
    *v5 = *a2;
    v6 = v5 + 1;
LABEL_16:
    *(v3 + 1) = v6;
    return result;
  }

  v7 = (v5 - *result) >> 4;
  v8 = v7 + 1;
  if ((v7 + 1) >> 60)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v9 = v4 - *result;
  if (v9 >> 3 > v8)
  {
    v8 = v9 >> 3;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF0)
  {
    v10 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    v10 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = (v10 + 16 * v7);
  v13 = v10 + 16 * v11;
  *v12 = *a2;
  v6 = v12 + 1;
  v14 = *(v3 + 1) - *v3;
  v15 = v12 - v14;
  result = memcpy(v12 - v14, *v3, v14);
  v16 = *v3;
  *v3 = v15;
  *(v3 + 1) = v6;
  v17 = *(v3 + 2);
  *(v3 + 2) = v13;
  if (!v16)
  {
    goto LABEL_16;
  }

  if (v17 - v16 >= 0)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      result = caulk::rt_safe_memory_resource::rt_deallocate(result, v16);
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t std::__hash_node_destructor<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a2 + 32));
  }

  v4 = **a1;

  return std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *>>>::deallocate[abi:ne200100](v4, a2);
}

caulk::rt_safe_memory_resource *AMCP::DAL::AUParameter_Data_Handler::copy(uint64_t a1, double *a2, uint64_t *a3, double a4)
{
  v7 = *a3;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::AUParameter_Data_Handler>(*a3);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(v7 + 80);
  if (v10)
  {
    v11 = round(v8 - a4);
    v12 = round(v9 - a4);
    do
    {
      v14 = v10[4];
      v13 = v10[5];
      if (v14 != v13)
      {
        while (1)
        {
          v15 = round(*v14);
          if (v15 >= v11 && v15 < v12)
          {
            break;
          }

          v14 += 16;
          if (v14 == v13)
          {
            goto LABEL_21;
          }
        }

        if (v14 != v13)
        {
          v17 = v14 + 16;
          if (v14 + 16 != v13)
          {
            do
            {
              v18 = round(*v17);
              if (v18 < v11 || v18 >= v12)
              {
                v20 = *v17;
                *(v14 + 8) = *(v17 + 8);
                *v14 = v20;
                v14 += 16;
              }

              v17 += 16;
            }

            while (v17 != v13);
            v13 = v10[5];
          }
        }
      }

      if (v14 != v13)
      {
        v10[5] = v14;
      }

LABEL_21:
      v10 = *v10;
    }

    while (v10);
    v8 = *a2;
    v9 = a2[1];
  }

  v21 = *(a1 + 80);

  return AMCP::DAL::merge_values(v21, (v7 + 56), v8, v9, a4);
}

void AMCP::DAL::AUParameter_Data_Handler::get_audio_buffer_list(void *a1@<X8>)
{
  *a1 = 0;
  a1[4] = 0;
}

{
  *a1 = 0;
  a1[4] = 0;
}

uint64_t AMCP::DAL::AUParameter_Data_Handler::reuse_container(uint64_t this)
{
  if (*(this + 96))
  {
    v1 = this;
    this = std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::__deallocate_node(this + 56, *(this + 80));
    v1[10] = 0;
    v2 = v1[8];
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(v1[7] + 8 * i) = 0;
      }
    }

    v1[12] = 0;
  }

  return this;
}

void AMCP::DAL::AUParameter_Data_Handler::adopt(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "AUParameter_Data_Handler.cpp";
    v7 = 1024;
    v8 = 95;
    v9 = 2080;
    v10 = "false";
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s AUParameter_Data_Handler::adopt unsupported", &v5, 0x1Cu);
  }

  abort();
}

BOOL AMCP::DAL::AUParameter_Data_Handler::dal_operation_is_supported(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 3)
    {
      return 0;
    }

    a2 = *a2;
  }

  else if (v2 != 3)
  {
    return 0;
  }

  return *a2 == 26989 && *(a2 + 2) == 120;
}

void AMCP::DAL::AUParameter_Data_Handler::~AUParameter_Data_Handler(AMCP::DAL::AUParameter_Data_Handler *this)
{
  std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::~__hash_table(this + 7);

  JUMPOUT(0x1E12C1730);
}

{
  std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::~__hash_table(this + 7);
}

uint64_t boost::circular_buffer<AMCP::Zero_Time_Stamp,std::allocator<AMCP::Zero_Time_Stamp>>::at(void *a1, int64_t a2)
{
  if (a1[4] <= a2)
  {
    std::logic_error::logic_error(&v5, "circular_buffer");
    v5.__vftable = (MEMORY[0x1E69E55B8] + 16);
    boost::throw_exception<std::out_of_range>(&v5);
  }

  v3 = a1[1];
  v2 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3)) <= a2)
  {
    a2 += 0x5555555555555555 * ((v3 - *a1) >> 3);
  }

  return v2 + 24 * a2;
}

void AMCP::Logging_Settings::instance(AMCP::Logging_Settings *this)
{
  {
    byte_1EE0132CC = 0;
    AMCP::Logging_Settings::instance(void)::s_instance = 0;
  }
}

void AMCP::Utility::Settings_Storage::at_as<applesauce::CF::BooleanRef,applesauce::CF::StringRef const&>(_BYTE *a1, uint64_t a2, const void **a3)
{
  std::mutex::lock((a2 + 16));
  v6 = *(a2 + 112);
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,applesauce::CF::StringRef const&>(a1, v6, *a3);

  std::mutex::unlock((a2 + 16));
}

uint64_t std::optional<applesauce::CF::BooleanRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t AMCP::DAL::Default_Data_Handler::get_data@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  result = AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Default_Data_Handler>(*a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Default_Data_Handler>(uint64_t result)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v1 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

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

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "Container.h";
      v18 = 1024;
      v19 = 121;
      v20 = 2080;
      v21 = "not ((m_impl.get()) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to call Container::GetContainerData on a null Container", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v15);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v7, "Attempt to call Container::GetContainerData on a null Container", v5);
    std::logic_error::logic_error(&v8, &v7);
    v8.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v9, &v8);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = -1;
    v9.__vftable = &unk_1F5991430;
    v10 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v9);
    v22 = "T *AMCP::DAL::Container::get_container_data_ptr() const [T = AMCP::DAL::Default_Data_Handler]";
    v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.h";
    v24 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v6);
  }

  return result;
}

void sub_1DE53C414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Default_Data_Handler::dal_operation_apply(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "Default_Data_Handler.cpp";
    v18 = 1024;
    v19 = 90;
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Default data handler does not support dal_operation_apply", buf, 0x12u);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v15);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string(&v7, "Default data handler does not support dal_operation_apply", v5);
  std::runtime_error::runtime_error(&v8, &v7);
  std::runtime_error::runtime_error(&v9, &v8);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = -1;
  v9.__vftable = &unk_1F5992170;
  v10 = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v9);
  v20 = "virtual Sample_Time_Range AMCP::DAL::Default_Data_Handler::dal_operation_apply(const Sample_Time_Range &, Container, Sample_Time_Range, const DAL_Settings &, DAL_Operation_Context_Ref) const";
  v21 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Default_Data_Handler.cpp";
  v22 = 90;
  std::vector<void *>::vector[abi:ne200100](&v6);
}

void sub_1DE53C7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, std::runtime_error a23, void *a24)
{
  std::runtime_error::~runtime_error(v24);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  *(v26 - 128) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v26 - 120));
  std::runtime_error::~runtime_error((v26 - 144));
  a24 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v25 + 24));
  std::runtime_error::~runtime_error(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  __cxa_free_exception(v24);
  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 145));
  _Unwind_Resume(a1);
}

uint64_t *AMCP::DAL::Default_Data_Handler::get_ring_buffer_time_translator(AMCP::DAL::Default_Data_Handler *this)
{
  {
    AMCP::DAL::Default_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator = &unk_1F597A2A0;
  }

  return &AMCP::DAL::Default_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator;
}

void AMCP::DAL::Default_Data_Handler::mix(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "Default_Data_Handler.cpp";
    v18 = 1024;
    v19 = 70;
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Default data handler does not support mixing", buf, 0x12u);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v15);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string(&v7, "Default data handler does not support mixing", v5);
  std::runtime_error::runtime_error(&v8, &v7);
  std::runtime_error::runtime_error(&v9, &v8);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = -1;
  v9.__vftable = &unk_1F5992170;
  v10 = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v9);
  v20 = "virtual void AMCP::DAL::Default_Data_Handler::mix(Sample_Time_Range, Container, Sample_Time, DAL_Operation_Context_Ref) const";
  v21 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Default_Data_Handler.cpp";
  v22 = 70;
  std::vector<void *>::vector[abi:ne200100](&v6);
}

void sub_1DE53CC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, std::runtime_error a23, void *a24)
{
  std::runtime_error::~runtime_error(v24);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  *(v26 - 128) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v26 - 120));
  std::runtime_error::~runtime_error((v26 - 144));
  a24 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v25 + 24));
  std::runtime_error::~runtime_error(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  __cxa_free_exception(v24);
  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 145));
  _Unwind_Resume(a1);
}

void *AMCP::DAL::Default_Data_Handler::copy(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Default_Data_Handler>(*a3) + 56);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64) - v5;

  return memcpy(v4, v5, v6);
}

void AMCP::DAL::Default_Data_Handler::get_audio_buffer_list(void *a1@<X8>)
{
  *a1 = 0;
  a1[4] = 0;
}

{
  *a1 = 0;
  a1[4] = 0;
}

void AMCP::DAL::Default_Data_Handler::adopt(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "Default_Data_Handler.cpp";
    v7 = 1024;
    v8 = 39;
    v9 = 2080;
    v10 = "false";
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Default_Data_Handler::adopt unsupported", &v5, 0x1Cu);
  }

  abort();
}

void AMCP::DAL::Default_Data_Handler::~Default_Data_Handler(AMCP::DAL::Default_Data_Handler *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }
}

uint64_t AMCP::Graph::Null_Timebase::wait_for_time_to_start(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    (*(*v3[2] + 192))(&v8);
    v6 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v6)
    {
      break;
    }

    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  return (*(*v3[2] + 200))(v3[2], a2, a3);
}

uint64_t AMCP::Graph::Null_Timebase::get_anchor_time(AMCP::Graph::Null_Timebase *this)
{
  v1 = AMCP::Graph::Null_Timebase::demand_counter(this);
  AMCP::Graph::Manifest_Counter::get_anchor_time(v4, v1);
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return *&sample_time;
}

void sub_1DE53D068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Null_Timebase::demand_counter(AMCP::Graph::Null_Timebase *this)
{
  v3 = *(this + 6);
  v2 = *(this + 7);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (!v3)
  {
    std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v9, *(this + 1), *(this + 2));
    v5 = v9;
    v4 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HIBYTE(v8) = 0;
    *(this + 24) = 0;
    *(this + 5) = 0;
    *(this + 6) = v5;
    *(this + 25) = v8;
    v6 = *(this + 7);
    *(this + 7) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(this + 16) = 0;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  return this + 24;
}

void AMCP::Graph::Null_Timebase::get_state(AMCP::Graph::Null_Timebase *this@<X0>, AMCP::IO_Core::Play_State_Manager *a2@<X8>)
{
  os_unfair_lock_lock(this + 18);
  AMCP::IO_Core::Play_State_Manager::get_state_snapshot(a2, this + 10);

  os_unfair_lock_unlock(this + 18);
}

void AMCP::Graph::Null_Timebase::stop(uint64_t a1, int a2)
{
  os_unfair_lock_lock((a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(__p, "Null_Timebase");
  v4 = AMCP::IO_Core::Play_State_Manager::stop((a1 + 80), a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (!*(a1 + 88) && *(a1 + 96) && !*(a1 + 80))
  {
    *AMCP::Graph::Null_Timebase::demand_counter(a1) = 0;
    *(a1 + 96) = v4;
  }

  os_unfair_lock_unlock((a1 + 72));
}

void AMCP::Graph::Null_Timebase::advance_to_time(AMCP::Graph::Null_Timebase *a1, double a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Graph::Null_Timebase::demand_counter(a1);
  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(v23, v4);
  if (round(a2) < round(AMCP::DAL::DAL_Time::get_sample_time(v23)))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      v26 = "Null_Timebase.cpp";
      v27 = 1024;
      v28 = 234;
      v29 = 2080;
      v30 = "not (target_time >= current.get_sample_time())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v14, "", v12);
    std::logic_error::logic_error(&v15, &v14);
    v15.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v31 = "virtual void AMCP::Graph::Null_Timebase::advance_to_time(Sample_Time)";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Timebase.cpp";
    v33 = 234;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(v23);
  v7 = AMCP::Graph::Null_Timebase::demand_counter(a1);
  AMCP::Graph::Manifest_Counter::advance(v7, a2 - sample_time);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void sub_1DE53D53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, char a28)
{
  v30 = *(v28 - 136);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

double AMCP::Graph::Null_Timebase::advance(AMCP::Graph::Null_Timebase *a1, double a2)
{
  v3 = AMCP::Graph::Null_Timebase::demand_counter(a1);

  return AMCP::Graph::Manifest_Counter::advance(v3, a2);
}

void AMCP::Graph::Null_Timebase::start(uint64_t a1, int a2)
{
  os_unfair_lock_lock((a1 + 72));
  std::string::basic_string[abi:ne200100]<0>(&__p, "Null_Timebase");
  v4 = AMCP::IO_Core::Play_State_Manager::start((a1 + 80), a2, &__p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  v5 = *(a1 + 96);
  if (*(a1 + 88))
  {
    v6 = 1;
    if (v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = *(a1 + 80) != 0;
    if (v5)
    {
      goto LABEL_20;
    }
  }

  if (v6)
  {
    if (*(a1 + 100) == 1)
    {
      v7 = AMCP::Graph::Null_Timebase::demand_counter(a1);
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v11, *(a1 + 8), *(a1 + 16));
      LODWORD(__p) = 2;
      v13 = 0;
      v14 = 0;
      v15 = v11;
      v11 = 0uLL;
      AMCP::Graph::Manifest_Counter::start(v7, &__p);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }

      if (*(&v11 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
      }

      v8 = 0;
    }

    else
    {
      v9 = AMCP::Graph::Null_Timebase::demand_counter(a1);
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v10, *(a1 + 8), *(a1 + 16));
      LODWORD(__p) = 2;
      v13 = 0;
      v14 = 0;
      v15 = v10;
      v10 = 0uLL;
      AMCP::Graph::Manifest_Counter::start(v9, &__p);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }

      if (*(&v10 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
      }

      v8 = mach_absolute_time();
    }

    *(a1 + 128) = v8;
    *(a1 + 96) = v4;
  }

LABEL_20:
  os_unfair_lock_unlock((a1 + 72));
}

void sub_1DE53D794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  os_unfair_lock_unlock(v21 + 18);
  _Unwind_Resume(a1);
}

double AMCP::Graph::Null_Timebase::convert_host_to_sample_time(AMCP::Graph::Null_Timebase *this, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = a2;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = 2;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v5 = 1;
  AMCP::Graph::Null_Timebase::translate_time(this, v6, v3);
  return *v3;
}

void AMCP::Graph::Null_Timebase::translate_time(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 56) & 3) == 0)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v36 = "Null_Timebase.cpp";
      v37 = 1024;
      v38 = 84;
      v39 = 2080;
      v40 = "not ((inTime.mFlags & kAudioTimeStampSampleHostTimeValid) != 0)";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s TranslateTime has to have either sample time or host time valid on the input", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v26, "TranslateTime has to have either sample time or host time valid on the input", v24);
    std::logic_error::logic_error(&v27, &v26);
    v27.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v28, &v27);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5991430;
    v29 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v28);
    v41 = "void AMCP::Graph::Null_Timebase::translate_time(const CA::TimeStamp &, CA::TimeStamp &) const";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Timebase.cpp";
    v43 = 84;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  v5 = *(a1 + 120);
  v6 = *(a1 + 128);
  v7 = AMCP::Graph::Null_Timebase::demand_counter(a1);
  AMCP::Graph::Manifest_Counter::get_anchor_time(buf, v7);
  v8 = floor(AMCP::DAL::DAL_Time::get_sample_time(buf));
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v9 = v8;
  v10 = *(a3 + 56);
  if (v10)
  {
    v11 = *(a2 + 56);
    if (v11)
    {
      v12 = *a2;
    }

    else
    {
      v12 = 0.0;
      if ((v11 & 2) != 0)
      {
        v13 = *(a2 + 8);
        if (v13)
        {
          v14 = -(v6 - v13);
          v15 = v13 >= v6;
          v16 = v13 - v6;
          if (v15)
          {
            v14 = v16;
          }

          v12 = v14 / v5 + v9;
        }
      }
    }

    *a3 = v12;
    if ((v10 & 2) == 0)
    {
LABEL_6:
      if ((v10 & 4) == 0)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_6;
  }

  v17 = *(a2 + 56);
  if ((v17 & 2) != 0)
  {
    v18 = *(a2 + 8);
  }

  else
  {
    if ((v17 & 1) == 0)
    {
      *(a3 + 8) = 0;
      if ((v10 & 4) == 0)
      {
        return;
      }

LABEL_7:
      *(a3 + 16) = 0x3FF0000000000000;
      return;
    }

    v19 = *a2;
    if (*a2 >= v9)
    {
      v18 = v6 + vcvtad_u64_f64(v5 * (v19 - v9));
    }

    else
    {
      v18 = v6 - vcvtad_u64_f64(v5 * (v9 - v19));
    }
  }

  *(a3 + 8) = v18;
  if ((v10 & 4) != 0)
  {
    goto LABEL_7;
  }
}

void sub_1DE53DBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  v29 = *(v27 - 96);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Null_Timebase::convert_sample_to_host_time(AMCP::Graph::Null_Timebase *this, double a2)
{
  v6 = a2;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v5 = 2;
  AMCP::Graph::Null_Timebase::translate_time(this, &v6, v3);
  return *(&v3[0] + 1);
}

double AMCP::Graph::Null_Timebase::get_last_zero_time_stamp@<D0>(AMCP::Graph::Null_Timebase *this@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Graph::Null_Timebase::demand_counter(this);
  if ((*v3 & 1) == 0)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "Null_Timebase.cpp";
      v22 = 1024;
      v23 = 51;
      v24 = 2080;
      v25 = "not (is_running())";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Trying to get current time when clock is not running", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v11, "Trying to get current time when clock is not running", v9);
    std::logic_error::logic_error(&v12, &v11);
    v12.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v13, &v12);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v13.__vftable = &unk_1F5991430;
    v14 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v13);
    v26 = "virtual CA::TimeStamp AMCP::Graph::Null_Timebase::get_last_zero_time_stamp() const";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Timebase.cpp";
    v28 = 51;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
  }

  *a2 = 0u;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *&result = 7;
  *(a2 + 56) = 7;
  return result;
}

void sub_1DE53DFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void AMCP::Graph::Null_Timebase::get_current_time(AMCP::Graph::Null_Timebase *this@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Graph::Null_Timebase::demand_counter(this);
  if ((*v4 & 1) == 0)
  {
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

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "Null_Timebase.cpp";
      v26 = 1024;
      v27 = 40;
      v28 = 2080;
      v29 = "not (is_running())";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Trying to get current time when clock is not running", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v15, "Trying to get current time when clock is not running", v13);
    std::logic_error::logic_error(&v16, &v15);
    v16.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5991430;
    v18 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v17);
    v30 = "virtual CA::TimeStamp AMCP::Graph::Null_Timebase::get_current_time() const";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Timebase.cpp";
    v32 = 40;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v5 = AMCP::Graph::Null_Timebase::demand_counter(this);
  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(buf, v5);
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(buf);
  v7 = AMCP::Graph::Null_Timebase::demand_counter(this);
  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(&v17, v7);
  host_time = AMCP::DAL::DAL_Time::get_host_time(&v17);
  *a2 = vcvtmd_s64_f64(sample_time);
  *(a2 + 8) = host_time;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 7;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }
}

void sub_1DE53E360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  v33 = *(v31 - 96);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Null_Timebase::get_underlying_device_uid(AMCP::Graph::Null_Timebase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 175) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 19), *(this + 20));
  }

  else
  {
    *a2 = *(this + 152);
  }
}

void AMCP::Graph::Null_Timebase::~Null_Timebase(void **this)
{
  *this = &unk_1F59791B0;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  v2 = this[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59791B0;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  v2 = this[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1DE53E72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::Graph::Null_Timebase>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HostedDSP_StreamProcessor::StreamProcessInfo::StreamProcessInfo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v17 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 28) = 0;
  v6 = *(a4 + 112);
  if (*(a4 + 120) == v6 || v6 == 0)
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
      v13 = 136315394;
      v14 = "HostedDSP_StreamProcessor.cpp";
      v15 = 1024;
      v16 = 32;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] There is no device/engine assigned for this DSP stream.", &v13, 0x12u);
    }
  }

  else
  {
    *(a1 + 28) = *(v6 + 8);
  }

  return a1;
}

caulk::rt_safe_memory_resource *HostedDSP_StreamProcessor::PerformIO_ProcessStream(unsigned int *a1, __n128 a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  if (*a1 == 1869968496)
  {
    HostedDSP_StreamProcessor::ProcessWithHostedDSP(a1, a2);
    v8 = 0;
    v4 = HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor(a1, v7);
    std::__function::__value_func<BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::~__value_func[abi:ne200100](v7);
  }

  else
  {
    if (*a1 == 1768845428)
    {
      if (*(*(a1 + 2) + 120) == *(*(a1 + 2) + 112))
      {
        v3 = 0;
      }

      else
      {
        v3 = *(*(a1 + 2) + 112);
      }

      if (!v3)
      {
        v9[0] = &unk_1F5979560;
        v9[1] = 0;
        v9[3] = v9;
        v4 = HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor(a1, v9);
        std::__function::__value_func<BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::~__value_func[abi:ne200100](v9);
        HostedDSP_StreamProcessor::ProcessWithHostedDSP(a1, v5);
        return v4;
      }

      if (*(v3 + 100) != 4)
      {
        operator new();
      }
    }

    return 0;
  }

  return v4;
}

void sub_1DE53EE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double HostedDSP_StreamProcessor::ProcessWithHostedDSP(unsigned int *a1, __n128 a2)
{
  v2 = a1[6];
  if (v2)
  {
    v4 = *(a1 + 2);
    if (!*(v4 + 108) || ((v5 = *(v4 + 112), *(v4 + 120) != v5) ? (v6 = v5 == 0) : (v6 = 1), v6))
    {
      v5 = (v4 + 456);
    }

    v7 = *v5;
    if (*(v7 + 88))
    {
      v8 = *(v7 + 388);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v4 + 112);
    v10 = *(v4 + 120);
    v11 = (v4 + 112);
    if (v9 != v10)
    {
      v12 = *(v4 + 280);
      v13 = *v12;
      if (v13 == (*(v4 + 288) - v12 - 8) >> 4)
      {
        v14 = v12 + 4;
        v15 = v13 + 1;
        while (--v15)
        {
          if (*(v9 + 104))
          {
            v16 = (v9 + 32);
          }

          else
          {
            v16 = (v9 + 16);
          }

          *v14 = *v16 + *(v9 + 48);
          *(v14 - 2) = *(v9 + 84);
          *(v14 - 1) = *(v9 + 80) * v2;
          v14 += 2;
          v9 += 128;
          if (v9 == v10)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        CAAssertRtn();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "accessing a CA::BufferList with an out-of-range index");
      __cxa_throw(exception, off_1E8672F68, MEMORY[0x1E69E5280]);
    }

LABEL_20:
    v17 = *(v4 + 304);
    *(v17 + 16) = *(v4 + 56) + v8;
    HALS_IODSPInfo::GetClientFormat(v27, (v4 + 112));
    *(v17 + 12) = v28 * v2;
    ClientFormat = HALS_IODSPInfo::GetClientFormat(v27, v11);
    *(v17 + 8) = v29;
    v19 = *(*(a1 + 2) + 280);
    v20 = (*(**(a1 + 1) + 120))(*(a1 + 1), ClientFormat);
    v21 = (*(**(a1 + 1) + 128))(*(a1 + 1));
    v22 = (*(**(a1 + 1) + 136))(*(a1 + 1));
    if (*a1 != 1768845428)
    {
      v20 = v21;
    }

    kdebug_trace();
    if (*a1 == 1869968496)
    {
      v24 = (*(**(a1 + 1) + 144))(*(a1 + 1));
      HALS_IOContextHostedDSP::ProcessStream(**v24, (*v24)[1], *a1 | (a1[7] << 32), *(*(a1 + 2) + 12), a1[6], v17, v19, v20, v22);
    }

    else if (*a1 == 1768845428)
    {
      v23 = (*(**(a1 + 1) + 144))(*(a1 + 1));
      HALS_IOContextHostedDSP::ProcessStream(**v23, (*v23)[1], *a1 | (a1[7] << 32), *(*(a1 + 2) + 12), a1[6], v19, v17, v20, v22);
    }

    kdebug_trace();
  }

  return result;
}

caulk::rt_safe_memory_resource *HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 24);
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v5 = *(v4 + 112);
    v6 = *(v4 + 120);
    if (v5 != v6)
    {
      v7 = a2;
      v8 = 0;
      v49 = (a1 + 24);
      while (1)
      {
        v9 = *v5;
        v10 = *(*v5 + 88);
        if (v10)
        {
          v11 = *(v7 + 24);
          if (v11)
          {
            if (!(*(*v11 + 48))(v11, v5))
            {
              goto LABEL_56;
            }

            v9 = *v5;
          }

          v12 = *(v9 + 388);
          v13 = *(a1 + 16);
          v14 = *(v13 + 32);
          v15 = *(v13 + 40);
          if (v14)
          {
            v16 = (v14 + v12);
          }

          else
          {
            v16 = 0;
          }

          if (v15)
          {
            v17 = (v15 + v12);
          }

          else
          {
            v17 = 0;
          }

          if (*a1 == 1869968496)
          {
            if (v5[13])
            {
              v54 = *v2;
              v28 = *(v9 + 4 * *(v13 + 8) + 752);
              v53 = v28;
              v29 = 24;
              if (v16 | v17)
              {
                v29 = 48;
              }

              v30 = *(v13 + v29);
              if (*(v13 + 108))
              {
                ClientFormat = HALS_IODSPInfo::GetClientFormat(v50, (v13 + 112));
                v28 = v53;
              }

              else
              {
                ClientFormat = *(v13 + 416);
                v32 = *(v13 + 432);
                *v50 = ClientFormat;
                v51 = v32;
                v52 = *(v13 + 448);
              }

              if (v28 * DWORD2(v51) > v30)
              {
                v33 = *(a1 + 16);
                if (*(v33 + 108))
                {
                  HALS_IODSPInfo::GetClientFormat(v50, (v33 + 112));
                }

                else
                {
                  v34 = *(v33 + 432);
                  *v50 = *(v33 + 416);
                  v51 = v34;
                  v52 = *(v33 + 448);
                }

                v35 = v30 / DWORD2(v51);
                v53 = v30 / DWORD2(v51);
                v36 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v37)
                {
                  atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                result = *MEMORY[0x1E69E3C08];
                if (!*MEMORY[0x1E69E3C08])
                {
                  __break(1u);
                  return result;
                }

                v48 = *(v36 + 8);
                v39 = caulk::rt_safe_memory_resource::rt_allocate(result);
                *(v39 + 16) = 0;
                *(v39 + 20) = 16;
                *(v39 + 24) = "HostedDSP_StreamProcessor.cpp";
                *(v39 + 32) = 253;
                *(v39 + 36) = v28;
                *(v39 + 40) = v35;
                *v39 = &unk_1F5979368;
                *(v39 + 8) = 0;
                caulk::concurrent::messenger::enqueue(v48, v39);
                v7 = a2;
                if (v37)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
                }
              }

              v40 = v5[2];
              if (v40)
              {
                v41 = (v40 + v12);
              }

              else
              {
                v41 = 0;
              }

              v42 = v5[4];
              if (v42)
              {
                v43 = (v42 + v12);
              }

              else
              {
                v43 = 0;
              }

              ClientFormat.n128_u64[0] = *(*v5 + 656);
              HALS_IOProcessor::Process(v5[13], ClientFormat, v41, &v54, v43, &v53, v16, v17);
              v2 = v49;
            }

            v44 = (*(**(a1 + 8) + 112))(*(a1 + 8));
            v45 = v5[2];
            if (v45)
            {
              v46 = v45 + v12;
            }

            else
            {
              v46 = 0;
            }

            v8 = (*(*v10 + 864))(v10, v44, *(v5 + 24), *v5, v46, *(a1 + 24));
          }

          else if (*a1 == 1768845428)
          {
            v50[0] = *(v9 + 4 * *(v13 + 8) + 752);
            v18 = (*(**(a1 + 8) + 112))(*(a1 + 8));
            v19 = v5[2];
            v20 = v19 ? v19 + v12 : 0;
            v8 = (*(*v10 + 856))(v10, v18, *(v5 + 24), *v5, v20, v50[0]);
            v22 = v5[13];
            if (v22)
            {
              if (v5[14])
              {
                v23 = (*(a1 + 16) + 56);
              }

              else
              {
                v23 = v5 + 4;
              }

              v24 = *v23;
              if (v24)
              {
                v25 = (v24 + v12);
              }

              else
              {
                v25 = 0;
              }

              v26 = v5[2];
              if (v26)
              {
                v27 = (v26 + v12);
              }

              else
              {
                v27 = 0;
              }

              v21.n128_u64[0] = *(*v5 + 592);
              HALS_IOProcessor::Process(v22, v21, v25, v2, v27, v50, v16, v17);
            }
          }
        }

LABEL_56:
        v5 += 16;
        if (v5 == v6)
        {
          return v8;
        }
      }
    }
  }

  return 0;
}

uint64_t std::__function::__value_func<BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t caulk::concurrent::details::rt_message_call<HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor(HostedDSP_StreamProcessor::StreamProcessInfo &,std::function<BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>)::$_1,std::tuple<char const*,int,unsigned int,unsigned int>>::perform(uint64_t a1)
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
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor clipped amount processed from:%u to:%u", &v11, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HostedDSP_StreamProcessor::ProcessWithEngineAndIOProcessor(HostedDSP_StreamProcessor::StreamProcessInfo &,std::function<BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>)::$_1,std::tuple<char const*,int,unsigned int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HostedDSP_StreamProcessor26ProcessInputStreamsWithDSPERNS_17StreamProcessInfoEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 124);
  v5 = *(a2 + 120);
  v6 = *(*a2 + 88);
  v7 = v6 && (*(*v6 + 696))(v6) && *(*(*a2 + 368) + 96) != 0;
  return (v3 == a2) & ((v5 == 0) | ~v4) | v7;
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_3>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5979560;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_2,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_2>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HostedDSP_StreamProcessor26ProcessInputStreamsWithDSPERNS_17StreamProcessInfoEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_2,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_2>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59794E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HostedDSP_StreamProcessor26ProcessInputStreamsWithDSPERNS_17StreamProcessInfoEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(*a2 + 88);
  v5 = v4 && (*(*v4 + 696))(v4) && *(*(*a2 + 368) + 96) != 0;
  return (v3 != a2) & v5;
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_1>,BOOL ()(HALS_IODSPInfo::EngineStreamInfo const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5979450;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0>,void ()(AudioBufferList *,AudioBufferList *,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25HostedDSP_StreamProcessor26ProcessInputStreamsWithDSPERNS_17StreamProcessInfoEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0>,void ()(AudioBufferList *,AudioBufferList *,unsigned int)>::operator()(uint64_t a1, unsigned int **a2, unsigned int **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = (*(**(a1 + 16) + 120))(*(a1 + 16));
  v7 = (*(**(a1 + 16) + 128))(*(a1 + 16));
  v8 = (*(**(a1 + 16) + 136))(*(a1 + 16));
  if (*(a1 + 8) != 1768845428)
  {
    v6 = v7;
  }

  v9 = (*(**(a1 + 16) + 144))(*(a1 + 16));
  HALS_IOContextHostedDSP::ProcessStream(**v9, (*v9)[1], *(a1 + 8) | (*(a1 + 36) << 32), *(*(a1 + 24) + 12), *(a1 + 32), v4, v5, v6, v8);
}

__n128 std::__function::__func<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0,std::allocator<HostedDSP_StreamProcessor::ProcessInputStreamsWithDSP(HostedDSP_StreamProcessor::StreamProcessInfo &)::$_0>,void ()(AudioBufferList *,AudioBufferList *,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59793C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t AMCP::DAL::Synchronized_Mixer::add_emission_handler(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      (*(*v3 + 24))(v3, v8);
    }

    else
    {
      v9 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v9 = 0;
  }

  v4 = a1 + 120;
  if ((a1 + 120) != v8)
  {
    v5 = v9;
    v6 = *(a1 + 144);
    if (v9 == v8)
    {
      if (v6 == v4)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 144) + 24))(*(a1 + 144), v8);
        (*(**(a1 + 144) + 32))(*(a1 + 144));
        *(a1 + 144) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, a1 + 120);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 144);
      }

      *(a1 + 144) = v4;
    }

    else if (v6 == v4)
    {
      (*(*v6 + 24))(*(a1 + 144), v8);
      (*(**(a1 + 144) + 32))(*(a1 + 144));
      *(a1 + 144) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 144);
      *(a1 + 144) = v5;
    }
  }

  return std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__value_func[abi:ne200100](v8);
}

void sub_1DE54014C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::DAL::Synchronized_Mixer::remove_source(AMCP::Log::AMCP_Scope_Registry *a1, const void **a2, int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      *&buf[4] = "Synchronized_Mixer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 54;
      *&buf[18] = 2080;
      *&buf[20] = "not (buffer_alignment == Buffer_Alignment::Aligned_For_Output)";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronized_Mixer has a source that's input aligned", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v24, "Synchronized_Mixer has a source that's input aligned", v22);
    std::logic_error::logic_error(&v25, &v24);
    v25.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v25);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v38 = "virtual BOOL AMCP::DAL::Synchronized_Mixer::remove_source(const Source_ID &, Buffer_Alignment)";
    *&v39 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronized_Mixer.cpp";
    DWORD2(v39) = 54;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
  }

  v4 = *(a1 + 13);
  os_unfair_lock_lock(v4);
  if (!std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2))
  {
    goto LABEL_33;
  }

  v5 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2);
  if (!v5)
  {
    goto LABEL_43;
  }

  v6 = *(v5 + 28);
  v7 = __OFSUB__(v6--, 1);
  *(v5 + 28) = v6;
  if (!((v6 < 0) ^ v7 | (v6 == 0)))
  {
    goto LABEL_33;
  }

  v8 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2);
  if (!v8)
  {
LABEL_43:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *(v8 + 200) = 1;
  v9 = *(v4 + 24);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      AMCP::DAL::Synchronizer_Source::get_source_id(buf, (v9 + 8));
      has_pending_range = AMCP::DAL::Synchronizer::_has_pending_range(v4, buf);
      v12 = has_pending_range;
      if ((buf[31] & 0x80000000) != 0)
      {
        operator delete(*&buf[8]);
        if (v12)
        {
LABEL_13:
          *buf = *(v9 + 15);
          v13 = v9[18];
          *&buf[16] = v9[17];
          *&buf[24] = v13;
          v14 = v9[19];
          v38 = v14;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v39 = *(v9 + 10);
          v15 = v9[23];
          v40 = v9[22];
          v16 = v9[24];
          v41 = v15;
          v42 = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::DAL::Synchronizer::_get_latest_common_pending_time(v27, v4);
          AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v30, (v4 + 104), v27);
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }

          if (AMCP::DAL::DAL_Time::operator<(&v30, &v34))
          {
            AMCP::DAL::Synchronizer_Source::get_source_id(v27, (v9 + 8));
            AMCP::DAL::Synchronizer::_emit(v4, v27, &v30);
            if (v28 < 0)
            {
              operator delete(v27[1]);
            }

            v10 = 1;
          }

          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }
        }
      }

      else if (has_pending_range)
      {
        goto LABEL_13;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v10 = 0;
LABEL_34:
  AMCP::DAL::Synchronizer::_sweep_and_remove_sources(v4);
  os_unfair_lock_unlock(v4);
  return v10 & 1;
}

void AMCP::DAL::Synchronized_Mixer::add_source(AMCP::Log::AMCP_Scope_Registry *a1, unsigned int *a2, int a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      *v51 = "Synchronized_Mixer.cpp";
      *&v51[8] = 1024;
      *&v51[10] = 48;
      *&v51[14] = 2080;
      *&v51[16] = "not (buffer_alignment == Buffer_Alignment::Aligned_For_Output)";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Synchronized_Mixer has a source that's input aligned", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Synchronized_Mixer has a source that's input aligned", v29);
    std::logic_error::logic_error(&v41, &v35);
    v41.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(v72, &v41);
    *&v74[10] = 0;
    v75 = 0;
    v76 = 0;
    v77 = -1;
    *v72 = &unk_1F5991430;
    *&v74[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v72);
    v52 = "virtual void AMCP::DAL::Synchronized_Mixer::add_source(const Source_ID &, Buffer_Alignment)";
    v53 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronized_Mixer.cpp";
    v54 = 48;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  v4 = *(a1 + 13);
  os_unfair_lock_lock(v4);
  if (std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2))
  {
    v5 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2);
    if (*(v5 + 200) == 1)
    {
      *(v5 + 200) = 0;
    }

    goto LABEL_51;
  }

  data = *a2;
  LODWORD(v35.__r_.__value_.__l.__data_) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v35.__r_.__value_.__r.__words[1], *(a2 + 1), *(a2 + 2));
    data = v35.__r_.__value_.__l.__data_;
  }

  else
  {
    *&v35.__r_.__value_.__r.__words[1] = *(a2 + 2);
    v36 = *(a2 + 3);
  }

  v37 = *(a2 + 4);
  v38 = a2[10];
  *buf = data;
  v7 = SHIBYTE(v36);
  if (SHIBYTE(v36) < 0)
  {
    std::string::__init_copy_ctor_external(&v51[4], v35.__r_.__value_.__l.__size_, v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    *&v51[4] = *&v35.__r_.__value_.__r.__words[1];
    *&v51[20] = v36;
  }

  v52 = v37;
  LODWORD(v53) = v38;
  v54 = 0;
  v8 = AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v55, (v4 + 48));
  v58 = 0;
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v59 = 1;
  v60 = 0;
  v61 = 0;
  v62 = v9;
  v63 = 0;
  LOBYTE(v64) = 0;
  v67 = 0;
  v11 = *(v4 + 48);
  v12 = *(v4 + 56);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v68 = 1;
  v70 = 0;
  v69 = 0;
  v71 = v11;
  if (!*(v4 + 48))
  {
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v33 = *v32;
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    else
    {
      v33 = *v32;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v72 = 136315650;
      *&v72[4] = "Synchronizer.cpp";
      v73 = 1024;
      *v74 = 27;
      *&v74[4] = 2080;
      *&v74[6] = "not (timebase)";
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v72, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v49);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v41, "", v34);
    std::logic_error::logic_error(&v42, &v41);
    v42.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v43, &v42);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = -1;
    v43.__vftable = &unk_1F5991430;
    v44 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v72, &v43);
    v75 = "AMCP::DAL::Synchronizer_Source::Synchronizer_Source(Source_ID, const Timebase_Ref &)";
    v76 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Synchronizer.cpp";
    v77 = 27;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  if (v7 < 0)
  {
    operator delete(v35.__r_.__value_.__l.__size_);
  }

  v13 = 0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * *a2) ^ ((0xC6A4A7935BD1E995 * *a2) >> 47)) + 3864292196u;
  v14 = std::hash<AMCP::Terminal_Identifier>::operator()((a2 + 2));
  v15 = (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v14) ^ ((0xC6A4A7935BD1E995 * v14) >> 47))) ^ v13;
  v16 = 3864292196u - 0x395B586CA42E166BLL * v15;
  v17 = *(v4 + 16);
  if (!*&v17)
  {
    goto LABEL_35;
  }

  v18 = vcnt_s8(v17);
  v18.i16[0] = vaddlv_u8(v18);
  v19 = v18.u32[0];
  if (v18.u32[0] > 1uLL)
  {
    v20 = 3864292196u - 0x395B586CA42E166BLL * v15;
    if (v16 >= *&v17)
    {
      v20 = v16 % *&v17;
    }
  }

  else
  {
    v20 = v16 & (*&v17 - 1);
  }

  v21 = *(*(v4 + 8) + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_35:
    operator new();
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 == v16)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v23 >= *&v17)
      {
        v23 %= *&v17;
      }
    }

    else
    {
      v23 &= *&v17 - 1;
    }

    if (v23 != v20)
    {
      goto LABEL_35;
    }

LABEL_34:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  if (!std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>::operator()[abi:ne200100](v22 + 4, a2))
  {
    goto LABEL_34;
  }

  if (*(&v71 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v71 + 1));
  }

  if (v67 == 1)
  {
    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    }

    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }
  }

  if (*(&v62 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v62 + 1));
  }

  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if ((v51[27] & 0x80000000) != 0)
  {
    operator delete(*&v51[4]);
  }

LABEL_51:
  v24 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2);
  if (!v24)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  ++*(v24 + 28);
  os_unfair_lock_unlock(v4);
}

void sub_1DE541328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  if (*(v37 + 47) < 0)
  {
    operator delete(*(v37 + 24));
  }

  std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,void *>>>>::~unique_ptr[abi:ne200100](v38 - 176);
  AMCP::DAL::Synchronizer_Source::~Synchronizer_Source(va);
  os_unfair_lock_unlock(v36);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Synchronized_Mixer::get_direct_write_ranges(os_unfair_lock_s *this@<X0>, const AMCP::DAL::DAL_Time_Range *a2@<X1>, uint64_t *a3@<X8>)
{
  os_unfair_lock_lock(this + 38);
  AMCP::DAL::Mixing_Ring_Buffer::get_direct_write_ranges(this, a2, a3);

  os_unfair_lock_unlock(this + 38);
}

void AMCP::DAL::Synchronized_Mixer::commit_direct_write(uint64_t a1, const void **a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 152));
  AMCP::DAL::Ring_Buffer_Base::commit_direct_write(a1, v6, a3);
  os_unfair_lock_unlock((a1 + 152));
  v7 = *(a1 + 104);

  AMCP::DAL::Synchronizer::receive_data(v7, a2, a3 + 16);
}

void AMCP::DAL::Synchronized_Mixer::reset_time(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 104);
  os_unfair_lock_lock(v4);
  if (std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2))
  {
    v5 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v4 + 8), a2);
    if (!v5)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v6 = v5;
    v7 = *(v5 + 23);
    v8 = v5[47];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      *(&v26 + 1) = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      *(&v26 + 1) = 0;
    }

    *&v26 = v7;
    v27 = 2;
    v28 = 0;
    v29 = 0;
    v9 = *(&v26 + 1);
    v30 = v26;
    v26 = 0uLL;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v9;
    v22 = 2;
    v23 = 0;
    v24 = 0;
    v21 = v7;
    v25 = v7;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v31, &v27, &v22);
    *(v6 + 15) = v31;
    v6[17] = v32;
    v11 = v33;
    v33 = 0uLL;
    v12 = v6[19];
    *(v6 + 9) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    *(v6 + 10) = v34;
    v6[22] = v35;
    v13 = v36;
    v36 = 0uLL;
    v14 = v6[24];
    *(v6 + 23) = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if (*(&v36 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
      }
    }

    if (*(&v33 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }

    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(v6 + 86) = 2;
    *(v6 + 91) = 0;
    *(v6 + 356) = 0;
    *(v6 + 348) = 0;
    v15 = v6[47];
    *(v6 + 23) = v21;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  *&v16 = *(v4 + 48);
  v17 = *(v4 + 56);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = *(v4 + 56);
    LODWORD(v31) = 2;
    *(&v31 + 1) = 0;
    v32 = 0;
    v33 = v18;
    *&v16 = *(v4 + 48);
    *(&v16 + 1) = v19;
    v20 = v19 == 0;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v19 = 0;
    LODWORD(v31) = 2;
    *(&v31 + 1) = 0;
    v32 = 0;
    v33 = v16;
    v20 = 1;
    *(&v16 + 1) = 0;
  }

  v27 = 2;
  v28 = 0;
  v29 = 0;
  v30 = v16;
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::set(v4 + 64, &v31, &v27);
  if (!v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  os_unfair_lock_unlock(v4);
  os_unfair_lock_lock((a1 + 152));
  AMCP::DAL::Ring_Buffer_Base::reset_time(a1);

  os_unfair_lock_unlock((a1 + 152));
}

void sub_1DE541880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  os_unfair_lock_unlock(v18);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Synchronized_Mixer::set_nominal_buffer_size(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = *(a1 + 104);
  os_unfair_lock_lock(v5);
  if (std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v5 + 8), a2))
  {
    v6 = std::__hash_table<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::__unordered_map_hasher<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::hash<AMCP::DAL::Source_ID>,std::equal_to<AMCP::DAL::Source_ID>,true>,std::__unordered_map_equal<AMCP::DAL::Source_ID,std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>,std::equal_to<AMCP::DAL::Source_ID>,std::hash<AMCP::DAL::Source_ID>,true>,std::allocator<std::__hash_value_type<AMCP::DAL::Source_ID,AMCP::DAL::Synchronizer_Source>>>::find<AMCP::DAL::Source_ID>((v5 + 8), a2);
    if (!v6)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    *(v6 + 52) = *a3;
    v6[27] = *(a3 + 8);
    v7 = *(a3 + 24);
    v6[28] = *(a3 + 16);
    v8 = *(a3 + 32);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6[30];
    v6[29] = v7;
    v6[30] = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  os_unfair_lock_unlock(v5);
}

void AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(uint64_t a1, int *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v22 = *(a2 + 2);
  }

  v23 = *(a2 + 4);
  v24 = a2[10];
  v25 = *a3;
  v5 = a3[3];
  v26 = a3[2];
  v27 = v5;
  v6 = a3[4];
  v28 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v29 = *(a3 + 5);
  v7 = a3[8];
  v30 = a3[7];
  v31 = v7;
  v8 = a3[9];
  v32 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v22;
  }

  v10 = v23;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = v29;
  v17 = v30;
  v18 = v7;
  v19 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v33 = 0;
  operator new();
}

void sub_1DE5422AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, char a58, uint64_t a59, char a60)
{
  operator delete(v60);
  AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0::~$_0(&a11);
  AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0::~$_0(&a28);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL18Synchronized_Mixer39set_anchor_time_and_nominal_buffer_sizeERKNS0_9Source_IDERKNS0_14DAL_Time_RangeE16Buffer_AlignmentE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  os_unfair_lock_lock(v2 + 38);
  AMCP::DAL::Ring_Buffer_Base::set_anchor_time_and_nominal_buffer_size(v2, v3, a1 + 64);

  os_unfair_lock_unlock(v2 + 38);
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::destroy_deallocate(char *__p)
{
  v2 = *(__p + 17);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(__p + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (__p[47] < 0)
  {
    operator delete(*(__p + 3));
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5979750;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v5 = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 24) = v5;
  }

  v6 = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 48) = v6;
  v7 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 64) = v7;
  v8 = *(a1 + 96);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 104) = v9;
  v10 = *(a1 + 136);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 136) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5979750;
  v2 = *(a1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&,Buffer_Alignment)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5979750;
  v2 = *(a1 + 136);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void AMCP::DAL::Synchronized_Mixer::reuse(AMCP::DAL::Synchronized_Mixer *this)
{
  v1 = *(this + 13);
  os_unfair_lock_lock(v1);
  for (i = *(v1 + 24); i; i = *i)
  {
    std::__optional_destruct_base<AMCP::DAL::DAL_Time_Range,false>::reset[abi:ne200100]((i + 32));
  }

  os_unfair_lock_unlock(v1);
}

uint64_t AMCP::DAL::Ring_Buffer_Base::get_time_range@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 8);
  v2 = *(this + 32);
  *(a2 + 16) = *(this + 24);
  *(a2 + 24) = v2;
  v3 = *(this + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(this + 48);
  v4 = *(this + 72);
  *(a2 + 56) = *(this + 64);
  *(a2 + 64) = v4;
  v5 = *(this + 80);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AMCP::DAL::Synchronized_Mixer::receive_data(uint64_t a1, const void **a2, __int128 *a3)
{
  os_unfair_lock_lock((a1 + 152));
  AMCP::DAL::Mixing_Ring_Buffer::receive_data(a1, v6, a3);
  os_unfair_lock_unlock((a1 + 152));
  v7 = *(a1 + 104);

  AMCP::DAL::Synchronizer::receive_data(v7, a2, a3);
}

void AMCP::DAL::Synchronized_Mixer::~Synchronized_Mixer(AMCP::DAL::Synchronized_Mixer *this)
{
  AMCP::DAL::Synchronized_Mixer::~Synchronized_Mixer(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59795E0;
  std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__value_func[abi:ne200100](this + 120);
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F5984D48;
  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(uint64_t a1, const CA::StreamDescription *a2, const AMCP::DAL::DAL_Time_Delta *a3, void *a4)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v6 = AMCP::DAL::Ring_Buffer_Base::Ring_Buffer_Base(a1, a2, a3);
  *v6 = &unk_1F59795E0;
  v8 = *a4;
  v7 = a4[1];
  *(v6 + 13) = *a4;
  *(v6 + 14) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 104);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v33[0] = &unk_1F59796C0;
  v33[1] = a1;
  v33[3] = v33;
  v10 = v8[19];
  v9 = v8[20];
  if (v10 >= v9)
  {
    v12 = v8[18];
    v13 = (v10 - v12) >> 5;
    if ((v13 + 1) >> 59)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v14 = v9 - v12;
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

    v32 = v8 + 18;
    if (v16)
    {
      if (!(v16 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = 0;
    v30 = 32 * v13;
    std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::__value_func[abi:ne200100](32 * v13, v33);
    v31 = (32 * v13 + 32);
    v17 = v8[18];
    v18 = v8[19];
    v19 = v30 + v17 - v18;
    if (v17 == v18)
    {
LABEL_24:
      v25 = v8[18];
      v8[18] = v19;
      v26 = v8[20];
      v28 = v31;
      *(v8 + 19) = v31;
      *&v31 = v25;
      *(&v31 + 1) = v26;
      v29 = v25;
      v30 = v25;
      std::__split_buffer<std::function<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>>::~__split_buffer(&v29);
      v11 = v28;
      goto LABEL_25;
    }

    v20 = (v17 + 24);
    v21 = v30 + v17 - v18;
    while (1)
    {
      v22 = *v20;
      if (*v20)
      {
        if (v20 - 3 == v22)
        {
          *(v21 + 24) = v21;
          (*(**v20 + 24))(*v20, v21);
          goto LABEL_22;
        }

        *(v21 + 24) = v22;
        v23 = v20;
      }

      else
      {
        v23 = (v21 + 24);
      }

      *v23 = 0;
LABEL_22:
      v21 += 32;
      v24 = v20 + 1;
      v20 += 4;
      if (v24 == v18)
      {
        do
        {
          std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](v17);
          v17 += 32;
        }

        while (v17 != v18);
        goto LABEL_24;
      }
    }
  }

  std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::__value_func[abi:ne200100](v8[19], v33);
  v11 = v10 + 32;
  v8[19] = v10 + 32;
LABEL_25:
  v8[19] = v11;
  std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](v33);
  return a1;
}

void sub_1DE542C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__split_buffer<std::function<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>>::~__split_buffer(va);
  std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__value_func[abi:ne200100](v5 + 120);
  v7 = *(v5 + 14);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  AMCP::DAL::Ring_Buffer_Base::~Ring_Buffer_Base(v5);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Ring_Buffer_Base::~Ring_Buffer_Base(AMCP::DAL::Ring_Buffer_Base *this)
{
  *this = &unk_1F5984D48;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__function::__func<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL18Synchronized_MixerC1ERKN2CA17StreamDescriptionERKNS0_14DAL_Time_DeltaERKNSt3__110shared_ptrINS0_12SynchronizerEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 144))
  {
    v30 = 0u;
    memset(v29, 0, sizeof(v29));
    os_unfair_lock_lock((v3 + 152));
    (*(*v3 + 72))(&v15, v3);
    v29[0] = v15;
    *(&v29[1] + 8) = v17;
    *(&v29[2] + 8) = v18;
    *&v29[1] = v16;
    *(&v29[3] + 1) = v19;
    v30 = v20;
    os_unfair_lock_unlock((v3 + 152));
    if (AMCP::DAL::DAL_Time::operator<(v29, (&v29[2] + 8)))
    {
      caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(&v15, a3, v29);
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v21, &v15);
      if (*(&v20 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
      }

      if (*(&v17 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
      }

      v7 = v21;
      v8 = v22;
      v9 = v23;
      v10 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v25;
      v12 = v26;
      v13 = v27;
      v14 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::DAL::Ring_Buffer_Base::create_readable_range(v3, &v7, &v15);
      v6 = *(v3 + 144);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v6 + 48))(v6, a2, &v15);
      if (*(&v20 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
      }

      if (*(&v17 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }
    }

    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    if (*&v29[2])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v29[2]);
    }
  }
}

void sub_1DE542FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a9);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(va);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v30 - 128));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0,std::allocator<AMCP::DAL::Synchronized_Mixer::Synchronized_Mixer(CA::StreamDescription const&,AMCP::DAL::DAL_Time_Delta const&,std::shared_ptr<AMCP::DAL::Synchronizer> const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::DAL_Time_Range const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59796C0;
  a2[1] = v2;
  return result;
}

CFMutableDictionaryRef HALB_UCObject::Release(HALB_UCObject *this, BOOL a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 2) = 0;
  }

  return CACFDictionary::SetCFMutableDictionaryToEmpty((this + 16));
}

CFMutableDictionaryRef CACFDictionary::SetCFMutableDictionaryToEmpty(CACFDictionary *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }

  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  *this = result;
  *(this + 4) = 257;
  return result;
}

uint64_t HALB_UCObject::Retain(HALB_UCObject *this)
{
  result = *(this + 2);
  if (result)
  {
    return IOObjectRetain(result);
  }

  return result;
}

void HALB_UCObject::CacheProperties(HALB_UCObject *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*(this + 33) & 1) == 0)
  {
    v2 = *(this + 2);
    if (v2)
    {
      if (*(this + 32) == 1)
      {
        properties = 0;
        v3 = IORegistryEntryCreateCFProperties(v2, &properties, 0, 0);
        if (v3)
        {
          v4 = v3;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v8 = "HALB_UCObject.cpp";
            v9 = 1024;
            v10 = 444;
            v11 = 1024;
            v12 = v4;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::CacheProperties: failed to get the properties from the IO Registry, Error: 0x%X", buf, 0x18u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          exception[2] = v4;
        }

        CACFDictionary::SetCFMutableDictionaryFromCopy((this + 16), properties);
        if (properties)
        {
          CFRelease(properties);
        }

        *(this + 32) = 0;
      }
    }
  }
}

void HALB_UCObject::~HALB_UCObject(HALB_UCObject *this)
{
  HALB_UCObject::~HALB_UCObject(this);

  JUMPOUT(0x1E12C1730);
}

{
  v2 = &unk_1F59797D0;
  *this = &unk_1F59797D0;
  v3 = *(this + 3);
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 3) = 0;
    v2 = *this;
  }

  v2[5](this);
  CACFDictionary::~CACFDictionary((this + 16));
}

BOOL HALB_UCObject::HasProperty(HALB_UCObject *this, const __CFString *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  properties = 0;
  if (*(this + 33))
  {
    v4 = IORegistryEntryCreateCFProperties(*(this + 2), &properties, 0, 0);
    if (v4)
    {
      v9 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALB_UCObject.cpp";
        v13 = 1024;
        v14 = 174;
        v15 = 1024;
        v16 = v9;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::CopyProperties: failed to get the properties from the IO Registry, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v9;
    }

    v5 = properties;
    if (!properties)
    {
      return 0;
    }
  }

  else
  {
    (*(*this + 24))(this);
    v6 = *(this + 2);
    if (!v6)
    {
      return 0;
    }

    CFRetain(v6);
    v5 = *(this + 2);
    if (!v5)
    {
      return 0;
    }
  }

  *buf = v5;
  *&buf[8] = 1;
  v7 = CFDictionaryContainsKey(v5, a2) != 0;
  CACFDictionary::~CACFDictionary(buf);
  return v7;
}

void sub_1DE54352C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE5433D0);
  }

  _Unwind_Resume(a1);
}

BOOL HALB_UCObject::CopyProperty_CFType(const __CFDictionary **this, CFStringRef key, const void **a3)
{
  if ((*(this + 33) & 1) == 0)
  {
    (*(*this + 3))(this);
    v8 = this[2];
    if (v8)
    {
      Value = CFDictionaryGetValue(v8, key);
      *a3 = Value;
      v7 = Value != 0;
      if (!Value)
      {
        return v7;
      }
    }

    else
    {
      v7 = 0;
      Value = *a3;
      if (!*a3)
      {
        return v7;
      }
    }

    CFRetain(Value);
    return v7;
  }

  CFProperty = IORegistryEntryCreateCFProperty(*(this + 2), key, 0, 0);
  *a3 = CFProperty;
  return CFProperty != 0;
}

void sub_1DE543630(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE54361CLL);
}

void HALB_UCObject::CopyProperty_UInt32(const __CFDictionary **this, const __CFString *a2, unsigned int *a3)
{
  cf = 0;
  if (HALB_UCObject::CopyProperty_CFType(this, a2, &cf))
  {
    v4 = cf;
    v5 = CFGetTypeID(cf);
    if (v5 == CFNumberGetTypeID())
    {
      v7 = v4;
      v8 = 0;
      valuePtr = 0;
      if (v4)
      {
        CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
        v6 = valuePtr;
      }

      else
      {
        v6 = 0;
      }

      *a3 = v6;
      CACFNumber::~CACFNumber(&v7);
    }

    CFRelease(v4);
  }
}

BOOL HALB_UCObject::CopyProperty_CFString(const __CFDictionary **this, const __CFString *a2, const __CFString **a3)
{
  cf = 0;
  result = HALB_UCObject::CopyProperty_CFType(this, a2, &cf);
  if (result)
  {
    v5 = cf;
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      *a3 = v5;
      return 1;
    }

    else
    {
      CFRelease(v5);
      return 0;
    }
  }

  return result;
}

BOOL HALB_UCObject::CopyProperty_CFArray(const __CFDictionary **this, const __CFString *a2, const __CFArray **a3)
{
  cf = 0;
  result = HALB_UCObject::CopyProperty_CFType(this, a2, &cf);
  if (result)
  {
    v5 = cf;
    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      *a3 = v5;
      return 1;
    }

    else
    {
      CFRelease(v5);
      return 0;
    }
  }

  return result;
}

uint64_t CACFArray::operator=(uint64_t a1, const void *a2)
{
  if (*(a1 + 8))
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
      v5 = *(a1 + 8);
      *a1 = a2;
      *(a1 + 9) = 0;
      if ((v5 & 1) == 0)
      {
        return a1;
      }
    }

    else
    {
      *a1 = a2;
      *(a1 + 9) = 0;
    }

    CFRetain(a2);
  }

  else
  {
    *a1 = a2;
    *(a1 + 9) = 0;
  }

  return a1;
}

void HALB_UCObject::SetProperty_SInt32(HALB_UCObject *this, const __CFString *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = 1;
  v3 = IORegistryEntrySetCFProperty(*(this + 2), @"exclusive access owner", v6);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      valuePtr = 136315650;
      v9 = "HALB_UCObject.cpp";
      v10 = 1024;
      v11 = 410;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::SetProperty: got an error from the IORegistry, Error: 0x%X", &valuePtr, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v4;
  }

  CACFNumber::~CACFNumber(&v6);
}

void HALB_UCObject::CopyProperty_BOOL(HALB_UCObject *this, const __CFString *a2, const __CFString *a3, BOOL *a4)
{
  CFProperty = IORegistryEntryCreateCFProperty(this, a2, 0, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = CFGetTypeID(CFProperty);
    if (v7 == CFBooleanGetTypeID())
    {
      LOBYTE(a3->isa) = CFBooleanGetValue(v6) != 0;
    }

    else
    {
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        v9 = v6;
        v10 = 0;
        valuePtr = 0;
        CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
        LOBYTE(a3->isa) = valuePtr != 0;
        CACFNumber::~CACFNumber(&v9);
      }
    }

    CFRelease(v6);
  }
}

void sub_1DE543A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

void HALB_UCIterator::~HALB_UCIterator(io_object_t *this)
{
  if (*(this + 4) == 1)
  {
    v2 = *this;
    if (v2)
    {
      IOObjectRelease(v2);
      *this = 0;
    }
  }
}

uint64_t HALB_UCObject::MapMemory(HALB_UCObject *this, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(this + 3) && *(this + 34) == 1)
  {
    v4 = MEMORY[0x1E12C07D0]();
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v9 = "HALB_UCObject.cpp";
        v10 = 1024;
        v11 = 743;
        v12 = 1024;
        v13 = v6;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::MapMemory: failed to map in the memory, Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v6;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "HALB_UCObject.cpp";
        v10 = 1024;
        v11 = 745;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::MapMemory: mapped in a NULL pointer", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }
  }

  return 0;
}

void non-virtual thunk toHALS_PlugInClockDevice::~HALS_PlugInClockDevice(HALS_PlugInClockDevice *this)
{
  HALS_PlugInClockDevice::~HALS_PlugInClockDevice((this - 376));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugInClockDevice::~HALS_PlugInClockDevice((this - 376));
}

void HALS_PlugInClockDevice::~HALS_PlugInClockDevice(HALS_PlugInClockDevice *this)
{
  *this = &unk_1F5979820;
  v2 = (this + 376);
  *(this + 47) = &unk_1F5979A08;
  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    HALS_ObjectMap::ObjectIsDead(*(this + 52), v4);
    *(this + 52) = 0;
  }

  v6[0] = 0;
  v6[1] = 0;
  HALS_System::GetInstance(&v7, 0, v6);
  HALS_IOContext_Manager::destroy_engine_for_device(*(v7 + 1744), this);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 424));
  HALS_PlugInObject::~HALS_PlugInObject(v2, v5);

  HALS_ClockDevice::~HALS_ClockDevice(this);
}

{
  HALS_PlugInClockDevice::~HALS_PlugInClockDevice(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_PlugInClockDevice::create_mcp_engine(HALS_PlugInClockDevice *this)
{
  v1 = *(this + 48);
  v3 = *(this + 99);
  return (*(**(v1 + 416) + 144))(*(v1 + 416), v1, this, &v3);
}

void HALS_PlugInClockDevice::SetPropertyData(HALS_PlugInClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v43 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  switch(mSelector)
  {
    case 0x6964656E:
      v23 = *(this + 48);
      v24 = *(v23 + 416);
      v16 = *(v23 + 424);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = *(this + 99);
      if (a8)
      {
        v26 = *(a8 + 60);
      }

      else
      {
        v26 = 0;
      }

      strcpy(v40, "nedibolg");
      BYTE1(v40[2]) = 0;
      HIWORD(v40[2]) = 0;
      (*(*v24 + 576))(v24, v25, v26, v40, 0, 0, a4, a5);
      goto LABEL_29;
    case 0x6E737274:
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v40[0] = 136315394;
          *&v40[1] = "HALS_PlugInClockDevice.cpp";
          v41 = 1024;
          v42 = 455;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::SetPropertyData: bad property data size for kAudioClockDevicePropertyNominalSampleRate", v40, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      v19 = *(this + 48);
      v20 = *(v19 + 416);
      v21 = *(v19 + 424);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a8)
      {
        v22 = *(a8 + 60);
      }

      else
      {
        v22 = 0;
      }

      (*(*v20 + 576))(v20, *(this + 99), v22, a3, 0, 0, a4, a5);
      if (v21)
      {
        v38 = v21;
LABEL_37:

        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      break;
    case 0x6C6E616D:
      v14 = *(this + 48);
      v15 = *(v14 + 416);
      v16 = *(v14 + 424);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *(this + 99);
      if (a8)
      {
        v18 = *(a8 + 60);
      }

      else
      {
        v18 = 0;
      }

      strcpy(v40, "manlbolg");
      BYTE1(v40[2]) = 0;
      HIWORD(v40[2]) = 0;
      (*(*v15 + 576))(v15, v17, v18, v40, 0, 0, a4, a5);
LABEL_29:
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      return;
    default:
      if (HALS_ClockDevice::HasProperty(this, a2, a3))
      {
        if (HALS_ClockDevice::IsPropertySettable(this, a2, a3))
        {
          HALS_Object::SetPropertyData(this, a2, a3, v30, v31, v32, v33, a8);
        }

        mSelector = a3->mSelector;
      }

      if ((*(*(this + 47) + 24))(this + 376, mSelector))
      {
        v34 = *(this + 48);
        v35 = *(v34 + 416);
        v36 = *(v34 + 424);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v37 = a8 ? *(a8 + 60) : 0;
        (*(*v35 + 576))(v35, *(this + 99), v37, a3, a6, a7, a4, a5);
        if (v36)
        {
          v38 = v36;
          goto LABEL_37;
        }
      }

      break;
  }
}

void sub_1DE5442F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInClockDevice::GetPropertyData(HALS_PlugInClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, char *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v98 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (mSelector <= 1819111267)
  {
    if (mSelector <= 1719105133)
    {
      if (mSelector > 1668510817)
      {
        if (mSelector == 1668510818)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInClockDevice.cpp";
              v96 = 1024;
              v97 = 394;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioDevicePropertyClockIsStable", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 561211770;
          }

          v47 = *(this + 48);
          v30 = *(v47 + 416);
          v31 = *(v47 + 424);
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v32 = *(this + 99);
          if (a9)
          {
            v33 = *(a9 + 60);
          }

          else
          {
            v33 = 0;
          }

          goto LABEL_141;
        }

        if (mSelector == 1668641652)
        {
          v34 = a4 / 0xC;
          if (*(this + 102) < a4 / 0xC)
          {
            v34 = *(this + 102);
          }

          if (v34)
          {
            v35 = 0;
            v36 = 0;
            do
            {
              if (v36 < *(this + 102))
              {
                v37 = &a6[v35];
                v38 = (*(this + 50) + v35);
                v39 = *v38;
                *(v37 + 2) = *(v38 + 2);
                *v37 = v39;
              }

              ++v36;
              v35 += 12;
            }

            while (12 * v34 != v35);
          }

          v40 = 4 * v34;
          goto LABEL_146;
        }

        goto LABEL_112;
      }

      if (mSelector != 1668049764)
      {
        if (mSelector == 1668050795)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInClockDevice.cpp";
              v96 = 1024;
              v97 = 386;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioDevicePropertyClockAlgorithm", buf, 0x12u);
            }

            v76 = __cxa_allocate_exception(0x10uLL);
            *v76 = off_1F5991DD8;
            v76[2] = 561211770;
          }

          v29 = *(this + 48);
          v30 = *(v29 + 416);
          v31 = *(v29 + 424);
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v32 = *(this + 99);
          if (a9)
          {
            v33 = *(a9 + 60);
          }

          else
          {
            v33 = 0;
          }

          goto LABEL_141;
        }

        goto LABEL_112;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v96 = 1024;
          v97 = 333;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyClockDomain", buf, 0x12u);
        }

        v77 = __cxa_allocate_exception(0x10uLL);
        *v77 = off_1F5991DD8;
        v77[2] = 561211770;
      }

      v45 = *(this + 48);
      v46 = *(v45 + 416);
      v28 = *(v45 + 424);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(buf, "dklcbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      LODWORD(v93) = 0;
      v94 = 0;
      (*(*v46 + 568))(v46);
    }

    else if (mSelector <= 1768187245)
    {
      if (mSelector == 1719105134)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInClockDevice.cpp";
            v96 = 1024;
            v97 = 309;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyFirmwareVersion", buf, 0x12u);
          }

          v86 = __cxa_allocate_exception(0x10uLL);
          *v86 = off_1F5991DD8;
          v86[2] = 561211770;
        }

        v59 = *(this + 48);
        v60 = *(v59 + 416);
        v25 = *(v59 + 424);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        strcpy(buf, "nvwfbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v93 = 0;
        v94 = 0;
        (*(*v60 + 568))(v60);
        goto LABEL_136;
      }

      if (mSelector != 1735354734)
      {
        goto LABEL_112;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v96 = 1024;
          v97 = 349;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyDeviceIsRunning", buf, 0x12u);
        }

        v83 = __cxa_allocate_exception(0x10uLL);
        *v83 = off_1F5991DD8;
        v83[2] = 561211770;
      }

      v41 = *(this + 48);
      v42 = *(v41 + 416);
      v28 = *(v41 + 424);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(buf, "niogbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      LODWORD(v93) = 0;
      v94 = 0;
      (*(*v42 + 568))(v42);
    }

    else
    {
      switch(mSelector)
      {
        case 0x6964656E:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInClockDevice.cpp";
              v96 = 1024;
              v97 = 293;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyIdentify", buf, 0x12u);
            }

            v84 = __cxa_allocate_exception(0x10uLL);
            *v84 = off_1F5991DD8;
            v84[2] = 561211770;
          }

          v50 = *(this + 48);
          v51 = *(v50 + 416);
          v28 = *(v50 + 424);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          strcpy(buf, "nedibolg");
          buf[9] = 0;
          *&buf[10] = 0;
          LODWORD(v93) = 0;
          v94 = 0;
          (*(*v51 + 568))(v51);
          break;
        case 0x6C69766E:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInClockDevice.cpp";
              v96 = 1024;
              v97 = 341;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyDeviceIsAlive", buf, 0x12u);
            }

            v79 = __cxa_allocate_exception(0x10uLL);
            *v79 = off_1F5991DD8;
            v79[2] = 561211770;
          }

          v48 = *(this + 48);
          v49 = *(v48 + 416);
          v28 = *(v48 + 424);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          strcpy(buf, "nvilbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          LODWORD(v93) = 0;
          v94 = 0;
          (*(*v49 + 568))(v49);
          break;
        case 0x6C6D616B:
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_PlugInClockDevice.cpp";
              v96 = 1024;
              v97 = 285;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyManufacturer", buf, 0x12u);
            }

            v81 = __cxa_allocate_exception(0x10uLL);
            *v81 = off_1F5991DD8;
            v81[2] = 561211770;
          }

          v23 = *(this + 48);
          v24 = *(v23 + 416);
          v25 = *(v23 + 424);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          strcpy(buf, "kamlbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          v93 = 0;
          v94 = 0;
          (*(*v24 + 568))(v24);
          goto LABEL_136;
        default:
          goto LABEL_112;
      }
    }

    goto LABEL_134;
  }

  if (mSelector > 1919512166)
  {
    if (mSelector <= 1935763059)
    {
      if (mSelector == 1919512167)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInClockDevice.cpp";
            v96 = 1024;
            v97 = 371;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioDevicePropertyZeroTimeStampPeriod", buf, 0x12u);
          }

          v90 = __cxa_allocate_exception(0x10uLL);
          *v90 = off_1F5991DD8;
          v90[2] = 561211770;
        }

        v64 = *(this + 48);
        v65 = *(v64 + 416);
        v66 = *(v64 + 424);
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v67 = (*(*v65 + 24))(v65);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        v68 = *(this + 48);
        v30 = *(v68 + 416);
        v31 = *(v68 + 424);
        if (v67)
        {
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          strcpy(buf, "zisfbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          LODWORD(v93) = 0;
          v94 = 0;
          (*(*v30 + 568))(v30);
          v75 = 0;
LABEL_142:
          *a6 = v75;
          if (v31)
          {
            v74 = v31;
            goto LABEL_144;
          }

          goto LABEL_145;
        }

        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = *(this + 99);
        if (a9)
        {
          v33 = *(a9 + 60);
        }

        else
        {
          v33 = 0;
        }

LABEL_141:
        *buf = 0;
        LODWORD(v93) = 0;
        (*(*v30 + 568))(v30, v32, v33, a3, 0, 0, 4, &v93, buf);
        v75 = *buf;
        goto LABEL_142;
      }

      if (mSelector == 1920168547)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_PlugInClockDevice.cpp";
            v96 = 1024;
            v97 = 410;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyResourceBundle", buf, 0x12u);
          }

          v92 = __cxa_allocate_exception(0x10uLL);
          *v92 = off_1F5991DD8;
          v92[2] = 561211770;
        }

        *a6 = HALS_PlugInObject::CopyResourceBundlePath(this + 376, a9);
        goto LABEL_139;
      }

      goto LABEL_112;
    }

    if (mSelector == 1935763060)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v96 = 1024;
          v97 = 402;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioDevicePropertySafetyOffset", buf, 0x12u);
        }

        v88 = __cxa_allocate_exception(0x10uLL);
        *v88 = off_1F5991DD8;
        v88[2] = 561211770;
      }

      *a6 = 0;
      goto LABEL_145;
    }

    if (mSelector == 1936618861)
    {
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v96 = 1024;
          v97 = 301;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertySerialNumber", buf, 0x12u);
        }

        v85 = __cxa_allocate_exception(0x10uLL);
        *v85 = off_1F5991DD8;
        v85[2] = 561211770;
      }

      v57 = *(this + 48);
      v58 = *(v57 + 416);
      v25 = *(v57 + 424);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(buf, "munsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v93 = 0;
      v94 = 0;
      (*(*v58 + 568))(v58);
      goto LABEL_136;
    }

    if (mSelector != 1953653102)
    {
LABEL_112:
      if (HALS_ClockDevice::HasProperty(this, a2, a3))
      {

        HALS_ClockDevice::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
      }

      else if ((*(*(this + 47) + 24))(this + 376, mSelector))
      {
        v69 = *(this + 48);
        v70 = *(v69 + 416);
        v71 = *(v69 + 424);
        if (v71)
        {
          atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (a9)
        {
          v72 = *(a9 + 60);
        }

        else
        {
          v72 = 0;
        }

        (*(*v70 + 568))(v70, *(this + 99), v72, a3, a7, a8, a4, a5, a6);
        if (v71)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v71);
        }
      }

      return;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInClockDevice.cpp";
        v96 = 1024;
        v97 = 325;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyTransportType", buf, 0x12u);
      }

      v82 = __cxa_allocate_exception(0x10uLL);
      *v82 = off_1F5991DD8;
      v82[2] = 561211770;
    }

    v26 = *(this + 48);
    v27 = *(v26 + 416);
    v28 = *(v26 + 424);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    strcpy(buf, "nartbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    LODWORD(v93) = 0;
    v94 = 0;
    (*(*v27 + 568))(v27);
LABEL_134:
    *a6 = v93;
    if (v28)
    {
      v74 = v28;
LABEL_144:
      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
    }

LABEL_145:
    v40 = 4;
    goto LABEL_146;
  }

  if (mSelector <= 1819569762)
  {
    if (mSelector == 1819111268)
    {
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v96 = 1024;
          v97 = 277;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyModelName", buf, 0x12u);
        }

        v89 = __cxa_allocate_exception(0x10uLL);
        *v89 = off_1F5991DD8;
        v89[2] = 561211770;
      }

      v62 = *(this + 48);
      v63 = *(v62 + 416);
      v25 = *(v62 + 424);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(buf, "domlbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v93 = 0;
      v94 = 0;
      (*(*v63 + 568))(v63);
      goto LABEL_136;
    }

    if (mSelector == 1819173229)
    {
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v96 = 1024;
          v97 = 269;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
        }

        v91 = __cxa_allocate_exception(0x10uLL);
        *v91 = off_1F5991DD8;
        v91[2] = 561211770;
      }

      v43 = *(this + 48);
      v44 = *(v43 + 416);
      v25 = *(v43 + 424);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(buf, "manlbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v93 = 0;
      v94 = 0;
      (*(*v44 + 568))(v44);
LABEL_136:
      *a6 = v93;
      if (!v25)
      {
LABEL_139:
        v40 = 8;
LABEL_146:
        *a5 = v40;
        return;
      }

      v73 = v25;
LABEL_138:
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
      goto LABEL_139;
    }

    goto LABEL_112;
  }

  if (mSelector == 1819569763)
  {
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInClockDevice.cpp";
        v96 = 1024;
        v97 = 357;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyLatency", buf, 0x12u);
      }

      v87 = __cxa_allocate_exception(0x10uLL);
      *v87 = off_1F5991DD8;
      v87[2] = 561211770;
    }

    v61 = *(this + 48);
    v30 = *(v61 + 416);
    v31 = *(v61 + 424);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = *(this + 99);
    if (a9)
    {
      v33 = *(a9 + 60);
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_141;
  }

  if (mSelector != 1853059619)
  {
    if (mSelector == 1853059700)
    {
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInClockDevice.cpp";
          v96 = 1024;
          v97 = 317;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyNominalSampleRate", buf, 0x12u);
        }

        v80 = __cxa_allocate_exception(0x10uLL);
        *v80 = off_1F5991DD8;
        v80[2] = 561211770;
      }

      v18 = *(this + 48);
      v19 = *(v18 + 416);
      v20 = *(v18 + 424);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(this + 99);
      if (a9)
      {
        v22 = *(a9 + 60);
      }

      else
      {
        v22 = 0;
      }

      *buf = 0;
      LODWORD(v93) = 0;
      (*(*v19 + 568))(v19, v21, v22, a3, 0, 0, 8, &v93, buf);
      *a6 = *buf;
      if (!v20)
      {
        goto LABEL_139;
      }

      v73 = v20;
      goto LABEL_138;
    }

    goto LABEL_112;
  }

  v52 = *(this + 48);
  v53 = *(v52 + 416);
  v54 = *(v52 + 424);
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v55 = *(this + 99);
  if (a9)
  {
    v56 = *(a9 + 60);
  }

  else
  {
    v56 = 0;
  }

  strcpy(buf, "#rsnbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  (*(*v53 + 568))(v53, v55, v56, buf, 0, 0, a4, a5, a6);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }
}

void sub_1DE545E4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInClockDevice::GetPropertyDataSize(HALS_PlugInClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  v13 = 8;
  if (mSelector <= 1851878763)
  {
    if (mSelector == 1668641652)
    {
      return (12 * *(this + 102));
    }

    v14 = 1819173229;
  }

  else
  {
    if (mSelector == 1851878764)
    {
      return v13;
    }

    if (mSelector == 1853059619)
    {
      v16 = *(this + 48);
      v17 = *(v16 + 416);
      v18 = *(v16 + 424);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(this + 99);
      if (a6)
      {
        v20 = *(a6 + 60);
      }

      else
      {
        v20 = 0;
      }

      v26 = 0x676C6F626E737223;
      v27 = 0;
      v13 = (*(*v17 + 560))(v17, v19, v20, &v26, 0, 0);
      if (!v18)
      {
        return v13;
      }

      v25 = v18;
LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      return v13;
    }

    v14 = 1920168547;
  }

  if (mSelector == v14)
  {
    return v13;
  }

  if (!HALS_ClockDevice::HasProperty(this, a2, a3))
  {
    if (!(*(*(this + 47) + 24))(this + 376, mSelector))
    {
      return 0;
    }

    v21 = *(this + 48);
    v22 = *(v21 + 416);
    v23 = *(v21 + 424);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a6)
    {
      v24 = *(a6 + 60);
    }

    else
    {
      v24 = 0;
    }

    v13 = (*(*v22 + 560))(v22, *(this + 99), v24, a3, a4, a5);
    if (!v23)
    {
      return v13;
    }

    v25 = v23;
    goto LABEL_25;
  }

  return HALS_ClockDevice::GetPropertyDataSize(this, a2, a3);
}

void sub_1DE546148(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInClockDevice::IsPropertySettable(HALS_PlugInClockDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v8 = 0;
  mSelector = a3->mSelector;
  if (mSelector > 1819173228)
  {
    if (mSelector == 1920168547)
    {
      return v8;
    }

    if (mSelector == 1819173229)
    {
      v15 = *(this + 48);
      v16 = *(v15 + 416);
      v12 = *(v15 + 424);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *(this + 99);
      if (a4)
      {
        v18 = *(a4 + 60);
      }

      else
      {
        v18 = 0;
      }

      v26 = 0x676C6F626C6E616DLL;
      v27 = 0;
      v24 = (*(*v16 + 552))(v16, v17, v18, &v26);
LABEL_27:
      v8 = v24;
      if (v12)
      {
        v25 = v12;
LABEL_29:
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      return v8;
    }
  }

  else
  {
    if (mSelector == 1668641652)
    {
      return v8;
    }

    if (mSelector == 1768187246)
    {
      v10 = *(this + 48);
      v11 = *(v10 + 416);
      v12 = *(v10 + 424);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *(this + 99);
      if (a4)
      {
        v14 = *(a4 + 60);
      }

      else
      {
        v14 = 0;
      }

      v26 = 0x676C6F626964656ELL;
      v27 = 0;
      v24 = (*(*v11 + 552))(v11, v13, v14, &v26);
      goto LABEL_27;
    }
  }

  if (!HALS_ClockDevice::HasProperty(this, a2, a3))
  {
    if (!(*(*(this + 47) + 24))(this + 376, mSelector))
    {
      return 0;
    }

    v20 = *(this + 48);
    v21 = *(v20 + 416);
    v22 = *(v20 + 424);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      v23 = *(a4 + 60);
    }

    else
    {
      v23 = 0;
    }

    v8 = (*(*v21 + 552))(v21, *(this + 99), v23, a3);
    if (!v22)
    {
      return v8;
    }

    v25 = v22;
    goto LABEL_29;
  }

  return HALS_ClockDevice::IsPropertySettable(this, a2, a3);
}

void sub_1DE5463F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInClockDevice::HasProperty(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v7 = *a3;
  if (v7 > 1819111267)
  {
    switch(v7)
    {
      case 0x6C6D6F64:
        v21 = *(a1 + 384);
        v22 = *(v21 + 416);
        v10 = *(v21 + 424);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = *(a1 + 396);
        if (a4)
        {
          v24 = *(a4 + 240);
        }

        else
        {
          v24 = 0;
        }

        v41 = 0x676C6F626C6D6F64;
        v42 = 0;
        v38 = (*(*v22 + 544))(v22, v23, v24, &v41);
        break;
      case 0x736E756D:
        v30 = *(a1 + 384);
        v31 = *(v30 + 416);
        v10 = *(v30 + 424);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = *(a1 + 396);
        if (a4)
        {
          v33 = *(a4 + 240);
        }

        else
        {
          v33 = 0;
        }

        v41 = 0x676C6F62736E756DLL;
        v42 = 0;
        v38 = (*(*v31 + 544))(v31, v32, v33, &v41);
        break;
      case 0x6C6E616D:
        v13 = *(a1 + 384);
        v14 = *(v13 + 416);
        v10 = *(v13 + 424);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *(a1 + 396);
        if (a4)
        {
          v16 = *(a4 + 240);
        }

        else
        {
          v16 = 0;
        }

        v41 = 0x676C6F626C6E616DLL;
        v42 = 0;
        v38 = (*(*v14 + 544))(v14, v15, v16, &v41);
        break;
      default:
        goto LABEL_24;
    }

LABEL_51:
    v25 = v38;
    if (v10)
    {
      v39 = v10;
LABEL_53:
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      return v25;
    }

    return v25;
  }

  switch(v7)
  {
    case 0x6677766E:
      v17 = *(a1 + 384);
      v18 = *(v17 + 416);
      v10 = *(v17 + 424);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(a1 + 396);
      if (a4)
      {
        v20 = *(a4 + 240);
      }

      else
      {
        v20 = 0;
      }

      v41 = 0x676C6F626677766ELL;
      v42 = 0;
      v38 = (*(*v18 + 544))(v18, v19, v20, &v41);
      goto LABEL_51;
    case 0x6964656E:
      v26 = *(a1 + 384);
      v27 = *(v26 + 416);
      v10 = *(v26 + 424);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *(a1 + 396);
      if (a4)
      {
        v29 = *(a4 + 240);
      }

      else
      {
        v29 = 0;
      }

      v41 = 0x676C6F626964656ELL;
      v42 = 0;
      v38 = (*(*v27 + 544))(v27, v28, v29, &v41);
      goto LABEL_51;
    case 0x6C6D616B:
      v8 = *(a1 + 384);
      v9 = *(v8 + 416);
      v10 = *(v8 + 424);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *(a1 + 396);
      if (a4)
      {
        v12 = *(a4 + 240);
      }

      else
      {
        v12 = 0;
      }

      v41 = 0x676C6F626C6D616BLL;
      v42 = 0;
      v38 = (*(*v9 + 544))(v9, v11, v12, &v41);
      goto LABEL_51;
  }

LABEL_24:
  if (HALS_ClockDevice::HasProperty(a1, a2, a3))
  {
    return 1;
  }

  if (!(*(*(a1 + 376) + 24))(a1 + 376, v7))
  {
    return 0;
  }

  v34 = *(a1 + 384);
  v35 = *(v34 + 416);
  v36 = *(v34 + 424);
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a4)
  {
    v37 = *(a4 + 240);
  }

  else
  {
    v37 = 0;
  }

  v25 = (*(*v35 + 544))(v35, *(a1 + 396), v37, a3);
  if (v36)
  {
    v39 = v36;
    goto LABEL_53;
  }

  return v25;
}

void sub_1DE546838(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInClockDevice::Activate(HALS_PlugInClockDevice *this)
{
  v2 = this + 376;
  v3 = (*(**(*(this + 48) + 416) + 128))(*(*(this + 48) + 416), *(this + 48), this);
  *(this + 52) = v3;
  (**v3)();
  HALS_Object::Activate(this, v4);
  (*(*(this + 47) + 32))(v2);
  v7[0] = 0;
  v7[1] = 0;
  HALS_System::GetInstance(&v8, 0, v7);
  has_engine_for_device = HALS_IOContext_Manager::has_engine_for_device(*(v8 + 1744), this);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if ((has_engine_for_device & 1) == 0)
  {
    v6[0] = 0;
    v6[1] = 0;
    HALS_System::GetInstance(&v8, 0, v6);
    HALS_IOContext_Manager::create_engine_for_device(*(v8 + 1744), this);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1DE5469E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN22HALS_PlugInClockDevice32HandlePlugIn_RequestConfigChangeENS_19ConfigChangePayloadEb_block_invoke(uint64_t a1, unsigned int a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 56));
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 60));
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    kdebug_trace();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 544;
      *&buf[18] = 2080;
      *&buf[20] = v4 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --->", buf, 0x1Cu);
    }

    v53 = 0u;
    v54 = 0u;
    v9 = *(v4 + 16);
    v41 = 0x676C6F6263666762;
    LODWORD(v42) = 0;
    HALS_NotificationManager::PropertiesChanged_Sync(v9, 0, 1, &v41, v8);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v49[0] = 0;
    v49[1] = 0;
    HALS_System::GetInstance(buf, 0, v49);
    v10 = *buf;
    v11 = (*(*v4 + 208))(v4);
    v12 = v11;
    if (v11)
    {
      CFRetain(v11);
      cf = v12;
      v13 = CFGetTypeID(v12);
      if (v13 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      cf = 0;
    }

    HALS_System::GetRawDeviceListUsingClockDevice(v10, &v50, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v20 = *(v4 + 416);
    __p = 0;
    v46 = 0;
    v47 = 0;
    if (v20)
    {
      (*(*v20 + 224))(v20, &__p);
    }

    v44[0] = 0;
    v44[1] = 0;
    HALS_System::GetInstance(buf, 0, v44);
    HALS_IOContext_Manager::pause_contexts_for_device(*(*buf + 1744), v4);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    HALS_ClockDeviceState::HALS_ClockDeviceState(&v41);
    HALS_ClockDeviceState::Capture(&v41, v4, HALS_ClockDeviceState::sStandardDevicePropertiesToCapture);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 574;
      *&buf[18] = 2080;
      *&buf[20] = v4 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --- calling driver", buf, 0x1Cu);
    }

    if (v7)
    {
      kdebug_trace();
      v21 = *(v4 + 384);
      v22 = *(v21 + 416);
      v23 = *(v21 + 424);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = (*(*v22 + 88))(v22, *(v4 + 396), v5, v6);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      kdebug_trace();
      if (v24 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "HALS_PlugInClockDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 586;
        *&buf[18] = 2080;
        *&buf[20] = v4 + 120;
        v59 = 1024;
        v60 = v24;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --- driver encountered error %d", buf, 0x22u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 592;
      *&buf[18] = 2080;
      *&buf[20] = v4 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --- driver returned", buf, 0x1Cu);
    }

    HALS_ClockDeviceState::HALS_ClockDeviceState(buf);
    HALS_ClockDeviceState::Capture(v25, v4, HALS_ClockDeviceState::sStandardDevicePropertiesToCapture);
    HALS_ClockDeviceState::Compare(&v41, buf, &v53, v26);
    if (v53 == *(&v53 + 1))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v55 = 136315650;
        *&v55[4] = "HALS_PlugInClockDevice.cpp";
        *&v55[12] = 1024;
        *&v55[14] = 618;
        v56 = 2080;
        v57 = v4 + 120;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  but nothing changed", v55, 0x1Cu);
      }
    }

    else
    {
      *&v40 = 0x676C6F6264696666;
      DWORD2(v40) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v53, &v40, v27);
    }

    strcpy(v55, "egfcbolg");
    v55[9] = 0;
    *&v55[10] = 0;
    CAPropertyAddressList::AppendUniqueItem(&v53, v55, v28);
    v29 = *(v4 + 416);
    if (v29)
    {
      (*(*v29 + 960))(v29);
    }

    std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*&buf[16]);
    std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(v43);
    v41 = 0;
    v42 = 0;
    HALS_System::GetInstance(buf, 0, &v41);
    HALS_IOContext_Manager::rebuild_engine_for_device(*(*buf + 1744), v4);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 641;
      *&buf[18] = 2080;
      *&buf[20] = v4 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --- sending notifications", buf, 0x1Cu);
    }

    kdebug_trace();
    v30 = *(v4 + 16);
    memset(buf, 0, 24);
    HALS_NotificationManager::GroupPropertiesChanged(1, v30, 0, &v53, buf, &__p);
    *v55 = buf;
    std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v55);
    v31 = v50;
    v32 = v51;
    if (v50 != v51)
    {
      v33 = v50;
      do
      {
        v34 = *v33;
        memset(buf, 0, 24);
        HALS_NotificationManager::GroupPropertiesChanged(1, v34, 0, &v53, buf, &__p);
        *v55 = buf;
        std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v55);
        ++v33;
      }

      while (v33 != v32);
    }

    kdebug_trace();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 656;
      *&buf[18] = 2080;
      *&buf[20] = v4 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  --- restarting IO", buf, 0x1Cu);
    }

    v35 = *(v4 + 416);
    if (v35)
    {
      (*(*v35 + 240))(v35);
      (*(**(v4 + 416) + 232))(*(v4 + 416), &__p);
    }

    *v55 = 0;
    *&v55[8] = 0;
    HALS_System::GetInstance(buf, 0, v55);
    v36 = *(*buf + 1744);
    os_unfair_lock_lock(v36 + 4);
    os_unfair_lock_unlock(v36 + 4);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v40 = 0uLL;
    HALS_System::GetInstance(buf, 0, &v40);
    HALS_IOContext_Manager::resume_contexts_for_device(*(*buf + 1744), v4);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v39[0] = 0;
    v39[1] = 0;
    HALS_System::GetInstance(buf, 0, v39);
    HALS_System::CheckForDefaultDeviceChanges(*buf);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      operator delete(v31);
    }

    if (v53)
    {
      operator delete(v53);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 677;
      *&buf[18] = 2080;
      *&buf[20] = v4 + 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: %s  <---", buf, 0x1Cu);
    }

    kdebug_trace();
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v15)
      {
        v17 = *(a1 + 60);
        *buf = 136315650;
        *&buf[4] = "HALS_PlugInClockDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 523;
        *&buf[18] = 1024;
        *&buf[20] = v17;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: Device %u is no longer valid, calling abort config change", buf, 0x18u);
      }

      if (*(a1 + 48) == 1)
      {
        v18 = *(v3 + 52);
        v19 = *(v3 + 53);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v18 + 96))(v18, *(a1 + 64), *(a1 + 32), *(a1 + 40));
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }
    }

    else if (v15)
    {
      v38 = *(a1 + 60);
      *buf = 136315650;
      *&buf[4] = "HALS_PlugInClockDevice.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 533;
      *&buf[18] = 1024;
      *&buf[20] = v38;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInClockDevice::HandlePlugIn_RequestConfigChange: Failed to perform or abort config change request for device %u", buf, 0x18u);
    }
  }

  HALS_ObjectMap::ReleaseObject(v4, v16);
  HALS_ObjectMap::ReleaseObject(v3, v37);
}

void sub_1DE547490(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29)
{
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  HALS_ObjectMap::ReleaseObject(v30, a2);
  HALS_ObjectMap::ReleaseObject(v29, v33);
  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest::Manifest(uint64_t a1, uint64_t **a2, void *a3, std::string::size_type *a4, void *a5, __int128 *a6)
{
  *(a1 + 8) = 0u;
  *a1 = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  operator new();
}

void sub_1DE549A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 184);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(&a29);
  v32 = a22;
  v33 = *(a22 + 104);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    v32 = a22;
  }

  v34 = *(v32 + 80);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    v32 = a22;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>>>::~__hash_table(v32 + 32);
  a29 = a11;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void std::unordered_map<std::string,std::shared_ptr<AMCP::Graph::Node>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Graph::Node> const&>(void *a1, void *a2, uint64_t *a3)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
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
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v13 + 2, a2))
  {
    goto LABEL_17;
  }

  v16 = *a3;
  v15 = a3[1];
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = v13[6];
  v13[5] = v16;
  v13[6] = v15;
  if (v17)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1DE54A438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, void *a2, __int128 **a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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

  if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1DE54A6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void AMCP::Graph::Manifest::create_connection_and_intermediate_tasks(int8x8_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, AMCP::Log::AMCP_Scope_Registry **a6, uint64_t a7, std::logic_error_vtbl **a8)
{
  v279 = *MEMORY[0x1E69E9840];
  if (*(a2 + 408) == 1)
  {
    AMCP::Graph::Graph_Wire::Connection::Connection(&__str, (a2 + 192));
  }

  else
  {
    *v258 = 0;
    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    v253 = 0u;
    __str_16 = 0u;
    memset(v252, 0, sizeof(v252));
    __str = 0u;
    *&v258[4] = 64;
    v260 = 0;
    v259 = 0;
    memset(v262, 0, sizeof(v262));
    v261 = 1;
  }

  v12 = a1 + 4;
  v13 = std::__string_hash<char>::operator()[abi:ne200100](&v252[1]);
  v14 = v13;
  v15 = a1[5];
  v187 = a1;
  v182 = a5;
  if (!*&v15)
  {
    goto LABEL_21;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v13;
    if (v13 >= *&v15)
    {
      v18 = v13 % *&v15;
    }
  }

  else
  {
    v18 = (*&v15 - 1) & v13;
  }

  v19 = *(*v12 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v14)
    {
      break;
    }

    if (v17 > 1)
    {
      if (v21 >= *&v15)
      {
        v21 %= *&v15;
      }
    }

    else
    {
      v21 &= *&v15 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_21;
    }

LABEL_20:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_21;
    }
  }

  if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v20 + 2, &v252[1]))
  {
    goto LABEL_20;
  }

  v22 = v20[6];
  v248 = v20[5];
  v249 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Terminal::get_description(v246, a4);
  v231 = 0u;
  v232 = 0u;
  v234 = 0u;
  v235 = 0u;
  v233 = 0;
  v236 = 0;
  v237 = 0u;
  v238 = 0u;
  v239 = 0;
  v240 = 0u;
  memset(v241, 0, sizeof(v241));
  std::string::operator=(&v231, &__str);
  *(&v232 + 1) = *(&__str_16 + 1);
  v233 = v252[0];
  std::string::operator=(&v234, &v252[1]);
  *(&v235 + 1) = v253;
  v236 = DWORD2(v253);
  v24 = *(a2 + 416);
  v23 = *(a2 + 424);
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(&v237 + 1);
  *&v237 = v24;
  *(&v237 + 1) = v23;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v27 = *(a2 + 432);
  v26 = *(a2 + 440);
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = *(&v238 + 1);
  *&v238 = v27;
  *(&v238 + 1) = v26;
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (!v237)
  {
    v98 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v98 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v28);
    }

    v100 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v99 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v99)
    {
      atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
      v101 = *v100;
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }

    else
    {
      v101 = *v100;
    }

    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      AMCP::Terminal_Identifier_to_string(&v214, &__str);
      v133 = (v214.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v214 : v214.__r_.__value_.__r.__words[0];
      *v276 = 136315906;
      *&v276[4] = "Graph_Wire.cpp";
      *&v276[12] = 1024;
      *&v276[14] = 153;
      *&v276[18] = 2080;
      *&v276[20] = "not (info.m_source_clock != nullptr)";
      *&v276[28] = 2080;
      *&v276[30] = v133;
      _os_log_error_impl(&dword_1DE1F9000, v101, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing clock for wire - %s", v276, 0x26u);
      if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v214.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v206);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v270, &__str);
    if ((v270.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v135 = &v270;
    }

    else
    {
      v135 = v270.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(v265, "Missing clock for wire - %s", v134, v135);
    std::logic_error::logic_error(&v209, v265);
    v209.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v214, &v209);
    v215 = 0uLL;
    v216 = 0;
    LODWORD(v217) = -1;
    v214.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v214.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v276, &v214);
    *&v276[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v276[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v276[48] = 153;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v212);
  }

  if (!v238)
  {
    v102 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v102 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v28);
    }

    v104 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v103 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v103)
    {
      atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
      v105 = *v104;
      std::__shared_weak_count::__release_shared[abi:ne200100](v103);
    }

    else
    {
      v105 = *v104;
    }

    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      AMCP::Terminal_Identifier_to_string(&v214, &v252[1]);
      v136 = (v214.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v214 : v214.__r_.__value_.__r.__words[0];
      *v276 = 136315906;
      *&v276[4] = "Graph_Wire.cpp";
      *&v276[12] = 1024;
      *&v276[14] = 154;
      *&v276[18] = 2080;
      *&v276[20] = "not (info.m_dest_clock != nullptr)";
      *&v276[28] = 2080;
      *&v276[30] = v136;
      _os_log_error_impl(&dword_1DE1F9000, v105, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing clock for wire - %s", v276, 0x26u);
      if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v214.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v206);
    __cxa_allocate_exception(0x40uLL);
    AMCP::Terminal_Identifier_to_string(&v270, &v252[1]);
    if ((v270.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v138 = &v270;
    }

    else
    {
      v138 = v270.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(v265, "Missing clock for wire - %s", v137, v138);
    std::logic_error::logic_error(&v209, v265);
    v209.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v214, &v209);
    v215 = 0uLL;
    v216 = 0;
    LODWORD(v217) = -1;
    v214.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v214.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v276, &v214);
    *&v276[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v276[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v276[48] = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v212);
  }

  terminal_for_key = get_terminal_for_key(&__str, a3);
  v30 = *terminal_for_key;
  v31 = *(terminal_for_key + 16);
  v241[0] = *(terminal_for_key + 32);
  v239 = v30;
  v240 = v31;
  v32 = get_terminal_for_key(&v252[1], a3);
  v33 = *v32;
  v34 = *(v32 + 16);
  v241[5] = *(v32 + 32);
  *&v241[3] = v34;
  *&v241[1] = v33;
  v35 = *&v239.__vftable;
  v36 = *(a2 + 416);
  v37 = *(a2 + 424);
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = (*(*v36 + 152))(v36);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v35 != v39)
  {
    v106 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v106 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v38);
    }

    v108 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v107 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v107)
    {
      atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
      v109 = *v108;
      std::__shared_weak_count::__release_shared[abi:ne200100](v107);
    }

    else
    {
      v109 = *v108;
    }

    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      *v276 = 136315650;
      *&v276[4] = "Graph_Wire.cpp";
      *&v276[12] = 1024;
      *&v276[14] = 161;
      *&v276[18] = 2080;
      *&v276[20] = "not (info.m_source_format.mSampleRate == get_source_timebase()->get_sample_rate())";
      _os_log_error_impl(&dword_1DE1F9000, v109, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Unexpected sample rate for connection", v276, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v209);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(v265, "Unexpected sample rate for connection", v146);
    std::logic_error::logic_error(&v212, v265);
    v212.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v214, &v212);
    v215 = 0uLL;
    v216 = 0;
    LODWORD(v217) = -1;
    v214.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v214.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v276, &v214);
    *&v276[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v276[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v276[48] = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v270);
  }

  v40 = *&v241[1];
  v41 = *(a2 + 432);
  v42 = *(a2 + 440);
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v44 = (*(*v41 + 152))(v41);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v40 != v44)
  {
    v110 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v110 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v43);
    }

    v112 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v111 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v111)
    {
      atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
      v113 = *v112;
      std::__shared_weak_count::__release_shared[abi:ne200100](v111);
    }

    else
    {
      v113 = *v112;
    }

    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      *v276 = 136315650;
      *&v276[4] = "Graph_Wire.cpp";
      *&v276[12] = 1024;
      *&v276[14] = 162;
      *&v276[18] = 2080;
      *&v276[20] = "not (info.m_dest_format.mSampleRate == get_dest_timebase()->get_sample_rate())";
      _os_log_error_impl(&dword_1DE1F9000, v113, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Unexpected sample rate for connection", v276, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v209);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(v265, "Unexpected sample rate for connection", v147);
    std::logic_error::logic_error(&v212, v265);
    v212.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v214, &v212);
    v215 = 0uLL;
    v216 = 0;
    LODWORD(v217) = -1;
    v214.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v214.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v276, &v214);
    *&v276[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v276[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v276[48] = 162;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v270);
  }

  v45 = *(terminal_for_key + 104);
  if ((v45 & 0x100000000) == 0)
  {
    v114 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v114 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v43);
    }

    v116 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v115 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v115)
    {
      atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
      v117 = *v116;
      std::__shared_weak_count::__release_shared[abi:ne200100](v115);
    }

    else
    {
      v117 = *v116;
    }

    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      *v276 = 136315650;
      *&v276[4] = "Graph_Wire.cpp";
      *&v276[12] = 1024;
      *&v276[14] = 164;
      *&v276[18] = 2080;
      *&v276[20] = "not (source_terminal.get_buffer_alignment().has_value())";
      _os_log_error_impl(&dword_1DE1F9000, v117, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Source terminal is missing buffer alignment.", v276, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v209);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(v265, "Source terminal is missing buffer alignment.", v148);
    std::logic_error::logic_error(&v212, v265);
    v212.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v214, &v212);
    v215 = 0uLL;
    v216 = 0;
    LODWORD(v217) = -1;
    v214.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v214.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v276, &v214);
    *&v276[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v276[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v276[48] = 164;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v270);
  }

  v46 = *(v32 + 104);
  if ((v46 & 0x100000000) == 0)
  {
    v118 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v118 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v43);
    }

    v120 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v119 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v119)
    {
      atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
      v121 = *v120;
      std::__shared_weak_count::__release_shared[abi:ne200100](v119);
    }

    else
    {
      v121 = *v120;
    }

    if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
      *v276 = 136315650;
      *&v276[4] = "Graph_Wire.cpp";
      *&v276[12] = 1024;
      *&v276[14] = 165;
      *&v276[18] = 2080;
      *&v276[20] = "not (dest_terminal.get_buffer_alignment().has_value())";
      _os_log_error_impl(&dword_1DE1F9000, v121, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Destination terminal is missing buffer alignment.", v276, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v209);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(v265, "Destination terminal is missing buffer alignment.", v149);
    std::logic_error::logic_error(&v212, v265);
    v212.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v214, &v212);
    v215 = 0uLL;
    v216 = 0;
    LODWORD(v217) = -1;
    v214.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v214.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v276, &v214);
    *&v276[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v276[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v276[48] = 165;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v270);
  }

  if (v45 != v46)
  {
    v122 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v122 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v43);
    }

    v124 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v123 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v123)
    {
      atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
      v125 = *v124;
      std::__shared_weak_count::__release_shared[abi:ne200100](v123);
    }

    else
    {
      v125 = *v124;
    }

    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      *v276 = 136315650;
      *&v276[4] = "Graph_Wire.cpp";
      *&v276[12] = 1024;
      *&v276[14] = 168;
      *&v276[18] = 2080;
      *&v276[20] = "not (src_alignment == dest_alignment)";
      _os_log_error_impl(&dword_1DE1F9000, v125, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Source and dest terminals should have the same alignment.", v276, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v209);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(v265, "Source and dest terminals should have the same alignment.", v150);
    std::logic_error::logic_error(&v212, v265);
    v212.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v214, &v212);
    v215 = 0uLL;
    v216 = 0;
    LODWORD(v217) = -1;
    v214.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v214.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v276, &v214);
    *&v276[32] = "Graph_Wire::Wire_Info AMCP::Graph::Graph_Wire::get_wire_info_for_connection(const Connection &, const Node_Map &) const";
    *&v276[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
    *&v276[48] = 168;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v270);
  }

  v244 = *(terminal_for_key + 104);
  v242 = HIDWORD(v257);
  if (*(terminal_for_key + 100))
  {
    if (*(v32 + 100))
    {
      v47 = 2;
    }

    else
    {
      v47 = 1;
    }

    v243 = v47;
  }

  else
  {
    v243 = 0;
  }

  v245 = v262[1];
  v224 = 0;
  v223 = 0u;
  v222 = 0u;
  v221 = 0u;
  v230 = 0;
  v229 = 0;
  v214.__r_.__value_.__s.__data_[0] = (v257 | HIDWORD(v257)) != 0;
  v214.__r_.__value_.__s.__data_[1] = DWORD1(v257) != 0;
  v214.__r_.__value_.__s.__data_[2] = *(&v255 + 1) != v256;
  v214.__r_.__value_.__s.__data_[3] = DWORD2(v257) == 1;
  v214.__r_.__value_.__s.__data_[4] = *&v262[3] != *&v262[5];
  v214.__r_.__value_.__s.__data_[5] = v259 != 0;
  v49 = *(a2 + 416);
  v48 = *(a2 + 424);
  if (v48)
  {
    atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v225 = v49;
  v226 = v48;
  v51 = *(a2 + 432);
  v50 = *(a2 + 440);
  if (v50)
  {
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v227 = v51;
  v228 = v50;
  v52 = *(a2 + 148);
  *&v214.__r_.__value_.__r.__words[1] = v239;
  v215 = v240;
  v216 = v241[0];
  v217 = *&v241[1];
  v218 = *&v241[3];
  v219 = v241[5];
  v220 = v52;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v221, *(&v255 + 1), v256, (v256 - *(&v255 + 1)) >> 2);
  v53 = std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v222 + 1, *&v262[3], *&v262[5], (*&v262[5] - *&v262[3]) >> 2);
  v224 = v247;
  v54 = v259;
  if (v259)
  {
    v55 = v260;
    if (v260)
    {
      atomic_fetch_add_explicit(&v260->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v53 = v230;
    v229 = v54;
    v230 = v55;
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }
  }

  v220 = *v258;
  if ((v214.__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    if (v242 || (v56 = (*(*v237 + 152))(v237), v56 != (*(*v238 + 152))(v238)))
    {
      v139 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v139 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v53);
      }

      v141 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v140 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v140)
      {
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
        v142 = *v141;
        std::__shared_weak_count::__release_shared[abi:ne200100](v140);
      }

      else
      {
        v142 = *v141;
      }

      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        *v276 = 136315650;
        *&v276[4] = "Manifest.cpp";
        *&v276[12] = 1024;
        *&v276[14] = 231;
        *&v276[18] = 2080;
        *&v276[20] = "not (conversion_info.m_requires_resampler || (wire_info.m_drift_correction == Drift_Correction_Status::NoDriftCorrection && wire_info.m_source_clock->get_sample_rate() == wire_info.m_dest_clock->get_sample_rate()))";
        _os_log_error_impl(&dword_1DE1F9000, v142, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Drift correction can only be disabled for timebases with the same nominal sample rate.", v276, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v206);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v270, "Drift correction can only be disabled for timebases with the same nominal sample rate.", v152);
      std::logic_error::logic_error(&v209, &v270);
      v209.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v272, &v209);
      *&v272.mBitsPerChannel = 0;
      *&v272.mBytesPerFrame = 0;
      v273.__r_.__value_.__r.__words[0] = 0;
      LODWORD(v273.__r_.__value_.__r.__words[1]) = -1;
      *&v272.mSampleRate = &unk_1F5991430;
      *&v272.mBytesPerPacket = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v276, &v272);
      *&v276[32] = "void AMCP::Graph::Manifest::create_connection_and_intermediate_tasks(const Graph_Wire &, Node_Map, const Terminal &, Terminal_Identifier, std::shared_ptr<Manifest_Task>, std::vector<std::shared_ptr<Manifest_Task>> &, std::shared_ptr<Manifest_Inventory>)";
      *&v276[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
      *&v276[48] = 231;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v212);
    }
  }

  if (*&v258[8])
  {
    v57 = 4;
  }

  else if (v262[0] == 1)
  {
    v57 = 3;
  }

  else if (v261 == 1)
  {
    v57 = 2;
  }

  else if (v262[2])
  {
    v57 = 1;
  }

  else
  {
    v57 = v243 < 2 || v262[1] != 0;
  }

  v212 = v239;
  *v213 = v240;
  *&v213[16] = v241[0];
  v59 = v237;
  if (*(&v237 + 1))
  {
    atomic_fetch_add_explicit((*(&v237 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (SBYTE7(__str_16) < 0)
  {
    std::string::__init_copy_ctor_external(&v209, __str, *(&__str + 1));
  }

  else
  {
    *&v209.__r_.__value_.__l.__data_ = __str;
    v209.__r_.__value_.__r.__words[2] = __str_16;
  }

  v210 = *(&__str_16 + 1);
  v211 = v252[0];
  v181 = v57;
  if (SHIBYTE(v252[3]) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, v252[1], v252[2]);
  }

  else
  {
    v206 = *&v252[1];
  }

  v207 = v253;
  v208 = DWORD2(v253);
  v60 = v237;
  v61 = v238;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v276, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    *v276 = *(a2 + 40);
    *&v276[16] = *(a2 + 56);
  }

  *&v276[24] = *(a2 + 64);
  *&v276[32] = *(a2 + 72);
  v62 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a3, v276);
  v63 = v62;
  if ((v276[23] & 0x80000000) != 0)
  {
    operator delete(*v276);
  }

  if ((v214.__r_.__value_.__s.__data_[0] & 1) != 0 || (v214.__r_.__value_.__s.__data_[2] & 1) != 0 || (v214.__r_.__value_.__s.__data_[3] & 1) != 0 || (v214.__r_.__value_.__s.__data_[5] & 1) != 0 || (v214.__r_.__value_.__s.__data_[4] & 1) != 0 || *(*(v63 + 5) + 16) == 3 && v60 != v61)
  {
    v64 = *(v187 + 80);
    if (v64)
    {
      atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v65 = *(v187 + 72);
  if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v197, v209.__r_.__value_.__l.__data_, v209.__r_.__value_.__l.__size_);
  }

  else
  {
    v197 = v209;
  }

  v198 = v210;
  v199 = v211;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v206.__r_.__value_.__l.__data_, v206.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v206;
  }

  v196 = v208;
  v200 = v197;
  v201 = v210;
  memset(&v197, 0, sizeof(v197));
  v202 = v211;
  *&v203.__r_.__value_.__l.__data_ = *&v194.__r_.__value_.__l.__data_;
  v66 = v194.__r_.__value_.__r.__words[2];
  memset(&v194, 0, sizeof(v194));
  v195 = v207;
  v205 = v208;
  v203.__r_.__value_.__r.__words[2] = v66;
  v204 = v207;
  if (*(&v59 + 1))
  {
    atomic_fetch_add_explicit((*(&v59 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (*a8 == v65)
  {
    v126 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v126 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v62);
    }

    v128 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v127 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v127)
    {
      atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      v129 = *v128;
      std::__shared_weak_count::__release_shared[abi:ne200100](v127);
    }

    else
    {
      v129 = *v128;
    }

    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
    {
      *v276 = 136315650;
      *&v276[4] = "Manifest_Inventory.cpp";
      *&v276[12] = 1024;
      *&v276[14] = 412;
      *&v276[18] = 2080;
      *&v276[20] = "not (previous_inventory.get() != this)";
      _os_log_error_impl(&dword_1DE1F9000, v129, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Bad arguments to Manifest_Inventory::request_buffer_for_terminal", v276, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v263);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v270, "Bad arguments to Manifest_Inventory::request_buffer_for_terminal", v151);
    std::logic_error::logic_error(&v264, &v270);
    v264.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v272, &v264);
    *&v272.mBitsPerChannel = 0;
    *&v272.mBytesPerFrame = 0;
    v273.__r_.__value_.__r.__words[0] = 0;
    LODWORD(v273.__r_.__value_.__r.__words[1]) = -1;
    *&v272.mSampleRate = &unk_1F5991430;
    *&v272.mBytesPerPacket = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v276, &v272);
    *&v276[32] = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
    *&v276[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
    *&v276[48] = 412;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v271);
  }

  v183 = v243;
  v179 = v242;
  v180 = v244;
  v178 = v245;
  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v276, v200.__r_.__value_.__l.__data_, v200.__r_.__value_.__l.__size_);
  }

  else
  {
    *v276 = v200;
  }

  *&v276[24] = v201;
  *&v276[32] = v202;
  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v276[40], v203.__r_.__value_.__l.__data_, v203.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v276[40] = v203;
  }

  v277 = v204;
  v278 = v205;
  if (*a8 && (v67 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>>>::find<AMCP::Wire_Identifier>(&(*a8)->~logic_error_0, v276)) != 0)
  {
    v68 = *(v67 + 12);
    v69 = v67[13];
    if (v69)
    {
      atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v272.mSampleRate = v68;
    *&v272.mFormatID = v69;
    AMCP::Graph::Manifest_Inventory::add_buffer(v65, &v272);
    if (v69)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    }
  }

  else
  {
    v69 = 0;
    v68 = 0.0;
  }

  if ((v276[63] & 0x80000000) != 0)
  {
    operator delete(*&v276[40]);
  }

  if ((v276[23] & 0x80000000) != 0)
  {
    operator delete(*v276);
  }

  if (!v183 || v68 == 0.0)
  {
    v177 = v65;
    if (v183)
    {
      if (v183 != 1)
      {
        v85 = v65 + 1;
        while (1)
        {
          v85 = v85->~logic_error;
          if (!v85)
          {
            break;
          }

          v86 = v85[4].~logic_error;
          if (*(v86 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v272, *(v86 + 1), *(v86 + 2));
          }

          else
          {
            v87 = *(v86 + 8);
            *&v272.mBytesPerPacket = *(v86 + 3);
            *&v272.mSampleRate = v87;
          }

          *&v272.mBytesPerFrame = *(v86 + 4);
          v272.mBitsPerChannel = *(v86 + 10);
          *v265 = &v272;
          *&v265[8] = &v272.mBytesPerFrame;
          *&v265[16] = &v272.mBitsPerChannel;
          v270.__r_.__value_.__r.__words[0] = &v200;
          v270.__r_.__value_.__l.__size_ = &v201;
          v270.__r_.__value_.__r.__words[2] = &v202;
          v88 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v265, &v270);
          v89 = v88;
          if (SHIBYTE(v272.mFramesPerPacket) < 0)
          {
            operator delete(*&v272.mSampleRate);
            if (v89)
            {
LABEL_177:
              v90 = v85[4].~logic_error;
              v91 = *(v90 + 38);
              v75 = *(v90 + 39);
              if (v75)
              {
                atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
                v271.__r_.__value_.__r.__words[0] = v91;
                v271.__r_.__value_.__l.__size_ = v75;
LABEL_164:
                atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
LABEL_185:
                if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v272, v200.__r_.__value_.__l.__data_, v200.__r_.__value_.__l.__size_);
                }

                else
                {
                  *&v272.mSampleRate = *&v200.__r_.__value_.__l.__data_;
                  *&v272.mBytesPerPacket = *(&v200.__r_.__value_.__l + 2);
                }

                *&v272.mBytesPerFrame = v201;
                v272.mBitsPerChannel = v202;
                if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v273, v203.__r_.__value_.__l.__data_, v203.__r_.__value_.__l.__size_);
                }

                else
                {
                  v273 = v203;
                }

                v274 = v204;
                v275 = v205;
                *v265 = v212;
                *&v265[16] = *v213;
                v266 = *&v213[16];
                *&v264.__r_.__value_.__l.__data_ = v59;
                if (*(&v59 + 1))
                {
                  atomic_fetch_add_explicit((*(&v59 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                AMCP::Graph::Manifest_Inventory::request_shared_buffer_for_connection(&v270, v177, &v271, &v272, v265, v181, &v264, v180, v179, v183, v178);
              }

LABEL_184:
              *&v271.__r_.__value_.__l.__data_ = v91;
              goto LABEL_185;
            }
          }

          else if (v88)
          {
            goto LABEL_177;
          }
        }

        v91 = 0;
        goto LABEL_184;
      }

      v72 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, &v203);
      if (!v72)
      {
        v161 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v161 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v163 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v162 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v162)
        {
          atomic_fetch_add_explicit(&v162->__shared_owners_, 1uLL, memory_order_relaxed);
          v164 = *v163;
          std::__shared_weak_count::__release_shared[abi:ne200100](v162);
        }

        else
        {
          v164 = *v163;
        }

        if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
        {
          v173 = &v203;
          if ((v203.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v173 = v203.__r_.__value_.__r.__words[0];
          }

          LODWORD(v272.mSampleRate) = 136315906;
          *(&v272.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v272.mFormatFlags) = 1024;
          *(&v272.mFormatFlags + 2) = 435;
          HIWORD(v272.mBytesPerPacket) = 2080;
          *&v272.mFramesPerPacket = "not (found_node != nodes.end())";
          LOWORD(v272.mChannelsPerFrame) = 2080;
          *(&v272.mChannelsPerFrame + 2) = v173;
          _os_log_error_impl(&dword_1DE1F9000, v164, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing node for connection in when building manifest: %s", &v272, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v269);
        __cxa_allocate_exception(0x40uLL);
        v175 = &v203;
        if ((v203.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v175 = v203.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v271, "Missing node for connection in when building manifest: %s", v174, v175);
        std::logic_error::logic_error(&v263, &v271);
        v263.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v265, &v263);
        v266 = 0;
        *&v265[24] = 0;
        v267 = 0;
        v268 = -1;
        *v265 = &unk_1F5991430;
        *&v265[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v272, v265);
        *&v272.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v273.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v273.__r_.__value_.__r.__words[1]) = 435;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v264);
      }

      nth_wire_ref = AMCP::Graph::Node::get_nth_wire_ref(&v272, v72[5], v204, 1u);
      v75 = *&v272.mFormatID;
      mSampleRate = v272.mSampleRate;
      if (!*&v272.mSampleRate)
      {
        v165 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v165 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(nth_wire_ref);
        }

        v167 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v166 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v166)
        {
          atomic_fetch_add_explicit(&v166->__shared_owners_, 1uLL, memory_order_relaxed);
          v168 = *v167;
          std::__shared_weak_count::__release_shared[abi:ne200100](v166);
        }

        else
        {
          v168 = *v167;
        }

        if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v272.mSampleRate) = 136315650;
          *(&v272.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v272.mFormatFlags) = 1024;
          *(&v272.mFormatFlags + 2) = 438;
          HIWORD(v272.mBytesPerPacket) = 2080;
          *&v272.mFramesPerPacket = "not ((wire_buffer) != nullptr)";
          _os_log_error_impl(&dword_1DE1F9000, v168, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", &v272, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v269);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v271, "", v176);
        std::logic_error::logic_error(&v263, &v271);
        v263.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v265, &v263);
        v266 = 0;
        *&v265[24] = 0;
        v267 = 0;
        v268 = -1;
        *v265 = &unk_1F5991430;
        *&v265[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v272, v265);
        *&v272.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v273.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v273.__r_.__value_.__r.__words[1]) = 438;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v264);
      }

      v76 = (*(**&v272.mSampleRate + 80))(&v272, *&v272.mSampleRate);
      if (*&v212.__vftable != v272.mSampleRate || LODWORD(v212.__imp_.__imp_) != v272.mFormatID || *v213 != *&v272.mBytesPerPacket || *&v213[12] != *&v272.mChannelsPerFrame || (v76 = CA::Implementation::EquivalentFormatFlags(&v212, &v272, 0), (v76 & 1) == 0))
      {
        v77 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v77 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v76);
        }

        v79 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v78 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v78)
        {
          atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
          v80 = *v79;
          std::__shared_weak_count::__release_shared[abi:ne200100](v78);
        }

        else
        {
          v80 = *v79;
        }

        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          AMCP::Terminal_Identifier_to_string(v265, &v203.__r_.__value_.__l.__data_);
          v143 = v265[23] >= 0 ? v265 : *v265;
          LODWORD(v272.mSampleRate) = 136315906;
          *(&v272.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v272.mFormatFlags) = 1024;
          *(&v272.mFormatFlags + 2) = 441;
          HIWORD(v272.mBytesPerPacket) = 2080;
          *&v272.mFramesPerPacket = "not (CA::StreamDescription::IsEquivalent(buffer_format, wire_buffer->get_format()))";
          LOWORD(v272.mChannelsPerFrame) = 2080;
          *(&v272.mChannelsPerFrame + 2) = v143;
          _os_log_error_impl(&dword_1DE1F9000, v80, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Container format doesnt match terminal format when building manifest: %s", &v272, 0x26u);
          if ((v265[23] & 0x80000000) != 0)
          {
            operator delete(*v265);
          }
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v193);
        __cxa_allocate_exception(0x40uLL);
        AMCP::Terminal_Identifier_to_string(&v264, &v203.__r_.__value_.__l.__data_);
        if ((v264.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v145 = &v264;
        }

        else
        {
          v145 = v264.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v271, "Container format doesnt match terminal format when building manifest: %s", v144, v145);
        std::logic_error::logic_error(&v269, &v271);
        v269.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v265, &v269);
        v266 = 0;
        *&v265[24] = 0;
        v267 = 0;
        v268 = -1;
        *v265 = &unk_1F5991430;
        *&v265[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v272, v265);
        *&v272.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v273.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v273.__r_.__value_.__r.__words[1]) = 441;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v263);
      }
    }

    else
    {
      v81 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, &v200);
      if (!v81)
      {
        v153 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v153 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v155 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v154 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v154)
        {
          atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
          v156 = *v155;
          std::__shared_weak_count::__release_shared[abi:ne200100](v154);
        }

        else
        {
          v156 = *v155;
        }

        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
        {
          v169 = &v200;
          if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v169 = v200.__r_.__value_.__r.__words[0];
          }

          LODWORD(v272.mSampleRate) = 136315906;
          *(&v272.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v272.mFormatFlags) = 1024;
          *(&v272.mFormatFlags + 2) = 424;
          HIWORD(v272.mBytesPerPacket) = 2080;
          *&v272.mFramesPerPacket = "not (found_node != nodes.end())";
          LOWORD(v272.mChannelsPerFrame) = 2080;
          *(&v272.mChannelsPerFrame + 2) = v169;
          _os_log_error_impl(&dword_1DE1F9000, v156, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing node for connection in when building manifest: %s", &v272, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v269);
        __cxa_allocate_exception(0x40uLL);
        v171 = &v200;
        if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v171 = v200.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v271, "Missing node for connection in when building manifest: %s", v170, v171);
        std::logic_error::logic_error(&v263, &v271);
        v263.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v265, &v263);
        v266 = 0;
        *&v265[24] = 0;
        v267 = 0;
        v268 = -1;
        *v265 = &unk_1F5991430;
        *&v265[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v272, v265);
        *&v272.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v273.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v273.__r_.__value_.__r.__words[1]) = 424;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v264);
      }

      v82 = AMCP::Graph::Node::get_nth_wire_ref(&v272, v81[5], v201, 0);
      v75 = *&v272.mFormatID;
      mSampleRate = v272.mSampleRate;
      if (!*&v272.mSampleRate)
      {
        v157 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v157 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v82);
        }

        v159 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v158 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
          v160 = *v159;
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
        }

        else
        {
          v160 = *v159;
        }

        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v272.mSampleRate) = 136315650;
          *(&v272.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v272.mFormatFlags) = 1024;
          *(&v272.mFormatFlags + 2) = 427;
          HIWORD(v272.mBytesPerPacket) = 2080;
          *&v272.mFramesPerPacket = "not ((wire_buffer) != nullptr)";
          _os_log_error_impl(&dword_1DE1F9000, v160, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", &v272, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v269);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v271, "", v172);
        std::logic_error::logic_error(&v263, &v271);
        v263.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v265, &v263);
        v266 = 0;
        *&v265[24] = 0;
        v267 = 0;
        v268 = -1;
        *v265 = &unk_1F5991430;
        *&v265[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v272, v265);
        *&v272.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v273.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v273.__r_.__value_.__r.__words[1]) = 427;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v264);
      }

      v83 = (*(**&v272.mSampleRate + 80))(&v272, *&v272.mSampleRate);
      if (*&v212.__vftable != v272.mSampleRate || LODWORD(v212.__imp_.__imp_) != v272.mFormatID || *v213 != *&v272.mBytesPerPacket || *&v213[12] != *&v272.mChannelsPerFrame || (v83 = CA::Implementation::EquivalentFormatFlags(&v212, &v272, 0), (v83 & 1) == 0))
      {
        v94 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v94 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v83);
        }

        v96 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v95 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v95)
        {
          atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
          v97 = *v96;
          std::__shared_weak_count::__release_shared[abi:ne200100](v95);
        }

        else
        {
          v97 = *v96;
        }

        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          AMCP::Terminal_Identifier_to_string(v265, &v200.__r_.__value_.__l.__data_);
          v130 = v265[23] >= 0 ? v265 : *v265;
          LODWORD(v272.mSampleRate) = 136315906;
          *(&v272.mSampleRate + 4) = "Manifest_Inventory.cpp";
          LOWORD(v272.mFormatFlags) = 1024;
          *(&v272.mFormatFlags + 2) = 430;
          HIWORD(v272.mBytesPerPacket) = 2080;
          *&v272.mFramesPerPacket = "not (CA::StreamDescription::IsEquivalent(buffer_format, wire_buffer->get_format()))";
          LOWORD(v272.mChannelsPerFrame) = 2080;
          *(&v272.mChannelsPerFrame + 2) = v130;
          _os_log_error_impl(&dword_1DE1F9000, v97, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Container format doesnt match terminal format when building manifest: %s", &v272, 0x26u);
          if ((v265[23] & 0x80000000) != 0)
          {
            operator delete(*v265);
          }
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v193);
        __cxa_allocate_exception(0x40uLL);
        AMCP::Terminal_Identifier_to_string(&v264, &v200.__r_.__value_.__l.__data_);
        if ((v264.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v132 = &v264;
        }

        else
        {
          v132 = v264.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v271, "Container format doesnt match terminal format when building manifest: %s", v131, v132);
        std::logic_error::logic_error(&v269, &v271);
        v269.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v265, &v269);
        v266 = 0;
        *&v265[24] = 0;
        v267 = 0;
        v268 = -1;
        *v265 = &unk_1F5991430;
        *&v265[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v272, v265);
        *&v272.mBitsPerChannel = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_buffer_for_terminal(const std::shared_ptr<Manifest_Inventory> &, Wire_Identifier, const Node_Map &, const CA::StreamDescription &, Manifest_Buffer::Buffer_Style, Timebase_Ref, Drift_Correction_Status, Node_Buffer_Ownership, Buffer_Alignment, int32_t)";
        v273.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
        LODWORD(v273.__r_.__value_.__r.__words[1]) = 430;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v263);
      }
    }

    *&v271.__r_.__value_.__l.__data_ = mSampleRate;
    v271.__r_.__value_.__l.__size_ = v75;
    if (v75)
    {
      goto LABEL_164;
    }

    goto LABEL_185;
  }

  if (*(&v59 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v59 + 1));
  }

  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v203.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v200.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (v69)
  {
    atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
    v70 = *(&v232 + 1);
    v71 = *(&v235 + 1);
    v191 = v68;
    v192 = v69;
    atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v70 = *(&v232 + 1);
    v71 = *(&v235 + 1);
    v191 = v68;
    v192 = 0;
  }

  AMCP::Graph::connect(*a6, v70, &v248, v71, &v191);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    v84 = v69;
  }

  else
  {
    v84 = 0;
  }

  if (*(a4 + 96) == 1 && !*(v182 + 24))
  {
    if (*(v182 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v188, *v182, *(v182 + 8));
    }

    else
    {
      v188 = *v182;
    }

    v189 = *(v182 + 24);
    v190 = *(v182 + 32);
    if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v265, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
    }

    else
    {
      *v265 = v188;
    }

    v92 = *(a4 + 16);
    *&v276[4] = *a4;
    LODWORD(v264.__r_.__value_.__l.__data_) = *&v265[16];
    *(v264.__r_.__value_.__r.__words + 3) = *&v265[19];
    memset(v265, 0, 24);
    *&v276[20] = v92;
    *&v276[36] = *(a4 + 32);
    operator new();
  }

  if (v84)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v84);
  }

  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v209.__r_.__value_.__l.__data_);
  }

  if (*(&v59 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v59 + 1));
  }

  if (v230)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v230);
  }

  if (v228)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v228);
  }

  if (v226)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v226);
  }

  if (*(&v222 + 1))
  {
    *&v223 = *(&v222 + 1);
    operator delete(*(&v222 + 1));
  }

  if (v221)
  {
    *(&v221 + 1) = v221;
    operator delete(v221);
  }

  if (*(&v238 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v238 + 1));
  }

  if (*(&v237 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v237 + 1));
  }

  if (SBYTE7(v235) < 0)
  {
    operator delete(v234);
  }

  if (SBYTE7(v232) < 0)
  {
    operator delete(v231);
  }

  for (i = 64; i != 16; i -= 24)
  {
    *v276 = &v246[i];
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v276);
  }

  if (v249)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v249);
  }

  if (*&v262[3])
  {
    *&v262[5] = *&v262[3];
    operator delete(*&v262[3]);
  }

  if (v260)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v260);
  }

  if (*(&v255 + 1))
  {
    *&v256 = *(&v255 + 1);
    operator delete(*(&v255 + 1));
  }

  if (SBYTE7(v255) < 0)
  {
    operator delete(v254);
  }

  if (SHIBYTE(v252[3]) < 0)
  {
    operator delete(v252[1]);
  }

  if (SBYTE7(__str_16) < 0)
  {
    operator delete(__str);
  }
}

void sub_1DE54F020(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  AMCP::Wire_Identifier::~Wire_Identifier(&STACK[0x3C0]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  AMCP::Graph::Graph_Wire::Conversion_Info::~Conversion_Info(&STACK[0x4D8]);
  AMCP::Graph::Graph_Wire::Wire_Info::~Wire_Info(&STACK[0x5A0]);
  v5 = &STACK[0x6B8];
  v6 = -48;
  do
  {
    STACK[0x5A0] = v5;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x5A0]);
    v5 -= 3;
    v6 += 24;
  }

  while (v6);
  if (STACK[0x6E8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x6E8]);
  }

  AMCP::Graph::Graph_Wire::Connection::~Connection(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}