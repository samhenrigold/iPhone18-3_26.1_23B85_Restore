void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598FF38;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<unsigned int>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598FF38;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<unsigned int ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<unsigned int ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<unsigned int ()(void)>>())
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
      std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<unsigned int ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<unsigned int ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<unsigned int ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_11,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_11>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_11"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_11,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_11>,unsigned int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59616C8;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Core::Operation::Operation(uint64_t result, int *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  v2 = *a2;
  v3 = a2[1];
  *(result + 40) = *a2;
  *(result + 44) = v3;
  v4 = a2[2];
  *(result + 48) = v4;
  if (v2 == 707406378 || v3 == 707406378 || v4 == -1)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v12 = "Operation.h";
      v13 = 1024;
      v14 = 127;
      v15 = 2080;
      v16 = "!m_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", &v11, 0x1Cu);
    }

    abort();
  }

  return result;
}

void std::__shared_ptr_emplace<AMCP::Core::Operation>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598FC38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Resume_Behavior)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, __objc2_meth_list **a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Resume_Behavior)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Resume_Behavior)>>())
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
      std::__function::__value_func<void ()(AMCP::Resume_Behavior)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<void ()(AMCP::Resume_Behavior)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Resume_Behavior)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Resume_Behavior)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_10>,void ()(AMCP::Resume_Behavior)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_10"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_10>,void ()(AMCP::Resume_Behavior)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 200));
  v4 = AMCP::IO_Core::IOContext_Core::resume(v3, v2);
  std::mutex::unlock((v3 + 200));
  if (v4)
  {
    v5 = *(*(v3 + 160) + 32);

    AMCP::IO_Core::IO_Thread::wait_for_start(v5);
  }
}

uint64_t AMCP::IO_Core::IOContext_Core::resume(uint64_t a1, int a2)
{
  v47 = *MEMORY[0x1E69E9840];
  AMCP::Logging_Settings::instance(a1);
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

    v4 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v4)
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 24);
      if (v10)
      {
        v11 = *(a1 + 16);
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v12 = std::__shared_weak_count::lock(v10);
        if (v12 && v11)
        {
          if (*(v11 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v35, *(v11 + 24), *(v11 + 32));
          }

          else
          {
            v35 = *(v11 + 24);
          }

          goto LABEL_15;
        }
      }

      else
      {
        v12 = 0;
      }

      memset(&v35, 0, sizeof(v35));
LABEL_15:
      v13 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
      v14 = v35.__r_.__value_.__r.__words[0];
      v15 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(*(a1 + 160) + 32));
      std::string::basic_string[abi:ne200100]<0>(__p, off_1E8678810[v15]);
      v16 = &v35;
      if (v13 < 0)
      {
        v16 = v14;
      }

      v17 = __p[0];
      v18 = v32 < 0;
      v19 = atomic_load((a1 + 168));
      if (!v18)
      {
        v17 = __p;
      }

      *buf = 136316418;
      v42 = "IOContext_Core.cpp";
      v43 = 1024;
      v44 = 925;
      v45 = 1024;
      *v46 = v9;
      *&v46[4] = 2080;
      *&v46[6] = v16;
      *&v46[14] = 2080;
      *&v46[16] = v17;
      *&v46[24] = 1024;
      *&v46[26] = v19;
      _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_INFO, "%32s:%-5d IOContext_Core(%u|%s)::resume: current(%s)  pause_count(%d)", buf, 0x32u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v20 = atomic_load((a1 + 168));
  if (v20 <= 0)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v42 = "IOContext_Core.cpp";
      v43 = 1024;
      v44 = 928;
      v45 = 2080;
      *v46 = "not (m_pause_count >= 1)";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid pause count", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v33, "Invalid pause count", v29);
    std::logic_error::logic_error(&v34, &v33);
    v34.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v35, &v34);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = -1;
    v35.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v35.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v35);
    *&v46[12] = "BOOL AMCP::IO_Core::IOContext_Core::resume(Resume_Behavior)";
    *&v46[20] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
    *&v46[28] = 928;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  if (atomic_fetch_add((a1 + 168), 0xFFFFFFFF) == 1)
  {
    if (a2 || (v22 = *(a1 + 176), v23 = *(a1 + 184), v22 == v23))
    {
      v21 = 0;
    }

    else
    {
      do
      {
        AMCP::IO_Core::IOContext_Core::start_internal(a1, *v22++, 0);
      }

      while (v22 != v23);
    }

    *(a1 + 184) = *(a1 + 176);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

void sub_1DE28FBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint8_t buf, int a39, int a40, __int16 a41)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::IOContext_Core::start_internal(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v58 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (!v4)
  {
    v16 = a1[3];
    if (v16)
    {
      v17 = a1[2];
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v18 = std::__shared_weak_count::lock(v16);
      std::__shared_weak_count::__release_weak(v16);
      if (v18)
      {
        if (v17)
        {
          if (*(v17 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(v54, *(v17 + 24), *(v17 + 32));
          }

          else
          {
            *v54 = *(v17 + 24);
            *&v54[16] = *(v17 + 40);
          }

          v25 = a1[4];
          v26 = a1[5];
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v27 = (*(*v25 + 24))(v25);
          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          v28 = (*(*v27 + 16))(&v44, v27, v54);
          if (!v44[31])
          {
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

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "IOContext_Core.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 522;
              _os_log_debug_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_DEBUG, "%32s:%-5d Attempt to start an IO Context that has no IO Proc assigned", buf, 0x12u);
            }

            if (v45)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            }

            if ((v54[23] & 0x80000000) != 0)
            {
              operator delete(*v54);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            return;
          }

          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

          if ((v54[23] & 0x80000000) != 0)
          {
            operator delete(*v54);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }
  }

  if (caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(a1[20] + 32)) == 2)
  {
    goto LABEL_13;
  }

  AMCP::IO_Core::IOContext_Core::create_manifest(&v44, a1);
  *buf = *(a1[20] + 16);
  std::string::basic_string[abi:ne200100]<0>(v54, "");
  v6 = AMCP::IO_Core::Play_State_Manager::start(buf, v4, v54);
  if ((v54[23] & 0x80000000) != 0)
  {
    operator delete(*v54);
  }

  v7 = AMCP::IO_Core::IOContext_Core::enqueue_manifest_sync(a1, &v44, v6, v4 | 0x100000000, a3);
  if (v7 == 1)
  {
    AMCP::IO_Core::IOContext_Core::pause(a1, 0);
    v8 = v44[9];
    v9 = v44[10];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::Graph::Manifest_Inventory::report_thread_error(*(v8 + 192));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v7 != 1)
  {
LABEL_13:
    v10 = a1[20];
    std::string::basic_string[abi:ne200100]<0>(v54, "IO_Thread");
    v11 = AMCP::IO_Core::Play_State_Manager::start((v10 + 2), v4, v54);
    v12 = v11;
    if ((v54[23] & 0x80000000) != 0)
    {
      operator delete(*v54);
    }

    if (!v12)
    {
      v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v33 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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

      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *v54 = 136315650;
        *&v54[4] = "IO_Thread.cpp";
        *&v54[12] = 1024;
        *&v54[14] = 59;
        *&v54[18] = 2080;
        *&v54[20] = "not (new_state == Transport_State::on or new_state == Transport_State::prewarm)";
        _os_log_error_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s IO_Thread::start: Start failed to change the prewarming state in a reasonable way", v54, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v46, "IO_Thread::start: Start failed to change the prewarming state in a reasonable way", v37);
      std::logic_error::logic_error(&v47, &v46);
      v47.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(buf, &v47);
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = -1;
      *buf = &unk_1F5991430;
      *&buf[16] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v54, buf);
      v55 = "void AMCP::IO_Core::IO_Thread::start(Play_State_Manager::Play_Request)";
      v56 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread.cpp";
      v57 = 59;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
    }

    v13 = v10 + 4;
    v14 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v10[4]);
    if (v10[3])
    {
      v15 = 1;
      if (v14)
      {
LABEL_33:
        if (v12 != caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*v13))
        {
          AMCP::IO_Core::Thread_Control_State::set_state(*v13, v12);
        }

        return;
      }
    }

    else
    {
      v15 = v10[2] != 0;
      if (v14)
      {
        goto LABEL_33;
      }
    }

    if (v15)
    {
      v20 = (v10 + 6);
      v19 = v10[6];
      if (v19)
      {
        v21 = pthread_kill(*v19, 0);
        if (v21 != 3)
        {
          v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v38 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v21);
          }

          v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            v41 = *v40;
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }

          else
          {
            v41 = *v40;
          }

          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *v54 = 136315650;
            *&v54[4] = "IO_Thread.cpp";
            *&v54[12] = 1024;
            *&v54[14] = 66;
            *&v54[18] = 2080;
            *&v54[20] = "not (m_thread.operator BOOL() ? thread_has_finished(*m_thread) : true)";
            _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Trying to start an IO thread whose thread already exists", v54, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v46, "Trying to start an IO thread whose thread already exists", v42);
          std::logic_error::logic_error(&v47, &v46);
          v47.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(buf, &v47);
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = -1;
          *buf = &unk_1F5991430;
          *&buf[16] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v54, buf);
          v55 = "void AMCP::IO_Core::IO_Thread::start(Play_State_Manager::Play_Request)";
          v56 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread.cpp";
          v57 = 66;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
        }

        if (*v20)
        {
          std::thread::join(*v20);
        }
      }

      v22 = *v10;
      v24 = v10[4];
      v23 = v10[5];
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      *v54 = &unk_1F5986380;
      *&v54[8] = v24;
      *&v54[16] = v23;
      *&v54[24] = v54;
      std::function<void ()(void)>::operator=((v22 + 608), v54);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v54);
      AMCP::IO_Core::Thread_Control_State::set_state(v10[4], v12);
      LOWORD(v46.__r_.__value_.__l.__data_) = *(v10 + 30);
      v46.__r_.__value_.__s.__data_[2] = *(v10 + 62);
      operator new();
    }

    goto LABEL_33;
  }
}

void sub_1DE2906F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (__p)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p);
  }

  if (*(v30 - 121) < 0)
  {
    operator delete(*(v30 - 144));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::IOContext_Core::create_manifest(AMCP::IO_Core::IOContext_Core *this, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && (v5 = *(a2 + 16), atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed), v6 = std::__shared_weak_count::lock(v3), std::__shared_weak_count::__release_weak(v3), v6))
  {
    if (v5)
    {
      if (*(v5 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *(v5 + 24), *(v5 + 32));
      }

      else
      {
        v16 = *(v5 + 24);
      }

      if (atomic_load((a2 + 168)))
      {
        v14 = 0;
        v15 = 0;
      }

      else
      {
        v8 = *(a2 + 136);
        v14 = *(a2 + 128);
        v15 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      v9 = *(a2 + 32);
      v10 = *(a2 + 40);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v9 + 40))(v9, &v16, &v14);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v12 = *(*this + 72);
      v11 = *(*this + 80);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(a2 + 136);
      *(a2 + 128) = v12;
      *(a2 + 136) = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *this = 0;
      *(this + 1) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }
}

uint64_t AMCP::IO_Core::IOContext_Core::enqueue_manifest_sync(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v19 = a3;
  v18 = a5;
  v17 = 0;
  std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v10, *(a1 + 48), *(a1 + 56));
  v12 = &v17;
  v13 = a2;
  v14 = &v19;
  v15 = &v20;
  v16 = &v18;
  v7 = atomic_load((a1 + 304));
  if (v7)
  {
    atomic_store(1u, (a1 + 305));
  }

  v8 = *(a1 + 272);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIRZN4AMCP7IO_Core14IOContext_Core21enqueue_manifest_syncERKNSt3__110shared_ptrINS3_5Graph8ManifestEEENS3_15Transport_StateENS6_8optionalINS4_18Play_State_Manager12Play_RequestEEEyE3__0EEvP16dispatch_queue_sOT_NS6_17integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_291;
  block[4] = &v10;
  dispatch_sync(v8, block);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v17;
}

void AMCP::IO_Core::IOContext_Core::pause(uint64_t a1, int a2)
{
  v59 = *MEMORY[0x1E69E9840];
  AMCP::Logging_Settings::instance(a1);
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

    v4 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v4)
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 24);
      if (v10)
      {
        v11 = *(a1 + 16);
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v12 = std::__shared_weak_count::lock(v10);
        if (v12 && v11)
        {
          if (*(v11 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v52, *(v11 + 24), *(v11 + 32));
          }

          else
          {
            v52 = *(v11 + 24);
          }

          goto LABEL_15;
        }
      }

      else
      {
        v12 = 0;
      }

      memset(&v52, 0, sizeof(v52));
LABEL_15:
      v13 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
      v14 = v52.__r_.__value_.__r.__words[0];
      v15 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(*(a1 + 160) + 32));
      std::string::basic_string[abi:ne200100]<0>(__p, off_1E8678810[v15]);
      v16 = &v52;
      if (v13 < 0)
      {
        v16 = v14;
      }

      v17 = __p[0];
      v18 = v49 < 0;
      v19 = atomic_load((a1 + 168));
      if (!v18)
      {
        v17 = __p;
      }

      *buf = 136316418;
      *&buf[4] = "IOContext_Core.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 886;
      *&buf[18] = 1024;
      *&buf[20] = v9;
      *&buf[24] = 2080;
      *&buf[26] = v16;
      *&buf[34] = 2080;
      *&buf[36] = v17;
      *&buf[44] = 1024;
      *&buf[46] = v19;
      _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_INFO, "%32s:%-5d IOContext_Core(%u|%s)::pause: current(%s)  pause_count(%d)", buf, 0x32u);
      if (v49 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v20 = atomic_load((a1 + 168));
  if ((v20 & 0x80000000) != 0)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315650;
      *&buf[4] = "IOContext_Core.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 888;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_pause_count >= 0)";
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid pause count", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v57);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v50, "Invalid pause count", v31);
    std::logic_error::logic_error(&v51, &v50);
    v51.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v52, &v51);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = -1;
    v52.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v52.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v52);
    *&buf[32] = "void AMCP::IO_Core::IOContext_Core::pause(Pause_Behavior)";
    *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
    *&buf[48] = 888;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v47);
  }

  if (!atomic_fetch_add((a1 + 168), 1u))
  {
    v21 = *(a1 + 128);
    if (v21)
    {
      v23 = *(v21 + 96);
      v22 = *(v21 + 104);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (!v23)
      {
        v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v36 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v22);
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

        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "IOContext_Core.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 894;
          *&buf[18] = 2080;
          *&buf[20] = "not (m_inventory->get_master_timebase())";
          _os_log_error_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v57);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v50, "", v45);
        std::logic_error::logic_error(&v51, &v50);
        v51.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v52, &v51);
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = -1;
        v52.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v52.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v52);
        *&buf[32] = "void AMCP::IO_Core::IOContext_Core::pause(Pause_Behavior)";
        *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
        *&buf[48] = 894;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v47);
      }

      if (*(a1 + 176) != *(a1 + 184))
      {
        v40 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v40 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v22);
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

        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "IOContext_Core.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 895;
          *&buf[18] = 2080;
          *&buf[20] = "not (m_paused_state.empty())";
          _os_log_error_impl(&dword_1DE1F9000, v43, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v57);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v50, "", v46);
        std::logic_error::logic_error(&v51, &v50);
        v51.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v52, &v51);
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = -1;
        v52.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v52.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v52);
        *&buf[32] = "void AMCP::IO_Core::IOContext_Core::pause(Pause_Behavior)";
        *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
        *&buf[48] = 895;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v47);
      }

      if (a2)
      {
        if (a2 == 1)
        {
          AMCP::IO_Core::Play_State_Manager::get_state_snapshot(buf, (*(a1 + 160) + 16));
          if (*buf != *&buf[8])
          {
            AMCP::IO_Core::IOContext_Core::stop_internal(a1, **buf);
          }

          if (*buf)
          {
            operator delete(*buf);
          }

          *(a1 + 184) = *(a1 + 176);
        }
      }

      else
      {
        AMCP::IO_Core::Play_State_Manager::get_state_snapshot(buf, (*(a1 + 160) + 16));
        v25 = *(a1 + 176);
        if (v25)
        {
          *(a1 + 184) = v25;
          operator delete(v25);
          *(a1 + 176) = 0;
          *(a1 + 184) = 0;
          *(a1 + 192) = 0;
        }

        v26 = *buf;
        *(a1 + 176) = *buf;
        *(a1 + 192) = *&buf[16];
        if (v26 != *(&v26 + 1))
        {
          AMCP::IO_Core::IOContext_Core::stop_internal(a1, *v26);
        }
      }
    }

    v24 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(*(a1 + 160) + 32));
    if (v24)
    {
      v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v32 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v24);
      }

      v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        v35 = *v34;
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      else
      {
        v35 = *v34;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "IOContext_Core.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 913;
        *&buf[18] = 2080;
        *&buf[20] = "not (m_io_thread->get_transport_state() == Transport_State::off)";
        _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v57);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v50, "", v44);
      std::logic_error::logic_error(&v51, &v50);
      v51.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v52, &v51);
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = -1;
      v52.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v52.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v52);
      *&buf[32] = "void AMCP::IO_Core::IOContext_Core::pause(Pause_Behavior)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
      *&buf[48] = 913;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v47);
    }
  }
}

