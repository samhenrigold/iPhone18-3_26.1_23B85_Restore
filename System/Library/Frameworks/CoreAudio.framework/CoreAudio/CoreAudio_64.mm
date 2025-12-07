void sub_1DE6E7404(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v4, a2);
  HALS_ObjectMap::ReleaseObject(v3, v6);
  HALS_ObjectMap::ReleaseObject(v2, v7);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<HALS_IOContext_Manager_Impl::create_context_core_for_hal_object_id(unsigned int,unsigned int,applesauce::CF::DictionaryRef,AMCP::Node_Description &,std::array<unsigned int,2ul> const&,std::vector<BOOL> const&,std::vector<BOOL> const&)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_context_core_for_hal_object_id(unsigned int,unsigned int,applesauce::CF::DictionaryRef,AMCP::Node_Description &,std::array<unsigned int,2ul> const&,std::vector<BOOL> const&,std::vector<BOOL> const&)::$_0>,BOOL ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598C830;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ___ZN27HALS_IOContext_Manager_Impl38destroy_context_core_for_hal_object_idEj_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    __p[0] = 0x676C6F6270617573;
    LODWORD(__p[1]) = 0;
    AMCP::Core::Core::call_operation_function<void,AMCP::Pause_Behavior>(v2, __p, 1);
  }

  v4 = a1[7];
  if (v4)
  {
    applesauce::CF::convert_to<std::string,0>(__p, v4);
    HALS_IOContext_Manager_Impl::find_wires_for_context(&v7, v3, __p);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  applesauce::CF::construct_error(exception);
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE6E7714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v20);
  AMCP::Graph_Description::~Graph_Description(&__p);
  __p = (v21 - 96);
  std::vector<AMCP::Wire_Identifier>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIN4AMCP4Core4CoreEEE56c31_ZTSN10applesauce2CF9StringRefE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIN4AMCP4Core4CoreEEE56c31_ZTSN10applesauce2CF9StringRefE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 48);
  result[5] = *(a2 + 40);
  result[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 56);
  if (v4)
  {
    result = CFRetain(*(a2 + 56));
  }

  v2[7] = v4;
  return result;
}

uint64_t *HALS_IOContext_Manager_Impl::demand_driver_object_for_id(AMCP::Core::Broker **this, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  result = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((this + 2), a2);
  if (!(result >> 32))
  {
    v4 = AMCP::Core::Broker::reserve_id(this[12]);
    *__p = 0u;
    *v8 = 0u;
    v9 = 1065353216;
    v5 = 0x676C6F6269646E74;
    LODWORD(v6) = 0;
    v10 = v4;
    AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>(buf, &v5, &v10);
  }

  return result;
}

void sub_1DE6E7B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN27HALS_IOContext_Manager_Impl20create_device_objectEjjN10applesauce2CF9StringRefERKNSt3__16vectorINS_11Stream_InfoENS3_9allocatorIS5_EEEEbE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

void std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F598CA98;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CA98;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::create_device_object(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CA98;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void HALS_IOContext_Manager_Impl::create_stream_info_for_device(HALS_IOContext_Manager_Impl *this, const HALS_IODevice *a2)
{
  v2 = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = 1;
  do
  {
    v9 = v2;
    NumberStreams = HALS_IODevice::GetNumberStreams(a2, v3 & 1);
    if (NumberStreams)
    {
      for (i = 0; i != NumberStreams; ++i)
      {
        v6 = HALS_IODevice::CopyStreamByIndex(a2, v3 & 1, i);
        v8 = v6;
        if (v6)
        {
          (*(*v6 + 208))(v6);
          if (*(v8 + 14) != 1)
          {
            HALS_Stream::IsHardwareReferenceStream(v8);
          }

          std::allocator<HALS_IOContext_Manager_Impl::Stream_Info>::allocate_at_least[abi:ne200100](1uLL);
        }

        HALS_ObjectMap::ReleaseObject(v6, v7);
      }
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v9 & 1) == 0);
}

void sub_1DE6E7F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    *(a12 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<HALS_IOContext_Manager_Impl::Stream_Info>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HALS_IOContext_Manager_Impl::device_arrived(uint64_t a1, unsigned int a2, uint64_t a3, const __CFString **a4, void *a5, char a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v23 = a2;
  std::mutex::lock((a1 + 168));
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
    if (!*a4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, *a4);
    if (v21 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 136315650;
    v25 = "HALS_IOContext_Manager_Impl.cpp";
    v26 = 1024;
    v27 = 465;
    v28 = 2080;
    v29 = v18;
    _os_log_debug_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEBUG, "%32s:%-5d device_arrived: %s", buf, 0x1Cu);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  v16 = a5[1] - *a5;
  if (v16)
  {
    if (!((v16 >> 4) >> 60))
    {
      std::allocator<HALS_IOContext_Manager_Impl::Stream_Info>::allocate_at_least[abi:ne200100](v16 >> 4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  HALS_IOContext_Manager_Impl::demand_driver_object_for_id(a1, a3);
  HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((a1 + 16), a2);
  v17 = *a4;
  if (v17)
  {
    CFRetain(v17);
  }

  operator new();
}

void sub_1DE6E82F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  __cxa_free_exception(v17);
  std::mutex::unlock((v16 + 168));
  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager_Impl::garbage_collect(HALS_IOContext_Manager_Impl *this)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 12);
  v9[0] = &unk_1F598CD28;
  v9[3] = v9;
  AMCP::Core::Broker::fetch_object_ids_if (&v8, v2, v9);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](v9);
  begin = v8.__begin_;
  end = v8.__end_;
  if (v8.__begin_ != v8.__end_)
  {
    v5 = v8.__begin_;
    do
    {
      v6 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this + 2, *v5);
      if (v6)
      {
        v7 = *(v6 + 5);
        if (!HALS_ObjectMap::IsObjectMapped(v7))
        {
          HALS_IOContext_Manager_Impl::Object_Map::remove_object((this + 16), *v5, v7);
          AMCP::Core::Broker::destroy_core(*(this + 12), *v5);
          if (std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this + 16, v7))
          {
            HALS_IOContext_Manager_Impl::destroy_engine_for_device(this, v7);
          }
        }
      }

      ++v5;
    }

    while (v5 != end);
  }

  if (begin)
  {
    operator delete(begin);
  }
}

void sub_1DE6E8478(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void HALS_IOContext_Manager_Impl::destroy_engine_for_device(HALS_IOContext_Manager_Impl *this, unsigned int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this + 16, a2);
  if (v3)
  {

    std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<AMCP::Core::Engine>>>>::erase(this + 16, v3);
  }
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::garbage_collect(void)::$_0,std::allocator<HALS_IOContext_Manager_Impl::garbage_collect(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN27HALS_IOContext_Manager_Impl15garbage_collectEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::garbage_collect(void)::$_0,std::allocator<HALS_IOContext_Manager_Impl::garbage_collect(void)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  v2 = *a2;
  v5 = 0x676C6F6262636C73;
  v6 = 0;
  v3 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v2, &v5, &AMCP::k_class_id_unknown);
  return AMCP::is_base_of(0x696F636E, v3) ^ 1;
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN27HALS_IOContext_Manager_Impl14device_arrivedEjjN10applesauce2CF9StringRefERKNSt3__16vectorINS_11Stream_InfoENS3_9allocatorIS5_EEEEbE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = **(a1 + 16);
  v4 = **(a1 + 24);
  if (*(a1 + 32))
  {
    CFRetain(*(a1 + 32));
  }

  v5 = *(a1 + 40);
  mcp_object = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((v2 + 16), v3);
  v7 = mcp_object;
  if (mcp_object >> 32)
  {
    v8 = *(v2 + 96);
    v39 = 0;
    v40 = 0;
    v38 = 0;
    LODWORD(v26.__r_.__value_.__l.__data_) = mcp_object;
    __p[1] = 0;
    v30[0] = 0;
    __p[0] = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(__p, &v26, v26.__r_.__value_.__r.__words + 1, 1uLL);
    AMCP::Core::Broker::gather_directly_owned_objects(buf, v8, __p);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    v9 = *buf;
    v10 = *&buf[8];
    if (*buf != *&buf[8])
    {
      v11 = *buf;
      do
      {
        AMCP::Core::Broker::fetch_core(__p, v8, *v11);
        if (__p[0])
        {
          std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v38, __p);
        }

        if (__p[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
        }

        ++v11;
      }

      while (v11 != v10);
    }

    if (v9)
    {
      operator delete(v9);
    }

    v12 = v38;
    v13 = v39;
    while (v12 != v13)
    {
      v14 = **v12;
      v15 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v2 + 16), v14);
      if (v15)
      {
        v16 = *(v15 + 5);
      }

      else
      {
        v16 = 0;
      }

      HALS_IOContext_Manager_Impl::Object_Map::remove_object((v2 + 16), v14, v16);
      AMCP::Core::Broker::destroy_core(*(v2 + 96), v14);
      v12 += 2;
    }

    *buf = &v38;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
    AMCP::Core::Broker::destroy_core(*(v2 + 96), v7);
    HALS_IOContext_Manager_Impl::Object_Map::remove_object((v2 + 16), v7, v3);
  }

  v17 = AMCP::Core::Broker::reserve_id(*(v2 + 96));
  v18 = HALS_IOContext_Manager_Impl::Object_Map::find_mcp_object((v2 + 16), v4);
  if (v18 >> 32)
  {
    if (*v5 != v5[1])
    {
      v19 = AMCP::Core::Broker::reserve_id(*(v2 + 96));
      memset(buf, 0, sizeof(buf));
      LODWORD(v35) = 1065353216;
      v38 = 0x676C6F6269646E74;
      LODWORD(v39) = 0;
      LODWORD(v26.__r_.__value_.__l.__data_) = v19;
      AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>(__p, &v38, &v26);
    }

    *__p = 0u;
    *v30 = 0u;
    LODWORD(v31) = 1065353216;
    if (std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v2 + 128), v3))
    {
      strcpy(buf, "ngnebolg");
      buf[9] = 0;
      *&buf[10] = 0;
      std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address,0>(&v26, buf);
    }

    v38 = 0x676C6F6269646E74;
    LODWORD(v39) = 0;
    LODWORD(v26.__r_.__value_.__l.__data_) = v17;
    AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>(buf, &v38, &v26);
  }

  v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v20 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v18);
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
    *&buf[4] = "HALS_IOContext_Manager_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 373;
    *&buf[18] = 2080;
    *&buf[20] = "not (owner_id)";
    _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string(&v26, "", v24);
  std::logic_error::logic_error(&v27, &v26);
  v27.__vftable = (MEMORY[0x1E69E55A8] + 16);
  std::logic_error::logic_error(__p, &v27);
  v30[1] = 0;
  v31 = 0;
  v32 = 0;
  v33 = -1;
  __p[0] = &unk_1F5991430;
  v30[0] = &unk_1F5991458;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, __p);
  v35 = "void HALS_IOContext_Manager_Impl::create_device_object(AudioObjectID, AudioObjectID, CF::String, const std::vector<Stream_Info> &, BOOL)";
  v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Manager_Impl.cpp";
  v37 = 373;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
}

void sub_1DE6E9420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::destroy[abi:ne200100](a1[4]);

  operator delete(a1);
}

void std::__function::__alloc_func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

char *std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::__clone(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = &unk_1F598CC28;
  v4 = *(result + 8);
  *(a2 + 24) = *(result + 3);
  *(a2 + 8) = v4;
  v5 = *(result + 4);
  if (v5)
  {
    result = CFRetain(*(result + 4));
  }

  *(a2 + 32) = v5;
  v6 = *(v3 + 5);
  *(a2 + 48) = v3[48];
  *(a2 + 40) = v6;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

void std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CC28;
  v1 = a1[4];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_arrived(unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<HALS_IOContext_Manager_Impl::Stream_Info> const&,BOOL)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598CC28;
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN27HALS_IOContext_Manager_Impl11device_diedEjjN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  HALS_IOContext_Manager_Impl::Object_Map::remove_object((v2 + 16), *(a1 + 16), *(a1 + 20));
  v3 = *(v2 + 96);
  v4 = *(a1 + 16);

  AMCP::Core::Broker::destroy_core(v3, v4);
}

__n128 std::__function::__func<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0,std::allocator<HALS_IOContext_Manager_Impl::device_died(unsigned int,unsigned int,applesauce::CF::StringRef)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598CCA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void HALS_IOContext_Manager_Impl::create_engine_for_device(int8x8_t *this, const HALS_IODevice *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3802000000;
  v26 = __Block_byref_object_copy__19089;
  v28 = 0;
  v29 = 0;
  v27 = __Block_byref_object_dispose__19090;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = ___ZN27HALS_IOContext_Manager_Impl24create_engine_for_deviceEPK13HALS_IODevice_block_invoke;
  v22[3] = &unk_1E86787D0;
  v22[4] = &v23;
  v22[5] = a2;
  v4 = (*(*a2 + 64))(a2);
  HALB_CommandGate::ExecuteCommand(v4, v22);
  v5 = v24[5];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = *(a2 + 4);
  v7 = this[17];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = *(a2 + 4);
    if (*&v7 <= v6)
    {
      v9 = v6 % v7.i32[0];
    }
  }

  else
  {
    v9 = (v7.i32[0] - 1) & v6;
  }

  v10 = *(*&this[16] + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (*(v11 + 4) != v6)
  {
    goto LABEL_18;
  }

  v13 = v24[6];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v11[4];
  v11[3] = v5;
  v11[4] = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v15 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v14);
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
    v19 = (*(*a2 + 224))(a2);
    v20 = *(a2 + 4);
    v21 = v24[5];
    *buf = 136316162;
    v31 = "HALS_IOContext_Manager_Impl.cpp";
    v32 = 1024;
    v33 = 559;
    v34 = 2080;
    v35 = v19;
    v36 = 1024;
    v37 = v20;
    v38 = 2048;
    v39 = v21;
    _os_log_debug_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_DEBUG, "%32s:%-5d create_engine_for_device: %s (%u)  %p", buf, 0x2Cu);
  }

LABEL_31:
  _Block_object_dispose(&v23, 8);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }
}

void sub_1DE6E9DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, v22);
  _Block_object_dispose(&a16, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__19089(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__19090(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN27HALS_IOContext_Manager_Impl24create_engine_for_deviceEPK13HALS_IODevice_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 264))(&v5);
  v2 = *(*(a1 + 32) + 8);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 48);
  *(v2 + 40) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
    }
  }
}

uint64_t **HALS_IOContext_Manager_Impl::get_hal_object_id_for_device_uid(uint64_t **result, const void **a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      v4 = v3[3];
      v5 = v3[4];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v4 + 16))(&cf);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(__p, cf);
      v6 = v16;
      if ((v16 & 0x80u) == 0)
      {
        v7 = v16;
      }

      else
      {
        v7 = __p[1];
      }

      v8 = *(a2 + 23);
      v9 = v8;
      if (v8 < 0)
      {
        v8 = a2[1];
      }

      if (v7 != v8)
      {
        break;
      }

      if ((v16 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      if (v9 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      v12 = memcmp(v10, v11, v7) == 0;
      if (v6 < 0)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      if (v12)
      {
        return *(v3 + 4);
      }

      v3 = *v3;
      if (!v3)
      {
        return 0;
      }
    }

    v12 = 0;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    operator delete(__p[0]);
    goto LABEL_22;
  }

  return result;
}

