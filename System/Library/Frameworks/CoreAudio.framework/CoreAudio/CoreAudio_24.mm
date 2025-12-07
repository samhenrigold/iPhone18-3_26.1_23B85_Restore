void HALS_MetaManager::CreateDevice(HALS_System **this, const __CFDictionary *a2, HALS_Client *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = 0;
  cf = 0;
  v7 = 1;
  CACFDictionary::GetCACFString(&v8, @"uid", &cf);
  if (cf)
  {
    if (!HALS_DeviceManager::CopyDeviceByUID(this, cf, 0))
    {
      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      buf_4 = "HALS_MetaManager.cpp";
      v12 = 1024;
      v13 = 204;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaManager::CreateDevice: there is already a device with this UID", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    buf = 136315394;
    buf_4 = "HALS_MetaManager.cpp";
    v12 = 1024;
    v13 = 200;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaManager::CreateDevice: the description has no UID", &buf, 0x12u);
  }

  v4 = __cxa_allocate_exception(0x10uLL);
  *v4 = off_1F5991DD8;
  v4[2] = 1852797029;
}

void sub_1DE3B340C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_Device::~HALS_Device(v19);
  MEMORY[0x1E12C1730](v19, 0x10F3C4035C184EALL);
  HALS_ObjectMap::ReleaseObject(v18, v21);
  CACFString::~CACFString(&a11);
  CACFDictionary::~CACFDictionary(&a13);
  _Unwind_Resume(a1);
}

void HALS_MetaManager::DestroyDevice(HALS_System **this, int a2)
{
  v3 = HALS_DeviceManager::CopyDeviceByObjectID(this, a2, 0);
  v5 = v3;
  if (v3)
  {
    atomic_load(v3 + 1592);
    (*(*v3 + 464))(v3);
    (*(*v5 + 8))(v5);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1174405120;
    v13[2] = ___ZN16HALS_MetaManager13DestroyDeviceEj_block_invoke;
    v13[3] = &__block_descriptor_tmp_4398;
    v13[4] = this;
    v14 = v5;
    HALS_ObjectMap::RetainObject(v5, v6);
    v7 = (*(*this + 8))(this);
    HALB_CommandGate::ExecuteCommand(v7, v13);
    HALS_System::DeviceDied(this[40], v5);
    v8 = *(this + 4);
    v11 = 0x676C6F6264657623;
    LODWORD(v12) = 0;
    HALS_Object::PropertiesChanged(this, v8, 0, 1, &v11);
    v10[0] = 0;
    v10[1] = 0;
    HALS_System::GetInstance(&v11, 0, v10);
    HALS_System::CheckForDefaultDeviceChanges(v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    HALS_ObjectMap::ReleaseObject(v14, v9);
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
}

void sub_1DE3B36EC(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, HALS_ObjectMap *a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  HALS_ObjectMap::ReleaseObject(a18, a2);
  HALS_ObjectMap::ReleaseObject(v18, v20);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c38_ZTS13HALS_ReleaserI15HALS_MetaDeviceE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 5);
  *(a1 + 40) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void HALS_MetaManager::_RemoveDevice(void *this, HALS_MetaDevice *a2)
{
  v4 = this[86];
  v5 = this[87];
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        v6 = this[87];
        break;
      }
    }
  }

  if (v5 != v6)
  {
    v7 = v5 - (v6 + 1);
    if (v5 != v6 + 1)
    {
      memmove(v6, v6 + 1, v5 - (v6 + 1));
      v4 = this[86];
    }

    v8 = (v6 + v7);
    this[87] = v6 + v7;
    v9 = this[88];
    if (((v6 + v7 - v4) >> 3) + 20 < ((v9 - v4) >> 3))
    {
      v10 = v9 - v4;
      if (v10 > (v8 - v4))
      {
        v11 = v8 - v4;
        if (v8 != v4)
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v8 - v4);
        }

        v12 = 0;
        if (v10 >> 3)
        {
          v13 = 8 * v11;
          v14 = this[87] - v4;
          v15 = 8 * v11 - v14;
          memcpy((v13 - v14), v4, v14);
          v12 = this[86];
          this[86] = v15;
          this[87] = v13;
          this[88] = 0;
        }

        if (v12)
        {
          operator delete(v12);
        }
      }
    }

    HALS_ObjectMap::ObjectIsDead(a2, v4);
  }
}

void sub_1DE3B38D8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3B38B0);
}

void ___ZN16HALS_MetaManager9AddDeviceEP15HALS_MetaDevice_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[87];
  v4 = v2[88];
  if (v3 >= v4)
  {
    v6 = v2[86];
    v7 = (v3 - v6) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - v6;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = (8 * v7);
    *v11 = *(a1 + 40);
    v5 = 8 * v7 + 8;
    v12 = v2[86];
    v13 = v2[87] - v12;
    v14 = v11 - v13;
    memcpy(v11 - v13, v12, v13);
    v15 = v2[86];
    v2[86] = v14;
    v2[87] = v5;
    v2[88] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v3 = *(a1 + 40);
    v5 = (v3 + 1);
  }

  v2[87] = v5;
}

BOOL HALS_MetaManager::GetPropertyDataSize(HALS_MetaManager *this, HALS_Client *a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, HALS_Client *a6)
{
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  return a3->mSelector == 1667327847 || a3->mSelector == 1684105063 || HALS_DeviceManager::GetPropertyDataSize(this, a2, a3, a4, a5, a6) != 0;
}

uint64_t HALS_MetaManager::IsPropertySettable(HALS_MetaManager *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (a3->mSelector == 1667327847 || a3->mSelector == 1684105063)
  {
    return 0;
  }

  return HALS_DeviceManager::IsPropertySettable(this, a2, a3);
}

uint64_t HALS_MetaManager::GetMIGDispatchQueue(HALS_MetaManager *this)
{
  return this + 352;
}

{
  return this + 352;
}

uint64_t HALS_MetaManager::GetCommandGate(HALS_MetaManager *this)
{
  return *(this + 42);
}

{
  return *(this + 42);
}

void HALS_MetaManager::_Deactivate(HALS_MetaManager *this)
{
  v1 = *(this + 86);
  v2 = *(this + 87);
  v3 = v2 - v1;
  if (v2 != v1)
  {
    if (!((v3 >> 3) >> 61))
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v3 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 2) = 0;
}

void sub_1DE3B3CE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_MetaManager::~HALS_MetaManager(std::__shared_weak_count **this)
{
  HALS_MetaManager::~HALS_MetaManager(this);

  JUMPOUT(0x1E12C1730);
}

{
  v14 = *MEMORY[0x1E69E9840];
  *this = &unk_1F596B000;
  if (HALS_MetaManager::sInstance != this)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      v8 = 136315650;
      v9 = "HALS_MetaManager.cpp";
      v10 = 1024;
      v11 = 50;
      v12 = 2080;
      v13 = "sInstance == this";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s HALS_MetaManager::HALS_MetaManager: there can be only one", &v8, 0x1Cu);
    }

    abort();
  }

  HALS_MetaManager::sInstance = 0;
  v2 = this[86];
  if (v2)
  {
    this[87] = v2;
    operator delete(v2);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 44));
  v3 = this[43];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F597A098;
  CACFString::~CACFString((this + 6));

  HALS_Object::~HALS_Object(this);
}

void sub_1DE3B3ED0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN16HALS_MetaManager10DeviceDiedEP11HALS_Device_block_invoke(__n128 *a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x4802000000;
  v26 = __Block_byref_object_copy__6128;
  v27 = __Block_byref_object_dispose__6129;
  __p = 0u;
  v29 = 0u;
  v17 = 0;
  v18 = &v17;
  v19 = 0x4002000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__2;
  memset(v22, 0, sizeof(v22));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN15HALS_MetaDevice14RealDeviceDiedEP11HALS_Device_block_invoke;
  v15[3] = &unk_1E8674A30;
  v16 = a1[2];
  v15[4] = &v23;
  v15[5] = &v17;
  v1 = v16.n128_u64[0];
  v2 = (*(*v16.n128_u64[0] + 64))(v16.n128_u64[0], v16);
  HALB_CommandGate::ExecuteCommand(v2, v15);
  v3 = v24[5];
  v4 = v24[6];
  if (v3 != v4)
  {
    HALS_Object::PropertiesChanged(v1, v1[4], 0, -1431655765 * ((v4 - v3) >> 2), v3);
  }

  v5 = v18[5];
  v6 = v18[6] - v5;
  if ((v6 & 0x1FFFFFFFE0) != 0)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v8 >= v6 >> 5)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v9 = v5 + v7;
      v10 = HALS_ObjectMap::CopyObjectByObjectID(*(v5 + v7 + 24));
      v12 = v10;
      v13 = *(v9 + 8);
      if (*v9 != v13 && v10 != 0)
      {
        HALS_Object::PropertiesChanged(v1, *(v10 + 16), 0, -1431655765 * ((v13 - *v9) >> 2), *v9);
      }

      HALS_ObjectMap::ReleaseObject(v12, v11);
      ++v8;
      v5 = v18[5];
      v6 = v18[6] - v5;
      v7 += 32;
    }

    while (v8 < (v6 >> 5));
  }

  _Block_object_dispose(&v17, 8);
  v30 = v22;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&v30);
  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }
}

void sub_1DE3B4130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  _Block_object_dispose(&a17, 8);
  *(v32 - 72) = v31;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100]((v32 - 72));
  _Block_object_dispose(&a25, 8);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AMCP::Meta::Stream::~Stream(AMCP::Meta::Stream *this)
{
  *this = &unk_1F596B180;
  AMCP::Core::Broker::destroy_core(*(*(this + 1) + 16), *(this + 6));
  *this = &unk_1F59748E8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596B180;
  AMCP::Core::Broker::destroy_core(*(*(this + 1) + 16), *(this + 6));
  *this = &unk_1F59748E8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void AMCP::Meta::Stream::update_core_common(uint64_t a1, float *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0x676C6F6273646972;
  LODWORD(v4) = 0;
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(&v2, &v3);
}

void sub_1DE3B4C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, std::runtime_error a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v42 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(v42 - 184);
  std::runtime_error::~runtime_error(&a34);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (v41)
  {
    __cxa_free_exception(v40);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a38);
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<AMCP::Direction ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<AMCP::Direction ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE3B504C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE3B530C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Broker::fetch_core(&v5, *(*(*(a1 + 8) + 8) + 16), *(*(a1 + 8) + 32));
  if (v5)
  {
    v3 = 0x676C6F626F776E72;
    v4 = 0;
    v1 = AMCP::Core::Core::call_operation_function<unsigned int>(v5, &v3);
  }

  else
  {
    v1 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v1;
}

void sub_1DE3B53E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_7>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B538;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINSt3__16vectorINS3_5tupleIJN2CA14ValueRangeListENS6_17StreamDescriptionEEEENS3_9allocatorIS9_EEEEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(&v3, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a2, v3, v4, (v4 - v3) >> 6);
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>::dispatch;
  v5 = &v3;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1DE3B5558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597EF58;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597EF58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597EF58;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>())
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
      std::__function::__value_func<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  AMCP::Core::Broker::fetch_core(&v12, *(*(*(a1 + 8) + 8) + 16), *(*(a1 + 8) + 32));
  if (v12)
  {
    v10 = 0x676C6F62666D7423;
    v11 = 0;
    operation = AMCP::Core::Core::find_operation(&v24, v12, &v10);
    if (!v24)
    {
      v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v5 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
        *buf = 136315394;
        v27 = "Core.h";
        v28 = 1024;
        v29 = 202;
        _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v15, "Operation does not have requested function", v9);
      std::runtime_error::runtime_error(&v16, &v15);
      std::runtime_error::runtime_error(&v17, &v16);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = -1;
      v17.__vftable = &unk_1F5992170;
      v18 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
      v30 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::vector<std::tuple<CA::ValueRangeList, CA::StreamDescription>>, Argument_Types = <>]";
      v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
      v32 = 202;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
    }

    AMCP::Core::Operation::call_function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(a2, v24);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v4 = v13;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE3B5C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v28)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 145));
  v31 = *(v29 - 136);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_6>,std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B4B8;
  a2[1] = v2;
  return result;
}

void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE3B5F10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN2CA17StreamDescriptionEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AMCP::Core::Operation::call_function<CA::StreamDescription>(&v3, (a1 + 8));
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
  operator new();
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597F068;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597F068;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::StreamDescription>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597F068;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<CA::StreamDescription ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<CA::StreamDescription ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<CA::StreamDescription ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<CA::StreamDescription ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<CA::StreamDescription ()(void)>>())
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
      std::__function::__value_func<CA::StreamDescription ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<CA::StreamDescription ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<CA::StreamDescription ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<CA::StreamDescription ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIN2CA17StreamDescriptionEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::operator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 40);
  return result;
}

__n128 std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::StreamDescription>(AMCP::Address const&,CA::StreamDescription const&)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596B438;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4>,int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4>,int ()(void)>::operator()(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  AMCP::Core::Broker::fetch_core(&v10, *(*(*(a1 + 8) + 8) + 16), *(*(a1 + 8) + 32));
  if (v10)
  {
    v8 = 0x676C6F62736C7463;
    v9 = 0;
    AMCP::Core::Core::find_operation(&v22, v10, &v8);
    if (!v22)
    {
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
        *buf = 136315394;
        v25 = "Core.h";
        v26 = 1024;
        v27 = 202;
        _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v13, "Operation does not have requested function", v7);
      std::runtime_error::runtime_error(&v14, &v13);
      std::runtime_error::runtime_error(&v15, &v14);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = -1;
      v15.__vftable = &unk_1F5992170;
      v16 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v15);
      v28 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = int, Argument_Types = <>]";
      v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
      v30 = 202;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
    }

    v1 = AMCP::Core::Operation::call_function<int>(v22);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  else
  {
    v1 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v1;
}

void sub_1DE3B6878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v28)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 145));
  v31 = *(v29 - 136);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_4>,int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B3B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Broker::fetch_core(&v5, *(*(*(a1 + 8) + 8) + 16), *(*(a1 + 8) + 32));
  if (v5)
  {
    v3 = 0x676C6F627465726DLL;
    v4 = 0;
    v1 = AMCP::Core::Core::call_operation_function<unsigned int>(v5, &v3);
  }

  else
  {
    v1 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v1;
}

void sub_1DE3B6A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_3>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B338;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_2>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_2>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B2B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1>,unsigned int ()(void)>::operator()(uint64_t a1)
{
  AMCP::Core::Broker::fetch_core(&v5, *(*(*(a1 + 8) + 8) + 16), *(*(a1 + 8) + 32));
  if (v5)
  {
    v3 = 0x676C6F6274617073;
    v4 = 0;
    v1 = AMCP::Core::Core::call_operation_function<unsigned int>(v5, &v3);
  }

  else
  {
    v1 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v1;
}

void sub_1DE3B6CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_1>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B238;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINS_9DirectionEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = AMCP::Core::Operation::call_function<AMCP::Direction>((a1 + 8));
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = v3;
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598CA18;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CA18;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Direction>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CA18;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Direction ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Direction ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Direction ()(void)>>())
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
      std::__function::__value_func<AMCP::Direction ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<AMCP::Direction ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Direction ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Direction ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_0>,AMCP::Direction ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Stream18update_core_commonERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::Meta::Stream::update_core_common(AMCP::Core::Operation_Set &)::$_0>,AMCP::Direction ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596B1B8;
  a2[1] = v2;
  return result;
}

void AMCP::Meta::Stream::Stream(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = &unk_1F596B180;
  *(a1 + 24) = 0;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 36) = a6;
  *(a1 + 40) = a7;
  v8 = AMCP::Core::Broker::reserve_id(*(a2 + 16));
  *(a1 + 24) = v8;
  *__p = 0u;
  *v12 = 0u;
  v13 = 1065353216;
  v9 = 0x676C6F6269646E74;
  LODWORD(v10) = 0;
  LODWORD(v15) = v8;
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>(&v14, &v9, &v15);
}

void sub_1DE3B7584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v6 - 48));
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va);
  *v5 = &unk_1F59748E8;
  v8 = v5[2];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  _Unwind_Resume(a1);
}

void AMCP::Meta::Stream::update_core(AMCP::Meta::Stream *this)
{
  AMCP::Core::Broker::fetch_core(&v5, *(*(this + 1) + 16), *(this + 6));
  if (v5)
  {
    *__p = 0u;
    *v3 = 0u;
    v4 = 1065353216;
    AMCP::Meta::Stream::update_core_common(this, __p);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1DE3B774C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_1DE3B79D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    HALS_ClockDeviceState::sStandardDevicePropertiesToCapture = 0;
    __cxa_end_catch();
    JUMPOUT(0x1DE3B78FCLL);
  }

  _Unwind_Resume(a1);
}

void HALS_ClockDeviceState::HALS_ClockDeviceState(HALS_ClockDeviceState *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = this + 16;
  pthread_once(&HALS_ClockDeviceState::sPropertiesToCaptureInitialized, HALS_ClockDeviceState::InitializeStandardPropertiesToCapture);
}