void sub_1DE2916B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::IOContext_Core::stop_internal(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v6 = *MEMORY[0x1E69E9840];
  std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v3, *(a1 + 48), *(a1 + 56));
  v4 = v2;
  v5 = 0;
  operator new();
}

void sub_1DE291A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  atomic_fetch_add((v19 + 704), 1u);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a19);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  *a1 = a2;
  if (!this)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(this);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core13stop_internalENS0_18Play_State_Manager12Play_RequestEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  AMCP::IO_Core::IOContext_Core::create_manifest(&v9, v1);
  v11 = *(*(v1 + 160) + 16);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v3 = AMCP::IO_Core::Play_State_Manager::stop(&v11, v2, __p);
  if (v15 < 0)
  {
    operator delete(*__p);
  }

  v4 = AMCP::IO_Core::IOContext_Core::enqueue_manifest_sync(v1, &v9, v3, 0, 0);
  if (v4 == 1)
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
      *__p = 136315394;
      *&__p[4] = "IOContext_Core.cpp";
      v13 = 1024;
      v14 = 585;
      _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_INFO, "%32s:%-5d enqueue_manifest failed during stop when transitioning to prewarming", __p, 0x12u);
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE291C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59624E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59624E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::stop_internal(AMCP::IO_Core::Play_State_Manager::Play_Request)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59624E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIRZN4AMCP7IO_Core14IOContext_Core21enqueue_manifest_syncERKNSt3__110shared_ptrINS3_5Graph8ManifestEEENS3_15Transport_StateENS6_8optionalINS4_18Play_State_Manager12Play_RequestEEEyE3__0EEvP16dispatch_queue_sOT_NS6_17integral_constantIbLb1EEE_block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = AMCP::IO_Core::IOContext_Core::enqueue_manifest_internal(*v3, *(v3 + 24), **(v3 + 32), **(v3 + 40), **(v3 + 48), a2, a3);
  **(v3 + 16) = result;
  return result;
}

uint64_t AMCP::IO_Core::IOContext_Core::enqueue_manifest_internal(AMCP::Log::AMCP_Scope_Registry *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v34 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v36 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = *v36;
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    else
    {
      v37 = *v36;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *v45 = 136315650;
      *&v45[4] = "IOContext_Core.cpp";
      *&v45[12] = 1024;
      *&v45[14] = 655;
      *&v45[18] = 2080;
      *&v45[20] = "not (manifest)";
      _os_log_error_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Error creating manifest", v45, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "Error creating manifest", v38);
    std::logic_error::logic_error(&v43, &v42);
    v43.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v50, &v43);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = -1;
    v50.__vftable = &unk_1F5991430;
    v51 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v45, &v50);
    v46 = "Start_Stop_Result AMCP::IO_Core::IOContext_Core::enqueue_manifest_internal(const std::shared_ptr<Manifest> &, Transport_State, std::optional<Play_State_Manager::Play_Request>, uint64_t)";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
    v48[0] = 655;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  v9 = a3;
  v12 = *(a1 + 3);
  if (v12)
  {
    v13 = *(a1 + 2);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v14 = std::__shared_weak_count::lock(v12);
    std::__shared_weak_count::__release_weak(v12);
    if (v14)
    {
      if (v13)
      {
        if (*(v13 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(v45, *(v13 + 24), *(v13 + 32));
        }

        else
        {
          *v45 = *(v13 + 24);
          *&v45[16] = *(v13 + 40);
        }

        v15 = *(a1 + 4);
        v16 = *(a1 + 5);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = (*(*v15 + 24))(v15);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        (*(*v17 + 16))(&v50, v17, v45);
        v18 = v50.__vftable;
        if (v50.__vftable[22].~logic_error_0)
        {
          v19 = *(*a2 + 72);
          v20 = *(*a2 + 80);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::function<void ()>::operator=((v19 + 136), &v18[21].~logic_error_0);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }
        }

        v21 = v50.__vftable;
        if (v50.__vftable[23].what)
        {
          v22 = *(*a2 + 72);
          v23 = *(*a2 + 80);
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::function<void ()(void)>::operator=((v22 + 168), &v21[22].what);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }
        }

        if (v50.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50.__imp_.__imp_);
        }

        if ((v45[23] & 0x80000000) != 0)
        {
          operator delete(*v45);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  AMCP::IO_Core::IOContext_Core::create_execution_context(v45, a1, a6, a7);
  if (a5)
  {
    v24 = *(*a2 + 72);
    v25 = *(*a2 + 80);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = *(v24 + 80);
    v27 = *(v24 + 88);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LOBYTE(v41) = 0;
    v50.__vftable = &unk_1F5962620;
    v50.__imp_.__imp_ = &v41;
    v52 = &v50;
    AMCP::Graph::Timebase_Set::for_each(*(v26 + 16), &v50);
    std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::~__value_func[abi:ne200100](&v50);
    v28 = v41;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v28)
    {
      v29 = 1;
      v49 = 1;
      v30 = 1;
      goto LABEL_40;
    }

    a5 = 0;
  }

  v29 = 0;
  v30 = 2;
LABEL_40:
  v31 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(*(a1 + 20) + 32));
  AMCP::IO_Core::IO_Thread::get_state_snapshot(&v50, *(a1 + 20), a4);
  if (v50.__vftable != v50.__imp_.__imp_)
  {
    *&v39 = a5;
    *(&v39 + 1) = v29;
    AMCP::Graph::Manifest_Queue::enqueue_manifest(*(a1 + 18), a2, v31, v9, &v50, v45, v30, v32, v39);
  }

  if (v50.__vftable)
  {
    operator delete(v50.__vftable);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v48);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::can_run_catchup_mode_on_devices(std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::can_run_catchup_mode_on_devices(std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core31can_run_catchup_mode_on_devicesERKNSt3__110shared_ptrINS_5Graph12Timebase_SetEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::can_run_catchup_mode_on_devices(std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::can_run_catchup_mode_on_devices(std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  if (*v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = (*(*v3 + 176))(v3);
    v5 = *(a1 + 8);
  }

  *v5 = v6;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::can_run_catchup_mode_on_devices(std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::can_run_catchup_mode_on_devices(std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5962620;
  a2[1] = v2;
  return result;
}

void *std::function<void ()(unsigned int)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<void ()(void)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(void)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1DE292A78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(unsigned int)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1DE292D74(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_10,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_10>,void ()(AMCP::Resume_Behavior)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961638;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Pause_Behavior)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Pause_Behavior)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Pause_Behavior)>>())
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
      std::__function::__value_func<void ()(AMCP::Pause_Behavior)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<void ()(AMCP::Pause_Behavior)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Pause_Behavior)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Pause_Behavior)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_9>,void ()(AMCP::Pause_Behavior)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE3$_9"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_9>,void ()(AMCP::Pause_Behavior)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 200));
  AMCP::IO_Core::IOContext_Core::pause(v3, v2);

  std::mutex::unlock((v3 + 200));
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_9,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_9>,void ()(AMCP::Pause_Behavior)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59615A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINS_15Transport_StateEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = AMCP::Core::Operation::call_function<AMCP::Transport_State>((a1 + 8));
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = v3;
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Transport_State>::dispatch;
  return result;
}

uint64_t AMCP::Core::Operation::call_function<AMCP::Transport_State>(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<AMCP::Transport_State ()(void)>>();
  v3 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v2);
  if (!v3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
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
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Transport_State, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<AMCP::Transport_State ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "Invalid cast", v15);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Transport_State, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5);
}

void sub_1DE2936A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<AMCP::Transport_State>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        *a3 = *a2;
        *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Transport_State>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 1) = 0u;
      *a3 = *a2;
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Transport_State>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      AMCP::swap(v14, a3, a3);
      if (v15)
      {
        v15(0, v14, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<AMCP::Transport_State>();
    v10 = *(a2 + 32);
    *&v14[0] = 0;
    if (v10)
    {
      v10(3, a2, 0, v14);
      v10 = *&v14[0];
    }

    if (v10 != v9)
    {
      goto LABEL_27;
    }

    v11 = *(a3 + 4);
    v16 = 0;
    if (v11)
    {
      v11(3, a3, 0, &v16);
      v11 = v16;
    }

    if (v11 == v9)
    {
      if (*(a2 + 32))
      {
        *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Transport_State>();
        v12 = (*(a2 + 32))(4, a2, 0, v14);
      }

      else
      {
        v12 = 0;
      }

      *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Transport_State>();
      if (*v12 == *(*(a3 + 4))(4, a3, 0, v14))
      {
        return 1;
      }
    }

    else
    {
LABEL_27:
      v13 = AMCP::Thing::convert_to<AMCP::Transport_State>(a2);
      if (v13 == AMCP::Thing::convert_to<AMCP::Transport_State>(a3))
      {
        return 1;
      }
    }

    return 0;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<AMCP::Transport_State>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Transport_State>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t AMCP::Implementation::get_type_marker<AMCP::Transport_State>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 65);
}

uint64_t AMCP::Thing::convert_to<AMCP::Transport_State>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = AMCP::Implementation::get_type_marker<AMCP::Transport_State>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == v2)
  {
    *&v15[0] = v2;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<AMCP::Transport_State>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = v2;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE293B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5961528;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5961528;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Transport_State>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5961528;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Transport_State ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Transport_State ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Transport_State ()(void)>>())
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
      std::__function::__value_func<AMCP::Transport_State ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<AMCP::Transport_State ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Transport_State ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Transport_State ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_8>,AMCP::Transport_State ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE3$_8"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_8>,AMCP::Transport_State ()(void)>::operator()(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (v1)
  {
    return caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(v1 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_8,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_8>,AMCP::Transport_State ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961498;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, __objc2_prot_list **a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>>())
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
      std::__function::__value_func<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_7>,BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_7>,BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 200));
  v4 = *(v3 + 128);
  if (!v4)
  {
    goto LABEL_25;
  }

  v6 = *(v4 + 80);
  v5 = *(v4 + 88);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a2;
  v8 = *(a2 + 8);
  if (*a2 != v8)
  {
    v9 = v6[1];
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = *&v9 - 1;
    do
    {
      if (v9)
      {
        v12 = 0x9DDFEA08EB382D69 * ((8 * (*v7 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*v7));
        v13 = 0x9DDFEA08EB382D69 * (HIDWORD(*v7) ^ (v12 >> 47) ^ v12);
        v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
        if (v10.u32[0] > 1uLL)
        {
          v15 = v14;
          if (v14 >= *&v9)
          {
            v15 = v14 % *&v9;
          }
        }

        else
        {
          v15 = v14 & v11;
        }

        v16 = *(*v6 + 8 * v15);
        if (v16)
        {
          while (1)
          {
            v16 = *v16;
            if (!v16)
            {
              break;
            }

            v17 = v16[1];
            if (v14 == v17)
            {
              if (v16[2] == *v7)
              {
                v18 = 0;
                if (v5)
                {
                  goto LABEL_23;
                }

                goto LABEL_24;
              }
            }

            else
            {
              if (v10.u32[0] > 1uLL)
              {
                if (v17 >= *&v9)
                {
                  v17 %= *&v9;
                }
              }

              else
              {
                v17 &= v11;
              }

              if (v17 != v15)
              {
                break;
              }
            }
          }
        }
      }

      v7 += 2;
    }

    while (v7 != v8);
  }

  v18 = 1;
  if (v5)
  {
LABEL_23:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_24:
  if (!v18)
  {
    v19 = 1;
  }

  else
  {
LABEL_25:
    v19 = 0;
  }

  std::mutex::unlock((v3 + 200));
  return v19;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_7,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_7>,BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961408;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_6>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double AMCP::IO_Core::IOContext_Core::stop(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  AMCP::Logging_Settings::instance(a1);
  if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v4), BYTE2(AMCP::Logging_Settings::instance(void)::s_instance) == 1))
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 24);
      if (v11)
      {
        v12 = *(a1 + 16);
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v13 = std::__shared_weak_count::lock(v11);
        if (v13 && v12)
        {
          if (*(v12 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v27, *(v12 + 24), *(v12 + 32));
          }

          else
          {
            v27 = *(v12 + 24);
          }

          goto LABEL_16;
        }
      }

      else
      {
        v13 = 0;
      }

      memset(&v27, 0, sizeof(v27));
LABEL_16:
      v14 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
      v15 = v27.__r_.__value_.__r.__words[0];
      v16 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(*(a1 + 160) + 32));
      std::string::basic_string[abi:ne200100]<0>(__p, off_1E8678810[v16]);
      v17 = "Prewarm";
      v18 = __p[0];
      v19 = atomic_load((a1 + 168));
      v29 = "IOContext_Core.cpp";
      if (!a2)
      {
        v17 = "Play";
      }

      v31 = 548;
      v20 = &v27;
      if (v14 < 0)
      {
        v20 = v15;
      }

      *buf = 136316674;
      v30 = 1024;
      if (v26 >= 0)
      {
        v18 = __p;
      }

      v32 = 1024;
      v33 = v10;
      v34 = 2080;
      v35 = v20;
      v36 = 2080;
      v37 = v17;
      v38 = 2080;
      v39 = v18;
      v40 = 1024;
      v41 = v19;
      _os_log_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_INFO, "%32s:%-5d IOContext_Core(%u|%s)::stop: request(%s)  current(%s)  pause_count(%d)", buf, 0x3Cu);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  v21 = atomic_load((a1 + 168));
  if (v21 < 1)
  {
    AMCP::IO_Core::IOContext_Core::stop_internal(a1, a2);
  }

  v23 = *(a1 + 176);
  v22 = *(a1 + 184);
  if (v23 != v22)
  {
    while (*v23 != a2)
    {
      v23 += 4;
      if (v23 == v22)
      {
        v23 = *(a1 + 184);
        break;
      }
    }
  }

  if (v22 != v23)
  {
    v24 = v22 - (v23 + 4);
    if (v22 != v23 + 4)
    {
      memmove(v23, v23 + 4, v22 - (v23 + 4));
    }

    *(a1 + 184) = &v23[v24];
  }

  return result;
}

void sub_1DE294778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_6>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961388;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_5,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_5>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_5,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_5>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::mutex::lock((v1 + 200));
  v2 = AMCP::IO_Core::IOContext_Core::start(v1, 1, 0) != 2;
  std::mutex::unlock((v1 + 200));
  return v2;
}

uint64_t AMCP::IO_Core::IOContext_Core::start(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v67 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    a1 = mach_absolute_time();
    if (a1 <= a3)
    {
      v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v38 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        v41 = *v40;
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      else
      {
        v41 = *v40;
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v60 = "IOContext_Core.cpp";
        v61 = 1024;
        v62 = 482;
        v63 = 2080;
        *v64 = "not (in_start_host_time == 0 or in_start_host_time < caulk::host_time::current())";
        _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s start host time must be before the current time", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v58);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v51, "start host time must be before the current time", v46);
      std::logic_error::logic_error(&v52, &v51);
      v52.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v53, &v52);
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = -1;
      v53.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v53.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v53);
      *&v64[12] = "IOContext_Core::IOC_Start_Result AMCP::IO_Core::IOContext_Core::start(Play_State_Manager::Play_Request, uint64_t)";
      *&v64[20] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
      *&v64[28] = 482;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v48);
    }
  }

  AMCP::Logging_Settings::instance(a1);
  if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v6), BYTE2(AMCP::Logging_Settings::instance(void)::s_instance) == 1))
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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

    v6 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v6)
    {
      v11 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v12)
      {
        v13 = *(v5 + 2);
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v14 = std::__shared_weak_count::lock(v12);
        if (v14 && v13)
        {
          if (*(v13 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v53, *(v13 + 24), *(v13 + 32));
          }

          else
          {
            v53 = *(v13 + 24);
          }

          goto LABEL_18;
        }
      }

      else
      {
        v14 = 0;
      }

      memset(&v53, 0, sizeof(v53));
