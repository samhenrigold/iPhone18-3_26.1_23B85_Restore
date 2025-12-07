void sub_1DE618BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  *(v33 + 1584) = v32;
  std::vector<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = &a15;
  std::vector<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::~__value_func[abi:ne200100](v34 - 176);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](&a24);
  std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::~__value_func[abi:ne200100](va);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::Meta::Device>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5983EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5983D38;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5983D38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5983D38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5983CB8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::~__func(void *a1)
{
  *a1 = &unk_1F5983CB8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::~__func(void *a1)
{
  *a1 = &unk_1F5983CB8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t FilterIfEngineOnlyNeedsReferenceStream::should_exclude(uint64_t a1, void **a2)
{
  result = (*(***a2 + 136))(**a2);
  if (result)
  {
    return (*(***a2 + 144))(**a2) ^ 1;
  }

  return result;
}

uint64_t FilterClocklessReferenceStreamOnlyEngines::should_exclude(uint64_t a1, void **a2)
{
  result = (*(***a2 + 136))(**a2);
  if (result)
  {
    if ((*(***a2 + 328))(**a2))
    {
      return 0;
    }

    else
    {
      return (*(***a2 + 144))(**a2) ^ 1;
    }
  }

  return result;
}

uint64_t FilterInactiveReferenceStreamOnlyEngines::should_exclude(uint64_t a1, void **a2)
{
  v2 = **a2;
  if (v2[829] == 1)
  {
    return (*(*v2 + 344))(v2) ^ 1;
  }

  else
  {
    return 0;
  }
}

void AMCP::IOContext::~IOContext(AMCP::IOContext *this)
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

AMCP::IOContext *AMCP::IOContext::IOContext(AMCP::IOContext *this, AMCP::System_Context *a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Node::Node(this, a2, a3);
  *v4 = &unk_1F5984028;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x696F636E);
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
      v12 = "IOContext.cpp";
      v13 = 1024;
      v14 = 27;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_iocontext_node)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  return this;
}

void sub_1DE61973C(_Unwind_Exception *a1)
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

AMCP::Object *AMCP::IOContext::IOContext(AMCP::Object *a1, uint64_t a2, CFTypeRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  cf = *a3;
  *a3 = 0;
  AMCP::Node::Node(a1, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  *a1 = &unk_1F5984028;
  v4 = AMCP::Object::constructed_correct_class(a1, 0x696F636E);
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
      *buf = 136315650;
      v12 = "IOContext.cpp";
      v13 = 1024;
      v14 = 34;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_iocontext_node)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE6198D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, char a10)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::IOContext::start_running(AMCP::IOContext *this)
{
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
    v8 = 0x676C6F6273747274;
    v9 = 0;
    v6 = AMCP::Core::Core::call_operation_function<BOOL>(v5, &v8);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

uint64_t AMCP::IOContext::stop_running(AMCP::IOContext *this)
{
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
    v8 = 0x676C6F6273746F70;
    v9 = 0;
    v6 = AMCP::Core::Core::call_operation_function<BOOL>(v5, &v8);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

uint64_t AMCP::IOContext::start_prewarming(AMCP::IOContext *this)
{
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
    v8 = 0x676C6F6273747077;
    v9 = 0;
    v6 = AMCP::Core::Core::call_operation_function<BOOL>(v5, &v8);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

uint64_t AMCP::IOContext::stop_prewarming(AMCP::IOContext *this)
{
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
    v8 = 0x676C6F6273707077;
    v9 = 0;
    v6 = AMCP::Core::Core::call_operation_function<BOOL>(v5, &v8);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

AMCP::Core::Core *AMCP::IOContext::get_transport_state(AMCP::IOContext *this)
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

      v20 = 0x676C6F6274727374;
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
          strcpy(&__p, "trst");
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
        v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Transport_State ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8))
        {
          LODWORD(v7) = AMCP::Core::Operation::call_function<AMCP::Transport_State>(v7);
LABEL_8:
          v9 = 0;
          v10 = v7 & 0xFFFFFF00;
          goto LABEL_15;
        }

        v11 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v11))
        {
          AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v7);
          LODWORD(v7) = AMCP::Thing::convert_to<AMCP::Transport_State>(buf);
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

void sub_1DE619E28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::IOContext::start_at_time(AMCP::IOContext *this, uint64_t a2)
{
  v3 = *(this + 3);
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
  v7 = *(this + 2);
  if (v7)
  {
    v10 = 0x676C6F6273746174;
    v11 = 0;
    v8 = AMCP::Core::Core::call_operation_function<BOOL,unsigned long long>(v7, &v10, a2);
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

unint64_t AMCP::IOContext::get_buffer_frame_size(AMCP::IOContext *this)
{
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
    simple_required = AMCP::Core::Core::get_simple_required_property<1718839674u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

uint64_t AMCP::IOContext::set_buffer_frame_size(AMCP::IOContext *this, int a2)
{
  v9 = a2;
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = AMCP::Core::Core::set_simple_property_value<1718839674u>(v6, &v9);
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v7;
}

unint64_t AMCP::IOContext::get_min_and_max_buffer_frame_size(AMCP::IOContext *this)
{
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      simple_required = AMCP::Core::Core::get_simple_required_property<1718843939u>(v5);
      v7 = simple_required & 0xFFFFFFFF00000000;
      v8 = simple_required;
    }

    else
    {
      v7 = 0x100000000000;
      v8 = 16;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0x100000000000;
    v8 = 16;
  }

  return v8 | v7;
}

float AMCP::IOContext::get_io_cycle_usage(AMCP::IOContext *this)
{
  v2 = *(this + 3);
  simple_required = 1.0;
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 2);
      if (v6)
      {
        simple_required = AMCP::Core::Core::get_simple_required_property<1852012899u>(v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return simple_required;
}

uint64_t AMCP::IOContext::set_io_cycle_usage(AMCP::IOContext *this, float a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return v7;
      }

      v14 = 0x676C6F626E637963;
      v15 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v14))
      {
LABEL_17:
        v7 = 0;
        goto LABEL_19;
      }

      AMCP::Core::Core::find_operation(&v18, v7, &v14);
      v8 = v18;
      if (v18)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,float const&>(v8, &v13);
LABEL_8:
          v10 = 0;
          goto LABEL_14;
        }

        v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
        {
          memset(v16, 0, sizeof(v16));
          *v16 = a2;
          v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
          AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v16);
          if (v17)
          {
            v17(0, v16, 0, 0);
          }

          goto LABEL_8;
        }
      }

      v10 = 1;
LABEL_14:
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if ((v10 & 1) == 0)
      {
        v7 = 1;
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  return 0;
}

void sub_1DE61A1C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  AMCP::Thing::~Thing(va);
  v11 = *(v9 - 40);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61A190);
}

double AMCP::IOContext::get_actual_sample_rate(AMCP::IOContext *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = 48000.0;
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 2);
      if (v6)
      {
        strcpy(buf, "trsabolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v7 = AMCP::Core::Core::get_typed_property_value<double,std::enable_if<true,void>>(v6, buf);
        if ((v8 & 1) == 0)
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
            v15 = 4;
            strcpy(__p, "asrt");
            *buf = 136316418;
            *&buf[4] = "Core.h";
            v17 = 1024;
            v18 = 391;
            v19 = 2080;
            v20 = "optional_value.operator BOOL() == true";
            v21 = 2080;
            v22 = __p;
            v23 = 1024;
            v24 = 1735159650;
            v25 = 1024;
            v26 = 0;
            _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }
          }

          abort();
        }

        v3 = *&v7;
      }

      else
      {
        v3 = 48000.0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v3;
}

void sub_1DE61A3BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::IOContext::get_latency(AMCP::IOContext *this)
{
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
    simple_required = AMCP::Core::Core::get_simple_required_property<1819569763u>(v5, 0x676C6F62u);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::IOContext::get_tail_time(AMCP::IOContext *this)
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
    strcpy(buf, "liatbolg");
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
        strcpy(__p, "tail");
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

void sub_1DE61A5E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::IOContext::get_os_workgroup_handle(AMCP::IOContext *this@<X0>, uint64_t a2@<X8>)
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
    v7 = MEMORY[0x1E69E3C20] + 16;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *a2 = v7;
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  AMCP::Core::Core::get_simple_required_property<2003267184u>(a2, v6);
LABEL_7:

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

uint64_t AMCP::IOContext::set_os_workgroup_handle(AMCP::IOContext *this, const caulk::mach::os_workgroup_interval_managed *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
        goto LABEL_15;
      }

      v14 = 0x676C6F6277676E70;
      v15 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v14))
      {
        goto LABEL_15;
      }

      AMCP::Core::Core::find_operation(&v20, v7, &v14);
      v8 = v20;
      if (v20)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,caulk::mach::os_workgroup_interval_managed const&>(v8, a2);
          v10 = 0;
          goto LABEL_12;
        }

        v12 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v12))
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = AMCP::Implementation::Outboard_Storage<caulk::mach::os_workgroup_interval_managed>::dispatch;
          operator new();
        }
      }

      v10 = 1;
LABEL_12:
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if ((v10 & 1) == 0)
      {
        v11 = 1;
        goto LABEL_16;
      }

LABEL_15:
      v11 = 0;
LABEL_16:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v11;
    }
  }

  return 0;
}

void sub_1DE61A854(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AMCP::Thing::~Thing(va);
  v9 = *(v7 - 40);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61A824);
}

uint64_t AMCP::IOContext::handle_overload_with_catchup_mode(AMCP::IOContext *this, char a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F62686F636DLL;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,BOOL const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LOBYTE(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE61A9D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61A9B0);
}

uint64_t AMCP::IOContext::will_handle_overload_with_catchup_mode(AMCP::IOContext *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "mcohbolg");
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
          strcpy(__p, "hocm");
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

      v7 = v6 & 1;
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

  return v7 | 0x100u;
}

void sub_1DE61ABCC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOContext::set_should_resume_after_config_change(AMCP::IOContext *this, char a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F62696F7372;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,BOOL const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LOBYTE(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE61AD2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61AD04);
}

uint64_t AMCP::IOContext::get_should_resume_after_config_change(AMCP::IOContext *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "rsoibolg");
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
          strcpy(__p, "iosr");
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

void sub_1DE61AF20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOContext::can_play_during_notification_wake(AMCP::IOContext *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "wndpbolg");
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
          strcpy(__p, "pdnw");
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

      v7 = v6 & 1;
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

  return v7 | 0x100u;
}

void sub_1DE61B0E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOContext::set_can_play_during_notification_wake(AMCP::IOContext *this, char a2)
{
  v9 = a2;
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = AMCP::Core::Core::set_simple_property_value<1885630071u>(v6, &v9);
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v7;
}

uint64_t AMCP::IOContext::can_play_during_dark_wake(AMCP::IOContext *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "wddpbolg");
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
          strcpy(__p, "pddw");
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

      v7 = v6 & 1;
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

  return v7 | 0x100u;
}

void sub_1DE61B318(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOContext::set_can_play_during_dark_wake(AMCP::IOContext *this, char a2)
{
  v9 = a2;
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = AMCP::Core::Core::set_simple_property_value<1885627511u>(v6, &v9);
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v7;
}

uint64_t AMCP::IOContext::sleeping_is_allowed(AMCP::IOContext *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "ailsbolg");
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
          strcpy(__p, "slia");
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

      v7 = v6 & 1;
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

  return v7 | 0x100u;
}

void sub_1DE61B54C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOContext::set_sleeping_is_allowed(AMCP::IOContext *this, char a2)
{
  v9 = a2;
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = AMCP::Core::Core::set_simple_property_value<1936484705u>(v6, &v9);
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v7;
}

void HALB_CaptureFile::TimeStampMessage::perform(HALB_CaptureFile::TimeStampMessage *this, unsigned int a2)
{
  v2 = *(this + 12);
  if ((*(v2 + 2152) - 2) >= 3)
  {
    v4 = *(this + 4);
    switch(v4)
    {
      case 2:
        if (*(v2 + 2096) != *(v2 + 2104))
        {
          operator new();
        }

        break;
      case 1:
        v11 = *(v2 + 2104);
        if (*(v2 + 2096) != v11)
        {
          *(v11 - 40) += *(this + 7);
        }

        break;
      case 0:
        v5 = *(v2 + 2104);
        v6 = *(v2 + 2112);
        if (v5 >= v6)
        {
          v12 = *(v2 + 2096);
          v13 = v5 - v12;
          v14 = 0x8E38E38E38E38E39 * ((v5 - v12) >> 3);
          v15 = v14 + 1;
          if (v14 + 1 > 0x38E38E38E38E38ELL)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v16 = 0x8E38E38E38E38E39 * ((v6 - v12) >> 3);
          if (2 * v16 > v15)
          {
            v15 = 2 * v16;
          }

          if (v16 >= 0x1C71C71C71C71C7)
          {
            v17 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            if (v17 <= 0x38E38E38E38E38ELL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v18 = 72 * v14;
          v19 = *(this + 40);
          v20 = *(this + 72);
          *(v18 + 32) = *(this + 56);
          *(v18 + 48) = v20;
          *(v18 + 64) = *(this + 11);
          *v18 = *(this + 24);
          *(v18 + 16) = v19;
          v10 = 72 * v14 + 72;
          v21 = 72 * v14 - v13;
          memcpy((v18 - v13), v12, v13);
          *(v2 + 2096) = v21;
          *(v2 + 2104) = v10;
          *(v2 + 2112) = 0;
          if (v12)
          {
            operator delete(v12);
          }
        }

        else
        {
          *v5 = *(this + 24);
          v7 = *(this + 40);
          v8 = *(this + 56);
          v9 = *(this + 72);
          *(v5 + 64) = *(this + 11);
          *(v5 + 32) = v8;
          *(v5 + 48) = v9;
          *(v5 + 16) = v7;
          v10 = v5 + 72;
        }

        *(v2 + 2104) = v10;
        break;
    }

    v22 = *(*(this + 12) + 2120);
    v23 = atomic_load((v22 + 16));
    if ((v23 & 1) == 0)
    {
      HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>::~HALB_AsyncMessageQueue(v22, a2);

      JUMPOUT(0x1E12C1730);
    }

    v24 = *(v22 + 8);

    OSAtomicEnqueue(v24, this, 0x68uLL);
  }
}

void sub_1DE61BB00(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE61B918);
  }

  _Unwind_Resume(exception_object);
}

void HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>::~HALB_AsyncMessageQueue(uint64_t a1, unsigned int a2)
{
  atomic_store(0, (a1 + 16));
  ca::concurrent::details::service_thread::drain(*a1, a2);
  for (i = OSAtomicDequeue(*(a1 + 8), 0x68uLL); i; i = OSAtomicDequeue(*(a1 + 8), 0x68uLL))
  {
    (*(*i + 8))(i);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    MEMORY[0x1E12C1730](v5, 0x1080C40FC6463CFLL);
  }

  ca::concurrent::messenger::~messenger(a1, v4);
}