void HALS_ClockDeviceState::Capture(HALS_ClockDeviceState *this, HALS_ClockDevice *a2, const CAPropertyAddressList *a3)
{
  v74[2] = *MEMORY[0x1E69E9840];
  *this = *(a2 + 4);
  v6 = (this + 16);
  std::__tree<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::__map_value_compare<HALS_DeviceState::Key,std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>,std::less<HALS_DeviceState::Key>,true>,std::allocator<std::__value_type<HALS_DeviceState::Key,HALS_DeviceState::Value>>>::destroy(*(this + 2));
  *(this + 1) = v6;
  *(this + 3) = 0;
  *v6 = 0;
  v9 = *a3;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 2);
  if (!v10)
  {
    return;
  }

  v11 = 0;
  do
  {
    v55 = 0;
    v54 = 0;
    if (v10 > v11)
    {
      v12 = v9 + 12 * v11;
      v13 = *(v12 + 8);
      v54 = *v12;
      v55 = v13;
      v14 = v54 == 707406378 || HIDWORD(v54) == 707406378;
      if (v14 || v13 == -1)
      {
        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
          v66 = "HALS_ClockDeviceState.cpp";
          LOWORD(v67) = 1024;
          *(&v67 + 2) = 60;
          _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_ClockDeviceState::Capture: properties with a wildcard are not supported", buf, 0x12u);
        }
      }
    }

    PropertyQualifierDataType = HALB_Info::GetPropertyQualifierDataType(v54, 0, v8);
    if (PropertyQualifierDataType)
    {
      v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v21 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(PropertyQualifierDataType);
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
        v66 = "HALS_ClockDeviceState.cpp";
        LOWORD(v67) = 1024;
        *(&v67 + 2) = 61;
        _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_ClockDeviceState::Capture: properties with a qualifier are not supported", buf, 0x12u);
      }
    }

    IsAVTProperty = HALB_Info::IsAVTProperty(v54);
    if (IsAVTProperty)
    {
      v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v27 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(IsAVTProperty);
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
        v66 = "HALS_ClockDeviceState.cpp";
        LOWORD(v67) = 1024;
        *(&v67 + 2) = 62;
        _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_ClockDeviceState::Capture: properties that use an AVT are not supported", buf, 0x12u);
      }
    }

    memset(v52, 0, 80);
    v52[10] = &unk_1F5991080;
    cf = 0;
    PropertyDataType = HALB_Info::GetPropertyDataType(v54, 0, v26);
    v51 = PropertyDataType;
    if (PropertyDataType <= 1718367025)
    {
      if (PropertyDataType == 1634951780)
      {
        if (!(*(*a2 + 96))(a2, *(a2 + 4), &v54, 0))
        {
          goto LABEL_85;
        }

        v36 = *(a2 + 4);
        v62 = 0;
        (*(*a2 + 120))(a2, v36, &v54, 40, &v62, &v52[5], 0, 0, 0);
        goto LABEL_65;
      }

      if (PropertyDataType != 1667658612 && PropertyDataType != 1668641388)
      {
        goto LABEL_54;
      }

LABEL_49:
      if (!(*(*a2 + 96))(a2, *(a2 + 4), &v54, 0))
      {
        goto LABEL_85;
      }

      v34 = *(a2 + 4);
      v64 = 0;
      v63 = 0;
      (*(*a2 + 120))(a2, v34, &v54, 8, &v63, &v64, 0, 0, 0);
      v35 = cf;
      cf = v64;
      if (v35)
      {
        CFRelease(v35);
      }

      goto LABEL_65;
    }

    if (PropertyDataType > 1886155635)
    {
      if (PropertyDataType == 1886155636)
      {
        goto LABEL_49;
      }

      if (PropertyDataType != 1969828658)
      {
        goto LABEL_54;
      }

      if (!(*(*a2 + 96))(a2, *(a2 + 4), &v54, 0))
      {
        goto LABEL_85;
      }

      v33 = *(a2 + 4);
      v56 = 0;
      v57 = 0;
      (*(*a2 + 120))(a2, v33, &v54, 4, &v56, &v57, 0, 0, 0);
      LODWORD(v52[3]) = v57;
    }

    else
    {
      if (PropertyDataType == 1718367026)
      {
        if (!(*(*a2 + 96))(a2, *(a2 + 4), &v54, 0))
        {
          goto LABEL_85;
        }

        v40 = *(a2 + 4);
        v58 = 0;
        v59 = 0;
        (*(*a2 + 120))(a2, v40, &v54, 4, &v58, &v59, 0, 0, 0);
        HIDWORD(v52[3]) = v59;
        goto LABEL_65;
      }

      if (PropertyDataType != 1718367796)
      {
LABEL_54:
        if (!(*(*a2 + 96))(a2, *(a2 + 4), &v54, 0))
        {
          goto LABEL_85;
        }

        v51 = 1918990199;
        v37 = (*(*a2 + 112))(a2, *(a2 + 4), &v54, 0, 0, 0);
        v38 = v37;
        *buf = v37;
        v39 = v52[0];
        if (v37 <= (v52[1] - v52[0]))
        {
          if (v37 < (v52[1] - v52[0]))
          {
            v52[1] = &v52[0][v37];
          }
        }

        else
        {
          std::vector<unsigned char>::__append(v52, v37 - (v52[1] - v52[0]));
          v38 = *buf;
          v39 = v52[0];
        }

        (*(*a2 + 120))(a2, *(a2 + 4), &v54, v38, buf, v39, 0, 0, 0);
        if (*buf <= (v52[1] - v52[0]))
        {
          if (*buf < (v52[1] - v52[0]))
          {
            v52[1] = &v52[0][*buf];
          }
        }

        else
        {
          std::vector<unsigned char>::__append(v52, *buf - (v52[1] - v52[0]));
        }

        goto LABEL_65;
      }

      if (!(*(*a2 + 96))(a2, *(a2 + 4), &v54, 0))
      {
        goto LABEL_85;
      }

      v32 = *(a2 + 4);
      v61 = 0;
      v60 = 0;
      (*(*a2 + 120))(a2, v32, &v54, 8, &v60, &v61, 0, 0, 0);
      v52[4] = v61;
    }

LABEL_65:
    v41 = *(a2 + 4);
    v66 = v54;
    v67 = __PAIR64__(v51, v55);
    *buf = v41;
    v69 = 0;
    v68 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v68, v52[0], v52[1], v52[1] - v52[0]);
    v70 = *&v52[3];
    v71 = *&v52[5];
    v72 = *&v52[7];
    v73 = v52[9];
    OS::CF::UntypedObject::UntypedObject(v74, cf);
    v42 = *v6;
    if (!*v6)
    {
LABEL_83:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v43 = v42;
        v44 = *(v42 + 8);
        if (*buf >= v44)
        {
          break;
        }

LABEL_67:
        v42 = *v43;
        if (!*v43)
        {
          goto LABEL_83;
        }
      }

      if (*buf != v44)
      {
        v50 = v44 >= *buf;
        goto LABEL_81;
      }

      v45 = *(v43 + 10);
      v46 = HIDWORD(v66) >= v45;
      if (HIDWORD(v66) == v45)
      {
        v47 = *(v43 + 9);
        v46 = v66 >= v47;
        if (v66 == v47)
        {
          v46 = v67 >= *(v43 + 11);
        }
      }

      if (!v46)
      {
        goto LABEL_67;
      }

      if (v44 >= *buf)
      {
        break;
      }

LABEL_82:
      v42 = v43[1];
      if (!v42)
      {
        goto LABEL_83;
      }
    }

    if (*buf != v44)
    {
      goto LABEL_84;
    }

    v48 = *(v43 + 10);
    v50 = v48 >= HIDWORD(v66);
    if (v48 == HIDWORD(v66))
    {
      v49 = *(v43 + 9);
      v50 = v49 >= v66;
      if (v49 == v66)
      {
        v50 = *(v43 + 11) >= v67;
      }
    }

LABEL_81:
    if (!v50)
    {
      goto LABEL_82;
    }

LABEL_84:
    HALS_DeviceState::Value::~Value((&v67 + 4));
LABEL_85:
    HALS_DeviceState::Value::~Value(&v51);
    ++v11;
    v9 = *a3;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 2);
  }

  while (v11 < v10);
}

void sub_1DE3B84B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE3B84C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  HALS_DeviceState::Value::~Value(va);
  _Unwind_Resume(a1);
}

void HALS_ClockDeviceState::Compare(HALS_ClockDeviceState *this, const HALS_ClockDeviceState *a2, AudioObjectPropertyAddress *a3, CAPropertyAddressList *a4)
{
  v4 = *(this + 1);
  v5 = (this + 16);
  if (v4 != (this + 16))
  {
    v6 = a3;
    v8 = (a2 + 16);
    while (1)
    {
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_42;
      }

      v10 = v8;
      do
      {
        v11 = operator<((v9 + 32), &v4[2].mElement);
        if (v11)
        {
          v12 = 8;
        }

        else
        {
          v12 = 0;
        }

        if (!v11)
        {
          v10 = v9;
        }

        v9 = *(v9 + v12);
      }

      while (v9);
      if (v10 == v8 || operator<(&v4[2].mElement, v10 + 8) || (mSelector = v4[4].mSelector, mSelector != *(v10 + 12)))
      {
LABEL_42:
        if (v4[2].mElement == *this)
        {
          CAPropertyAddressList::AppendUniqueItem(v6, v4 + 3, a3);
        }

        goto LABEL_44;
      }

      if (mSelector > 1718367025)
      {
        break;
      }

      if (mSelector != 1634951780)
      {
        if (mSelector == 1667658612 || mSelector == 1668641388)
        {
LABEL_28:
          if (!CFEqual(*&v4[12].mSelector, v10[18]))
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        }

LABEL_38:
        v14 = *&v4[4].mElement;
        a3 = (*&v4[5].mScope - v14);
        v15 = v10[7];
        if (a3 != (v10[8] - v15) || memcmp(v14, v15, a3))
        {
          goto LABEL_42;
        }

        goto LABEL_44;
      }

      if (*&v4[8].mSelector != *(v10 + 12) || v4[8].mElement != *(v10 + 26) || v4[9].mScope != *(v10 + 28) || v4[9].mElement != *(v10 + 29) || v4[10].mScope != *(v10 + 31) || v4[10].mElement != *(v10 + 32) || !CA::Implementation::EquivalentFormatFlags(&v4[8], (v10 + 12), 1))
      {
        goto LABEL_42;
      }

LABEL_44:
      v16 = *&v4->mElement;
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *&v16->mSelector;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = *&v4[1].mScope;
          v18 = *v17 == v4;
          v4 = v17;
        }

        while (!v18);
      }

      v4 = v17;
      if (v17 == v5)
      {
        return;
      }
    }

    if (mSelector > 1886155635)
    {
      if (mSelector == 1886155636)
      {
        goto LABEL_28;
      }

      if (mSelector == 1969828658)
      {
        if (v4[6].mElement != *(v10 + 20))
        {
          goto LABEL_42;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (mSelector == 1718367026)
      {
        if (*&v4[7].mSelector != *(v10 + 21))
        {
          goto LABEL_42;
        }

        goto LABEL_44;
      }

      if (mSelector == 1718367796)
      {
        if (*&v4[7].mScope != *(v10 + 11))
        {
          goto LABEL_42;
        }

        goto LABEL_44;
      }
    }

    goto LABEL_38;
  }
}

void HALS_Tap::HandleGroupObjectPropertiesChanged(HALS_Object *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN8HALS_Tap34HandleGroupObjectPropertiesChangedEjjjPKjS1_jPK26AudioObjectPropertyAddressbRKNSt3__16vectorIjNS5_9allocatorIjEEEEN10applesauce8dispatch2v15groupE_block_invoke;
  v4[3] = &unk_1E8673FA0;
  v4[4] = &v5;
  v4[5] = a1;
  v2 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v2, v4);
  if (*(v6 + 24) == 1)
  {
    v3 = *(a1 + 4);
    *&v9.mSelector = 0x676C6F6274666D74;
    v9.mElement = 0;
    HALS_Object::PropertiesChanged(a1, v3, 0, 1, &v9);
  }

  _Block_object_dispose(&v5, 8);
}

void sub_1DE3B8870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8HALS_Tap34HandleGroupObjectPropertiesChangedEjjjPKjS1_jPK26AudioObjectPropertyAddressbRKNSt3__16vectorIjNS5_9allocatorIjEEEEN10applesauce8dispatch2v15groupE_block_invoke(uint64_t a1, unsigned int a2)
{
  result = HALS_Tap::_UpdateTapFormatFromDeviceFormat(*(a1 + 40), a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_Tap::_UpdateTapFormatFromDeviceFormat(HALS_Tap *this, unsigned int a2)
{
  v2 = *(this + 31);
  if (v2)
  {
    v4 = HALS_ObjectMap::CopyObjectByObjectID(*v2);
    v6 = v4;
    if (v4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      HALS_Device::CopyStreamList(v4, 0, &v15);
      if (v16 != v15)
      {
        v8 = *(*(this + 31) + 4);
        if (v8 < v16 - v15)
        {
          HALS_Stream::GetCurrentVirtualFormat(v15[v8], &v14);
          v9 = *(this + 33);
          v13 = v14;
          HALS_MultiTap::set_format(v9, &v13, 0x100000002);
          HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(&v15, v10);
          v11 = 1;
LABEL_9:
          HALS_ObjectMap::ReleaseObject(v6, v5);
          return v11;
        }
      }

      HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(&v15, v7);
    }

    v11 = 0;
    goto LABEL_9;
  }

  return 0;
}

void sub_1DE3B8990(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser((v3 - 40), a2);
  HALS_ObjectMap::ReleaseObject(v2, v5);
  _Unwind_Resume(a1);
}

void HALS_Tap::SetPropertyData(const void **this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, CFTypeRef *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v114 = *MEMORY[0x1E69E9840];
  if (((*(*this + 13))(this, a2, a3, a8, a5, a6, a7) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  if (a3->mSelector == 1952740195)
  {
    if (a8)
    {
      v21 = a8 + 271;
      if (*(a8 + 272) == 1)
      {
        if ((*v21 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Client.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1009;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Client is not granted access to the audio taps.", buf, 0x12u);
          }

          v22 = __cxa_allocate_exception(0x10uLL);
          *v22 = off_1F5991DD8;
          v22[2] = 560492391;
        }
      }

      else
      {
        *v21 = 257;
      }
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Tap.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 219;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Tap::SetPropertyData: bad property data size for kAudioTapPropertyDescription", buf, 0x12u);
      }

      v58 = __cxa_allocate_exception(0x10uLL);
      *v58 = off_1F5991DD8;
      v58[2] = 561211770;
    }

    applesauce::CF::DictionaryRef::from_get(&cf, *a5);
    __p = 0;
    v82 = 0;
    v83 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, this[28], this[29], (this[29] - this[28]) >> 2);
    v25 = *(this + 256);
    v77 = 0;
    v78 = &v77;
    v79 = 0x2000000000;
    v80 = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x2000000000;
    v76 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2000000000;
    v72 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x2000000000;
    v68 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZN8HALS_Tap14SetDescriptionERKN10applesauce2CF13DictionaryRefE_block_invoke;
    v107 = &unk_1E8673F58;
    v112 = this;
    p_cf = &cf;
    v108 = &v77;
    v109 = &v69;
    v110 = &v65;
    v111 = &v73;
    v26 = (*(*this + 8))(this);
    HALB_CommandGate::ExecuteCommand(v26, buf);
    HALS_Tap::UpdateFilteredProcesses(this);
    if (*(v78 + 24) == 1)
    {
      HALS_Tap::UpdateReadingContexts(this, &__p);
    }

    else if ((v25 & 1) != 0 || *(this + 256) != 1)
    {
      v34 = this[33];
      v33 = this[34];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v34[488] == 1)
      {
        std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100]((v34 + 456));
        v34[488] = 0;
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (*(this + 256) == 1)
      {
        v96 = 0;
        v97 = 0;
        v98 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v96, __p, v82, (v82 - __p) >> 2);
        v93 = 0;
        v94 = 0;
        v95 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v93, this[28], this[29], (this[29] - this[28]) >> 2);
        v35 = v96;
        v36 = v97;
        v61 = v96;
        std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
        v37 = v93;
        v38 = v94;
        std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v84 = v35;
        v60 = v37;
        v99[0] = v36;
        v102 = v38;
        v103 = v37;
        v59 = v38;
        v87 = &v90;
        v88 = 0;
        std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::insert_iterator<std::vector<unsigned int>> &>(&v104, &v84, v99, &v103, &v102, &v87);
        v88 = 0;
        v89 = 0;
        v87 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v87, v90, v91, (v91 - v90) >> 2);
        v39 = v88;
        v62 = v87;
        if (v87 != v88)
        {
          v40 = v87;
          do
          {
            v41 = HALS_ObjectMap::CopyObjectByObjectID(*v40);
            v43 = v41;
            if (v41)
            {
              HALS_Client::RemoveMuter(v41, *(this + 4));
              (*(*v43 + 208))(&v104, v43);
              v44 = *(&v104 + 1);
              v45 = v104;
              if (v104 != *(&v104 + 1))
              {
                do
                {
                  v46 = HALS_ObjectMap::CopyObjectByObjectID(*v45);
                  v48 = v46;
                  if (v46)
                  {
                    v49 = this[33];
                    v50 = this[34];
                    if (v50)
                    {
                      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    HALS_IOContext::RemoveTap(*(v46 + 104), v49, v50);
                    if (v50)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
                    }
                  }

                  HALS_ObjectMap::ReleaseObject(v48, v47);
                  ++v45;
                }

                while (v45 != v44);
                v45 = v104;
              }

              if (v45)
              {
                *(&v104 + 1) = v45;
                operator delete(v45);
              }
            }

            HALS_ObjectMap::ReleaseObject(v43, v42);
            v40 = (v40 + 4);
          }

          while (v40 != v39);
        }

        if (v62)
        {
          v88 = v62;
          operator delete(v62);
        }

        v84 = 0;
        v85 = 0;
        v86 = 0;
        v102 = v59;
        v103 = v60;
        v101 = v61;
        v99[1] = 0;
        v100 = v36;
        v99[0] = &v84;
        std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::insert_iterator<std::vector<unsigned int>> &>(&v104, &v103, &v102, &v101, &v100, v99);
        v105 = 0;
        v104 = 0uLL;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v104, v84, v85, (v85 - v84) >> 2);
        v51 = v104;
        HALS_Tap::AddTapToClients(this, v104, *(&v104 + 1));
        if (v51)
        {
          *(&v104 + 1) = v51;
          operator delete(v51);
        }

        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        if (v90)
        {
          v91 = v90;
          operator delete(v90);
        }

        if (v60)
        {
          operator delete(v60);
        }

        if (v61)
        {
          operator delete(v61);
        }
      }

      else
      {
        v52 = v82;
        if (__p != v82)
        {
          v53 = __p;
          do
          {
            HALS_Tap::SetClientMuteState(this, *v53++, 0);
          }

          while (v53 != v52);
        }

        v96 = 0;
        v97 = 0;
        HALS_System::GetInstance(&v104, 0, &v96);
        v54 = v104;
        v55 = this[34];
        v93 = this[33];
        v94 = v55;
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HALS_System::RemoveTapFromAllContexts(v54, &v93);
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        if (*(&v104 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v104 + 1));
        }
      }
    }

    else
    {
      HALS_Tap::AddTapToAllContexts(this);
    }

    v27 = *(this + 4);
    *&v104 = 0x676C6F6274647363;
    DWORD2(v104) = 0;
    HALS_Object::PropertiesChanged(this, v27, 0, 1, &v104);
    if (*(v66 + 24) == 1)
    {
      v28 = *(this + 4);
      *&v104 = 0x676C6F6274707323;
      DWORD2(v104) = 0;
      HALS_Object::PropertiesChanged(this, v28, 0, 1, &v104);
    }

    if (*(v70 + 24) == 1)
    {
      v29 = *(this + 4);
      *&v104 = 0x676C6F6274666D74;
      DWORD2(v104) = 0;
      HALS_Object::PropertiesChanged(this, v29, 0, 1, &v104);
    }

    if (*(v74 + 24) == 1)
    {
      v30 = *(this + 4);
      *&v104 = 0x676C6F626C6E616DLL;
      DWORD2(v104) = 0;
      HALS_Object::PropertiesChanged(this, v30, 0, 1, &v104);
    }

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v73, 8);
    _Block_object_dispose(&v77, 8);
    if (__p)
    {
      operator delete(__p);
    }

    v31 = *(this + 4);
    if (a8)
    {
      v32 = *(a8 + 4);
    }

    else
    {
      v32 = 0;
    }

    strcpy(buf, "csdtbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    HALS_Object::PropertiesChanged(this, v31, v32, 1, buf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    if (a3->mSelector != 1819173229)
    {
      HALS_Object::SetPropertyData(this, a2, a3, v14, v15, v16, v17, a8);
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Tap.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 197;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Tap::SetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
      }

      v57 = __cxa_allocate_exception(0x10uLL);
      *v57 = off_1F5991DD8;
      v57[2] = 561211770;
    }

    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 0x40000000;
    v64[2] = ___ZN8HALS_Tap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
    v64[3] = &__block_descriptor_tmp_3_4486;
    v64[4] = this;
    v64[5] = a5;
    v18 = (*(*this + 8))(this);
    HALB_CommandGate::ExecuteCommand(v18, v64);
    v19 = *(this + 4);
    if (a8)
    {
      v20 = *(a8 + 4);
    }

    else
    {
      v20 = 0;
    }

    strcpy(buf, "csdtbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    HALS_Object::PropertiesChanged(this, v19, v20, 1, buf);
    v23 = *(this + 4);
    if (a8)
    {
      v24 = *(a8 + 4);
    }

    else
    {
      v24 = 0;
    }

    strcpy(buf, "manlbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    HALS_Object::PropertiesChanged(this, v23, v24, 1, buf);
  }
}