LABEL_18:
      v15 = SHIBYTE(v53.__r_.__value_.__r.__words[2]);
      v16 = v53.__r_.__value_.__r.__words[0];
      v17 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(*(v5 + 20) + 32));
      std::string::basic_string[abi:ne200100]<0>(__p, off_1E8678810[v17]);
      v18 = "Prewarm";
      v19 = __p[0];
      v20 = atomic_load(v5 + 42);
      v60 = "IOContext_Core.cpp";
      if (!a2)
      {
        v18 = "Play";
      }

      v62 = 485;
      v21 = &v53;
      if (v15 < 0)
      {
        v21 = v16;
      }

      *buf = 136316674;
      v61 = 1024;
      if (v50 >= 0)
      {
        v19 = __p;
      }

      v63 = 1024;
      *v64 = v11;
      *&v64[4] = 2080;
      *&v64[6] = v21;
      *&v64[14] = 2080;
      *&v64[16] = v18;
      *&v64[24] = 2080;
      *&v64[26] = v19;
      v65 = 1024;
      v66 = v20;
      _os_log_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_INFO, "%32s:%-5d IOContext_Core(%u|%s)::start: request(%s)  current(%s)  pause_count(%d)", buf, 0x3Cu);
      if (v50 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }

  if (atomic_load(v5 + 42))
  {
    v24 = *(v5 + 23);
    v23 = *(v5 + 24);
    if (v24 >= v23)
    {
      v28 = *(v5 + 22);
      v29 = v24 - v28;
      v30 = (v24 - v28) >> 2;
      v31 = v30 + 1;
      if ((v30 + 1) >> 62)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v32 = v23 - v28;
      if (v32 >> 1 > v31)
      {
        v31 = v32 >> 1;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v33 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v33);
      }

      v34 = (v24 - v28) >> 2;
      v35 = (4 * v30);
      v36 = (4 * v30 - 4 * v34);
      *v35 = a2;
      v25 = v35 + 1;
      memcpy(v36, v28, v29);
      v37 = *(v5 + 22);
      *(v5 + 22) = v36;
      *(v5 + 23) = v25;
      *(v5 + 24) = 0;
      if (v37)
      {
        operator delete(v37);
      }
    }

    else
    {
      *v24 = a2;
      v25 = v24 + 4;
    }

    *(v5 + 23) = v25;
    return 1;
  }

  else
  {
    if (*(v5 + 22) != *(v5 + 23))
    {
      v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v42 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
      }

      v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        v45 = *v44;
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      else
      {
        v45 = *v44;
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v60 = "IOContext_Core.cpp";
        v61 = 1024;
        v62 = 490;
        v63 = 2080;
        *v64 = "not (m_paused_state.empty())";
        _os_log_error_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v58);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v51, "", v47);
      std::logic_error::logic_error(&v52, &v51);
      v52.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v53, &v52);
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = -1;
      v53.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v53.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v53);
      *&v64[12] = "IOContext_Core::IOC_Start_Result AMCP::IO_Core::IOContext_Core::start(Play_State_Manager::Play_Request, uint64_t)";
      *&v64[20] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
      *&v64[28] = 490;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v48);
    }

    AMCP::IO_Core::IOContext_Core::start_internal(v5, a2, a3);
    if (v26)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1DE295098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_5,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_5>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961308;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_4>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_4>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::mutex::lock((v1 + 200));
  v2 = AMCP::IO_Core::IOContext_Core::start(v1, 1, 0);
  std::mutex::unlock((v1 + 200));
  if (v2)
  {
    return v2 != 2;
  }

  if (AMCP::IO_Core::IO_Thread::wait_for_start(*(*(v1 + 160) + 32)))
  {
    return 1;
  }

  std::mutex::lock((v1 + 200));
  AMCP::IO_Core::IOContext_Core::stop(v1, 1);
  std::mutex::unlock((v1 + 200));
  return 0;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_4>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961288;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_3>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_3>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 160);
  if (v2 && (v3 = *(v2 + 48)) != 0)
  {
    v4 = *v3;
    v5 = pthread_self();
    v6 = v1 + 144;
    atomic_fetch_add((*(v1 + 144) + 704), 1u);
    if (v4 == v5)
    {
      AMCP::IO_Core::IOContext_Core::stop(v1, 0);
      goto LABEL_9;
    }
  }

  else
  {
    v6 = v1 + 144;
    atomic_fetch_add((*(v1 + 144) + 704), 1u);
  }

  if (std::mutex::try_lock((v1 + 200)))
  {
    std::mutex::unlock((v1 + 200));
  }

  std::mutex::lock((v1 + 200));
  AMCP::IO_Core::IOContext_Core::stop(v1, 0);
  std::mutex::unlock((v1 + 200));
LABEL_9:
  atomic_fetch_add((*v6 + 704), 0xFFFFFFFF);
  return 1;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_3>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961208;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Thing const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>())
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
      std::__function::__value_func<void ()(AMCP::Thing const&)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<void ()(AMCP::Thing const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Thing const&)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Thing const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_2>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_2>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = AMCP::Thing::convert_to<unsigned long long>(a2);

  return AMCP::IO_Core::IOContext_Core::start_property_helper(v2, v3);
}

BOOL AMCP::IO_Core::IOContext_Core::start_property_helper(AMCP::IO_Core::IOContext_Core *this, unint64_t a2)
{
  std::mutex::lock((this + 200));
  if (caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(*(this + 20) + 32)) == 2)
  {
    std::mutex::unlock((this + 200));
  }

  else
  {
    v4 = AMCP::IO_Core::IOContext_Core::start(this, 0, a2);
    std::mutex::unlock((this + 200));
    if (v4)
    {
      return v4 != 2;
    }
  }

  if (AMCP::IO_Core::IO_Thread::wait_for_start(*(*(this + 20) + 32)))
  {
    return 1;
  }

  std::mutex::lock((this + 200));
  AMCP::IO_Core::IOContext_Core::stop(this, 0);
  std::mutex::unlock((this + 200));
  return 0;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_2>,void ()(AMCP::Thing const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961188;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(unsigned long long)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(unsigned long long)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<BOOL ()(unsigned long long)>>())
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
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(unsigned long long)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(unsigned long long)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_1>,BOOL ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_1>,BOOL ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59610F8;
  a2[1] = v2;
  return result;
}

void std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  operator delete(__p);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<BOOL ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        AMCP::swap(v10, a3, a3);
        if (v11)
        {
          v11(0, v10, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](a3, a2);
    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961078;
  a2[1] = v2;
  return result;
}

void AMCP::IO_Core::IOContext_Core::pause_io_context_within_work_queue(AMCP::IO_Core::IOContext_Core *this)
{
  std::mutex::lock((this + 200));
  AMCP::IO_Core::IOContext_Core::pause(this, 0);

  std::mutex::unlock((this + 200));
}

void AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(AMCP::IO_Core::IOContext_Core *this)
{
  v1 = this;
  v90 = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 200));
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = *(v2 + 96);
    v3 = *(v2 + 104);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  AMCP::IO_Core::IOContext_Core::create_manifest(&v65, v1);
  if (v65)
  {
    v6 = *(v65 + 72);
    v7 = *(v65 + 80);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v6)
    {
      v43 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v43 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v5);
      }

      v45 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v44 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        v46 = *v45;
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      else
      {
        v46 = *v45;
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *block = 136315650;
        *&block[4] = "IOContext_Core.cpp";
        *&block[12] = 1024;
        *&block[14] = 761;
        *&block[18] = 2080;
        *&block[20] = "not (inventory)";
        _os_log_error_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", block, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v68);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v74, "", v55);
      std::logic_error::logic_error(&v67, &v74);
      v67.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v84, &v67);
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = -1;
      v84.__vftable = &unk_1F5991430;
      v85 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(block, &v84);
      *&block[32] = "void AMCP::IO_Core::IOContext_Core::cache_min_max_buffer_frame_size(const std::shared_ptr<Manifest> &)";
      *&block[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
      LODWORD(v80) = 761;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v70);
    }

    v9 = v6[6].n128_u64[0];
    v8 = v6[6].n128_u64[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (v9)
      {
        v10 = v6[6];
        goto LABEL_14;
      }
    }

    else if (v9)
    {
      v10 = v6[6].n128_u64[0];
LABEL_14:
      v11 = v6[5].n128_u64[0];
      *&v74.__r_.__value_.__l.__data_ = v10;
      v12 = v10.n128_u64[1];
      if (v10.n128_u64[1])
      {
        atomic_fetch_add_explicit((v10.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
      }

      v62 = v10;
      v13 = (*(*v10.n128_u64[0] + 224))(v10.n128_u64[0], v10);
      v14 = *&v13;
      v61 = v6;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LODWORD(v75.__vftable) = 2;
      *&v75.__imp_.__imp_ = v13;
      v76 = 0;
      v77 = v62;
      v15 = v62.n128_u64[0];
      v16 = *(v11 + 16);
      if (v16)
      {
        v58 = v4;
        v59 = v3;
        v60 = v1;
        v17 = 0;
        imp = *&v13;
        v63 = v12;
        v19 = v12;
        v20 = 2;
        do
        {
          (*(*v16[2] + 224))(v16[2]);
          v22 = *(v16 + 1);
          v23 = v16[3];
          if (v23)
          {
            atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
          }

          *block = 2;
          *&block[8] = v21;
          *&block[16] = 0;
          *&block[24] = v22;
          AMCP::DAL::DAL_Time_Delta::translate_time_delta(&v84, block, &v74);
          if ((v84.__vftable & 2) == 0)
          {
            AMCP::DAL::DAL_Time_Delta::validate(&v84);
          }

          v24 = AMCP::DAL::DAL_Time_Delta::operator<(&v84, &v75);
          if (v24)
          {
            v20 = v84.__vftable;
          }

          LODWORD(v75.__vftable) = v20;
          if (v24)
          {
            imp = v84.__imp_.__imp_;
            v17 = v85;
          }

          v75.__imp_.__imp_ = imp;
          v76 = v17;
          v25 = v87;
          if (v24)
          {
            v15 = v86;
            v26 = v87;
          }

          else
          {
            v26 = v19;
          }

          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v77.n128_u64[0] = v15;
          v77.n128_u64[1] = v26;
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          if (*&block[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&block[32]);
          }

          v16 = *v16;
          v19 = v26;
        }

        while (v16);
        v14 = imp;
        v27 = (v20 & 2) == 0;
        v3 = v59;
        v1 = v60;
        v4 = v58;
        v12 = v63;
        if (!v63)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = 0;
        v26 = v12;
        if (!v12)
        {
          goto LABEL_42;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_42:
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = v6[6].n128_u64[0];
      v28 = v61[6].n128_u64[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v15 != v29)
      {
        v51 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v51 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v28);
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
          *block = 136315650;
          *&block[4] = "IOContext_Core.cpp";
          *&block[12] = 1024;
          *&block[14] = 764;
          *&block[18] = 2080;
          *&block[20] = "not (max_timebase_size.get_clock() == inventory->get_master_timebase())";
          _os_log_error_impl(&dword_1DE1F9000, v54, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", block, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v69);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v70, "", v57);
        std::logic_error::logic_error(&v68, &v70);
        v68.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v84, &v68);
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v89 = -1;
        v84.__vftable = &unk_1F5991430;
        v85 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(block, &v84);
        *&block[32] = "void AMCP::IO_Core::IOContext_Core::cache_min_max_buffer_frame_size(const std::shared_ptr<Manifest> &)";
        *&block[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
        LODWORD(v80) = 764;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v67);
      }

      if (v27)
      {
        AMCP::DAL::DAL_Time_Delta::validate(&v75);
        v14 = v75.__imp_.__imp_;
      }

      v30 = vcvtmd_s64_f64(*&v14);
      if (v30 <= 4096)
      {
        if ((v75.__vftable & 2) == 0)
        {
          AMCP::DAL::DAL_Time_Delta::validate(&v75);
          LODWORD(v30) = vcvtmd_s64_f64(*&v75.__imp_.__imp_);
        }
      }

      else
      {
        LODWORD(v30) = 4096;
      }

      actual_sample_rate = AMCP::IO_Core::IOContext_Core::get_actual_sample_rate(v1);
      v32 = vcvtpd_s64_f64(actual_sample_rate * 0.0003);
      if (actual_sample_rate == 0.0)
      {
        v32 = 16;
      }

      *(v1 + 156) = v32;
      *(v1 + 157) = v30;
      v33 = v32;
      v34 = round(*(v1 + 76));
      if (v34 < v32 || (v33 = v30, v34 > v30))
      {
        *(v1 + 76) = v33;
      }

      if (v77.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v77.n128_u64[1]);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v35 = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(*(v1 + 20) + 32));
      if (v35)
      {
        if (!v4)
        {
          goto LABEL_74;
        }

        v36 = *(v65 + 72);
        v37 = *(v65 + 80);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v39 = *(v36 + 96);
        v38 = *(v36 + 104);
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if (v4 == v39)
        {
LABEL_74:
          std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v64, *(v1 + 6), *(v1 + 7));
          v71 = &unk_1F5962590;
          v72 = v64;
          v64 = 0uLL;
          v73 = &v71;
          std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v75, *(v1 + 6), *(v1 + 7));
          v76 = v65;
          v77.n128_u64[0] = v66;
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v77.n128_u32[2] = v35;
          std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::__value_func[abi:ne200100](v78, &v71);
          v40 = atomic_load(v1 + 304);
          if (v40)
          {
            atomic_store(1u, v1 + 305);
          }

          if (*(v1 + 600) != 1)
          {
            operator new();
          }

          v84 = v75;
          if (v75.__imp_.__imp_)
          {
            atomic_fetch_add_explicit(v75.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
          }

          v85 = v76;
          v86 = v77.n128_u64[0];
          if (v77.n128_u64[0])
          {
            atomic_fetch_add_explicit((v77.n128_u64[0] + 8), 1uLL, memory_order_relaxed);
          }

          LODWORD(v87) = v77.n128_u32[2];
          std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::__value_func[abi:ne200100](&v88, v78);
          v41 = *(v1 + 74);
          v42 = *(v1 + 34);
          *block = MEMORY[0x1E69E9820];
          *&block[8] = 1174405120;
          *&block[16] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZNS_7IO_Core14IOContext_Core22enqueue_manifest_asyncERKNSt3__110shared_ptrINS_5Graph8ManifestEEENS_15Transport_StateENS5_8functionIFvS9_EEEE3__0EEvOT__block_invoke;
          *&block[24] = &__block_descriptor_tmp_339;
          *&block[32] = v84;
          if (v84.__imp_.__imp_)
          {
            atomic_fetch_add_explicit(v84.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
          }

          v80 = v85;
          v81 = v86;
          if (v86)
          {
            atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v82 = v87;
          std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::__value_func[abi:ne200100](v83, &v88);
          dispatch_group_async(v41, v42, block);
          std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::~__value_func[abi:ne200100](v83);
          if (v81)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v81);
          }

          if (*&block[40])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&block[40]);
          }

          std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::~__value_func[abi:ne200100](&v88);
          if (v86)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v86);
          }

          if (v84.__imp_.__imp_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v84.__imp_.__imp_);
          }

          std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::~__value_func[abi:ne200100](v78);
          if (v77.n128_u64[0])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v77.n128_u64[0]);
          }

          if (v75.__imp_.__imp_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v75.__imp_.__imp_);
          }

          std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::~__value_func[abi:ne200100](&v71);
          if (*(&v64 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v64 + 1));
          }
        }

        else
        {
          AMCP::IO_Core::IOContext_Core::pause(v1, 0);
          AMCP::IO_Core::IOContext_Core::resume(v1, 0);
        }
      }

      goto LABEL_104;
    }

    v47 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v47 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *block = 136315650;
      *&block[4] = "IOContext_Core.cpp";
      *&block[12] = 1024;
      *&block[14] = 762;
      *&block[18] = 2080;
      *&block[20] = "not (inventory->get_master_timebase())";
      _os_log_error_impl(&dword_1DE1F9000, v50, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", block, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v68);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v74, "", v56);
    std::logic_error::logic_error(&v67, &v74);
    v67.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v84, &v67);
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = -1;
    v84.__vftable = &unk_1F5991430;
    v85 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(block, &v84);
    *&block[32] = "void AMCP::IO_Core::IOContext_Core::cache_min_max_buffer_frame_size(const std::shared_ptr<Manifest> &)";
    *&block[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
    LODWORD(v80) = 762;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v70);
  }

LABEL_104:
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::mutex::unlock((v1 + 200));
}

void sub_1DE296E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint8_t buf, int a36, int a37, __int16 a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a2)
  {
    v60 = *(v58 + 24);
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    v61 = *(v58 + 8);
    if (v61)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE296E90(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (a2)
  {
    v41 = *(v40 - 168);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    v42 = *(v40 - 184);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    AMCP::IO_Core::IOContext_Core::enqueue_manifest_async(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,std::function<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>)::$_0::~$_0(&a40);
    JUMPOUT(0x1DE296EECLL);
  }

  JUMPOUT(0x1DE296E80);
}

void sub_1DE296EC0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42, std::__shared_weak_count *a43)
{
  if (a2)
  {
    if (a43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a43);
    }

    if (a41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a41);
    }

    std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::~__value_func[abi:ne200100](&a31);
    if (!a18)
    {
      JUMPOUT(0x1DE297108);
    }

    JUMPOUT(0x1DE297104);
  }

  JUMPOUT(0x1DE296E80);
}

void sub_1DE296EE4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE296EECLL);
  }

  JUMPOUT(0x1DE296E80);
}

void sub_1DE296F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE296E80);
  }

  JUMPOUT(0x1DE297108);
}

void sub_1DE296F14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x1DE2970FCLL);
  }

  JUMPOUT(0x1DE296E80);
}

void sub_1DE296F98(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, void *__p, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a2)
  {
    if (__p)
    {
      a43 = __p;
      operator delete(__p);
    }

    if (a21)
    {
      operator delete(a21);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(&a55);
    boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(v57 - 192);
    MEMORY[0x1E12C0F00](&a24);
    if (a35 < 0)
    {
      operator delete(a30);
    }

    if (v55)
    {
      __cxa_free_exception(v56);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a29);
    JUMPOUT(0x1DE2970E0);
  }

  JUMPOUT(0x1DE296E80);
}

void sub_1DE29708C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE29709CLL);
  }

  JUMPOUT(0x1DE296E80);
}

void sub_1DE2970D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44)
{
  if (a2)
  {
    if (a44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a44);
    }

    if (v44)
    {
      JUMPOUT(0x1DE297104);
    }

    JUMPOUT(0x1DE297108);
  }

  JUMPOUT(0x1DE296E80);
}

