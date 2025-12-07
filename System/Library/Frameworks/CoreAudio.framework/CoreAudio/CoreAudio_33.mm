void sub_1DE4680AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, std::runtime_error a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a2)
  {
    if (__p)
    {
      a35 = __p;
      operator delete(__p);
    }

    if (a21)
    {
      a22 = a21;
      operator delete(a21);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v45 - 176);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a43);
    std::runtime_error::~runtime_error(&a24);
    if (v44)
    {
      __cxa_free_exception(v43);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
    *(v45 - 176) = &a29;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100]((v45 - 176));
    *(v45 - 176) = &a37;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100]((v45 - 176));
    *(v45 - 176) = &a12;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100]((v45 - 176));
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE467A58);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *AMCP::IO_Core::Device_Timebase::get_engine_ptr@<X0>(AMCP::IO_Core::Device_Timebase *this@<X0>, void *a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  result = *(this + 5);
  if (!result || (result = std::__shared_weak_count::lock(result), (a2[1] = result) == 0) || (v5 = *(this + 4), (*a2 = v5) == 0))
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v22 = "Device_Timebase.cpp";
      v23 = 1024;
      v24 = 296;
      v25 = 2080;
      v26 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v12, "", v10);
    std::logic_error::logic_error(&v13, &v12);
    v13.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v14, &v13);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5991430;
    v15 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v14);
    v27 = "virtual Core::Engine_Ptr AMCP::IO_Core::Device_Timebase::get_engine_ptr() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v29 = 296;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  return result;
}

void sub_1DE46856C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::IO_Core::Device_Timebase::available_past_data(AMCP::IO_Core::Device_Timebase *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = *(this + 4);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = (v2->__vftable[5].~__shared_weak_count_0)(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

uint64_t AMCP::IO_Core::Device_Timebase::supports_past_data(AMCP::IO_Core::Device_Timebase *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v2 = std::__shared_weak_count::lock(v2);
    v3 = v2;
    if (v2)
    {
      v2 = *(this + 4);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = (v2->__vftable[4].__get_deleter)(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

BOOL AMCP::IO_Core::Device_Timebase::is_valid(AMCP::IO_Core::Device_Timebase *this)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 4) != 0;
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v4;
}

void AMCP::IO_Core::Device_Timebase::get_current_time(AMCP::IO_Core::Device_Timebase *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
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
      v20 = "Device_Timebase.cpp";
      v21 = 1024;
      v22 = 41;
      v23 = 2080;
      v24 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v10, "", v8);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v25 = "virtual CA::TimeStamp AMCP::IO_Core::Device_Timebase::get_current_time() const";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v27 = 41;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  (v2->__vftable[8].__on_zero_shared)(v2);

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1DE468A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

double AMCP::IO_Core::Device_Timebase::get_sample_rate(AMCP::IO_Core::Device_Timebase *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2)
  {
    v6 = this;
LABEL_7:
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = (v6 + 8);
      if (*(v6 + 31) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315906;
      v25 = "Device_Timebase.cpp";
      v26 = 1024;
      v27 = 255;
      v28 = 2080;
      v29 = "not (engine.operator BOOL())";
      v30 = 2080;
      *v31 = v11;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No engine for %s", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    v13 = (v6 + 8);
    if (*(v6 + 31) < 0)
    {
      v13 = *v13;
    }

    caulk::make_string(&v15, "No engine for %s", v12, v13);
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
    *&v31[2] = "virtual Sample_Rate AMCP::IO_Core::Device_Timebase::get_sample_rate() const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v33 = 255;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v2 = std::__shared_weak_count::lock(v2);
  v3 = v2;
  if (!v2 || (v2 = *(this + 4)) == 0)
  {
    v6 = this;
    goto LABEL_7;
  }

  v4 = (v2->__get_deleter)(v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v4;
}

void sub_1DE468DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v29 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a26);
  MEMORY[0x1E12C0F00](&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v28)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 145));
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

unint64_t AMCP::IO_Core::Device_Timebase::get_engine_info(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(a1 + 32)) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      v28 = "Device_Timebase.cpp";
      v29 = 1024;
      v30 = 209;
      v31 = 2080;
      v32 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual Engine_Info AMCP::IO_Core::Device_Timebase::get_engine_info(Buffer_Alignment) const";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v35 = 209;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v7 = *v6;
  if (a2 == 1)
  {
    v8 = (*(v7 + 80))(v6);
    v9 = (*(*v6 + 96))(v6);
  }

  else
  {
    v8 = (*(v7 + 88))(v6);
    v9 = (*(*v6 + 104))(v6);
  }

  v10 = v9;
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v8 | (v10 << 32);
}

void sub_1DE4691EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::get_state(os_unfair_lock_s *this@<X0>, AMCP::IO_Core::Play_State_Manager *a2@<X8>)
{
  os_unfair_lock_lock(this + 16);
  AMCP::IO_Core::Play_State_Manager::get_state_snapshot(a2, &this[18]._os_unfair_lock_opaque);

  os_unfair_lock_unlock(this + 16);
}

BOOL AMCP::IO_Core::Device_Timebase::is_running(AMCP::IO_Core::Device_Timebase *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v22 = "Device_Timebase.cpp";
      v23 = 1024;
      v24 = 106;
      v25 = 2080;
      v26 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v12, "", v10);
    std::logic_error::logic_error(&v13, &v12);
    v13.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v14, &v13);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5991430;
    v15 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v14);
    v27 = "virtual BOOL AMCP::IO_Core::Device_Timebase::is_running() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v29 = 106;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v4 = (v2->__vftable[3].__on_zero_shared)(v2) != 0;
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v4;
}

void sub_1DE4695C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::stop(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 64));
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 32);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  std::string::basic_string[abi:ne200100]<0>(__p, "Device_Timebase");
  v7 = AMCP::IO_Core::Play_State_Manager::stop((a1 + 72), v2, __p);
  if (SBYTE3(v24) < 0)
  {
    operator delete(*__p);
  }

  v8 = *(a1 + 88);
  *(a1 + 88) = v7;
  if (v8 != v7 && v6)
  {
    (*(*v6 + 144))(v6, v7);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      if (!*(a1 + 88))
      {
        v12 = *(a1 + 48);
        if (v12)
        {
          v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v13 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = (a1 + 8);
            if (*(a1 + 31) < 0)
            {
              v17 = *v17;
            }

            *__p = 136315650;
            *&__p[4] = "Device_Timebase.cpp";
            v21 = 1024;
            v22 = 197;
            v23 = 2080;
            v24 = v17;
            _os_log_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_INFO, "%32s:%-5d stop - timebase swap: %s", __p, 0x1Cu);
          }

          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v18 = *(a1 + 40);
          *(a1 + 32) = v12;
          *(a1 + 40) = v11;
          if (v18)
          {
            std::__shared_weak_count::__release_weak(v18);
          }

          v19 = *(a1 + 56);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          if (v19)
          {
            std::__shared_weak_count::__release_weak(v19);
          }

          if (*(a1 + 104) == 1)
          {
            *(a1 + 104) = 0;
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  os_unfair_lock_unlock((a1 + 64));
}

void sub_1DE46989C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, int a10, __int16 a11, int a12, __int16 a13, uint64_t a14)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  os_unfair_lock_unlock(v14 + 16);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::begin_cycle(AMCP::IO_Core::Device_Timebase *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
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
      v20 = "Device_Timebase.cpp";
      v21 = 1024;
      v22 = 232;
      v23 = 2080;
      v24 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v10, "", v8);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v25 = "virtual void AMCP::IO_Core::Device_Timebase::begin_cycle()";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v27 = 232;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  (v2->__vftable[7].__on_zero_shared_weak)(v2);

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1DE469CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::start(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v47 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 64));
  v4 = *(a1 + 40);
  if (!v4 || (v4 = std::__shared_weak_count::lock(v4), (v5 = v4) == 0) || (v6 = *(a1 + 32)) == 0)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *__p = 136315650;
      *&__p[4] = "Device_Timebase.cpp";
      v39 = 1024;
      v40 = 125;
      v41 = 2080;
      v42 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v29, "", v27);
    std::logic_error::logic_error(&v30, &v29);
    v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v31, &v30);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    v31.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v31);
    *&v44[2] = "virtual void AMCP::IO_Core::Device_Timebase::start(Play_State_Manager::Play_Request)";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v46 = 125;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v28);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Device_Timebase");
  v7 = AMCP::IO_Core::Play_State_Manager::start((a1 + 72), v2, __p);
  v8 = v7;
  if (SBYTE3(v42) < 0)
  {
    operator delete(*__p);
  }

  if (!v8)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      *__p = 136315650;
      *&__p[4] = "Device_Timebase.cpp";
      v39 = 1024;
      v40 = 131;
      v41 = 2080;
      v42 = "not (new_state == Transport_State::on or new_state == Transport_State::prewarm)";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO_Thread::start: Start failed to change the prewarming state in a reasonable way", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v29, "IO_Thread::start: Start failed to change the prewarming state in a reasonable way", v22);
    std::logic_error::logic_error(&v30, &v29);
    v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v31, &v30);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    v31.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v31);
    *&v44[2] = "virtual void AMCP::IO_Core::Device_Timebase::start(Play_State_Manager::Play_Request)";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v46 = 131;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v28);
  }

  v9 = *(a1 + 88);
  if (*(a1 + 80))
  {
    v10 = 1;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(a1 + 72) != 0;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  if (v10 && *(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

LABEL_14:
  *(a1 + 88) = v8;
  if (v9 != v8)
  {
    AMCP::Logging_Settings::instance(v7);
    if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v11), BYTE2(AMCP::Logging_Settings::instance(void)::s_instance) == 1))
    {
      v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v12 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
        v16 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v16 = *v16;
        }

        std::string::basic_string[abi:ne200100]<0>(&v31, off_1E8678810[*(a1 + 88)]);
        if (SHIBYTE(v32) >= 0)
        {
          v17 = &v31;
        }

        else
        {
          v17 = v31.__vftable;
        }

        *__p = 136315906;
        *&__p[4] = "Device_Timebase.cpp";
        v39 = 1024;
        v40 = 147;
        v41 = 2080;
        v42 = v16;
        v43 = 2080;
        *v44 = v17;
        _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d Engine(%s)::set_transport_state: %s", __p, 0x26u);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31.__vftable);
        }
      }
    }

    (*(*v6 + 144))(v6, *(a1 + 88));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  os_unfair_lock_unlock((a1 + 64));
}

void sub_1DE46A41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *buf, int a36, __int16 a37, __int16 a38, __int16 a39, __int16 a40, __int16 a41, char a42, char a43)
{
  if (a2)
  {
    v47 = __cxa_begin_catch(exception_object);
    v48 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v48 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v47);
    }

    v50 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v49 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      v51 = *v50;
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    else
    {
      v51 = *v50;
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = (v43 + 8);
      if (*(v43 + 31) < 0)
      {
        v52 = *v52;
      }

      LODWORD(buf) = 136315650;
      *(v46 + 4) = "Device_Timebase.cpp";
      a37 = 1024;
      *(v46 + 14) = 153;
      a40 = 2080;
      *(v46 + 20) = v52;
      _os_log_error_impl(&dword_1DE1F9000, v51, OS_LOG_TYPE_ERROR, "%32s:%-5d Error starting device: %s", &buf, 0x1Cu);
    }

    *(v43 + 88) = (*(*v45 + 136))(v45);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Device_Timebase");
    AMCP::IO_Core::Play_State_Manager::stop((v43 + 72), v44, &buf);
    if (a43 < 0)
    {
      operator delete(buf);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE46A5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  __cxa_end_catch();
  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  os_unfair_lock_unlock(v34 + 16);
  _Unwind_Resume(a1);
}

void sub_1DE46A600(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE46A604);
  }

  __clang_call_terminate(a1);
}

void sub_1DE46A624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  os_unfair_lock_unlock(v34 + 16);
  _Unwind_Resume(a1);
}

void sub_1DE46A63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  os_unfair_lock_unlock(v35 + 16);
  _Unwind_Resume(a1);
}

double AMCP::IO_Core::Device_Timebase::get_host_ticks_per_frame(AMCP::IO_Core::Device_Timebase *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v22 = "Device_Timebase.cpp";
      v23 = 1024;
      v24 = 86;
      v25 = 2080;
      v26 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v12, "", v10);
    std::logic_error::logic_error(&v13, &v12);
    v13.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v14, &v13);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5991430;
    v15 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v14);
    v27 = "virtual double AMCP::IO_Core::Device_Timebase::get_host_ticks_per_frame() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v29 = 86;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v4 = (v2->__vftable[8].__get_deleter)(v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v4;
}

void sub_1DE46A9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
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

uint64_t AMCP::IO_Core::Device_Timebase::convert_sample_to_host_time(AMCP::IO_Core::Device_Timebase *this, double a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = *(this + 5);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 4)) == 0)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315650;
      v39 = "Device_Timebase.cpp";
      v40 = 1024;
      v41 = 62;
      v42 = 2080;
      v43 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v31, "", v23);
    std::logic_error::logic_error(&v24, &v31);
    v24.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v24);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    __p.__vftable = &unk_1F5991430;
    v33 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v45[2] = "virtual uint64_t AMCP::IO_Core::Device_Timebase::convert_sample_to_host_time(double) const";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v47 = 62;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v28);
  }

  v7 = (*(*v6 + 328))(*(this + 4));
  if ((v7 & 1) == 0)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      (*(*v6 + 16))(&v30, v6);
      v14 = applesauce::CF::StringRef::operator->(&v30);
      applesauce::CF::convert_to<std::string,0>(&__p, *v14);
      if (SHIBYTE(v33) >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__vftable;
      }

      *buf = 136315906;
      v39 = "Device_Timebase.cpp";
      v40 = 1024;
      v41 = 63;
      v42 = 2080;
      v43 = "not (engine->has_time())";
      v44 = 2080;
      *v45 = p_p;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s The engine (%s) must be running in order to translate time", buf, 0x26u);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p.__vftable);
      }

      applesauce::CF::StringRef::~StringRef(&v30);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    (*(*v6 + 16))(&v25, v6);
    v16 = applesauce::CF::StringRef::operator->(&v25);
    applesauce::CF::convert_to<std::string,0>(&v28, *v16);
    if (v29 >= 0)
    {
      v18 = &v28;
    }

    else
    {
      v18 = v28;
    }

    caulk::make_string(&v31, "The engine (%s) must be running in order to translate time", v17, v18);
    std::logic_error::logic_error(&v26, &v31);
    v26.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v26);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    __p.__vftable = &unk_1F5991430;
    v33 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v45[2] = "virtual uint64_t AMCP::IO_Core::Device_Timebase::convert_sample_to_host_time(double) const";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v47 = 63;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  v8 = (*(*v6 + 352))(v6, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v8;
}

uint64_t AMCP::IO_Core::Device_Timebase::get_clock_domain(AMCP::IO_Core::Device_Timebase *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v22 = "Device_Timebase.cpp";
      v23 = 1024;
      v24 = 96;
      v25 = 2080;
      v26 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v12, "", v10);
    std::logic_error::logic_error(&v13, &v12);
    v13.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v14, &v13);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5991430;
    v15 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v14);
    v27 = "virtual uint32_t AMCP::IO_Core::Device_Timebase::get_clock_domain() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v29 = 96;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v4 = (v2->__vftable[1].~__shared_weak_count_0)(v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v4;
}

void sub_1DE46B484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::get_last_zero_time_stamp(AMCP::IO_Core::Device_Timebase *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v4 = *(this + 4)) == 0)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v35 = "Device_Timebase.cpp";
      v36 = 1024;
      v37 = 51;
      v38 = 2080;
      v39 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v27, "", v19);
    std::logic_error::logic_error(&v20, &v27);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v20);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    __p.__vftable = &unk_1F5991430;
    v29 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v41[2] = "virtual CA::TimeStamp AMCP::IO_Core::Device_Timebase::get_last_zero_time_stamp() const";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v43 = 51;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  v5 = (*(*v4 + 328))(v4);
  if ((v5 & 1) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      (*(*v4 + 16))(&v26, v4);
      v10 = applesauce::CF::StringRef::operator->(&v26);
      applesauce::CF::convert_to<std::string,0>(&__p, *v10);
      if (SHIBYTE(v29) >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__vftable;
      }

      *buf = 136315906;
      v35 = "Device_Timebase.cpp";
      v36 = 1024;
      v37 = 52;
      v38 = 2080;
      v39 = "not (engine->has_time())";
      v40 = 2080;
      *v41 = p_p;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s engine (%s) does not have time", buf, 0x26u);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p.__vftable);
      }

      applesauce::CF::StringRef::~StringRef(&v26);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    (*(*v4 + 16))(&v21, v4);
    v12 = applesauce::CF::StringRef::operator->(&v21);
    applesauce::CF::convert_to<std::string,0>(&v24, *v12);
    if (v25 >= 0)
    {
      v14 = &v24;
    }

    else
    {
      v14 = v24;
    }

    caulk::make_string(&v27, "engine (%s) does not have time", v13, v14);
    std::logic_error::logic_error(&v22, &v27);
    v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v22);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    __p.__vftable = &unk_1F5991430;
    v29 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v41[2] = "virtual CA::TimeStamp AMCP::IO_Core::Device_Timebase::get_last_zero_time_stamp() const";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v43 = 52;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  (*(*v4 + 304))(v4);

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void AMCP::IO_Core::Device_Timebase::get_underlying_device_uid(AMCP::IO_Core::Device_Timebase *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 5);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 4);
    if (v7)
    {
      (*(*v7 + 16))(&cf);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(a2, cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_1DE46BD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::StringRef::~StringRef(&a10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::~Device_Timebase(AMCP::IO_Core::Device_Timebase *this)
{
  AMCP::IO_Core::Device_Timebase::~Device_Timebase(this);

  JUMPOUT(0x1E12C1730);
}

{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12C1730);
}

void CAXException::~CAXException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12C1730);
}

void virtual thunk toCAException::~CAException(CAException *this)
{
  std::exception::~exception((this + *(*this - 24)));
}

{
  std::exception::~exception((this + *(*this - 24)));

  JUMPOUT(0x1E12C1730);
}

OS::CF::MutableDictionary *OS::CF::MutableDictionary::MutableDictionary(OS::CF::MutableDictionary *a1, uint64_t a2, unint64_t a3)
{
  OS::CF::MutableDictionary::MutableDictionary(a1);
  OS::CF::Dictionary::Dictionary(v7, a2, a3);
  OS::CF::MutableDictionary::operator=(a1, v7[1]);
  OS::CF::UntypedObject::~UntypedObject(v7);
  return a1;
}

uint64_t OS::CF::MutableDictionary::operator=(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  }

  return OS::CF::UntypedObject::operator=(a1, MutableCopy);
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::HALB_PowerAssertion(OS::CF::String,OS::CF::String,std::optional<int>,std::optional<IOPMAssertionCategory>,__CFArray const*,HALB_PowerAssertion::DeviceRestart)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
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
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_PowerAssertion::HALB_PowerAssertion: failed to create the power assertion, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::HALB_PowerAssertion(OS::CF::String,OS::CF::String,std::optional<int>,std::optional<IOPMAssertionCategory>,__CFArray const*,HALB_PowerAssertion::DeviceRestart)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALB_PowerAssertion::HALB_PowerAssertion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v33 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 4) = a7;
  *(a1 + 8) = 0;
  OS::CF::UntypedObject::UntypedObject((a1 + 16), *(a2 + 8));
  *(a1 + 16) = &unk_1F5991188;
  OS::CF::UntypedObject::UntypedObject((a1 + 32), *(a3 + 8));
  *(a1 + 32) = &unk_1F5991188;
  *(a1 + 48) = a4;
  v13 = *(a2 + 8);
  v25 = @"AssertType";
  v26 = v13;
  v14 = *(a3 + 8);
  v27 = @"AssertName";
  v28 = v14;
  OS::CF::Number::Number<int>(v22, 0);
  v29 = @"AssertLevel";
  v30 = v22[1];
  v31 = @"ResourcesUsed";
  v32 = a6;
  OS::CF::MutableDictionary::MutableDictionary(v23, &v25, 4uLL);
  OS::CF::UntypedObject::~UntypedObject(v22);
  if (AssertionProperties)
  {
    if ((a4 & 0x100000000) != 0)
    {
      OS::CF::Number::Number<int>(&v25, a4);
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(AssertionProperties, @"AssertionOnBehalfOfPID", v26);
      OS::CF::UntypedObject::~UntypedObject(&v25);
    }

    if ((a5 & 0x100000000) != 0)
    {
      OS::CF::Number::Number<int>(&v25, a5);
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(AssertionProperties, @"Category", v26);
      OS::CF::UntypedObject::~UntypedObject(&v25);
    }

    if (!*(a1 + 4))
    {
      OS::CF::Boolean::Boolean(&v25, 1);
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(AssertionProperties, @"AllowsDeviceRestart", v26);
      OS::CF::UntypedObject::~UntypedObject(&v25);
    }

    v15 = IOPMAssertionCreateWithProperties(AssertionProperties, a1);
    if (v15)
    {
      v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
      }

      v18 = *(v16 + 8);
      v19 = (v15 << 32) | 0x62;
      v20 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v20 + 16) = 0;
      *(v20 + 20) = 16;
      *(v20 + 24) = "HALB_PowerAssertion.cpp";
      *(v20 + 32) = v19;
      *v20 = &unk_1F59716B8;
      *(v20 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v18, v20);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }
  }

  OS::CF::UntypedObject::~UntypedObject(v23);
  return a1;
}

void sub_1DE46C400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject(v8);
  OS::CF::UntypedObject::~UntypedObject(v7);
  _Unwind_Resume(a1);
}

