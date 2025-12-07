void non-virtual thunk toAMCP::ASP::Driver::~Driver(AMCP::ASP::Driver *this)
{
  AMCP::ASP::Driver::~Driver((this - 24));

  JUMPOUT(0x1E12C1730);
}

{
  AMCP::ASP::Driver::~Driver((this - 24));
}

void AMCP::ASP::Driver::~Driver(AMCP::ASP::Driver *this)
{
  *this = &unk_1F597A340;
  *(this + 3) = &unk_1F597A368;
  v2 = *(this + 34);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 32);
  *(this + 32) = 0;
  if (v3)
  {
    MEMORY[0x1E12C1730](v3, 0xA0C40CE99C112);
  }

  std::condition_variable::~condition_variable((this + 200));
  std::condition_variable::~condition_variable((this + 152));
  std::mutex::~mutex((this + 88));
  boost::container::vector<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,void>::~vector(this + 8);
  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(this + 3) = &unk_1F59748E8;
  v5 = *(this + 5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  AMCP::ASP::Driver::~Driver(this);

  JUMPOUT(0x1E12C1730);
}

void **boost::container::vector<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,void>::~vector(void **a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 16);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

void AMCP::ASP::Driver::shutdown(AMCP::ASP::Driver *this)
{
  v1 = this;
  v32 = *MEMORY[0x1E69E9840];
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
  if (v5 == 3)
  {
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

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_52;
    }

    mcp_applesauce::CF::PlugInRef_proxy::get_bundle(&v23, **(v1 + 6));
    mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(&cf, v23);
    if (cf)
    {
      applesauce::CF::convert_to<std::string,0>(__p, cf);
      if (v26 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "ASP_Driver.cpp";
      v28 = 1024;
      v29 = 128;
      v30 = 2080;
      v31 = v19;
      _os_log_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_INFO, "%32s:%-5d Tearing down plug-in %s", buf, 0x1Cu);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v20 = v23;
      if (v23)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    }

LABEL_55:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v5 == 2)
  {
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
      mcp_applesauce::CF::PlugInRef_proxy::get_bundle(&v23, **(v1 + 6));
      mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(&cf, v23);
      applesauce::CF::StringRef_proxy::StringRef_proxy(buf, &cf);
      applesauce::CF::convert_to<std::string,0>(__p, **buf);
      if (v26 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "ASP_Driver.cpp";
      v28 = 1024;
      v29 = 128;
      v30 = 2080;
      v31 = v18;
      _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tearing down plug-in %s", buf, 0x1Cu);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      applesauce::CF::StringRef::~StringRef(&cf);
      mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::BundleRef_Traits>::~BasicRef(&v23);
    }

    goto LABEL_52;
  }

  if (v5 != 1)
  {
    goto LABEL_52;
  }

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

  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_52;
  }

  mcp_applesauce::CF::PlugInRef_proxy::get_bundle(&v23, **(v1 + 6));
  mcp_applesauce::CF::BundleRef_proxy::get_bundle_id(&cf, v23);
  if (!cf)
  {
    goto LABEL_55;
  }

  applesauce::CF::convert_to<std::string,0>(__p, cf);
  if (v26 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  *buf = 136315650;
  *&buf[4] = "ASP_Driver.cpp";
  v28 = 1024;
  v29 = 128;
  v30 = 2080;
  v31 = v21;
  _os_log_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Tearing down plug-in %s", buf, 0x1Cu);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v20 = v23;
  if (v23)
  {
LABEL_51:
    CFRelease(v20);
  }

LABEL_52:
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE57A0C0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::StringRef_proxy::StringRef_proxy(void *this, const applesauce::CF::StringRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return this;
}

uint64_t AMCP::ASP::Host_Interface::request_device_configuration_change(AMCP::ASP::Host_Interface *this, const AudioServerPlugInHostInterface *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(this + 5);
  AMCP::ASP::Driver::get_plugin_object_for_driver_id(&v14, v5, a2);
  v6 = v14;
  if (v14 && AMCP::is_base_of(0x61636C6B, *(v14 + 68)))
  {
    AMCP::Core::Broker::fetch_core(&v12, *(*(v5 + 32) + 16), *(v6 + 60));
    if (v12)
    {
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&lpsrc, *(v5 + 8), *(v5 + 16));
      {
        v10 = v7;
        v11 = v17;
        p_lpsrc = &lpsrc;
      }

      else
      {
        p_lpsrc = &v10;
      }

      *p_lpsrc = 0;
      p_lpsrc[1] = 0;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = 0;
      operator new();
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return 560227702;
}

void sub_1DE57A3A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::ASP::Driver::get_plugin_object_for_driver_id(AMCP::ASP::Driver *this, uint64_t a2, int a3)
{
  v10 = a3;
  std::__shared_mutex_base::lock_shared((a2 + 88));
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::find(&v9, (a2 + 64), &v10);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
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

  if (v9 == v5 + 24 * v6)
  {
    *this = 0;
    *(this + 1) = 0;
  }

  else
  {
    v8 = *(v9 + 16);
    *this = *(v9 + 8);
    *(this + 1) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::__shared_mutex_base::unlock_shared((a2 + 88));
}

uint64_t std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP6Driver35request_device_configuration_changeEjyPvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  AMCP::ASP::Driver::get_plugin_object_for_driver_id(&v6, *(a1 + 8), *(a1 + 24));
  v2 = v6;
  if (v6 && AMCP::is_base_of(0x61636C6B, v6[17]))
  {
    kdebug_trace();
    v3 = *(v2 + 3);
    v4 = *(v2 + 4);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      AMCP::ASP::PlugIn::PerformDeviceConfigChange(v3, *(a1 + 24), *(a1 + 32), *(a1 + 40));
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      AMCP::ASP::PlugIn::PerformDeviceConfigChange(v3, *(a1 + 24), *(a1 + 32), *(a1 + 40));
    }

    kdebug_trace();
    AMCP::ASP::PlugIn_Object::update_core(v2);
    AMCP::ASP::Driver::update_owned_objects(*(a1 + 8), &v6);
  }

  v5 = v7;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE57A5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::ASP::Driver::update_owned_objects(uint64_t a1, uint64_t a2)
{
  if (AMCP::is_base_of(0x61646576, *(*a2 + 68)))
  {
    AMCP::ASP::Driver::compute_new_dead_objects_kind(v7, a1, a2, 0x61737472, 1937009955);
    AMCP::ASP::Driver::update_owned_object_kind(a1, a2, 0x61737472u, v7);
    if (__p)
    {
      operator delete(__p);
    }

    if (v7[0])
    {
      operator delete(v7[0]);
    }

    goto LABEL_8;
  }

  if (AMCP::is_base_of(0x61636C6B, *(*a2 + 68)) || AMCP::is_base_of(0x61626F78, *(*a2 + 68)))
  {
LABEL_8:
    AMCP::ASP::Driver::compute_new_dead_objects_kind(v7, a1, a2, 0x6163746C, 1668575852);
    v4 = a1;
    v5 = a2;
    v6 = 1633907820;
    goto LABEL_9;
  }

  if (!AMCP::is_base_of(0x61706C67, *(*a2 + 68)))
  {
    return;
  }

  AMCP::ASP::Driver::compute_new_dead_objects_kind(v7, a1, a2, 0x61626F78, 1651472419);
  AMCP::ASP::Driver::update_owned_object_kind(a1, a2, 0x61626F78u, v7);
  if (__p)
  {
    operator delete(__p);
  }

  if (v7[0])
  {
    operator delete(v7[0]);
  }

  AMCP::ASP::Driver::compute_new_dead_objects_kind(v7, a1, a2, 0x61636C6B, 1668049699);
  AMCP::ASP::Driver::update_owned_object_kind(a1, a2, 0x61636C6Bu, v7);
  if (__p)
  {
    operator delete(__p);
  }

  if (v7[0])
  {
    operator delete(v7[0]);
  }

  AMCP::ASP::Driver::compute_new_dead_objects_kind(v7, a1, a2, 0x61646576, 1684370979);
  v4 = a1;
  v5 = a2;
  v6 = 1633969526;
LABEL_9:
  AMCP::ASP::Driver::update_owned_object_kind(v4, v5, v6, v7);
  if (__p)
  {
    operator delete(__p);
  }

  if (v7[0])
  {
    operator delete(v7[0]);
  }
}

void AMCP::ASP::Driver::compute_new_dead_objects_kind(uint64_t a1, uint64_t a2, uint64_t a3, AMCP *a4, int a5)
{
  v10 = *(*a3 + 60);
  v33 = 0;
  v34 = 0;
  v32 = 0;
  std::__shared_mutex_base::lock_shared((a2 + 88));
  v12 = *(a2 + 64);
  v11 = *(a2 + 72);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 == 0;
  }

  if (!v13)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v11)
  {
    v14 = 24 * v11;
    do
    {
      if (!v12)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v15 = *(v12 + 8);
      if (*(v15 + 56) == v10 && AMCP::is_base_of(a4, *(v15 + 68)))
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v32, v12);
      }

      v12 += 24;
      v14 -= 24;
    }

    while (v14);
  }

  std::__shared_mutex_base::unlock_shared((a2 + 88));
  __dst[0] = 0;
  __dst[1] = 0;
  v31 = 0;
  if (a5 == 1937009955)
  {
    strcpy(v29, "#mtstpni");
    v29[9] = 0;
    *&v29[10] = 0;
    AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(__p, *(a2 + 48), *(*a3 + 44), v29);
    v16 = *&__p[1];
    v17 = *(*a3 + 44);
    v18 = *(a2 + 48);
    *&v29[4] = 1869968496;
    AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(__p, v18, v17, v29);
    v19 = *&__p[1];
    std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(__dst, 0, v16, *(&v16 + 1), (*(&v16 + 1) - v16) >> 2);
    std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(__dst, __dst[1], v19, *(&v19 + 1), (*(&v19 + 1) - v19) >> 2);
    if (v19)
    {
      operator delete(v19);
    }

    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v29 = a5;
    *&v29[4] = 1735159650;
    AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(__p, *(a2 + 48), *(*a3 + 44), v29);
    *__dst = *&__p[1];
    v31 = __p[3];
  }

  v20 = v32;
  v21 = v33;
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v22 = __dst[0];
  v23 = __dst[1];
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v28 = 0;
  v27 = 0u;
  memset(__p, 0, sizeof(__p));
  v24 = v22;
  if (v20 != v21)
  {
    v25 = v20;
    v24 = v22;
    if (v22 != v23)
    {
      v24 = v22;
      v25 = v20;
      while (*v25 != *v24)
      {
        if (*v25 >= *v24)
        {
          std::vector<unsigned int>::push_back[abi:ne200100](&v27, v24);
          goto LABEL_27;
        }

        std::vector<unsigned int>::push_back[abi:ne200100](&__p[3], v25++);
LABEL_28:
        if (v25 == v21)
        {
          goto LABEL_31;
        }

        if (v24 == v23)
        {
          goto LABEL_30;
        }
      }

      std::vector<unsigned int>::push_back[abi:ne200100](__p, v25++);
LABEL_27:
      ++v24;
      goto LABEL_28;
    }

    do
    {
LABEL_30:
      std::vector<unsigned int>::push_back[abi:ne200100](&__p[3], v25++);
    }

    while (v25 != v21);
  }