void sub_1DE2971E8()
{
  __cxa_end_catch();
  std::mutex::unlock((v0 + 200));
  JUMPOUT(0x1DE296E80);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZNS_7IO_Core14IOContext_Core22enqueue_manifest_asyncERKNSt3__110shared_ptrINS_5Graph8ManifestEEENS_15Transport_StateENS5_8functionIFvS9_EEEE3__0EEvOT__block_invoke(uint64_t a1, double a2, double a3)
{
  if (AMCP::IO_Core::IOContext_Core::enqueue_manifest_internal(*(a1 + 32), (a1 + 48), *(a1 + 64), 0, 0, a2, a3) == 1)
  {
    v4 = *(a1 + 56);
    v6 = *(a1 + 48);
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 96);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, &v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_1DE2973C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::IO_Core::IOContext_Core::enqueue_manifest_async(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,std::function<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::~__value_func[abi:ne200100](a1 + 40);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t *std::unique_ptr<AMCP::IO_Core::IOContext_Core::enqueue_manifest_async(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,std::function<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>)::$_0,std::default_delete<AMCP::IO_Core::IOContext_Core::enqueue_manifest_async(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,std::function<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::~__value_func[abi:ne200100](v2 + 40);
    v3 = *(v2 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C40DADCD8D6);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<AMCP::IO_Core::IOContext_Core::enqueue_manifest_async(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,std::function<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>)::$_0 &>(dispatch_queue_s *,AMCP::IO_Core::IOContext_Core::enqueue_manifest_async(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,std::function<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>)::$_0 &)::{lambda(void *)#1}::__invoke(uint64_t a1, double a2, double a3)
{
  v7 = a1;
  if (AMCP::IO_Core::IOContext_Core::enqueue_manifest_internal(*a1, (a1 + 16), *(a1 + 32), 0, 0, a2, a3) == 1)
  {
    v4 = *(a1 + 24);
    v8 = *(a1 + 16);
    v9 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 64);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, &v8);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return std::unique_ptr<AMCP::IO_Core::IOContext_Core::enqueue_manifest_async(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,std::function<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>)::$_0,std::default_delete<AMCP::IO_Core::IOContext_Core::enqueue_manifest_async(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,std::function<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>)::$_0>>::~unique_ptr[abi:ne200100](&v7);
}

void sub_1DE29753C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::unique_ptr<AMCP::IO_Core::IOContext_Core::enqueue_manifest_async(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,std::function<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>)::$_0,std::default_delete<AMCP::IO_Core::IOContext_Core::enqueue_manifest_async(std::shared_ptr<AMCP::Graph::Manifest> const&,AMCP::Transport_State,std::function<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c151_ZTSZN4AMCP7IO_Core14IOContext_Core22enqueue_manifest_asyncERKNSt3__110shared_ptrINS_5Graph8ManifestEEENS_15Transport_StateENS2_8functionIFvS6_EEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::~__value_func[abi:ne200100](a1 + 72);
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t __copy_helper_block_e8_32c151_ZTSZN4AMCP7IO_Core14IOContext_Core22enqueue_manifest_asyncERKNSt3__110shared_ptrINS_5Graph8ManifestEEENS_15Transport_StateENS2_8functionIFvS6_EEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = *(a2 + 64);
  return std::__function::__value_func<void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::__value_func[abi:ne200100](a1 + 72, a2 + 72);
}

void sub_1DE297620(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core30maybe_update_running_iocontextEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  AMCP::IO_Core::IOContext_Core::pause(*(a1 + 8), 0);
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Inventory::report_thread_error(*(v4 + 192));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE297714(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5962590;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::~__func(void *a1)
{
  *a1 = &unk_1F5962590;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0,std::allocator<AMCP::IO_Core::IOContext_Core::maybe_update_running_iocontext(void)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Manifest>)>::~__func(void *a1)
{
  *a1 = &unk_1F5962590;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::IO_Core::IOContext_Core::~IOContext_Core(AMCP::IO_Core::IOContext_Core *this)
{
  AMCP::IO_Core::IOContext_Core::~IOContext_Core(this);

  JUMPOUT(0x1E12C1730);
}

{
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 272));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 272));
  std::mutex::~mutex((this + 200));
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  std::unique_ptr<AMCP::IO_Core::IO_Thread>::~unique_ptr[abi:ne200100](this + 20);
  v3 = *(this + 19);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((this + 64));
  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  AMCP::IO_Core::Node::~Node(this);
}

uint64_t *std::unique_ptr<AMCP::IO_Core::IO_Thread>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 48))
    {
      AMCP::IO_Core::Thread_Control_State::set_state(*(v2 + 32), 0);
      std::thread::join(*(v2 + 48));
    }

    std::unique_ptr<std::thread>::reset[abi:ne200100]((v2 + 48), 0);
    v3 = *(v2 + 40);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C40B4EB6680);
  }

  return a1;
}

NSObject **AMCP::Utility::Dispatch_Queue::operator=(NSObject **a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
  }

  v4 = *a1;
  *a1 = object;
  if (v4)
  {
    dispatch_release(v4);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Queue>::__on_zero_shared(uint64_t a1)
{
  AMCP::Graph::Manifest_Queue::flush((a1 + 32));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 640);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](a1 + 608);
  v2 = *(a1 + 600);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 584) == 1)
  {
    caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 512));
    v3 = *(a1 + 496);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed((a1 + 392));
  v4 = *(a1 + 376);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::condition_variable::~condition_variable((a1 + 296));
  std::mutex::~mutex((a1 + 232));
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((a1 + 224), 0);
  std::mutex::lock((a1 + 144));
  v5 = *(a1 + 112);
  if (v5)
  {
    goto LABEL_13;
  }

  v6 = atomic_exchange_explicit((a1 + 48), 0, memory_order_acquire);
  if (v6)
  {
    v7 = 0;
    do
    {
      v5 = v6;
      v8 = (v6 + 200);
      v6 = atomic_load((v6 + 200));
      atomic_store(v7, v8);
      v7 = v5;
    }

    while (v6);
    while (1)
    {
      *(a1 + 112) = v5;
      do
      {
LABEL_13:
        v9 = atomic_load(v5 + 25);
        *(a1 + 112) = v9;
        AMCP::Graph::Manifest_Queue::Incoming_Payload::~Incoming_Payload(v5);
        MEMORY[0x1E12C1730]();
        v5 = *(a1 + 112);
      }

      while (v5);
      v10 = atomic_exchange_explicit((a1 + 48), 0, memory_order_acquire);
      if (!v10)
      {
        break;
      }

      v5 = 0;
      do
      {
        v11 = v5;
        v5 = v10;
        v12 = (v10 + 200);
        v10 = atomic_load((v10 + 200));
        atomic_store(v11, v12);
      }

      while (v10);
    }
  }

  while (1)
  {
    v13 = caulk::concurrent::stack<AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::Message,caulk::concurrent::intrusive_single_link_member<AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::Message,&AMCP::Utility::Realtime_Message_Queue<AMCP::Graph::Manifest_Queue::Incoming_Payload>::Message::m_next_free_message>>::pop();
    if (!v13)
    {
      break;
    }

    AMCP::Graph::Manifest_Queue::Incoming_Payload::~Incoming_Payload(v13);
    MEMORY[0x1E12C1730]();
  }

  std::mutex::unlock((a1 + 144));

  std::mutex::~mutex((a1 + 144));
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Queue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5961028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void non-virtual thunk toHALS_IOUAStream::~HALS_IOUAStream(HALS_IOUAStream *this)
{
  HALS_IOUAStream::~HALS_IOUAStream((this - 72));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_IOUAStream::~HALS_IOUAStream((this - 72));
}

void HALS_IOUAStream::~HALS_IOUAStream(HALS_IOUAStream *this)
{
  *this = &unk_1F59626A0;
  v2 = (this + 72);
  *(this + 9) = &unk_1F59627A0;
  HALS_IOUAStream::unmap_memory(this);
  HALB_FormatList::~HALB_FormatList((this + 128));
  HALS_IOUAObject::~HALS_IOUAObject(v2, v3);

  HALS_Stream::~HALS_Stream(this);
}

{
  HALS_IOUAStream::~HALS_IOUAStream(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOUAStream::unmap_memory(HALS_IOUAStream *this)
{
  v2 = (this + 188);
  v1 = *(this + 47);
  if (v1)
  {
    v3 = *(this + 24);
    if (v3)
    {
      v4 = *(this + 10);
      v5 = *(v4 + 736);
      v6 = *(v4 + 744);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v1 = *(this + 47);
        v3 = *(this + 24);
      }

      HALS_IOUAUCDriver::unmap_memory(*(v5 + 4), v1, v3);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      *v2 = 0;
      v2[1] = 0;
    }
  }
}

void sub_1DE297DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v12 = __cxa_begin_catch(exception_object);
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "HALS_IOUAStream.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 75;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception unmapping io buffers", &a9, 0x12u);
    }

    *v10 = 0;
    v10[1] = 0;
    __cxa_end_catch();
    JUMPOUT(0x1DE297DB8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_Stream::GetStartingChannel(HALS_Stream *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F627363686ELL;
  v4 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5);
}

void HALS_IOUAStream::SetPropertyData(HALS_IOUAStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, const AudioStreamBasicDescription *a5, uint64_t a6, CFTypeRef *a7, HALS_Client *a8)
{
  v55 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8, a5, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v15 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  if (!v15)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "HALS_IOUAStream.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 495;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOUAStream::SetPropertyData: owning device is missing", &buf, 0x12u);
    }

    v45 = __cxa_allocate_exception(0x10uLL);
    *v45 = off_1F5991DD8;
    v45[2] = 560947818;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector == 1885762592)
  {
    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "HALS_IOUAStream.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 539;
      v46 = MEMORY[0x1E69E9C10];
      v47 = "%25s:%-5d  HALS_IOUAStream::SetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
      goto LABEL_54;
    }

    *&buf.mSampleRate = 40;
    v32 = *(this + 10);
    v33 = *(v32 + 736);
    v34 = *(v32 + 744);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::GetPropertyData(*(v33 + 4), a3, *(this + 22), 0, 0, outputStruct, &buf);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    HALB_FormatList::BestMatchForPhysicalFormat(this + 128, a5, &v53, v35, v36, outputStruct[0]);
    if (a8 && (v53.mFormatID != 1819304813 || (v53.mFormatFlags & 0x40) != 0))
    {
      HALS_Client::SetNonMixableFormat(a8, v15[4]);
    }

    v37 = *(this + 10);
    v38 = *(v37 + 736);
    v31 = *(v37 + 744);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::SetPropertyData(v38, a3, *(this + 22), 0, 0, &v53, 0x28uLL);
LABEL_39:
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    goto LABEL_43;
  }

  if (mSelector == 1936092532)
  {
    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "HALS_IOUAStream.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 516;
      v46 = MEMORY[0x1E69E9C10];
      v47 = "%25s:%-5d  HALS_IOUAStream::SetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
      goto LABEL_54;
    }

    *&v50.mSelector = *&a3->mSelector;
    mElement = a3->mElement;
    v50.mScope = 1885762592;
    v50.mElement = mElement;
    v49 = 40;
    v23 = *(this + 10);
    v24 = *(v23 + 736);
    v25 = *(v23 + 744);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::GetPropertyData(*(v24 + 4), &v50, *(this + 22), 0, 0, outputStruct, &v49);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    v28 = *&a5->mBytesPerPacket;
    *&buf.mSampleRate = *&a5->mSampleRate;
    *&buf.mBytesPerPacket = v28;
    *&buf.mBitsPerChannel = *&a5->mBitsPerChannel;
    if (buf.mFormatID == 1819304813)
    {
      buf.mBitsPerChannel = 0;
      *&buf.mFramesPerPacket = 0;
      *&buf.mFormatFlags = 0;
    }

    HALB_FormatList::BestMatchForPhysicalFormat(this + 128, &buf, &v53, v26, v27, outputStruct[0]);
    if (a8 && (v53.mFormatID != 1819304813 || (v53.mFormatFlags & 0x40) != 0))
    {
      HALS_Client::SetNonMixableFormat(a8, v15[4]);
    }

    v29 = *(this + 10);
    v30 = *(v29 + 736);
    v31 = *(v29 + 744);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::SetPropertyData(v30, &v50, *(this + 22), 0, 0, &v53, 0x28uLL);
    goto LABEL_39;
  }

  if (mSelector == 1935762292)
  {
    if (a4 > 3)
    {
      if (!*(this + 14))
      {
        v17 = *(this + 10);
        v18 = *(v17 + 736);
        v19 = *(v17 + 744);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HALS_IOUAUCDriver::SetPropertyData(v18, a3, *(this + 22), 0, 0, a5, a4);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 0x40000000;
      v51[2] = ___ZN15HALS_IOUAStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
      v51[3] = &__block_descriptor_tmp_23;
      v51[4] = this;
      v51[5] = a5;
      v20 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v20, v51);
      goto LABEL_43;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_55:
      v48 = __cxa_allocate_exception(0x10uLL);
      *v48 = off_1F5991DD8;
      v48[2] = 561211770;
    }

    LODWORD(buf.mSampleRate) = 136315394;
    *(&buf.mSampleRate + 4) = "HALS_IOUAStream.cpp";
    LOWORD(buf.mFormatFlags) = 1024;
    *(&buf.mFormatFlags + 2) = 503;
    v46 = MEMORY[0x1E69E9C10];
    v47 = "%25s:%-5d  HALS_IOUAStream::SetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
LABEL_54:
    _os_log_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_ERROR, v47, &buf, 0x12u);
    goto LABEL_55;
  }

  if (HALS_Stream::HasProperty(this, a2, a3, a8))
  {
    HALS_Object::SetPropertyData(this, a2, a3, v39, v40, v41, v42, a8);
  }

  HALS_IOUAObject::SetPropertyData((this + 72), &a3->mSelector, a5, a7, v40, v41, v42, v43);
LABEL_43:
  HALS_ObjectMap::ReleaseObject(v15, v21);
}

void sub_1DE2985F0(_Unwind_Exception *a1, HALS_Object *a2)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  HALS_ObjectMap::ReleaseObject(v2, a2);
  _Unwind_Resume(a1);
}

void HALS_IOUAStream::GetPropertyData(HALS_IOUAStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, AudioObjectPropertyAddress *a5, AudioStreamBasicDescription *a6, uint64_t a7, AudioStreamBasicDescription *a8, HALS_Client *a9)
{
  v142 = *MEMORY[0x1E69E9840];
  if (a9)
  {
    v16 = *(a9 + 266) ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v131 = 0;
  v132 = &v131;
  v133 = 0x5002000000;
  v134 = __Block_byref_object_copy__370;
  v135 = __Block_byref_object_dispose__371;
  v17 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v100 = v17;
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v140 = 136315394;
      *&v140[4] = "HALS_IOUAStream.cpp";
      *&v140[12] = 1024;
      *&v140[14] = 211;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: owning device is missing", v140, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v18 = (*(*v17 + 704))(v17, a9);
  v98 = v19;
  v21 = *&v18;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1935762291)
  {
    v23 = v16 & 1;
    if (mSelector <= 1936092512)
    {
      if (mSelector > 1935960433)
      {
        if (mSelector != 1935960434)
        {
          if (mSelector != 1936092451)
          {
            if (mSelector == 1936092479)
            {
              if (a4 > 0x27)
              {
                a5->mSelector = 40;
                *v140 = 0;
                *&v140[8] = v140;
                *&v140[16] = 0x2000000000;
                LOBYTE(v141) = 0;
                v108[0] = MEMORY[0x1E69E9820];
                v108[1] = 0x40000000;
                v108[2] = ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15;
                v108[3] = &unk_1E86735E0;
                v108[5] = this;
                v108[6] = v18;
                v109 = v19;
                v108[4] = v140;
                v110 = a6;
                v24 = (*(*this + 64))(this);
                HALB_CommandGate::ExecuteCommand(v24, v108);
                if ((*(*&v140[8] + 24) & 1) == 0)
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v137 = "HALS_IOUAStream.cpp";
                    v138 = 1024;
                    v139 = 423;
                    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOUAStream::_GetPropertyData: kAudioDevicePropertyStreamFormatSupported: the format is not supported", buf, 0x12u);
                  }

                  v25 = __cxa_allocate_exception(0x10uLL);
                  *v25 = off_1F5991DD8;
                  v25[2] = 560226676;
                }

                goto LABEL_146;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *v140 = 136315394;
                *&v140[4] = "HALS_IOUAStream.cpp";
                *&v140[12] = 1024;
                *&v140[14] = 406;
                v94 = MEMORY[0x1E69E9C10];
                v95 = "%25s:%-5d  HALS_IOUAStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatSupported";
                goto LABEL_190;
              }

              goto LABEL_191;
            }

            goto LABEL_147;
          }

          *v140 = 0;
          *&v140[8] = v140;
          *&v140[16] = 0x2000000000;
          v141 = 0;
          v111[0] = MEMORY[0x1E69E9820];
          v111[1] = 0x40000000;
          v111[2] = ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3;
          v111[3] = &unk_1E86735B8;
          v113 = v23;
          v112 = a4;
          v111[4] = v140;
          v111[5] = this;
          v111[6] = a6;
          v73 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v73, v111);
          v41 = *(*&v140[8] + 24);
          if (v41 && (v98 & 1) != 0)
          {
            v74 = (v41 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v75 = xmmword_1DE757E30;
            v76 = vdupq_n_s64(v41 - 1);
            v77 = vdupq_n_s64(2uLL);
            do
            {
              v78 = vmovn_s64(vcgeq_u64(v76, v75));
              if (v78.i8[0])
              {
                a6->mSampleRate = v21;
              }

              if (v78.i8[4])
              {
                a6[1].mSampleRate = v21;
              }

              v75 = vaddq_s64(v75, v77);
              a6 += 2;
              v74 -= 2;
            }

            while (v74);
          }

          goto LABEL_120;
        }

        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_191;
          }

          *v140 = 136315394;
          *&v140[4] = "HALS_IOUAStream.cpp";
          *&v140[12] = 1024;
          *&v140[14] = 379;
          v94 = MEMORY[0x1E69E9C10];
          v95 = "%25s:%-5d  HALS_IOUAStream::_GetPropertyData: bad property data size for kAudioStreamPropertyDirection";
          goto LABEL_190;
        }

        v117[0] = MEMORY[0x1E69E9820];
        v117[1] = 0x40000000;
        v117[2] = ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11;
        v117[3] = &__block_descriptor_tmp_12_385;
        v117[4] = this;
        v117[5] = a6;
        v80 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v80, v117);
        goto LABEL_157;
      }

      if (mSelector != 1935762292)
      {
        if (mSelector == 1935894638)
        {
          if (a4 <= 3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_191;
            }

            *v140 = 136315394;
            *&v140[4] = "HALS_IOUAStream.cpp";
            *&v140[12] = 1024;
            *&v140[14] = 249;
            v94 = MEMORY[0x1E69E9C10];
            v95 = "%25s:%-5d  HALS_IOUAStream::GetPropertyData: bad property data size for kAudioStreamPropertyStartingChannel";
            goto LABEL_190;
          }

          if (*(this + 14) == 1)
          {
            NeighborStartingChannel = HALS_Device::GetNeighborStartingChannel(this, v100, v20);
          }

          else
          {
            *v140 = 4;
            v90 = *(this + 10);
            v91 = *(v90 + 736);
            v92 = *(v90 + 744);
            if (v92)
            {
              atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *buf = 0;
            HALS_IOUAUCDriver::GetPropertyData(*(v91 + 4), "nhcsbolg", *(this + 22), 0, 0, buf, v140);
            if (v92)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v92);
            }

            if (*buf <= 1u)
            {
              NeighborStartingChannel = 1;
            }

            else
            {
              NeighborStartingChannel = *buf;
            }
          }

          LODWORD(a6->mSampleRate) = NeighborStartingChannel;
          goto LABEL_157;
        }