void sub_1DE3B93E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (v53)
  {
    *(v54 - 224) = v53;
    operator delete(v53);
  }

  if (__p)
  {
    a42 = __p;
    operator delete(__p);
  }

  if (a47)
  {
    a48 = a47;
    operator delete(a47);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  if (a9)
  {
    a39 = a9;
    operator delete(a9);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a15);
  _Unwind_Resume(a1);
}

void ___ZN8HALS_Tap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PropertyListDeepImmutableCopy(**(a1 + 40));
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v5 = *(v1 + 56);
  *(v1 + 56) = v3;
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1DE3B9640(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3B95F0);
}

void ___ZN8HALS_Tap14SetDescriptionERKN10applesauce2CF13DictionaryRefE_block_invoke(void *a1)
{
  v2 = a1[8];
  *(v2 + 256) = 0;
  HALS_Tap::GetName(&v8, *(v2 + 56));
  v3 = a1[9];
  v4 = *v3;
  if (*v3)
  {
    CFRetain(*v3);
  }

  v7 = v4;
  *(*(a1[4] + 8) + 24) = HALS_Tap::_UpdateFromDescription(v2, &v7, (*(a1[5] + 8) + 24), (*(a1[6] + 8) + 24));
  if (v4)
  {
    CFRelease(v4);
  }

  *(v2 + 256) = 1;
  HALS_Tap::GetName(&cf, *(v2 + 56));
  v5 = v8;
  *(*(a1[7] + 8) + 24) = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v8, &cf) != kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1DE3B9770(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3B974CLL);
}

void HALS_Tap::UpdateFilteredProcesses(HALS_Tap *this)
{
  if (*(this + 89) == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    HALS_System::GetInstance(&v11, 0, v10);
    HALS_System::GetProcessObjectList(&v13, v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1174405120;
    v6[2] = ___ZN8HALS_Tap23UpdateFilteredProcessesEv_block_invoke;
    v6[3] = &__block_descriptor_tmp_25_4491;
    v6[4] = this;
    __p = 0;
    v8 = 0;
    v9 = 0;
    v2 = v13;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v13, v14, (v14 - v13) >> 2);
    v3 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v3, v6);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }

    if (v2)
    {
      operator delete(v2);
    }
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZN8HALS_Tap23UpdateFilteredProcessesEv_block_invoke_26;
    v5[3] = &__block_descriptor_tmp_27_4492;
    v5[4] = this;
    v4 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v4, v5);
  }
}

void sub_1DE3B9920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Tap::UpdateReadingContexts(HALS_Tap *this, unsigned int **a2)
{
  v5 = *(this + 33);
  v4 = *(this + 34);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v5 + 488) == 1)
  {
    std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](v5 + 456);
    *(v5 + 488) = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v7 = *a2;
  v6 = a2[1];
  while (v7 != v6)
  {
    v8 = *v7++;
    HALS_Tap::SetClientMuteState(this, v8, 0);
  }

  v9 = HALS_MetaManager::sInstance;
  HALS_Tap::GetUID(&cf, *(this + 8));
  v36 = 0;
  v37 = 0;
  v38 = 0;
  HALS_DeviceManager::CopyRawDeviceList(v9, &v36);
  v11 = v36;
  v12 = cf;
  v33 = v37;
  if (v36 != v37)
  {
    v32 = &v54;
    v30 = v40;
    v31 = v49;
    while (1)
    {
      v13 = *v11;
      if (v12)
      {
        CFRetain(v12);
        v35 = v12;
        CFRetain(v12);
        v14 = v12;
      }

      else
      {
        v14 = 0;
        v35 = 0;
      }

      v40[4] = v12;
      v50 = 0;
      v51 = &v50;
      v52 = 0x3802000000;
      v53 = __Block_byref_object_copy__134;
      v54 = __Block_byref_object_dispose__135;
      v55[0] = &unk_1F59910D0;
      v55[1] = 0;
      v47 = MEMORY[0x1E69E9820];
      v48 = 0x40000000;
      v49[0] = ___ZN15HALS_MetaDevice6HasTapEN10applesauce2CF9StringRefE_block_invoke;
      v49[1] = &unk_1E8675068;
      v49[2] = &v50;
      v49[3] = v13;
      v15 = (*(*v13 + 64))(v13);
      HALB_CommandGate::ExecuteCommand(v15, &v47);
      v16 = v51[6];
      if (v16)
      {
        break;
      }

LABEL_40:
      v26 = 0;
LABEL_42:
      _Block_object_dispose(&v50, 8);
      OS::CF::UntypedObject::~UntypedObject(v55);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v26)
      {
        v50 = 0;
        v51 = &v50;
        v52 = 0x2000000000;
        v53 = 0;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 0x40000000;
        v40[0] = ___ZN15HALS_MetaDevice16UpdateTapReadersEN10applesauce2CF9StringRefE_block_invoke;
        v40[1] = &unk_1E86750B8;
        v40[2] = &v50;
        v40[3] = v13;
        v27 = (*(*v13 + 64))(v13);
        HALB_CommandGate::ExecuteCommand(v27, v39);
        v28 = v13[4];
        v47 = 0x676C6F6261636F6DLL;
        LODWORD(v48) = 0;
        (*(*v13 + 128))(v13, v28, &v47, 8, v51 + 3, 0, 0, 0, v30, v31, v32);
        _Block_object_dispose(&v50, 8);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (++v11 == v33)
      {
        goto LABEL_49;
      }
    }

    v17 = 0;
    while (1)
    {
      if (OS::CF::ArrayBase<__CFArray const*>::GetSize(v16) <= v17)
      {
        goto LABEL_40;
      }

      v18 = v17;
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v45, (v51 + 5), v17);
      if (theDict)
      {
        break;
      }

LABEL_39:
      OS::CF::UntypedObject::~UntypedObject(v45);
      v17 = v18 + 1;
      v16 = v51[6];
    }

    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v44, theDict, @"uid");
    OS::CF::String::AsStdString(&v43, v44);
    if (!v12)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, v12);
    v19 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v43.__r_.__value_.__l.__size_;
    }

    v21 = v42;
    v22 = v42;
    if ((v42 & 0x80u) != 0)
    {
      v21 = __p[1];
    }

    if (size == v21)
    {
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v43;
      }

      else
      {
        v23 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v42 & 0x80u) == 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      v25 = memcmp(v23, v24, size) == 0;
      if ((v22 & 0x80000000) == 0)
      {
LABEL_36:
        if (v19 < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        OS::CF::UntypedObject::~UntypedObject(v44);
        if (v25)
        {
          OS::CF::UntypedObject::~UntypedObject(v45);
          v26 = 1;
          goto LABEL_42;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v25 = 0;
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    operator delete(__p[0]);
    v19 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    goto LABEL_36;
  }

LABEL_49:
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v36, v10);
  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_1DE3B9E30(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, OS::CF::UntypedObject *a14, const void *a15, __int16 a16, char a17, char a18, int a19, HALS_ObjectMap **a20, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, char a43)
{
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&a20, a2);
  applesauce::CF::StringRef::~StringRef(&a15);
  _Unwind_Resume(a1);
}

void HALS_Tap::AddTapToAllContexts(HALS_Tap *this)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v3, *(this + 28), *(this + 29), (*(this + 29) - *(this + 28)) >> 2);
  v2 = v3;
  HALS_Tap::AddTapToClients(this, v3, v4);
  if (v2)
  {

    operator delete(v2);
  }
}

void sub_1DE3B9F58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

std::__wrap_iter<unsigned int *>::iterator_type std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::insert_iterator<std::vector<unsigned int>> &>(std::__wrap_iter<unsigned int *>::iterator_type result, std::__wrap_iter<unsigned int *>::iterator_type *a2, std::__wrap_iter<unsigned int *>::iterator_type *a3, const std::vector<unsigned int>::value_type **a4, const std::vector<unsigned int>::value_type **a5, uint64_t a6)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_12:
    v19 = *a6;
    v18.__i_ = *(a6 + 8);
    v9 = v8;
  }

  else
  {
    v12 = *a4;
    if (*a4 != *a5)
    {
      while (*v8 >= *v12)
      {
        v16 = a2;
        v17 = a4;
        if (*v12 >= *v8)
        {
          goto LABEL_6;
        }

LABEL_7:
        *v17 = v12 + 1;
        v8 = *a2;
        v9 = *a3;
        if (*a2 == *a3)
        {
          goto LABEL_12;
        }

        v12 = *a4;
        if (*a4 == *a5)
        {
          goto LABEL_9;
        }
      }

      v15.__i_ = *(a6 + 8);
      result = std::vector<unsigned int>::insert(*a6, v15, v8).__i_;
      v8 = result;
      v16 = (a6 + 8);
      v17 = a2;
LABEL_6:
      *v16 = v8 + 1;
      v12 = *v17;
      goto LABEL_7;
    }

LABEL_9:
    v19 = *a6;
    v18.__i_ = *(a6 + 8);
    while (v8 != v9)
    {
      result = std::vector<unsigned int>::insert(v19, v18, v8).__i_;
      v18.__i_ = result + 1;
      ++v8;
    }
  }

  v7->__i_ = v9;
  v7[1].__i_ = v19;
  v7[2].__i_ = v18.__i_;
  return result;
}

void HALS_Tap::AddTapToClients(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v27[3] = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = HALS_ObjectMap::CopyObjectByObjectID(v6);
      v9 = v7;
      if (v7)
      {
        (*(*v7 + 208))(&__p, v7);
        v10 = __p;
        v11 = v25;
        while (v10 != v11)
        {
          v13 = HALS_ObjectMap::CopyObjectByObjectID(*v10);
          if (v13)
          {
            HALS_Tap::AddTapToContext(a1, v13);
          }

          HALS_ObjectMap::ReleaseObject(v13, v12);
          ++v10;
        }

        if (*(a1 + 96) == 1)
        {
          HALS_Tap::SetClientMuteState(a1, v6, 1);
        }

        if (__p)
        {
          v25 = __p;
          operator delete(__p);
        }
      }

      HALS_ObjectMap::ReleaseObject(v9, v8);
      ++v5;
    }

    while (v5 != a3);
  }

  if (*(a1 + 96) == 2)
  {
    v15 = *(a1 + 264);
    v14 = *(a1 + 272);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(a1 + 16);
    v21 = &unk_1F596B730;
    v22 = v16;
    v23 = &v21;
    v17 = (v15 + 456);
    if (*(v15 + 488) == 1)
    {
      std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::__value_func[abi:ne200100](&__p, &v21);
      if (v17 != &__p)
      {
        v18 = p_p;
        v19 = *(v15 + 480);
        if (p_p == &__p)
        {
          if (v19 == v17)
          {
            (*(*p_p + 3))(p_p, v27);
            (*(*p_p + 4))(p_p);
            p_p = 0;
            (*(**(v15 + 480) + 24))(*(v15 + 480), &__p);
            (*(**(v15 + 480) + 32))(*(v15 + 480));
            *(v15 + 480) = 0;
            p_p = &__p;
            (*(v27[0] + 24))(v27, v15 + 456);
            (*(v27[0] + 32))(v27);
          }

          else
          {
            (*(*p_p + 3))(p_p, v15 + 456);
            (*(*p_p + 4))(p_p);
            p_p = *(v15 + 480);
          }

          *(v15 + 480) = v17;
        }

        else if (v19 == v17)
        {
          (*(*v19 + 3))(*(v15 + 480), &__p);
          (*(**(v15 + 480) + 32))(*(v15 + 480));
          *(v15 + 480) = p_p;
          p_p = &__p;
        }

        else
        {
          p_p = *(v15 + 480);
          *(v15 + 480) = v18;
        }
      }

      std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](&__p);
    }

    else
    {
      std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::__value_func[abi:ne200100](v15 + 456, &v21);
      *(v15 + 488) = 1;
    }

    os_unfair_lock_lock((v15 + 384));
    v20 = *(v15 + 416);
    os_unfair_lock_unlock((v15 + 384));
    if (v20)
    {
      std::function<void ()(HALS_MultiTap::Reader_Action_State)>::operator()(*(v15 + 480), 0);
    }

    std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](&v21);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void sub_1DE3BA498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Tap::SetClientMuteState(HALS_Tap *this, HALS_ObjectMap *a2, int a3)
{
  v5 = HALS_ObjectMap::CopyObjectByObjectID(a2);
  v7 = v5;
  if (v5)
  {
    if (a3)
    {
      v8 = *(this + 31);
      if (v8)
      {
        v8 = (*v8 | 0x100000000);
      }

      v9 = *(this + 4);
      v20 = 0;
      v21 = &v20;
      v22 = 0x2000000000;
      v23 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2000000000;
      v19 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = ___ZN11HALS_Client8AddMuterEN4AMCP9DirectionEjNSt3__18optionalIjEE_block_invoke;
      v12[3] = &unk_1E8673A28;
      v12[5] = &v16;
      v12[6] = v5;
      v13 = 0;
      v14 = v9;
      v12[4] = &v20;
      v15 = v8;
      v10 = (*(*v5 + 64))(v5);
      HALB_CommandGate::ExecuteCommand(v10, v12);
      if ((v21[3] & 1) != 0 || *(v17 + 24) == 1)
      {
        HALS_Client::UpdateMuteStateOnContexts(v7);
        strcpy(&v11, "tmopbolg");
        BYTE1(v11.mElement) = 0;
        HIWORD(v11.mElement) = 0;
        HALS_Object::PropertiesChanged(v7, v7[4], v7[4], 1, &v11);
      }

      _Block_object_dispose(&v16, 8);
      _Block_object_dispose(&v20, 8);
    }

    else
    {
      HALS_Client::RemoveMuter(v5, *(this + 4));
    }
  }

  HALS_ObjectMap::ReleaseObject(v7, v6);
}

void sub_1DE3BA6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 64), 8);
  HALS_ObjectMap::ReleaseObject(v20, v23);
  _Unwind_Resume(a1);
}

void HALS_Tap::AddTapToContext(HALS_Tap *this, HALS_IOContext *a2)
{
  if (a2)
  {
    v4 = *(this + 31);
    if (!v4 || HALS_IOContext::IncludesDevice(a2, *v4))
    {
      v5 = *(this + 33);
      v6 = *(this + 34);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = *(a2 + 13);
        v8 = v5;
        v9 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v7 = *(a2 + 13);
        v8 = v5;
        v9 = 0;
      }

      (*(*v7 + 792))(v7, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }
}

void sub_1DE3BA7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<HALS_Tap::SetMuteAction(void)::$_0,std::allocator<HALS_Tap::SetMuteAction(void)::$_0>,void ()(HALS_MultiTap::Reader_Action_State)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN8HALS_Tap13SetMuteActionEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_Tap::SetMuteAction(void)::$_0,std::allocator<HALS_Tap::SetMuteAction(void)::$_0>,void ()(HALS_MultiTap::Reader_Action_State)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 8));
  v5 = v3;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v10, *(v3 + 224), *(v3 + 232), (*(v3 + 232) - *(v3 + 224)) >> 2);
    v6 = v10;
    v7 = v11;
    if (v2)
    {
      if (v10 != v11)
      {
        v8 = v10;
        do
        {
          HALS_Tap::SetClientMuteState(v5, *v8++, 0);
        }

        while (v8 != v7);
      }
    }

    else if (v10 != v11)
    {
      v9 = v10;
      do
      {
        HALS_Tap::SetClientMuteState(v5, *v9++, 1);
      }

      while (v9 != v7);
    }

    if (v6)
    {
      operator delete(v6);
    }
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
}

uint64_t std::__function::__func<HALS_Tap::SetMuteAction(void)::$_0,std::allocator<HALS_Tap::SetMuteAction(void)::$_0>,void ()(HALS_MultiTap::Reader_Action_State)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F596B730;
  *(a2 + 8) = *(result + 8);
  return result;
}

void ___ZN8HALS_Tap23UpdateFilteredProcessesEv_block_invoke(void *a1)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  if (v1 == v3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    do
    {
      v6 = *v1;
      if (!std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v2 + 104), v6))
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v7, &v6);
      }

      ++v1;
    }

    while (v1 != v3);
    v5 = v7;
    v4 = v8;
  }

  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v2 + 224), v5, v4, (v4 - v5) >> 2);
  if (v5)
  {

    operator delete(v5);
  }
}

void sub_1DE3BAAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8HALS_Tap23UpdateFilteredProcessesEv_block_invoke_26(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 224);
  v2 = (v1 + 224);
  v2->__end_ = v3;
  std::vector<unsigned int>::reserve(v2, v2[-4].__begin_);
  for (i = v2[-5].__end_cap_.__value_; i; i = *i)
  {
    v5 = i[4];
    std::vector<unsigned int>::push_back[abi:ne200100](v2, &v5);
  }
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t *__copy_helper_block_e8_40c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = (a1 + 40);
  v2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
}