void std::__shared_ptr_emplace<std::array<char,2048ul>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5984430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<std::vector<HALB_CaptureFile::TimeStampData>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<HALB_CaptureFile::TimeStampData>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59843E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::unique_ptr<HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>::~HALB_AsyncMessageQueue(result, a2);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_CaptureFile::HALB_CaptureFile(HALB_CaptureFile_NameBuilder const&,AudioStreamBasicDescription const&,AudioCapturerMode)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to allocate audio capturer.", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALB_CaptureFile::HALB_CaptureFile(HALB_CaptureFile_NameBuilder const&,AudioStreamBasicDescription const&,AudioCapturerMode)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<AudioCapturerIfc *,std::shared_ptr<AudioCapturerIfc>::__shared_ptr_default_delete<AudioCapturerIfc,AudioCapturerIfc>,std::allocator<AudioCapturerIfc>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI16AudioCapturerIfcE27__shared_ptr_default_deleteIS1_S1_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AudioCapturerIfc *,std::shared_ptr<AudioCapturerIfc>::__shared_ptr_default_delete<AudioCapturerIfc,AudioCapturerIfc>,std::allocator<AudioCapturerIfc>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AudioCapturerIfc *,std::shared_ptr<AudioCapturerIfc>::__shared_ptr_default_delete<AudioCapturerIfc,AudioCapturerIfc>,std::allocator<AudioCapturerIfc>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *HALB_CaptureFile::HALB_CaptureFile(char *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v49[51] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  *a1 = *a3;
  *(a1 + 1) = v7;
  *(a1 + 4) = v8;
  *(a1 + 5) = 0;
  *(a1 + 131) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 133) = 0u;
  *(a1 + 268) = 0;
  *(a1 + 538) = a4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 0, &v40);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 1, &v40);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 2, &v40);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 5, &v40);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 6, &v40);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 4, &v40);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 3, &v40);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 7, &v40);
  if ((v48 & 0x10) != 0)
  {
    v10 = v47;
    if (v47 < v44)
    {
      v47 = v44;
      v10 = v44;
    }

    v11 = __src;
  }

  else
  {
    if ((v48 & 8) == 0)
    {
      v9 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_14;
    }

    v11 = v41;
    v10 = v42;
  }

  v9 = v10 - v11;
  if (v10 - v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v10 - v11;
  if (v9)
  {
    memmove(&__dst, v11, v9);
  }

LABEL_14:
  __dst.__r_.__value_.__s.__data_[v9] = 0;
  v40.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54E8];
  *(v40.__r_.__value_.__r.__words + *(v40.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v40.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
  if (v46 < 0)
  {
    operator delete(__p);
  }

  v40.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v40.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x1E12C15F0](v49);
  v12 = std::string::insert(&__dst, 0, "HAL_", 4uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v39 = v12->__r_.__value_.__r.__words[2];
  *v38 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v14 = SHIBYTE(v39);
  v15 = v38;
  if (v39 < 0)
  {
    v15 = v38[0];
  }

  if (v39 < 0)
  {
    v14 = v38[1];
  }

  for (; v14; v14 = v14 - 1)
  {
    v16 = *v15;
    if (v16 == 47 || v16 == 32)
    {
      *v15 = 95;
    }

    v15 = (v15 + 1);
  }

  v17 = *(a1 + 538) - 2;
  if (v17 > 2)
  {
    v18 = 270609;
  }

  else
  {
    v18 = qword_1DE797160[v17];
  }

  v19 = &v40;
  get_audio_capture_folder(&v40);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = v40.__r_.__value_.__r.__words[0];
  }

  if (v39 >= 0)
  {
    v20 = v38;
  }

  else
  {
    v20 = v38[0];
  }

  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once != -1)
  {
    dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_14173);
  }

  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction)
  {
    v21 = NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction(v18, v19, v20, 1667327590, 0, a3);
  }

  else
  {
    v21 = 0;
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v21)
  {
    operator new();
  }

  v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v25 = *(v22 + 8);
    v26 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v26 + 16) = 0;
    *(v26 + 20) = 16;
    *(v26 + 24) = "HALB_CaptureFile.cpp";
    *(v26 + 32) = 224;
    *v26 = &unk_1F5984388;
    *(v26 + 8) = 0;
    v27 = caulk::concurrent::messenger::enqueue(v25, v26);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v27);
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

    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v29);
    }

    v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      v35 = os_signpost_id_make_with_pointer(*v33, a1);
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    else
    {
      v35 = os_signpost_id_make_with_pointer(*v33, a1);
    }

    if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      v36 = v38;
      if (v39 < 0)
      {
        v36 = v38[0];
      }

      LODWORD(v40.__r_.__value_.__l.__data_) = 136446210;
      *(v40.__r_.__value_.__r.__words + 4) = v36;
      _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v35, "AudioHAL Capture", "%{public}s", &v40, 0xCu);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
    }

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DE61C8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  v36 = (v34 + 262);
  v37 = v34[268];
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::unique_ptr<HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>>::reset[abi:ne200100](v34 + 265, 0);
  v38 = *v36;
  if (*v36)
  {
    v34[263] = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

void HALB_CaptureFile::~HALB_CaptureFile(ca::concurrent::details::service_thread ***this)
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

  v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v6 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = os_signpost_id_make_with_pointer(*v7, this);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v9 = os_signpost_id_make_with_pointer(*v7, this);
  }

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v20[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v5, OS_SIGNPOST_INTERVAL_END, v9, "AudioHAL Capture", &unk_1DE836302, v20, 2u);
  }

  if ((*(this + 538) - 2) >= 3)
  {
    v10 = this[265];
    if (v10)
    {
      v11 = OSAtomicDequeue(v10[1], 0x68uLL);
      if (v11)
      {
        *(v11 + 4) = 2;
        v13 = this[265];
        v14 = atomic_load(v13 + 16);
        if (v14)
        {
          v15 = *v13;
          do
          {
            v16 = *v15;
            atomic_store(*v15, v11 + 1);
            v17 = v16;
            atomic_compare_exchange_strong(v15, &v17, v11);
          }

          while (v17 != v16);
          ca::sync::semaphore::signal(v15 + 36);
        }

        else
        {
          (*(*v11 + 8))(v11);
        }
      }

      ca::concurrent::details::service_thread::drain(*this[265], v12);
    }
  }

  v18 = this[268];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  std::unique_ptr<HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>>::reset[abi:ne200100](this + 265, 0);
  v19 = this[262];
  if (v19)
  {
    this[263] = v19;
    operator delete(v19);
  }
}

void sub_1DE61CC10(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61CBD0);
}

atomic_uint *HALB_CaptureFile::Write(atomic_uint *result, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(result + 267);
  if (v6)
  {
    v8 = result;
    v10 = result[6];
    v9 = result[7];
    v23[0] = 1;
    v23[2] = v9;
    v23[3] = v10 * a5;
    v24 = a6;
    if (!a6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "HALB_CaptureFile.cpp";
        *v27 = 1024;
        *&v27[2] = 359;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  data buffer is NULL", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(4uLL);
      *exception = 1852797029;
    }

    if (a3)
    {
      v14 = *(result + 266);
      if (v14 != 0.0 && *a3 > v14)
      {
        v15 = fmin(*a3 - v14, 8192.0);
        v16 = *(result + 268);
        v22 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = result[6];
          v9 = result[7];
        }

        *buf = 1;
        HIDWORD(v26) = v9;
        v17 = v10 * v15;
        if (v17)
        {
          if (v17 > 0x2000)
          {
            do
            {
              if (v17 == 0x2000)
              {
                break;
              }

              v18 = v17 - 0x2000 >= 0x2000 ? 0x2000 : v17 - 0x2000;
              v19 = v18 / *(v8 + 24);
              *v27 = v18;
              *&v27[4] = &HALB_CaptureFile::mSilenceBuffer;
              (*(*v6 + 24))(v6, v19, buf, 0);
              v17 -= v18;
            }

            while (v17);
          }

          else
          {
            *v27 = v10 * v15;
            *&v27[4] = &HALB_CaptureFile::mSilenceBuffer;
            (*(*v6 + 24))(v6);
          }
        }

        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }
    }

    (*(**(v8 + 2136) + 96))(*(v8 + 2136), a5, v23, 0, *(v8 + 2128));
    v20 = (v8 + 2128);
    if (a3)
    {
      v20 = a3;
    }

    *(v8 + 2128) = *v20 + a5;
    return HALB_CaptureFile::WriteTimestamps(v8, a2, a3, a4, a5);
  }

  return result;
}

void sub_1DE61CEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9)
{
  if (a2)
  {
    if (a9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a9);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE61CE20);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *HALB_CaptureFile::WriteTimestamps(atomic_uint *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(result + 267))
  {
    return result;
  }

  v8 = result;
  v9 = 0.0;
  if (a2)
  {
    v10 = *(a2 + 8);
    v11 = *a2;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    v12 = 0;
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_8:
    v16 = 0;
    v14 = 0;
    v15 = 0.0;
    goto LABEL_9;
  }

  v10 = 0;
  v11 = 0.0;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = *a4;
  v12 = *(a4 + 8);
  v13 = *(a4 + 16);
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_5:
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = *a3;
LABEL_9:
  if ((result[538] - 2) <= 2)
  {
    result = AMCP::Feature_Flags::allow_ring_buffer_capture_trace(result);
    if (result)
    {
      return (*(**(v8 + 267) + 128))(*(v8 + 267), v10, v11, a5, v16, v14, a5, v9, v15, v12, v13, a3 == 0);
    }
  }

  v17 = *(v8 + 265);
  if (v17)
  {
    result = OSAtomicDequeue(*(v17 + 8), 0x68uLL);
    if (result)
    {
      if (a3)
      {
        result[4] = 0;
        *(result + 3) = v11;
        *(result + 4) = v10;
        v18 = *(a3 + 8);
        *(result + 5) = *a3;
        *(result + 6) = v18;
        *(result + 7) = a5;
        *(result + 8) = *(a3 + 16);
        *(result + 9) = v9;
        *(result + 10) = v12;
        *(result + 11) = v13;
        v19 = *(v8 + 265);
        LOBYTE(v18) = atomic_load(v19 + 16);
        if (v18)
        {
          v20 = *v19;
          do
          {
            v21 = *v20;
            atomic_store(*v20, result + 1);
            v22 = v21;
            atomic_compare_exchange_strong(v20, &v22, result);
          }

          while (v22 != v21);
          return ca::sync::semaphore::signal((v20 + 144));
        }
      }

      else
      {
        if (a2)
        {
          return result;
        }

        result[4] = 1;
        *(result + 7) = a5;
        v23 = *(v8 + 265);
        v24 = atomic_load(v23 + 16);
        if (v24)
        {
          v20 = *v23;
          do
          {
            v25 = *v20;
            atomic_store(*v20, result + 1);
            v26 = v25;
            atomic_compare_exchange_strong(v20, &v26, result);
          }

          while (v26 != v25);
          return ca::sync::semaphore::signal((v20 + 144));
        }
      }

      v27 = *(*result + 8);

      return v27();
    }
  }

  return result;
}

void sub_1DE61D194(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void non-virtual thunk toHALS_IOUADevice::~HALS_IOUADevice(HALS_IOUADevice *this)
{
  HALS_IOUADevice::~HALS_IOUADevice((this - 1456));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_IOUADevice::~HALS_IOUADevice((this - 1456));
}

void HALS_IOUADevice::~HALS_IOUADevice(HALS_IOUADevice *this)
{
  *this = &unk_1F5984490;
  v2 = (this + 1456);
  *(this + 182) = &unk_1F5984890;
  v3 = *(this + 197);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    HALS_ObjectMap::ObjectIsDead(*(this + 197), v4);
    *(this + 197) = 0;
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 1584));
  v6 = *(this + 194);
  if (v6)
  {
    *(this + 195) = v6;
    operator delete(v6);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v8 = *(this + i + 1528);
    if (v8)
    {
      *(this + i + 1536) = v8;
      operator delete(v8);
    }
  }

  HALS_IOUAObject::~HALS_IOUAObject(v2, v5);

  HALS_Device::~HALS_Device(this);
}

{
  HALS_IOUADevice::~HALS_IOUADevice(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOUADevice::ExecuteWorkSyncOnConfigChangeQueue(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN15HALS_IOUADevice34ExecuteWorkSyncOnConfigChangeQueueENSt3__18functionIFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_20_14307;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = atomic_load((a1 + 1616));
  if (v3)
  {
    atomic_store(1u, (a1 + 1617));
  }

  dispatch_sync(*(a1 + 1584), block);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
}

uint64_t ___ZN15HALS_IOUADevice34ExecuteWorkSyncOnConfigChangeQueueENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1);
}

void sub_1DE61D428(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOUADevice::PerformNonDriverConfigChange(HALS_IOUADevice *this, BOOL a2, uint64_t a3)
{
  v4 = 0uLL;
  v5 = 0;
  return HALS_IOUADevice::HandleConfigurationChangeRequest(this, &v4, a3);
}

uint64_t HALS_IOUADevice::HandleConfigurationChangeRequest(uint64_t a1, __int128 *a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS_19ConfigChangePayloadEbj_block_invoke;
  v5[3] = &unk_1E86782D0;
  v8 = a3;
  v6 = *a2;
  v7 = *(a2 + 2);
  v5[4] = &v9;
  v5[5] = a1;
  AMCP::Utility::Dispatch_Queue::async(a1 + 1584, v5);
  v3 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void ___ZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS_19ConfigChangePayloadEbj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  kdebug_trace();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOUADevice.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1317;
    v24 = 2080;
    v25 = v1 + 41;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOUADevice::HandleConfigurationChangeRequest: %s  --->", buf, 0x1Cu);
  }

  v20 = 0u;
  v21 = 0u;
  v14 = v1;
  v3 = v1[4];
  strcpy(buf, "bgfcbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  HALS_NotificationManager::PropertiesChanged_Sync(v3, 0, 1, buf, v2);
  memset(v19, 0, sizeof(v19));
  v18[0] = 0;
  v18[1] = 0;
  HALS_System::GetInstance(buf, 0, v18);
  v4 = *buf;
  v5 = (*(*v14 + 208))(v14);
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
    cf = v6;
    v7 = CFGetTypeID(v6);
    if (v7 != CFStringGetTypeID())
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

  HALS_System::GetRawDeviceListUsingClockDevice(v4, v19, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v9 = *(v14 + 197);
  memset(v16, 0, sizeof(v16));
  if (v9)
  {
    (*(*v9 + 224))(v9, v16);
  }

  v15[0] = 0;
  v15[1] = 0;
  HALS_System::GetInstance(buf, 0, v15);
  v12 = HALS_System::CopyClientByObjectID(*buf, *(a1 + 72));
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  HALS_ObjectMap::RetainObject(v12, v10);
  HALS_ObjectMap::RetainObject(v12, v11);
  v22 = 0;
  operator new();
}

void sub_1DE61E9CC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, HALS_ObjectMap *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    HALS_DeviceState::~HALS_DeviceState(&a65);
    HALS_ObjectMap::ReleaseObject(a11, v66);
    HALS_ObjectMap::ReleaseObject(a11, v67);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE61E420);
  }

  _Unwind_Resume(a1);
}

void HALS_IOUADevice::UpdateStreams(HALS_IOUADevice *this, BOOL *a2)
{
  *a2 = 0;
  HALS_IOUADevice::get_stream_list(&v72, this, 0);
  HALS_IOUADevice::get_stream_list(&v70, this, 1);
  v4 = v72;
  v5 = v70;
  v62 = 0;
  v63 = &v62;
  v64 = 0x4002000000;
  v65 = __Block_byref_object_copy__12;
  v66 = __Block_byref_object_dispose__13;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x4002000000;
  v57 = __Block_byref_object_copy__12;
  v58 = __Block_byref_object_dispose__13;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x4002000000;
  v49 = __Block_byref_object_copy__12;
  v50 = __Block_byref_object_dispose__13;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3002000000;
  v43 = __Block_byref_object_copy__14;
  v44 = __Block_byref_object_dispose__15;
  v45 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x4002000000;
  v35 = __Block_byref_object_copy__12;
  v36 = __Block_byref_object_dispose__13;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1174405120;
  v23[2] = ___ZN15HALS_IOUADevice13UpdateStreamsEPb_block_invoke;
  v23[3] = &unk_1F59848B8;
  v23[9] = this;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v24, v72, v73, (v73 - v72) >> 2);
  v27 = v4;
  __p = 0;
  v29 = 0;
  v30 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v70, v71, (v71 - v70) >> 2);
  v23[4] = &v62;
  v23[5] = &v54;
  v23[6] = &v40;
  v23[7] = &v46;
  v31 = v5;
  v23[8] = &v32;
  v6 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v6, v23);
  v10 = v41;
  *a2 = *(v41 + 40);
  a2[1] = *(v10 + 41);
  v11 = v63[5];
  v12 = v63[6];
  while (v11 != v12)
  {
    (***v11)(*v11, v7, v8, v9);
    ++v11;
  }

  v13 = v55[5];
  v14 = v55[6];
  while (v13 != v14)
  {
    (***v13)(*v13, v7, v8, v9);
    ++v13;
  }

  v15 = v47[5];
  v16 = v47[6];
  while (v15 != v16)
  {
    v17 = *v15;
    HALS_IOUAStream::SynchronizeWithHardware(*v15);
    HALS_ObjectMap::ReleaseObject(v17, v18);
    ++v15;
  }

  v19 = v33[5];
  v20 = v33[6];
  while (v19 != v20)
  {
    v21 = *v19;
    HALS_IOUAStream::SynchronizeWithHardware(*v19);
    HALS_ObjectMap::ReleaseObject(v21, v22);
    ++v19;
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  _Block_object_dispose(&v32, 8);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  _Block_object_dispose(&v54, 8);
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  _Block_object_dispose(&v62, 8);
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }
}

void sub_1DE61F130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a27, 8);
  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  if (a46)
  {
    a47 = a46;
    operator delete(a46);
  }

  _Block_object_dispose((v47 - 224), 8);
  v49 = *(v47 - 184);
  if (v49)
  {
    *(v47 - 176) = v49;
    operator delete(v49);
  }

  _Block_object_dispose((v47 - 160), 8);
  v50 = *(v47 - 120);
  if (v50)
  {
    *(v47 - 112) = v50;
    operator delete(v50);
  }

  v51 = *(v47 - 96);
  if (v51)
  {
    *(v47 - 88) = v51;
    operator delete(v51);
  }

  v52 = *(v47 - 72);
  if (v52)
  {
    *(v47 - 64) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOUADevice::UpdateControls(HALS_IOUADevice *this)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x4002000000;
  v22 = __Block_byref_object_copy__14330;
  v23 = __Block_byref_object_dispose__14331;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x4002000000;
  v14 = __Block_byref_object_copy__14330;
  v15 = __Block_byref_object_dispose__14331;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN15HALS_IOUADevice14UpdateControlsEv_block_invoke;
  v10[3] = &unk_1E86782A8;
  v10[4] = &v27;
  v10[5] = &v19;
  v10[6] = &v11;
  v10[7] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v10);
  v2 = v20[5];
  v3 = v20[6];
  while (v2 != v3)
  {
    (***v2++)();
  }

  v4 = v12[5];
  for (i = v12[6]; v4 != i; ++v4)
  {
    v6 = *v4;
    if (HALS_IOUAControl::RefreshCache(*v4))
    {
      *(v28 + 24) = 1;
    }

    HALS_ObjectMap::ReleaseObject(v6, v7);
  }

  v8 = *(v28 + 24);
  _Block_object_dispose(&v11, 8);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v19, 8);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  _Block_object_dispose(&v27, 8);
  return v8;
}