LABEL_147:
        if (HALS_Stream::HasProperty(this, a2, a3, a9))
        {
          HALS_Stream::GetPropertyData(this, a2, a3, a4, &a5->mSelector, a6, a7, a8, a9);
        }

        else
        {
          HALS_IOUAObject::GetPropertyData((this + 72), &a3->mSelector, a5, a6, a8, v87, v88, v89, v97);
        }

        goto LABEL_159;
      }

      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_191;
        }

        *v140 = 136315394;
        *&v140[4] = "HALS_IOUAStream.cpp";
        *&v140[12] = 1024;
        *&v140[14] = 370;
        v94 = MEMORY[0x1E69E9C10];
        v95 = "%25s:%-5d  HALS_IOUAStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
        goto LABEL_190;
      }

      v118[0] = MEMORY[0x1E69E9820];
      v118[1] = 0x40000000;
      v118[2] = ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9;
      v118[3] = &__block_descriptor_tmp_10;
      v118[4] = this;
      v118[5] = a6;
      v83 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v83, v118);
LABEL_157:
      v62 = 4;
LABEL_158:
      a5->mSelector = v62;
      goto LABEL_159;
    }

    if (mSelector > 1936092531)
    {
      if (mSelector != 1936092532)
      {
        if (mSelector == 1952542835)
        {
          if (a4 <= 3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_191;
            }

            *v140 = 136315394;
            *&v140[4] = "HALS_IOUAStream.cpp";
            *&v140[12] = 1024;
            *&v140[14] = 471;
            v94 = MEMORY[0x1E69E9C10];
            v95 = "%25s:%-5d  HALS_IOUAStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsReferenceStream";
            goto LABEL_190;
          }

          v35 = *(this + 14) == 1;
        }

        else
        {
          if (mSelector != 1952805485)
          {
            goto LABEL_147;
          }

          if (a4 <= 3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_191;
            }

            *v140 = 136315394;
            *&v140[4] = "HALS_IOUAStream.cpp";
            *&v140[12] = 1024;
            *&v140[14] = 241;
            v94 = MEMORY[0x1E69E9C10];
            v95 = "%25s:%-5d  HALS_IOUAStream::GetPropertyData: bad property data size for kAudioStreamPropertyTerminalType";
            goto LABEL_190;
          }

          *v140 = 4;
          v32 = *(this + 10);
          v33 = *(v32 + 736);
          v34 = *(v32 + 744);
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *buf = 0;
          HALS_IOUAUCDriver::GetPropertyData(*(v33 + 4), "mretbolg", *(this + 22), 0, 0, buf, v140);
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          v35 = *buf;
        }

        goto LABEL_123;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_191;
        }

        *v140 = 136315394;
        *&v140[4] = "HALS_IOUAStream.cpp";
        *&v140[12] = 1024;
        *&v140[14] = 286;
        v94 = MEMORY[0x1E69E9C10];
        v95 = "%25s:%-5d  HALS_IOUAStream::GetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
        goto LABEL_190;
      }

      HALS_IOUAStream::get_current_format(this, a6);
      if (a6->mFormatID == 1819304813 && (a6->mFormatFlags & 0x40) == 0)
      {
        if (v23)
        {
          v81 = 9;
        }

        else
        {
          v81 = 11;
        }

        v82 = 4 * a6->mChannelsPerFrame;
        a6->mFormatFlags = v81;
        a6->mBytesPerPacket = v82;
        a6->mFramesPerPacket = 1;
        a6->mBytesPerFrame = v82;
        a6->mBitsPerChannel = 32;
      }

LABEL_135:
      if (v98)
      {
        a6->mSampleRate = v21;
      }

      v62 = 40;
      goto LABEL_158;
    }

    if (mSelector != 1936092513)
    {
      if (mSelector != 1936092525)
      {
        goto LABEL_147;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_191;
        }

        *v140 = 136315394;
        *&v140[4] = "HALS_IOUAStream.cpp";
        *&v140[12] = 1024;
        *&v140[14] = 296;
        v94 = MEMORY[0x1E69E9C10];
        v95 = "%25s:%-5d  HALS_IOUAStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatMatch";
        goto LABEL_190;
      }

      a5->mSelector = 40;
      HALS_IOUAStream::get_current_format(this, v132 + 1);
      v48 = v132;
      if (v132[1].mFormatID == 1819304813 && (v132[1].mFormatFlags & 0x40) == 0)
      {
        if (v23)
        {
          v49 = 9;
        }

        else
        {
          v49 = 11;
        }

        v50 = 4 * v132[1].mChannelsPerFrame;
        v132[1].mFormatFlags = v49;
        v48[1].mBytesPerPacket = v50;
        v48[1].mFramesPerPacket = 1;
        v48[1].mBytesPerFrame = v50;
        v48[1].mBitsPerChannel = 32;
      }

      if (a8)
      {
        v51 = a7 == 40;
      }

      else
      {
        v51 = 0;
      }

      if (v51)
      {
        v52 = a8;
      }

      else
      {
        v52 = a6;
      }

      v28 = v125;
      v125[0] = MEMORY[0x1E69E9820];
      v125[1] = 0x40000000;
      v125[2] = ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
      v125[3] = &unk_1E8673500;
      *&v125[6] = v21;
      v126 = v98;
      v53 = *&v52->mBytesPerPacket;
      v127 = *&v52->mSampleRate;
      v128 = v53;
      v54 = *&v52->mBitsPerChannel;
      v125[5] = this;
      v125[4] = &v131;
      v129 = v54;
      v130 = a6;
      v31 = (*(*this + 64))(this);
LABEL_84:
      HALB_CommandGate::ExecuteCommand(v31, v28);
      goto LABEL_159;
    }

    *v140 = 0;
    *&v140[8] = v140;
    *&v140[16] = 0x2000000000;
    v141 = 0;
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 0x40000000;
    v114[2] = ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
    v114[3] = &unk_1E8673590;
    v116 = v23;
    v115 = a4;
    v114[4] = v140;
    v114[5] = this;
    v114[6] = a6;
    v84 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v84, v114);
    v68 = *(*&v140[8] + 24);
    if (v68 && (v98 & 1) != 0)
    {
      p_mFormatID = &a6[1].mFormatID;
      v86 = *(*&v140[8] + 24);
      do
      {
        *(p_mFormatID - 6) = v21;
        *(p_mFormatID - 1) = v21;
        *p_mFormatID = v21;
        p_mFormatID += 7;
        --v86;
      }

      while (v86);
    }

    goto LABEL_144;
  }

  if (mSelector > 1885762591)
  {
    if (mSelector <= 1885762622)
    {
      if (mSelector != 1885762592)
      {
        if (mSelector == 1885762595)
        {
          *v140 = 0;
          *&v140[8] = v140;
          *&v140[16] = 0x2000000000;
          v141 = 0;
          v104[0] = MEMORY[0x1E69E9820];
          v104[1] = 0x40000000;
          v104[2] = ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_19;
          v104[3] = &unk_1E8673630;
          v105 = a4;
          v104[4] = v140;
          v104[5] = this;
          v104[6] = a6;
          v40 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v40, v104);
          v41 = *(*&v140[8] + 24);
          if (v41 && (v98 & 1) != 0)
          {
            v42 = (v41 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v43 = xmmword_1DE757E30;
            v44 = vdupq_n_s64(v41 - 1);
            v45 = vdupq_n_s64(2uLL);
            do
            {
              v46 = vmovn_s64(vcgeq_u64(v44, v43));
              if (v46.i8[0])
              {
                a6->mSampleRate = v21;
              }

              if (v46.i8[4])
              {
                a6[1].mSampleRate = v21;
              }

              v43 = vaddq_s64(v43, v45);
              a6 += 2;
              v42 -= 2;
            }

            while (v42);
          }

LABEL_120:
          v79 = 40 * v41;
LABEL_145:
          a5->mSelector = v79;
LABEL_146:
          _Block_object_dispose(v140, 8);
          goto LABEL_159;
        }

        goto LABEL_147;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_191;
        }

        *v140 = 136315394;
        *&v140[4] = "HALS_IOUAStream.cpp";
        *&v140[12] = 1024;
        *&v140[14] = 328;
        v94 = MEMORY[0x1E69E9C10];
        v95 = "%25s:%-5d  HALS_IOUAStream::GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
        goto LABEL_190;
      }

      HALS_IOUAStream::get_current_format(this, a6);
      goto LABEL_135;
    }

    if (mSelector == 1885762623)
    {
      if (a4 > 0x27)
      {
        a5->mSelector = 40;
        *v140 = 0;
        *&v140[8] = v140;
        *&v140[16] = 0x2000000000;
        LOBYTE(v141) = 0;
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 0x40000000;
        v101[2] = ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_21;
        v101[3] = &unk_1E8673658;
        v101[5] = this;
        v101[6] = v18;
        v102 = v19;
        v101[4] = v140;
        v103 = a6;
        v71 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v71, v101);
        if ((*(*&v140[8] + 24) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v137 = "HALS_IOUAStream.cpp";
            v138 = 1024;
            v139 = 465;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOUAStream::_GetPropertyData: kAudioStreamPropertyPhysicalFormatSupported: the format is not supported", buf, 0x12u);
          }

          v72 = __cxa_allocate_exception(0x10uLL);
          *v72 = off_1F5991DD8;
          v72[2] = 560226676;
        }

        goto LABEL_146;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v140 = 136315394;
        *&v140[4] = "HALS_IOUAStream.cpp";
        *&v140[12] = 1024;
        *&v140[14] = 448;
        v94 = MEMORY[0x1E69E9C10];
        v95 = "%25s:%-5d  HALS_IOUAStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatSupported";
LABEL_190:
        _os_log_impl(&dword_1DE1F9000, v94, OS_LOG_TYPE_ERROR, v95, v140, 0x12u);
      }

LABEL_191:
      v96 = __cxa_allocate_exception(0x10uLL);
      *v96 = off_1F5991DD8;
      v96[2] = 561211770;
    }

    if (mSelector != 1885762657)
    {
      if (mSelector != 1885762669)
      {
        goto LABEL_147;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_191;
        }

        *v140 = 136315394;
        *&v140[4] = "HALS_IOUAStream.cpp";
        *&v140[12] = 1024;
        *&v140[14] = 337;
        v94 = MEMORY[0x1E69E9C10];
        v95 = "%25s:%-5d  HALS_IOUAStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatMatch";
        goto LABEL_190;
      }

      a5->mSelector = 40;
      HALS_IOUAStream::get_current_format(this, v132 + 1);
      if (a8)
      {
        v26 = a7 == 40;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        v27 = a8;
      }

      else
      {
        v27 = a6;
      }

      v28 = v119;
      v119[0] = MEMORY[0x1E69E9820];
      v119[1] = 0x40000000;
      v119[2] = ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7;
      v119[3] = &unk_1E8673528;
      *&v119[6] = v21;
      v120 = v98;
      v29 = *&v27->mBytesPerPacket;
      v121 = *&v27->mSampleRate;
      v122 = v29;
      v30 = *&v27->mBitsPerChannel;
      v119[5] = this;
      v119[4] = &v131;
      v123 = v30;
      v124 = a6;
      v31 = (*(*this + 64))(this);
      goto LABEL_84;
    }

    *v140 = 0;
    *&v140[8] = v140;
    *&v140[16] = 0x2000000000;
    v141 = 0;
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 0x40000000;
    v106[2] = ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_17;
    v106[3] = &unk_1E8673608;
    v107 = a4;
    v106[4] = v140;
    v106[5] = this;
    v106[6] = a6;
    v67 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v67, v106);
    v68 = *(*&v140[8] + 24);
    if (v68 && (v98 & 1) != 0)
    {
      v69 = &a6[1].mFormatID;
      v70 = *(*&v140[8] + 24);
      do
      {
        *(v69 - 6) = v21;
        *(v69 - 1) = v21;
        *v69 = v21;
        v69 += 7;
        --v70;
      }

      while (v70);
    }

LABEL_144:
    v79 = 56 * v68;
    goto LABEL_145;
  }

  if (mSelector > 1819569762)
  {
    if (mSelector == 1819569763)
    {
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_191;
        }

        *v140 = 136315394;
        *&v140[4] = "HALS_IOUAStream.cpp";
        *&v140[12] = 1024;
        *&v140[14] = 272;
        v94 = MEMORY[0x1E69E9C10];
        v95 = "%25s:%-5d  HALS_IOUAStream::GetPropertyData: bad property data size for kAudioStreamPropertyLatency";
        goto LABEL_190;
      }

      *v140 = 4;
      v63 = *(this + 10);
      v64 = *(v63 + 736);
      v65 = *(v63 + 744);
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *buf = 0;
      HALS_IOUAUCDriver::GetPropertyData(*(v64 + 4), "cntlbolg", *(this + 22), 0, 0, buf, v140);
      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }

      v66 = *buf;
      if (v98)
      {
        v66 = (v21 / (*(*v100 + 272))(v100) * v66);
      }

      v35 = v66 + HALS_Stream::GetStreamLatencyFramesDueToHostedDSP(this, a9);
LABEL_123:
      LODWORD(a6->mSampleRate) = v35;
      goto LABEL_157;
    }

    v36 = 1851878764;
  }

  else
  {
    if (mSelector == 1668641652)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - *(this + 12)) >> 2) >= a4 / 0xCuLL)
      {
        v55 = a4 / 0xCuLL;
      }

      else
      {
        v55 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - *(this + 12)) >> 2);
      }

      if (v55)
      {
        v56 = 0;
        v57 = 0;
        do
        {
          v58 = *(this + 12);
          if (0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - v58) >> 2) > v57)
          {
            v59 = a6 + v56;
            v60 = (v58 + v56);
            v61 = *v60;
            *(v59 + 2) = *(v60 + 2);
            *v59 = v61;
          }

          ++v57;
          v56 += 12;
        }

        while (12 * v55 != v56);
      }

      v62 = 12 * v55;
      goto LABEL_158;
    }

    v36 = 1819173229;
  }

  if (mSelector != v36)
  {
    goto LABEL_147;
  }

  if (a4 <= 7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_191;
    }

    *v140 = 136315394;
    *&v140[4] = "HALS_IOUAStream.cpp";
    *&v140[12] = 1024;
    *&v140[14] = 219;
    v94 = MEMORY[0x1E69E9C10];
    v95 = "%25s:%-5d  HALS_IOUAStream::GetPropertyData: bad property data size for kAudioObjectPropertyName";
    goto LABEL_190;
  }

  v37 = *(this + 10);
  v38 = *(v37 + 736);
  v39 = *(v37 + 744);
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v143 = *(this + 22);
  *(&v143 + 1) = *&a3->mSelector;
  HALS_IOUAUCDriver::get_string_property(v140, v38, v143, a3->mElement, a8, a7);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  *&a6->mSampleRate = CFRetain(*v140);
  a5->mSelector = 8;
  if (*v140)
  {
    CFRelease(*v140);
  }

LABEL_159:
  HALS_ObjectMap::ReleaseObject(v100, v19);
  _Block_object_dispose(&v131, 8);
}

