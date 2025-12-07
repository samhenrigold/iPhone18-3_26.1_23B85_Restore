void sub_1DE655204(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 120) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<HALS_IODSPInfo::EngineStreamInfo>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    std::allocator<HALS_IODSPInfo::EngineStreamInfo>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

AMCP::Log::AMCP_Scope_Registry *HALS_DSPHostIntegrationPoint_IOContextHelper::populate_ec_reference_proxy(void)::ECReferenceLog::~ECReferenceLog(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 0;
    v8 = 0;
    v9 = 47;
    do
    {
      v10 = &aLibraryCachesC_181[v7];
      if (v9 == 47)
      {
        v8 = &aLibraryCachesC_181[v7];
      }

      v9 = v10[1];
      if (!v10[1])
      {
        break;
      }
    }

    while (v7++ < 0xFFF);
    if (v8)
    {
      v12 = v8 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostIntegrationPoint_IOContextHelper.cpp";
    }

    v13 = a1;
    if (*(a1 + 23) < 0)
    {
      v13 = *a1;
    }

    v14 = 136315650;
    v15 = v12;
    v16 = 1024;
    v17 = 297;
    v18 = 2080;
    v19 = v13;
    _os_log_debug_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] %s", &v14, 0x1Cu);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1DE655510(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<HALS_DSPHostPrivateReferenceStreamProxy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_DSPHostAudioStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

std::thread *std::unique_ptr<std::thread>::reset[abi:ne200100](std::thread **a1, std::thread *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::thread::~thread(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core9IO_ThreadC1ENSt3__110shared_ptrINS_5Graph14Manifest_QueueEEENS_11Power_StateEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59862F0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F59862F0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::IO_Thread(std::shared_ptr<AMCP::Graph::Manifest_Queue>,AMCP::Power_State)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F59862F0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Thread_Control_State>::__on_zero_shared(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = pthread_cond_destroy((a1 + 256));
  v3 = v2;
  AMCP::Utility::Kernel_Error_Category::get(v2);
  if (v3)
  {
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

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "Thread_Control_State.cpp";
      v22 = 1024;
      v23 = 36;
      v24 = 2080;
      v25 = "kernel_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set the destroy the condition variable", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](v17, v3, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
    boost::enable_error_info<std::system_error>(v18, v17);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, v18);
    v26 = "AMCP::IO_Core::Thread_Control_State::~Thread_Control_State()";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
    v28 = 36;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = pthread_mutex_destroy((a1 + 304));
  v6 = v5;
  AMCP::Utility::Kernel_Error_Category::get(v5);
  if (v6)
  {
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

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "Thread_Control_State.cpp";
      v22 = 1024;
      v23 = 39;
      v24 = 2080;
      v25 = "kernel_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set the destroy the mutex", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](v17, v6, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
    boost::enable_error_info<std::system_error>(v18, v17);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, v18);
    v26 = "AMCP::IO_Core::Thread_Control_State::~Thread_Control_State()";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
    v28 = 39;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }
}

void sub_1DE655C30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Thread_Control_State>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59862A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1720);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_1>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x1E12C1730](v3, 0x1020C40AEE4956FLL);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_1>>(uint64_t *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v25 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  v4 = pthread_setspecific(v2->__key_, v3);
  v5 = *v25[1];
  v6 = *(v25[1] + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *v25[2];
  v8 = *(v25[2] + 8);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v26[0] = v5;
  v26[1] = v7;
  v9 = *(v25 + 26);
  v27 = *(v25 + 12);
  v28 = v9;
  if (!v5)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315650;
      v41 = "IO_Thread_Realtime.h";
      v42 = 1024;
      v43 = 40;
      v44 = 2080;
      v45 = "not ((m_manifest_queue) != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v32, "", v24);
    std::logic_error::logic_error(&v29, &v32);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v34, &v29);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    v34.__vftable = &unk_1F5991430;
    v35 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v34);
    v46 = "AMCP::IO_Core::IO_Thread_Realtime::IO_Thread_Realtime(std::shared_ptr<Graph::Manifest_Queue>, Thread_Control, const IOThread_Realtime_Power_Settings &)";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread_Realtime.h";
    LODWORD(v48) = 40;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  if (AMCP::IO_Core::IO_Thread_Realtime::run(v26) == 1)
  {
    v10 = *v25[2];
    *buf = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v10);
    LOWORD(v41) = 0;
    HIDWORD(v41) = 4;
    caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v10);
    LOBYTE(v42) = v11 & 1;
    caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::store(v10, buf);
    v12 = pthread_cond_broadcast((v10 + 192));
    v13 = v12;
    AMCP::Utility::Kernel_Error_Category::get(v12);
    if (v13)
    {
      v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v20 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v14);
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
        v41 = "Thread_Control_State.cpp";
        v42 = 1024;
        v43 = 123;
        v44 = 2080;
        v45 = "kernel_error.operator BOOL()";
        _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set the signaling the condition variable", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](&v33, v13, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(&v34, &v33);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v34);
      v48 = "void AMCP::IO_Core::Thread_Control_State::devices_failed_to_start()";
      v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      v50 = 123;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
    }
  }

  AMCP::IO_Core::Device_Node_Factory::~Device_Node_Factory(v26);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_1>>::~unique_ptr[abi:ne200100](&v25);
  return 0;
}

uint64_t std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core9IO_Thread5startENS0_18Play_State_Manager12Play_RequestEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  *buf = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v1);
  LOWORD(v15) = 1;
  HIDWORD(v15) = 4;
  caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v1);
  LOBYTE(v16) = v2 & 1;
  caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::store(v1, buf);
  v3 = pthread_cond_broadcast((v1 + 192));
  v4 = v3;
  AMCP::Utility::Kernel_Error_Category::get(v3);
  if (v4)
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
      *buf = 136315650;
      v15 = "Thread_Control_State.cpp";
      v16 = 1024;
      v17 = 112;
      v18 = 2080;
      v19 = "kernel_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set the signaling the condition variable", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v13);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](v11, v4, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
    boost::enable_error_info<std::system_error>(v12, v11);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, v12);
    v20 = "void AMCP::IO_Core::Thread_Control_State::devices_have_started()";
    v21 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
    v22 = 112;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
  }
}

void sub_1DE6565B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, std::runtime_error a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(v24 - 128);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a20);
  if (a11)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v24 - 129));
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5986380;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5986380;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IO_Thread::start(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5986380;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

unint64_t AMCP::IO_Core::IO_Thread::wait_for_start(AMCP::IO_Core::IO_Thread *this)
{
  if ((caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this) & 0x100000000) == 0)
  {
    v2 = mach_absolute_time();
    AMCP::IO_Core::Thread_Control_State::sleep_until_time(this, v2 + 360000000);
  }

  return (caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this) >> 32) & 1;
}

void AMCP::IO_Core::IO_Thread::get_state_snapshot(AMCP::IO_Core::Play_State_Manager *a1, uint64_t a2, uint64_t a3)
{
  AMCP::IO_Core::Play_State_Manager::get_state_snapshot(a1, (a2 + 16));
  if ((a3 & 0x100000000) != 0)
  {
    v6 = *(a1 + 1);
    v5 = *(a1 + 2);
    if (v6 >= v5)
    {
      v8 = *a1;
      v9 = v6 - *a1;
      v10 = (v9 >> 2) + 1;
      if (v10 >> 62)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v11 = v5 - v8;
      if (v11 >> 1 > v10)
      {
        v10 = v11 >> 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v12 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (4 * (v9 >> 2));
      *v13 = a3;
      v7 = v13 + 1;
      memcpy(0, v8, v9);
      *a1 = 0;
      *(a1 + 2) = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v6 = a3;
      v7 = v6 + 1;
    }

    *(a1 + 1) = v7;
  }
}

void sub_1DE656914(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Driver::~Driver(AMCP::Driver *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

AMCP::Driver *AMCP::Driver::Driver(AMCP::Driver *this, AMCP::System_Context *a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Object::Object(this, a2, a3);
  *v4 = &unk_1F5986400;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x61706C67);
  if ((v5 & 1) == 0)
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
      v11 = 136315650;
      v12 = "Driver.cpp";
      v13 = 1024;
      v14 = 26;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_driver)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  return this;
}

void sub_1DE656B28(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Driver::Driver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(**a2 + 16);
  *buf = &unk_1F5986420;
  *&buf[8] = a3;
  *&v18[4] = buf;
  AMCP::Core::Broker::fetch_first_core_if (v15, v5, buf);
  *a1 = &unk_1F5964268;
  v6 = v15[0];
  if (v15[0])
  {
    v7 = *v15[0];
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  v8 = v15[1];
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 32) = a2;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *(a1 + 32) = a2;
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](buf);
  *a1 = &unk_1F5986400;
  v9 = AMCP::Object::constructed_correct_class(a1, 0x61706C67);
  if ((v9 & 1) == 0)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      *&buf[4] = "Driver.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 42;
      v17 = 2080;
      *v18 = "constructed_correct_class(k_class_id_driver)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE656D54(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP6DriverC1ERNS_14System_ContextEN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x61706C67, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1885956452u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void AMCP::Core::Core::get_simple_required_property<1885956452u>(void *a1, AMCP::Core::Core *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  strcpy(buf, "diipbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&cf, a2, buf);
  if ((v12 & 1) == 0)
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
      v10 = 4;
      strcpy(__p, "piid");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v14 = 1024;
      v15 = 391;
      v16 = 2080;
      v17 = "optional_value.operator BOOL() == true";
      v18 = 2080;
      v19 = __p;
      v20 = 1024;
      v21 = 1735159650;
      v22 = 1024;
      v23 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a1 = v4;
    CFRelease(v4);
  }

  else
  {
    *a1 = 0;
  }
}

void sub_1DE656FE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Driver::Driver(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5986420;
  a2[1] = v2;
  return result;
}

void AMCP::Driver::get_bundle_id(AMCP::Driver *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1885956452u>(a2, v7);
    }

    else
    {
      *a2 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
  }
}

void AMCP::Driver::get_device_list(AMCP::Driver *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1684370979u>(a2, v7);
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

void AMCP::Driver::get_clock_list(AMCP::Driver *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1668049699u>(a2, v7);
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

void AMCP::Core::Core::get_simple_required_property<1668049699u>(uint64_t *a1, AMCP::Core::Core *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  strcpy(buf, "#klcbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v11, a2, buf);
  if ((v13 & 1) == 0)
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
      v10 = 4;
      strcpy(__p, "clk#");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v15 = 1024;
      v16 = 391;
      v17 = 2080;
      v18 = "optional_value.operator BOOL() == true";
      v19 = 2080;
      v20 = __p;
      v21 = 1024;
      v22 = 1735159650;
      v23 = 1024;
      v24 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = v11;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, v11, v12, (v12 - v11) >> 2);
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_1DE657450(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Driver::get_box_list(AMCP::Driver *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1651472419u>(a2, v7);
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

void AMCP::Core::Core::get_simple_required_property<1651472419u>(uint64_t *a1, AMCP::Core::Core *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  strcpy(buf, "#xobbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v11, a2, buf);
  if ((v13 & 1) == 0)
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
      v10 = 4;
      strcpy(__p, "box#");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v15 = 1024;
      v16 = 391;
      v17 = 2080;
      v18 = "optional_value.operator BOOL() == true";
      v19 = 2080;
      v20 = __p;
      v21 = 1024;
      v22 = 1735159650;
      v23 = 1024;
      v24 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = v11;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, v11, v12, (v12 - v11) >> 2);
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_1DE6576C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::System::~System(AMCP::System *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

AMCP::System *AMCP::System::System(AMCP::System *this, AMCP::System_Context *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Object::Object(this, a2, 1u);
  *v3 = &unk_1F59864A0;
  v4 = AMCP::Object::constructed_correct_class(v3, 0x61737973);
  if ((v4 & 1) == 0)
  {
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "System.cpp";
      v12 = 1024;
      v13 = 34;
      v14 = 2080;
      v15 = "constructed_correct_class(k_class_id_system)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v10, 0x1Cu);
    }

    abort();
  }

  return this;
}

void sub_1DE6578C8(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void AMCP::System::get_device_list(AMCP::System *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1684370979u>(a2, v7);
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

void AMCP::System::get_clock_list(AMCP::System *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1668049699u>(a2, v7);
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

void AMCP::System::get_box_list(AMCP::System *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1651472419u>(a2, v7);
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

void AMCP::System::get_driver_list(AMCP::System *this@<X0>, uint64_t *a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      strcpy(buf, "#glpbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v16, v7, buf);
      if ((v18 & 1) == 0)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
          v15 = 4;
          strcpy(__p, "plg#");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v20 = 1024;
          v21 = 391;
          v22 = 2080;
          v23 = "optional_value.operator BOOL() == true";
          v24 = 2080;
          v25 = __p;
          v26 = 1024;
          v27 = 1735159650;
          v28 = 1024;
          v29 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v9 = v16;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, v16, v17, (v17 - v16) >> 2);
      if (v9)
      {
        operator delete(v9);
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

void sub_1DE657D0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::System::get_io_context_list(AMCP::System *this@<X0>, uint64_t *a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      strcpy(buf, "#xtcbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v16, v7, buf);
      if ((v18 & 1) == 0)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
          v15 = 4;
          strcpy(__p, "ctx#");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v20 = 1024;
          v21 = 391;
          v22 = 2080;
          v23 = "optional_value.operator BOOL() == true";
          v24 = 2080;
          v25 = __p;
          v26 = 1024;
          v27 = 1735159650;
          v28 = 1024;
          v29 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v9 = v16;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, v16, v17, (v17 - v16) >> 2);
      if (v9)
      {
        operator delete(v9);
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

void sub_1DE657F3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::System::get_node_list(AMCP::System *this@<X0>, uint64_t *a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      strcpy(buf, "#donbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v16, v7, buf);
      if ((v18 & 1) == 0)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
          v15 = 4;
          strcpy(__p, "nod#");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v20 = 1024;
          v21 = 391;
          v22 = 2080;
          v23 = "optional_value.operator BOOL() == true";
          v24 = 2080;
          v25 = __p;
          v26 = 1024;
          v27 = 1735159650;
          v28 = 1024;
          v29 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v9 = v16;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, v16, v17, (v17 - v16) >> 2);
      if (v9)
      {
        operator delete(v9);
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

void sub_1DE65816C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::System::modify_graph(AMCP::System *this, AMCP::Node_Description **a2, const AMCP::Modify_Graph_Destroy_List *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (!v4 || (v4 = std::__shared_weak_count::lock(v4), (v7 = v4) == 0) || (v8 = *(this + 2)) == 0)
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
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 102;
      *&buf[18] = 2080;
      *&buf[20] = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v57);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v56, "No underlying object");
    std::runtime_error::runtime_error(&v59, &v56);
    v61 = 0uLL;
    v62 = 0;
    v63 = -1;
    v59.__vftable = &unk_1F5992170;
    v60 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v59);
    *&buf[32] = "Modify_Graph_Result AMCP::System::modify_graph(const Graph_Description &, const Modify_Graph_Destroy_List &)";
    *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v66 = 102;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v47);
  }

  v45 = 0x676C6F626D646772;
  v46 = 0;
  v43 = 0;
  v42 = 0uLL;
  std::vector<AMCP::Node_Description>::__init_with_size[abi:ne200100]<AMCP::Node_Description*,AMCP::Node_Description*>(&v42, *a2, a2[1], 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3));
  memset(&v44, 0, sizeof(v44));
  std::vector<AMCP::Wire_Description>::__init_with_size[abi:ne200100]<AMCP::Wire_Description*,AMCP::Wire_Description*>(&v44, a2[3], a2[4], 0xAAAAAAAAAAAAAAABLL * ((a2[4] - a2[3]) >> 6));
  v38 = 0uLL;
  v39 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v38, *a3, *(a3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3));
  v40 = 0uLL;
  v41 = 0;
  std::vector<AMCP::Wire_Identifier>::__init_with_size[abi:ne200100]<AMCP::Wire_Identifier*,AMCP::Wire_Identifier*>(&v40, *(a3 + 3), *(a3 + 4), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 4) - *(a3 + 3)) >> 4));
  operation = AMCP::Core::Core::find_operation(&v53, v8, &v45);
  v10 = v53;
  if (!v53)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v55);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v47, "Operation does not have requested function", v36);
    std::runtime_error::runtime_error(&v57, &v47);
    std::runtime_error::runtime_error(&v59, &v57);
    v61 = 0uLL;
    v62 = 0;
    v63 = -1;
    v59.__vftable = &unk_1F5992170;
    v60 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v59);
    *&buf[32] = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::optional<std::vector<unsigned int>>, Argument_Types = <AMCP::Graph_Description, AMCP::Modify_Graph_Destroy_List>]";
    *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v66 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v56);
  }

  v50 = v42;
  v11 = v43;
  v43 = 0;
  v42 = 0uLL;
  v52 = v44;
  v51 = v11;
  memset(&v44, 0, sizeof(v44));
  *&v47.__r_.__value_.__l.__data_ = v38;
  v12 = v39;
  v39 = 0;
  v38 = 0uLL;
  v48 = v40;
  v47.__r_.__value_.__r.__words[2] = v12;
  v49 = v41;
  v40 = 0uLL;
  v41 = 0;
  v13 = AMCP::Implementation::get_type_marker<std::function<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>>();
  v14 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v10, v13);
  if (!v14)
  {
    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = *v33;
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    else
    {
      v34 = *v33;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v64);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v57, "Operation does not have requested function", v37);
    std::runtime_error::runtime_error(&v58, &v57);
    std::runtime_error::runtime_error(&v59, &v58);
    v61 = 0uLL;
    v62 = 0;
    v63 = -1;
    v59.__vftable = &unk_1F5992170;
    v60 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v59);
    *&buf[32] = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<std::vector<unsigned int>>, Argument_Types = <AMCP::Graph_Description, AMCP::Modify_Graph_Destroy_List>]";
    *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v66 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v55);
  }

  v15 = v14;
  if (!*(v14 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::optional<std::vector<unsigned int>> ()(AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List)>>(), (v14 = (*(v15 + 7))(4, v15 + 24, 0, buf)) == 0))
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
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

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v64);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v57, "Invalid cast", v35);
    std::runtime_error::runtime_error(&v58, &v57);
    std::runtime_error::runtime_error(&v59, &v58);
    v61 = 0uLL;
    v62 = 0;
    v63 = -1;
    v59.__vftable = &unk_1F5992170;
    v60 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v59);
    *&buf[32] = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<std::vector<unsigned int>>, Argument_Types = <AMCP::Graph_Description, AMCP::Modify_Graph_Destroy_List>]";
    *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v66 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v55);
  }

  *buf = v50;
  *&buf[24] = v52;
  v16 = v51;
  v51 = 0;
  v50 = 0uLL;
  *&buf[16] = v16;
  memset(&v52, 0, sizeof(v52));
  v59 = *&v47.__r_.__value_.__l.__data_;
  v17 = v47.__r_.__value_.__r.__words[2];
  memset(&v47, 0, sizeof(v47));
  v61 = v48;
  v60 = v17;
  v62 = v49;
  v48 = 0uLL;
  v49 = 0;
  v18 = *(v14 + 3);
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v18 + 48))(v18, buf, &v59);
  v56.__vftable = &v61;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&v56);
  v56.__vftable = &v59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v56);
  v56.__vftable = &buf[24];
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](&v56);
  v56.__vftable = buf;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&v56);
  *buf = &v48;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v47;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v52;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v50;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  *buf = &v40;
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v44;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v42;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](buf);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE658C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, std::runtime_error a44, const char *imp, uint64_t a46, uint64_t a47, std::runtime_error a48, int a49, __int16 a50, char a51, char a52)
{
  if (a44.__imp_.__imp_)
  {
    imp = a44.__imp_.__imp_;
    operator delete(a44.__imp_.__imp_);
  }

  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v55 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(v55 - 224);
  std::runtime_error::~runtime_error((v55 - 240));
  if (a52 < 0)
  {
    operator delete(a48.__vftable);
  }

  if (v54)
  {
    __cxa_free_exception(v53);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v55 - 161));
  AMCP::Modify_Graph_Destroy_List::~Modify_Graph_Destroy_List(&a23);
  AMCP::Graph_Description::~Graph_Description(&a32);
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  AMCP::Modify_Graph_Destroy_List::~Modify_Graph_Destroy_List(&a9);
  AMCP::Graph_Description::~Graph_Description(&a15);
  std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  _Unwind_Resume(a1);
}

