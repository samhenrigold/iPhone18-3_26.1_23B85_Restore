void sub_1DE62BF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a30);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a19);
  std::runtime_error::~runtime_error(&a18);
  if (v31)
  {
    __cxa_free_exception(v30);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
  _Unwind_Resume(a1);
}

void HALS_IOUAUCDriver::SetPropertyData(HALS_IOUAUCDriver *this, const AudioObjectPropertyAddress *a2, unsigned int a3, const void *a4, size_t a5, const void *a6, size_t a7)
{
  v56 = *MEMORY[0x1E69E9840];
  *&v9 = *&a2->mSelector;
  *(&v9 + 1) = HIDWORD(*&a2->mSelector);
  v54 = v9;
  mElement = a2->mElement;
  input = a3;
  v55 = mElement;
  if (!a6)
  {
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (!v22)
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v44 = "serialize_qualifier_and_data";
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%s: Cannot serialize, data is null\n";
    goto LABEL_19;
  }

  if (!a7)
  {
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (!v22)
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v44 = "serialize_qualifier_and_data";
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%s: Cannot serialize, data size is 0\n";
    goto LABEL_19;
  }

  v13 = a7 + a5 + 16;
  v14 = __CFADD__(a7, a5 + 16);
  if (a5 >= 0xFFFFFFFFFFFFFFF0 || v14)
  {
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (!v22)
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    v44 = "serialize_qualifier_and_data";
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%s: Cannot serialize, data overflow\n";
LABEL_19:
    _os_log_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
LABEL_20:
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v22);
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
      caulk::string_from_4cc(&__p, a2->mSelector);
      v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v44 = "HALS_IOUAUCDriver.cpp";
      v45 = 1024;
      v46 = 210;
      v47 = 2080;
      v48 = v29;
      v49 = 1024;
      *v50 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to serialze qualifier and data %s, object id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v36, "Failed to serialze qualifier and data");
    std::runtime_error::runtime_error(&__p, &v36);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v50[2] = "void HALS_IOUAUCDriver::SetPropertyData(const AudioObjectPropertyAddress *, AudioObjectID, const void *, size_t, const void *, size_t)";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v52 = 210;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v18 = malloc_type_malloc(v13, 0xCFDE5B77uLL);
  v19 = v18;
  *v18 = a5;
  v18[1] = a7;
  v20 = v18 + 2;
  if (a4 && a5)
  {
    memcpy(v18 + 2, a4, a5);
  }

  memcpy(v20 + a5, a6, a7);
  v21 = IOConnectCallMethod(*(this + 1), 0xFu, &input, 4u, v19, v13, 0, 0, 0, 0);
  if (v21)
  {
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v21);
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
      caulk::string_from_4cc(&__p, a2->mSelector);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v44 = "HALS_IOUAUCDriver.cpp";
      v45 = 1024;
      v46 = 216;
      v47 = 2080;
      v48 = p_p;
      v49 = 1024;
      *v50 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to set property data %s, object id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v36, "Failed to set property data");
    std::runtime_error::runtime_error(&__p, &v36);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v50[2] = "void HALS_IOUAUCDriver::SetPropertyData(const AudioObjectPropertyAddress *, AudioObjectID, const void *, size_t, const void *, size_t)";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v52 = 216;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  free(v19);
}

void sub_1DE62C63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a31);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a20);
  std::runtime_error::~runtime_error(&a19);
  if (v33)
  {
    __cxa_free_exception(v32);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a30);
  free(v31);
  _Unwind_Resume(a1);
}

BOOL HALS_IOUAUCDriver::GetHasProperty(HALS_IOUAUCDriver *this, const AudioObjectPropertyAddress *a2, unsigned int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  *&v5 = *&a2->mSelector;
  *(&v5 + 1) = HIDWORD(*&a2->mSelector);
  v35 = v5;
  mElement = a2->mElement;
  input = a3;
  v36 = mElement;
  output = 0;
  outputCnt = 1;
  v7 = IOConnectCallMethod(this, 0xBu, &input, 4u, 0, 0, &output, &outputCnt, 0, 0);
  if (v7)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      caulk::string_from_4cc(&__p, a2->mSelector);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v25 = "HALS_IOUAUCDriver.cpp";
      v26 = 1024;
      v27 = 260;
      v28 = 2080;
      v29 = p_p;
      v30 = 1024;
      *v31 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to get has property %s, object id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v15, "Failed to get has property");
    std::runtime_error::runtime_error(&__p, &v15);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v31[2] = "BOOL HALS_IOUAUCDriver::GetHasProperty(const AudioObjectPropertyAddress *, AudioObjectID)";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v33 = 260;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  return output != 0;
}

void sub_1DE62CA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a30);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a19);
  std::runtime_error::~runtime_error(&a18);
  if (v31)
  {
    __cxa_free_exception(v30);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
  _Unwind_Resume(a1);
}

BOOL HALS_IOUAUCDriver::GetIsPropertySettable(HALS_IOUAUCDriver *this, const AudioObjectPropertyAddress *a2, unsigned int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  *&v5 = *&a2->mSelector;
  *(&v5 + 1) = HIDWORD(*&a2->mSelector);
  v35 = v5;
  mElement = a2->mElement;
  input = a3;
  v36 = mElement;
  output = 0;
  outputCnt = 1;
  v7 = IOConnectCallMethod(this, 0xCu, &input, 4u, 0, 0, &output, &outputCnt, 0, 0);
  if (v7)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      caulk::string_from_4cc(&__p, a2->mSelector);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v25 = "HALS_IOUAUCDriver.cpp";
      v26 = 1024;
      v27 = 284;
      v28 = 2080;
      v29 = p_p;
      v30 = 1024;
      *v31 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to get is property settable %s, object_id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v15, "Failed to get is property settable");
    std::runtime_error::runtime_error(&__p, &v15);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v31[2] = "BOOL HALS_IOUAUCDriver::GetIsPropertySettable(const AudioObjectPropertyAddress *, AudioObjectID)";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v33 = 284;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  return output != 0;
}

void sub_1DE62CD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a30);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a19);
  std::runtime_error::~runtime_error(&a18);
  if (v31)
  {
    __cxa_free_exception(v30);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOUAUCDriver::get_device_timestamp_buffer_id(HALS_IOUAUCDriver *this, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  output = 0;
  outputCnt = 1;
  v2 = IOConnectCallMethod(this, 6u, input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (v2)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v20 = "HALS_IOUAUCDriver.cpp";
      v21 = 1024;
      v22 = 300;
      v23 = 2080;
      v24 = "ret != kIOReturnSuccess";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get timestamp buffer id", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v9, "Failed to get timestamp buffer id");
    std::runtime_error::runtime_error(&v10, &v9);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
    v10.__vftable = &unk_1F5992170;
    v11 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v10);
    v25 = "uint64_t HALS_IOUAUCDriver::get_device_timestamp_buffer_id(AudioObjectID)";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v27 = 300;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  return output;
}

void sub_1DE62D06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, std::runtime_error a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v23 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a22);
  std::runtime_error::~runtime_error(&a21);
  if (a13)
  {
    __cxa_free_exception(v22);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v23 - 125));
  _Unwind_Resume(a1);
}

uint64_t HALS_IOUAUCDriver::get_device_client_status_buffer_id(HALS_IOUAUCDriver *this, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  output = 0;
  outputCnt = 1;
  v2 = IOConnectCallMethod(this, 7u, input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (v2)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v20 = "HALS_IOUAUCDriver.cpp";
      v21 = 1024;
      v22 = 311;
      v23 = 2080;
      v24 = "ret != kIOReturnSuccess";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get client status buffer id", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v9, "Failed to get client status buffer id");
    std::runtime_error::runtime_error(&v10, &v9);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
    v10.__vftable = &unk_1F5992170;
    v11 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v10);
    v25 = "uint64_t HALS_IOUAUCDriver::get_device_client_status_buffer_id(AudioObjectID)";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v27 = 311;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  return output;
}

void sub_1DE62D370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, std::runtime_error a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v23 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a22);
  std::runtime_error::~runtime_error(&a21);
  if (a13)
  {
    __cxa_free_exception(v22);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v23 - 125));
  _Unwind_Resume(a1);
}

uint64_t HALS_IOUAUCDriver::get_device_io_status_buffer_id(HALS_IOUAUCDriver *this, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  output = 0;
  outputCnt = 1;
  v2 = IOConnectCallMethod(this, 0x10u, input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (v2)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v20 = "HALS_IOUAUCDriver.cpp";
      v21 = 1024;
      v22 = 322;
      v23 = 2080;
      v24 = "ret != kIOReturnSuccess";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get io status buffer id", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v9, "Failed to get io status buffer id");
    std::runtime_error::runtime_error(&v10, &v9);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
    v10.__vftable = &unk_1F5992170;
    v11 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v10);
    v25 = "uint64_t HALS_IOUAUCDriver::get_device_io_status_buffer_id(AudioObjectID)";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v27 = 322;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  return output;
}

void sub_1DE62D674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, std::runtime_error a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v23 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a22);
  std::runtime_error::~runtime_error(&a21);
  if (a13)
  {
    __cxa_free_exception(v22);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v23 - 125));
  _Unwind_Resume(a1);
}

uint64_t HALS_IOUAUCDriver::map_memory(HALS_IOUAUCDriver *this, uint64_t a2, void *a3, unint64_t *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v5 = MEMORY[0x1E12C07D0](this, a2, *MEMORY[0x1E69E9A60], &v21, &v20, 1);
  if (v5)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "HALS_IOUAUCDriver.cpp";
      v24 = 1024;
      v25 = 332;
      v26 = 2080;
      v27 = "ret != kIOReturnSuccess";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to map memory", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v12, "Failed to map memory");
    std::runtime_error::runtime_error(&v13, &v12);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v13.__vftable = &unk_1F5992170;
    v14 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v13);
    v28 = "mach_vm_address_t HALS_IOUAUCDriver::map_memory(uint64_t, IOOptionBits, size_t &)";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v30 = 332;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  result = v21;
  *a3 = v20;
  return result;
}

void sub_1DE62D96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, std::runtime_error a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v22 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a21);
  std::runtime_error::~runtime_error(&a20);
  if (a11)
  {
    __cxa_free_exception(v21);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v22 - 129));
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOUAUCDriver::unmap_memory(HALS_IOUAUCDriver *this, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  result = MEMORY[0x1E12C0830](this, a2, *MEMORY[0x1E69E9A60], a3);
  if (result)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v18 = "HALS_IOUAUCDriver.cpp";
      v19 = 1024;
      v20 = 340;
      v21 = 2080;
      v22 = "ret != kIOReturnSuccess";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to unmap memory", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v9, "Failed to unmap memory");
    std::runtime_error::runtime_error(&v10, &v9);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
    v10.__vftable = &unk_1F5992170;
    v11 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v10);
    v23 = "void HALS_IOUAUCDriver::unmap_memory(uint64_t, mach_vm_address_t)";
    v24 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v25 = 340;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  return result;
}

void sub_1DE62DC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, std::runtime_error a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v22 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a21);
  std::runtime_error::~runtime_error(&a20);
  if (a11)
  {
    __cxa_free_exception(v21);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v22 - 113));
  _Unwind_Resume(a1);
}

void HALS_IOUAUCDriver::get_string_property(HALS_IOUAUCDriver *this, uint64_t a2, __int128 a3, void *a4, void *inputStruct, size_t a6)
{
  v8 = a3;
  v45 = *MEMORY[0x1E69E9840];
  *&v35.mSelector = *(&a3 + 1);
  v35.mElement = a4;
  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(a2 + 4), &v35, a3, inputStruct, a6);
  v34 = PropertySize;
  if (!PropertySize)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v37 = "HALS_IOUAUCDriver.cpp";
      v38 = 1024;
      v39 = 360;
      v40 = 2080;
      v41 = "out_size == 0";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get_string_property size", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v23, "Failed to get_string_property size");
    std::runtime_error::runtime_error(&v28, &v23);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5992170;
    v29 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v28);
    v42 = "applesauce::CF::StringRef HALS_IOUAUCDriver::get_string_property(AudioObjectID, AudioObjectPropertyAddress, void *, size_t)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v44 = 360;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(buffer);
  }

  buf[0] = 0;
  std::vector<std::byte>::vector[abi:ne200100](buffer, PropertySize, buf);
  HALS_IOUAUCDriver::GetPropertyData(*(a2 + 4), &v35, v8, inputStruct, a6, buffer[0], &v34);
  errorString = 0;
  v12 = IOCFUnserializeBinary(buffer[0], v34, *MEMORY[0x1E695E478], 0, &errorString);
  if (!v12)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v37 = "HALS_IOUAUCDriver.cpp";
      v38 = 1024;
      v39 = 367;
      v40 = 2080;
      v41 = "(deserialized_object) == nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to deserialize string object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v24, "Failed to deserialize string object");
    std::runtime_error::runtime_error(&v28, &v24);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5992170;
    v29 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v28);
    v42 = "applesauce::CF::StringRef HALS_IOUAUCDriver::get_string_property(AudioObjectID, AudioObjectPropertyAddress, void *, size_t)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v44 = 367;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
  }

  *this = v12;
  v13 = CFGetTypeID(v12);
  if (v13 != CFStringGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (buffer[0])
  {
    buffer[1] = buffer[0];
    operator delete(buffer[0]);
  }
}

void sub_1DE62E1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, std::runtime_error a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v28);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v27);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void ***applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAUCDriver::get_custom_property_value(unsigned int,AudioObjectPropertyAddress,applesauce::CF::TypeRef)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(const void ***a1)
{
  v2 = **a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void ***applesauce::raii::v1::detail::ScopeGuard<HALS_IOUAUCDriver::set_custom_property_value(unsigned int,AudioObjectPropertyAddress,applesauce::CF::TypeRef,applesauce::CF::TypeRef)::$_1,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(const void ***a1)
{
  v2 = **a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void HALS_IOUAUCDriver::get_array_property(HALS_IOUAUCDriver *this, uint64_t a2, __int128 a3, void *a4, void *inputStruct, size_t a6)
{
  v8 = a3;
  v45 = *MEMORY[0x1E69E9840];
  *&v35.mSelector = *(&a3 + 1);
  v35.mElement = a4;
  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(a2 + 4), &v35, a3, inputStruct, a6);
  v34 = PropertySize;
  if (!PropertySize)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v37 = "HALS_IOUAUCDriver.cpp";
      v38 = 1024;
      v39 = 447;
      v40 = 2080;
      v41 = "out_size == 0";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get_array_property size", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v23, "Failed to get_array_property size");
    std::runtime_error::runtime_error(&v28, &v23);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5992170;
    v29 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v28);
    v42 = "applesauce::CF::ArrayRef HALS_IOUAUCDriver::get_array_property(AudioObjectID, AudioObjectPropertyAddress, void *, size_t)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v44 = 447;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(buffer);
  }

  buf[0] = 0;
  std::vector<std::byte>::vector[abi:ne200100](buffer, PropertySize, buf);
  HALS_IOUAUCDriver::GetPropertyData(*(a2 + 4), &v35, v8, inputStruct, a6, buffer[0], &v34);
  errorString = 0;
  v12 = IOCFUnserializeBinary(buffer[0], v34, *MEMORY[0x1E695E478], 0, &errorString);
  if (errorString)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
      v37 = "HALS_IOUAUCDriver.cpp";
      v38 = 1024;
      v39 = 454;
      v40 = 2080;
      v41 = "error != nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to deserialize get_array_property object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v24, "Failed to deserialize get_array_property object");
    std::runtime_error::runtime_error(&v28, &v24);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5992170;
    v29 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v28);
    v42 = "applesauce::CF::ArrayRef HALS_IOUAUCDriver::get_array_property(AudioObjectID, AudioObjectPropertyAddress, void *, size_t)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v44 = 454;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
  }

  *this = v12;
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    if (v13 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  if (buffer[0])
  {
    buffer[1] = buffer[0];
    operator delete(buffer[0]);
  }
}

void sub_1DE62E904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, std::runtime_error a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v28);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v27);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOUAUCDriver::perform_config_change(HALS_IOUAUCDriver *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  return IOConnectCallMethod(this, 4u, input, 3u, 0, 0, 0, 0, 0, 0);
}

void sub_1DE62EAB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ADS::SelectorControl::SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8, _DWORD *a9, uint64_t a10, unsigned __int8 a11)
{
  v12 = a7;
  v15 = a10;
  v59 = *MEMORY[0x1E69E9840];
  v16 = *a4;
  if (*a4 == 1668049771)
  {
    if (a7 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 297;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: wrong property data size for kAudioSelectorControlPropertyItemKind", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    if (a5 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 298;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: wrong qualifier data size for kAudioSelectorControlPropertyItemKind", buf, 0x12u);
      }

      v50 = __cxa_allocate_exception(0x10uLL);
      *v50 = off_1F5991DD8;
      v50[2] = 561211770;
    }

    v37 = a1 + 120;
    v38 = (*(*(a1 + 120) + 16))(a1 + 120, a2, a3);
    v39 = v38;
    v40 = *(a1 + 208);
    v41 = *(a1 + 216);
    if (v40 != v41)
    {
      v54 = v38;
      v42 = &v56[4];
      while (1)
      {
        *buf = *v40;
        v43 = OS::CF::UntypedObject::UntypedObject(v42, *(v40 + 16));
        *&v56[4] = &unk_1F5991188;
        v44 = *(v40 + 32);
        v57 = *(v40 + 24);
        v58 = v44;
        v45 = *a6;
        OS::CF::UntypedObject::~UntypedObject(v43);
        if (*buf == v45)
        {
          break;
        }

        v40 += 40;
        if (v40 == v41)
        {
          v40 = v41;
          break;
        }
      }

      v41 = *(a1 + 216);
      v39 = v54;
    }

    if (v40 == v41)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 304;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: ID not found", buf, 0x12u);
      }

      v52 = __cxa_allocate_exception(0x10uLL);
      *v52 = off_1F5991DD8;
      v52[2] = 560947818;
    }

    *(v40 + 28) = *a8;
    *a9 = 1;
    v46 = *(a1 + 116);
    *buf = 1668049771;
    *v56 = v46;
    std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
    if (v39)
    {
      (*(*v37 + 24))(a1 + 120);
    }
  }

  else if (v16 == 1935894894)
  {
    if (a7 != 8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 279;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: wrong property data size for kAudioSelectorControlPropertyItemName", buf, 0x12u);
      }

      v47 = __cxa_allocate_exception(0x10uLL);
      *v47 = off_1F5991DD8;
      v47[2] = 561211770;
    }

    if (a5 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 280;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: wrong qualifier data size for kAudioSelectorControlPropertyItemName", buf, 0x12u);
      }

      v49 = __cxa_allocate_exception(0x10uLL);
      *v49 = off_1F5991DD8;
      v49[2] = 561211770;
    }

    v25 = a1 + 120;
    v26 = (*(*(a1 + 120) + 16))(a1 + 120, a2, a3);
    v27 = v26;
    v28 = *(a1 + 208);
    v29 = *(a1 + 216);
    if (v28 != v29)
    {
      v53 = v26;
      v30 = &v56[4];
      while (1)
      {
        *buf = *v28;
        v31 = OS::CF::UntypedObject::UntypedObject(v30, *(v28 + 16));
        *&v56[4] = &unk_1F5991188;
        v32 = *(v28 + 32);
        v57 = *(v28 + 24);
        v58 = v32;
        v33 = *a6;
        OS::CF::UntypedObject::~UntypedObject(v31);
        if (*buf == v33)
        {
          break;
        }

        v28 += 40;
        if (v28 == v29)
        {
          v28 = v29;
          break;
        }
      }

      v29 = *(a1 + 216);
      v15 = a10;
      v27 = v53;
    }

    if (v28 == v29)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v56 = "ADS_SelectorControl.cpp";
        *&v56[8] = 1024;
        *&v56[10] = 286;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::SetPropertyData: ID not found", buf, 0x12u);
      }

      v51 = __cxa_allocate_exception(0x10uLL);
      *v51 = off_1F5991DD8;
      v51[2] = 560947818;
    }

    v34 = *(v28 + 16);
    v35 = *(a8 + 8);
    *(v28 + 16) = v35;
    if (v35)
    {
      CFRetain(v35);
    }

    if (v34)
    {
      CFRelease(v34);
    }

    *a9 = 1;
    v36 = *(a1 + 116);
    *buf = 1935894894;
    *v56 = v36;
    std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](v15, buf);
    if (v27)
    {
      (*(*v25 + 24))(a1 + 120);
    }
  }

  else if (v16 == 1935893353)
  {
    v17 = (a1 + 120);
    v18 = (*(*(a1 + 120) + 16))(a1 + 120, a2, a3);
    v19 = v17[11];
    for (i = v17[12]; v19 != i; v19 += 40)
    {
      if (v12 >= 4)
      {
        v21 = 0;
        v22 = a8;
        v23 = v12 >> 2;
        do
        {
          v24 = *v22++;
          v21 |= *v19 == v24;
          --v23;
        }

        while (v23);
      }

      else
      {
        v21 = 0;
      }

      *(v19 + 32) = v21 & 1;
    }

    if (v18)
    {
      (*(*v17 + 24))(v17);
    }
  }

  else
  {

    ADS::BaseObject::SetPropertyData(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

void sub_1DE62F348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ADS::SelectorControl::GetPropertyData(ADS::SelectorControl *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, unsigned int a5, int *a6, unsigned int a7, unsigned int *a8, char *a9)
{
  v9 = a8;
  v13 = a9;
  v52 = *MEMORY[0x1E69E9840];
  mSelector = a4->mSelector;
  if (a4->mSelector <= 1935893352)
  {
    if (mSelector != 1668049771)
    {
      if (mSelector == 1935892841)
      {
        v15 = a7 >> 2;
        v16 = *(this + 26);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 27) - v16) >> 3) < v15)
        {
          v15 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 27) - v16) >> 3);
        }

        if (v15)
        {
          v17 = v15;
          do
          {
            v18 = *v16;
            v16 += 10;
            *v13 = v18;
            v13 += 4;
            --v17;
          }

          while (v17);
          v19 = 4 * v15;
        }

        else
        {
          v19 = 0;
        }

        *a8 = v19;
        return;
      }

      goto LABEL_23;
    }

    if (a7 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v49 = "ADS_SelectorControl.cpp";
        *&v49[8] = 1024;
        *&v49[10] = 229;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: not enough space for the return value of kAudioSelectorControlPropertyItemKind", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    if (a5 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v49 = "ADS_SelectorControl.cpp";
        *&v49[8] = 1024;
        *&v49[10] = 230;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: qualifier for kAudioSelectorControlPropertyItemKind must be a UInt32 ID", buf, 0x12u);
      }

      v43 = __cxa_allocate_exception(0x10uLL);
      *v43 = off_1F5991DD8;
      v43[2] = 561211770;
    }

    v20 = this + 120;
    v28 = (*(*(this + 15) + 16))(this + 120, a2, a3);
    v29 = *(this + 26);
    v30 = *(this + 27);
    if (v29 != v30)
    {
      v31 = &v49[4];
      while (1)
      {
        *buf = *v29;
        v32 = OS::CF::UntypedObject::UntypedObject(v31, *(v29 + 16));
        *&v49[4] = &unk_1F5991188;
        v33 = *(v29 + 32);
        v50 = *(v29 + 24);
        v51 = v33;
        v34 = *a6;
        OS::CF::UntypedObject::~UntypedObject(v32);
        if (*buf == v34)
        {
          break;
        }

        v29 += 40;
        if (v29 == v30)
        {
          v29 = v30;
          break;
        }
      }

      v30 = *(this + 27);
    }

    if (v29 == v30)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v49 = "ADS_SelectorControl.cpp";
        *&v49[8] = 1024;
        *&v49[10] = 236;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: ID not found", buf, 0x12u);
      }

      v45 = 560947818;
    }

    else
    {
      if (*(v29 + 24))
      {
        *a9 = *(v29 + 28);
        *v9 = 4;
        if (!v28)
        {
          return;
        }

        goto LABEL_22;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v49 = "ADS_SelectorControl.cpp";
        *&v49[8] = 1024;
        *&v49[10] = 237;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  This item does not have a kind.", buf, 0x12u);
      }

      v45 = 1852797029;
    }

    v46 = __cxa_allocate_exception(0x10uLL);
    *v46 = off_1F5991DD8;
    v46[2] = v45;
  }

  if (mSelector == 1935893353)
  {
    v35 = this + 120;
    v36 = (*(*(this + 15) + 16))(this + 120, a2, a3);
    v37 = 0;
    if (a7)
    {
      v38 = *(this + 26);
      v39 = *(this + 27);
      do
      {
        if (v38 == v39)
        {
          break;
        }

        if (*(v38 + 32) == 1)
        {
          *&a9[4 * v37++] = *v38;
        }

        v38 += 40;
      }

      while (v37 < a7);
      v37 *= 4;
    }

    *v9 = v37;
    if (v36)
    {
      (*(*v35 + 24))(this + 120);
    }
  }

  else
  {
    if (mSelector != 1935894894)
    {
LABEL_23:

      ADS::Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }

    if (a7 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v49 = "ADS_SelectorControl.cpp";
        *&v49[8] = 1024;
        *&v49[10] = 214;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: not enough space for the return value of kAudioSelectorControlPropertyItemName", buf, 0x12u);
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      *v40 = off_1F5991DD8;
      v40[2] = 561211770;
    }

    if (a5 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v49 = "ADS_SelectorControl.cpp";
        *&v49[8] = 1024;
        *&v49[10] = 215;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: qualifier for kAudioSelectorControlPropertyItemName must be a UInt32 ID", buf, 0x12u);
      }

      v42 = __cxa_allocate_exception(0x10uLL);
      *v42 = off_1F5991DD8;
      v42[2] = 560947818;
    }

    v20 = this + 120;
    v21 = (*(*(this + 15) + 16))(this + 120, a2, a3);
    v22 = *(this + 26);
    v23 = *(this + 27);
    if (v22 != v23)
    {
      v47 = v9;
      v24 = &v49[4];
      while (1)
      {
        *buf = *v22;
        v25 = OS::CF::UntypedObject::UntypedObject(v24, *(v22 + 16));
        *&v49[4] = &unk_1F5991188;
        v26 = *(v22 + 32);
        v50 = *(v22 + 24);
        v51 = v26;
        v27 = *a6;
        OS::CF::UntypedObject::~UntypedObject(v25);
        if (*buf == v27)
        {
          break;
        }

        v22 += 40;
        if (v22 == v23)
        {
          v22 = v23;
          break;
        }
      }

      v23 = *(this + 27);
      v9 = v47;
    }

    if (v22 == v23)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v49 = "ADS_SelectorControl.cpp";
        *&v49[8] = 1024;
        *&v49[10] = 221;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::SelectorControl::GetPropertyData: ID not found", buf, 0x12u);
      }

      v44 = __cxa_allocate_exception(0x10uLL);
      *v44 = off_1F5991DD8;
      v44[2] = 560947818;
    }

    *a9 = CFStringCreateCopy(*MEMORY[0x1E695E478], *(v22 + 16));
    *v9 = 8;
    if (v21)
    {
LABEL_22:
      (*(*v20 + 24))(this + 120);
    }
  }
}