LABEL_31:
  while (v24 != v23)
  {
    std::vector<unsigned int>::push_back[abi:ne200100](&v27, v24++);
  }

  *a1 = v27;
  *(a1 + 16) = v28;
  *(a1 + 24) = *&__p[3];
  *(a1 + 40) = __p[5];
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v22)
  {
    operator delete(v22);
  }

  if (v20)
  {
    operator delete(v20);
  }
}

void AMCP::ASP::Driver::update_owned_object_kind(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a4[3];
  v35 = a4[4];
  if (v6 != v35)
  {
    v7 = 0uLL;
    do
    {
      LODWORD(v38) = *v6;
      v39 = v7;
      v40 = v7;
      v41 = 1065353216;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v39, v38, &v38);
      std::__shared_mutex_base::lock_shared((a1 + 88));
      do
      {
        v9 = *(a1 + 64);
        v8 = *(a1 + 72);
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = v8 == 0;
        }

        if (!v10)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (!v8)
        {
          break;
        }

        v11 = 0;
        v12 = 24 * v8;
        do
        {
          if (!v9)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          v13 = *v9;
          if (!std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&v39, *v9) && std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&v39, *(*(v9 + 8) + 40)))
          {
            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v39, v13, v9);
            v11 = 1;
          }

          v9 += 24;
          v12 -= 24;
        }

        while (v12);
      }

      while ((v11 & 1) != 0);
      v37 = 0;
      v36 = 0uLL;
      v14 = 0;
      if (v40)
      {
        v15 = v40;
        do
        {
          ++v14;
          v15 = *v15;
        }

        while (v15);
      }

      std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>,std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(&v36, v40, v14);
      std::__shared_mutex_base::unlock_shared((a1 + 88));
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v39);
      std::__shared_mutex_base::lock((a1 + 88));
      v16 = v36;
      if (v36 != *(&v36 + 1))
      {
        v17 = *(a1 + 72);
        v18 = v36;
        do
        {
          v19 = *(a1 + 64);
          if (v19)
          {
            v20 = 1;
          }

          else
          {
            v20 = v17 == 0;
          }

          if (!v20)
          {
            __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
          }

          if (v17)
          {
            v21 = *(a1 + 64);
            v22 = v17;
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

              v23 = v22 >> 1;
              v24 = &v21[6 * (v22 >> 1)];
              v26 = *v24;
              v25 = v24 + 6;
              v22 += ~(v22 >> 1);
              if (v26 >= *v18)
              {
                v22 = v23;
              }

              else
              {
                v21 = v25;
              }
            }

            while (v22);
          }

          else
          {
            v21 = *(a1 + 64);
          }

          v27 = (v19 + 24 * v17);
          if (v21 != v27)
          {
            if (!v21)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            if (*v18 < *v21)
            {
              v21 = (v19 + 24 * v17);
            }

            if (v21 != v27)
            {
              if (v19 > v21 || v21 >= v27)
              {
                __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
              }

              if (v21 + 6 != v27)
              {
                v29 = v21 + 8;
                do
                {
                  *(v29 - 8) = *(v29 - 2);
                  v30 = *v29;
                  *v29 = 0;
                  *(v29 + 1) = 0;
                  v31 = *(v29 - 2);
                  *(v29 - 6) = v30;
                  if (v31)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
                  }

                  v32 = v29 + 4;
                  v29 += 6;
                }

                while (v32 != v27);
              }

              v33 = *(v27 - 1);
              if (v33)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v33);
              }

              v17 = *(a1 + 72) - 1;
              *(a1 + 72) = v17;
            }
          }

          ++v18;
        }

        while (v18 != *(&v16 + 1));
      }

      std::__shared_mutex_base::unlock((a1 + 88));
      if (v16)
      {
        operator delete(v16);
      }

      ++v6;
      v7 = 0uLL;
    }

    while (v6 != v35);
  }

  if (*a4 != a4[1])
  {
    v34 = *(a1 + 32);
    if (*(&v34 + 1))
    {
      atomic_fetch_add_explicit((*(&v34 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }
}

void sub_1DE57B0C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::insert_unique(uint64_t a1, char *a2, unsigned int *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *(a2 + 1);
  if (*a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = *a2 + 24 * v3;
  v22 = *a2;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>*,true>,unsigned int>(&v23, &v22, v8, *a3);
  v9 = v23;
  if (v23 == v8)
  {
    *(a1 + 8) = 1;
LABEL_13:
    v11 = *a2;
    if (*a2 > v9)
    {
      goto LABEL_29;
    }

    v12 = *(a2 + 1);
    if (!v11 && v12)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v13 = v11 + 24 * v12;
    if (v9 > v13)
    {
LABEL_29:
      __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
    }

    v14 = *(a2 + 2);
    if (v14 < v12)
    {
      __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
    }

    if (v14 == v12)
    {
      boost::container::vector<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>*,boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>(&v23, a2, v9, a3);
      v9 = v23;
    }

    else if (v13 == v9)
    {
      *v13 = *a3;
      *(v13 + 8) = *(a3 + 2);
      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      ++*(a2 + 1);
    }

    else
    {
      v15 = v13 - 24;
      *v13 = *(v13 - 24);
      *(v13 + 8) = *(v13 - 16);
      *(v13 - 16) = 0;
      *(v13 - 8) = 0;
      ++*(a2 + 1);
      if (v13 - 24 != v9)
      {
        v16 = v13 - 24;
        do
        {
          v17 = *(v16 - 24);
          v16 -= 24;
          *v15 = v17;
          v18 = *(v15 - 16);
          *(v15 - 16) = 0;
          *(v15 - 8) = 0;
          v19 = *(v15 + 16);
          *(v15 + 8) = v18;
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          v15 = v16;
        }

        while (v16 != v9);
      }

      *v9 = *a3;
      v20 = *(a3 + 2);
      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      v21 = *(v9 + 16);
      *(v9 + 8) = v20;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }
    }

    goto LABEL_28;
  }

  if (!v23)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v10 = *a3 >= *v23;
  *(a1 + 8) = *a3 < *v23;
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!*a2)
  {
    __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
  }

LABEL_28:
  *a1 = v9;
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>,boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>*,boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>(void *a1, char *a2, char *a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  if (v4 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x555555555555555)
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
  if (v6 >= 0x555555555555555)
  {
    v6 = 0x555555555555555;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x555555555555555)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *a2;
  v14 = operator new(24 * v8);
  v15 = v14;
  v16 = *a2;
  v17 = (*a2 + 24 * *(a2 + 1));
  v18 = v14;
  if (*a2 != a3)
  {
    v19 = *a2;
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
    v20 = v18 + 32;
    v21 = a3;
    do
    {
      *(v20 - 2) = *v21;
      *v20 = *(v21 + 8);
      v20 = (v20 + 24);
      *(v21 + 1) = 0;
      *(v21 + 2) = 0;
      v21 += 24;
    }

    while (v21 != v17);
  }

  if (v16)
  {
    v22 = *(a2 + 1);
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

    operator delete(*a2);
  }

  v24 = *(a2 + 1) + 1;
  *a2 = v15;
  *(a2 + 1) = v24;
  *(a2 + 2) = v8;
  *a1 = &a3[v15 - v13];
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>*,true>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v4) >> 3);
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
      v7 = &v4[6 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 6;
        *a2 = v7 + 6;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void std::__shared_ptr_emplace<AMCP::ASP::PlugIn_Object>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597A410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>,std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(uint64_t *result, uint64_t *a2, unint64_t a3)
{
  if (a3)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a3);
  }

  return result;
}

void sub_1DE57B758(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(uint64_t a1, AMCP::ASP::PlugIn *this, uint64_t a3, const AudioObjectPropertyAddress *a4)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(this, a3, 0, a4, 0, 0);
  if (!(PropertyDataSize >> 34) || PropertyDataSize)
  {
    *a1 = PropertyDataSize;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    std::vector<unsigned int>::vector[abi:ne200100](&__p, PropertyDataSize >> 34);
    *a1 = AMCP::ASP::PlugIn::ObjectGetPropertyData(this, a3, 0, a4, 0, 0, (v10 - __p) & 0xFFFFFFFC, __p);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 8), __p, v10, (v10 - __p) >> 2);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }
}

void std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597A660;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A660;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0,std::allocator<AMCP::ASP::Driver::request_device_configuration_change(unsigned int,unsigned long long,void *)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A660;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::find(uint64_t *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v14 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>*,true>,unsigned int>(a1, &v14, v3 + 24 * v4, *a3);
  v10 = a2[1];
  if (*a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = *a2 + 24 * v10;
  v13 = *a1;
  if (*a1 != v12)
  {
    if (!v13)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 < *v13)
    {
      *a1 = v12;
    }
  }

  return result;
}