void sub_1DE61F42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  _Block_object_dispose(&a17, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a25, 8);
  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  _Block_object_dispose((v31 - 80), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14330(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__14331(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN15HALS_IOUADevice14UpdateControlsEv_block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = *(v2 + 1464);
  v4 = *(v3 + 736);
  v5 = *(v3 + 744);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v4 + 4), "lrtcbolg", *(v2 + 1472), 0, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (PropertySize >= 4)
  {
    std::vector<unsigned int>::vector[abi:ne200100](&__p, PropertySize >> 2);
    v9 = __p;
    *buf = v57 - __p;
    v10 = *(v2 + 1464);
    v11 = *(v10 + 736);
    v12 = *(v10 + 744);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::GetPropertyData(*(v11 + 4), "lrtcbolg", *(v2 + 1472), 0, 0, v9, buf);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v7 = __p;
    v8 = v57;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    __p = 0;
    v57 = 0;
    v58 = 0;
  }

  v13 = v8 - v7;
  v53 = a1;
  v54 = *(*(a1 + 40) + 8);
  v14 = *(v2 + 1552);
  v15 = *(v2 + 1560);
  v16 = 0;
  while (v14 != v15)
  {
    v18 = *v14++;
    v17 = v18;
    *(v18 + 13) = 0;
    if (*(v18 + 60) == 1)
    {
      v16 = v17;
    }
  }

  if ((v13 & 0x3FFFFFFFCLL) != 0)
  {
    v19 = 0;
    v55 = (v13 >> 2);
    do
    {
      *buf = 0;
      v20 = *(v2 + 1552);
      v21 = *(v2 + 1560);
      if (v20 != v21)
      {
        while (!*v20 || *(*v20 + 88) != v7[v19])
        {
          v20 += 8;
          if (v20 == v21)
          {
            goto LABEL_25;
          }
        }
      }

      if (v20 == v21)
      {
LABEL_25:
        v22 = v7[v19];
        if (v22)
        {
          v23 = *(v2 + 1464);
          v24 = *(v23 + 736);
          v25 = *(v23 + 744);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          outputStruct = 0;
          v59 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v24 + 4), "salcbolg", v22, 0, 0, &outputStruct, &v59);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          v26 = *(v2 + 1464);
          v27 = *(v26 + 736);
          v28 = *(v26 + 744);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v62 = 0;
          v61 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v27 + 4), "slcbbolg", v22, 0, 0, &v62, &v61);
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          v29 = *(v2 + 1464);
          v30 = *(v29 + 736);
          v31 = *(v29 + 744);
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v64 = 0;
          v63 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v30 + 4), "pcscbolg", v22, 0, 0, &v64, &v63);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          v32 = *(v2 + 1464);
          v33 = *(v32 + 736);
          v34 = *(v32 + 744);
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v66 = 0;
          v65 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v33 + 4), "mlecbolg", v22, 0, 0, &v66, &v65);
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          operator new();
        }
      }

      else
      {
        *(*v20 + 13) = 1;
      }

      ++v19;
    }

    while (v19 != v55);
  }

  if (*(v2 + 1512) != *(v2 + 1504))
  {
    if ((*(v2 + 464) & 0x1FFFFFFFFLL) != 0x100000001 || v16 == 0)
    {
      operator new();
    }

    *(v16 + 13) = 1;
  }

  v36 = *(v2 + 1552);
  v37 = *(v2 + 1560);
  if (v36 == v37)
  {
    v39 = 0;
  }

  else
  {
    while (1)
    {
      v38 = *v36;
      if (*v36)
      {
        if (*(v38 + 13) != 1)
        {
          break;
        }
      }

      if (++v36 == v37)
      {
        v39 = 0;
        v36 = *(v2 + 1560);
        goto LABEL_65;
      }
    }

    (*(*v38 + 8))(v38);
    HALS_ObjectMap::ObjectIsDead(*v36, v40);
    v39 = 1;
    if (v36 != v37)
    {
      v41 = v36 + 1;
      if (v36 + 1 != v37)
      {
        do
        {
          v42 = *v41;
          if (*v41 && (*(v42 + 13) & 1) == 0)
          {
            (*(*v42 + 8))(v42);
            HALS_ObjectMap::ObjectIsDead(*v41, v43);
          }

          else
          {
            *v36++ = v42;
          }

          ++v41;
        }

        while (v41 != v37);
        v39 = 1;
      }
    }
  }

LABEL_65:
  v44 = (v2 + 1552);
  v45 = *(v2 + 1560);
  if (v36 != v45)
  {
    v45 = v36;
    *(v2 + 1560) = v36;
  }

  v47 = *(v54 + 40);
  v46 = *(v54 + 48);
  if (v46 != v47)
  {
    do
    {
      *buf = *v47;
      std::vector<HALS_Device *>::push_back[abi:ne200100](v2 + 1552, buf);
      ++v47;
    }

    while (v47 != v46);
    v45 = *(v2 + 1560);
    v39 = 1;
  }

  v48 = *v44;
  if (*v44 != v45)
  {
    v49 = *v44;
    while (*(*v49 + 20) != 1702259059)
    {
      v49 += 8;
      if (v49 == v45)
      {
        goto LABEL_76;
      }
    }

    *(v2 + 464) = *(*v49 + 60);
    *(v2 + 468) = 1;
  }

LABEL_76:
  *(*(*(v53 + 32) + 8) + 24) = v39;
  v50 = *(*(v53 + 48) + 8);
  if (v44 != (v50 + 40))
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v50 + 40), v48, v45, (v45 - v48) >> 3);
  }

  v51 = *(v50 + 40);
  v52 = *(v50 + 48);
  while (v51 != v52)
  {
    HALS_ObjectMap::RetainObject(*v51++, v48);
  }

  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }
}

void sub_1DE61FC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void HALS_IOUADevice::get_stream_list(HALS_IOUADevice *this, uint64_t a2, int a3)
{
  v14.mElement = 0;
  *&v14.mSelector = *"#mtsptuo";
  if (a3)
  {
    v14.mScope = 1768845428;
  }

  v5 = *(a2 + 1464);
  v6 = *(v5 + 736);
  v7 = *(v5 + 744);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v6 + 4), &v14, *(a2 + 1472), 0, 0);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (PropertySize > 3)
  {
    std::vector<unsigned int>::vector[abi:ne200100](this, PropertySize >> 2);
    v9 = *this;
    v13 = *(this + 1) - *this;
    v10 = *(a2 + 1464);
    v11 = *(v10 + 736);
    v12 = *(v10 + 744);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *this;
    }

    HALS_IOUAUCDriver::GetPropertyData(*(v11 + 4), &v14, *(a2 + 1472), 0, 0, v9, &v13);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

void sub_1DE61FDCC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__12(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__13(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN15HALS_IOUADevice13UpdateStreamsEPb_block_invoke(void *a1)
{
  v1 = 0;
  v2 = *(a1[5] + 8);
  v3 = *(a1[6] + 8);
  v4 = *(v2 + 40);
  v13 = a1[9];
  *(*(a1[4] + 8) + 48) = *(*(a1[4] + 8) + 40);
  *(v2 + 48) = v4;
  v5 = v13 + 1504;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = *(v5 + 24 * v1);
    v9 = *(v5 + 24 * v1 + 8) - v8;
    if ((v9 & 0x7FFFFFFF8) != 0)
    {
      v10 = v9 >> 3;
      v11 = (v9 >> 3);
      do
      {
        if (!v10)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v12 = *v8++;
        *(v12 + 13) = 0;
        --v10;
        --v11;
      }

      while (v11);
    }

    v6 = 0;
    *(v3 + 40 + v1) = 0;
    v1 = 1;
    if ((v7 & 1) == 0)
    {
      HALS_ReferenceStreamStateManager::ReferenceStreamIsEnabledForAnyClientOrContext(*(v13 + 448));
      operator new();
    }
  }
}

void __destroy_helper_block_e8_80c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE112c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;

    operator delete(v3);
  }
}

uint64_t *__copy_helper_block_e8_80c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE112c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(void *a1, uint64_t a2)
{
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 10, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 14, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 2);
}

void sub_1DE620688(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUADevice::_CopyStreamList(uint64_t result, char *a2, void **a3)
{
  v4 = (result + 24 * a2 + 1504);
  if (v4 == a3)
  {
    v13 = a3[1];
  }

  else
  {
    v5 = *v4;
    v6 = *(result + 24 * a2 + 1512);
    v7 = v6 - *v4;
    v8 = a3[2];
    v9 = *a3;
    if (v8 - *a3 < v7)
    {
      v10 = v7 >> 3;
      if (v9)
      {
        a3[1] = v9;
        operator delete(v9);
        v8 = 0;
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
      }

      if (!(v10 >> 61))
      {
        v11 = v8 >> 2;
        if (v8 >> 2 <= v10)
        {
          v11 = v7 >> 3;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (!(v12 >> 61))
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
        }
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v14 = a3[1];
    v15 = v14 - v9;
    if (v14 - v9 >= v7)
    {
      if (v6 != v5)
      {
        memmove(v9, v5, v7);
      }

      v13 = &v9[v7];
    }

    else
    {
      if (v14 != v9)
      {
        memmove(*a3, v5, v14 - v9);
        v14 = a3[1];
      }

      a2 = &v5[v15];
      v16 = v6 - &v5[v15];
      if (v16)
      {
        memmove(v14, a2, v16);
      }

      v13 = &v14[v16];
    }

    a3[1] = v13;
  }

  for (i = *a3; i != v13; ++i)
  {
    v18 = *i;
    HALS_ObjectMap::RetainObject(v18, a2);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS_19ConfigChangePayloadEbjEUb_E3$_8"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEEclESB_(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 1752122448 || *(a1 + 8) == 0)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

void _ZNSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE18destroy_deallocateEv(HALS_ObjectMap **a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(a1[1], a2);

  operator delete(a1);
}

void _ZNKSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE7__cloneEPNS0_6__baseISC_EE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5984960;
  *(a2 + 1) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void _ZNSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEED0Ev(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F5984960;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);

  JUMPOUT(0x1E12C1730);
}

uint64_t _ZNSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEED1Ev(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F5984960;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);
  return a1;
}

uint64_t HALS_IOUADevice::_SetDSPForClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = xmmword_1DE758170;
  v5 = 0;
  if (a3)
  {
    LODWORD(a3) = *(a3 + 16);
  }

  return HALS_IOUADevice::HandleConfigurationChangeRequest(a1, &v4, a3);
}

void HALS_IOUADevice::GetDefaultChannelLayoutPropertyData(HALS_IOUADevice *this, unsigned int a2, const AudioObjectPropertyAddress *a3, AudioChannelLayout *a4, unsigned int *a5, HALS_Device *a6, unsigned int a7, void *a8, HALS_Client *a9, unsigned int a10, unsigned int *a11, unsigned int a12, BOOL a13)
{
  *a6 = 0;
  *(a6 + 2) = a12;
  if (a12)
  {
    v15 = (a6 + 16);
    v16 = a12;
    do
    {
      *(v15 - 1) = -1;
      *v15 = 0;
      v15[1] = 0;
      v15 = (v15 + 20);
      --v16;
    }

    while (v16);
  }

  *a5 = a10;
  if (a13)
  {
    *(&v17 + 1) = 0x696E707473726E64;
  }

  else
  {
    *(&v17 + 1) = 0x6F75747073726E64;
  }

  v18 = *(this + 183);
  v19 = *(v18 + 736);
  v20 = *(v18 + 744);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v17 = *(this + 368);
  HALS_IOUAUCDriver::get_array_property(&theArray, v19, v17, 0x676C6F62, a8, a7);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = theArray;
  if (!theArray)
  {
LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v22 = 0;
  v23 = 12;
  while (v22 < CFArrayGetCount(v21) && v22 < *(a6 + 2))
  {
    if (!theArray)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v25, "Could not construct");
      __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    *(a6 + v23) = applesauce::CF::details::at_to<unsigned int>(theArray, v22++);
    v21 = theArray;
    v23 += 20;
    if (!theArray)
    {
      goto LABEL_17;
    }
  }

  HALS_Device::ThrowIfInvalidACL(a6, a4, a12);
  if (theArray)
  {
    CFRelease(theArray);
  }
}

void sub_1DE620C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::details::at_to<unsigned int>(const __CFArray *a1, unint64_t a2)
{
  if (CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::convert_to<unsigned int,0>(ValueAtIndex);
}

HALS_ObjectMap *HALS_IOUADevice::_CopyControlByDescription(HALS_IOUADevice *this, HALS_Object *a2, int a3, int a4)
{
  v4 = *(this + 194);
  v5 = *(this + 195);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *v4;
      if (*v4)
      {
        if (*(v6 + 5) == a2 && *(v6 + 12) == a3 && *(v6 + 13) == a4)
        {
          break;
        }
      }

      if (++v4 == v5)
      {
        return 0;
      }
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v7 = *v4;
  HALS_ObjectMap::RetainObject(*v4, a2);
  return v7;
}

HALS_ObjectMap *HALS_IOUADevice::_CopyControlByIndex(HALS_IOUADevice *this, HALS_Object *a2)
{
  v2 = *(this + 194);
  if (a2 >= ((*(this + 195) - v2) >> 3))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 8 * a2);
  }

  HALS_ObjectMap::RetainObject(v3, a2);
  return v3;
}

void HALS_IOUADevice::_CopyControls(HALS_IOUADevice *this, HALS_Device::BasicControlList *a2)
{
  v2 = *(this + 194);
  for (i = *(this + 195); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_IOUADevice::_CopyStreamList(uint64_t a1, unsigned int a2, void *a3)
{
  a3[1] = *a3;
  v4 = a1 + 24 * a2;
  std::vector<HALS_Stream *>::reserve(a3, (*(v4 + 1512) - *(v4 + 1504)) >> 3);
  v6 = *(v4 + 1504);
  for (i = *(v4 + 1512); v6 != i; ++v6)
  {
    HALS_ObjectMap::RetainObject(*v6, v5);
    v8 = *v6;
    v10 = a3[1];
    v9 = a3[2];
    if (v10 >= v9)
    {
      v12 = (v10 - *a3) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - *a3;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v15);
      }

      v16 = (8 * v12);
      *v16 = v8;
      v11 = 8 * v12 + 8;
      v17 = a3[1] - *a3;
      v18 = v16 - v17;
      memcpy(v16 - v17, *a3, v17);
      v19 = *a3;
      *a3 = v18;
      a3[1] = v11;
      a3[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    a3[1] = v11;
  }
}

uint64_t HALS_IOUADevice::_GetTotalNumberChannels(HALS_IOUADevice *this, unsigned int a2)
{
  v2 = this + 24 * a2;
  v3 = *(v2 + 188);
  if (v3 == *(v2 + 189))
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = v2 + 1504;
  do
  {
    v6 = *v3++;
    v7 = v6[4];
    v11 = 0x676C6F6270667420;
    v12 = 0;
    v13 = 0;
    (*(*v6 + 120))(v6, v7, &v11, 40, &v13, v9, 0, 0, 0);
    v4 = (v10 + v4);
  }

  while (v3 != *(v5 + 1));
  return v4;
}

CFTypeRef HALS_IOUADevice::_CopyDefaultElementName(HALS_IOUADevice *this, AudioObjectPropertyScope a2, AudioObjectPropertyElement a3)
{
  cf[3] = *MEMORY[0x1E69E9840];
  v14.mSelector = 1818454126;
  v14.mScope = a2;
  v14.mElement = a3;
  v5 = *(this + 183);
  v6 = *(v5 + 736);
  v7 = *(v5 + 744);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v6 + 4), &v14, *(this + 368));
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (!HasProperty)
  {
    return 0;
  }

  v9 = *(this + 183);
  v10 = *(v9 + 736);
  v11 = *(v9 + 744);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v16 = *(this + 368);
  *(&v16 + 1) = *&v14.mSelector;
  HALS_IOUAUCDriver::get_string_property(cf, v10, v16, a3, 0, 0);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = CFRetain(cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v12;
}

void sub_1DE6212F8(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_IOUADevice::_CopyStreamByIndex(HALS_IOUADevice *this, HALS_Object *a2, unsigned int a3)
{
  v3 = this + 24 * a2;
  v4 = *(v3 + 189);
  v5 = *(v3 + 188);
  if (a3 >= ((v4 - v5) >> 3))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 8 * a3);
  }

  HALS_ObjectMap::RetainObject(v6, a2);
  return v6;
}

BOOL HALS_IOUADevice::IsClockStable(HALS_IOUADevice *this)
{
  v5 = 0;
  v4 = *"btscbolg";
  v2 = 4;
  v3 = 0;
  (*(*this + 120))(this, *(this + 368), &v4, 4, &v2, &v3, 0, 0, 0);
  return v3 != 0;
}

uint64_t HALS_IOUADevice::GetClockAlgorithm(HALS_IOUADevice *this)
{
  v5 = 0;
  v4 = *"kolcbolg";
  v2 = 4;
  v3 = 0;
  (*(*this + 120))(this, *(this + 368), &v4, 4, &v2, &v3, 0, 0, 0);
  return v3;
}

uint64_t HALS_IOUADevice::DoAnyQueuesHaveWorkAfterFlush(HALS_IOUADevice *this)
{
  v1 = atomic_load(this + 817);
  if (v1 & 1) != 0 || (v2 = atomic_load(this + 1153), (v2))
  {
    v3 = atomic_load(this + 1617);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void HALS_IOUADevice::FlushAllQueues(HALS_IOUADevice *this)
{
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 784));
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1120));

  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1584));
}