void sub_1DE62FC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ADS::SelectorControl::GetPropertyDataSize(ADS::SelectorControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6)
{
  mSelector = a4->mSelector;
  if (a4->mSelector > 1935892840)
  {
    switch(mSelector)
    {
      case 0x73636169u:
        return 858993460 * ((*(this + 27) - *(this + 26)) >> 3);
      case 0x7363696Eu:
        return 8;
      case 0x73636369u:
        v8 = *(this + 26);
        v9 = *(this + 27);
        if (v8 == v9)
        {
          return 0;
        }

        v10 = 0;
        v11 = v15;
        do
        {
          v12 = OS::CF::UntypedObject::UntypedObject(v11, *(v8 + 16));
          v15[0] = &unk_1F5991188;
          v13 = *(v8 + 24);
          v16 = *(v8 + 32);
          v15[2] = v13;
          v14 = v16;
          OS::CF::UntypedObject::~UntypedObject(v12);
          v10 += v14;
          v8 += 40;
        }

        while (v8 != v9);
        return (4 * v10);
    }
  }

  else if (mSelector == 1667591277 || mSelector == 1668049771 || mSelector == 1668506480)
  {
    return 4;
  }

  return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
}

uint64_t ADS::SelectorControl::IsPropertySettable(ADS::SelectorControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  v5 = 1;
  if (a4->mSelector > 1935892840)
  {
    if (mSelector == 1935894894 || mSelector == 1935893353)
    {
      return v5;
    }

    v6 = 1935892841;
  }

  else
  {
    if (mSelector == 1667591277)
    {
      return 0;
    }

    if (mSelector == 1668049771)
    {
      return v5;
    }

    v6 = 1668506480;
  }

  if (mSelector == v6)
  {
    return 0;
  }

  return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
}

BOOL ADS::SelectorControl::HasProperty(ADS::SelectorControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  if (a4->mSelector > 1935892840)
  {
    v5 = mSelector == 1935892841 || mSelector == 1935893353;
    v6 = 1935894894;
  }

  else
  {
    v5 = mSelector == 1667591277 || mSelector == 1668049771;
    v6 = 1668506480;
  }

  return v5 || mSelector == v6 || ADS::BaseObject::HasProperty(this, a2, a3, a4);
}

void ADS::SelectorControl::~SelectorControl(ADS::SelectorControl *this)
{
  ADS::SelectorControl::~SelectorControl(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984E80;
  v2 = (this + 208);
  std::vector<ADS::SelectorControl::SelectorItem>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));

  ADS::BaseObject::~BaseObject(this);
}

void std::vector<ADS::SelectorControl::SelectorItem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        OS::CF::UntypedObject::~UntypedObject((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const __CFArray *ADS::SelectorControl::parseItems(void *a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    result = OS::CF::ArrayBase<__CFArray const*>::GetSize(*(a2 + 8));
    if (i >= result)
    {
      break;
    }

    v39 = &unk_1F5991188;
    cf = 0;
    OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v36, a2, i);
    if (theDict)
    {
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v34, theDict, @"id");
      if (v35)
      {
        v6 = OS::CF::Number::GetValue<int>(v35, 0);
      }

      else
      {
        v6 = i;
      }

      v38 = v6;
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v32, theDict, @"name");
      if (v33)
      {
        OS::CF::String::AsStdString(&__p, v32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        OS::CF::String::String(v30, p_p);
        v8 = cf;
        cf = v31;
        v31 = v8;
        OS::CF::UntypedObject::~UntypedObject(v30);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&__p, theDict, @"selected");
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v30, theDict, @"kind");
        v9 = __p.__r_.__value_.__s.__data_[8];
        if (__p.__r_.__value_.__l.__size_)
        {
          v9 = OS::CF::Boolean::AsBool(__p.__r_.__value_.__l.__size_);
        }

        v42 = v9;
        if (v31)
        {
          HIDWORD(v41) = OS::CF::Number::GetValue<unsigned int>(v31, 0);
          v10 = 1;
        }

        else
        {
          v10 = 0;
        }

        LOBYTE(v41) = v10;
        v12 = a1[27];
        v11 = a1[28];
        if (v12 >= v11)
        {
          v15 = a1[26];
          v16 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v15) >> 3);
          v17 = v16 + 1;
          if (v16 + 1 > 0x666666666666666)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v18 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v15) >> 3);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x333333333333333)
          {
            v19 = 0x666666666666666;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (v19 <= 0x666666666666666)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v20 = 8 * ((v12 - v15) >> 3);
          *v20 = v38;
          OS::CF::UntypedObject::UntypedObject((v20 + 8), cf);
          v21 = a1[26];
          v22 = a1[27];
          v23 = 40 * v16 - (v22 - v21);
          *(v20 + 8) = &unk_1F5991188;
          *(v20 + 24) = v41;
          *(v20 + 32) = v42;
          if (v22 != v21)
          {
            v24 = 40 * v16 - 8 * ((v22 - v21) >> 3) + 8;
            v25 = v21;
            v26 = v20 - (v22 - v21);
            do
            {
              *v26 = *v25;
              *(v26 + 16) = *(v25 + 16);
              *(v25 + 16) = 0;
              *(v26 + 8) = &unk_1F5991188;
              v27 = *(v25 + 24);
              *(v26 + 32) = *(v25 + 32);
              *(v26 + 24) = v27;
              v25 += 40;
              v26 += 40;
              v24 += 40;
            }

            while (v25 != v22);
            do
            {
              OS::CF::UntypedObject::~UntypedObject((v21 + 8));
              v21 += 40;
            }

            while (v21 != v22);
          }

          v14 = v20 + 40;
          v28 = a1[26];
          a1[26] = v23;
          *(a1 + 27) = (v20 + 40);
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v12 = v38;
          OS::CF::UntypedObject::UntypedObject((v12 + 8), cf);
          *(v12 + 8) = &unk_1F5991188;
          v13 = v41;
          *(v12 + 32) = v42;
          *(v12 + 24) = v13;
          v14 = v12 + 40;
        }

        a1[27] = v14;
        OS::CF::UntypedObject::~UntypedObject(v30);
        OS::CF::UntypedObject::~UntypedObject(&__p);
      }

      OS::CF::UntypedObject::~UntypedObject(v32);
      OS::CF::UntypedObject::~UntypedObject(v34);
    }

    OS::CF::UntypedObject::~UntypedObject(v36);
    OS::CF::UntypedObject::~UntypedObject(&v39);
  }

  return result;
}

void sub_1DE63047C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OS::CF::UntypedObject *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  OS::CF::UntypedObject::~UntypedObject(&a14);
  OS::CF::UntypedObject::~UntypedObject(&a11);
  OS::CF::UntypedObject::~UntypedObject(&a16);
  OS::CF::UntypedObject::~UntypedObject(&a18);
  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject(a10);
  _Unwind_Resume(a1);
}

ADS::Control *ADS::SelectorControl::SelectorControl(ADS::Control *a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v8 = ADS::Control::Control(a1, a2, a3, a4, a5, 1936483188);
  *v8 = &unk_1F5984E80;
  *(v8 + 26) = 0;
  *(v8 + 27) = 0;
  *(v8 + 28) = 0;
  OS::CF::UntypedObject::UntypedObject(v10, *(a6 + 8));
  v10[0] = &unk_1F59910D0;
  ADS::SelectorControl::parseItems(a1, v10);
  OS::CF::UntypedObject::~UntypedObject(v10);
  return a1;
}

void sub_1DE630568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  OS::CF::UntypedObject::~UntypedObject(va);
  std::vector<ADS::SelectorControl::SelectorItem>::__destroy_vector::operator()[abi:ne200100](va1);
  ADS::Control::~Control(v3);
  _Unwind_Resume(a1);
}

void HALB_CFPlugIn::~HALB_CFPlugIn(HALB_CFPlugIn *this)
{
  HALB_CFPlugIn::~HALB_CFPlugIn(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984F80;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
      *(this + 1) = 0;
    }
  }
}

CFStringRef HALB_CFPlugIn::GetBundleID(HALB_CFPlugIn *this)
{
  if (!this)
  {
    return 0;
  }

  Bundle = CFPlugInGetBundle(this);
  if (!Bundle)
  {
    return 0;
  }

  return CFBundleGetIdentifier(Bundle);
}

double HALIO::HALIO_Graph_Builder::maybe_set_master_device(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 1)
  {
    v4 = *a3;
    if (*a3)
    {
      v6 = *a1;
      CFRetain(*a3);
      cf = v4;
      v7 = (*(*v6 + 24))(v6, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v7)
      {
        if (!*a3)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(exception);
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(&v10, *a3);
        if (*(a2 + 63) < 0)
        {
          operator delete(*(a2 + 40));
        }

        result = *&v10;
        *(a2 + 40) = v10;
        *(a2 + 56) = v11;
        *(a2 + 64) = 1;
      }
    }
  }

  return result;
}

void HALIO::HALIO_Graph_Builder::create_graph_description_from_aggregate_description(_OWORD *a1, uint64_t *a2, uint64_t a3, unsigned int a4, CFDictionaryRef *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47[0] = *MEMORY[0x1E69E9840];
  if (!*a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_53;
  }

  v10 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
  v43 = v10;
  if (!v10)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "Could not construct");
    __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v41, *a5, v10);
  CFRelease(v10);
  if (v42 != 1)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return;
  }

  if (!*a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_53;
  }

  v11 = CFStringCreateWithBytes(0, "stacked channel policy", 22, 0x8000100u, 0);
  v43 = v11;
  if (!v11)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v18, "Could not construct");
    __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = 0;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "Could not construct");
    __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v40, *a5, v11, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v11);
  if (!v40 || (applesauce::CF::convert_to<BOOL,0>(v40), !*a5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_53;
  }

  v12 = CFStringCreateWithBytes(0, "subdevices", 10, 0x8000100u, 0);
  v43 = v12;
  if (!v12)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "Could not construct");
    __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&theArray, *a5, v12);
  CFRelease(v12);
  if (v39 == 1)
  {
    if (!theArray)
    {
      goto LABEL_49;
    }

    v13 = CFArrayGetCount(theArray) != 0;
  }

  else
  {
    v13 = 0;
  }

  if (!*a5)
  {
LABEL_49:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_53;
  }

  v14 = CFStringCreateWithBytes(0, "taps", 4, 0x8000100u, 0);
  v43 = v14;
  if (!v14)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v21, "Could not construct");
    __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef>(&v36, *a5, v14);
  CFRelease(v14);
  if (v37 == 1)
  {
    if (!v36)
    {
LABEL_52:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_53:
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (CFArrayGetCount(v36))
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    if ((v15 & 1) == 0)
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
      if (v36)
      {
        CFRelease(v36);
      }

      goto LABEL_32;
    }

LABEL_27:
    if (v41)
    {
      applesauce::CF::convert_to<std::string,0>(&v25, v41);
      v27 = 0;
      v28 = v25;
      v29 = v26;
      v25 = 0uLL;
      v26 = 0;
      v30 = 0x100000000;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      AMCP::Node_Description::Node_Description(&v43, &v27);
      v23 = 0uLL;
      v24 = 0;
      cf = &v23;
      LOBYTE(v46) = 0;
      operator new();
    }

    goto LABEL_52;
  }

  if (v13)
  {
    goto LABEL_27;
  }

  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
LABEL_32:
  if (v39 == 1 && theArray)
  {
    CFRelease(theArray);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v42)
  {
    if (v41)
    {
      CFRelease(v41);
    }
  }
}

void sub_1DE633FFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALIO::HALIO_Graph_Builder::add_aggregate_subdevices_to_graph_description_gridways(AMCP::Log::AMCP_Scope_Registry *a1, void *a2, uint64_t a3, double *a4, uint64_t a5, int a6)
{
  v205 = *MEMORY[0x1E69E9840];
  if (a2[1] - *a2 != 120)
  {
    v107 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v107 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v109 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v108 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v108)
    {
      atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
      v110 = *v109;
      std::__shared_weak_count::__release_shared[abi:ne200100](v108);
    }

    else
    {
      v110 = *v109;
    }

    if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_290;
    }

    *valuePtr = 136315650;
    *&valuePtr[4] = "HALIO_Graph_Builder.cpp";
    *&valuePtr[12] = 1024;
    *&valuePtr[14] = 473;
    *&valuePtr[18] = 2080;
    *&valuePtr[20] = "in_out_graph.m_nodes.size() == 1";
    v117 = "%32s:%-5d Assertion Failed: %s Graph should have exactly 1 node";
LABEL_289:
    _os_log_error_impl(&dword_1DE1F9000, v110, OS_LOG_TYPE_ERROR, v117, valuePtr, 0x1Cu);
    goto LABEL_290;
  }

  v155 = *a2;
  if (**a2)
  {
    v111 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v111 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v113 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v112 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v112)
    {
      atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
      v110 = *v113;
      std::__shared_weak_count::__release_shared[abi:ne200100](v112);
    }

    else
    {
      v110 = *v113;
    }

    if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_290;
    }

    *valuePtr = 136315650;
    *&valuePtr[4] = "HALIO_Graph_Builder.cpp";
    *&valuePtr[12] = 1024;
    *&valuePtr[14] = 474;
    *&valuePtr[18] = 2080;
    *&valuePtr[20] = "in_out_graph.m_nodes[0].mNodeType == AMCP::Node_Type::IOContext";
    v117 = "%32s:%-5d Assertion Failed: %s The only node in the graph should be an IOC";
    goto LABEL_289;
  }

  v142 = a2 + 3;
  if (a2[3] != a2[4])
  {
    v114 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v114 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v116 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v115 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v115)
    {
      atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
      v110 = *v116;
      std::__shared_weak_count::__release_shared[abi:ne200100](v115);
    }

    else
    {
      v110 = *v116;
    }

    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315650;
      *&valuePtr[4] = "HALIO_Graph_Builder.cpp";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = 475;
      *&valuePtr[18] = 2080;
      *&valuePtr[20] = "in_out_graph.m_wires.empty()";
      v117 = "%32s:%-5d Assertion Failed: %s There should not be any wires in the graph yet";
      goto LABEL_289;
    }

LABEL_290:
    abort();
  }

  v166 = 0;
  v167 = 0;
  v168 = 0;
  if (!a6 && (*(a3 + 64) & 1) != 0)
  {
    goto LABEL_6;
  }

  v9 = *a3;
  if (!*a3)
  {
    goto LABEL_252;
  }

  Count = CFArrayGetCount(*a3);
  v11 = Count;
  v12 = *a3;
  if (*a3)
  {
    v13 = CFArrayGetCount(*a3);
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (!Count)
    {
      goto LABEL_6;
    }
  }

  v106 = 0;
  do
  {
    if (v9 == v12 && v13 == v106)
    {
      break;
    }

    applesauce::CF::details::at_to<applesauce::CF::ArrayRef>(valuePtr, v9, v106);
    HALIO::HALIO_Graph_Builder::connect_input_terminals(a1, valuePtr, (a3 + 16), v155, &v166, a4, a3 + 72);
    if (*valuePtr)
    {
      CFRelease(*valuePtr);
    }

    ++v106;
  }

  while (v11 != v106);