void HALB_PowerAssertion::Take(std::chrono::system_clock::time_point *this)
{
  v43 = *MEMORY[0x1E69E9840];
  OS::CF::String::AsCString(&this[2], v42, 256);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  OS::CF::String::AsCString(&this[4], v26, 256);
  this[1].__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v2 = BYTE4(this[6].__d_.__rep_);
  v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v3)
    {
      rep = this->__d_.__rep_;
      v5 = this[6].__d_.__rep_;
      v16 = 136316418;
      *theValue = "HALB_PowerAssertion.cpp";
      *&theValue[8] = 1024;
      *&theValue[10] = 123;
      v18 = 1024;
      v19 = rep;
      v20 = 2082;
      v21 = v42;
      v22 = 2082;
      v23 = v26;
      v24 = 1024;
      v25 = v5;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  HALB_PowerAssertion::Take: taking power assertion ID %u of type '%{public}s' with name: '%{public}s' on behalf of %d";
      v8 = 50;
LABEL_6:
      _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEFAULT, v7, &v16, v8);
    }
  }

  else if (v3)
  {
    v9 = this->__d_.__rep_;
    v16 = 136316162;
    *theValue = "HALB_PowerAssertion.cpp";
    *&theValue[8] = 1024;
    *&theValue[10] = 127;
    v18 = 1024;
    v19 = v9;
    v20 = 2082;
    v21 = v42;
    v22 = 2082;
    v23 = v26;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "%25s:%-5d  HALB_PowerAssertion::Take: taking power assertion ID %u of type '%{public}s' with name: '%{public}s'";
    v8 = 44;
    goto LABEL_6;
  }

  v10 = this->__d_.__rep_;
  if (v10)
  {
    OS::CF::Number::Number<int>(&v16, 255);
    v11 = IOPMAssertionSetProperty(v10, @"AssertLevel", *&theValue[4]);
    OS::CF::UntypedObject::~UntypedObject(&v16);
    if (v11)
    {
      v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
      }

      v14 = *(v12 + 8);
      v15 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v15 + 16) = 0;
      *(v15 + 20) = 16;
      *(v15 + 24) = "HALB_PowerAssertion.cpp";
      *(v15 + 32) = (v11 << 32) | 0x86;
      *v15 = &unk_1F5971710;
      *(v15 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v14, v15);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Take(void)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
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
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_PowerAssertion::Take: failed to take the power assertion, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Take(void)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALB_PowerAssertion::Release(const std::chrono::system_clock::time_point *this)
{
  v47 = *MEMORY[0x1E69E9840];
  OS::CF::String::AsCString(&this[2], v46, 256);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  *v30 = 0u;
  OS::CF::String::AsCString(&this[4], v30, 256);
  v18 = std::chrono::system_clock::to_time_t(this + 1);
  v2 = localtime(&v18);
  strftime(v29, 0x1EuLL, "%Y-%m-%d %H:%M:%S", v2);
  v3 = (1000 * (std::chrono::system_clock::now().__d_.__rep_ - this[1].__d_.__rep_)) / 1000000000.0;
  v4 = BYTE4(this[6].__d_.__rep_);
  v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (v5)
    {
      rep = this->__d_.__rep_;
      v7 = this[6].__d_.__rep_;
      *buf = 136316930;
      *theValue = "HALB_PowerAssertion.cpp";
      *&theValue[8] = 1024;
      *&theValue[10] = 161;
      v21 = 1024;
      v22 = rep;
      v23 = 2082;
      v24 = v46;
      v25 = 2082;
      v26 = v30;
      v27 = 1024;
      *v28 = v7;
      *&v28[4] = 2080;
      *&v28[6] = v29;
      *&v28[14] = 2048;
      *&v28[16] = v3;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  HALB_PowerAssertion::Release: releasing power assertion ID %u of type '%{public}s' with name: '%{public}s' on behalf of %d taken at %s for %.6f seconds";
      v10 = 70;
LABEL_6:
      _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
    }
  }

  else if (v5)
  {
    v11 = this->__d_.__rep_;
    *buf = 136316674;
    *theValue = "HALB_PowerAssertion.cpp";
    *&theValue[8] = 1024;
    *&theValue[10] = 165;
    v21 = 1024;
    v22 = v11;
    v23 = 2082;
    v24 = v46;
    v25 = 2082;
    v26 = v30;
    v27 = 2080;
    *v28 = v29;
    *&v28[8] = 2048;
    *&v28[10] = v3;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "%25s:%-5d  HALB_PowerAssertion::Release: releasing power assertion ID %u of type '%{public}s' with name: '%{public}s' taken at %s for %.6f seconds";
    v10 = 64;
    goto LABEL_6;
  }

  v12 = this->__d_.__rep_;
  if (v12)
  {
    OS::CF::Number::Number<int>(buf, 0);
    v13 = IOPMAssertionSetProperty(v12, @"AssertLevel", *&theValue[4]);
    OS::CF::UntypedObject::~UntypedObject(buf);
    if (v13)
    {
      v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
      }

      v16 = *(v14 + 8);
      v17 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v17 + 16) = 0;
      *(v17 + 20) = 16;
      *(v17 + 24) = "HALB_PowerAssertion.cpp";
      *(v17 + 32) = (v13 << 32) | 0xAC;
      *v17 = &unk_1F5971768;
      *(v17 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v16, v17);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }
}

void sub_1DE46CB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OS::CF::UntypedObject::~UntypedObject(va);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Release(void)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
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
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_PowerAssertion::Release: failed to release the power assertion, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Release(void)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALB_PowerAssertion::Rename(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *(a1 + 40);
    v5 = *(a2 + 8);
    *(a1 + 40) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v6 = IOPMAssertionSetProperty(*a1, @"AssertName", *(a2 + 8));
    if (v6)
    {
      v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*MEMORY[0x1E69E3C08])
      {
        v9 = *(v7 + 8);
        v10 = (v6 << 32) | 0xB8;
        v11 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v11 + 16) = 0;
        *(v11 + 20) = 16;
        *(v11 + 24) = "HALB_PowerAssertion.cpp";
        *(v11 + 32) = v10;
        *v11 = &unk_1F59717C0;
        *(v11 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v9, v11);
        if (v8)
        {

          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Rename(OS::CF::String)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
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
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_PowerAssertion::Rename: failed to change the name of the power assertion, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALB_PowerAssertion::Rename(OS::CF::String)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

unint64_t AMCP::DAL::Ramstad_Resampler::get_latency(AMCP::DAL::Ramstad_Resampler *this)
{
  v1 = **(this + 12);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56) == 8;
  v5 = v2 / v3;
  if (v5 >= 1.0)
  {
    v6 = dbl_1DE7580D0[v4];
  }

  else
  {
    v6 = dbl_1DE7580C0[v4] / v5;
  }

  return vcvtad_u64_f64(v6);
}

uint64_t AMCP::DAL::Ramstad_Resampler::get_expected_output_samples_for_input_samples(AMCP::DAL::Ramstad_Resampler *this, int a2, unint64_t *a3)
{
  v3 = *(this + 12);
  v4 = *(this + 13);
  if (v3 == v4)
  {
    return 0;
  }

  do
  {
    v9 = 0;
    v7 = *v3++;
    LODWORD(result) = RamstadSRC::outputSamplesForInputSamples(v7, a2, &v9);
    *a3 = v9;
  }

  while (v3 != v4);
  return result;
}

uint64_t AMCP::DAL::Ramstad_Resampler::get_required_input_samples_for_output_samples(AMCP::DAL::Ramstad_Resampler *this, int a2)
{
  v2 = *(this + 12);
  v3 = *(this + 13);
  if (v2 == v3)
  {
    return 0;
  }

  do
  {
    v5 = *v2++;
    LODWORD(result) = RamstadSRC::inputSamplesForOutputSamples(v5, a2);
  }

  while (v2 != v3);
  return result;
}

double AMCP::DAL::Ramstad_Resampler::process(uint64_t a1, const float ***a2, AMCP::DAL::PCM_Data_Handler **a3, void *a4, double a5, double a6, double a7)
{
  v844 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == *(a1 + 104))
  {
    v808 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v808 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v810 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v809 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v809)
    {
      atomic_fetch_add_explicit(&v809->__shared_owners_, 1uLL, memory_order_relaxed);
      v811 = *v810;
      std::__shared_weak_count::__release_shared[abi:ne200100](v809);
    }

    else
    {
      v811 = *v810;
    }

    if (os_log_type_enabled(v811, OS_LOG_TYPE_ERROR))
    {
      *v836 = 136315650;
      *&v836[4] = "Ramstad_Resampler.cpp";
      v837 = 1024;
      v838 = 37;
      v839 = 2080;
      v840 = "not (not m_resamplers.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v811, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v836, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v826);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v829, "", v820);
    std::logic_error::logic_error(&v825, &v829);
    v825.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v830, &v825);
    v832 = 0;
    v833 = 0;
    v834 = 0;
    v835 = -1;
    v830.__vftable = &unk_1F5991430;
    v831 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v836, &v830);
    v841 = "virtual Sample_Time_Range AMCP::DAL::Ramstad_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v842 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ramstad_Resampler.cpp";
    v843 = 37;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v828);
  }

  if (*a2 == a2[1])
  {
    v812 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v812 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v814 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v813 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v813)
    {
      atomic_fetch_add_explicit(&v813->__shared_owners_, 1uLL, memory_order_relaxed);
      v815 = *v814;
      std::__shared_weak_count::__release_shared[abi:ne200100](v813);
    }

    else
    {
      v815 = *v814;
    }

    if (os_log_type_enabled(v815, OS_LOG_TYPE_ERROR))
    {
      *v836 = 136315650;
      *&v836[4] = "Ramstad_Resampler.cpp";
      v837 = 1024;
      v838 = 38;
      v839 = 2080;
      v840 = "not (not source.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v815, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v836, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v826);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v829, "", v821);
    std::logic_error::logic_error(&v825, &v829);
    v825.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v830, &v825);
    v832 = 0;
    v833 = 0;
    v834 = 0;
    v835 = -1;
    v830.__vftable = &unk_1F5991430;
    v831 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v836, &v830);
    v841 = "virtual Sample_Time_Range AMCP::DAL::Ramstad_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v842 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ramstad_Resampler.cpp";
    v843 = 38;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v828);
  }

  std::string::basic_string[abi:ne200100]<0>(v836, "scale ratio");
  v15 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a4, v836);
  if (v15)
  {
    v16 = AMCP::Thing::convert_to<double>((v15 + 5));
  }

  else
  {
    v16 = 1.0;
  }

  if (SBYTE3(v840) < 0)
  {
    operator delete(*v836);
  }

  v823 = a3;
  v824 = a2;
  *&v827[1] = 0;
  v17 = a7 - a6;
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  if (v18 != v19)
  {
    v20 = vcvtmd_s64_f64(v17);
    v21 = vcvtmd_s64_f64(a5);
    LODWORD(v7) = vcvtmd_s64_f64(v16);
    v22 = vcvtmd_s64_f64((v16 - floor(v16)) * 2147483650.0);
    do
    {
      v23 = *v18;
      *(v23 + 60) = v7;
      *(v23 + 68) = v22;
      *(v23 + 80) = (v7 << 32 >> 1) + v22;
      *(v23 + 256) = -1;
      *(v23 + 264) = -1;
      if (*(a1 + 88) == 1)
      {
        v24 = RamstadSRC::outputSamplesForInputSamples(v23, v21, &v827[1]);
        if (v24 <= 0)
        {
          v798 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v798 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v24);
          }

          v800 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v799 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v799)
          {
            atomic_fetch_add_explicit(&v799->__shared_owners_, 1uLL, memory_order_relaxed);
            v801 = *v800;
            std::__shared_weak_count::__release_shared[abi:ne200100](v799);
          }

          else
          {
            v801 = *v800;
          }

          if (os_log_type_enabled(v801, OS_LOG_TYPE_ERROR))
          {
            *v836 = 136315650;
            *&v836[4] = "Ramstad_Resampler.cpp";
            v837 = 1024;
            v838 = 50;
            v839 = 2080;
            v840 = "not (output_length > 0)";
            _os_log_error_impl(&dword_1DE1F9000, v801, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v836, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v826);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v829, "", v806);
          std::logic_error::logic_error(&v825, &v829);
          v825.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v830, &v825);
          v832 = 0;
          v833 = 0;
          v834 = 0;
          v835 = -1;
          v830.__vftable = &unk_1F5991430;
          v831 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v836, &v830);
          v841 = "virtual Sample_Time_Range AMCP::DAL::Ramstad_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v842 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ramstad_Resampler.cpp";
          v843 = 50;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v828);
        }

        v17 = v24;
      }

      else
      {
        v25 = RamstadSRC::inputSamplesForOutputSamples(v23, v20);
        *&v827[1] = v25;
        v26 = v25 - v21;
        if (v26 < 0)
        {
          v26 = v21 - v25;
        }

        if (v26 >= 2)
        {
          v802 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v802 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v25);
          }

          v804 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v803 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v803)
          {
            atomic_fetch_add_explicit(&v803->__shared_owners_, 1uLL, memory_order_relaxed);
            v805 = *v804;
            std::__shared_weak_count::__release_shared[abi:ne200100](v803);
          }

          else
          {
            v805 = *v804;
          }

          if (os_log_type_enabled(v805, OS_LOG_TYPE_ERROR))
          {
            *v836 = 136315650;
            *&v836[4] = "Ramstad_Resampler.cpp";
            v837 = 1024;
            v838 = 56;
            v839 = 2080;
            v840 = "not (std::abs(actual_input_consumed - number_of_samples.get()) <= 1.0)";
            _os_log_error_impl(&dword_1DE1F9000, v805, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v836, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v826);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v829, "", v807);
          std::logic_error::logic_error(&v825, &v829);
          v825.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v830, &v825);
          v832 = 0;
          v833 = 0;
          v834 = 0;
          v835 = -1;
          v830.__vftable = &unk_1F5991430;
          v831 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v836, &v830);
          v841 = "virtual Sample_Time_Range AMCP::DAL::Ramstad_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v842 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ramstad_Resampler.cpp";
          v843 = 56;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v828);
        }
      }

      ++v18;
    }

    while (v18 != v19);
  }

  v27 = *v823;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*v823);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(&v829, v27, a6, a6 + v17);
  v29 = *v823;
  if (*v823)
  {
    if ((*(v29 + 20) & 0x20) != 0)
    {
      v30 = 1;
    }

    else
    {
      v30 = *(v29 + 36);
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = *v824;
  v32 = v824[1];
  v33 = v32 - *v824;
  if (v33 != v829.__r_.__value_.__l.__size_ - v829.__r_.__value_.__r.__words[0])
  {
    v816 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v816 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v28);
    }

    v818 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v817 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v817)
    {
      atomic_fetch_add_explicit(&v817->__shared_owners_, 1uLL, memory_order_relaxed);
      v819 = *v818;
      std::__shared_weak_count::__release_shared[abi:ne200100](v817);
    }

    else
    {
      v819 = *v818;
    }

    if (os_log_type_enabled(v819, OS_LOG_TYPE_ERROR))
    {
      *v836 = 136315650;
      *&v836[4] = "Ramstad_Resampler.cpp";
      v837 = 1024;
      v838 = 65;
      v839 = 2080;
      v840 = "not (source.size() == dest.size())";
      _os_log_error_impl(&dword_1DE1F9000, v819, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v836, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v827);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v828, "", v822);
    std::logic_error::logic_error(&v826, &v828);
    v826.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v830, &v826);
    v832 = 0;
    v833 = 0;
    v834 = 0;
    v835 = -1;
    v830.__vftable = &unk_1F5991430;
    v831 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v836, &v830);
    v841 = "virtual Sample_Time_Range AMCP::DAL::Ramstad_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v842 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Ramstad_Resampler.cpp";
    v843 = 65;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v825);
  }

  v34 = v33 >> 4;
  if (v33 >> 4 == 2)
  {
    RamstadSRC::processStereo(v836, **(a1 + 96), *v31, v31[2], *v829.__r_.__value_.__l.__data_, *(v829.__r_.__value_.__r.__words[0] + 16), vcvtmd_s64_f64(a5), vcvtmd_s64_f64(v17), v30, v30);
    goto LABEL_314;
  }

  if (v34 != 1)
  {
    v823 = &v823;
    MEMORY[0x1EEE9AC00](v28);
    v41 = (8 * v34 + 15) & 0xFFFFFFFFFFFFFFF0;
    v42 = &v823 - v41;
    v44 = v43 >> 1;
    if (v44 >= 0x200)
    {
      v45 = 512;
    }

    else
    {
      v45 = v44;
    }

    bzero(&v823 - v41, v45);
    MEMORY[0x1EEE9AC00](v46);
    v47 = &v823 - v41;
    bzero(&v823 - v41, v45);
    if (v32 != v31)
    {
      v48 = *v824;
      v49 = v829.__r_.__value_.__r.__words[0];
      if (v34 <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = v34;
      }

      v51 = (&v823 - v41);
      v52 = (&v823 - v41);
      do
      {
        v53 = *v48;
        v48 += 2;
        *v51++ = v53;
        v54 = *v49;
        v49 += 2;
        *v52++ = v54;
        --v50;
      }

      while (v50);
    }

    v55 = **(a1 + 96);
    v56 = vcvtmd_s64_f64(a5);
    v57 = vcvtmd_s64_f64(v17);
    RamstadSRC::checkPreflight(v836, v55, v56, v57);
    if (v836[4] != 1)
    {
      goto LABEL_313;
    }

    if (*(v55 + 93) == 1)
    {
      if (*(v55 + 92))
      {
        v58 = *(v55 + 60);
        v60 = *(v55 + 68);
        v59 = *(v55 + 72);
        v61 = *(v55 + 88);
        v62 = *(v55 + 16);
        v63 = *(v62 + 16);
        v64 = *(v62 + 40);
        v65 = *(v55 + 160);
        v66 = *(v55 + 184);
        v67 = *(v55 + 52);
        if (*(v55 + 56) == 8)
        {
          if (v57 < 1)
          {
            v103 = 0;
            v69 = 0;
          }

          else
          {
            v68 = 0;
            v69 = 0;
            LODWORD(v70) = 0;
            for (i = 0; i != v57; ++i)
            {
              if (v61 >= 1)
              {
                v72 = 0;
                v70 = v70;
                do
                {
                  v73 = *(v55 + 48);
                  if (v73)
                  {
                    v74 = (&v823 - v41);
                    v75 = v65;
                    v76 = v66;
                    do
                    {
                      v77 = *v74++;
                      v78 = vdupq_lane_s64(COERCE__INT64(*(v77 + 4 * v70)), 0);
                      v80 = *v75;
                      v79 = v75[1];
                      v82 = v75[2];
                      v81 = v75[3];
                      v83 = vmlaq_f64(v78, v82, v63[2]);
                      v84 = vmlaq_f64(v78, v81, v63[3]);
                      v85 = vmlaq_f64(v78, *v75, *v63);
                      v86 = vmlaq_f64(vmlaq_f64(v78, v79, v63[1]), v76[1], v63[5]);
                      v87 = vmlaq_f64(v85, *v76, v63[4]);
                      v88 = vmlaq_f64(v84, v76[3], v63[7]);
                      v89 = vmlaq_f64(v83, v76[2], v63[6]);
                      v76[2] = v82;
                      v76[3] = v81;
                      *v76 = v80;
                      v76[1] = v79;
                      v76 += 4;
                      v75[2] = v89;
                      v75[3] = v88;
                      *v75 = v87;
                      v75[1] = v86;
                      v75 += 4;
                      --v73;
                    }

                    while (v73);
                  }

                  v70 += v30;
                  ++v72;
                }

                while (v72 != v61);
              }

              v90 = *(v55 + 48);
              if (v90)
              {
                v92 = v65;
                v93 = v66;
                v94 = (&v823 - v41);
                do
                {
                  v95 = v93[2];
                  v96 = v93[3];
                  v97 = *v93;
                  v98 = v93[1];
                  v93 += 4;
                  v99 = *v94++;
                  v91 = (v64 + ((2 * v59) << 6));
                  v100 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v91[4], v97), *v92, *v91), vmlaq_f64(vmulq_f64(v91[6], v95), v92[2], v91[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v91[5], v98), v92[1], v91[1]), vmlaq_f64(vmulq_f64(v91[7], v96), v92[3], v91[3]))));
                  *(v99 + 4 * v68) = v100;
                  v92 += 4;
                  --v90;
                }

                while (v90);
              }

              v69 += v61;
              v101 = v59 + v60;
              if (v101 < v67)
              {
                v61 = v58;
              }

              else
              {
                v61 = v58 + 1;
              }

              if (v101 < v67)
              {
                v102 = 0;
              }

              else
              {
                v102 = v67;
              }

              v59 = v101 - v102;
              v68 += v30;
            }

            v103 = v70;
          }

          v567 = v56 - v69;
          if (v56 <= v69)
          {
            goto LABEL_285;
          }

          if (v61 < v567)
          {
            v567 = v61;
          }

          if (v567 >= 1)
          {
            for (j = 0; j != v567; ++j)
            {
              v569 = *(v55 + 48);
              if (v569)
              {
                v570 = (&v823 - v41);
                v571 = v65;
                v572 = v66;
                do
                {
                  v573 = *v570++;
                  v574 = vdupq_lane_s64(COERCE__INT64(*(v573 + 4 * v103)), 0);
                  v576 = *v571;
                  v575 = v571[1];
                  v578 = v571[2];
                  v577 = v571[3];
                  v579 = vmlaq_f64(v574, v578, v63[2]);
                  v580 = vmlaq_f64(v574, v577, v63[3]);
                  v581 = vmlaq_f64(v574, *v571, *v63);
                  v582 = vmlaq_f64(vmlaq_f64(v574, v575, v63[1]), v572[1], v63[5]);
                  v583 = vmlaq_f64(v581, *v572, v63[4]);
                  v584 = vmlaq_f64(v580, v572[3], v63[7]);
                  v585 = vmlaq_f64(v579, v572[2], v63[6]);
                  v572[2] = v578;
                  v572[3] = v577;
                  *v572 = v576;
                  v572[1] = v575;
                  v572 += 4;
                  v571[2] = v585;
                  v571[3] = v584;
                  *v571 = v583;
                  v571[1] = v582;
                  v571 += 4;
                  --v569;
                }

                while (v569);
              }

              v103 += v30;
            }
          }
        }

        else
        {
          if (v57 < 1)
          {
            v334 = 0;
            v256 = 0;
          }

          else
          {
            v255 = 0;
            v256 = 0;
            v257 = 0;
            LODWORD(v258) = 0;
            do
            {
              if (v61 >= 1)
              {
                v259 = 0;
                v258 = v258;
                do
                {
                  v260 = *(v55 + 48);
                  v261 = v260 != 0;
                  v262 = v66;
                  v263 = v65;
                  v264 = (v260 - v261);
                  if (v260 != v261)
                  {
                    v265 = 0;
                    v263 = v65;
                    v262 = v66;
                    do
                    {
                      v266 = &v42[8 * v265];
                      v267 = vdupq_lane_s64(COERCE__INT64(*(*v266 + 4 * v258)), 0);
                      v268 = vdupq_lane_s64(COERCE__INT64(*(*(v266 + 1) + 4 * v258)), 0);
                      v269 = *v263;
                      v270 = v263[1];
                      v271 = v263[2];
                      v272 = v263[3];
                      v273 = vmlaq_f64(vmlaq_f64(v267, *v263, *v63), *v262, v63[8]);
                      v274 = vmlaq_f64(vmlaq_f64(v267, v270, v63[1]), v262[1], v63[9]);
                      v275 = vmlaq_f64(vmlaq_f64(v267, v271, v63[2]), v262[2], v63[10]);
                      v276 = vmlaq_f64(vmlaq_f64(v267, v272, v63[3]), v262[3], v63[11]);
                      v262[2] = v271;
                      v262[3] = v272;
                      *v262 = v269;
                      v262[1] = v270;
                      v263[2] = v275;
                      v263[3] = v276;
                      *v263 = v273;
                      v263[1] = v274;
                      v277 = v263[4];
                      v278 = v263[5];
                      v279 = v263[6];
                      v280 = v263[7];
                      v281 = vmlaq_f64(vmlaq_f64(v268, v277, *v63), v262[4], v63[8]);
                      v282 = vmlaq_f64(vmlaq_f64(v268, v278, v63[1]), v262[5], v63[9]);
                      v283 = vmlaq_f64(vmlaq_f64(v268, v279, v63[2]), v262[6], v63[10]);
                      v284 = vmlaq_f64(vmlaq_f64(v268, v280, v63[3]), v262[7], v63[11]);
                      v262[6] = v279;
                      v262[7] = v280;
                      v262[4] = v277;
                      v262[5] = v278;
                      v263[6] = v283;
                      v263[7] = v284;
                      v263[4] = v281;
                      v263[5] = v282;
                      v286 = v263[8];
                      v285 = v263[9];
                      v288 = v263[10];
                      v287 = v263[11];
                      v289 = vmlaq_f64(v268, v288, v63[6]);
                      v290 = vmlaq_f64(v267, v286, v63[4]);
                      v291 = vmlaq_f64(vmlaq_f64(v267, v285, v63[5]), v262[9], v63[13]);
                      v292 = vmlaq_f64(v290, v262[8], v63[12]);
                      v293 = vmlaq_f64(vmlaq_f64(v268, v287, v63[7]), v262[11], v63[15]);
                      v294 = vmlaq_f64(v289, v262[10], v63[14]);
                      v262[10] = v288;
                      v262[11] = v287;
                      v262[8] = v286;
                      v262[9] = v285;
                      v263[10] = v294;
                      v263[11] = v293;
                      v263[8] = v292;
                      v263[9] = v291;
                      v263 += 12;
                      v262 += 12;
                      v265 += 2;
                    }

                    while (v265 < v264);
                  }

                  if (v260)
                  {
                    v295 = vdupq_lane_s64(COERCE__INT64(*(*&v42[8 * (v260 - 1)] + 4 * v258)), 0);
                    v296 = *v263;
                    v297 = v263[1];
                    v298 = v263[2];
                    v299 = v263[3];
                    v300 = vmlaq_f64(vmlaq_f64(v295, *v263, *v63), *v262, v63[8]);
                    v301 = vmlaq_f64(vmlaq_f64(v295, v297, v63[1]), v262[1], v63[9]);
                    v302 = vmlaq_f64(vmlaq_f64(v295, v298, v63[2]), v262[2], v63[10]);
                    v303 = vmlaq_f64(vmlaq_f64(v295, v299, v63[3]), v262[3], v63[11]);
                    v262[2] = v298;
                    v262[3] = v299;
                    *v262 = v296;
                    v262[1] = v297;
                    v263[2] = v302;
                    v263[3] = v303;
                    *v263 = v300;
                    v263[1] = v301;
                    v305 = v263[4];
                    v304 = v263[5];
                    v307 = v263[6];
                    v306 = v263[7];
                    v308 = vmlaq_f64(v295, v305, v63[4]);
                    v309 = vmlaq_f64(vmlaq_f64(0, v306, v63[7]), v262[7], v63[15]);
                    v310 = vmlaq_f64(vmlaq_f64(0, v307, v63[6]), v262[6], v63[14]);
                    v311 = vmlaq_f64(vmlaq_f64(v295, v304, v63[5]), v262[5], v63[13]);
                    v312 = vmlaq_f64(v308, v262[4], v63[12]);
                    v262[4] = v305;
                    v262[5] = v304;
                    v262[6] = v307;
                    v262[7] = v306;
                    v263[6] = v310;
                    v263[7] = v309;
                    v263[4] = v312;
                    v263[5] = v311;
                  }

                  v258 += v30;
                  ++v259;
                }

                while (v259 != v61);
              }

              v313 = (v64 + ((4 * v59) << 6));
              v314 = *(v55 + 48);
              v315 = v314 != 0;
              v316 = v66;
              v317 = v65;
              v318 = (v314 - v315);
              if (v314 != v315)
              {
                v319 = 0;
                v317 = v65;
                v316 = v66;
                do
                {
                  v320 = &v47[8 * v319];
                  v321 = v313[1];
                  v323 = v313[2];
                  v322 = v313[3];
                  v324 = v313[10];
                  v325 = v313[11];
                  v326 = v313[8];
                  v327 = v313[9];
                  v328 = *v320;
                  v329 = *(v320 + 1);
                  v330 = vmlaq_f64(vmulq_f64(v327, v316[5]), v317[5], v321);
                  *v321.f64 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v326, *v316), *v317, *v313), vmlaq_f64(vmulq_f64(v324, v316[2]), v317[2], v323)), vaddq_f64(vmlaq_f64(vmulq_f64(v327, v316[1]), v317[1], v321), vmlaq_f64(vmulq_f64(v325, v316[3]), v317[3], v322))), vaddq_f64(vmlaq_f64(vmulq_f64(v313[12], v316[8]), v317[8], v313[4]), vmlaq_f64(vmulq_f64(v313[13], v316[9]), v317[9], v313[5]))));
                  *v322.f64 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v326, v316[4]), v317[4], *v313), vmlaq_f64(vmulq_f64(v324, v316[6]), v317[6], v323)), vaddq_f64(v330, vmlaq_f64(vmulq_f64(v325, v316[7]), v317[7], v322))), vaddq_f64(vmlaq_f64(vmulq_f64(v313[14], v316[10]), v317[10], v313[6]), vmlaq_f64(vmulq_f64(v313[15], v316[11]), v317[11], v313[7]))));
                  *(v328 + 4 * v255) = LODWORD(v321.f64[0]);
                  *(v329 + 4 * v255) = LODWORD(v322.f64[0]);
                  v317 += 12;
                  v316 += 12;
                  v319 += 2;
                }

                while (v319 < v318);
              }

              if (v314)
              {
                v331 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v313[8], *v316), *v317, *v313), vmlaq_f64(vmulq_f64(v313[10], v316[2]), v317[2], v313[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v313[9], v316[1]), v317[1], v313[1]), vmlaq_f64(vmulq_f64(v313[11], v316[3]), v317[3], v313[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v313[12], v316[4]), v317[4], v313[4]), vmlaq_f64(vmulq_f64(v313[14], v316[6]), v317[6], v313[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v313[13], v316[5]), v317[5], v313[5]), vmlaq_f64(vmulq_f64(v313[15], v316[7]), v317[7], v313[7])))));
                *(*&v47[8 * (v314 - 1)] + 4 * v255) = v331;
              }

              v256 += v61;
              v332 = v59 + v60;
              if (v332 < v67)
              {
                v61 = v58;
              }

              else
              {
                v61 = v58 + 1;
              }

              if (v332 < v67)
              {
                v333 = 0;
              }

              else
              {
                v333 = v67;
              }

              v59 = v332 - v333;
              ++v257;
              v255 += v30;
            }

            while (v257 != v57);
            v334 = v258;
          }

          v567 = v56 - v256;
          if (v56 <= v256)
          {
            goto LABEL_285;
          }

          if (v61 < v567)
          {
            v567 = v61;
          }

          if (v567 >= 1)
          {
            for (k = 0; k != v567; ++k)
            {
              v630 = *(v55 + 48);
              v631 = v66;
              v632 = v65;
              v633 = v630 - (v630 != 0);
              if (v633)
              {
                v634 = 0;
                v632 = v65;
                v631 = v66;
                do
                {
                  v635 = &v42[8 * v634];
                  v636 = vdupq_lane_s64(COERCE__INT64(*(*v635 + 4 * v334)), 0);
                  v637 = vdupq_lane_s64(COERCE__INT64(*(*(v635 + 1) + 4 * v334)), 0);
                  v638 = *v632;
                  v639 = v632[1];
                  v640 = v632[2];
                  v641 = v632[3];
                  v642 = vmlaq_f64(vmlaq_f64(v636, *v632, *v63), *v631, v63[8]);
                  v643 = vmlaq_f64(vmlaq_f64(v636, v639, v63[1]), v631[1], v63[9]);
                  v644 = vmlaq_f64(vmlaq_f64(v636, v640, v63[2]), v631[2], v63[10]);
                  v645 = vmlaq_f64(vmlaq_f64(v636, v641, v63[3]), v631[3], v63[11]);
                  v631[2] = v640;
                  v631[3] = v641;
                  *v631 = v638;
                  v631[1] = v639;
                  v632[2] = v644;
                  v632[3] = v645;
                  *v632 = v642;
                  v632[1] = v643;
                  v646 = v632[4];
                  v647 = v632[5];
                  v648 = v632[6];
                  v649 = v632[7];
                  v650 = vmlaq_f64(vmlaq_f64(v637, v646, *v63), v631[4], v63[8]);
                  v651 = vmlaq_f64(vmlaq_f64(v637, v647, v63[1]), v631[5], v63[9]);
                  v652 = vmlaq_f64(vmlaq_f64(v637, v648, v63[2]), v631[6], v63[10]);
                  v653 = vmlaq_f64(vmlaq_f64(v637, v649, v63[3]), v631[7], v63[11]);
                  v631[6] = v648;
                  v631[7] = v649;
                  v631[4] = v646;
                  v631[5] = v647;
                  v632[6] = v652;
                  v632[7] = v653;
                  v632[4] = v650;
                  v632[5] = v651;
                  v655 = v632[8];
                  v654 = v632[9];
                  v657 = v632[10];
                  v656 = v632[11];
                  v658 = vmlaq_f64(v637, v657, v63[6]);
                  v659 = vmlaq_f64(v636, v655, v63[4]);
                  v660 = vmlaq_f64(vmlaq_f64(v636, v654, v63[5]), v631[9], v63[13]);
                  v661 = vmlaq_f64(v659, v631[8], v63[12]);
                  v662 = vmlaq_f64(vmlaq_f64(v637, v656, v63[7]), v631[11], v63[15]);
                  v663 = vmlaq_f64(v658, v631[10], v63[14]);
                  v631[10] = v657;
                  v631[11] = v656;
                  v631[8] = v655;
                  v631[9] = v654;
                  v632[10] = v663;
                  v632[11] = v662;
                  v632[8] = v661;
                  v632[9] = v660;
                  v632 += 12;
                  v631 += 12;
                  v634 += 2;
                }

                while (v634 < v633);
              }

              if (v630)
              {
                v664 = vdupq_lane_s64(COERCE__INT64(*(*&v42[8 * (v630 - 1)] + 4 * v334)), 0);
                v665 = *v632;
                v666 = v632[1];
                v667 = v632[2];
                v668 = v632[3];
                v669 = vmlaq_f64(vmlaq_f64(v664, *v632, *v63), *v631, v63[8]);
                v670 = vmlaq_f64(vmlaq_f64(v664, v666, v63[1]), v631[1], v63[9]);
                v671 = vmlaq_f64(vmlaq_f64(v664, v667, v63[2]), v631[2], v63[10]);
                v672 = vmlaq_f64(vmlaq_f64(v664, v668, v63[3]), v631[3], v63[11]);
                v631[2] = v667;
                v631[3] = v668;
                *v631 = v665;
                v631[1] = v666;
                v632[2] = v671;
                v632[3] = v672;
                *v632 = v669;
                v632[1] = v670;
                v674 = v632[4];
                v673 = v632[5];
                v676 = v632[6];
                v675 = v632[7];
                v677 = vmlaq_f64(v664, v674, v63[4]);
                v678 = vmlaq_f64(vmlaq_f64(0, v675, v63[7]), v631[7], v63[15]);
                v679 = vmlaq_f64(vmlaq_f64(0, v676, v63[6]), v631[6], v63[14]);
                v680 = vmlaq_f64(vmlaq_f64(v664, v673, v63[5]), v631[5], v63[13]);
                v681 = vmlaq_f64(v677, v631[4], v63[12]);
                v631[4] = v674;
                v631[5] = v673;
                v631[6] = v676;
                v631[7] = v675;
                v632[6] = v679;
                v632[7] = v678;
                v632[4] = v681;
                v632[5] = v680;
              }

              v334 += v30;
            }
          }
        }