std::string *std::vector<AMCP::Wire_Description>::__init_with_size[abi:ne200100]<AMCP::Wire_Description*,AMCP::Wire_Description*>(std::string *result, AMCP::Wire_Description *a2, AMCP::Wire_Description *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AMCP::Wire_Description>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE658F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t AMCP::System::node_uid_is_unique(AMCP::System *this, const void **a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 2)) == 0)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *&buf[4] = "System.cpp";
      v52 = 1024;
      v53 = 109;
      v54 = 2080;
      v55 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v41, "No underlying object");
    std::runtime_error::runtime_error(&v44, &v41);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v56 = "BOOL AMCP::System::node_uid_is_unique(const CF::String &)";
    v57 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v58 = 109;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
  }

  v36 = 0x676C6F626E647571;
  LODWORD(v37) = 0;
  v7 = *a2;
  if (v7)
  {
    CFRetain(v7);
  }

  v35 = v7;
  operation = AMCP::Core::Core::find_operation(&v39, v6, &v36);
  v9 = v39;
  if (!v39)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *&buf[4] = "Core.h";
      v52 = 1024;
      v53 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "Operation does not have requested function", v33, v35, v36, v37);
    std::runtime_error::runtime_error(&v43, &v42);
    std::runtime_error::runtime_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v56 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = BOOL, Argument_Types = <applesauce::CF::StringRef>]";
    v57 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v58 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v41);
  }

  v38 = v7;
  v10 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(applesauce::CF::StringRef)>>();
  v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
  if (!v11)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *v30;
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v31 = *v30;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v52 = 1024;
      v53 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v50);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "Operation does not have requested function", v34, 0, v36, v37);
    std::runtime_error::runtime_error(&v43, &v42);
    std::runtime_error::runtime_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v56 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <applesauce::CF::StringRef>]";
    v57 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v58 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v41);
  }

  v12 = v11;
  if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<BOOL ()(applesauce::CF::StringRef)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
      v52 = 1024;
      v53 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v50);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "Invalid cast", v32, 0, v36, v37);
    std::runtime_error::runtime_error(&v43, &v42);
    std::runtime_error::runtime_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v56 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <applesauce::CF::StringRef>]";
    v57 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v58 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v41);
  }

  *buf = v7;
  v38 = 0;
  v13 = *(v11 + 3);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v14 = (*(*v13 + 48))(v13, buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v14;
}

void sub_1DE659844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14, std::runtime_error a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::runtime_error a29, char a30)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a15.__vftable)
  {
    a15.__imp_.__imp_ = a15.__vftable;
    operator delete(a15.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v33 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a30);
  std::runtime_error::~runtime_error(&a29);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v32)
  {
    __cxa_free_exception(v31);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v33 - 129));
  applesauce::CF::StringRef::~StringRef(&a12);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  applesauce::CF::StringRef::~StringRef(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

uint64_t AMCP::System::get_node_id(AMCP::System *this, const void **a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 2)) == 0)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *&buf[4] = "System.cpp";
      v52 = 1024;
      v53 = 116;
      v54 = 2080;
      v55 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v41, "No underlying object");
    std::runtime_error::runtime_error(&v44, &v41);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v56 = "std::optional<Object_ID> AMCP::System::get_node_id(const CF::String &)";
    v57 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v58 = 116;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v42);
  }

  v36 = 0x676C6F62676E6469;
  LODWORD(v37) = 0;
  v7 = *a2;
  if (v7)
  {
    CFRetain(v7);
  }

  v35 = v7;
  operation = AMCP::Core::Core::find_operation(&v39, v6, &v36);
  v9 = v39;
  if (!v39)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *&buf[4] = "Core.h";
      v52 = 1024;
      v53 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "Operation does not have requested function", v33, v35, v36, v37);
    std::runtime_error::runtime_error(&v43, &v42);
    std::runtime_error::runtime_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v56 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::optional<unsigned int>, Argument_Types = <applesauce::CF::StringRef>]";
    v57 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v58 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v41);
  }

  v38 = v7;
  v10 = AMCP::Implementation::get_type_marker<std::function<std::optional<unsigned int> ()(applesauce::CF::StringRef)>>();
  v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
  if (!v11)
  {
    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *v30;
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v31 = *v30;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v52 = 1024;
      v53 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v50);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "Operation does not have requested function", v34, 0, v36, v37);
    std::runtime_error::runtime_error(&v43, &v42);
    std::runtime_error::runtime_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v56 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<unsigned int>, Argument_Types = <applesauce::CF::StringRef>]";
    v57 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v58 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v41);
  }

  v12 = v11;
  if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::optional<unsigned int> ()(applesauce::CF::StringRef)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
      v52 = 1024;
      v53 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v50);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "Invalid cast", v32, 0, v36, v37);
    std::runtime_error::runtime_error(&v43, &v42);
    std::runtime_error::runtime_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v56 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<unsigned int>, Argument_Types = <applesauce::CF::StringRef>]";
    v57 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v58 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v41);
  }

  *buf = v7;
  v38 = 0;
  v13 = *(v11 + 3);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v14 = (*(*v13 + 48))(v13, buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v14 & 0xFFFFFFFFFFLL;
}

void sub_1DE65A328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14, std::runtime_error a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, std::runtime_error a29, char a30)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a15.__vftable)
  {
    a15.__imp_.__imp_ = a15.__vftable;
    operator delete(a15.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v33 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a30);
  std::runtime_error::~runtime_error(&a29);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v32)
  {
    __cxa_free_exception(v31);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v33 - 129));
  applesauce::CF::StringRef::~StringRef(&a12);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  applesauce::CF::StringRef::~StringRef(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

void AMCP::System::get_wires(AMCP::System *this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v4 = *(this + 2)) == 0)
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
      *&buf[4] = "System.cpp";
      v45 = 1024;
      v46 = 123;
      v47 = 2080;
      v48 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v34, "No underlying object");
    std::runtime_error::runtime_error(&v37, &v34);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v49 = "Wire_Set AMCP::System::get_wires()";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v51 = 123;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v30 = 0x676C6F6267747772;
  v31 = 0;
  operation = AMCP::Core::Core::find_operation(&v32, v4, &v30);
  v6 = v32;
  if (!v32)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *&buf[4] = "Core.h";
      v45 = 1024;
      v46 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Operation does not have requested function", v28);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v49 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <>]";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v51 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v7 = AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()(void)>>();
  v8 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7);
  if (!v8)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *&buf[4] = "Operation.h";
      v45 = 1024;
      v46 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Operation does not have requested function", v29);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <>]";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v51 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v9 = v8;
  if (!*(v8 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()(void)>>(), (v8 = (*(v9 + 7))(4, v9 + 24, 0, buf)) == 0))
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v45 = 1024;
      v46 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Invalid cast", v27);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <>]";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v51 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v10 = *(v8 + 3);
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v10);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1DE65ADD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::runtime_error a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::runtime_error a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13.__vftable)
  {
    operator delete(a13.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v31 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a28);
  std::runtime_error::~runtime_error(&a27);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v30)
  {
    __cxa_free_exception(v29);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v31 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

void AMCP::System::get_wires_for_node(AMCP::System *this, int a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 2)) == 0)
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
      *&buf[4] = "System.cpp";
      v47 = 1024;
      v48 = 130;
      v49 = 2080;
      v50 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v36, "No underlying object");
    std::runtime_error::runtime_error(&v39, &v36);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "Wire_Set AMCP::System::get_wires_for_node(Object_ID)";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v53 = 130;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  v32 = 0x676C6F626777666ELL;
  v33 = 0;
  operation = AMCP::Core::Core::find_operation(&v34, v6, &v32);
  v8 = v34;
  if (!v34)
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
      v47 = 1024;
      v48 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v37, "Operation does not have requested function", v30);
    std::runtime_error::runtime_error(&v38, &v37);
    std::runtime_error::runtime_error(&v39, &v38);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <unsigned int>]";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v53 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
  }

  v9 = AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()>>();
  v10 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9);
  if (!v10)
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
      v47 = 1024;
      v48 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v37, "Operation does not have requested function", v31);
    std::runtime_error::runtime_error(&v38, &v37);
    std::runtime_error::runtime_error(&v39, &v38);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <unsigned int>]";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v53 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
  }

  v11 = v10;
  if (!*(v10 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::unordered_set<AMCP::Wire_Description> ()>>(), (v10 = (*(v11 + 7))(4, v11 + 24, 0, buf)) == 0))
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

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v47 = 1024;
      v48 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v37, "Invalid cast", v29);
    std::runtime_error::runtime_error(&v38, &v37);
    std::runtime_error::runtime_error(&v39, &v38);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = -1;
    v39.__vftable = &unk_1F5992170;
    v40 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
    v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::unordered_set<AMCP::Wire_Description>, Argument_Types = <unsigned int>]";
    v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v53 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
  }

  *buf = a2;
  v12 = *(v10 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, buf);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE65B7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::runtime_error a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::runtime_error a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13.__vftable)
  {
    operator delete(a13.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v31 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a28);
  std::runtime_error::~runtime_error(&a27);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v30)
  {
    __cxa_free_exception(v29);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v31 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

void AMCP::System::set_volume_for_wire(uint64_t a1, uint64_t a2, __int128 *a3, float a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v9 = v5) == 0) || (v10 = *(a1 + 16)) == 0)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 137;
      *&buf[18] = 2080;
      *&buf[20] = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v44, "No underlying object");
    std::runtime_error::runtime_error(&v47, &v44);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = -1;
    v47.__vftable = &unk_1F5992170;
    v48 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v47);
    *&v55 = "void AMCP::System::set_volume_for_wire(const Wire_Identifier &, float, CA::TimeStamp)";
    *(&v55 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    LODWORD(v56) = 137;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v45);
  }

  v40 = 0x676C6F6273766677;
  v41 = 0;
  v36 = *a3;
  v37 = a3[1];
  v38 = a3[2];
  v39 = a3[3];
  operation = AMCP::Core::Core::find_operation(&v42, v10, &v40);
  v12 = v42;
  if (!v42)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v53);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v45, "Operation does not have requested function", v34);
    std::runtime_error::runtime_error(&v46, &v45);
    std::runtime_error::runtime_error(&v47, &v46);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = -1;
    v47.__vftable = &unk_1F5992170;
    v48 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v47);
    *&v55 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp>]";
    *(&v55 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    LODWORD(v56) = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v44);
  }

  v13 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>>();
  v14 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v12, v13);
  if (!v14)
  {
    v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v29 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v53);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v45, "Operation does not have requested function", v35);
    std::runtime_error::runtime_error(&v46, &v45);
    std::runtime_error::runtime_error(&v47, &v46);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = -1;
    v47.__vftable = &unk_1F5992170;
    v48 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v47);
    *&v55 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp>]";
    *(&v55 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v56) = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v44);
  }

  v15 = v14;
  if (!*(v14 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp)>>(), (v14 = (*(v15 + 7))(4, v15 + 24, 0, buf)) == 0))
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v14);
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
      *&buf[12] = 1024;
      *&buf[14] = 161;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v53);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v45, "Invalid cast", v33);
    std::runtime_error::runtime_error(&v46, &v45);
    std::runtime_error::runtime_error(&v47, &v46);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = -1;
    v47.__vftable = &unk_1F5992170;
    v48 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v47);
    *&v55 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp>]";
    *(&v55 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v56) = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v44);
  }

  *buf = v36;
  *&buf[16] = v37;
  v55 = v38;
  v56 = v39;
  *&v47.__vftable = a4;
  v16 = *(v14 + 3);
  if (!v16)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v16 + 48))(v16, a2, &v47, buf);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
}