LABEL_6:
  theArray = *a3;
  if (*a3)
  {
    v154 = CFArrayGetCount(theArray);
    v153 = *a3;
    v143 = *a3 ? CFArrayGetCount(*a3) : 0;
    if (v154)
    {
      for (i = 0; i != v154; ++i)
      {
        if (theArray == v153 && i == v143)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::ArrayRef>(&v165, theArray, i);
        v14 = v165;
        v161 = v6;
        if (v165)
        {
          v15 = *(a3 + 64);
          v16 = *(a3 + 104);
          v17 = CFArrayGetCount(v165);
          v18 = v17;
          v19 = v165;
          if (v165)
          {
            v20 = CFArrayGetCount(v165);
            if (v18)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v20 = 0;
            if (v17)
            {
LABEL_21:
              v141 = v16;
              v21 = 0;
              if (a6)
              {
                v22 = 0;
              }

              else
              {
                v22 = v15;
              }

              v159 = v22;
              v23 = v7;
              while (v14 != v19 || v21 != v20)
              {
                applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(v194, v14, v21);
                if (!*v194)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v24 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
                *valuePtr = v24;
                if (!v24)
                {
                  v118 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v118, "Could not construct");
                  __cxa_throw(v118, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                cf.__r_.__value_.__r.__words[0] = 0;
                applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v187, *v194, v24, &cf);
                if (cf.__r_.__value_.__r.__words[0])
                {
                  CFRelease(cf.__r_.__value_.__l.__data_);
                }

                CFRelease(v24);
                v25 = *a1;
                v26 = v187.__r_.__value_.__r.__words[0];
                if (v187.__r_.__value_.__r.__words[0])
                {
                  CFRetain(v187.__r_.__value_.__l.__data_);
                }

                v193 = v26;
                v27 = (*(*v25 + 24))(v25, &v193);
                if (v193)
                {
                  CFRelease(v193);
                }

                v28 = *a1;
                AMCP::create_device_node_uid_from_device_uid_and_direction(&v187, 0, valuePtr);
                if (valuePtr[23] >= 0)
                {
                  v29 = valuePtr;
                }

                else
                {
                  v29 = *valuePtr;
                }

                if (v29)
                {
                  if (valuePtr[23] >= 0)
                  {
                    v30 = valuePtr[23];
                  }

                  else
                  {
                    v30 = *&valuePtr[8];
                  }

                  v192 = CFStringCreateWithBytes(0, v29, v30, 0x8000100u, 0);
                  if (!v192)
                  {
                    v120 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v120, "Could not construct");
                    __cxa_throw(v120, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                  }
                }

                else
                {
                  v192 = 0;
                }

                v31 = (*(*v28 + 32))(v28, &v192);
                if (v192)
                {
                  CFRelease(v192);
                }

                if ((valuePtr[23] & 0x80000000) != 0)
                {
                  operator delete(*valuePtr);
                }

                if ((*(**a1 + 16))(*a1, v27) & 1) != 0 || ((*(**a1 + 16))(*a1, v31))
                {
                  v32 = 1;
                }

                else
                {
                  (*(**a1 + 40))(valuePtr);
                  v32 = v203 == v204;
                  if (v203 != v204)
                  {
                    v33 = *(v203 + 12);
                    v152 = *(v203 + 8);
                    v161 = v33;
                    if (v152 != 1819304813 || (v33 & 0x40) != 0)
                    {
                      v23 = *v203;
                      v146 = *(v203 + 20);
                      v147 = *(v203 + 16);
                      v145 = *(v203 + 24);
                      v151 = *(v203 + 28);
                      v156 = 1;
                      v144 = *(v203 + 32);
                    }

                    else
                    {
                      v34 = 0x4EC4EC4EC4EC4EC5 * ((v204 - v203) >> 3);
                      if (v34 < 2)
                      {
                        v37 = *(v203 + 28);
                      }

                      else
                      {
                        v35 = v34 - 1;
                        v36 = v203 + 112;
                        v37 = *(v203 + 28);
                        do
                        {
                          if (*v36 != 1819304813)
                          {
                            break;
                          }

                          if ((*(v36 + 4) & 0x40) != 0)
                          {
                            break;
                          }

                          v37 += *(v36 + 20);
                          v36 += 104;
                          --v35;
                        }

                        while (v35);
                      }

                      v144 = *(v203 + 32);
                      v38 = *(v203 + 24) / *(v203 + 28);
                      if (v159)
                      {
                        v37 = 2;
                      }

                      v145 = v37 * v38;
                      v146 = *(v203 + 20);
                      v147 = v37 * v38 * v146;
                      v23 = *v203;
                      v156 = 1;
                      v151 = v37;
                      v152 = 1819304813;
                    }
                  }

                  for (j = 96; j != 48; j -= 24)
                  {
                    cf.__r_.__value_.__r.__words[0] = &valuePtr[j];
                    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&cf);
                  }

                  if (v202 < 0)
                  {
                    operator delete(v201);
                  }

                  if ((valuePtr[31] & 0x80000000) != 0)
                  {
                    operator delete(*&valuePtr[8]);
                  }
                }

                if (v26)
                {
                  CFRelease(v26);
                }

                if (*v194)
                {
                  CFRelease(*v194);
                }

                if (!v32)
                {
                  if (v156)
                  {
                    v7 = *a4;
                    if (*a4 == 0.0)
                    {
                      *a4 = v23;
                      v7 = v23;
                    }

                    v41 = v155[9];
                    v40 = v155[10];
                    v42 = 0x4EC4EC4EC4EC4EC5 * ((v40 - v41) >> 3);
                    v193 = v42;
                    v43 = v155[11];
                    if (v40 >= v43)
                    {
                      v46 = v42 + 1;
                      if (v42 + 1 > 0x276276276276276)
                      {
                        std::vector<void *>::__throw_length_error[abi:ne200100]();
                      }

                      v47 = 0x4EC4EC4EC4EC4EC5 * ((v43 - v41) >> 3);
                      if (2 * v47 > v46)
                      {
                        v46 = 2 * v47;
                      }

                      if (v47 >= 0x13B13B13B13B13BLL)
                      {
                        v48 = 0x276276276276276;
                      }

                      else
                      {
                        v48 = v46;
                      }

                      v200 = v155 + 9;
                      if (v48)
                      {
                        std::allocator<AMCP::Terminal_Description>::allocate_at_least[abi:ne200100](v48);
                      }

                      v49 = 104 * v42;
                      *valuePtr = 0;
                      *&valuePtr[8] = v49;
                      *&valuePtr[24] = 0;
                      *v49 = v7;
                      *(v49 + 8) = v152;
                      *(v49 + 12) = v161;
                      *(v49 + 16) = v147;
                      *(v49 + 20) = v146;
                      *(v49 + 24) = v145;
                      *(v49 + 28) = v151;
                      *(v49 + 32) = v144;
                      *(v49 + 56) = 0u;
                      *(v49 + 40) = 0u;
                      *(v49 + 72) = 0u;
                      *(v49 + 88) = 1;
                      *(v49 + 96) = 0;
                      *&valuePtr[16] = 104 * v42 + 104;
                      v45 = v155;
                      v50 = v155[9];
                      v51 = v155[10];
                      v52 = 104 * v42 + v50 - v51;
                      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>((v155 + 9), v50, v51, v49 + v50 - v51);
                      v53 = v155[9];
                      v155[9] = v52;
                      v54 = v155[11];
                      v160 = *&valuePtr[16];
                      *(v155 + 5) = *&valuePtr[16];
                      *&valuePtr[16] = v53;
                      *&valuePtr[24] = v54;
                      *valuePtr = v53;
                      *&valuePtr[8] = v53;
                      std::__split_buffer<AMCP::Terminal_Description>::~__split_buffer(valuePtr);
                      v44 = v160;
                      v42 = v193;
                    }

                    else
                    {
                      *v40 = v7;
                      *(v40 + 8) = v152;
                      *(v40 + 12) = v161;
                      *(v40 + 16) = v147;
                      *(v40 + 20) = v146;
                      *(v40 + 24) = v145;
                      *(v40 + 28) = v151;
                      *(v40 + 32) = v144;
                      *(v40 + 40) = 0u;
                      *(v40 + 56) = 0u;
                      *(v40 + 72) = 0u;
                      *(v40 + 88) = 1;
                      v44 = v40 + 104;
                      *(v40 + 96) = 0;
                      v45 = v155;
                    }

                    v45[10] = v44;
                    if (*(a3 + 48) <= v42 || ((*(*(a3 + 40) + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v42) & 1) != 0)
                    {
                      v148 = v165;
                      if (v165)
                      {
                        v138 = CFArrayGetCount(v165);
                        v137 = v165;
                        v136 = v165 ? CFArrayGetCount(v165) : 0;
                        if (v138)
                        {
                          v55 = 0;
                          v56 = (v161 >> 6) & 1;
                          if (v152 != 1819304813)
                          {
                            LOBYTE(v56) = 1;
                          }

                          v134 = v56;
                          do
                          {
                            if (v148 == v137 && v55 == v136)
                            {
                              break;
                            }

                            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v192, v148, v55);
                            if (!v192)
                            {
                              goto LABEL_311;
                            }

                            v57 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
                            *valuePtr = v57;
                            if (!v57)
                            {
                              v122 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v122, "Could not construct");
                              __cxa_throw(v122, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            cf.__r_.__value_.__r.__words[0] = 0;
                            applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v191, v192, v57, &cf);
                            if (cf.__r_.__value_.__r.__words[0])
                            {
                              CFRelease(cf.__r_.__value_.__l.__data_);
                            }

                            CFRelease(v57);
                            if (!v192)
                            {
                              goto LABEL_311;
                            }

                            v58 = CFStringCreateWithBytes(0, "latency-in", 10, 0x8000100u, 0);
                            cf.__r_.__value_.__r.__words[0] = v58;
                            if (!v58)
                            {
                              v121 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v121, "Could not construct");
                              __cxa_throw(v121, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            *valuePtr = 0;
                            *v194 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
                            if (!*v194)
                            {
                              v132 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v132, "Could not construct");
                              __cxa_throw(v132, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, v192, v58, v194);
                            v59 = *valuePtr;
                            if (!*valuePtr)
                            {
                              goto LABEL_311;
                            }

                            v140 = applesauce::CF::convert_to<int,0>(*valuePtr);
                            CFRelease(v59);
                            if (*v194)
                            {
                              CFRelease(*v194);
                            }

                            CFRelease(v58);
                            if (!v192)
                            {
                              goto LABEL_311;
                            }

                            v60 = CFStringCreateWithBytes(0, "don't pad", 9, 0x8000100u, 0);
                            cf.__r_.__value_.__r.__words[0] = v60;
                            if (!v60)
                            {
                              v130 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v130, "Could not construct");
                              __cxa_throw(v130, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            *valuePtr = 1;
                            *v194 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
                            if (!*v194)
                            {
                              v129 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v129, "Could not construct");
                              __cxa_throw(v129, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, v192, v60, v194);
                            v61 = *valuePtr;
                            if (!*valuePtr)
                            {
                              goto LABEL_311;
                            }

                            v62 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
                            CFRelease(v61);
                            if (*v194)
                            {
                              CFRelease(*v194);
                            }

                            CFRelease(v60);
                            if (!v192)
                            {
                              goto LABEL_311;
                            }

                            v63 = CFStringCreateWithBytes(0, "drift", 5, 0x8000100u, 0);
                            cf.__r_.__value_.__r.__words[0] = v63;
                            if (!v63)
                            {
                              v128 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v128, "Could not construct");
                              __cxa_throw(v128, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            *valuePtr = 0;
                            *v194 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
                            if (!*v194)
                            {
                              v127 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v127, "Could not construct");
                              __cxa_throw(v127, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, v192, v63, v194);
                            v64 = *valuePtr;
                            if (!*valuePtr)
                            {
                              goto LABEL_311;
                            }

                            v65 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
                            CFRelease(v64);
                            if (*v194)
                            {
                              CFRelease(*v194);
                            }

                            CFRelease(v63);
                            if (!v192)
                            {
                              goto LABEL_311;
                            }

                            v66 = CFStringCreateWithBytes(0, "drift algorithm", 15, 0x8000100u, 0);
                            cf.__r_.__value_.__r.__words[0] = v66;
                            if (!v66)
                            {
                              v126 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v126, "Could not construct");
                              __cxa_throw(v126, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            *valuePtr = 0;
                            *v194 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
                            if (!*v194)
                            {
                              v125 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v125, "Could not construct");
                              __cxa_throw(v125, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, v192, v66, v194);
                            v67 = *valuePtr;
                            if (!*valuePtr)
                            {
                              goto LABEL_311;
                            }

                            v68 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
                            CFRelease(v67);
                            if (*v194)
                            {
                              CFRelease(*v194);
                            }

                            CFRelease(v66);
                            if (!v192)
                            {
                              goto LABEL_311;
                            }

                            v69 = CFStringCreateWithBytes(0, "drift quality", 13, 0x8000100u, 0);
                            cf.__r_.__value_.__r.__words[0] = v69;
                            if (!v69)
                            {
                              v124 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v124, "Could not construct");
                              __cxa_throw(v124, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            *valuePtr = 64;
                            *v194 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
                            if (!*v194)
                            {
                              v123 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v123, "Could not construct");
                              __cxa_throw(v123, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(valuePtr, v192, v69, v194);
                            v70 = *valuePtr;
                            if (!*valuePtr)
                            {
LABEL_311:
                              v131 = __cxa_allocate_exception(0x10uLL);
                              std::runtime_error::runtime_error(v131, "Could not construct");
                              __cxa_throw(v131, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                            }

                            v71 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
                            CFRelease(v70);
                            if (*v194)
                            {
                              CFRelease(*v194);
                            }

                            CFRelease(v69);
                            v72 = *a1;
                            v73 = v191;
                            if (v191)
                            {
                              CFRetain(v191);
                            }

                            v190 = v73;
                            v74 = (*(*v72 + 24))(v72, &v190);
                            if (v190)
                            {
                              CFRelease(v190);
                            }

                            v75 = *a1;
                            AMCP::create_device_node_uid_from_device_uid_and_direction(&v191, 0, valuePtr);
                            v76 = valuePtr[23] >= 0 ? valuePtr : *valuePtr;
                            if (v76)
                            {
                              if (valuePtr[23] >= 0)
                              {
                                v77 = valuePtr[23];
                              }

                              else
                              {
                                v77 = *&valuePtr[8];
                              }

                              v189 = CFStringCreateWithBytes(0, v76, v77, 0x8000100u, 0);
                              if (!v189)
                              {
                                v133 = __cxa_allocate_exception(0x10uLL);
                                std::runtime_error::runtime_error(v133, "Could not construct");
                                __cxa_throw(v133, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                              }
                            }

                            else
                            {
                              v189 = 0;
                            }

                            v78 = (*(*v75 + 32))(v75, &v189);
                            if (v189)
                            {
                              CFRelease(v189);
                            }

                            if ((valuePtr[23] & 0x80000000) != 0)
                            {
                              operator delete(*valuePtr);
                            }

                            if (((*(**a1 + 16))(*a1, v74) & 1) == 0 && ((*(**a1 + 16))(*a1, v78) & 1) == 0)
                            {
                              (*(**a1 + 40))(valuePtr);
                              if (v203 != v204)
                              {
                                if (v134)
                                {
                                  if (v7 == *v203 && v152 == *(v203 + 8) && v161 == *(v203 + 12) && v147 == *(v203 + 16) && v146 == *(v203 + 20) && v145 == *(v203 + 24) && v151 == *(v203 + 28) && *(v203 + 32) == v144)
                                  {
                                    LODWORD(cf.__r_.__value_.__l.__data_) = 0;
                                    v79 = v167;
                                    if (v167 >= v168)
                                    {
                                      v80 = std::vector<AMCP::Wire_Description>::__emplace_back_slow_path<std::string &,unsigned long &,std::string const&,int>(&v166, (v155 + 1), &v193, &valuePtr[8], &cf);
                                    }

                                    else
                                    {
                                      std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,int,AMCP::Wire_Description*>(v167, (v155 + 1), &v193, &valuePtr[8], &cf);
                                      v80 = (v79 + 192);
                                    }

                                    v167 = v80;
                                    *(v80 - 16) = v140;
                                    *(v80 - 12) = v65 == 0;
                                    *(v80 - 11) = v62 != 0;
                                    v97 = (*(**a1 + 104))();
                                    HALIO::Implementation::maybe_create_mono_mix_map(&cf, v97, v151, v141);
                                    v98 = *(v80 - 11);
                                    if (v98)
                                    {
                                      *(v80 - 10) = v98;
                                      operator delete(v98);
                                    }

                                    *(v80 - 88) = cf;
                                    v99 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                                    if ((v99 & 1) == 0)
                                    {
                                      AMCP::Log::AMCP_Scope_Registry::initialize(v98);
                                    }

                                    v101 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                                    v100 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                                    if (v100)
                                    {
                                      atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
                                      v102 = *v101;
                                      std::__shared_weak_count::__release_shared[abi:ne200100](v100);
                                    }

                                    else
                                    {
                                      v102 = *v101;
                                    }

                                    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                                    {
                                      if (*(v80 - 169) < 0)
                                      {
                                        std::string::__init_copy_ctor_external(&v172, *(v80 - 24), *(v80 - 23));
                                      }

                                      else
                                      {
                                        v172 = *(v80 - 8);
                                      }

                                      v173 = *(v80 - 21);
                                      v174 = *(v80 - 40);
                                      if (*(v80 - 129) < 0)
                                      {
                                        std::string::__init_copy_ctor_external(&v169, *(v80 - 19), *(v80 - 18));
                                      }

                                      else
                                      {
                                        v169 = *(v80 - 152);
                                      }

                                      v170 = *(v80 - 16);
                                      v171 = *(v80 - 30);
                                      cf = v172;
                                      memset(&v172, 0, sizeof(v172));
                                      v182 = v173;
                                      v183 = v174;
                                      v104 = v169.__r_.__value_.__r.__words[2];
                                      *&__p.__r_.__value_.__l.__data_ = *&v169.__r_.__value_.__l.__data_;
                                      memset(&v169, 0, sizeof(v169));
                                      v186 = v171;
                                      __p.__r_.__value_.__r.__words[2] = v104;
                                      v185 = v170;
                                      AMCP::Wire_Identifier_to_string(&v187, &cf.__r_.__value_.__l.__data_);
                                      v105 = &v187;
                                      if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                      {
                                        v105 = v187.__r_.__value_.__r.__words[0];
                                      }

                                      *v194 = 136315650;
                                      *&v194[4] = "HALIO_Graph_Builder.cpp";
                                      v195 = 1024;
                                      v196 = 443;
                                      v197 = 2080;
                                      v198 = v105;
                                      _os_log_debug_impl(&dword_1DE1F9000, v102, OS_LOG_TYPE_DEBUG, "%32s:%-5d -- %s", v194, 0x1Cu);
                                      if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
                                      {
                                        operator delete(v187.__r_.__value_.__l.__data_);
                                      }

                                      AMCP::Wire_Identifier::~Wire_Identifier(&cf.__r_.__value_.__l.__data_);
                                    }
                                  }
                                }

                                else
                                {
                                  v188 = 0;
                                  if (v151)
                                  {
                                    v81 = 0;
                                    v82 = 0;
                                    v135 = v65 == 0;
                                    v83 = v62 != 0;
                                    do
                                    {
                                      if (v82 >= 0x4EC4EC4EC4EC4EC5 * ((v204 - v203) >> 3))
                                      {
                                        break;
                                      }

                                      v84 = v203 + 104 * v82;
                                      if (*(v84 + 8) != 1819304813 || (*(v84 + 12) & 0x40) != 0)
                                      {
                                        break;
                                      }

                                      v85 = v167;
                                      if (v167 >= v168)
                                      {
                                        v86 = std::vector<AMCP::Wire_Description>::__emplace_back_slow_path<std::string &,unsigned long &,std::string const&,unsigned long &>(&v166, (v155 + 1), &v193, &valuePtr[8], &v188);
                                      }

                                      else
                                      {
                                        std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,unsigned long &,AMCP::Wire_Description*>(v167, (v155 + 1), &v193, &valuePtr[8], &v188);
                                        v86 = (v85 + 192);
                                      }

                                      v167 = v86;
                                      *(v86 - 16) = v140;
                                      *(v86 - 12) = v135;
                                      *(v86 - 11) = v83;
                                      v87 = (*(**a1 + 104))();
                                      HALIO::Implementation::maybe_create_mono_mix_map(&cf, v87, v151, v141);
                                      v88 = *(v86 - 11);
                                      if (v88)
                                      {
                                        *(v86 - 10) = v88;
                                        operator delete(v88);
                                      }

                                      *(v86 - 88) = cf;
                                      *(v86 - 10) = v68;
                                      *(v86 - 9) = v71;
                                      v89 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                                      if ((v89 & 1) == 0)
                                      {
                                        AMCP::Log::AMCP_Scope_Registry::initialize(v88);
                                      }

                                      v91 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                                      v90 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                                      if (v90)
                                      {
                                        atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
                                        v92 = *v91;
                                        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
                                      }

                                      else
                                      {
                                        v92 = *v91;
                                      }

                                      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
                                      {
                                        if (*(v86 - 169) < 0)
                                        {
                                          std::string::__init_copy_ctor_external(&v178, *(v86 - 24), *(v86 - 23));
                                        }

                                        else
                                        {
                                          v178 = *(v86 - 8);
                                        }

                                        v179 = *(v86 - 21);
                                        v180 = *(v86 - 40);
                                        if (*(v86 - 129) < 0)
                                        {
                                          std::string::__init_copy_ctor_external(&v175, *(v86 - 19), *(v86 - 18));
                                        }

                                        else
                                        {
                                          v175 = *(v86 - 152);
                                        }

                                        v176 = *(v86 - 16);
                                        v177 = *(v86 - 30);
                                        cf = v178;
                                        memset(&v178, 0, sizeof(v178));
                                        v182 = v179;
                                        v183 = v180;
                                        __p = v175;
                                        memset(&v175, 0, sizeof(v175));
                                        v186 = *(v86 - 30);
                                        v185 = *(v86 - 16);
                                        AMCP::Wire_Identifier_to_string(&v187, &cf.__r_.__value_.__l.__data_);
                                        v96 = &v187;
                                        if ((v187.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                        {
                                          v96 = v187.__r_.__value_.__r.__words[0];
                                        }

                                        *v194 = 136315650;
                                        *&v194[4] = "HALIO_Graph_Builder.cpp";
                                        v195 = 1024;
                                        v196 = 410;
                                        v197 = 2080;
                                        v198 = v96;
                                        _os_log_debug_impl(&dword_1DE1F9000, v92, OS_LOG_TYPE_DEBUG, "%32s:%-5d -- %s", v194, 0x1Cu);
                                        if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
                                        {
                                          operator delete(v187.__r_.__value_.__l.__data_);
                                        }

                                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                                        {
                                          operator delete(__p.__r_.__value_.__l.__data_);
                                        }

                                        if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
                                        {
                                          operator delete(cf.__r_.__value_.__l.__data_);
                                        }
                                      }

                                      if (*(v84 + 28))
                                      {
                                        v93 = 0;
                                        v94 = v86 - 112;
                                        do
                                        {
                                          if (v81 + v93 >= v151)
                                          {
                                            LODWORD(cf.__r_.__value_.__l.__data_) = -1;
                                          }

                                          else
                                          {
                                            LODWORD(cf.__r_.__value_.__l.__data_) = v81 + v93;
                                          }

                                          std::vector<unsigned int>::push_back[abi:ne200100](v94, &cf);
                                          ++v93;
                                          v95 = *(v84 + 28);
                                        }

                                        while (v93 < v95);
                                      }

                                      else
                                      {
                                        v95 = 0;
                                      }

                                      v81 += v95;
                                      v82 = ++v188;
                                    }

                                    while (v81 < v151);
                                  }
                                }
                              }

                              for (k = 96; k != 48; k -= 24)
                              {
                                cf.__r_.__value_.__r.__words[0] = &valuePtr[k];
                                std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&cf);
                              }

                              if (v202 < 0)
                              {
                                operator delete(v201);
                              }

                              if ((valuePtr[31] & 0x80000000) != 0)
                              {
                                operator delete(*&valuePtr[8]);
                              }

                              v73 = v191;
                            }

                            if (v73)
                            {
                              CFRelease(v73);
                            }

                            if (v192)
                            {
                              CFRelease(v192);
                            }

                            ++v55;
                          }

                          while (v55 != v138);
                        }
                      }
                    }
                  }

                  else
                  {
                    v7 = v23;
                  }

                  goto LABEL_82;
                }

                if (++v21 == v18)
                {
                  goto LABEL_81;
                }
              }

              goto LABEL_81;
            }
          }
        }

        v23 = v7;
LABEL_81:
        v156 = 0;
        *&v7 = *&v23 & 0xFFFFFFFFFFFFFF00;
LABEL_82:
        v6 = v161;
        if (v165)
        {
          CFRelease(v165);
        }
      }
    }
  }

LABEL_252:
  LOBYTE(v163) = 0;
  v164 = 0;
  if (*(a5 + 8) == 1)
  {
    std::construct_at[abi:ne200100]<applesauce::CF::StringRef,applesauce::CF::StringRef const&,applesauce::CF::StringRef*>(&v163, *a5);
    v164 = 1;
  }

  HALIO::HALIO_Graph_Builder::maybe_set_master_device(a1, v155, &v163);
  if (v164 == 1 && v163)
  {
    CFRelease(v163);
  }

  if (v142 != &v166)
  {
    std::vector<AMCP::Wire_Description>::__assign_with_size[abi:ne200100]<AMCP::Wire_Description*,AMCP::Wire_Description*>(v142, v166, v167, 0xAAAAAAAAAAAAAAABLL * ((v167 - v166) >> 6));
  }

  *valuePtr = &v166;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](valuePtr);
}

void sub_1DE636424(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void **std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<unsigned int>::__vallocate[abi:ne200100](v7, v11);
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 4;
        *v15 = v16;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

std::string *std::vector<AMCP::Wire_Description>::push_back[abi:ne200100](uint64_t a1, AMCP::Wire_Description *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 6);
    if (v7 + 1 > 0x155555555555555)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 6);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0xAAAAAAAAAAAAAALL)
    {
      v10 = 0x155555555555555;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](v10);
    }

    v16 = 0;
    v17 = 192 * v7;
    AMCP::Wire_Description::Wire_Description((192 * v7), a2);
    v18 = 192 * v7 + 192;
    v11 = *(a1 + 8);
    v12 = 192 * v7 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*>(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    v15 = v18;
    *(a1 + 8) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(&v16);
    v6 = v15;
  }

  else
  {
    result = AMCP::Wire_Description::Wire_Description(*(a1 + 8), a2);
    v6 = v4 + 192;
    *(a1 + 8) = v4 + 192;
  }

  *(a1 + 8) = v6;
  return result;
}

void sub_1DE636944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 3);
      *(a4 + 32) = *(v6 + 8);
      *(a4 + 24) = v8;
      v9 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 40) = v9;
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(v6 + 5) = 0;
      v10 = *(v6 + 8);
      *(a4 + 72) = *(v6 + 18);
      *(a4 + 64) = v10;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = v6[5];
      *(a4 + 96) = *(v6 + 12);
      *(v6 + 10) = 0;
      *(v6 + 11) = 0;
      *(v6 + 12) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = *(v6 + 104);
      *(a4 + 120) = *(v6 + 15);
      *(v6 + 13) = 0;
      *(v6 + 14) = 0;
      *(v6 + 15) = 0;
      v11 = v6[8];
      v12 = v6[9];
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 128) = v11;
      *(a4 + 144) = v12;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 168) = 0;
      *(a4 + 168) = *(v6 + 168);
      *(a4 + 184) = *(v6 + 23);
      *(v6 + 21) = 0;
      *(v6 + 22) = 0;
      *(v6 + 23) = 0;
      v6 += 12;
      a4 += 192;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<AMCP::Wire_Description>>::destroy[abi:ne200100]<AMCP::Wire_Description,void,0>(v5);
      v5 += 12;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 192;
    std::allocator_traits<std::allocator<AMCP::Wire_Description>>::destroy[abi:ne200100]<AMCP::Wire_Description,void,0>(v3 - 192);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<AMCP::Wire_Description>>::destroy[abi:ne200100]<AMCP::Wire_Description,void,0>(uint64_t a1)
{
  v5 = (a1 + 168);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    v4 = *a1;

    operator delete(v4);
  }
}