LABEL_284:
        v61 -= v567;
LABEL_285:
        *(v55 + 72) = v59;
        *(v55 + 88) = v61;
LABEL_313:
        *(v55 + 256) = -1;
        *(v55 + 264) = -1;
        goto LABEL_314;
      }

      v141 = *(v55 + 68);
      v140 = *(v55 + 72);
      v142 = *(v55 + 88);
      v143 = *(v55 + 16);
      v144 = *(v143 + 16);
      v145 = *(v143 + 40);
      v146 = *(v55 + 160);
      v147 = *(v55 + 184);
      v148 = *(v55 + 60);
      if (*(v55 + 56) == 8)
      {
        if (v57 < 1)
        {
          v201 = 0;
          v150 = 0;
        }

        else
        {
          v149 = 0;
          v150 = 0;
          LODWORD(v151) = 0;
          for (m = 0; m != v57; ++m)
          {
            if (v142 >= 1)
            {
              v153 = 0;
              v151 = v151;
              do
              {
                v154 = *(v55 + 48);
                if (v154)
                {
                  v155 = v42;
                  v156 = v146;
                  v157 = v147;
                  do
                  {
                    v158 = *v155++;
                    v159 = vdupq_lane_s64(COERCE__INT64(*(v158 + 4 * v151)), 0);
                    v161 = *v156;
                    v160 = v156[1];
                    v163 = v156[2];
                    v162 = v156[3];
                    v164 = vmlaq_f64(v159, v163, v144[2]);
                    v165 = vmlaq_f64(v159, v162, v144[3]);
                    v166 = vmlaq_f64(v159, *v156, *v144);
                    v167 = vmlaq_f64(vmlaq_f64(v159, v160, v144[1]), v157[1], v144[5]);
                    v168 = vmlaq_f64(v166, *v157, v144[4]);
                    v169 = vmlaq_f64(v165, v157[3], v144[7]);
                    v170 = vmlaq_f64(v164, v157[2], v144[6]);
                    v157[2] = v163;
                    v157[3] = v162;
                    *v157 = v161;
                    v157[1] = v160;
                    v157 += 4;
                    v156[2] = v170;
                    v156[3] = v169;
                    *v156 = v168;
                    v156[1] = v167;
                    v156 += 4;
                    --v154;
                  }

                  while (v154);
                }

                v151 += v30;
                ++v153;
              }

              while (v153 != v142);
            }

            v171 = *(v55 + 48);
            if (v171)
            {
              v172 = *(v55 + 96) * (v140 & 0x7FFFFF);
              v173 = (v145 + (((v140 >> 22) & 0x1FE) << 6));
              v174 = *(v55 + 208);
              v175 = v146;
              v176 = v147;
              v177 = v174;
              v178 = *(v55 + 48);
              do
              {
                v179 = v176[2];
                v180 = v176[3];
                v181 = *v176;
                v182 = v176[1];
                v176 += 4;
                v183 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v173[4], v181), *v175, *v173), vmlaq_f64(vmulq_f64(v173[6], v179), v175[2], v173[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v173[5], v182), v175[1], v173[1]), vmlaq_f64(vmulq_f64(v173[7], v180), v175[3], v173[3]))));
                *v177++ = v183;
                v175 += 4;
                --v178;
              }

              while (v178);
              v184 = *(v55 + 232);
              v185 = v146;
              v186 = v147;
              v187 = v184;
              v188 = v171;
              do
              {
                v189 = v186[2];
                v190 = v186[3];
                v191 = *v186;
                v192 = v186[1];
                v186 += 4;
                v193 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v173[12], v191), *v185, v173[8]), vmlaq_f64(vmulq_f64(v173[14], v189), v185[2], v173[10])), vaddq_f64(vmlaq_f64(vmulq_f64(v173[13], v192), v185[1], v173[9]), vmlaq_f64(vmulq_f64(v173[15], v190), v185[3], v173[11]))));
                *v187++ = v193;
                v185 += 4;
                --v188;
              }

              while (v188);
              v194 = v47;
              do
              {
                v195 = *v174++;
                v196 = v195;
                v197 = *v184++;
                v198 = v196 + (v172 * (v197 - v196));
                v199 = *v194++;
                *(v199 + 4 * v149) = v198;
                --v171;
              }

              while (v171);
            }

            v150 += v142;
            v200 = v140 + v141;
            v140 = (v140 + v141) & 0x7FFFFFFF;
            v142 = v148 + (v200 >> 31);
            v149 += v30;
          }

          v201 = v151;
        }

        v598 = v56 - v150;
        if (v56 <= v150)
        {
          goto LABEL_312;
        }

        if (v142 < v598)
        {
          v598 = v142;
        }

        if (v598 >= 1)
        {
          for (n = 0; n != v598; ++n)
          {
            v600 = *(v55 + 48);
            if (v600)
            {
              v601 = v42;
              v602 = v146;
              v603 = v147;
              do
              {
                v604 = *v601++;
                v605 = vdupq_lane_s64(COERCE__INT64(*(v604 + 4 * v201)), 0);
                v607 = *v602;
                v606 = v602[1];
                v609 = v602[2];
                v608 = v602[3];
                v610 = vmlaq_f64(v605, v609, v144[2]);
                v611 = vmlaq_f64(v605, v608, v144[3]);
                v612 = vmlaq_f64(v605, *v602, *v144);
                v613 = vmlaq_f64(vmlaq_f64(v605, v606, v144[1]), v603[1], v144[5]);
                v614 = vmlaq_f64(v612, *v603, v144[4]);
                v615 = vmlaq_f64(v611, v603[3], v144[7]);
                v616 = vmlaq_f64(v610, v603[2], v144[6]);
                v603[2] = v609;
                v603[3] = v608;
                *v603 = v607;
                v603[1] = v606;
                v603 += 4;
                v602[2] = v616;
                v602[3] = v615;
                *v602 = v614;
                v602[1] = v613;
                v602 += 4;
                --v600;
              }

              while (v600);
            }

            v201 += v30;
          }
        }

LABEL_311:
        v142 -= v598;