void sub_1DE65C228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, std::runtime_error a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, std::runtime_error a35, char a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21.__vftable)
  {
    operator delete(a21.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v39 - 144);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a36);
  std::runtime_error::~runtime_error(&a35);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (v38)
  {
    __cxa_free_exception(v37);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v39 - 145));
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

void AMCP::System::set_volume_ramp_for_wire(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, float a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (!v6 || (v6 = std::__shared_weak_count::lock(v6), (v11 = v6) == 0) || (v12 = *(a1 + 16)) == 0)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 144;
      *&buf[18] = 2080;
      *&buf[20] = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v57);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v54, "No underlying object");
    std::runtime_error::runtime_error(&v50, &v54);
    *(&v51 + 1) = 0;
    v52 = 0uLL;
    LODWORD(v53) = -1;
    v50.__vftable = &unk_1F5992170;
    *&v51 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v50);
    *&v60 = "void AMCP::System::set_volume_ramp_for_wire(const Wire_Identifier &, float, CA::TimeStamp, CA::TimeStamp)";
    *(&v60 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    LODWORD(v61) = 144;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v56);
  }

  v46 = 0x676C6F6273767277;
  v47 = 0;
  v42 = *a3;
  v43 = a3[1];
  v44 = a3[2];
  v45 = a3[3];
  v38 = *a4;
  v39 = *(a4 + 16);
  v40 = *(a4 + 32);
  v41 = *(a4 + 48);
  operation = AMCP::Core::Core::find_operation(&v48, v12, &v46);
  v14 = v48;
  if (!v48)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v58);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v56, "Operation does not have requested function", v36);
    std::runtime_error::runtime_error(&v57, &v56);
    std::runtime_error::runtime_error(&v50, &v57);
    *(&v51 + 1) = 0;
    v52 = 0uLL;
    LODWORD(v53) = -1;
    v50.__vftable = &unk_1F5992170;
    *&v51 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v50);
    *&v60 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp, CA::TimeStamp>]";
    *(&v60 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    LODWORD(v61) = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v54);
  }

  v15 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>>();
  v16 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v14, v15);
  if (!v16)
  {
    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = *v33;
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    else
    {
      v34 = *v33;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v58);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v56, "Operation does not have requested function", v37);
    std::runtime_error::runtime_error(&v57, &v56);
    std::runtime_error::runtime_error(&v50, &v57);
    *(&v51 + 1) = 0;
    v52 = 0uLL;
    LODWORD(v53) = -1;
    v50.__vftable = &unk_1F5992170;
    *&v51 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v50);
    *&v60 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp, CA::TimeStamp>]";
    *(&v60 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v61) = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v54);
  }

  v17 = v16;
  if (!*(v16 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Wire_Identifier const&,float,CA::TimeStamp,CA::TimeStamp)>>(), (v16 = (*(v17 + 7))(4, v17 + 24, 0, buf)) == 0))
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v16);
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

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v58);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v56, "Invalid cast", v35);
    std::runtime_error::runtime_error(&v57, &v56);
    std::runtime_error::runtime_error(&v50, &v57);
    *(&v51 + 1) = 0;
    v52 = 0uLL;
    LODWORD(v53) = -1;
    v50.__vftable = &unk_1F5992170;
    *&v51 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v50);
    *&v60 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Wire_Identifier &, float, CA::TimeStamp, CA::TimeStamp>]";
    *(&v60 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    LODWORD(v61) = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v54);
  }

  *buf = v42;
  *&buf[16] = v43;
  v60 = v44;
  v61 = v45;
  v50 = v38;
  v51 = v39;
  v52 = v40;
  v53 = v41;
  *&v55 = a5;
  v18 = *(v16 + 3);
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v18 + 48))(v18, a2, &v55, buf, &v50);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
}

void sub_1DE65CC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  *(v42 - 240) = v40;
  v44 = *(v42 - 232);
  if (v44)
  {
    *(v42 - 224) = v44;
    operator delete(v44);
  }

  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v42 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a29);
  std::runtime_error::~runtime_error((v42 - 184));
  if (*(v42 - 185) < 0)
  {
    operator delete(*(v42 - 208));
  }

  if (v41)
  {
    __cxa_free_exception(v39);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v42 - 161));
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  _Unwind_Resume(a1);
}

void AMCP::System::get_wire_connection_properties(AMCP::System *this, const AMCP::Wire_Identifier *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 2)) == 0)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 152;
      *&buf[18] = 2080;
      *&buf[20] = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v54);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v56, "No underlying object");
    std::runtime_error::runtime_error(&v44, &v56);
    v46 = 0;
    v47 = 0;
    *&v48 = 0;
    DWORD2(v48) = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v66 = "std::optional<Wire_Connection_Properties> AMCP::System::get_wire_connection_properties(const Wire_Identifier &)";
    *&v67 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    DWORD2(v67) = 152;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v55);
  }

  v42 = 0x676C6F6267776370;
  v43 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *a2, *(a2 + 1));
  }

  else
  {
    v36 = *a2;
  }

  v37 = *(a2 + 3);
  v38 = *(a2 + 8);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v39 = *(a2 + 40);
  }

  v40 = *(a2 + 8);
  v41 = *(a2 + 18);
  operation = AMCP::Core::Core::find_operation(&v52, v6, &v42);
  v8 = v52;
  if (!v52)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v57);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v55, "Operation does not have requested function", v34);
    std::runtime_error::runtime_error(&v54, &v55);
    std::runtime_error::runtime_error(&v44, &v54);
    v46 = 0;
    v47 = 0;
    *&v48 = 0;
    DWORD2(v48) = -1;
    v44.__vftable = &unk_1F5992170;
    v45 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v44);
    v66 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::optional<AMCP::Wire_Connection_Properties>, Argument_Types = <AMCP::Wire_Identifier>]";
    *&v67 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    DWORD2(v67) = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v56);
  }

  v44 = *&v36.__r_.__value_.__l.__data_;
  v9 = v36.__r_.__value_.__r.__words[2];
  memset(&v36, 0, sizeof(v36));
  v45 = v9;
  v46 = v37;
  LODWORD(v47) = v38;
  v48 = *&v39.__r_.__value_.__l.__data_;
  v10 = v39.__r_.__value_.__r.__words[2];
  memset(&v39, 0, sizeof(v39));
  v51 = v41;
  v49 = v10;
  v50 = v40;
  v11 = AMCP::Implementation::get_type_marker<std::function<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>>();
  v12 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11);
  if (!v12)
  {
    v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v29 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v64);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v56, "Operation does not have requested function", v35);
    std::runtime_error::runtime_error(&v57, &v56);
    std::runtime_error::runtime_error(&v58, &v57);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = -1;
    v58.__vftable = &unk_1F5992170;
    v59 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v58);
    v66 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<AMCP::Wire_Connection_Properties>, Argument_Types = <AMCP::Wire_Identifier>]";
    *&v67 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    DWORD2(v67) = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v54);
  }

  v13 = v12;
  if (!*(v12 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::optional<AMCP::Wire_Connection_Properties> ()(AMCP::Wire_Identifier)>>(), (v12 = (*(v13 + 7))(4, v13 + 24, 0, buf)) == 0))
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
      *&buf[12] = 1024;
      *&buf[14] = 161;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v64);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v56, "Invalid cast", v33);
    std::runtime_error::runtime_error(&v57, &v56);
    std::runtime_error::runtime_error(&v58, &v57);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = -1;
    v58.__vftable = &unk_1F5992170;
    v59 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v58);
    v66 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<AMCP::Wire_Connection_Properties>, Argument_Types = <AMCP::Wire_Identifier>]";
    *&v67 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    DWORD2(v67) = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v54);
  }

  *buf = v44;
  v14 = v45;
  v44.__imp_.__imp_ = 0;
  v45 = 0;
  v44.__vftable = 0;
  *&buf[16] = v14;
  *&buf[24] = v46;
  LODWORD(v66) = v47;
  v67 = v48;
  v15 = v49;
  v49 = 0;
  v48 = 0uLL;
  v70 = v51;
  v68 = v15;
  v69 = v50;
  v16 = *(v12 + 3);
  if (!v16)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v16 + 48))(v16, buf);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE65D7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, std::runtime_error a36, uint64_t a37, uint64_t a38, void *a39, void *__p, uint64_t a41, uint64_t a42, std::runtime_error a43, int a44, __int16 a45, char a46, char a47)
{
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  if (a36.__vftable)
  {
    a36.__imp_.__imp_ = a36.__vftable;
    operator delete(a36.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v50 - 160);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(v50 - 224);
  std::runtime_error::~runtime_error((v50 - 240));
  if (a47 < 0)
  {
    operator delete(a43.__vftable);
  }

  if (v49)
  {
    __cxa_free_exception(v48);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v50 - 161));
  AMCP::Wire_Identifier::~Wire_Identifier(&a24);
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  AMCP::Wire_Identifier::~Wire_Identifier(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  _Unwind_Resume(a1);
}

uint64_t AMCP::System::Config_Change_Observer::Config_Change_Observer(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = **a2;
  v5 = (*a2)[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *a1 = v6;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t AMCP::System::Config_Change_Observer::Config_Change_Observer(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = **a2;
  v7 = (*a2)[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v8;
    *(a1 + 8) = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    *a1 = v8;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  return a1;
}

void AMCP::System::Config_Change_Observer::~Config_Change_Observer(std::__shared_weak_count **this)
{
  AMCP::System::Config_Change_Observer::reset(this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void AMCP::System::Config_Change_Observer::reset(AMCP::System::Config_Change_Observer *this)
{
  v2 = *(this + 1);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *this;
    if (*this)
    {
      v6 = *(this + 2);
      if (v6)
      {
        v7 = *(v5 + 32);
        if (*(this + 24) == 1)
        {
          AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::deregister_observer(v7 + 1616, v6);
        }

        else
        {
          AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::deregister_observer(v7 + 2048, v6);
          v8 = *(v5 + 32);
          v9 = *(this + 2);
          std::__shared_mutex_base::lock((v8 + 1832));
          if (*(v8 + 2000) == 1)
          {
            v10 = *(v8 + 2008);
            v11 = *(v8 + 2016);
            if (v10 != v11)
            {
              v12 = -v10;
              while (1)
              {
                v13 = *(v10 + 16);
                if (AMCP::Utility::Sorted_Vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>,AMCP::Utility::Extract_Key_Get_N<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>,0ul>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>>::find(*(v10 + 8), v13, v9))
                {
                  break;
                }

                v10 += 40;
                v12 -= 40;
                if (v10 == v11)
                {
                  goto LABEL_27;
                }
              }

              v15 = v14;
              if (v14 + 9 == v13)
              {
                v16 = v14;
              }

              else
              {
                v16 = v14;
                do
                {
                  v17 = *(v16 + 72);
                  v16 += 72;
                  *v15 = v17;
                  std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>::operator=[abi:ne200100]((v15 + 1), (v15 + 10));
                  v18 = v15 + 18;
                  v15 = v16;
                }

                while (v18 != v13);
              }

              std::vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>::__base_destruct_at_end[abi:ne200100](v10 + 8, v16);
              if (*(v10 + 8) == *(v10 + 16))
              {
                v19 = *(v8 + 2016);
                if (v10 + 40 != v19)
                {
                  v20 = *(v8 + 2008);
                  v21 = -v20;
                  v22 = v20 - v12;
                  do
                  {
                    v23 = v22 + v21;
                    *v23 = *(v22 + v21 + 40);
                    v24 = *(v22 + v21 + 8);
                    *(v23 + 8) = *(v22 + v21 + 48);
                    *(v23 + 48) = v24;
                    v25 = *(v22 + v21 + 24);
                    *(v23 + 24) = *(v22 + v21 + 64);
                    *(v23 + 64) = v25;
                    v22 += 40;
                    v10 = v22 + v21;
                  }

                  while (v22 + v21 + 40 != v19);
                  v19 = *(v8 + 2016);
                }

                if (v19 != v10)
                {
                  do
                  {
                    v26 = v19 - 40;
                    v27 = (v19 - 32);
                    std::vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>::__destroy_vector::operator()[abi:ne200100](&v27);
                    v19 = v26;
                  }

                  while (v26 != v10);
                }

                *(v8 + 2016) = v10;
              }
            }
          }

LABEL_27:
          std::__shared_mutex_base::unlock((v8 + 1832));
        }
      }
    }

    *(this + 2) = 0;

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    *(this + 2) = 0;
  }
}

void AMCP::System::create_begin_config_change_observer(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()>::__value_func[abi:ne200100](v2, a2);
  v3 = 0;
  operator new();
}

void sub_1DE65DDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::System::create_begin_config_change_observer(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !a1[2])
  {
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

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "System.cpp";
      v25 = 1024;
      v26 = 212;
      v27 = 2080;
      v28 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v15, "No underlying object");
    std::runtime_error::runtime_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5992170;
    v17 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v16);
    v29 = "System::Config_Change_Observer AMCP::System::create_begin_config_change_observer(const Config_Change_Observer_Proc &) const";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v31 = 212;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v8 = a1[4];
  v9 = AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::register_observer(*(**v8 + 32) + 1616, (*(**v8 + 32) + 1824), a2);
  AMCP::System::Config_Change_Observer::Config_Change_Observer(a3, v8, v9, 1);

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE65E0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v20 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
  std::runtime_error::~runtime_error(&a17);
  if (v19)
  {
    __cxa_free_exception(v18);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v20 - 129));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0,std::allocator<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP6System35create_begin_config_change_observerERKNSt3__18functionIFvjEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0,std::allocator<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0,std::allocator<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5986810;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0,std::allocator<AMCP::System::create_begin_config_change_observer(std::function<void ()(unsigned int)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5986810;
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void AMCP::System::create_end_config_change_observer(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::__value_func[abi:ne200100](v2, a2);
  v3 = 0;
  operator new();
}

void sub_1DE65E4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void AMCP::System::create_end_config_change_observer(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !a1[2])
  {
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

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "System.cpp";
      v25 = 1024;
      v26 = 226;
      v27 = 2080;
      v28 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v15, "No underlying object");
    std::runtime_error::runtime_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5992170;
    v17 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v16);
    v29 = "System::Config_Change_Observer AMCP::System::create_end_config_change_observer(const Config_Change_Observer_Proc &) const";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v31 = 226;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v8 = a1[4];
  v9 = AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::register_observer(*(**v8 + 32) + 2048, (*(**v8 + 32) + 2256), a2);
  AMCP::System::Config_Change_Observer::Config_Change_Observer(a3, v8, v9, 0);

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE65E834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v20 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
  std::runtime_error::~runtime_error(&a17);
  if (v19)
  {
    __cxa_free_exception(v18);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v20 - 129));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0,std::allocator<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP6System33create_end_config_change_observerERKNSt3__18functionIFvjRKNS1_5tupleIJNS1_6vectorIjNS1_9allocatorIjEEEES7_N5boost9container8flat_mapIjNS3_IJNSA_INS_7AddressENS_5ThingENSB_15Is_Exact_BeforeEvEESE_SE_EEENS1_4lessIjEEvEEEEEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0,std::allocator<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::operator()(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v6, a4);
}

void std::__function::__func<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0,std::allocator<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0,std::allocator<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59868A0;
  std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0,std::allocator<AMCP::System::create_end_config_change_observer(std::function<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)> const&)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59868A0;
  std::__function::__value_func<void ()(unsigned int,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void AMCP::System::create_continuing_config_change_observer(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !a1[2])
  {
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

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "System.cpp";
      v25 = 1024;
      v26 = 205;
      v27 = 2080;
      v28 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v15, "No underlying object");
    std::runtime_error::runtime_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5992170;
    v17 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v16);
    v29 = "System::Config_Change_Observer AMCP::System::create_continuing_config_change_observer(const Config_Change_Observer_Proc &) const";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v31 = 205;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v8 = a1[4];
  v9 = AMCP::Observer::Map<std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>,unsigned int,true,std::less<unsigned int>>::register_observer(*(**v8 + 32) + 2264, (*(**v8 + 32) + 2472), a2);
  AMCP::System::Config_Change_Observer::Config_Change_Observer(a3, v8, v9, 1);

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE65EE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v20 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
  std::runtime_error::~runtime_error(&a17);
  if (v19)
  {
    __cxa_free_exception(v18);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v20 - 129));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void AMCP::System::create_ioc_graph_update_observer(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !a1[2])
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      *&buf[4] = "System.cpp";
      v37 = 1024;
      v38 = 219;
      v39 = 2080;
      v40 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v29, "No underlying object");
    std::runtime_error::runtime_error(&v23, &v29);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v23.__vftable = &unk_1F5992170;
    v24 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v23);
    v41 = "System::Config_Change_Observer AMCP::System::create_ioc_graph_update_observer(const IOC_Graph_Update_Proc_Pair &) const";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v43 = 219;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  v8 = a1[4];
  v9 = *(**v8 + 32);
  v32 = v9 + 1832;
  v33 = 1;
  std::__shared_mutex_base::lock((v9 + 1832));
  if (*(v9 + 2000) == 1)
  {
    add = atomic_fetch_add(&AMCP::Observer::Implementation::get_next_token(void)::s_next_token, 1uLL);
    if (!AMCP::Utility::Sorted_Vector<std::tuple<unsigned int,AMCP::Utility::Sorted_Vector_Map<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>>>,AMCP::Utility::Extract_Key_Get_N<std::tuple<unsigned int,AMCP::Utility::Sorted_Vector_Map<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>>>,0ul>,std::less<unsigned int>,std::allocator<std::tuple<unsigned int,AMCP::Utility::Sorted_Vector_Map<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>>>>>::find( *(v9 + 2008),  *(v9 + 2016),  *(v9 + 2040)))
    {
      *buf = add;
      std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>::pair[abi:ne200100](&buf[8], a2);
      v29.__vftable = 0;
      v29.__imp_.__imp_ = 0;
      v30 = 0;
      v34 = &v29;
      v35 = 0;
      operator new();
    }

    v12 = v11;
    *buf = add;
    std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>::pair[abi:ne200100](&buf[8], a2);
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = (v12 + 8);
    v16 = AMCP::Utility::Sorted_Vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>,AMCP::Utility::Extract_Key_Get_N<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>,0ul>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>>::find(v13, v14, add);
    v18 = v17;
    if (v16)
    {
      *v17 = add;
      std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>::operator=((v17 + 8), &buf[8]);
      std::function<void ()(AMCP::Graph_Description const&)>::operator=((v18 + 40), &v42);
    }

    else
    {
      std::vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>::insert(v15, v17, buf);
    }

    std::__function::__value_func<void ()(AMCP::Graph_Description const&)>::~__value_func[abi:ne200100](&v42);
    std::__function::__value_func<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>::~__value_func[abi:ne200100](&buf[8]);
  }

  else
  {
    add = 0;
  }

  std::__shared_mutex_base::unlock((v9 + 1832));
  AMCP::System::Config_Change_Observer::Config_Change_Observer(a3, v8, add, 0);

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE65F6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::runtime_error a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error *a31, uint64_t a32, void *__p, uint64_t a34)
{
  *(v36 + 2016) = v35;
  a31 = a10;
  std::vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>::__destroy_vector::operator()[abi:ne200100](&a31);
  a31 = &a19;
  std::vector<std::tuple<unsigned long long,std::pair<std::function<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>,std::function<void ()(AMCP::Graph_Description const&)>>>>::__destroy_vector::operator()[abi:ne200100](&a31);
  std::__function::__value_func<void ()(AMCP::Graph_Description const&)>::~__value_func[abi:ne200100](v37 - 136);
  std::__function::__value_func<std::pair<AMCP::Graph_Description,AMCP::Modify_Graph_Destroy_List> ()(void)>::~__value_func[abi:ne200100](v37 - 168);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](&a28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  _Unwind_Resume(a1);
}