BOOL HALS_Tap::_UpdateFromDescription(uint64_t a1, const __CFDictionary **a2, BOOL *a3, BOOL *a4)
{
  v191 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    goto LABEL_255;
  }

  v156 = *(a1 + 90);
  v157 = *(a1 + 88);
  v162 = *(a1 + 91);
  v155 = *(a1 + 96);
  v7 = *(a1 + 264);
  v8 = *(v7 + 24);
  v161 = *(v7 + 32);
  v159 = *(v7 + 52);
  v160 = *(v7 + 48);
  v158 = *(v7 + 56);
  *cf = 0;
  applesauce::CF::at_or<applesauce::CF::StringRef,char const(&)[8]>(v186, v5, "TapName", cf);
  v9 = *(a1 + 56);
  *(a1 + 56) = v186[0];
  if (v9)
  {
    CFRelease(v9);
  }

  if (*cf)
  {
    CFRelease(*cf);
  }

  v10 = *a2;
  if (!*a2)
  {
LABEL_254:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
LABEL_255:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v11 = *MEMORY[0x1E695E4B8];
  *cf = *MEMORY[0x1E695E4B8];
  v12 = applesauce::CF::details::at_key<char const(&)[7]>(v10, "IsMono");
  if (v12)
  {
    v13 = v12;
    CFRetain(v12);
    v14 = CFGetTypeID(v13);
    if (v14 == CFBooleanGetTypeID())
    {
      CFRetain(v13);
      v186[0] = v13;
      CFRelease(v13);
      goto LABEL_12;
    }

    CFRelease(v13);
  }

  v186[0] = v11;
  *cf = 0;
  v13 = v11;
  if (!v11)
  {
    v148 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v148, "Could not construct");
    __cxa_throw(v148, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_12:
  *(a1 + 88) = applesauce::CF::convert_to<BOOL,0>(v13);
  if (v186[0])
  {
    CFRelease(v186[0]);
  }

  if (*cf)
  {
    CFRelease(*cf);
  }

  v15 = *a2;
  if (!*a2)
  {
    goto LABEL_254;
  }

  *cf = v11;
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[12]>(v186, v15, "IsExclusive", cf);
  v16 = v186[0];
  if (!v186[0])
  {
    v135 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v135, "Could not construct");
    __cxa_throw(v135, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *(a1 + 89) = applesauce::CF::convert_to<BOOL,0>(v186[0]);
  CFRelease(v16);
  if (*cf)
  {
    CFRelease(*cf);
  }

  v17 = *a2;
  if (!*a2)
  {
    goto LABEL_254;
  }

  *cf = v11;
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[10]>(v186, v17, "IsMixdown", cf);
  v18 = v186[0];
  if (!v186[0])
  {
    v136 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v136, "Could not construct");
    __cxa_throw(v136, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *(a1 + 90) = applesauce::CF::convert_to<BOOL,0>(v186[0]);
  CFRelease(v18);
  if (*cf)
  {
    CFRelease(*cf);
  }

  v19 = *a2;
  if (!*a2)
  {
    goto LABEL_254;
  }

  *cf = v11;
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[10]>(v186, v19, "IsPrivate", cf);
  v20 = v186[0];
  if (!v186[0])
  {
    v137 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v137, "Could not construct");
    __cxa_throw(v137, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *(a1 + 91) = applesauce::CF::convert_to<BOOL,0>(v186[0]);
  CFRelease(v20);
  if (*cf)
  {
    CFRelease(*cf);
  }

  v21 = *a2;
  if (!*a2)
  {
    goto LABEL_254;
  }

  valuePtr[0] = v11;
  v22 = CFStringCreateWithBytes(0, "ProcessRestoreEnabled", 21, 0x8000100u, 0);
  v186[0] = v22;
  if (!v22)
  {
    v138 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v138, "Could not construct");
    __cxa_throw(v138, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(v21, v22);
  if (v186[0])
  {
    CFRelease(v186[0]);
  }

  if (Value)
  {
    CFRetain(Value);
    v24 = CFGetTypeID(Value);
    if (v24 == CFBooleanGetTypeID())
    {
      CFRetain(Value);
      *cf = Value;
      CFRelease(Value);
      goto LABEL_37;
    }

    CFRelease(Value);
  }

  *cf = v11;
  valuePtr[0] = 0;
  Value = v11;
  if (!v11)
  {
    v149 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v149, "Could not construct");
    __cxa_throw(v149, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_37:
  *(a1 + 92) = applesauce::CF::convert_to<BOOL,0>(Value);
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (valuePtr[0])
  {
    CFRelease(valuePtr[0]);
  }

  if (!*a2)
  {
    v139 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v139);
    __cxa_throw(v139, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr[0]) = 0;
  *cf = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!*cf)
  {
    v140 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v140, "Could not construct");
    __cxa_throw(v140, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,char const(&)[13]>(v186, *a2, "MuteBehavior", cf);
  v25 = v186[0];
  if (!v186[0])
  {
    v141 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v141, "Could not construct");
    __cxa_throw(v141, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v26 = applesauce::CF::convert_to<int,0>(v186[0]);
  CFRelease(v25);
  if (*cf)
  {
    CFRelease(*cf);
  }

  *(a1 + 96) = v26;
  v27 = *a2;
  if (!*a2)
  {
    v142 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v142);
    __cxa_throw(v142, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v28 = CFStringCreateWithBytes(0, "Stream", 6, 0x8000100u, 0);
  v186[0] = v28;
  if (!v28)
  {
    v143 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v143, "Could not construct");
    __cxa_throw(v143, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v29 = CFDictionaryContainsKey(v27, v28);
  if (v186[0])
  {
    CFRelease(v186[0]);
  }

  if (!v29)
  {
    v33 = -1;
    goto LABEL_63;
  }

  if (!*a2)
  {
    v150 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v150);
    __cxa_throw(v150, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr[0]) = -1;
  *cf = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!*cf)
  {
    v151 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v151, "Could not construct");
    __cxa_throw(v151, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v30 = applesauce::CF::details::at_key<char const(&)[7]>(*a2, "Stream");
  if (!v30)
  {
    goto LABEL_58;
  }

  v31 = v30;
  CFRetain(v30);
  v32 = CFGetTypeID(v31);
  if (v32 != CFNumberGetTypeID())
  {
    CFRelease(v31);
LABEL_58:
    v31 = *cf;
    v186[0] = *cf;
    *cf = 0;
    if (!v186[0])
    {
      v154 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v154, "Could not construct");
      __cxa_throw(v154, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_59;
  }

  CFRetain(v31);
  v186[0] = v31;
  CFRelease(v31);
LABEL_59:
  v33 = applesauce::CF::convert_to<int,0>(v31);
  if (v186[0])
  {
    CFRelease(v186[0]);
  }

  if (*cf)
  {
    CFRelease(*cf);
  }

LABEL_63:
  if (!*a2)
  {
    v144 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v144);
    __cxa_throw(v144, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v34 = applesauce::CF::details::at_key<char const(&)[10]>(*a2, "DeviceUID");
  if (!v34)
  {
    goto LABEL_68;
  }

  v38 = v34;
  CFRetain(v34);
  v39 = CFGetTypeID(v38);
  if (v39 != CFStringGetTypeID())
  {
    CFRelease(v38);
LABEL_68:
    v38 = 0;
    v172 = 0;
    goto LABEL_69;
  }

  CFRetain(v38);
  v172 = v38;
  CFRelease(v38);
LABEL_69:
  if ((*(a1 + 90) & 1) == 0)
  {
    v186[0] = 0;
    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v38, v186))
    {
      v171[0] = 0;
      v171[1] = 0;
      HALS_System::GetInstance(cf, 0, v171);
      memset(v186, 0, sizeof(v186));
      LODWORD(v187) = 1065353216;
      v40 = HALS_System::CopyDeviceByUID(*cf, v172, 0, v186);
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v186);
      v44 = *&cf[8];
      if (*&cf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&cf[8]);
      }

      if (!v40)
      {
        v115 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v115 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v44);
        }

        v117 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v116 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v116)
        {
          atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
          v118 = *v117;
          std::__shared_weak_count::__release_shared[abi:ne200100](v116);
        }

        else
        {
          v118 = *v117;
        }

        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v186[0]) = 136315650;
          *(v186 + 4) = "HALS_Tap.cpp";
          WORD2(v186[1]) = 1024;
          *(&v186[1] + 6) = 452;
          WORD1(v186[2]) = 2080;
          *(&v186[2] + 4) = "(device.IsValid()) == false";
          _os_log_error_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Tap device not found.", v186, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v176);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(v179, "Tap device not found.", v127);
        std::runtime_error::runtime_error(__p, v179);
        std::runtime_error::runtime_error(cf, __p);
        *&cf[24] = 0uLL;
        v169 = 0;
        v170 = -1;
        *cf = &unk_1F5992170;
        *&cf[16] = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v186, cf);
        v187 = "BOOL HALS_Tap::_UpdateFromDescription(AMCP::CF::Dictionary, BOOL &, BOOL &)";
        v188 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Tap.cpp";
        LODWORD(v189) = 452;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v184);
      }

      v45 = *(a1 + 248);
      if (!v45)
      {
        operator new();
      }

      v46 = *v45;
      if (v46 == *(v40 + 4))
      {
        v47 = 0;
        v165 = 0;
        if (v45[1] == v33)
        {
LABEL_91:
          HALS_ObjectMap::ReleaseObject(v40, v46);
          goto LABEL_92;
        }
      }

      else
      {
        HALS_Tap::RemoveDeviceSampleRateListener(*(a1 + 16), v46, v41, v42, v43);
        v47 = 1;
      }

      v50 = *(a1 + 248);
      *v50 = *(v40 + 4);
      v50[1] = v33;
      updated = HALS_Tap::_UpdateTapFormatFromDeviceFormat(a1, v46);
      if ((updated & 1) == 0)
      {
        v119 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v119 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(updated);
        }

        v121 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v120 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v120)
        {
          atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
          v122 = *v121;
          std::__shared_weak_count::__release_shared[abi:ne200100](v120);
        }

        else
        {
          v122 = *v121;
        }

        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v186[0]) = 136315650;
          *(v186 + 4) = "HALS_Tap.cpp";
          WORD2(v186[1]) = 1024;
          *(&v186[1] + 6) = 470;
          WORD1(v186[2]) = 2080;
          *(&v186[2] + 4) = "(success) == false";
          _os_log_error_impl(&dword_1DE1F9000, v122, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Stream out of range for tap.", v186, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v176);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(v179, "Stream out of range for tap.", v128);
        std::runtime_error::runtime_error(__p, v179);
        std::runtime_error::runtime_error(cf, __p);
        *&cf[24] = 0uLL;
        v169 = 0;
        v170 = -1;
        *cf = &unk_1F5992170;
        *&cf[16] = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v186, cf);
        v187 = "BOOL HALS_Tap::_UpdateFromDescription(AMCP::CF::Dictionary, BOOL &, BOOL &)";
        v188 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Tap.cpp";
        LODWORD(v189) = 470;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v184);
      }

      if (v47)
      {
        v52 = **(a1 + 248);
        valuePtr[0] = 0x676C6F626E737274;
        LODWORD(valuePtr[1]) = 0;
        v53 = *(a1 + 16);
        *cf = 0;
        *&cf[4] = v53;
        memset(&cf[8], 0, 32);
        LOBYTE(v186[0]) = 0;
        v190 = 0;
        HALS_NotificationManager::AddPropertyListener(cf, v52, valuePtr, v186);
        if (v190 == 1)
        {
          AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v186);
        }

        HALS_Listener::~HALS_Listener(cf);
        HALS_MultiTap::set_device_id(*(a1 + 264), (**(a1 + 248) | 0x100000000));
        *(*(a1 + 264) + 80) = *(*(a1 + 248) + 4);
      }

      v165 = 1;
      goto LABEL_91;
    }
  }

  v48 = *(a1 + 248);
  if (v48)
  {
    HALS_Tap::RemoveDeviceSampleRateListener(*(a1 + 16), *v48, v35, v36, v37);
    v49 = *(a1 + 248);
    *(a1 + 248) = 0;
    if (v49)
    {
      MEMORY[0x1E12C1730](v49, 0x1000C4000313F17);
    }

    HALS_MultiTap::set_device_id(*(a1 + 264), 0);
    v165 = 1;
  }

  else
  {
    v165 = 0;
  }

LABEL_92:
  if (!*a2)
  {
    v145 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v145, "Could not construct");
    __cxa_throw(v145, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v54 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
  v186[0] = v54;
  if (v54)
  {
    v55 = CFGetTypeID(v54);
    if (v55 != CFArrayGetTypeID())
    {
      v152 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v152, "Could not construct");
      __cxa_throw(v152, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  applesauce::CF::at_or<applesauce::CF::ArrayRef,char const(&)[10]>(&v167, *a2, "BundleIDs", v186);
  if (v186[0])
  {
    CFRelease(v186[0]);
  }

  if (!*a2)
  {
    v146 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v146, "Could not construct");
    __cxa_throw(v146, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v56 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
  v186[0] = v56;
  if (v56)
  {
    v57 = CFGetTypeID(v56);
    if (v57 != CFArrayGetTypeID())
    {
      v153 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v153, "Could not construct");
      __cxa_throw(v153, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  applesauce::CF::at_or<applesauce::CF::ArrayRef,char const(&)[10]>(&v166, *a2, "Processes", v186);
  if (v186[0])
  {
    CFRelease(v186[0]);
  }

  v58 = v166;
  if (v166)
  {
    CFRetain(v166);
  }

  v59 = v167;
  if (v167)
  {
    CFRetain(v167);
  }

  memset(cf, 0, 32);
  *&cf[32] = 1065353216;
  *valuePtr = 0u;
  *v182 = 0u;
  LODWORD(v183) = 1065353216;
  memset(v179, 0, sizeof(v179));
  v180 = 1065353216;
  if (v59)
  {
    Count = CFArrayGetCount(v59);
    v61 = CFArrayGetCount(v59);
    if (Count)
    {
      v62 = v61;
      for (i = 0; i != Count; ++i)
      {
        if (v62 == i)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v178, v59, i);
        v64 = v178;
        if (v178)
        {
          v65 = CFGetTypeID(v178);
          if (v65 == CFStringGetTypeID())
          {
            CFRetain(v64);
            v177 = v64;
            v66 = CFGetTypeID(v64);
            if (v66 != CFStringGetTypeID())
            {
              v130 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v130, "Could not construct");
              __cxa_throw(v130, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v175[0] = 0;
            v175[1] = 0;
            HALS_System::GetInstance(&v176, 0, v175);
            if (!v177)
            {
              v131 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v131, "Could not construct");
              __cxa_throw(v131, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v67 = v176.__vftable;
            applesauce::CF::convert_to<std::string,0>(__p, v177);
            v184.__r_.__value_.__r.__words[0] = 0;
            v184.__r_.__value_.__l.__size_ = &v184;
            v184.__r_.__value_.__r.__words[2] = 0x2000000000;
            v185 = 0;
            v186[0] = MEMORY[0x1E69E9820];
            v186[1] = 0x40000000;
            v186[2] = ___ZNK11HALS_System20CopyClientByBundleIDERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
            v186[3] = &unk_1E8675B18;
            v187 = &v184;
            v188 = v67;
            v189 = __p;
            v68 = (*(v67->~logic_error + 8))(v67);
            HALB_CommandGate::ExecuteCommand(v68, v186);
            v69 = *(v184.__r_.__value_.__l.__size_ + 24);
            _Block_object_dispose(&v184, 8);
            if (v174 < 0)
            {
              operator delete(__p[0]);
            }

            if (v176.__imp_.__imp_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v176.__imp_.__imp_);
            }

            if (v69)
            {
              LODWORD(v186[0]) = *(v69 + 4);
              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(cf, v186[0], v186);
              if (!v177)
              {
                v133 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v133, "Could not construct");
                __cxa_throw(v133, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              applesauce::CF::convert_to<std::string,0>(v186, v177);
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(valuePtr, v186, v186);
            }

            else
            {
              if (!v177)
              {
                v147 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v147, "Could not construct");
                __cxa_throw(v147, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              applesauce::CF::convert_to<std::string,0>(v186, v177);
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v179, v186, v186);
            }

            if (SHIBYTE(v186[2]) < 0)
            {
              operator delete(v186[0]);
            }

            HALS_ObjectMap::ReleaseObject(v69, v70);
            if (v177)
            {
              CFRelease(v177);
            }
          }

          CFRelease(v64);
        }
      }
    }
  }

  if (v58)
  {
    v71 = CFArrayGetCount(v58);
    v72 = CFArrayGetCount(v58);
    if (v71)
    {
      v73 = v72;
      for (j = 0; j != v71; ++j)
      {
        if (v73 == j)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v184, v58, j);
        v75 = v184.__r_.__value_.__r.__words[0];
        if (v184.__r_.__value_.__r.__words[0])
        {
          v76 = CFGetTypeID(v184.__r_.__value_.__l.__data_);
          if (v76 == CFNumberGetTypeID())
          {
            applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(__p, &v184.__r_.__value_.__l.__data_);
            if (!__p[0])
            {
              v132 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v132, "Could not construct");
              __cxa_throw(v132, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v77 = applesauce::CF::convert_to<unsigned int,0>(__p[0]);
            v78 = v77;
            LODWORD(v176.__vftable) = v77;
            v79 = HALS_ObjectMap::CopyObjectByObjectID(v77);
            v81 = v79;
            if (v79 && *(v79 + 20) == 1668050548 && !std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(cf, v78))
            {
              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(cf, v78, &v176);
              HALS_Client::GetBundleIDString(v186, v81);
              v82 = HIBYTE(v186[2]);
              v83 = HIBYTE(v186[2]);
              if (SHIBYTE(v186[2]) < 0)
              {
                v82 = v186[1];
              }

              if (v82)
              {
                std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(valuePtr, v186, v186);
                v83 = HIBYTE(v186[2]);
              }

              if (v83 < 0)
              {
                operator delete(v186[0]);
              }
            }

            HALS_ObjectMap::ReleaseObject(v81, v80);
            if (__p[0])
            {
              CFRelease(__p[0]);
            }
          }

          CFRelease(v75);
        }
      }
    }
  }

  if ((a1 + 104) != cf)
  {
    *(a1 + 136) = *&cf[32];
    v84 = *&cf[16];
    v85 = *(a1 + 112);
    if (!v85)
    {
      goto LABEL_156;
    }

    for (k = 0; k != v85; ++k)
    {
      *(*(a1 + 104) + 8 * k) = 0;
    }

    v87 = *(a1 + 120);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    if (v87)
    {
      while (v84)
      {
        v88 = *(v84 + 4);
        *(v87 + 4) = v88;
        v89 = *v87;
        v87[1] = v88;
        inserted = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_prepare(a1 + 104, v88, v87 + 4);
        std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_perform((a1 + 104), v87, inserted);
        v84 = *v84;
        v87 = v89;
        if (!v89)
        {
          goto LABEL_156;
        }
      }

      do
      {
        v91 = *v87;
        operator delete(v87);
        v87 = v91;
      }

      while (v91);
    }

    else
    {
LABEL_156:
      if (v84)
      {
        operator new();
      }
    }
  }

  if ((a1 + 144) != valuePtr)
  {
    *(a1 + 176) = v183;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>((a1 + 144), v182[0]);
  }

  if ((a1 + 184) != v179)
  {
    *(a1 + 216) = v180;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>((a1 + 184), *&v179[16]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&v179[16]);
  v92 = *v179;
  *v179 = 0;
  if (v92)
  {
    operator delete(v92);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v182[0]);
  v93 = valuePtr[0];
  valuePtr[0] = 0;
  if (v93)
  {
    operator delete(v93);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(cf);
  if (v59)
  {
    CFRelease(v59);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  v95 = *(a1 + 264);
  v96 = *(v95 + 40);
  *valuePtr = *(v95 + 24);
  *v182 = v96;
  v183 = *(v95 + 56);
  if (LODWORD(valuePtr[1]) != 1819304813 || (BYTE4(valuePtr[1]) & 0x40) != 0)
  {
    v110 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v110 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v95);
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
      LODWORD(v186[0]) = 136315650;
      *(v186 + 4) = "HALS_Tap.cpp";
      WORD2(v186[1]) = 1024;
      *(&v186[1] + 6) = 494;
      WORD1(v186[2]) = 2080;
      *(&v186[2] + 4) = "not (format.IsMixable())";
      _os_log_error_impl(&dword_1DE1F9000, v113, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v186, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v175);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v184, "", v114);
    std::logic_error::logic_error(&v176, &v184);
    v176.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(cf, &v176);
    *&cf[24] = 0uLL;
    v169 = 0;
    v170 = -1;
    *cf = &unk_1F5991430;
    *&cf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v186, cf);
    v187 = "BOOL HALS_Tap::_UpdateFromDescription(AMCP::CF::Dictionary, BOOL &, BOOL &)";
    v188 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Tap.cpp";
    LODWORD(v189) = 494;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(__p);
  }

  if (*(a1 + 88))
  {
    v97 = 0;
    v98 = 1;
  }

  else
  {
    if ((*(a1 + 90) & 1) == 0)
    {
      if (!*(a1 + 248))
      {
        v123 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v123 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v95);
        }

        v125 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v124 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v124)
        {
          atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
          v126 = *v125;
          std::__shared_weak_count::__release_shared[abi:ne200100](v124);
        }

        else
        {
          v126 = *v125;
        }

        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v186[0]) = 136315650;
          *(v186 + 4) = "HALS_Tap.cpp";
          WORD2(v186[1]) = 1024;
          *(&v186[1] + 6) = 508;
          WORD1(v186[2]) = 2080;
          *(&v186[2] + 4) = "(mDevice.get()) == nullptr";
          _os_log_error_impl(&dword_1DE1F9000, v126, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing device for tap.", v186, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v175);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v184, "Missing device for tap.", v129);
        std::runtime_error::runtime_error(&v176, &v184);
        std::runtime_error::runtime_error(cf, &v176);
        *&cf[24] = 0uLL;
        v169 = 0;
        v170 = -1;
        *cf = &unk_1F5992170;
        *&cf[16] = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v186, cf);
        v187 = "BOOL HALS_Tap::_UpdateFromDescription(AMCP::CF::Dictionary, BOOL &, BOOL &)";
        v188 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Tap.cpp";
        LODWORD(v189) = 508;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(__p);
      }

      v101 = v165;
      if (*(v95 + 64) == 2)
      {
        v101 = 1;
      }

      if ((v101 & 1) == 0)
      {
        HALS_Tap::_UpdateTapFormatFromDeviceFormat(a1, v94);
      }

      goto LABEL_189;
    }

    v98 = 2;
    v97 = 1;
  }

  if (v97 != *(v95 + 64))
  {
    if ((BYTE4(valuePtr[1]) & 0x20) != 0)
    {
      v99 = 1;
    }

    else
    {
      v99 = HIDWORD(v182[1]);
      if (!HIDWORD(v182[1]))
      {
        v100 = (v183 + 7) >> 3;
LABEL_188:
        HIDWORD(v182[1]) = v98;
        HIDWORD(v182[0]) = 1;
        LODWORD(v182[1]) = v100 * v98;
        LODWORD(v182[0]) = v100 * v98;
        HIDWORD(valuePtr[1]) &= 0xFFFFFF9F;
        HALS_MultiTap::set_format(v95, valuePtr, v97 | 0x100000000);
        goto LABEL_189;
      }
    }

    v100 = LODWORD(v182[1]) / v99;
    goto LABEL_188;
  }

LABEL_189:
  v102 = *(a1 + 264);
  v103 = 1;
  if ((vminv_u16(vmovn_s32(vceqq_s32(v161, *(v102 + 32)))) & 1) != 0 && v160 == *(v102 + 48))
  {
    v104 = a3;
    if (v8 == *(v102 + 24) && v159 == *(v102 + 52))
    {
      v103 = v158 != *(v102 + 56);
    }
  }

  else
  {
    v104 = a3;
  }

  *v104 = v103;
  v105 = *(a1 + 91);
  v106 = v162 == v105;
  *a4 = v162 != v105;
  v107 = v165;
  if (!v106)
  {
    v107 = 1;
  }

  v108 = (v107 & 1) != 0 || *v104 || v157 != *(a1 + 88) || v156 != *(a1 + 90) || v155 != *(a1 + 96);
  if (v166)
  {
    CFRelease(v166);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if (v172)
  {
    CFRelease(v172);
  }

  return v108;
}

void sub_1DE3BC870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (LOBYTE(STACK[0x2E0]) == 1)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&a59);
  }

  HALS_Listener::~HALS_Listener(&a23);
  JUMPOUT(0x1DE3BCEF4);
}