uint64_t AMCP::ASP::Host_Interface::delete_from_storage(AMCP::ASP::Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3)
{
  v3 = *(this + 5);
  applesauce::CF::StringRef::from_get(&cf, a2);
  os_unfair_lock_lock((v3 + 264));
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(v3 + 272));
  mcp_applesauce::CF::Dictionary_Builder::remove_value<applesauce::CF::StringRef>(MutableCopy, cf);
  mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&v8, MutableCopy);
  v5 = *(v3 + 272);
  *(v3 + 272) = v8;
  v8 = v5;
  if (v5)
  {
    CFRelease(v5);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  os_unfair_lock_unlock((v3 + 264));
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

void mcp_applesauce::CF::Dictionary_Builder::remove_value<applesauce::CF::StringRef>(__CFDictionary *a1, const void *a2)
{
  if (a1)
  {
    CFDictionaryRemoveValue(a1, a2);
  }
}

uint64_t AMCP::ASP::Host_Interface::write_to_storage(AMCP::ASP::Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3, const void *a4)
{
  v5 = *(this + 5);
  applesauce::CF::StringRef::from_get(&cf, a2);
  if (a3)
  {
    CFRetain(a3);
  }

  os_unfair_lock_lock((v5 + 264));
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(v5 + 272));
  mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::TypeRef>(MutableCopy, cf, a3);
  mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(&v10, MutableCopy);
  v7 = *(v5 + 272);
  *(v5 + 272) = v10;
  v10 = v7;
  if (v7)
  {
    CFRelease(v7);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  os_unfair_lock_unlock((v5 + 264));
  if (a3)
  {
    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t AMCP::ASP::Host_Interface::copy_from_storage(AMCP::ASP::Host_Interface *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3, const void **a4)
{
  v5 = *(this + 5);
  applesauce::CF::StringRef::from_get(&cf, a2);
  os_unfair_lock_lock((v5 + 264));
  v6 = *(v5 + 272);
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(v6, cf);
  v8 = v7;
  if (v7)
  {
    CFRetain(v7);
    CFRetain(v8);
    CFRelease(v8);
  }

  os_unfair_lock_unlock((v5 + 264));
  if (cf)
  {
    CFRelease(cf);
  }

  if (a3)
  {
    a3->isa = v8;
  }

  else if (v8)
  {
    CFRelease(v8);
  }

  return 0;
}

uint64_t AMCP::ASP::Host_Interface::properties_changed(AMCP::ASP::Host_Interface *this, const AudioServerPlugInHostInterface *a2, unsigned int a3, uint64_t a4, const AudioObjectPropertyAddress *a5)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = *(this + 5);
  if (a3 && !a4)
  {
    goto LABEL_96;
  }

  v6 = 560947818;
  v53[0] = a3;
  v53[1] = a4;
  AMCP::ASP::Driver::get_plugin_object_for_driver_id(&v60, v5, a2);
  v7 = v60;
  if (v60)
  {
    v8 = v60[15];
    v58 = v60[17];
    v59 = v8;
    AMCP::Core::Broker::fetch_core(&v56, *(*(v5 + 32) + 16), v8);
    if (!v56)
    {
      goto LABEL_64;
    }

    kdebug_trace();
    v55[0] = v5;
    v55[1] = &v59;
    v55[2] = &v58;
    v55[3] = &v56;
    if (AMCP::is_base_of(0x61706C67, v58))
    {
      memset(__p, 0, sizeof(__p));
      v9 = v53[0];
      if (v53[0])
      {
        v10 = 0;
        v52 = 0;
        v51 = 0;
        while (1)
        {
          v11 = gsl::details::span_iterator<gsl::span<AudioObjectPropertyAddress,-1l>,false>::operator*(v53, v10);
          v12 = *v11;
          if (*v11 == 1684370979)
          {
            AMCP::ASP::Driver::compute_new_dead_objects_kind(&v62, v5, &v60, 0x61646576, 1684370979);
            v23 = v65;
            v24 = v66;
            v25 = v62;
            v26 = v63;
            if (v65)
            {
              operator delete(v65);
            }

            if (v25)
            {
              operator delete(v25);
            }

            v27 = v25 != v26;
            if (v23 != v24)
            {
              v27 = 2;
            }

            LODWORD(v51) = v27;
          }

          else if (v12 == 1668049699)
          {
            AMCP::ASP::Driver::compute_new_dead_objects_kind(&v62, v5, &v60, 0x61636C6B, 1668049699);
            v18 = v65;
            v19 = v66;
            v20 = v62;
            v21 = v63;
            if (v65)
            {
              operator delete(v65);
            }

            if (v20)
            {
              operator delete(v20);
            }

            v22 = v18 == v19 ? v20 != v21 : 2;
            HIDWORD(v51) = v22;
          }

          else if (v12 == 1651472419)
          {
            AMCP::ASP::Driver::compute_new_dead_objects_kind(&v62, v5, &v60, 0x61626F78, 1651472419);
            v13 = v65;
            v14 = v66;
            v15 = v62;
            v16 = v63;
            if (v65)
            {
              operator delete(v65);
            }

            if (v15)
            {
              operator delete(v15);
            }

            v17 = v15 != v16;
            if (v13 != v14)
            {
              v17 = 2;
            }

            v52 = v17;
          }

          else
          {
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](__p, v11);
          }

          if (v10 >= v53[0])
          {
            goto LABEL_96;
          }

          if (v9 == ++v10)
          {
            goto LABEL_49;
          }
        }
      }

      v51 = 0;
      v52 = 0;
LABEL_49:
      if (v51)
      {
        v36 = *(v5 + 16);
        if (v36)
        {
          atomic_fetch_add_explicit((v36 + 16), 1uLL, memory_order_relaxed);
        }

        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v65 = 0;
        operator new();
      }

      if (v52)
      {
        v37 = *(v5 + 16);
        if (v37)
        {
          atomic_fetch_add_explicit((v37 + 16), 1uLL, memory_order_relaxed);
        }

        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v65 = 0;
        operator new();
      }

      AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_2::operator()<std::vector<AudioObjectPropertyAddress>>(v55, __p);
      v35 = __p[0];
      if (!__p[0])
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (AMCP::is_base_of(0x6163746C, v58))
      {
        v28 = v58;
        if (AMCP::is_base_of(0x736C6472, v58))
        {
          v29 = 0;
          v30 = 0;
          v31 = 1935962742;
        }

        else if (AMCP::is_base_of(0x6C65766C, v28))
        {
          v30 = 1818453110;
          v31 = 1818456950;
          v29 = 1;
        }

        else if (AMCP::is_base_of(0x746F676C, v28))
        {
          v29 = 0;
          v30 = 0;
          v31 = 1650685548;
        }

        else if (AMCP::is_base_of(0x736C6374, v28))
        {
          v29 = 0;
          v30 = 0;
          v31 = 1935893353;
        }

        else
        {
          v29 = 0;
          v30 = 0;
          if (AMCP::is_base_of(0x7370616E, v28))
          {
            v31 = 1936745334;
          }

          else
          {
            v31 = 0;
          }
        }

        v39 = v53[0];
        if (v53[0])
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          do
          {
            v43 = *gsl::details::span_iterator<gsl::span<AudioObjectPropertyAddress,-1l>,false>::operator*(v53, v40);
            if (v43 == v30)
            {
              v44 = v29;
            }

            else
            {
              v44 = 0;
            }

            v45 = v44 | v42;
            v46 = v44 ^ 1 | v41;
            if (v43 == v31)
            {
              v42 = 1;
            }

            else
            {
              v42 = v45;
            }

            if (v43 != v31)
            {
              v41 = v46;
            }

            if (v40 >= v53[0])
            {
              goto LABEL_96;
            }

            ++v40;
          }

          while (v39 != v40);
          if (v42)
          {
            AMCP::Core::Conductor::notify_control_value_observers(*(*(v5 + 32) + 32), v59);
          }

          if (v41)
          {
            v47 = *(*(v5 + 32) + 32);
            v48 = *(v5 + 280);
            v49 = v59;
            v50 = v61;
            if (v61)
            {
              atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v62 = &unk_1F597A5E0;
            v63 = v7;
            v64 = v50;
            v65 = &v62;
            AMCP::Core::Conductor::enqueue_config_change(v47, v48, v49, 0, &v62);
            std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v62);
          }
        }

        goto LABEL_63;
      }

      v62 = 0;
      v63 = 0;
      v64 = 0;
      v32 = v53[0];
      if (v53[0])
      {
        v33 = 0;
        while (1)
        {
          v34 = gsl::details::span_iterator<gsl::span<AudioObjectPropertyAddress,-1l>,false>::operator*(v53, v33);
          if ((AMCP::HAL::is_config_change_property(*v34) & 1) == 0)
          {
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](&v62, v34);
          }

          if (v33 >= v53[0])
          {
            break;
          }

          if (v32 == ++v33)
          {
            goto LABEL_46;
          }
        }

LABEL_96:
        std::terminate();
      }

LABEL_46:
      AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_2::operator()<std::vector<AudioObjectPropertyAddress>>(v55, &v62);
      v35 = v62;
      if (!v62)
      {
        goto LABEL_63;
      }
    }

    operator delete(v35);
LABEL_63:
    kdebug_trace();
    v6 = 0;
LABEL_64:
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  return v6;
}

void sub_1DE57C498(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t gsl::details::span_iterator<gsl::span<AudioObjectPropertyAddress,-1l>,false>::operator*(void *a1, uint64_t a2)
{
  if (!a1 || a2 < 0 || *a1 <= a2)
  {
    std::terminate();
  }

  return a1[1] + 12 * a2;
}

void AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_2::operator()<std::vector<AudioObjectPropertyAddress>>(uint64_t *a1, uint64_t a2)
{
  v17[42] = *MEMORY[0x1E69E9840];
  if (*a2 != *(a2 + 8))
  {
    v4 = *a1;
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 40);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v17, (*(v5 + 32) + 368));
    v7 = *(v4 + 40);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    memset(v12, 0, sizeof(v12));
    std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(v12, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
    v8 = *a1[2];
    v13 = *a1[1];
    v14 = v8;
    v9 = a1[3];
    v11 = *v9;
    v10 = v9[1];
    v15 = v11;
    v16 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }
}