void sub_1DE6EA020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::StringRef::~StringRef(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(HALS_IOContext_Manager_Impl *this, const AMCP::Graph::Timebase_Set *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  __p = 0;
  v7 = 0;
  v8 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v9 = 0;
  operator new();
}

void sub_1DE6EA374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a11;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a14)
  {
    a15 = a14;
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0,std::allocator<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN27HALS_IOContext_Manager_Impl40find_contexts_and_devices_with_timebasesERKN4AMCP5Graph12Timebase_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0,std::allocator<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::operator()(uint64_t a1, void *a2)
{
  v4 = a2[1];
  *&v8 = *a2;
  v3 = v8;
  *(&v8 + 1) = v4;
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  (*(*v3 + 24))(__p);
  v6 = v11;
  v7 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (v6)
  {
    hal_object_id_for_device_uid = HALS_IOContext_Manager_Impl::get_hal_object_id_for_device_uid(*(v5 + 144), __p);
    std::vector<unsigned int>::push_back[abi:ne200100](*(a1 + 16), &hal_object_id_for_device_uid);
    std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](*(a1 + 24), &v8);
    v7 = v11;
  }

  if ((v7 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE6EA514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0,std::allocator<HALS_IOContext_Manager_Impl::find_contexts_and_devices_with_timebases(AMCP::Graph::Timebase_Set const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598CEF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ___ZN27HALS_IOContext_Manager_Impl22hog_mode_owner_changedEP13HALS_IODevicei_block_invoke(uint64_t result, unsigned int a2)
{
  v2 = *(result + 32);
  v3 = *(result + 40);
  while (v2 != v3)
  {
    v4 = HALS_ObjectMap::CopyObjectByObjectID(*v2);
    v6 = v4;
    if (v4)
    {
      v7 = HALS_ObjectMap::CopyObjectByObjectID(**(v4 + 72));
      v9 = v7;
      if (v7)
      {
        if (*(v7 + 240))
        {
          (*(**(v6 + 104) + 536))(*(v6 + 104), *(v6 + 144));
        }
      }

      HALS_ObjectMap::ReleaseObject(v9, v8);
    }

    HALS_ObjectMap::ReleaseObject(v6, v5);
    ++v2;
  }
}

void sub_1DE6EA6A0(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  HALS_ObjectMap::ReleaseObject(v2, v5);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

uint64_t *__copy_helper_block_e8_32c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = (a1 + 32);
  v2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
}

void AMCP::Node::~Node(AMCP::Node *this)
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

AMCP::Node *AMCP::Node::Node(AMCP::Node *this, AMCP::System_Context *a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Object::Object(this, a2, a3);
  *v4 = &unk_1F598CF88;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x616E6F64);
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
      v12 = "Node.cpp";
      v13 = 1024;
      v14 = 29;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_node)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  return this;
}

void sub_1DE6EA900(_Unwind_Exception *a1)
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

uint64_t AMCP::Node::Node(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(**a2 + 16);
  *buf = &unk_1F598D408;
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
  *a1 = &unk_1F598CF88;
  v9 = AMCP::Object::constructed_correct_class(a1, 0x616E6F64);
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
      *&buf[4] = "Node.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 45;
      v17 = 2080;
      *v18 = "constructed_correct_class(k_class_id_node)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE6EAB2C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4NodeC1ERNS_14System_ContextEN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x616E6F64, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1853188452u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t std::__function::__func<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Node::Node(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F598D408;
  a2[1] = v2;
  return result;
}

void AMCP::Node::get_client_io_handler(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v29 = 0x676C6F626E64696FLL;
      v30 = 0;
      operation = AMCP::Core::Core::find_operation(&v31, v7, &v29);
      v9 = v31;
      if (!v31)
      {
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
          *&buf[4] = "Core.h";
          v44 = 1024;
          v45 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v27);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v48 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v22 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v28);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Invalid cast", v26);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &, unsigned long, AMCP::Proc_Stream *, unsigned long, AMCP::Proc_Stream *)>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    else
    {
      *(a2 + 24) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 24) = 0;
  }
}

void sub_1DE6EB3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_client_io_handler(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = 0x676C6F626E64696FLL;
    v11 = 0;
    std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v12, a2);
    AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(v7, &v10, v12);
    std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v12);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void sub_1DE6EB5A8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EB5B0);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_io_overload_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626F766572;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

void AMCP::Core::Core::call_operation_function<std::function<void ()(unsigned int)>>(AMCP::Log::AMCP_Scope_Registry *a1, int8x8_t *a2, unsigned int *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a3 == 707406378 || a3[1] == 707406378 || a3[2] == -1)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *&buf[4] = "Core.h";
      v43 = 1024;
      v44 = 198;
      v45 = 2080;
      v46 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v30, a2, a3);
  v6 = v30;
  if (!v30)
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
      v43 = 1024;
      v44 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v33, "Operation does not have requested function", v28);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v47 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<void >, Argument_Types = <>]";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v49 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v7 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()> ()(void)>>();
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
      v43 = 1024;
      v44 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v33, "Operation does not have requested function", v29);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v47 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void >, Argument_Types = <>]";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v49 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v9 = v8;
  if (!*(v8 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<void ()> ()(void)>>(), (v8 = (*(v9 + 7))(4, v9 + 24, 0, buf)) == 0))
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
      *&buf[4] = "Operation.h";
      v43 = 1024;
      v44 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v33, "Invalid cast", v27);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v47 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void >, Argument_Types = <>]";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v49 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v10 = *(v8 + 3);
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v10);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }
}

void sub_1DE6EBDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
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

uint64_t AMCP::Node::set_io_overload_handler(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = 0x676C6F626F766572;
    v11 = 0;
    std::__function::__value_func<void ()>::__value_func[abi:ne200100](v12, a2);
    AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v7, &v10, v12);
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v12);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void sub_1DE6EBF9C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EBFA4);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_required_input_samples_for_output_samples_handler(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v29 = 0x676C6F626973666FLL;
      v30 = 0;
      operation = AMCP::Core::Core::find_operation(&v31, v7, &v29);
      v9 = v31;
      if (!v31)
      {
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
          *&buf[4] = "Core.h";
          v44 = 1024;
          v45 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v27);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long)>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v48 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v22 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v28);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long)>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long)> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Invalid cast", v26);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long)>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    else
    {
      *(a2 + 24) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 24) = 0;
  }
}

void sub_1DE6EC688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_required_input_samples_for_output_samples_handler(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v32 = 0x676C6F626973666FLL;
    LODWORD(v33) = 0;
    std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](v46, a2);
    operation = AMCP::Core::Core::find_operation(&v34, v7, &v32);
    v9 = v34;
    if (!v34)
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
        v49 = 1024;
        v50 = 202;
        _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v47, "Operation does not have requested function", v29, v32, v33);
      std::runtime_error::runtime_error(&v36, &v47);
      std::runtime_error::runtime_error(&v39, &v36);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long)>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
      v53 = 202;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
    }

    std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](&v47, v46);
    v10 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>();
    v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
    if (!v11)
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
        v49 = 1024;
        v50 = 154;
        _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v37, "Operation does not have requested function", v30, v32, v33);
      std::runtime_error::runtime_error(&v38, &v37);
      std::runtime_error::runtime_error(&v39, &v38);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long)>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
      v53 = 154;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
    }

    v12 = v11;
    if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long)>)>>(), v11 = (*(v12 + 7))(4, v12 + 24, 0, buf), (v13 = v11) == 0))
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
        v49 = 1024;
        v50 = 161;
        _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v37, "Invalid cast", v28, v32, v33);
      std::runtime_error::runtime_error(&v38, &v37);
      std::runtime_error::runtime_error(&v39, &v38);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long)>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
      v53 = 161;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
    }

    std::__function::__value_func<unsigned long long ()(unsigned long long)>::__value_func[abi:ne200100](buf, &v47);
    v14 = *(v13 + 3);
    if (!v14)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v14 + 48))(v14, buf);
    std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](buf);
    std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](&v47);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](v46);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v15;
}

void AMCP::Node::get_expected_output_samples_for_input_samples_handler(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v29 = 0x676C6F626F736669;
      v30 = 0;
      operation = AMCP::Core::Core::find_operation(&v31, v7, &v29);
      v9 = v31;
      if (!v31)
      {
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
          *&buf[4] = "Core.h";
          v44 = 1024;
          v45 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v27);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long, unsigned long long &)>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v48 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v22 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v28);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long, unsigned long long &)>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<unsigned long long ()(unsigned long long,unsigned long long &)> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Invalid cast", v26);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<unsigned long long (unsigned long long, unsigned long long &)>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    else
    {
      *(a2 + 24) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 24) = 0;
  }
}

void sub_1DE6ED788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_expected_output_samples_for_input_samples_handler(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v32 = 0x676C6F626F736669;
    LODWORD(v33) = 0;
    std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](v46, a2);
    operation = AMCP::Core::Core::find_operation(&v34, v7, &v32);
    v9 = v34;
    if (!v34)
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
        v49 = 1024;
        v50 = 202;
        _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v47, "Operation does not have requested function", v29, v32, v33);
      std::runtime_error::runtime_error(&v36, &v47);
      std::runtime_error::runtime_error(&v39, &v36);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long, unsigned long long &)>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
      v53 = 202;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
    }

    std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](&v47, v46);
    v10 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>();
    v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
    if (!v11)
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
        v49 = 1024;
        v50 = 154;
        _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v37, "Operation does not have requested function", v30, v32, v33);
      std::runtime_error::runtime_error(&v38, &v37);
      std::runtime_error::runtime_error(&v39, &v38);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long, unsigned long long &)>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
      v53 = 154;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
    }

    v12 = v11;
    if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<unsigned long long ()(unsigned long long,unsigned long long &)>)>>(), v11 = (*(v12 + 7))(4, v12 + 24, 0, buf), (v13 = v11) == 0))
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
        v49 = 1024;
        v50 = 161;
        _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v37, "Invalid cast", v28, v32, v33);
      std::runtime_error::runtime_error(&v38, &v37);
      std::runtime_error::runtime_error(&v39, &v38);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<unsigned long long (unsigned long long, unsigned long long &)>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
      v53 = 161;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
    }

    std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::__value_func[abi:ne200100](buf, &v47);
    v14 = *(v13 + 3);
    if (!v14)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v14 + 48))(v14, buf);
    std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](buf);
    std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](&v47);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](v46);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v15;
}

void AMCP::Node::get_register_client_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F627265636CLL;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

uint64_t AMCP::Node::set_register_client_handler(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = 0x676C6F627265636CLL;
    v11 = 0;
    std::__function::__value_func<void ()>::__value_func[abi:ne200100](v12, a2);
    AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v7, &v10, v12);
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v12);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void sub_1DE6EE370(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EE378);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_begin_processing_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626E646270;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

uint64_t AMCP::Node::set_begin_processing_handler(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = 0x676C6F626E646270;
    v11 = 0;
    std::__function::__value_func<void ()>::__value_func[abi:ne200100](v12, a2);
    AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v7, &v10, v12);
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v12);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void sub_1DE6EE534(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EE53CLL);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_begin_cycle_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626E646263;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

void AMCP::Core::Core::call_operation_function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Log::AMCP_Scope_Registry *a1, int8x8_t *a2, unsigned int *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a3 == 707406378 || a3[1] == 707406378 || a3[2] == -1)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *&buf[4] = "Core.h";
      v43 = 1024;
      v44 = 198;
      v45 = 2080;
      v46 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v30, a2, a3);
  v6 = v30;
  if (!v30)
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
      v43 = 1024;
      v44 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v33, "Operation does not have requested function", v28);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v47 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>, Argument_Types = <>]";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v49 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v7 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>();
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
      v43 = 1024;
      v44 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v33, "Operation does not have requested function", v29);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v47 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>, Argument_Types = <>]";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v49 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v9 = v8;
  if (!*(v8 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> ()(void)>>(), (v8 = (*(v9 + 7))(4, v9 + 24, 0, buf)) == 0))
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
      *&buf[4] = "Operation.h";
      v43 = 1024;
      v44 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v33, "Invalid cast", v27);
    std::runtime_error::runtime_error(&v34, &v33);
    std::runtime_error::runtime_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5992170;
    v36 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
    v47 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>, Argument_Types = <>]";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v49 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v10 = *(v8 + 3);
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v10);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }
}

void sub_1DE6EED60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
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

uint64_t AMCP::Node::set_begin_cycle_handler(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = 0x676C6F626E646263;
    v11 = 0;
    std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](v12, a2);
    AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(v7, &v10, v12);
    std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v12);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void sub_1DE6EEF28(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EEF30);
  }

  __clang_call_terminate(a1);
}

void AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Address *a1, unsigned int *a2, uint64_t a3)
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
    v50 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v52 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](v44, a3);
  v8 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>();
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
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v10 = v9;
  if (!*(v9 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>>(), v9 = (*(v10 + 7))(4, v10 + 24, 0, buf), (v11 = v9) == 0))
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
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void (unsigned int, const AMCP::Proc_Cycle_Info &)>>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](buf, v44);
  v12 = *(v11 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, buf);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](buf);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v44);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }
}

void sub_1DE6EF6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
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
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v27 - 160);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void AMCP::Node::get_end_cycle_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626E646563;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

uint64_t AMCP::Node::set_end_cycle_handler(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = 0x676C6F626E646563;
    v11 = 0;
    std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](v12, a2);
    AMCP::Core::Core::call_operation_function<void,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(v7, &v10, v12);
    std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v12);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void sub_1DE6EFA60(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EFA68);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_end_processing_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626E646570;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

uint64_t AMCP::Node::set_end_processing_handler(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = 0x676C6F626E646570;
    v11 = 0;
    std::__function::__value_func<void ()>::__value_func[abi:ne200100](v12, a2);
    AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v7, &v10, v12);
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v12);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void sub_1DE6EFC24(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EFC2CLL);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_unregister_client_handler(AMCP::Node *this@<X0>, AMCP::Log::AMCP_Scope_Registry *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F62756E636CLL;
      v9 = 0;
      AMCP::Core::Core::call_operation_function<std::function<void ()>>(a2, v7, &v8);
    }

    else
    {
      *(a2 + 3) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 3) = 0;
  }
}

uint64_t AMCP::Node::set_unregister_client_handler(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = 0x676C6F62756E636CLL;
    v11 = 0;
    std::__function::__value_func<void ()>::__value_func[abi:ne200100](v12, a2);
    AMCP::Core::Core::call_operation_function<void,std::function<void ()>>(v7, &v10, v12);
    std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v12);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void sub_1DE6EFDE8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6EFDF0);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_latency_handler(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v29 = 0x676C6F626E646C61;
      v30 = 0;
      operation = AMCP::Core::Core::find_operation(&v31, v7, &v29);
      v9 = v31;
      if (!v31)
      {
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
          *&buf[4] = "Core.h";
          v44 = 1024;
          v45 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v27);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<long long ()>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v48 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::function<long long ()(void)> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v22 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v28);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<long long ()>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<long long ()(void)> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Invalid cast", v26);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<long long ()>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    else
    {
      *(a2 + 24) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 24) = 0;
  }
}