LABEL_312:
        *(v55 + 72) = v140;
        *(v55 + 88) = v142;
        goto LABEL_313;
      }

      if (v57 < 1)
      {
        v483 = 0;
        v395 = 0;
LABEL_287:
        v598 = v56 - v395;
        if (v56 <= v395)
        {
          goto LABEL_312;
        }

        if (v142 < v598)
        {
          v598 = v142;
        }

        if (v598 >= 1)
        {
          for (ii = 0; ii != v598; ++ii)
          {
            v714 = *(v55 + 48);
            v715 = v147;
            v716 = v146;
            v717 = v714 - (v714 != 0);
            if (v717)
            {
              v718 = 0;
              v716 = v146;
              v715 = v147;
              do
              {
                v719 = &v42[8 * v718];
                v720 = vdupq_lane_s64(COERCE__INT64(*(*v719 + 4 * v483)), 0);
                v721 = vdupq_lane_s64(COERCE__INT64(*(*(v719 + 1) + 4 * v483)), 0);
                v722 = *v716;
                v723 = v716[1];
                v724 = v716[2];
                v725 = v716[3];
                v726 = vmlaq_f64(vmlaq_f64(v720, *v716, *v144), *v715, v144[8]);
                v727 = vmlaq_f64(vmlaq_f64(v720, v723, v144[1]), v715[1], v144[9]);
                v728 = vmlaq_f64(vmlaq_f64(v720, v724, v144[2]), v715[2], v144[10]);
                v729 = vmlaq_f64(vmlaq_f64(v720, v725, v144[3]), v715[3], v144[11]);
                v715[2] = v724;
                v715[3] = v725;
                *v715 = v722;
                v715[1] = v723;
                v716[2] = v728;
                v716[3] = v729;
                *v716 = v726;
                v716[1] = v727;
                v730 = v716[4];
                v731 = v716[5];
                v732 = v716[6];
                v733 = v716[7];
                v734 = vmlaq_f64(vmlaq_f64(v721, v730, *v144), v715[4], v144[8]);
                v735 = vmlaq_f64(vmlaq_f64(v721, v731, v144[1]), v715[5], v144[9]);
                v736 = vmlaq_f64(vmlaq_f64(v721, v732, v144[2]), v715[6], v144[10]);
                v737 = vmlaq_f64(vmlaq_f64(v721, v733, v144[3]), v715[7], v144[11]);
                v715[6] = v732;
                v715[7] = v733;
                v715[4] = v730;
                v715[5] = v731;
                v716[6] = v736;
                v716[7] = v737;
                v716[4] = v734;
                v716[5] = v735;
                v739 = v716[8];
                v738 = v716[9];
                v741 = v716[10];
                v740 = v716[11];
                v742 = vmlaq_f64(v721, v741, v144[6]);
                v743 = vmlaq_f64(v720, v739, v144[4]);
                v744 = vmlaq_f64(vmlaq_f64(v720, v738, v144[5]), v715[9], v144[13]);
                v745 = vmlaq_f64(v743, v715[8], v144[12]);
                v746 = vmlaq_f64(vmlaq_f64(v721, v740, v144[7]), v715[11], v144[15]);
                v747 = vmlaq_f64(v742, v715[10], v144[14]);
                v715[10] = v741;
                v715[11] = v740;
                v715[8] = v739;
                v715[9] = v738;
                v716[10] = v747;
                v716[11] = v746;
                v716[8] = v745;
                v716[9] = v744;
                v716 += 12;
                v715 += 12;
                v718 += 2;
              }

              while (v718 < v717);
            }

            if (v714)
            {
              v748 = vdupq_lane_s64(COERCE__INT64(*(*&v42[8 * (v714 - 1)] + 4 * v483)), 0);
              v749 = *v716;
              v750 = v716[1];
              v751 = v716[2];
              v752 = v716[3];
              v753 = vmlaq_f64(vmlaq_f64(v748, *v716, *v144), *v715, v144[8]);
              v754 = vmlaq_f64(vmlaq_f64(v748, v750, v144[1]), v715[1], v144[9]);
              v755 = vmlaq_f64(vmlaq_f64(v748, v751, v144[2]), v715[2], v144[10]);
              v756 = vmlaq_f64(vmlaq_f64(v748, v752, v144[3]), v715[3], v144[11]);
              v715[2] = v751;
              v715[3] = v752;
              *v715 = v749;
              v715[1] = v750;
              v716[2] = v755;
              v716[3] = v756;
              *v716 = v753;
              v716[1] = v754;
              v758 = v716[4];
              v757 = v716[5];
              v760 = v716[6];
              v759 = v716[7];
              v761 = vmlaq_f64(v748, v758, v144[4]);
              v762 = vmlaq_f64(vmlaq_f64(0, v759, v144[7]), v715[7], v144[15]);
              v763 = vmlaq_f64(vmlaq_f64(0, v760, v144[6]), v715[6], v144[14]);
              v764 = vmlaq_f64(vmlaq_f64(v748, v757, v144[5]), v715[5], v144[13]);
              v765 = vmlaq_f64(v761, v715[4], v144[12]);
              v715[4] = v758;
              v715[5] = v757;
              v715[6] = v760;
              v715[7] = v759;
              v716[6] = v763;
              v716[7] = v762;
              v716[4] = v765;
              v716[5] = v764;
            }

            v483 += v30;
          }
        }

        goto LABEL_311;
      }

      v394 = 0;
      v395 = 0;
      v396 = 0;
      LODWORD(v397) = 0;
      while (1)
      {
        if (v142 >= 1)
        {
          v398 = 0;
          v397 = v397;
          do
          {
            v399 = *(v55 + 48);
            v400 = v147;
            v401 = v146;
            v402 = v399 - (v399 != 0);
            if (v402)
            {
              v403 = 0;
              v401 = v146;
              v400 = v147;
              do
              {
                v404 = &v42[8 * v403];
                v405 = vdupq_lane_s64(COERCE__INT64(*(*v404 + 4 * v397)), 0);
                v406 = vdupq_lane_s64(COERCE__INT64(*(*(v404 + 1) + 4 * v397)), 0);
                v407 = *v401;
                v408 = v401[1];
                v409 = v401[2];
                v410 = v401[3];
                v411 = vmlaq_f64(vmlaq_f64(v405, *v401, *v144), *v400, v144[8]);
                v412 = vmlaq_f64(vmlaq_f64(v405, v408, v144[1]), v400[1], v144[9]);
                v413 = vmlaq_f64(vmlaq_f64(v405, v409, v144[2]), v400[2], v144[10]);
                v414 = vmlaq_f64(vmlaq_f64(v405, v410, v144[3]), v400[3], v144[11]);
                v400[2] = v409;
                v400[3] = v410;
                *v400 = v407;
                v400[1] = v408;
                v401[2] = v413;
                v401[3] = v414;
                *v401 = v411;
                v401[1] = v412;
                v415 = v401[4];
                v416 = v401[5];
                v417 = v401[6];
                v418 = v401[7];
                v419 = vmlaq_f64(vmlaq_f64(v406, v415, *v144), v400[4], v144[8]);
                v420 = vmlaq_f64(vmlaq_f64(v406, v416, v144[1]), v400[5], v144[9]);
                v421 = vmlaq_f64(vmlaq_f64(v406, v417, v144[2]), v400[6], v144[10]);
                v422 = vmlaq_f64(vmlaq_f64(v406, v418, v144[3]), v400[7], v144[11]);
                v400[6] = v417;
                v400[7] = v418;
                v400[4] = v415;
                v400[5] = v416;
                v401[6] = v421;
                v401[7] = v422;
                v401[4] = v419;
                v401[5] = v420;
                v424 = v401[8];
                v423 = v401[9];
                v426 = v401[10];
                v425 = v401[11];
                v427 = vmlaq_f64(v406, v426, v144[6]);
                v428 = vmlaq_f64(v405, v424, v144[4]);
                v429 = vmlaq_f64(vmlaq_f64(v405, v423, v144[5]), v400[9], v144[13]);
                v430 = vmlaq_f64(v428, v400[8], v144[12]);
                v431 = vmlaq_f64(vmlaq_f64(v406, v425, v144[7]), v400[11], v144[15]);
                v432 = vmlaq_f64(v427, v400[10], v144[14]);
                v400[10] = v426;
                v400[11] = v425;
                v400[8] = v424;
                v400[9] = v423;
                v401[10] = v432;
                v401[11] = v431;
                v401[8] = v430;
                v401[9] = v429;
                v401 += 12;
                v400 += 12;
                v403 += 2;
              }

              while (v403 < v402);
            }

            if (v399)
            {
              v433 = vdupq_lane_s64(COERCE__INT64(*(*&v42[8 * (v399 - 1)] + 4 * v397)), 0);
              v434 = *v401;
              v435 = v401[1];
              v436 = v401[2];
              v437 = v401[3];
              v438 = vmlaq_f64(vmlaq_f64(v433, *v401, *v144), *v400, v144[8]);
              v439 = vmlaq_f64(vmlaq_f64(v433, v435, v144[1]), v400[1], v144[9]);
              v440 = vmlaq_f64(vmlaq_f64(v433, v436, v144[2]), v400[2], v144[10]);
              v441 = vmlaq_f64(vmlaq_f64(v433, v437, v144[3]), v400[3], v144[11]);
              v400[2] = v436;
              v400[3] = v437;
              *v400 = v434;
              v400[1] = v435;
              v401[2] = v440;
              v401[3] = v441;
              *v401 = v438;
              v401[1] = v439;
              v443 = v401[4];
              v442 = v401[5];
              v445 = v401[6];
              v444 = v401[7];
              v446 = vmlaq_f64(v433, v443, v144[4]);
              v447 = vmlaq_f64(vmlaq_f64(0, v444, v144[7]), v400[7], v144[15]);
              v448 = vmlaq_f64(vmlaq_f64(0, v445, v144[6]), v400[6], v144[14]);
              v449 = vmlaq_f64(vmlaq_f64(v433, v442, v144[5]), v400[5], v144[13]);
              v450 = vmlaq_f64(v446, v400[4], v144[12]);
              v400[4] = v443;
              v400[5] = v442;
              v400[6] = v445;
              v400[7] = v444;
              v401[6] = v448;
              v401[7] = v447;
              v401[4] = v450;
              v401[5] = v449;
            }

            v397 += v30;
            ++v398;
          }

          while (v398 != v142);
        }

        v451 = *(v55 + 96);
        v452 = (v145 + (((v140 >> 21) & 0x3FC) << 6));
        v453 = *(v55 + 48);
        v454 = *(v55 + 208);
        v455 = v147;
        v456 = v146;
        v457 = v453 - (*(v55 + 48) != 0);
        if (v457)
        {
          v458 = 0;
          v459 = *(v55 + 208);
          v456 = v146;
          v455 = v147;
          do
          {
            v460 = v452[1];
            v461 = v452[3];
            v462 = v452[11];
            v463 = v452[9];
            *v459++ = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[8], *v455), *v456, *v452), vmlaq_f64(vmulq_f64(v452[10], v455[2]), v456[2], v452[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v463, v455[1]), v456[1], v460), vmlaq_f64(vmulq_f64(v462, v455[3]), v456[3], v461))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[8], v455[4]), v456[4], *v452), vmlaq_f64(vmulq_f64(v452[10], v455[6]), v456[6], v452[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v463, v455[5]), v456[5], v460), vmlaq_f64(vmulq_f64(v462, v455[7]), v456[7], v461)))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[12], v455[8]), v456[8], v452[4]), vmlaq_f64(vmulq_f64(v452[13], v455[9]), v456[9], v452[5])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[14], v455[10]), v456[10], v452[6]), vmlaq_f64(vmulq_f64(v452[15], v455[11]), v456[11], v452[7])))));
            v456 += 12;
            v455 += 12;
            v458 += 2;
          }

          while (v458 < v457);
        }

        if (v453)
        {
          v464 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[8], *v455), *v456, *v452), vmlaq_f64(vmulq_f64(v452[10], v455[2]), v456[2], v452[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[9], v455[1]), v456[1], v452[1]), vmlaq_f64(vmulq_f64(v452[11], v455[3]), v456[3], v452[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[12], v455[4]), v456[4], v452[4]), vmlaq_f64(vmulq_f64(v452[14], v455[6]), v456[6], v452[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[13], v455[5]), v456[5], v452[5]), vmlaq_f64(vmulq_f64(v452[15], v455[7]), v456[7], v452[7])))));
          v454[(v453 - 1)] = v464;
        }

        v465 = *(v55 + 232);
        v466 = v147;
        v467 = v146;
        if (v457)
        {
          v468 = 0;
          v469 = *(v55 + 232);
          v467 = v146;
          v466 = v147;
          do
          {
            v470 = v452[17];
            v471 = v452[19];
            v472 = v452[27];
            v473 = v452[25];
            *v469++ = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[24], *v466), *v467, v452[16]), vmlaq_f64(vmulq_f64(v452[26], v466[2]), v467[2], v452[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v473, v466[1]), v467[1], v470), vmlaq_f64(vmulq_f64(v472, v466[3]), v467[3], v471))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[24], v466[4]), v467[4], v452[16]), vmlaq_f64(vmulq_f64(v452[26], v466[6]), v467[6], v452[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v473, v466[5]), v467[5], v470), vmlaq_f64(vmulq_f64(v472, v466[7]), v467[7], v471)))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[28], v466[8]), v467[8], v452[20]), vmlaq_f64(vmulq_f64(v452[29], v466[9]), v467[9], v452[21])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[30], v466[10]), v467[10], v452[22]), vmlaq_f64(vmulq_f64(v452[31], v466[11]), v467[11], v452[23])))));
            v467 += 12;
            v466 += 12;
            v468 += 2;
          }

          while (v468 < v457);
        }

        v474 = v451 * (v140 & 0x7FFFFF);
        if (v453)
        {
          break;
        }

        v475 = v47;
        if (v453)
        {
          goto LABEL_187;
        }