void sub_1DE57C6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    v20 = *(v18 + 8);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::HAL::is_config_change_property(AMCP::HAL *this)
{
  v1 = this;
  result = 1;
  if (v1 > 1870030193)
  {
    if (v1 > 1936092478)
    {
      if (v1 > 1937010787)
      {
        if (v1 <= 1952542819)
        {
          if (v1 == 1937010788)
          {
            return result;
          }

          v3 = 1937077093;
          goto LABEL_57;
        }

        if (v1 == 1952542820 || v1 == 1986425722)
        {
          return result;
        }

        v3 = 2003136116;
      }

      else
      {
        if ((v1 - 1936092479) <= 0x35 && ((1 << (v1 - 63)) & 0x20400400000001) != 0 || v1 == 1936482681)
        {
          return result;
        }

        v3 = 1937009955;
      }
    }

    else if (v1 <= 1885762668)
    {
      if ((v1 - 1885762592) <= 0x1F && ((1 << (v1 - 32)) & 0x80000009) != 0 || v1 == 1870030194)
      {
        return result;
      }

      v3 = 1885762657;
    }

    else if (v1 > 1935763059)
    {
      if (v1 == 1935763060 || v1 == 1935894638)
      {
        return result;
      }

      v3 = 1936092451;
    }

    else
    {
      if (v1 == 1885762669 || v1 == 1902539642)
      {
        return result;
      }

      v3 = 1919055206;
    }

    goto LABEL_57;
  }

  if (v1 <= 1684629093)
  {
    if (v1 <= 1651730809)
    {
      if (v1 <= 1634562931)
      {
        if (v1 == 1633906541)
        {
          return result;
        }

        v3 = 1634169456;
        goto LABEL_57;
      }

      if (v1 == 1634562932 || v1 == 1634755428)
      {
        return result;
      }

      v3 = 1634955892;
    }

    else if (v1 > 1668049763)
    {
      if (v1 == 1668049764 || v1 == 1668575852)
      {
        return result;
      }

      v3 = 1684108387;
    }

    else
    {
      if (v1 == 1651730810 || v1 == 1651735075)
      {
        return result;
      }

      v3 = 1667658618;
    }

LABEL_57:
    if (v1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (v1 > 1819569762)
  {
    if (v1 > 1853059618)
    {
      if (v1 == 1853059619 || v1 == 1853059700)
      {
        return result;
      }

      v3 = 1869180523;
    }

    else
    {
      if (v1 == 1819569763 || v1 == 1835628607)
      {
        return result;
      }

      v3 = 1852012899;
    }

    goto LABEL_57;
  }

  if (v1 > 1735354733)
  {
    if (v1 == 1735354734 || v1 == 1735356005)
    {
      return result;
    }

    v3 = 1735554416;
    goto LABEL_57;
  }

  if (v1 != 1684629094 && v1 != 1718839674)
  {
    v3 = 1718843939;
    goto LABEL_57;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597A5E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A5E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_3>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A5E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *_ZNSt3__110unique_ptrIZZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEENK3__2clINS_6vectorIS6_NS_9allocatorIS6_EEEEEEDaRKT_EUlvE_NS_14default_deleteISK_EEED1B8ne200100Ev(void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[7];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[2];
    if (v4)
    {
      v2[3] = v4;
      operator delete(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C407BC62F60);
  }

  return a1;
}

void _ZZN10applesauce8dispatch2v15asyncIZZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEENK3__2clINSt3__16vectorIS8_NSE_9allocatorIS8_EEEEEEDaRKT_EUlvE_EEvP16dispatch_queue_sOSK_ENUlPvE_8__invokeESR_(uint64_t a1, unsigned int a2)
{
  *__p = 0u;
  *v21 = 0u;
  v22 = 1065353216;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3 == v4)
  {
    goto LABEL_35;
  }

  while (1)
  {
    LODWORD(v5) = *v3;
    if (*v3 == 1870098020)
    {
      goto LABEL_34;
    }

    if (v5 == 1819569763)
    {
      if (AMCP::is_base_of(0x61737472, *(a1 + 44)))
      {
        v5 = 1936487523;
      }

      else
      {
        v5 = 1819569763;
      }
    }

    else
    {
      AMCP::get_property_traits_for_hal_selector(&v23, *v3);
      v6 = HIDWORD(v25);
      v7 = v23;
      if (v24)
      {
        operator delete(v24);
      }

      if (v6)
      {
        v5 = v7;
      }

      else
      {
        v5 = v5;
      }
    }

    v19[0] = v5;
    v16 = *(v3 + 1);
    *&v19[1] = v16;
    v8 = *(a1 + 48);
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    AMCP::Core::Core::get_property_value(&v23, v8, v19, v17);
    if (v18)
    {
      v18(0, v17, 0, 0);
    }

    v10 = v16 & 0xFF000000 | (v5 << 32) | HIDWORD(v16) & 0xFFFFFF;
    if (!__p[1])
    {
      goto LABEL_31;
    }

    v11 = vcnt_s8(__p[1]);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v16 & 0xFF000000 | (v5 << 32) | HIDWORD(v16) & 0xFFFFFF;
      if (v10 >= __p[1])
      {
        v12 = v10 % __p[1];
      }
    }

    else
    {
      v12 = v10 & (__p[1] - 1);
    }

    v13 = *(__p[0] + v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_31:
      operator new();
    }

    while (1)
    {
      v15 = v14[1];
      if (v15 == v10)
      {
        break;
      }

      if (v11.u32[0] > 1uLL)
      {
        if (v15 >= __p[1])
        {
          v15 %= __p[1];
        }
      }

      else
      {
        v15 &= __p[1] - 1;
      }

      if (v15 != v12)
      {
        goto LABEL_31;
      }

LABEL_30:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_31;
      }
    }

    if (*(v14 + 4) != v5 || *(v14 + 20) != v16)
    {
      goto LABEL_30;
    }

    AMCP::Thing::operator=((v14 + 4), &v23, v9);
    if (v25)
    {
      v25(0, &v23, 0, 0);
    }

LABEL_34:
    v3 += 3;
    if (v3 == v4)
    {
LABEL_35:
      AMCP::Core::Conductor::properties_changed_async(*(*a1 + 32), *(a1 + 40), __p);
    }
  }
}

void sub_1DE57D0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Address,AMCP::Thing>,void *>>>::operator()[abi:ne200100](1, v23);
  AMCP::Thing::~Thing((v24 - 136));
  std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(&a23);
  _ZNSt3__110unique_ptrIZZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEENK3__2clINS_6vectorIS6_NS_9allocatorIS6_EEEEEEDaRKT_EUlvE_NS_14default_deleteISK_EEED1B8ne200100Ev(&a14);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[1];
      if (v5)
      {
        v7 = a1[3];
        v6 = a1 + 3;
        AMCP::ASP::PlugIn_Object::update_core(v7);
        AMCP::ASP::Driver::compute_new_dead_objects_kind(v8, v5, v6, 0x61626F78, 1651472419);
        AMCP::ASP::Driver::update_owned_object_kind(v5, v6, 0x61626F78u, v8);
        if (__p)
        {
          operator delete(__p);
        }

        if (v8[0])
        {
          operator delete(v8[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void *std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F597A560;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A560;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A560;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP6Driver25driver_properties_changedEjRKN3gsl4spanI26AudioObjectPropertyAddressLln1EEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
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
        AMCP::ASP::PlugIn_Object::update_core(*(a1 + 32));
        if (*(a1 + 24))
        {
          AMCP::ASP::Driver::compute_new_dead_objects_kind(v6, v5, a1 + 32, 0x61646576, 1684370979);
          AMCP::ASP::Driver::update_owned_object_kind(v5, a1 + 32, 0x61646576u, v6);
          if (__p)
          {
            operator delete(__p);
          }

          if (v6[0])
          {
            operator delete(v6[0]);
          }
        }

        if (*(a1 + 28))
        {
          AMCP::ASP::Driver::compute_new_dead_objects_kind(v6, v5, a1 + 32, 0x61636C6B, 1668049699);
          AMCP::ASP::Driver::update_owned_object_kind(v5, a1 + 32, 0x61636C6Bu, v6);
          if (__p)
          {
            operator delete(__p);
          }

          if (v6[0])
          {
            operator delete(v6[0]);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F597A4E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  v4 = result[5];
  a2[4] = result[4];
  a2[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A4E0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0,std::allocator<AMCP::ASP::Driver::driver_properties_changed(unsigned int,gsl::span<AudioObjectPropertyAddress,-1l> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A4E0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP6Driver5startERKN10applesauce2CF6URLRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
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
        AMCP::ASP::Driver::update_owned_objects(v5, a1 + 24);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F597A460;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A460;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0,std::allocator<AMCP::ASP::Driver::start(applesauce::CF::URLRef const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A460;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::ASP::PlugIn>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1DE57DB4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "Release");
  AMCP::ASP::PlugIn::log_plugin_exception((v15 + 24), &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE57DB2CLL);
}

void std::__shared_ptr_emplace<AMCP::ASP::PlugIn>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597A3C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::ASP::Driver::get_core_id_for_driver_id(AMCP::ASP::Driver *this, unsigned int a2)
{
  v9 = a2;
  std::__shared_mutex_base::lock_shared((this + 88));
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::shared_ptr<AMCP::ASP::PlugIn_Object>>>>::find(&v8, this + 8, &v9);
  v3 = *(this + 8);
  v4 = *(this + 9);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v8 == v3 + 24 * v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*(v8 + 8) + 60);
  }

  std::__shared_mutex_base::unlock_shared((this + 88));
  return v6;
}

unint64_t ca::mach::error_category::message@<X0>(mach_error_t error_value@<W1>, void *a2@<X8>)
{
  v3 = mach_error_string(error_value);
  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memmove(a2, v3, result);
  }

  *(a2 + v5) = 0;
  return result;
}

void ca::mach::error_category::~error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t ca::mach::semaphore::wait(ca::mach::semaphore *this)
{
  do
  {
    v2 = MEMORY[0x1E12C2790](*this);
  }

  while (v2 == 14);

  return ca::mach::throw_if_mach_error("semaphore_wait failed", v2);
}

void AMCP::ASP::PlugIn_Object::~PlugIn_Object(AMCP::ASP::PlugIn_Object *this)
{
  AMCP::ASP::PlugIn_Object::~PlugIn_Object(this);

  JUMPOUT(0x1E12C1730);
}

{
  v44 = *MEMORY[0x1E69E9840];
  *this = &unk_1F597A6E0;
  is_base_of = AMCP::is_base_of(0x61636C6B, *(this + 17));
  if (!is_base_of)
  {
    goto LABEL_44;
  }

  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    is_base_of = AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v4 + 16);
  switch(v6)
  {
    case 3:
      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_42;
      }

      AMCP::make_string_for_class_id(__p, *(this + 16));
      if (v33 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      v23 = *(this + 15);
      v24 = *(this + 11);
      *buf = 136316162;
      v35 = "ASP_Object.cpp";
      v36 = 1024;
      v37 = 1421;
      v38 = 2080;
      v39 = v22;
      v40 = 1024;
      v41 = v23;
      v42 = 1024;
      v43 = v24;
      v25 = v18;
      v26 = OS_LOG_TYPE_INFO;
      break;
    case 2:
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_42;
      }

      AMCP::make_string_for_class_id(__p, *(this + 16));
      if (v33 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      v20 = *(this + 15);
      v21 = *(this + 11);
      *buf = 136316162;
      v35 = "ASP_Object.cpp";
      v36 = 1024;
      v37 = 1421;
      v38 = 2080;
      v39 = v19;
      v40 = 1024;
      v41 = v20;
      v42 = 1024;
      v43 = v21;
      _os_log_debug_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tearing down %s with object id %u driver id: %u", buf, 0x28u);
      goto LABEL_40;
    case 1:
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      AMCP::make_string_for_class_id(__p, *(this + 16));
      if (v33 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      v28 = *(this + 15);
      v29 = *(this + 11);
      *buf = 136316162;
      v35 = "ASP_Object.cpp";
      v36 = 1024;
      v37 = 1421;
      v38 = 2080;
      v39 = v27;
      v40 = 1024;
      v41 = v28;
      v42 = 1024;
      v43 = v29;
      v25 = v10;
      v26 = OS_LOG_TYPE_DEFAULT;
      break;
    default:
      goto LABEL_42;
  }

  _os_log_impl(&dword_1DE1F9000, v25, v26, "%32s:%-5d Tearing down %s with object id %u driver id: %u", buf, 0x28u);
LABEL_40:
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_42:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_44:
  AMCP::Core::Broker::destroy_core(*(*(this + 1) + 16), *(this + 15));
  *(this + 15) = 0;
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 72));
  v30 = *(this + 4);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  *this = &unk_1F59748E8;
  v31 = *(this + 2);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }
}

void sub_1DE57E1FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::HAL::is_stock_hal_class(AMCP::HAL *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 1751740517)
  {
    if (v1 > 1651273578)
    {
      if (v1 > 1685287522)
      {
        if (v1 > 1701734253)
        {
          if (v1 != 1701734254 && v1 != 1702259059)
          {
            v3 = 1718432370;
            goto LABEL_66;
          }
        }

        else if (v1 != 1685287523 && v1 != 1701078390)
        {
          v3 = 1701733488;
          goto LABEL_66;
        }
      }

      else if (v1 > 1668050547)
      {
        if (v1 != 1668050548 && v1 != 1684370292)
        {
          v3 = 1684895092;
          goto LABEL_66;
        }
      }

      else if (v1 != 1651273579 && v1 != 1668047723)
      {
        v3 = 1668049264;
        goto LABEL_66;
      }
    }

    else if (v1 > 1634757734)
    {
      if (v1 > 1634957682)
      {
        if (v1 != 1634957683 && v1 != 1635017576)
        {
          v3 = 1650602615;
          goto LABEL_66;
        }
      }

      else if (v1 != 1634757735 && v1 != 1634956402)
      {
        v3 = 1634956642;
        goto LABEL_66;
      }
    }

    else if (v1 > 1633907819)
    {
      if (v1 != 1633907820 && v1 != 1633969526)
      {
        v3 = 1634689642;
        goto LABEL_66;
      }
    }

    else if (v1 != 1633773415 && v1 != 1633841016)
    {
      v3 = 1633905771;
      goto LABEL_66;
    }

    return result;
  }

  if (v1 <= 1936028001)
  {
    if (v1 > 1836414052)
    {
      if (v1 <= 1885893480)
      {
        if (v1 != 1836414053 && v1 != 1852601964)
        {
          v3 = 1885888878;
          goto LABEL_66;
        }

        return result;
      }

      if (v1 == 1885893481 || v1 == 1886544237)
      {
        return result;
      }

      v3 = 1919182198;
    }

    else
    {
      if (v1 <= 1815241313)
      {
        if (v1 != 1751740518 && v1 != 1768907636)
        {
          v3 = 1784767339;
          goto LABEL_66;
        }

        return result;
      }

      if (v1 == 1815241314 || v1 == 1818588780)
      {
        return result;
      }

      v3 = 1819504226;
    }

LABEL_66:
    if (v1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (v1 <= 1937072748)
  {
    if (v1 <= 1936483441)
    {
      if (v1 != 1936028002 && v1 != 1936028007)
      {
        v3 = 1936483188;
        goto LABEL_66;
      }

      return result;
    }

    if (v1 == 1936483442 || v1 == 1936682095)
    {
      return result;
    }

    v3 = 1936744814;
    goto LABEL_66;
  }

  if (v1 > 1953458027)
  {
    if (v1 > 1986817380)
    {
      if (v1 == 1986817381)
      {
        return result;
      }

      v3 = 1999790690;
    }

    else
    {
      if (v1 == 1953458028)
      {
        return result;
      }

      v3 = 1953656941;
    }

    goto LABEL_66;
  }

  if (v1 != 1937072749 && v1 != 1937072758)
  {
    v3 = 1952541794;
    goto LABEL_66;
  }

  return result;
}

uint64_t AMCP::ASP::PlugIn_Object::PlugIn_Object(uint64_t a1, __int128 *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v87 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  *a2 = 0uLL;
  *(a1 + 8) = v10;
  *a1 = &unk_1F597A6E0;
  *(a1 + 24) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 232) = 0u;
  v11 = a1 + 232;
  *(a1 + 40) = a5;
  *(a1 + 44) = a6;
  *(a1 + 48) = 0;
  *(a1 + 56) = a4;
  v12 = (a1 + 72);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 90) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 850045863;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 850045863;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 850045863;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = dispatch_semaphore_create(0);
  *(v11 + 160) = 0;
  *(v11 + 168) = 0;
  v13 = *(a1 + 24);
  strcpy(&buf, "salcbolg");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  LODWORD(v74.__vftable) = 0;
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(v13, a6, 0, &buf, 0, 0, 4, &v74);
  *(v11 - 184) = v74.__vftable;
  if (PropertyData)
  {
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(PropertyData);
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
      buf.mSelector = 136315650;
      *&buf.mScope = "ASP_Object.cpp";
      v82 = 1024;
      *v83 = 1249;
      *&v83[4] = 2080;
      *&v83[6] = "error != 0";
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s all driver objects are supposed to have a class", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v73, "all driver objects are supposed to have a class");
    std::runtime_error::runtime_error(&v74, &v73);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = -1;
    v74.__vftable = &unk_1F5992170;
    v75 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v74);
    *&v83[18] = "AMCP::ASP::PlugIn_Object::PlugIn_Object(Core::System_Core_Ptr, PlugIn_Ptr, Object_ID, AudioObjectID, AudioObjectID, AudioClassID)";
    v84 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
    LODWORD(__p) = 1249;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v70);
  }

  v15 = *(a1 + 24);
  strcpy(&buf, "slcbbolg");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  LODWORD(v74.__vftable) = 0;
  v16 = AMCP::ASP::PlugIn::ObjectGetPropertyData(v15, a6, 0, &buf, 0, 0, 4, &v74);
  LODWORD(v17) = v74.__vftable;
  *(a1 + 52) = v74.__vftable;
  v18 = *(a1 + 48);
  if (v16)
  {
    is_stock_hal_class = AMCP::HAL::is_stock_hal_class(*(a1 + 48));
    if (!is_stock_hal_class)
    {
      v56 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v56 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_stock_hal_class);
      }

      v58 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v57 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        v59 = *v58;
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      else
      {
        v59 = *v58;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315650;
        *&buf.mScope = "ASP_Object.cpp";
        v82 = 1024;
        *v83 = 1256;
        *&v83[4] = 2080;
        *&v83[6] = "error != 0";
        _os_log_error_impl(&dword_1DE1F9000, v59, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s all driver objects are supposed to have a base class", &buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v73, "all driver objects are supposed to have a base class");
      std::runtime_error::runtime_error(&v74, &v73);
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = -1;
      v74.__vftable = &unk_1F5992170;
      v75 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v74);
      *&v83[18] = "AMCP::ASP::PlugIn_Object::PlugIn_Object(Core::System_Core_Ptr, PlugIn_Ptr, Object_ID, AudioObjectID, AudioObjectID, AudioClassID)";
      v84 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
      LODWORD(__p) = 1256;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v70);
    }

    *(a1 + 52) = v18;
    LODWORD(v17) = v18;
  }

  if (v18 == 1634689642)
  {
    v18 = 1634689642;
    if (v17 != 1634689642)
    {
      goto LABEL_11;
    }

    *(a1 + 48) = a7;
    *(a1 + 52) = a7;
    LODWORD(v17) = a7;
    v18 = a7;
  }

  if (a7 == 1633905771 && v18 == 1633969526)
  {
    *(a1 + 48) = 1633905771;
    v18 = 1633905771;
  }