void sub_1DE6F04D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_latency_handler(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v32 = 0x676C6F626E646C61;
    LODWORD(v33) = 0;
    std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](v46, a2);
    operation = AMCP::Core::Core::find_operation(&v34, v7, &v32);
    v9 = v34;
    if (!v34)
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
        v49 = 1024;
        v50 = 202;
        _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v47, "Operation does not have requested function", v29, v32, v33);
      std::runtime_error::runtime_error(&v36, &v47);
      std::runtime_error::runtime_error(&v39, &v36);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<long long ()>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
      v53 = 202;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
    }

    std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](&v47, v46);
    v10 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<long long ()(void)>)>>();
    v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
    if (!v11)
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
        v49 = 1024;
        v50 = 154;
        _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v37, "Operation does not have requested function", v30, v32, v33);
      std::runtime_error::runtime_error(&v38, &v37);
      std::runtime_error::runtime_error(&v39, &v38);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<long long ()>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
      v53 = 154;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
    }

    v12 = v11;
    if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<long long ()(void)>)>>(), v11 = (*(v12 + 7))(4, v12 + 24, 0, buf), (v13 = v11) == 0))
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
        v49 = 1024;
        v50 = 161;
        _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v37, "Invalid cast", v28, v32, v33);
      std::runtime_error::runtime_error(&v38, &v37);
      std::runtime_error::runtime_error(&v39, &v38);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<long long ()>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
      v53 = 161;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
    }

    std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](buf, &v47);
    v14 = *(v13 + 3);
    if (!v14)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v14 + 48))(v14, buf);
    std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](buf);
    std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](&v47);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](v46);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v15;
}

void AMCP::Node::get_uid(AMCP::Node *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1853188452u>(a2, v7);
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

void AMCP::Node::get_description(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 3);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = *(this + 2)) == 0)
  {
LABEL_6:
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0x100000000;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  AMCP::Core::Core::get_simple_required_property<1852073061u>(a2, v6);
LABEL_7:

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

AMCP::Core::Core *AMCP::Node::get_type(AMCP::Node *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 2);
      if (!v5)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return v5;
      }

      v20 = 0x676C6F626E647470;
      v21 = 0;
      has_property = AMCP::Core::Core::has_property(v5, &v20);
      if (!has_property)
      {
LABEL_21:
        v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v13 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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
          v19 = 4;
          strcpy(&__p, "ndtp");
          *buf = 136316418;
          v23 = "Core.h";
          v24 = 1024;
          v25 = 391;
          v26 = 2080;
          v27 = "optional_value.operator BOOL() == true";
          v28 = 2080;
          *v29 = &__p;
          *&v29[8] = 1024;
          v30 = 1735159650;
          v31 = 1024;
          v32 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v19 < 0)
          {
            operator delete(__p);
          }
        }

        abort();
      }

      AMCP::Core::Core::find_operation(&__p, v5, &v20);
      v7 = __p;
      if (__p)
      {
        v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Node_Type ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8))
        {
          LODWORD(v7) = AMCP::Core::Operation::call_function<AMCP::Node_Type>(v7);
LABEL_8:
          v9 = 0;
          v10 = v7 & 0xFFFFFF00;
          goto LABEL_15;
        }

        v11 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v11))
        {
          AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v7);
          LODWORD(v7) = AMCP::Thing::convert_to<AMCP::Node_Type>(buf);
          if (*&v29[2])
          {
            (*&v29[2])(0, buf, 0, 0);
          }

          goto LABEL_8;
        }

        LOBYTE(v7) = 0;
      }

      v10 = 0;
      v9 = 1;
LABEL_15:
      has_property = v18;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if ((v9 & 1) == 0)
      {
        v5 = (v10 | v7);
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  return 0;
}

void sub_1DE6F12A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::is_connected(AMCP::Node *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "tcdnbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v9 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
          v14 = 4;
          strcpy(__p, "ndct");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v16 = 1024;
          v17 = 391;
          v18 = 2080;
          v19 = "optional_value.operator BOOL() == true";
          v20 = 2080;
          v21 = __p;
          v22 = 1024;
          v23 = 1735159650;
          v24 = 1024;
          v25 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1DE6F1470(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Node::get_clock(AMCP::Node *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
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
  v5 = *(this + 2);
  if (v5)
  {
    strcpy(buf, "lcdnbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v6 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v5, buf);
    if (!HIDWORD(v6))
    {
      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
        v14 = 4;
        strcpy(__p, "ndcl");
        *buf = 136316418;
        *&buf[4] = "Core.h";
        v16 = 1024;
        v17 = 391;
        v18 = 2080;
        v19 = "optional_value.operator BOOL() == true";
        v20 = 2080;
        v21 = __p;
        v22 = 1024;
        v23 = 1735159650;
        v24 = 1024;
        v25 = 0;
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      abort();
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v7;
}

void sub_1DE6F1630(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Node::get_current_time(AMCP::Node *this@<X0>, _BYTE *a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v29 = 0x676C6F626374696DLL;
      v30 = 0;
      operation = AMCP::Core::Core::find_operation(&v31, v7, &v29);
      v9 = v31;
      if (!v31)
      {
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
          *&buf[4] = "Core.h";
          v44 = 1024;
          v45 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v27);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v48 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v33);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v22 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v28);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v33);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::optional<CA::TimeStamp> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Invalid cast", v26);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::optional<CA::TimeStamp>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v33);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    else
    {
      *a2 = 0;
      a2[64] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[64] = 0;
  }
}

void AMCP::Node::translate_time(uint64_t a1@<X0>, _OWORD *a2@<X1>, AMCP::Log::AMCP_Scope_Registry *a3@<X8>)
{
  v5 = *(a1 + 24);
  if (v5 && (v7 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v8 = v7;
    v9 = *(a1 + 16);
    if (v9)
    {
      v13 = 0x676C6F6274726E74;
      v14 = 0;
      v10 = a2[1];
      v12[0] = *a2;
      v12[1] = v10;
      v11 = a2[3];
      v12[2] = a2[2];
      v12[3] = v11;
      AMCP::Core::Core::call_operation_function<std::optional<CA::TimeStamp>,CA::TimeStamp>(a3, v9, &v13, v12);
    }

    else
    {
      *a3 = 0;
      *(a3 + 64) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 64) = 0;
  }
}

void AMCP::Node::get_io_thread_error_handler(AMCP::Node *this@<X0>, uint64_t a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v29 = 0x676C6F6274686572;
      v30 = 0;
      operation = AMCP::Core::Core::find_operation(&v31, v7, &v29);
      v9 = v31;
      if (!v31)
      {
        v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v18 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
          *&buf[4] = "Core.h";
          v44 = 1024;
          v45 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v27);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::function<void ()>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v48 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v10 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(void)> ()(void)>>();
      v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
      if (!v11)
      {
        v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v22 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Operation does not have requested function", v28);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void ()>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v12 = v11;
      if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(void)> ()(void)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
      {
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v34, "Invalid cast", v26);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::function<void ()>, Argument_Types = <>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v13 = *(v11 + 3);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v13);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    else
    {
      *(a2 + 24) = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *(a2 + 24) = 0;
  }
}

void sub_1DE6F25B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v30 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a26);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v30 - 129));
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Node::set_io_thread_error_handler(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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
  v7 = *(a1 + 16);
  if (v7)
  {
    v32 = 0x676C6F6274686572;
    LODWORD(v33) = 0;
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v46, a2);
    operation = AMCP::Core::Core::find_operation(&v34, v7, &v32);
    v9 = v34;
    if (!v34)
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
        v49 = 1024;
        v50 = 202;
        _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v47, "Operation does not have requested function", v29, v32, v33);
      std::runtime_error::runtime_error(&v36, &v47);
      std::runtime_error::runtime_error(&v39, &v36);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void ()>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
      v53 = 202;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
    }

    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](&v47, v46);
    v10 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(void)>)>>();
    v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
    if (!v11)
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
        v49 = 1024;
        v50 = 154;
        _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v37, "Operation does not have requested function", v30, v32, v33);
      std::runtime_error::runtime_error(&v38, &v37);
      std::runtime_error::runtime_error(&v39, &v38);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void ()>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
      v53 = 154;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
    }

    v12 = v11;
    if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(void)>)>>(), v11 = (*(v12 + 7))(4, v12 + 24, 0, buf), (v13 = v11) == 0))
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
        v49 = 1024;
        v50 = 161;
        _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v45);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v37, "Invalid cast", v28, v32, v33);
      std::runtime_error::runtime_error(&v38, &v37);
      std::runtime_error::runtime_error(&v39, &v38);
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v39.__vftable = &unk_1F5992170;
      v40 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v39);
      v51 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <std::function<void ()>>]";
      v52 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
      v53 = 161;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v36);
    }

    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](buf, &v47);
    v14 = *(v13 + 3);
    if (!v14)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v14 + 48))(v14, buf);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](buf);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v47);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v46);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v15;
}

void AMCP::IOAudio1::Device_Sub_Object::~Device_Sub_Object(AMCP::IOAudio1::Device_Sub_Object *this)
{
  AMCP::IOAudio1::Device_Sub_Object::~Device_Sub_Object(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598D7B8;
  AMCP::Core::Broker::destroy_core(*(*(*(*(this + 1) + 16) + 32) + 16), *(this + 4));
  v2 = *(this + 5);
  if (v2)
  {
    IOObjectRelease(v2);
  }
}

void SincKernel::SincKernel(SincKernel *this, int a2, int a3, double a4, double a5)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = a3;
  *(this + 5) = 0;
  *(this + 3) = a4;
  *(this + 4) = a5;
  *this = malloc_type_calloc(a2 + a2 * a3, 4uLL, 0x100004052888210uLL);
  operator new[]();
}

void sub_1DE6F34D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<ADS::ObjectManager::ObjectInfo>::~__split_buffer(va);
  os_unfair_lock_unlock(&GetKaiser(unsigned int,double)::sKaiserWindows);
  _Unwind_Resume(a1);
}

unint64_t DSP_Host_Types::IDSP_Host_DictionaryData::hashed_description(DSP_Host_Types::IDSP_Host_DictionaryData *this)
{
  (*(*this + 16))(__p);
  v1 = std::__string_hash<char>::operator()[abi:ne200100](__p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v1;
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_1>,char const* ()(DSP_Host_Types::StreamSemanticType)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types27StringLookup_StreamSemanticC1EvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *std::__function::__func<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_1>,char const* ()(DSP_Host_Types::StreamSemanticType)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  result = "uninitialized";
  while (DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::kThisLookup[v2] != *a2)
  {
    v2 += 4;
    if (v2 == 12)
    {
      return result;
    }
  }

  return *&DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::kThisLookup[v2 + 2];
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_0>,DSP_Host_Types::StreamSemanticType ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types27StringLookup_StreamSemanticC1EvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::$_0>,DSP_Host_Types::StreamSemanticType ()(char const*)>::operator()(uint64_t a1, const char **a2)
{
  v2 = 0;
  v3 = *a2;
  while (strcmp(*&DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::kThisLookup[v2 + 2], v3))
  {
    v2 += 4;
    if (v2 == 12)
    {
      return 0;
    }
  }

  return DSP_Host_Types::StringLookup_StreamSemantic::StringLookup_StreamSemantic(void)::kThisLookup[v2];
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1>,char const* ()(DSP_Host_Types::AudioProcessingType)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types28StringLookup_AudioProcessingC1EvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1>,char const* ()(DSP_Host_Types::AudioProcessingType)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  result = "uninitialized";
  while (DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::kThisLookup[v2] != *a2)
  {
    v2 += 4;
    if (v2 == 44)
    {
      return result;
    }
  }

  return *&DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::kThisLookup[v2 + 2];
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0>,DSP_Host_Types::AudioProcessingType ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types28StringLookup_AudioProcessingC1EvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0>,DSP_Host_Types::AudioProcessingType ()(char const*)>::operator()(uint64_t a1, const char **a2)
{
  v2 = 0;
  v3 = *a2;
  while (strcmp(*&DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::kThisLookup[v2 + 2], v3))
  {
    v2 += 4;
    if (v2 == 44)
    {
      return 0;
    }
  }

  return DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::kThisLookup[v2];
}

DSP_Host_Types::StringLookup_AudioProcessing *DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(DSP_Host_Types::StringLookup_AudioProcessing *this)
{
  v6[3] = *MEMORY[0x1E69E9840];
  *(this + 3) = 0;
  *(this + 7) = 0;
  {
    qword_1ECDAEA48 = "uninitialized";
    dword_1ECDAEA50 = 1;
    qword_1ECDAEA58 = "general";
    dword_1ECDAEA60 = 2;
    qword_1ECDAEA68 = "voice isolation conferencing";
    dword_1ECDAEA70 = 3;
    qword_1ECDAEA78 = "voice isolation";
    dword_1ECDAEA80 = 4;
    qword_1ECDAEA88 = "spatial channel virtualization only";
    dword_1ECDAEA90 = 5;
    qword_1ECDAEA98 = "spatial playback";
    dword_1ECDAEAA0 = 6;
    qword_1ECDAEAA8 = "voice activity detection";
    dword_1ECDAEAB0 = 7;
    qword_1ECDAEAB8 = "isolated audio";
    dword_1ECDAEAC0 = 8;
    DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::kThisLookup[0] = 0;
    qword_1ECDAEAC8 = "dsp offload";
    dword_1ECDAEAD0 = 10;
    qword_1ECDAEAD8 = "content creation recording";
    dword_1ECDAEAE0 = 9;
    qword_1ECDAEAE8 = "INTERNAL_kAuProcClientUnprocessedStream";
  }

  v4[0] = &unk_1F598D908;
  v5 = v4;
  if (v4 != this)
  {
    if (*(this + 3) == this)
    {
      std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0>,DSP_Host_Types::AudioProcessingType ()(char const*)>::__clone(v4, v6);
      (*(*v5 + 32))(v5);
      v5 = 0;
      (*(**(this + 3) + 24))(*(this + 3), v4);
      (*(**(this + 3) + 32))(*(this + 3));
      *(this + 3) = 0;
      v5 = v4;
      (*(v6[0] + 24))(v6, this);
      (*(v6[0] + 32))(v6);
    }

    else
    {
      std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_0>,DSP_Host_Types::AudioProcessingType ()(char const*)>::__clone(v4, this);
      (*(*v5 + 32))(v5);
      v5 = *(this + 3);
    }

    *(this + 3) = this;
  }

  std::__function::__value_func<DSP_Host_Types::AudioProcessingType ()(char const*)>::~__value_func[abi:ne200100](v4);
  v2 = this + 32;
  v4[0] = &unk_1F598D998;
  v5 = v4;
  if ((this + 32) != v4)
  {
    if (*(this + 7) == v2)
    {
      std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1>,char const* ()(DSP_Host_Types::AudioProcessingType)>::__clone(v4, v6);
      (*(*v5 + 32))(v5);
      v5 = 0;
      (*(**(this + 7) + 24))(*(this + 7), v4);
      (*(**(this + 7) + 32))(*(this + 7));
      *(this + 7) = 0;
      v5 = v4;
      (*(v6[0] + 24))(v6, this + 32);
      (*(v6[0] + 32))(v6);
    }

    else
    {
      std::__function::__func<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_AudioProcessing::StringLookup_AudioProcessing(void)::$_1>,char const* ()(DSP_Host_Types::AudioProcessingType)>::__clone(v4, this + 4);
      (*(*v5 + 32))(v5);
      v5 = *(this + 7);
    }

    *(this + 7) = v2;
  }

  std::__function::__value_func<char const* ()(DSP_Host_Types::AudioProcessingType)>::~__value_func[abi:ne200100](v4);
  return this;
}

void sub_1DE6F3EB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1>,char const* ()(DSP_Host_Types::CustomPropertyDataType)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types35StringLookup_CustomPropertyDataTypeC1EvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_1>,char const* ()(DSP_Host_Types::CustomPropertyDataType)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  result = "uninitialized";
  while (DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::kThisLookup[v2] != *a2)
  {
    v2 += 4;
    if (v2 == 32)
    {
      return result;
    }
  }

  return *&DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::kThisLookup[v2 + 2];
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0>,DSP_Host_Types::CustomPropertyDataType ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14DSP_Host_Types35StringLookup_CustomPropertyDataTypeC1EvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0,std::allocator<DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::$_0>,DSP_Host_Types::CustomPropertyDataType ()(char const*)>::operator()(uint64_t a1, const char **a2)
{
  v2 = 0;
  v3 = *a2;
  while (strcmp(*&DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::kThisLookup[v2 + 2], v3))
  {
    v2 += 4;
    if (v2 == 32)
    {
      return 0;
    }
  }

  return DSP_Host_Types::StringLookup_CustomPropertyDataType::StringLookup_CustomPropertyDataType(void)::kThisLookup[v2];
}

void HALS_ObjectMap::MapObject(HALS_ObjectMap *this, uint64_t a2, HALS_Object *a3)
{
  v4 = this;
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (v4 && a2)
  {
    v19 = HALS_ObjectMap::sObjectInfoListMutex;
    v20 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    v5 = HALS_ObjectMap::sObjectInfoList;
    v6 = *HALS_ObjectMap::sObjectInfoList;
    v7 = *(HALS_ObjectMap::sObjectInfoList + 8);
    v8 = *HALS_ObjectMap::sObjectInfoList;
    if (*HALS_ObjectMap::sObjectInfoList != v7)
    {
      while (*(v8 + 16) != v4)
      {
        v8 += 24;
        if (v8 == v7)
        {
          goto LABEL_8;
        }
      }
    }

    if (v8 == v7)
    {
LABEL_8:
      v9 = *(HALS_ObjectMap::sObjectInfoList + 16);
      if (v7 >= v9)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v6) >> 3);
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
          std::allocator<HALS_ObjectMap::ObjectInfo>::allocate_at_least[abi:ne200100](v14);
        }

        v15 = 24 * v11;
        *v15 = 1;
        *(v15 + 8) = a2;
        *(v15 + 16) = v4;
        v10 = 24 * v11 + 24;
        v16 = *(v5 + 8) - *v5;
        v17 = (24 * v11 - v16);
        memcpy(v17, *v5, v16);
        v18 = *v5;
        *v5 = v17;
        *(v5 + 8) = v10;
        *(v5 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = 1;
        *(v7 + 8) = a2;
        *(v7 + 16) = v4;
        v10 = v7 + 24;
      }

      *(v5 + 8) = v10;
    }

    HALB_Mutex::Locker::~Locker(&v19);
  }
}