LABEL_188:
        v395 += v142;
        v482 = v140 + v141;
        v140 = (v140 + v141) & 0x7FFFFFFF;
        v142 = v148 + (v482 >> 31);
        ++v396;
        v394 += v30;
        if (v396 == v57)
        {
          v483 = v397;
          goto LABEL_287;
        }
      }

      v476 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[24], *v466), *v467, v452[16]), vmlaq_f64(vmulq_f64(v452[26], v466[2]), v467[2], v452[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[25], v466[1]), v467[1], v452[17]), vmlaq_f64(vmulq_f64(v452[27], v466[3]), v467[3], v452[19]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v452[28], v466[4]), v467[4], v452[20]), vmlaq_f64(vmulq_f64(v452[30], v466[6]), v467[6], v452[22])), vaddq_f64(vmlaq_f64(vmulq_f64(v452[29], v466[5]), v467[5], v452[21]), vmlaq_f64(vmulq_f64(v452[31], v466[7]), v467[7], v452[23])))));
      v465[(v453 - 1)] = v476;
      v475 = v47;
      do
      {
LABEL_187:
        v477 = *v454++;
        v478 = v477;
        v479 = *v465++;
        v480 = v478 + (v474 * (v479 - v478));
        v481 = *v475++;
        *(v481 + 4 * v394) = v480;
        --v453;
      }

      while (v453);
      goto LABEL_188;
    }

    if (*(v55 + 92))
    {
      v104 = *(v55 + 60);
      v105 = *(v55 + 68);
      v59 = *(v55 + 72);
      v61 = *(v55 + 88);
      v106 = *(*v55 + 16);
      v107 = *(*v55 + 40);
      v108 = *(v55 + 112);
      v109 = *(v55 + 136);
      v110 = *(v55 + 52);
      if (*(v55 + 56) == 8)
      {
        if (v57 < 1)
        {
          v139 = 0;
          v112 = 0;
        }

        else
        {
          v111 = 0;
          v112 = 0;
          LODWORD(v113) = 0;
          for (jj = 0; jj != v57; ++jj)
          {
            if (v61 >= 1)
            {
              v115 = 0;
              v113 = v113;
              do
              {
                v116 = *(v55 + 48);
                if (v116)
                {
                  v117 = (&v823 - v41);
                  v118 = v108;
                  v119 = v109;
                  do
                  {
                    v120 = *v117++;
                    v121 = (v120 + 4 * v113);
                    v122 = vld1q_dup_f32(v121);
                    v123 = v118[1];
                    v124 = vmlaq_f32(v122, v123, v106[1]);
                    v125 = vmlaq_f32(vmlaq_f32(v122, *v118, *v106), *v119, v106[2]);
                    v126 = vmlaq_f32(v124, v119[1], v106[3]);
                    *v119 = *v118;
                    v119[1] = v123;
                    v119 += 2;
                    *v118 = v125;
                    v118[1] = v126;
                    v118 += 2;
                    --v116;
                  }

                  while (v116);
                }

                v113 += v30;
                ++v115;
              }

              while (v115 != v61);
            }

            v127 = *(v55 + 48);
            if (v127)
            {
              v128 = v108;
              v129 = v109;
              v130 = (&v823 - v41);
              do
              {
                v131 = *v128;
                v132 = v128[1];
                v128 += 2;
                v134 = *v129;
                v133 = v129[1];
                v129 += 2;
                v135 = vaddq_f32(vmlaq_f32(vmulq_f32(*(v107 + 64 * v59 + 32), v134), v131, *(v107 + 64 * v59)), vmlaq_f32(vmulq_f32(*(v107 + 64 * v59 + 48), v133), v132, *(v107 + 64 * v59 + 16)));
                v136 = *v130++;
                *(v136 + 4 * v111) = vaddv_f32(vadd_f32(*v135.i8, *&vextq_s8(v135, v135, 8uLL)));
                --v127;
              }

              while (v127);
            }

            v112 += v61;
            v137 = v59 + v105;
            if (v137 < v110)
            {
              v61 = v104;
            }

            else
            {
              v61 = v104 + 1;
            }

            if (v137 < v110)
            {
              v138 = 0;
            }

            else
            {
              v138 = v110;
            }

            v59 = v137 - v138;
            v111 += v30;
          }

          v139 = v113;
        }

        v567 = v56 - v112;
        if (v56 <= v112)
        {
          goto LABEL_285;
        }

        if (v61 < v567)
        {
          v567 = v61;
        }

        if (v567 >= 1)
        {
          for (kk = 0; kk != v567; ++kk)
          {
            v587 = *(v55 + 48);
            if (v587)
            {
              v588 = (&v823 - v41);
              v589 = v108;
              v590 = v109;
              do
              {
                v591 = *v588++;
                v592 = (v591 + 4 * v139);
                v593 = vld1q_dup_f32(v592);
                v594 = v589[1];
                v595 = vmlaq_f32(v593, v594, v106[1]);
                v596 = vmlaq_f32(vmlaq_f32(v593, *v589, *v106), *v590, v106[2]);
                v597 = vmlaq_f32(v595, v590[1], v106[3]);
                *v590 = *v589;
                v590[1] = v594;
                v590 += 2;
                *v589 = v596;
                v589[1] = v597;
                v589 += 2;
                --v587;
              }

              while (v587);
            }

            v139 += v30;
          }
        }
      }

      else
      {
        if (v57 < 1)
        {
          v393 = 0;
          v336 = 0;
        }

        else
        {
          v335 = 0;
          v336 = 0;
          v337 = 0;
          LODWORD(v338) = 0;
          do
          {
            if (v61 >= 1)
            {
              v339 = 0;
              v338 = v338;
              do
              {
                v340 = *(v55 + 48);
                v341 = v109;
                v342 = v108;
                v343 = v340 - (v340 != 0);
                if (v343)
                {
                  v344 = 0;
                  v342 = v108;
                  v341 = v109;
                  do
                  {
                    v345 = &v42[8 * v344];
                    v346 = (*v345 + 4 * v338);
                    v347 = (*(v345 + 1) + 4 * v338);
                    v348 = vld1q_dup_f32(v346);
                    v349 = vld1q_dup_f32(v347);
                    v350 = v342[1];
                    v351 = vmlaq_f32(vmlaq_f32(v348, *v342, *v106), *v341, v106[4]);
                    v352 = vmlaq_f32(vmlaq_f32(v348, v350, v106[1]), v341[1], v106[5]);
                    *v341 = *v342;
                    v341[1] = v350;
                    *v342 = v351;
                    v342[1] = v352;
                    v353 = v342[2];
                    v354 = v342[3];
                    v355 = vmlaq_f32(vmlaq_f32(v349, v353, *v106), v341[2], v106[4]);
                    v356 = vmlaq_f32(vmlaq_f32(v349, v354, v106[1]), v341[3], v106[5]);
                    v341[2] = v353;
                    v341[3] = v354;
                    v342[2] = v355;
                    v342[3] = v356;
                    v357 = v342[4];
                    v358 = v342[5];
                    v359 = vmlaq_f32(vmlaq_f32(v348, v357, v106[2]), v341[4], v106[6]);
                    v360 = vmlaq_f32(vmlaq_f32(v349, v358, v106[3]), v341[5], v106[7]);
                    v341[4] = v357;
                    v341[5] = v358;
                    v342[4] = v359;
                    v342[5] = v360;
                    v342 += 6;
                    v341 += 6;
                    v344 += 2;
                  }

                  while (v344 < v343);
                }

                if (v340)
                {
                  v361 = (*&v42[8 * (v340 - 1)] + 4 * v338);
                  v362 = vld1q_dup_f32(v361);
                  v363 = v342[1];
                  v364 = vmlaq_f32(vmlaq_f32(v362, *v342, *v106), *v341, v106[4]);
                  v365 = vmlaq_f32(vmlaq_f32(v362, v363, v106[1]), v341[1], v106[5]);
                  *v341 = *v342;
                  v341[1] = v363;
                  *v342 = v364;
                  v342[1] = v365;
                  v366 = v342[2];
                  v367 = v342[3];
                  v368 = vmlaq_f32(vmlaq_f32(0, v367, v106[3]), v341[3], v106[7]);
                  v369 = vmlaq_f32(vmlaq_f32(v362, v366, v106[2]), v341[2], v106[6]);
                  v341[2] = v366;
                  v341[3] = v367;
                  v342[2] = v369;
                  v342[3] = v368;
                }

                v338 += v30;
                ++v339;
              }

              while (v339 != v61);
            }

            v370 = (v107 + 128 * v59);
            v371 = *(v55 + 48);
            v372 = v109;
            v373 = v108;
            v374 = v371 - (v371 != 0);
            if (v374)
            {
              v375 = 0;
              v373 = v108;
              v372 = v109;
              do
              {
                v376 = &v47[8 * v375];
                v377 = v370[1];
                v379 = v370[4];
                v378 = v370[5];
                v380 = vmlaq_f32(vmulq_f32(v378, v372[1]), v373[1], v377);
                v381 = vmlaq_f32(vmulq_f32(v378, v372[3]), v373[3], v377);
                v383 = *v376;
                v382 = *(v376 + 1);
                v384 = vmlaq_f32(vmulq_f32(v370[7], v372[5]), v373[5], v370[3]);
                v385 = vmlaq_f32(vmulq_f32(v370[6], v372[4]), v373[4], v370[2]);
                v386 = vaddq_f32(vmlaq_f32(vmulq_f32(v379, *v372), *v373, *v370), v380);
                *v386.i8 = vadd_f32(*v386.i8, *&vextq_s8(v386, v386, 8uLL));
                v387 = vadd_f32(*v385.i8, *&vextq_s8(v385, v385, 8uLL));
                *v386.i8 = vadd_f32(vzip1_s32(*v386.i8, v387), vzip2_s32(*v386.i8, v387));
                v388 = vaddq_f32(vmlaq_f32(vmulq_f32(v379, v372[2]), v373[2], *v370), v381);
                *v388.i8 = vadd_f32(*v388.i8, *&vextq_s8(v388, v388, 8uLL));
                *v384.i8 = vadd_f32(*v384.i8, *&vextq_s8(v384, v384, 8uLL));
                *(v383 + 4 * v335) = vaddv_f32(*v386.i8);
                *(v382 + 4 * v335) = vaddv_f32(vadd_f32(vzip1_s32(*v388.i8, *v384.i8), vzip2_s32(*v388.i8, *v384.i8)));
                v373 += 6;
                v372 += 6;
                v375 += 2;
              }

              while (v375 < v374);
            }

            if (v371)
            {
              v389 = vaddq_f32(vmlaq_f32(vmulq_f32(v370[4], *v372), *v373, *v370), vmlaq_f32(vmulq_f32(v370[5], v372[1]), v373[1], v370[1]));
              *v389.i8 = vadd_f32(*v389.i8, *&vextq_s8(v389, v389, 8uLL));
              v390 = vaddq_f32(vmlaq_f32(vmulq_f32(v370[6], v372[2]), v373[2], v370[2]), vmlaq_f32(vmulq_f32(v370[7], v372[3]), v373[3], v370[3]));
              *v390.i8 = vadd_f32(*v390.i8, *&vextq_s8(v390, v390, 8uLL));
              *(*&v47[8 * (v371 - 1)] + 4 * v335) = vaddv_f32(vadd_f32(vzip1_s32(*v389.i8, *v390.i8), vzip2_s32(*v389.i8, *v390.i8)));
            }

            v336 += v61;
            v391 = v59 + v105;
            if (v391 < v110)
            {
              v61 = v104;
            }

            else
            {
              v61 = v104 + 1;
            }

            if (v391 < v110)
            {
              v392 = 0;
            }

            else
            {
              v392 = v110;
            }

            v59 = v391 - v392;
            ++v337;
            v335 += v30;
          }

          while (v337 != v57);
          v393 = v338;
        }

        v567 = v56 - v336;
        if (v56 <= v336)
        {
          goto LABEL_285;
        }

        if (v61 < v567)
        {
          v567 = v61;
        }

        if (v567 >= 1)
        {
          for (mm = 0; mm != v567; ++mm)
          {
            v683 = *(v55 + 48);
            v684 = v109;
            v685 = v108;
            v686 = v683 - (v683 != 0);
            if (v686)
            {
              v687 = 0;
              v685 = v108;
              v684 = v109;
              do
              {
                v688 = &v42[8 * v687];
                v689 = (*v688 + 4 * v393);
                v690 = (*(v688 + 1) + 4 * v393);
                v691 = vld1q_dup_f32(v689);
                v692 = vld1q_dup_f32(v690);
                v693 = v685[1];
                v694 = vmlaq_f32(vmlaq_f32(v691, *v685, *v106), *v684, v106[4]);
                v695 = vmlaq_f32(vmlaq_f32(v691, v693, v106[1]), v684[1], v106[5]);
                *v684 = *v685;
                v684[1] = v693;
                *v685 = v694;
                v685[1] = v695;
                v696 = v685[2];
                v697 = v685[3];
                v698 = vmlaq_f32(vmlaq_f32(v692, v696, *v106), v684[2], v106[4]);
                v699 = vmlaq_f32(vmlaq_f32(v692, v697, v106[1]), v684[3], v106[5]);
                v684[2] = v696;
                v684[3] = v697;
                v685[2] = v698;
                v685[3] = v699;
                v700 = v685[4];
                v701 = v685[5];
                v702 = vmlaq_f32(vmlaq_f32(v691, v700, v106[2]), v684[4], v106[6]);
                v703 = vmlaq_f32(vmlaq_f32(v692, v701, v106[3]), v684[5], v106[7]);
                v684[4] = v700;
                v684[5] = v701;
                v685[4] = v702;
                v685[5] = v703;
                v685 += 6;
                v684 += 6;
                v687 += 2;
              }

              while (v687 < v686);
            }

            if (v683)
            {
              v704 = (*&v42[8 * (v683 - 1)] + 4 * v393);
              v705 = vld1q_dup_f32(v704);
              v706 = v685[1];
              v707 = vmlaq_f32(vmlaq_f32(v705, *v685, *v106), *v684, v106[4]);
              v708 = vmlaq_f32(vmlaq_f32(v705, v706, v106[1]), v684[1], v106[5]);
              *v684 = *v685;
              v684[1] = v706;
              *v685 = v707;
              v685[1] = v708;
              v709 = v685[2];
              v710 = v685[3];
              v711 = vmlaq_f32(vmlaq_f32(0, v710, v106[3]), v684[3], v106[7]);
              v712 = vmlaq_f32(vmlaq_f32(v705, v709, v106[2]), v684[2], v106[6]);
              v684[2] = v709;
              v684[3] = v710;
              v685[2] = v712;
              v685[3] = v711;
            }

            v393 += v30;
          }
        }
      }

      goto LABEL_284;
    }

    v202 = *(v55 + 68);
    v140 = *(v55 + 72);
    v142 = *(v55 + 88);
    v203 = *(*v55 + 16);
    v204 = *(*v55 + 40);
    v205 = *(v55 + 112);
    v206 = *(v55 + 136);
    v207 = *(v55 + 60);
    if (*(v55 + 56) == 8)
    {
      if (v57 < 1)
      {
        v254 = 0;
        v209 = 0;
      }

      else
      {
        v208 = 0;
        v209 = 0;
        LODWORD(v210) = 0;
        for (nn = 0; nn != v57; ++nn)
        {
          if (v142 >= 1)
          {
            v212 = 0;
            v210 = v210;
            do
            {
              v213 = *(v55 + 48);
              if (v213)
              {
                v214 = v42;
                v215 = v205;
                v216 = v206;
                do
                {
                  v217 = *v214++;
                  v218 = (v217 + 4 * v210);
                  v219 = vld1q_dup_f32(v218);
                  v220 = v215[1];
                  v221 = vmlaq_f32(v219, v220, v203[1]);
                  v222 = vmlaq_f32(vmlaq_f32(v219, *v215, *v203), *v216, v203[2]);
                  v223 = vmlaq_f32(v221, v216[1], v203[3]);
                  *v216 = *v215;
                  v216[1] = v220;
                  v216 += 2;
                  *v215 = v222;
                  v215[1] = v223;
                  v215 += 2;
                  --v213;
                }

                while (v213);
              }

              v210 += v30;
              ++v212;
            }

            while (v212 != v142);
          }

          v224 = *(v55 + 48);
          if (v224)
          {
            v225 = *(v55 + 96) * (v140 & 0x7FFFFF);
            v226 = (v204 + 32 * ((v140 >> 22) & 0x1FE));
            v227 = *(v55 + 208);
            v228 = v205;
            v229 = v206;
            v230 = v227;
            v231 = *(v55 + 48);
            do
            {
              v232 = *v228;
              v233 = v228[1];
              v228 += 2;
              v235 = *v229;
              v234 = v229[1];
              v229 += 2;
              v236 = vaddq_f32(vmlaq_f32(vmulq_f32(v226[2], v235), v232, *v226), vmlaq_f32(vmulq_f32(v226[3], v234), v233, v226[1]));
              *v230++ = vaddv_f32(vadd_f32(*v236.i8, *&vextq_s8(v236, v236, 8uLL)));
              --v231;
            }

            while (v231);
            v237 = *(v55 + 232);
            v238 = v205;
            v239 = v206;
            v240 = v237;
            v241 = v224;
            do
            {
              v242 = *v238;
              v243 = v238[1];
              v238 += 2;
              v245 = *v239;
              v244 = v239[1];
              v239 += 2;
              v246 = vaddq_f32(vmlaq_f32(vmulq_f32(v226[6], v245), v242, v226[4]), vmlaq_f32(vmulq_f32(v226[7], v244), v243, v226[5]));
              *v240++ = vaddv_f32(vadd_f32(*v246.i8, *&vextq_s8(v246, v246, 8uLL)));
              --v241;
            }

            while (v241);
            v247 = v47;
            do
            {
              v248 = *v227++;
              v249 = v248;
              v250 = *v237++;
              v251 = v249 + (v225 * (v250 - v249));
              v252 = *v247++;
              *(v252 + 4 * v208) = v251;
              --v224;
            }

            while (v224);
          }

          v209 += v142;
          v253 = v140 + v202;
          v140 = (v140 + v202) & 0x7FFFFFFF;
          v142 = v207 + (v253 >> 31);
          v208 += v30;
        }

        v254 = v210;
      }

      v598 = v56 - v209;
      if (v56 <= v209)
      {
        goto LABEL_312;
      }

      if (v142 < v598)
      {
        v598 = v142;
      }

      if (v598 >= 1)
      {
        for (i1 = 0; i1 != v598; ++i1)
        {
          v618 = *(v55 + 48);
          if (v618)
          {
            v619 = v42;
            v620 = v205;
            v621 = v206;
            do
            {
              v622 = *v619++;
              v623 = (v622 + 4 * v254);
              v624 = vld1q_dup_f32(v623);
              v625 = v620[1];
              v626 = vmlaq_f32(v624, v625, v203[1]);
              v627 = vmlaq_f32(vmlaq_f32(v624, *v620, *v203), *v621, v203[2]);
              v628 = vmlaq_f32(v626, v621[1], v203[3]);
              *v621 = *v620;
              v621[1] = v625;
              v621 += 2;
              *v620 = v627;
              v620[1] = v628;
              v620 += 2;
              --v618;
            }

            while (v618);
          }

          v254 += v30;
        }
      }

      goto LABEL_311;
    }

    if (v57 < 1)
    {
      v566 = 0;
      v485 = 0;
LABEL_300:
      v598 = v56 - v485;
      if (v56 <= v485)
      {
        goto LABEL_312;
      }

      if (v142 < v598)
      {
        v598 = v142;
      }

      if (v598 >= 1)
      {
        for (i2 = 0; i2 != v598; ++i2)
        {
          v767 = *(v55 + 48);
          v768 = v206;
          v769 = v205;
          v770 = v767 - (v767 != 0);
          if (v770)
          {
            v771 = 0;
            v769 = v205;
            v768 = v206;
            do
            {
              v772 = &v42[8 * v771];
              v773 = (*v772 + 4 * v566);
              v774 = (*(v772 + 1) + 4 * v566);
              v775 = vld1q_dup_f32(v773);
              v776 = vld1q_dup_f32(v774);
              v777 = v769[1];
              v778 = vmlaq_f32(vmlaq_f32(v775, *v769, *v203), *v768, v203[4]);
              v779 = vmlaq_f32(vmlaq_f32(v775, v777, v203[1]), v768[1], v203[5]);
              *v768 = *v769;
              v768[1] = v777;
              *v769 = v778;
              v769[1] = v779;
              v780 = v769[2];
              v781 = v769[3];
              v782 = vmlaq_f32(vmlaq_f32(v776, v780, *v203), v768[2], v203[4]);
              v783 = vmlaq_f32(vmlaq_f32(v776, v781, v203[1]), v768[3], v203[5]);
              v768[2] = v780;
              v768[3] = v781;
              v769[2] = v782;
              v769[3] = v783;
              v784 = v769[4];
              v785 = v769[5];
              v786 = vmlaq_f32(vmlaq_f32(v775, v784, v203[2]), v768[4], v203[6]);
              v787 = vmlaq_f32(vmlaq_f32(v776, v785, v203[3]), v768[5], v203[7]);
              v768[4] = v784;
              v768[5] = v785;
              v769[4] = v786;
              v769[5] = v787;
              v769 += 6;
              v768 += 6;
              v771 += 2;
            }

            while (v771 < v770);
          }

          if (v767)
          {
            v788 = (*&v42[8 * (v767 - 1)] + 4 * v566);
            v789 = vld1q_dup_f32(v788);
            v790 = v769[1];
            v791 = vmlaq_f32(vmlaq_f32(v789, *v769, *v203), *v768, v203[4]);
            v792 = vmlaq_f32(vmlaq_f32(v789, v790, v203[1]), v768[1], v203[5]);
            *v768 = *v769;
            v768[1] = v790;
            *v769 = v791;
            v769[1] = v792;
            v793 = v769[2];
            v794 = v769[3];
            v795 = vmlaq_f32(vmlaq_f32(0, v794, v203[3]), v768[3], v203[7]);
            v796 = vmlaq_f32(vmlaq_f32(v789, v793, v203[2]), v768[2], v203[6]);
            v768[2] = v793;
            v768[3] = v794;
            v769[2] = v796;
            v769[3] = v795;
          }

          v566 += v30;
        }
      }

      goto LABEL_311;
    }

    v484 = 0;
    v485 = 0;
    v486 = 0;
    LODWORD(v487) = 0;
    while (1)
    {
      if (v142 >= 1)
      {
        v488 = 0;
        v487 = v487;
        do
        {
          v489 = *(v55 + 48);
          v490 = v206;
          v491 = v205;
          v492 = v489 - (v489 != 0);
          if (v492)
          {
            v493 = 0;
            v491 = v205;
            v490 = v206;
            do
            {
              v494 = &v42[8 * v493];
              v495 = (*v494 + 4 * v487);
              v496 = (*(v494 + 1) + 4 * v487);
              v497 = vld1q_dup_f32(v495);
              v498 = vld1q_dup_f32(v496);
              v499 = v491[1];
              v500 = vmlaq_f32(vmlaq_f32(v497, *v491, *v203), *v490, v203[4]);
              v501 = vmlaq_f32(vmlaq_f32(v497, v499, v203[1]), v490[1], v203[5]);
              *v490 = *v491;
              v490[1] = v499;
              *v491 = v500;
              v491[1] = v501;
              v502 = v491[2];
              v503 = v491[3];
              v504 = vmlaq_f32(vmlaq_f32(v498, v502, *v203), v490[2], v203[4]);
              v505 = vmlaq_f32(vmlaq_f32(v498, v503, v203[1]), v490[3], v203[5]);
              v490[2] = v502;
              v490[3] = v503;
              v491[2] = v504;
              v491[3] = v505;
              v506 = v491[4];
              v507 = v491[5];
              v508 = vmlaq_f32(vmlaq_f32(v497, v506, v203[2]), v490[4], v203[6]);
              v509 = vmlaq_f32(vmlaq_f32(v498, v507, v203[3]), v490[5], v203[7]);
              v490[4] = v506;
              v490[5] = v507;
              v491[4] = v508;
              v491[5] = v509;
              v491 += 6;
              v490 += 6;
              v493 += 2;
            }

            while (v493 < v492);
          }

          if (v489)
          {
            v510 = (*&v42[8 * (v489 - 1)] + 4 * v487);
            v511 = vld1q_dup_f32(v510);
            v512 = v491[1];
            v513 = vmlaq_f32(vmlaq_f32(v511, *v491, *v203), *v490, v203[4]);
            v514 = vmlaq_f32(vmlaq_f32(v511, v512, v203[1]), v490[1], v203[5]);
            *v490 = *v491;
            v490[1] = v512;
            *v491 = v513;
            v491[1] = v514;
            v515 = v491[2];
            v516 = v491[3];
            v517 = vmlaq_f32(vmlaq_f32(0, v516, v203[3]), v490[3], v203[7]);
            v518 = vmlaq_f32(vmlaq_f32(v511, v515, v203[2]), v490[2], v203[6]);
            v490[2] = v515;
            v490[3] = v516;
            v491[2] = v518;
            v491[3] = v517;
          }

          v487 += v30;
          ++v488;
        }

        while (v488 != v142);
      }

      v519 = *(v55 + 96);
      v520 = (v204 + 32 * ((v140 >> 21) & 0x3FC));
      v521 = *(v55 + 48);
      v522 = *(v55 + 208);
      v523 = v206;
      v524 = v205;
      v525 = v521 - (*(v55 + 48) != 0);
      if (v525)
      {
        v526 = 0;
        v527 = *(v55 + 208);
        v524 = v205;
        v523 = v206;
        do
        {
          v528 = v520[1];
          v530 = v520[4];
          v529 = v520[5];
          v531 = vmlaq_f32(vmulq_f32(v529, v523[1]), v524[1], v528);
          v532 = vmlaq_f32(vmulq_f32(v529, v523[3]), v524[3], v528);
          v533 = vmlaq_f32(vmulq_f32(v520[7], v523[5]), v524[5], v520[3]);
          v534 = vmlaq_f32(vmulq_f32(v520[6], v523[4]), v524[4], v520[2]);
          v535 = vaddq_f32(vmlaq_f32(vmulq_f32(v530, *v523), *v524, *v520), v531);
          *v534.i8 = vadd_f32(*v534.i8, *&vextq_s8(v534, v534, 8uLL));
          *v535.i8 = vadd_f32(*v535.i8, *&vextq_s8(v535, v535, 8uLL));
          v536 = vaddq_f32(vmlaq_f32(vmulq_f32(v530, v523[2]), v524[2], *v520), v532);
          *v536.i8 = vadd_f32(*v536.i8, *&vextq_s8(v536, v536, 8uLL));
          *v533.i8 = vadd_f32(*v533.i8, *&vextq_s8(v533, v533, 8uLL));
          *v527++ = vadd_f32(vadd_f32(vzip1_s32(*v535.i8, *v536.i8), vzip2_s32(*v535.i8, *v536.i8)), vadd_f32(vzip1_s32(*v534.i8, *v533.i8), vzip2_s32(*v534.i8, *v533.i8)));
          v524 += 6;
          v523 += 6;
          v526 += 2;
        }

        while (v526 < v525);
      }

      if (v521)
      {
        v537 = vaddq_f32(vmlaq_f32(vmulq_f32(v520[4], *v523), *v524, *v520), vmlaq_f32(vmulq_f32(v520[5], v523[1]), v524[1], v520[1]));
        *v537.i8 = vadd_f32(*v537.i8, *&vextq_s8(v537, v537, 8uLL));
        v538 = vaddq_f32(vmlaq_f32(vmulq_f32(v520[6], v523[2]), v524[2], v520[2]), vmlaq_f32(vmulq_f32(v520[7], v523[3]), v524[3], v520[3]));
        *v538.i8 = vadd_f32(*v538.i8, *&vextq_s8(v538, v538, 8uLL));
        v522[(v521 - 1)] = vaddv_f32(vadd_f32(vzip1_s32(*v537.i8, *v538.i8), vzip2_s32(*v537.i8, *v538.i8)));
      }

      v539 = *(v55 + 232);
      v540 = v206;
      v541 = v205;
      if (v525)
      {
        v542 = 0;
        v543 = *(v55 + 232);
        v541 = v205;
        v540 = v206;
        do
        {
          v544 = v520[8];
          v545 = v520[9];
          v547 = v520[12];
          v546 = v520[13];
          v548 = vmlaq_f32(vmulq_f32(v546, v540[1]), v541[1], v545);
          v549 = vmlaq_f32(vmulq_f32(v547, *v540), *v541, v544);
          v550 = vmlaq_f32(vmulq_f32(v546, v540[3]), v541[3], v545);
          v551 = vmlaq_f32(vmulq_f32(v547, v540[2]), v541[2], v544);
          v552 = vmlaq_f32(vmulq_f32(v520[15], v540[5]), v541[5], v520[11]);
          v553 = vmlaq_f32(vmulq_f32(v520[14], v540[4]), v541[4], v520[10]);
          v554 = vaddq_f32(v549, v548);
          *v553.i8 = vadd_f32(*v553.i8, *&vextq_s8(v553, v553, 8uLL));
          *v554.i8 = vadd_f32(*v554.i8, *&vextq_s8(v554, v554, 8uLL));
          v555 = vaddq_f32(v551, v550);
          *v555.i8 = vadd_f32(*v555.i8, *&vextq_s8(v555, v555, 8uLL));
          *v552.i8 = vadd_f32(*v552.i8, *&vextq_s8(v552, v552, 8uLL));
          *v543++ = vadd_f32(vadd_f32(vzip1_s32(*v554.i8, *v555.i8), vzip2_s32(*v554.i8, *v555.i8)), vadd_f32(vzip1_s32(*v553.i8, *v552.i8), vzip2_s32(*v553.i8, *v552.i8)));
          v541 += 6;
          v540 += 6;
          v542 += 2;
        }

        while (v542 < v525);
      }

      v556 = v519 * (v140 & 0x7FFFFF);
      if (v521)
      {
        break;
      }

      v557 = v47;
      if (v521)
      {
        goto LABEL_212;
      }

LABEL_213:
      v485 += v142;
      v565 = v140 + v202;
      v140 = (v140 + v202) & 0x7FFFFFFF;
      v142 = v207 + (v565 >> 31);
      ++v486;
      v484 += v30;
      if (v486 == v57)
      {
        v566 = v487;
        goto LABEL_300;
      }
    }

    v558 = vaddq_f32(vmlaq_f32(vmulq_f32(v520[12], *v540), *v541, v520[8]), vmlaq_f32(vmulq_f32(v520[13], v540[1]), v541[1], v520[9]));
    *v558.i8 = vadd_f32(*v558.i8, *&vextq_s8(v558, v558, 8uLL));
    v559 = vaddq_f32(vmlaq_f32(vmulq_f32(v520[14], v540[2]), v541[2], v520[10]), vmlaq_f32(vmulq_f32(v520[15], v540[3]), v541[3], v520[11]));
    *v559.i8 = vadd_f32(*v559.i8, *&vextq_s8(v559, v559, 8uLL));
    v539[(v521 - 1)] = vaddv_f32(vadd_f32(vzip1_s32(*v558.i8, *v559.i8), vzip2_s32(*v558.i8, *v559.i8)));
    v557 = v47;
    do
    {
LABEL_212:
      v560 = *v522++;
      v561 = v560;
      v562 = *v539++;
      v563 = v561 + (v556 * (v562 - v561));
      v564 = *v557++;
      *(v564 + 4 * v484) = v563;
      --v521;
    }

    while (v521);
    goto LABEL_213;
  }

  v35 = *(a1 + 96);
  v36 = *(a1 + 104);
  if (v35 != v36)
  {
    v37 = 0;
    v38 = vcvtmd_s64_f64(a5);
    v39 = vcvtmd_s64_f64(v17);
    do
    {
      v40 = *v35++;
      RamstadSRC::processMono(v836, v40, &(**v824)[v37], (*v829.__r_.__value_.__l.__data_ + v37 * 4), v38, v39, v30, v30);
      ++v37;
    }

    while (v35 != v36);
  }

LABEL_314:
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v829);
  return a6;
}

void sub_1DE4703C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 231) < 0)
  {
    operator delete(*(v1 + 208));
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Ramstad_Resampler::~Ramstad_Resampler(AMCP::DAL::Ramstad_Resampler *this)
{
  v1 = (this + 96);
  std::vector<std::unique_ptr<RamstadSRC>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = (this + 96);
  std::vector<std::unique_ptr<RamstadSRC>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void std::vector<std::unique_ptr<RamstadSRC>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<RamstadSRC>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

RamstadSRC **std::unique_ptr<RamstadSRC>::~unique_ptr[abi:ne200100](RamstadSRC **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    RamstadSRC::~RamstadSRC(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

uint64_t AMCP::IO_Core::IO_Thread_Realtime::run(AMCP::Graph::Manifest_Queue **this)
{
  v196 = *MEMORY[0x1E69E9840];
  v2 = **this;
  AMCP::Graph::Manifest_Queue::get_sample_rate(*(*this + 70));
  v3 = kdebug_trace();
  AMCP::Logging_Settings::instance(v3);
  if (HIBYTE(AMCP::Logging_Settings::instance(void)::s_instance) == 1)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 35;
      *&buf[18] = 1024;
      *&buf[20] = v2;
      _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_INFO, "%32s:%-5d IO_Thread_Realtime(%u)::start", buf, 0x18u);
    }
  }

  cycle_size_in_host_ticks = AMCP::Graph::Manifest_Queue::get_cycle_size_in_host_ticks(*this);
  v10 = pthread_self();
  AMCP::Utility::configure_thread_for_realtime(v10, cycle_size_in_host_ticks, 0);
  if (!*this)
  {
    v149 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v149 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v151 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v150 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v150)
    {
      atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
      v152 = *v151;
      std::__shared_weak_count::__release_shared[abi:ne200100](v150);
    }

    else
    {
      v152 = *v151;
    }

    if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 145;
      *&buf[18] = 2080;
      *&buf[20] = "not ((m_manifest_queue) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v152, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO_Thread_Realtime::join_workgroup_interval() called with null queue", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v180);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v179, "IO_Thread_Realtime::join_workgroup_interval() called with null queue", v165);
    std::logic_error::logic_error(&v178, &v179);
    v178.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v192, &v178);
    *&v192[24] = 0;
    v193 = 0;
    v194 = 0;
    v195 = -1;
    *v192 = &unk_1F5991430;
    *&v192[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v192);
    *&v189 = "void AMCP::IO_Core::IO_Thread_Realtime::join_workgroup_interval()";
    *(&v189 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.cpp";
    LODWORD(v190[0]) = 145;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v187);
  }

  AMCP::Graph::Manifest_Queue::join_workgroup_interval(*this);
  if (!*this)
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
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 161;
      *&buf[18] = 2080;
      *&buf[20] = "not ((m_manifest_queue) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v156, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO_Thread_Realtime::start_workgroup_interval() called with null queue", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v180);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v179, "IO_Thread_Realtime::start_workgroup_interval() called with null queue", v166);
    std::logic_error::logic_error(&v178, &v179);
    v178.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v192, &v178);
    *&v192[24] = 0;
    v193 = 0;
    v194 = 0;
    v195 = -1;
    *v192 = &unk_1F5991430;
    *&v192[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v192);
    *&v189 = "void AMCP::IO_Core::IO_Thread_Realtime::start_workgroup_interval()";
    *(&v189 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.cpp";
    LODWORD(v190[0]) = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v187);
  }

  AMCP::Graph::Manifest_Queue::start_workgroup_interval(*this);
  v11 = *this;
  v12 = AMCP::Graph::Manifest_Queue::maybe_acquire_new_manifest(*this);
  if (!v12)
  {
    wake_time_in_host_time = AMCP::Graph::Manifest_Queue::get_wake_time_in_host_time(v11);
    if (wake_time_in_host_time > mach_absolute_time())
    {
      AMCP::Graph::Manifest_Queue::wait_for_next_cycle(v11);
    }
  }

  caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
  v15 = v14;
  v16 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
  if (v12)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  v19 = 0;
  v33 = HIDWORD(v17) & 1;
  v18 = 1;
LABEL_30:
  v177 = v33;
LABEL_31:
  v16 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
  if (v16 && (v18 & 1) != 0)
  {
    v34 = pthread_self();
    is_thread_configured_for_realtime = AMCP::Utility::is_thread_configured_for_realtime(v34, v35);
    if (!is_thread_configured_for_realtime)
    {
      v144 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v144 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_thread_configured_for_realtime);
      }

      v146 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v145 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v145)
      {
        atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
        v147 = *v146;
        std::__shared_weak_count::__release_shared[abi:ne200100](v145);
      }

      else
      {
        v147 = *v146;
      }

      if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "IO_Thread_Realtime.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 177;
        *&buf[18] = 2080;
        *&buf[20] = "(AMCP::Utility::is_thread_configured_for_realtime(pthread_self())) == false";
        _os_log_error_impl(&dword_1DE1F9000, v147, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Only call maybe_sleep_thread_for_power_change from a realtime thread", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v180);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v179, "Only call maybe_sleep_thread_for_power_change from a realtime thread", v148);
      std::runtime_error::runtime_error(&v178, &v179);
      std::runtime_error::runtime_error(v192, &v178);
      *&v192[24] = 0;
      v193 = 0;
      v194 = 0;
      v195 = -1;
      *v192 = &unk_1F5992170;
      *&v192[16] = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, v192);
      *&v189 = "BOOL AMCP::IO_Core::IO_Thread_Realtime::maybe_sleep_thread_for_power_change(AMCP::Power_State)";
      *(&v189 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.cpp";
      LODWORD(v190[0]) = 177;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v187);
    }

    if (v15 > 2)
    {
      if (v15 == 4 || v15 == 3 && (this[4] & 1) != 0)
      {
LABEL_70:
        AMCP::Graph::Manifest_Queue::process_once(*this, 0, *(this + 34));
        goto LABEL_71;
      }
    }

    else if (v15 == 1)
    {
      if (*(this + 33))
      {
        goto LABEL_70;
      }
    }

    else if (v15 == 2)
    {
      goto LABEL_70;
    }

    v37 = 0;
    while (1)
    {
      v38 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
      if (!v38)
      {
        if ((v37 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_71:
        v58 = *this;
        v59 = *(*this + 70);
        if (!v59)
        {
          goto LABEL_77;
        }

        if (*(v58 + 424) == 1)
        {
          *(v58 + 424) = AMCP::Graph::Manifest_Queue::check_if_catchup_mode_is_still_active(*this);
          goto LABEL_176;
        }

        if (!AMCP::Graph::Manifest_Queue::timebases_are_valid(v59))
        {
LABEL_77:
          v18 = 0;
          goto LABEL_177;
        }

        v60 = *(v58 + 70);
        if (v60)
        {
          overload_time_in_host_time = AMCP::Graph::Manifest::get_overload_time_in_host_time(v60, (v58 + 78));
        }

        else
        {
          overload_time_in_host_time = -1;
        }

        v62 = mach_absolute_time();
        AMCP::Graph::Manifest::get_master_timebase(&v179, *(*(v58 + 70) + 72), *(*(v58 + 70) + 80));
        (*(*v179.__r_.__value_.__l.__data_ + 32))(buf);
        v63 = *(v58 + 80);
        v64 = *buf;
        v65 = v190[0];
        *(v58 + 42) = v189;
        *(v58 + 43) = v65;
        v66 = *&buf[16];
        *(v58 + 40) = *buf;
        *(v58 + 41) = v66;
        if (v63 != 0.0 && v63 > v64)
        {
          v72 = *(v58 + 70);
          if (!v72)
          {
            goto LABEL_138;
          }

          v74 = *(v72 + 72);
          v73 = *(v72 + 80);
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v174 = v74;
          v175 = v73;
          v75 = *v58;
          v76 = *(v74 + 64);
          *(v76 + 40) = 0;
          *(v76 + 8) = 0;
          *(v76 + 16) = 0;
          for (i = *(v74 + 24); i; i = *i)
          {
            v78 = i[12];
            v79 = *(v78 + 304);
            if (v79)
            {
              if (*(v78 + 31) < 0)
              {
                std::string::__init_copy_ctor_external(&v181, *(v78 + 8), *(v78 + 16));
                v79 = *(v78 + 304);
              }

              else
              {
                v181 = *(v78 + 8);
              }

              v182 = *(v78 + 32);
              LODWORD(v183) = *(v78 + 40);
              *v192 = v75;
              *&v192[8] = *&v181.__r_.__value_.__l.__data_;
              v80 = v181.__r_.__value_.__r.__words[2];
              memset(&v181, 0, sizeof(v181));
              *&v192[24] = v80;
              v193 = v182;
              LODWORD(v194) = v183;
              (*(*v79 + 112))(v79, v192);
              if ((v192[31] & 0x80000000) != 0)
              {
                operator delete(*&v192[8]);
              }
            }
          }

          v81 = *(v174 + 96);
          v82 = *(v174 + 104);
          if (v82)
          {
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v81 + 216))(v81);
          if (v82)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v82);
          }

          if (v175)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v175);
          }

          AMCP::Graph::Manifest_Queue::reanchor_after_time_change(v58);
          caulk::make_string(v192, "%u - Discontinuous timestamps", v83, *v58);
          v84 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v85 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v85)
          {
            atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*MEMORY[0x1E69E3C08])
          {
            v86 = *(v84 + 8);
            if (v192[23] >= 0)
            {
              v87 = v192;
            }

            else
            {
              v87 = *v192;
            }

            v88 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
            *(v88 + 16) = 0;
            *(v88 + 20) = 16;
            *(v88 + 24) = "Manifest_Queue.cpp";
            *(v88 + 32) = 560;
            *(v88 + 40) = v87;
            *v88 = &unk_1F596AE48;
            *(v88 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v86, v88);
            if (v85)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v85);
            }

            if ((v192[23] & 0x80000000) != 0)
            {
              operator delete(*v192);
            }

            goto LABEL_138;
          }