LABEL_11:
  if (AMCP::HAL::is_stock_hal_class(v18))
  {
    v17 = v18;
  }

  else
  {
    v17 = v17;
  }

  v20 = AMCP::HAL::is_stock_hal_class(v17);
  if ((v20 & 1) == 0)
  {
    *(a1 + 64) = 0;
    goto LABEL_116;
  }

  v21 = 0;
  if (v17 <= 1815241313)
  {
    if (v17 > 1668047722)
    {
      if (v17 <= 1685287522)
      {
        if (v17 > 1684370291)
        {
          if (v17 == 1684370292)
          {
            goto LABEL_68;
          }

          v22 = 1684895092;
        }

        else
        {
          if (v17 == 1668047723)
          {
            goto LABEL_68;
          }

          v22 = 1668049264;
        }
      }

      else if (v17 <= 1718432369)
      {
        if (v17 == 1685287523)
        {
          goto LABEL_68;
        }

        v22 = 1702259059;
      }

      else
      {
        if (v17 == 1718432370 || v17 == 1751740518)
        {
          goto LABEL_68;
        }

        v22 = 1784767339;
      }
    }

    else if (v17 <= 1634689641)
    {
      if (v17 > 1633907819)
      {
        if (v17 == 1633907820)
        {
          goto LABEL_68;
        }

        v22 = 1633969526;
      }

      else
      {
        if (v17 == 1633841016)
        {
          goto LABEL_68;
        }

        v22 = 1633905771;
      }
    }

    else if (v17 <= 1634956401)
    {
      if (v17 == 1634689642)
      {
        goto LABEL_68;
      }

      v22 = 1634757735;
    }

    else
    {
      if (v17 == 1634956402 || v17 == 1650602615)
      {
        goto LABEL_68;
      }

      v22 = 1651273579;
    }

    goto LABEL_67;
  }

  if (v17 <= 1936483187)
  {
    if (v17 <= 1852601963)
    {
      if (v17 > 1819504225)
      {
        if (v17 == 1819504226)
        {
          goto LABEL_68;
        }

        v22 = 1836414053;
      }

      else
      {
        if (v17 == 1815241314)
        {
          goto LABEL_68;
        }

        v22 = 1818588780;
      }
    }

    else if (v17 <= 1885893480)
    {
      if (v17 == 1852601964)
      {
        goto LABEL_68;
      }

      v22 = 1885888878;
    }

    else
    {
      if (v17 == 1885893481 || v17 == 1936028002)
      {
        goto LABEL_68;
      }

      v22 = 1936028007;
    }

LABEL_67:
    if (v17 != v22)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (v17 > 1937072757)
  {
    if (v17 <= 1953458027)
    {
      if (v17 == 1937072758)
      {
        goto LABEL_68;
      }

      v22 = 1952541794;
    }

    else
    {
      if (v17 == 1953458028 || v17 == 1999790690)
      {
        goto LABEL_68;
      }

      v22 = 1986817381;
    }

    goto LABEL_67;
  }

  if (v17 <= 1936682094)
  {
    if (v17 == 1936483188)
    {
      goto LABEL_68;
    }

    v22 = 1936483442;
    goto LABEL_67;
  }

  if (v17 != 1936682095 && v17 != 1936744814)
  {
    v22 = 1937072749;
    goto LABEL_67;
  }

LABEL_68:
  v21 = v17;
LABEL_69:
  AMCP::get_class_traits(&buf, v18);
  mElement_low = LOBYTE(buf.mElement);
  if (v86 < 0)
  {
    operator delete(__p);
  }

  v20 = *&v83[2];
  if (*&v83[2])
  {
    *&v83[10] = *&v83[2];
    operator delete(*&v83[2]);
  }

  if (mElement_low)
  {
    v24 = v21;
  }

  else
  {
    v24 = v18;
  }

  *(a1 + 64) = v24;
  *(a1 + 68) = v21;
  if (!v24)
  {
LABEL_116:
    v52 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v52 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v20);
    }

    v54 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v53 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      v55 = *v54;
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    else
    {
      v55 = *v54;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v61 = *(a1 + 52);
      v60.i32[0] = bswap32(*(a1 + 48));
      v62 = vzip1_s8(v60, v60);
      v63.i64[0] = 0x1F0000001FLL;
      v63.i64[1] = 0x1F0000001FLL;
      v64.i64[0] = 0x1F0000001FLL;
      v64.i64[1] = 0x1F0000001FLL;
      v65.i64[0] = 0x5F0000005FLL;
      v65.i64[1] = 0x5F0000005FLL;
      v66 = vbsl_s8(vmovn_s32(vcgtq_u32(v65, vsraq_n_s32(v64, vshlq_n_s32(vmovl_u16(v62), 0x18uLL), 0x18uLL))), v62, 0x2E002E002E002ELL);
      HIBYTE(v75) = 4;
      v67 = vuzp1_s8(v66, v66);
      LODWORD(v74.__vftable) = v67.i32[0];
      BYTE4(v74.__vftable) = 0;
      v67.i32[0] = bswap32(v61);
      v68 = vzip1_s8(v67, v67);
      HIBYTE(v72) = 4;
      v69 = vbsl_s8(vmovn_s32(vcgtq_u32(v65, vsraq_n_s32(v63, vshlq_n_s32(vmovl_u16(v68), 0x18uLL), 0x18uLL))), v68, 0x2E002E002E002ELL);
      LODWORD(v71) = vuzp1_s8(v69, v69).u32[0];
      BYTE4(v71) = 0;
      buf.mSelector = 136316162;
      *&buf.mScope = "ASP_Object.cpp";
      v82 = 1024;
      *v83 = 1271;
      *&v83[4] = 2080;
      *&v83[6] = "m_core_class_id == 0";
      *&v83[14] = 2080;
      *&v83[16] = &v74;
      *&v83[24] = 2080;
      v84 = &v71;
      _os_log_error_impl(&dword_1DE1F9000, v55, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s There has to be a core class for %s / %s", &buf, 0x30u);
      if (SHIBYTE(v72) < 0)
      {
        operator delete(v71);
      }

      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74.__vftable);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v73, "There has to be a core class");
    std::runtime_error::runtime_error(&v74, &v73);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = -1;
    v74.__vftable = &unk_1F5992170;
    v75 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v74);
    *&v83[18] = "AMCP::ASP::PlugIn_Object::PlugIn_Object(Core::System_Core_Ptr, PlugIn_Ptr, Object_ID, AudioObjectID, AudioObjectID, AudioClassID)";
    v84 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
    LODWORD(__p) = 1271;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v70);
  }

  if (!v21)
  {
    v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v34 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v20);
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
      v43 = *(a1 + 52);
      v42.i32[0] = bswap32(*(a1 + 48));
      v44 = vzip1_s8(v42, v42);
      v45.i64[0] = 0x1F0000001FLL;
      v45.i64[1] = 0x1F0000001FLL;
      v46.i64[0] = 0x1F0000001FLL;
      v46.i64[1] = 0x1F0000001FLL;
      v47.i64[0] = 0x5F0000005FLL;
      v47.i64[1] = 0x5F0000005FLL;
      v48 = vbsl_s8(vmovn_s32(vcgtq_u32(v47, vsraq_n_s32(v46, vshlq_n_s32(vmovl_u16(v44), 0x18uLL), 0x18uLL))), v44, 0x2E002E002E002ELL);
      HIBYTE(v75) = 4;
      v49 = vuzp1_s8(v48, v48);
      LODWORD(v74.__vftable) = v49.i32[0];
      BYTE4(v74.__vftable) = 0;
      v49.i32[0] = bswap32(v43);
      v50 = vzip1_s8(v49, v49);
      HIBYTE(v72) = 4;
      v51 = vbsl_s8(vmovn_s32(vcgtq_u32(v47, vsraq_n_s32(v45, vshlq_n_s32(vmovl_u16(v50), 0x18uLL), 0x18uLL))), v50, 0x2E002E002E002ELL);
      LODWORD(v71) = vuzp1_s8(v51, v51).u32[0];
      BYTE4(v71) = 0;
      buf.mSelector = 136316162;
      *&buf.mScope = "ASP_Object.cpp";
      v82 = 1024;
      *v83 = 1272;
      *&v83[4] = 2080;
      *&v83[6] = "m_core_stock_class_id == 0";
      *&v83[14] = 2080;
      *&v83[16] = &v74;
      *&v83[24] = 2080;
      v84 = &v71;
      _os_log_error_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s There has to be a core stock class for %s / %s", &buf, 0x30u);
      if (SHIBYTE(v72) < 0)
      {
        operator delete(v71);
      }

      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74.__vftable);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v80);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v73, "There has to be a core stock class");
    std::runtime_error::runtime_error(&v74, &v73);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = -1;
    v74.__vftable = &unk_1F5992170;
    v75 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v74);
    *&v83[18] = "AMCP::ASP::PlugIn_Object::PlugIn_Object(Core::System_Core_Ptr, PlugIn_Ptr, Object_ID, AudioObjectID, AudioObjectID, AudioClassID)";
    v84 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
    LODWORD(__p) = 1272;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v70);
  }

  if (AMCP::is_base_of(0x61636C6B, v21))
  {
    caulk::make_string(&buf, "Object Work Queue: %u", v25, a6);
    if (v83[9] >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = *&buf.mSelector;
    }

    v27 = dispatch_queue_create(p_buf, 0);
    v28 = AMCP::Utility::Dispatch_Queue::operator=(v12, v27);
    if (v27)
    {
      dispatch_release(v27);
    }

    if ((v83[9] & 0x80000000) != 0)
    {
      operator delete(*&buf.mSelector);
    }

    if (!*v12)
    {
      v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v38 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v28);
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
        buf.mSelector = 136315906;
        *&buf.mScope = "ASP_Object.cpp";
        v82 = 1024;
        *v83 = 1277;
        *&v83[4] = 2080;
        *&v83[6] = "m_work_queue.operator BOOL() == true";
        *&v83[14] = 1024;
        *&v83[16] = a6;
        _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Failed to create work queue for object %u", &buf, 0x22u);
      }

      abort();
    }
  }

  return a1;
}