void sub_1DE299CA4(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, HALS_ObjectMap *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  HALS_ObjectMap::ReleaseObject(a12, a2);
  _Block_object_dispose((v13 - 256), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__370(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void HALS_IOUAStream::get_current_format(HALS_IOUAStream *this, AudioStreamBasicDescription *a2)
{
  v5 = 40;
  v2 = *(this + 10);
  v3 = *(v2 + 736);
  v4 = *(v2 + 744);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HALS_IOUAUCDriver::GetPropertyData(*(v3 + 4), " tfpbolg", *(this + 22), 0, 0, a2, &v5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE299E20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, AudioStreamBasicDescription *a4, BOOL a5)
{
  v6 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    *&v9.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v9.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v6 + 160), *(v6 + 168), &v9, *(a1 + 48));
    HALB_FormatList::BestMatchForVirtualFormat(&v9, (a1 + 64), *(a1 + 104), v7, v8, *(*(*(a1 + 32) + 8) + 40));
    HALB_FormatList::~HALB_FormatList(&v9);
  }

  else
  {
    HALB_FormatList::BestMatchForVirtualFormat(v6 + 128, (a1 + 64), *(a1 + 104), a4, a5, *(*(*(a1 + 32) + 8) + 40));
  }
}

void sub_1DE299EF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE299EE0);
}

void ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, AudioStreamBasicDescription *a4, BOOL a5)
{
  v6 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    *&v9.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v9.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v6 + 160), *(v6 + 168), &v9, *(a1 + 48));
    HALB_FormatList::BestMatchForPhysicalFormat(&v9, (a1 + 64), *(a1 + 104), v7, v8, *(*(*(a1 + 32) + 8) + 40));
    HALB_FormatList::~HALB_FormatList(&v9);
  }

  else
  {
    HALB_FormatList::BestMatchForPhysicalFormat(v6 + 128, (a1 + 64), *(a1 + 104), a4, a5, *(*(*(a1 + 32) + 8) + 40));
  }
}

void sub_1DE299FCC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE299FBCLL);
}

void sub_1DE29A088(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4, BOOL a5)
{
  v6 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    *&v9.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v9.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v6 + 160), *(v6 + 168), &v9, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*&v9.mFormat.mFormatID, *&v9.mFormat.mBytesPerPacket, *(a1 + 64), v7, v8);
    HALB_FormatList::~HALB_FormatList(&v9);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(v6 + 136), *(v6 + 144), *(a1 + 64), a4, a5);
  }
}

void sub_1DE29A154(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALB_FormatList::~HALB_FormatList(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE29A144);
}

__n128 ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_17(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  *(v3 + 24) = 0;
  if (v1 >= 0x38)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1 / 0x38uLL;
    v8 = -1;
    do
    {
      v9 = *(v2 + 160);
      if (++v8 >= (0x6DB6DB6DB6DB6DB7 * ((*(v2 + 168) - v9) >> 3)))
      {
        break;
      }

      v10 = v9 + v5;
      v5 += 56;
      v11 = v4 + 56 * v6;
      result = *v10;
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      *(v11 + 48) = *(v10 + 48);
      *(v11 + 16) = v13;
      *(v11 + 32) = v14;
      *v11 = result;
      v6 = *(v3 + 24) + 1;
      *(v3 + 24) = v6;
    }

    while (v6 < v7);
  }

  return result;
}

void sub_1DE29A25C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOUAStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_21(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4, BOOL a5)
{
  v6 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    *&v9.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v9.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v6 + 160), *(v6 + 168), &v9, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*&v9.mFormat.mBitsPerChannel, *&v9.mSampleRateRange.mMinimum, *(a1 + 64), v7, v8);
    HALB_FormatList::~HALB_FormatList(&v9);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(v6 + 160), *(v6 + 168), *(a1 + 64), a4, a5);
  }
}

void sub_1DE29A328(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALB_FormatList::~HALB_FormatList(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE29A318);
}

uint64_t HALS_IOUAStream::GetPropertyDataSize(HALS_IOUAStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1936092450)
  {
    if (mSelector == 1936092451)
    {
      v10 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 0x40000000;
      v21[2] = ___ZNK15HALS_IOUAStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
      v21[3] = &unk_1E8673488;
      v21[4] = &v23;
      v21[5] = this;
      v11 = (*(*this + 64))(this);
      goto LABEL_17;
    }

    if (mSelector == 1936092513)
    {
      v10 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 0x40000000;
      v22[2] = ___ZNK15HALS_IOUAStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
      v22[3] = &unk_1E8673460;
      v22[4] = &v23;
      v22[5] = this;
      v11 = (*(*this + 64))(this);
      goto LABEL_17;
    }

    if (mSelector != 1952542835)
    {
      goto LABEL_13;
    }

    v12 = 4;
LABEL_11:
    v26 = v12;
    goto LABEL_18;
  }

  switch(mSelector)
  {
    case 0x63757374u:
      v12 = (*(this + 26) - *(this + 24)) & 0xFFFFFFFC;
      goto LABEL_11;
    case 0x70667423u:
      v10 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___ZNK15HALS_IOUAStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
      v19[3] = &unk_1E86734D8;
      v19[4] = &v23;
      v19[5] = this;
      v11 = (*(*this + 64))(this);
      goto LABEL_17;
    case 0x70667461u:
      v10 = v20;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = ___ZNK15HALS_IOUAStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
      v20[3] = &unk_1E86734B0;
      v20[4] = &v23;
      v20[5] = this;
      v11 = (*(*this + 64))(this);
LABEL_17:
      HALB_CommandGate::ExecuteCommand(v11, v10);
      v12 = *(v24 + 6);
      goto LABEL_18;
  }

LABEL_13:
  if (HALS_Stream::HasProperty(this, a2, a3, a6))
  {
    PropertyDataSize = HALS_Stream::GetPropertyDataSize(this, a2, a3);
  }

  else
  {
    PropertyDataSize = HALS_IOUAObject::GetPropertyDataSize((this + 72), a3, v13, v14, v15, v16);
  }

  v12 = PropertyDataSize;
  *(v24 + 6) = PropertyDataSize;
LABEL_18:
  _Block_object_dispose(&v23, 8);
  return v12;
}

uint64_t HALS_IOUAStream::IsPropertySettable(HALS_IOUAStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector == 1952542835)
  {
    return 0;
  }

  if (mSelector == 1935762292)
  {
    return 1;
  }

  if (mSelector == 1668641652)
  {
    return 0;
  }

  if (HALS_Stream::HasProperty(this, a2, a3, a4))
  {

    return HALS_Stream::IsPropertySettable(this, a2, a3);
  }

  else
  {

    return HALS_IOUAObject::IsPropertySettable((this + 72), a3, v9, v10);
  }
}

uint64_t HALS_IOUAStream::HasProperty(HALS_IOUAStream *this, unsigned int a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1851878763)
  {
    if (mSelector == 1952542835)
    {
      HasProperty = *(this + 52);
      return HasProperty & 1;
    }

    v7 = 1851878764;
  }

  else
  {
    if (mSelector == 1668641652)
    {
      HasProperty = *(this + 13) != *(this + 12);
      return HasProperty & 1;
    }

    v7 = 1819173229;
  }

  if (mSelector == v7)
  {
    v8 = *(this + 10);
    v9 = *(v8 + 736);
    v10 = *(v8 + 744);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v9 + 4), a3, *(this + 22));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    return HasProperty & 1;
  }

  if (HALS_Stream::HasProperty(this, a2, a3, a4))
  {
    HasProperty = 1;
    return HasProperty & 1;
  }

  v13 = a3->mSelector;
  v14 = *(*(this + 9) + 16);

  return v14(this + 72, v13);
}

void sub_1DE29A940(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUAStream::Activate(HALS_IOUAStream *this)
{
  HALS_IOUAStream::SynchronizeWithHardware(this);
  (*(*(this + 9) + 24))();

  HALS_Object::Activate(this, v2);
}

void HALS_IOUAStream::SynchronizeWithHardware(HALS_IOUAStream *this)
{
  input[2] = *MEMORY[0x1E69E9840];
  if (!*(this + 14))
  {
    v2 = *(this + 10);
    v3 = *(v2 + 736);
    v4 = *(v2 + 744);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *(this + 22);
    input[0] = *(this + 46);
    input[1] = v5;
    output = 0;
    outputCnt = 1;
    v6 = IOConnectCallMethod(*(v3 + 4), 8u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
    if (v6)
    {
      v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v12 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
        *&buf[4] = "HALS_IOUAUCDriver.cpp";
        v28 = 1024;
        v29 = 350;
        v30 = 2080;
        v31 = "ret != kIOReturnSuccess";
        _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to get buffer id", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v17, "Failed to get buffer id");
      std::runtime_error::runtime_error(&v18, &v17);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = -1;
      v18.__vftable = &unk_1F5992170;
      v19 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v18);
      v32 = "uint64_t HALS_IOUAUCDriver::get_stream_io_buffer_id(AudioObjectID, AudioObjectID)";
      v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
      v34 = 350;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
    }

    v7 = output;
    if (*(this + 47) != output)
    {
      HALS_IOUAStream::unmap_memory(this);
      *buf = 0;
      v9 = *(this + 10);
      v10 = *(v9 + 736);
      v11 = *(v9 + 744);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(this + 24) = HALS_IOUAUCDriver::map_memory(*(v10 + 4), v7, buf, v8);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      *(this + 50) = *buf;
      *(this + 47) = v7;
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  HALS_IOUAStream::build_format_list(this);
}

void sub_1DE29AD24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, uint64_t a29, __int128 buf)
{
  if (a2)
  {
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    v34 = __cxa_begin_catch(exception_object);
    v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v35 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v34);
    }

    v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      v38 = *v37;
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    else
    {
      v38 = *v37;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "HALS_IOUAStream.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 602;
      _os_log_error_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception remapping io buffers", &buf, 0x12u);
    }

    *(v30 + 196) = 0;
    *(v30 + 188) = 0;
    __cxa_end_catch();
    JUMPOUT(0x1DE29AB04);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUAStream::build_format_list(HALS_IOUAStream *this)
{
  v2 = *(this + 10);
  v3 = *(v2 + 736);
  v4 = *(v2 + 744);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v3 + 4), "amfsbolg", *(this + 22), 0, 0);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v14 = PropertySize;
  v12 = 0;
  v13 = 0;
  __p = 0;
  if (PropertySize >= 0x28)
  {
    std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](PropertySize / 0x28);
  }

  v6 = *(this + 10);
  v7 = *(v6 + 736);
  v8 = *(v6 + 744);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HALS_IOUAUCDriver::GetPropertyData(*(v7 + 4), "amfsbolg", *(this + 22), 0, 0, 0, &v14);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN15HALS_IOUAStream17build_format_listEv_block_invoke;
  v10[3] = &__block_descriptor_tmp_24;
  v10[4] = this;
  v10[5] = &__p;
  v9 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v9, v10);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_1DE29B06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN15HALS_IOUAStream17build_format_listEv_block_invoke(uint64_t result, uint64_t a2, const AudioStreamRangedDescription *a3)
{
  v3 = *(result + 32);
  v3[18] = v3[17];
  v3[21] = v3[20];
  v4 = *(result + 40);
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    v7 = *(v5 + 16);
    *&v9.mFormat.mSampleRate = *v5;
    *&v9.mFormat.mBytesPerPacket = v7;
    *&v9.mFormat.mBitsPerChannel = *(v5 + 32);
    v8 = *v5;
    v5 += 40;
    v9.mSampleRateRange.mMinimum = v8;
    v9.mSampleRateRange.mMaximum = v8;
    HALB_FormatList::AddPhysicalFormat(v3 + 16, &v9, a3);
  }
}

void HALS_IOUAStream::HandlePropertiesChanged(HALS_IOUAStream *this, uint64_t a2, AudioObjectPropertyAddress *a3)
{
  if (a2)
  {
    v6 = 0;
    v7 = a3;
    v8 = a2;
    do
    {
      mSelector = v7->mSelector;
      ++v7;
      v6 |= mSelector == 1885762657;
      --v8;
    }

    while (v8);
    if (v6)
    {
      HALS_IOUAStream::build_format_list(this);
    }
  }

  v10 = *(this + 4);

  HALS_Object::PropertiesChanged(this, v10, 0, a2, a3);
}