LABEL_277:
          __break(1u);
        }

        if (v62 < overload_time_in_host_time)
        {
          goto LABEL_138;
        }

        v68 = *(v58 + 70);
        if (!v68)
        {
          goto LABEL_138;
        }

        AMCP::Graph::Manifest::get_master_timebase(&v181, *(v68 + 72), *(v68 + 80));
        v69 = v181.__r_.__value_.__r.__words[0];
        v70 = (*(*v181.__r_.__value_.__l.__data_ + 64))(v181.__r_.__value_.__r.__words[0], v62);
        v71 = (*(*v69 + 64))(v69, overload_time_in_host_time);
        kdebug_trace();
        kdebug_trace();
        if (*(v58 + 425) == 1)
        {
          *(v58 + 424) = AMCP::Graph::Manifest_Queue::check_if_catchup_mode_is_still_active(v58);
        }

        else
        {
          v89 = *(v58 + 70);
          v90 = *(v89 + 72);
          v91 = *(v89 + 80);
          if (v91)
          {
            atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v92 = *(v90 + 160);
          if (v92)
          {
            std::function<void ()>::operator()(v92, *v58);
          }

          if (v91)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v91);
          }

          AMCP::Graph::Manifest_Queue::reanchor_after_time_change(v58);
        }

        v93 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v94 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v94)
        {
          atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!*MEMORY[0x1E69E3C08])
        {
          goto LABEL_277;
        }

        v95 = *(v93 + 8);
        v96 = *v58;
        v97 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v97 + 16) = 0;
        *(v97 + 20) = 16;
        *(v97 + 24) = "Manifest_Queue.cpp";
        *(v97 + 32) = 588;
        *(v97 + 40) = "";
        *(v97 + 48) = v96;
        *(v97 + 56) = v70;
        *(v97 + 64) = v71;
        *v97 = &unk_1F596AEA0;
        *(v97 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v95, v97);
        if (v94)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v94);
        }

        v98 = *(v58 + 70);
        v100 = *(v98 + 96);
        v99 = *(v98 + 104);
        if (!v99)
        {
          if (!v100)
          {
            goto LABEL_136;
          }

          v102 = 0;
LABEL_133:
          v103 = 1;
          goto LABEL_134;
        }

        atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v99);
        if (!v100)
        {
          goto LABEL_136;
        }

        v101 = *(v58 + 70);
        v100 = *(v101 + 96);
        v102 = *(v101 + 104);
        if (!v102)
        {
          goto LABEL_133;
        }

        v103 = 0;
        atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_134:
        AMCP::Graph::Manifest_Log::add_message(v100, 2, "Overload %s(%u) - current time: %0.f  deadline time: %0.f", "", *v58, v70, v71);
        if ((v103 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v102);
        }

LABEL_136:
        if (v181.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v181.__r_.__value_.__l.__size_);
        }

LABEL_138:
        if (v179.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v179.__r_.__value_.__l.__size_);
        }

        updated = 0.0;
        if (*(v58 + 552) == 1)
        {
          if ((v58[108] & 2) == 0)
          {
            AMCP::DAL::DAL_Time_Delta::validate((v58 + 108));
          }

          v105 = *(v58 + 55);
          if ((v58[78] & 2) == 0)
          {
            AMCP::DAL::DAL_Time_Delta::validate((v58 + 78));
          }

          if (round(v105) != round(*(v58 + 40)))
          {
            v106 = *(v58 + 70);
            v108 = v106[12];
            v107 = v106[13];
            if (v107)
            {
              atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:ne200100](v107);
              if (v108)
              {
                v106 = *(v58 + 70);
                v108 = v106[12];
                v109 = v106[13];
                if (v109)
                {
                  v176 = 0;
                  atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
                  v106 = *(v58 + 70);
                  goto LABEL_153;
                }

LABEL_152:
                v176 = 1;
LABEL_153:
                AMCP::Graph::Manifest::get_iocontext_uid(buf, v106);
                if (buf[23] >= 0)
                {
                  v110 = buf;
                }

                else
                {
                  v110 = *buf;
                }

                if ((v58[78] & 2) == 0)
                {
                  AMCP::DAL::DAL_Time_Delta::validate((v58 + 78));
                }

                v111 = *(v58 + 40);
                if ((v58[108] & 2) == 0)
                {
                  AMCP::DAL::DAL_Time_Delta::validate((v58 + 108));
                }

                AMCP::Graph::Manifest_Log::add_message(v108, 7, "Manifest %s from %lld to %lld", v110, vcvtmd_s64_f64(v111), vcvtmd_s64_f64(*(v58 + 55)));
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                if ((v176 & 1) == 0)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v109);
                }
              }
            }

            else if (v108)
            {
              v109 = 0;
              goto LABEL_152;
            }
          }

          updated = AMCP::Graph::Manifest_Queue::update_execution_context(v58, (v58 + 108));
          buf[0] = 0;
          v191 = 0;
          std::__optional_storage_base<AMCP::Graph::Manifest_Execution_Context,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AMCP::Graph::Manifest_Execution_Context,false>>((v58 + 108), buf);
          if (v191 == 1)
          {
            caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v190);
            if (v189)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v189);
            }
          }
        }

        if (round(updated) != 0.0)
        {
          v112 = *(v58 + 70);
          v113 = *(v112 + 72);
          v114 = *(v112 + 80);
          if (v114)
          {
            atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::Graph::Manifest_Counter::adjust_cycle_anchor_for_buffer_size_change(*(v113 + 64), updated);
          if (v114)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v114);
          }

          AMCP::Graph::Manifest_Queue::process_once(v58, 1, 0);
        }

        if (*(v58 + 46))
        {
          caulk::mach::os_workgroup_interval_managed::finish((v58 + 90));
        }

        AMCP::Graph::Manifest_Queue::wait_for_next_cycle(v58);
        AMCP::Graph::Manifest_Queue::start_workgroup_interval(v58);
LABEL_176:
        v18 = AMCP::Graph::Manifest_Queue::timebases_are_valid(*(v58 + 70));
LABEL_177:
        caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
        if (v15 != v115)
        {
          caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
          v15 = v116;
          if (v116 == 2)
          {
            *(this + 34) = *(this + 33) ^ 1;
            goto LABEL_181;
          }

          *(this + 34) = 0;
          if (v116)
          {
LABEL_181:
            if (!caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]))
            {
              goto LABEL_193;
            }

            v117 = *(*this + 70);
            if (!v117)
            {
              goto LABEL_193;
            }

            v118 = *(v117 + 72);
            v119 = *(v117 + 80);
            if (v119)
            {
              atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            AMCP::Graph::Manifest_Inventory::take_power_assertions(v118);
            if (!v119)
            {
              goto LABEL_193;
            }

LABEL_191:
            std::__shared_weak_count::__release_shared[abi:ne200100](v119);
            goto LABEL_193;
          }

          v120 = *(*this + 70);
          if (!v120)
          {
            v15 = 0;
            goto LABEL_193;
          }

          v121 = *(v120 + 72);
          v119 = *(v120 + 80);
          if (v119)
          {
            atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::Graph::Manifest_Inventory::release_power_assertions(v121);
          v15 = 0;
          if (v119)
          {
            goto LABEL_191;
          }
        }

LABEL_193:
        caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
        v19 = 1;
        if (v177 != (v122 & 1))
        {
          caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
          v33 = HIDWORD(v123) & 1;
          v124 = *(*this + 70);
          if (v124)
          {
            v125 = *(v124 + 72);
            v126 = *(v124 + 80);
            if (v126)
            {
              atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *v125 = (v123 & 0x100000000) >> 32;
            if ((v123 & 0x100000000) != 0)
            {
              AMCP::Graph::Manifest_Inventory::release_power_assertions(v125);
            }

            else
            {
              AMCP::Graph::Manifest_Inventory::take_power_assertions(v125);
            }

            if (v126)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v126);
            }
          }

          goto LABEL_30;
        }

        goto LABEL_31;
      }

      v39 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v39 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v38);
      }

      v41 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        v42 = *v41;
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      else
      {
        v42 = *v41;
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v54 = **this;
        *buf = 136315650;
        *&buf[4] = "IO_Thread_Realtime.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 189;
        *&buf[18] = 1024;
        *&buf[20] = v54;
        _os_log_debug_impl(&dword_1DE1F9000, v42, OS_LOG_TYPE_DEBUG, "%32s:%-5d Context(%u): IO_Thread_Realtime: parked for sleeping", buf, 0x18u);
      }

      v43 = this[2];
      v44 = mach_absolute_time();
      AMCP::IO_Core::Thread_Control_State::sleep_until_time(v43, v44 + 360000000);
      v45 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this[2]);
      v47 = v46;
      if (v46 == 1)
      {
        if (*(this + 33))
        {
          goto LABEL_58;
        }
      }

      else if (v46 == 4 || v46 == 3 && (this[4] & 1) != 0)
      {
LABEL_58:
        v48 = 1;
        goto LABEL_59;
      }

      v48 = v46 == 2;
LABEL_59:
      AMCP::Logging_Settings::instance(v45);
      if (BYTE1(AMCP::Logging_Settings::instance(void)::s_instance) == 1)
      {
        v50 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v50 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v49);
        }

        v52 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v51 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          v53 = *v52;
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        else
        {
          v53 = *v52;
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v55 = **this;
          v56 = *(this + 32);
          v57 = *(this + 33);
          *buf = 136316674;
          *&buf[4] = "IO_Thread_Realtime.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 202;
          *&buf[18] = 1024;
          *&buf[20] = v55;
          *&buf[24] = 1024;
          *&buf[26] = v47;
          *&buf[30] = 1024;
          LODWORD(v189) = v48;
          WORD2(v189) = 1024;
          *(&v189 + 6) = v56;
          WORD5(v189) = 1024;
          HIDWORD(v189) = v57;
          _os_log_debug_impl(&dword_1DE1F9000, v53, OS_LOG_TYPE_DEBUG, "%32s:%-5d Context(%u): %u Thread can play: %d, m_can_play_during_notification_wake: %d, m_can_play_during_dark_wake: %d", buf, 0x30u);
        }
      }

      v37 = 1;
      if (v48)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_16:
  v20 = *this;
  if (!*this)
  {
    v157 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v157 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v16);
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
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 169;
      *&buf[18] = 2080;
      *&buf[20] = "not ((m_manifest_queue) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v160, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO_Thread_Realtime::finish_workgroup_interval() called with null queue", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v180);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v179, "IO_Thread_Realtime::finish_workgroup_interval() called with null queue", v167);
    std::logic_error::logic_error(&v178, &v179);
    v178.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v192, &v178);
    *&v192[24] = 0;
    v193 = 0;
    v194 = 0;
    v195 = -1;
    *v192 = &unk_1F5991430;
    *&v192[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v192);
    *&v189 = "void AMCP::IO_Core::IO_Thread_Realtime::finish_workgroup_interval()";
    *(&v189 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.cpp";
    LODWORD(v190[0]) = 169;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v187);
  }

  if (*(v20 + 46))
  {
    v16 = caulk::mach::os_workgroup_interval_managed::finish((v20 + 360));
  }

  if (v12 == 2)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    v22 = v2;
    v23 = 2;
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v16);
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

    v16 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      *buf = 136315394;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 91;
      _os_log_debug_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_DEBUG, "%32s:%-5d Interrupted while trying to start the IO thread", buf, 0x12u);
    }

    goto LABEL_217;
  }

  v22 = v2;
  v23 = v12;
  if (v18 & v19)
  {
    goto LABEL_217;
  }

  v27 = pthread_self();
  v28 = pthread_getname_np(v27, buf, 0xFAuLL);
  v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v29 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v28);
  }

  v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    v32 = *v31;
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  else
  {
    v32 = *v31;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *v192 = 136315650;
    *&v192[4] = "IO_Thread_Realtime.cpp";
    *&v192[12] = 1024;
    *&v192[14] = 98;
    *&v192[18] = 2080;
    *&v192[20] = buf;
    _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d I/O thread exited unexpectedly: %s", v192, 0x1Cu);
  }

  v127 = *this;
  v128 = *(*this + 70);
  v130 = *(v128 + 72);
  v129 = *(v128 + 80);
  if (!v129)
  {
    if (v130)
    {
      v132 = 0;
      goto LABEL_214;
    }

LABEL_269:
    v169 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v169 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v129);
    }

    v171 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v170 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v170)
    {
      atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
      v172 = *v171;
      std::__shared_weak_count::__release_shared[abi:ne200100](v170);
    }

    else
    {
      v172 = *v171;
    }

    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
    {
      *v192 = 136315650;
      *&v192[4] = "Manifest_Queue.cpp";
      *&v192[12] = 1024;
      *&v192[14] = 802;
      *&v192[18] = 2080;
      *&v192[20] = "not (m_current_manifiest->get_inventory())";
      _os_log_error_impl(&dword_1DE1F9000, v172, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We need a valid inventory in order to report a thread error", v192, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v186);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v187, "We need a valid inventory in order to report a thread error", v173);
    std::logic_error::logic_error(&v180, &v187);
    v180.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v181, &v180);
    v182 = 0;
    v183 = 0;
    v184 = 0;
    v185 = -1;
    v181.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v181.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v192, &v181);
    v193 = "void AMCP::Graph::Manifest_Queue::report_thread_error() const";
    v194 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Queue.cpp";
    v195 = 802;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v178);
  }

  atomic_fetch_add_explicit(v129 + 1, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v129);
  if (!v130)
  {
    goto LABEL_269;
  }

  v131 = *(v127 + 70);
  v130 = *(v131 + 72);
  v132 = *(v131 + 80);
  if (v132)
  {
    v133 = 0;
    atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_215;
  }

LABEL_214:
  v133 = 1;
LABEL_215:
  v16 = AMCP::Graph::Manifest_Inventory::report_thread_error(*(v130 + 192));
  if ((v133 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v132);
  }

LABEL_217:
  v134 = *this;
  if (!*this)
  {
    v161 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v161 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v16);
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
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 153;
      *&buf[18] = 2080;
      *&buf[20] = "not ((m_manifest_queue) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v164, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO_Thread_Realtime::leave_workgroup_interval() called with null queue", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v180);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v179, "IO_Thread_Realtime::leave_workgroup_interval() called with null queue", v168);
    std::logic_error::logic_error(&v178, &v179);
    v178.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v192, &v178);
    *&v192[24] = 0;
    v193 = 0;
    v194 = 0;
    v195 = -1;
    *v192 = &unk_1F5991430;
    *&v192[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v192);
    *&v189 = "void AMCP::IO_Core::IO_Thread_Realtime::leave_workgroup_interval()";
    *(&v189 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.cpp";
    LODWORD(v190[0]) = 153;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v187);
  }

  if (*(v134 + 46))
  {
    caulk::mach::os_workgroup_managed::leave((v134 + 360));
  }

  v135 = pthread_self();
  AMCP::Utility::configure_thread_for_normal_priority(v135, v136);
  AMCP::Graph::Manifest_Queue::flush(*this);
  v137 = kdebug_trace();
  AMCP::Logging_Settings::instance(v137);
  if (HIBYTE(AMCP::Logging_Settings::instance(void)::s_instance) == 1)
  {
    v139 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v139 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v138);
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

    if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "IO_Thread_Realtime.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 116;
      *&buf[18] = 1024;
      *&buf[20] = v22;
      _os_log_impl(&dword_1DE1F9000, v142, OS_LOG_TYPE_INFO, "%32s:%-5d IO_Thread_Realtime(%u)::end", buf, 0x18u);
    }
  }

  return v23;
}

void sub_1DE472368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a2)
  {
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    if (a38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a38);
    }

    if (a32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a32);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE4724D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a27)
    {
      operator delete(a27);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v55 - 192);
    boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a37);
    MEMORY[0x1E12C0F00](&a35);
    if (a53 < 0)
    {
      operator delete(a48);
    }

    if (v54)
    {
      __cxa_free_exception(v53);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a47);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE47255C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a2)
  {
    if (__p)
    {
      a42 = __p;
      operator delete(__p);
    }

    if (a48)
    {
      a49 = a48;
      operator delete(a48);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(&a52);
    boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(v54 - 192);
    MEMORY[0x1E12C0F00](&a27);
    if (a36 < 0)
    {
      operator delete(a31);
    }

    if (v53)
    {
      __cxa_free_exception(v52);
    }

    JUMPOUT(0x1DE47267CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE4725CC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE4725D0);
  }

  __clang_call_terminate(a1);
}

void sub_1DE4725E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::runtime_error a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a2)
  {
    if (SHIBYTE(a32) < 0)
    {
      operator delete(a30);
    }

    __cxa_free_exception(v48);
    JUMPOUT(0x1DE47267CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE472688(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE472690);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::DAL::Packetized_Data_Handler::get_data@<X0>(AMCP::DAL::Packetized_Data_Handler *a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a5 - a4;
  if (round(a5 - a4) != round(AMCP::DAL::Packetized_Data_Handler::get_length_in_frames(a1)))
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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

    v18 = vcvtmd_s64_f64(v7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "Packetized_Data_Handler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 152;
      v31 = 2080;
      v32 = "not (range.length() == get_length_in_frames())";
      v33 = 2048;
      *v34 = v18;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Bad range length for packetized data, requested range length %lld", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v21, "Bad range length for packetized data, requested range length %lld", v19, v18);
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
    *&v34[2] = "virtual Sample_Group<uint8_t> AMCP::DAL::Packetized_Data_Handler::get_data(const Container &, Sample_Time_Range) const";
    v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
    v36 = 152;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  result = AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Packetized_Data_Handler>(*a2);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v10 = *(result + 64);
  v11 = *(result + 72);
  while (v10 != v11)
  {
    v12 = *(v10 + 1);
    v13 = *v10;
    v10 += 8;
    *buf = v12;
    *&buf[8] = v13;
    result = caulk::rt::vector<AMCP::DAL::Audio_Samples<unsigned char>>::emplace_back<AMCP::DAL::Audio_Samples<unsigned char>>(a3, buf);
  }

  return result;
}

void sub_1DE472990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
    if ((a11 & 1) == 0)
    {
LABEL_10:
      AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 129));
      _Unwind_Resume(a1);
    }
  }

  else if (!a11)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

double AMCP::DAL::Packetized_Data_Handler::get_length_in_frames(AMCP::DAL::Packetized_Data_Handler *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == *(this + 9))
  {
    v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v2 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      *buf = 136315650;
      v18 = "Packetized_Data_Handler.cpp";
      v19 = 1024;
      v20 = 97;
      v21 = 2080;
      v22 = "not (not m_samples.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Packetized_Data_Handler::get_length_in_frames: empty data buffer", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v8, "Packetized_Data_Handler::get_length_in_frames: empty data buffer", v6);
    std::logic_error::logic_error(&v9, &v8);
    v9.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v10, &v9);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
    v10.__vftable = &unk_1F5991430;
    v11 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v10);
    v23 = "virtual Sample_Time AMCP::DAL::Packetized_Data_Handler::get_length_in_frames() const";
    v24 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
    v25 = 97;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v7);
  }

  return (*(this + 7) * *(this + 7));
}

void sub_1DE472CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
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

uint64_t AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Packetized_Data_Handler>(uint64_t result)
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
    v22 = "T *AMCP::DAL::Container::get_container_data_ptr() const [T = AMCP::DAL::Packetized_Data_Handler]";
    v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.h";
    v24 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v6);
  }

  return result;
}

void sub_1DE472FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
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

const void **caulk::rt::vector<AMCP::DAL::Audio_Samples<unsigned char>>::emplace_back<AMCP::DAL::Audio_Samples<unsigned char>>(const void **result, _OWORD *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
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

    v18[4] = v3;
    if (v10)
    {
      v10 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = (v10 + 16 * v7);
    v13 = (v10 + 16 * v11);
    *v12 = *a2;
    v6 = v12 + 1;
    v14 = v3[1] - *v3;
    v15 = v12 - v14;
    memcpy(v12 - v14, *v3, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v6;
    v17 = v3[2];
    v3[2] = v13;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(v18);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 16;
  }

  v3[1] = v6;
  return result;
}

unint64_t std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(unint64_t result)
{
  if (!(result >> 60))
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      return caulk::rt_safe_memory_resource::rt_allocate(result);
    }
  }

  __break(1u);
  return result;
}