void sub_1DE57F5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
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
  if (v34)
  {
    __cxa_free_exception(v33);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a30);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v32);
  v36 = v31[4];
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  *v31 = &unk_1F59748E8;
  v37 = v31[2];
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(a1);
}

void AMCP::ASP::PlugIn_Object::build_core(AMCP::ASP::PlugIn_Object *this)
{
  v45 = *MEMORY[0x1E69E9840];
  *(this + 15) = AMCP::Core::Broker::reserve_id(*(*(this + 1) + 16));
  *__p = 0u;
  *v35 = 0u;
  v36 = 1065353216;
  v2 = AMCP::ASP::calculate_max_element(this + 3, *(this + 11), *(this + 17));
  is_base_of = AMCP::is_base_of(0x61636C6B, *(this + 17));
  if (!is_base_of)
  {
    goto LABEL_44;
  }

  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    is_base_of = AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v5 + 16);
  switch(v7)
  {
    case 1:
      v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v16 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      v23 = *(this + 15);
      AMCP::make_string_for_class_id(&v43, *(this + 16));
      if (v44 >= 0)
      {
        v24 = &v43;
      }

      else
      {
        v24 = v43;
      }

      v25 = *(this + 11);
      *buf = 136316162;
      *&buf[4] = "ASP_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1294;
      v38 = 1024;
      v39 = v23;
      v40[0] = 2080;
      *&v40[1] = v24;
      v41 = 1024;
      v42 = v25;
      v26 = v19;
      v27 = OS_LOG_TYPE_DEFAULT;
      break;
    case 2:
      v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v12 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_42;
      }

      v20 = *(this + 15);
      AMCP::make_string_for_class_id(&v43, *(this + 16));
      if (v44 >= 0)
      {
        v21 = &v43;
      }

      else
      {
        v21 = v43;
      }

      v22 = *(this + 11);
      *buf = 136316162;
      *&buf[4] = "ASP_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1294;
      v38 = 1024;
      v39 = v20;
      v40[0] = 2080;
      *&v40[1] = v21;
      v41 = 1024;
      v42 = v22;
      _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d Building Core %u for %s driver id: %u", buf, 0x28u);
      goto LABEL_40;
    case 3:
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_base_of);
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

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_42;
      }

      v28 = *(this + 15);
      AMCP::make_string_for_class_id(&v43, *(this + 16));
      if (v44 >= 0)
      {
        v29 = &v43;
      }

      else
      {
        v29 = v43;
      }

      v30 = *(this + 11);
      *buf = 136316162;
      *&buf[4] = "ASP_Object.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1294;
      v38 = 1024;
      v39 = v28;
      v40[0] = 2080;
      *&v40[1] = v29;
      v41 = 1024;
      v42 = v30;
      v26 = v11;
      v27 = OS_LOG_TYPE_INFO;
      break;
    default:
      goto LABEL_42;
  }

  _os_log_impl(&dword_1DE1F9000, v26, v27, "%32s:%-5d Building Core %u for %s driver id: %u", buf, 0x28u);
LABEL_40:
  if (v44 < 0)
  {
    operator delete(v43);
  }