void sub_1DE3BC894(uint64_t a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, const void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, const void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  HALS_ObjectMap::ReleaseObject(v64, a2);
  applesauce::CF::NumberRef::~NumberRef(&a33);
  applesauce::CF::TypeRef::~TypeRef(&a55);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a23);
  applesauce::CF::ArrayRef::~ArrayRef(&a19);
  applesauce::CF::ArrayRef::~ArrayRef(&a20);
  JUMPOUT(0x1DE3BCF48);
}

void sub_1DE3BCD18(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  JUMPOUT(0x1DE3BCF60);
}

void sub_1DE3BCD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, const void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  __cxa_end_catch();
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a23);
  applesauce::CF::ArrayRef::~ArrayRef(&a19);
  applesauce::CF::ArrayRef::~ArrayRef(&a20);
  JUMPOUT(0x1DE3BCF48);
}

void sub_1DE3BCD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, const void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a23);
  applesauce::CF::ArrayRef::~ArrayRef(&a19);
  applesauce::CF::ArrayRef::~ArrayRef(&a20);
  JUMPOUT(0x1DE3BCF48);
}

void sub_1DE3BCDAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::runtime_error a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, ...)
{
  va_start(va, a57);
  if (__p)
  {
    a44 = __p;
    operator delete(__p);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(va);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a39);
  JUMPOUT(0x1DE3BCF08);
}

void sub_1DE3BCDFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (__p)
  {
    a53 = __p;
    operator delete(__p);
  }

  if (a57)
  {
    a58 = a57;
    operator delete(a57);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a61);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a33);
  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (v62)
  {
    __cxa_free_exception(v61);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a38);
  JUMPOUT(0x1DE3BCEF4);
}

void sub_1DE3BCE9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  if (__p)
  {
    a45 = __p;
    operator delete(__p);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(va);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a23);
  MEMORY[0x1E12C0F00](&a39);
  JUMPOUT(0x1DE3BCF08);
}

void sub_1DE3BCEF0(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, const void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  HALS_ObjectMap::ReleaseObject(v63, a2);
  applesauce::CF::StringRef::~StringRef(&a35);
  _Unwind_Resume(a1);
}

void applesauce::CF::at_or<applesauce::CF::StringRef,char const(&)[8]>(void *a1, const __CFDictionary *a2, char *__s, void *a4)
{
  v8 = strlen(__s);
  v9 = CFStringCreateWithBytes(0, __s, v8, 0x8000100u, 0);
  cf = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(a2, v9);
  CFRelease(cf);
  if (Value)
  {
    CFRetain(Value);
    v11 = CFGetTypeID(Value);
    if (v11 == CFStringGetTypeID())
    {
      CFRetain(Value);
      *a1 = Value;
      CFRelease(Value);
      return;
    }

    CFRelease(Value);
  }

  *a1 = *a4;
  *a4 = 0;
}

void sub_1DE3BD084(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3BD01CLL);
}

void applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[12]>(void *a1, const __CFDictionary *a2, char *__s, void *a4)
{
  v6 = applesauce::CF::details::at_key<char const(&)[12]>(a2, __s);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFBooleanGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

void applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[10]>(const UInt8 **a1, const __CFDictionary *a2, const UInt8 *__s, const UInt8 **a4)
{
  v6 = applesauce::CF::details::at_key<char const(&)[10]>(a2, __s);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFBooleanGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

void applesauce::CF::at_or<applesauce::CF::NumberRef,char const(&)[13]>(const UInt8 **a1, const __CFDictionary *a2, const UInt8 *__s, const UInt8 **a4)
{
  Value = __s;
  v8 = strlen(__s);
  v9 = CFStringCreateWithBytes(0, Value, v8, 0x8000100u, 0);
  v12 = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (a2 && (Value = CFDictionaryGetValue(a2, v9), (v9 = v12) == 0) || (CFRelease(v9), a2))
  {
    if (Value)
    {
      CFRetain(Value);
      v10 = CFGetTypeID(Value);
      if (v10 == CFNumberGetTypeID())
      {
        CFRetain(Value);
        *a1 = Value;
        CFRelease(Value);
        return;
      }

      CFRelease(Value);
    }
  }

  *a1 = *a4;
  *a4 = 0;
}

void sub_1DE3BD354(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3BD2E0);
}

void HALS_Tap::RemoveDeviceSampleRateListener(HALS_Tap *this, const HALS_Listener *a2, uint64_t a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
{
  v8 = 0x676C6F626E737274;
  v9 = 0;
  v5[0] = 0;
  v5[1] = this;
  v6 = 0u;
  v7 = 0u;
  HALS_NotificationManager::RemovePropertyListener(v5, a2, &v8, a4, a5);
  HALS_Listener::~HALS_Listener(v5);
}

void sub_1DE3BD3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_Listener::~HALS_Listener(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::at_or<applesauce::CF::ArrayRef,char const(&)[10]>(const UInt8 **a1, const __CFDictionary *a2, const UInt8 *__s, const UInt8 **a4)
{
  v6 = applesauce::CF::details::at_key<char const(&)[10]>(a2, __s);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFArrayGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(void *a1, unsigned int a2, _DWORD *a3)
{
  v3 = a1[1];
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
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, void *a2, uint64_t a3)
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
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFNumberGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_1DE3BD9FC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *a1, unsigned int a2, _DWORD *a3)
{
  v3 = a1[1];
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
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, void *a2, uint64_t a3)
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
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(void *result, uint64_t *a2)
{
  v2 = a2;
  v4 = result[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*result + 8 * i) = 0;
    }

    v6 = result[2];
    result[2] = 0;
    result[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 2), (v2 + 2));
        v8 = *v6;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(result, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(void **a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a2 + 2));
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  v28 = *a1;
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v23 = v20[1];
        if (v17 > 1)
        {
          v24 = v23;
          if (v23 >= v5)
          {
            v24 = v23 % v5;
          }
        }

        else
        {
          v24 = v23 & (v5 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v4 && std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v22 + 2, a2 + 2);
        if ((v21 & (v25 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v25 != (v21 & 1);
        v20 = *v22;
        v19 = v22;
      }

      while (*v22);
    }
  }

  v26 = a2[1];
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v28[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_65;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_65;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[10]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DE3BE664(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3BE610);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[7]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DE3BE778(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3BE724);
}

void HALS_Tap::GetPropertyData(HALS_Tap *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, void *a6, unsigned int a7, const void *a8, HALS_Client *a9)
{
  v25 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1952869747)
  {
    if (mSelector == 1952869748)
    {
      if (a4 <= 0x27)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Tap.cpp";
          v23 = 1024;
          v24 = 171;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Client::GetPropertyData: bad property data size for kAudioTapPropertyFormat", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      v14 = *(this + 33);
      v15 = *(v14 + 24);
      v16 = *(v14 + 40);
      a6[4] = *(v14 + 56);
      *a6 = v15;
      *(a6 + 1) = v16;
      v13 = 40;
      goto LABEL_19;
    }

    if (mSelector != 1953851748)
    {
      goto LABEL_10;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Tap.cpp";
        v23 = 1024;
        v24 = 152;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Client::GetPropertyData: bad property data size for kAudioTapPropertyUID", buf, 0x12u);
      }

      v18 = __cxa_allocate_exception(0x10uLL);
      *v18 = off_1F5991DD8;
      v18[2] = 561211770;
    }

    HALS_Tap::GetUID(buf, *(this + 8));
LABEL_15:
    *a6 = *buf;
LABEL_16:
    v13 = 8;
LABEL_19:
    *a5 = v13;
    return;
  }

  if (mSelector == 1819173229)
  {
    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Tap.cpp";
        v23 = 1024;
        v24 = 145;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Client::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = off_1F5991DD8;
      v19[2] = 561211770;
    }

    HALS_Tap::GetName(buf, *(this + 7));
    goto LABEL_15;
  }

  if (mSelector == 1952740195)
  {
    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Tap.cpp";
        v23 = 1024;
        v24 = 159;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_GetPropertyData: bad property data size for kAudioTapPropertyDescription", buf, 0x12u);
      }

      v17 = __cxa_allocate_exception(0x10uLL);
      *v17 = off_1F5991DD8;
      v17[2] = 561211770;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZNK8HALS_Tap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
    v21[3] = &__block_descriptor_tmp_4530;
    v21[4] = this;
    v21[5] = a6;
    v12 = (*(*this + 64))(this, a2);
    HALB_CommandGate::ExecuteCommand(v12, v21);
    goto LABEL_16;
  }

LABEL_10:

  HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
}

void ___ZNK8HALS_Tap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v65[2] = Mutable;
  if (*(v2 + 56))
  {
    v4 = CFStringCreateWithBytes(0, "TapName", 7, 0x8000100u, 0);
    cf.__r_.__value_.__r.__words[0] = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v4, *(v2 + 56));
    CFRelease(v4);
  }

  v5 = CFStringCreateWithBytes(0, "TapUUID", 7, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v5;
  if (!v5)
  {
    v45 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v45, "Could not construct");
    __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v5, *(v2 + 64));
  CFRelease(v5);
  v6 = CFStringCreateWithBytes(0, "IsMono", 6, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v6;
  if (!v6)
  {
    v46 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v46, "Could not construct");
    __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = *MEMORY[0x1E695E4C8];
  v8 = *MEMORY[0x1E695E4B8];
  if (*(v2 + 88))
  {
    v9 = *MEMORY[0x1E695E4C8];
  }

  else
  {
    v9 = *MEMORY[0x1E695E4B8];
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v6, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(v6);
  v10 = CFStringCreateWithBytes(0, "IsExclusive", 11, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v10;
  if (!v10)
  {
    v47 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v47, "Could not construct");
    __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(v2 + 89))
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v10, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(v10);
  v12 = CFStringCreateWithBytes(0, "IsMixdown", 9, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v12;
  if (!v12)
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v48, "Could not construct");
    __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(v2 + 90))
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v12, v13);
  if (v13)
  {
    CFRelease(v13);
  }

  CFRelease(v12);
  v14 = CFStringCreateWithBytes(0, "IsPrivate", 9, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v14;
  if (!v14)
  {
    v49 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v49, "Could not construct");
    __cxa_throw(v49, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(v2 + 91))
  {
    v15 = v7;
  }

  else
  {
    v15 = v8;
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v14, v15);
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v14);
  v16 = CFStringCreateWithBytes(0, "ProcessRestoreEnabled", 21, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v16;
  if (!v16)
  {
    v50 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v50, "Could not construct");
    __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(v2 + 92))
  {
    v17 = v7;
  }

  else
  {
    v17 = v8;
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v16, v17);
  if (v17)
  {
    CFRelease(v17);
  }

  CFRelease(v16);
  cf.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, "MuteBehavior", 12, 0x8000100u, 0);
  if (!cf.__r_.__value_.__r.__words[0])
  {
    v51 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v51, "Could not construct");
    __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = *(v2 + 96);
  v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v65[0] = v18;
  if (!v18)
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v52, "Could not construct");
    __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf.__r_.__value_.__l.__data_, v18);
  CFRelease(v18);
  CFRelease(cf.__r_.__value_.__l.__data_);
  if (*(v2 + 248))
  {
    v65[0] = 0;
    v65[1] = 0;
    HALS_System::GetInstance(&cf, 0, v65);
    v20 = HALS_System::CopyDeviceByObjectID(cf.__r_.__value_.__l.__data_, **(v2 + 248), 0);
    if (cf.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cf.__r_.__value_.__l.__size_);
    }

    if (v20)
    {
      cf.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, "Stream", 6, 0x8000100u, 0);
      if (!cf.__r_.__value_.__r.__words[0])
      {
        v56 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v56, "Could not construct");
        __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      LODWORD(v62) = *(*(v2 + 248) + 4);
      v21 = CFNumberCreate(0, kCFNumberIntType, &v62);
      valuePtr = v21;
      if (!v21)
      {
        v57 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v57, "Could not construct");
        __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf.__r_.__value_.__l.__data_, v21);
      CFRelease(v21);
      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }

      cf.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, "DeviceUID", 9, 0x8000100u, 0);
      if (!cf.__r_.__value_.__r.__words[0])
      {
        v58 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v58, "Could not construct");
        __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v22 = (*(*v20 + 216))(v20);
      v23 = v22;
      valuePtr = v22;
      if (v22)
      {
        v24 = CFGetTypeID(v22);
        if (v24 != CFStringGetTypeID())
        {
          v59 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v59, "Could not construct");
          __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, cf.__r_.__value_.__l.__data_, v23);
        CFRelease(v23);
      }

      else
      {
        mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, cf.__r_.__value_.__l.__data_, 0);
      }

      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }
    }

    HALS_ObjectMap::ReleaseObject(v20, v19);
  }

  v25 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  valuePtr = v25;
  for (i = *(v2 + 160); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&cf, i[2], i[3]);
    }

    else
    {
      cf = *(i + 2);
    }

    if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_cf = &cf;
    }

    else
    {
      p_cf = cf.__r_.__value_.__r.__words[0];
    }

    if (p_cf)
    {
      if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(cf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = cf.__r_.__value_.__l.__size_;
      }

      v29 = CFStringCreateWithBytes(0, p_cf, size, 0x8000100u, 0);
      v62 = v29;
      if (!v29)
      {
        v43 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v43, "Could not construct");
        __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(v25, v29);
      CFRelease(v29);
    }

    else
    {
      v62 = 0;
      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(v25, 0);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }
  }

  for (j = *(v2 + 200); j; j = *j)
  {
    if (*(j + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&cf, j[2], j[3]);
    }

    else
    {
      cf = *(j + 2);
    }

    if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &cf;
    }

    else
    {
      v31 = cf.__r_.__value_.__r.__words[0];
    }

    if (v31)
    {
      if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(cf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = cf.__r_.__value_.__l.__size_;
      }

      v33 = CFStringCreateWithBytes(0, v31, v32, 0x8000100u, 0);
      v62 = v33;
      if (!v33)
      {
        v44 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v44, "Could not construct");
        __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(v25, v33);
      CFRelease(v33);
    }

    else
    {
      v62 = 0;
      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(v25, 0);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }
  }

  v34 = CFStringCreateWithBytes(0, "BundleIDs", 9, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v34;
  if (!v34)
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v53, "Could not construct");
    __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&v62, v25);
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(Mutable, v34, v62);
  if (v62)
  {
    CFRelease(v62);
  }

  CFRelease(v34);
  v35 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  cf.__r_.__value_.__r.__words[0] = v35;
  v36 = (v2 + 120);
  while (1)
  {
    v36 = *v36;
    if (!v36)
    {
      break;
    }

    v37 = *(v36 + 4);
    v39 = HALS_ObjectMap::CopyObjectByObjectID(v37);
    if (v39)
    {
      LODWORD(v61) = v37;
      v40 = CFNumberCreate(0, kCFNumberIntType, &v61);
      v62 = v40;
      if (!v40)
      {
        v42 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v42, "Could not construct");
        __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(v35, v40);
      CFRelease(v40);
    }

    HALS_ObjectMap::ReleaseObject(v39, v38);
  }

  v41 = CFStringCreateWithBytes(0, "Processes", 9, 0x8000100u, 0);
  v62 = v41;
  if (!v41)
  {
    v54 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v54, "Could not construct");
    __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&v61, v35);
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(Mutable, v41, v61);
  if (v61)
  {
    CFRelease(v61);
  }

  CFRelease(v41);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v60, Mutable);
  if (v35)
  {
    CFRelease(v35);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  **(a1 + 40) = CFRetain(v60);
  if (v60)
  {
    CFRelease(v60);
  }
}