void AMCP::System::execute_task_against_config_changes(uint64_t a1, uint64_t a2)
{
  queue[42] = *MEMORY[0x1E69E9840];
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(queue, (*(***(a1 + 32) + 32) + 32));
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN4AMCP4Core9Conductor11handle_taskERKNSt3__18functionIFvvEEEEUlvE_EEvP16dispatch_queue_sOT_NS6_17integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_15719;
  block[4] = &v3;
  dispatch_sync(queue[0], block);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(queue);
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIZN4AMCP4Core9Conductor11handle_taskERKNSt3__18functionIFvvEEEEUlvE_EEvP16dispatch_queue_sOT_NS6_17integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(**(a1 + 32) + 24);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1);
}

void sub_1DE65F940(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE65F930);
}

void AMCP::System::execute_task_against_config_changes_async(uint64_t a1, uint64_t a2)
{
  v4[42] = *MEMORY[0x1E69E9840];
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v4, (*(***(a1 + 32) + 32) + 32));
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v3, a2);
  operator new();
}

void sub_1DE65FA34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1},std::default_delete<AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
    MEMORY[0x1E12C1730](v3, 0x1020C40A5B76CDFLL);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1}>(dispatch_queue_s *,AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v3 = a1;
  v1 = *(a1 + 24);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v1 + 48))(v1);
  return std::unique_ptr<AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1},std::default_delete<AMCP::Core::Conductor::handle_task_async(std::function<void ()(void)> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v3);
}

void sub_1DE65FAE8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE65FACCLL);
}

void AMCP::System::wait_for_notification_quiesence(AMCP::System *this, double a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (a2 > 0.0)
  {
    v10 = mach_absolute_time();
    v11[0] = &unk_1F5986920;
    v11[1] = &v10;
    v11[3] = v11;
    AMCP::System::create_end_config_change_observer(this, v11, v9);
    std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::~__value_func[abi:ne200100](v11);
    v4 = mach_absolute_time();
    v5 = (a2 * 24000000.0);
    v6 = atomic_load(&v10);
    if (!v6 || v4 - v6 < v5)
    {
      do
      {
        mach_wait_until(v4 + (a2 * 0.25 * 24000000.0));
        v4 = mach_absolute_time();
        v7 = atomic_load(&v10);
        if (v7)
        {
          v8 = v4 - v7 >= v5;
        }

        else
        {
          v8 = 0;
        }
      }

      while (!v8);
    }

    AMCP::System::Config_Change_Observer::~Config_Change_Observer(v9);
  }
}

void sub_1DE65FC14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::System::wait_for_notification_quiesence(double)::$_0,std::allocator<AMCP::System::wait_for_notification_quiesence(double)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP6System31wait_for_notification_quiesenceEdE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::System::wait_for_notification_quiesence(double)::$_0,std::allocator<AMCP::System::wait_for_notification_quiesence(double)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = mach_absolute_time();
  atomic_store(result, v1);
  return result;
}

uint64_t std::__function::__func<AMCP::System::wait_for_notification_quiesence(double)::$_0,std::allocator<AMCP::System::wait_for_notification_quiesence(double)::$_0>,void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,boost::container::flat_map<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::less<unsigned int>,void>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5986920;
  a2[1] = v2;
  return result;
}

void AMCP::System::find_devices_to_stop_for_config_change(AMCP::System *this@<X0>, unsigned int a2@<W1>, uint64_t **a3@<X8>)
{
  v80 = *MEMORY[0x1E69E9840];
  v5 = *(***(this + 4) + 32);
  v64 = a2;
  v63[0] = 0;
  v63[1] = 0;
  v62 = v63;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = (a3 + 1);
  v49 = (v5 + 2696);
  (*(*(v5 + 2696) + 16))(buf);
  v6 = (*(**buf + 16))(*buf);
  AMCP::Core::Broker::fetch_core(&v60, v6, a2);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v7 = v60;
  if (v60)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(v60);
    if (AMCP::is_base_of(0x61646576, simple_required))
    {
      std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v62, a2, &v64);
    }

    else if (AMCP::is_base_of(0x61706C67, simple_required))
    {
      AMCP::Core::Core::get_simple_required_property<1684370979u>(buf, v7);
      v9 = *buf;
      v10 = *&buf[8];
      if (*buf != *&buf[8])
      {
        v11 = *buf;
        do
        {
          std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_hint_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(&v62, v63, *v11, v11);
          ++v11;
        }

        while (v11 != v10);
      }

      if (v9)
      {
        operator delete(v9);
      }
    }

    std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a3, v62, v63);
    AMCP::Graph::Graph::get_nodes(v59, *(v5 + 2896));
    v12 = v62;
    if (v62 != v63)
    {
      while (1)
      {
        v45 = v12;
        v58 = *(v12 + 7);
        v13 = v58;
        AMCP::IO_Core::Graph_Manager::find_timebases_from_object_id(v57, v49, v58);
        v14 = v59[0];
        v15 = v59[1];
        while (v14 != v15)
        {
          (*(*v49 + 16))(&v68);
          v16 = (*(*v68 + 16))(v68);
          v17 = *(*v14 + 176);
          if (v17)
          {
            v18 = *(v17 + 8);
          }

          else
          {
            v18 = 0;
          }

          AMCP::Core::Broker::fetch_core(buf, v16, v18);
          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          }

          if (*buf)
          {
            v68 = 0x676C6F6269757462;
            LODWORD(v69) = 0;
            if (AMCP::Core::Core::call_operation_function<BOOL,std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&>(*buf, &v68, v57))
            {
              std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(a3, v13, &v58);
            }
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          v14 += 16;
        }

        (*(*v49 + 16))(&v52, v49);
        (*(*v49 + 48))(&v50, v49);
        v55 = 0;
        v56 = 0;
        v54 = &v55;
        v19 = v50;
        v48 = v51;
        if (v50 != v51)
        {
          break;
        }

LABEL_69:
        if (v19)
        {
          v51 = v19;
          operator delete(v19);
        }

        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        if (v56)
        {
          std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a3, v54, &v55);
        }

        v36 = AMCP::Core::Core::get_simple_required_property<1650682995u>(v60);
        if (AMCP::is_base_of(0x61616767, v36))
        {
          std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(a3, v64, &v64);
        }

        std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v55);
        *buf = v57;
        std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
        v37 = v45;
        v38 = v45[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v37[2];
            v40 = *v39 == v37;
            v37 = v39;
          }

          while (!v40);
        }

        v12 = v39;
        if (v39 == v63)
        {
          goto LABEL_83;
        }
      }

      while (1)
      {
        v20 = (*(*v52 + 16))(v52);
        AMCP::Core::Broker::fetch_core(&v66, v20, *v19);
        v21 = v66;
        if (v66)
        {
          if (AMCP::Core::Core::get_simple_required_property<1650682995u>(v66) == 1633773415)
          {
            break;
          }
        }

LABEL_65:
        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }

        if (++v19 == v48)
        {
          v19 = v50;
          goto LABEL_69;
        }
      }

      v71 = 0x676C6F6267727570;
      v72 = 0;
      has_property = AMCP::Core::Core::has_property(v21, &v71);
      if (!has_property)
      {
        goto LABEL_87;
      }

      AMCP::Core::Core::find_operation(&v68, v21, &v71);
      v23 = v68;
      if (v68)
      {
        v24 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::ArrayRef ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v23, v24))
        {
          AMCP::Core::Operation::call_function<applesauce::CF::ArrayRef>(buf, v23);
          v25 = 0;
          v3 = *buf;
LABEL_37:
          v47 = 1;
LABEL_39:
          has_property = v69;
          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          }

          if (v25 || (v47 & 1) == 0)
          {
LABEL_87:
            v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v41 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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

            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v70 = 4;
              strcpy(&v68, "grup");
              *buf = 136316418;
              *&buf[4] = "Core.h";
              *&buf[12] = 1024;
              *&buf[14] = 391;
              v75 = 2080;
              *v76 = "optional_value.operator BOOL() == true";
              *&v76[8] = 2080;
              *&v76[10] = &v68;
              *&v76[18] = 1024;
              v77 = 1735159650;
              v78 = 1024;
              v79 = 0;
              _os_log_error_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
              if (v70 < 0)
              {
                operator delete(v68);
              }
            }

            abort();
          }

          if (v3)
          {
            CFRetain(v3);
            theArray = v3;
            CFRelease(v3);
            v27 = theArray;
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
              v29 = CFArrayGetCount(v27);
              if (Count)
              {
                v30 = v29;
                v31 = 0;
                v32 = v58;
                v33 = v3;
                do
                {
                  if (v30 == v31)
                  {
                    break;
                  }

                  applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v71, v27, v31);
                  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v73, &v71);
                  v34 = (*(*v52 + 16))(v52);
                  v35 = v73;
                  if (v73)
                  {
                    CFRetain(v73);
                    *&v76[4] = 0;
                    *buf = &unk_1F596C5C8;
                    CFRetain(v35);
                  }

                  else
                  {
                    *buf = &unk_1F596C5C8;
                  }

                  *&buf[8] = v35;
                  *&v76[4] = buf;
                  AMCP::Core::Broker::fetch_first_core_if (&v68, v34, buf);
                  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](buf);
                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  if (v68 && *v68 == v32)
                  {
                    std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType>(&v54, *v19, v19);
                  }

                  v3 = v33;
                  if (v69)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
                  }

                  if (v73)
                  {
                    CFRelease(v73);
                  }

                  if (v71)
                  {
                    CFRelease(v71);
                  }

                  ++v31;
                }

                while (Count != v31);
              }

              if (theArray)
              {
                CFRelease(theArray);
              }
            }
          }

          goto LABEL_65;
        }

        v26 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v23, v26))
        {
          AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v23);
          AMCP::Thing::convert_to<applesauce::CF::ArrayRef>(&v73, buf);
          v3 = v73;
          if (*&v76[12])
          {
            (*&v76[12])(0, buf, 0, 0);
          }

          v25 = 0;
          goto LABEL_37;
        }
      }

      v25 = 1;
      goto LABEL_39;
    }

LABEL_83:
    *buf = v59;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v63[0]);
}

void sub_1DE660584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*a9);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a35);
  __clang_call_terminate(exception_object);
}

void *AMCP::System::All_Control_Value_Observer::All_Control_Value_Observer(void *a1, uint64_t **a2, uint64_t a3)
{
  v6 = **a2;
  v5 = (*a2)[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    a1[1] = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *a1 = v6;
    a1[1] = 0;
  }

  a1[2] = a3;
  return a1;
}