void HALS_IOUADevice::SetPropertyData(HALS_IOUADevice *this, const AudioObjectPropertyAddress *a2, AudioObjectPropertyAddress *a3, unsigned int a4, const AudioObjectPropertyAddress *a5, unsigned int a6, _DWORD *a7, AudioObjectPropertyAddress *a8)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a3->mSelector == 1853059700)
  {
    if (a4 <= 7)
    {
      v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v23 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
        v37 = "HALS_IOUADevice.cpp";
        v38 = 1024;
        v39 = 673;
        v40 = 2080;
        v41 = "inDataSize < SizeOf32(Float64)";
        _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v28, "kAudioHardwareBadPropertySizeError");
      std::runtime_error::runtime_error(&v29, &v28);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = -1;
      v29.__vftable = &unk_1F5992170;
      v30 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v29);
      v42 = "virtual void HALS_IOUADevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUADevice.cpp";
      v44 = 673;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
    }

    v14 = *(this + 183);
    v15 = *(v14 + 736);
    v16 = *(v14 + 744);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::SetPropertyData(v15, a3, *(this + 368), a7, a6, a5, a4);
    if (v16)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else if (HALS_Device::HasProperty(this, a2, a3, a8))
  {

    HALS_Device::SetPropertyData(this, a2, a3, a4, &a5->mSelector, a6, a7, a8);
  }

  else
  {

    HALS_IOUAObject::SetPropertyData((this + 1456), &a3->mSelector, a5, a7, v19, v20, v21, v22);
  }
}

void sub_1DE621920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUADevice::GetPropertyData(HALS_IOUADevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, AudioChannelLayout *a4, AudioObjectPropertyAddress *a5, char *a6, uint64_t a7, int *a8, AudioObjectPropertyAddress *a9)
{
  v102 = a5;
  v123 = *MEMORY[0x1E69E9840];
  v17 = (*(*this + 704))(this, a9);
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1819107690)
  {
    if (mSelector <= 1735356004)
    {
      if (mSelector <= 1668639075)
      {
        if (mSelector > 1668050794)
        {
          if (mSelector == 1668050795)
          {
            goto LABEL_80;
          }

          v23 = 1668510818;
        }

        else
        {
          if (mSelector == 1634429294)
          {
            goto LABEL_80;
          }

          v23 = 1668049764;
        }

        goto LABEL_79;
      }

      if (mSelector <= 1684434035)
      {
        if (mSelector != 1668639076)
        {
          if (mSelector != 1668641652)
          {
            goto LABEL_113;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(this + 186) - *(this + 185)) >> 2) >= a4 / 0xCuLL)
          {
            v25 = a4 / 0xCuLL;
          }

          else
          {
            v25 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 186) - *(this + 185)) >> 2);
          }

          if (v25)
          {
            v26 = 0;
            v27 = 0;
            do
            {
              v28 = *(this + 185);
              if (0xAAAAAAAAAAAAAAABLL * ((*(this + 186) - v28) >> 2) > v27)
              {
                v29 = &a6[v26];
                v30 = (v28 + v26);
                v31 = *v30;
                *(v29 + 2) = *(v30 + 2);
                *v29 = v31;
              }

              ++v27;
              v26 += 12;
            }

            while (12 * v25 != v26);
          }

          v32 = 12 * v25;
          goto LABEL_90;
        }

        goto LABEL_71;
      }

      if (mSelector == 1684434036)
      {
        goto LABEL_80;
      }

      if (mSelector != 1735354734)
      {
        goto LABEL_113;
      }
    }

    else
    {
      if (mSelector > 1768777572)
      {
        if (mSelector <= 1818455661)
        {
          if (mSelector == 1768777573)
          {
            goto LABEL_80;
          }

          v24 = 1818452846;
          goto LABEL_70;
        }

        if (mSelector == 1818455662)
        {
          goto LABEL_71;
        }

        if (mSelector == 1818850145)
        {
          goto LABEL_80;
        }

        v23 = 1818850162;
LABEL_79:
        if (mSelector != v23)
        {
          goto LABEL_113;
        }

        goto LABEL_80;
      }

      if (mSelector > 1751737453)
      {
        if (mSelector == 1751737454)
        {
          goto LABEL_80;
        }

        v23 = 1768124270;
        goto LABEL_79;
      }

      if (mSelector != 1735356005)
      {
        v23 = 1751412337;
        goto LABEL_79;
      }
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_IOUADevice.cpp";
        v116 = 1024;
        v117 = 456;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOUADevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceIsRunning", &buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    *a6 = (*(**(this + 197) + 688))(*(this + 197));
    v32 = 4;
    goto LABEL_90;
  }

  mScope = a3->mScope;
  if (mSelector <= 1919251301)
  {
    v21 = v18;
    v22 = *&v17;
    if (mSelector > 1836411235)
    {
      if (mSelector > 1853059618)
      {
        if (mSelector != 1853059619)
        {
          if (mSelector != 1853059700)
          {
            if (mSelector != 1919251299)
            {
LABEL_113:
              if (HALS_Device::HasProperty(this, v18, a3, a9))
              {

                HALS_Device::GetPropertyData(this, a2, a3, a4, &v102->mSelector, a6, a7, a8, a9);
              }

              else
              {

                HALS_IOUAObject::GetPropertyData((this + 1456), &a3->mSelector, v102, a6, a8, v67, v68, v69, a9);
              }

              return;
            }

            goto LABEL_91;
          }

LABEL_80:
          *&buf.mSelector = a4;
          v47 = *(this + 183);
          v48 = *(v47 + 736);
          v49 = *(v47 + 744);
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_82;
        }

        NumberStreams = HALS_IODevice::GetNumberStreams(this, 0);
        if (NumberStreams || HALS_IODevice::GetNumberStreams(this, 1))
        {
          v52 = HALS_IODevice::CopyStreamByIndex(this, NumberStreams == 0, 0);
          if (v52)
          {
            NumberAvailablePhysicalFormats = HALS_Stream::GetNumberAvailablePhysicalFormats(v52);
          }

          else
          {
            NumberAvailablePhysicalFormats = 0;
          }

          LODWORD(v105) = NumberAvailablePhysicalFormats;
          operator new[]();
        }

        strcpy(&buf, "#rsnbolg");
        BYTE1(buf.mElement) = 0;
        HIWORD(buf.mElement) = 0;
        v72 = *(this + 183);
        v73 = *(v72 + 736);
        v74 = *(v72 + 744);
        if (v74)
        {
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v73 + 4), &buf, *(this + 368));
        v76 = HasProperty;
        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v74);
        }

        if (v76)
        {
          MEMORY[0x1EEE9AC00](HasProperty);
          v78 = &v101[-v77];
          outputStruct.__vftable = v79;
          v80 = *(this + 183);
          v81 = *(v80 + 736);
          v82 = *(v80 + 744);
          if (v82)
          {
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          HALS_IOUAUCDriver::GetPropertyData(*(v81 + 4), &buf, *(this + 368), a8, a7, &v101[-v77], &outputStruct);
          if (v82)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v82);
          }

          v83 = outputStruct.__vftable >> 3;
          if (outputStruct.__vftable >= 8)
          {
            v84 = outputStruct.__vftable >> 3;
            do
            {
              v85 = vld1q_dup_f64(v78++);
              *a6 = v85;
              a6 += 16;
              --v84;
            }

            while (v84);
          }

          v102->mSelector = 16 * v83;
          return;
        }

        v105 = 8;
        *&v104 = 0;
        outputStruct.__vftable = 0x676C6F626E737274;
        LODWORD(outputStruct.__imp_.__imp_) = 0;
        v86 = *(this + 183);
        v87 = *(v86 + 736);
        v88 = *(v86 + 744);
        if (v88)
        {
          atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HALS_IOUAUCDriver::GetPropertyData(*(v87 + 4), &outputStruct, *(this + 368), 0, 0, &v104, &v105);
        if (v88)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v88);
        }

        if (a4 < 0x10)
        {
          v32 = 0;
        }

        else
        {
          v89 = *&v104;
          if (v21)
          {
            v89 = v22;
          }

          *a6 = v89;
          *(a6 + 1) = v89;
          v32 = 16;
        }

LABEL_90:
        v102->mSelector = v32;
        return;
      }

      if (mSelector == 1836411236)
      {
        goto LABEL_71;
      }

      v24 = 1851878764;
      goto LABEL_70;
    }

    if (mSelector > 1819173228)
    {
      if (mSelector != 1819173229)
      {
        if (mSelector != 1819569763)
        {
          goto LABEL_113;
        }

        v33 = a3->mScope;
        LODWORD(outputStruct.__vftable) = 0;
        *&buf.mSelector = a4;
        v34 = *(this + 183);
        v35 = *(v34 + 736);
        v36 = *(v34 + 744);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HALS_IOUAUCDriver::GetPropertyData(*(v35 + 4), a3, *(this + 368), a8, a7, &outputStruct, &buf.mSelector);
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if ((*(*this + 448))(this))
        {
          StreamDSPLatency = HALS_Device::GetStreamDSPLatency(this, (v33 == 1768845428));
          LODWORD(outputStruct.__vftable) += StreamDSPLatency;
        }

        if (v21)
        {
          LODWORD(v9) = outputStruct.__vftable;
          LODWORD(outputStruct.__vftable) = (v22 / (*(*this + 272))(this) * v9);
        }

        if (a9)
        {
          DSPLatencyForClient = HALS_Device::GetDSPLatencyForClient(this, v33 == 1768845428, a9);
          v39 = outputStruct.__vftable;
          if ((DSPLatencyForClient & 0x100000000) != 0)
          {
            v39 = LODWORD(outputStruct.__vftable) + DSPLatencyForClient;
          }
        }

        else
        {
          v39 = outputStruct.__vftable;
        }

        *a6 = v39;
LABEL_84:
        v102->mSelector = buf.mSelector;
        return;
      }

      goto LABEL_71;
    }

    if (mSelector != 1819107691)
    {
      v24 = 1819111268;
LABEL_70:
      if (mSelector != v24)
      {
        goto LABEL_113;
      }
    }

LABEL_71:
    v44 = *(this + 183);
    v45 = *(v44 + 736);
    v46 = *(v44 + 744);
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v125 = *(this + 368);
    *(&v125 + 1) = *&a3->mSelector;
    HALS_IOUAUCDriver::get_string_property(&buf, v45, v125, a3->mElement, a8, a7);
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    *a6 = CFRetain(*&buf.mSelector);
    v102->mSelector = 8;
    if (*&buf.mSelector)
    {
      CFRelease(*&buf.mSelector);
    }

    return;
  }

  if (mSelector <= 1936092275)
  {
    if (mSelector > 1920168546)
    {
      if (mSelector == 1920168547)
      {
        goto LABEL_80;
      }

      v23 = 1935763060;
    }

    else
    {
      if (mSelector == 1919251302)
      {
LABEL_91:
        *&buf.mSelector = a4;
        v50 = *(this + 183);
        v48 = *(v50 + 736);
        v49 = *(v50 + 744);
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

LABEL_82:
        HALS_IOUAUCDriver::GetPropertyData(*(v48 + 4), a3, *(this + 368), a8, a7, a6, &buf.mSelector);
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        goto LABEL_84;
      }

      v23 = 1919512167;
    }

    goto LABEL_79;
  }

  if (mSelector > 1936879203)
  {
    if (mSelector != 1936879204)
    {
      if (mSelector == 1953653102)
      {
        goto LABEL_80;
      }

      v24 = 1969841184;
      goto LABEL_70;
    }

    v54 = a3->mScope;
    TotalNumberChannelsForClient = HALS_Device::GetTotalNumberChannelsForClient(this, mScope == 1768845428, a9);
    v56 = caulk::numeric::exceptional_mul<unsigned int>(TotalNumberChannelsForClient);
    v57 = caulk::numeric::exceptional_add<unsigned int>(v56);
    if (v57 > a4)
    {
      v94 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v94 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v57);
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
        buf.mSelector = 136315650;
        *&buf.mScope = "HALS_IOUADevice.cpp";
        v116 = 1024;
        v117 = 603;
        v118 = 2080;
        v119 = "inDataSize < theSize";
        _os_log_error_impl(&dword_1DE1F9000, v97, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s bad property data size for kAudioDevicePropertyDefaultChannelLayout", &buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v114);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v106, "kAudioHardwareBadPropertySizeError");
      std::runtime_error::runtime_error(&outputStruct, &v106);
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v112 = -1;
      outputStruct.__vftable = &unk_1F5992170;
      v108 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &outputStruct);
      v120 = "virtual void HALS_IOUADevice::GetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, UInt32 &, void *, UInt32, const void *, HALS_Client *) const";
      v121 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUADevice.cpp";
      v122 = 603;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v104);
    }

    *a6 = 0;
    *(a6 + 2) = TotalNumberChannelsForClient;
    if (TotalNumberChannelsForClient)
    {
      v58 = TotalNumberChannelsForClient;
      v59 = a6 + 16;
      do
      {
        *(v59 - 1) = -1;
        *v59 = 0;
        *(v59 + 1) = 0;
        v59 += 20;
        --v58;
      }

      while (v58);
    }

    v102->mSelector = v57;
    v60 = *(this + 183);
    v61 = *(v60 + 736);
    v62 = *(v60 + 744);
    if (v62)
    {
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v126 = *(this + 368);
    *(&v126 + 1) = *&a3->mSelector;
    HALS_IOUAUCDriver::get_array_property(&v105, v61, v126, a3->mElement, a8, a7);
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }

    v63 = v105;
    if (!v105)
    {
LABEL_112:
      v66 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v66, "Could not construct");
      __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v64 = 0;
    v65 = 12;
    while (v64 < CFArrayGetCount(v63) && v64 < *(a6 + 2))
    {
      if (!v105)
      {
        v98 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v98, "Could not construct");
        __cxa_throw(v98, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      *&a6[v65] = applesauce::CF::details::at_to<unsigned int>(v105, v64++);
      v63 = v105;
      v65 += 20;
      if (!v105)
      {
        goto LABEL_112;
      }
    }

    v103[1] = 0;
    v103[0] = 0;
    HALS_System::GetInstance(&outputStruct, 0, v103);
    *&buf.mSelector = HALS_SettingsManager::ReadSetting(outputStruct.__vftable[74].~runtime_error, *(this + 15));
    LOWORD(buf.mElement) = 1;
    if (outputStruct.__imp_.__imp_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](outputStruct.__imp_.__imp_);
    }

    outputStruct.__vftable = 0;
    LOWORD(outputStruct.__imp_.__imp_) = 1;
    if (v54 == 1768845428)
    {
      v70 = @"input.surround";
    }

    else
    {
      if (a3->mScope != 1869968496)
      {
LABEL_128:
        HALS_Device::ThrowIfInvalidACL(a6, a4, TotalNumberChannelsForClient);
        CACFDictionary::~CACFDictionary(&outputStruct);
        CACFDictionary::~CACFDictionary(&buf);
        if (v105)
        {
          CFRelease(v105);
        }

        return;
      }

      v70 = @"output.surround";
    }

    CACFDictionary::GetCACFDictionary(&buf, v70, &outputStruct.__vftable);
    if (outputStruct.__vftable)
    {
      HALS_Device::ConstructLayoutFromDictionary(&outputStruct, a6, v71);
    }

    goto LABEL_128;
  }

  if (mSelector == 1936092276)
  {
    goto LABEL_80;
  }

  if (mSelector != 1936876644)
  {
    goto LABEL_113;
  }

  v40 = a3->mScope;
  v41 = HALS_Device::GetTotalNumberChannelsForClient(this, mScope == 1768845428, a9);
  v42 = caulk::numeric::exceptional_mul<unsigned int>(v41);
  v43 = caulk::numeric::exceptional_add<unsigned int>(v42);
  v114 = v43;
  if (v43 > a4)
  {
    v90 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v90 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v43);
    }

    v92 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v91 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v91)
    {
      atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
      v93 = *v92;
      std::__shared_weak_count::__release_shared[abi:ne200100](v91);
    }

    else
    {
      v93 = *v92;
    }

    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315650;
      *&buf.mScope = "HALS_IOUADevice.cpp";
      v116 = 1024;
      v117 = 592;
      v118 = 2080;
      v119 = "inDataSize < theSize";
      _os_log_error_impl(&dword_1DE1F9000, v93, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDefaultChannelLayout", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v113);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v106, "kAudioHardwareBadPropertySizeError");
    std::runtime_error::runtime_error(&outputStruct, &v106);
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = -1;
    outputStruct.__vftable = &unk_1F5992170;
    v108 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &outputStruct);
    v120 = "virtual void HALS_IOUADevice::GetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, UInt32 &, void *, UInt32, const void *, HALS_Client *) const";
    v121 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUADevice.cpp";
    v122 = 592;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v104);
  }

  BYTE4(v100) = v40 == 1768845428;
  LODWORD(v100) = v41;
  (*(*this + 936))(this, a2, a3, a4, v102, a6, a7, a8, a9, v43, &v114, v100);
}