LABEL_42:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_44:
  if (AMCP::is_base_of(0x61706C67, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_object_core(this, v2, __p);
  }

  if (AMCP::is_base_of(0x61626F78, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_object_core(this, v2, __p);
  }

  if (AMCP::is_base_of(0x61646576, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_clock_core(this, v2, __p);
  }

  if (AMCP::is_base_of(0x61737472, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_object_core(this, v2, __p);
  }

  if (AMCP::is_base_of(0x736C6472, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_control_core(this, v2, __p);
  }

  if (AMCP::is_base_of(0x6C65766C, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_volume_control_core(this, v2, __p);
  }

  if (AMCP::is_base_of(0x746F676C, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_BOOLean_control_core(this, v2, __p);
  }

  if (AMCP::is_base_of(0x736C6374, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_selector_control_core(this, v2, __p);
  }

  if (AMCP::is_base_of(0x7370616E, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_stereo_pan_control_core(this, v2, __p);
  }

  if (AMCP::is_base_of(0x6163746C, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_control_core(this, v2, __p);
  }

  if (AMCP::is_base_of(0x61636C6B, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_clock_core(this, v2, __p);
  }

  if (AMCP::is_base_of(0x616F626A, *(this + 17)))
  {
    AMCP::ASP::PlugIn_Object::populate_object_core(this, v2, __p);
  }

  AMCP::Core::Broker::make_core(v32, *(*(this + 1) + 16), __p, *(this + 15));
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(v35[0]);
  v31 = __p[0];
  __p[0] = 0;
  if (v31)
  {
    operator delete(v31);
  }
}

void sub_1DE583B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::ASP::calculate_max_element(AMCP::ASP::PlugIn **a1, uint64_t a2, unsigned int a3)
{
  result = AMCP::is_base_of(0x61646576, a3);
  if (result)
  {
    max_number_channels_for_scope = AMCP::ASP::get_max_number_channels_for_scope(1768845428, a1, a2);
    v7 = AMCP::ASP::get_max_number_channels_for_scope(1869968496, a1, a2);
    v8 = *a1;
    if (max_number_channels_for_scope <= v7)
    {
      max_number_channels_for_scope = v7;
    }

    *&v17.mSelector = 0x676C6F626374726CLL;
    v17.mElement = 0;
    AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(&v18, v8, a2, &v17);
    v9 = __p;
    if (v18 || (v11 = v20, __p == v20))
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v12 = __p;
      do
      {
        v13 = *a1;
        v14 = *v12++;
        *&v17.mSelector = 0x676C6F6263656C6DLL;
        v17.mElement = 0;
        v21 = 0;
        PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(v13, v14, 0, &v17, 0, 0, 4, &v21);
        v16 = v21;
        if (v10 > v21)
        {
          v16 = v10;
        }

        if (!PropertyData)
        {
          v10 = v16;
        }
      }

      while (v12 != v11);
    }

    if (v9)
    {
      operator delete(v9);
    }

    if (max_number_channels_for_scope <= v10)
    {
      return v10;
    }

    else
    {
      return max_number_channels_for_scope;
    }
  }

  return result;
}

void sub_1DE584DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE58537C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE585A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE586298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE586A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE588108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2)
  {
    __cxa_free_exception(v22);
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v23 - 192));
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::ASP::PlugIn_Object::populate_object_core(uint64_t a1, uint64_t a2, float *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0x676C6F6269646E74;
  LODWORD(v6) = 0;
  LODWORD(cf[0]) = *(a1 + 60);
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>(&v3, &v5, cf);
}

void sub_1DE589BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  if (a2)
  {
    __cxa_free_exception(v24);
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a17);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::ASP::PlugIn_Object::update_object_core(uint64_t a1, unsigned int a2, float *a3)
{
  v6[9] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = 0;
  v6[4] = 0;
  v6[5] = 0;
  while (AMCP::Property_Traits<1818454126u>::k_valid_scopes[v4] != 1735159650)
  {
    if (++v4 == 4)
    {
      if (!v3)
      {
LABEL_10:
        strcpy(v6, "nhclbolg");
        BYTE1(v6[1]) = 0;
        WORD1(v6[1]) = 0;
        std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(&v5, v6);
      }

LABEL_9:
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
      goto LABEL_10;
    }
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1DE58BBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<AMCP::Bag_O_Bytes ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 30);
}

uint64_t std::__function::__value_func<AMCP::Bag_O_Bytes ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<AMCP::Bag_O_Bytes ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Bag_O_Bytes const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 32);
}

uint64_t std::__function::__value_func<void ()(AMCP::Bag_O_Bytes const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(AMCP::Bag_O_Bytes const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(AMCP::Core::Has_Property_Function)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(AMCP::Core::Has_Property_Function)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 36);
}

uint64_t std::__function::__value_func<mcp_applesauce::CF::PropertyListRef ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<mcp_applesauce::CF::PropertyListRef ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(uint64_t a1)
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

void sub_1DE58C66C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 38);
}

uint64_t std::__function::__value_func<void ()(mcp_applesauce::CF::PropertyListRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(mcp_applesauce::CF::PropertyListRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_3,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_3>,AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_3,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_3>,AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F597B288;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B208;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B208;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_2>,BOOL ()(AMCP::Core::Has_Property_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B208;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B188;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B188;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_1>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B188;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEENK3$_0clEvEUlRKNS_5ThingEE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::construct<applesauce::CF::StringRef const&>(v10, a2);
  if (!v11)
  {
    goto LABEL_12;
  }

  v3 = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
  v4 = v11;
  *&v13[0] = 0;
  if (v11)
  {
    v11(3, v10, 0, v13);
    v4 = *&v13[0];
  }

  if (v4 == v3)
  {
    *&v13[0] = v3;
    v5 = (v11)(4, v10, 0, v13);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        CFRetain(*v5);
      }

      goto LABEL_13;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v12 = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v11(6, v10, v13, &v12);
  if (!v14)
  {
    goto LABEL_12;
  }

  v12 = v3;
  v7 = v14(4, v13, 0, &v12);
  if (v7)
  {
    v6 = *v7;
    if (*v7)
    {
      CFRetain(*v7);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v14)
  {
    v14(0, v13, 0, 0);
  }

LABEL_13:
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  *&v13[0] = v6;
  AMCP::ASP::PlugIn::ObjectSetPropertyData(v8, v9, 0, (a1 + 28), 0, 0, 8, v13);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v11)
  {
    v11(0, v10, 0, 0);
  }
}

void sub_1DE58CF18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  AMCP::Thing::~Thing(va);
  __clang_call_terminate(a1);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B078;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597B078;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#2}>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597B078;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEENK3$_0clEvEUlvE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (result == 0x800000000)
  {
    cf = 0;
    result = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, 8, &cf);
    if (!result)
    {
      return applesauce::CF::StringRef::from_get(a2, cf);
    }
  }

  *a2 = 0;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597AF88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AF88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#2}>,applesauce::CF::StringRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AF88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIN14mcp_applesauce2CF15PropertyListRefEEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  AMCP::Thing::convert_to<mcp_applesauce::CF::PropertyListRef>(&cf, a2);
  v3 = AMCP::Implementation::get_type_marker<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>((a1 + 8), v3);
  if (!v4)
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
      v29 = 1024;
      v30 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "Operation does not have requested function", v16);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const mcp_applesauce::CF::PropertyListRef &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "Invalid cast", v15);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const mcp_applesauce::CF::PropertyListRef &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1DE58D888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a11)
  {
    a12 = a11;
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
  mcp_applesauce::CF::PropertyListRef::~PropertyListRef(&a10);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597AF08;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597AF08;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597AF08;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>())
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
      std::__function::__value_func<void ()(mcp_applesauce::CF::PropertyListRef const&)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<void ()(mcp_applesauce::CF::PropertyListRef const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(mcp_applesauce::CF::PropertyListRef const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEENK3$_0clEvEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::operator()(uint64_t a1, CFTypeRef *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef const&>(v10, a2);
  if (!v11)
  {
    goto LABEL_12;
  }

  v3 = AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>();
  v4 = v11;
  *&v13[0] = 0;
  if (v11)
  {
    v11(3, v10, 0, v13);
    v4 = *&v13[0];
  }

  if (v4 == v3)
  {
    *&v13[0] = v3;
    v5 = (v11)(4, v10, 0, v13);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        CFRetain(*v5);
      }

      goto LABEL_13;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v12 = AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>();
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v11(6, v10, v13, &v12);
  if (!v14)
  {
    goto LABEL_12;
  }

  v12 = v3;
  v7 = v14(4, v13, 0, &v12);
  if (v7)
  {
    v6 = *v7;
    if (*v7)
    {
      CFRetain(*v7);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v14)
  {
    v14(0, v13, 0, 0);
  }

LABEL_13:
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  *&v13[0] = v6;
  AMCP::ASP::PlugIn::ObjectSetPropertyData(v8, v9, 0, (a1 + 28), 0, 0, 8, v13);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v11)
  {
    v11(0, v10, 0, 0);
  }
}

void sub_1DE58DE94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  AMCP::Thing::~Thing(va);
  __clang_call_terminate(a1);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597AE78;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597AE78;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(AMCP::Thing const&)#1}>,void ()(mcp_applesauce::CF::PropertyListRef const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597AE78;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP3ASPL25make_custom_property_N_CFERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjNS_18Property_Type_CodeEENK3$_0clEvEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

mcp_applesauce::CF::PropertyListRef *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::operator()@<X0>(uint64_t a1@<X0>, mcp_applesauce::CF::PropertyListRef *a2@<X8>)
{
  result = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (result == 0x800000000)
  {
    cf = 0;
    result = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, 8, &cf);
    if (!result)
    {
      return mcp_applesauce::CF::PropertyListRef::from_get(a2, cf);
    }
  }

  *a2 = 0;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597AD88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AD88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<AMCP::ASP::make_custom_property_N_CF(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int,AMCP::Property_Type_Code)::$_0::operator() const(void)::{lambda(void)#1}>,mcp_applesauce::CF::PropertyListRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AD88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN14mcp_applesauce2CF15PropertyListRefEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>((a1 + 8), v4);
  if (!v5)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "Operation does not have requested function", v17);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = mcp_applesauce::CF::PropertyListRef, Argument_Types = <>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "Invalid cast", v16);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = mcp_applesauce::CF::PropertyListRef, Argument_Types = <>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v7 + 48))(buf);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef&>(a2, buf);
  if (*buf)
  {
    CFRelease(*buf);
  }
}

void sub_1DE58E818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597AD08;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AD08;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<mcp_applesauce::CF::PropertyListRef>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AD08;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>())
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
      std::__function::__value_func<mcp_applesauce::CF::PropertyListRef ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<mcp_applesauce::CF::PropertyListRef ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<mcp_applesauce::CF::PropertyListRef ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL32make_custom_property_getter_dcatERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