void sub_1DE3BF864(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, const void *a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a20);
  applesauce::CF::StringRef::~StringRef(&__p);
  HALS_ObjectMap::ReleaseObject(v24, v27);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder((v25 - 72));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3BF410);
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

uint64_t HALS_Tap::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 8;
  if (*a3 > 1952869747)
  {
    if (v3 != 1953851748)
    {
      if (v3 == 1952869748)
      {
        return 40;
      }

      return HALS_Object::GetPropertyDataSize(8, a2, a3);
    }
  }

  else if (v3 != 1819173229 && v3 != 1952740195)
  {
    return HALS_Object::GetPropertyDataSize(8, a2, a3);
  }

  return result;
}

uint64_t HALS_Tap::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 > 1952869747)
  {
    if (v3 == 1952869748 || v3 == 1953851748)
    {
      return 0;
    }
  }

  else if (v3 == 1819173229 || v3 == 1952740195)
  {
    return 1;
  }

  return HALS_Object::IsPropertySettable(a1, a2, a3);
}

uint64_t HALS_Tap::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 1;
  if (*a3 <= 1870098019)
  {
    if (v3 > 1819173228)
    {
      v5 = v3 == 1819173229;
      v6 = 1869638759;
    }

    else
    {
      v5 = v3 == 1650682995;
      v6 = 1668047219;
    }
  }

  else if (v3 <= 1952740194)
  {
    v5 = v3 == 1870098020;
    v6 = 1937007734;
  }

  else
  {
    v5 = v3 == 1952740195 || v3 == 1952869748;
    v6 = 1953851748;
  }

  if (!v5 && v3 != v6)
  {
    return 0;
  }

  return result;
}

uint64_t HALS_Tap::GetCommandGate(HALS_Tap *this)
{
  return *(this + 9);
}

{
  return *(this + 9);
}

void HALS_Tap::~HALS_Tap(HALS_Tap *this)
{
  HALS_Tap::~HALS_Tap(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596B5B8;
  v2 = *(this + 10);
  *(this + 9) = 0;
  *(this + 10) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 34);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 31);
  *(this + 31) = 0;
  if (v4)
  {
    MEMORY[0x1E12C1730](v4, 0x1000C4000313F17);
  }

  v5 = *(this + 28);
  if (v5)
  {
    *(this + 29) = v5;
    operator delete(v5);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 23);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 18);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(this + 104);
  v6 = *(this + 10);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    CFRelease(v8);
  }

  HALS_Object::~HALS_Object(this);
}

void HALS_Tap::Deactivate(HALS_Tap *this)
{
  v3 = *(this + 33);
  v2 = *(this + 34);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v3 + 488) == 1)
  {
    std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](v3 + 456);
    *(v3 + 488) = 0;
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v11, *(this + 28), *(this + 29), (*(this + 29) - *(this + 28)) >> 2);
  v4 = v11;
  v5 = v12;
  if (v11 != v12)
  {
    v6 = v11;
    do
    {
      HALS_Tap::SetClientMuteState(this, LODWORD(v6->__vftable), 0);
      v6 = (v6 + 4);
    }

    while (v6 != v5);
  }

  if (v4)
  {
    operator delete(v4);
  }

  v10[0] = 0;
  v10[1] = 0;
  HALS_System::GetInstance(&v11, 0, v10);
  v7 = v11;
  v8 = *(this + 34);
  v9[0] = *(this + 33);
  v9[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HALS_System::RemoveTapFromAllContexts(v7, v9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  HALS_Object::Deactivate(this);
  atomic_fetch_add(&HALS_Tap::gPendingTapDelete, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_1DE3BFFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<HALS_MultiTap>::__on_zero_shared(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = HALS_ObjectMap::CopyObjectByObjectID(v3);
    v5 = v4;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    HALS_ObjectMap::ObjectIsDead(*(a1 + 40));
    *(a1 + 40) = 0;
    HALS_ObjectMap::ReleaseObject(v5, v6);
  }

  v7 = *(a1 + 592);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 576);
  *(a1 + 576) = 0;
  if (v8)
  {
    std::default_delete<AMCP::DAL::Container>::operator()[abi:ne200100](v8);
  }

  v9 = *(a1 + 568);
  *(a1 + 568) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9, a2);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(a1 + 520);
  if (*(a1 + 512) == 1)
  {
    std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](a1 + 480);
  }

  v10 = *(a1 + 432);
  if (v10)
  {
    do
    {
      v11 = *v10;
      v12 = v10[4];
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v13 = *(a1 + 416);
  *(a1 + 416) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(a1 + 376);
  if (v14)
  {
    v15 = *(a1 + 384);
    v16 = *(a1 + 376);
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 8);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v15 -= 16;
      }

      while (v15 != v14);
      v16 = *(a1 + 376);
    }

    *(a1 + 384) = v14;
    operator delete(v16);
  }

  std::condition_variable::~condition_variable((a1 + 312));
  std::condition_variable::~condition_variable((a1 + 264));
  std::mutex::~mutex((a1 + 200));
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(a1 + 128);
  HALS_ObjectMap::ReleaseObject(*(a1 + 112), v18);
  v19 = *(a1 + 32);
  if (v19)
  {

    std::__shared_weak_count::__release_weak(v19);
  }
}

void std::__shared_ptr_emplace<HALS_MultiTap>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596B6E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase(void *a1, void **a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = v4[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = v9[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](1, a2);
  return v4;
}

void ___ZN8HALS_Tap16HandleClientExitEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v2 + 104), v3))
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>((v2 + 104), v3);
    v14[0] = 0;
    v14[1] = 0;
    HALS_System::GetInstance(&__p, 0, v14);
    v5 = HALS_System::CopyClientByObjectID(__p, *(a1 + 40));
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v5)
    {
      HALS_Client::GetBundleIDString(&__p, v5);
      v6 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v6 = v12;
      }

      if (v6)
      {
        v7 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>((v2 + 144), &__p);
        if (v7)
        {
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase((v2 + 144), v7);
        }

        if (*(v2 + 92) == 1)
        {
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((v2 + 184), &__p, &__p);
        }
      }

      if (v13 < 0)
      {
        operator delete(__p);
      }
    }

    HALS_ObjectMap::ReleaseObject(v5, v4);
  }

  v9 = *(v2 + 224);
  v8 = *(v2 + 232);
  if (v9 != v8)
  {
    while (*v9 != *(a1 + 40))
    {
      if (++v9 == v8)
      {
        return;
      }
    }

    if (v9 != v8)
    {
      for (i = v9 + 1; i != v8; ++i)
      {
        if (*i != *(a1 + 40))
        {
          *v9++ = *i;
        }
      }
    }
  }

  if (v9 != v8)
  {
    *(v2 + 232) = v9;
  }
}

void sub_1DE3C0508(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  HALS_ObjectMap::ReleaseObject(v15, a2);
  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>(void *a1, unsigned int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(a1, a2);
  if (v3)
  {

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(a1, v3);
  }
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(void *a1, void *__p)
{
  v2 = a1[1];
  v3 = __p[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != __p);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }
  }

  else
  {
    v7 &= *&v2 - 1;
  }

  if (v7 != v3)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v8 = *(*__p + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *__p;
  if (*__p)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }
    }

    else
    {
      v10 &= *&v2 - 1;
    }

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *__p;
    }
  }

  *v6 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

void AMCP::IO_Core::Device_Node_Factory::~Device_Node_Factory(AMCP::IO_Core::Device_Node_Factory *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

unint64_t AMCP::Core::Core::get_simple_required_property<1935894638u>(AMCP::Core::Core *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  strcpy(buf, "nhcsbolg");
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
      strcpy(__p, "schn");
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

void sub_1DE3C0880(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Core::Core::get_simple_required_property<1935960434u>(AMCP::Core::Core *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  strcpy(buf, "ridsbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<AMCP::Direction,std::enable_if<true,void>>(a1, buf);
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
      strcpy(__p, "sdir");
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

void sub_1DE3C0A00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::IO_Core::Device_Node_Factory::clock_uid_and_node_description_from_device_and_direction(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a4;
  v40 = *MEMORY[0x1E69E9840];
  v7 = (*(*a2 + 16))(a2);
  AMCP::Core::Broker::fetch_core(&v30, v7, a3);
  if (!v30)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
      *v33 = "Device_Node_Factory.cpp";
      *&v33[8] = 1024;
      *&v33[10] = 68;
      *&v33[14] = 2080;
      *&v33[16] = "not (device_core != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v21, "", v15);
    std::logic_error::logic_error(&v22, &v21);
    v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v23, &v22);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v23.__vftable = &unk_1F5991430;
    v24 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v23);
    v34 = "std::pair<std::string, Node_Description> AMCP::IO_Core::Device_Node_Factory::clock_uid_and_node_description_from_device_and_direction(AMCP::Object_ID, AMCP::Direction)";
    *&v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
    DWORD2(v35) = 68;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  AMCP::Core::Core::get_simple_required_property<1969841184u>(&v21, v30);
  AMCP::create_device_node_uid_from_device_uid_and_direction(&v21, v4, &v23);
  if (SHIBYTE(v24) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v23.__vftable, v23.__imp_.__imp_);
  }

  else
  {
    *&v17.__r_.__value_.__l.__data_ = v23;
    v17.__r_.__value_.__r.__words[2] = v24;
  }

  *buf = 3;
  *&v33[4] = v17;
  memset(&v17, 0, sizeof(v17));
  v36 = 0u;
  v35 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v21.__r_.__value_.__r.__words[0];
  v34 = 0x100000001;
  DWORD2(v36) = 2;
  if (!v21.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::string,0>(__p, v21.__r_.__value_.__l.__data_);
  *a1 = *__p;
  *(a1 + 16) = v20;
  __p[1] = 0;
  v20 = 0;
  __p[0] = 0;
  AMCP::Node_Description::Node_Description((a1 + 24), buf);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  for (i = 96; i != 48; i -= 24)
  {
    __p[0] = &buf[i];
    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  if ((v33[27] & 0x80000000) != 0)
  {
    operator delete(*&v33[4]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23.__vftable);
  }

  CFRelease(v9);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }
}

void sub_1DE3C0E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, std::__shared_weak_count *a46)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a23);
  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  _Unwind_Resume(a1);
}

void *std::__function::__value_func<std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1DE3C1230(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2::~$_2(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory31add_input_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::operator()(uint64_t a1@<X0>, int *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (!v6 || (v7 = *a2, v8 = *a3, v6 = std::__shared_weak_count::lock(v6), (v9 = v6) == 0) || (v10 = *(a1 + 8)) == 0)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *&buf[4] = "Device_Node_Factory.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 109;
      *&buf[18] = 2080;
      *&buf[20] = "not (device_state.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "", v17);
    std::logic_error::logic_error(&v20, &v19);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v21, &v20);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v21.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v21.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
    v28 = "auto AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(const std::shared_ptr<Device_Node_State> &, const Timebase_Ref &, const std::string &)::(anonymous class)::operator()(Direction, size_t) const";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
    v30 = 109;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v21 = *(a1 + 24);
  }

  *buf = v21;
  *&buf[24] = v8;
  LODWORD(v28) = v7;
  v11 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>((v10 + 48), buf);
  if (v11)
  {
    v12 = v11[32];
    *a4 = v11[31];
    a4[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
}

void sub_1DE3C1670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 145));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::__clone(uint64_t a1, std::string *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_1F596B930;
  a2->__r_.__value_.__l.__size_ = v3;
  a2->__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v4;
  }
}

void sub_1DE3C1828(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3C18DC(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596B930;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596B930;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory31add_input_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596B8A0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596B8A0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596B8A0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Device_Connection>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Device_Connection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596B850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory31add_input_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596B7C0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596B7C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596B7C0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory32add_output_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::operator()(uint64_t a1@<X0>, int *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (!v6 || (v7 = *a2, v8 = *a3, v6 = std::__shared_weak_count::lock(v6), (v9 = v6) == 0) || (v10 = *(a1 + 8)) == 0)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *&buf[4] = "Device_Node_Factory.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 158;
      *&buf[18] = 2080;
      *&buf[20] = "not (device_state.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "", v17);
    std::logic_error::logic_error(&v20, &v19);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v21, &v20);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v21.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v21.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
    v28 = "auto AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(const std::shared_ptr<Device_Node_State> &, const Timebase_Ref &, const std::string &)::(anonymous class)::operator()(Direction, size_t) const";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
    v30 = 158;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v21 = *(a1 + 24);
  }

  *buf = v21;
  *&buf[24] = v8;
  LODWORD(v28) = v7;
  v11 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>((v10 + 8), buf);
  if (v11)
  {
    v12 = v11[32];
    *a4 = v11[31];
    a4[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
}

void sub_1DE3C2270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 145));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::__clone(uint64_t a1, std::string *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_1F596BB50;
  a2->__r_.__value_.__l.__size_ = v3;
  a2->__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v4;
  }
}