void HALIO::HALIO_Graph_Builder::connect_input_terminals(void *a1, const __CFArray **a2, void *a3, void *a4, uint64_t a5, double *a6, uint64_t a7)
{
  v138 = *MEMORY[0x1E69E9840];
  v96 = a4 + 12;
  v131 = 0x4EC4EC4EC4EC4EC5 * ((a4[13] - a4[12]) >> 3);
  theArray = *a2;
  if (*a2)
  {
    Count = CFArrayGetCount(theArray);
    v11 = *a2;
    v91 = v11;
    v90 = v11 ? CFArrayGetCount(v11) : 0;
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        if (theArray == v91 && i == v90)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v130, theArray, i);
        if (!v130)
        {
          goto LABEL_154;
        }

        v13 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
        valuePtr = v13;
        if (!v13)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        cf[0] = 0;
        applesauce::CF::at_or<applesauce::CF::StringRef,applesauce::CF::StringRef>(&v129, v130, v13, cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        CFRelease(v13);
        if (!v130)
        {
          goto LABEL_154;
        }

        v14 = CFStringCreateWithBytes(0, "latency-in", 10, 0x8000100u, 0);
        cf[0] = v14;
        if (!v14)
        {
          v79 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v79, "Could not construct");
          __cxa_throw(v79, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(valuePtr) = 0;
        v116[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v116[0])
        {
          v77 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v77, "Could not construct");
          __cxa_throw(v77, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v130, v14, v116);
        p_isa = &valuePtr->isa;
        if (!valuePtr)
        {
          goto LABEL_154;
        }

        v99 = applesauce::CF::convert_to<int,0>(valuePtr);
        CFRelease(p_isa);
        if (v116[0])
        {
          CFRelease(v116[0]);
        }

        CFRelease(v14);
        if (!v130)
        {
          goto LABEL_154;
        }

        v16 = CFStringCreateWithBytes(0, "don't pad", 9, 0x8000100u, 0);
        cf[0] = v16;
        if (!v16)
        {
          v84 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v84, "Could not construct");
          __cxa_throw(v84, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(valuePtr) = 1;
        v116[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v116[0])
        {
          v80 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v80, "Could not construct");
          __cxa_throw(v80, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v130, v16, v116);
        v17 = &valuePtr->isa;
        if (!valuePtr)
        {
          goto LABEL_154;
        }

        v18 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
        CFRelease(v17);
        if (v116[0])
        {
          CFRelease(v116[0]);
        }

        CFRelease(v16);
        if (!v130)
        {
          goto LABEL_154;
        }

        v19 = CFStringCreateWithBytes(0, "drift", 5, 0x8000100u, 0);
        cf[0] = v19;
        if (!v19)
        {
          v85 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v85, "Could not construct");
          __cxa_throw(v85, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(valuePtr) = 0;
        v116[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v116[0])
        {
          v81 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v81, "Could not construct");
          __cxa_throw(v81, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v130, v19, v116);
        v20 = &valuePtr->isa;
        if (!valuePtr)
        {
          goto LABEL_154;
        }

        v21 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
        CFRelease(v20);
        if (v116[0])
        {
          CFRelease(v116[0]);
        }

        CFRelease(v19);
        if (!v130)
        {
          goto LABEL_154;
        }

        v22 = CFStringCreateWithBytes(0, "drift algorithm", 15, 0x8000100u, 0);
        cf[0] = v22;
        if (!v22)
        {
          v86 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v86, "Could not construct");
          __cxa_throw(v86, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(valuePtr) = 0;
        v116[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v116[0])
        {
          v82 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v82, "Could not construct");
          __cxa_throw(v82, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v130, v22, v116);
        v23 = &valuePtr->isa;
        if (!valuePtr)
        {
          goto LABEL_154;
        }

        v98 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
        CFRelease(v23);
        if (v116[0])
        {
          CFRelease(v116[0]);
        }

        CFRelease(v22);
        if (!v130)
        {
          goto LABEL_154;
        }

        v24 = CFStringCreateWithBytes(0, "drift quality", 13, 0x8000100u, 0);
        cf[0] = v24;
        if (!v24)
        {
          v87 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v87, "Could not construct");
          __cxa_throw(v87, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(valuePtr) = 64;
        v116[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!v116[0])
        {
          v83 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v83, "Could not construct");
          __cxa_throw(v83, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&valuePtr, v130, v24, v116);
        v25 = &valuePtr->isa;
        if (!valuePtr)
        {
LABEL_154:
          v88 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v88, "Could not construct");
          __cxa_throw(v88, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v26 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
        CFRelease(v25);
        if (v116[0])
        {
          CFRelease(v116[0]);
        }

        CFRelease(v24);
        v27 = *a1;
        v28 = v129;
        if (v129)
        {
          CFRetain(v129);
        }

        v128 = v28;
        v29 = (*(*v27 + 24))(v27, &v128);
        if (v128)
        {
          CFRelease(v128);
        }

        v30 = *a1;
        AMCP::create_device_node_uid_from_device_uid_and_direction(&v129, 1, &valuePtr);
        v31 = (v121 & 0x80u) == 0 ? &valuePtr : valuePtr;
        if (v31)
        {
          if ((v121 & 0x80u) == 0)
          {
            v32 = v121;
          }

          else
          {
            v32 = v120;
          }

          v127 = CFStringCreateWithBytes(0, v31, v32, 0x8000100u, 0);
          if (!v127)
          {
            v89 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v89, "Could not construct");
            __cxa_throw(v89, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }

        else
        {
          v127 = 0;
        }

        v33 = (*(*v30 + 32))(v30, &v127);
        if (v127)
        {
          CFRelease(v127);
        }

        if (v121 < 0)
        {
          operator delete(valuePtr);
        }

        if (((*(**a1 + 16))(*a1, v29) & 1) == 0 && ((*(**a1 + 16))(*a1, v33) & 1) == 0)
        {
          (*(**a1 + 40))(&valuePtr);
          v118 = 0;
          if (v126 != v125)
          {
            v34 = 0;
            v93 = v21 == 0;
            v35 = v18 != 0;
            do
            {
              v36 = (*(**a1 + 56))(*a1, v29, 1, v34);
              if (v36)
              {
                LODWORD(cf[0]) = v36;
                v37 = *(a7 + 24);
                if (!v37)
                {
                  std::__throw_bad_function_call[abi:ne200100]();
                }

                if ((*(*v37 + 48))(v37, cf))
                {
                  if (0x4EC4EC4EC4EC4EC5 * ((v126 - v125) >> 3) <= v34)
                  {
                    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
                  }

                  v38 = (v125 + 104 * v34);
                  v39 = *v38;
                  *v116 = *(v38 + 1);
                  v117 = *(v38 + 3);
                  v40 = *a6;
                  if (*a6 == 0.0)
                  {
                    *a6 = v39;
                    v40 = v39;
                  }

                  v41 = a4[13];
                  v42 = a4[14];
                  if (v41 >= v42)
                  {
                    v44 = 0x4EC4EC4EC4EC4EC5 * ((v41 - *v96) >> 3);
                    v45 = v44 + 1;
                    if ((v44 + 1) > 0x276276276276276)
                    {
                      std::vector<void *>::__throw_length_error[abi:ne200100]();
                    }

                    v46 = 0x4EC4EC4EC4EC4EC5 * ((v42 - *v96) >> 3);
                    if (2 * v46 > v45)
                    {
                      v45 = 2 * v46;
                    }

                    if (v46 >= 0x13B13B13B13B13BLL)
                    {
                      v47 = 0x276276276276276;
                    }

                    else
                    {
                      v47 = v45;
                    }

                    v110 = v96;
                    if (v47)
                    {
                      std::allocator<AMCP::Terminal_Description>::allocate_at_least[abi:ne200100](v47);
                    }

                    v48 = 104 * v44;
                    cf[0] = 0;
                    cf[1] = v48;
                    *(&v109 + 1) = 0;
                    *v48 = v40;
                    *(v48 + 8) = *v116;
                    *(v48 + 24) = v117;
                    *(v48 + 56) = 0u;
                    *(v48 + 40) = 0u;
                    *(v48 + 72) = 0u;
                    *(v48 + 88) = 1;
                    *(v48 + 96) = 0;
                    *&v109 = 104 * v44 + 104;
                    v49 = a4[12];
                    v50 = a4[13];
                    v51 = 104 * v44 + v49 - v50;
                    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>(v96, v49, v50, v48 + v49 - v50);
                    v52 = a4[12];
                    a4[12] = v51;
                    v53 = a4[14];
                    v94 = v109;
                    *(a4 + 13) = v109;
                    *&v109 = v52;
                    *(&v109 + 1) = v53;
                    cf[0] = v52;
                    cf[1] = v52;
                    std::__split_buffer<AMCP::Terminal_Description>::~__split_buffer(cf);
                    v43 = v94;
                    v34 = v118;
                  }

                  else
                  {
                    *v41 = v40;
                    *(v41 + 8) = *v116;
                    *(v41 + 24) = v117;
                    *(v41 + 40) = 0u;
                    *(v41 + 56) = 0u;
                    *(v41 + 72) = 0u;
                    *(v41 + 88) = 1;
                    *(v41 + 96) = 0;
                    v43 = v41 + 104;
                  }

                  a4[13] = v43;
                  if (a3[1] <= v34 || ((*(*a3 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34) & 1) != 0)
                  {
                    v55 = *(a5 + 8);
                    v54 = *(a5 + 16);
                    if (v55 >= v54)
                    {
                      v58 = 0xAAAAAAAAAAAAAAABLL * ((v55 - *a5) >> 6);
                      v59 = v58 + 1;
                      if (v58 + 1 > 0x155555555555555)
                      {
                        std::vector<void *>::__throw_length_error[abi:ne200100]();
                      }

                      v60 = 0xAAAAAAAAAAAAAAABLL * ((v54 - *a5) >> 6);
                      if (2 * v60 > v59)
                      {
                        v59 = 2 * v60;
                      }

                      if (v60 >= 0xAAAAAAAAAAAAAALL)
                      {
                        v61 = 0x155555555555555;
                      }

                      else
                      {
                        v61 = v59;
                      }

                      v110 = a5;
                      if (v61)
                      {
                        std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](v61);
                      }

                      cf[0] = 0;
                      cf[1] = (192 * v58);
                      v109 = 192 * v58;
                      std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string const&,unsigned long &,std::string&,unsigned long &,AMCP::Wire_Description*>(192 * v58, &v120, &v118, (a4 + 1), &v131);
                      *&v109 = v109 + 192;
                      v62 = *(a5 + 8);
                      v63 = cf[1] + *a5 - v62;
                      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*>(a5, *a5, v62, v63);
                      v64 = *a5;
                      *a5 = v63;
                      v65 = *(a5 + 16);
                      v95 = v109;
                      *(a5 + 8) = v109;
                      *&v109 = v64;
                      *(&v109 + 1) = v65;
                      cf[0] = v64;
                      cf[1] = v64;
                      v56 = std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(cf);
                      v57 = v95;
                    }

                    else
                    {
                      v56 = std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string const&,unsigned long &,std::string&,unsigned long &,AMCP::Wire_Description*>(*(a5 + 8), &v120, &v118, (a4 + 1), &v131);
                      v57 = v55 + 192;
                    }

                    *(a5 + 8) = v57;
                    *(v57 - 64) = v99;
                    *(v57 - 48) = v93;
                    *(v57 - 44) = v35;
                    *(v57 - 40) = v98;
                    *(v57 - 36) = v26;
                    v66 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                    if ((v66 & 1) == 0)
                    {
                      AMCP::Log::AMCP_Scope_Registry::initialize(v56);
                    }

                    v68 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                    v67 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                    if (v67)
                    {
                      atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
                      v69 = *v68;
                      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
                    }

                    else
                    {
                      v69 = *v68;
                    }

                    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                    {
                      if (*(v57 - 169) < 0)
                      {
                        std::string::__init_copy_ctor_external(v106, *(v57 - 192), *(v57 - 184));
                      }

                      else
                      {
                        v70 = *(v57 - 192);
                        *&v106[16] = *(v57 - 176);
                        *v106 = v70;
                      }

                      v71 = *(v57 - 168);
                      v107 = *(v57 - 160);
                      *&v106[24] = v71;
                      if (*(v57 - 129) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v103, *(v57 - 152), *(v57 - 144));
                      }

                      else
                      {
                        v72 = *(v57 - 152);
                        v103.__r_.__value_.__r.__words[2] = *(v57 - 136);
                        *&v103.__r_.__value_.__l.__data_ = v72;
                      }

                      v73 = *(v57 - 128);
                      v105 = *(v57 - 120);
                      v104 = v73;
                      *cf = *v106;
                      v109 = *&v106[16];
                      memset(v106, 0, 24);
                      LODWORD(v110) = v107;
                      v74 = v103.__r_.__value_.__r.__words[2];
                      v111 = *&v103.__r_.__value_.__l.__data_;
                      memset(&v103, 0, sizeof(v103));
                      v114 = v105;
                      v112 = v74;
                      v113 = v104;
                      AMCP::Wire_Identifier_to_string(&__p, cf);
                      p_p = &__p;
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        p_p = __p.__r_.__value_.__r.__words[0];
                      }

                      *buf = 136315650;
                      v133 = "HALIO_Graph_Builder.cpp";
                      v134 = 1024;
                      v135 = 220;
                      v136 = 2080;
                      v137 = p_p;
                      _os_log_debug_impl(&dword_1DE1F9000, v69, OS_LOG_TYPE_DEBUG, "%32s:%-5d -- %s", buf, 0x1Cu);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v112) < 0)
                      {
                        operator delete(v111);
                      }

                      if (SBYTE7(v109) < 0)
                      {
                        operator delete(cf[0]);
                      }
                    }
                  }

                  ++v131;
                  v34 = v118;
                }
              }

              v118 = ++v34;
            }

            while (v34 < 0x4EC4EC4EC4EC4EC5 * ((v126 - v125) >> 3));
          }

          for (j = 96; j != 48; j -= 24)
          {
            cf[0] = &valuePtr + j;
            std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](cf);
          }

          if (v124 < 0)
          {
            operator delete(v123);
          }

          if (v122 < 0)
          {
            operator delete(v120);
          }

          v28 = v129;
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (v130)
        {
          CFRelease(v130);
        }
      }
    }
  }
}

void sub_1DE637C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::vector<AMCP::Wire_Description>::__assign_with_size[abi:ne200100]<AMCP::Wire_Description*,AMCP::Wire_Description*>(uint64_t *a1, AMCP::Wire_Description *a2, AMCP::Wire_Description *a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) < a4)
  {
    std::vector<AMCP::Wire_Description>::__vdeallocate(a1);
    if (a4 <= 0x155555555555555)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
      {
        v9 = 0x155555555555555;
      }

      else
      {
        v9 = v8;
      }

      std::vector<AMCP::Wire_Description>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 6) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Description *,AMCP::Wire_Description *,AMCP::Wire_Description *>(a2, a3, v7);
    v13 = v12;
    for (i = a1[1]; i != v13; std::allocator_traits<std::allocator<AMCP::Wire_Description>>::destroy[abi:ne200100]<AMCP::Wire_Description,void,0>(i))
    {
      i -= 192;
    }

    a1[1] = v13;
  }

  else
  {
    v11 = std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Description *,AMCP::Wire_Description *,AMCP::Wire_Description *>(a2, a2 + v10, v7);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*,AMCP::Wire_Description*,AMCP::Wire_Description*>(a1, v11, a3, a1[1]);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<AMCP::Wire_Description *,AMCP::Wire_Description *,AMCP::Wire_Description *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    v7 = a3 + v6;
    v8 = a1 + v6;
    std::string::operator=((a3 + v6), (a1 + v6));
    v9 = *(a1 + v6 + 32);
    *(v7 + 24) = *(a1 + v6 + 24);
    *(v7 + 32) = v9;
    std::string::operator=((a3 + v6 + 40), (a1 + v6 + 40));
    v10 = *(a1 + v6 + 72);
    *(v7 + 64) = *(a1 + v6 + 64);
    *(v7 + 72) = v10;
    if (a3 == a1)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 144);
      *(v7 + 160) = *(v8 + 160);
      *(v7 + 128) = v13;
      *(v7 + 144) = v14;
    }

    else
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v7 + 80), *(v8 + 80), *(v8 + 88), (*(v8 + 88) - *(v8 + 80)) >> 2);
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v7 + 104), *(v8 + 104), *(v8 + 112), (*(v8 + 112) - *(v8 + 104)) >> 2);
      v11 = *(v8 + 128);
      v12 = *(v8 + 144);
      *(v7 + 160) = *(v8 + 160);
      *(v7 + 128) = v11;
      *(v7 + 144) = v12;
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v7 + 168), *(v8 + 168), *(v8 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 176) - *(v8 + 168)) >> 3));
    }

    v6 += 192;
  }

  while (v8 + 192 != v5);
  return v5;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*,AMCP::Wire_Description*,AMCP::Wire_Description*>(int a1, AMCP::Wire_Description *a2, AMCP::Wire_Description *a3, std::string *this)
{
  if (a2 == a3)
  {
    return this;
  }

  v5 = a2;
  v6 = 0;
  v7 = this;
  do
  {
    AMCP::Wire_Description::Wire_Description(v7, v5);
    v5 = (v5 + 192);
    v7 += 8;
    v6 -= 192;
  }

  while (v5 != a3);
  return v7;
}

void std::vector<AMCP::Wire_Description>::__vdeallocate(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v1; std::allocator_traits<std::allocator<AMCP::Wire_Description>>::destroy[abi:ne200100]<AMCP::Wire_Description,void,0>(i))
    {
      i -= 192;
    }

    *(a1 + 8) = v1;
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<AMCP::Wire_Description>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,unsigned long &,AMCP::Wire_Description*>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v9 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a4, *(a4 + 8));
  }

  else
  {
    v16 = *a4;
  }

  v10 = *a5;
  v11 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  size = v17.__r_.__value_.__l.__size_;
  *a1 = v17.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 15) = *(&v17.__r_.__value_.__r.__words[1] + 7);
  *(a1 + 23) = v11;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a1 + 55) = *(&v16.__r_.__value_.__r.__words[1] + 7);
  v14 = v16.__r_.__value_.__l.__size_;
  *(a1 + 40) = v16.__r_.__value_.__r.__words[0];
  *(a1 + 48) = v14;
  *(a1 + 63) = v13;
  *(a1 + 64) = v10;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = xmmword_1DE757EF0;
  *(a1 + 156) = 64;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_1DE6382FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<AMCP::Wire_Description>::__emplace_back_slow_path<std::string &,unsigned long &,std::string const&,unsigned long &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6);
  v6 = v5 + 1;
  if (v5 + 1 > 0x155555555555555)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6) > v6)
  {
    v6 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v8 = 0x155555555555555;
  }

  else
  {
    v8 = v6;
  }

  v18 = a1;
  if (v8)
  {
    std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](v8);
  }

  v15 = 0;
  v16 = 192 * v5;
  std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,unsigned long &,AMCP::Wire_Description*>(192 * v5, a2, a3, a4, a5);
  v17 = 192 * v5 + 192;
  v9 = *(a1 + 8);
  v10 = 192 * v5 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(&v15);
  return v14;
}