void std::allocator<HALS_ObjectMap::ObjectInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<HALS_ObjectMap::ObjectInfo>::reserve(void *a1)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) <= 0x1FF)
  {
    operator new();
  }
}

void HALS_ObjectMap::_UnmapObject(HALS_ObjectMap *this)
{
  if (this)
  {
    v1 = HALS_ObjectMap::sObjectInfoList;
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v3 = *HALS_ObjectMap::sObjectInfoList;
      v2 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v2)
      {
        while (*(v3 + 4) != this)
        {
          v3 += 24;
          if (v3 == v2)
          {
            v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
            break;
          }
        }
      }

      if (v2 != v3)
      {
        v4 = v2 - (v3 + 24);
        if (v2 != v3 + 24)
        {
          this = memmove(v3, v3 + 24, v4 - 4);
        }

        *(v1 + 8) = &v3[v4];

        HALS_ObjectMap::_ReclaimSpace(this);
      }
    }
  }
}

void HALS_ObjectMap::_ReclaimSpace(HALS_ObjectMap *this)
{
  v1 = HALS_ObjectMap::sObjectInfoList;
  v2 = *HALS_ObjectMap::sObjectInfoList;
  v3 = *(HALS_ObjectMap::sObjectInfoList + 16) - *HALS_ObjectMap::sObjectInfoList;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
  if (v4 >= 0x201)
  {
    v5 = *(HALS_ObjectMap::sObjectInfoList + 8);
    v6 = (v5 - v2) >> 3;
    if (v4 + 0x5555555555555555 * v6 >= 0x15 && v3 > (v5 - v2))
    {
      if (v5 != v2)
      {
        std::allocator<HALS_ObjectMap::ObjectInfo>::allocate_at_least[abi:ne200100](0xAAAAAAAAAAAAAAABLL * v6);
      }

      v8 = 8 * v6;
      v9 = *(HALS_ObjectMap::sObjectInfoList + 8) - v2;
      v10 = (8 * v6 - v9);
      memcpy(v10, v2, v9);
      v11 = *v1;
      *v1 = v10;
      *(v1 + 8) = v8;
      *(v1 + 16) = 0;
      if (v11)
      {

        operator delete(v11);
      }
    }
  }
}

void sub_1DE6F4648(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6F45A0);
}

BOOL HALS_ObjectMap::IsObjectMapped(_BOOL8 this)
{
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v5 = HALS_ObjectMap::sObjectInfoListMutex;
    v6 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v2 = *HALS_ObjectMap::sObjectInfoList;
      v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v3)
      {
        while (*(v2 + 16) != this)
        {
          v2 += 24;
          if (v2 == v3)
          {
            v2 = *(HALS_ObjectMap::sObjectInfoList + 8);
            break;
          }
        }
      }

      this = v2 != v3;
    }

    else
    {
      this = 0;
    }

    HALB_Mutex::Locker::~Locker(&v5);
  }

  return this;
}

unint64_t HALS_ObjectMap::IsObjectMapped(unint64_t this, const HALS_Object *a2)
{
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v6 = HALS_ObjectMap::sObjectInfoListMutex;
    v7 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v3 = *HALS_ObjectMap::sObjectInfoList;
      v4 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v4)
      {
        while (*(v3 + 8) != this)
        {
          v3 += 24;
          if (v3 == v4)
          {
            v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
            break;
          }
        }
      }

      this = v3 != v4;
    }

    else
    {
      this = 0;
    }

    HALB_Mutex::Locker::~Locker(&v6);
  }

  return this;
}

uint64_t HALS_ObjectMap::CopyObjectByObjectID(HALS_ObjectMap *this)
{
  v1 = this;
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (!v1)
  {
    return 0;
  }

  v6 = HALS_ObjectMap::sObjectInfoListMutex;
  v7 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
  if (!HALS_ObjectMap::sObjectInfoList)
  {
    goto LABEL_10;
  }

  v2 = *HALS_ObjectMap::sObjectInfoList;
  v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
  if (*HALS_ObjectMap::sObjectInfoList != v3)
  {
    while (*(v2 + 16) != v1)
    {
      v2 += 24;
      if (v2 == v3)
      {
        goto LABEL_10;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_10:
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 8);
    ++*v2;
  }

  HALB_Mutex::Locker::~Locker(&v6);
  return v4;
}

void HALS_ObjectMap::RetainObject(HALS_ObjectMap *this, HALS_Object *a2)
{
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v5 = HALS_ObjectMap::sObjectInfoListMutex;
    v6 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v3 = *HALS_ObjectMap::sObjectInfoList;
      v4 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v4)
      {
        while (*(v3 + 8) != this)
        {
          v3 += 24;
          if (v3 == v4)
          {
            goto LABEL_9;
          }
        }
      }

      if (v3 != v4)
      {
        ++*v3;
      }
    }

LABEL_9:
    HALB_Mutex::Locker::~Locker(&v5);
  }
}

void HALS_ObjectMap::ReleaseObject(HALS_ObjectMap *this, HALS_Object *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v15 = HALS_ObjectMap::sObjectInfoListMutex;
    v16 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v4 = *HALS_ObjectMap::sObjectInfoList;
      v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v3)
      {
        while (*(v4 + 8) != this)
        {
          v4 += 24;
          if (v4 == v3)
          {
            goto LABEL_24;
          }
        }
      }

      if (v4 != v3)
      {
        if (*v4)
        {
          v5 = *v4 - 1;
          *v4 = v5;
          if (!v5)
          {
            v6 = (*(*this + 40))(this);
            if (v6)
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

              v6 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
              if (v6)
              {
                *buf = 136315394;
                *&buf[4] = "HALS_ObjectMap.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 348;
                _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_ObjectMap::_ReleaseObject: Destroying an active object.", buf, 0x12u);
              }
            }

            v11 = HALS_ObjectMap::sObjectInfoList;
            v12 = *(HALS_ObjectMap::sObjectInfoList + 8);
            v13 = v12 - (v4 + 24);
            if (v12 != v4 + 24)
            {
              v6 = memmove(v4, (v4 + 24), v13 - 4);
            }

            *(v11 + 8) = v4 + v13;
            HALS_ObjectMap::_ReclaimSpace(v6);
            HALS_NotificationManager::ObjectIsDead(*(this + 4));
            if ((*(*this + 40))(this))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v14 = *(this + 4);
                *buf = 136315906;
                *&buf[4] = "HALS_ObjectMap.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 357;
                *&buf[18] = 1024;
                *&buf[20] = v14;
                LOWORD(v18) = 2048;
                *(&v18 + 2) = this;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_ObjectMap::_ReleaseObject: an active object (%d, %p) is being destroyed. This is probably a bug.", buf, 0x22u);
              }
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZN14HALS_ObjectMap14_ReleaseObjectEP11HALS_Object_block_invoke;
            *&v18 = &__block_descriptor_tmp_19369;
            *(&v18 + 1) = this;
            AMCP::Utility::Dispatch_Queue::async(HALS_ObjectMap::sNormalPriorityQueue, buf);
          }
        }
      }
    }

LABEL_24:
    HALB_Mutex::Locker::~Locker(&v15);
  }
}

void sub_1DE6F4C08(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    HALB_Mutex::Locker::~Locker(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6F4B88);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14HALS_ObjectMap14_ReleaseObjectEP11HALS_Object_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void HALS_ObjectMap::ReleaseObject_LongTerm(HALS_ObjectMap *this, HALS_Object *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v15 = HALS_ObjectMap::sObjectInfoListMutex;
    v16 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v4 = *HALS_ObjectMap::sObjectInfoList;
      v3 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v3)
      {
        while (*(v4 + 8) != this)
        {
          v4 += 24;
          if (v4 == v3)
          {
            goto LABEL_24;
          }
        }
      }

      if (v4 != v3)
      {
        if (*v4)
        {
          v5 = *v4 - 1;
          *v4 = v5;
          if (!v5)
          {
            v6 = (*(*this + 40))(this);
            if (v6)
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

              v6 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
              if (v6)
              {
                *buf = 136315394;
                *&buf[4] = "HALS_ObjectMap.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 430;
                _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_ObjectMap::_ReleaseObject_LongTerm: Destroying an active object.", buf, 0x12u);
              }
            }

            v11 = HALS_ObjectMap::sObjectInfoList;
            v12 = *(HALS_ObjectMap::sObjectInfoList + 8);
            v13 = v12 - (v4 + 24);
            if (v12 != v4 + 24)
            {
              v6 = memmove(v4, (v4 + 24), v13 - 4);
            }

            *(v11 + 8) = v4 + v13;
            HALS_ObjectMap::_ReclaimSpace(v6);
            HALS_NotificationManager::ObjectIsDead(*(this + 4));
            if ((*(*this + 40))(this))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v14 = *(this + 4);
                *buf = 136315906;
                *&buf[4] = "HALS_ObjectMap.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 439;
                *&buf[18] = 1024;
                *&buf[20] = v14;
                LOWORD(v18) = 2048;
                *(&v18 + 2) = this;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_ObjectMap::_ReleaseObject_LongTerm: an active object (%d, %p) is being destroyed. This is probably a bug.", buf, 0x22u);
              }
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZN14HALS_ObjectMap23_ReleaseObject_LongTermEP11HALS_Objectj_block_invoke;
            *&v18 = &__block_descriptor_tmp_3_19379;
            *(&v18 + 1) = this;
            AMCP::Utility::Dispatch_Queue::async(HALS_ObjectMap::sNormalPriorityQueue, buf);
          }
        }
      }
    }

LABEL_24:
    HALB_Mutex::Locker::~Locker(&v15);
  }
}

void sub_1DE6F4F5C(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    HALB_Mutex::Locker::~Locker(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6F4EDCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14HALS_ObjectMap23_ReleaseObject_LongTermEP11HALS_Objectj_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void HALS_ObjectMap::ObjectIsDead(HALS_ObjectMap *this, HALS_Object *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v10 = HALS_ObjectMap::sObjectInfoListMutex;
    v3 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    v11 = v3;
    v4 = HALS_ObjectMap::sObjectInfoList;
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v6 = *HALS_ObjectMap::sObjectInfoList;
      v5 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v5)
      {
        while (*(v6 + 8) != this)
        {
          v6 += 24;
          if (v6 == v5)
          {
            v6 = *(HALS_ObjectMap::sObjectInfoList + 8);
            break;
          }
        }
      }

      if (v5 != v6)
      {
        if (*v6)
        {
          v7 = *v6 - 1;
          *v6 = v7;
          if (!v7)
          {
            v8 = v5 - (v6 + 24);
            if (v5 != v6 + 24)
            {
              v3 = memmove(v6, (v6 + 24), v8 - 4);
            }

            *(v4 + 8) = v6 + v8;
            HALS_ObjectMap::_ReclaimSpace(v3);
            HALS_NotificationManager::ObjectIsDead(*(this + 4));
            if ((*(*this + 40))(this))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v9 = *(this + 4);
                *buf = 136315906;
                *&buf[4] = "HALS_ObjectMap.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 474;
                *&buf[18] = 1024;
                *&buf[20] = v9;
                LOWORD(v13) = 2048;
                *(&v13 + 2) = this;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_ObjectMap::_ObjectIsDead: an active object (%d, %p) is being destroyed. This is probably a bug.", buf, 0x22u);
              }
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZN14HALS_ObjectMap13_ObjectIsDeadEP11HALS_Object_block_invoke;
            *&v13 = &__block_descriptor_tmp_4_19383;
            *(&v13 + 1) = this;
            AMCP::Utility::Dispatch_Queue::async(HALS_ObjectMap::sNormalPriorityQueue, buf);
          }
        }
      }
    }

    HALB_Mutex::Locker::~Locker(&v10);
  }
}