caulk::rt_safe_memory_resource *std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(caulk::rt_safe_memory_resource *result)
{
  v1 = result;
  v3 = *(result + 1);
  v2 = *(result + 2);
  if (v2 != v3)
  {
    *(result + 2) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v4 = *result;
  if (!*result)
  {
    return v1;
  }

  if ((*(result + 3) - v4) >= 0)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(result, v4);
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t *AMCP::DAL::Packetized_Data_Handler::get_ring_buffer_time_translator(AMCP::DAL::Packetized_Data_Handler *this)
{
  {
    AMCP::DAL::Packetized_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator = &unk_1F5971930;
  }

  return &AMCP::DAL::Packetized_Data_Handler::get_ring_buffer_time_translator(void)const::s_translator;
}

void AMCP::DAL::Packetized_Buffer_Time_Translator::translate_range(const AMCP::DAL::DAL_Time_Range *a1@<X1>, std::__shared_weak_count **a2@<X2>, unint64_t *a3@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  AMCP::DAL::DAL_Time::operator-(&v21, (a2 + 5), a2);
  AMCP::DAL::DAL_Time::operator-(buf, (a1 + 40), a1);
  v6 = AMCP::DAL::DAL_Time_Delta::operator==(&v21, buf);
  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  v7 = v23;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (!v6)
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
      AMCP::DAL::DAL_Time::operator-(&v21, (a2 + 5), a2);
      if ((v21 & 2) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(&v21);
      }

      *buf = 136315906;
      *&buf[4] = "Packetized_Data_Handler.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 173;
      *&buf[18] = 2080;
      *&buf[20] = "not (range.length() == ref_range.length())";
      *&buf[28] = 2048;
      *&buf[30] = vcvtmd_s64_f64(*(&v21 + 1));
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s invalid range length %lld", buf, 0x26u);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    AMCP::DAL::DAL_Time::operator-(v31, (a2 + 5), a2);
    if ((v31[0] & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(v31);
    }

    caulk::make_string(&v33, "invalid range length %lld", v20, vcvtmd_s64_f64(v32));
    std::logic_error::logic_error(&v34, &v33);
    v34.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v34);
    *&buf[24] = 0;
    *&buf[32] = 0;
    v37 = 0;
    v38 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v21, buf);
    v23 = "virtual rt_safe_vector<Buffer_Time_Translator::Translation_Range> AMCP::DAL::Packetized_Buffer_Time_Translator::translate_range(const DAL_Time_Range &, const DAL_Time_Range &) const";
    v24 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
    LODWORD(v25) = 173;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  AMCP::DAL::DAL_Time::operator-(buf, (a1 + 40), a1);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  *&v21 = 0;
  *(&v21 + 1) = *&buf[8];
  v22 = *a2;
  v8 = a2[3];
  v23 = a2[2];
  v24 = v8;
  v9 = a2[4];
  v25 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = *(a2 + 5);
  v10 = a2[8];
  v27 = a2[7];
  v28 = v10;
  v11 = a2[9];
  v29 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  if (v12 >= a3[2])
  {
    v13 = std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range>(a3, &v21);
    v14 = v29;
    a3[1] = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    *v12 = v21;
    *(v12 + 16) = v22;
    *(v12 + 32) = v23;
    *(v12 + 40) = v8;
    *(v12 + 48) = v9;
    v24 = 0;
    v25 = 0;
    *(v12 + 56) = v26;
    *(v12 + 72) = v27;
    *(v12 + 80) = v10;
    *(v12 + 88) = v11;
    a3[1] = v12 + 96;
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v15 = *&buf[32];
  if (*&buf[32])
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1DE47371C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *AMCP::DAL::Packetized_Data_Handler::copy(uint64_t **a1, double *a2, uint64_t *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Packetized_Data_Handler>(*a3);
  length_in_frames = AMCP::DAL::Packetized_Data_Handler::get_length_in_frames(v6);
  v8 = a2[1] - *a2;
  v10 = round(AMCP::DAL::Packetized_Data_Handler::get_length_in_frames(a1));
  v11 = round(v8);
  if (v10 != v11)
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

    v25 = vcvtmd_s64_f64(v8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "Packetized_Data_Handler.cpp";
      v40 = 1024;
      v41 = 194;
      v42 = 2080;
      v43 = "not (get_length_in_frames() == source_frame_length)";
      v44 = 2048;
      *v45 = v25;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s invalid source frame length %lld", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v30, "invalid source frame length %lld", v26, v25);
    std::logic_error::logic_error(&v31, &v30);
    v31.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v32, &v31);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    v32.__vftable = &unk_1F5991430;
    v33 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v32);
    *&v45[2] = "virtual void AMCP::DAL::Packetized_Data_Handler::copy(const Sample_Time_Range &, Container, Sample_Time, DAL_Operation_Context_Ref) const";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
    v47 = 194;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v29);
  }

  if (v11 != round(length_in_frames))
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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

    v27 = vcvtmd_s64_f64(length_in_frames);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "Packetized_Data_Handler.cpp";
      v40 = 1024;
      v41 = 195;
      v42 = 2080;
      v43 = "not (source_frame_length == dest_frame_length)";
      v44 = 2048;
      *v45 = v27;
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s invalid dest frame length %lld", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v30, "invalid dest frame length %lld", v28, v27);
    std::logic_error::logic_error(&v31, &v30);
    v31.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v32, &v31);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    v32.__vftable = &unk_1F5991430;
    v33 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v32);
    *&v45[2] = "virtual void AMCP::DAL::Packetized_Data_Handler::copy(const Sample_Time_Range &, Container, Sample_Time, DAL_Operation_Context_Ref) const";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
    v47 = 195;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v29);
  }

  AMCP::DAL::sample_group_from_packetized_samples(buf, (v5 + 64));
  AMCP::DAL::sample_group_from_packetized_samples(&v32.__vftable, a1 + 8);
  v12 = v32.__vftable;
  if (v32.__imp_.__imp_ != v32.__vftable)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      memcpy(*(*buf + v13), *(&v12->~logic_error + v13), *(&v12->~logic_error_0 + v13));
      v12 = v32.__vftable;
      *(*(v5 + 64) + v14) = *(&v32.~logic_error_0 + v13);
      ++v15;
      v14 += 32;
      v13 += 16;
    }

    while (v15 < (v32.__imp_.__imp_ - v12) >> 4);
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v32);
  return std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_1DE473DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a26);
  MEMORY[0x1E12C0F00](&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v27)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 145));
  _Unwind_Resume(a1);
}

const void **AMCP::DAL::sample_group_from_packetized_samples(const void **result, uint64_t **a2)
{
  v2 = result;
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if ((v5 >> 5) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v18 = result;
    v7 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>>>(v5 >> 5);
    v9 = (v7 + 16 * v8);
    v10 = v2[1] - *v2;
    v11 = (v7 - v10);
    memcpy((v7 - v10), *v2, v10);
    v12 = *v2;
    *v2 = v11;
    v2[1] = v7;
    v13 = v2[2];
    v2[2] = v9;
    v16 = v12;
    v17 = v13;
    *&v15 = v12;
    *(&v15 + 1) = v12;
    result = std::__split_buffer<AMCP::DAL::Audio_Samples<unsigned char>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<unsigned char>> &>::~__split_buffer(&v15);
    v3 = *a2;
    v4 = a2[1];
  }

  while (v3 != v4)
  {
    *&v15 = v3[1];
    v14 = *v3;
    v3 += 4;
    *(&v15 + 1) = v14;
    result = caulk::rt::vector<AMCP::DAL::Audio_Samples<unsigned char>>::emplace_back<AMCP::DAL::Audio_Samples<unsigned char>>(v2, &v15);
  }

  return result;
}

uint64_t AMCP::DAL::Packetized_Data_Handler::set_audio_buffer_list(uint64_t result, void *a2)
{
  v2 = **a2;
  v3 = *(result + 64);
  v4 = (*(result + 72) - v3) >> 5;
  if (v4 >= v2)
  {
    v5 = **a2;
  }

  else
  {
    v5 = (*(result + 72) - v3) >> 5;
  }

  if (v5)
  {
    v6 = (*a2 + 12);
    v7 = *(result + 64);
    v8 = v5;
    do
    {
      v9 = *v6;
      v6 += 4;
      *v7 = v9;
      v7 += 4;
      --v8;
    }

    while (v8);
  }

  if (v4 > v2)
  {
    v10 = 0;
    v11 = v4 - v5;
    v12 = (v4 - v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v13 = vdupq_n_s64(v11 - 1);
    v14 = (v3 + 32 * v5 + 32);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_1DE757E30)));
      if (v15.i8[0])
      {
        *(v14 - 4) = 0;
      }

      if (v15.i8[4])
      {
        *v14 = 0;
      }

      v10 += 2;
      v14 += 8;
    }

    while (v12 != v10);
  }

  return result;
}

caulk::rt_safe_memory_resource *AMCP::DAL::Packetized_Data_Handler::get_audio_buffer_list@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, caulk::rt_safe_memory_resource **a3@<X8>)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 56);
  v12[0] = &unk_1F59915B8;
  v12[3] = v12;
  *a3 = AMCP::Utility::AudioBufferList_Create(v7);
  std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100]((a3 + 1), v12);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v12);
  v6 = *a2;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::Packetized_Data_Handler>(v6);
  v7 = v7;
  AMCP::DAL::sample_group_from_packetized_samples(v12, (v6 + 64));
  if (v7)
  {
    v8 = *(a1 + 36);
    v9 = (*a3 + 16);
    v10 = v12[0] + 8;
    do
    {
      *(v9 - 2) = v8;
      *(v9 - 1) = *v10;
      *v9 = *(v10 - 1);
      v9 += 2;
      v10 += 2;
      v7 = (v7 - 1);
    }

    while (v7);
  }

  return std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](v12);
}

void sub_1DE474104(_Unwind_Exception *a1)
{
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](v1, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Packetized_Data_Handler::get_allocation_size(AMCP::DAL::Packetized_Data_Handler *this)
{
  v1 = *(this + 8);
  v2 = *(this + 9);
  if (v1 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += *(v1 + 16);
    v1 += 32;
  }

  while (v1 != v2);
  return result;
}

uint64_t AMCP::DAL::Packetized_Data_Handler::reuse_container(uint64_t this)
{
  v1 = *(this + 64);
  v2 = *(this + 72);
  while (v1 != v2)
  {
    *v1 = v1[2];
    v1 += 4;
  }

  return this;
}

void AMCP::DAL::Packetized_Data_Handler::adopt(AMCP::Log::AMCP_Scope_Registry *a1)
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
    v6 = "Packetized_Data_Handler.cpp";
    v7 = 1024;
    v8 = 71;
    v9 = 2080;
    v10 = "false";
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Packetized_Data_Handler::adopt unsupported", &v5, 0x1Cu);
  }

  abort();
}

void AMCP::DAL::Packetized_Data_Handler::~Packetized_Data_Handler(AMCP::DAL::Packetized_Data_Handler *this)
{
  *this = &unk_1F5971870;
  v1 = (this + 64);
  std::vector<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>,caulk::rt_allocator<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5971870;
  v1 = (this + 64);
  std::vector<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>,caulk::rt_allocator<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void std::vector<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>,caulk::rt_allocator<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    v5 = *a1;
    if (v3 != v2)
    {
      do
      {
        v7 = v3 - 32;
        AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data((v3 - 24));
        v3 = v7;
      }

      while (v7 != v2);
      v5 = *a1;
      v4 = **a1;
    }

    v1[1] = v2;
    if (v5[2] - v4 >= 0 && (v8 = *MEMORY[0x1E69E3C08]) != 0)
    {

      caulk::rt_safe_memory_resource::rt_deallocate(v8, v4);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t AMCP::DAL::Packetized_Data_Handler::Packetized_Data_Handler(uint64_t a1, uint64_t a2, double a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v5;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  *a1 = &unk_1F5971870;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  v6 = (a1 + 64);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = *(a2 + 16);
  if (!v7)
  {
    v8 = 4.0;
    LODWORD(v8) = *(a2 + 28);
    v7 = (a3 * 4.0 * v8);
    if (!v7)
    {
      v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v22 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
        v38 = "Packetized_Data_Handler.cpp";
        v39 = 1024;
        v40 = 50;
        v41 = 2080;
        v42 = "not (size > 0)";
        _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v36);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v28, "", v26);
      std::logic_error::logic_error(&v29, &v28);
      v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v30, &v29);
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = -1;
      v30.__vftable = &unk_1F5991430;
      v31 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
      v43 = "AMCP::DAL::Packetized_Data_Handler::Packetized_Data_Handler(const CA::StreamDescription &, Sample_Time)";
      v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_Data_Handler.cpp";
      v45 = 50;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
    }
  }

  v9 = MEMORY[0x1E69E3C08];
  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_24;
  }

  v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  v11 = (v10 + 2);
  *v10 = 0u;
  v10[1] = 0u;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = (v10 + v12 - v13);
  if (v12 != v13)
  {
    v15 = *(a1 + 64);
    v16 = (v10 + v12 - v13);
    do
    {
      v17 = *v15;
      v18 = *(v15 + 1);
      v15 += 32;
      *v16 = v17;
      v16[1] = v18;
      v16 += 2;
    }

    while (v15 != v13);
    do
    {
      AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data((v12 + 8));
      v12 += 32;
    }

    while (v12 != v13);
    v12 = *v6;
  }

  *(a1 + 64) = v14;
  *(a1 + 72) = v11;
  v19 = *(a1 + 80);
  *(a1 + 80) = v11;
  if (v12)
  {
    if (v19 - v12 >= 0 && *v9)
    {
      caulk::rt_safe_memory_resource::rt_deallocate(*v9, v12);
      v14 = *(a1 + 64);
      v11 = *(a1 + 72);
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
  }

LABEL_14:
  while (v14 != v11)
  {
    *v14 = v7;
    v20 = (v14 + 1);
    AMCP::DAL::Audio_Samples_Data::allocate(v20, v7);
    v14 = (v20 + 24);
  }

  return a1;
}

void sub_1DE474770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  *(v35 - 160) = v34;
  std::vector<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>,caulk::rt_allocator<std::pair<unsigned long,AMCP::DAL::Audio_Samples_Data>>>::__destroy_vector::operator()[abi:ne200100]((v35 - 160));
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Audio_Samples_Data::Audio_Samples_Data<gsl::details::span_iterator<gsl::span<std::byte,-1l>,false>>(uint64_t result, uint64_t a2, void *a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 1;
  v3 = *a2;
  if (!*a2 || (v4 = *(a2 + 8), v4 < 0) || *v3 <= v4 || (*result = v3[1] + v4, *a3 != v3))
  {
    std::terminate();
  }

  *(result + 8) = a3[1] - v4;
  return result;
}

uint64_t AllowHALClientsInThisProcess(void)
{
  {
    AllowHALClientsInThisProcess(void)::global = AllowHALClientsInThisProcess(void)::$_0::operator()();
  }

  if (AllowHALClientsInThisProcess(void)::global)
  {
    v0 = 1;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Use of the CoreAudio HAL in this process is being denied", v2, 2u);
    v0 = AllowHALClientsInThisProcess(void)::global;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

BOOL AllowHALClientsInThisProcess(void)::$_0::operator()()
{
  v10 = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle)
  {
    return 1;
  }

  Identifier = CFBundleGetIdentifier(MainBundle);
  if (!Identifier)
  {
    return 1;
  }

  v2 = Identifier;
  v3 = CFEqual(Identifier, @"com.apple.mediaserverd");
  v4 = v3 == 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v2;
    v8 = 1024;
    v9 = v3 == 0;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "HAL query bundle %@ -> allowed %d", &v6, 0x12u);
  }

  return v4;
}

void ContextHostedModifiers::requestable_modifiers(void *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>>::__init_with_size[abi:ne200100]<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*,std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*>(a1, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 4);
}