uint64_t HALS_PDPObject::SetPropertyData(HALS_Object *a1, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  if (((*(*a1 + 104))(a1, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v21 = mSelector == 1937007734;
    v22 = 1869638759;
  }

  else
  {
    v21 = mSelector == 1650682995;
    v22 = 1668047219;
  }

  if (v21 || mSelector == v22)
  {
    HALS_Object::SetPropertyData(a1, a2, a3, v16, v17, v18, v19, a8);
  }

  v24 = *(*(a1 + 6) + 80);

  return HALS_PDPUCPlugIn::ObjectSetPropertyData(v24, a2, a3, a6, a7, a4, a5);
}

uint64_t HALS_PDPObject::GetPropertyData(void *a1, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, uint64_t a7, const void *a8, uint64_t a9)
{
  if (((*(*a1 + 96))(a1, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v19 = mSelector == 1937007734;
    v20 = 1869638759;
  }

  else
  {
    v19 = mSelector == 1650682995;
    v20 = 1668047219;
  }

  if (v19 || mSelector == v20)
  {

    return HALS_Object::GetPropertyData(a1, v17, a3, a4, a5, a6);
  }

  else
  {
    *a5 = a4;
    v23 = *(a1[6] + 72);

    return HALS_PDPUCPlugIn::ObjectGetPropertyData(v23, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_PDPObject::GetPropertyDataSize(void *a1, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v11 = (*(*a1 + 96))(a1, a2, a3, a6);
  if ((v11 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v14 = mSelector == 1937007734;
    v15 = 1869638759;
  }

  else
  {
    v14 = mSelector == 1650682995;
    v15 = 1668047219;
  }

  if (v14 || mSelector == v15)
  {

    return HALS_Object::GetPropertyDataSize(v11, v12, a3);
  }

  else
  {
    v18 = *(a1[6] + 64);

    return HALS_PDPUCPlugIn::ObjectGetPropertyDataSize(v18, a2, a3, a4, a5);
  }
}

uint64_t HALS_PDPObject::IsPropertySettable(void *a1, uint64_t a2, AudioObjectPropertyAddress *a3)
{
  v6 = (*(*a1 + 96))(a1);
  if ((v6 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v9 = mSelector == 1937007734;
    v10 = 1869638759;
  }

  else
  {
    v9 = mSelector == 1650682995;
    v10 = 1668047219;
  }

  if (v9 || mSelector == v10)
  {

    return HALS_Object::IsPropertySettable(v6, v7, a3);
  }

  else
  {
    v13 = *(a1[6] + 56);

    return HALS_PDPUCPlugIn::ObjectIsPropertySettable(v13, a2, a3);
  }
}

BOOL HALS_PDPObject::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  result = 1;
  if (*a3 > 1869638758)
  {
    v6 = v4 == 1869638759;
    v7 = 1937007734;
  }

  else
  {
    v6 = v4 == 1650682995;
    v7 = 1668047219;
  }

  if (!v6 && v4 != v7)
  {
    return (*(*(a1 + 48) + 48))(a2, a3) != 0;
  }

  return result;
}

void HALS_PDPObject::~HALS_PDPObject(HALS_PDPObject *this)
{
  HALS_Object::~HALS_Object(this);

  JUMPOUT(0x1E12C1730);
}

void AudioHardwareReloadServerSettings()
{
  v14[0] = 0;
  v14[1] = 0;
  HALS_System::GetInstance(&v15, 0, v14);
  v0 = v15;
  v1 = *(v15 + 1776);
  v2 = *(v1 + 16);
  block = MEMORY[0x1E69E9820];
  block_8 = 0x40000000;
  v19 = ___ZN20HALS_SettingsManager12ForceRefreshEv_block_invoke;
  v20 = &__block_descriptor_tmp_3797;
  v21 = v1;
  LOBYTE(v1) = atomic_load((v2 + 32));
  if (v1)
  {
    atomic_store(1u, (v2 + 33));
  }

  dispatch_sync(*v2, &block);
  ServerBooleanSetting = HALS_SettingsManager::ReadServerBooleanSetting(*(v0 + 1776), @"DefaultDeviceLogging", 1);
  HALS_DefaultDeviceManager::SetLoggingIsEnabled(*(v0 + 1616), ServerBooleanSetting);
  v4 = HALS_SettingsManager::ReadServerBooleanSetting(*(v0 + 1776), @"VerboseDefaultDeviceLogging", 1);
  HALS_DefaultDeviceManager::SetVerboseLoggingIsEnabled(*(v0 + 1616), v4);
  if (HALS_SettingsManager::HasServerSetting(*(v0 + 1776), v5))
  {
    v6 = HALS_SettingsManager::ReadServerBooleanSetting(*(v0 + 1776), @"AirPlayIsAlwaysTransient", 0);
    HALS_DefaultDeviceManager::SetAirPlayIsAlwaysTransient(*(v0 + 1616), v6);
  }

  *(v0 + 1808) = HALS_SettingsManager::ReadServerBooleanSetting(*(v0 + 1776), @"PowerManagementLogging", 0);
  v7 = HALS_SettingsManager::ReadServerBooleanSetting(*(v0 + 1776), @"CaptureFilesEnabled", 0) || HALS_SettingsManager::ReadServerBooleanSetting(*(v0 + 1776), @"DataTapsEnabled", 0);
  *(v0 + 1848) = v7;
  HALS_System::UpdateCaptureFilesEnabled(v0);
  *(v0 + 1852) = HALS_SettingsManager::ReadServerIntSetting(*(v0 + 1776), v8);
  v9 = g_static_start_options == 1 || HALS_SettingsManager::ReadServerBooleanSetting(*(v0 + 1776), @"AdaptableDriverSimulatorEnabled", 0);
  *(v0 + 1632) = v9;
  *(v0 + 1856) = HALS_SettingsManager::ReadServerBooleanSetting(*(v0 + 1776), @"Trace_SchedulingLatency", 0);
  *(v0 + 1880) = HALS_SettingsManager::ReadServerBooleanSetting(*(v0 + 1776), @"TailspinDumpWhenOverload", 0);
  if (*(v0 + 1864))
  {
    _ZNSt3__115allocate_sharedB8ne200100I13HALB_TailspinNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&block);
  }

  block = MEMORY[0x1E69E9820];
  block_8 = 0x40000000;
  v19 = ___ZN11HALS_System20ReloadServerSettingsEv_block_invoke;
  v20 = &__block_descriptor_tmp_168;
  v21 = v0;
  v10 = (*(*v0 + 64))(v0);
  HALB_CommandGate::ExecuteCommand(v10, &block);
  if (AMCP::Feature_Flags::run_hybrid_hal(v11, v12))
  {
    load_mcp_server_settings();
  }

  v13 = v16;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  HALS_ObjectMap::Dump(v13);
}

void sub_1DE29BA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL AudioObjectExists(HALS_ObjectMap *a1)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 0;
  }

  HALS_System::StartServer(&v6, 0);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v2 = HALS_ObjectMap::CopyObjectByObjectID(a1);
  v3 = v2 != 0;
  HALS_ObjectMap::ReleaseObject(v2, v4);
  return v3;
}

BOOL AudioObjectIsOnListenerThread()
{
  if (atomic_load_explicit(&HALS_NotificationManager::sInitialized, memory_order_acquire) != -1)
  {
    v1 = &v2;
    v2 = HALS_NotificationManager::Initialize;
    std::__call_once(&HALS_NotificationManager::sInitialized, &v1, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
  }

  return pthread_getspecific(HALS_NotificationManager::sThreadMarkerKey) != 0;
}

uint64_t AudioObjectAddPropertyListenerInternal(HALS_ObjectMap *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(v22, 0);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (!a2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v25 = "HALS_Framework-ios-imp.cpp";
    v26 = 1024;
    v27 = 1506;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  AudioObjectAddPropertyListenerInternal: can't add a listener proc without an address";
    goto LABEL_14;
  }

  if (!a3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    v25 = "HALS_Framework-ios-imp.cpp";
    v26 = 1024;
    v27 = 1507;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  AudioObjectAddPropertyListenerInternal: can't add a NULL listener proc";
LABEL_14:
    _os_log_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v8 = HALS_ObjectMap::CopyObjectByObjectID(a1);
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "HALS_Framework-ios-imp.cpp";
      v26 = 1024;
      v27 = 1511;
      v28 = 1024;
      v29 = a1;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectAddPropertyListenerInternal: no object with given ID %u", buf, 0x18u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = off_1F5991DD8;
    v15[2] = 560947818;
  }

  v16 = 3;
  v18 = 0;
  v17 = 0;
  v19 = 0;
  v20 = a3;
  v21 = a4;
  buf[0] = 0;
  v30 = 0;
  HALS_NotificationManager::AddPropertyListener(&v16, a1, a2, buf);
  HALS_Listener::~HALS_Listener(&v16);
  HALS_ObjectMap::ReleaseObject(v8, v9);
  return 0;
}

void sub_1DE29BE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AudioHardwareBeMaster()
{
  if (AllowHALClientsInThisProcess())
  {
    HALS_System::StartServer(&v1, 0);
    v0 = v2;
    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v0);
    }
  }
}

uint64_t AudioDeviceCreateIOProcIDWithClockedProc(HALS_ObjectMap *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    if (a2)
    {
      if (a4)
      {
        v7 = HALS_ObjectMap::CopyObjectByObjectID(a1);
        if (v7)
        {
          v10 = *(v7 + 5);
          v9 = *(v7 + 6);
          if (v10 <= 1701078389)
          {
            if (v10 == 1633773415)
            {
LABEL_13:
              HALS_ObjectMap::ReleaseObject(v7, v8);
              return 1970171760;
            }

            v11 = 1633969526;
          }

          else
          {
            if (v10 == 1701078390 || v10 == 1701733488)
            {
              goto LABEL_13;
            }

            v11 = 1919182198;
          }

          if (v10 == v11)
          {
            goto LABEL_13;
          }

          if (v10 != v9)
          {
            if (v9 <= 1701078389)
            {
              if (v9 == 1633773415)
              {
                goto LABEL_13;
              }

              v14 = 1633969526;
            }

            else
            {
              if (v9 == 1701078390 || v9 == 1701733488)
              {
                goto LABEL_13;
              }

              v14 = 1919182198;
            }

            if (v9 == v14)
            {
              goto LABEL_13;
            }
          }

          HALS_ObjectMap::ReleaseObject(v7, v8);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v19 = 136315394;
          v20 = "HALS_Framework-ios-imp.cpp";
          v21 = 1024;
          v22 = 1857;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceCreateIOProcIDWithClockedProc: no device with given ID", &v19, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 560947818;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        v18 = __cxa_allocate_exception(0x10uLL);
        *v18 = off_1F5991DD8;
        v18[2] = 1852797029;
      }

      v19 = 136315394;
      v20 = "HALS_Framework-ios-imp.cpp";
      v21 = 1024;
      v22 = 1853;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%25s:%-5d  AudioDeviceCreateIOProcIDWithClockedProc: nowhere to put the return value";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v19 = 136315394;
      v20 = "HALS_Framework-ios-imp.cpp";
      v21 = 1024;
      v22 = 1852;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%25s:%-5d  AudioDeviceCreateIOProcIDWithClockedProc: can't create an AudioDeviceIOProcID for a NULL IOProc";
    }

    _os_log_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, v17, &v19, 0x12u);
    goto LABEL_32;
  }

  return 560033144;
}

void sub_1DE29C264(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE29C27C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE29C26CLL);
  }

  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
LABEL_7:
    __cxa_end_catch();
    JUMPOUT(0x1DE29C008);
  }

  *v2 = 0;
  goto LABEL_7;
}

uint64_t AudioDeviceCreateIOProcIDWithClockedBlock(uint64_t a1, HALS_ObjectMap *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    if (a4)
    {
      if (a1)
      {
        v7 = HALS_ObjectMap::CopyObjectByObjectID(a2);
        if (v7)
        {
          v10 = *(v7 + 5);
          v9 = *(v7 + 6);
          if (v10 <= 1701078389)
          {
            if (v10 == 1633773415)
            {
LABEL_13:
              HALS_ObjectMap::ReleaseObject(v7, v8);
              return 1970171760;
            }

            v11 = 1633969526;
          }

          else
          {
            if (v10 == 1701078390 || v10 == 1701733488)
            {
              goto LABEL_13;
            }

            v11 = 1919182198;
          }

          if (v10 == v11)
          {
            goto LABEL_13;
          }

          if (v10 != v9)
          {
            if (v9 <= 1701078389)
            {
              if (v9 == 1633773415)
              {
                goto LABEL_13;
              }

              v14 = 1633969526;
            }

            else
            {
              if (v9 == 1701078390 || v9 == 1701733488)
              {
                goto LABEL_13;
              }

              v14 = 1919182198;
            }

            if (v9 == v14)
            {
              goto LABEL_13;
            }
          }

          HALS_ObjectMap::ReleaseObject(v7, v8);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v19 = 136315394;
          v20 = "HALS_Framework-ios-imp.cpp";
          v21 = 1024;
          v22 = 1919;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceCreateIOProcIDWithClockedBlock: no device with given ID", &v19, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 560947818;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        v18 = __cxa_allocate_exception(0x10uLL);
        *v18 = off_1F5991DD8;
        v18[2] = 1852797029;
      }

      v19 = 136315394;
      v20 = "HALS_Framework-ios-imp.cpp";
      v21 = 1024;
      v22 = 1915;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%25s:%-5d  AudioDeviceCreateIOProcIDWithClockedBlock: nowhere to put the return value";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v19 = 136315394;
      v20 = "HALS_Framework-ios-imp.cpp";
      v21 = 1024;
      v22 = 1914;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%25s:%-5d  AudioDeviceCreateIOProcIDWithClockedBlock: can't create an AudioDeviceIOProcID for a NULL IOBlock";
    }

    _os_log_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, v17, &v19, 0x12u);
    goto LABEL_32;
  }

  return 560033144;
}

void sub_1DE29C628(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE29C640(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE29C630);
  }

  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
LABEL_7:
    __cxa_end_catch();
    JUMPOUT(0x1DE29C3CCLL);
  }

  *v2 = 0;
  goto LABEL_7;
}

uint64_t AudioDeviceDuck(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t *a2, float a3, float a4)
{
  v7 = a1;
  v39 = *MEMORY[0x1E69E9840];
  v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v8 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v18 = *a2;
      v19 = a2[1];
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *buf = 136316674;
    v26 = "AudioHardwarePriv.mm";
    v27 = 1024;
    v28 = 247;
    v29 = 2048;
    v30 = v7;
    v31 = 2048;
    v32 = a3;
    v33 = 2048;
    v34 = v18;
    v35 = 2048;
    v36 = v19;
    v37 = 2048;
    v38 = a4;
    _os_log_debug_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_DEBUG, "%32s:%-5d AudioDeviceDuck %lu, %f, [%.0f, %llu], %f", buf, 0x44u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v12 = *a2;
      v13 = a2[1];
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *buf = 136316674;
    v26 = "HALS_Framework-ios-imp.cpp";
    v27 = 1024;
    v28 = 3769;
    v29 = 2048;
    v30 = v7;
    v31 = 2048;
    v32 = a3;
    v33 = 2048;
    v34 = v12;
    v35 = 2048;
    v36 = v13;
    v37 = 2048;
    v38 = a4;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  AudioDeviceDuck(%lu, %f, [%.0f, %llu], %f)", buf, 0x44u);
  }

  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  v22[0] = 0;
  v22[1] = 0;
  HALS_System::GetInstance(&v23, 0, v22);
  if (!v23)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "HALS_Framework-ios-imp.cpp";
      v27 = 1024;
      v28 = 3780;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioDeviceDuck: no system object", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v14 = HALS_System::CopyDeviceByObjectID(v23, v7, 0);
  if (!v14)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    *v21 = off_1F5991DD8;
    v21[2] = 560227702;
  }

  HALS_ObjectMap::ReleaseObject(v14, v15);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  return 0;
}

void sub_1DE29CA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AudioHardwareInitializeForTesting(int a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v20[1] = 0;
  HALS_System::GetInstance(buf, 0, v20);
  v2 = *buf;
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_Framework-ios-imp.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3911;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  Local AudioHAL System initialized before initializing for testing";
    goto LABEL_37;
  }

  v18 = SecTaskCreateFromSelf(*MEMORY[0x1E695E478]);
  if (!v18)
  {
    AMCP::Utility::SecTask::release(&v18);
LABEL_35:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_Framework-ios-imp.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3917;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "%25s:%-5d  HAL Testing entitlement is missing";
LABEL_37:
    _os_log_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x12u);
LABEL_38:
    abort();
  }

  AMCP::Utility::SecTask_Proxy::SecTask_Proxy(buf, &v18);
  v3 = SecTaskCopyValueForEntitlement(**buf, @"com.apple.private.audio.direct-hal-testing", 0);
  v4 = v3;
  v5 = *MEMORY[0x1E695E4B8];
  if (v3)
  {
    v6 = CFGetTypeID(v3);
    if (v6 == CFBooleanGetTypeID())
    {
      CFRetain(v4);
      cf[0] = v4;
      v7 = CFGetTypeID(v4);
      if (v7 != CFBooleanGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      cf[0] = v5;
      v5 = 0;
    }

    CFRelease(v4);
    if (v5)
    {
      CFRelease(v5);
    }

    v5 = cf[0];
  }

  else
  {
    cf[0] = *MEMORY[0x1E695E4B8];
  }

  if (!v5)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v16, "Could not construct");
    __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = applesauce::CF::convert_to<BOOL,0>(v5);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  AMCP::Utility::SecTask::release(&v18);
  if ((v9 & 1) == 0)
  {
    goto LABEL_35;
  }

  if (a1 == 2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "HALS_Framework-ios-imp.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3926;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  WARNING: Do not run with kAudioHardwareTestConfiguration_LoadVirtualAudioWithFakeDevices in CI: Virtual Audio with the HAL does not shut down cleanly and will cause tests that run afterward to fail.", buf, 0x12u);
  }

  Testing_PlatformBehaviors::s_test_configuration = a1;
  HALS_System::StartServer(buf, 1);
  cf[0] = 0;
  cf[1] = 0;
  HALS_System::GetInstance(&v18, 0, cf);
  v10 = v18;
  v11 = *buf;
  v12 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v10 + 17);
  *(v10 + 16) = v11;
  *(v10 + 17) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1DE29CEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    __cxa_free_exception(v16);
    applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(&a9);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioHardwareDisposeForTesting()
{
  atomic_store(0, StaticContainerBase::s_statics_initializable);
  v5[0] = 0;
  v5[1] = 0;
  HALS_System::GetInstance(&v6, 0, v5);
  v0 = v6;
  v1 = *(v6 + 136);
  *(v6 + 128) = 0;
  *(v0 + 136) = 0;
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v2 = v7;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  Testing_PlatformBehaviors::s_test_configuration = 0;
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v2);
  result = (*(*platform_behaviors + 72))(platform_behaviors);
  atomic_store(1u, StaticContainerBase::s_statics_initializable);
  return result;
}

uint64_t HALS_ClientEntitlements::HasEntitlementWithBooleanValue(HALS_ClientEntitlements *this, const __CFString *a2)
{
  if (g_static_start_options == 1 || a2 == 0)
  {
    return 1;
  }

  if (!*this)
  {
    return 0;
  }

  AMCP::Utility::SecTask_Proxy::SecTask_Proxy(&v13, this);
  v5 = SecTaskCopyValueForEntitlement(*v13, a2, 0);
  v6 = v5;
  v7 = *MEMORY[0x1E695E4B8];
  if (v5)
  {
    v8 = CFGetTypeID(v5);
    if (v8 == CFBooleanGetTypeID())
    {
      CFRetain(v6);
      cf = v6;
      v9 = CFGetTypeID(v6);
      if (v9 != CFBooleanGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      cf = v7;
      v7 = 0;
    }

    CFRelease(v6);
    if (v7)
    {
      CFRelease(v7);
    }

    v7 = cf;
  }

  else
  {
    cf = *MEMORY[0x1E695E4B8];
  }

  if (!v7)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = applesauce::CF::convert_to<BOOL,0>(v7);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void sub_1DE29D16C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

void sub_1DE29D19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __cxa_free_exception(v9);
  applesauce::CF::BooleanRef::~BooleanRef(va);
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Utility::SecTask_Proxy::SecTask_Proxy(AMCP::Log::AMCP_Scope_Registry *this, const AMCP::Utility::SecTask *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  *this = a2;
  if (!*a2)
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
      v18 = "Security_Utilities.h";
      v19 = 1024;
      v20 = 177;
      v21 = 2080;
      v22 = "(m_proxy.is_valid()) == false";
      _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Cannot dereference a nullptr SecTask", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v16);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v8, "Cannot dereference a nullptr SecTask", v6);
    std::runtime_error::runtime_error(&v9, &v8);
    std::runtime_error::runtime_error(&v10, &v9);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
    v10.__vftable = &unk_1F5992170;
    v11 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v10);
    v23 = "AMCP::Utility::SecTask_Proxy::SecTask_Proxy(const SecTask &)";
    v24 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Utility/Security_Utilities.h";
    v25 = 177;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v7);
  }

  return this;
}

void sub_1DE29D434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a26);
  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

void ca::concurrent::details::shared_instance_mgr<ca::concurrent::details::service_thread>::~shared_instance_mgr(std::mutex *this)
{
  sig = this[1].__m_.__sig;
  if (sig)
  {
    *this[1].__m_.__opaque = sig;
    operator delete(sig);
  }

  std::mutex::~mutex(this);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_1DE29D5F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<boost::variant<ca::mach::thread::priority_qos,ca::mach::thread::priority_realtime,ca::mach::thread::priority_absolute>,false>::__optional_copy_base[abi:ne200100](uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 20) = 0;
  if (*(a2 + 20) == 1)
  {
    v2 = (a2 + 4);
    v3 = *a2 ^ (*a2 >> 31);
    if (v3 != 2)
    {
      if (v3 == 1)
      {
        *(result + 4) = *v2;
        goto LABEL_7;
      }

      if (v3)
      {
        boost::detail::variant::forced_return<HALS_Device * const*>();
      }
    }

    *(result + 4) = *v2;
LABEL_7:
    *result = *a2 ^ (*a2 >> 31);
    *(result + 20) = 1;
  }

  return result;
}