void AMCP::System::All_Control_Value_Observer::~All_Control_Value_Observer(std::__shared_weak_count **this)
{
  AMCP::System::All_Control_Value_Observer::reset(this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void AMCP::System::All_Control_Value_Observer::reset(AMCP::System::All_Control_Value_Observer *this)
{
  v2 = *(this + 1);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    if (*this)
    {
      v5 = *(this + 2);
      if (v5)
      {
        AMCP::Core::Conductor::destroy_control_value_observer(*(*this + 32), v5);
      }
    }

    *(this + 2) = 0;

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    *(this + 2) = 0;
  }
}

void AMCP::System::create_all_control_value_observer(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !a1[2])
  {
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

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "System.cpp";
      v25 = 1024;
      v26 = 295;
      v27 = 2080;
      v28 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v15, "No underlying object");
    std::runtime_error::runtime_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5992170;
    v17 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v16);
    v29 = "System::All_Control_Value_Observer AMCP::System::create_all_control_value_observer(const All_Control_Value_Observer_Proc &)";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v31 = 295;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  v8 = a1[4];
  v9 = AMCP::Observer::Map<std::function<void ()>,unsigned int,true,std::less<unsigned int>>::register_observer(*(**v8 + 32) + 2480, (*(**v8 + 32) + 2688), a2);
  AMCP::System::All_Control_Value_Observer::All_Control_Value_Observer(a3, v8, v9);

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE660AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v20 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
  std::runtime_error::~runtime_error(&a17);
  if (v19)
  {
    __cxa_free_exception(v18);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v20 - 129));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void AMCP::System::update_power_state(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v3 = *(a1 + 16)) == 0)
  {
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "System.cpp";
      v20 = 1024;
      v21 = 304;
      v22 = 2080;
      v23 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v11, "No underlying object");
    std::runtime_error::runtime_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5992170;
    v13 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v12);
    v24 = "void AMCP::System::update_power_state(AMCP::Power_State)";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/System.cpp";
    v26 = 304;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
  }

  strcpy(buf, "sppubolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::call_operation_function<void,AMCP::Power_State>(v3, buf, a2);

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1DE660DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v20 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
  std::runtime_error::~runtime_error(&a17);
  if (v19)
  {
    __cxa_free_exception(v18);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v20 - 129));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void sub_1DE660E5C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE660BA0);
  }

  JUMPOUT(0x1DE660E54);
}

uint64_t HALS_EmbeddedSettingsLite::read_BOOL(uint64_t a1, const UInt8 *a2)
{
  v2 = a2;
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    v24 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    v24 = 0;
  }

  v9 = *(a1 + 31);
  if (v9 < 0)
  {
    v10 = *(a1 + 8);
    if (!v10)
    {
      cf = 0;
      goto LABEL_15;
    }

    v9 = *(a1 + 16);
  }

  else
  {
    v10 = (a1 + 8);
  }

  v10 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
  cf = v10;
  if (!v10)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_15:
  v11 = CFPreferencesCopyAppValue(v7, v10);
  v12 = v11;
  valuePtr = 0;
  if (!v11)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_27;
  }

  v13 = CFGetTypeID(v11);
  if (v13 == CFBooleanGetTypeID())
  {
    v14 = CFBooleanGetValue(v12) == 0;
  }

  else
  {
    if (v13 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
    }

    else
    {
      if (v13 != CFStringGetTypeID())
      {
        v15 = 0;
        v16 = 0;
        goto LABEL_26;
      }

      CFStringGetCString(v12, buffer, 64, 0x600u);
      if (sscanf(buffer, "%d", &valuePtr) != 1)
      {
        v18 = buffer[0];
        if (buffer[0])
        {
          v19 = &buffer[1];
          do
          {
            *(v19 - 1) = __tolower(v18);
            v20 = *v19++;
            v18 = v20;
          }

          while (v20);
        }

        if (*buffer ^ 0x6F6E | buffer[2])
        {
          if (*buffer != 1936482662 || v27 != 101)
          {
            if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | v27))
            {
              v15 = 1;
              v16 = 1;
            }

            else
            {
              v15 = 0;
              v16 = valuePtr != 0;
            }

            goto LABEL_26;
          }
        }

        v16 = 0;
        goto LABEL_25;
      }
    }

    v14 = valuePtr == 0;
  }

  v16 = !v14;
LABEL_25:
  v15 = 1;
LABEL_26:
  CFRelease(v12);
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v15)
  {
    return v16 | 0x100u;
  }

  else
  {
    return 0;
  }
}

void sub_1DE661B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6619D0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_EmbeddedSettingsLite::read_float(uint64_t a1, const UInt8 *a2)
{
  v2 = a2;
  v23 = *MEMORY[0x1E69E9840];
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    v20 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    v20 = 0;
  }

  v9 = *(a1 + 31);
  if (v9 < 0)
  {
    v10 = *(a1 + 8);
    if (!v10)
    {
      cf = 0;
      goto LABEL_15;
    }

    v9 = *(a1 + 16);
  }

  else
  {
    v10 = (a1 + 8);
  }

  v10 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
  cf = v10;
  if (!v10)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v18, "Could not construct");
    __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_15:
  v11 = CFPreferencesCopyAppValue(v7, v10);
  v12 = v11;
  valuePtr = 0.0;
  if (!v11)
  {
    v14 = 0;
    v15 = 0.0;
    goto LABEL_23;
  }

  v13 = CFGetTypeID(v11);
  if (v13 == CFBooleanGetTypeID())
  {
    valuePtr = CFBooleanGetValue(v12);
  }

  else
  {
    if (v13 != CFNumberGetTypeID())
    {
      if (v13 == CFStringGetTypeID())
      {
        CFStringGetCString(v12, buffer, 64, 0x600u);
        v14 = sscanf(buffer, "%lf", &valuePtr) == 1;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_22;
    }

    CFNumberGetValue(v12, kCFNumberDoubleType, &valuePtr);
  }

  v14 = 1;
LABEL_22:
  v15 = valuePtr;
  CFRelease(v12);
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (!v14)
  {
    return 0;
  }

  *&v16 = v15;
  return v16 | 0x100000000;
}

void sub_1DE661E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE661DC4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_EmbeddedSettingsLite::read_int(uint64_t a1, const UInt8 *a2)
{
  v2 = a2;
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    v19 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    v19 = 0;
  }

  v9 = *(a1 + 31);
  if (v9 < 0)
  {
    v10 = *(a1 + 8);
    if (!v10)
    {
      cf = 0;
      goto LABEL_15;
    }

    v9 = *(a1 + 16);
  }

  else
  {
    v10 = (a1 + 8);
  }

  v10 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
  cf = v10;
  if (!v10)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "Could not construct");
    __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_15:
  v11 = CFPreferencesCopyAppValue(v7, v10);
  v12 = v11;
  valuePtr = 0;
  if (!v11)
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_23;
  }

  v13 = CFGetTypeID(v11);
  if (v13 == CFBooleanGetTypeID())
  {
    valuePtr = CFBooleanGetValue(v12);
  }

  else
  {
    if (v13 != CFNumberGetTypeID())
    {
      if (v13 == CFStringGetTypeID())
      {
        CFStringGetCString(v12, buffer, 64, 0x600u);
        v14 = sscanf(buffer, "%d", &valuePtr) == 1;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_22;
    }

    CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
  }

  v14 = 1;
LABEL_22:
  v15 = valuePtr;
  CFRelease(v12);
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v14)
  {
    return v15 | 0x100000000;
  }

  else
  {
    return 0;
  }
}

void sub_1DE66218C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6620CCLL);
  }

  _Unwind_Resume(exception_object);
}

void HALS_EmbeddedSettingsLite::~HALS_EmbeddedSettingsLite(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12C1730);
}

{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t check_posix_error(uint64_t result, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = result;
    v3 = *__error();
    v4 = std::generic_category();
    MEMORY[0x1E12C10C0](v8, v3, v4, v2);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = std::runtime_error::what(v8);
      *buf = 136315138;
      v10 = v5;
      _os_log_error_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = std::runtime_error::runtime_error(exception, v8);
    v7->__vftable = (MEMORY[0x1E69E5510] + 16);
    v7[1] = v8[1];
    __cxa_throw(v7, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  return result;
}

void sub_1DE662D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, char a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, std::runtime_error a28, char a29)
{
  if (a2)
  {

    v32 = __cxa_begin_catch(exception_object);
    v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v33 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v32);
    }

    v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = *v34;
      AMCP::Log::Scope::get_os_log_t(*v34);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    else
    {
      v36 = *v34;
      AMCP::Log::Scope::get_os_log_t(*v34);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = v30 - 176;
      *v37 = 136315394;
      *(v37 + 4) = "Core_Audio_Driver.mm";
      *(v37 + 12) = 1024;
      *(v37 + 14) = 855;
      _os_log_error_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_ERROR, "%32s:%-5d SetPropertyData: caught exception", (v30 - 176), 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6628B4);
  }

  _Unwind_Resume(exception_object);
}

void unpack_data_from_qualifier(uint64_t a1, unsigned int a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  if (a2)
  {
    if (a2 >= 0x13)
    {
      LODWORD(v5) = 4;
    }

    else
    {
      v5 = qword_1DE7962A0[a2] | qword_1DE796208[a2];
      if ((v5 & 0x100000000) == 0)
      {
        LODWORD(v5) = [v12 length];
      }
    }

    v22 = v5;
    v6 = [objc_alloc(MEMORY[0x1E695DF80]) initWithLength:{objc_msgSend(v12, "length")}];
    v7 = AMCP::HAL::unpack_property_data(v12, a2, &v22, [v6 mutableBytes]);
    if (v7)
    {
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
      }

      v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *v9;
        AMCP::Log::Scope::get_os_log_t(*v9);
        objc_claimAutoreleasedReturnValue();
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      else
      {
        v11 = *v9;
        AMCP::Log::Scope::get_os_log_t(*v9);
        objc_claimAutoreleasedReturnValue();
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v24 = "Core_Audio_Driver.mm";
        v25 = 1024;
        v26 = 676;
        v27 = 2080;
        v28 = "qualifier_error != kAudioHardwareNoError";
        _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to unpack qualifier", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v14, "Failed to unpack qualifier");
      std::runtime_error::runtime_error(&v15, &v14);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = -1;
      v15.__vftable = &unk_1F5992170;
      v16 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v15);
      v29 = "std::tuple<NSData *, UInt32, AMCP::HAL::HAL_Property_Type_Code> unpack_data_from_qualifier(AMCP::HAL::HAL_Property_Type_Code, NSData *__strong)";
      v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/Portal/Driver/Core_Audio_Driver.mm";
      v31 = 676;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
    }

    *a1 = v6;
    *(a1 + 8) = v22;
    *(a1 + 12) = a2;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void sub_1DE66371C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v17);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v19;
      AMCP::Log::Scope::get_os_log_t(*v19);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    else
    {
      v21 = *v19;
      AMCP::Log::Scope::get_os_log_t(*v19);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "Core_Audio_Driver.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 821;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d GetPropertyData: caught exception", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE663690);
  }

  _Unwind_Resume(a1);
}

void sub_1DE663A3C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "Core_Audio_Driver.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 772;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d GetPropertyDataSize: caught exception", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6639C4);
  }

  _Unwind_Resume(a1);
}

void sub_1DE663C3C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "Core_Audio_Driver.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 746;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d GetPropertyDataSize: caught exception", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE663BF4);
  }

  _Unwind_Resume(a1);
}

void sub_1DE663F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
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
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "Core_Audio_Driver.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 703;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d HasProperty: caught exception", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE663EF0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE66417C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int16 a10, __int16 a11, int a12, uint64_t a13)
{
  if (a2)
  {
    os_unfair_lock_unlock(v15);
    v17 = __cxa_begin_catch(exception_object);
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v17);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v19;
      AMCP::Log::Scope::get_os_log_t(*v19);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    else
    {
      v21 = *v19;
      AMCP::Log::Scope::get_os_log_t(*v19);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315906;
      *(&a9 + 4) = "Core_Audio_Driver.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 651;
      a11 = 1024;
      a12 = v14;
      LOWORD(a13) = 1024;
      *(&a13 + 2) = v13;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught expection while trying to stop io receiver for device id %u, client id %u", &a9, 0x1Eu);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE664124);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>>::__erase_unique<AMCP::Portal::IPC::io_messenger_id_t>(void *a1, unsigned int a2, unsigned int a3)
{
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::find<AMCP::Portal::IPC::io_messenger_id_t>(a1, a2, a3);
  if (v4)
  {
    v5 = a1[1];
    v6 = v4[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 %= *&v5;
      }
    }

    else
    {
      v6 &= *&v5 - 1;
    }

    v8 = *(*a1 + 8 * v6);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8 != v4);
    if (v9 == a1 + 2)
    {
      goto LABEL_20;
    }

    v10 = v9[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v6)
    {
LABEL_20:
      if (!*v4)
      {
        goto LABEL_21;
      }

      v11 = *(*v4 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_21:
        *(*a1 + 8 * v6) = 0;
      }
    }

    v12 = *v4;
    if (*v4)
    {
      v13 = *(v12 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }
      }

      else
      {
        v13 &= *&v5 - 1;
      }

      if (v13 != v6)
      {
        *(*a1 + 8 * v13) = v9;
        v12 = *v4;
      }
    }

    *v9 = v12;
    *v4 = 0;
    --a1[3];

    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, v4);
  }
}