void sub_1DE3C23D4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3C2488(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596BB50;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596BB50;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory32add_output_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596BAD0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596BAD0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596BAD0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory32add_output_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596BA50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596BA50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596BA50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory32add_output_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  if (AMCP::DAL::DAL_Time::operator<(a3, (a3 + 5)))
  {
    AMCP::IO_Core::Stream_Connection::maybe_capture_audio(*(a1 + 8), a3);
  }

  v5 = *(a1 + 8);
  *(v5 + 72) = *a3;
  *(v5 + 80) = a3[1];
  v6 = a3[3];
  *(v5 + 88) = a3[2];
  v7 = a3[4];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(v5 + 104);
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(v5 + 112) = *(a3 + 10);
  *(v5 + 120) = a3[6];
  v9 = a3[8];
  *(v5 + 128) = a3[7];
  v10 = a3[9];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v5 + 144);
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F596B9C0;
  a2[1] = v2;
  v3 = result[3];
  a2[2] = result[2];
  a2[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__func(void *a1)
{
  *a1 = &unk_1F596B9C0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__func(void *a1)
{
  *a1 = &unk_1F596B9C0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::IO_Core::Device_Node_Factory::create_node_descriptions_from_device(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int a4, void *a5)
{
  v337 = *MEMORY[0x1E69E9840];
  v256 = 0u;
  v257 = 0u;
  v255 = 0u;
  memset(v254, 0, sizeof(v254));
  v8 = (*(**a2 + 16))();
  v228 = a4;
  AMCP::Core::Broker::fetch_core(&v252, v8, a4);
  if (!v252)
  {
    v221 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v221 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v223 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v222 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v222)
    {
      atomic_fetch_add_explicit(&v222->__shared_owners_, 1uLL, memory_order_relaxed);
      v224 = *v223;
      std::__shared_weak_count::__release_shared[abi:ne200100](v222);
    }

    else
    {
      v224 = *v223;
    }

    if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
    {
      *v284 = 136315650;
      *&v284[4] = "Device_Node_Factory.cpp";
      *&v284[12] = 1024;
      *&v284[14] = 184;
      *&v284[18] = 2080;
      *&v284[20] = "not (device_core != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v224, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v284, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v260);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(v309, "", v225);
    std::logic_error::logic_error(&v263, v309);
    v263.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v312, &v263);
    v313 = 0;
    *&v312[24] = 0;
    *&v314 = 0;
    DWORD2(v314) = -1;
    *v312 = &unk_1F5991430;
    *&v312[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v284, v312);
    *&v284[32] = "std::pair<std::vector<Node_Description>, std::shared_ptr<Device_Node_State>> AMCP::IO_Core::Device_Node_Factory::create_node_descriptions_from_device(const std::shared_ptr<Device_Timebase_Factory> &, AMCP::Object_ID, const std::shared_ptr<Device_Node_State> &)";
    *&v284[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
    *&v284[48] = 184;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v267);
  }

  v237 = a5;
  v226 = a1;
  AMCP::Core::Core::get_simple_required_property<1937009955u>(&v250, v252, 0x676C6F62u);
  v11 = v250;
  v12 = v251;
  i = a2;
  if (v250 != v251)
  {
    do
    {
      v14 = *v11;
      *&v286 = 0;
      v285 = 0u;
      memset(v284, 0, sizeof(v284));
      *(&v286 + 1) = 1;
      LOBYTE(v287) = 0;
      v15 = (*(**i + 16))();
      AMCP::Core::Broker::fetch_core(v260, v15, v14);
      v17 = *v260;
      if (!*v260)
      {
        v201 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v201 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v16);
        }

        v203 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v202 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v202)
        {
          atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
          v204 = *v203;
          std::__shared_weak_count::__release_shared[abi:ne200100](v202);
        }

        else
        {
          v204 = *v203;
        }

        if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
        {
          *v312 = 136315650;
          *&v312[4] = "Device_Node_Factory.cpp";
          *&v312[12] = 1024;
          *&v312[14] = 51;
          *&v312[18] = 2080;
          *&v312[20] = "not (stream_core != nullptr)";
          _os_log_error_impl(&dword_1DE1F9000, v204, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v312, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v280);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(v267, "", v217);
        std::logic_error::logic_error(&v281, v267);
        v281.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v272, &v281);
        *&__s.__r_.__value_.__l.__data_ = 0uLL;
        v274 = 0;
        LODWORD(__s.__r_.__value_.__r.__words[2]) = -1;
        v272.__vftable = &unk_1F5991430;
        v273 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v312, &v272);
        v313 = "Terminal_Description AMCP::IO_Core::Device_Node_Factory::terminal_description_from_stream(AMCP::Object_ID, const std::shared_ptr<Device_Node_State> &, AMCP::Direction &)";
        *&v314 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
        DWORD2(v314) = 51;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v263);
      }

      AMCP::Core::Core::get_simple_required_property<1935894638u>(*v260);
      simple_required = AMCP::Core::Core::get_simple_required_property<1935960434u>(v17);
      v19 = *(*v237 + 96);
      v20 = *(*v237 + 104);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v19 + 128))(v312);
      v21 = v313;
      v22.i32[0] = 9;
      v22.i32[1] = 4 * *&v312[28];
      v22.i32[2] = 1;
      if (*&v312[8] == 1819304813 && (v312[12] & 0x40) == 0)
      {
        v21 = 32;
        v23 = -1;
      }

      else
      {
        v23 = 0;
      }

      *v284 = *v312;
      v22.i32[3] = 4 * *&v312[28];
      *&v284[12] = vbslq_s8(vdupq_n_s32(v23), v22, *&v312[12]);
      *&v284[8] = *&v312[8];
      *&v284[28] = *&v312[28];
      *&v284[32] = v21;
      *&v284[36] = HIDWORD(v313);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      DWORD2(v286) = 1;
      if (*&v260[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v260[8]);
      }

      v24 = v254 + 24 * simple_required;
      v26 = *(v24 + 1);
      v25 = *(v24 + 2);
      if (v26 >= v25)
      {
        v28 = *v24;
        v29 = v26 - *v24;
        v30 = (v29 >> 2) + 1;
        if (v30 >> 62)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v31 = v25 - v28;
        if (v31 >> 1 > v30)
        {
          v30 = v31 >> 1;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v32 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v32);
        }

        v33 = (4 * (v29 >> 2));
        *v33 = v14;
        v27 = v33 + 1;
        memcpy(0, v28, v29);
        v34 = *v24;
        *v24 = 0;
        *(v24 + 1) = v27;
        *(v24 + 2) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v26 = v14;
        v27 = v26 + 1;
      }

      *(v24 + 1) = v27;
      std::vector<AMCP::Terminal_Description>::push_back[abi:ne200100](&v255 + 3 * (simple_required == 0), v284);
      v35 = 64;
      i = a2;
      do
      {
        *v312 = &v284[v35];
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v312);
        v35 -= 24;
      }

      while (v35 != 16);
      ++v11;
    }

    while (v11 != v12);
  }

  v36 = 0;
  v247 = 0;
  *v248 = 0;
  v249 = 0;
  v283 = 1;
  v37 = v237;
  do
  {
    v38 = *&v284[v36 - 8];
    v239 = &v255 + 3 * v38;
    v39 = *v239;
    v40 = v239[1];
    if (*v239 == v40)
    {
      goto LABEL_280;
    }

    memset(&v246, 0, sizeof(v246));
    v229 = v36;
    if (v38 != 1)
    {
      v236 = v254 + 3 * (v38 == 0);
      if (0x4EC4EC4EC4EC4EC5 * ((v40 - v39) >> 3) != (v236[1] - *v236) >> 2)
      {
        v209 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v209 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v10);
        }

        v211 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v210 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v210)
        {
          atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
          v212 = *v211;
          std::__shared_weak_count::__release_shared[abi:ne200100](v210);
        }

        else
        {
          v212 = *v211;
        }

        if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
        {
          *v284 = 136315650;
          *&v284[4] = "Device_Node_Factory.cpp";
          *&v284[12] = 1024;
          *&v284[14] = 275;
          *&v284[18] = 2080;
          *&v284[20] = "not (input_terminals.size() == input_stream_ids.size())";
          _os_log_error_impl(&dword_1DE1F9000, v212, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s number of terminals does not match number of stream ids", v284, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v260);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(v309, "number of terminals does not match number of stream ids", v219);
        std::logic_error::logic_error(&v263, v309);
        v263.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v312, &v263);
        v313 = 0;
        *&v312[24] = 0;
        *&v314 = 0;
        DWORD2(v314) = -1;
        *v312 = &unk_1F5991430;
        *&v312[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v284, v312);
        *&v284[32] = "std::vector<Node_Description> AMCP::IO_Core::Device_Node_Factory::create_input_nodes_for_streams(const std::vector<Terminal_Description> &, const std::vector<AMCP::Object_ID> &, const std::shared_ptr<Device_Node_State> &, AMCP::Object_ID, const std::shared_ptr<Device_Timebase_Factory> &)";
        *&v284[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
        *&v284[48] = 275;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v267);
      }

      v244 = 0uLL;
      v245 = 0;
      AMCP::IO_Core::Device_Node_Factory::clock_uid_and_node_description_from_device_and_direction(&v272, *i, v228, 1);
      v96 = (*(**i + 24))();
      (*(*v96 + 24))(v96, &__s);
      if (v278 != v239)
      {
        std::vector<AMCP::Terminal_Description>::__assign_with_size[abi:ne200100]<AMCP::Terminal_Description*,AMCP::Terminal_Description*>(v278, *v239, v239[1], 0x4EC4EC4EC4EC4EC5 * ((v239[1] - *v239) >> 3));
      }

      std::vector<AMCP::Node_Description>::push_back[abi:ne200100](&v244, &v274);
      v97 = *v237;
      v99 = *(*v237 + 112);
      v98 = *(*v237 + 120);
      if (v98)
      {
        atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v98);
        if (v99)
        {
          goto LABEL_138;
        }

        v97 = *v237;
      }

      else if (v99)
      {
        goto LABEL_138;
      }

      v100 = *a3;
      v101 = v97[13];
      *v284 = v97[12];
      *&v284[8] = v101;
      if (v101)
      {
        atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v102 = i;
      AMCP::IO_Core::Device_Timebase_Factory::demand_timebase_for_device(&v270, v100, v284, &v272);
      v103 = v270;
      v104 = v271;
      if (v271)
      {
        atomic_fetch_add_explicit(&v271->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v105 = v97[15];
      v97[14] = v103;
      v97[15] = v104;
      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v105);
      }

      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
      }

      if (v101)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v101);
      }

      i = v102;