void sub_1DE6F51D8(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    HALB_Mutex::Locker::~Locker(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6F51A8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14HALS_ObjectMap13_ObjectIsDeadEP11HALS_Object_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void HALS_ObjectMap::ObjectIsDead(HALS_ObjectMap *this)
{
  v14 = *MEMORY[0x1E69E9840];
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  if (this)
  {
    v10 = HALS_ObjectMap::sObjectInfoListMutex;
    v2 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
    v11 = v2;
    v3 = HALS_ObjectMap::sObjectInfoList;
    if (HALS_ObjectMap::sObjectInfoList)
    {
      v5 = *HALS_ObjectMap::sObjectInfoList;
      v4 = *(HALS_ObjectMap::sObjectInfoList + 8);
      if (*HALS_ObjectMap::sObjectInfoList != v4)
      {
        while (*(v5 + 16) != this)
        {
          v5 += 24;
          if (v5 == v4)
          {
            v5 = *(HALS_ObjectMap::sObjectInfoList + 8);
            break;
          }
        }
      }

      if (v4 != v5)
      {
        if (*v5)
        {
          v6 = *(v5 + 8);
          v7 = *v5 - 1;
          *v5 = v7;
          if (!v7)
          {
            v8 = v4 - (v5 + 24);
            if (v4 != v5 + 24)
            {
              v2 = memmove(v5, (v5 + 24), v8 - 4);
            }

            *(v3 + 8) = v5 + v8;
            HALS_ObjectMap::_ReclaimSpace(v2);
            HALS_NotificationManager::ObjectIsDead(this);
            if ((*(*v6 + 40))(v6))
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v9 = v6[4];
                *buf = 136315906;
                *&buf[4] = "HALS_ObjectMap.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 510;
                *&buf[18] = 1024;
                *&buf[20] = v9;
                LOWORD(v13) = 2048;
                *(&v13 + 2) = v6;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_ObjectMap::_ObjectIsDead: an active object (%d, %p) is being destroyed. This is probably a bug.", buf, 0x22u);
              }
            }

            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZN14HALS_ObjectMap13_ObjectIsDeadEj_block_invoke;
            *&v13 = &__block_descriptor_tmp_5_19387;
            *(&v13 + 1) = v6;
            AMCP::Utility::Dispatch_Queue::async(HALS_ObjectMap::sNormalPriorityQueue, buf);
          }
        }
      }
    }

    HALB_Mutex::Locker::~Locker(&v10);
  }
}

void sub_1DE6F5460(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    HALB_Mutex::Locker::~Locker(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6F542CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14HALS_ObjectMap13_ObjectIsDeadEj_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void HALS_ObjectMap::Dump(HALS_ObjectMap *this)
{
  v29 = *MEMORY[0x1E69E9840];
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  v13 = HALS_ObjectMap::sObjectInfoListMutex;
  v14 = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "HALS_ObjectMap.cpp";
    v19 = 1024;
    v20 = 529;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  \nHALS_ObjectMap::_Dump: ->", buf, 0x12u);
  }

  v1 = HALS_ObjectMap::sObjectInfoList;
  if (!HALS_ObjectMap::sObjectInfoList)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v18 = "HALS_ObjectMap.cpp";
    v19 = 1024;
    v20 = 565;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d    No Object List";
LABEL_11:
    _os_log_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x12u);
    goto LABEL_20;
  }

  v3 = *HALS_ObjectMap::sObjectInfoList;
  v2 = *(HALS_ObjectMap::sObjectInfoList + 8);
  v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v3 == v2)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v18 = "HALS_ObjectMap.cpp";
    v19 = 1024;
    v20 = 560;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d    No Objects";
    goto LABEL_11;
  }

  if (v4)
  {
    *buf = 136315650;
    v18 = "HALS_ObjectMap.cpp";
    v19 = 1024;
    v20 = 542;
    v21 = 1024;
    v22 = -1431655765 * ((v2 - v3) >> 3);
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d    %d Objects", buf, 0x18u);
    v1 = HALS_ObjectMap::sObjectInfoList;
    v3 = *HALS_ObjectMap::sObjectInfoList;
    v2 = *(HALS_ObjectMap::sObjectInfoList + 8);
  }

  if (v3 != v2)
  {
    v7 = MEMORY[0x1E69E9C10];
    do
    {
      v8 = *(v3 + 1);
      v9 = v8[5];
      BaseClass = v8[6];
      v11 = v8[4];
      if (BaseClass == v9)
      {
        BaseClass = HALB_Info::GetBaseClass(v8[6]);
      }

      v12 = *v3;
      if (!HALB_Info::IsSubClass(v9, 1633907820))
      {
        v16[0] = HIBYTE(BaseClass);
        v16[1] = BYTE2(BaseClass);
        v16[2] = BYTE1(BaseClass);
        v16[3] = BaseClass;
        v16[4] = 0;
        v15[0] = BYTE3(v9);
        v15[1] = BYTE2(v9);
        v15[2] = BYTE1(v9);
        v15[3] = v9;
        v15[4] = 0;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v18 = "HALS_ObjectMap.cpp";
          v19 = 1024;
          v20 = 554;
          v21 = 1024;
          v22 = v11;
          v23 = 2080;
          v24 = v15;
          v25 = 2080;
          v26 = v16;
          v27 = 2048;
          v28 = v12;
          _os_log_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d    Object ID: %4d | Class: '%s' | Base Class: '%s' | Ref: %4llu", buf, 0x36u);
          v1 = HALS_ObjectMap::sObjectInfoList;
        }
      }

      v3 += 24;
    }

    while (v3 != *(v1 + 8));
  }

LABEL_20:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "HALS_ObjectMap.cpp";
    v19 = 1024;
    v20 = 567;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_ObjectMap::_Dump: <-\n", buf, 0x12u);
  }

  HALB_Mutex::Locker::~Locker(&v13);
}

void std::vector<HALS_ObjectMap::ObjectInfo>::__init_with_size[abi:ne200100]<HALS_ObjectMap::ObjectInfo*,HALS_ObjectMap::ObjectInfo*>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<HALS_ObjectMap::ObjectInfo>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1DE6F5950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14HALS_ObjectMap17DestroyAllObjectsEv_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t ___ZN14HALS_ObjectMap17DestroyAllObjectsEv_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void MutationItinerary::Reset(MutationItinerary *this)
{
  *this = 0;
  v2 = *(this + 4);
  for (i = *(this + 5); i != v2; i -= 48)
  {
    v4 = *(i - 48);
    std::__destroy_at[abi:ne200100]<MutationItinerary::Device,0>(v4);
  }

  v6 = *(this + 2);
  v5 = (this + 16);
  v5[3] = v2;
  std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(v6);
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 1) = v5;
  v5[6] = v5[5];
}

uint64_t MutationItinerary::LoadFromNegotiateResponse_util(const __CFString ***this, const DSP_Host_Types::NegotiateResponse *a2, char a3)
{
  v75 = *MEMORY[0x1E69E9840];
  MutationItinerary::Reset(this);
  v7 = *(a2 + 12);
  *this = v7 == 0;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  *(this + 1) = v8;
  if (v7)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315394;
      *&buf[4] = "HALS_MutationItinerary.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 41;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Negotiate response failed", buf, 0x12u);
    }

    v45 = 0;
  }

  else
  {
    v60 = a3;
    v14 = *(a2 + 9);
    v13 = *(a2 + 10);
    for (i = a2; v14 != v13; v14 += 2)
    {
      v15 = *v14;
      if ((*v14)[64])
      {
        *buf = 0;
        buf[8] = 0;
        buf[16] = 0;
        LOBYTE(v65) = 0;
        v66 = 0;
        LOBYTE(v67) = 0;
        v68 = 0;
        LOBYTE(v69) = 0;
        v70 = 0;
        if (v15[63] < 0)
        {
          std::string::__init_copy_ctor_external(&v62, *(v15 + 5), *(v15 + 6));
        }

        else
        {
          v62 = *(v15 + 40);
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v62;
        }

        else
        {
          v16 = v62.__r_.__value_.__r.__words[0];
        }

        if (v16)
        {
          if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v62.__r_.__value_.__l.__size_;
          }

          v18 = CFStringCreateWithBytes(0, v16, size, 0x8000100u, 0);
          cf = v18;
          if (!v18)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          *buf = v18;
          CFRetain(v18);
        }

        else
        {
          cf = 0;
          *buf = 0;
        }

        v19 = *v14;
        v20 = this[5];
        v21 = this[6];
        *&buf[8] = *(*v14 + 11);
        buf[16] = v19[96];
        v65 = *(v19 + 56);
        v66 = v19[228];
        v67 = *(v19 + 50);
        v68 = v19[204];
        v70 = v19[180];
        v69 = *(v19 + 44);
        if (v20 >= v21)
        {
          v23 = this[4];
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23) >> 4);
          v25 = v24 + 1;
          if (v24 + 1 > 0x555555555555555)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v23) >> 4);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x2AAAAAAAAAAAAAALL)
          {
            v27 = 0x555555555555555;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            std::allocator<MutationItinerary::Device>::allocate_at_least[abi:ne200100](v27);
          }

          v28 = 48 * v24;
          std::construct_at[abi:ne200100]<MutationItinerary::Device,MutationItinerary::Device const&,MutationItinerary::Device*>(48 * v24, buf);
          v30 = this[4];
          v29 = this[5];
          v31 = (48 * v24 + v30 - v29);
          if (v29 != v30)
          {
            v32 = this[4];
            v33 = v28 + v30 - v29;
            do
            {
              *v33 = *v32;
              *v32 = 0;
              v34 = *(v32 + 1);
              v35 = *(v32 + 3);
              *(v33 + 37) = *(v32 + 37);
              *(v33 + 24) = v35;
              *(v33 + 8) = v34;
              v32 += 6;
              v33 += 48;
            }

            while (v32 != v29);
            do
            {
              v36 = *v30;
              v30 += 6;
              std::__destroy_at[abi:ne200100]<MutationItinerary::Device,0>(v36);
            }

            while (v30 != v29);
            v30 = this[4];
          }

          v22 = (v28 + 48);
          this[4] = v31;
          this[5] = (v28 + 48);
          this[6] = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          v22 = (std::construct_at[abi:ne200100]<MutationItinerary::Device,MutationItinerary::Device const&,MutationItinerary::Device*>(v20, buf) + 48);
        }

        this[5] = v22;
        v37 = *v14;
        if ((*v14)[121] == 1)
        {
          v38 = v37[120];
        }

        else
        {
          v38 = 0;
        }

        if (v37[145] == 1)
        {
          v39 = v37[144];
        }

        else
        {
          v39 = 0;
        }

        if ((v38 | v39))
        {
          v40 = *std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__find_equal<applesauce::CF::StringRef>((this + 1), &v63, &cf);
          if (!v40)
          {
            operator new();
          }

          LOBYTE(v40[1].info) = 1;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        v6 = *buf;
        if (*buf)
        {
          CFRelease(*buf);
        }
      }

      else
      {
        v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MutationItinerary.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 49;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Skipping DSP configuration change request entry because the provided device has no UID.", buf, 0x12u);
        }
      }
    }

    if (*(i + 3) != *(i + 4) && *(i + 6) != *(i + 7))
    {
      v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v41 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
        *buf = 136315394;
        *&buf[4] = "HALS_MutationItinerary.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 83;
        _os_log_debug_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] DSP configuration change contains client formats for both input and output at the same time which is not supported.", buf, 0x12u);
      }
    }

    if (this[3])
    {
      goto LABEL_74;
    }

    v54 = this[4];
    v53 = this[5];
    if (v54 == v53)
    {
      v56 = 0;
    }

    else
    {
      v55 = v54 + 6;
      do
      {
        v56 = *(v55 - 20) | *(v55 - 32) | *(v55 - 12) | *(v55 - 4);
        if (v56)
        {
          break;
        }

        v47 = v55 == v53;
        v55 += 6;
      }

      while (!v47);
    }

    if ((v56 & 1) != 0 || this[7] != this[8])
    {
LABEL_74:
      std::map<applesauce::CF::StringRef,BOOL>::map[abi:ne200100](buf, this + 1);
      MutationItinerary::Reset(this);
      v47 = *(i + 12) == 0;
      *this = v47;
      if (v47)
      {
        v48 = v60;
      }

      else
      {
        v48 = 0;
      }

      *(this + 1) = v48;
      if (*&buf[16])
      {
        if (this + 1 != buf)
        {
          std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>(this + 1, *buf, &buf[8]);
        }

        v49 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v49 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v46);
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

        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v71 = 136315394;
          v72 = "HALS_MutationItinerary.cpp";
          v73 = 1024;
          v74 = 110;
          _os_log_debug_impl(&dword_1DE1F9000, v52, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp][reference] DSP negotiate requests for reference stream(s) will be retained; other requests are unsupported.", &v71, 0x12u);
        }
      }

      std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*&buf[8]);
    }

    v45 = *this;
  }

  return v45 & 1;
}

void MutationItinerary::Device::~Device(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::construct_at[abi:ne200100]<MutationItinerary::Device,MutationItinerary::Device const&,MutationItinerary::Device*>(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v4;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 24) = v6;
  *(a1 + 8) = v5;
  return a1;
}

std::string *MutationItinerary::util_ChangeBitmaskToString(std::string *this, int a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  result = std::string::append(this, "Changes: ", 9uLL);
  if (!a2)
  {
    v5 = "<none>";
    v6 = 6;
    return std::string::append(this, v5, v6);
  }

  if ((a2 & 2) != 0)
  {
    result = std::string::append(this, "context format / ", 0x11uLL);
  }

  if ((a2 & 8) != 0)
  {
    result = std::string::append(this, "missing device / ", 0x11uLL);
  }

  if (a2)
  {
    result = std::string::append(this, "device sample rate / ", 0x15uLL);
  }

  if ((a2 & 4) != 0)
  {
    v5 = "reference stream / ";
    v6 = 19;
    return std::string::append(this, v5, v6);
  }

  return result;
}