void sub_1DE664528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int16 a10, __int16 a11, int a12, uint64_t a13)
{
  if (a2)
  {
    v15 = __cxa_begin_catch(exception_object);
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
      LODWORD(a9) = 136315906;
      *(&a9 + 4) = "Core_Audio_Driver.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 630;
      a11 = 1024;
      a12 = v14;
      LOWORD(a13) = 1024;
      *(&a13 + 2) = v13;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught expection while trying to start io receiver for device id %u, client id %u", &a9, 0x1Eu);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6644D0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE6647E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17)
{
  if (a2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v17);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v19;
      AMCP::Log::Scope::get_os_log_t(*v19);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    else
    {
      v21 = *v19;
      AMCP::Log::Scope::get_os_log_t(*v19);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      a15 = 4;
      strcpy(&__p, "....");
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "Core_Audio_Driver.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 586;
      WORD1(a17) = 2080;
      *(&a17 + 4) = &__p;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d start_io result failed: %s", &buf, 0x1Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE66479CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE665450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

unint64_t get_buffer_key(const dict *a1)
{
  v13 = a1;
  v14 = "buffer shared memory";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v15, &v13);
  v13 = a1;
  v14 = "buffer device id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v12, &v13);
  v2 = applesauce::xpc::dyn_cast_or_default(&v12, 0);
  v13 = a1;
  v14 = "buffer client id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v11, &v13);
  v3 = applesauce::xpc::dyn_cast_or_default(&v11, 0);
  v13 = a1;
  v14 = "buffer stream id";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v10, &v13);
  applesauce::xpc::dyn_cast_or_default(&v10, 0);
  v13 = a1;
  v14 = "buffer type";
  applesauce::xpc::dict::object_proxy::operator applesauce::xpc::object(&v9, &v13);
  applesauce::xpc::dyn_cast_or_default(&v9, 0);
  v4 = v9;
  v9 = 0;

  v5 = v10;
  v10 = 0;

  v6 = v11;
  v11 = 0;

  v7 = v12;
  v12 = 0;

  return v2 | (v3 << 32);
}

void std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 24)
  {
    v5 = *(i - 8);
    *(i - 8) = 0;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::construct[abi:ne200100]<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>,void,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = xpc_null_create();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
}

void sub_1DE665E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    if (*(&a9 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&a9 + 1));
    }

    v10 = __cxa_begin_catch(exception_object);
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v12;
      AMCP::Log::Scope::get_os_log_t(*v12);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v14 = *v12;
      AMCP::Log::Scope::get_os_log_t(*v12);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "Core_Audio_Driver.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 459;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d DestroyDevice: Caught exception", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE665DE4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE666000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
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
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "Core_Audio_Driver.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 442;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d DestroyDevice: Caught exception", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE665FB8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE666204(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {
    v11 = __cxa_begin_catch(a1);
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "Core_Audio_Driver.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 424;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d CreateDevice: Caught exception", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6661ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE6663F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
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
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "Core_Audio_Driver.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 395;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d RemoveDeviceClient: Caught exception", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6663A8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE6665E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
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
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "Core_Audio_Driver.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 366;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d AddDeviceClient: Caught exception", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE666598);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE6681F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, os_unfair_lock_t lock, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::runtime_error a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, void *a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::runtime_error a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a2)
  {
    AMCP::IO_Core::Device_Node_Factory::~Device_Node_Factory(&a53);
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    os_unfair_lock_unlock(lock);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE66787CLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::Portal::IPC::IO_Receiver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986CE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE6689B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {
    os_unfair_lock_unlock(v11);
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    v13 = __cxa_begin_catch(exception_object);
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
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "Core_Audio_Driver.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 254;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d AbortDeviceConfigurationChange: Caught exception", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE668904);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c89_ZTSKZ75__Core_Audio_Driver_abort_device_configuration_change_action_change_reply__E4__10(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c89_ZTSKZ75__Core_Audio_Driver_abort_device_configuration_change_action_change_reply__E4__10(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  result = _Block_copy(*(a2 + 64));
  *(a1 + 64) = result;
  return result;
}

void sub_1DE668DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2)
  {
    os_unfair_lock_unlock(v11);
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    v13 = __cxa_begin_catch(exception_object);
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
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "Core_Audio_Driver.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 207;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d PerformDeviceConfigurationChange: Caught exception", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE668D48);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c90_ZTSKZ77__Core_Audio_Driver_perform_device_configuration_change_action_change_reply__E3__9(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c90_ZTSKZ77__Core_Audio_Driver_perform_device_configuration_change_action_change_reply__E3__9(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  result = _Block_copy(*(a2 + 64));
  *(a1 + 64) = result;
  return result;
}

void sub_1DE6690CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {

    v11 = __cxa_begin_catch(exception_object);
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v15 = *v13;
      AMCP::Log::Scope::get_os_log_t(*v13);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "Core_Audio_Driver.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 161;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Initialize: Caught exception", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE66907CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE669584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v33 - 144);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
  std::runtime_error::~runtime_error(&a17);
  if (v32)
  {
    __cxa_free_exception(v31);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  os_unfair_lock_unlock(v30);
  _Unwind_Resume(a1);
}

void sub_1DE669874(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = Core_Audio_Driver;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 24);
  v1 = *(a1 + 24);
  if (v1)
  {
    std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>::__base_destruct_at_end[abi:ne200100](a1 + 24, v1);
    v3 = *v2;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<std::vector<std::pair<AMCP::Portal::IPC::shared_buffer_info_t,applesauce::xpc::dict>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<std::unordered_map<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<std::unordered_map<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Receiver>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986BF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<std::map<unsigned long long,void *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986BA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_Control::GetRangeChangedAddresses(HALS_Control *this, CAPropertyAddressList *a2, const AudioObjectPropertyAddress *a3)
{
  v3 = *(this + 5);
  v4 = *(this + 6);
  if (v3 <= 1936028006)
  {
    v5 = v3 == 1818588780;
    v6 = 1886544237;
  }

  else
  {
    v5 = v3 == 1936028007 || v3 == 1937072758;
    v6 = 1986817381;
  }

  if (v5 || v3 == v6)
  {
    goto LABEL_12;
  }

  if (v3 == v4)
  {
    goto LABEL_16;
  }

  if (v4 <= 1936028006)
  {
    if (v4 == 1818588780)
    {
LABEL_12:
      v8 = 0x676C6F626C636472;
LABEL_13:
      *&v12.mSelector = v8;
      v12.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v12, a3);
      return;
    }

    v10 = 1886544237;
  }

  else
  {
    if (v4 == 1936028007 || v4 == 1986817381)
    {
      goto LABEL_12;
    }

    v10 = 1937072758;
  }

  if (v4 == v10)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (v3 > 1751740517)
  {
    if (v3 == 1751740518 || v3 == 1852601964)
    {
      goto LABEL_28;
    }

    v9 = 1936483188;
  }

  else
  {
    if (v3 == 1668047723 || v3 == 1684370292)
    {
      goto LABEL_28;
    }

    v9 = 1685287523;
  }

  if (v3 == v9)
  {
    goto LABEL_28;
  }

  if (v3 != v4)
  {
    if (v4 > 1751740517)
    {
      if (v4 == 1751740518 || v4 == 1936483188)
      {
        goto LABEL_28;
      }

      v11 = 1852601964;
    }

    else
    {
      if (v4 == 1668047723 || v4 == 1684370292)
      {
        goto LABEL_28;
      }

      v11 = 1685287523;
    }

    if (v4 == v11)
    {
LABEL_28:
      v8 = 0x676C6F6273636169;
      goto LABEL_13;
    }

    if (v3 != v4 && v3 != 1936744814 && v4 != 1936744814)
    {
      if (v3 == 1651273579 || v3 == 1936028002 || v4 == 1651273579 || v4 == 1936028002)
      {
        goto LABEL_38;
      }

      return;
    }

LABEL_55:
    v8 = 0x676C6F6273706363;
    goto LABEL_13;
  }

  if (v3 == 1936744814 || v3 != v4)
  {
    goto LABEL_55;
  }

  if (v3 == 1936028002 || v3 == 1651273579)
  {
LABEL_38:
    v8 = 0x676C6F62626C6B64;
    goto LABEL_13;
  }
}

void HALS_Control::GetValueChangedAddresses(HALS_Control *this, CAPropertyAddressList *a2, const AudioObjectPropertyAddress *a3)
{
  v4 = *(this + 5);
  v5 = *(this + 6);
  if (v4 <= 1936028006)
  {
    v6 = v4 == 1818588780;
    v7 = 1886544237;
  }

  else
  {
    v6 = v4 == 1936028007 || v4 == 1937072758;
    v7 = 1986817381;
  }

  if (v6 || v4 == v7)
  {
    goto LABEL_12;
  }

  if (v4 == v5)
  {
    if (!HALB_Info::IsSubClass(*(this + 5), 1953458028) && v4 == v5)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  if (v5 <= 1936028006)
  {
    if (v5 == 1818588780)
    {
LABEL_12:
      *&v15.mSelector = 0x676C6F626C637376;
      v15.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v15, a3);
      v10 = 0x676C6F626C636476;
LABEL_13:
      *&v15.mSelector = v10;
      v15.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v15, v9);
      return;
    }

    v12 = 1886544237;
  }

  else
  {
    if (v5 == 1936028007 || v5 == 1986817381)
    {
      goto LABEL_12;
    }

    v12 = 1937072758;
  }

  if (v5 == v12)
  {
    goto LABEL_12;
  }

  IsSubClass = HALB_Info::IsSubClass(*(this + 5), 1953458028);
  if (v4 == v5 || IsSubClass || HALB_Info::IsSubClass(v5, 1953458028))
  {
LABEL_32:
    v10 = 0x676C6F626263766CLL;
    goto LABEL_13;
  }

LABEL_18:
  if (v4 > 1751740517)
  {
    if (v4 == 1751740518 || v4 == 1852601964)
    {
      goto LABEL_37;
    }

    v11 = 1936483188;
  }

  else
  {
    if (v4 == 1668047723 || v4 == 1684370292)
    {
      goto LABEL_37;
    }

    v11 = 1685287523;
  }

  if (v4 == v11)
  {
    goto LABEL_37;
  }

  if (v4 != v5)
  {
    if (v5 > 1751740517)
    {
      if (v5 == 1751740518 || v5 == 1936483188)
      {
        goto LABEL_37;
      }

      v14 = 1852601964;
    }

    else
    {
      if (v5 == 1668047723 || v5 == 1684370292)
      {
        goto LABEL_37;
      }

      v14 = 1685287523;
    }

    if (v5 == v14)
    {
LABEL_37:
      v10 = 0x676C6F6273636369;
      goto LABEL_13;
    }

    if (v4 != v5 && v4 != 1936744814 && v5 != 1936744814)
    {
      if (v4 == 1651273579 || v4 == 1936028002 || v5 == 1651273579 || v5 == 1936028002)
      {
        goto LABEL_43;
      }

      return;
    }

LABEL_60:
    v10 = 0x676C6F6273706376;
    goto LABEL_13;
  }

  if (v4 == 1936744814 || v4 != v5)
  {
    goto LABEL_60;
  }

  if (v4 == 1936028002 || v4 == 1651273579)
  {
LABEL_43:
    v10 = 0x676C6F62626C6B62;
    goto LABEL_13;
  }
}

HALS_Object *HALS_Control::SetPropertyData(HALS_Object *result, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, HALS_Client *a8)
{
  v16 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1818457189)
  {
    if (mSelector <= 1818453109)
    {
      if (mSelector != 1650685548)
      {
        if (mSelector != 1651272546)
        {
LABEL_33:
          HALS_Object::SetPropertyData(result, a2, a3, a4, a5, a6, a7, a8);
        }

        return result;
      }

      if (a4 > 3)
      {
        return result;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "HALS_Control.cpp";
        v14 = 1024;
        v15 = 617;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioBooleanControlPropertyValue";
        goto LABEL_36;
      }

LABEL_37:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    if (mSelector == 1818453110)
    {
      if (a4 > 3)
      {
        return result;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "HALS_Control.cpp";
        v14 = 1024;
        v15 = 603;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelValue";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (mSelector != 1818456950)
    {
      goto LABEL_33;
    }

    if (a4 > 3)
    {
      return result;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v12 = 136315394;
    v13 = "HALS_Control.cpp";
    v14 = 1024;
    v15 = 596;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioLevelControlPropertyScalarValue";
    goto LABEL_36;
  }

  if (mSelector <= 1935962741)
  {
    if (mSelector == 1818457190)
    {
      if (a4 > 3)
      {
        return result;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "HALS_Control.cpp";
        v14 = 1024;
        v15 = 610;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelsToScalarTransferFunction";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (mSelector != 1935893353)
    {
      goto LABEL_33;
    }

    if (a4 > 3)
    {
      return result;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v12 = 136315394;
    v13 = "HALS_Control.cpp";
    v14 = 1024;
    v15 = 624;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioSelectorControlPropertyCurrentItem";
LABEL_36:
    _os_log_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0x12u);
    goto LABEL_37;
  }

  if (mSelector == 1936745334)
  {
    if (a4 > 3)
    {
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "HALS_Control.cpp";
      v14 = 1024;
      v15 = 631;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioStereoPanControlPropertyValue";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (mSelector != 1935962742)
  {
    goto LABEL_33;
  }

  if (a4 <= 3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v12 = 136315394;
    v13 = "HALS_Control.cpp";
    v14 = 1024;
    v15 = 589;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "%25s:%-5d  HALS_Control::SetPropertyData: bad property data size for kAudioSliderControlPropertyValue";
    goto LABEL_36;
  }

  return result;
}

uint64_t HALS_Control::GetPropertyData(uint64_t this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, unsigned int a7, const void *a8, HALS_Client *a9)
{
  v19 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1818456949)
  {
    if (mSelector <= 1935894893)
    {
      if (mSelector <= 1852400498)
      {
        if (mSelector == 1818456950)
        {
          if (a4 <= 3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_98;
            }

            v15 = 136315394;
            v16 = "HALS_Control.cpp";
            v17 = 1024;
            v18 = 443;
            v10 = MEMORY[0x1E69E9C10];
            v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyScalarValue";
            goto LABEL_97;
          }
        }

        else
        {
          if (mSelector != 1818457190)
          {
            goto LABEL_80;
          }

          if (a4 <= 3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_98;
            }

            v15 = 136315394;
            v16 = "HALS_Control.cpp";
            v17 = 1024;
            v18 = 489;
            v10 = MEMORY[0x1E69E9C10];
            v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelsToScalarTransferFunction";
            goto LABEL_97;
          }
        }

        goto LABEL_74;
      }

      if (mSelector != 1852400499)
      {
        if (mSelector == 1935892841)
        {
          goto LABEL_34;
        }

        if (mSelector != 1935893353)
        {
          goto LABEL_80;
        }

        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_98;
          }

          v15 = 136315394;
          v16 = "HALS_Control.cpp";
          v17 = 1024;
          v18 = 507;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioSelectorControlPropertyCurrentItem";
          goto LABEL_97;
        }

        goto LABEL_74;
      }

      goto LABEL_49;
    }

    if (mSelector <= 1935962741)
    {
      if (mSelector == 1935894894)
      {
LABEL_49:
        if (a4 <= 7)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_98;
          }

          v15 = 136315394;
          v16 = "HALS_Control.cpp";
          v17 = 1024;
          v18 = 523;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioSelectorControlPropertyItemName";
          goto LABEL_97;
        }

        if (a7 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_98;
          }

          v15 = 136315394;
          v16 = "HALS_Control.cpp";
          v17 = 1024;
          v18 = 524;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad qualifier data size for kAudioSelectorControlPropertyItemName";
          goto LABEL_97;
        }

        goto LABEL_63;
      }

      if (mSelector != 1935962738)
      {
        goto LABEL_80;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_98;
        }

        v15 = 136315394;
        v16 = "HALS_Control.cpp";
        v17 = 1024;
        v18 = 433;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioSliderControlPropertyRange";
        goto LABEL_97;
      }
    }

    else
    {
      if (mSelector == 1935962742)
      {
        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_98;
          }

          v15 = 136315394;
          v16 = "HALS_Control.cpp";
          v17 = 1024;
          v18 = 424;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioSliderControlPropertyValue";
          goto LABEL_97;
        }

        goto LABEL_74;
      }

      if (mSelector != 1936745315)
      {
        if (mSelector != 1936745334)
        {
          goto LABEL_80;
        }

        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_98;
          }

          v15 = 136315394;
          v16 = "HALS_Control.cpp";
          v17 = 1024;
          v18 = 542;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioStereoPanControlPropertyValue";
          goto LABEL_97;
        }

        goto LABEL_74;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_98;
        }

        v15 = 136315394;
        v16 = "HALS_Control.cpp";
        v17 = 1024;
        v18 = 551;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioStereoPanControlPropertyPanningChannels";
        goto LABEL_97;
      }
    }

LABEL_63:
    *a6 = 0;
    v12 = 8;
LABEL_76:
    *a5 = v12;
    return this;
  }

  if (mSelector > 1668506479)
  {
    if (mSelector <= 1818453106)
    {
      if (mSelector != 1668506480)
      {
        if (mSelector == 1818453106)
        {
          if (a4 <= 0xF)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_98;
            }

            v15 = 136315394;
            v16 = "HALS_Control.cpp";
            v17 = 1024;
            v18 = 461;
            v10 = MEMORY[0x1E69E9C10];
            v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelRange";
            goto LABEL_97;
          }

          *a6 = 0;
          a6[1] = 0;
          v12 = 16;
          goto LABEL_76;
        }

        goto LABEL_80;
      }

      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_98;
        }

        v15 = 136315394;
        v16 = "HALS_Control.cpp";
        v17 = 1024;
        v18 = 406;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioControlPropertyScope";
        goto LABEL_97;
      }

      v13 = *(this + 48);
LABEL_79:
      *a6 = v13;
      goto LABEL_75;
    }

    switch(mSelector)
    {
      case 1818453107:
        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_98;
          }

          v15 = 136315394;
          v16 = "HALS_Control.cpp";
          v17 = 1024;
          v18 = 480;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyConvertDecibelsToScalar";
          goto LABEL_97;
        }

        break;
      case 1818453110:
        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_98;
          }

          v15 = 136315394;
          v16 = "HALS_Control.cpp";
          v17 = 1024;
          v18 = 452;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyDecibelValue";
          goto LABEL_97;
        }

        break;
      case 1818456932:
        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_98;
          }

          v15 = 136315394;
          v16 = "HALS_Control.cpp";
          v17 = 1024;
          v18 = 471;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioLevelControlPropertyConvertScalarToDecibels";
          goto LABEL_97;
        }

        break;
      default:
        goto LABEL_80;
    }

    goto LABEL_74;
  }

  if (mSelector <= 1651272547)
  {
    if (mSelector != 1650685548)
    {
      if (mSelector != 1651272546)
      {
        goto LABEL_80;
      }

LABEL_34:
      *a5 = 0;
      return this;
    }

    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_98;
      }

      v15 = 136315394;
      v16 = "HALS_Control.cpp";
      v17 = 1024;
      v18 = 498;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioBooleanControlPropertyValue";
      goto LABEL_97;
    }