void sub_1DE622CEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUADevice::GetPropertyDataSize(HALS_IOUADevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, unsigned int a4, _DWORD *a5, AudioObjectPropertyAddress *a6)
{
  mSelector = a3->mSelector;
  PropertySize = 8;
  if (a3->mSelector <= 1819107690)
  {
    if (mSelector > 1735354733)
    {
      if (mSelector > 1768124269)
      {
        if (mSelector <= 1818850144)
        {
          if (mSelector != 1768124270)
          {
            v15 = 1768777573;
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (mSelector == 1818850145)
        {
          goto LABEL_51;
        }

        v15 = 1818850162;
      }

      else
      {
        if (mSelector <= 1751412336)
        {
          if (mSelector != 1735354734)
          {
            v14 = 1735356005;
            goto LABEL_16;
          }

          return 4;
        }

        if (mSelector == 1751412337)
        {
          goto LABEL_51;
        }

        v15 = 1751737454;
      }

LABEL_50:
      if (mSelector != v15)
      {
        goto LABEL_56;
      }

      goto LABEL_51;
    }

    if (mSelector <= 1668510817)
    {
      if (mSelector != 1634429294 && mSelector != 1668049764)
      {
        v15 = 1668050795;
        goto LABEL_50;
      }
    }

    else
    {
      if (mSelector > 1668641651)
      {
        if (mSelector == 1668641652)
        {
          return (*(this + 372) - *(this + 370)) & 0xFFFFFFFC;
        }

        v15 = 1684434036;
        goto LABEL_50;
      }

      if (mSelector != 1668510818)
      {
        v13 = 1668639076;
        goto LABEL_25;
      }
    }

LABEL_51:
    v16 = *(this + 183);
    v17 = *(v16 + 736);
    v18 = *(v16 + 744);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v17 + 4), a3, *(this + 368), a5, a4);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    return PropertySize;
  }

  if (mSelector > 1919251298)
  {
    if (mSelector > 1935763059)
    {
      if (mSelector > 1953653101)
      {
        if (mSelector == 1969841184)
        {
          return PropertySize;
        }

        v15 = 1953653102;
        goto LABEL_50;
      }

      if (mSelector != 1935763060)
      {
        v15 = 1936092276;
        goto LABEL_50;
      }
    }

    else
    {
      if (mSelector <= 1919512166)
      {
        if (mSelector != 1919251299)
        {
          v14 = 1919251302;
LABEL_16:
          if (mSelector != v14)
          {
            goto LABEL_56;
          }

          return 4;
        }

        return 4;
      }

      if (mSelector != 1919512167)
      {
        v15 = 1920168547;
        goto LABEL_50;
      }
    }

    goto LABEL_51;
  }

  if (mSelector <= 1836411235)
  {
    if (mSelector <= 1819173228)
    {
      if (mSelector != 1819107691)
      {
        v13 = 1819111268;
        goto LABEL_25;
      }

      return PropertySize;
    }

    if (mSelector == 1819173229)
    {
      return PropertySize;
    }

    v15 = 1819569763;
    goto LABEL_50;
  }

  if (mSelector > 1853059618)
  {
    if (mSelector == 1853059619)
    {
      NumberStreams = HALS_IODevice::GetNumberStreams(this, 0);
      if (NumberStreams || HALS_IODevice::GetNumberStreams(this, 1))
      {
        v26 = HALS_IODevice::CopyStreamByIndex(this, NumberStreams == 0, 0);
        if (v26)
        {
          NumberAvailablePhysicalFormats = HALS_Stream::GetNumberAvailablePhysicalFormats(v26);
        }

        else
        {
          NumberAvailablePhysicalFormats = 0;
        }

        v37 = NumberAvailablePhysicalFormats;
        operator new[]();
      }

      *&__p.mSelector = 0x676C6F626E737223;
      __p.mElement = 0;
      v28 = *(this + 183);
      v29 = *(v28 + 736);
      v30 = *(v28 + 744);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v29 + 4), &__p, *(this + 368));
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (!HasProperty)
      {
        return 16;
      }

      v32 = *(this + 183);
      v33 = *(v32 + 736);
      v34 = *(v32 + 744);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = HALS_IOUAUCDriver::GetPropertySize(*(v33 + 4), &__p, *(this + 368), a5, a4);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      return (2 * v35) & 0xFFFFFFF0;
    }

    v15 = 1853059700;
    goto LABEL_50;
  }

  if (mSelector == 1836411236)
  {
    return PropertySize;
  }

  v13 = 1851878764;
LABEL_25:
  if (mSelector == v13)
  {
    return PropertySize;
  }

LABEL_56:
  if (HALS_Device::HasProperty(this, a2, a3, a6))
  {

    return HALS_Device::GetPropertyDataSize(this, v20, a3, a4, a5, a6);
  }

  else
  {

    return HALS_IOUAObject::GetPropertyDataSize((this + 1456), a3, v21, v22, v23, v24);
  }
}

void sub_1DE623504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUADevice::IsPropertySettable(HALS_IOUADevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  IsPropertySettable = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1819111267)
  {
    if (mSelector <= 1735356004)
    {
      if (mSelector <= 1668510817)
      {
        if (mSelector != 1634429294 && mSelector != 1668049764 && mSelector != 1668050795)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      }

      if (mSelector <= 1668641651)
      {
        if (mSelector == 1668510818)
        {
          goto LABEL_54;
        }

        v9 = 1668639076;
        goto LABEL_53;
      }

      if (mSelector != 1668641652)
      {
        v12 = 1735354734;
LABEL_45:
        if (mSelector != v12)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      if (mSelector > 1768777572)
      {
        if (mSelector > 1818850161)
        {
          if (mSelector == 1818850162)
          {
            goto LABEL_54;
          }

          v9 = 1819107691;
        }

        else
        {
          if (mSelector == 1768777573)
          {
            goto LABEL_54;
          }

          v9 = 1818850145;
        }

        goto LABEL_53;
      }

      if (mSelector > 1751737453)
      {
        if (mSelector == 1751737454)
        {
          goto LABEL_54;
        }

        v9 = 1768124270;
        goto LABEL_53;
      }

      if (mSelector != 1735356005)
      {
        v9 = 1751412337;
        goto LABEL_53;
      }
    }

    return IsPropertySettable;
  }

  if (mSelector > 1919251301)
  {
    if (mSelector > 1936092275)
    {
      if (mSelector > 1953653101)
      {
        if (mSelector == 1969841184)
        {
          goto LABEL_54;
        }

        v9 = 1953653102;
      }

      else
      {
        if (mSelector == 1936092276)
        {
          goto LABEL_54;
        }

        v9 = 1937009955;
      }

      goto LABEL_53;
    }

    if (mSelector > 1920168546)
    {
      if (mSelector == 1920168547)
      {
        goto LABEL_54;
      }

      v9 = 1935763060;
      goto LABEL_53;
    }

    if (mSelector != 1919251302)
    {
      v9 = 1919512167;
      goto LABEL_53;
    }

    return IsPropertySettable;
  }

  if (mSelector > 1851878763)
  {
    if (mSelector <= 1853059699)
    {
      if (mSelector == 1851878764)
      {
        goto LABEL_54;
      }

      v9 = 1853059619;
      goto LABEL_53;
    }

    if (mSelector == 1853059700)
    {
      goto LABEL_54;
    }

    v12 = 1919251299;
    goto LABEL_45;
  }

  if (mSelector <= 1819569762)
  {
    if (mSelector != 1819111268)
    {
      v9 = 1819173229;
      goto LABEL_53;
    }

LABEL_54:
    v13 = *(this + 183);
    v14 = *(v13 + 736);
    v15 = *(v13 + 744);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IsPropertySettable = HALS_IOUAUCDriver::GetIsPropertySettable(*(v14 + 4), a3, *(this + 368));
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    return IsPropertySettable;
  }

  if (mSelector == 1819569763)
  {
    goto LABEL_54;
  }

  v9 = 1836411236;
LABEL_53:
  if (mSelector == v9)
  {
    goto LABEL_54;
  }

LABEL_59:
  if (HALS_Device::HasProperty(this, a2, a3, a4))
  {

    return HALS_Device::IsPropertySettable(this, v17, a3, a4);
  }

  else
  {

    return HALS_IOUAObject::IsPropertySettable((this + 1456), a3, v18, v19);
  }
}

void sub_1DE6238F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUADevice::HasProperty(HALS_IOUADevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1819107690)
  {
    HasProperty = 1;
    if (mSelector <= 1735356004)
    {
      if (mSelector <= 1668639075)
      {
        if (mSelector > 1668050794)
        {
          if (mSelector != 1668050795)
          {
            v6 = 1668510818;
            goto LABEL_50;
          }
        }

        else if (mSelector != 1634429294)
        {
          v6 = 1668049764;
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if (mSelector > 1684434035)
      {
        if (mSelector == 1684434036)
        {
          goto LABEL_51;
        }

        if (mSelector != 1735354734)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (mSelector == 1668639076)
        {
          goto LABEL_51;
        }

        if (mSelector != 1668641652)
        {
          goto LABEL_58;
        }

        return *(this + 186) != *(this + 185);
      }
    }

    else
    {
      if (mSelector > 1768777572)
      {
        if (mSelector > 1818455661)
        {
          if (mSelector == 1818455662 || mSelector == 1818850145)
          {
            goto LABEL_51;
          }

          v6 = 1818850162;
          goto LABEL_50;
        }

        if (mSelector != 1768777573)
        {
          v6 = 1818452846;
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if (mSelector > 1751737453)
      {
        if (mSelector != 1751737454)
        {
          v6 = 1768124270;
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if (mSelector != 1735356005)
      {
        v6 = 1751412337;
        goto LABEL_50;
      }
    }

    return HasProperty;
  }

  if (mSelector > 1919251301)
  {
    if (mSelector <= 1936092275)
    {
      if (mSelector > 1920168546)
      {
        if (mSelector != 1920168547)
        {
          v6 = 1935763060;
          goto LABEL_50;
        }
      }

      else if (mSelector != 1919251302)
      {
        v6 = 1919512167;
        goto LABEL_50;
      }
    }

    else
    {
      if (mSelector > 1937009954)
      {
        if (mSelector == 1937009955 || mSelector == 1969841184)
        {
          goto LABEL_51;
        }

        v6 = 1953653102;
        goto LABEL_50;
      }

      if (mSelector != 1936092276)
      {
        v6 = 1936879204;
        goto LABEL_50;
      }
    }

LABEL_51:
    v8 = *(this + 183);
    v9 = *(v8 + 736);
    v10 = *(v8 + 744);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v9 + 4), a3, *(this + 368));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    return HasProperty;
  }

  if (mSelector <= 1836411235)
  {
    if (mSelector > 1819173228)
    {
      if (mSelector != 1819173229)
      {
        v6 = 1819569763;
        goto LABEL_50;
      }
    }

    else if (mSelector != 1819107691)
    {
      v6 = 1819111268;
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  if (mSelector <= 1853059618)
  {
    if (mSelector != 1836411236)
    {
      v6 = 1851878764;
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  if (mSelector == 1853059619 || mSelector == 1853059700)
  {
    goto LABEL_51;
  }

  v6 = 1919251299;
LABEL_50:
  if (mSelector == v6)
  {
    goto LABEL_51;
  }

LABEL_58:
  if (HALS_Device::HasProperty(this, a2, a3, a4))
  {
    return 1;
  }

  v12 = *(*(this + 182) + 16);

  return v12();
}

void sub_1DE623CE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double HALS_IOUADevice::_Deactivate(HALS_IOUADevice *this)
{
  v2 = 0;
  v3 = this + 1504;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &v3[24 * v2];
    v7 = *v6;
    if (*(v6 + 1) != *v6)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(v7 + 8 * v8);
        (*(*v10 + 8))(v10);
        HALS_ObjectMap::ObjectIsDead(v10, v11);
        v8 = v9;
        v7 = *v6;
        ++v9;
      }

      while (v8 < (*(v6 + 1) - *v6) >> 3);
    }

    v4 = 0;
    *(v6 + 1) = v7;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v12 = *(this + 194);
  v13 = *(this + 195);
  if (v12 != v13)
  {
    do
    {
      (*(**v12 + 8))();
      v14 = *v12++;
      HALS_ObjectMap::ObjectIsDead(v14, v15);
    }

    while (v12 != v13);
    v12 = *(this + 194);
  }

  *(this + 195) = v12;

  return HALS_Device::_Deactivate(this);
}

void HALS_IOUADevice::Activate(HALS_IOUADevice *this)
{
  HALS_IOUADevice::UpdateStreams(this, &v2);
  HALS_IOUADevice::UpdateControls(this);
  operator new();
}

void sub_1DE624028(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>>>::destroy(*(v1 + 1216));
  v5 = *(v1 + 1152);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  HALS_IOEngine2::~HALS_IOEngine2(v1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E12C1730](v1, v2);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::GetCFType(CFArrayRef *this, unsigned int a2, const void **a3)
{
  result = *this;
  if (result)
  {
    if (CFArrayGetCount(result) <= a2)
    {
      return 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*this, a2);
      *a3 = ValueAtIndex;
      return (ValueAtIndex != 0);
    }
  }

  return result;
}

uint64_t CACFArray::GetUInt32(CFArrayRef *this, unsigned int a2, unsigned int *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetDictionary(CFArrayRef *this, unsigned int a2, const __CFDictionary **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFDictionaryGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetCACFDictionary(CFArrayRef *this, unsigned int a2, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v7 = cf;
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      result = CFDictionaryGetTypeID();
      if (v8 == result)
      {

        return CACFDictionary::operator=(a3, v7);
      }
    }
  }

  return result;
}

double AMCP::Null::Engine::convert_host_to_sample_time(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 164);
  v4 = AMCP::IO_Clock::convert_host_to_sample_time_internal(&this[144], a2);
  os_unfair_lock_unlock(this + 164);
  return v4;
}

double AMCP::Null::Engine::get_current_host_ticks_per_frame(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 164);
  v2 = *&this[160]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 164);
  return v2;
}

double AMCP::Null::Engine::get_zero_time_stamp@<D0>(const __CFString **this@<X0>, uint64_t a2@<X8>)
{
  if (((*this)[4].info)(this) < 1)
  {
    goto LABEL_7;
  }

  v4 = CFStringCreateWithBytes(0, "fail_to_deliver_time_stamp", 26, 0x8000100u, 0);
  *&v12[0] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(this[92], v12);
  CFRelease(v4);
  if (v5)
  {
    v6 = mach_absolute_time();
    AMCP::IO_Clock::get_current_zts(v12, (this + 72));
    if (*(&v12[0] + 1))
    {
      v7 = *(&v12[0] + 1) + 24000000;
      if (v6 <= *(&v12[0] + 1) + 24000000)
      {
        v9 = v12[1];
        *a2 = v12[0];
        *(a2 + 16) = v9;
        result = *&v13;
        v10 = v14;
        *(a2 + 32) = v13;
        *(a2 + 48) = v10;
        return result;
      }

      *a2 = *v12 + *(this + 4);
      *(a2 + 8) = v7;
    }

    else
    {
      *a2 = (*(this + 186) + *(this + 186));
      *(a2 + 8) = v6;
    }

    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
  }

  else
  {
LABEL_7:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  *&result = 3;
  *(a2 + 56) = 3;
  return result;
}

uint64_t AMCP::Null::Engine::write_data_to_stream(AMCP::Log::AMCP_Scope_Registry *a1, double a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v90 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 94);
  if (v8)
  {
    if (a5 >= ((v8[1] - *v8) >> 4))
    {
      v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v37 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        v40 = *v39;
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      else
      {
        v40 = *v39;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v82 = "Null_Engine_Reflector.cpp";
        v83 = 1024;
        v84 = 121;
        v85 = 2080;
        *v86 = "in_stream_index < m_stream_buffers.size()";
        _os_log_error_impl(&dword_1DE1F9000, v40, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
      }

      abort();
    }

    v10 = *a8;
    v11 = *v8 + 16 * a5;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(buf, v12);
    v14 = *&v86[4];
    v15 = *&v86[12];
    if (*&v86[12])
    {
      atomic_fetch_add_explicit((*&v86[12] + 8), 1uLL, memory_order_relaxed);
      v46 = v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      v14 = v46;
    }

    v16 = *(v12 + 11);
    if (v16)
    {
      LODWORD(v16) = *(v16 + 32);
    }

    v17 = *v10 / v16;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v60 = 2;
      v61 = a2;
      v62 = 0;
      v63 = v14;
      v18 = v17 + a2;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v60 = 2;
      v61 = a2;
      v62 = 0;
      v63 = v14;
      v18 = v17 + a2;
    }

    v56 = 2;
    v57 = v18;
    v58 = 0;
    v59 = v14;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v48, &v60, &v56);
    AMCP::DAL::DAL_Time::operator-(__p, &v52, &v48);
    AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(&v69, v12);
    v19 = AMCP::DAL::DAL_Time_Delta::operator<(&v69, __p);
    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

    v20 = *&__p[32];
    if (*&__p[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
    }

    if (v19)
    {
      v41 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v41 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v20);
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
        *__p = 136315650;
        *&__p[4] = "DAL_Timed_Segment.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 279;
        *&__p[18] = 2080;
        *&__p[20] = "not (range.length() <= buffer.get_length_in_frames())";
        _os_log_error_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v75);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v67, "", v45);
      std::logic_error::logic_error(&v68, &v67);
      v68.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v69, &v68);
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = -1;
      v69.__vftable = &unk_1F5991430;
      v70 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v69);
      *&__p[32] = "Writable_Range AMCP::DAL::create_writable_range(const DAL_Time_Range &, Ring_Buffer_Base &)";
      *&v77 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
      DWORD2(v77) = 279;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v64);
    }

    *__p = v48;
    *&__p[16] = v49;
    *&__p[24] = v50;
    *&__p[32] = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v77 = v52;
    v78 = v53;
    v79 = v54;
    v80 = v55;
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::create_writable_range(v12, __p, buf);
    if (v80)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v80);
    }

    if (*&__p[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
    }

    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (AMCP::DAL::DAL_Time::operator<(buf, &v87))
    {
      v47 = v13;
      AMCP::DAL::Writable_Range::get_direct_write_ranges(&v65, buf);
      v21 = v65;
      v22 = v66;
      if (v65 != v66)
      {
        v23 = 0;
        do
        {
          (*(*v89 + 56))(__p);
          other_data_bytes = AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(*__p, *v21, v21[1]);
          v26 = v25;
          v27 = *&__p[8];
          if (*&__p[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
          }

          if (!other_data_bytes)
          {
            v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v32 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v27);
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
              *__p = 136315650;
              *&__p[4] = "Null_Engine_Reflector.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 142;
              *&__p[18] = 2080;
              *&__p[20] = "not (not bytes.empty())";
              _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v75);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string(&v67, "", v36);
            std::logic_error::logic_error(&v68, &v67);
            v68.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v48, &v68);
            v50 = 0;
            v51 = 0;
            *&v52 = 0;
            DWORD2(v52) = -1;
            v48.__vftable = &unk_1F5991430;
            v49 = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v48);
            *&__p[32] = "BOOL AMCP::Null::Null_Engine_Reflector::write_data_to_stream(uint32_t, float64_t, const gsl::span<std::byte> &)";
            *&v77 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Engine_Reflector.cpp";
            DWORD2(v77) = 142;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v64);
          }

          v28 = *(v12 + 11);
          if (v28)
          {
            LODWORD(v28) = *(v28 + 32);
          }

          v29 = v28 * vcvtmd_s64_f64(v21[1] - *v21);
          memcpy(v26, (*(v10 + 8) + v23), v29);
          *__p = 0;
          memset(&__p[8], 0, 32);
          LODWORD(v77) = 0;
          AMCP::DAL::Writable_Range::commit_direct_write(v89, __p, v21);
          if ((__p[31] & 0x80000000) != 0)
          {
            operator delete(*&__p[8]);
          }

          v23 += v29;
          v21 += 14;
        }

        while (v21 != v22);
      }

      v13 = v47;
      if (v8[4])
      {
        AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v48, &v60, &v56);
        AMCP::DAL::create_readable_range(__p, &v48, v12);
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        v30 = v8[4];
        v69.__vftable = 0;
        v69.__imp_.__imp_ = 0;
        AMCP::DAL::DAL_Settings::DAL_Settings(&v48, &v69);
        (*(**v30 + 16))(*v30, &v48, __p);
        std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&v48);
        if (v80)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        if (*&__p[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
        }
      }

      *__p = &v65;
      std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100](__p);
    }

    if (v88)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88);
    }

    if (*&v86[12])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v86[12]);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return 1;
}