void sub_1DE6F6390(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL MutationItinerary::AreChangesReconciled(MutationItinerary *this, CFTypeRef *a2, int *a3)
{
  DSP_Host_Types::ConfigurationChangeRequest::ConfigurationChangeRequest(&v75, a2);
  v4 = *(this + 1);
  v68 = this;
  v69 = (this + 16);
  if (v4 == (this + 16))
  {
    v5 = 0;
    goto LABEL_69;
  }

  v5 = 0;
  do
  {
    if (v5)
    {
      break;
    }

    v6 = v82;
    v71 = v83;
    if (v82 == v83)
    {
      v32 = *(v4 + 40) == 0;
      goto LABEL_55;
    }

    while (1)
    {
      if (*(*v6 + 64) != 1)
      {
        goto LABEL_50;
      }

      DSP_Dictionariable::SingleKvp<std::string>::value(v88, *v6 + 24);
      v7 = v4[4];
      if (!v7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(&v84, v7);
      v8 = v86;
      v10 = v84;
      v9 = v85;
      size = HIBYTE(v88[0].__r_.__value_.__r.__words[2]);
      v12 = SHIBYTE(v88[0].__r_.__value_.__r.__words[2]);
      v13 = v88[0].__r_.__value_.__r.__words[0];
      if ((v88[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = v88;
      }

      else
      {
        size = v88[0].__r_.__value_.__l.__size_;
        v14 = v88[0].__r_.__value_.__r.__words[0];
      }

      if (v86 < 0)
      {
        v15 = v84;
      }

      else
      {
        v9 = v86;
        v15 = &v84;
      }

      if (v9 >= size)
      {
        v16 = size;
      }

      else
      {
        v16 = v9;
      }

      v17 = v9 == size;
      if (memcmp(v14, v15, v16))
      {
        v17 = 0;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        if ((v12 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_23;
      }

      operator delete(v10);
      if ((v12 & 0x80000000) == 0)
      {
        break;
      }

LABEL_23:
      operator delete(v13);
      if (v17)
      {
        goto LABEL_24;
      }

LABEL_50:
      v6 += 16;
      if (v6 == v71)
      {
        v31 = 0;
        goto LABEL_53;
      }
    }

    if (!v17)
    {
      goto LABEL_50;
    }

LABEL_24:
    v18 = *(*v6 + 712);
    v73 = *(*v6 + 720);
    if (v18 == v73)
    {
      goto LABEL_50;
    }

    v19 = v81;
    while (1)
    {
      v20 = v80[65];
      v22 = *v18;
      v21 = v18[1];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      while (v20 != v19)
      {
        if (*(v22 + 304) == 1)
        {
          DSP_Dictionariable::SingleKvp<std::string>::value(v88, v22 + 264);
          v23 = *(v20 + 23);
          v24 = SHIBYTE(v88[0].__r_.__value_.__r.__words[2]);
          v25 = v88[0].__r_.__value_.__l.__size_;
          v26 = v88[0].__r_.__value_.__r.__words[0];
          if ((v88[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = v88[0].__r_.__value_.__r.__words[0];
          }

          else
          {
            v25 = SHIBYTE(v88[0].__r_.__value_.__r.__words[2]);
            v27 = v88;
          }

          if ((v23 & 0x80u) == 0)
          {
            v28 = v20;
          }

          else
          {
            v23 = v20[1];
            v28 = *v20;
          }

          if (v23 >= v25)
          {
            v29 = v25;
          }

          else
          {
            v29 = v23;
          }

          v30 = v23 == v25;
          if (memcmp(v27, v28, v29))
          {
            v30 = 0;
          }

          if (v24 < 0)
          {
            operator delete(v26);
          }

          if (v30)
          {
            v19 = v20;
            break;
          }
        }

        v20 += 3;
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (v19 != v81)
      {
        break;
      }

      v18 += 2;
      v19 = v81;
      if (v18 == v73)
      {
        goto LABEL_50;
      }
    }

    v31 = 1;
LABEL_53:
    v32 = *(v4 + 40) == v31;
LABEL_55:
    if (v32)
    {
      v5 = 0;
    }

    else
    {
      v5 = 4;
    }

    v34 = v4[1];
    if (v34)
    {
      do
      {
        v35 = v34;
        v34 = v34->isa;
      }

      while (v34);
    }

    else
    {
      do
      {
        v35 = v4[2];
        v32 = *v35 == v4;
        v4 = v35;
      }

      while (!v32);
    }

    v4 = v35;
  }

  while (v35 != v69);
LABEL_69:
  v72 = v5;
  v36 = *(v68 + 4);
  v74 = *(v68 + 5);
  if (v36 == v74)
  {
    v37 = a2;
    goto LABEL_121;
  }

  v37 = a2;
  while (2)
  {
    v38 = v37[84];
    v39 = v37[85];
    v40 = *v36;
    if (*v36)
    {
      CFRetain(*v36);
    }

    if (v38 == v39)
    {
LABEL_95:
      if (v40)
      {
        goto LABEL_98;
      }

      goto LABEL_99;
    }

    while (2)
    {
      if (*(*v38 + 64) != 1)
      {
        goto LABEL_93;
      }

      DSP_Dictionariable::SingleKvp<std::string>::value(v88, *v38 + 24);
      if (!v40)
      {
        v65 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v65, "Could not construct");
        __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::convert_to<std::string,0>(&v84, v40);
      v41 = v86;
      v43 = v84;
      v42 = v85;
      v44 = HIBYTE(v88[0].__r_.__value_.__r.__words[2]);
      v45 = SHIBYTE(v88[0].__r_.__value_.__r.__words[2]);
      v46 = v88[0].__r_.__value_.__r.__words[0];
      if ((v88[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = v88;
      }

      else
      {
        v44 = v88[0].__r_.__value_.__l.__size_;
        v47 = v88[0].__r_.__value_.__r.__words[0];
      }

      if (v86 < 0)
      {
        v48 = v84;
      }

      else
      {
        v42 = v86;
        v48 = &v84;
      }

      if (v42 >= v44)
      {
        v49 = v44;
      }

      else
      {
        v49 = v42;
      }

      v50 = v42 == v44;
      if (memcmp(v47, v48, v49))
      {
        v50 = 0;
      }

      if (v41 < 0)
      {
        operator delete(v43);
        if ((v45 & 0x80000000) == 0)
        {
          goto LABEL_89;
        }
      }

      else if ((v45 & 0x80000000) == 0)
      {
LABEL_89:
        if (v50)
        {
          break;
        }

        goto LABEL_93;
      }

      operator delete(v46);
      if (!v50)
      {
LABEL_93:
        v38 += 16;
        if (v38 == v39)
        {
          v38 = v39;
          v37 = a2;
          goto LABEL_95;
        }

        continue;
      }

      break;
    }

    v37 = a2;
LABEL_98:
    CFRelease(v40);
LABEL_99:
    if (v38 == v37[85])
    {
      v52 = v69;
      v53 = *v69;
      if (!*v69)
      {
        goto LABEL_110;
      }

      do
      {
        v54 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v53[4], v36);
        if (v54 <= kCFCompareGreaterThan)
        {
          v52 = v53;
        }

        v53 = v53[v54 > kCFCompareGreaterThan];
      }

      while (v53);
      if (v52 != v69 && applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v36, v52 + 4) <= kCFCompareGreaterThan)
      {
        v55 = *(v52 + 40);
      }

      else
      {
LABEL_110:
        v55 = 0;
      }

      if (*(v36 + 16) & 1) != 0 || (*(v36 + 28) & 1) != 0 || (*(v36 + 36) & 1) != 0 || ((*(v36 + 44) | v55))
      {
        v51 = v72 | 8;
LABEL_116:
        v72 = v51;
      }
    }

    else if (*(v36 + 16) == 1 && *(*v38 + 272) == 1 && *(v36 + 8) != *(*v38 + 264))
    {
      v51 = v72 | 1;
      goto LABEL_116;
    }

    v36 += 48;
    if (v36 != v74)
    {
      continue;
    }

    break;
  }

LABEL_121:
  v56 = *(v68 + 7);
  v57 = *(v68 + 8);
  v58 = v72;
  if (v56 != v57)
  {
    LOBYTE(v59) = 0;
    while ((v59 & 1) == 0)
    {
      v60 = *v56;
      DSP_Host_Types::FormatDescription::get_asbd(v88, (v37 + 15));
      if (v60 == *&v88[0].__r_.__value_.__l.__data_ && (v61 = *(v56 + 28), DSP_Host_Types::FormatDescription::get_asbd(&v84, (a2 + 15)), v32 = v61 == v87, v37 = a2, v32))
      {
        v56 += 40;
        LOBYTE(v59) = 1;
        if (v56 == v57)
        {
          break;
        }
      }

      else
      {
        v62 = *v56;
        DSP_Host_Types::FormatDescription::get_asbd(v88, (v37 + 34));
        if (v62 == *&v88[0].__r_.__value_.__l.__data_)
        {
          v63 = *(v56 + 28);
          DSP_Host_Types::FormatDescription::get_asbd(&v84, (a2 + 34));
          v32 = v63 == v87;
          v37 = a2;
          v59 = v32;
        }

        else
        {
          v59 = 0;
        }

        v56 += 40;
        if (v56 == v57)
        {
          if (!v59)
          {
            v58 = v72 | 2;
          }

          break;
        }
      }
    }
  }

  if (a3)
  {
    *a3 = v58;
  }

  v75 = &unk_1F598DC40;
  v88[0].__r_.__value_.__r.__words[0] = &v82;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](v88);
  DSP_Host_Types::IOContextDescription::~IOContextDescription(v80);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v79);
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(&v78);
  v75 = &unk_1F598DC90;
  if (v77 == 1 && cf)
  {
    CFRelease(cf);
  }

  return v58 == 0;
}

void sub_1DE6F6A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (*(v20 - 121) < 0)
  {
    operator delete(*(v20 - 144));
  }

  MutationItinerary::AreChangesReconciled(DSP_Host_Types::ConfigurationChangeRequest const&,int *)const::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

const void **MutationItinerary::AreChangesReconciled(DSP_Host_Types::ConfigurationChangeRequest const&,int *)const::$_1::~$_1(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t DSP_Host_Types::FormatDescription::get_asbd(uint64_t this, uint64_t a2)
{
  if (*(a2 + 124) == 1)
  {
    v2 = *(a2 + 120);
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 40);
  }

  else
  {
    v3 = 48000.0;
  }

  if (*(a2 + 76) == 1)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 1;
  }

  if (*(a2 + 97) == 1)
  {
    v5 = *(a2 + 96);
  }

  else
  {
    v5 = 1;
  }

  v6 = 0.0;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v26 = (v5 & 1) == 0;
      if (v5)
      {
        v12 = 3084;
      }

      else
      {
        v12 = 3116;
      }

      v13 = 4 * v4;
      if (v26)
      {
        v13 = 4;
      }

      v15 = 32;
    }

    else
    {
      if (v2 != 4)
      {
        v7 = (v5 & 1) == 0;
        if (v5)
        {
          v8 = 12;
        }

        else
        {
          v8 = 44;
        }

        v9 = 4 * v4;
        if (v7)
        {
          v9 = 4;
        }

        v10 = v2 == 5;
        if (v2 == 5)
        {
          v11 = 1819304813;
        }

        else
        {
          v3 = 0.0;
          v11 = 0;
        }

        if (v2 == 5)
        {
          v12 = v8;
        }

        else
        {
          v12 = 0;
        }

        if (v10)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0;
        }

        v14 = v10;
        if (v10)
        {
          v15 = 32;
        }

        else
        {
          v4 = 0;
          v15 = 0;
        }

        goto LABEL_89;
      }

      v27 = (v5 & 1) == 0;
      if (v5)
      {
        v12 = 9;
      }

      else
      {
        v12 = 41;
      }

      v13 = 8 * v4;
      if (v27)
      {
        v13 = 8;
      }

      v15 = 64;
    }

    v14 = 1;
    v11 = 1819304813;
    goto LABEL_89;
  }

  if (v5)
  {
    v16 = 9;
  }

  else
  {
    v16 = 41;
  }

  v17 = 4 * v4;
  if ((v5 & 1) == 0)
  {
    v17 = 4;
  }

  v18 = (v5 & 1) == 0;
  if (v5)
  {
    v19 = 12;
  }

  else
  {
    v19 = 44;
  }

  v20 = 2 * v4;
  if (v18)
  {
    v20 = 2;
  }

  if (v2 == 2)
  {
    v6 = v3;
    v21 = 1819304813;
  }

  else
  {
    v21 = 0;
  }

  if (v2 != 2)
  {
    v19 = 0;
    v20 = 0;
  }

  v22 = v2 == 2;
  if (v2 == 2)
  {
    v23 = v4;
  }

  else
  {
    v23 = 0;
  }

  if (v2 == 2)
  {
    v24 = 16;
  }

  else
  {
    v24 = 0;
  }

  v25 = v2 == 1;
  if (v2 == 1)
  {
    v11 = 1819304813;
  }

  else
  {
    v3 = v6;
    v11 = v21;
  }

  if (v2 == 1)
  {
    v12 = v16;
  }

  else
  {
    v12 = v19;
  }

  if (v25)
  {
    v13 = v17;
  }

  else
  {
    v13 = v20;
  }

  v14 = v25 || v22;
  if (v25)
  {
    v15 = 32;
  }

  else
  {
    v4 = v23;
    v15 = v24;
  }

LABEL_89:
  *this = v3;
  *(this + 8) = v11;
  *(this + 12) = v12;
  *(this + 16) = v13;
  *(this + 20) = v14;
  *(this + 24) = v13;
  *(this + 28) = v4;
  *(this + 32) = v15;
  *(this + 36) = 0;
  return this;
}

uint64_t MutationItinerary::AreChangesReconciled(DSP_Host_Types::ConfigurationChangeRequest const&,int *)const::$_0::~$_0(uint64_t a1)
{
  *a1 = &unk_1F598DC40;
  v4 = (a1 + 672);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v4);
  DSP_Host_Types::IOContextDescription::~IOContextDescription((a1 + 72));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((a1 + 48));
  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp((a1 + 24));
  *a1 = &unk_1F598DC90;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t HALS_Device::ExecuteWorkSyncOnConfigChangeQueue(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = *(*v3 + 48);

  return v4();
}

void HALS_Device::PerformNonDriverConfigChange(HALS_Device *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
    v5 = 136315394;
    v6 = "HALS_Device.cpp";
    v7 = 1024;
    v8 = 6164;
    _os_log_error_impl(&dword_1DE1F9000, v4, OS_LOG_TYPE_ERROR, "%32s:%-5d PerformNonDriverConfigChange() remains unimplemented for this type of device", &v5, 0x12u);
  }
}

uint64_t *HALS_Device::CopyDSPSettingsForClient@<X0>(HALS_Device *this@<X0>, HALS_Client *a2@<X2>, char a3@<W1>, void *a4@<X8>)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3002000000;
  v13 = __Block_byref_object_copy__296;
  v14 = __Block_byref_object_dispose__297;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZNK11HALS_Device24CopyDSPSettingsForClientEbP11HALS_Client_block_invoke;
  v8[3] = &unk_1E8679318;
  v8[4] = &v10;
  v8[5] = this;
  v9 = a3;
  v8[6] = a2;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v8);
  v6 = v11[5];
  v11[5] = 0;
  *a4 = v6;
  _Block_object_dispose(&v10, 8);
  return std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v15, 0);
}

void sub_1DE6F6FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100]((v16 + 40), 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__296(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t *___ZNK11HALS_Device24CopyDSPSettingsForClientEbP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 632);
  if (v2)
  {
    HALS_Device_HostedDSP::CopyDSPSettingsForClient(&v6, *v2, *(a1 + 56), *(a1 + 48));
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 32) + 8);
  v6 = 0;
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100]((v4 + 40), v3);
  return std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v6, 0);
}