LABEL_138:
      v106 = *v239;
      v107 = v239[1];
      if (v107 != *v239)
      {
        v108 = 0;
        v109 = 0;
        do
        {
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v266, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            v106 = *v239;
            v107 = v239[1];
          }

          else
          {
            v266 = __s;
          }

          *v267 = *&v266.__r_.__value_.__l.__data_;
          v110 = v266.__r_.__value_.__r.__words[2];
          memset(&v266, 0, sizeof(v266));
          *&v268 = v110;
          *(&v268 + 1) = v109;
          LODWORD(v269) = 0;
          if (0x4EC4EC4EC4EC4EC5 * ((v107 - v106) >> 3) <= v109)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v111 = v106 + v108;
          v112 = *v111;
          v113 = *(v111 + 1);
          v265 = *(v111 + 4);
          v263 = v112;
          v264 = v113;
          v114 = *v37;
          v115 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>((*v37 + 48), v267);
          if (!v115)
          {
            v117 = *(v114 + 112);
            v118 = *(v114 + 120);
            if (v118)
            {
              atomic_fetch_add_explicit((v118 + 8), 1uLL, memory_order_relaxed);
            }

            *v284 = 2;
            *&v284[8] = 0x40C0000000000000uLL;
            *&v284[24] = v117;
            operator new();
          }

          v116 = *(v115 + 31);
          v243 = v116;
          if (*(&v116 + 1))
          {
            atomic_fetch_add_explicit((*(&v116 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v119 = *v236;
          if (v109 >= (v236[1] - *v236) >> 2)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v120 = (*(**i + 16))();
          AMCP::Core::Broker::fetch_core(&v262, v120, *(v119 + 4 * v109));
          if (!v262.__vftable)
          {
            v186 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v186 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(0);
            }

            v188 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v187 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v187)
            {
              atomic_fetch_add_explicit(&v187->__shared_owners_, 1uLL, memory_order_relaxed);
              v189 = *v188;
              std::__shared_weak_count::__release_shared[abi:ne200100](v187);
            }

            else
            {
              v189 = *v188;
            }

            if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
            {
              *v284 = 136315650;
              *&v284[4] = "Device_Node_Factory.cpp";
              *&v284[12] = 1024;
              *&v284[14] = 302;
              *&v284[18] = 2080;
              *&v284[20] = "not (stream_core != nullptr)";
              _os_log_error_impl(&dword_1DE1F9000, v189, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v284, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v282);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string(v260, "", v198);
            std::logic_error::logic_error(&v280, v260);
            v280.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(v312, &v280);
            v313 = 0;
            *&v312[24] = 0;
            *&v314 = 0;
            DWORD2(v314) = -1;
            *v312 = &unk_1F5991430;
            *&v312[16] = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v284, v312);
            *&v284[32] = "std::vector<Node_Description> AMCP::IO_Core::Device_Node_Factory::create_input_nodes_for_streams(const std::vector<Terminal_Description> &, const std::vector<AMCP::Object_ID> &, const std::shared_ptr<Device_Node_State> &, AMCP::Object_ID, const std::shared_ptr<Device_Timebase_Factory> &)";
            *&v284[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
            *&v284[48] = 302;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v281);
          }

          AMCP::Core::Core::get_simple_required_property<1935894638u>(v262.__vftable);
          v121 = *(*v37 + 96);
          v122 = *(*v37 + 104);
          if (v122)
          {
            atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v241 = v108;
          (*(*v121 + 128))(v260);
          if (v122)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v122);
          }

          v240 = *v37;
          v123 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>((*v37 + 48), v267);
          if (!v123)
          {
            goto LABEL_176;
          }

          v124 = v123;
          v125 = v263.__vftable;
          imp = v263.__imp_.__imp_;
          imp_high = HIDWORD(v263.__imp_.__imp_);
          v128 = v264;
          v129 = DWORD1(v264);
          v130 = DWORD2(v264);
          v131 = HIDWORD(v264);
          v132 = v265;
          v133 = *v260;
          v134 = *&v260[8];
          v234 = *&v260[16];
          v235 = *&v260[12];
          v232 = *&v260[24];
          v233 = *&v260[20];
          v230 = v261;
          v231 = *&v260[28];
          *v284 = v267;
          *&v284[8] = &v268 + 8;
          *&v284[16] = &v269;
          *v312 = v123 + 7;
          *&v312[8] = v123 + 10;
          *&v312[16] = v123 + 11;
          v135 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v284, v312);
          if (!v135)
          {
            v194 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v194 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v135);
            }

            v196 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v195 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v195)
            {
              atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
              v197 = *v196;
              std::__shared_weak_count::__release_shared[abi:ne200100](v195);
            }

            else
            {
              v197 = *v196;
            }

            if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
            {
              *v284 = 136315650;
              *&v284[4] = "Stream_Connection.cpp";
              *&v284[12] = 1024;
              *&v284[14] = 276;
              *&v284[18] = 2080;
              *&v284[20] = "not (terminal == m_terminal)";
              _os_log_error_impl(&dword_1DE1F9000, v197, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v284, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v258);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string(&v281, "", v200);
            std::logic_error::logic_error(&v282, &v281);
            v282.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(v312, &v282);
            v313 = 0;
            *&v312[24] = 0;
            *&v314 = 0;
            DWORD2(v314) = -1;
            *v312 = &unk_1F5991430;
            *&v312[16] = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v284, v312);
            *&v284[32] = "BOOL AMCP::IO_Core::Stream_Connection::has_settings(const Terminal_Identifier &, size_t, CA::StreamDescription, CA::StreamDescription) const";
            *&v284[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Stream_Connection.cpp";
            *&v284[48] = 276;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v280);
          }

          if (v109 == v124[12] && *&v125 == *(v124 + 26) && imp == *(v124 + 54) && imp_high == *(v124 + 55) && v128 == *(v124 + 56) && v129 == *(v124 + 57) && v130 == *(v124 + 58) && v131 == *(v124 + 59) && v132 == *(v124 + 60) && v133 == *(v124 + 43) && v134 == *(v124 + 88) && v235 == *(v124 + 89) && v234 == *(v124 + 90) && v233 == *(v124 + 91) && v232 == *(v124 + 92) && v231 == *(v124 + 93) && v230 == *(v124 + 94))
          {
            v136 = *(&v243 + 1);
            v137 = v241;
          }

          else
          {
LABEL_176:
            *v284 = v263;
            *&v284[16] = v264;
            *&v284[32] = v265;
            *v309 = *v260;
            v310 = *&v260[16];
            v311 = v261;
            *&v281.__r_.__value_.__l.__data_ = v243;
            AMCP::IO_Core::Stream_Connection::Stream_Connection(v312, v267, v109, 1, v284, v309, &v281);
            if (v281.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v281.__r_.__value_.__l.__size_);
            }

            if (SBYTE7(v268) < 0)
            {
              std::string::__init_copy_ctor_external(v284, v267[0], v267[1]);
            }

            else
            {
              *v284 = *v267;
              *&v284[16] = v268;
            }

            v137 = v241;
            *&v284[24] = *(&v268 + 1);
            *&v284[32] = v269;
            *&v284[40] = *v312;
            v138 = *&v312[16];
            memset(v312, 0, 24);
            *&v284[56] = v138;
            *&v285 = *&v312[24];
            DWORD2(v285) = v313;
            v286 = v314;
            v287 = v315;
            v288 = v316;
            v289 = v317;
            v290 = v318;
            v318 = 0uLL;
            v291 = v319;
            v292 = v320;
            v293 = v321;
            v321 = 0uLL;
            v296 = v324;
            v294 = v322;
            v295 = v323;
            v297 = v325;
            v325 = 0uLL;
            v298 = v326;
            v326 = 0uLL;
            LOBYTE(v299) = 0;
            v302 = 0;
            if (v330 == 1)
            {
              v299 = v327;
              v300 = v328;
              v301 = v329;
              v329 = 0uLL;
              v302 = 1;
            }

            v303 = v331;
            v331 = 0uLL;
            v304 = v332;
            v305 = v333;
            v306 = v334;
            v307 = v335;
            v335 = 0uLL;
            v139 = v336;
            v336 = 0;
            v308 = v139;
            std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>>::__emplace_unique_key_args<AMCP::Terminal_Identifier,std::pair<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>((v240 + 48), v284, v284);
            AMCP::IO_Core::Stream_Connection::~Stream_Connection(&v284[40]);
            if ((v284[23] & 0x80000000) != 0)
            {
              operator delete(*v284);
            }

            AMCP::IO_Core::Stream_Connection::~Stream_Connection(v312);
            v136 = 0;
          }

          if (v136)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v136);
          }

          i = a2;
          if (v262.__imp_.__imp_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v262.__imp_.__imp_);
          }

          v37 = v237;
          if (SBYTE7(v268) < 0)
          {
            operator delete(v267[0]);
          }

          ++v109;
          v106 = *v239;
          v107 = v239[1];
          v108 = v137 + 104;
        }

        while (v109 < 0x4EC4EC4EC4EC4EC5 * ((v107 - *v239) >> 3));
      }

      v141 = *(*v37 + 112);
      v140 = *(*v37 + 120);
      if (v140)
      {
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v142 = (*(**i + 24))();
      (*(*v142 + 16))(v267);
      if (v140)
      {
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
        v143 = v267[0];
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v143 = v267[0];
      }

      *v284 = &unk_1F596B7C0;
      *&v284[8] = v141;
      *&v284[16] = v140;
      if (v140)
      {
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
        *&v284[24] = v284;
        std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::swap[abi:ne200100](v284, (v143 + 64));
        std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__value_func[abi:ne200100](v284);
        std::__shared_weak_count::__release_shared[abi:ne200100](v140);
        std::__shared_weak_count::__release_shared[abi:ne200100](v140);
      }

      else
      {
        *&v284[24] = v284;
        std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::swap[abi:ne200100](v284, (v143 + 64));
        std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__value_func[abi:ne200100](v284);
      }

      v144 = v37[1];
      if (v144)
      {
        atomic_fetch_add_explicit((v144 + 16), 1uLL, memory_order_relaxed);
      }

      std::allocate_shared[abi:ne200100]<AMCP::IO_Core::Device_Connection,std::allocator<AMCP::IO_Core::Device_Connection>,std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,0>(&v263, v37);
    }

    if (0x4EC4EC4EC4EC4EC5 * ((v257 - *(&v256 + 1)) >> 3) != (*(&v254[0] + 1) - *&v254[0]) >> 2)
    {
      v205 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v205 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v10);
      }

      v207 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v206 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v206)
      {
        atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
        v208 = *v207;
        std::__shared_weak_count::__release_shared[abi:ne200100](v206);
      }

      else
      {
        v208 = *v207;
      }

      if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
      {
        *v284 = 136315650;
        *&v284[4] = "Device_Node_Factory.cpp";
        *&v284[12] = 1024;
        *&v284[14] = 225;
        *&v284[18] = 2080;
        *&v284[20] = "not (output_terminals.size() == output_stream_ids.size())";
        _os_log_error_impl(&dword_1DE1F9000, v208, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s number of terminals does not match number of stream ids", v284, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v260);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(v309, "number of terminals does not match number of stream ids", v218);
      std::logic_error::logic_error(&v263, v309);
      v263.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(v312, &v263);
      v313 = 0;
      *&v312[24] = 0;
      *&v314 = 0;
      DWORD2(v314) = -1;
      *v312 = &unk_1F5991430;
      *&v312[16] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v284, v312);
      *&v284[32] = "std::vector<Node_Description> AMCP::IO_Core::Device_Node_Factory::create_output_nodes_for_streams(const std::vector<Terminal_Description> &, const std::vector<AMCP::Object_ID> &, const std::shared_ptr<Device_Node_State> &, AMCP::Object_ID, const std::shared_ptr<Device_Timebase_Factory> &)";
      *&v284[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
      *&v284[48] = 225;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(v267);
    }

    memset(&v266, 0, sizeof(v266));
    AMCP::IO_Core::Device_Node_Factory::clock_uid_and_node_description_from_device_and_direction(&v272, *i, v228, 0);
    v41 = (*(**i + 24))();
    (*(*v41 + 24))(v41, &__s);
    std::vector<AMCP::Terminal_Description>::__assign_with_size[abi:ne200100]<AMCP::Terminal_Description*,AMCP::Terminal_Description*>(v279, *(&v256 + 1), v257, 0x4EC4EC4EC4EC4EC5 * ((v257 - *(&v256 + 1)) >> 3));
    v42 = std::vector<AMCP::Node_Description>::push_back[abi:ne200100](&v266, &v274);
    v43 = *v237;
    if (!*v237)
    {
      v213 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v213 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v42);
      }

      v215 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v214 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v214)
      {
        atomic_fetch_add_explicit(&v214->__shared_owners_, 1uLL, memory_order_relaxed);
        v216 = *v215;
        std::__shared_weak_count::__release_shared[abi:ne200100](v214);
      }

      else
      {
        v216 = *v215;
      }

      if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
      {
        *v284 = 136315650;
        *&v284[4] = "Device_Node_Factory.cpp";
        *&v284[12] = 1024;
        *&v284[14] = 235;
        *&v284[18] = 2080;
        *&v284[20] = "not (device_state.operator BOOL())";
        _os_log_error_impl(&dword_1DE1F9000, v216, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v284, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v281);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(v267, "", v220);
      std::logic_error::logic_error(v260, v267);
      *v260 = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(v312, v260);
      v313 = 0;
      *&v312[24] = 0;
      *&v314 = 0;
      DWORD2(v314) = -1;
      *v312 = &unk_1F5991430;
      *&v312[16] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v284, v312);
      *&v284[32] = "std::vector<Node_Description> AMCP::IO_Core::Device_Node_Factory::create_output_nodes_for_streams(const std::vector<Terminal_Description> &, const std::vector<AMCP::Object_ID> &, const std::shared_ptr<Device_Node_State> &, AMCP::Object_ID, const std::shared_ptr<Device_Timebase_Factory> &)";
      *&v284[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
      *&v284[48] = 235;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v263);
    }

    v45 = v43[14];
    v44 = v43[15];
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      v43 = *v237;
    }

    if (!v45)
    {
      v46 = *a3;
      v47 = v43[13];
      *v284 = v43[12];
      *&v284[8] = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::IO_Core::Device_Timebase_Factory::demand_timebase_for_device(&v244, v46, v284, &v272);
      v48 = v244;
      if (*(&v244 + 1))
      {
        atomic_fetch_add_explicit((*(&v244 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v49 = v43[15];
      *(v43 + 7) = v48;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      if (*(&v48 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v48 + 1));
      }

      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      v50 = i[2];
      memset(v312, 0, 24);
      v51 = v50[2];
      if (v51)
      {
        v52 = 0;
        do
        {
          v53 = *(v51 + 39);
          v54 = v51[3];
          if (v53 >= 0)
          {
            v55 = *(v51 + 39);
          }

          else
          {
            v55 = v51[3];
          }

          size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __s.__r_.__value_.__l.__size_;
          }

          if (v55 == size)
          {
            v57 = (v51 + 2);
            v58 = v51[2];
            v59 = v53 >= 0 ? v51 + 2 : v51[2];
            v60 = (__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__s : __s.__r_.__value_.__r.__words[0];
            if (!memcmp(v59, v60, v55))
            {
              if (v52 >= *&v312[16])
              {
                v62 = 0xCCCCCCCCCCCCCCCDLL * ((v52 - *v312) >> 3);
                v63 = v62 + 1;
                if (v62 + 1 > 0x666666666666666)
                {
                  std::vector<void *>::__throw_length_error[abi:ne200100]();
                }

                if (0x999999999999999ALL * ((*&v312[16] - *v312) >> 3) > v63)
                {
                  v63 = 0x999999999999999ALL * ((*&v312[16] - *v312) >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((*&v312[16] - *v312) >> 3) >= 0x333333333333333)
                {
                  v64 = 0x666666666666666;
                }

                else
                {
                  v64 = v63;
                }

                *&v284[32] = v312;
                if (v64)
                {
                  if (v64 <= 0x666666666666666)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v66 = 40 * v62;
                *v284 = 0;
                *&v284[8] = v66;
                *&v284[16] = v66;
                *&v284[24] = 0;
                if (*(v51 + 39) < 0)
                {
                  std::string::__init_copy_ctor_external(v66, v51[2], v51[3]);
                  v69 = *&v284[16];
                  v68 = *&v284[8];
                }

                else
                {
                  v67 = *v57;
                  *(v66 + 16) = v51[4];
                  *v66 = v67;
                  v68 = v66;
                  v69 = v66;
                }

                v70 = v51[5];
                *(v66 + 32) = *(v51 + 12);
                *(v66 + 24) = v70;
                *&v284[16] = v69 + 40;
                v71 = *&v312[8];
                v72 = *v312;
                v73 = v68 + *v312 - *&v312[8];
                if (*v312 != *&v312[8])
                {
                  v74 = *v312;
                  v75 = v73;
                  do
                  {
                    v76 = *v74;
                    *(v75 + 16) = *(v74 + 2);
                    *v75 = v76;
                    *(v74 + 1) = 0;
                    *(v74 + 2) = 0;
                    *v74 = 0;
                    v77 = *(v74 + 3);
                    *(v75 + 32) = *(v74 + 8);
                    *(v75 + 24) = v77;
                    v74 = (v74 + 40);
                    v75 += 40;
                  }

                  while (v74 != v71);
                  do
                  {
                    if (*(v72 + 23) < 0)
                    {
                      operator delete(*v72);
                    }

                    v72 += 40;
                  }

                  while (v72 != v71);
                }

                v78 = *v312;
                v79 = *&v312[16];
                *v312 = v73;
                v242 = *&v284[16];
                *&v312[8] = *&v284[16];
                *&v284[16] = v78;
                *&v284[24] = v79;
                *&v284[8] = v78;
                *v284 = v78;
                std::__split_buffer<AMCP::Terminal_Identifier>::~__split_buffer(v284);
                v52 = v242;
              }

              else
              {
                if (v53 < 0)
                {
                  std::string::__init_copy_ctor_external(v52, v58, v54);
                }

                else
                {
                  v61 = *v57;
                  *(v52 + 16) = v51[4];
                  *v52 = v61;
                }

                v65 = v51[5];
                *(v52 + 32) = *(v51 + 12);
                *(v52 + 24) = v65;
                v52 += 40;
              }

              *&v312[8] = v52;
            }
          }

          v51 = *v51;
        }

        while (v51);
        v80 = *v312;
        for (i = a2; v80 != v52; v80 += 40)
        {
          v81 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(v50, v80);
          if (v81)
          {
            v82 = v50[1];
            v83 = v81[1];
            v84 = vcnt_s8(v82);
            v84.i16[0] = vaddlv_u8(v84);
            if (v84.u32[0] > 1uLL)
            {
              if (v83 >= *&v82)
              {
                v83 %= *&v82;
              }
            }

            else
            {
              v83 &= *&v82 - 1;
            }

            v85 = *(*v50 + 8 * v83);
            do
            {
              v86 = v85;
              v85 = *v85;
            }

            while (v85 != v81);
            if (v86 == v50 + 2)
            {
              goto LABEL_106;
            }

            v87 = v86[1];
            if (v84.u32[0] > 1uLL)
            {
              if (v87 >= *&v82)
              {
                v87 %= *&v82;
              }
            }

            else
            {
              v87 &= *&v82 - 1;
            }

            if (v87 != v83)
            {
LABEL_106:
              if (!*v81)
              {
                goto LABEL_107;
              }

              v88 = *(*v81 + 1);
              if (v84.u32[0] > 1uLL)
              {
                if (v88 >= *&v82)
                {
                  v88 %= *&v82;
                }
              }

              else
              {
                v88 &= *&v82 - 1;
              }

              if (v88 != v83)
              {
LABEL_107:
                *(*v50 + 8 * v83) = 0;
              }
            }

            v89 = *v81;
            if (*v81)
            {
              v90 = v89[1];
              if (v84.u32[0] > 1uLL)
              {
                if (v90 >= *&v82)
                {
                  v90 %= *&v82;
                }
              }

              else
              {
                v90 &= *&v82 - 1;
              }

              if (v90 != v83)
              {
                *(*v50 + 8 * v90) = v86;
                v89 = *v81;
              }
            }

            *v86 = v89;
            *v81 = 0;
            --v50[3];
            *v284 = v81;
            *&v284[8] = v50;
            v284[16] = 1;
            *&v284[17] = 0;
            *&v284[20] = 0;
            std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,void *>>>>::~unique_ptr[abi:ne200100](v284);
          }
        }
      }

      v91 = v50 + 5;
      v92 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(v50 + 5, &__s);
      if (v92)
      {
        v93 = v50[6];
        v94 = v92[1];
        v95 = vcnt_s8(v93);
        v95.i16[0] = vaddlv_u8(v95);
        if (v95.u32[0] > 1uLL)
        {
          if (v94 >= *&v93)
          {
            v94 %= *&v93;
          }
        }

        else
        {
          v94 &= *&v93 - 1;
        }

        v145 = *(*v91 + 8 * v94);
        do
        {
          v146 = v145;
          v145 = *v145;
        }

        while (v145 != v92);
        if (v146 == v50 + 7)
        {
          goto LABEL_219;
        }

        v147 = v146[1];
        if (v95.u32[0] > 1uLL)
        {
          if (v147 >= *&v93)
          {
            v147 %= *&v93;
          }
        }

        else
        {
          v147 &= *&v93 - 1;
        }

        if (v147 != v94)
        {
LABEL_219:
          if (!*v92)
          {
            goto LABEL_220;
          }

          v148 = *(*v92 + 8);
          if (v95.u32[0] > 1uLL)
          {
            if (v148 >= *&v93)
            {
              v148 %= *&v93;
            }
          }

          else
          {
            v148 &= *&v93 - 1;
          }

          if (v148 != v94)
          {
LABEL_220:
            *(*v91 + 8 * v94) = 0;
          }
        }

        v149 = *v92;
        if (*v92)
        {
          v150 = *(v149 + 8);
          if (v95.u32[0] > 1uLL)
          {
            if (v150 >= *&v93)
            {
              v150 %= *&v93;
            }
          }

          else
          {
            v150 &= *&v93 - 1;
          }

          if (v150 != v94)
          {
            *(*v91 + 8 * v150) = v146;
            v149 = *v92;
          }
        }

        *v146 = v149;
        *v92 = 0;
        --v50[8];
        *v284 = v92;
        *&v284[8] = v50 + 5;
        v284[16] = 1;
        *&v284[17] = 0;
        *&v284[20] = 0;
        std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](v284);
      }

      *v284 = v312;
      std::vector<IOContextInfo>::__destroy_vector::operator()[abi:ne200100](v284);
      v43 = *v237;
    }

    v152 = v43[14];
    v151 = v43[15];
    if (v151)
    {
      atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v151);
    }

    if (v152)
    {
      v153 = *(&v256 + 1);
      if (v257 != *(&v256 + 1))
      {
        v154 = 0;
        v155 = 0;
        do
        {
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v281, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          }

          else
          {
            v281 = __s;
          }

          *v309 = *&v281.__r_.__value_.__l.__data_;
          v156 = v281.__r_.__value_.__r.__words[2];
          memset(&v281, 0, sizeof(v281));
          *&v310 = v156;
          *(&v310 + 1) = v155;
          LODWORD(v311) = 1;
          v157 = i[2];
          v158 = *(*v237 + 112);
          v159 = *(v153 + v154);
          v160 = *(v153 + v154 + 16);
          v269 = *(v153 + v154 + 32);
          *v267 = v159;
          v268 = v160;
          if (*(&v158 + 1))
          {
            atomic_fetch_add_explicit((*(&v158 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          *v284 = 2;
          *&v284[8] = 0x40C0000000000000uLL;
          *&v284[24] = v158;
          AMCP::Graph::Synchronized_Mixer_Manager::get_mixer(&v282, v157, v309, v267, v284);
          if (*&v284[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v284[32]);
          }

          v161 = *&v254[0];
          if (v155 >= (*(&v254[0] + 1) - *&v254[0]) >> 2)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v162 = (*(**i + 16))();
          AMCP::Core::Broker::fetch_core(&v270, v162, *(v161 + 4 * v155));
          if (!v270)
          {
            v190 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v190 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(0);
            }

            v192 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v191 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v191)
            {
              atomic_fetch_add_explicit(&v191->__shared_owners_, 1uLL, memory_order_relaxed);
              v193 = *v192;
              std::__shared_weak_count::__release_shared[abi:ne200100](v191);
            }

            else
            {
              v193 = *v192;
            }

            if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
            {
              *v284 = 136315650;
              *&v284[4] = "Device_Node_Factory.cpp";
              *&v284[12] = 1024;
              *&v284[14] = 256;
              *&v284[18] = 2080;
              *&v284[20] = "not (stream_core != nullptr)";
              _os_log_error_impl(&dword_1DE1F9000, v193, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v284, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v259);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string(v260, "", v199);
            std::logic_error::logic_error(&v262, v260);
            v262.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(v312, &v262);
            v313 = 0;
            *&v312[24] = 0;
            *&v314 = 0;
            DWORD2(v314) = -1;
            *v312 = &unk_1F5991430;
            *&v312[16] = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v284, v312);
            *&v284[32] = "std::vector<Node_Description> AMCP::IO_Core::Device_Node_Factory::create_output_nodes_for_streams(const std::vector<Terminal_Description> &, const std::vector<AMCP::Object_ID> &, const std::shared_ptr<Device_Node_State> &, AMCP::Object_ID, const std::shared_ptr<Device_Timebase_Factory> &)";
            *&v284[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
            *&v284[48] = 256;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v280);
          }

          v163 = i;
          AMCP::Core::Core::get_simple_required_property<1935894638u>(v270);
          v164 = *(*v237 + 96);
          v165 = *(*v237 + 104);
          if (v165)
          {
            atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v164 + 128))(&v263);
          if (v165)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v165);
          }

          *v284 = *v267;
          *&v284[16] = v268;
          *&v284[32] = v269;
          *v260 = v263;
          *&v260[16] = v264;
          v261 = v265;
          v166 = v282.__imp_.__imp_;
          v258 = v282;
          if (v282.__imp_.__imp_)
          {
            atomic_fetch_add_explicit(v282.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
          }

          AMCP::IO_Core::Stream_Connection::Stream_Connection(v312, v309, v155, 0, v284, v260, &v258);
          if (v258.__imp_.__imp_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v258.__imp_.__imp_);
          }

          v167 = *v237;
          if (SBYTE7(v310) < 0)
          {
            std::string::__init_copy_ctor_external(v284, v309[0], v309[1]);
          }

          else
          {
            *v284 = *v309;
            *&v284[16] = v310;
          }

          *&v284[24] = *(&v310 + 1);
          *&v284[32] = v311;
          *&v284[40] = *v312;
          v168 = *&v312[16];
          memset(v312, 0, 24);
          *&v284[56] = v168;
          *&v285 = *&v312[24];
          DWORD2(v285) = v313;
          v286 = v314;
          v287 = v315;
          v288 = v316;
          v289 = v317;
          v290 = v318;
          v318 = 0uLL;
          v291 = v319;
          v292 = v320;
          v293 = v321;
          v321 = 0uLL;
          v296 = v324;
          v294 = v322;
          v295 = v323;
          v297 = v325;
          v325 = 0uLL;
          v298 = v326;
          v326 = 0uLL;
          LOBYTE(v299) = 0;
          v302 = 0;
          if (v330 == 1)
          {
            v299 = v327;
            v300 = v328;
            v301 = v329;
            v329 = 0uLL;
            v302 = 1;
          }

          v303 = v331;
          v331 = 0uLL;
          v304 = v332;
          v305 = v333;
          v306 = v334;
          v307 = v335;
          v335 = 0uLL;
          v169 = v336;
          v336 = 0;
          v308 = v169;
          std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>>::__emplace_unique_key_args<AMCP::Terminal_Identifier,std::pair<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>((v167 + 8), v284, v284);
          AMCP::IO_Core::Stream_Connection::~Stream_Connection(&v284[40]);
          i = v163;
          if ((v284[23] & 0x80000000) != 0)
          {
            operator delete(*v284);
          }

          AMCP::IO_Core::Stream_Connection::~Stream_Connection(v312);
          if (v271)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v271);
          }

          if (v166)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v166);
          }

          if (SBYTE7(v310) < 0)
          {
            operator delete(v309[0]);
          }

          ++v155;
          v153 = *(&v256 + 1);
          v154 += 104;
        }

        while (v155 < 0x4EC4EC4EC4EC4EC5 * ((v257 - *(&v256 + 1)) >> 3));
      }

      v170 = *(*v237 + 120);
      if (v170)
      {
        atomic_fetch_add_explicit((v170 + 8), 1uLL, memory_order_relaxed);
      }

      v171 = v237[1];
      if (v171)
      {
        atomic_fetch_add_explicit((v171 + 16), 1uLL, memory_order_relaxed);
      }

      std::allocate_shared[abi:ne200100]<AMCP::IO_Core::Device_Connection,std::allocator<AMCP::IO_Core::Device_Connection>,std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,0>(v267, v237);
    }

    v172 = 120;
    do
    {
      v173 = v172 - 24;
      *v284 = &v272 + v172;
      std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](v284);
      v172 = v173;
    }

    while (v173 != 72);
    if (v277 < 0)
    {
      operator delete(v276);
    }

    v36 = v229;
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v273) < 0)
    {
      operator delete(v272.__vftable);
    }

    std::vector<AMCP::Node_Description>::__vdeallocate(&v246.__r_.__value_.__l.__data_);
    v246 = v266;
    memset(&v266, 0, sizeof(v266));
    *v284 = &v266;
    std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](v284);
    std::vector<AMCP::Node_Description>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AMCP::Node_Description*>,std::__wrap_iter<AMCP::Node_Description*>>(&v247, *v248, v246.__r_.__value_.__l.__data_, v246.__r_.__value_.__l.__size_, 0xEEEEEEEEEEEEEEEFLL * ((v246.__r_.__value_.__l.__size_ - v246.__r_.__value_.__r.__words[0]) >> 3));
    *v284 = &v246;
    std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](v284);
LABEL_280:
    v36 += 4;
  }

  while (v36 != 8);
  *(v226 + 32) = 0;
  *v226 = 0u;
  *(v226 + 16) = 0u;
  if (&v247 != v226)
  {
    if (*v248 != v247)
    {
      v174 = 0xEEEEEEEEEEEEEEEFLL * ((*v248 - v247) >> 3);
      std::vector<AMCP::Node_Description>::__vdeallocate(v226);
      if (v174 <= 0x222222222222222)
      {
        v175 = 0xDDDDDDDDDDDDDDDELL * ((*(v226 + 16) - *v226) >> 3);
        if (v175 <= v174)
        {
          v175 = v174;
        }

        if (0xEEEEEEEEEEEEEEEFLL * ((*(v226 + 16) - *v226) >> 3) >= 0x111111111111111)
        {
          v176 = 0x222222222222222;
        }

        else
        {
          v176 = v175;
        }

        std::vector<AMCP::Node_Description>::__vallocate[abi:ne200100](v226, v176);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    std::__copy_impl::operator()[abi:ne200100]<AMCP::Node_Description *,AMCP::Node_Description *,AMCP::Node_Description *>(v247, *v248, 0);
    v178 = v177;
    for (j = *(v226 + 8); j != v178; std::allocator_traits<std::allocator<AMCP::Node_Description>>::destroy[abi:ne200100]<AMCP::Node_Description,void,0>(j))
    {
      j -= 120;
    }

    *(v226 + 8) = v178;
  }

  v181 = *v237;
  v180 = v237[1];
  if (v180)
  {
    atomic_fetch_add_explicit((v180 + 8), 1uLL, memory_order_relaxed);
  }

  v182 = *(v226 + 32);
  *(v226 + 24) = v181;
  *(v226 + 32) = v180;
  if (v182)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v182);
  }

  *v284 = &v247;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](v284);
  if (v250)
  {
    operator delete(v250);
  }

  if (v253)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v253);
  }

  for (k = 0; k != -48; k -= 24)
  {
    v184 = *(&v254[1] + k + 8);
    if (v184)
    {
      *(&v254[2] + k) = v184;
      operator delete(v184);
    }
  }

  for (m = 24; m != -24; m -= 24)
  {
    *v284 = &v255 + m;
    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](v284);
  }
}