void sub_1DE638450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *HALIO::Implementation::maybe_create_mono_mix_map(uint64_t *result, int a2, unsigned int a3, unint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 >= 2 && a2)
  {
    if (a4)
    {
      if (HIDWORD(a4))
      {
        v11 = a4 - 1;
        LODWORD(v12) = HIDWORD(a4) - 1;
        result[1] = 0;
        result[2] = 0;
        *result = 0;
        return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(result, &v11, &v12 + 1, 2uLL);
      }

      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(result);
      }

      v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = *v10;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        v7 = *v10;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315650;
        v12 = "HALIO_Graph_Builder.cpp";
        v13 = 1024;
        v14 = 32;
        v15 = 2080;
        v16 = "default_stereo_pair[1] > 0";
        goto LABEL_22;
      }
    }

    else
    {
      v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v4 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
        v12 = "HALIO_Graph_Builder.cpp";
        v13 = 1024;
        v14 = 31;
        v15 = 2080;
        v16 = "default_stereo_pair[0] > 0";
LABEL_22:
        _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Channel numbers are indexed starting from 1", &v11, 0x1Cu);
      }
    }

    abort();
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void AMCP::Wire_Identifier_to_string(std::string *this, const void **a2)
{
  AMCP::Terminal_Identifier_to_string(&v14, a2);
  v4 = std::string::insert(&v14, 0, "{ ", 2uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v15, " -> ", 4uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  AMCP::Terminal_Identifier_to_string(&__p, a2 + 5);
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

  v10 = std::string::append(&v16, p_p, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v17, " }", 2uLL);
  *this = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1DE6387B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,int,AMCP::Wire_Description*>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v9 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a4, *(a4 + 8));
  }

  else
  {
    v16 = *a4;
  }

  v10 = *a5;
  v11 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  size = v17.__r_.__value_.__l.__size_;
  *a1 = v17.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 15) = *(&v17.__r_.__value_.__r.__words[1] + 7);
  *(a1 + 23) = v11;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a1 + 55) = *(&v16.__r_.__value_.__r.__words[1] + 7);
  v14 = v16.__r_.__value_.__l.__size_;
  *(a1 + 40) = v16.__r_.__value_.__r.__words[0];
  *(a1 + 48) = v14;
  *(a1 + 63) = v13;
  *(a1 + 64) = v10;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = xmmword_1DE757EF0;
  *(a1 + 156) = 64;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_1DE638944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<AMCP::Wire_Description>::__emplace_back_slow_path<std::string &,unsigned long &,std::string const&,int>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6);
  v6 = v5 + 1;
  if (v5 + 1 > 0x155555555555555)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6) > v6)
  {
    v6 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v8 = 0x155555555555555;
  }

  else
  {
    v8 = v6;
  }

  v18 = a1;
  if (v8)
  {
    std::allocator<AMCP::Wire_Description>::allocate_at_least[abi:ne200100](v8);
  }

  v15 = 0;
  v16 = 192 * v5;
  std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string &,unsigned long &,std::string const&,int,AMCP::Wire_Description*>(192 * v5, a2, a3, a4, a5);
  v17 = 192 * v5 + 192;
  v9 = *(a1 + 8);
  v10 = 192 * v5 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Wire_Description>,AMCP::Wire_Description*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(&v15);
  return v14;
}

void sub_1DE638A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<AMCP::Wire_Description>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<AMCP::Wire_Description,std::string const&,unsigned long &,std::string&,unsigned long &,AMCP::Wire_Description*>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v9 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a4, *(a4 + 8));
  }

  else
  {
    v16 = *a4;
  }

  v10 = *a5;
  v11 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  size = v17.__r_.__value_.__l.__size_;
  *a1 = v17.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 15) = *(&v17.__r_.__value_.__r.__words[1] + 7);
  *(a1 + 23) = v11;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a1 + 55) = *(&v16.__r_.__value_.__r.__words[1] + 7);
  v14 = v16.__r_.__value_.__l.__size_;
  *(a1 + 40) = v16.__r_.__value_.__r.__words[0];
  *(a1 + 48) = v14;
  *(a1 + 63) = v13;
  *(a1 + 64) = v10;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = xmmword_1DE757EF0;
  *(a1 + 156) = 64;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_1DE638BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALIO::HALIO_Graph_Builder::Aggregate_Graph_Configuration::~Aggregate_Graph_Configuration(HALIO::HALIO_Graph_Builder::Aggregate_Graph_Configuration *this)
{
  std::__function::__value_func<BOOL ()>::~__value_func[abi:ne200100](this + 72);
  v2 = *(this + 5);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    operator delete(v3);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(const void **values, uint64_t a2)
{
  result = CFArrayCreate(0, values, (a2 - values) >> 3, MEMORY[0x1E695E9C8]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void AMCP::Portal::IPC::IO_Receiver::~IO_Receiver(AMCP::Portal::IPC::IO_Receiver *this)
{
  AMCP::Portal::IPC::IO_Receiver::~IO_Receiver(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984FC0;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](this + 120);
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>>>::~__hash_table(this + 80);
  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  caulk::mach::details::release_os_object(*(this + 1), v3);
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::semaphore_receiver>::__on_zero_shared(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 22));
  std::__function::__value_func<void ()(caulk::ipc::mapped_memory &)>::~__value_func[abi:ne200100]((a1 + 18));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 14));
  MEMORY[0x1E12C0DE0](a1 + 13);
  MEMORY[0x1E12C0DE0](a1 + 12);
  MEMORY[0x1E12C0DE0](a1 + 11);
  caulk::ipc::mapped_memory::reset((a1 + 8));
  caulk::ipc::mapped_memory::reset((a1 + 5));
  v2 = a1[4];
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__function::__value_func<void ()(caulk::ipc::mapped_memory &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::semaphore_receiver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::eventlink_receiver>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 168);
  std::__function::__value_func<void ()(caulk::ipc::mapped_memory &)>::~__value_func[abi:ne200100](a1 + 136);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 104);
  MEMORY[0x1E12C0DE0](a1 + 96);
  caulk::mach::details::release_os_object(*(a1 + 88), v2);
  caulk::ipc::mapped_memory::reset((a1 + 64));
  caulk::ipc::mapped_memory::reset((a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_emplace<caulk::ipc::synchronous_messenger::eventlink_receiver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5984FF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<caulk::mach::os_workgroup_managed>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Portal::IPC::IO_Receiver::register_buffer(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
  }

  v5 = v4;
  v6 = v5;
  v35 = v5;
  if (!v5 || MEMORY[0x1E12C2A30](v5) != MEMORY[0x1E69E9E80])
  {
    v7 = xpc_null_create();
    v8 = v35;
    v35 = v7;
  }

  *buf = &v35;
  *&buf[8] = "buffer shared memory";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v34, buf);
  v9 = v34;
  v11 = caulk::mach::details::retain_os_object(v9, v10);

  v33[1] = v11;
  caulk::mach::details::release_os_object(0, v12);
  *buf = &v35;
  *&buf[8] = "buffer device id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(v33, buf);
  LODWORD(v11) = applesauce::xpc::dyn_cast_or_default(v33, 0);
  *buf = &v35;
  *&buf[8] = "buffer client id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v32, buf);
  v13 = applesauce::xpc::dyn_cast_or_default(&v32, 0);
  *buf = &v35;
  *&buf[8] = "buffer stream id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v31, buf);
  v14 = applesauce::xpc::dyn_cast_or_default(&v31, 0);
  *buf = &v35;
  *&buf[8] = "buffer type";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v30, buf);
  v29[0] = v11;
  v29[1] = v13;
  v29[2] = v14;
  v29[3] = applesauce::xpc::dyn_cast_or_default(&v30, 0);
  v15 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::tuple<NSObject  {objcproto13OS_xpc_object}* {__strong},std::shared_ptr<caulk::ipc::mapped_memory>,void *>>>>::find<AMCP::Portal::IPC::shared_buffer_info_t>((a1 + 80), v29);
  if (!v15)
  {
    operator new();
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v15);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = *v17;
    AMCP::Log::Scope::get_os_log_t(*v17);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = *v17;
    AMCP::Log::Scope::get_os_log_t(*v17);
    objc_claimAutoreleasedReturnValue();
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "IO_Receiver.mm";
    *&buf[12] = 1024;
    *&buf[14] = 158;
    v37 = 2080;
    v38 = "m_shared_memory_map.find(buffer_key) != m_shared_memory_map.end()";
    _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s buffer key already exists in the map!", buf, 0x1Cu);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
  __cxa_allocate_exception(0x40uLL);
  std::runtime_error::runtime_error(&v21, "buffer key already exists in the map!");
  std::runtime_error::runtime_error(&v22, &v21);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = -1;
  v22.__vftable = &unk_1F5992170;
  v23 = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v22);
  v39 = "void AMCP::Portal::IPC::IO_Receiver::register_buffer(__strong xpc_object_t)";
  v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
  v41 = 158;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
}

void sub_1DE639A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(xpc_object_t *a1, uint64_t a2)
{
  v4 = **a2;
  v5 = AMCP::Log::Scope::get_os_log_t(v4);
  v6 = xpc_dictionary_get_value(v5, *(a2 + 8));

  v7 = v6;
  *a1 = v7;
  v8 = v7;
  if (!v7)
  {
    *a1 = xpc_null_create();
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::function<void ()(caulk::ipc::mapped_memory &)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(caulk::ipc::mapped_memory &)>::~__value_func[abi:ne200100](v7);
  return a1;
}

void sub_1DE639FB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_1::~$_1(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::tuple<caulk::thread::attributes,AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_1,std::tuple<>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 120);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 88);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v2 + 72);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1E12C1730](v2, 0x1032C40A80D4485);
  }

  return a1;
}

uint64_t caulk::thread_proxy<std::tuple<caulk::thread::attributes,AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_1,std::tuple<>>>(caulk::thread::attributes *a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v43 = a1;
  v1 = caulk::thread::attributes::apply_to_this_thread(a1);
  HIDWORD(v3) = 1098310496;
  LODWORD(v3) = *(v43 + 26);
  v4 = 24000000.0 / *(v43 + 12) * v3;
  v5 = v4;
  v6 = (v4 * 0.5);
  if (v6 <= 0x4B0)
  {
    v6 = 1200;
  }

  if (v6 >= 0x124F80)
  {
    v7 = 1200000;
  }

  else
  {
    v7 = v6;
  }

  if (v7 > v5)
  {
    caulk::mach::throw_if_mach_error(v1, v2);
  }

  v8 = *(v43 + 14);
  v9 = AMCP::Feature_Flags::access_event_link_oop_io(0, v2);
  if (v8)
  {
    if (v9)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "io receiver");
      if (SHIBYTE(v48) < 0)
      {
        std::string::__init_copy_ctor_external(v57, __p[0], __p[1]);
      }

      else
      {
        *v57 = *__p;
        *&v57[16] = v48;
      }

      v57[24] = 1;
      v58 = __PAIR64__(v7, v5);
      *v59 = v5;
      *&v59[4] = 0x100000001;
      v60 = 1;
      v61 = 1;
      v62 = 1;
      v12 = *(v43 + 14);
      v54.__vftable = (MEMORY[0x1E69E3C18] + 16);
      v54.__imp_.__imp_ = caulk::mach::details::retain_os_object(*(v12 + 8), v10);
      v13 = *(v12 + 41);
      v14 = *(v12 + 32);
      v55 = *(v12 + 16);
      *v56 = v14;
      *&v56[9] = v13;
      v15 = caulk::ipc::synchronous_messenger::eventlink_receiver::start();
      caulk::mach::os_workgroup_managed::~os_workgroup_managed(&v54);
      if (v57[24] == 1 && (v57[23] & 0x80000000) != 0)
      {
        operator delete(*v57);
      }

      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v15 & 0x100000000) == 0 || (v15 & 1) == 0)
      {
        v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v17 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v16);
        }

        v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          v20 = *v18;
          AMCP::Log::Scope::get_os_log_t(*v18);
          objc_claimAutoreleasedReturnValue();
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        else
        {
          v20 = *v18;
          AMCP::Log::Scope::get_os_log_t(*v18);
          objc_claimAutoreleasedReturnValue();
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *v57 = 136315650;
          *&v57[4] = "IO_Receiver.mm";
          *&v57[12] = 1024;
          *&v57[14] = 330;
          *&v57[18] = 2080;
          *&v57[20] = "receiver_start_result.value_or(false) != true";
          _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to start IO receiver", v57, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v53);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v46, "Failed to start IO receiver");
        std::runtime_error::runtime_error(__p, &v46);
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = -1;
        __p[0] = &unk_1F5992170;
        v48 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v57, __p);
        v58 = "auto AMCP::Portal::IPC::IO_Receiver::start_message_thread()::(anonymous class)::operator()() const";
        *v59 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
        *&v59[8] = 330;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v44);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "io receiver");
      if (SHIBYTE(v48) < 0)
      {
        std::string::__init_copy_ctor_external(v57, __p[0], __p[1]);
      }

      else
      {
        *v57 = *__p;
        *&v57[16] = v48;
      }

      v57[24] = 1;
      v58 = __PAIR64__(v7, v5);
      *v59 = v5;
      *&v59[4] = 0x100000001;
      v60 = 1;
      v61 = 1;
      v62 = 1;
      v21 = *(v43 + 14);
      v54.__vftable = (MEMORY[0x1E69E3C18] + 16);
      v54.__imp_.__imp_ = caulk::mach::details::retain_os_object(*(v21 + 8), v11);
      v22 = *(v21 + 41);
      v23 = *(v21 + 32);
      v55 = *(v21 + 16);
      *v56 = v23;
      *&v56[9] = v22;
      v24 = caulk::ipc::synchronous_messenger::semaphore_receiver::start();
      caulk::mach::os_workgroup_managed::~os_workgroup_managed(&v54);
      if (v57[24] == 1 && (v57[23] & 0x80000000) != 0)
      {
        operator delete(*v57);
      }

      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v24 & 0x100000000) == 0 || (v24 & 1) == 0)
      {
        v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v26 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v25);
        }

        v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          v29 = *v27;
          AMCP::Log::Scope::get_os_log_t(*v27);
          objc_claimAutoreleasedReturnValue();
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        else
        {
          v29 = *v27;
          AMCP::Log::Scope::get_os_log_t(*v27);
          objc_claimAutoreleasedReturnValue();
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *v57 = 136315650;
          *&v57[4] = "IO_Receiver.mm";
          *&v57[12] = 1024;
          *&v57[14] = 335;
          *&v57[18] = 2080;
          *&v57[20] = "receiver_start_result.value_or(false) != true";
          _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to start IO receiver", v57, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v53);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v46, "Failed to start IO receiver");
        std::runtime_error::runtime_error(__p, &v46);
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = -1;
        __p[0] = &unk_1F5992170;
        v48 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v57, __p);
        v58 = "auto AMCP::Portal::IPC::IO_Receiver::start_message_thread()::(anonymous class)::operator()() const";
        *v59 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
        *&v59[8] = 335;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v44);
      }
    }
  }

  else if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(&v54, "io receiver");
    if (SBYTE7(v55) < 0)
    {
      std::string::__init_copy_ctor_external(v57, v54.__vftable, v54.__imp_.__imp_);
    }

    else
    {
      *v57 = v54;
      *&v57[16] = v55;
    }

    v57[24] = 1;
    v58 = __PAIR64__(v7, v5);
    *v59 = v5;
    *&v59[4] = 0x100000001;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v30 = caulk::ipc::synchronous_messenger::eventlink_receiver::start();
    v31 = v30;
    if (v57[24] == 1 && (v57[23] & 0x80000000) != 0)
    {
      operator delete(*v57);
    }

    if (SBYTE7(v55) < 0)
    {
      operator delete(v54.__vftable);
    }

    if ((v31 & 0x100000000) == 0 || (v31 & 1) == 0)
    {
      v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v32 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v30);
      }

      v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        v35 = *v33;
        AMCP::Log::Scope::get_os_log_t(*v33);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      else
      {
        v35 = *v33;
        AMCP::Log::Scope::get_os_log_t(*v33);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *v57 = 136315650;
        *&v57[4] = "IO_Receiver.mm";
        *&v57[12] = 1024;
        *&v57[14] = 343;
        *&v57[18] = 2080;
        *&v57[20] = "receiver_start_result.value_or(false) != true";
        _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to start IO receiver", v57, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v44, "Failed to start IO receiver");
      std::runtime_error::runtime_error(&v54, &v44);
      *(&v55 + 1) = 0;
      *v56 = 0;
      *&v56[8] = 0;
      *&v56[16] = -1;
      v54.__vftable = &unk_1F5992170;
      *&v55 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v57, &v54);
      v58 = "auto AMCP::Portal::IPC::IO_Receiver::start_message_thread()::(anonymous class)::operator()() const";
      *v59 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
      *&v59[8] = 343;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v45);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v54, "io receiver");
    if (SBYTE7(v55) < 0)
    {
      std::string::__init_copy_ctor_external(v57, v54.__vftable, v54.__imp_.__imp_);
    }

    else
    {
      *v57 = v54;
      *&v57[16] = v55;
    }

    v57[24] = 1;
    v58 = __PAIR64__(v7, v5);
    *v59 = v5;
    *&v59[4] = 0x100000001;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v36 = caulk::ipc::synchronous_messenger::semaphore_receiver::start();
    v37 = v36;
    if (v57[24] == 1 && (v57[23] & 0x80000000) != 0)
    {
      operator delete(*v57);
    }

    if (SBYTE7(v55) < 0)
    {
      operator delete(v54.__vftable);
    }

    if ((v37 & 0x100000000) == 0 || (v37 & 1) == 0)
    {
      v39 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v39 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v36);
      }

      v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v41 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        v42 = *v40;
        AMCP::Log::Scope::get_os_log_t(*v40);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      else
      {
        v42 = *v40;
        AMCP::Log::Scope::get_os_log_t(*v40);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *v57 = 136315650;
        *&v57[4] = "IO_Receiver.mm";
        *&v57[12] = 1024;
        *&v57[14] = 348;
        *&v57[18] = 2080;
        *&v57[20] = "receiver_start_result.value_or(false) != true";
        _os_log_error_impl(&dword_1DE1F9000, v42, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to start IO receiver", v57, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v44, "Failed to start IO receiver");
      std::runtime_error::runtime_error(&v54, &v44);
      *(&v55 + 1) = 0;
      *v56 = 0;
      *&v56[8] = 0;
      *&v56[16] = -1;
      v54.__vftable = &unk_1F5992170;
      *&v55 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v57, &v54);
      v58 = "auto AMCP::Portal::IPC::IO_Receiver::start_message_thread()::(anonymous class)::operator()() const";
      *v59 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
      *&v59[8] = 348;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v45);
    }
  }

  std::unique_ptr<std::tuple<caulk::thread::attributes,AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_1,std::tuple<>>>::~unique_ptr[abi:ne200100](&v43);
  return 0;
}

void sub_1DE63ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::runtime_error a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, std::runtime_error a18, uint64_t a19, void *a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    if (a38 < 0)
    {
      operator delete(__p);
    }

    v42 = __cxa_begin_catch(exception_object);
    v43 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v43 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v42);
    }

    v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v45 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      v46 = *v44;
      AMCP::Log::Scope::get_os_log_t(*v44);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    else
    {
      v46 = *v44;
      AMCP::Log::Scope::get_os_log_t(*v44);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = *(v38 + 128);
      *(v40 - 144) = 136315650;
      *(v39 + 68) = "IO_Receiver.mm";
      *(v40 - 132) = 1024;
      *(v39 + 78) = 354;
      *(v40 - 126) = 1024;
      *(v40 - 124) = v47;
      _os_log_error_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception trying to start io receiver for device %u", (v40 - 144), 0x18u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE63A520);
  }

  _Unwind_Resume(exception_object);
}