void sub_1DE6F7068(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_Device::HandleHostedDSPConfigurationChange(HALS_Device *this, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(this + 4);
    v10 = 136315906;
    v11 = "HALS_Device.cpp";
    v12 = 1024;
    v13 = 5809;
    v14 = 1024;
    v15 = v9;
    v16 = 1024;
    v17 = a2;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] Hosted DSP changed (Device ID: %d) (Client ID: %d).", &v10, 0x1Eu);
  }

  return (*(*this + 992))(this, 1, a2);
}

void HALS_Device::GetDefaultChannelLayoutPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, unsigned int a12)
{
  v12 = a12;
  *a6 = 0;
  *(a6 + 8) = a12;
  if (a12)
  {
    v13 = (a6 + 16);
    do
    {
      *(v13 - 1) = -1;
      *v13 = 0;
      v13[1] = 0;
      v13 = (v13 + 20);
      --v12;
    }

    while (v12);
  }

  *a5 = a10;
}

void HALS_Device::GetNearestStartTime(HALS_Device *this, AudioTimeStamp *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "HALS_Device.cpp";
      v14 = 1024;
      v15 = 2512;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::GetNearestStartTime: no IO context", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "HALS_Device.cpp";
      v14 = 1024;
      v15 = 2514;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::GetNearestStartTime: couldn't find the IO context", &v12, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    *v11 = off_1F5991DD8;
    v11[2] = 1852797029;
  }

  (*(**(v7 + 104) + 520))(*(v7 + 104), a2, a3);
  HALS_ObjectMap::ReleaseObject(v8, v9);
}

void sub_1DE6F7464(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_Device::GetInternalIOContextID(HALS_Device *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if ((*(*this + 840))(this))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZNK11HALS_Device22GetInternalIOContextIDEv_block_invoke;
    v5[3] = &unk_1E8678C38;
    v5[4] = &v6;
    v5[5] = this;
    v2 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v2, v5);
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1DE6F759C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void HALS_Device::TranslateTime(HALS_Device *this, const AudioTimeStamp *a2, AudioTimeStamp *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "HALS_Device.cpp";
      v14 = 1024;
      v15 = 2504;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::TranslateTime: no IO context", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "HALS_Device.cpp";
      v14 = 1024;
      v15 = 2506;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::TranslateTime: couldn't find the IO context", &v12, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    *v11 = off_1F5991DD8;
    v11[2] = 1852797029;
  }

  (*(**(v7 + 104) + 512))(*(v7 + 104), a2, a3);
  HALS_ObjectMap::ReleaseObject(v8, v9);
}

void sub_1DE6F7818(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::GetCurrentTime(HALS_Device *this, AudioTimeStamp *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Device.cpp";
      v12 = 1024;
      v13 = 2496;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::GetCurrentTime: no IO context", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Device.cpp";
      v12 = 1024;
      v13 = 2498;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::GetCurrentTime: couldn't find the IO context", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 1852797029;
  }

  (*(**(v5 + 104) + 504))(*(v5 + 104), a2);
  HALS_ObjectMap::ReleaseObject(v6, v7);
}

void sub_1DE6F7A8C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::Server_Internal_StopIOProcID(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v14 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Device.cpp";
      v12 = 1024;
      v13 = 2488;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StopIOProcID: no IO context", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Device.cpp";
      v12 = 1024;
      v13 = 2490;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StopIOProcID: couldn't find the IO context", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 1852797029;
  }

  (*(**(v5 + 104) + 536))(*(v5 + 104), a2);
  HALS_ObjectMap::ReleaseObject(v6, v7);
}

void sub_1DE6F7D00(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::Server_Internal_StartIOProcIDAtTime(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), AudioTimeStamp *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALS_Device.cpp";
      v16 = 1024;
      v17 = 2480;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StartIOProcIDAtTime: no IO context", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v9 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v10 = v9;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALS_Device.cpp";
      v16 = 1024;
      v17 = 2482;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StartIOProcIDAtTime: couldn't find the IO context", &v14, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    *v13 = off_1F5991DD8;
    v13[2] = 1852797029;
  }

  HALS_IOContext::Server_Internal_StartIOProcID(v9, a2, a3, a4);
  HALS_ObjectMap::ReleaseObject(v10, v11);
}

void sub_1DE6F7F64(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::Server_Internal_StartIOProcID(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v14 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Device.cpp";
      v12 = 1024;
      v13 = 2472;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StartIOProcID: no IO context", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALS_Device.cpp";
      v12 = 1024;
      v13 = 2474;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::Server_Internal_StartIOProcID: couldn't find the IO context", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 1852797029;
  }

  HALS_IOContext::Server_Internal_StartIOProcID(v5, a2, 0, 0);
  HALS_ObjectMap::ReleaseObject(v6, v7);
}

void sub_1DE6F81B8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::Server_Internal_RemoveIOProc(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v11 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315394;
      *&v10[4] = "HALS_Device.cpp";
      *&v10[12] = 1024;
      *&v10[14] = 2464;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::RemoveIOProc: no IO context", v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315394;
      *&v10[4] = "HALS_Device.cpp";
      *&v10[12] = 1024;
      *&v10[14] = 2466;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::RemoveIOProc: couldn't find the IO context", v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 1852797029;
  }

  *v10 = v5;
  *&v10[8] = a2;
  (*(**(v5 + 104) + 376))(*(v5 + 104), caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_RemoveIOProc(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>, v10);
  HALS_ObjectMap::ReleaseObject(v6, v7);
}

void sub_1DE6F8440(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::Server_Internal_AddIOProc(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "HALS_Device.cpp";
      *&v14[12] = 1024;
      *&v14[14] = 2456;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::AddIOProc: no IO context", v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v8 = v7;
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *v14 = 136315394;
    *&v14[4] = "HALS_Device.cpp";
    *&v14[12] = 1024;
    *&v14[14] = 2458;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "%25s:%-5d  HALS_Device::AddIOProc: couldn't find the IO context";
    goto LABEL_12;
  }

  if (!a2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *v14 = 136315394;
    *&v14[4] = "HALS_IOContext.cpp";
    *&v14[12] = 1024;
    *&v14[14] = 451;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "%25s:%-5d  HALS_IOContext::Server_Internal_AddIOProc: can't add an IOProc without an IOProc";
LABEL_12:
    _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, v12, v14, 0x12u);
LABEL_13:
    v13 = __cxa_allocate_exception(0x10uLL);
    *v13 = off_1F5991DD8;
    v13[2] = 1852797029;
  }

  *v14 = v7;
  *&v14[8] = a2;
  *&v14[16] = a3;
  (*(**(v7 + 104) + 376))(*(v7 + 104), caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_AddIOProc(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *),void *)::$_0>, v14);
  HALS_ObjectMap::ReleaseObject(v8, v9);
}

void sub_1DE6F8750(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Device::Server_Internal_DestroyIOProcID(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v11 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315394;
      *&v10[4] = "HALS_Device.cpp";
      *&v10[12] = 1024;
      *&v10[14] = 2448;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::DestroyIOProcID: no IO context", v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315394;
      *&v10[4] = "HALS_Device.cpp";
      *&v10[12] = 1024;
      *&v10[14] = 2450;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::DestroyIOProcID: couldn't find the IO context", v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    *v9 = off_1F5991DD8;
    v9[2] = 1852797029;
  }

  *v10 = v5;
  *&v10[8] = a2;
  (*(**(v5 + 104) + 376))(*(v5 + 104), caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_DestroyIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>, v10);
  HALS_ObjectMap::ReleaseObject(v6, v7);
}

void sub_1DE6F89D8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_Device::Server_Internal_CreateIOProcIDWithBlock(HALS_Device *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 840))(a1) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2440;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::CreateIOProcIDWithBlock: no IO context", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(a1);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v8 = v7;
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2442;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  HALS_Device::CreateIOProcIDWithBlock: couldn't find the IO context";
    goto LABEL_12;
  }

  if (!a3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_IOContext.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 382;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  HALS_IOContext::Server_Internal_CreateIOProcIDWithBlock: can't create an IOProcID without an IOBlock";
LABEL_12:
    _os_log_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
LABEL_13:
    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = off_1F5991DD8;
    v15[2] = 1852797029;
  }

  v16 = 0;
  *buf = v7;
  *&buf[8] = &v16;
  *&buf[16] = a2;
  v18 = a3;
  (*(**(v7 + 104) + 376))(*(v7 + 104), caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_CreateIOProcIDWithBlock(dispatch_queue_s *,void({block_pointer})(AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*))::$_0>, buf);
  v9 = v16;
  HALS_ObjectMap::ReleaseObject(v8, v10);
  return v9;
}

void sub_1DE6F8CF8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_Device::Server_Internal_CreateIOProcID(HALS_Device *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (((*(*this + 840))(this) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2432;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::CreateIOProcID: no IO context", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1970171760;
  }

  InternalIOContextID = HALS_Device::GetInternalIOContextID(this);
  v7 = HALS_ObjectMap::CopyObjectByObjectID(InternalIOContextID);
  v8 = v7;
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2434;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  HALS_Device::CreateIOProcID: couldn't find the IO context";
    goto LABEL_12;
  }

  if (!a2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_IOContext.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 341;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  HALS_IOContext::Server_Internal_CreateIOProcID: can't create an IOProcID without an IOProc";
LABEL_12:
    _os_log_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
LABEL_13:
    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = off_1F5991DD8;
    v15[2] = 1852797029;
  }

  v16 = 0;
  *buf = v7;
  *&buf[8] = &v16;
  *&buf[16] = a2;
  v18 = a3;
  (*(**(v7 + 104) + 376))(*(v7 + 104), caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_CreateIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *),void *)::$_0>, buf);
  v9 = v16;
  HALS_ObjectMap::ReleaseObject(v8, v10);
  return v9;
}

void sub_1DE6F9018(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL HALS_Device::_ClientDied(std::mutex *this, HALS_Client *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = *&this[8].__m_.__opaque[24];
  v5 = *&this[8].__m_.__opaque[32];
  if (v4 != v5)
  {
    while (*v4 != *(a2 + 4))
    {
      v4 += 48;
      if (v4 == v5)
      {
        goto LABEL_14;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_14:
    v14 = 0;
  }

  else
  {
    v6 = (*(this->__m_.__sig + 744))(this);
    v7 = *(v4 + 32);
    v8 = *&this[8].__m_.__opaque[32];
    if (v4 + 48 != v8)
    {
      do
      {
        v9 = v4;
        v10 = *(v4 + 48);
        v4 += 48;
        *v9 = v10;
        CACFDictionary::operator=(v9 + 8, v9 + 56);
        *(v9 + 24) = *(v9 + 72);
        *(v9 + 37) = *(v9 + 85);
      }

      while (v9 + 96 != v8);
      v8 = *&this[8].__m_.__opaque[32];
    }

    for (; v8 != v4; v8 -= 48)
    {
      CACFDictionary::~CACFDictionary((v8 - 40));
    }

    *&this[8].__m_.__opaque[32] = v4;
    (*(this->__m_.__sig + 752))(this, a2);
    if (v7)
    {
      v11 = HALS_ObjectMap::CopyObjectByObjectID(*(a2 + 4));
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 240);
      }

      else
      {
        v13 = -1;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a2 + 4);
        v16 = (*(this->__m_.__sig + 224))(this);
        v17 = *&this->__m_.__opaque[8];
        v55 = 136316418;
        v56 = "HALS_Device.cpp";
        v57 = 1024;
        v58 = 2320;
        v59 = 1024;
        v60 = v15;
        v61 = 1024;
        v62 = v13;
        v63 = 2080;
        v64 = v16;
        v65 = 1024;
        v66 = v17;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_ClientDied: client %u (pid %d) unducking on device %s (%u)", &v55, 0x2Eu);
      }

      HALS_Device::DumpDuckHistory(this, 0, 0, 0);
      v18 = (*(this->__m_.__sig + 272))(this);
      (*(this->__m_.__sig + 800))(this, 0.0, v18 * 0.0500000007);
      HALS_ObjectMap::ReleaseObject(v12, v19);
    }

    v14 = v6 != (*(this->__m_.__sig + 744))(this);
  }

  std::mutex::lock(this + 11);
  if (a2)
  {
    v20 = *(a2 + 4);
  }

  else
  {
    if (this[10].__m_.__opaque[12] != 1)
    {
      goto LABEL_58;
    }

    v20 = 0;
  }

  v21 = &this[10].__m_.__opaque[16];
  v22 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[10].__m_.__opaque[16], v20);
  if (v22)
  {
    v23 = v22;
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v22);
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

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v50 = 0;
      v51 = 0;
      v52 = 47;
      do
      {
        v53 = &aLibraryCachesC_39[v50];
        if (v52 == 47)
        {
          v51 = &aLibraryCachesC_39[v50];
        }

        v52 = v53[1];
        if (!v53[1])
        {
          break;
        }

        v43 = v50++ >= 0xFFF;
      }

      while (!v43);
      if (v51)
      {
        v54 = v51 + 1;
      }

      else
      {
        v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device_HostedDSP_ClientInfo.cpp";
      }

      v55 = 136315650;
      v56 = v54;
      v57 = 1024;
      v58 = 545;
      v59 = 1024;
      v60 = v20;
      _os_log_debug_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Removing Hosted DSP streams for Client ID: %d", &v55, 0x18u);
    }

    HALS_Device_HostedDSP_ClientInfo::PerClientInfo::deactivate_stream((v23 + 3), 1);
    HALS_Device_HostedDSP_ClientInfo::PerClientInfo::deactivate_stream((v23 + 3), 0);
    v28 = *&this[10].__m_.__opaque[24];
    v29 = v23[1];
    v30 = vcnt_s8(v28);
    v30.i16[0] = vaddlv_u8(v30);
    if (v30.u32[0] > 1uLL)
    {
      if (v29 >= *&v28)
      {
        v29 %= *&v28;
      }
    }

    else
    {
      v29 &= *&v28 - 1;
    }

    v31 = *(*v21 + 8 * v29);
    do
    {
      v32 = v31;
      v31 = *v31;
    }

    while (v31 != v23);
    if (v32 == &this[10].__m_.__opaque[32])
    {
      goto LABEL_48;
    }

    v33 = v32[1];
    if (v30.u32[0] > 1uLL)
    {
      if (v33 >= *&v28)
      {
        v33 %= *&v28;
      }
    }

    else
    {
      v33 &= *&v28 - 1;
    }

    if (v33 != v29)
    {
LABEL_48:
      if (!*v23)
      {
        goto LABEL_49;
      }

      v34 = *(*v23 + 8);
      if (v30.u32[0] > 1uLL)
      {
        if (v34 >= *&v28)
        {
          v34 %= *&v28;
        }
      }

      else
      {
        v34 &= *&v28 - 1;
      }

      if (v34 != v29)
      {
LABEL_49:
        *(*v21 + 8 * v29) = 0;
      }
    }

    v35 = *v23;
    if (*v23)
    {
      v36 = *(v35 + 8);
      if (v30.u32[0] > 1uLL)
      {
        if (v36 >= *&v28)
        {
          v36 %= *&v28;
        }
      }

      else
      {
        v36 &= *&v28 - 1;
      }

      if (v36 != v29)
      {
        *(*v21 + 8 * v36) = v32;
        v35 = *v23;
      }
    }

    *v32 = v35;
    *v23 = 0;
    --*&this[10].__m_.__opaque[40];
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,void *>>>::operator()[abi:ne200100](1, v23);
  }