void sub_1DE29D6A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) == 1)
  {
    boost::variant<ca::mach::thread::priority_qos,ca::mach::thread::priority_realtime,ca::mach::thread::priority_absolute>::destroy_content(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ca::thread::attributes::~attributes(ca::thread::attributes *this)
{
  if (*(this + 52) == 1)
  {
    boost::variant<ca::mach::thread::priority_qos,ca::mach::thread::priority_realtime,ca::mach::thread::priority_absolute>::destroy_content(*(this + 8));
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t boost::variant<ca::mach::thread::priority_qos,ca::mach::thread::priority_realtime,ca::mach::thread::priority_absolute>::destroy_content(uint64_t result)
{
  if ((result ^ (result >> 31)) >= 3)
  {
    boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return result;
}

uint64_t *std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (ca::concurrent::details::worker_thread::*)(ca::thread::attributes),ca::concurrent::details::worker_thread*,ca::thread::attributes>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 84) == 1)
    {
      boost::variant<ca::mach::thread::priority_qos,ca::mach::thread::priority_realtime,ca::mach::thread::priority_absolute>::destroy_content(*(v2 + 64));
    }

    if (*(v2 + 56) == 1 && *(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x1E12C1730](v3, 0x10B2C406C1533D7);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E12C1270]();
    MEMORY[0x1E12C1730](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (ca::concurrent::details::worker_thread::*)(ca::thread::attributes),ca::concurrent::details::worker_thread*,ca::thread::attributes>>(const void **a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v10;
  v5 = v10[2];
  v6 = v10[1];
  v7 = v10[3] + (v5 >> 1);
  if (v5)
  {
    v6 = *(*v7 + v6);
  }

  LOBYTE(__p[0]) = 0;
  v13 = 0;
  if (*(v10 + 56) == 1)
  {
    *__p = *(v10 + 2);
    v12 = v10[6];
    v10[5] = 0;
    v4[6] = 0;
    v4[4] = 0;
    v13 = 1;
  }

  LOBYTE(v14) = 0;
  v16 = 0;
  if (*(v4 + 84) == 1)
  {
    v8 = *(v4 + 16) ^ (*(v4 + 16) >> 31);
    if (v8 != 2)
    {
      if (v8 == 1)
      {
        v15 = *(v4 + 68);
        goto LABEL_11;
      }

      if (v8)
      {
        boost::detail::variant::forced_return<HALS_Device * const*>();
      }
    }

    *&v15 = *(v4 + 68);
LABEL_11:
    v14 = v8;
    v16 = 1;
  }

  v6(v7, __p);
  if (v16 == 1)
  {
    boost::variant<ca::mach::thread::priority_qos,ca::mach::thread::priority_realtime,ca::mach::thread::priority_absolute>::destroy_content(v14);
  }

  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (ca::concurrent::details::worker_thread::*)(ca::thread::attributes),ca::concurrent::details::worker_thread*,ca::thread::attributes>>::~unique_ptr[abi:ne200100](&v10);
  return 0;
}

void sub_1DE29D96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ca::concurrent::details::worker_thread::run(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a2 + 24) == 1)
  {
    v4 = a2;
    if (*(a2 + 23) < 0)
    {
      v4 = *a2;
    }

    v5 = pthread_setname_np(v4);
    check_posix_error("pthread_setname_np failed", v5);
  }

  if (*(a2 + 52) == 1)
  {
    v6 = *(a2 + 32) ^ (*(a2 + 32) >> 31);
    switch(v6)
    {
      case 2:
        v11 = pthread_self();
        v12 = pthread_mach_thread_np(v11);
        if (v12)
        {
          v13 = v12;
          policy_info = *(a2 + 40) ^ 1;
          v14 = thread_policy_set(v12, 1u, &policy_info, 1u);
          ca::mach::throw_if_mach_error("thread_policy_set extended failed", v14);
          v15 = getpid();
          v16 = proc_pidinfo(v15, 2, 0, buffer, 232);
          v17 = v24;
          if (v16 <= 0)
          {
            v17 = 0;
          }

          v21 = *(a2 + 36) - v17;
          v18 = thread_policy_set(v13, 3u, &v21, 1u);
          ca::mach::throw_if_mach_error("thread_policy_set precedence failed", v18);
        }

        break;
      case 1:
        v8 = pthread_self();
        v9 = pthread_mach_thread_np(v8);
        v10 = thread_policy_set(v9, 2u, (a2 + 36), 4u);
        ca::mach::throw_if_mach_error("thread_policy_set realtime failed", v10);
        break;
      case 0:
        v7 = pthread_set_qos_class_self_np(*(a2 + 36), *(a2 + 40));
        check_posix_error("pthread_set_qos_class_self_np failed", v7);
        break;
    }
  }

  do
  {
    if (atomic_fetch_add_explicit((a1 + 16), 0xFFFFFFFF, memory_order_acquire) <= 0)
    {
      ca::mach::semaphore::wait((a1 + 8));
    }

    v19 = *(a1 + 48);
    if (!v19)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v19 + 48))(v19);
  }

  while (*(a1 + 57) != 1);
  return result;
}

uint64_t std::__function::__func<ca::concurrent::details::service_thread::service_thread(BOOL,ca::thread::attributes const&)::{lambda(void)#1},std::allocator<ca::concurrent::details::service_thread::service_thread(BOOL,ca::thread::attributes const&)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN2ca10concurrent7details14service_threadC1EbRKNS_6thread10attributesEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t *std::__function::__func<ca::concurrent::details::service_thread::service_thread(BOOL,ca::thread::attributes const&)::{lambda(void)#1},std::allocator<ca::concurrent::details::service_thread::service_thread(BOOL,ca::thread::attributes const&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  while (1)
  {
    result = v1[8];
    if (!result)
    {
      break;
    }

LABEL_8:
    v7 = atomic_load(result + 1);
    v1[8] = v7;
    (*(*result + 16))(result);
  }

  while (1)
  {
    v3 = *v1;
    if (!*v1)
    {
      return result;
    }

    v4 = *v1;
    atomic_compare_exchange_strong(v1, &v4, 0);
    if (v4 == v3)
    {
      v5 = 0;
      do
      {
        result = v3;
        v6 = v3 + 1;
        v3 = atomic_load(v3 + 1);
        atomic_store(v5, v6);
        v5 = result;
      }

      while (v3);
      v1[8] = result;
      goto LABEL_8;
    }
  }
}

void sub_1DE29DCC0(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 200) = 1;

  __cxa_end_catch();
}

uint64_t std::__function::__func<ca::concurrent::details::service_thread::service_thread(BOOL,ca::thread::attributes const&)::{lambda(void)#1},std::allocator<ca::concurrent::details::service_thread::service_thread(BOOL,ca::thread::attributes const&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5962900;
  a2[1] = v2;
  return result;
}

void sub_1DE29DF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v11 = va_arg(va1, void);
  if (*(v8 + 56) == 1 && *(v8 + 55) < 0)
  {
    operator delete(*(v8 + 32));
  }

  v10 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v8);
  MEMORY[0x1E12C1730](v10, 0x10B2C406C1533D7);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5 + 160);
  ca::sync::semaphore::~semaphore((v5 + 144));
  std::thread::~thread(v7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va1);
  ca::thread::attributes::~attributes((v5 + 80));
  MEMORY[0x1E12C1730](v5, v6);
  _Unwind_Resume(a1);
}

void ca::concurrent::details::service_thread::drain(ca::concurrent::details::service_thread *this, unsigned int a2)
{
  v14[4] = *MEMORY[0x1E69E9840];
  ca::sync::semaphore::semaphore(&semaphore);
  v11[0] = &unk_1F5962980;
  v11[1] = &semaphore;
  v13 = 0;
  v11[3] = v11;
  v12 = &unk_1F5962A00;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v14, v11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
  do
  {
    v3 = *this;
    atomic_store(*this, &v13);
    v4 = v3;
    atomic_compare_exchange_strong(this, &v4, &v12);
  }

  while (v4 != v3);
  ca::sync::semaphore::signal(this + 36);
  while ((*(this + 200) & 1) == 0 && atomic_fetch_add_explicit(&v10, 0xFFFFFFFF, memory_order_acquire) <= 0)
  {
    do
    {
      v5 = 0x1DCD650000000000;
      v6 = semaphore_timedwait(semaphore, v5);
    }

    while (v6 == 14);
    if (v6 != 49)
    {
      ca::mach::throw_if_mach_error("semaphore_timedwait failed", v6);
      break;
    }

    v7 = atomic_load(&v10);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_12:
      ca::mach::semaphore::wait(&semaphore);
      break;
    }

    v8 = v7;
    while (1)
    {
      atomic_compare_exchange_strong_explicit(&v10, &v8, v7 + 1, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        break;
      }

      v7 = v8;
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  v12 = &unk_1F5962A00;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v14);
  ca::sync::semaphore::~semaphore(&semaphore);
}

void sub_1DE29E220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3 + 16);
  ca::sync::semaphore::~semaphore(va);
  _Unwind_Resume(a1);
}

void ca::concurrent::details::service_thread::~service_thread(ca::concurrent::details::service_thread *this, unsigned int a2)
{
  ca::concurrent::details::service_thread::drain(this, a2);
  if ((*(this + 192) & 1) == 0)
  {
    *(this + 193) = 1;
    ca::sync::semaphore::signal(this + 36);
  }

  if (*(this + 17))
  {
    std::thread::join(this + 17);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 160);
  ca::sync::semaphore::~semaphore((this + 144));
  std::thread::~thread(this + 17);
  if (*(this + 132) == 1)
  {
    boost::variant<ca::mach::thread::priority_qos,ca::mach::thread::priority_realtime,ca::mach::thread::priority_absolute>::destroy_content(*(this + 28));
  }

  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }
}

uint64_t ca::concurrent::details::internal_message::perform(ca::concurrent::details::internal_message *this)
{
  v2 = *(this + 5);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void ca::concurrent::details::internal_message::~internal_message(ca::concurrent::details::internal_message *this)
{
  *this = &unk_1F5962A00;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 16);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5962A00;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 16);
}

uint64_t std::__function::__func<ca::concurrent::details::service_thread::drain(void)::{lambda(void)#1},std::allocator<ca::concurrent::details::service_thread::drain(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN2ca10concurrent7details14service_thread5drainEvEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ca::concurrent::details::service_thread::drain(void)::{lambda(void)#1},std::allocator<ca::concurrent::details::service_thread::drain(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5962980;
  a2[1] = v2;
  return result;
}

void ca::concurrent::messenger::~messenger(ca::concurrent::details::service_thread **this, unsigned int a2)
{
  ca::concurrent::details::service_thread::drain(*this, a2);
  v4 = *this;
  if (*(*this + 72))
  {
    {
      __cxa_atexit(ca::concurrent::details::shared_instance_mgr<ca::concurrent::details::service_thread>::~shared_instance_mgr, &ca::concurrent::details::service_thread::sharedMgr(void)::x, &dword_1DE1F9000);
    }

    std::mutex::lock(&ca::concurrent::details::service_thread::sharedMgr(void)::x);
    v6 = qword_1EE012460;
    if (qword_1EE012460 == qword_1EE012468)
    {
LABEL_7:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "shared_instance_mgr: releasing unknown instance");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v7 = -qword_1EE012460;
    while (1)
    {
      v8 = *v6;
      if (*v6 == v4)
      {
        break;
      }

      v6 += 16;
      v7 -= 16;
      if (v6 == qword_1EE012468)
      {
        goto LABEL_7;
      }
    }

    v10 = *(v6 + 8) - 1;
    *(v6 + 8) = v10;
    if (!v10)
    {
      ca::concurrent::details::service_thread::~service_thread(v8, v5);
      MEMORY[0x1E12C1730]();
      v11 = qword_1EE012468;
      if (v6 + 16 != qword_1EE012468)
      {
        v12 = qword_1EE012460;
        v13 = qword_1EE012460 - v7;
        v14 = -qword_1EE012460;
        do
        {
          v15 = v13 + v14;
          *v15 = *(v13 + v14 + 16);
          *(v15 + 8) = *(v13 + v14 + 24);
          v13 += 16;
        }

        while (v13 + v14 + 16 != v11);
        v6 = v13 - v12;
      }

      qword_1EE012468 = v6;
    }

    std::mutex::unlock(&ca::concurrent::details::service_thread::sharedMgr(void)::x);
  }

  else
  {
    ca::concurrent::details::service_thread::~service_thread(*this, v3);
    MEMORY[0x1E12C1730]();
  }
}

uint64_t std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1DE29EA98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void sub_1DE29F9B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

DSP_Host_Types::ConfigurationChangeRequest *DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(DSP_Host_Types::ConfigurationChangeRequest *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F598DC40;
  std::string::basic_string[abi:ne200100]<0>(__p, "is activation");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(this + 3, __p);
  *(this + 3) = &unk_1F598DCE8;
  *(this + 20) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "INTERNAL_is_simulated");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(this + 6, __p);
  *(this + 6) = &unk_1F598DCE8;
  *(this + 32) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  DSP_Host_Types::IOContextDescription::IOContextDescription((this + 72), "io context description");
  *(this + 86) = 0;
  *(this + 42) = 0u;
  return this;
}

void sub_1DE29FCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = v17;
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v18);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v16);
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::~DSP_Host_DictionaryData(v15);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void DSP_HAL_Mock_TestHooks::~DSP_HAL_Mock_TestHooks(DSP_HAL_Mock_TestHooks *this)
{
  std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::~__value_func[abi:ne200100](this + 128);
  std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](this + 96);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](this + 32);

  std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::~__value_func[abi:ne200100](this);
}

void *std::function<void ()(BOOL)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(BOOL)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

DSP_Host_Types::AdaptResponse *DSP_Host_Types::AdaptResponse::AdaptResponse(DSP_Host_Types::AdaptResponse *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F598EAC8;
  std::string::basic_string[abi:ne200100]<0>(__p, "dsp processing latency samples");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(this + 3, __p);
  *(this + 3) = &unk_1F598EB60;
  *(this + 40) = 0;
  *(this + 44) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = -1;
  DSP_Dictionariable::DictionarySet::add_kvp((this + 48), (this + 24));
  return this;
}

void sub_1DE2A015C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = v17;
  v20 = *v18;
  if (*v18)
  {
    *(v15 + 56) = v20;
    operator delete(v20);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v16);
  DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AdaptResponse>::~DSP_Host_DictionaryData(v15);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::AdaptResponse::~AdaptResponse(DSP_Host_Types::AdaptResponse *this)
{
  *this = &unk_1F598EAC8;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598EB08;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

{
  *this = &unk_1F598EAC8;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598EB08;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

{
  *this = &unk_1F598EAC8;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598EB08;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  JUMPOUT(0x1E12C1730);
}

void DSP_Host_Types::IOContextDescription::~IOContextDescription(DSP_Host_Types::IOContextDescription *this)
{
  *this = &unk_1F598DD40;
  v2 = *(this + 74);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 544));
  v10 = (this + 520);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  *(this + 50) = &unk_1F598DEC8;
  v10 = (this + 496);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v10);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 472));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 448));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 424));
  *(this + 50) = &unk_1F598DF08;
  if (*(this + 416) == 1)
  {
    v4 = *(this + 51);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 376));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 352));
  *(this + 25) = &unk_1F598DDD8;
  v5 = *(this + 41);
  if (v5)
  {
    *(this + 42) = v5;
    operator delete(v5);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 304));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 280));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 256));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 224));
  *(this + 25) = &unk_1F598DE18;
  if (*(this + 216) == 1)
  {
    v6 = *(this + 26);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  *(this + 6) = &unk_1F598DDD8;
  v7 = *(this + 22);
  if (v7)
  {
    *(this + 23) = v7;
    operator delete(v7);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 152));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 128));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 104));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 72));
  *(this + 6) = &unk_1F598DE18;
  if (*(this + 64) == 1)
  {
    v8 = *(this + 7);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 4));
  *this = &unk_1F598DD80;
  if (*(this + 16) == 1)
  {
    v9 = *(this + 1);
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

{
  DSP_Host_Types::IOContextDescription::~IOContextDescription(this);

  JUMPOUT(0x1E12C1730);
}

void DSP_Host_Types::AdaptRequest::~AdaptRequest(DSP_Host_Types::AdaptRequest *this)
{
  *this = &unk_1F598DC40;
  v3 = (this + 672);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((this + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598DC90;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

{
  *this = &unk_1F598DC40;
  v3 = (this + 672);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((this + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598DC90;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

{
  *this = &unk_1F598DC40;
  v3 = (this + 672);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((this + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((this + 24));
  *this = &unk_1F598DC90;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  JUMPOUT(0x1E12C1730);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE2A05EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::ConfigurationChangeRequest>::description(uint64_t a1@<X0>, void *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1, &v10);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*a1);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a1[1]);

    operator delete(a1);
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::IOContextDescription>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE2A088C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::IOContextDescription>::description(uint64_t a1@<X0>, void *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1, &v10);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::FormatDescription>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE2A0AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::FormatDescription>::description(uint64_t a1@<X0>, void *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1, &v10);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AudioChannelConfiguration>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE2A0D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AudioChannelConfiguration>::description(uint64_t a1@<X0>, void *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1, &v10);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AdaptResponse>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE2A0F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::AdaptResponse>::description(uint64_t a1@<X0>, void *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1, &v10);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}