mcp_applesauce::CF::PropertyListRef *std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::operator()@<X0>(uint64_t a1@<X0>, mcp_applesauce::CF::PropertyListRef *a3@<X8>)
{
  v5 = 0x676C6F6200000000;
  cf = 0;
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  AMCP::get_property_traits(&v16, *(a1 + 28));
  if (v17 != v18)
  {
    v8 = *(a1 + 32);
    v9 = v17;
    while (v8 != *v9)
    {
      if (++v9 == v18)
      {
        goto LABEL_7;
      }
    }

    v5 = v8 << 32;
  }

LABEL_7:
  v10 = v19;
  v11 = *(a1 + 28);
  v12 = *(a1 + 36);
  if (v17)
  {
    operator delete(v17);
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  v16 = v5 | v13;
  LODWORD(v17) = v12;
  result = AMCP::ASP::PlugIn::ObjectGetPropertyData(v6, v7, 0, &v16, 0, 0, 8, &cf);
  if (!result)
  {
    return mcp_applesauce::CF::PropertyListRef::from_get(a3, cf);
  }

  *a3 = 0;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597AC78;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AC78;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_getter_dcat(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,mcp_applesauce::CF::PropertyListRef ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597AC78;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        Property_Type_Hint = AMCP::Implementation::get_type_marker<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>();
        result = 0;
        *a4 = Property_Type_Hint;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>())
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
      std::__function::__value_func<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_4,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_4>,AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL26make_custom_property_N_RawERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        Has_Property = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>();
        result = 0;
        *a4 = Has_Property;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>())
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
      std::__function::__value_func<BOOL ()(AMCP::Core::Has_Property_Function)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<BOOL ()(AMCP::Core::Has_Property_Function)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3>,BOOL ()(AMCP::Core::Has_Property_Function)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL26make_custom_property_N_RawERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3>,BOOL ()(AMCP::Core::Has_Property_Function)>::operator()(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

uint64_t AMCP::ASP::property_always_exists(AMCP::ASP *this, const AudioObjectPropertyAddress *a2)
{
  v2 = this;
  result = 1;
  if (v2 > 1935892840)
  {
    if (v2 > 1936092478)
    {
      if (v2 <= 1936745314)
      {
        v6 = v2 - 1936092479;
        if (v6 > 0x35 || ((1 << v6) & 0x20400400000001) == 0)
        {
          return 0;
        }

        return result;
      }

      if (v2 == 1936745315 || v2 == 1936745334)
      {
        return result;
      }

      v4 = 1952805485;
    }

    else if (v2 > 1935960433)
    {
      if (v2 > 1935962741)
      {
        if (v2 == 1935962742)
        {
          return result;
        }

        v4 = 1936092451;
      }

      else
      {
        if (v2 == 1935960434)
        {
          return result;
        }

        v4 = 1935962738;
      }
    }

    else
    {
      if (v2 > 1935894637)
      {
        if (v2 == 1935894638)
        {
          return result;
        }

        v5 = 26990;
      }

      else
      {
        if (v2 == 1935892841)
        {
          return result;
        }

        v5 = 25449;
      }

      v4 = v5 | 0x73630000;
    }

LABEL_39:
    if (v2 == v4)
    {
      return result;
    }

    return 0;
  }

  if (v2 > 1818456949)
  {
    if (v2 > 1885762656)
    {
      if (v2 == 1885762657 || v2 == 1885762669)
      {
        return result;
      }

      v4 = 1935762292;
    }

    else
    {
      if ((v2 - 1885762592) <= 0x1F && ((1 << (v2 - 32)) & 0x80000009) != 0 || v2 == 1818456950)
      {
        return result;
      }

      v4 = 1819569763;
    }

    goto LABEL_39;
  }

  if (v2 > 1668506479)
  {
    if ((v2 - 1818453106) <= 4 && ((1 << (v2 - 114)) & 0x13) != 0 || v2 == 1668506480)
    {
      return result;
    }

    v4 = 1818456932;
    goto LABEL_39;
  }

  if (v2 != 1650685548 && v2 != 1667591277)
  {
    v4 = 1668049771;
    goto LABEL_39;
  }

  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3>,BOOL ()(AMCP::Core::Has_Property_Function)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3>,BOOL ()(AMCP::Core::Has_Property_Function)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3>,BOOL ()(AMCP::Core::Has_Property_Function)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597AA90;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3>,BOOL ()(AMCP::Core::Has_Property_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597AA90;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_3>,BOOL ()(AMCP::Core::Has_Property_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597AA90;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        Is_Property_Settable = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>>();
        result = 0;
        *a4 = Is_Property_Settable;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>>())
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
      std::__function::__value_func<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL26make_custom_property_N_RawERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::operator()(uint64_t a1)
{
  IsPropertySettable = AMCP::ASP::PlugIn::ObjectIsPropertySettable(*(a1 + 8), *(a1 + 24), 0, (a1 + 28));
  LODWORD(result) = AMCP::ASP::property_always_is_settable(*(a1 + 28), v3);
  if (IsPropertySettable == 0x100000000)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t AMCP::ASP::property_always_is_settable(AMCP::ASP *this, const AudioObjectPropertyAddress *a2)
{
  v2 = this;
  result = 1;
  if (v2 > 1935893352)
  {
    if (v2 > 1936092531)
    {
      if (v2 == 1936092532)
      {
        return result;
      }

      v4 = 1936745334;
    }

    else
    {
      if (v2 == 1935893353)
      {
        return result;
      }

      v4 = 1935962742;
    }
  }

  else if (v2 > 1818456949)
  {
    if (v2 == 1818456950)
    {
      return result;
    }

    v4 = 1885762592;
  }

  else
  {
    if (v2 == 1650685548)
    {
      return result;
    }

    v4 = 1818453110;
  }

  if (v2 != v4)
  {
    return 0;
  }

  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597AA00;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597AA00;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_2>,BOOL ()(AMCP::Core::Is_Property_Settable_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597AA00;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterINS_11Bag_O_BytesEEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  AMCP::Thing::convert_to<AMCP::Bag_O_Bytes>(__p, a2);
  v3 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Bag_O_Bytes const&)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>((a1 + 8), v3);
  if (!v4)
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
      v29 = 1024;
      v30 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "Operation does not have requested function", v16);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Bag_O_Bytes &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Bag_O_Bytes const&)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "Invalid cast", v15);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Bag_O_Bytes &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v6, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DE5901B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597A980;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597A980;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597A980;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Bag_O_Bytes const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Bag_O_Bytes const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Bag_O_Bytes const&)>>())
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
      std::__function::__value_func<void ()(AMCP::Bag_O_Bytes const&)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<void ()(AMCP::Bag_O_Bytes const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Bag_O_Bytes const&)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Bag_O_Bytes const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1>,void ()(AMCP::Bag_O_Bytes const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL26make_custom_property_N_RawERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1>,void ()(AMCP::Bag_O_Bytes const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1>,void ()(AMCP::Bag_O_Bytes const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1>,void ()(AMCP::Bag_O_Bytes const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597A8F0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1>,void ()(AMCP::Bag_O_Bytes const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597A8F0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_1>,void ()(AMCP::Bag_O_Bytes const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597A8F0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINS_11Bag_O_BytesEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<AMCP::Bag_O_Bytes ()(void)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>((a1 + 8), v4);
  if (!v5)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *&buf[4] = "Operation.h";
      v31 = 1024;
      v32 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v21, "Operation does not have requested function", v17);
    std::runtime_error::runtime_error(&v22, &v21);
    std::runtime_error::runtime_error(&v23, &v22);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v23.__vftable = &unk_1F5992170;
    v24 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v23);
    v33 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Bag_O_Bytes, Argument_Types = <>]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v35 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<AMCP::Bag_O_Bytes ()(void)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v31 = 1024;
      v32 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v21, "Invalid cast", v16);
    std::runtime_error::runtime_error(&v22, &v21);
    std::runtime_error::runtime_error(&v23, &v22);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v23.__vftable = &unk_1F5992170;
    v24 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v23);
    v33 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Bag_O_Bytes, Argument_Types = <>]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v35 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v7 + 48))(&__p);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(a2, __p, v19, v19 - __p);
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Bag_O_Bytes>::dispatch;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_1DE590D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597A800;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A800;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Bag_O_Bytes>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A800;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Bag_O_Bytes ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Bag_O_Bytes ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Bag_O_Bytes ()(void)>>())
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
      std::__function::__value_func<AMCP::Bag_O_Bytes ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<AMCP::Bag_O_Bytes ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Bag_O_Bytes ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Bag_O_Bytes ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,AMCP::Bag_O_Bytes ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASPL26make_custom_property_N_RawERKNS_7AddressERKNSt3__110shared_ptrINS0_6PlugInEEEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,AMCP::Bag_O_Bytes ()(void)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v7 = 0;
  std::vector<std::byte>::vector[abi:ne200100](a2, HIDWORD(PropertyDataSize), &v7);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, *a2))
  {
    v6 = *a2;
    if (*a2)
    {
      a2[1] = v6;
      operator delete(v6);
    }

LABEL_2:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,AMCP::Bag_O_Bytes ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,AMCP::Bag_O_Bytes ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,AMCP::Bag_O_Bytes ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597A770;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,AMCP::Bag_O_Bytes ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A770;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0,std::allocator<AMCP::ASP::make_custom_property_N_Raw(AMCP::Address const&,std::shared_ptr<AMCP::ASP::PlugIn> const&,unsigned int)::$_0>,AMCP::Bag_O_Bytes ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597A770;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t *std::vector<AudioServerPlugInCustomPropertyInfo>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<AudioObjectPropertyAddress>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1DE59149C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818455662EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C008;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C008;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C008;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818455662EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v12 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v12);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    return;
  }

  v6 = __p;
  if ((v11 - __p) < 8)
  {
    *a2 = 0;
  }

  else
  {
    v7 = *__p;
    *a2 = *__p;
    if (!v7)
    {
LABEL_13:
      v11 = v6;
      operator delete(v6);
      return;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __p;
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1DE59189C(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597BF88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597BF88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818455662EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597BF88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818452846EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597BF08;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597BF08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597BF08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818452846EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v12 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v12);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    return;
  }

  v6 = __p;
  if ((v11 - __p) < 8)
  {
    *a2 = 0;
  }

  else
  {
    v7 = *__p;
    *a2 = *__p;
    if (!v7)
    {
LABEL_13:
      v11 = v6;
      operator delete(v6);
      return;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __p;
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1DE591E64(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597BE88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597BE88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818452846EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597BE88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818454126EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597BE08;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597BE08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597BE08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818454126EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v12 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v12);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    return;
  }

  v6 = __p;
  if ((v11 - __p) < 8)
  {
    *a2 = 0;
  }

  else
  {
    v7 = *__p;
    *a2 = *__p;
    if (!v7)
    {
LABEL_13:
      v11 = v6;
      operator delete(v6);
      return;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __p;
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1DE59242C(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597BD88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597BD88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818454126EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597BD88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *mcp_applesauce::CF::BundleRef_proxy::get_bundle_url(void *this, __CFBundle *a2)
{
  v2 = this;
  if (a2)
  {
    this = CFBundleCopyBundleURL(a2);
    *v2 = this;
    if (this)
    {
      v3 = CFGetTypeID(this);
      this = CFURLGetTypeID();
      if (v3 != this)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DE5926A0(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1719105134EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597BD08;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597BD08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597BD08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1719105134EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v12 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v12);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    return;
  }

  v6 = __p;
  if ((v11 - __p) < 8)
  {
    *a2 = 0;
  }

  else
  {
    v7 = *__p;
    *a2 = *__p;
    if (!v7)
    {
LABEL_13:
      v11 = v6;
      operator delete(v6);
      return;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __p;
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1DE592AB4(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597BC88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597BC88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1719105134EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597BC88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936618861EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597BC08;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597BC08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597BC08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936618861EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v12 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v12);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    return;
  }

  v6 = __p;
  if ((v11 - __p) < 8)
  {
    *a2 = 0;
  }

  else
  {
    v7 = *__p;
    *a2 = *__p;
    if (!v7)
    {
LABEL_13:
      v11 = v6;
      operator delete(v6);
      return;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __p;
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1DE59307C(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597BB88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597BB88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936618861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597BB88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667330160EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1667330160EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjRKNS_15Property_TraitsIXT_EE10Value_TypeEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667330160EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (AMCP::ASP::PlugIn::ObjectHasProperty(*(a1 + 8), *(a1 + 24), 0, (a1 + 28)))
  {
    PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
    if (!PropertyDataSize)
    {
      v6 = HIDWORD(PropertyDataSize);
      v13 = 0;
      std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v13);
      if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v6, __p))
      {
        if (__p)
        {
          v12 = __p;
          operator delete(__p);
        }

        goto LABEL_3;
      }

      v7 = __p;
      if ((v12 - __p) < 8)
      {
        *a2 = 0;
      }

      else
      {
        v8 = *__p;
        *a2 = *__p;
        if (!v8)
        {
          goto LABEL_16;
        }

        v9 = CFGetTypeID(v8);
        if (v9 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v7 = __p;
      }

      if (!v7)
      {
        return;
      }

LABEL_16:
      v12 = v7;
      operator delete(v7);
      return;
    }
  }

LABEL_3:
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRetain(v5);
  }

  *a2 = v5;
}

void sub_1DE593408(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667330160EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN4AMCP3ASP13make_propertyILj1667330160EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFN10applesauce2CF9StringRefEvEE7destroyB8ne200100Ev((a1 + 8));

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN4AMCP3ASP13make_propertyILj1667330160EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFN10applesauce2CF9StringRefEvEE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

char *_ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667330160EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISU_EE(char *result, uint64_t a2)
{
  v4 = *(result + 1);
  v3 = *(result + 2);
  *a2 = &unk_1F597BB08;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 24);
  v5 = *(result + 5);
  if (v5)
  {
    result = CFRetain(*(result + 5));
  }

  *(a2 + 40) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667330160EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597BB08;
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667330160EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597BB08;
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1768124270EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597BA88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597BA88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597BA88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF6URLRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1768124270EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF6URLRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v12 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v12);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    return;
  }

  v6 = __p;
  if ((v11 - __p) < 8)
  {
    *a2 = 0;
  }

  else
  {
    v7 = *__p;
    *a2 = *__p;
    if (!v7)
    {
LABEL_13:
      v11 = v6;
      operator delete(v6);
      return;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFURLGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __p;
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1DE593A90(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF6URLRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF6URLRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF6URLRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597BA08;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF6URLRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597BA08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1768124270EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF6URLRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597BA08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1819107691EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B988;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597B988;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597B988;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1819107691EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v12 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v12);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    return;
  }

  v6 = __p;
  if ((v11 - __p) < 8)
  {
    *a2 = 0;
  }

  else
  {
    v7 = *__p;
    *a2 = *__p;
    if (!v7)
    {
LABEL_13:
      v11 = v6;
      operator delete(v6);
      return;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __p;
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1DE594058(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B908;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597B908;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819107691EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597B908;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1819111268EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B888;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597B888;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597B888;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1819111268EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v12 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v12);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    return;
  }

  v6 = __p;
  if ((v11 - __p) < 8)
  {
    *a2 = 0;
  }

  else
  {
    v7 = *__p;
    *a2 = *__p;
    if (!v7)
    {
LABEL_13:
      v11 = v6;
      operator delete(v6);
      return;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = __p;
  }

  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1DE594620(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B808;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597B808;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819111268EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597B808;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1819173229EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v3 = (a1 + 28);
  if (AMCP::ASP::property_always_exists(*(a1 + 28), a2))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);

  return AMCP::ASP::PlugIn::ObjectHasProperty(v5, v6, 0, v3);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B788;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597B788;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}