LABEL_58:
  std::mutex::unlock(this + 11);
  v37 = *&this[9].__m_.__opaque[40];
  if (v37)
  {
    v38 = *(a2 + 4);
    std::mutex::lock((v37 + 32));
    v39 = *(v37 + 104);
    if (v39)
    {
      v40 = v37 + 104;
      v41 = *(v37 + 104);
      do
      {
        v42 = *(v41 + 32);
        v43 = v42 >= v38;
        v44 = v42 < v38;
        if (v43)
        {
          v40 = v41;
        }

        v41 = *(v41 + 8 * v44);
      }

      while (v41);
      if (v40 != v37 + 104 && *(v40 + 32) <= v38)
      {
        v45 = *(v40 + 8);
        if (v45)
        {
          do
          {
            v46 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          v47 = v40;
          do
          {
            v46 = v47[2];
            v48 = *v46 == v47;
            v47 = v46;
          }

          while (!v48);
        }

        if (*(v37 + 96) == v40)
        {
          *(v37 + 96) = v46;
        }

        --*(v37 + 112);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v39, v40);
        std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,HALS_DSPHostPerClientConfiguration::PerClientProperties>,0>(v40 + 32);
        operator delete(v40);
      }
    }

    std::mutex::unlock((v37 + 32));
  }

  return v14;
}

void HALS_Device::DumpDuckHistory(void *a1, int a2, uint64_t a3, int a4)
{
  v6 = a2;
  v24 = *MEMORY[0x1E69E9840];
  __p = 0;
  v19 = 0;
  v20 = 0;
  if (a3 && a2)
  {
    if (a4)
    {
      v8 = a4;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "    ", 4);
        --v8;
      }

      while (v8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "Duck History:", 13);
  }

  else
  {
    HIBYTE(v20) = 10;
    LOWORD(v19) = 8250;
    __p = *"\tHistory: ";
  }

  v9 = a1[72];
  v10 = a1[75];
  v11 = (v9 + 8 * (v10 >> 7));
  if (a1[73] == v9)
  {
    v12 = 0;
    v15 = 0;
    v14 = (v9 + 8 * ((a1[76] + v10) >> 7));
  }

  else
  {
    v12 = &(*v11)[4 * (a1[75] & 0x7FLL)];
    v13 = a1[76] + v10;
    v14 = (v9 + 8 * (v13 >> 7));
    v15 = &(*v14)[4 * (v13 & 0x7F)];
  }

  buf[0] = v6;
  *&v23[4] = &__p;
  *&v23[12] = a3;
  *&v23[20] = a4;
  v21 = buf;
  if (v11 != v14)
  {
    std::for_each[abi:ne200100]<std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0>(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)::{lambda(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)#1}::operator()<HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const*>(&v21, v12, *v11 + 512);
    for (i = v11 + 1; i != v14; ++i)
    {
      std::for_each[abi:ne200100]<std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0>(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)::{lambda(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)#1}::operator()<HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const*>(&v21, *i, *i + 512);
    }

    v12 = *v14;
  }

  std::for_each[abi:ne200100]<std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0>(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)::{lambda(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)#1}::operator()<HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const*>(&v21, v12, v15);
  if ((v6 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    if (v20 < 0)
    {
      p_p = __p;
    }

    *buf = 136315650;
    *v23 = "HALS_Device.cpp";
    *&v23[8] = 1024;
    *&v23[10] = 5381;
    *&v23[14] = 2080;
    *&v23[16] = p_p;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  %s", buf, 0x1Cu);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }
}

void sub_1DE6F9970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::for_each[abi:ne200100]<std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0>(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)::{lambda(std::__deque_iterator<HALS_Device::DuckHistoryItem,HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const&,HALS_Device::DuckHistoryItem const* const*,long,128l>,HALS_Device::DumpDuckHistory(BOOL,std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> *,unsigned int)::$_0)#1}::operator()<HALS_Device::DuckHistoryItem const*,HALS_Device::DuckHistoryItem const*>(unsigned __int8 **a1, time_t *a2, time_t *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = **a1;
  *v37 = *(*a1 + 1);
  *&v37[3] = *(*a1 + 1);
  v6 = *(*a1 + 1);
  v5 = *(*a1 + 2);
  v7 = *(*a1 + 3);
  v34 = v7;
  if (a2 != a3)
  {
    v9 = a2;
    v32 = **a1;
    v10 = v4 & (v5 != 0);
    v31 = *(*a1 + 2);
    v11 = (v5 + 16);
    v36 = v7;
    v35 = v7 + 1;
    v12 = MEMORY[0x1E69E5318];
    do
    {
      v13 = localtime(v9);
      strftime(__s, 0x78uLL, "%x - %X", v13);
      if (v10)
      {
        v15 = *(v9 + 2);
        v16 = *(v9 + 2);
        v17 = *(v9 + 24);
        if (v36 != -1)
        {
          v18 = v35;
          do
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "    ", 4);
            --v18;
          }

          while (v18);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Time: ", 6);
        v19 = strlen(__s);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, __s, v19);
        std::ios_base::getloc((v11 + *(*v11 - 24)));
        v20 = std::locale::use_facet(v39, v12);
        (v20->__vftable[2].~facet_0)(v20, 10);
        std::locale::~locale(v39);
        std::ostream::put();
        std::ostream::flush();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Client: ", 8);
        v21 = MEMORY[0x1E12C1200](v11, v15);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(v39, v12);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v39);
        std::ostream::put();
        std::ostream::flush();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Volume Scalar: ", 15);
        v23 = MEMORY[0x1E12C11E0](v11, v16);
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v24 = std::locale::use_facet(v39, v12);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v39);
        std::ostream::put();
        std::ostream::flush();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Opted Out: ", 11);
        v25 = MEMORY[0x1E12C11D0](v11, v17);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(v39, v12);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v39);
        std::ostream::put();
        std::ostream::flush();
      }

      else
      {
        caulk::make_string(&v38, "%s: %d  %lf, %u", v14, __s, *(v9 + 2), v9[2], *(v9 + 24));
        v27 = std::string::append(&v38, ", ", 2uLL);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v40 = v27->__r_.__value_.__r.__words[2];
        *&v39[0].__locale_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if (v40 >= 0)
        {
          locale = v39;
        }

        else
        {
          locale = v39[0].__locale_;
        }

        if (v40 >= 0)
        {
          v30 = HIBYTE(v40);
        }

        else
        {
          v30 = v39[1].__locale_;
        }

        std::string::append(v6, locale, v30);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39[0].__locale_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      v9 += 4;
    }

    while (v9 != a3);
    v3 = *a1;
    v4 = v32;
    v5 = v31;
  }

  *__s = *v37;
  *&__s[3] = *&v37[3];
  *v3 = v4;
  *(v3 + 1) = *__s;
  *(v3 + 1) = *&__s[3];
  *(v3 + 1) = v6;
  *(v3 + 2) = v5;
  *(v3 + 3) = v34;
}

void sub_1DE6F9E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_Device::_SetClientClockDeviceDeviceUID(HALS_Device *this, uint64_t a2, const __CFString *cf)
{
  v3 = cf;
  if (cf && (CFRetain(cf), v6 = CFGetTypeID(v3), v6 != CFStringGetTypeID()))
  {
    v22 = 0;
    CFRelease(v3);
    v3 = 0;
  }

  else
  {
    v22 = v3;
  }

  v7 = (*(*this + 816))(this, a2);
  cfa = v7;
  if (v7)
  {
    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v7 = cfa;
  }

  v9 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &v22);
  if (v9)
  {
    if (!v3)
    {
      v17 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v17, "Could not construct");
      __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(&v19, v3);
    v10 = *(this + 63);
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = a2;
      if (v10 <= a2)
      {
        v12 = a2 % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & a2;
    }

    v13 = *(*(this + 62) + 8 * v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      v15 = v14[1];
      if (v15 == a2)
      {
        if (*(v14 + 4) == a2)
        {
          if (*(v14 + 47) < 0)
          {
            operator delete(v14[3]);
          }

          *(v14 + 3) = v19;
          v14[5] = v20;
          break;
        }
      }

      else
      {
        if (v11.u32[0] > 1uLL)
        {
          if (v15 >= v10)
          {
            v15 %= v10;
          }
        }

        else
        {
          v15 &= v10 - 1;
        }

        if (v15 != v12)
        {
          goto LABEL_27;
        }
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_27;
      }
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v9 != kCFCompareEqualTo;
}

void sub_1DE6FA214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](1, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a16);
  applesauce::CF::StringRef::~StringRef(&a17);
  _Unwind_Resume(a1);
}

CFTypeRef HALS_Device::_CopyClientClockDeviceDeviceUID(HALS_Device *this, unsigned int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(this + 62, a2);
  if (!v2)
  {
    return 0;
  }

  v5 = v2[3];
  v3 = v2 + 3;
  v4 = v5;
  if (*(v3 + 23) >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  OS::CF::String::String(&v9, v6);
  v7 = CFRetain(cf);
  OS::CF::UntypedObject::~UntypedObject(&v9);
  return v7;
}

float HALS_Device::_GetCombinedVolumeScalar(HALS_Device *this, HALS_ObjectMap *a2, unsigned int a3)
{
  v3 = a2;
  v31 = *MEMORY[0x1E69E9840];
  v5 = *(this + 68);
  v6 = *(this + 69);
  v7 = v5;
  if (v5 != v6)
  {
    v7 = *(this + 68);
    while (*v7 != a2)
    {
      v7 += 48;
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 != v6)
  {
    v8 = *(v7 + 4 * a3 + 24);
    v9 = 0;
    if ((a3 & 1) == 0)
    {
      v8 = v8 * *(v7 + 40);
    }

    goto LABEL_18;
  }

LABEL_9:
  if (v5 == v6)
  {
    return 1.0;
  }

  v10 = 1.0;
  do
  {
    if (((*(v5 + 32) & 1) != 0 || *(v5 + 44) == 1) && *(v5 + 36) < v10)
    {
      v10 = *(v5 + 36);
    }

    v5 += 48;
  }

  while (v5 != v6);
  v8 = 1.0;
  if (v10 != 1.0)
  {
    v9 = 1;
    v8 = v10;
LABEL_18:
    v11 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 240);
    }

    else
    {
      v13 = -1;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = "";
      v17 = 136316674;
      v18 = "HALS_Device.cpp";
      v19 = 1024;
      v20 = 2291;
      if (v9)
      {
        v15 = " not";
      }

      v21 = 2082;
      v22 = this + 164;
      v23 = 1024;
      v24 = v3;
      v25 = 1024;
      v26 = v13;
      v27 = 2082;
      v28 = v15;
      v29 = 2048;
      v30 = v8;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_GetCombinedVolumeScalar: %{public}s client %u (pid %d) is%{public}s present, and is ducked with a combined volume scalar of %f", &v17, 0x3Cu);
    }

    HALS_ObjectMap::ReleaseObject(v12, v14);
  }

  return v8;
}

void sub_1DE6FA524(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALS_Device::_UpdateClientVolumeScalarDucking(HALS_Device *this, double a2, double a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = *(this + 68);
  v7 = *(this + 69);
  if (v6 != v7)
  {
    v8 = 1.0;
    v9 = *(this + 68);
    do
    {
      if (((*(v9 + 32) & 1) != 0 || *(v9 + 44) == 1) && *(v9 + 36) < v8)
      {
        v8 = *(v9 + 36);
      }

      v9 += 48;
    }

    while (v9 != v7);
    v10 = MEMORY[0x1E69E9C10];
    do
    {
      if (*(v6 + 32) == 1)
      {
        v6[10] = 1.0;
        v11 = HALS_ObjectMap::CopyObjectByObjectID(*v6);
        v12 = v11;
        if (v11)
        {
          v13 = *(v11 + 240);
        }

        else
        {
          v13 = -1;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *v6;
          v20 = (*(*this + 224))(this);
          v21 = *(this + 4);
          v22 = v6[10];
          *buf = 136316674;
          v34 = "HALS_Device.cpp";
          v35 = 1024;
          v36 = 2221;
          v37 = 1024;
          v38 = v19;
          v39 = 1024;
          v40 = v13;
          v41 = 2080;
          v42 = v20;
          v43 = 1024;
          v44 = v21;
          v45 = 2048;
          v46 = v22;
          _os_log_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_UpdateClientVolumeScalarDucking: client %u (pid %d) is a ducker so its ducked volume scalar on device %s (%u) is %f", buf, 0x38u);
        }
      }

      else if (*(v6 + 44) == 1)
      {
        v6[10] = 1.0;
        v14 = HALS_ObjectMap::CopyObjectByObjectID(*v6);
        v12 = v14;
        if (v14)
        {
          v15 = *(v14 + 240);
        }

        else
        {
          v15 = -1;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *v6;
          v24 = (*(*this + 224))(this);
          v25 = *(this + 4);
          v26 = v6[10];
          *buf = 136316674;
          v34 = "HALS_Device.cpp";
          v35 = 1024;
          v36 = 2230;
          v37 = 1024;
          v38 = v23;
          v39 = 1024;
          v40 = v15;
          v41 = 2080;
          v42 = v24;
          v43 = 1024;
          v44 = v25;
          v45 = 2048;
          v46 = v26;
          _os_log_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_UpdateClientVolumeScalarDucking: client %u (pid %d) is opted out from ducking so its ducked volume scalar on device %s (%u) is %f", buf, 0x38u);
        }
      }

      else
      {
        v6[10] = v8;
        v16 = HALS_ObjectMap::CopyObjectByObjectID(*v6);
        v12 = v16;
        if (v16)
        {
          v17 = *(v16 + 240);
        }

        else
        {
          v17 = -1;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *v6;
          v28 = (*(*this + 224))(this);
          v29 = *(this + 4);
          v30 = v6[10];
          *buf = 136316674;
          v34 = "HALS_Device.cpp";
          v35 = 1024;
          v36 = 2239;
          v37 = 1024;
          v38 = v27;
          v39 = 1024;
          v40 = v17;
          v41 = 2080;
          v42 = v28;
          v43 = 1024;
          v44 = v29;
          v45 = 2048;
          v46 = v30;
          _os_log_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Device::_UpdateClientVolumeScalarDucking: client %u (pid %d) is a duckee so its ducked volume scalar on device %s (%u) is %f", buf, 0x38u);
        }
      }

      HALS_ObjectMap::ReleaseObject(v12, v18);
      v6 += 12;
    }

    while (v6 != v7);
  }

  v31 = (*(*this + 408))(this);
  if (v31)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN11HALS_Device32_UpdateClientVolumeScalarDuckingEdd_block_invoke;
    block[3] = &__block_descriptor_tmp_131_19667;
    block[4] = v31;
    *&block[5] = a2;
    *&block[6] = a3;
    AMCP::Utility::Dispatch_Queue::async(this + 784, block);
  }
}