void std::vector<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>>::__init_with_size[abi:ne200100]<std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*,std::shared_ptr<AHAL_DSP::IHostModifiers::IModifier>*>(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void ContextHostedModifiers::~ContextHostedModifiers(ContextHostedModifiers *this)
{
  *this = &unk_1F5971970;
  v1 = (this + 8);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5971970;
  v1 = (this + 8);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void virtual thunk toHALS_DSPHostIntegrationPoint_IOContext::~HALS_DSPHostIntegrationPoint_IOContext(HALS_DSPHostIntegrationPoint_IOContext *this)
{
  HALS_DSPHostIntegrationPoint_IOContext::~HALS_DSPHostIntegrationPoint_IOContext((this + *(*this - 24)));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_DSPHostIntegrationPoint_IOContext::~HALS_DSPHostIntegrationPoint_IOContext((this + *(*this - 24)));
}

void HALS_DSPHostIntegrationPoint_IOContext::~HALS_DSPHostIntegrationPoint_IOContext(HALS_DSPHostIntegrationPoint_IOContext *this)
{
  HALS_DSPHostIntegrationPoint_IOContext::~HALS_DSPHostIntegrationPoint_IOContext(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59719A8;
  *(this + 29) = &unk_1F5971A30;
  v2 = *(this + 17);
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 26);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v11 = (this + 176);
  std::vector<std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v6 = *(this + 21);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 17);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 15);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v10 = *(this + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void std::vector<std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 2);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t HALS_DSPHostIntegrationPoint_IOContext::modifiers@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 208);
  *a2 = *(this + 200);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void HALS_DSPHostIntegrationPoint_IOContext::downstream_list(HALS_DSPHostIntegrationPoint_IOContext *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 22);
  for (i = *(this + 23); v2 != i; v2 += 24)
  {
    v5 = *(v2 + 8);
    *&v6 = *v2;
    *(&v6 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*(v2 + 16))
    {
      std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](a2, &v6);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1DE474F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_DSPHostIntegrationPoint_IOContext::upstream_list(HALS_DSPHostIntegrationPoint_IOContext *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 22);
  for (i = *(this + 23); v2 != i; v2 += 24)
  {
    v5 = *(v2 + 8);
    *&v6 = *v2;
    *(&v6 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(v2 + 16);
    std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](a2, &v6);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1DE474FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t HALS_DSPHostIntegrationPoint_IOContext::output_reference_stream@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 160);
  if (v2)
  {
    v3 = *(this + 168);
    *a2 = v2;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

uint64_t HALS_DSPHostIntegrationPoint_IOContext::on_dsp_event_REALTIME(uint64_t a1)
{
  result = *(a1 + 128);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void HALS_DSPHostIntegrationPoint_IOContext::on_dsp_event(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = a2[1];
    v4 = *a2;
    v5 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v2 + 16))(v2, &v4);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1DE475110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPHostIntegrationPoint_IOContext::CachedDetails::~CachedDetails(void **this)
{
  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<HALS_DSPHostModifiers_StreamProxy>::__on_zero_shared(uint64_t a1)
{
  HALS_DSPHostModifiers_StreamProxy::release((a1 + 24));
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__shared_ptr_emplace<HALS_DSPHostModifiers_StreamProxy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5971BA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_DSPHostModifier_HostPrivateRefStreamDeviceUID>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5971B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<ContextHostedModifiers>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5971B00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_DSPHostEventListener_Stream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5971BF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_DSPHostIntegrationPoint_IOContext::add_stream(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v5 = a2;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  *(&v5 + 1) = a3;
  v7 = a1[23];
  v6 = a1[24];
  if (v7 >= v6)
  {
    v9 = a1[22];
    v10 = v7 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = 24 * v11;
    *v15 = v5;
    *(v15 + 16) = a4;
    v8 = 24 * v11 + 24;
    v16 = (24 * v11 - v10);
    memcpy(v16, v9, v10);
    a1[22] = v16;
    a1[23] = v8;
    a1[24] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v5;
    *(v7 + 16) = a4;
    v8 = v7 + 24;
  }

  a1[23] = v8;
}

void sub_1DE47557C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPHostIntegrationPoint_IOContext::set_reference_stream_proxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 168);
  *(a1 + 160) = a2;
  *(a1 + 168) = a3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v3 = *(a1 + 160);
  }

  if (v3)
  {
    v6 = *(v3 + 144);
    if (v6)
    {
      HALS_DSPHostPrivateReferenceStreamProxy::LocalDefaultOuputDeviceChangedListener::decouple(v6);
      v7 = *(v3 + 152);
      *(v3 + 144) = 0;
      *(v3 + 152) = 0;
      if (v7)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }
}

void std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,HALS_DSPHostPerClientConfiguration::PerClientProperties>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,HALS_DSPHostPerClientConfiguration::PerClientProperties>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HALS_DSPHostPerClientConfiguration::PerClientProperties>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void HALS_DSPHostPerClientConfiguration::clone_configuration_from(HALS_DSPHostPerClientConfiguration *this, const HALS_DSPHostPerClientConfiguration *a2, unsigned int a3)
{
  HALS_DSPHostPerClientConfiguration::configuration_for (&v16, a2, a3);
  std::mutex::lock((this + 32));
  v5 = *(this + 13);
  if (v5)
  {
    v6 = this + 104;
    do
    {
      v7 = *(v5 + 8);
      v8 = v7 >= a3;
      v9 = v7 < a3;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *&v5[8 * v9];
    }

    while (v5);
    if (v6 != this + 104 && *(v6 + 8) <= a3 && v16)
    {
      (*(*v16 + 64))(&lpsrc);
      {
        *&v15 = v10;
        *(&v15 + 1) = v14;
        p_lpsrc = &lpsrc;
      }

      else
      {
        p_lpsrc = &v15;
      }

      *p_lpsrc = 0;
      p_lpsrc[1] = 0;
      v12 = *(v6 + 6);
      *(v6 + 40) = v15;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }
  }

  std::mutex::unlock((this + 32));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1DE4758EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  std::mutex::unlock((v14 + 32));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void HALS_DSPHostPerClientConfiguration::configuration_for (HALS_DSPHostPerClientConfiguration *this, uint64_t a2, unsigned int a3)
{
  *this = 0;
  *(this + 1) = 0;
  std::mutex::lock((a2 + 32));
  v6 = *(a2 + 104);
  if (v6)
  {
    v7 = a2 + 104;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= a3;
      v10 = v8 < a3;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != a2 + 104 && *(v7 + 32) <= a3)
    {
      v12 = *(v7 + 40);
      v11 = *(v7 + 48);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *this = v12;
      *(this + 1) = v11;
    }
  }

  std::mutex::unlock((a2 + 32));
}

void HALS_DSPHostPerClientConfiguration::set_offloads_requested(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  HALS_DSPHostPerClientConfiguration::configuration_for (&v10, a1, a2);
  v6 = v10;
  if (v10)
  {
    v9 = *a3;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v8 = 0;
    if (*(a4 + 24) == 1)
    {
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
      }

      else
      {
        __p = *a4;
      }

      v8 = 1;
    }

    (*(*v6 + 72))(v6, 1, &v9, &__p);
    if (v8 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1DE475AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPHostPerClientConfiguration::serialize_to_description(HALS_DSPHostPerClientConfiguration *this, unsigned int a2, __CFDictionary *a3)
{
  v8 = a3;
  HALS_DSPHostPerClientConfiguration::configuration_for (&v4, this, a2);
  if (v4)
  {
    v6 = v4 + 8;
    v7 = v5;
    v3 = &v4;
  }

  else
  {
    v3 = &v6;
  }

  *v3 = 0;
  v3[1] = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v6)
  {
    v4 = &unk_1F59744C8;
    v5 = &v8;
    (*(*v6 + 16))(v6, &v4);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE475BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE475C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    v9 = __cxa_begin_catch(exception_object);
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v11;
      AMCP::Log::Scope::get_os_log_t(*v11);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v13 = *v11;
      AMCP::Log::Scope::get_os_log_t(*v11);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v15 = 0;
      v16 = 47;
      do
      {
        v17 = &aLibraryCachesC_104[v14];
        if (v16 == 47)
        {
          v15 = &aLibraryCachesC_104[v14];
        }

        v16 = v17[1];
        if (!v17[1])
        {
          break;
        }
      }

      while (v14++ < 0xFFF);
      if (v15)
      {
        v19 = v15 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Client/Boilerplate/HALClientInterceptor/MTDInterception/MAD_XPC/MicActivityDXPCConnection.mm";
      }

      LODWORD(a9) = 136315394;
      *(&a9 + 4) = v19;
      WORD6(a9) = 1024;
      *(&a9 + 14) = 96;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Something bad occurred when making an stopListeningForMicrophoneActivity XPC call", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE475C4CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE475E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    v9 = __cxa_begin_catch(exception_object);
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v11;
      AMCP::Log::Scope::get_os_log_t(*v11);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v13 = *v11;
      AMCP::Log::Scope::get_os_log_t(*v11);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v15 = 0;
      v16 = 47;
      do
      {
        v17 = &aLibraryCachesC_104[v14];
        if (v16 == 47)
        {
          v15 = &aLibraryCachesC_104[v14];
        }

        v16 = v17[1];
        if (!v17[1])
        {
          break;
        }
      }

      while (v14++ < 0xFFF);
      if (v15)
      {
        v19 = v15 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Client/Boilerplate/HALClientInterceptor/MTDInterception/MAD_XPC/MicActivityDXPCConnection.mm";
      }

      LODWORD(a9) = 136315394;
      *(&a9 + 4) = v19;
      WORD6(a9) = 1024;
      *(&a9 + 14) = 84;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Something bad occurred when making an listenForMicrophoneActivity XPC call", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE475E18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE476010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    v9 = __cxa_begin_catch(exception_object);
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v11;
      AMCP::Log::Scope::get_os_log_t(*v11);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v13 = *v11;
      AMCP::Log::Scope::get_os_log_t(*v11);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v15 = 0;
      v16 = 47;
      do
      {
        v17 = &aLibraryCachesC_104[v14];
        if (v16 == 47)
        {
          v15 = &aLibraryCachesC_104[v14];
        }

        v16 = v17[1];
        if (!v17[1])
        {
          break;
        }
      }

      while (v14++ < 0xFFF);
      if (v15)
      {
        v19 = v15 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Client/Boilerplate/HALClientInterceptor/MTDInterception/MAD_XPC/MicActivityDXPCConnection.mm";
      }

      LODWORD(a9) = 136315394;
      *(&a9 + 4) = v19;
      WORD6(a9) = 1024;
      *(&a9 + 14) = 72;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Something bad occurred when making an disableMicrophoneActivityDetection XPC call", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE475FDCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4761CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    v9 = __cxa_begin_catch(exception_object);
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v11;
      AMCP::Log::Scope::get_os_log_t(*v11);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v13 = *v11;
      AMCP::Log::Scope::get_os_log_t(*v11);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v15 = 0;
      v16 = 47;
      do
      {
        v17 = &aLibraryCachesC_104[v14];
        if (v16 == 47)
        {
          v15 = &aLibraryCachesC_104[v14];
        }

        v16 = v17[1];
        if (!v17[1])
        {
          break;
        }
      }

      while (v14++ < 0xFFF);
      if (v15)
      {
        v19 = v15 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Client/Boilerplate/HALClientInterceptor/MTDInterception/MAD_XPC/MicActivityDXPCConnection.mm";
      }

      LODWORD(a9) = 136315394;
      *(&a9 + 4) = v19;
      WORD6(a9) = 1024;
      *(&a9 + 14) = 60;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Something bad occurred when making an enableMicrophoneActivityDetection XPC call", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE476198);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE476434(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {

    v13 = __cxa_begin_catch(a1);
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v13);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v15;
      AMCP::Log::Scope::get_os_log_t(*v15);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v17 = *v15;
      AMCP::Log::Scope::get_os_log_t(*v15);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v19 = 0;
      v20 = 47;
      do
      {
        v21 = &aLibraryCachesC_104[v18];
        if (v20 == 47)
        {
          v19 = &aLibraryCachesC_104[v18];
        }

        v20 = v21[1];
        if (!v21[1])
        {
          break;
        }
      }

      while (v18++ < 0xFFF);
      if (v19)
      {
        v23 = v19 + 1;
      }

      else
      {
        v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Client/Boilerplate/HALClientInterceptor/MTDInterception/MAD_XPC/MicActivityDXPCConnection.mm";
      }

      LODWORD(buf) = 136315394;
      *(&buf + 4) = v23;
      WORD6(buf) = 1024;
      *(&buf + 14) = 42;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Error occurred when attempting to connect with MAD.", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE476400);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOPerformer::update_io_parameters(uint64_t a1, unsigned int *a2, uint64_t a3, int a4, char a5)
{
  v10 = (*(*a1 + 16))(a1);
  v11 = (*(*a1 + 24))(a1);
  v12 = (*(*a2 + 160))(a2);
  v13 = (*(*a2 + 168))(a2);
  if ((*(*a2 + 136))(a2) && ((*(*a1 + 32))(a1) & 1) == 0)
  {
    v14 = (*(*a2 + 144))(a2) ^ 1;
  }

  else
  {
    v14 = 0;
  }

  v34 = v11;
  v35 = v12;
  v36 = v13;
  if (v14)
  {
    v35 = v10;
    v36 = v11;
    v15 = a3;
  }

  else
  {
    v15 = (v11 / v13 * a3);
  }

  (*(*a2 + 264))(a2, v15);
  v16 = (*(*a1 + 40))(a1);
  v17 = a2 + 2;
  (*(*a2 + 240))(a2, v16);
  v18 = 0;
  v19 = 0;
  v20 = a4;
  v21 = 1;
  do
  {
    v22 = v21;
    if (!(*(*a2 + 152))(a2, v19))
    {
      (*(*a2 + 280))(a2, v19, a2[190]);
    }

    v23 = *a2;
    if (a5)
    {
      (*(v23 + 248))(a2, v19, 0);
    }

    else
    {
      v24 = (*(v23 + 152))(a2, v19);
      (*(*a2 + 256))(a2, v19, (v34 / v36 * v20) + v24);
    }

    (*(*a1 + 72))(a1, v10);
    if ((*(*a2 + 176))(a2, v19))
    {
      v25 = 0;
      do
      {
        v26 = (*(*a2 + 184))(a2, v19, v25);
        if ((*(*v26 + 24))(v26) && (*(*v26 + 40))(v26))
        {
          (*(*v26 + 32))(v26, v10, v35);
        }

        v25 = (v25 + 1);
      }

      while (v25 < (*(*a2 + 176))(a2, v19));
    }

    v27 = (*(*a1 + 56))(a1, v18 & 1) != 0;
    (*(*a2 + 272))(a2, a3, v27, v19, v10 / v35);
    v28 = 0;
    v29 = &v17[10 * (v18 & 1)];
    atomic_compare_exchange_strong(v29, &v28, 0x80000000);
    if (!v28)
    {
      if (*(v29 + 32) == 1)
      {
        if ((*(*a2 + 176))(a2, v19))
        {
          v30 = 0;
          do
          {
            v31 = (*(*a2 + 184))(a2, v19, v30);
            if (v31)
            {
              HALS_IOProcessor::Volume_RampTo(v31);
            }

            v30 = (v30 + 1);
          }

          while (v30 < (*(*a2 + 176))(a2, v19));
        }

        *(v29 + 32) = 0;
      }

      caulk::concurrent::shared_spin_lock::unlock(&v17[10 * (v18 & 1)]);
    }

    v21 = 0;
    v18 = 1;
    v19 = 1;
  }

  while ((v22 & 1) != 0);
  v32 = (*(*a1 + 64))(a1, 0);
  return (*(*a2 + 288))(a2, v32);
}

void sub_1DE477108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::unique_lock<caulk::concurrent::shared_spin_lock>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOPerformer::process_output_stream_data(IOContextView &,unsigned int,HALS_IOStreamInfo &,unsigned int)::$_0,std::tuple<char const*,int,unsigned int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOPerformer::process_output_stream_data clipped amount processed from:%u to:%u", &v11, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOPerformer::process_output_stream_data(IOContextView &,unsigned int,HALS_IOStreamInfo &,unsigned int)::$_0,std::tuple<char const*,int,unsigned int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOPerformer::can_read_from_stream(void *a1, uint64_t a2)
{
  if (!*(a2 + 108) || ((v3 = *(a2 + 112), *(a2 + 120) != v3) ? (v4 = v3 == 0) : (v4 = 1), v4))
  {
    v3 = (a2 + 456);
  }

  v5 = *v3;
  if (!(*(**v3 + 16))(*v3) || ((*(*v5 + 208))(v5) & 1) == 0 && !(*(*v5 + 216))(v5))
  {
    return 0;
  }

  v6 = (*(*v5 + 24))(v5);
  v7 = *a1;
  if (v6)
  {
    v8 = *(v7 + 96);
    v9 = a1;
  }

  else
  {
    v8 = *(v7 + 104);
    v9 = a1;
  }

  return v8(v9);
}

OSStatus AudioHardwareAddRunLoopSource(CFRunLoopSourceRef inRunLoopSource)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (!inRunLoopSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Framework-ios-imp.cpp";
      v26 = 1024;
      v27 = 2572;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareAddRunLoopSource: can't add a NULL run loop source", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v22[0] = 0;
  v22[1] = 0;
  HALS_System::GetInstance(&v23, 0, v22);
  v2 = v23;
  if (!v23)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Framework-ios-imp.cpp";
      v26 = 1024;
      v27 = 2576;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareAddRunLoopSource: no system object", buf, 0x12u);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    *v21 = off_1F5991DD8;
    v21[2] = 1852797029;
  }

  *buf = v23 + 1928;
  *&buf[8] = HALB_Mutex::Lock((v23 + 1928));
  if (!*(v2 + 1920))
  {
    HALS_System::StartRunLoop(v2);
  }

  v3 = *(v2 + 2216);
  v4 = *(v2 + 2224);
  if (v3 != v4)
  {
    while (*v3 != inRunLoopSource)
    {
      if (++v3 == v4)
      {
        goto LABEL_12;
      }
    }
  }

  if (v3 == v4)
  {
LABEL_12:
    CFRetain(inRunLoopSource);
    v6 = *(v2 + 2224);
    v7 = *(v2 + 2232);
    if (v6 >= v7)
    {
      v9 = *(v2 + 2216);
      v10 = v6 - v9;
      v11 = (v6 - v9) >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v7 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (!(v14 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = (v6 - v9) >> 3;
      v16 = (8 * v11);
      v17 = (8 * v11 - 8 * v15);
      *v16 = inRunLoopSource;
      v8 = v16 + 1;
      memcpy(v17, v9, v10);
      *(v2 + 2216) = v17;
      *(v2 + 2224) = v8;
      *(v2 + 2232) = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v6 = inRunLoopSource;
      v8 = v6 + 8;
    }

    *(v2 + 2224) = v8;
    v18 = *(v2 + 1920);
    if (v18)
    {
      CFRunLoopAddSource(v18, inRunLoopSource, *MEMORY[0x1E695E8C8]);
      CFRunLoopAddSource(*(v2 + 1920), inRunLoopSource, @"com.apple.audio.CoreAudio");
    }
  }

  HALB_Guard::Locker::~Locker(buf);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  return 0;
}

void sub_1DE47786C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE4776BCLL);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioHardwareRemoveRunLoopSource(CFRunLoopSourceRef inRunLoopSource)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (!inRunLoopSource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Framework-ios-imp.cpp";
      v15 = 1024;
      v16 = 2618;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareRemoveRunLoopSource: can't remove a NULL run loop source", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v11[0] = 0;
  v11[1] = 0;
  HALS_System::GetInstance(&v12, 0, v11);
  v2 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Framework-ios-imp.cpp";
      v15 = 1024;
      v16 = 2622;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareRemoveRunLoopSource: no system object", buf, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = off_1F5991DD8;
    v10[2] = 1852797029;
  }

  *buf = v12 + 1928;
  *&buf[8] = HALB_Mutex::Lock((v12 + 1928));
  v3 = *(v2 + 2216);
  v4 = *(v2 + 2224);
  if (v3 != v4)
  {
    while (*v3 != inRunLoopSource)
    {
      if (++v3 == v4)
      {
        v3 = *(v2 + 2224);
        break;
      }
    }
  }

  if (v4 != v3)
  {
    v5 = v4 - (v3 + 1);
    if (v4 != v3 + 1)
    {
      memmove(v3, v3 + 1, v4 - (v3 + 1));
    }

    *(v2 + 2224) = v3 + v5;
    CFRelease(inRunLoopSource);
    v6 = *(v2 + 1920);
    if (v6)
    {
      CFRunLoopRemoveSource(v6, inRunLoopSource, *MEMORY[0x1E695E8C8]);
      CFRunLoopRemoveSource(*(v2 + 1920), inRunLoopSource, @"com.apple.audio.CoreAudio");
    }
  }

  HALB_Guard::Locker::~Locker(buf);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return 0;
}

void sub_1DE477B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE4779FCLL);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioHardwareGetPropertyInfo(AudioHardwarePropertyID inPropertyID, UInt32 *outSize, Boolean *outWritable)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(v8, 0);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  inAddress.mSelector = inPropertyID;
  *&inAddress.mScope = 1735159650;
  if (AudioObjectHasProperty(1u, &inAddress))
  {
    if (outSize)
    {
      result = AudioObjectGetPropertyDataSize(1u, &inAddress, 0, 0, outSize);
      if (!outWritable)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = 0;
      if (!outWritable)
      {
        goto LABEL_13;
      }
    }

    if (!result)
    {
      result = AudioObjectIsPropertySettable(1u, &inAddress, outWritable);
    }

LABEL_13:
    if (!result)
    {
      return result;
    }

    goto LABEL_14;
  }

  result = 2003332927;
LABEL_14:
  if (outSize)
  {
    *outSize = 0;
  }

  if (outWritable)
  {
    *outWritable = 0;
  }

  return result;
}

void sub_1DE477CFC(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  else
  {
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE477CE8);
}

OSStatus AudioHardwareGetProperty(AudioHardwarePropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(v8, 0);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  inAddress.mSelector = inPropertyID;
  *&inAddress.mScope = 1735159650;
  return AudioObjectGetPropertyData(1u, &inAddress, 0, 0, ioPropertyDataSize, outPropertyData);
}

void sub_1DE477DDC(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (v2)
    {
      if (v3)
      {
        bzero(v3, *v2);
      }

      *v2 = 0;
    }
  }

  else if (v2)
  {
    if (v3)
    {
      bzero(v3, *v2);
    }

    *v2 = 0;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE477DC8);
}

OSStatus AudioHardwareSetProperty(AudioHardwarePropertyID inPropertyID, UInt32 inPropertyDataSize, const void *inPropertyData)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(v9, 0);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  inAddress.mSelector = inPropertyID;
  *&inAddress.mScope = 1735159650;
  return AudioObjectSetPropertyData(1u, &inAddress, 0, 0, inPropertyDataSize, inPropertyData);
}

void sub_1DE477ED4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE477EBCLL);
}

OSStatus AudioHardwareAddPropertyListener(AudioHardwarePropertyID inPropertyID, AudioHardwarePropertyListenerProc inProc, void *inClientData)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(v21, 0);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (!inProc)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "HALS_Framework-ios-imp.cpp";
      v25 = 1024;
      v26 = 2879;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareAddPropertyListener: can't add a NULL listener proc", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v18[0] = 0;
  v18[1] = 0;
  HALS_System::GetInstance(&v19, 0, v18);
  if (!v19)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "HALS_Framework-ios-imp.cpp";
      v25 = 1024;
      v26 = 2883;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareAddPropertyListener: no system object", buf, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 1852797029;
  }

  v16 = inPropertyID;
  v17 = 1735159650;
  v10 = 4;
  v12 = 0;
  v11 = 0;
  v13 = 0;
  v14 = inProc;
  v15 = inClientData;
  buf[0] = 0;
  v27 = 0;
  HALS_NotificationManager::AddPropertyListener(&v10, 1, &v16, buf);
  HALS_Listener::~HALS_Listener(&v10);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  return 0;
}

void sub_1DE478178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a2)
  {
    HALS_Listener::~HALS_Listener(&a10);
    if (a20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a20);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE477FDCLL);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioHardwareRemovePropertyListener(AudioHardwarePropertyID inPropertyID, AudioHardwarePropertyListenerProc inProc)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(v15, 0);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!inProc)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "HALS_Framework-ios-imp.cpp";
      LOWORD(v19) = 1024;
      *(&v19 + 2) = 2927;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareRemovePropertyListener: can't remove a NULL listener proc", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v12[0] = 0;
  v12[1] = 0;
  HALS_System::GetInstance(&v13, 0, v12);
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "HALS_Framework-ios-imp.cpp";
      LOWORD(v19) = 1024;
      *(&v19 + 2) = 2931;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioHardwareRemovePropertyListener: no system object", buf, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 1852797029;
  }

  v10 = inPropertyID;
  v11 = 1735159650;
  *buf = 4;
  v19 = 0;
  v18 = 0;
  v20 = 0;
  v21 = inProc;
  v22 = 0;
  HALS_NotificationManager::RemovePropertyListener(buf, 1, &v10, v4, v5);
  HALS_Listener::~HALS_Listener(buf);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return 0;
}

void sub_1DE478460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a2)
  {
    HALS_Listener::~HALS_Listener(va);
    if (a14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE4782C8);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioDeviceAddIOProc(AudioDeviceID inDevice, AudioDeviceIOProc inProc, void *inClientData)
{
  v5 = *&inDevice;
  v22 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    if (!inProc)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = 136315394;
        v19 = "HALS_Framework-ios-imp.cpp";
        v20 = 1024;
        v21 = 2971;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceAddIOProc: can't add a NULL IOProc", &v18, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v6 = HALS_ObjectMap::CopyObjectByObjectID(v5);
    v8 = v6;
    if (v6)
    {
      v10 = *(v6 + 5);
      v9 = *(v6 + 6);
      if (v10 <= 1701078389)
      {
        if (v10 == 1633773415)
        {
LABEL_12:
          (*(*v6 + 872))(v6, inProc, inClientData);
          HALS_ObjectMap::ReleaseObject(v8, v13);
          return 0;
        }

        v11 = 1633969526;
      }

      else
      {
        if (v10 == 1701078390 || v10 == 1701733488)
        {
          goto LABEL_12;
        }

        v11 = 1919182198;
      }

      if (v10 == v11)
      {
        goto LABEL_12;
      }

      if (v10 != v9)
      {
        if (v9 <= 1701078389)
        {
          if (v9 == 1633773415)
          {
            goto LABEL_12;
          }

          v15 = 1633969526;
        }

        else
        {
          if (v9 == 1701078390 || v9 == 1701733488)
          {
            goto LABEL_12;
          }

          v15 = 1919182198;
        }

        if (v9 == v15)
        {
          goto LABEL_12;
        }
      }

      HALS_ObjectMap::ReleaseObject(v6, v7);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "HALS_Framework-ios-imp.cpp";
      v20 = 1024;
      v21 = 2975;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceAddIOProc: no device with given ID", &v18, 0x12u);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    *v16 = off_1F5991DD8;
    v16[2] = 560227702;
  }

  return 560033144;
}

void sub_1DE4787F4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE47880C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE4785E8);
  }

  JUMPOUT(0x1DE4787FCLL);
}

OSStatus AudioDeviceRemoveIOProc(AudioDeviceID inDevice, AudioDeviceIOProc inProc)
{
  v3 = *&inDevice;
  v20 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    if (!inProc)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "HALS_Framework-ios-imp.cpp";
        v18 = 1024;
        v19 = 3014;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceRemoveIOProc: can't remove a NULL IOProc", &v16, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v4 = HALS_ObjectMap::CopyObjectByObjectID(v3);
    v6 = v4;
    if (v4)
    {
      v8 = *(v4 + 5);
      v7 = *(v4 + 6);
      if (v8 <= 1701078389)
      {
        if (v8 == 1633773415)
        {
LABEL_12:
          (*(*v4 + 880))(v4, inProc);
          HALS_ObjectMap::ReleaseObject(v6, v11);
          return 0;
        }

        v9 = 1633969526;
      }

      else
      {
        if (v8 == 1701078390 || v8 == 1701733488)
        {
          goto LABEL_12;
        }

        v9 = 1919182198;
      }

      if (v8 == v9)
      {
        goto LABEL_12;
      }

      if (v8 != v7)
      {
        if (v7 <= 1701078389)
        {
          if (v7 == 1633773415)
          {
            goto LABEL_12;
          }

          v13 = 1633969526;
        }

        else
        {
          if (v7 == 1701078390 || v7 == 1701733488)
          {
            goto LABEL_12;
          }

          v13 = 1919182198;
        }

        if (v7 == v13)
        {
          goto LABEL_12;
        }
      }

      HALS_ObjectMap::ReleaseObject(v4, v5);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HALS_Framework-ios-imp.cpp";
      v18 = 1024;
      v19 = 3018;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceAddIOProc: no device with given ID", &v16, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = off_1F5991DD8;
    v14[2] = 560227702;
  }

  return 560033144;
}

void sub_1DE478B78(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE478B90(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE47896CLL);
  }

  JUMPOUT(0x1DE478B80);
}

OSStatus AudioDeviceGetPropertyInfo(AudioDeviceID inDevice, UInt32 inChannel, Boolean isInput, AudioDevicePropertyID inPropertyID, UInt32 *outSize, Boolean *outWritable)
{
  v9 = isInput;
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  if (v9)
  {
    v12 = 1768845428;
  }

  else
  {
    v12 = 1869968496;
  }

  inAddress.mSelector = inPropertyID;
  inAddress.mScope = v12;
  inAddress.mElement = inChannel;
  v16.mSelector = inPropertyID;
  v16.mScope = 1735159650;
  v16.mElement = inChannel;
  if (AudioObjectHasProperty(inDevice, &inAddress))
  {
    if (outSize)
    {
      result = AudioObjectGetPropertyDataSize(inDevice, &inAddress, 0, 0, outSize);
      if (!outWritable)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!outWritable)
      {
        return result;
      }
    }

    if (!result)
    {
      p_inAddress = &inAddress;
      return AudioObjectIsPropertySettable(inDevice, p_inAddress, outWritable);
    }
  }

  else if (HALB_Info::IsReallyGlobalDeviceProperty(inAddress.mSelector, v13) && AudioObjectHasProperty(inDevice, &v16))
  {
    if (outSize)
    {
      result = AudioObjectGetPropertyDataSize(inDevice, &v16, 0, 0, outSize);
      if (!outWritable)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!outWritable)
      {
        return result;
      }
    }

    if (!result)
    {
      p_inAddress = &v16;
      return AudioObjectIsPropertySettable(inDevice, p_inAddress, outWritable);
    }
  }

  else
  {
    if (outSize)
    {
      *outSize = 0;
    }

    result = 2003332927;
    if (outWritable)
    {
      *outWritable = 0;
    }
  }

  return result;
}

void sub_1DE478D54(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  else
  {
    if (v3)
    {
      *v3 = 0;
    }

    if (v2)
    {
      *v2 = 0;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE478D28);
}