void sub_1DE624E68(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t *a51)
{
  if (a2)
  {
    std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&a11);
    AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a51);
    a51 = &a34;
    std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100](&a51);
    AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v52 - 208));
    if (a25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a25);
    }

    if (a30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a30);
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (a9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a9);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Null::Engine::read_data_from_stream(AMCP::Log::AMCP_Scope_Registry *a1, double a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, _DWORD **a8)
{
  v148 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 94);
  if (v10)
  {
    v11 = *v10;
    if (a5 >= ((*(*(a1 + 94) + 8) - v11) >> 4))
    {
      v70 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v70 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v72 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v71 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v71)
      {
        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
        v73 = *v72;
        std::__shared_weak_count::__release_shared[abi:ne200100](v71);
      }

      else
      {
        v73 = *v72;
      }

      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        *v140 = 136315650;
        *&v140[4] = "Null_Engine_Reflector.cpp";
        *&v140[12] = 1024;
        *&v140[14] = 65;
        *&v140[18] = 2080;
        *&v140[20] = "in_stream_index < m_stream_buffers.size()";
        _os_log_error_impl(&dword_1DE1F9000, v73, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", v140, 0x1Cu);
      }

      abort();
    }

    v12 = *a8;
    v13 = v11 + 16 * a5;
    v15 = *v13;
    v14 = *(v13 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Ring_Buffer_Base::get_length_in_frames(v140, v15);
    v17 = *&v140[24];
    v16 = v141;
    if (v141)
    {
      atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v18 = *(v15 + 11);
    if (v18)
    {
      LODWORD(v18) = *(v18 + 32);
      a2 = (a6 / v18) + a2;
    }

    v27 = *v12 / v18;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = a2 + v27;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v28 = a2 + v27;
    }

    (*(*v15 + 72))(v95, v15);
    *v140 = 2;
    *&v140[8] = a2;
    *&v140[16] = 0;
    *&v140[24] = v17;
    v141 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v142 = 2;
      v143 = v28;
      v144 = 0;
      v145 = v17;
      v146 = v16;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v142 = 2;
      v143 = v28;
      v144 = 0;
      v145 = v17;
      v146 = 0;
    }

    caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(&v116, v95, v140);
    if (v146)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v146);
    }

    if (v141)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v141);
    }

    if (AMCP::DAL::DAL_Time::operator<(&v116, &v120))
    {
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v116, &v120);
      AMCP::DAL::create_readable_range(v140, buf, v15);
      if (v139)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v139);
      }

      if (v135)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v135);
      }

      AMCP::DAL::DAL_Timed_Segment::translate_range(buf, v147, v140);
      v29 = *buf;
      v30 = *(v15 + 11);
      if (v30)
      {
        v31 = *(v30 + 32);
      }

      else
      {
        v31 = 0;
      }

      v33 = **buf;
      v32 = *(*buf + 8);
      (*(*v147 + 56))(&v87);
      AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(v87, *v29, v29[1]);
      v35 = v34;
      v36 = v31 * vcvtmd_s64_f64(v32 - v33);
      if (*(&v87 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v87 + 1));
      }

      memcpy(*(v12 + 1), v35, v36);
      v37 = *buf;
      if (*&buf[8] - *buf == 192)
      {
        v38 = *(v15 + 11);
        if (v38)
        {
          v39 = *(v38 + 32);
        }

        else
        {
          v39 = 0;
        }

        v65 = *(*buf + 96);
        v64 = *(*buf + 104);
        (*(*v147 + 56))(&v87);
        AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(v87, *(v37 + 96), *(v37 + 104));
        v67 = v66;
        v68 = v39 * vcvtmd_s64_f64(v64 - v65);
        if (*(&v87 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v87 + 1));
        }

        memcpy((*(v12 + 1) + v36), v67, v68);
      }

      *&v87 = buf;
      std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v87);
      if (v146)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v146);
      }

      if (v141)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
      }
    }

    if (v123)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v123);
    }

    if (v119)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v119);
    }

    if (v98)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v98);
    }

    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v14)
    {
      v63 = v14;
LABEL_116:
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }
  }

  else
  {
    v19 = *(a1 + 95);
    if (v19)
    {
      v20 = *a8;
      AMCP::DAL::DAL_Buffer::get_timebase(&v108, *(v19 + 24));
      v21 = *(*(a1 + 95) + 56);
      v22 = (a6 / v21) + a2;
      v23 = *v20 / v21;
      v24 = v108;
      v85 = v20;
      if (*(&v108 + 1))
      {
        v25 = (*(&v108 + 1) + 8);
        atomic_fetch_add_explicit((*(&v108 + 1) + 8), 1uLL, memory_order_relaxed);
        v104 = 2;
        v105 = v22;
        v106 = 0;
        v107 = v24;
        v26 = v22 + v23;
        atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
      }

      else
      {
        v104 = 2;
        v105 = v22;
        v106 = 0;
        v107 = v108;
        v26 = v22 + v23;
      }

      v100 = 2;
      v101 = v26;
      v102 = 0;
      v103 = v24;
      v40 = *(a1 + 95);
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v87, &v104, &v100);
      AMCP::DAL::Fixed_Buffer::set_range(*(v40 + 24), &v87);
      v41 = *(v40 + 24);
      v116 = v87;
      v117 = v88;
      v118 = v89;
      v119 = v90;
      if (v90)
      {
        atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v120 = v91;
      v121 = v92;
      v122 = v93;
      v123 = v94;
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::DAL::Fixed_Buffer::create_writable_range(v41, &v116, v140);
      if (v123)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v123);
      }

      if (v119)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v119);
      }

      v42 = *(v40 + 24);
      v44 = *(v42 + 88);
      v43 = *(v42 + 96);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v84 = v43;
      AMCP::DAL::DAL_Timed_Segment::translate_range(v124, v147, v140);
      if (v124[0] != v124[1])
      {
        if (v44)
        {
          if ((*(v44 + 20) & 1) == 0 && *(v44 + 40) == 16)
          {
            operator new();
          }

          if ((*(v44 + 20) & 1) == 0 && *(v44 + 40) == 32)
          {
            operator new();
          }

          if ((*(v44 + 20) & 1) != 0 && *(v44 + 40) == 32)
          {
            operator new();
          }
        }

        v79 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v79 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v45);
        }

        v81 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v80 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v80)
        {
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          v82 = *v81;
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        else
        {
          v82 = *v81;
        }

        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Tone_Generator.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 77;
          *&buf[18] = 2080;
          *&buf[20] = "not (false)";
          _os_log_error_impl(&dword_1DE1F9000, v82, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Format not supported by Tone_Generator", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v109, "Format not supported by Tone_Generator", v83);
        std::logic_error::logic_error(&v126, &v109);
        v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v128, &v126);
        v131 = 0;
        *&v130[10] = 0;
        v132 = 0;
        v133 = -1;
        *v128 = &unk_1F5991430;
        *&v130[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v128);
        v135 = "std::unique_ptr<DAL::Sample_Format_Handler> AMCP::Tone_Generator::create_handler(const DAL::Container &, DAL::Sample_Time_Range) const";
        *&v136 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Tone_Generator.cpp";
        DWORD2(v136) = 77;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v125);
      }

      *buf = v124;
      std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      v46 = *(v40 + 24);
      *buf = v87;
      *&buf[16] = v88;
      *&buf[24] = v89;
      v135 = v90;
      if (v90)
      {
        atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v136 = v91;
      v137 = v92;
      v138 = v93;
      v139 = v94;
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::DAL::Fixed_Buffer::create_readable_range(v46, buf, v95);
      if (v139)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v139);
      }

      if (v135)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v135);
      }

      AMCP::DAL::DAL_Time::operator-(v128, &v97, v95);
      AMCP::DAL::DAL_Time::operator-(&v110, &v91, &v87);
      v47 = AMCP::DAL::DAL_Time_Delta::operator==(v128, &v110);
      if (v113)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v113);
      }

      v48 = v131;
      if (v131)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v131);
      }

      if (!v47)
      {
        v74 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v74 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v48);
        }

        v76 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v75 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v75)
        {
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          v77 = *v76;
          std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        }

        else
        {
          v77 = *v76;
        }

        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          *v128 = 136315650;
          *&v128[4] = "Tone_Generator.cpp";
          v129 = 1024;
          *v130 = 232;
          *&v130[4] = 2080;
          *&v130[6] = "not (results.get_time_range().length() == range.length())";
          _os_log_error_impl(&dword_1DE1F9000, v77, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v128, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v125, "", v78);
        std::logic_error::logic_error(&v126, &v125);
        v126.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v110, &v126);
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v115 = -1;
        v110.__vftable = &unk_1F5991430;
        v111 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v128, &v110);
        v131 = "AMCP::DAL::Readable_Range AMCP::Tone_Generator_Buffer::generate_audio_in_buffer(const AMCP::DAL::DAL_Time_Range &)";
        v132 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Tone_Generator.cpp";
        v133 = 232;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v124);
      }

      if (v146)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v146);
      }

      if (v141)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v141);
      }

      if (v94)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v94);
      }

      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
      }

      AMCP::DAL::DAL_Timed_Segment::translate_range(v140, v99, v95);
      v49 = *v140;
      v50 = *(*(a1 + 95) + 56);
      v52 = **v140;
      v51 = *(*v140 + 8);
      (*(*v99 + 56))(&v116);
      AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(v116, *v49, v49[1]);
      v54 = v53;
      v55 = v50 * vcvtmd_s64_f64(v51 - v52);
      if (*(&v116 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v116 + 1));
      }

      memcpy(v85[1], v54, v55);
      v56 = *v140;
      if (*&v140[8] - *v140 == 192)
      {
        v57 = *(*(a1 + 95) + 56);
        v59 = *(*v140 + 96);
        v58 = *(*v140 + 104);
        (*(*v99 + 56))(&v116);
        AMCP::DAL::PCM_Data_Handler::get_other_data_bytes(v116, *(v56 + 96), *(v56 + 104));
        v61 = v60;
        v62 = v57 * vcvtmd_s64_f64(v58 - v59);
        if (*(&v116 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v116 + 1));
        }

        memcpy(v85[1] + v55, v61, v62);
      }

      *&v116 = v140;
      std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v116);
      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v98);
      }

      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
      }

      if (*(&v103 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v103 + 1));
      }

      if (*(&v107 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v107 + 1));
      }

      v63 = *(&v108 + 1);
      if (*(&v108 + 1))
      {
        goto LABEL_116;
      }
    }
  }

  return 1;
}

void sub_1DE626CB8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50, uint64_t a51, std::__shared_weak_count *a52, uint64_t a53, void *a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (a66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a66);
    }

    a65 = v66 - 256;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&a65);
    AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a30);
    if (a45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a45);
    }

    if (a50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a50);
    }

    if (a52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a52);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AMCP::Null::Engine::set_output_stream_active_list(uint64_t a1, uint64_t a2)
{
  AMCP::Core::Implementation::Simple_Engine_IO_State::set_output_stream_active_list(&__p, a1 + 120, a2);
  if (__p)
  {
    operator delete(__p);
  }
}

void AMCP::Null::Engine::set_input_stream_active_list(uint64_t a1, uint64_t a2)
{
  AMCP::Core::Implementation::Simple_Engine_IO_State::set_input_stream_active_list(&__p, a1 + 120, a2);
  if (__p)
  {
    operator delete(__p);
  }
}

double AMCP::Null::Engine::set_transport_state(uint64_t a1, signed int a2)
{
  v56[9] = *MEMORY[0x1E69E9840];
  v4 = atomic_load((a1 + 136));
  v5 = MEMORY[0x1E12C16E0]();
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2 < 1;
  }

  if (v6)
  {
    if (v4 >= 1 && a2 == 0)
    {
      AMCP::Null::Engine::stop(a1);
    }
  }

  else
  {
    kdebug_trace();
    AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions((a1 + 120));
    AMCP::IO_Clock::reset_time((a1 + 576));
    kdebug_trace();
    v8 = CFStringCreateWithBytes(0, "fail_to_start", 13, 0x8000100u, 0);
    v9 = v8;
    *buf = v8;
    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v10 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a1 + 736), buf);
    CFRelease(v9);
    if (v10 == kCFCompareEqualTo)
    {
      v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v19 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
        *&buf[4] = "Null_Engine.cpp";
        v37 = 1024;
        v38 = 398;
        _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: couldn't start the hardware", buf, 0x12u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&cf);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v27, "couldn't start the hardware", v23);
      std::runtime_error::runtime_error(&v28, &v27);
      std::runtime_error::runtime_error(&v30, &v28);
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35[0] = -1;
      v30.__vftable = &unk_1F5992170;
      v31 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v30);
      *(&v39 + 1) = "void AMCP::Null::Engine::start()";
      *&v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Null/Null_Engine.cpp";
      DWORD2(v40) = 398;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(v24);
    }

    v12 = *(a1 + 752);
    if (v12 && *(v12 + 24) == 1)
    {
      v13 = *(v12 + 48);
      std::string::basic_string[abi:ne200100]<0>(&v27, "Null_Engine_Reflector - stream 0");
      std::string::basic_string[abi:ne200100]<0>(buf, "write");
      v39 = 0u;
      v40 = 0u;
      LOBYTE(v39) = 1;
      v41 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v42, "create unique name");
      v43 = 0u;
      v44 = 0u;
      LOBYTE(v43) = 1;
      v45 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v46, "write time stamps");
      v47 = 0u;
      v48 = 0u;
      LOBYTE(v47) = 1;
      v49 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      get_audio_capture_folder(__p);
      std::string::basic_string[abi:ne200100]<0>(v50, "file location");
      v51 = *__p;
      v52 = v26;
      v53 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v26 = 0;
      v54 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
      std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<char const* const&,std::string const&,0>(v55, "name", &v27);
      asbd_to_dictionary(&cf, v13);
      std::string::basic_string[abi:ne200100]<0>(v56, "asbd");
      memset(&v56[4], 0, 24);
      v56[3] = cf;
      cf = 0;
      v56[7] = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
      v24[0] = buf;
      v24[1] = 6;
      AMCP::DAL::DAL_Settings::DAL_Settings(&v30, v24);
      v14 = 96;
      while (1)
      {
        v15 = &buf[v14 * 4];
        v16 = *&v35[v14];
        if (v16)
        {
          v16(0, v15 - 5, 0, 0);
        }

        if (*(v15 - 41) < 0)
        {
          operator delete(*(v15 - 8));
        }

        v14 -= 16;
        if (!(v14 * 4))
        {
          if (cf)
          {
            CFRelease(cf);
          }

          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          std::allocate_shared[abi:ne200100]<AMCP::DAL::File,std::allocator<AMCP::DAL::File>,CA::StreamDescription const&,AMCP::DAL::DAL_Settings &,0>(&v28, v13, &v30);
        }
      }
    }
  }

  atomic_store(a2, (a1 + 136));
  if (MEMORY[0x1E12C16E0]() > v5)
  {
    atomic_store(0, (a1 + 136));
    return AMCP::Null::Engine::stop(a1);
  }

  return result;
}

void sub_1DE6277F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, int a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (a12)
  {
    a13 = a12;
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a37);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a28);
  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (v38)
  {
    __cxa_free_exception(v37);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a26);
  applesauce::raii::v1::detail::ScopeGuard<AMCP::Null::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&a10);
  _Unwind_Resume(a1);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<AMCP::Null::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 8);
    atomic_store(0, v2 + 34);
    AMCP::Null::Engine::stop(v2);
  }

  return a1;
}

double AMCP::Null::Engine::stop(AMCP::Null::Engine *this)
{
  v2 = *(this + 94);
  if (v2)
  {
    if (*(v2 + 24) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }
  }

  kdebug_trace();
  AMCP::IO_Clock::reset_time(this + 144);
  AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions(this + 30);
  kdebug_trace();
  return result;
}