void caulk::mach::throw_if_mach_error(caulk::mach *this, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *v6 = &unk_1F5985298;
  MEMORY[0x1E12C10C0](v5, 4, v6, "Constructing a thread with real time priority requires that the computation (quantum) is less than or equal to the constraint");
  std::error_category::~error_category(v6);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = std::runtime_error::what(v5);
    *v6 = 136315138;
    *&v6[4] = v2;
    _os_log_error_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Throwing: %s", v6, 0xCu);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = std::runtime_error::runtime_error(exception, v5);
  v4->__vftable = (MEMORY[0x1E69E5510] + 16);
  v4[1] = v5[1];
  __cxa_throw(v4, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
}

uint64_t std::__function::__func<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0,std::allocator<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0>,void ()(caulk::ipc::mapped_memory &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP6Portal3IPC11IO_Receiver20start_message_threadEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0,std::allocator<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0>,void ()(caulk::ipc::mapped_memory &)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, const BOOL *a2, __n128 a3)
{
  v63 = *MEMORY[0x1E69E9840];
  if (*(a2 + 1) <= 0x13FuLL)
  {
    a1 = CAAssertRtn();
LABEL_33:
    v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v36 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v39 = *v37;
      AMCP::Log::Scope::get_os_log_t(*v37);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    else
    {
      v39 = *v37;
      AMCP::Log::Scope::get_os_log_t(*v37);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IO_Receiver.mm";
      *&buf[12] = 1024;
      *&buf[14] = 192;
      *&buf[18] = 2080;
      *&buf[20] = "(payload_ptr) == nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO Payload data is null", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v49);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v42, "IO Payload data is null");
    std::runtime_error::runtime_error(&v43, &v42);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = -1;
    v43.__vftable = &unk_1F5992170;
    v44 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v43);
    *&v51 = "auto AMCP::Portal::IPC::IO_Receiver::start_message_thread()::(anonymous class)::operator()(caulk::ipc::mapped_memory &) const";
    *(&v51 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/IO_Receiver.mm";
    LODWORD(v52) = 192;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_33;
  }

  v4 = a1;
  if (AMCP::Feature_Flags::access_collect_io_perfdata(0, a2))
  {
    *(v3 + 312) = mach_absolute_time();
  }

  v5 = *v3;
  v6 = *(v3 + 8);
  v8 = *(v3 + 248);
  v7 = *(v3 + 252);
  LODWORD(v41) = *(v3 + 248);
  LODWORD(v40) = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 64);
  v11 = *(v3 + 96);
  v53 = *(v3 + 80);
  v54 = v11;
  v12 = *(v3 + 112);
  v13 = *(v3 + 128);
  v14 = *(v3 + 160);
  v57 = *(v3 + 144);
  v58 = v14;
  v55 = v12;
  v56 = v13;
  v15 = *(v3 + 176);
  v16 = *(v3 + 192);
  v17 = *(v3 + 224);
  v61 = *(v3 + 208);
  v62 = v17;
  v59 = v15;
  v60 = v16;
  v51 = v9;
  v52 = v10;
  v18 = *(v3 + 32);
  *buf = *(v3 + 16);
  *&buf[16] = v18;
  v19 = *(v3 + 240);
  v20 = *(v3 + 256);
  v21 = *(v3 + 260);
  v22 = *(v3 + 264);
  v23 = *(v3 + 268);
  v24 = *(v4 + 1);
  v25 = *(v24 + 48);
  v26 = *(v24 + 56);
  LODWORD(v42.__vftable) = *(v24 + 56);
  if (v5 <= 4)
  {
    if (v5 == 3)
    {
      kdebug_trace();
      v29 = (*(*v25 + 144))(v25, v26, v8, v3 + 280, v3 + 288, v3 + 296);
      kdebug_trace();
      goto LABEL_31;
    }

    if (v5 == 4)
    {
      v28 = (*(*v25 + 152))(v25, v26, v8, v6, v3 + 304, v3 + 305);
LABEL_15:
      v29 = v28;
      goto LABEL_31;
    }

LABEL_21:
    v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v29 = 1970171760;
    v34 = *(v32 + 8);
    v35 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v35 + 16) = 0;
    *(v35 + 20) = 16;
    *(v35 + 24) = "IO_Receiver.mm";
    *(v35 + 32) = 285;
    *v35 = &unk_1F59851B0;
    *(v35 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v34, v35);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    goto LABEL_31;
  }

  if (v5 == 5)
  {
    v27 = 160;
    goto LABEL_14;
  }

  if (v5 != 6)
  {
    if (v5 == 7)
    {
      v27 = 176;
LABEL_14:
      v28 = (*(*v25 + v27))(v25, v26, v8, v6, v19, buf);
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v43.__vftable = &v42;
  v43.__imp_.__imp_ = &v40;
  v44 = (v24 + 80);
  v45 = &v41;
  v30 = AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(AMCP::Portal::IPC::shared_buffer_type,unsigned int)#1}::operator()(&v43, v20, v21);
  v31 = AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(AMCP::Portal::IPC::shared_buffer_type,unsigned int)#1}::operator()(&v43, v22, v23);
  if (v6 == 1919513701 || v6 == 1919246692 || v6 == 1835628655)
  {
    kdebug_trace();
  }

  (*(*v25 + 160))(v25, LODWORD(v42.__vftable), v41, v6, v19, buf);
  v29 = (*(*v25 + 168))(v25, LODWORD(v42.__vftable), v40, v41, v6, v19, buf, v30, v31);
  (*(*v25 + 176))(v25, LODWORD(v42.__vftable), v41, v6, v19, buf);
  if (v6 == 1919513701 || v6 == 1919246692 || v6 == 1835628655)
  {
    kdebug_trace();
  }

LABEL_31:
  *(v3 + 272) = v29;
}

void sub_1DE63B700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, __int128 a20, uint64_t a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = *(v30 + 8);
    a30 = 16;
    *&a20 = "IO_Receiver.mm";
    DWORD2(a20) = 292;
    a23 = a19.__vftable;
    caulk::concurrent::messenger::enqueue_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>(v32, &a30, &a20);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE63B4A0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(AMCP::Portal::IPC::shared_buffer_type,unsigned int)#1}::operator()(unsigned int **a1, int a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v5 = a1[1];
    v6 = **a1;
    v8 = (a1 + 2);
    v7 = a1[2];
    v9 = *v8[1];
    v13 = v6;
    v14 = v9;
    v15 = *v5;
    v16 = 1;
  }

  else
  {
    if (a2 == 2)
    {
      v4 = a1[1];
      v13 = **a1;
      v14 = 0;
      v15 = *v4;
      v16 = 2;
    }

    else
    {
      v13 = **a1;
      v14 = 0;
      v15 = 0;
      v16 = a2;
    }

    v7 = a1[2];
  }

  v11 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>>>::find<AMCP::Portal::IPC::shared_buffer_info_t>(v7, &v13);
  if (!v11)
  {
LABEL_14:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = v11[4];
  if (!v12[1])
  {
    CAAssertRtn();
    goto LABEL_14;
  }

  return *v12 + a3;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5985260;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = a3[1];
    *(v7 + 24) = v8;
    *v7 = &unk_1F5985208;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>::perform(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = 136315906;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Caught exception while doing io message operation %llu, device id %u", &v10, 0x22u);
  }
}

void caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int,unsigned long long,unsigned int> &)#1},std::tuple<char const*,int,unsigned long long,unsigned int>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Unknown IO message command", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0::operator() const(caulk::ipc::mapped_memory &)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::__unordered_map_hasher<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::shared_buffer_info_t,std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>,std::equal_to<AMCP::Portal::IPC::shared_buffer_info_t>,std::hash<AMCP::Portal::IPC::shared_buffer_info_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::shared_buffer_info_t,std::shared_ptr<caulk::ipc::mapped_memory>>>>::find<AMCP::Portal::IPC::shared_buffer_info_t>(void *a1, unsigned int *a2)
{
  v4 = std::hash<AMCP::Portal::IPC::shared_buffer_info_t>::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v4 == v9)
      {
        if (*(i + 4) == *a2 && *(i + 5) == a2[1] && *(i + 6) == a2[2] && *(i + 7) == a2[3])
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t std::__function::__func<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0,std::allocator<AMCP::Portal::IPC::IO_Receiver::start_message_thread(void)::$_0>,void ()(caulk::ipc::mapped_memory &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5985130;
  a2[1] = v2;
  return result;
}

void HALS_IOContext_Manager::destroy_context_core_for_hal_object_id(HALS_IOContext_Manager *this, unsigned int a2)
{
  os_unfair_lock_lock(this + 4);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((this + 40), a2);
  v5 = mcp_object;
  if (mcp_object >> 32)
  {
    v15 = 0;
    AMCP::Core::Broker::fetch_core(&v13, *(this + 15), mcp_object);
    v6 = v13;
    if (v13)
    {
      AMCP::Core::Core::get_simple_required_property<1853188452u>(cf, v13);
      v7 = cf[0];
      v15 = cf[0];
    }

    else
    {
      v7 = 0;
    }

    v8 = *(this + 32);
    cf[0] = MEMORY[0x1E69E9820];
    cf[1] = 1174405120;
    cf[2] = ___ZN27HALS_IOContext_Manager_Impl38destroy_context_core_for_hal_object_idEj_block_invoke;
    cf[3] = &__block_descriptor_tmp_19063;
    cf[4] = this + 24;
    cf[5] = v6;
    v9 = v14;
    v11 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      CFRetain(v7);
    }

    v12 = v7;
    AMCP::Utility::Dispatch_Queue::async(v8, cf);
    HALS_IOContext_Manager_Impl::Object_Map::remove_object((this + 40), v5, a2);
    AMCP::Core::Broker::destroy_core(*(this + 15), v5);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_1DE63C04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  applesauce::CF::StringRef::~StringRef((v18 + 56));
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  applesauce::CF::StringRef::~StringRef((v19 - 72));
  os_unfair_lock_unlock(v16 + 4);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager::create_stream_info_for_device(HALS_IOContext_Manager *this, os_unfair_lock_s *a2, const HALS_IODevice *a3)
{
  os_unfair_lock_lock(a2 + 4);
  HALS_IOContext_Manager_Impl::create_stream_info_for_device(this, a3);

  os_unfair_lock_unlock(a2 + 4);
}

void HALS_IOContext_Manager::device_arrived(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, const __CFString **a4, void *a5, uint64_t a6)
{
  v6 = a6;
  v10 = a2;
  os_unfair_lock_lock(a1 + 4);
  v12 = *a4;
  if (v12)
  {
    CFRetain(v12);
  }

  v13 = v12;
  HALS_IOContext_Manager_Impl::device_arrived(&a1[6], v10, a3, &v13, a5, v6);
}

void sub_1DE63C1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  os_unfair_lock_unlock(v3 + 4);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager::device_died(uint64_t a1, unsigned int a2, uint64_t a3, const __CFString **a4)
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 16));
  v8 = *a4;
  if (v8)
  {
    CFRetain(v8);
  }

  cf = v8;
  std::mutex::lock((a1 + 192));
  v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v10 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v22 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "HALS_IOContext_Manager_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 495;
    *&buf[18] = 2080;
    *&buf[20] = v18;
    _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d device_died: %s", buf, 0x1Cu);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = HALS_IOContext_Manager_Impl::demand_driver_object_for_id((a1 + 24), a3);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((a1 + 40), a2);
  v16 = mcp_object;
  if (mcp_object >> 32)
  {
    v17 = *(a1 + 136);
    *buf = &unk_1F598CCA8;
    *&buf[8] = a1 + 24;
    *&buf[16] = v16 | (a2 << 32);
    *&buf[24] = buf;
    HALS_Graph_Manager::enqueue_config_change(v17, v14, v16, 1, buf);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](buf);
    HALS_IOContext_Manager_Impl::garbage_collect((a1 + 24));
  }

  std::mutex::unlock((a1 + 192));
  if (cf)
  {
    CFRelease(cf);
  }

  os_unfair_lock_unlock((a1 + 16));
}

void sub_1DE63C410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  __cxa_free_exception(v10);
  std::mutex::unlock((v9 + 192));
  applesauce::CF::StringRef::~StringRef(&a9);
  os_unfair_lock_unlock((v9 + 16));
  _Unwind_Resume(a1);
}

uint64_t **HALS_IOContext_Manager::get_hal_object_id_for_device_uid(uint64_t a1, const void **a2)
{
  os_unfair_lock_lock((a1 + 16));
  hal_object_id_for_device_uid = HALS_IOContext_Manager_Impl::get_hal_object_id_for_device_uid(*(a1 + 168), a2);
  os_unfair_lock_unlock((a1 + 16));
  return hal_object_id_for_device_uid;
}

uint64_t HALS_IOContext_Manager::has_engine_for_device(os_unfair_lock_s *this, const HALS_IODevice *a2)
{
  if (!AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    return 1;
  }

  os_unfair_lock_lock(this + 4);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[38]._os_unfair_lock_opaque, *(a2 + 4)) != 0;
  os_unfair_lock_unlock(this + 4);
  return v4;
}

void HALS_IOContext_Manager::create_engine_for_device(os_unfair_lock_s *this, const HALS_IODevice *a2)
{
  os_unfair_lock_lock(this + 4);
  HALS_IOContext_Manager_Impl::create_engine_for_device(&this[6], a2);

  os_unfair_lock_unlock(this + 4);
}

void HALS_IOContext_Manager::destroy_engine_for_device(os_unfair_lock_s *this, const HALS_IODevice *a2)
{
  if (AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    os_unfair_lock_lock(this + 4);
    HALS_IOContext_Manager_Impl::destroy_engine_for_device(&this[6], *(a2 + 4));

    os_unfair_lock_unlock(this + 4);
  }
}

void HALS_IOContext_Manager::pause_contexts_for_device(os_unfair_lock_s *this, HALS_IODevice *a2)
{
  os_unfair_lock_lock(this + 4);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object(&this[10], *(a2 + 4));
  if (mcp_object >> 32)
  {
    AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(v8, *&this[34]._os_unfair_lock_opaque, mcp_object);
    v7[0] = 0;
    v7[1] = 0;
    v6 = v7;
    AMCP::IO_Core::Graph_Manager::pause_iocontexts_for_timebases(*&this[34]._os_unfair_lock_opaque, v8, &v6);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZN13HALS_IODevice22set_paused_io_contextsERKNSt3__13setIjNS0_4lessIjEENS0_9allocatorIjEEEE_block_invoke;
    v9[3] = &__block_descriptor_tmp_10_20782;
    v9[4] = a2;
    v9[5] = &v6;
    v5 = (*(*a2 + 64))(a2);
    HALB_CommandGate::ExecuteCommand(v5, v9);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v7[0]);
    v9[0] = v8;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v9);
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_1DE63C70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void *a10)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a10);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a9);
  os_unfair_lock_unlock(v10 + 4);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager::resume_contexts_for_device(os_unfair_lock_s *this, HALS_IODevice *a2)
{
  os_unfair_lock_lock(this + 4);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object(&this[10], *(a2 + 4));
  if (mcp_object >> 32)
  {
    AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(v28, *&this[34]._os_unfair_lock_opaque, mcp_object);
    __p[0] = 0;
    __p[1] = __p;
    v38 = 0x4002000000;
    v39 = __Block_byref_object_copy__20790;
    v42[0] = 0;
    v42[1] = 0;
    v40 = __Block_byref_object_dispose__20791;
    v41 = v42;
    v31 = MEMORY[0x1E69E9820];
    v32 = 0x40000000;
    v33 = ___ZN13HALS_IODevice32get_and_clear_paused_io_contextsEv_block_invoke;
    v34 = &unk_1E8679560;
    v35 = __p;
    v36 = a2;
    v5 = (*(*a2 + 64))(a2);
    HALB_CommandGate::ExecuteCommand(v5, &v31);
    std::set<unsigned int>::set[abi:ne200100](&v26, __p[1] + 40);
    _Block_object_dispose(__p, 8);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v42[0]);
    v32 = 0;
    v33 = 0;
    v31 = &v32;
    v6 = v26;
    v8 = *&this[30]._os_unfair_lock_opaque;
    v7 = *&this[32]._os_unfair_lock_opaque;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = v7;
    if (v6 != v27)
    {
      v9 = &v32;
      while (1)
      {
        AMCP::Core::Broker::fetch_core(&v29, v8, *(v6 + 7));
        if (v29)
        {
          AMCP::Core::Core::get_simple_required_property<1853188452u>(&v43, v29);
          v10 = v43;
          if (!v43)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(__p, v43);
          CFRelease(v10);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "");
        }

        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        if (&v32 == v9 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v9[1].isa) & 0x80) != 0)
        {
          break;
        }

        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v9[1].isa, __p) & 0x80) != 0)
        {
          info = v9->info;
          v19 = info;
          v20 = v9;
          if (info)
          {
            do
            {
              data = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              data = v20->data;
              v15 = *data == v20;
              v20 = data;
            }

            while (!v15);
          }

          if (data == &v32 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, data + 4) & 0x80) != 0)
          {
            if (info)
            {
              v29 = data;
            }

            else
            {
              v29 = v9;
              data = &v9->info;
            }

            goto LABEL_25;
          }

LABEL_22:
          data = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v31, &v29, __p);
LABEL_25:
          v9 = *data;
          goto LABEL_26;
        }

        v29 = v9;
        v43 = v9;
LABEL_26:
        v17 = v9;
        if (!v9)
        {
          goto LABEL_38;
        }

        v21 = v9->info;
        if (v21)
        {
          do
          {
            v9 = v21;
            v21 = v21->isa;
          }

          while (v21);
        }

        else
        {
          do
          {
            v9 = v17[2];
            v15 = v9->isa == v17;
            v17 = v9;
          }

          while (!v15);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p[0]);
        }

        v22 = v6[1];
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
            v23 = v6[2];
            v15 = *v23 == v6;
            v6 = v23;
          }

          while (!v15);
        }

        v6 = v23;
        if (v23 == v27)
        {
          goto LABEL_54;
        }
      }

      isa = v9->isa;
      v12 = v9;
      if (v31 == v9)
      {
        goto LABEL_23;
      }

      v13 = v9->isa;
      v14 = v9;
      if (isa)
      {
        do
        {
          v12 = v13;
          v13 = v13->info;
        }

        while (v13);
      }

      else
      {
        do
        {
          v12 = v14->data;
          v15 = v12->isa == v14;
          v14 = v12;
        }

        while (v15);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v12[1].isa, __p) & 0x80) != 0)
      {
LABEL_23:
        if (!isa)
        {
          v29 = v9;
LABEL_38:
          operator new();
        }

        v29 = v12;
        data = &v12->info;
        goto LABEL_25;
      }

      goto LABEL_22;
    }

LABEL_54:
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    AMCP::IO_Core::Graph_Manager::resume_iocontexts_for_timebases(*&this[34]._os_unfair_lock_opaque, &v26, &v31);
    std::__tree<std::string>::destroy(v32);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v27[0]);
    __p[0] = v28;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_1DE63CBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, void *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::__tree<std::string>::destroy(a20);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a12);
  a11 = &a14;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a11);
  os_unfair_lock_unlock(v34 + 4);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager::hog_mode_owner_changed(os_unfair_lock_s *this, HALS_IODevice *a2, int a3)
{
  os_unfair_lock_lock(this + 4);
  if (a3 != -1)
  {
    mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object(&this[10], *(a2 + 4));
    if (mcp_object >> 32)
    {
      memset(v16, 0, sizeof(v16));
      v17 = 1065353216;
      v19 = 0;
      v20 = 0;
      v18 = 0;
      AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(&v11, *&this[34]._os_unfair_lock_opaque, mcp_object);
      v7 = v11;
      for (i = v12; v7 != i; v7 += 2)
      {
        v9 = *v7;
        v10 = v7[1];
        v14 = *v7;
        v15 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::__emplace_unique_key_args<std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase>>(v16, v9, &v14);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      v13 = &v11;
      std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v13);
      HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(&v13, &this[6], v16);
    }
  }

  os_unfair_lock_unlock(this + 4);
}

void sub_1DE63CEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(&a19);
  AMCP::Graph::Timebase_Set::~Timebase_Set((v27 - 112));
  os_unfair_lock_unlock(v26 + 4);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager::rebuild_engine_for_device(os_unfair_lock_s *this, const HALS_IODevice *a2)
{
  if (AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    os_unfair_lock_lock(this + 4);
    HALS_IOContext_Manager_Impl::create_engine_for_device(&this[6], a2);
    HALS_IOContext_Manager_Impl::create_stream_info_for_device(__p, a2);
    v4 = *(a2 + 4);
    v5 = *(a2 + 7);
    v6 = (*(*a2 + 216))(a2);
    cf = v6;
    if (v6)
    {
      v7 = CFGetTypeID(v6);
      if (v7 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v8 = (*(*a2 + 232))(a2);
    HALS_IOContext_Manager_Impl::device_arrived(&this[6], v4, v5, &cf, __p, v8 ^ 1);
  }
}

void sub_1DE63D0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v10 + 4);
  _Unwind_Resume(a1);
}

void std::default_delete<HALIO::HALIO_Graph_Builder>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContextHostedDSP::DSPStreamInstance::~DSPStreamInstance(HALS_IOContextHostedDSP::DSPStreamInstance *this)
{
  v2 = (this + 2024);
  v3 = *(this + 254);
  *v2 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v4 = *(this + 254);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  *(this + 166) = &unk_1F598DC40;
  v13 = (this + 2000);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v13);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((this + 1400));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 1376));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 1352));
  *(this + 166) = &unk_1F598DC90;
  if (*(this + 1344) == 1)
  {
    v5 = *(this + 167);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *(this + 162);
  if (v6)
  {
    *(this + 163) = v6;
    operator delete(v6);
  }

  v13 = (this + 1272);
  std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&v13);
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*(this + 157));
  *(this + 68) = &unk_1F598DC40;
  v13 = (this + 1216);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v13);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((this + 616));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 592));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 568));
  *(this + 68) = &unk_1F598DC90;
  if (*(this + 560) == 1)
  {
    v7 = *(this + 69);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 512);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 480);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 448);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](this + 416);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 384);
  v8 = *(this + 47);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 45);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 43);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::unique_ptr<HALS_DSPCaptureFiles>::reset[abi:ne200100](this + 41, 0);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 280);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 216);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](this + 184);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 152);
  v11 = *(this + 18);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *(this + 2) = &unk_1F5985940;
  *(this + 11) = &unk_1F5985C78;
  if (*(this + 128) == 1 && *(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 88));
  *(this + 5) = &unk_1F5985C78;
  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 40));
  *(this + 2) = &unk_1F5985E58;
  if (*(this + 32) == 1)
  {
    v12 = *(this + 3);
    if (v12)
    {
      CFRelease(v12);
    }
  }
}