LABEL_74:
    *a6 = 0;
LABEL_75:
    v12 = 4;
    goto LABEL_76;
  }

  switch(mSelector)
  {
    case 1651272548:
      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_98;
        }

        v15 = 136315394;
        v16 = "HALS_Control.cpp";
        v17 = 1024;
        v18 = 567;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioBlockControlPropertyDescriptor";
        goto LABEL_97;
      }

      if (a7 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_98;
        }

        v15 = 136315394;
        v16 = "HALS_Control.cpp";
        v17 = 1024;
        v18 = 568;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad qualifier data size for kAudioBlockControlPropertyDescriptor";
LABEL_97:
        _os_log_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, v11, &v15, 0x12u);
LABEL_98:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      goto LABEL_63;
    case 1667591277:
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_98;
        }

        v15 = 136315394;
        v16 = "HALS_Control.cpp";
        v17 = 1024;
        v18 = 415;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioControlPropertyElement";
        goto LABEL_97;
      }

      v13 = *(this + 52);
      goto LABEL_79;
    case 1668049771:
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_98;
        }

        v15 = 136315394;
        v16 = "HALS_Control.cpp";
        v17 = 1024;
        v18 = 533;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioSelectorControlPropertyItemKind";
        goto LABEL_97;
      }

      goto LABEL_74;
  }

LABEL_80:

  return HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
}

uint64_t HALS_Control::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 4;
  if (*a3 > 1818456949)
  {
    if (v3 > 1935894893)
    {
      if (v3 <= 1935962741)
      {
        if (v3 != 1935894894 && v3 != 1935962738)
        {
          return HALS_Object::GetPropertyDataSize(4, a2, a3);
        }
      }

      else
      {
        if (v3 == 1935962742)
        {
          return result;
        }

        if (v3 != 1936745315)
        {
          v5 = 1936745334;
          goto LABEL_26;
        }
      }

      return 8;
    }

    if (v3 > 1852400498)
    {
      if (v3 == 1852400499)
      {
        return 8;
      }

      if (v3 != 1935892841)
      {
        v5 = 1935893353;
        goto LABEL_26;
      }

      return 0;
    }

    if (v3 == 1818456950)
    {
      return result;
    }

    v6 = 29798;
LABEL_25:
    v5 = v6 | 0x6C630000;
    goto LABEL_26;
  }

  if (v3 <= 1668506479)
  {
    if (v3 > 1651272547)
    {
      if (v3 != 1651272548)
      {
        if (v3 == 1667591277)
        {
          return result;
        }

        v5 = 1668049771;
LABEL_26:
        if (v3 == v5)
        {
          return result;
        }

        return HALS_Object::GetPropertyDataSize(4, a2, a3);
      }

      return 8;
    }

    if (v3 == 1650685548)
    {
      return result;
    }

    if (v3 != 1651272546)
    {
      return HALS_Object::GetPropertyDataSize(4, a2, a3);
    }

    return 0;
  }

  if (v3 <= 1818453106)
  {
    if (v3 != 1668506480)
    {
      if (v3 == 1818453106)
      {
        return 16;
      }

      return HALS_Object::GetPropertyDataSize(4, a2, a3);
    }
  }

  else if (v3 != 1818453107 && v3 != 1818453110)
  {
    v6 = 29540;
    goto LABEL_25;
  }

  return result;
}

uint64_t HALS_Control::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  v4 = *a3;
  if (*a3 > 1818456949)
  {
    if (v4 > 1935894893)
    {
      if (v4 <= 1935962741)
      {
        v5 = v4 == 1935894894;
        v6 = 1935962738;
        goto LABEL_34;
      }

      if (v4 == 1936745334)
      {
        return 1;
      }

      if (v4 == 1936745315)
      {
        return result;
      }

      v10 = 1935962742;
    }

    else if (v4 <= 1852400498)
    {
      if (v4 == 1818456950)
      {
        return 1;
      }

      v10 = 1818457190;
    }

    else
    {
      if (v4 == 1852400499 || v4 == 1935892841)
      {
        return result;
      }

      v10 = 1935893353;
    }

LABEL_39:
    if (v4 == v10)
    {
      return 1;
    }

    return HALS_Object::IsPropertySettable(0, a2, a3);
  }

  if (v4 > 1668506479)
  {
    if (v4 <= 1818453109)
    {
      if ((v4 - 1818453106) >= 2 && v4 != 1668506480)
      {
        return HALS_Object::IsPropertySettable(0, a2, a3);
      }

      return result;
    }

    if (v4 != 1818453110)
    {
      if (v4 == 1818456932)
      {
        return result;
      }

      return HALS_Object::IsPropertySettable(0, a2, a3);
    }

    return 1;
  }

  if (v4 <= 1651272547)
  {
    if (v4 != 1650685548)
    {
      v10 = 1651272546;
      goto LABEL_39;
    }

    return 1;
  }

  v5 = v4 == 1651272548 || v4 == 1667591277;
  v6 = 1668049771;
LABEL_34:
  if (!v5 && v4 != v6)
  {
    return HALS_Object::IsPropertySettable(0, a2, a3);
  }

  return result;
}

uint64_t HALS_Control::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  result = 1;
  if (*a3 > 1818456949)
  {
    if (v4 > 1935893352)
    {
      if (v4 > 1935962741)
      {
        if (v4 <= 1936745333)
        {
          if (v4 != 1935962742)
          {
            if (v4 != 1936745315)
            {
              return 0;
            }

            goto LABEL_87;
          }

LABEL_41:
          v13 = *(a1 + 20);
          v12 = *(a1 + 24);
          v14 = v13 == v12;
          v15 = 1936483442;
LABEL_88:
          if (v13 == v15)
          {
            v14 = 1;
          }

          v25 = v13 != v12 || v13 == v15;
          v26 = v12 == v15;
          if (v14)
          {
            return v25;
          }

          else
          {
            return v26;
          }
        }

        if (v4 == 1936745334)
        {
LABEL_87:
          v13 = *(a1 + 20);
          v12 = *(a1 + 24);
          v14 = v13 == v12;
          v15 = 1936744814;
          goto LABEL_88;
        }

        v8 = 1937007734;
        goto LABEL_65;
      }

      if (v4 != 1935893353 && v4 != 1935894894)
      {
        if (v4 == 1935962738)
        {
          goto LABEL_41;
        }

        return 0;
      }

LABEL_42:
      v16 = *(a1 + 20);
      v9 = *(a1 + 24);
      if (v16 > 1751740517)
      {
        if (v16 == 1751740518 || v16 == 1852601964)
        {
          return result;
        }

        v17 = 1936483188;
      }

      else
      {
        if (v16 == 1668047723 || v16 == 1684370292)
        {
          return result;
        }

        v17 = 1685287523;
      }

      if (v16 == v17)
      {
        return result;
      }

      result = v16 != v9;
      if (v16 == v9)
      {
        return result;
      }

      result = 0;
      if (v9 > 1751740517)
      {
        if (v9 == 1751740518 || v9 == 1936483188)
        {
          return 1;
        }

        v18 = 1852601964;
      }

      else
      {
        if (v9 == 1668047723 || v9 == 1684370292)
        {
          return 1;
        }

        v18 = 1685287523;
      }

      goto LABEL_110;
    }

    if (v4 > 1869638758)
    {
      if (v4 == 1869638759 || v4 == 1870098020)
      {
        return result;
      }

      v7 = 1935892841;
      goto LABEL_36;
    }

    if (v4 != 1818456950 && v4 != 1818457190)
    {
      v7 = 1852400499;
LABEL_36:
      if (v4 != v7)
      {
        return 0;
      }

      goto LABEL_42;
    }

    goto LABEL_29;
  }

  if (v4 > 1668049770)
  {
    if (v4 > 1818453106)
    {
      if (v4 == 1818453107 || v4 == 1818453110)
      {
        goto LABEL_29;
      }

      v6 = 29540;
    }

    else
    {
      if (v4 == 1668049771)
      {
        goto LABEL_42;
      }

      if (v4 == 1668506480)
      {
        return result;
      }

      v6 = 25714;
    }

    if (v4 != (v6 | 0x6C630000))
    {
      return 0;
    }

LABEL_29:
    v10 = *(a1 + 20);
    v9 = *(a1 + 24);
    if (v10 <= 1936028006)
    {
      if (v10 == 1818588780)
      {
        return result;
      }

      v11 = 1886544237;
    }

    else
    {
      if (v10 == 1936028007 || v10 == 1937072758)
      {
        return result;
      }

      v11 = 1986817381;
    }

    if (v10 == v11)
    {
      return result;
    }

    result = v10 != v9;
    if (v10 == v9)
    {
      return result;
    }

    result = 0;
    if (v9 <= 1936028006)
    {
      if (v9 == 1818588780)
      {
        return 1;
      }

      v18 = 1886544237;
    }

    else
    {
      if (v9 == 1936028007 || v9 == 1986817381)
      {
        return 1;
      }

      v18 = 1937072758;
    }

LABEL_110:
    if (v9 != v18)
    {
      return result;
    }

    return 1;
  }

  if (v4 > 1651272547)
  {
    if (v4 != 1651272548)
    {
      if (v4 == 1667591277)
      {
        return result;
      }

      v8 = 1668047219;
LABEL_65:
      if (v4 == v8)
      {
        return result;
      }

      return 0;
    }

    goto LABEL_67;
  }

  if (v4 == 1650682995)
  {
    return result;
  }

  if (v4 != 1650685548)
  {
    if (v4 != 1651272546)
    {
      return 0;
    }

LABEL_67:
    v20 = *(a1 + 20);
    v19 = *(a1 + 24);
    v22 = v20 == 1651273579 || v20 == 1936028002;
    result = v20 != v19 || v22;
    if (v20 != v19 && v20 != 1651273579)
    {
      v24 = v19 == 1651273579 || v19 == 1936028002;
      if (v20 == 1936028002)
      {
        return result;
      }

      else
      {
        return v24;
      }
    }

    return result;
  }

  v28 = *(a1 + 20);
  v27 = *(a1 + 24);
  LODWORD(result) = HALB_Info::IsSubClass(v28, 1953458028);
  v29 = result;
  if (v28 == v27)
  {
    result = result;
  }

  else
  {
    result = 1;
  }

  if (v28 != v27 && (v29 & 1) == 0)
  {

    return HALB_Info::IsSubClass(v27, 1953458028);
  }

  return result;
}

void HALS_Control::HALS_Control(HALS_Object *a1, uint64_t a2, int a3, int a4, HALS_Object *a5, int a6, int a7)
{
  v9 = a5;
  HALS_Object::HALS_Object(a1, a3, a4, a2, a5);
  *v11 = &unk_1F5986D30;
  *(v11 + 48) = v9;
  *(v11 + 52) = a6;
  *(v11 + 56) = *(a2 + 16);
  *(v11 + 60) = a7;
  operator new();
}

void HALS_Control::~HALS_Control(HALS_Control *this)
{
  *this = &unk_1F5986D30;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  HALS_Object::~HALS_Object(this);
}

void HALS_MetaSubTap::SetPropertyData(HALS_MetaSubTap *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v40 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8, a5, a6, a7) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v14 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  mSelector = a3->mSelector;
  if (a3->mSelector > 1685218931)
  {
    if (mSelector == 1685218932)
    {
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubTap.cpp";
        v38 = 1024;
        v39 = 226;
        v30 = MEMORY[0x1E69E9C10];
        v31 = "%25s:%-5d  HALS_MetaSubTap::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensation";
        goto LABEL_37;
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 0x40000000;
      v35[2] = ___ZN15HALS_MetaSubTap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_9;
      v35[3] = &__block_descriptor_tmp_10_16220;
      v35[4] = this;
      v35[5] = a5;
      v25 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v25, v35);
      v26 = *(this + 4);
      if (a8)
      {
        v27 = *(a8 + 4);
      }

      else
      {
        v27 = 0;
      }

      strcpy(&buf, "tfrdbolg");
      BYTE1(buf.mElement) = 0;
      HIWORD(buf.mElement) = 0;
      HALS_Object::PropertiesChanged(this, v26, v27, 1, &buf);
    }

    else
    {
      if (mSelector != 2020373603)
      {
        goto LABEL_27;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubTap.cpp";
        v38 = 1024;
        v39 = 213;
        v30 = MEMORY[0x1E69E9C10];
        v31 = "%25s:%-5d  HALS_MetaSubTap::_SetPropertyData: bad property data size for kAudioSubDevicePropertyExtraLatency";
        goto LABEL_37;
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 0x40000000;
      v36[2] = ___ZN15HALS_MetaSubTap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
      v36[3] = &__block_descriptor_tmp_8_16218;
      v36[4] = this;
      v36[5] = a3;
      v36[6] = a5;
      v19 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v19, v36);
      v20 = *(this + 4);
      if (a8)
      {
        v21 = *(a8 + 4);
      }

      else
      {
        v21 = 0;
      }

      mScope = a3->mScope;
      buf.mSelector = 2020373603;
      *&buf.mScope = mScope;
      HALS_Object::PropertiesChanged(this, v20, v21, 1, &buf);
    }
  }

  else
  {
    if (mSelector != 1685218913)
    {
      if (mSelector != 1685218929)
      {
        goto LABEL_27;
      }

      if (a4 > 3)
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 0x40000000;
        v33[2] = ___ZN15HALS_MetaSubTap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_13;
        v33[3] = &__block_descriptor_tmp_14_16224;
        v33[4] = this;
        v33[5] = a5;
        v16 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v16, v33);
        v17 = *(this + 4);
        if (a8)
        {
          v18 = *(a8 + 4);
        }

        else
        {
          v18 = 0;
        }

        strcpy(&buf, "qfrdbolg");
        BYTE1(buf.mElement) = 0;
        HIWORD(buf.mElement) = 0;
        HALS_Object::PropertiesChanged(this, v17, v18, 1, &buf);
        goto LABEL_27;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_38:
        v32 = __cxa_allocate_exception(0x10uLL);
        *v32 = off_1F5991DD8;
        v32[2] = 561211770;
      }

      buf.mSelector = 136315394;
      *&buf.mScope = "HALS_MetaSubTap.cpp";
      v38 = 1024;
      v39 = 252;
      v30 = MEMORY[0x1E69E9C10];
      v31 = "%25s:%-5d  HALS_MetaSubTap::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationQuality";
LABEL_37:
      _os_log_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, v31, &buf, 0x12u);
      goto LABEL_38;
    }

    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      buf.mSelector = 136315394;
      *&buf.mScope = "HALS_MetaSubTap.cpp";
      v38 = 1024;
      v39 = 239;
      v30 = MEMORY[0x1E69E9C10];
      v31 = "%25s:%-5d  HALS_MetaSubTap::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationAlgorithm";
      goto LABEL_37;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v34[2] = ___ZN15HALS_MetaSubTap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_11;
    v34[3] = &__block_descriptor_tmp_12_16222;
    v34[4] = this;
    v34[5] = a5;
    v22 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v22, v34);
    v23 = *(this + 4);
    if (a8)
    {
      v24 = *(a8 + 4);
    }

    else
    {
      v24 = 0;
    }

    strcpy(&buf, "afrdbolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    HALS_Object::PropertiesChanged(this, v23, v24, 1, &buf);
  }

LABEL_27:
  HALS_ObjectMap::ReleaseObject(v14, v13);
}