__n128 AMCP::Null::Engine::get_stream_format@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = 48;
  if (!a2)
  {
    v4 = 72;
  }

  v5 = a1 + v4;
  v6 = *(a1 + v4 + 24);
  v7 = *(v5 + 32);
  while (1)
  {
    if (v6 == v7)
    {
      *(a4 + 32) = 0;
      result.n128_u64[0] = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    if (*v6 == a3)
    {
      break;
    }

    v6 += 56;
  }

  result = *(v6 + 16);
  v9 = *(v6 + 32);
  *a4 = result;
  *(a4 + 16) = v9;
  *(a4 + 32) = *(v6 + 48);
  return result;
}

void AMCP::Null::Engine::~Engine(AMCP::Null::Engine *this)
{
  AMCP::Null::Engine::~Engine(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59849F0;
  AMCP::Null::Engine::set_transport_state(this, 0);
  v2 = *(this + 95);
  *(this + 95) = 0;
  if (v2)
  {
    std::default_delete<AMCP::Tone_Generator_Buffer>::operator()[abi:ne200100](v2);
  }

  std::unique_ptr<AMCP::Null::Null_Engine_Reflector>::reset[abi:ne200100](this + 94, 0);
  v3 = *(this + 92);
  if (v3)
  {
    CFRelease(v3);
  }

  AMCP::IO_Clock::~IO_Clock((this + 576));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 240));
  v4 = *(this + 29);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 27);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 18);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    *(this + 13) = v8;
    operator delete(v8);
  }

  v9 = *(this + 9);
  if (v9)
  {
    *(this + 10) = v9;
    operator delete(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void std::default_delete<AMCP::Tone_Generator_Buffer>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t *std::unique_ptr<AMCP::Null::Null_Engine_Reflector>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      *(v2 + 56) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 40);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v2;
    std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v5);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Null::Engine::Engine(applesauce::CF::StringRef,double,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&,AMCP::Null::Input_Source,BOOL,unsigned int)::$_0,std::allocator<AMCP::Null::Engine::Engine(applesauce::CF::StringRef,double,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&,AMCP::Null::Input_Source,BOOL,unsigned int)::$_0>,CA::TimeStamp ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Null6EngineC1EN10applesauce2CF9StringRefEdjbjjjjS4_RKNSt3__16vectorINS_4Core14Implementation18Simple_Engine_Data11Stream_InfoENS5_9allocatorISA_EEEESF_RKNS_7Utility14Dispatch_QueueENS0_12Input_SourceEbjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Null::Engine::Engine(applesauce::CF::StringRef,double,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&,AMCP::Null::Input_Source,BOOL,unsigned int)::$_0,std::allocator<AMCP::Null::Engine::Engine(applesauce::CF::StringRef,double,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,applesauce::CF::StringRef,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,AMCP::Utility::Dispatch_Queue const&,AMCP::Null::Input_Source,BOOL,unsigned int)::$_0>,CA::TimeStamp ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5984BA8;
  a2[1] = v2;
  return result;
}

void AMCP::DAL::Mixing_Ring_Buffer::get_direct_write_ranges(AMCP::DAL::Mixing_Ring_Buffer *this@<X0>, const AMCP::DAL::DAL_Time_Range *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  AMCP::DAL::Ring_Buffer_Base::translate_range(this, a2);
  v5 = v27;
  for (i = v28; v5 != i; v5 += 6)
  {
    v7 = v5[1];
    v18 = *v5;
    v19 = v7;
    v8 = *(v5 + 5);
    v20 = *(v5 + 4);
    v9 = *(v5 + 6);
    v21 = v8;
    v22 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(v5 + 56);
    v10 = *(v5 + 10);
    v24 = *(v5 + 9);
    v11 = *(v5 + 11);
    v25 = v10;
    v26 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(this + 12);
    *&v17 = *(this + 11);
    *(&v17 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = a3[1];
    if (v13 >= a3[2])
    {
      v15 = std::vector<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range&,AMCP::DAL::Container>(a3, &v18, &v17);
      v16 = *(&v17 + 1);
      a3[1] = v15;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    else
    {
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 40) = v8;
      *(v13 + 48) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v13 + 56) = v23;
      *(v13 + 72) = v24;
      *(v13 + 80) = v10;
      *(v13 + 88) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v13 + 96) = v17;
      a3[1] = v13 + 112;
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  *&v18 = &v27;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void sub_1DE628048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Mixing_Ring_Buffer::receive_data_at_range(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  (*(*a1 + 64))(v15);
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(v22, a4, v15);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v27, v22);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::difference(v22, a4, &v27);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(v18, v22);
  if (AMCP::DAL::DAL_Time::operator<(&v27, &v31))
  {
    v7 = v27;
    v8 = v28;
    v9 = v29;
    v10 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v31;
    v12 = v32;
    v13 = v33;
    v14 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Readable_Range::Readable_Range(v15, &v7, a3);
    AMCP::DAL::Ring_Buffer_Base::receive_data_mix(a1, v15);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  if (AMCP::DAL::DAL_Time::operator<(v18, &v20))
  {
    AMCP::DAL::Ring_Buffer_Base::receive_data_write_at_range(a1, a3, a4);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }
}

void sub_1DE62828C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a20);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a9);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a31);
  std::pair<caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>,caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>>::~pair(va);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v40 - 128));
  _Unwind_Resume(a1);
}

void caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::difference(uint64_t a1, __int128 *a2, void *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
  }

  else
  {
    *(a1 + 24) = v6;
  }

  v8 = (a2 + 40);
  *(a1 + 40) = *(a2 + 10);
  v9 = (a1 + 40);
  *(a1 + 48) = a2[3];
  v11 = *(a2 + 8);
  v10 = *(a2 + 9);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = v11;
  *(a1 + 72) = v10;
  caulk::make_empty_time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>(&v45, a2);
  *(a1 + 80) = v45;
  *(a1 + 96) = v46;
  v35 = *(&v47 + 1);
  *(a1 + 104) = v47;
  *(a1 + 120) = v48;
  *(a1 + 136) = v49;
  v36 = *(&v50 + 1);
  *(a1 + 144) = v50;
  if (AMCP::DAL::DAL_Time::operator<(a3, (a3 + 5)) && caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersects(a2, a3))
  {
    if (AMCP::DAL::DAL_Time::operator<(a2, a3))
    {
      if (AMCP::DAL::DAL_Time::operator<((a3 + 5), (a2 + 40)))
      {
        v45 = *a2;
        v12 = *(a2 + 3);
        v46 = *(a2 + 2);
        v13 = *(a2 + 4);
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v37 = *a3;
        v14 = a3[3];
        v41 = a3[2];
        v15 = a3[4];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        *a1 = v45;
        *(a1 + 16) = v46;
        *(a1 + 24) = v12;
        v16 = *(a1 + 32);
        *(a1 + 32) = v13;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        *v9 = v37;
        *(a1 + 56) = v41;
        *(a1 + 64) = v14;
        *(a1 + 72) = v15;
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        v45 = *(a3 + 5);
        v17 = a3[8];
        v46 = a3[7];
        v18 = a3[9];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v38 = *v8;
        v42 = *(a2 + 7);
        v20 = *(a2 + 8);
        v19 = *(a2 + 9);
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        v10 = v36;
        *(a1 + 80) = v45;
        *(a1 + 96) = v46;
        *(a1 + 104) = v17;
        *(a1 + 112) = v18;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        *(a1 + 120) = v38;
        *(a1 + 136) = v42;
        *(a1 + 144) = v20;
        *(a1 + 152) = v19;
        if (!v36)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v45 = *a2;
        v30 = *(a2 + 3);
        v46 = *(a2 + 2);
        v31 = *(a2 + 4);
        if (v31)
        {
          atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
        }

        v40 = *a3;
        v32 = a3[3];
        v44 = a3[2];
        v33 = a3[4];
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        *a1 = v45;
        *(a1 + 16) = v46;
        *(a1 + 24) = v30;
        v34 = *(a1 + 32);
        *(a1 + 32) = v31;
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        *v9 = v40;
        *(a1 + 56) = v44;
        *(a1 + 64) = v32;
        *(a1 + 72) = v33;
        if (!v10)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v45 = *(a3 + 5);
      v21 = a3[8];
      v46 = a3[7];
      v22 = a3[9];
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v39 = *v9;
      v43 = *(a1 + 56);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *a1 = v45;
      *(a1 + 16) = v46;
      *(a1 + 24) = v21;
      v23 = *(a1 + 32);
      *(a1 + 32) = v22;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      *v9 = v39;
      *(a1 + 56) = v43;
      *(a1 + 64) = v11;
      *(a1 + 72) = v10;
      if (!v10)
      {
        goto LABEL_34;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_34:
    if (!AMCP::DAL::DAL_Time::operator<(a1, (a1 + 40)))
    {
      *a1 = *(a1 + 80);
      *(a1 + 8) = *(a1 + 88);
      v24 = *(a1 + 104);
      v25 = *(a1 + 112);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(a1 + 32);
      *(a1 + 24) = v24;
      *(a1 + 32) = v25;
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      *(a1 + 40) = *(a1 + 120);
      *(a1 + 48) = *(a1 + 128);
      v27 = *(a1 + 144);
      v28 = *(a1 + 152);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = *(a1 + 72);
      *(a1 + 64) = v27;
      *(a1 + 72) = v28;
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      caulk::make_empty_time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>(&v45, a2);
      *(a1 + 80) = v45;
      *(a1 + 96) = v46;
      *(a1 + 104) = v47;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      *(a1 + 120) = v48;
      *(a1 + 136) = v49;
      *(a1 + 144) = v50;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }
    }
  }
}

uint64_t AMCP::DAL::Readable_Range::Readable_Range(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v10 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v7 = *(a3 + 80);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  *(a1 + 24) = v4;
  *(a1 + 56) = v5;
  *(a1 + 40) = v10;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

void *std::pair<caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>,caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>>::~pair(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[9];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[4];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void caulk::make_empty_time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 24);
    v4 = *(a2 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a1 = 2;
    *(a1 + 12) = 0;
    *(a1 + 4) = 0;
    *(a1 + 20) = 0;
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 40) = 2;
    *(a1 + 52) = 0;
    *(a1 + 44) = 0;
    *(a1 + 60) = 0;
    *(a1 + 64) = v5;
    *(a1 + 72) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    *a1 = 2;
    *(a1 + 12) = 0;
    *(a1 + 4) = 0;
    *(a1 + 20) = 0;
    *(a1 + 24) = v2;
    *(a1 + 32) = 0;
    *(a1 + 40) = 2;
    *(a1 + 52) = 0;
    *(a1 + 44) = 0;
    *(a1 + 60) = 0;
    *(a1 + 64) = v2;
    *(a1 + 72) = 0;
  }
}

BOOL caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersects(void *a1, void *a2)
{
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(v4, a1, a2);
  v2 = AMCP::DAL::DAL_Time::operator<(v4, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void AMCP::DAL::Mixing_Ring_Buffer::receive_data(void *a1, uint64_t a2, __int128 *a3)
{
  (*(*a1 + 64))(v21);
  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::intersection(v32, a3, v21);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v37, v32);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::difference(v32, a3, &v37);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v24, v32);
  if (AMCP::DAL::DAL_Time::operator<(&v37, &v41))
  {
    v13 = v37;
    v14 = v38;
    v15 = v39;
    v16 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v41;
    v18 = v42;
    v19 = v43;
    v20 = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Readable_Range::Readable_Range(v21, &v13, a3);
    AMCP::DAL::Ring_Buffer_Base::receive_data_mix(a1, v21);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  if (AMCP::DAL::DAL_Time::operator<(&v24, &v28))
  {
    v5 = v24;
    v6 = v25;
    v7 = v26;
    v8 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v28;
    v10 = v29;
    v11 = v30;
    v12 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Readable_Range::Readable_Range(v21, &v5, a3);
    AMCP::DAL::Ring_Buffer_Base::receive_data_write(a1, v21);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }
}

void sub_1DE628BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a30);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a9);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a41);
  std::pair<caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>,caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>>::~pair(&a51);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v51 - 112));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Mixing_Ring_Buffer::~Mixing_Ring_Buffer(AMCP::DAL::Mixing_Ring_Buffer *this)
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

  JUMPOUT(0x1E12C1730);
}

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

void KaiserWindow::KaiserWindow(KaiserWindow *this, int a2, double a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (a2 != -1)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](this + 2, (a2 + 1));
  }

  if (a3 >= 50.0)
  {
    v3 = (a3 + -8.7) * 0.1102;
  }

  else
  {
    v3 = 0.0;
    if (a3 > 21.0)
    {
      v3 = (a3 + -21.0) * 0.07886 + pow(a3 + -21.0, 0.4) * 0.5842;
    }
  }

  bessi0(v3);
  v5 = 0;
  v6 = 1.0 / v4;
  do
  {
    bessi0(v3 * sqrt(1.0 - (v5 - 0x7FFFFFFFu) / 0x7FFFFFFFu * ((v5 - 0x7FFFFFFFu) / 0x7FFFFFFFu)));
    *&v7 = v6 * v7;
    *(4 * v5++ + 4) = LODWORD(v7);
  }

  while (v5 != 0xFFFFFFFFLL);
  MEMORY[0] = 0;
}

void sub_1DE628EBC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<KaiserWindow>,KaiserWindow*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

void bessi0(double a1)
{
  v1 = fabs(a1);
  if (v1 >= 3.75)
  {
    exp(v1);
  }
}

uint64_t AMCP::DAL::STLI_Resampler::get_expected_output_samples_for_input_samples(AMCP::DAL::STLI_Resampler *this, unsigned int a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v12 = 100 * a2;
  v13 = a2;
  ShortTermLinearInterpolationResampler::PreFlight(**(this + 12), &v13, &v12, a9, a4, a5, a6, a7, a8, v11);
  result = v12;
  *a3 = v13;
  return result;
}

uint64_t AMCP::DAL::STLI_Resampler::get_required_input_samples_for_output_samples(AMCP::DAL::STLI_Resampler *this, unsigned int a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a2;
  v11 = 100 * a2;
  ShortTermLinearInterpolationResampler::PreFlight(**(this + 12), &v11, &v12, a3, a5, a6, a7, a8, a9, v10);
  return v11;
}