uint64_t *std::unique_ptr<HALS_DSPCaptureFiles>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 48);
    std::vector<std::pair<std::string const,HALS_IOEngineInfo const*>>::__destroy_vector::operator()[abi:ne200100](&v3);
    std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(*(v2 + 32));
    std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(*(v2 + 8));

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<HALB_InstrumentedEvent_RealtimeDuration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__16__bindIMN23HALS_IOContextHostedDSP17DSPStreamInstanceEFvRK26AudioObjectPropertyAddressEJPS2_RKNS_12placeholders4__phILi1EEEEEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress const&)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::*)(AudioObjectPropertyAddress const&),HALS_IOContextHostedDSP::DSPStreamInstance*,std::placeholders::__ph<1> const&>>,void ()(AudioObjectPropertyAddress const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5985378;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void HALS_IOContextHostedDSP::DSPStreamInstance::CustomPropertyListenerCallback(HALS_IOContextHostedDSP::DSPStreamInstance *this, const AudioObjectPropertyAddress *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*this);
  v6 = v4;
  if (v4)
  {
    v7 = *(v4 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 1);
  mElement = a2->mElement;
  *&buf.mSelector = *&a2->mSelector;
  buf.mElement = mElement;
  HALS_NotificationManager::PropertiesChanged(v8, v7, 1, &buf, v5);
  v11 = *(this + 2);
  if (*(this + 1) != v11)
  {
    v12 = a2->mElement;
    *&buf.mSelector = *&a2->mSelector;
    buf.mElement = v12;
    HALS_NotificationManager::PropertiesChanged(v11, v7, 1, &buf, v10);
  }

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

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(this + 79);
    v20 = *this;
    v21 = *(this + 1);
    v22 = *(this + 2);
    mScope = a2->mScope;
    v18.i32[0] = bswap32(a2->mSelector);
    v24 = vzip1_s8(v18, v18);
    v25.i64[0] = 0x1F0000001FLL;
    v25.i64[1] = 0x1F0000001FLL;
    v26.i64[0] = 0x1F0000001FLL;
    v26.i64[1] = 0x1F0000001FLL;
    v27.i64[0] = 0x5F0000005FLL;
    v27.i64[1] = 0x5F0000005FLL;
    v28 = vbsl_s8(vmovn_s32(vcgtq_u32(v27, vsraq_n_s32(v26, vshlq_n_s32(vmovl_u16(v24), 0x18uLL), 0x18uLL))), v24, 0x2E002E002E002ELL);
    v36 = 4;
    v29 = vuzp1_s8(v28, v28);
    LODWORD(v35) = v29.i32[0];
    BYTE4(v35) = 0;
    v29.i32[0] = bswap32(mScope);
    v30 = vzip1_s8(v29, v29);
    v34 = 4;
    v31 = vbsl_s8(vmovn_s32(vcgtq_u32(v27, vsraq_n_s32(v25, vshlq_n_s32(vmovl_u16(v30), 0x18uLL), 0x18uLL))), v30, 0x2E002E002E002ELL);
    LODWORD(__p) = vuzp1_s8(v31, v31).u32[0];
    BYTE4(__p) = 0;
    v32 = a2->mElement;
    buf.mSelector = 136317442;
    *&buf.mScope = "HALS_IOContextHostedDSP.cpp";
    v38 = 1024;
    v39 = 622;
    v40 = 2048;
    v41 = this;
    v42 = 2048;
    v43 = v19;
    v44 = 2048;
    v45 = v20;
    v46 = 2048;
    v47 = v21;
    v48 = 2048;
    v49 = v22;
    v50 = 2080;
    v51 = &v35;
    v52 = 2080;
    p_p = &__p;
    v54 = 1024;
    v55 = v32;
    _os_log_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp] %p (Context ID: %lu) (Client ID: %lu) (Device ID: %lu (%lu)) Sent Hosted DSP change notification sel:%s scope:%s el:%u", &buf, 0x5Eu);
    if (v34 < 0)
    {
      operator delete(__p);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }
  }

  HALS_ObjectMap::ReleaseObject(v6, v17);
}

void HALS_IOContextHostedDSP::DSPStreamInstance::ConfigureCaptureFiles(HALS_DSPCaptureFiles *a1, uint64_t *a2, char a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (!HALS_DSPCaptureFiles::isDSPCaptureEnabled(a1))
    {
      return;
    }

    if (*(a1 + 3) != 1768845428)
    {
      goto LABEL_35;
    }

    v7 = a2 + 8;
    v8 = a2[8];
    if (!v8)
    {
      goto LABEL_35;
    }

    v9 = a2 + 8;
    v10 = a2 + 8;
    v11 = a2[8];
    do
    {
      v12 = *(v11 + 28);
      v13 = v12 >= 3;
      v14 = v12 < 3;
      if (v13)
      {
        v10 = v11;
      }

      v11 = *(v11 + 8 * v14);
    }

    while (v11);
    if (v10 != v7 && *(v10 + 7) < 4u)
    {
      goto LABEL_37;
    }

    v15 = a2 + 8;
    v16 = a2[8];
    do
    {
      v17 = *(v16 + 28);
      v13 = v17 >= 6;
      v18 = v17 < 6;
      if (v13)
      {
        v15 = v16;
      }

      v16 = *(v16 + 8 * v18);
    }

    while (v16);
    if (v15 != v7 && *(v15 + 7) < 7u)
    {
      goto LABEL_37;
    }

    v19 = a2 + 8;
    v20 = a2[8];
    do
    {
      v21 = *(v20 + 28);
      v13 = v21 >= 0xA;
      v22 = v21 < 0xA;
      if (v13)
      {
        v19 = v20;
      }

      v20 = *(v20 + 8 * v22);
    }

    while (v20);
    if (v19 != v7 && *(v19 + 7) < 0xBu)
    {
      goto LABEL_37;
    }

    do
    {
      v23 = *(v8 + 28);
      v13 = v23 >= 9;
      v24 = v23 < 9;
      if (v13)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v24);
    }

    while (v8);
    if (v9 == v7 || *(v9 + 7) >= 0xAu)
    {
LABEL_35:
      if ((a3 & 4) != 0)
      {
        return;
      }
    }

    else
    {
LABEL_37:
      HALS_IODSPInfo::GetClientFormat(__str, a2);
      if ((a3 & 4) != 0)
      {
        return;
      }
    }

    operator new();
  }

  v5 = (a1 + 328);

  std::unique_ptr<HALS_DSPCaptureFiles>::reset[abi:ne200100](v5, 0);
}

void sub_1DE63E090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  *(v46 + 56) = v47;
  operator delete(__p);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  a40 = a17;
  std::vector<std::pair<std::string const,HALS_IOEngineInfo const*>>::__destroy_vector::operator()[abi:ne200100](&a40);
  std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(*(v46 + 32));
  std::__tree<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::__map_value_compare<std::string const,std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>,std::less<std::string const>,true>,std::allocator<std::__value_type<std::string const,std::unique_ptr<HALB_CaptureFile>>>>::destroy(*(v46 + 8));
  MEMORY[0x1E12C1730](v46, 0x1020C408C5B6129);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContextHostedDSP::DSPStreamInstance::Negotiate_NP(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v86[3] = *MEMORY[0x1E69E9840];
  v78 = a4;
  v10 = a2[8];
  if (v10)
  {
    v11 = a2 + 8;
    do
    {
      v12 = *(v10 + 28);
      v13 = v12 >= 9;
      v14 = v12 < 9;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != a2 + 8 && *(v11 + 7) <= 9u)
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

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContextHostedDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 162;
        _os_log_debug_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Skip negotiation for client-visible common reference stream.", buf, 0x12u);
      }

      HALS_IOContextHostedDSP::DSPStreamInstance::CreateRequest(cf, *(a1 + 12), 1u, a2, v7, &v78);
      DSP_Host_Types::NegotiateRequest::NegotiateRequest(buf, cf);
      *cf = &unk_1F598DC40;
      __p = v82;
      std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&__p);
      DSP_Host_Types::IOContextDescription::~IOContextDescription(&v81[3]);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v81);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&cf[24]);
      *cf = &unk_1F598DC90;
      if (cf[16] == 1 && *&cf[8])
      {
        CFRelease(*&cf[8]);
      }

      DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(a1 + 544, buf);
      *cf = 0;
      memset(&cf[16], 0, 32);
      *&cf[8] = &cf[16];
      memset(v81, 0, 32);
      *(a1 + 1240) = 0;
      v45 = a1 + 1256;
      std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*(a1 + 1256));
      v46 = *&cf[16];
      *(a1 + 1248) = *&cf[8];
      *(a1 + 1256) = v46;
      v47 = *&cf[24];
      *(a1 + 1264) = *&cf[24];
      if (v47)
      {
        *(v46 + 16) = v45;
        *&cf[8] = &cf[16];
        *&cf[16] = 0;
        *&cf[24] = 0;
      }

      else
      {
        *(a1 + 1248) = v45;
      }

      std::vector<MutationItinerary::Device>::__vdeallocate((a1 + 1272));
      *(a1 + 1272) = *&cf[32];
      *(a1 + 1288) = v81[0];
      *&cf[40] = 0;
      v81[0] = 0;
      *&cf[32] = 0;
      v48 = *(a1 + 1296);
      if (v48)
      {
        *(a1 + 1304) = v48;
        operator delete(v48);
        *(a1 + 1296) = 0;
        *(a1 + 1304) = 0;
        *(a1 + 1312) = 0;
      }

      *(a1 + 1296) = *&v81[1];
      *(a1 + 1312) = v81[3];
      memset(&v81[1], 0, 24);
      __p = &cf[32];
      std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*&cf[16]);
      *(a1 + 312) = 0;
      DSP_Host_Types::ConfigurationChangeRequest::debug_log_device_summary((a1 + 544), "Client Reference Stream");
      *buf = &unk_1F598DC40;
      *cf = v86;
      std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](cf);
      DSP_Host_Types::IOContextDescription::~IOContextDescription(&v85[3]);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v85);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&buf[24]);
      *buf = &unk_1F598DC90;
      if (buf[16] == 1 && *&buf[8])
      {
        CFRelease(*&buf[8]);
      }

      return 1685283698;
    }
  }

  v19 = a1 + 648;
  v20 = *(a1 + 648);
  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = a1 + 648;
  do
  {
    if (*(v20 + 28))
    {
      v21 = v20;
    }

    v20 = *(v20 + 8 * (*(v20 + 28) == 0));
  }

  while (v20);
  if (v21 == v19 || *(v21 + 28) >= 2u)
  {
LABEL_20:
    v21 = a1 + 648;
  }

  v22 = (a4 & 1) != 0 || v19 == v21;
  v23 = (a4 >> 2) & 1;
  if (!v22)
  {
    v23 = 1;
  }

  if (v23)
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  LOBYTE(v78) = v24 | a4 & 0xFB;
  *buf = 0;
  *&buf[16] = 0u;
  *&buf[8] = &buf[16];
  v84 = 0u;
  memset(v85, 0, 32);
  *a5 = 0;
  v25 = (a5 + 16);
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*(a5 + 16));
  v26 = *&buf[16];
  *(a5 + 8) = *&buf[8];
  *v25 = v26;
  v27 = *&buf[24];
  *(a5 + 24) = *&buf[24];
  v28 = (a5 + 8);
  if (v27)
  {
    *(v26 + 16) = v25;
    *&buf[8] = &buf[16];
    *&buf[16] = 0;
    *&buf[24] = 0;
  }

  else
  {
    *(a5 + 8) = v25;
  }

  std::vector<MutationItinerary::Device>::__vdeallocate((a5 + 32));
  *(a5 + 32) = v84;
  v29 = *(a5 + 56);
  *(a5 + 48) = v85[0];
  v85[0] = 0;
  v84 = 0uLL;
  if (v29)
  {
    *(a5 + 64) = v29;
    operator delete(v29);
    *(a5 + 56) = 0;
    *(a5 + 64) = 0;
    *(a5 + 72) = 0;
  }

  *(a5 + 56) = *&v85[1];
  *(a5 + 72) = v85[3];
  memset(&v85[1], 0, 24);
  *cf = &v84;
  std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](cf);
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*&buf[16]);
  HALS_IOContextHostedDSP::DSPStreamInstance::CreateRequest(cf, *(a1 + 12), 1u, a2, v7, &v78);
  DSP_Host_Types::NegotiateRequest::NegotiateRequest(buf, cf);
  *cf = &unk_1F598DC40;
  __p = v82;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&__p);
  DSP_Host_Types::IOContextDescription::~IOContextDescription(&v81[3]);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v81);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&cf[24]);
  *cf = &unk_1F598DC90;
  if (cf[16] == 1 && *&cf[8])
  {
    CFRelease(*&cf[8]);
  }

  if ((v6 & 2) == 0)
  {
    v30 = 1685287013;
    if ((v6 & 1) != 0 && v86[0] == v86[1])
    {
      goto LABEL_130;
    }

    v31 = DSP_Host_Types::ConfigurationChangeRequest::util_compare_request((a1 + 544), buf, 1);
    v32 = v31;
    if (v31 >= 0x20)
    {
      v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v36 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v31);
      }

      v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        v39 = *v38;
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      else
      {
        v39 = *v38;
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *cf = 136315394;
        *&cf[4] = "HALS_IOContextHostedDSP.cpp";
        *&cf[12] = 1024;
        *&cf[14] = 209;
        _os_log_debug_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Suppressing negotiate, new request is identical to last.", cf, 0x12u);
      }

      if (*(a1 + 1240) != 1)
      {
        goto LABEL_130;
      }

      *a5 = *(a1 + 1240);
      if (a1 + 1240 != a5)
      {
        std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>((a5 + 8), *(a1 + 1248), (a1 + 1256));
        std::vector<MutationItinerary::Device>::__assign_with_size[abi:ne200100]<MutationItinerary::Device*,MutationItinerary::Device*>((a5 + 32), *(a1 + 1272), *(a1 + 1280), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1280) - *(a1 + 1272)) >> 4));
        std::vector<CAStreamBasicDescription>::__assign_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>((a5 + 56), *(a1 + 1296), *(a1 + 1304), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 1304) - *(a1 + 1296)) >> 3));
      }
    }

    else
    {
      v33 = *(a1 + 336);
      if (v33 && (atomic_exchange((v33 + 77), 0) & 1) != 0)
      {
        v34 = 1;
        goto LABEL_87;
      }

      if (*(a1 + 1240) != 1 || (v31 & 0xF) != 0xF || (v40 = (a1 + 1240), v31 = MutationItinerary::AreChangesReconciled((a1 + 1240), buf, 0), !v31))
      {
        v34 = (v32 & 4) != 0 && (v32 & 8) == 0;
LABEL_87:
        v49 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v49 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v31);
        }

        v51 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v50 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          v52 = *v51;
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        else
        {
          v52 = *v51;
        }

        v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);
        if (v53)
        {
          DSP_Host_Types::ConfigurationChangeRequest::debug_stringify_compare_result(&__p, v32);
          v68 = "no";
          if (v34)
          {
            v68 = "require";
          }

          *&cf[4] = "HALS_IOContextHostedDSP.cpp";
          *cf = 136315906;
          *&cf[12] = 1024;
          if (v74 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *&cf[14] = 238;
          *&cf[18] = 2080;
          *&cf[20] = v68;
          *&cf[28] = 2080;
          *&cf[30] = p_p;
          _os_log_debug_impl(&dword_1DE1F9000, v52, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: New negotiate request due to configuration changes, %s rebuild: %s", cf, 0x26u);
          if (v74 < 0)
          {
            operator delete(__p);
          }
        }

        if ((v78 & 1) == 0)
        {
          v54 = *(a1 + 1240);
          v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if (v54 != 1)
          {
            if ((v55 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v53);
            }

            v60 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v59 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v59)
            {
              atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
              v61 = *v60;
              std::__shared_weak_count::__release_shared[abi:ne200100](v59);
            }

            else
            {
              v61 = *v60;
            }

            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *cf = 136315394;
              *&cf[4] = "HALS_IOContextHostedDSP.cpp";
              *&cf[12] = 1024;
              *&cf[14] = 248;
              _os_log_debug_impl(&dword_1DE1F9000, v61, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Deactivation requested with no previous activation, ignoring.", cf, 0x12u);
            }

            goto LABEL_130;
          }

          if ((v55 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v53);
          }

          v57 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v56 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v56)
          {
            atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
            v58 = *v57;
            std::__shared_weak_count::__release_shared[abi:ne200100](v56);
          }

          else
          {
            v58 = *v57;
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            *cf = 136315394;
            *&cf[4] = "HALS_IOContextHostedDSP.cpp";
            *&cf[12] = 1024;
            *&cf[14] = 243;
            _os_log_debug_impl(&dword_1DE1F9000, v58, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Deactivation requested but with a different context configuration, ignoring, using previous config.", cf, 0x12u);
          }

          DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(buf, (a1 + 544));
          WORD4(v84) = 256;
        }

        (*(**(a1 + 136) + 24))(&__p);
        v62 = MutationItinerary::LoadFromNegotiateResponse_util(a5, &__p, v34);
        if (v62)
        {
          v63 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v63 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v62);
          }

          v65 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v64 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v64)
          {
            atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
            v66 = *v65;
            std::__shared_weak_count::__release_shared[abi:ne200100](v64);
          }

          else
          {
            v66 = *v65;
          }

          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            *cf = 136315394;
            *&cf[4] = "HALS_IOContextHostedDSP.cpp";
            *&cf[12] = 1024;
            *&cf[14] = 261;
            _os_log_debug_impl(&dword_1DE1F9000, v66, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Negotiate allowed, and succeeded.", cf, 0x12u);
          }

          DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(a1 + 544, buf);
          *(a1 + 1240) = *a5;
          if (a1 + 1240 != a5)
          {
            std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>((a1 + 1248), *v28, (a5 + 16));
            std::vector<MutationItinerary::Device>::__assign_with_size[abi:ne200100]<MutationItinerary::Device*,MutationItinerary::Device*>((a1 + 1272), *(a5 + 32), *(a5 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 40) - *(a5 + 32)) >> 4));
            std::vector<CAStreamBasicDescription>::__assign_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>((a1 + 1296), *(a5 + 56), *(a5 + 64), 0xCCCCCCCCCCCCCCCDLL * ((*(a5 + 64) - *(a5 + 56)) >> 3));
          }

          MutationItinerary::AreChangesReconciled((a1 + 1240), buf, (a1 + 1320));
          DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(cf);
          *cf = &unk_1F598AC58;
          DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::operator=(a1 + 1328, cf);
          v79 = v82;
          *cf = &unk_1F598DC40;
          std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v79);
          DSP_Host_Types::IOContextDescription::~IOContextDescription(&v81[3]);
          DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v81);
          DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&cf[24]);
          *cf = &unk_1F598DC90;
          if (cf[16] == 1 && *&cf[8])
          {
            CFRelease(*&cf[8]);
          }

          v30 = 0;
          *(a1 + 312) = 0;
        }

        __p = &unk_1F598EA30;
        *cf = &v77;
        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](cf);
        *cf = &v76;
        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](cf);
        *cf = &v75;
        std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](cf);
        __p = &unk_1F598EA70;
        if (v73 == 1)
        {
          v35 = v72;
          if (v72)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_130;
      }

      *a5 = *v40;
      if (v40 != a5)
      {
        std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>(v28, *(a1 + 1248), (a1 + 1256));
        std::vector<MutationItinerary::Device>::__assign_with_size[abi:ne200100]<MutationItinerary::Device*,MutationItinerary::Device*>((a5 + 32), *(a1 + 1272), *(a1 + 1280), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1280) - *(a1 + 1272)) >> 4));
        v31 = std::vector<CAStreamBasicDescription>::__assign_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>((a5 + 56), *(a1 + 1296), *(a1 + 1304), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 1304) - *(a1 + 1296)) >> 3));
      }

      v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v41 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v31);
      }

      v43 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v42 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        v44 = *v43;
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      else
      {
        v44 = *v43;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        DSP_Host_Types::ConfigurationChangeRequest::debug_stringify_compare_result(&__p, v32);
        v70 = v74 >= 0 ? &__p : __p;
        *cf = 136315650;
        *&cf[4] = "HALS_IOContextHostedDSP.cpp";
        *&cf[12] = 1024;
        *&cf[14] = 226;
        *&cf[18] = 2080;
        *&cf[20] = v70;
        _os_log_debug_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] POLICY: Suppressing negotiate, new request is the resolution of DSP changes: %s", cf, 0x1Cu);
        if (v74 < 0)
        {
          operator delete(__p);
        }
      }
    }

    v30 = 1685287789;
    goto LABEL_130;
  }

  (*(**(a1 + 136) + 16))(cf);
  if (MutationItinerary::LoadFromNegotiateResponse_util(a5, cf, 0))
  {
    v30 = 0;
  }

  else
  {
    v30 = 1685287013;
  }

  *cf = &unk_1F598EA30;
  __p = &v81[3];
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = v81;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &cf[24];
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&__p);
  *cf = &unk_1F598EA70;
  if (cf[16] == 1)
  {
    v35 = *&cf[8];
    if (*&cf[8])
    {
LABEL_49:
      CFRelease(v35);
    }
  }

LABEL_130:
  *buf = &unk_1F598DC40;
  *cf = v86;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](cf);
  DSP_Host_Types::IOContextDescription::~IOContextDescription(&v85[3]);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v85);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&buf[24]);
  *buf = &unk_1F598DC90;
  if (buf[16] == 1 && *&buf[8])
  {
    CFRelease(*&buf[8]);
  }

  return v30;
}