void sub_1DE66C25C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_MetaSubTap::GetPropertyData(HALS_MetaSubTap *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, void *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v30 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9, a5, a6, a7, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v19 = 2003332927;
    goto LABEL_29;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1685218931)
  {
    if (mSelector == 1685218913)
    {
      if (a4 > 3)
      {
        v15 = v23;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 0x40000000;
        v23[2] = ___ZNK15HALS_MetaSubTap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_4;
        v23[3] = &__block_descriptor_tmp_5_16231;
        v23[4] = this;
        v23[5] = a6;
        goto LABEL_15;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 136315394;
      v27 = "HALS_MetaSubTap.cpp";
      v28 = 1024;
      v29 = 179;
      v20 = MEMORY[0x1E69E9C10];
      v21 = "%25s:%-5d  HALS_MetaSubTap::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationAlgorithm";
    }

    else
    {
      if (mSelector != 1685218929)
      {
        return;
      }

      if (a4 > 3)
      {
        v15 = v22;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 0x40000000;
        v22[2] = ___ZNK15HALS_MetaSubTap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_6;
        v22[3] = &__block_descriptor_tmp_7_16233;
        v22[4] = this;
        v22[5] = a6;
LABEL_15:
        v16 = 4;
        goto LABEL_16;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 136315394;
      v27 = "HALS_MetaSubTap.cpp";
      v28 = 1024;
      v29 = 188;
      v20 = MEMORY[0x1E69E9C10];
      v21 = "%25s:%-5d  HALS_MetaSubTap::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationQuality";
    }

    goto LABEL_27;
  }

  if (mSelector == 1685218932)
  {
    if (a4 > 3)
    {
      v15 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___ZNK15HALS_MetaSubTap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
      v24[3] = &__block_descriptor_tmp_3_16229;
      v24[4] = this;
      v24[5] = a6;
      goto LABEL_15;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v27 = "HALS_MetaSubTap.cpp";
    v28 = 1024;
    v29 = 170;
    v20 = MEMORY[0x1E69E9C10];
    v21 = "%25s:%-5d  HALS_MetaSubTap::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensation";
    goto LABEL_27;
  }

  if (mSelector != 2020373603)
  {
    return;
  }

  if (a4 <= 7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_28:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v19 = 561211770;
LABEL_29:
      exception[2] = v19;
    }

    *buf = 136315394;
    v27 = "HALS_MetaSubTap.cpp";
    v28 = 1024;
    v29 = 161;
    v20 = MEMORY[0x1E69E9C10];
    v21 = "%25s:%-5d  HALS_MetaSubTap::_GetPropertyData: bad property data size for kAudioSubDevicePropertyExtraLatency";
LABEL_27:
    _os_log_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x12u);
    goto LABEL_28;
  }

  v15 = v25;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 0x40000000;
  v25[2] = ___ZNK15HALS_MetaSubTap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
  v25[3] = &__block_descriptor_tmp_16227;
  v25[4] = this;
  v25[5] = a6;
  v25[6] = a3;
  v16 = 8;
LABEL_16:
  v17 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v17, v15);
  *a5 = v16;
}

double ___ZNK15HALS_MetaSubTap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 4 * (**(a1 + 48) == 1768845428) + 80);
  result = *&a2;
  **(a1 + 40) = result;
  return result;
}

uint64_t HALS_MetaSubTap::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((*(*a1 + 96))(a1, a2, a3, a6, a5) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v7 = *a3;
  if (*a3 == 2020373603)
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == 1685218932)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if (v7 == 1685218929)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  if (v7 == 1685218913)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  if (v7 <= 1685218931)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

uint64_t HALS_MetaSubTap::IsPropertySettable(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (((*(*a1 + 96))(a1, a2) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  result = 1;
  if (((*a3 - 1685218913) > 0x13 || ((1 << (*a3 - 97)) & 0x90001) == 0) && *a3 != 2020373603)
  {
    return 0;
  }

  return result;
}

uint64_t HALS_MetaSubTap::HasProperty(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  result = (*(*a1 + 184))(a1, a3, a4);
  if (result)
  {
    v6 = *a3;
    if (*a3 > 1685218931)
    {
      if (v6 == 1685218932)
      {
        return 1;
      }

      else if (v6 == 2020373603)
      {
        v7 = a3[1];
        return v7 == 1768845428 || v7 == 1869968496;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return v6 == 1685218913 || v6 == 1685218929;
    }
  }

  return result;
}

void HALS_MetaSubTap::~HALS_MetaSubTap(HALS_MetaSubTap *this)
{
  *this = &unk_1F5986E30;
  CACFString::~CACFString((this + 56));
  HALS_Object::~HALS_Object(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5986E30;
  CACFString::~CACFString((this + 56));

  HALS_Object::~HALS_Object(this);
}

uint64_t HALS_PDPControl::SetPropertyData(HALS_PDPControl *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, void *a5, unsigned int a6, const void *a7, HALS_Client *a8)
{
  v30 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (HALS_ObjectMap::CopyObjectByObjectID(*(this + 14)))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "HALS_PDPControl.cpp";
      v28 = 1024;
      v29 = 146;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PDPControl::SetPropertyData: owning device is missing", buf, 0x12u);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    v22 = 560947818;
LABEL_26:
    *v21 = off_1F5991DD8;
    v21[2] = v22;
  }

  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v13))
  {
    v14 = atomic_load(0xA0);
    v15 = a8 ? *(a8 + 60) : getpid();
    if (v14 != -1 && v14 != v15)
    {
      v21 = __cxa_allocate_exception(0x10uLL);
      v22 = 560492391;
      goto LABEL_26;
    }
  }

  v16 = *(this + 5);
  if (v16 == 1986817381 || v16 == 1836414053)
  {
    operator new();
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    if (mSelector == 1937007734)
    {
      goto LABEL_18;
    }

    v18 = 1869638759;
  }

  else
  {
    if (mSelector == 1650682995)
    {
      goto LABEL_18;
    }

    v18 = 1668047219;
  }

  if (mSelector != v18)
  {
    HALS_PDPUCPlugIn::ObjectSetPropertyData(*(*(this + 9) + 80), a2, a3, a6, a7, a4, a5);
    return pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  }

LABEL_18:
  kdebug_trace();
  HALS_Control::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
  kdebug_trace();
  return pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
}

void sub_1DE66CF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, HALS_ObjectMap *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete(v22);
  HALS_ObjectMap::ReleaseObject(a12, v24);
  _Unwind_Resume(a1);
}

uint64_t HALS_PDPControl::GetPropertyData(HALS_PDPControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, void *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1852400498)
  {
    v18 = mSelector == 1650682995;
    v19 = 1668047219;
  }

  else
  {
    if (mSelector == 1852400499)
    {
      *a5 = a4;
      v22 = *(this + 9);
      *&v25.mSelector = 0x676C6F626C6E616DLL;
      v25.mElement = 0;
      return HALS_PDPUCPlugIn::ObjectGetPropertyData(*(v22 + 72), a2, &v25, a7, a8, a5, a6);
    }

    v18 = mSelector == 1937007734;
    v19 = 1869638759;
  }

  if (v18 || mSelector == v19)
  {

    return HALS_Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    *a5 = a4;
    v23 = *(*(this + 9) + 72);

    return HALS_PDPUCPlugIn::ObjectGetPropertyData(v23, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_PDPControl::GetPropertyDataSize(void *a1, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6)
{
  if (((*(*a1 + 96))(a1, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1852400498)
  {
    v12 = mSelector == 1650682995;
    v13 = 1668047219;
  }

  else
  {
    v12 = mSelector == 1852400499 || mSelector == 1937007734;
    v13 = 1869638759;
  }

  if (v12 || mSelector == v13)
  {

    return HALS_Control::GetPropertyDataSize(a1, a2, a3);
  }

  else
  {
    v16 = *(a1[9] + 64);

    return HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(v16, a2, a3, a4, a5);
  }
}

uint64_t HALS_PDPControl::IsPropertySettable(void *a1, uint64_t a2, AudioObjectPropertyAddress *a3)
{
  if (((*(*a1 + 96))(a1) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1852400498)
  {
    v7 = mSelector == 1650682995;
    v8 = 1668047219;
  }

  else
  {
    v7 = mSelector == 1852400499 || mSelector == 1937007734;
    v8 = 1869638759;
  }

  if (v7 || mSelector == v8)
  {

    return HALS_Control::IsPropertySettable(a1, a2, a3);
  }

  else
  {
    v11 = *(a1[9] + 56);

    return HALS_PDPUCPlugIn::ObjectIsPropertySettable(v11, a2, a3);
  }
}

uint64_t HALS_PDPControl::HasProperty(void *a1, uint64_t a2, int *a3, uint64_t a4)
{
  result = (*(*a1 + 184))(a1, a3, a4);
  if (result)
  {
    v8 = *a3;
    if (*a3 <= 1852400498)
    {
      v9 = v8 == 1650682995;
      v10 = 1668047219;
    }

    else
    {
      v9 = v8 == 1852400499 || v8 == 1937007734;
      v10 = 1869638759;
    }

    if (v9 || v8 == v10)
    {

      return HALS_Control::HasProperty(a1, a2, a3);
    }

    else
    {
      return (*(a1[9] + 48))(a2, a3) != 0;
    }
  }

  return result;
}

void HALS_PDPControl::~HALS_PDPControl(HALS_PDPControl *this)
{
  HALS_Control::~HALS_Control(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_PDPControl::Activate(HALS_PDPControl *this)
{
  v7.mElement = 0;
  v8 = 4;
  v2 = *(this + 9);
  v3 = *(this + 4);
  *&v7.mSelector = 0x676C6F6263736370;
  HALS_PDPUCPlugIn::ObjectGetPropertyData(*(v2 + 72), v3, &v7, 0, 0, &v8, this + 48);
  v7.mElement = 0;
  v8 = 4;
  v4 = *(this + 9);
  v5 = *(this + 4);
  *&v7.mSelector = 0x676C6F6263656C6DLL;
  HALS_PDPUCPlugIn::ObjectGetPropertyData(*(v4 + 72), v5, &v7, 0, 0, &v8, this + 52);
  HALS_Object::Activate(this, v6);
}

uint64_t AMCP::get_system_property_traits_list(AMCP *this)
{
  {
    AMCP::get_system_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_system_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_system_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_system_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_system_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_system_property_traits_list(void)::$_0 &&>>()
{
  v23[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, AMCP::Property_Traits<1818452846u>::k_valid_scopes, AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1886152483, 1, 0, 0, &AMCP::Property_Traits<1886152483u>::k_valid_scopes, &AMCP::Property_Traits<1668577315u>::k_valid_scopes, 0, 1886152483, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1651472419, 1, 0, 0, &AMCP::Property_Traits<1651472419u>::k_valid_scopes, &AMCP::Property_Traits<1668049699u>::k_valid_scopes, 0, 1651472419, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668049699, 1, 0, 0, &AMCP::Property_Traits<1668049699u>::k_valid_scopes, &AMCP::Property_Traits<1684370979u>::k_valid_scopes, 0, 1668049699, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1684370979, 1, 0, 0, &AMCP::Property_Traits<1684370979u>::k_valid_scopes, "N14mcp_applesauce2CF15PropertyListRefE", 0, 1684370979, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1668577315, 1, 0, 0, &AMCP::Property_Traits<1668577315u>::k_valid_scopes, &AMCP::Property_Traits<1852793891u>::k_valid_scopes, 0, 0, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v23, 1852793891, 1, 0, 0, &AMCP::Property_Traits<1852793891u>::k_valid_scopes, &AMCP::Property_Traits<1651861860u>::k_valid_scopes, 0, 0, 14);
  operator new();
}

void sub_1DE66DD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9, a3, a4, a5, a6, a7, a8);
  v15 = 1152;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

std::string *AMCP::IO_Core::Stream_Connection::Stream_Connection(std::string *this, __int128 *a2, std::string::size_type a3, int a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v14;
  }

  v15 = *(a2 + 3);
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = *(a2 + 8);
  this[1].__r_.__value_.__r.__words[0] = v15;
  this[1].__r_.__value_.__r.__words[2] = a3;
  LODWORD(this[2].__r_.__value_.__l.__data_) = a4;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  v29 = 0;
  v30 = 0;
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&this[3], &v29);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v16 = *a5;
  v17 = a5[1];
  this[7].__r_.__value_.__r.__words[2] = *(a5 + 4);
  *&this[7].__r_.__value_.__l.__data_ = v17;
  *&this[6].__r_.__value_.__r.__words[1] = v16;
  *&this[8].__r_.__value_.__l.__data_ = *a7;
  *a7 = 0;
  *(a7 + 8) = 0;
  this[11].__r_.__value_.__s.__data_[0] = 0;
  this[11].__r_.__value_.__l.__size_ = 0;
  this[11].__r_.__value_.__r.__words[2] = 0;
  this[8].__r_.__value_.__r.__words[2] = 0;
  this[9].__r_.__value_.__r.__words[0] = 0;
  this[9].__r_.__value_.__s.__data_[8] = 0;
  v18 = *(a6 + 16);
  v19 = *(a6 + 32);
  *&this[12].__r_.__value_.__l.__data_ = *a6;
  *&this[12].__r_.__value_.__r.__words[2] = v18;
  this[13].__r_.__value_.__l.__size_ = v19;
  this[13].__r_.__value_.__r.__words[2] = 0;
  this[14].__r_.__value_.__r.__words[0] = 0;
  this[14].__r_.__value_.__l.__size_ = 0;
  if (*a5 != *a6 || *(a5 + 2) != *(a6 + 8) || *(a5 + 3) != *(a6 + 12) || *(a5 + 4) != *(a6 + 16) || *(a5 + 5) != *(a6 + 20) || *(a5 + 6) != *(a6 + 24) || *(a5 + 7) != *(a6 + 28) || *(a5 + 8) != *(a6 + 32))
  {
    outAudioConverter = 0;
    if (a4)
    {
      v21 = a6;
    }

    else
    {
      v21 = a5;
    }

    if (a4)
    {
      v22 = a5;
    }

    else
    {
      v22 = a6;
    }

    v23 = AudioConverterNew(v21, v22, &outAudioConverter);
    if (!v23)
    {
      operator new();
    }

    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v23);
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
      v42 = "Stream_Connection.cpp";
      v43 = 1024;
      v44 = 261;
      v45 = 2080;
      v46 = "err";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to create audio format converter for stream connection", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v32, "Failed to create audio format converter for stream connection");
    std::runtime_error::runtime_error(&v33, &v32);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    v33.__vftable = &unk_1F5992170;
    v34 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v33);
    v47 = "void AMCP::IO_Core::Stream_Connection::configure_audio_converter(AMCP::Direction, const CA::StreamDescription &, const CA::StreamDescription &)";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Stream_Connection.cpp";
    v49 = 261;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
  }

  std::unique_ptr<OpaqueAudioConverter,AMCP::IO_Core::Stream_Connection::AudioConverter_Deleter>::reset[abi:ne200100](&this[14].__r_.__value_.__l.__size_, 0);
  data = this[14].__r_.__value_.__l.__data_;
  this[13].__r_.__value_.__r.__words[2] = 0;
  this[14].__r_.__value_.__r.__words[0] = 0;
  if (data)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](data);
  }

  return this;
}

void sub_1DE66E1D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  MEMORY[0x1E12C1730](v30, 0x10A1C404618BBCFLL, a3, a4, a5, a6, a7, a8);
  std::unique_ptr<OpaqueAudioConverter,AMCP::IO_Core::Stream_Connection::AudioConverter_Deleter>::reset[abi:ne200100]((v29 + 344), 0);
  v32 = *(v29 + 336);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(v29 + 280);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (*(v29 + 264) == 1)
  {
    v34 = *(v29 + 256);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }
  }

  v35 = *(v29 + 216);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(v29 + 200);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v29 + 72));
  if (*(v29 + 23) < 0)
  {
    operator delete(*v29);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Stream_Connection::get_unique_read_range(AMCP::IO_Core::Stream_Connection *this)
{
  v2 = *(this + 24);
  v3 = *(this + 25);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 72))(v4);
  AMCP::DAL::DAL_Time::get_sample_time(v4);
  AMCP::DAL::DAL_Time::get_sample_time(&v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}