double AMCP::DAL::STLI_Resampler::process(uint64_t a1, void *a2, uint64_t ***a3, void *a4, double a5, double a6, double a7)
{
  v132 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == *(a1 + 104))
  {
    v82 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v82 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v84 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v83 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v83)
    {
      atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
      v85 = *v84;
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    else
    {
      v85 = *v84;
    }

    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "STLI_Resampler.cpp";
      v124 = 1024;
      v125 = 37;
      v126 = 2080;
      v127 = "not (not m_resamplers.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v85, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v114);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v116, "", v94);
    std::logic_error::logic_error(&v113, &v116);
    v113.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v117, &v113);
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = -1;
    v117.__vftable = &unk_1F5991430;
    v118 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v117);
    *&v129[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v130 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
    v131 = 37;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v115);
  }

  if (*a2 == a2[1])
  {
    v86 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v86 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v88 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v87 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v87)
    {
      atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
      v89 = *v88;
      std::__shared_weak_count::__release_shared[abi:ne200100](v87);
    }

    else
    {
      v89 = *v88;
    }

    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "STLI_Resampler.cpp";
      v124 = 1024;
      v125 = 38;
      v126 = 2080;
      v127 = "not (not source.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v89, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v114);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v116, "", v95);
    std::logic_error::logic_error(&v113, &v116);
    v113.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v117, &v113);
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = -1;
    v117.__vftable = &unk_1F5991430;
    v118 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v117);
    *&v129[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v130 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
    v131 = 38;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v115);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "scale ratio");
  v14 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a4, buf);
  if (v14)
  {
    v15 = AMCP::Thing::convert_to<double>((v14 + 5));
  }

  else
  {
    v15 = 1.0;
  }

  if (SBYTE3(v127) < 0)
  {
    operator delete(*buf);
  }

  v16 = a7 - a6;
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  if (v17 != v18)
  {
    v19 = vcvtmd_s64_f64(v16);
    v20 = vcvtmd_s64_f64(a5);
    do
    {
      ShortTermLinearInterpolationResampler::SetRate(*v17, v15);
      if (*(a1 + 88) == 1)
      {
        *buf = v20;
        LODWORD(v117.__vftable) = 100 * v20;
        v27 = ShortTermLinearInterpolationResampler::PreFlight(**(a1 + 96), buf, &v117, v26, v21, v22, v23, v24, v25, v108);
        if (!LODWORD(v117.__vftable))
        {
          v56 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v56 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v27);
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
            *buf = 136315650;
            *&buf[4] = "STLI_Resampler.cpp";
            v124 = 1024;
            v125 = 50;
            v126 = 2080;
            v127 = "not (output_length > 0)";
            _os_log_error_impl(&dword_1DE1F9000, v59, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v114);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v116, "", v80);
          std::logic_error::logic_error(&v113, &v116);
          v113.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v117, &v113);
          v119 = 0;
          v120 = 0;
          v121 = 0;
          v122 = -1;
          v117.__vftable = &unk_1F5991430;
          v118 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v117);
          *&v129[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v130 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
          v131 = 50;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v115);
        }

        v16 = LODWORD(v117.__vftable);
      }

      else
      {
        *buf = v19;
        LODWORD(v117.__vftable) = 100 * v19;
        v28 = ShortTermLinearInterpolationResampler::PreFlight(**(a1 + 96), &v117, buf, v26, v21, v22, v23, v24, v25, v108);
        LODWORD(v29) = v117.__vftable;
        if (vabdd_f64(v29, a5) > 1.0)
        {
          v60 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v60 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v28);
          }

          v62 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v61 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v61)
          {
            atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
            v63 = *v62;
            std::__shared_weak_count::__release_shared[abi:ne200100](v61);
          }

          else
          {
            v63 = *v62;
          }

          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "STLI_Resampler.cpp";
            v124 = 1024;
            v125 = 56;
            v126 = 2080;
            v127 = "not (std::abs(static_cast<double>(actual_input_consumed) - number_of_samples.get_double()) <= 1.0)";
            _os_log_error_impl(&dword_1DE1F9000, v63, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v114);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v116, "", v81);
          std::logic_error::logic_error(&v113, &v116);
          v113.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v117, &v113);
          v119 = 0;
          v120 = 0;
          v121 = 0;
          v122 = -1;
          v117.__vftable = &unk_1F5991430;
          v118 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v117);
          *&v129[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v130 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
          v131 = 56;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v115);
        }
      }

      ++v17;
    }

    while (v17 != v18);
  }

  v30 = *a3;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a3);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(&v116, v30, a6, a6 + v16);
  v33 = *a3;
  if (*a3)
  {
    if ((*(v33 + 20) & 0x20) != 0)
    {
      v34 = 1;
    }

    else
    {
      v34 = *(v33 + 36);
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = a2[1] - *a2;
  if (v35 != v116.__r_.__value_.__l.__size_ - v116.__r_.__value_.__r.__words[0])
  {
    v90 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v90 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v31);
    }

    v92 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v91 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v91)
    {
      atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
      v93 = *v92;
      std::__shared_weak_count::__release_shared[abi:ne200100](v91);
    }

    else
    {
      v93 = *v92;
    }

    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "STLI_Resampler.cpp";
      v124 = 1024;
      v125 = 65;
      v126 = 2080;
      v127 = "not (stream_count == dest.size())";
      _os_log_error_impl(&dword_1DE1F9000, v93, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v112);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v115, "", v96);
    std::logic_error::logic_error(&v114, &v115);
    v114.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v117, &v114);
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = -1;
    v117.__vftable = &unk_1F5991430;
    v118 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v117);
    *&v129[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v130 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
    v131 = 65;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v113);
  }

  if ((*(a1 + 60) & 0x20) != 0)
  {
    v109 = v35 >> 4;
    if ((v35 >> 4) >= 2)
    {
      v48 = 0;
      v49 = 0;
      v50 = vcvtmd_s64_f64(a5);
      v51 = vcvtmd_s64_f64(v16);
      do
      {
        v111 = v51;
        v112 = v50;
        v52 = *(a1 + 96);
        if (v49 >= (*(a1 + 104) - v52) >> 3)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v53 = ShortTermLinearInterpolationResampler::PushConvertFloat(*(v52 + 8 * v49), *(*a2 + v48), *(*a2 + v48 + 16), *(v116.__r_.__value_.__r.__words[0] + v48), *(v116.__r_.__value_.__r.__words[0] + v48 + 16), &v112, &v111, v34, v32, v34);
        if (v53)
        {
          v69 = v53;
          v70 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v70 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v53);
          }

          v72 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v71 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            v73 = *v72;
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }

          else
          {
            v73 = *v72;
          }

          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v77 = strerror(v69);
            *buf = 136315906;
            *&buf[4] = "STLI_Resampler.cpp";
            v124 = 1024;
            v125 = 98;
            v126 = 2080;
            v127 = "not (err == noErr)";
            v128 = 2080;
            *v129 = v77;
            _os_log_error_impl(&dword_1DE1F9000, v73, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s err:%s while calling STLI PushConvertFloat", buf, 0x26u);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v110);
          __cxa_allocate_exception(0x40uLL);
          v78 = strerror(v69);
          caulk::make_string(&v115, "err:%s while calling STLI PushConvertFloat", v79, v78);
          std::logic_error::logic_error(&v114, &v115);
          v114.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v117, &v114);
          v119 = 0;
          v120 = 0;
          v121 = 0;
          v122 = -1;
          v117.__vftable = &unk_1F5991430;
          v118 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v117);
          *&v129[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v130 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
          v131 = 98;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v113);
        }

        ++v49;
        v48 += 16;
      }

      while (v109 >> 1 != v49);
    }

    if ((v35 & 0x10) != 0)
    {
      v111 = vcvtmd_s64_f64(v16);
      v112 = vcvtmd_s64_f64(a5);
      v54 = ShortTermLinearInterpolationResampler::PushConvertFloat(*(*(a1 + 104) - 8), *(*a2 + 16 * v109 - 16), 0, *(v116.__r_.__value_.__r.__words[0] + 16 * v109 - 16), 0, &v112, &v111, v34, v32, v34);
      if (v54)
      {
        v97 = v54;
        v98 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v98 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v54);
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
          v105 = strerror(v97);
          *buf = 136315906;
          *&buf[4] = "STLI_Resampler.cpp";
          v124 = 1024;
          v125 = 108;
          v126 = 2080;
          v127 = "not (err == noErr)";
          v128 = 2080;
          *v129 = v105;
          _os_log_error_impl(&dword_1DE1F9000, v101, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s err:%s while calling STLI PushConvertFloat", buf, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v110);
        __cxa_allocate_exception(0x40uLL);
        v106 = strerror(v97);
        caulk::make_string(&v115, "err:%s while calling STLI PushConvertFloat", v107, v106);
        std::logic_error::logic_error(&v114, &v115);
        v114.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v117, &v114);
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = -1;
        v117.__vftable = &unk_1F5991430;
        v118 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v117);
        *&v129[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
        v130 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
        v131 = 108;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v113);
      }
    }
  }

  else
  {
    if (v34 >= 2)
    {
      v36 = 0;
      v37 = vcvtmd_s64_f64(a5);
      v38 = vcvtmd_s64_f64(v16);
      v39 = 4;
      do
      {
        v111 = v38;
        v112 = v37;
        v40 = *(a1 + 96);
        if (v36 >= (*(a1 + 104) - v40) >> 3)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v41 = ShortTermLinearInterpolationResampler::PushConvertFloat(*(v40 + 8 * v36), (**a2 + v39 - 4), (**a2 + v39), *v116.__r_.__value_.__l.__data_, (*v116.__r_.__value_.__l.__data_ + v39), &v112, &v111, v34, v32, v34);
        if (v41)
        {
          v64 = v41;
          v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v65 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v41);
          }

          v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v66 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
            v68 = *v67;
            std::__shared_weak_count::__release_shared[abi:ne200100](v66);
          }

          else
          {
            v68 = *v67;
          }

          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v74 = strerror(v64);
            *buf = 136315906;
            *&buf[4] = "STLI_Resampler.cpp";
            v124 = 1024;
            v125 = 76;
            v126 = 2080;
            v127 = "not (err == noErr)";
            v128 = 2080;
            *v129 = v74;
            _os_log_error_impl(&dword_1DE1F9000, v68, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s err:%s while calling STLI PushConvertFloat", buf, 0x26u);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v110);
          __cxa_allocate_exception(0x40uLL);
          v75 = strerror(v64);
          caulk::make_string(&v115, "err:%s while calling STLI PushConvertFloat", v76, v75);
          std::logic_error::logic_error(&v114, &v115);
          v114.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v117, &v114);
          v119 = 0;
          v120 = 0;
          v121 = 0;
          v122 = -1;
          v117.__vftable = &unk_1F5991430;
          v118 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v117);
          *&v129[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v130 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
          v131 = 76;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v113);
        }

        ++v36;
        v39 += 8;
      }

      while (v34 >> 1 != v36);
    }

    if (v34)
    {
      v111 = vcvtmd_s64_f64(v16);
      v112 = vcvtmd_s64_f64(a5);
      v42 = ShortTermLinearInterpolationResampler::PushConvertFloat(*(*(a1 + 104) - 8), (**a2 + 4 * (v34 - 1)), 0, (*v116.__r_.__value_.__l.__data_ + 4 * (v34 - 1)), 0, &v112, &v111, v34, v32, v34);
      if (v42)
      {
        v43 = v42;
        v44 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v44 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v42);
        }

        v46 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v45 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          v47 = *v46;
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        else
        {
          v47 = *v46;
        }

        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v102 = strerror(v43);
          *buf = 136315906;
          *&buf[4] = "STLI_Resampler.cpp";
          v124 = 1024;
          v125 = 86;
          v126 = 2080;
          v127 = "not (err == noErr)";
          v128 = 2080;
          *v129 = v102;
          _os_log_error_impl(&dword_1DE1F9000, v47, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s err:%s while calling STLI PushConvertFloat", buf, 0x26u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v110);
        __cxa_allocate_exception(0x40uLL);
        v103 = strerror(v43);
        caulk::make_string(&v115, "err:%s while calling STLI PushConvertFloat", v104, v103);
        std::logic_error::logic_error(&v114, &v115);
        v114.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v117, &v114);
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = -1;
        v117.__vftable = &unk_1F5991430;
        v118 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v117);
        *&v129[2] = "virtual Sample_Time_Range AMCP::DAL::STLI_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
        v130 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/STLI_Resampler.cpp";
        v131 = 86;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v113);
      }
    }
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v116);
  return a6;
}

void AMCP::DAL::STLI_Resampler::~STLI_Resampler(AMCP::DAL::STLI_Resampler *this)
{
  v1 = (this + 96);
  std::vector<std::unique_ptr<ShortTermLinearInterpolationResampler>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = (this + 96);
  std::vector<std::unique_ptr<ShortTermLinearInterpolationResampler>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void std::vector<std::unique_ptr<ShortTermLinearInterpolationResampler>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          MEMORY[0x1E12C1730](v6, 0x1000C40AC875A91);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t HALS_IOUAUCDriver::request_config_change_callback(HALS_IOUAUCDriver *this, void *a2, uint64_t a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!this)
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
      v33 = "HALS_IOUAUCDriver.cpp";
      v34 = 1024;
      v35 = 663;
      v36 = 2080;
      v37 = "(uc_driver) == nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s UC driver is null", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v31);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v24, "UC driver is null");
    std::runtime_error::runtime_error(&v25, &v24);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = -1;
    v25.__vftable = &unk_1F5992170;
    v26 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v25);
    v38 = "static void HALS_IOUAUCDriver::request_config_change_callback(void *, IOReturn, void *, uint32_t)";
    v39 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v40 = 663;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v22);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "request config change: size ", 28);
  v8 = MEMORY[0x1E12C1210](v7, a4);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v25, MEMORY[0x1E69E5318]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v25);
  std::ostream::put();
  v10 = std::ostream::flush();
  if (a4 <= 2)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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
      v33 = "HALS_IOUAUCDriver.cpp";
      v34 = 1024;
      v35 = 669;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Incorrect size for request config change", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v31);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v24, "Incorrect size for request config change");
    std::runtime_error::runtime_error(&v25, &v24);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = -1;
    v25.__vftable = &unk_1F5992170;
    v26 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v25);
    v38 = "static void HALS_IOUAUCDriver::request_config_change_callback(void *, IOReturn, void *, uint32_t)";
    v39 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v40 = 669;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v22);
  }

  result = *(this + 94);
  if (result)
  {
    v13 = *(a3 + 8);
    v12 = *(a3 + 16);
    LODWORD(v22) = *a3;
    v25.__vftable = v13;
    v23 = v12;
    return (*(*result + 48))(result, &v22, &v25, &v23);
  }

  return result;
}

void sub_1DE62B0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, std::locale a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, int buf, int a30, int a31, __int16 a32)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a9)
    {
      operator delete(a9);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&buf);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a18);
    std::runtime_error::~runtime_error(&a17);
    if (v33)
    {
      __cxa_free_exception(v32);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a28);
    v36 = __cxa_begin_catch(exception_object);
    v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v37 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v36);
    }

    v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v40 = *v39;
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    else
    {
      v40 = *v39;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      *(v34 + 4) = "HALS_IOUAUCDriver.cpp";
      a32 = 1024;
      *(v34 + 14) = 684;
      _os_log_error_impl(&dword_1DE1F9000, v40, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception handling config change request", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE62ACF8);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUAUCDriver::abort_configuration_change(HALS_IOUAUCDriver *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  v5 = IOConnectCallMethod(this, 5u, input, 3u, 0, 0, 0, 0, 0, 0);
  if (v5)
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
      v11 = "HALS_IOUAUCDriver.cpp";
      v12 = 1024;
      v13 = 598;
      v14 = 1024;
      v15 = a2;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to abort configuration change for device id %u", buf, 0x18u);
    }
  }
}

void sub_1DE62B3DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void HALS_IOUAUCDriver::properties_changed_callback(HALS_IOUAUCDriver *this, void *a2, int *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((a4 - 1) <= 1)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
      *&buf[4] = "HALS_IOUAUCDriver.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 622;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: properties changed, bad size", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v31);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v24, "properties changed, bad size");
    std::runtime_error::runtime_error(&v25, &v24);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = -1;
    v25.__vftable = &unk_1F5992170;
    v26 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v25);
    v33 = "static void HALS_IOUAUCDriver::properties_changed_callback(void *, IOReturn, void *, uint32_t)";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v35 = 622;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
  }

  v4 = 0;
  v5 = 0;
  v6 = a3 + 2;
  v21 = *a3;
  v7 = (a4 - 2);
  memset(buf, 0, 24);
  do
  {
    v9 = *v6;
    v6 += 2;
    v8 = v9;
    v10 = v5 - v4;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 2);
    v12 = v11 + 1;
    if (v11 + 1 > 0x1555555555555555)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    if (0x5555555555555556 * (-v4 >> 2) > v12)
    {
      v12 = 0x5555555555555556 * (-v4 >> 2);
    }

    if (0xAAAAAAAAAAAAAAABLL * (-v4 >> 2) >= 0xAAAAAAAAAAAAAAALL)
    {
      v13 = 0x1555555555555555;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v13);
    }

    v14 = 12 * v11;
    *v14 = v8;
    *(v14 + 4) = 1735159650;
    v5 = 12 * v11 + 12;
    v15 = (v14 + 12 * (v10 / -12));
    memcpy(v15, v4, v10);
    *buf = v15;
    *&buf[16] = 0;
    if (v4)
    {
      operator delete(v4);
    }

    v4 = v15;
    *&buf[8] = v5;
    --v7;
  }

  while (v7);
  v16 = *(this + 90);
  if (v16)
  {
    LODWORD(v25.__vftable) = v21;
    (*(*v16 + 48))(v16, &v25, buf);
    v4 = *buf;
  }

  if (v4)
  {
    *&buf[8] = v4;
    operator delete(v4);
  }
}

void sub_1DE62B7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, __int128 buf)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&buf);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a20);
    std::runtime_error::~runtime_error(&a19);
    if (v32)
    {
      __cxa_free_exception(v31);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a30);
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
      *(&buf + 4) = "HALS_IOUAUCDriver.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 647;
      _os_log_error_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception handling properties changed callback", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE62B590);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAUCDriver::GetPropertySize(HALS_IOUAUCDriver *this, const AudioObjectPropertyAddress *a2, unsigned int a3, const void *inputStruct, size_t inputStructCnt)
{
  v39 = *MEMORY[0x1E69E9840];
  *&v7 = *&a2->mSelector;
  *(&v7 + 1) = HIDWORD(*&a2->mSelector);
  v37 = v7;
  mElement = a2->mElement;
  input = a3;
  v38 = mElement;
  output = 0;
  outputCnt = 1;
  v9 = IOConnectCallMethod(this, 0xDu, &input, 4u, inputStruct, inputStructCnt, &output, &outputCnt, 0, 0);
  if (v9)
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
      v27 = "HALS_IOUAUCDriver.cpp";
      v28 = 1024;
      v29 = 237;
      v30 = 2080;
      v31 = p_p;
      v32 = 1024;
      *v33 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to get property size %s, object id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "Failed to get property size");
    std::runtime_error::runtime_error(&__p, &v17);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v33[2] = "size_t HALS_IOUAUCDriver::GetPropertySize(const AudioObjectPropertyAddress *, AudioObjectID, const void *, size_t)";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v35 = 237;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  return output;
}

void sub_1DE62BC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
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

AMCP::Log::AMCP_Scope_Registry *HALS_IOUAUCDriver::GetPropertyData(HALS_IOUAUCDriver *this, const AudioObjectPropertyAddress *a2, unsigned int a3, const void *inputStruct, size_t inputStructCnt, void *outputStruct, unint64_t *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  *&v10 = *&a2->mSelector;
  *(&v10 + 1) = HIDWORD(*&a2->mSelector);
  v39 = v10;
  mElement = a2->mElement;
  input = a3;
  v40 = mElement;
  output = 0;
  outputCnt = 1;
  result = IOConnectCallMethod(this, 0xEu, &input, 4u, inputStruct, inputStructCnt, &output, &outputCnt, outputStruct, a7);
  if (result)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v29 = "HALS_IOUAUCDriver.cpp";
      v30 = 1024;
      v31 = 183;
      v32 = 2080;
      v33 = p_p;
      v34 = 1024;
      *v35 = a3;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to get property data list size %s, object id %u", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v19, "Failed to get property data list size");
    std::runtime_error::runtime_error(&__p, &v19);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    __p.__r_.__value_.__r.__words[0] = &unk_1F5992170;
    __p.__r_.__value_.__r.__words[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &__p);
    *&v35[2] = "void HALS_IOUAUCDriver::GetPropertyData(const AudioObjectPropertyAddress *, AudioObjectID, const void *, size_t, void *, size_t *)";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v37 = 183;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  *a7 = output;
  return result;
}