void HALS_IOContextHostedDSP::DSPStreamInstance::CreateRequest(DSP_Host_Types::ConfigurationChangeRequest *a1, int a2, unsigned __int8 a3, uint64_t *a4, int a5, unsigned __int8 *a6)
{
  v103 = *MEMORY[0x1E69E9840];
  DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(v73);
  v73[0] = &unk_1F5968AD0;
  v89 = a2;
  v90 = a3;
  v91 = a4;
  v92 = 0;
  v94 = 0;
  v93 = 0;
  v70 = a6;
  v11 = *a6;
  v74 = v11 & 1 | 0x100;
  v75 = (v11 >> 1) & 1 | 0x100;
  v79[42] = a5;
  v80 = 1;
  v81 = 4096;
  v82 = 1;
  *&cf.__r_.__value_.__r.__words[1] = 0uLL;
  cf.__r_.__value_.__r.__words[0] = &cf.__r_.__value_.__l.__size_;
  p_size = &cf.__r_.__value_.__l.__size_;
  v13 = a4[7];
  if (v13 != a4 + 8)
  {
    while (1)
    {
      v14 = *(v13 + 28);
      LODWORD(v102.__first_) = v14;
      if (v14 <= 0xA)
      {
        if (((1 << v14) & 0x7CC) != 0)
        {
          if (v89 != 1768845428)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (((1 << v14) & 0x30) != 0)
        {
          if (v89 != 1869968496)
          {
            goto LABEL_11;
          }

LABEL_10:
          std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(&cf, v14, &v102);
          goto LABEL_11;
        }

        if (v14 == 1)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      v15 = *(v13 + 8);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v13 + 16);
          v17 = *v16 == v13;
          v13 = v16;
        }

        while (!v17);
      }

      v13 = v16;
      if (v16 == a4 + 8)
      {
        p_size = cf.__r_.__value_.__r.__words[0];
        break;
      }
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::__assign_multi<std::__tree_const_iterator<DSP_Host_Types::AudioProcessingType,std::__tree_node<DSP_Host_Types::AudioProcessingType,void *> *,long>>(&v76, p_size, &cf.__r_.__value_.__l.__size_);
  HALS_IODSPInfo::GetClientFormat(&v102, v91);
  if (v89 == 1869968496 || v89 == 1768845428)
  {
    DSP_Host_Types::FormatDescription::operator=(&v78, &v102);
    DSP_Host_Types::FormatDescription::operator=(v79, &v102);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "HALS_DSPRequest.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 94;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  [hal_dsp] Unrecognized scope applied to hosted DSP.", buf, 0x12u);
  }

  v18 = v91;
  if (*(v91 + 152) == 1)
  {
    DSP_Host_Types::AudioChannelConfiguration::operator=(&v83, v91[16]);
    v18 = v91;
  }

  if (*(v18 + 116) == 1)
  {
    v87 = *(v18 + 28);
    v88 = 1;
  }

  v19 = v18[10];
  if (v19)
  {
    v20 = *(v19 + 2);
    if (v20)
    {
      if (CFDictionaryGetCount(v20))
      {
        has_all_id = DSP_Host_OffloadDictionary::has_all_id(v19);
        v18 = v91;
        if (!has_all_id)
        {
          DSP_Host_OffloadDictionary::deep_copy(buf, v91[10]);
        }
      }

      else
      {
        v18 = v91;
      }
    }
  }

  v24 = v18[8];
  v22 = v18 + 8;
  v23 = v24;
  if (v24)
  {
    v25 = v22;
    do
    {
      v26 = *(v23 + 28);
      v27 = v26 >= 8;
      v28 = v26 < 8;
      if (v27)
      {
        v25 = v23;
      }

      v23 = *(v23 + 8 * v28);
    }

    while (v23);
    if (v25 != v22 && *(v25 + 7) <= 8u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_DSPRequest.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 109;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  [hal_dsp][offloads] DSP Offloading specified but no offload information supplied.", buf, 0x12u);
    }
  }

  v29 = v91;
  v30 = v91[12];
  if (v30)
  {
    v31 = *(v30 + 16);
    if (v31)
    {
      Count = CFDictionaryGetCount(v31);
      v29 = v91;
      if (Count)
      {
        DSP_Host_OffloadDictionary::deep_copy(buf, v91[12]);
      }
    }
  }

  v35 = v29[8];
  v33 = v29 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      v37 = *(v34 + 28);
      v27 = v37 >= 0xA;
      v38 = v37 < 0xA;
      if (v27)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * v38);
    }

    while (v34);
    if (v36 != v33 && *(v36 + 7) <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_DSPRequest.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 116;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  [hal_dsp][content creation] Content Creation Recording specified but no settings information supplied.", buf, 0x12u);
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(cf.__r_.__value_.__l.__size_);
  memset(buf, 0, 24);
  if (v89 == 1768845428)
  {
    v39 = v90;
  }

  else
  {
    v39 = 0;
  }

  v40 = v91;
  v41 = *v91;
  if (v91[1] != *v91)
  {
    v42 = 0;
    v43 = 8;
    do
    {
      LODWORD(v102.__first_) = *(v41 + v43);
      v102.__begin_ = v42;
      LOBYTE(v102.__end_) = 1;
      std::vector<std::pair<unsigned int,std::optional<unsigned long>>>::push_back[abi:ne200100](buf, &v102);
      ++v42;
      v40 = v91;
      v41 = *v91;
      v43 += 128;
    }

    while (v42 < (v91[1] - *v91) >> 7);
  }

  if (v39)
  {
    v44 = v40[3];
    for (i = v40[4]; v44 != i; ++v44)
    {
      v46 = HALS_ObjectMap::CopyObjectByObjectID(*v44);
      if (v46)
      {
        v48 = *(v46 + 5) == 1633773415;
      }

      else
      {
        v48 = 0;
      }

      HALS_ObjectMap::ReleaseObject(v46, v47);
      if (!v48)
      {
        v49 = *buf;
        if (*buf != *&buf[8])
        {
          while (*v49 != *v44)
          {
            v49 += 6;
            if (v49 == *&buf[8])
            {
              goto LABEL_74;
            }
          }
        }

        if (*&buf[8] == v49)
        {
LABEL_74:
          LODWORD(v102.__first_) = *v44;
          LOBYTE(v102.__begin_) = 0;
          LOBYTE(v102.__end_) = 0;
          std::vector<std::pair<unsigned int,std::optional<unsigned long>>>::push_back[abi:ne200100](buf, &v102);
        }
      }
    }
  }

  v50 = *buf;
  v72 = *&buf[8];
  if (*buf != *&buf[8])
  {
    do
    {
      v51 = HALS_ObjectMap::CopyObjectByObjectID(*v50);
      if (v51)
      {
        v95 = v51;
        LOBYTE(v97) = 0;
        v98 = 0;
        if (*(v50 + 16) == 1)
        {
          v53 = *v91 + (*(v50 + 1) << 7);
        }

        else
        {
          v53 = 0;
        }

        v96 = v53;
        if (v89 == 1768845428)
        {
          HALS_IODSPInfo::GetClientFormat(&v102, v91);
          v54 = *&v102.__first_;
          v55 = v54;
          v56 = 0x100000000;
          v51 = v95;
        }

        else
        {
          v55 = 0.0;
          v56 = 0;
        }

        v98 = BYTE4(v56);
        v97 = v56 | LODWORD(v55);
        (*(*v51 + 272))();
        _ZNSt3__115allocate_sharedB8ne200100IN14DSP_Host_Types17DeviceDescriptionENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v99);
      }

      HALS_ObjectMap::ReleaseObject(0, v52);
      v50 += 6;
    }

    while (v50 != v72);
    v50 = *buf;
  }

  if (v50)
  {
    operator delete(v50);
  }

  v57 = v92;
  for (j = v93; v57 != j; ++v57)
  {
    std::to_string(&cf, *v57);
    v59 = v85;
    if (v85 >= v86)
    {
      v61 = 0xAAAAAAAAAAAAAAABLL * ((v85 - __src) >> 3);
      v62 = v61 + 1;
      if (v61 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v86 - __src) >> 3) > v62)
      {
        v62 = 0x5555555555555556 * ((v86 - __src) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v86 - __src) >> 3) >= 0x555555555555555)
      {
        v63 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v63 = v62;
      }

      v102.__end_cap_.__value_ = &__src;
      if (v63)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v63);
      }

      v64 = 8 * ((v85 - __src) >> 3);
      v65 = *&cf.__r_.__value_.__l.__data_;
      *(v64 + 16) = *(&cf.__r_.__value_.__l + 2);
      *v64 = v65;
      memset(&cf, 0, sizeof(cf));
      v66 = 24 * v61 + 24;
      v67 = (24 * v61 - (v85 - __src));
      memcpy((v64 - (v85 - __src)), __src, v85 - __src);
      v68 = __src;
      __src = v67;
      v85 = v66;
      v69 = v86;
      v86 = 0;
      v102.__end_ = v68;
      v102.__end_cap_.__value_ = v69;
      v102.__first_ = v68;
      v102.__begin_ = v68;
      std::__split_buffer<std::string>::~__split_buffer(&v102);
      v85 = v66;
      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v60 = *&cf.__r_.__value_.__l.__data_;
      *(v85 + 2) = *(&cf.__r_.__value_.__l + 2);
      *v59 = v60;
      v85 = v59 + 24;
    }
  }

  if ((*v70 & 4) != 0)
  {
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v77[0]);
    v77[0] = 0;
    v77[1] = 0;
    v76 = v77;
    LODWORD(v102.__first_) = 1;
    std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v76, 1u, &v102);
  }

  DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(a1, v73);
  HALS_DSPRequest::~HALS_DSPRequest(v73);
}

void sub_1DE640660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, DSP_Dictionariable::DictionariableKvp *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, DSP_Dictionariable::DictionariableKvp *a20, uint64_t a21, ...)
{
  va_start(va, a21);
  v23 = *(v21 - 224);
  *(v21 - 224) = 0;
  if (v23)
  {
    std::default_delete<DSP_Host_OffloadDictionary>::operator()[abi:ne200100](v23);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(STACK[0x388]);
  HALS_DSPRequest::~HALS_DSPRequest(va);
  _Unwind_Resume(a1);
}

void sub_1DE640C2C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<DSP_HAL_BypassCallbacks>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5985488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

BOOL HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(HALS_IOContextHostedDSP::DSPStreamInstance *this, uint64_t a2, int a3)
{
  v3 = a2;
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(this + 253);
  if (a3)
  {
    if (!v4)
    {
      operator new();
    }

    HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::SetCurrentSize(v5, v3);
    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (atomic_load(v6 + 5))
  {
    return 1;
  }

  v9 = v6;
  v10 = v6 + 4;
  v11 = atomic_load(v6 + 4);
  if (v11 != v3)
  {
    v12 = 0;
    atomic_compare_exchange_strong(v6 + 5, &v12, 1u);
    if (!v12)
    {
      v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
      }

      v15 = *(v13 + 8);
      v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v16 + 16) = 0;
      *(v16 + 20) = 2;
      *(v16 + 24) = "HALS_IOContextHostedDSP.cpp";
      *(v16 + 32) = 498;
      *v16 = &unk_1F5985320;
      *(v16 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v15, v16);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v22[0] = 0;
      v22[1] = 0;
      HALS_System::GetInstance(&v23, 0, v22);
      v17 = *(v23 + 1888);
      if (v17)
      {
        if (!*(v17 + 112))
        {
          std::mutex::lock((v17 + 48));
          operator new();
        }

        v18 = *(v17 + 120);
        v19.n128_u64[0] = *(v17 + 112);
        v19.n128_u64[1] = v18;
        v21 = v19;
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v21 = 0u;
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v21.n128_u64[0])
      {
        v9[48] = v3;
        (*(*v21.n128_u64[0] + 16))(v21.n128_u64[0], v9 + 34, v21);
      }

      if (v21.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21.n128_u64[1]);
      }
    }
  }

  v20 = atomic_load(v10);
  return v20 != v3;
}

void sub_1DE641288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](v28, 0);
  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v31);
  std::mutex::unlock((v29 + 48));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::simple_message_playload::~simple_message_playload(caulk::concurrent::message *a1)
{
  *a1 = &unk_1F5985548;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 24);

  caulk::concurrent::message::~message(a1);
}

{
  *a1 = &unk_1F5985548;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 24);
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::SetCurrentSize(uint64_t a1, unsigned int a2)
{
  v7.__m_ = (a1 + 24);
  v4 = 1;
  v7.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  atomic_compare_exchange_strong((a1 + 20), &v4, 3u);
  while (atomic_load((a1 + 20)))
  {
    std::condition_variable::wait((a1 + 88), &v7);
  }

  atomic_store(a2, (a1 + 16));
  atomic_store(0, (a1 + 20));
  if (v7.__owns_)
  {
    std::mutex::unlock(v7.__m_);
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::RT_MaybeEnqueueAdapt(unsigned int)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [hal_dsp] Enqueing buffer size change for hosted DSP.", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::RT_MaybeEnqueueAdapt(unsigned int)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__16__bindIMZN23HALS_IOContextHostedDSP17DSPStreamInstance25RT_HandleBufferSizeChangeEjbE19BufferChangeHandlerFvjEJPS3_RKNS_12placeholders4__phILi1EEEEEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::operator()(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

__n128 std::__function::__func<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::*)(unsigned int),HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler*,std::placeholders::__ph<1> const&>>,void ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5985588;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::AdaptNewSize(uint64_t a1, unsigned int a2)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOContextHostedDSP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 512;
    v19 = 1024;
    v20 = a2;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Adapting a new buffer size %u.", buf, 0x18u);
  }

  v8 = 1;
  atomic_compare_exchange_strong((a1 + 20), &v8, 2u);
  if (v8 == 1)
  {
    std::mutex::lock((a1 + 24));
    v9 = atomic_load((a1 + 16));
    if (a2 && v9 != a2)
    {
      DSP_Host_Types::AdaptRequest::AdaptRequest(buf, (*(a1 + 8) + 1328));
      v23[92] = a2;
      v24 = 1;
      (*(**(*(a1 + 8) + 136) + 32))(&v11);
      if (!v17)
      {
        v10 = *(a1 + 8);
        *(v10 + 1768) = a2;
        *(v10 + 1772) = 1;
        atomic_store(a2, (a1 + 16));
      }

      v11 = &unk_1F598EAC8;
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }

      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v14);
      v11 = &unk_1F598EB08;
      if (v13 == 1 && cf)
      {
        CFRelease(cf);
      }

      *buf = &unk_1F598DC40;
      v11 = v25;
      std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v11);
      DSP_Host_Types::IOContextDescription::~IOContextDescription(v23);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v22);
      DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v21);
      *buf = &unk_1F598DC90;
      if (buf[16] == 1 && *&buf[8])
      {
        CFRelease(*&buf[8]);
      }
    }

    std::mutex::unlock((a1 + 24));
  }

  std::condition_variable::notify_one((a1 + 88));
  atomic_store(0, (a1 + 20));
}

void sub_1DE641A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::~BufferChangeHandler(uint64_t a1)
{
  HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::~BufferChangeHandler(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::~BufferChangeHandler(uint64_t a1)
{
  *a1 = &unk_1F5985528;
  HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler::SetCurrentSize(a1, 0);
  *(a1 + 136) = &unk_1F5985548;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 160);
  caulk::concurrent::message::~message((a1 + 136));
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void std::__shared_ptr_emplace<HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler,std::allocator<HALS_IOContextHostedDSP::DSPStreamInstance::RT_HandleBufferSizeChange(unsigned int,BOOL)::BufferChangeHandler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59854D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>(caulk::concurrent::messenger *a1, _BYTE *a2, _OWORD *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5985690;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    *(v7 + 24) = *a3;
    *v7 = &unk_1F5985638;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    v8 = 136315394;
    v9 = v6;
    v10 = 1024;
    v11 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [hal_dsp] Caught an error while calling hosted DSP.", &v8, 0x12u);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOContextHostedDSP::DSPStreamInstance::DoIO(unsigned int,AudioBufferList *,AudioBufferList *,AudioTimeStamp const&)::$_0,std::tuple<char const*,int>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALB_RealtimeDuration_Collection>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<HALB_RealtimeDuration_Collection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59856B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContextHostedDSP::HostedDSPList::find(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (result != a2)
  {
    while (*result != a3 || *(result + 8) != a4)
    {
      result += 24;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  return result;
}

HALS_IOContextHostedDSP::DSPStreamInstance *std::unique_ptr<HALS_IOContextHostedDSP::DSPStreamInstance>::reset[abi:ne200100](HALS_IOContextHostedDSP::DSPStreamInstance **a1, HALS_IOContextHostedDSP::DSPStreamInstance *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HALS_IOContextHostedDSP::DSPStreamInstance::~DSPStreamInstance(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void HALS_IOContextHostedDSP::DSPStreamInstance::HALDSPBypass::~HALDSPBypass(HALS_IOContextHostedDSP::DSPStreamInstance::HALDSPBypass *this)
{
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 144);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 112);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 80);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](this + 48);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 16);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void HAL_DSP_IOCallbacks::~HAL_DSP_IOCallbacks(HAL_DSP_IOCallbacks *this)
{
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 128);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 96);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](this + 32);

  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](this);
}

void HALS_IOContextHostedDSP::HostedDSPList::remove_at(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v4 = a1[1];
  v5 = HALS_IOContextHostedDSP::HostedDSPList::find(*a1, v4, a2, a3);
  if (v4 != v5)
  {
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = a1[3];
      v10 = *(v7 + 352);
      v9 = *(v7 + 360);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *v8;
        v14 = v8[1];
        v12 = v8 + 1;
        v13 = v14;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v11 = *v8;
        v15 = v8[1];
        v12 = v8 + 1;
        v13 = v15;
      }

      if (v11 != v13)
      {
        while (1)
        {
          v17 = *v11;
          v16 = v11[1];
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v17 == v10)
          {
            break;
          }

          v11 += 2;
          if (v11 == v13)
          {
            v11 = v13;
            break;
          }
        }
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v18 = *v12;
      if (v11 != *v12)
      {
        if (v11 + 2 != v18)
        {
          do
          {
            v19 = *(v11 + 1);
            v11[2] = 0;
            v11[3] = 0;
            v20 = v11[1];
            *v11 = v19;
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            v21 = v11 + 2;
            v22 = v11 + 4;
            v11 += 2;
          }

          while (v22 != v18);
          v18 = *v12;
          v11 = v21;
        }

        while (v18 != v11)
        {
          v23 = *(v18 - 1);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          v18 -= 2;
        }

        *v12 = v11;
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    v24 = a1[1];
    if (v6 + 24 != v24)
    {
      v25 = v6;
      do
      {
        v26 = *(v25 + 24);
        v25 += 24;
        *v6 = v26;
        *(v6 + 8) = *(v6 + 32);
        v27 = *(v6 + 40);
        *(v6 + 40) = 0;
        std::unique_ptr<HALS_IOContextHostedDSP::DSPStreamInstance>::reset[abi:ne200100]((v6 + 16), v27);
        v28 = v6 + 48;
        v6 = v25;
      }

      while (v28 != v24);
      v24 = a1[1];
      v6 = v25;
    }

    for (; v24 != v6; v24 -= 24)
    {
      std::unique_ptr<HALS_IOContextHostedDSP::DSPStreamInstance>::reset[abi:ne200100]((v24 - 8), 0);
    }

    a1[1] = v6;
  }
}

uint64_t HALS_IOContextHostedDSP::Initialize(HALS_IOContextHostedDSP *this, HALS_IOContextDescription *a2, int a3, int a4)
{
  v13[0] = *(a2 + 4);
  v8 = v13[0];
  v13[1] = a3;
  v13[2] = a4;
  v14 = this;
  *&v16 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextHostedDSP::Initialize(HALS_IOContextDescription &,unsigned int,unsigned int)::$_0>;
  *(&v16 + 1) = v13;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*(a2 + 7), *(a2 + 8), &v16);
  v11[0] = v8;
  v11[1] = a3;
  v11[2] = a4;
  v12 = this;
  v10[0] = &unk_1F5987768;
  v10[1] = a2;
  v15[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextHostedDSP::Initialize(HALS_IOContextDescription &,unsigned int,unsigned int)::$_1>;
  v15[1] = v11;
  *&v16 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<int HALS_IOContextDescription::ApplyToOutput<HALS_IOContextDescription::ActiveOutputsOnly>(caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription&,unsigned int,unsigned int,HALS_IOStreamInfo &)>,HALS_IOContextDescription::ActiveOutputsOnly const&)::{lambda(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)#1}>;
  *(&v16 + 1) = v15;
  return VisitableVector<HALS_IOStackDescription>::do_apply<std::vector<HALS_IOStackDescription>,VisitableVector<HALS_IOStackDescription>::ItemWithIndex,HALS_IOContextDescription::ActiveOutputsOnly>(*(a2 + 10), *(a2 + 11), &v16, v10);
}

void HALS_IOContextHostedDSP::Initialize(HALS_IOContextDescription &,unsigned int,unsigned int)::$_2::operator()(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, int a3, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a4 + 108))
  {
    v8 = *(a4 + 112);
    if (*(a4 + 120) == v8 || v8 == 0)
    {
      v14 = *a1;
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
        v36 = *a1;
        LODWORD(__str.__r_.__value_.__l.__data_) = 136315650;
        *(__str.__r_.__value_.__r.__words + 4) = "HALS_IOContextHostedDSP.cpp";
        WORD2(__str.__r_.__value_.__r.__words[1]) = 1024;
        *(&__str.__r_.__value_.__r.__words[1] + 6) = 905;
        WORD1(__str.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(__str.__r_.__value_.__r.__words[2]) = v36;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Creating DSP instance with no assigned engine (Device ID: %u).", &__str, 0x18u);
      }
    }

    else
    {
      v14 = *(v8 + 8);
    }

    v15 = *(a4 + 12);
    v16 = *(a1 + 1);
    v17 = *(a1 + 2);
    v18 = *a2;
    v19 = *(a2 + 8);
    if (*a2 != v19)
    {
      while (*v18 != a3 || v18[1] != v14 || v18[2] != v15)
      {
        v18 += 6;
        if (v18 == v19)
        {
          goto LABEL_21;
        }
      }
    }

    if (v19 == v18)
    {
LABEL_21:
      std::string::basic_string[abi:ne200100]<0>(&v44, "");
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      v40[0] = 0;
      v40[1] = 0;
      HALS_System::GetInstance(&__str, 0, v40);
      v20 = HALS_System::CopyClientByObjectID(__str.__r_.__value_.__l.__data_, v16);
      if (__str.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
      }

      if (v20)
      {
        if (*(v20 + 759) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, *(v20 + 736), *(v20 + 744));
        }

        else
        {
          __str = *(v20 + 736);
        }

        std::string::operator=(&v44, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      std::to_string(&__str, v17);
      std::to_string(v46, v14);
      std::to_string(&v48, v15);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v37, size + 1);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v37;
      }

      else
      {
        v22 = v37.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v22, p_str, size);
      }

      *(&v22->__r_.__value_.__l.__data_ + size) = 46;
      if (v46[23] >= 0)
      {
        v24 = v46;
      }

      else
      {
        v24 = *v46;
      }

      if (v46[23] >= 0)
      {
        v25 = v46[23];
      }

      else
      {
        v25 = *&v46[8];
      }

      v26 = std::string::append(&v37, v24, v25);
      v27 = *&v26->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v28 = std::string::append(&v38, ".", 1uLL);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v48;
      }

      else
      {
        v30 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v31 = v48.__r_.__value_.__l.__size_;
      }

      v32 = std::string::append(&v39, v30, v31);
      v34 = v32->__r_.__value_.__r.__words[0];
      v45[0] = v32->__r_.__value_.__l.__size_;
      *(v45 + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
      v35 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if (v43 < 0)
      {
        operator delete(__p);
      }

      __p = v34;
      *v42 = v45[0];
      *&v42[7] = *(v45 + 7);
      v43 = v35;
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if ((v46[23] & 0x80000000) != 0)
      {
        operator delete(*v46);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      HALS_ObjectMap::ReleaseObject(v20, v33);
      LODWORD(__str.__r_.__value_.__l.__data_) = a3;
      HIDWORD(__str.__r_.__value_.__r.__words[0]) = v14;
      LODWORD(__str.__r_.__value_.__r.__words[1]) = v15;
      operator new();
    }
  }
}