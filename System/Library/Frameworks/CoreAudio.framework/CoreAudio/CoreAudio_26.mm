void sub_1DE3DE154(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::__deallocate_node(v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x1DE3DE528);
}

void sub_1DE3DE1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::runtime_error a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v69 - 192);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a66);
  std::runtime_error::~runtime_error(&a25);
  if (*(v69 - 217) < 0)
  {
    operator delete(*(v69 - 240));
  }

  if (v67)
  {
    __cxa_free_exception(v66);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a54);
  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a65);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  JUMPOUT(0x1DE3DE418);
}

void sub_1DE3DE270(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,void *>>>::operator()[abi:ne200100](1, v32);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  JUMPOUT(0x1DE3DE330);
}

void sub_1DE3DE290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v65 - 240) = &a65;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100]((v65 - 240));
  JUMPOUT(0x1DE3DE2A4);
}

void sub_1DE3DE2D4()
{
  if (v0)
  {
    JUMPOUT(0x1DE3DE2E0);
  }

  JUMPOUT(0x1DE3DE418);
}

void sub_1DE3DE310(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE3DE528);
}

void sub_1DE3DE348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    a59 = __p;
    operator delete(__p);
  }

  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v69 - 192);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a67);
  MEMORY[0x1E12C0F00](&a66);
  if (a65 < 0)
  {
    operator delete(a62);
  }

  if (v68)
  {
    __cxa_free_exception(v67);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a31);
  JUMPOUT(0x1DE3DE3D0);
}

void sub_1DE3DE3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char *a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(v48 - 240);
  AMCP::Modify_Graph_Destroy_List::~Modify_Graph_Destroy_List(&a19);
  if (a28 == 1 && __p)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(a36);
  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  AMCP::IO_Core::Device_Node_Factory::~Device_Node_Factory(&a41);
  a19 = &a48;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = &a45;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<AMCP::Node_Description>::__init_with_size[abi:ne200100]<AMCP::Node_Description*,AMCP::Node_Description*>(uint64_t *result, AMCP::Node_Description *a2, AMCP::Node_Description *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AMCP::Node_Description>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE3DE598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Graph_Manager::find_contexts_using_timebase(void *a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  AMCP::Graph::Graph::get_nodes(&v14, a2[25]);
  v5 = v14;
  for (i = v15; v5 != i; v5 += 16)
  {
    v7 = *(*v5 + 176);
    if (v7)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    (*(*a2 + 16))(&v10, a2);
    v9 = (*(*v10 + 16))(v10);
    AMCP::Core::Broker::fetch_core(&v12, v9, v8);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v12)
    {
      v10 = 0x676C6F6269757462;
      LODWORD(v11) = 0;
      if (AMCP::Core::Core::call_operation_function<BOOL,std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&>(v12, &v10, a3))
      {
        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](1uLL);
      }
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v12 = &v14;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v12);
}

void sub_1DE3DE7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char *a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a12 = &a14;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (__p)
  {
    *(v14 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::StringRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFStringGetTypeID();
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
    result = CFStringGetTypeID();
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

void sub_1DE3DE8E0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core13Graph_Manager40find_meta_devices_that_contain_subdeviceENSt3__110shared_ptrINS_5Graph10Graph_HostEEERKNS2_6vectorIjNS2_9allocatorIjEEEERKjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x61646576, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1969841184u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef std::__function::__func<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(CFTypeRef result, void *a2)
{
  *a2 = &unk_1F596C5C8;
  v3 = *(result + 1);
  if (v3)
  {
    result = CFRetain(*(result + 1));
  }

  a2[1] = v3;
  return result;
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F596C5C8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::find_meta_devices_that_contain_subdevice(std::shared_ptr<AMCP::Graph::Graph_Host>,std::vector<unsigned int> const&,unsigned int const&)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F596C5C8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void AMCP::IO_Core::Graph_Manager::resume_iocontexts_for_timebases(void *a1, void *a2, uint64_t a3)
{
  v93 = *MEMORY[0x1E69E9840];
  AMCP::Graph::Graph::get_nodes(&v74, a1[25]);
  v6 = v74;
  v5 = v75;
  if (v74 != v75)
  {
    v7 = a3 + 8;
    v8 = a2 + 1;
    do
    {
      v9 = *v6;
      if (*(*v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v88, *(v9 + 24), *(v9 + 32));
      }

      else
      {
        *v88 = *(v9 + 24);
        *&v88[16] = *(v9 + 40);
      }

      v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, v88);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      v11 = *(*v6 + 176);
      if (v11)
      {
        LODWORD(v11) = *(v11 + 8);
      }

      v12 = *a2;
      if (*a2 == v8)
      {
        goto LABEL_84;
      }

      while (*(v12 + 7) != v11)
      {
        v13 = v12[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v12[2];
            v15 = *v14 == v12;
            v12 = v14;
          }

          while (!v15);
        }

        v12 = v14;
        if (v14 == v8)
        {
          goto LABEL_84;
        }
      }

      if (v12 == v8)
      {
        goto LABEL_84;
      }

      (*(*a1 + 16))(v88);
      v16 = (*(**v88 + 16))(*v88);
      v17 = *(*v6 + 176);
      if (v17)
      {
        v18 = *(v17 + 8);
      }

      else
      {
        v18 = 0;
      }

      AMCP::Core::Broker::fetch_core(&v72, v16, v18);
      if (*&v88[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v88[8]);
      }

      strcpy(v88, "diunbolg");
      v88[9] = 0;
      *&v88[10] = 0;
      AMCP::Core::Core::call_operation_function<applesauce::CF::StringRef>(&cf, v72, v88);
      v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v20 & 1) == 0)
      {
        v19 = AMCP::Log::AMCP_Scope_Registry::initialize(v19);
      }

      v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = *(v21 + 16);
      switch(v23)
      {
        case 1:
          v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v32 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v19);
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

          if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_71;
          }

          if (!cf)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(&__p, cf);
          p_p = &__p;
          if (SHIBYTE(v82) < 0)
          {
            p_p = __p.__vftable;
          }

          v39 = "active";
          if (v7 == v10)
          {
            v39 = "inactive";
          }

          *v88 = 136315906;
          *&v88[4] = "Graph_Manager.cpp";
          *&v88[12] = 1024;
          *&v88[14] = 711;
          *&v88[18] = 2080;
          *&v88[20] = p_p;
          v89 = 2080;
          *v90 = v39;
          v40 = v35;
          v41 = OS_LOG_TYPE_DEFAULT;
          break;
        case 2:
          v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v28 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v19);
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

          if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_71;
          }

          if (!cf)
          {
            v65 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v65, "Could not construct");
            __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(&__p, cf);
          v36 = &__p;
          if (SHIBYTE(v82) < 0)
          {
            v36 = __p.__vftable;
          }

          v37 = "active";
          if (v7 == v10)
          {
            v37 = "inactive";
          }

          *v88 = 136315906;
          *&v88[4] = "Graph_Manager.cpp";
          *&v88[12] = 1024;
          *&v88[14] = 711;
          *&v88[18] = 2080;
          *&v88[20] = v36;
          v89 = 2080;
          *v90 = v37;
          _os_log_debug_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_DEBUG, "%32s:%-5d Resuming IOContext %s (%s)", v88, 0x26u);
          goto LABEL_69;
        case 3:
          v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v24 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v19);
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

          if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            goto LABEL_71;
          }

          if (!cf)
          {
            v66 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v66, "Could not construct");
            __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::convert_to<std::string,0>(&__p, cf);
          v42 = &__p;
          if (SHIBYTE(v82) < 0)
          {
            v42 = __p.__vftable;
          }

          v43 = "active";
          if (v7 == v10)
          {
            v43 = "inactive";
          }

          *v88 = 136315906;
          *&v88[4] = "Graph_Manager.cpp";
          *&v88[12] = 1024;
          *&v88[14] = 711;
          *&v88[18] = 2080;
          *&v88[20] = v42;
          v89 = 2080;
          *v90 = v43;
          v40 = v27;
          v41 = OS_LOG_TYPE_INFO;
          break;
        default:
          goto LABEL_71;
      }

      _os_log_impl(&dword_1DE1F9000, v40, v41, "%32s:%-5d Resuming IOContext %s (%s)", v88, 0x26u);
LABEL_69:
      if (SHIBYTE(v82) < 0)
      {
        operator delete(__p.__vftable);
      }

LABEL_71:
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v69 = 0x676C6F627265736DLL;
      v70 = 0;
      operation = AMCP::Core::Core::find_operation(&v76, v72, &v69);
      v45 = v76;
      if (!v76)
      {
        v58 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v58 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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

        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *v88 = 136315394;
          *&v88[4] = "Core.h";
          *&v88[12] = 1024;
          *&v88[14] = 202;
          _os_log_error_impl(&dword_1DE1F9000, v61, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", v88, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v87);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v79, "Operation does not have requested function", v64);
        std::runtime_error::runtime_error(&v80, &v79);
        std::runtime_error::runtime_error(&__p, &v80);
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v86 = -1;
        __p.__vftable = &unk_1F5992170;
        v82 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v88, &__p);
        *&v90[2] = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Resume_Behavior>]";
        v91 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v92 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v78);
      }

      v46 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Resume_Behavior)>>();
      v47 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v45, v46);
      if (!v47)
      {
        v54 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v54 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
          *v88 = 136315394;
          *&v88[4] = "Operation.h";
          *&v88[12] = 1024;
          *&v88[14] = 154;
          _os_log_error_impl(&dword_1DE1F9000, v57, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", v88, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v87);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v79, "Operation does not have requested function", v63);
        std::runtime_error::runtime_error(&v80, &v79);
        std::runtime_error::runtime_error(&__p, &v80);
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v86 = -1;
        __p.__vftable = &unk_1F5992170;
        v82 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v88, &__p);
        *&v90[2] = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Resume_Behavior>]";
        v91 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v92 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v78);
      }

      v48 = v47;
      if (!*(v47 + 7) || (*v88 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Resume_Behavior)>>(), (v47 = (*(v48 + 7))(4, v48 + 24, 0, v88)) == 0))
      {
        v50 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v50 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v47);
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

        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *v88 = 136315394;
          *&v88[4] = "Operation.h";
          *&v88[12] = 1024;
          *&v88[14] = 161;
          _os_log_error_impl(&dword_1DE1F9000, v53, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", v88, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v87);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v79, "Invalid cast", v62);
        std::runtime_error::runtime_error(&v80, &v79);
        std::runtime_error::runtime_error(&__p, &v80);
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v86 = -1;
        __p.__vftable = &unk_1F5992170;
        v82 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v88, &__p);
        *&v90[2] = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <AMCP::Resume_Behavior>]";
        v91 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v92 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v78);
      }

      LODWORD(__p.__vftable) = v7 == v10;
      v49 = *(v47 + 3);
      if (!v49)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v49 + 48))(v49, &__p);
      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v77);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v73)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v73);
      }

LABEL_84:
      v6 += 16;
    }

    while (v6 != v5);
  }

  *v88 = &v74;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v88);
}

void sub_1DE3DF858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, std::runtime_error a36, char a37)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  applesauce::CF::StringRef::~StringRef(&a15);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  *(v38 - 192) = &a18;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100]((v38 - 192));
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::exception_safe_dispatch(NSObject *a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v3[0] = &v4;
  v3[1] = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN4AMCP7IO_CoreL23exception_safe_dispatchERKNS3_7Utility14Dispatch_QueueENSt3__18functionIFvvEEEE3__0EEvP16dispatch_queue_sOT_NS9_17integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_4863;
  block[4] = v3;
  dispatch_sync(a1, block);
  if (v5 == 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x1E69E55E8] + 16;
    __cxa_throw(exception, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
  }
}

void sub_1DE3DFA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception a12, char a13)
{
  if (a13 == 1)
  {
    std::exception::~exception(&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIZN4AMCP7IO_CoreL23exception_safe_dispatchERKNS3_7Utility14Dispatch_QueueENSt3__18functionIFvvEEEE3__0EEvP16dispatch_queue_sOT_NS9_17integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1);
}

void sub_1DE3DFB0C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if ((*(*v1 + 8) & 1) == 0)
  {
    *v2 = MEMORY[0x1E69E55E8] + 16;
    *(v2 + 8) = 1;
  }

  __cxa_end_catch();
}

uint64_t std::__function::__func<AMCP::IO_Core::Graph_Manager::node_uid_is_unique(applesauce::CF::StringRef const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::node_uid_is_unique(applesauce::CF::StringRef const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core13Graph_Manager18node_uid_is_uniqueERKN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::node_uid_is_unique(applesauce::CF::StringRef const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::node_uid_is_unique(applesauce::CF::StringRef const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = **(a1 + 16);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(a1 + 8);
  applesauce::CF::convert_to<std::string,0>(__p, v1);
  v4 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>((v3 + 176), __p);
  if (v4)
  {
    v6 = v4[5];
    v5 = v4[6];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  **(a1 + 24) = v6 == 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

__n128 std::__function::__func<AMCP::IO_Core::Graph_Manager::node_uid_is_unique(applesauce::CF::StringRef const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::node_uid_is_unique(applesauce::CF::StringRef const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596C6B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void AMCP::IO_Core::Graph_Manager::get_node_id(AMCP::IO_Core::Graph_Manager *this, const applesauce::CF::StringRef *a2)
{
  v5[42] = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = 0;
  (*(*this + 40))(v5);
  v4 = 0;
  operator new();
}

void sub_1DE3DFE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Graph_Manager::get_node_id(applesauce::CF::StringRef const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::get_node_id(applesauce::CF::StringRef const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core13Graph_Manager11get_node_idERKN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::get_node_id(applesauce::CF::StringRef const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::get_node_id(applesauce::CF::StringRef const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = **(a1 + 16);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(a1 + 8);
  applesauce::CF::convert_to<std::string,0>(__p, v1);
  v4 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>((v3 + 176), __p);
  if (v4)
  {
    v6 = v4[5];
    v5 = v4[6];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    v7 = *(v6 + 176);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 8);
    }

    v8 = *(a1 + 24);
    *v8 = v7;
    *(v8 + 4) = 1;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

__n128 std::__function::__func<AMCP::IO_Core::Graph_Manager::get_node_id(applesauce::CF::StringRef const&)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::get_node_id(applesauce::CF::StringRef const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596C738;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Graph_Manager::get_wires(void)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::get_wires(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core13Graph_Manager9get_wiresEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::get_wires(void)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::get_wires(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  AMCP::Graph::Wire_Index::get_wires(__p, *(a1 + 8) + 56);
  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__move_assign(*(a1 + 16), __p);
  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(__p[2]);
  v2 = __p[0];
  __p[0] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

void std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

__n128 std::__function::__func<AMCP::IO_Core::Graph_Manager::get_wires(void)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::get_wires(void)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596C7B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AMCP::IO_Core::Graph_Manager::get_wires_for_node(AMCP::IO_Core::Graph_Manager *this, uint64_t a2, int a3)
{
  v4[42] = *MEMORY[0x1E69E9840];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  (*(*a2 + 40))(v4, a2);
  v3 = 0;
  operator new();
}

void sub_1DE3E0374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(va1);
  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::~__hash_table(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::Graph_Manager::get_wires_for_node(unsigned int)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::get_wires_for_node(unsigned int)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core13Graph_Manager18get_wires_for_nodeEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::get_wires_for_node(unsigned int)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::get_wires_for_node(unsigned int)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(v2 + 27, *(a1 + 16));
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, v3[3], v3[4]);
    }

    else
    {
      v24 = *(v3 + 1);
    }

    v5 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(v2 + 22, &v24);
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = *(v5 + 5);
    v7 = *(v5 + 6);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v6)
    {
LABEL_17:
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
        *&buf[4] = "Graph.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 739;
        *&buf[18] = 2080;
        *&buf[20] = "not (node.operator BOOL())";
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing for node in get_wires_for_node", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v15, "Missing for node in get_wires_for_node", v13);
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
      v26 = "Wire_Set AMCP::Graph::Graph::get_wires_for_node(Object_ID) const";
      v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
      v28 = 739;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
    }

    AMCP::Graph::Wire_Index::get_wires_for_node(buf, v2 + 7, (v4 + 3), 0x6DB6DB6DB6DB6DB7 * ((v6[11] - v6[10]) >> 4), 0x6DB6DB6DB6DB6DB7 * ((v6[8] - v6[7]) >> 4));
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    memset(buf, 0, sizeof(buf));
    LODWORD(v26) = 1065353216;
  }

  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__move_assign(*(a1 + 24), buf);
  std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(*&buf[16]);
  v8 = *buf;
  *buf = 0;
  if (v8)
  {
    operator delete(v8);
  }
}

void sub_1DE3E075C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v43 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v42)
  {
    __cxa_free_exception(v41);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a34);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<AMCP::IO_Core::Graph_Manager::get_wires_for_node(unsigned int)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::get_wires_for_node(unsigned int)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596C838;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core13Graph_Manager18update_power_stateENS_11Power_StateEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  **(a1 + 40) = *(a1 + 32);
  AMCP::Graph::Graph::get_nodes(&v11, *(*(a1 + 8) + 192));
  v2 = v11;
  for (i = v12; v2 != i; v2 += 16)
  {
    v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v5 = *(*v2 + 176);
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    AMCP::Core::Broker::fetch_core(&v9, v4, v6);
    v7 = 0x676C6F6269707073;
    v8 = 0;
    AMCP::Core::Core::call_operation_function<void,AMCP::Power_State>(v9, &v7, *(a1 + 32));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  v9 = &v11;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_1DE3E0A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a12 = &a14;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596C8B8;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

void std::__function::__func<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596C8B8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0,std::allocator<AMCP::IO_Core::Graph_Manager::update_power_state(AMCP::Power_State)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596C8B8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::IO_Core::Graph_Manager::update_and_resume_io_contexts(void *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  AMCP::Graph::Graph::get_nodes(&v36, a1[25]);
  v19 = 0;
  v20 = 0;
  v18 = &v19;
  v4 = v36;
  for (i = v37; v4 != i; v4 += 2)
  {
    v6 = *v4;
    if (SHIBYTE((*v4)[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, v6[1].__r_.__value_.__l.__data_, v6[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v35 = v6[1];
    }

    if (AMCP::IO_Core::Graph_Manager::update_iocontext(a1, &v35, &v21))
    {
      data = (*v4)[6].__r_.__value_.__l.__data_;
      size = (*v4)[6].__r_.__value_.__l.__size_;
      if (size)
      {
        atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](size);
      }

      if (!data)
      {
        v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v9 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(size);
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
          v13 = *v4;
          if (SHIBYTE((*v4)[1].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v29, v13[1].__r_.__value_.__l.__data_, v13[1].__r_.__value_.__l.__size_);
          }

          else
          {
            v29 = v13[1];
          }

          v14 = &v29;
          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v14 = v29.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = "Graph_Manager.cpp";
          v39 = 1024;
          v40 = 236;
          v41 = 2080;
          v42 = "not (context->get_clock() != Timebase_Ref{})";
          v43 = 2080;
          *v44 = v14;
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Unable to calculate clock for IO Context: %s", buf, 0x26u);
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
        __cxa_allocate_exception(0x40uLL);
        v16 = *v4;
        if (SHIBYTE((*v4)[1].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v26, v16[1].__r_.__value_.__l.__data_, v16[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v26 = v16[1];
        }

        v17 = &v26;
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v17 = v26.__r_.__value_.__r.__words[0];
        }

        caulk::make_string(&v27, "Unable to calculate clock for IO Context: %s", v15, v17, v18, v19, v20, v21, v22, v23, v24);
        std::logic_error::logic_error(&v28, &v27);
        v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v29, &v28);
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = -1;
        v29.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v29.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
        *&v44[2] = "std::set<Graph_Node_UID> AMCP::IO_Core::Graph_Manager::update_all_iocontexts(Graph::Graph::Resource_Counts &)";
        v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Graph_Manager.cpp";
        v46 = 236;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
      }

      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v18, &v35, &v35);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  *buf = &v36;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](buf);
  AMCP::IO_Core::Graph_Manager::resume_iocontexts_for_timebases(a1, a2, &v18);
  std::__tree<std::string>::destroy(v19);
}

void sub_1DE3E1004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, char a43)
{
  if (*(v43 - 169) < 0)
  {
    operator delete(*(v43 - 192));
  }

  std::__tree<std::string>::destroy(a11);
  *(v43 - 144) = v43 - 168;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100]((v43 - 144));
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Graph_Manager::Graph_Manager(AMCP::IO_Core::Graph_Manager *this)
{
  *this = &unk_1F596C3F8;
  *(this + 1) = &unk_1F5979DF0;
  *(this + 4) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 1065353216;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 1065353216;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 1065353216;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 184) = 0u;
  *(this + 44) = 1065353216;
  *(this + 200) = 0u;
  *(this + 54) = 1065353216;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 64) = 1065353216;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 33) = this + 272;
  operator new();
}

void sub_1DE3E1350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<AMCP::IO_Core::Device_Timebase_Factory>::~unique_ptr[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::~__hash_table(v5);
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::~__hash_table(v3 + 320);
  AMCP::Graph::Graph::~Graph(v4);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<AMCP::IO_Core::Device_Timebase_Factory>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v2 + 40));
    v3 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(v2);
    MEMORY[0x1E12C1730](v3, 0x10A0C40864A76ABLL);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<AMCP::IO_Core::Device_Timebase_Factory  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN4AMCP7IO_Core23Device_Timebase_FactoryEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::IO_Core::Device_Timebase_Factory  *>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v1 + 40));
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(v1);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::IO_Core::Device_Timebase_Factory  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::IO_Core::Graph_Manager::~Graph_Manager(AMCP::IO_Core::Graph_Manager *this)
{
  *this = &unk_1F596C3F8;
  v2 = *(this + 51);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::~__hash_table(this + 360);
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::~__hash_table(this + 320);
  AMCP::Graph::Graph::~Graph((this + 8));
}

uint64_t std::unordered_map<unsigned int,std::chrono::duration<long long,std::ratio<1l,1000000l>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 4);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(i + 4);
      if (*&v6 <= v5)
      {
        v8 = v5 % v6.i32[0];
      }
    }

    else
    {
      v8 = (v6.i32[0] - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (*(v10 + 4) != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t std::unordered_map<unsigned int,unsigned int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 4);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(i + 4);
      if (*&v6 <= v5)
      {
        v8 = v5 % v6.i32[0];
      }
    }

    else
    {
      v8 = (v6.i32[0] - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (*(v10 + 4) != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t *std::unique_ptr<HALS_IOContextReporter::ReportStartHardware(HALS_IOContextReporter::StartHardwareData)::$_0,std::default_delete<HALS_IOContextReporter::ReportStartHardware(HALS_IOContextReporter::StartHardwareData)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v2 + 96);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v2 + 56);
    MEMORY[0x1E12C1730](v2, 0x10A0C4072E04B27);
  }

  return a1;
}

void applesauce::dispatch::v1::async<HALS_IOContextReporter::ReportStartHardware(HALS_IOContextReporter::StartHardwareData)::$_0 &>(dispatch_queue_s *,HALS_IOContextReporter::ReportStartHardware(HALS_IOContextReporter::StartHardwareData)::$_0 &)::{lambda(void *)#1}::__invoke(unsigned int *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  operator new();
}

void sub_1DE3E22C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3E1FECLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3E243C(void *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a2)
  {
    if (v16)
    {
      operator delete(v16);
    }

    HALS_ObjectMap::ReleaseObject(v15, a2);
    applesauce::CF::DictionaryRef::~DictionaryRef(&a11);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a15);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE3E21CCLL);
  }

  JUMPOUT(0x1DE3E242CLL);
}

void sub_1DE3E247C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HALS_IOContextReporter::ReportStartHardware(HALS_IOContextReporter::StartHardwareData)::$_0,std::default_delete<HALS_IOContextReporter::ReportStartHardware(HALS_IOContextReporter::StartHardwareData)::$_0>>::~unique_ptr[abi:ne200100](va);
  JUMPOUT(0x1DE3E242CLL);
}

char **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(char *a1, void *a2, uint64_t a3)
{
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void HALS_IOContextReporter::anonymous namespace::ReportDeviceMetrics(char *a1, HALS_ObjectMap *this, HALS_ObjectMap *a3, void *a4, void *a5)
{
  v151 = *MEMORY[0x1E69E9840];
  v7 = HALS_ObjectMap::CopyObjectByObjectID(this);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v148 = 136315394;
      *&v148[4] = "HALS_IOContextReporter.cpp";
      *&v148[12] = 1024;
      *&v148[14] = 145;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReportTransportType: no HALS_IOContext object", v148, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v8 = HALS_ObjectMap::CopyObjectByObjectID(a3);
  v9 = v8;
  v135 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v148 = 136315394;
      *&v148[4] = "HALS_IOContextReporter.cpp";
      *&v148[12] = 1024;
      *&v148[14] = 148;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReportTransportType: no HALS_Device object", v148, 0x12u);
    }

    v110 = __cxa_allocate_exception(0x10uLL);
    *v110 = off_1F5991DD8;
    v110[2] = 560947818;
  }

  NumberStreams = HALS_IODevice::GetNumberStreams(v8, 0);
  NumberStreamsExcludingReferenceStreams = HALS_Device::GetNumberStreamsExcludingReferenceStreams(v9, 0);
  std::to_string(v148, NumberStreams - NumberStreamsExcludingReferenceStreams);
  std::string::basic_string[abi:ne200100]<0>(&__p, "input_num_reference_streams");
  theArray = &__p;
  v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &__p, &theArray);
  v13 = v12;
  if (*(v12 + 79) < 0)
  {
    operator delete(*(v12 + 56));
  }

  *(v13 + 56) = *v148;
  *(v13 + 72) = *&v148[16];
  v148[23] = 0;
  v148[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v148[23] & 0x80000000) != 0)
    {
      operator delete(*v148);
    }
  }

  v14 = HALS_IODevice::GetNumberStreams(v9, 1);
  v15 = HALS_Device::GetNumberStreamsExcludingReferenceStreams(v9, 1);
  std::to_string(v148, v14 - v15);
  std::string::basic_string[abi:ne200100]<0>(&__p, "output_num_reference_streams");
  theArray = &__p;
  v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &__p, &theArray);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(*(v16 + 56));
  }

  *(v17 + 56) = *v148;
  *(v17 + 72) = *&v148[16];
  v148[23] = 0;
  v148[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v148[23] & 0x80000000) != 0)
    {
      operator delete(*v148);
    }
  }

  if (HALS_IODevice::GetTransportType(v9) == 1735554416)
  {
    std::to_string(v148, 1);
    std::string::basic_string[abi:ne200100]<0>(&__p, "device_is_aggregate");
    theArray = &__p;
    v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &__p, &theArray);
    v19 = v18;
    if (*(v18 + 79) < 0)
    {
      operator delete(*(v18 + 56));
    }

    *(v19 + 56) = *v148;
    *(v19 + 72) = *&v148[16];
    v148[23] = 0;
    v148[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v148[23] & 0x80000000) != 0)
      {
        operator delete(*v148);
      }
    }

    v20 = HALS_IOContext::CopyDescription(v7);
    v134 = v20;
    if (v20)
    {
      v21 = CFGetTypeID(v20);
      if (v21 != CFDictionaryGetTypeID())
      {
        v118 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v118, "Could not construct");
        __cxa_throw(v118, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v22 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
    theArray = v22;
    if (!v22)
    {
      v111 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v111, "Could not construct");
      __cxa_throw(v111, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v23 = CFStringCreateWithBytes(0, "taps", 4, 0x8000100u, 0);
    cf = v23;
    if (!v23)
    {
      v112 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v112, "Could not construct");
      __cxa_throw(v112, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v131 = 0;
    v132 = 0;
    v133 = 0;
    if (!v134)
    {
      v108 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v108, "Could not construct");
      goto LABEL_252;
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef const&>(v148, v134, v23);
    if (v148[8] == 1)
    {
      v24 = *v148;
      if (*v148)
      {
        Count = CFArrayGetCount(*v148);
        v26 = CFArrayGetCount(v24);
        if (Count)
        {
          v27 = v26;
          v28 = 0;
          while (1)
          {
            if (v27 == v28)
            {
              goto LABEL_36;
            }

            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v150, v24, v28);
            if (!v150.__r_.__value_.__r.__words[0])
            {
              break;
            }

            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,applesauce::CF::StringRef const&>(&__p, v150.__r_.__value_.__l.__data_, v22);
            if (__p.__r_.__value_.__s.__data_[8] == 1)
            {
              std::vector<applesauce::CF::StringRef>::push_back[abi:ne200100](&v131, &__p.__r_.__value_.__l.__data_);
              if (__p.__r_.__value_.__r.__words[0])
              {
                CFRelease(__p.__r_.__value_.__l.__data_);
              }
            }

            if (v150.__r_.__value_.__r.__words[0])
            {
              CFRelease(v150.__r_.__value_.__l.__data_);
            }

            if (Count == ++v28)
            {
              goto LABEL_36;
            }
          }

          v108 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v108, "Could not construct");
LABEL_252:
          __cxa_throw(v108, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

LABEL_36:
        if (*v148)
        {
          CFRelease(*v148);
        }
      }
    }

    CFRelease(v23);
    CFRelease(v22);
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<applesauce::CF::StringRef *>,std::__less<void,void>>(v131, v132, &__p);
    v119 = v7;
    v29 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<applesauce::CF::StringRef *>,std::__wrap_iter<applesauce::CF::StringRef *>,std::__equal_to &>(v131, v132);
    std::vector<applesauce::CF::StringRef>::erase(&v131, v29, v132);
    std::string::basic_string[abi:ne200100]<0>(v148, ", ");
    v30 = v131;
    v124 = v132;
    if (v131 != v132)
    {
      v31 = 1;
      while (1)
      {
        v144[0] = 0;
        v144[1] = 0;
        HALS_System::GetInstance(&__p, 0, v144);
        v32 = __p.__r_.__value_.__r.__words[0];
        v33 = *v30;
        if (*v30)
        {
          CFRetain(*v30);
        }

        v147 = v33;
        v35 = HALS_System::CopyTapByUID(v32, v33, 0);
        if (v147)
        {
          CFRelease(v147);
        }

        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }

        if (!v35)
        {
          goto LABEL_150;
        }

        v36 = *(v35 + 89);
        std::string::basic_string[abi:ne200100]<0>(&__p, "{ ");
        theArray = 0;
        v141 = 0;
        v142 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&theArray, *(v35 + 224), *(v35 + 232), (*(v35 + 232) - *(v35 + 224)) >> 2);
        v37 = v141;
        v126 = theArray;
        if (theArray != v141)
        {
          v38 = 1;
          v39 = theArray;
          do
          {
            if ((v38 & 1) == 0)
            {
              if (v148[23] >= 0)
              {
                v40 = v148;
              }

              else
              {
                v40 = *v148;
              }

              if (v148[23] >= 0)
              {
                v41 = v148[23];
              }

              else
              {
                v41 = *&v148[8];
              }

              std::string::append(&__p, v40, v41);
            }

            v139[0] = 0;
            v139[1] = 0;
            HALS_System::GetInstance(&cf, 0, v139);
            v43 = HALS_System::CopyClientByObjectID(cf, *v39);
            if (v137)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v137);
            }

            if (v43)
            {
              v44 = *(v43 + 31);
              if (v44)
              {
                CFRetain(v44);
                v45 = *(v43 + 31);
              }

              else
              {
                v45 = 0;
              }

              applesauce::CF::StringRef::from_get(&v150, v45);
              if (!v150.__r_.__value_.__r.__words[0])
              {
                v106 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v106, "Could not construct");
                __cxa_throw(v106, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              applesauce::CF::convert_to<std::string,0>(&cf, v150.__r_.__value_.__l.__data_);
              if ((v138 & 0x80u) == 0)
              {
                p_cf = &cf;
              }

              else
              {
                p_cf = cf;
              }

              if ((v138 & 0x80u) == 0)
              {
                v47 = v138;
              }

              else
              {
                v47 = v137;
              }

              std::string::append(&__p, p_cf, v47);
              if (v138 < 0)
              {
                operator delete(cf);
              }

              if (v150.__r_.__value_.__r.__words[0])
              {
                CFRelease(v150.__r_.__value_.__l.__data_);
              }
            }

            HALS_ObjectMap::ReleaseObject(v43, v42);
            v38 = 0;
            ++v39;
          }

          while (v39 != v37);
        }

        std::string::append(&__p, " }", 2uLL);
        if ((v31 & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&cf, "tap_is_mono_list");
          v145 = &cf;
          v48 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &cf, &v145);
          if (v148[23] >= 0)
          {
            v49 = v148;
          }

          else
          {
            v49 = *v148;
          }

          if (v148[23] >= 0)
          {
            v50 = v148[23];
          }

          else
          {
            v50 = *&v148[8];
          }

          std::string::append((v48 + 56), v49, v50);
          if (v138 < 0)
          {
            operator delete(cf);
          }

          std::string::basic_string[abi:ne200100]<0>(&cf, "tap_mute_behavior_list");
          v145 = &cf;
          v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &cf, &v145);
          if (v148[23] >= 0)
          {
            v52 = v148;
          }

          else
          {
            v52 = *v148;
          }

          if (v148[23] >= 0)
          {
            v53 = v148[23];
          }

          else
          {
            v53 = *&v148[8];
          }

          std::string::append((v51 + 56), v52, v53);
          if (v138 < 0)
          {
            operator delete(cf);
          }

          std::string::basic_string[abi:ne200100]<0>(&cf, "tap_is_exclusive_list");
          v145 = &cf;
          v54 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &cf, &v145);
          if (v148[23] >= 0)
          {
            v55 = v148;
          }

          else
          {
            v55 = *v148;
          }

          if (v148[23] >= 0)
          {
            v56 = v148[23];
          }

          else
          {
            v56 = *&v148[8];
          }

          std::string::append((v54 + 56), v55, v56);
          if (v138 < 0)
          {
            operator delete(cf);
          }

          std::string::basic_string[abi:ne200100]<0>(&cf, "tap_process_list_list");
          v145 = &cf;
          v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &cf, &v145);
          if (v148[23] >= 0)
          {
            v58 = v148;
          }

          else
          {
            v58 = *v148;
          }

          if (v148[23] >= 0)
          {
            v59 = v148[23];
          }

          else
          {
            v59 = *&v148[8];
          }

          std::string::append((v57 + 56), v58, v59);
          if (v138 < 0)
          {
            operator delete(cf);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&cf, "tap_is_mono_list");
        v145 = &cf;
        v60 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &cf, &v145);
        std::to_string(&v150, *(v35 + 88));
        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = &v150;
        }

        else
        {
          v61 = v150.__r_.__value_.__r.__words[0];
        }

        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v150.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v150.__r_.__value_.__l.__size_;
        }

        std::string::append((v60 + 56), v61, size);
        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v150.__r_.__value_.__l.__data_);
        }

        if (v138 < 0)
        {
          operator delete(cf);
        }

        std::string::basic_string[abi:ne200100]<0>(&cf, "tap_mute_behavior_list");
        v145 = &cf;
        v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &cf, &v145);
        std::string::basic_string[abi:ne200100]<0>(&v150, off_1E86740A0[*(v35 + 96)]);
        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v150;
        }

        else
        {
          v64 = v150.__r_.__value_.__r.__words[0];
        }

        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v65 = v150.__r_.__value_.__l.__size_;
        }

        std::string::append((v63 + 56), v64, v65);
        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v150.__r_.__value_.__l.__data_);
        }

        if (v138 < 0)
        {
          operator delete(cf);
        }

        std::string::basic_string[abi:ne200100]<0>(&cf, "tap_is_exclusive_list");
        v145 = &cf;
        v66 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &cf, &v145);
        std::to_string(&v150, v36);
        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = &v150;
        }

        else
        {
          v67 = v150.__r_.__value_.__r.__words[0];
        }

        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v68 = v150.__r_.__value_.__l.__size_;
        }

        std::string::append((v66 + 56), v67, v68);
        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v150.__r_.__value_.__l.__data_);
        }

        if (v138 < 0)
        {
          operator delete(cf);
        }

        std::string::basic_string[abi:ne200100]<0>(&cf, "tap_process_list_list");
        v145 = &cf;
        v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &cf, &v145);
        v70 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v71 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::string::append((v69 + 56), v70, v71);
        if (v138 < 0)
        {
          break;
        }

        if (v126)
        {
          goto LABEL_146;
        }

LABEL_147:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v31 = 0;
LABEL_150:
        HALS_ObjectMap::ReleaseObject(v35, v34);
        if (++v30 == v124)
        {
          goto LABEL_163;
        }
      }

      operator delete(cf);
      if (!v126)
      {
        goto LABEL_147;
      }

LABEL_146:
      operator delete(v126);
      goto LABEL_147;
    }

LABEL_163:
    if ((v148[23] & 0x80000000) != 0)
    {
      operator delete(*v148);
    }

    v76 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
    v150.__r_.__value_.__r.__words[0] = v76;
    if (!v76)
    {
      v113 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v113, "Could not construct");
      __cxa_throw(v113, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v144[0] = CFStringCreateWithBytes(0, "stream groups", 13, 0x8000100u, 0);
    v123 = v144[0];
    if (!v144[0])
    {
      v114 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v114, "Could not construct");
      __cxa_throw(v114, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    memset(&__p, 0, sizeof(__p));
    if (!v134)
    {
LABEL_239:
      v107 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v107, "Could not construct");
      __cxa_throw(v107, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(v148, v134, @"grid-out");
    if (v148[8] == 1)
    {
      v77 = *v148;
      if (*v148)
      {
        v122 = CFArrayGetCount(*v148);
        v120 = v77;
        v121 = CFArrayGetCount(v77);
        if (v122)
        {
          v78 = 0;
          do
          {
            if (v78 == v121)
            {
              break;
            }

            v79 = v78;
            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(v139, v120, v78);
            if (!v139[0])
            {
              goto LABEL_239;
            }

            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef const&>(&theArray, v139[0], v123);
            if (v141 == 1)
            {
              v80 = theArray;
              if (theArray)
              {
                v127 = CFArrayGetCount(theArray);
                v125 = CFArrayGetCount(v80);
                if (v127)
                {
                  v81 = 0;
                  while (1)
                  {
                    if (v81 == v125)
                    {
                      goto LABEL_197;
                    }

                    v82 = v80;
                    applesauce::CF::details::at_to<applesauce::CF::ArrayRef>(&v147, v80, v81);
                    v83 = v147;
                    if (v147)
                    {
                      break;
                    }

LABEL_196:
                    ++v81;
                    v80 = v82;
                    if (v81 == v127)
                    {
                      goto LABEL_197;
                    }
                  }

                  v84 = CFArrayGetCount(v147);
                  v85 = v84;
                  v86 = v147;
                  if (v147)
                  {
                    v87 = CFArrayGetCount(v147);
                    if (!v85)
                    {
LABEL_194:
                      if (v147)
                      {
                        CFRelease(v147);
                      }

                      goto LABEL_196;
                    }
                  }

                  else
                  {
                    v87 = 0;
                    if (!v84)
                    {
                      goto LABEL_194;
                    }
                  }

                  v88 = 0;
                  do
                  {
                    if (v83 == v86 && v87 == v88)
                    {
                      break;
                    }

                    applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v146, v83, v88);
                    if (!v146)
                    {
                      goto LABEL_239;
                    }

                    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,applesauce::CF::StringRef const&>(&cf, v146, v76);
                    if (v137 == 1)
                    {
                      std::vector<applesauce::CF::StringRef>::push_back[abi:ne200100](&__p, &cf);
                      if (cf)
                      {
                        CFRelease(cf);
                      }
                    }

                    if (v146)
                    {
                      CFRelease(v146);
                    }

                    ++v88;
                  }

                  while (v85 != v88);
                  goto LABEL_194;
                }

LABEL_197:
                if (theArray)
                {
                  CFRelease(theArray);
                }
              }
            }

            if (v139[0])
            {
              CFRelease(v139[0]);
            }

            v78 = v79 + 1;
          }

          while (v79 + 1 != v122);
        }

        if (*v148)
        {
          CFRelease(*v148);
        }
      }
    }

    CFRelease(v123);
    CFRelease(v76);
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<applesauce::CF::StringRef *>,std::__less<void,void>>(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, &theArray);
    v89 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<applesauce::CF::StringRef *>,std::__wrap_iter<applesauce::CF::StringRef *>,std::__equal_to &>(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    std::vector<applesauce::CF::StringRef>::erase(&__p, v89, __p.__r_.__value_.__l.__size_);
    v90 = CFStringCreateWithBytes(0, "uid", 3, 0x8000100u, 0);
    v150.__r_.__value_.__r.__words[0] = v90;
    if (!v90)
    {
      v115 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v115, "Could not construct");
      __cxa_throw(v115, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v91 = CFStringCreateWithBytes(0, "stream groups", 13, 0x8000100u, 0);
    v144[0] = v91;
    if (!v91)
    {
      v116 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v116, "Could not construct");
      __cxa_throw(v116, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    theArray = 0;
    v141 = 0;
    v142 = 0;
    if (!v134)
    {
LABEL_258:
      v117 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v117, "Could not construct");
      __cxa_throw(v117, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(v148, v134, @"grid-in");
    if (v148[8] == 1)
    {
      v92 = *v148;
      if (*v148)
      {
        v93 = CFArrayGetCount(*v148);
        v94 = CFArrayGetCount(v92);
        if (v93)
        {
          v95 = v94;
          for (i = 0; i != v93; ++i)
          {
            if (v95 == i)
            {
              break;
            }

            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(v139, v92, i);
            if (!v139[0])
            {
              goto LABEL_258;
            }

            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,applesauce::CF::StringRef const&>(&cf, v139[0], v90);
            if (v137 == 1)
            {
              std::vector<applesauce::CF::StringRef>::push_back[abi:ne200100](&theArray, &cf);
              if (cf)
              {
                CFRelease(cf);
              }
            }

            if (v139[0])
            {
              CFRelease(v139[0]);
            }
          }
        }

        if (*v148)
        {
          CFRelease(*v148);
        }
      }
    }

    CFRelease(v91);
    CFRelease(v90);
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<applesauce::CF::StringRef *>,std::__less<void,void>>(theArray, v141, &cf);
    v97 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<applesauce::CF::StringRef *>,std::__wrap_iter<applesauce::CF::StringRef *>,std::__equal_to &>(theArray, v141);
    std::vector<applesauce::CF::StringRef>::erase(&theArray, v97, v141);
    v98 = 0;
    v150.__r_.__value_.__r.__words[0] = 1;
    v9 = v135;
    do
    {
      v99 = *(&v150.__r_.__value_.__l.__data_ + v98);
      if (v99 == 1)
      {
        p_theArray = &theArray;
      }

      else
      {
        p_theArray = &__p;
      }

      if (p_theArray[1] != *p_theArray)
      {
        v101 = **p_theArray;
        v130[0] = 0;
        v130[1] = 0;
        HALS_System::GetInstance(&cf, 0, v130);
        memset(v148, 0, sizeof(v148));
        v149 = 1065353216;
        v102 = HALS_System::CopyDeviceByUID(cf, v101, 0, v148);
        v144[0] = v102;
        std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v148);
        if (v137)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v137);
        }

        if (v102)
        {
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v148 = 136315394;
          *&v148[4] = "HALS_IOContextReporter.cpp";
          *&v148[12] = 1024;
          *&v148[14] = 225;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReportDeviceMetrics: no HALS_Device object", v148, 0x12u);
        }

        v105 = __cxa_allocate_exception(0x10uLL);
        *v105 = off_1F5991DD8;
        v105[2] = 560947818;
      }

      v98 += 4;
    }

    while (v98 != 8);
    *v148 = &theArray;
    std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](v148);
    *v148 = &__p;
    std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](v148);
    *v148 = &v131;
    std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](v148);
    if (v134)
    {
      CFRelease(v134);
    }

    v7 = v119;
  }

  else
  {
    std::to_string(v148, 0);
    std::string::basic_string[abi:ne200100]<0>(&__p, "device_is_aggregate");
    theArray = &__p;
    v72 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &__p, &theArray);
    v73 = v72;
    if (*(v72 + 79) < 0)
    {
      operator delete(*(v72 + 56));
    }

    *(v73 + 56) = *v148;
    *(v73 + 72) = *&v148[16];
    v148[23] = 0;
    v148[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v148[23] & 0x80000000) != 0)
      {
        operator delete(*v148);
      }
    }

    if (HALS_Device::GetNumberStreamsExcludingReferenceStreams(v9, 1))
    {
    }

    if (HALS_Device::GetNumberStreamsExcludingReferenceStreams(v9, 0))
    {
    }
  }

  HALS_ObjectMap::ReleaseObject(v9, v75);
  HALS_ObjectMap::ReleaseObject(v7, v104);
}

void sub_1DE3E3A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE3E3E8C(int a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(v9, a2);
    JUMPOUT(0x1DE3E3EC0);
  }

  JUMPOUT(0x1DE3E3E7CLL);
}

void sub_1DE3E3EAC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE3E3EB8);
  }

  JUMPOUT(0x1DE3E3E7CLL);
}

void HALS_IOContextReporter::anonymous namespace::ReportCurrentStreamInfo(char *a1, HALS_ObjectMap *a2)
{
  v78[1] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v64, ", ");
  std::string::basic_string[abi:ne200100]<0>(v58, "format_id");
  std::string::basic_string[abi:ne200100]<0>(v59, "bytes_per_packet");
  std::string::basic_string[abi:ne200100]<0>(v60, "frames_per_packet");
  std::string::basic_string[abi:ne200100]<0>(v61, "bytes_per_frame");
  std::string::basic_string[abi:ne200100]<0>(v62, "channels_per_frame");
  std::string::basic_string[abi:ne200100]<0>(v63, "bits_per_channel");
  v52 = HALS_ObjectMap::CopyObjectByObjectID(a2);
  if (!v52)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContextReporter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 411;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReportTransportType: no HALS_IOContext object", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v4 = 0;
  v78[0] = 1;
  v49 = MEMORY[0x1E69E9820];
  v47[1] = &v67.__r_.__value_.__l + 16;
  v48 = ___ZNK14HALS_IOContext16GetNumberStreamsEb_block_invoke;
  do
  {
    v51 = v4;
    v5 = *(v78 + v4);
    v67.__r_.__value_.__r.__words[0] = 0;
    v67.__r_.__value_.__l.__size_ = &v67;
    v67.__r_.__value_.__r.__words[2] = 0x2000000000;
    LODWORD(v68) = 0;
    *buf = v49;
    *&buf[8] = 0x40000000;
    *&buf[16] = v48;
    v74 = &unk_1E8676CC8;
    v75 = &v67;
    v76 = v52;
    LOBYTE(v77) = v5 == 1;
    v6 = (*(*v52 + 64))(v52);
    HALB_CommandGate::ExecuteCommand(v6, buf);
    v7 = *(v67.__r_.__value_.__l.__size_ + 24);
    _Block_object_dispose(&v67, 8);
    v50 = v47;
    MEMORY[0x1EEE9AC00](v8);
    v54 = v47 - ((v9 + 15) & 0x3FFFFFFFF0);
    v53 = 4 * v7;
    if (v7)
    {
      v10 = 0;
      v11 = MEMORY[0x1E69E9820];
      do
      {
        v67.__r_.__value_.__r.__words[0] = v11;
        v67.__r_.__value_.__l.__size_ = 0x40000000;
        v67.__r_.__value_.__r.__words[2] = ___ZNK14HALS_IOContext20GetStreamInfoAtIndexEbjR25AudioIOContext_StreamInfo_block_invoke;
        v68 = &__block_descriptor_tmp_7_12108;
        v72 = v5 == 1;
        v71 = v10;
        v69 = v52;
        v70 = buf;
        v12 = (*(*v52 + 64))(v52);
        HALB_CommandGate::ExecuteCommand(v12, &v67);
        v13 = v53;
        v14 = &v54[4 * v10];
        v15 = v75;
        *v14 = v74;
        v16 = &v14[4 * v7];
        *v16 = v15;
        v17 = &v16[v13];
        v18 = v76;
        *v17 = HIDWORD(v75);
        v19 = &v17[v13];
        *v19 = v18;
        v20 = &v19[v13];
        v21 = v77;
        *v20 = HIDWORD(v76);
        *&v20[v13] = v21;
        ++v10;
      }

      while (v7 != v10);
    }

    if (v5 == 1)
    {
      v22 = "input_";
    }

    else
    {
      v22 = "output_";
    }

    std::string::basic_string[abi:ne200100]<0>(buf, v22);
    v23 = 0;
    v24 = v54;
    do
    {
      v25 = &v54[4 * v23 * v7];
      v55 = &v25[v7];
      if (v7 < 0x81)
      {
        v28 = 0;
LABEL_16:
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(v25, v55, v7, 0, v28);
      }

      else
      {
        v26 = v7;
        while (1)
        {
          v27 = operator new(4 * v26, MEMORY[0x1E69E5398]);
          if (v27)
          {
            break;
          }

          v28 = v26 >> 1;
          v29 = v26 > 1;
          v26 >>= 1;
          if (!v29)
          {
            goto LABEL_16;
          }
        }

        v32 = v27;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(v25, v55, v7, v27, v26);
        operator delete(v32);
      }

      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v34 = *&v24[4 * i];
          if (v23)
          {
            std::to_string(&v67, v34);
          }

          else
          {
            v31.i32[0] = bswap32(v34);
            v35 = vzip1_s8(v31, v31);
            v36.i64[0] = 0x1F0000001FLL;
            v36.i64[1] = 0x1F0000001FLL;
            v37.i64[0] = 0x5F0000005FLL;
            v37.i64[1] = 0x5F0000005FLL;
            v38 = vbsl_s8(vmovn_s32(vcgtq_u32(v37, vsraq_n_s32(v36, vshlq_n_s32(vmovl_u16(v35), 0x18uLL), 0x18uLL))), v35, 0x2E002E002E002ELL);
            *(&v67.__r_.__value_.__s + 23) = 4;
            LODWORD(v67.__r_.__value_.__l.__data_) = vuzp1_s8(v38, v38).u32[0];
            v67.__r_.__value_.__s.__data_[4] = 0;
          }

          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v56, buf, &v58[3 * v23]);
          v66 = v56;
          v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v56, &v66);
          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = &v67;
          }

          else
          {
            v40 = v67.__r_.__value_.__r.__words[0];
          }

          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v67.__r_.__value_.__l.__size_;
          }

          std::string::append((v39 + 56), v40, size);
          if (v57 < 0)
          {
            operator delete(v56[0]);
          }

          if (i < (v7 - 1))
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v56, buf, &v58[3 * v23]);
            v66 = v56;
            v42 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v56, &v66);
            v43 = (v65 & 0x80u) == 0 ? v64 : v64[0];
            v44 = (v65 & 0x80u) == 0 ? v65 : v64[1];
            std::string::append((v42 + 56), v43, v44);
            if (v57 < 0)
            {
              operator delete(v56[0]);
            }
          }

          if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v67.__r_.__value_.__l.__data_);
          }
        }
      }

      ++v23;
      v24 += v53;
    }

    while (v23 != 6);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v4 = v51 + 4;
  }

  while (v51 != 4);
  HALS_ObjectMap::ReleaseObject(v52, v30);
  for (j = 0; j != -18; j -= 3)
  {
    if (SHIBYTE(v63[j + 2]) < 0)
    {
      operator delete(v63[j]);
    }
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<std::string,std::string>(const UInt8 **a1)
{
  v43 = 0;
  v44 = 0uLL;
  v2 = a1[2];
  if (v2)
  {
    if (!(v2 >> 60))
    {
      v51 = &v43;
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v5 = *a1;
  v3 = a1 + 1;
  v4 = v5;
  v6 = v44;
  if (v5 != v3)
  {
    do
    {
      if (v6 >= *(&v44 + 1))
      {
        v7 = (v6 - v43) >> 4;
        if ((v7 + 1) >> 60)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v8 = (*(&v44 + 1) - v43) >> 3;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (*(&v44 + 1) - v43 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v9 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v51 = &v43;
        if (v9)
        {
          std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v9);
        }

        keys = 0;
        v49 = 16 * v7;
        v50 = (16 * v7);
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>((16 * v7), v4 + 32, (v4 + 56));
        *&v50 = v50 + 16;
        v10 = &v43[v49 - v44];
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&v43, v43, v44, v10);
        v11 = v43;
        v12 = *(&v44 + 1);
        v43 = v10;
        v41 = v50;
        v44 = v50;
        *&v50 = v11;
        *(&v50 + 1) = v12;
        keys = v11;
        v49 = v11;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&keys);
        v6 = v41;
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(v6, v4 + 32, (v4 + 56));
        v6 += 2;
      }

      *&v44 = v6;
      v13 = *(v4 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v4 + 2);
          v15 = *v14 == v4;
          v4 = v14;
        }

        while (!v15);
      }

      v4 = v14;
    }

    while (v14 != v3);
  }

  v16 = (v6 - v43) >> 4;
  keys = 0;
  v49 = 0;
  *&v50 = 0;
  std::vector<void const*>::reserve(&keys, v16);
  values = 0;
  v46 = 0;
  v47 = 0;
  std::vector<void const*>::reserve(&values, v16);
  v17 = v43;
  v18 = keys;
  v19 = values;
  v42 = v44;
  if (v43 != v44)
  {
    v40 = v16;
    v20 = v49;
    v21 = v50;
    v23 = v46;
    v22 = v47;
    do
    {
      v24 = *v17;
      if (!*v17 || !*(v17 + 1))
      {
        keys = v18;
        values = v19;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (v20 >= v21)
      {
        v25 = v20 - v18;
        v26 = (v20 - v18) >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          keys = v18;
          values = v19;
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        if ((v21 - v18) >> 2 > v27)
        {
          v27 = (v21 - v18) >> 2;
        }

        if (v21 - v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v28);
        }

        v29 = (8 * v26);
        v21 = 0;
        *v29 = v24;
        v20 = (v29 + 1);
        memcpy(0, v18, v25);
        if (v18)
        {
          operator delete(v18);
        }

        v18 = 0;
      }

      else
      {
        *v20 = v24;
        v20 += 8;
      }

      v30 = *(v17 + 1);
      if (v23 >= v22)
      {
        v31 = v23 - v19;
        v32 = (v23 - v19) >> 3;
        v33 = v32 + 1;
        if ((v32 + 1) >> 61)
        {
          keys = v18;
          values = v19;
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        if ((v22 - v19) >> 2 > v33)
        {
          v33 = (v22 - v19) >> 2;
        }

        if (v22 - v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v34 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v34);
        }

        v35 = (8 * v32);
        v22 = 0;
        *v35 = v30;
        v23 = (v35 + 1);
        memcpy(0, v19, v31);
        if (v19)
        {
          operator delete(v19);
        }

        v19 = 0;
      }

      else
      {
        *v23 = v30;
        v23 += 8;
      }

      v17 += 16;
    }

    while (v17 != v42);
    v49 = v20;
    *&v50 = v21;
    v47 = v22;
    keys = v18;
    values = v19;
    v46 = v23;
    v16 = v40;
  }

  v36 = CFDictionaryCreate(0, v18, v19, v16, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  if (!v36)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
    __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  keys = &v43;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&keys);
  return v36;
}

void sub_1DE3E4B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *__p, uint64_t a18, uint64_t a19, void *a20)
{
  __cxa_free_exception(v20);
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  __p = &a14;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(CFStringRef *a1, const UInt8 *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
  a1[1] = v11;
  if (!v11)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_1DE3E4E8C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 2;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = std::string::basic_string[abi:ne200100](a1, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(unsigned int *result, unsigned int *a2, unint64_t a3, int *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *result;
      if (v7 < *result)
      {
        *result = v7;
        *(a2 - 1) = v8;
      }
    }

    else if (a3 > 128)
    {
      v19 = a4;
      if (a3 <= a5)
      {
        if (a3 - 65537 >= 0xFFFFFFFFFFFF03FFLL)
        {

          std::__radix_sort_impl[abi:ne200100]<unsigned int *,unsigned int *,void std::__radix_sort[abi:ne200100]<unsigned int *,unsigned int *,std::__identity,std::__low_byte_fn>(unsigned int *,unsigned int *,unsigned int *,std::__identity,std::__low_byte_fn)::{lambda(unsigned int * const&)#1},std::__low_byte_fn,0>(result);
        }

        else
        {
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(result, &result[a3 >> 1], a3 >> 1, a4);
          v23 = &v19[a3 >> 1];
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(&v6[a3 >> 1], a2, a3 - (a3 >> 1), v23);
          v24 = &v19[a3];
          v25 = v23;
          while (v25 != v24)
          {
            v26 = *v25;
            v27 = *v25 < *v19;
            if (*v25 >= *v19)
            {
              v26 = *v19;
            }

            v19 += *v25 >= *v19;
            v25 += v27;
            *v6++ = v26;
            if (v19 == v23)
            {
              while (v25 != v24)
              {
                v29 = *v25++;
                *v6++ = v29;
              }

              return;
            }
          }

          while (v19 != v23)
          {
            v28 = *v19++;
            *v6++ = v28;
          }
        }
      }

      else
      {
        v20 = a3 >> 1;
        v21 = &result[a3 >> 1];
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(result, v21, a3 >> 1, a4, a5);
        v22 = a3 - (a3 >> 1);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(v21, a2, v22, v19, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(v6, v21, a2, v20, v22, v19, a5);
      }
    }

    else if (result != a2)
    {
      v10 = result + 1;
      if (result + 1 != a2)
      {
        v11 = 4;
        v12 = result;
        do
        {
          v14 = *v12;
          v13 = v12[1];
          v12 = v10;
          if (v13 < v14)
          {
            v15 = v11;
            while (1)
            {
              *(result + v15) = v14;
              v16 = v15 - 4;
              if (v15 == 4)
              {
                break;
              }

              v14 = *(result + v15 - 8);
              v15 -= 4;
              if (v13 >= v14)
              {
                v17 = (result + v16);
                goto LABEL_16;
              }
            }

            v17 = result;
LABEL_16:
            *v17 = v13;
          }

          v10 = v12 + 1;
          v11 += 4;
        }

        while (v12 + 1 != a2);
      }
    }
  }
}

void std::__radix_sort_impl[abi:ne200100]<unsigned int *,unsigned int *,void std::__radix_sort[abi:ne200100]<unsigned int *,unsigned int *,std::__identity,std::__low_byte_fn>(unsigned int *,unsigned int *,unsigned int *,std::__identity,std::__low_byte_fn)::{lambda(unsigned int * const&)#1},std::__low_byte_fn,0>(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v50[256] = *MEMORY[0x1E69E9840];
  bzero(v47, 0x2000uLL);
  if (v6 == v5)
  {
    v11 = 0;
    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    v9 = v6;
    do
    {
      v10 = *v9;
      v9 += 4;
      ++v47[v10];
      ++v48[BYTE1(v10)];
      ++v49[BYTE2(v10)];
      v8 &= v10 >= v7;
      ++*(v50 + ((v10 >> 21) & 0x7F8));
      v7 = v10;
    }

    while (v9 != v5);
    v11 = v47[0];
  }

  v12 = 1;
  v13 = v11;
  do
  {
    v14 = v47[v12];
    if (v13 <= v14)
    {
      v13 = v47[v12];
    }

    v11 += v14;
    v47[v12++] = v11;
  }

  while (v12 != 256);
  v45[0] = v13;
  v15 = v48[0];
  v16 = 257;
  v17 = v48[0];
  do
  {
    v18 = v47[v16];
    if (v17 <= v18)
    {
      v17 = v47[v16];
    }

    v15 += v18;
    v47[v16++] = v15;
  }

  while (v16 != 512);
  v45[1] = v17;
  v19 = 0x1FFFFFFFFFFFFF01;
  v20 = v49[0];
  v21 = v49[0];
  do
  {
    v22 = v50[v19];
    if (v21 <= v22)
    {
      v21 = v50[v19];
    }

    v20 += v22;
    v50[v19++] = v20;
  }

  while (v19 * 8);
  v46[0] = v21;
  v23 = v50[0];
  v24 = 769;
  v25 = v50[0];
  do
  {
    v26 = v47[v24];
    if (v25 <= v26)
    {
      v25 = v47[v24];
    }

    v23 += v26;
    v47[v24++] = v23;
  }

  while (v24 != 1024);
  v46[1] = v25;
  if ((v8 & 1) == 0)
  {
    v27 = 0;
    __len = v5 - v6;
    v28 = (v5 - v6) >> 2;
    v29 = 1;
    v30 = v45;
    v31 = v47;
    do
    {
      v32 = v29;
      v33 = v45[v27 | 1];
      if (*v30 == v28 && v33 == v28)
      {
        goto LABEL_43;
      }

      if (*v30 == v28)
      {
        if (v6 != v5)
        {
          memmove(v3, v6, __len);
          if (v33 != v28)
          {
            goto LABEL_38;
          }

LABEL_42:
          memmove(v6, v3, __len);
          goto LABEL_43;
        }
      }

      else if (v6 != v5)
      {
        v35 = 8 * v27;
        v36 = v5;
        do
        {
          v37 = *(v36 - 1);
          v36 -= 4;
          v38 = v31[(v37 >> v35)] - 1;
          v31[(v37 >> v35)] = v38;
          *&v3[4 * v38] = v37;
        }

        while (v36 != v6);
      }

      if (v33 == v28)
      {
        if (v6 != v5)
        {
          goto LABEL_42;
        }
      }

      else if (v6 != v5)
      {
LABEL_38:
        v39 = &v47[256 * (v27 | 1)];
        v40 = (8 * v27) | 8;
        v41 = v5 - v6;
        do
        {
          v42 = *&v3[v41 - 4];
          v43 = v39[(v42 >> v40)] - 1;
          v39[(v42 >> v40)] = v43;
          *&v6[4 * v43] = v42;
          v41 -= 4;
        }

        while (v41);
      }

LABEL_43:
      v29 = 0;
      v30 = v46;
      v31 = v49;
      v27 = 2;
    }

    while ((v32 & 1) != 0);
  }
}

unsigned int *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(unsigned int *result, unsigned int *a2, unint64_t a3, int *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_9:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v9 = *(a2 - 1);
      v8 = v9;
      v10 = v9 >= *result;
      if (v9 >= *result)
      {
        v8 = *result;
      }

      *a4 = v8;
      v4 = a4 + 1;
      if (v10)
      {
        v6 = a2 - 1;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v20 = &result[a3 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(result, v20, a3 >> 1, a4, a3 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(&v6[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v21 = &v6[a3 >> 1];
      while (v21 != a2)
      {
        v22 = *v21;
        v23 = *v21 >= *v6;
        if (*v21 >= *v6)
        {
          v22 = *v6;
        }

        v21 += *v21 < *v6;
        v6 += v23;
        *v4++ = v22;
        if (v6 == v20)
        {
          while (v21 != a2)
          {
            v25 = *v21++;
            *v4++ = v25;
          }

          return result;
        }
      }

      while (v6 != v20)
      {
        v24 = *v6++;
        *v4++ = v24;
      }
    }

    else if (result != a2)
    {
      v11 = result + 1;
      *a4 = *result;
      if (result + 1 != a2)
      {
        v12 = 0;
        v13 = a4;
        v14 = a4;
        do
        {
          v16 = *v14++;
          v15 = v16;
          if (*v11 >= v16)
          {
            *v14 = *v11;
          }

          else
          {
            v13[1] = v15;
            v17 = a4;
            if (v13 != a4)
            {
              v18 = v12;
              while (1)
              {
                v17 = (a4 + v18);
                v19 = *(a4 + v18 - 4);
                if (*v11 >= v19)
                {
                  break;
                }

                *v17 = v19;
                v18 -= 4;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }

            *v17 = *v11;
          }

          ++v11;
          v12 += 4;
          v13 = v14;
        }

        while (v11 != a2);
      }
    }
  }

  return result;
}

unsigned int *std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(unsigned int *result, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    v11 = result;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = *a2;
      while (1)
      {
        v13 = *v11;
        if (v12 < *v11)
        {
          break;
        }

        ++v11;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v8)
      {
        if (a4 == 1)
        {
          *v11 = v12;
          *a2 = v13;
          return result;
        }

        v22 = a4 / 2;
        v17 = &v11[a4 / 2];
        if (a3 == a2)
        {
          v15 = a2;
        }

        else
        {
          v23 = a3 - a2;
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[v23 >> 1];
            v27 = *v25;
            v26 = v25 + 1;
            v23 += ~(v23 >> 1);
            if (v27 < *v17)
            {
              v15 = v26;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = v15 - a2;
      }

      else
      {
        v14 = v8 / 2;
        v15 = &a2[v8 / 2];
        if (a2 == v11)
        {
          v17 = v11;
        }

        else
        {
          v16 = a2 - v11;
          v17 = v11;
          do
          {
            v18 = v16 >> 1;
            v19 = &v17[v16 >> 1];
            v21 = *v19;
            v20 = v19 + 1;
            v16 += ~(v16 >> 1);
            if (*v15 < v21)
            {
              v16 = v18;
            }

            else
            {
              v17 = v20;
            }
          }

          while (v16);
        }

        v22 = v17 - v11;
      }

      v28 = v15;
      if (v17 != a2)
      {
        v28 = v17;
        if (a2 != v15)
        {
          v29 = v17 + 1;
          if (v17 + 1 == a2)
          {
            v72 = *v17;
            v36 = v15 - a2;
            v74 = v22;
            v76 = a6;
            v37 = a3;
            v38 = v14;
            memmove(v17, v17 + 1, v15 - a2);
            v14 = v38;
            v22 = v74;
            a6 = v76;
            a3 = v37;
            v28 = (v17 + v36);
            *v28 = v72;
          }

          else
          {
            v30 = a2 + 1;
            if (a2 + 1 == v15)
            {
              v39 = *(v15 - 1);
              v28 = v17 + 1;
              if (v15 - 1 != v17)
              {
                v75 = v22;
                v77 = a6;
                v40 = a3;
                v41 = v14;
                v73 = *(v15 - 1);
                memmove(v17 + 1, v17, (v15 - 1) - v17);
                v39 = v73;
                v14 = v41;
                v22 = v75;
                a6 = v77;
                a3 = v40;
              }

              *v17 = v39;
            }

            else
            {
              v31 = (a2 - v17);
              v32 = a2 - v17;
              v33 = v15 - a2;
              if (v32 == v15 - a2)
              {
                do
                {
                  v34 = *(v29 - 1);
                  *(v29 - 1) = *(v30 - 1);
                  *(v30 - 1) = v34;
                  if (v29 == a2)
                  {
                    break;
                  }

                  ++v29;
                }

                while (v30++ != v15);
                v28 = a2;
              }

              else
              {
                v42 = v33 >> 2;
                v43 = a2 - v17;
                do
                {
                  v44 = v43;
                  v43 = v42;
                  v42 = v44 % v42;
                }

                while (v42);
                v45 = &v17[v43];
                do
                {
                  v47 = *--v45;
                  v46 = v47;
                  v48 = &v31[v45];
                  v49 = v45;
                  do
                  {
                    v50 = v49;
                    v49 = v48;
                    *v50 = *v48;
                    v51 = __OFSUB__(v32, (v15 - v48) >> 2);
                    v53 = v32 - ((v15 - v48) >> 2);
                    v52 = (v53 < 0) ^ v51;
                    v48 = &v17[v53];
                    if (v52)
                    {
                      v48 = &v31[v49];
                    }
                  }

                  while (v48 != v45);
                  *v49 = v46;
                }

                while (v45 != v17);
                v28 = (v17 + v33);
              }
            }
          }
        }
      }

      a4 -= v22;
      v8 -= v14;
      if (v22 + v14 >= a4 + v8)
      {
        v57 = a4;
        v58 = v14;
        v55 = a6;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(v28, v15, a3, v57, v8, a6, a7);
        v15 = v17;
        v8 = v58;
        a4 = v22;
        a3 = v28;
      }

      else
      {
        v54 = v11;
        v55 = a6;
        v56 = a3;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,unsigned int *>(v54, v17, v28, v22, v14, a6, a7);
        a3 = v56;
        v11 = v28;
      }

      a2 = v15;
      a6 = v55;
      if (!v8)
      {
        return result;
      }
    }

    if (a4 <= v8)
    {
      if (v11 != a2)
      {
        v67 = a6;
        v68 = v11;
        do
        {
          v69 = *v68++;
          *v67 = v69;
          v67 += 4;
        }

        while (v68 != a2);
        while (a2 != a3)
        {
          v70 = *a2;
          v71 = *a2 < *a6;
          if (*a2 >= *a6)
          {
            v70 = *a6;
          }

          a6 += 4 * (*a2 >= *a6);
          a2 += v71;
          *v11++ = v70;
          if (a6 == v67)
          {
            return result;
          }
        }

        return memmove(v11, a6, v67 - a6);
      }
    }

    else if (a2 != a3)
    {
      v59 = a6;
      v60 = a2;
      do
      {
        v61 = *v60++;
        *v59 = v61;
        v59 += 4;
      }

      while (v60 != a3);
      while (a2 != v11)
      {
        v62 = *(v59 - 1);
        v63 = *(a2 - 1);
        v64 = v62 >= v63;
        if (v62 <= v63)
        {
          v62 = *(a2 - 1);
        }

        if (v64)
        {
          v59 -= 4;
        }

        else
        {
          --a2;
        }

        *--a3 = v62;
        if (v59 == a6)
        {
          return result;
        }
      }

      if (v59 != a6)
      {
        v65 = 0x3FFFFFFFFFFFFFFFLL;
        do
        {
          v66 = *(v59 - 1);
          v59 -= 4;
          a3[v65--] = v66;
        }

        while (v59 != a6);
      }
    }
  }

  return result;
}

uint64_t HALS_IOContextReporter::anonymous namespace::ReportDeviceMetrics(std::map<std::string,std::string> &,unsigned int,unsigned int,std::unordered_map<unsigned int,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&,std::unordered_map<unsigned int,unsigned int> const&)::$_0::operator()(void *a1, unsigned int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(a1, a2);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 5);
  v10[0] = 0;
  v10[1] = 0;
  HALS_System::GetInstance(&v11, 0, v10);
  v4 = HALS_System::CopyDeviceByObjectID(v11, v3, 0);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (!v4)
  {
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
LABEL_7:
    v8 = 0;
    LOBYTE(TransportType) = 0;
    v7 = 0;
    return v8 | v7 | TransportType;
  }

  TransportType = HALS_IODevice::GetTransportType(v4);
  HALS_ObjectMap::ReleaseObject(v4, v6);
  v7 = TransportType & 0xFFFFFF00;
  v8 = 0x100000000;
  return v8 | v7 | TransportType;
}

void sub_1DE3E5DC4(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  HALS_ObjectMap::ReleaseObject(v13, a2);
  _Unwind_Resume(a1);
}

void HALS_IOContextReporter::anonymous namespace::PopulateDevice(char *a1, HALS_IODevice **a2, int a3, char a4, void *a5, uint64_t a6)
{
  v47 = a4;
  v8 = "output_";
  if (a3)
  {
    v8 = "input_";
  }

  v45 = v8;
  v46 = ", ";
  v44[0] = a1;
  v44[1] = &v45;
  v44[2] = &v47;
  v44[3] = &v46;
  if (a3)
  {
    v9 = 1768845428;
  }

  else
  {
    v9 = 1869968496;
  }

  TransportType = HALS_IODevice::GetTransportType(*a2);
  if ((a6 & 0x100000000) != 0)
  {
    v11 = a6;
  }

  else
  {
    v11 = TransportType;
  }

  if (v11 <= 1685090931)
  {
    if (v11 <= 1651274861)
    {
      switch(v11)
      {
        case 825440564:
          v12 = "FireWire";
LABEL_46:
          std::string::basic_string[abi:ne200100]<0>(&v43, v12);
          std::string::basic_string[abi:ne200100]<0>(__p, "device_transport_list");
          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v40, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
          }

          else
          {
            v40 = v43;
          }

          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

          if (v42 < 0)
          {
            operator delete(__p[0]);
          }

          LODWORD(v33.__r_.__value_.__l.__data_) = 1818456950;
          *(v33.__r_.__value_.__r.__words + 4) = v9;
          memset(v50, 0, 24);
          (*(**a2 + 624))();
          ct = v50[0].__ct_;
          if (ct == v14)
          {
            v17 = 1.0;
          }

          else
          {
            v16 = v14;
            v17 = 0.0;
            do
            {
              v18 = *v16;
              v19 = *(*v16 + 16);
              v48 = 0;
              (*(*v18 + 120))(v18, v19, &v33, 4, &v48, &v48 + 4, 0, 0, 0);
              v20 = *(&v48 + 1);
              v16 = v21;
              if (v17 < v20)
              {
                v17 = v20;
              }
            }

            while (ct != v21);
          }

          HALS_Device::BasicControlList::~BasicControlList(v50, v15);
          std::string::basic_string[abi:ne200100]<0>(v38, "device_volume_list");
          std::to_string(&v37, v17);
          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }

          if (v39 < 0)
          {
            operator delete(v38[0]);
          }

          LODWORD(v33.__r_.__value_.__l.__data_) = 1650685548;
          *(v33.__r_.__value_.__r.__words + 4) = v9;
          memset(v50, 0, 24);
          (*(**a2 + 624))();
          v22 = v50[0].__ct_;
          if (v22 == v23)
          {
            v26 = 0;
          }

          else
          {
            v25 = v23;
            LOBYTE(v26) = 1;
            v27 = v22;
            do
            {
              if (v26)
              {
                v28 = *v25;
                v29 = *(*v25 + 16);
                v49 = 0;
                (*(*v28 + 120))(v28, v29, &v33, 4, &v49, &v49 + 4, 0, 0, 0);
                v26 = HIDWORD(v49) != 0;
                v27 = v50[0].__ct_;
              }

              else
              {
                v26 = 0;
              }
            }

            while (v22 != v25);
          }

          HALS_Device::BasicControlList::~BasicControlList(v50, v24);
          std::string::basic_string[abi:ne200100]<0>(v35, "device_is_muted_list");
          std::to_string(&v34, v26);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          if (v36 < 0)
          {
            operator delete(v35[0]);
            if ((a6 & 0x100000000) == 0)
            {
              goto LABEL_76;
            }
          }

          else if ((a6 & 0x100000000) == 0)
          {
LABEL_76:
            v30 = (*(**a2 + 208))();
            applesauce::CF::StringRef::from_get(v50, v30);
            if (!v50[0].__loc_.__locale_)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
              __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::CF::convert_to<std::string,0>(&v33, v50[0].__loc_.__locale_);
            if (v50[0].__loc_.__locale_)
            {
              CFRelease(v50[0].__loc_.__locale_);
            }

LABEL_81:
            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v32, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
            }

            else
            {
              v32 = v33;
            }

            std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v50, "[a-fA-F0-9:]{17}|[a-fA-F0-9]{12}|[a-fA-F0-9.]{5}|[a-fA-F0-9-]{4}");
          }

          std::string::basic_string[abi:ne200100]<0>(&v33, "AirPods");
          goto LABEL_81;
        case 1634300528:
          v12 = "AirPlay";
          goto LABEL_46;
        case 1651271009:
          v12 = "BluetoothLE";
          goto LABEL_46;
      }
    }

    else if (v11 > 1667463011)
    {
      if (v11 == 1667463012)
      {
        v12 = "ContinuityCaptureWired";
        goto LABEL_46;
      }

      if (v11 == 1667463020)
      {
        v12 = "ContinuityCaptureWireless";
        goto LABEL_46;
      }
    }

    else
    {
      if (v11 == 1651274862)
      {
        v12 = "BuiltIn";
        goto LABEL_46;
      }

      if (v11 == 1651275109)
      {
        v12 = "Bluetooth";
        goto LABEL_46;
      }
    }
  }

  else if (v11 > 1885563167)
  {
    if (v11 > 1970496031)
    {
      if (v11 == 1970496032)
      {
        v12 = "USB";
        goto LABEL_46;
      }

      if (v11 == 1986622068)
      {
        v12 = "Virtual";
        goto LABEL_46;
      }
    }

    else
    {
      if (v11 == 1885563168)
      {
        v12 = "PCI";
        goto LABEL_46;
      }

      if (v11 == 1953002862)
      {
        v12 = "Thunderbolt";
        goto LABEL_46;
      }
    }
  }

  else if (v11 > 1735554415)
  {
    if (v11 == 1735554416)
    {
      v12 = "Aggregate";
      goto LABEL_46;
    }

    if (v11 == 1751412073)
    {
      v12 = "HDMI";
      goto LABEL_46;
    }
  }

  else
  {
    if (v11 == 1685090932)
    {
      v12 = "DisplayPort";
      goto LABEL_46;
    }

    if (v11 == 1700886114)
    {
      v12 = "AVB";
      goto LABEL_46;
    }
  }

  v12 = "Unknown";
  goto LABEL_46;
}

void sub_1DE3E6AD8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v53 - 145) < 0)
  {
    JUMPOUT(0x1DE3E6BA4);
  }

  JUMPOUT(0x1DE3E6BA8);
}

HALS_ObjectMap ***HALS_IOContextReporter::anonymous namespace::PopulateAvailableStreamFormats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  HALS_Device::CopyStreamList(a2, a3, &v10);
  v5 = v10;
  for (i = v11; v5 != i; ++v5)
  {
    if (*(*v5 + 14) != 1 && (HALS_Stream::IsHardwareReferenceStream(*v5) & 1) == 0)
    {
      v7 = *v5;
      v8 = *(*v5 + 4);
      v13 = 0x676C6F6270667461;
      LODWORD(v14) = 0;
      (*(*v7 + 112))(v7, v8, &v13, 0, 0, 0);
      operator new[]();
    }
  }

  return HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(&v10, v4);
}

void sub_1DE3E6EF0(void *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(va, a2);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3E6ECCLL);
}

uint64_t HALS_IOContext::CopyDescription(HALS_IOContext *this)
{
  v1 = *(this + 4);
  v3 = 0x676C6F6261636F6DLL;
  v4 = 0;
  v6 = 0;
  v5 = 0;
  (*(*this + 120))(this, v1, &v3, 8, &v5, &v6, 0, 0, 0);
  return v6;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,applesauce::CF::StringRef const&>(_BYTE *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(a2, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,applesauce::CF::StringRef const&>(_BYTE *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(a2, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFStringGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<applesauce::CF::StringRef *>,std::__less<void,void>>(const __CFString **a1, const __CFString **a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = a2 - a1;
    while (1)
    {
      v9 = operator new(8 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1DE3E71B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

const __CFString **std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<applesauce::CF::StringRef *>,std::__wrap_iter<applesauce::CF::StringRef *>,std::__equal_to &>(const __CFString **a1, const __CFString **a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v3 = a1 + 1;
    while (v3 != v2)
    {
      v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(v3 - 1), v3);
      ++v3;
      if (v4 == kCFCompareEqualTo)
      {
        v5 = v3 - 2;
        goto LABEL_7;
      }
    }

    v5 = v2;
LABEL_7:
    if (v5 != v2)
    {
      for (i = v5 + 2; i != v2; ++i)
      {
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v5, i))
        {
          v7 = v5[1];
          *++v5 = *i;
          *i = v7;
        }
      }

      return v5 + 1;
    }
  }

  return v2;
}

uint64_t *std::vector<applesauce::CF::StringRef>::erase(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    v5 = *(a1 + 8);
    v6 = a2;
    if (a3 != v5)
    {
      do
      {
        v7 = *v6;
        *v6++ = *a3;
        *a3++ = v7;
      }

      while (a3 != v5);
      v5 = *(a1 + 8);
    }

    while (v5 != v6)
    {
      v8 = *--v5;
      std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v8);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(_BYTE *a1, CFDictionaryRef theDict, void *key)
{
  if (!key)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(theDict, key);
  v5 = Value;
  if (!Value)
  {
    goto LABEL_6;
  }

  CFRetain(Value);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_6:
    v7 = 0;
    *a1 = 0;
    goto LABEL_7;
  }

  *a1 = v5;
  v7 = 1;
LABEL_7:
  a1[8] = v7;
}

CFTypeID applesauce::CF::details::at_to<applesauce::CF::ArrayRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(ValueAtIndex);
  *a1 = v7;
  v8 = CFGetTypeID(v7);
  result = CFArrayGetTypeID();
  if (v8 != result)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1DE3E7464(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(const __CFString **a1, const __CFString **a2, uint64_t a3, unint64_t a4, const __CFString **a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v7 = a1;
    if (a4 == 2)
    {
      if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a2 - 1), a1) >= 2)
      {
        v8 = *v7;
        *v7 = 0;
        *v7 = *(a2 - 1);
        *(a2 - 1) = v8;
      }
    }

    else if (a4 <= 0)
    {
      if (a1 != a2)
      {
        v16 = a1 + 1;
        if (a1 + 1 != a2)
        {
          v17 = 0;
          v18 = a1;
          do
          {
            v19 = v18;
            v18 = v16;
            if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v16, v19) >= 2)
            {
              v20 = *v18;
              *v18 = 0;
              v21 = v17;
              while (1)
              {
                v22 = (v7 + v21);
                v24 = *(v7 + v21);
                v23 = *(v7 + v21 + 8);
                *v22 = v23;
                v22[1] = v24;
                if (!v21)
                {
                  break;
                }

                v21 -= 8;
                v25 = v7 + v21;
                if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v20, (v7 + v21)) <= kCFCompareGreaterThan)
                {
                  v26 = v25 + 8;
                  v23 = *(v25 + 1);
                  goto LABEL_20;
                }
              }

              v26 = v7;
LABEL_20:
              *v26 = v20;
              if (v23)
              {
                CFRelease(v23);
              }
            }

            v16 = v18 + 1;
            v17 += 8;
          }

          while (v18 + 1 != a2);
        }
      }
    }

    else
    {
      v11 = a5;
      v13 = a4 >> 1;
      v14 = &a1[a4 >> 1];
      if (a4 <= a6)
      {
        v35[0] = a5;
        v35[1] = &v36;
        v36 = 0;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(a1, &a1[a4 >> 1], a3, a4 >> 1, a5);
        v36 = a4 >> 1;
        v27 = a4 - v13;
        v28 = &v11[v13];
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(&v7[a4 >> 1], a2, a3, v27, v28);
        v36 = a4;
        v29 = &v11[a4];
        v30 = v28;
        while (v30 != v29)
        {
          v31 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v30, v11);
          v32 = *v7;
          if (v31 < 2)
          {
            *v7 = *v11;
            *v11++ = v32;
          }

          else
          {
            *v7 = *v30;
            *v30++ = v32;
          }

          ++v7;
          if (v11 == v28)
          {
            while (v30 != v29)
            {
              v34 = *v7;
              *v7++ = *v30;
              *v30++ = v34;
            }

            goto LABEL_36;
          }
        }

        while (v11 != v28)
        {
          v33 = *v7;
          *v7++ = *v11;
          *v11++ = v33;
        }

LABEL_36:
        std::unique_ptr<applesauce::CF::StringRef,std::__destruct_n &>::~unique_ptr[abi:ne200100](v35);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(a1, &a1[a4 >> 1], a3, a4 >> 1, a5, a6);
        v15 = a4 - v13;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(v14, a2, a3, v15, v11, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(v7, v14, a2, v13, v15, v11, a6);
      }
    }
  }
}

void sub_1DE3E7748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<applesauce::CF::StringRef,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const __CFString **std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(const __CFString **result, const __CFString **a2, uint64_t a3, unint64_t a4, const __CFString **a5)
{
  if (!a4)
  {
    return result;
  }

  v5 = a5;
  v8 = result;
  if (a4 == 2)
  {
    v26 = &v27;
    v27 = 0;
    v9 = a2 - 1;
    v10 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(a2 - 1), result);
    if (v10 <= kCFCompareGreaterThan)
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

    if (v10 <= kCFCompareGreaterThan)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    *v5 = *v11;
    *v11 = 0;
    v13 = v27;
    v5[1] = *v12;
    *v12 = 0;
    v14 = v13 + 1;
LABEL_12:
    v27 = v14;
LABEL_13:
    v25 = 0;
    return std::unique_ptr<applesauce::CF::StringRef,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v25);
  }

  if (a4 == 1)
  {
    *a5 = *result;
    *result = 0;
    return result;
  }

  if (a4 > 8)
  {
    v23 = &result[a4 >> 1];
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(result, v23, a3, a4 >> 1, a5, a4 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
    v25 = v5;
    v26 = &v27;
    v27 = 0;
    if (v23 == a2)
    {
      v14 = 0;
LABEL_37:
      if (v8 == v23)
      {
        goto LABEL_13;
      }

      do
      {
        *v5++ = *v8;
        *v8++ = 0;
        ++v14;
      }

      while (v8 != v23);
    }

    else
    {
      v24 = &v8[a4 >> 1];
      while (1)
      {
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v24, v8) < 2)
        {
          *v5 = *v8;
          *v8++ = 0;
        }

        else
        {
          *v5 = *v24;
          *v24++ = 0;
        }

        v14 = ++v27;
        ++v5;
        if (v8 == v23)
        {
          break;
        }

        if (v24 == a2)
        {
          goto LABEL_37;
        }
      }

      if (v24 == a2)
      {
        goto LABEL_13;
      }

      do
      {
        *v5++ = *v24;
        *v24++ = 0;
        ++v14;
      }

      while (v24 != a2);
    }

    goto LABEL_12;
  }

  if (result != a2)
  {
    v25 = a5;
    v26 = &v27;
    *a5 = *result;
    *result = 0;
    v15 = result + 1;
    v27 = 1;
    if (result + 1 != a2)
    {
      v16 = 0;
      v17 = a5;
      do
      {
        if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v15, v17) < 2)
        {
          v17[1] = *v15;
          *v15 = 0;
          ++v27;
        }

        else
        {
          v18 = *v17;
          *v17 = 0;
          v17[1] = v18;
          ++v27;
          v19 = v5;
          if (v17 != v5)
          {
            v20 = v16;
            while (1)
            {
              v19 = (v5 + v20);
              if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v15, (v5 + v20 - 8)) < 2)
              {
                break;
              }

              *(v5 + v20 - 8) = vextq_s8(*(v5 + v20 - 8), *(v5 + v20 - 8), 8uLL);
              v20 -= 8;
              if (!v20)
              {
                v19 = v5;
                break;
              }
            }
          }

          v21 = *v19;
          *v19 = *v15;
          *v15 = v21;
        }

        ++v15;
        v16 += 8;
        ++v17;
      }

      while (v15 != a2);
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t *std::unique_ptr<applesauce::CF::StringRef,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      do
      {
        v6 = *(v2 + 8 * v5);
        if (v6)
        {
          CFRelease(v6);
          v4 = *v3;
        }

        ++v5;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

uint64_t *std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(uint64_t *result, const __CFString **a2, const __CFString **a3, uint64_t a4, uint64_t a5, const __CFString **a6, uint64_t a7)
{
  if (a5)
  {
    v9 = a5;
    v13 = result;
    while (v9 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      while (1)
      {
        result = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*a2, v13);
        if (result > 1)
        {
          break;
        }

        ++v13;
        if (!--a4)
        {
          return result;
        }
      }

      v55 = a3;
      if (a4 >= v9)
      {
        if (a4 == 1)
        {
          v45 = *v13;
          *v13 = 0;
          *v13 = *a2;
          *a2 = v45;
          return result;
        }

        v18 = a4 / 2;
        v16 = &v13[a4 / 2];
        v15 = a2;
        if (a2 != a3)
        {
          v52 = a7;
          v54 = a6;
          v19 = a3 - a2;
          v15 = a2;
          do
          {
            v20 = &v15[v19 >> 1];
            v22 = *v20;
            v21 = v20 + 1;
            v23 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v22, &v13[a4 / 2]);
            if (v23 <= kCFCompareGreaterThan)
            {
              v19 >>= 1;
            }

            else
            {
              v19 += ~(v19 >> 1);
            }

            if (v23 > kCFCompareGreaterThan)
            {
              v15 = v21;
            }
          }

          while (v19);
          a7 = v52;
          a6 = v54;
          v18 = a4 / 2;
        }

        v14 = v15 - a2;
      }

      else
      {
        v14 = v9 / 2;
        v15 = &a2[v9 / 2];
        v16 = a2;
        if (a2 != v13)
        {
          v53 = a6;
          v17 = a2 - v13;
          v16 = v13;
          do
          {
            if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*v15, &v16[v17 >> 1]) > kCFCompareGreaterThan)
            {
              v17 >>= 1;
            }

            else
            {
              v16 += (v17 >> 1) + 1;
              v17 += ~(v17 >> 1);
            }
          }

          while (v17);
          a6 = v53;
          v14 = v9 / 2;
        }

        v18 = v16 - v13;
      }

      a3 = v15;
      if (v16 != a2)
      {
        a3 = v16;
        if (a2 != v15)
        {
          v24 = *v16;
          *v16 = 0;
          *v16 = *a2;
          a3 = v16 + 1;
          for (i = a2; ; *a3++ = *i)
          {
            *i++ = v24;
            if (i == v15)
            {
              break;
            }

            if (a3 == a2)
            {
              a2 = i;
            }

            v24 = *a3;
            *a3 = 0;
          }

          if (a3 != a2)
          {
            v26 = a3;
            v27 = a2;
            do
            {
              while (1)
              {
                v28 = *v26;
                *v26 = 0;
                *v26++ = *v27;
                *v27++ = v28;
                if (v27 == v15)
                {
                  break;
                }

                if (v26 == a2)
                {
                  a2 = v27;
                }
              }

              v27 = a2;
            }

            while (v26 != a2);
          }
        }
      }

      a4 -= v18;
      v9 -= v14;
      if (v18 + v14 >= a4 + v9)
      {
        v29 = v18;
        v30 = a4;
        v31 = v14;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(a3, v15, v55, v30, v9, a6, a7);
        v15 = v16;
        v9 = v31;
        a4 = v29;
      }

      else
      {
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<applesauce::CF::StringRef *>>(v13, v16, a3, v18, v14, a6, a7);
        v13 = a3;
        a3 = v55;
      }

      a2 = v15;
      if (!v9)
      {
        return result;
      }
    }

    v56[0] = a6;
    v56[1] = &v57;
    v57 = 0;
    if (a4 <= v9)
    {
      if (a2 != v13)
      {
        v39 = 0;
        v40 = a6;
        v41 = v13;
        do
        {
          v42 = v40;
          *v40++ = *v41;
          *v41++ = 0;
          ++v39;
        }

        while (v41 != a2);
        v57 = v39;
        while (a2 != a3)
        {
          v43 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*a2, a6);
          v44 = *v13;
          if (v43 < 2)
          {
            *v13 = *a6;
            *a6++ = v44;
          }

          else
          {
            *v13 = *a2;
            *a2++ = v44;
          }

          ++v13;
          if (a6 == v40)
          {
            return std::unique_ptr<applesauce::CF::StringRef,std::__destruct_n &>::~unique_ptr[abi:ne200100](v56);
          }
        }

        v49 = a6 - 1;
        do
        {
          v50 = *v13;
          v51 = v49[1];
          ++v49;
          *v13++ = v51;
          *v49 = v50;
        }

        while (v49 != v42);
      }
    }

    else if (a2 != a3)
    {
      v32 = 0;
      v33 = a6;
      v34 = a2;
      do
      {
        *v33++ = *v34;
        *v34++ = 0;
        ++v32;
      }

      while (v34 != a3);
      v57 = v32;
      while (a2 != v13)
      {
        v35 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(v33 - 1), a2 - 1);
        v37 = *--a3;
        v36 = v37;
        if (v35 <= kCFCompareGreaterThan)
        {
          v38 = v33;
        }

        else
        {
          v38 = a2;
        }

        if (v35 <= kCFCompareGreaterThan)
        {
          --v33;
        }

        else
        {
          --a2;
        }

        *a3 = *(v38 - 1);
        *(v38 - 1) = v36;
        if (v33 == a6)
        {
          return std::unique_ptr<applesauce::CF::StringRef,std::__destruct_n &>::~unique_ptr[abi:ne200100](v56);
        }
      }

      if (v33 != a6)
      {
        v46 = 0x1FFFFFFFFFFFFFFFLL;
        do
        {
          v47 = *--v33;
          v48 = a3[v46];
          a3[v46] = v47;
          *v33 = v48;
          --v46;
        }

        while (v33 != a6);
      }
    }

    return std::unique_ptr<applesauce::CF::StringRef,std::__destruct_n &>::~unique_ptr[abi:ne200100](v56);
  }

  return result;
}

void HALS_IOContextReporter::anonymous namespace::PopulateAvailableStreamInfo(char *a1, void *a2, int a3, int a4, int a5, char a6)
{
  std::string::basic_string[abi:ne200100]<0>(&v91, ", ");
  if (a4)
  {
    v11 = "input_";
  }

  else
  {
    v11 = "output_";
  }

  std::string::basic_string[abi:ne200100]<0>(&v88, v11);
  if (a5)
  {
    v12 = "phys";
  }

  else
  {
    v12 = "virt";
  }

  std::string::basic_string[abi:ne200100]<0>(&v85, v12);
  std::string::basic_string[abi:ne200100]<0>(&v84, "{ ");
  if (a3)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *a2 + v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 28);
      std::to_string(&v74, *(v15 + 32));
      v19 = std::string::insert(&v74, 0, "[", 1uLL);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v75.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v75.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(&v75, "/", 1uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v73, v16);
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v73;
      }

      else
      {
        v23 = v73.__r_.__value_.__r.__words[0];
      }

      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v73.__r_.__value_.__l.__size_;
      }

      v25 = std::string::append(&v76, v23, size);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = std::string::append(&v77, "/", 1uLL);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v72, v18);
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v72;
      }

      else
      {
        v29 = v72.__r_.__value_.__r.__words[0];
      }

      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v72.__r_.__value_.__l.__size_;
      }

      v31 = std::string::append(&v78, v29, v30);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v79, " ", 1uLL);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      LODWORD(v34) = bswap32(v17);
      *&v34 = vzip1_s8(*&v34, *&v34);
      v35.i64[0] = 0x1F0000001FLL;
      v35.i64[1] = 0x1F0000001FLL;
      v36.i64[0] = 0x5F0000005FLL;
      v36.i64[1] = 0x5F0000005FLL;
      *&v34 = vbsl_s8(vmovn_s32(vcgtq_u32(v36, vsraq_n_s32(v35, vshlq_n_s32(vmovl_u16(*&v34), 0x18uLL), 0x18uLL))), *&v34, 0x2E002E002E002ELL);
      v71 = 4;
      *__s = vuzp1_s8(*&v34, *&v34).u32[0];
      __s[4] = 0;
      v37 = std::string::append(&v80, __s, 4uLL);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      v39 = std::string::append(&v81, "]", 1uLL);
      v40 = *&v39->__r_.__value_.__l.__data_;
      v83 = v39->__r_.__value_.__r.__words[2];
      v82 = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (v71 < 0)
      {
        operator delete(*__s);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      if (v83 >= 0)
      {
        v41 = &v82;
      }

      else
      {
        v41 = v82;
      }

      if (v83 >= 0)
      {
        v42 = HIBYTE(v83);
      }

      else
      {
        v42 = *(&v82 + 1);
      }

      std::string::append(&v84, v41, v42);
      if (v14 < (a3 - 1))
      {
        if ((v93 & 0x80u) == 0)
        {
          v43 = &v91;
        }

        else
        {
          v43 = v91;
        }

        if ((v93 & 0x80u) == 0)
        {
          v44 = v93;
        }

        else
        {
          v44 = v92;
        }

        std::string::append(&v84, v43, v44);
      }

      if (SHIBYTE(v83) < 0)
      {
        operator delete(v82);
      }

      ++v14;
      v13 += 56;
    }

    while (a3 != v14);
  }

  std::string::append(&v84, " }", 2uLL);
  if ((v90 & 0x80u) == 0)
  {
    v45 = v90;
  }

  else
  {
    v45 = v89;
  }

  std::string::basic_string[abi:ne200100](&v80, v45 + 6);
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = &v80;
  }

  else
  {
    v46 = v80.__r_.__value_.__r.__words[0];
  }

  if (v45)
  {
    if ((v90 & 0x80u) == 0)
    {
      v47 = &v88;
    }

    else
    {
      v47 = v88;
    }

    memmove(v46, v47, v45);
  }

  strcpy(v46 + v45, "avail_");
  if ((v87 & 0x80u) == 0)
  {
    v48 = &v85;
  }

  else
  {
    v48 = v85;
  }

  if ((v87 & 0x80u) == 0)
  {
    v49 = v87;
  }

  else
  {
    v49 = v86;
  }

  v50 = std::string::append(&v80, v48, v49);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v81.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v81.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v81, "_formats", 8uLL);
  v53 = *&v52->__r_.__value_.__l.__data_;
  v83 = v52->__r_.__value_.__r.__words[2];
  v82 = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  v79.__r_.__value_.__r.__words[0] = &v82;
  v54 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &v82, &v79);
  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = &v84;
  }

  else
  {
    v55 = v84.__r_.__value_.__r.__words[0];
  }

  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v56 = v84.__r_.__value_.__l.__size_;
  }

  std::string::append((v54 + 56), v55, v56);
  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if ((a6 & 1) == 0)
  {
    if ((v90 & 0x80u) == 0)
    {
      v57 = v90;
    }

    else
    {
      v57 = v89;
    }

    std::string::basic_string[abi:ne200100](&v80, v57 + 6);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v80;
    }

    else
    {
      v58 = v80.__r_.__value_.__r.__words[0];
    }

    if (v57)
    {
      if ((v90 & 0x80u) == 0)
      {
        v59 = &v88;
      }

      else
      {
        v59 = v88;
      }

      memmove(v58, v59, v57);
    }

    strcpy(v58 + v57, "avail_");
    if ((v87 & 0x80u) == 0)
    {
      v60 = &v85;
    }

    else
    {
      v60 = v85;
    }

    if ((v87 & 0x80u) == 0)
    {
      v61 = v87;
    }

    else
    {
      v61 = v86;
    }

    v62 = std::string::append(&v80, v60, v61);
    v63 = *&v62->__r_.__value_.__l.__data_;
    v81.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
    *&v81.__r_.__value_.__l.__data_ = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = std::string::append(&v81, "_formats", 8uLL);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v83 = v64->__r_.__value_.__r.__words[2];
    v82 = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    v79.__r_.__value_.__r.__words[0] = &v82;
    v66 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &v82, &v79);
    if ((v93 & 0x80u) == 0)
    {
      v67 = &v91;
    }

    else
    {
      v67 = v91;
    }

    if ((v93 & 0x80u) == 0)
    {
      v68 = v93;
    }

    else
    {
      v68 = v92;
    }

    std::string::append((v66 + 56), v67, v68);
    if (SHIBYTE(v83) < 0)
    {
      operator delete(v82);
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (v87 < 0)
  {
    operator delete(v85);
  }

  if (v90 < 0)
  {
    operator delete(v88);
  }

  if (v93 < 0)
  {
    operator delete(v91);
  }
}

std::string *HALS_IOContextReporter::anonymous namespace::PopulateDevice(std::map<std::string,std::string> &,HALS_Releaser<HALS_Device> const&,BOOL,BOOL,std::unordered_map<unsigned int,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&,std::optional<unsigned int>)::$_0::operator()(char **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  std::operator+<char>();
  v13 = __p;
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5, __p, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  result = std::string::append((v6 + 56), v8, v9);
  if ((*a1[2] & 1) == 0)
  {
    return std::string::append((v6 + 56), ", ", 2uLL);
  }

  return result;
}

void sub_1DE3E8630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<HALS_Control **>,std::__wrap_iter<HALS_Control **>,std::reference_wrapper<HALS_IOContextReporter::anonymous namespace::GetVolume(HALS_Releaser<HALS_Device> const&,unsigned int)::$_0>,std::identity>(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    do
    {
      v2 = *a1;
      if (*a1)
      {
        v4 = *(v2 + 20);
        v3 = *(v2 + 24);
        if (v4 == v3 || v4 == 1986817381)
        {
          if (v4 == 1986817381 || v4 != v3)
          {
            return a1;
          }
        }

        else if (v3 == 1986817381)
        {
          return a1;
        }
      }

      ++a1;
    }

    while (a1 != a2);
    return a2;
  }

  return a2;
}

uint64_t *std::ranges::__find_if_impl[abi:ne200100]<std::__wrap_iter<HALS_Control **>,std::__wrap_iter<HALS_Control **>,std::reference_wrapper<HALS_IOContextReporter::anonymous namespace::IsMuted(HALS_Releaser<HALS_Device> const&,unsigned int)::$_0>,std::identity>(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    do
    {
      v2 = *a1;
      if (*a1)
      {
        v4 = *(v2 + 20);
        v3 = *(v2 + 24);
        if (v4 == v3 || v4 == 1836414053)
        {
          if (v4 == 1836414053 || v4 != v3)
          {
            return a1;
          }
        }

        else if (v3 == 1836414053)
        {
          return a1;
        }
      }

      ++a1;
    }

    while (a1 != a2);
    return a2;
  }

  return a2;
}

void std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(std::string *a1, char *a2, char *a3, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *a4, const char *a5)
{
  v6 = a2;
  v51.__begin_.__i_ = a2;
  v51.__end_.__i_ = a3;
  v51.__pregex_ = a4;
  v51.__flags_ = match_default;
  memset(&v51.__match_.__prefix_, 0, 17);
  memset(&v51.__match_.__suffix_, 0, 17);
  v51.__match_.__ready_ = 0;
  v51.__match_.__position_start_.__i_ = 0;
  memset(&v51.__match_, 0, 41);
  memset(&__p.__match_.__matches_.__end_cap_, 0, 17);
  memset(&__p.__match_.__unmatched_.matched, 0, 17);
  __p.__match_.__prefix_.matched = 0;
  __p.__match_.__suffix_.first.__i_ = 0;
  memset(&__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, a2, a3, &__p, 0);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v51.__match_, v6, a3, &__p, 0);
  if (__p.__begin_.__i_)
  {
    operator delete(__p.__begin_.__i_);
  }

  memset(&__p.__match_.__prefix_, 0, 17);
  memset(&__p.__match_.__suffix_, 0, 17);
  __p.__match_.__ready_ = 0;
  __p.__match_.__position_start_.__i_ = 0;
  memset(&__p.__match_, 0, 41);
  memset(&__p, 0, 28);
  if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v51, &__p))
  {
    while (v6 != a3)
    {
      std::string::push_back(a1, *v6++);
    }

    goto LABEL_69;
  }

  v8 = 0;
  v9 = 0;
  v48 = strlen(a5);
  v10 = &a5[v48];
  while (!std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v51, &__p))
  {
    i = v51.__match_.__prefix_.first.__i_;
    v12 = v51.__match_.__prefix_.second.__i_;
    while (i != v12)
    {
      std::string::push_back(a1, *i++);
    }

    if (v48)
    {
      v13 = v51.__match_.__suffix_.first.__i_;
      v14 = v51.__match_.__suffix_.second.__i_;
      v15 = v51.__match_.__prefix_.first.__i_;
      v16 = v51.__match_.__prefix_.second.__i_;
      begin = v51.__match_.__matches_.__begin_;
      v49 = 0xAAAAAAAAAAAAAAABLL * ((v51.__match_.__matches_.__end_ - v51.__match_.__matches_.__begin_) >> 3);
      v18 = a5;
      do
      {
        v19 = *v18;
        if (v19 == 36)
        {
          v20 = v18 + 1;
          if (v18 + 1 != v10)
          {
            v19 = *v20;
            if (v19 > 0x26)
            {
              if (v19 == 39)
              {
                if (v13 != v14)
                {
                  v34 = v13;
                  do
                  {
                    std::string::push_back(a1, *v34++);
                  }

                  while (v34 != v14);
                }

                goto LABEL_42;
              }

              if (v19 == 96)
              {
                if (v15 != v16)
                {
                  v23 = v15;
                  do
                  {
                    std::string::push_back(a1, *v23++);
                  }

                  while (v23 != v16);
                }

                goto LABEL_42;
              }
            }

            else
            {
              if (v19 == 36)
              {
                ++v18;
                goto LABEL_41;
              }

              if (v19 == 38)
              {
                v22 = begin->first.__i_;
                v21 = begin->second.__i_;
                while (v22 != v21)
                {
                  std::string::push_back(a1, *v22++);
                }

                goto LABEL_42;
              }
            }

            LODWORD(v24) = v19 - 48;
            if (v24 <= 9)
            {
              v24 = v24;
              if (v18 + 2 != v10)
              {
                v25 = *(v18 + 2);
                v26 = v25 - 48;
                v27 = v25 + 10 * v24 - 48;
                if (v26 > 9)
                {
                  v20 = v18 + 1;
                }

                else
                {
                  v24 = v27;
                  v20 = v18 + 2;
                }
              }

              v28 = &begin[v24];
              v29 = v49 > v24;
              p_unmatched = &v51.__match_.__unmatched_;
              if (v29)
              {
                p_unmatched = v28;
              }

              v31 = p_unmatched->first.__i_;
              p_second = &v28->second;
              if (!v29)
              {
                p_second = &v51.__match_.__unmatched_.second;
              }

              v33 = p_second->__i_;
              while (v31 != v33)
              {
                std::string::push_back(a1, *v31++);
              }

              goto LABEL_42;
            }
          }

          LOBYTE(v19) = 36;
        }

LABEL_41:
        std::string::push_back(a1, v19);
        v20 = v18;
LABEL_42:
        v18 = v20 + 1;
      }

      while (v20 + 1 != v10);
    }

    v9 = v51.__match_.__suffix_.first.__i_;
    v8 = v51.__match_.__suffix_.second.__i_;
    flags = v51.__flags_;
    v36 = v51.__flags_ | 0x800;
    v51.__flags_ |= 0x800u;
    v37 = v51.__match_.__matches_.__begin_;
    v38 = &v51.__match_.__unmatched_;
    if (v51.__match_.__matches_.__end_ != v51.__match_.__matches_.__begin_)
    {
      v38 = v51.__match_.__matches_.__begin_;
    }

    v39 = &v51.__match_.__matches_.__begin_->second;
    if (v51.__match_.__matches_.__end_ == v51.__match_.__matches_.__begin_)
    {
      v39 = &v51.__match_.__unmatched_.second;
    }

    v40 = v39->__i_;
    if (v38->first.__i_ == v39->__i_)
    {
      v44 = v51.__end_.__i_;
      if (v51.__end_.__i_ == v40)
      {
        goto LABEL_64;
      }

      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      memset(v52, 0, 41);
      v45 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v51.__pregex_, v40, v51.__end_.__i_, v52, flags | 0x860);
      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v51.__match_, v40, v44, v52, 1);
      if (v52[0].__begin_)
      {
        operator delete(v52[0].__begin_);
      }

      if ((v45 & 1) == 0)
      {
        v41 = (v40 + 1);
        v36 = v51.__flags_;
        goto LABEL_54;
      }
    }

    else
    {
      v41 = v39->__i_;
LABEL_54:
      v51.__flags_ = v36 | 0x80;
      v42 = v51.__end_.__i_;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      memset(v52, 0, 41);
      v43 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v51.__pregex_, v41, v51.__end_.__i_, v52, v36 | 0x80);
      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v51.__match_, v41, v42, v52, (v36 & 0x800) != 0);
      if (v52[0].__begin_)
      {
        operator delete(v52[0].__begin_);
      }

      if (v43)
      {
        v51.__match_.__prefix_.first.__i_ = v40;
        v51.__match_.__prefix_.matched = v51.__match_.__prefix_.second.__i_ != v40;
      }

      else
      {
        v37 = v51.__match_.__matches_.__begin_;
LABEL_64:
        if (v37)
        {
          operator delete(v37);
        }

        v51.__match_.__ready_ = 0;
        memset(&v51.__match_, 0, 41);
        memset(&v51.__match_.__prefix_, 0, 17);
        memset(&v51.__match_.__suffix_, 0, 17);
        v51.__match_.__position_start_.__i_ = 0;
      }
    }
  }

  while (v9 != v8)
  {
    std::string::push_back(a1, *v9++);
  }

LABEL_69:
  v46 = v51.__match_.__matches_.__begin_;
  if (v51.__match_.__matches_.__begin_)
  {

    operator delete(v46);
  }
}

void sub_1DE3E8C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

void sub_1DE3E8E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ADS::Device::AbortConfigChange(ADS::Device *this, unint64_t a2, void *a3)
{
  if (a3)
  {
    return (*(*a3 + 8))(a3);
  }

  return result;
}

void ADS::Device::PerformConfigChange(ADS::Device *this, unint64_t a2, unsigned int *a3)
{
  v120[2] = *MEMORY[0x1E69E9840];
  if (*(this + 63))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      info[0].numer = 136315394;
      *&info[0].denom = "ADS_Device.cpp";
      LOWORD(info[1].denom) = 1024;
      *(&info[1].denom + 2) = 1914;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::PerformConfigChange:: Config change is being called while IO is still running!", info, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852990585;
  }

  v5 = this;
  atomic_store(1u, this + 500);
  v6 = a3[3];
  if (v6 <= 1751740258)
  {
    if (v6 > 1650685547)
    {
      if (v6 > 1685484385)
      {
        if (v6 == 1685484386)
        {
          v7 = this + 184;
          v44 = (*(*(this + 23) + 16))(this + 184);
          atomic_store(a3[14], v5 + 214);
          v45 = atomic_load(v5 + 214);
          *(v5 + 617) = (v45 & 0x40) != 0;
          (*(*a3 + 8))(a3);
          if (!v44)
          {
            goto LABEL_147;
          }

          goto LABEL_75;
        }

        if (v6 == 1751738723)
        {
          v7 = this + 184;
          v21 = (*(*(this + 23) + 16))(this + 184);
          *(v5 + 81) = *(a3 + 7);
          (*(*a3 + 8))(a3);
          if (!v21)
          {
            goto LABEL_147;
          }

          goto LABEL_75;
        }

        goto LABEL_146;
      }

      if (v6 == 1650685548)
      {
        v36 = ADS::ObjectManager::CopyObjectByObjectID(a3[2]);
        v38 = v36;
        if (v36)
        {
          (*(*v36 + 72))(v36, a2, a3);
        }

        ADS::ObjectManager::ReleaseObject(v38, v37);
        goto LABEL_147;
      }

      if (v6 != 1685484385)
      {
        goto LABEL_146;
      }

      v11 = *(a3 + 18);
      *&info[0].numer = *(a3 + 14);
      *&info[2].numer = v11;
      v12 = *(a3 + 26);
      *&info[4].numer = *(a3 + 22);
      v115 = v12;
      ADS::Device::performDeviceAction(this, info);
    }

    else
    {
      if (v6 > 1634038356)
      {
        if (v6 == 1634038357)
        {
          v7 = this + 184;
          v39 = *(this + 23);
          info[0] = (this + 184);
          v40 = (*(v39 + 16))(this + 184);
          LOBYTE(info[1].numer) = v40;
          v41 = *(a3 + 7);
          if (v41)
          {
            CFRetain(*(a3 + 7));
            v116 = v41;
            v42 = CFGetTypeID(v41);
            if (v42 != CFStringGetTypeID())
            {
              v94 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v94, "Could not construct");
              __cxa_throw(v94, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }
          }

          v43 = *(v5 + 104);
          *(v5 + 104) = v41;
          if (v43)
          {
            CFRelease(v43);
          }

          (*(*a3 + 8))(a3);
          if (v40)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (v6 != 1634690672)
          {
            goto LABEL_146;
          }

          v18 = this + 184;
          v19 = (*(*(this + 23) + 16))(this + 184);
          OS::CF::UntypedObject::UntypedObject(info, *(a3 + 8));
          v20 = *(v5 + 76);
          *(v5 + 76) = info[1];
          info[0] = &unk_1F5991188;
          info[1] = v20;
          OS::CF::UntypedObject::~UntypedObject(info);
          (*(*a3 + 8))(a3);
          if (v19)
          {
            (*(*v18 + 24))(v5 + 184);
          }
        }

        goto LABEL_147;
      }

      if (v6 != 1633970543)
      {
        if (v6 == 1634038341)
        {
          v7 = this + 184;
          v9 = (*(*(this + 23) + 16))(this + 184);
          *(v5 + 210) = a3[14];
          (*(*a3 + 8))(a3);
          if (!v9)
          {
            goto LABEL_147;
          }

          goto LABEL_75;
        }

LABEL_146:
        ADS::BaseObject::PerformConfigChange(this, a2, a3);
        goto LABEL_147;
      }

      *(this + 80) = *(a3 + 7);
    }

    (*(*a3 + 8))(a3);
    goto LABEL_147;
  }

  if (v6 > 1853059699)
  {
    if (v6 > 1935892847)
    {
      if (v6 == 1935892848)
      {
        v7 = this + 184;
        v46 = (*(*(this + 23) + 16))(this + 184);
        *(v5 + 616) = *(a3 + 7) != 0.0;
        (*(*a3 + 8))(a3);
        if (!v46)
        {
          goto LABEL_147;
        }

        goto LABEL_75;
      }

      if (v6 != 1936092532)
      {
        if (v6 == 1937008739)
        {
          v7 = this + 184;
          v8 = (*(*(this + 23) + 16))(this + 184);
          *(v5 + 84) = *(a3 + 7);
          (*(*a3 + 8))(a3);
          if (!v8)
          {
            goto LABEL_147;
          }

LABEL_75:
          (*(*v7 + 24))(v5 + 184);
          goto LABEL_147;
        }

        goto LABEL_146;
      }

LABEL_43:
      v23 = this + 184;
      v22 = *(this + 23);
      block = this + 184;
      v24 = (*(v22 + 16))(this + 184);
      LOBYTE(v108) = v24;
      memset(info, 0, 24);
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(info, *(v5 + 53), *(v5 + 54), (*(v5 + 54) - *(v5 + 53)) >> 2);
      memset(&info[3], 0, 24);
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&info[3], *(v5 + 56), *(v5 + 57), (*(v5 + 57) - *(v5 + 56)) >> 2);
      for (i = 0; i != 6; i += 3)
      {
        v116 = 0;
        v117 = 0;
        v118 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v116, *&info[i], *&info[i + 1], (*&info[i + 1] - *&info[i]) >> 2);
        v26 = v116;
        v27 = v117;
        for (j = v116; j != v27; ++j)
        {
          v29 = *j;
          if (v29 == a3[2])
          {
            v30 = ADS::ObjectManager::CopyObjectByObjectID(v29);
            (*(*v30 + 72))(v30, a2, a3);
            *(this + 90) = *(v30 + 15);
            ADS::ObjectManager::ReleaseObject(v30, v31);
          }
        }

        if (v26)
        {
          operator delete(v26);
        }
      }

      v32 = 0;
      v5 = this;
      do
      {
        v33 = info[v32 + 3];
        if (v33)
        {
          info[v32 + 4] = v33;
          operator delete(v33);
        }

        v32 -= 3;
      }

      while (v32 != -6);
      if (v24)
      {
        (*(*v23 + 24))(v23);
      }

      goto LABEL_147;
    }

    if (v6 != 1853059700)
    {
      if (v6 != 1885762592)
      {
        goto LABEL_146;
      }

      goto LABEL_43;
    }

    v47 = *(a3 + 7);
    (*(*a3 + 8))(a3);
    if (!ADS::Device::isSupportedSampleRate(v5, v47))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        info[0].numer = 136315394;
        *&info[0].denom = "ADS_Device.cpp";
        LOWORD(info[1].denom) = 1024;
        *(&info[1].denom + 2) = 1933;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::PerformConfigChange: unsupported sample rate", info, 0x12u);
      }

      v92 = __cxa_allocate_exception(0x10uLL);
      *v92 = off_1F5991DD8;
      v92[2] = 560226676;
    }

    v48 = *(v5 + 23);
    v105 = v5 + 184;
    v95 = v5 + 184;
    v49 = (*(v48 + 16))();
    v106 = v49;
    *(v5 + 90) = v47;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v116, *(v5 + 53), *(v5 + 54), (*(v5 + 54) - *(v5 + 53)) >> 2);
    v96 = v49;
    v119 = 0;
    v120[0] = 0;
    v120[1] = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v119, *(v5 + 56), *(v5 + 57), (*(v5 + 57) - *(v5 + 56)) >> 2);
    v50 = 0;
LABEL_78:
    v97 = v50;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v102, *(&v116 + v50), *(&v116 + v50 + 8), *(&v116 + v50 + 8) - *(&v116 + v50));
    v51 = v102;
    v52 = v103;
    v98 = v103;
    if (v102 == v103)
    {
      goto LABEL_137;
    }

    while (1)
    {
      v53 = ADS::ObjectManager::CopyObjectByObjectID(*v51);
      v54 = v53;
      if (*(v53 + 20) != *(v5 + 2))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          info[0].numer = 136315394;
          *&info[0].denom = "ADS_Stream.cpp";
          LOWORD(info[1].denom) = 1024;
          *(&info[1].denom + 2) = 361;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Stream::UpdateSampleRate: This function is only to be called by a stream's owning device.", info, 0x12u);
        }

        v89 = __cxa_allocate_exception(0x10uLL);
        *v89 = off_1F5991DD8;
        v89[2] = 1970171760;
      }

      v56 = v53 + 200;
      v55 = *(v53 + 200);
      v112 = v53 + 200;
      v57 = (*(v55 + 16))(v53 + 200);
      v113 = v57;
      if (*(v54 + 120) == v47)
      {
        if (!v57)
        {
          goto LABEL_135;
        }
      }

      else
      {
        v99 = v51;
        v100 = (v54 + 120);
        v61 = *(v54 + 168);
        if (v61 == (v54 + 176))
        {
          goto LABEL_165;
        }

        v62 = 0;
        v63 = 0;
        v64 = 0;
        do
        {
          if (*(v61 + 9) <= v47 && *(v61 + 10) >= v47)
          {
            v66 = &v63[-v62];
            v67 = 0x6DB6DB6DB6DB6DB7 * (&v63[-v62] >> 3) + 1;
            if (v67 > 0x492492492492492)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            if (0xDB6DB6DB6DB6DB6ELL * (-v62 >> 3) > v67)
            {
              v67 = 0xDB6DB6DB6DB6DB6ELL * (-v62 >> 3);
            }

            if ((0x6DB6DB6DB6DB6DB7 * (-v62 >> 3)) >= 0x249249249249249)
            {
              v68 = 0x492492492492492;
            }

            else
            {
              v68 = v67;
            }

            if (v68)
            {
              std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v68);
            }

            v69 = 8 * (&v63[-v62] >> 3);
            v70 = *(v61 + 2);
            v71 = *(v61 + 3);
            *(v69 + 32) = v61[8];
            *v69 = v70;
            *(v69 + 16) = v71;
            *(v69 + 40) = *(v61 + 9);
            if (v62 != v63)
            {
              v72 = v62;
              v73 = v69 + 56 * (v66 / -56);
              do
              {
                v74 = *v72;
                v75 = *(v72 + 16);
                *(v73 + 32) = *(v72 + 32);
                *v73 = v74;
                *(v73 + 16) = v75;
                *(v73 + 40) = *(v72 + 40);
                v72 += 56;
                v73 += 56;
              }

              while (v72 != v63);
            }

            if (v62)
            {
              operator delete(v62);
            }

            v62 = v69 + 56 * (v66 / -56);
            v63 = (v69 + 56);
            v64 = (v69 + 56);
          }

          v76 = v61[1];
          if (v76)
          {
            do
            {
              v77 = v76;
              v76 = *v76;
            }

            while (v76);
          }

          else
          {
            do
            {
              v77 = v61[2];
              v78 = *v77 == v61;
              v61 = v77;
            }

            while (!v78);
          }

          v61 = v77;
        }

        while (v77 != (v54 + 176));
        if (v62 == v64)
        {
LABEL_165:
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            info[0].numer = 136315394;
            *&info[0].denom = "ADS_Stream.cpp";
            LOWORD(info[1].denom) = 1024;
            *(&info[1].denom + 2) = 381;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Stream::UpdateSampleRate: Sample rate not supported by this stream", info, 0x12u);
          }

          v90 = __cxa_allocate_exception(0x10uLL);
          *v90 = off_1F5991DD8;
          v90[2] = 560226676;
        }

        v79 = *(v54 + 128);
        info[0] = *&v47;
        *&info[1].denom = *(v54 + 132);
        *&info[3].numer = *(v54 + 144);
        info[1].numer = v79;
        info[5].numer = 2;
        v80 = v62;
        while (!CA::StreamDescription::IsEquivalent(info, v80, 2u, v59, v60) || *(v80 + 40) > v47 || *(v80 + 48) < v47)
        {
          v80 += 56;
          if (v80 == v64)
          {
            v80 = v64;
            break;
          }
        }

        if (v80 == v63)
        {
          v82 = v62;
          if (v62 != v63)
          {
            v82 = v62;
            while (*(v82 + 8) != v79)
            {
              v82 += 56;
              if (v82 == v63)
              {
                v82 = v63;
                break;
              }
            }
          }

          if (v82 == v63)
          {
            v80 = v62;
          }

          else
          {
            v80 = v82;
          }
        }

        v84 = *v80;
        v83 = *(v80 + 16);
        *(v54 + 152) = *(v80 + 32);
        *v100 = v84;
        *(v54 + 136) = v83;
        *v100 = v47;
        pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
        block = MEMORY[0x1E69E9820];
        v108 = 0x40000000;
        v52 = v98;
        v109 = ___ZN3ADS6Stream16UpdateSampleRateEjd_block_invoke;
        v110 = &__block_descriptor_tmp_3_5418;
        v111 = v54;
        v5 = this;
        v51 = v99;
        if (ADS::Simulator::sServerDefaultPriorityQueue)
        {
          AMCP::Utility::Dispatch_Queue::async(ADS::Simulator::sServerDefaultPriorityQueue, &block);
        }

        if (v62)
        {
          operator delete(v62);
        }

        if ((v113 & 1) == 0)
        {
          goto LABEL_135;
        }

        v56 = v112;
      }

      (*(*v56 + 24))(v56);
LABEL_135:
      ADS::ObjectManager::ReleaseObject(v54, v58);
      if (++v51 == v52)
      {
        v51 = v102;
LABEL_137:
        if (v51)
        {
          operator delete(v51);
        }

        v50 = v97 + 24;
        if (v97 == 24)
        {
          for (k = 0; k != -6; k -= 3)
          {
            v86 = v120[k - 1];
            if (v86)
            {
              v120[k] = v86;
              operator delete(v86);
            }
          }

          mach_timebase_info(info);
          LODWORD(v88) = info[0].numer;
          LODWORD(v87) = info[0].denom;
          *(v5 + 68) = v87 / v88 * 1000000000.0 / *(v5 + 90);
          if (v96)
          {
            (*(*v95 + 24))(v95);
          }

          goto LABEL_147;
        }

        goto LABEL_78;
      }
    }
  }

  if (v6 <= 1752525154)
  {
    if (v6 == 1751740259)
    {
      v7 = this + 184;
      v34 = (*(*(this + 23) + 16))(this + 184);
      *(v5 + 79) = *(a3 + 7);
      (*(*a3 + 8))(a3);
      if (!v34)
      {
        goto LABEL_147;
      }

      goto LABEL_75;
    }

    if (v6 == 1752197475)
    {
      v7 = this + 184;
      v10 = (*(*(this + 23) + 16))(this + 184);
      *(v5 + 82) = *(a3 + 7);
      (*(*a3 + 8))(a3);
      if (!v10)
      {
        goto LABEL_147;
      }

      goto LABEL_75;
    }

    goto LABEL_146;
  }

  if (v6 == 1752525155)
  {
    v7 = this + 184;
    v35 = (*(*(this + 23) + 16))(this + 184);
    *(v5 + 83) = *(a3 + 7);
    (*(*a3 + 8))(a3);
    if (!v35)
    {
      goto LABEL_147;
    }

    goto LABEL_75;
  }

  if (v6 != 1768515184)
  {
    goto LABEL_146;
  }

  v7 = this + 184;
  v13 = *(this + 23);
  info[0] = (this + 184);
  v14 = (*(v13 + 16))(this + 184);
  LOBYTE(info[1].numer) = v14;
  v15 = *(a3 + 7);
  if (v15)
  {
    CFRetain(*(a3 + 7));
    v116 = v15;
    v16 = CFGetTypeID(v15);
    if (v16 != CFStringGetTypeID())
    {
      v93 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v93, "Could not construct");
      __cxa_throw(v93, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v17 = *(v5 + 85);
  *(v5 + 85) = v15;
  if (v17)
  {
    CFRelease(v17);
  }

  CAExtAudioFile::Close((v5 + 688));
  (*(*a3 + 8))(a3);
  if (v14)
  {
    goto LABEL_75;
  }

LABEL_147:
  atomic_store(0, v5 + 500);
}

void sub_1DE3EA27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, void *__p, uint64_t a32)
{
  __cxa_free_exception(v32);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v33 - 160));
  CADeprecated::CAMutex::Locker::~Locker(&__p);
  atomic_store(0, (a18 + 500));
  _Unwind_Resume(a1);
}

BOOL ADS::Device::isSupportedSampleRate(ADS::Device *this, double a2)
{
  v2 = *(this + 50);
  v3 = this + 408;
  if (v2 != this + 408)
  {
    while (*(v2 + 4) > a2 || *(v2 + 5) < a2)
    {
      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
      if (v6 == v3)
      {
        v2 = this + 408;
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void ADS::Device::performDeviceAction(unsigned int *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1 + 46;
  v4 = *(a1 + 23);
  v28 = a1 + 46;
  v6 = (*(v4 + 16))(a1 + 46);
  v29 = v6;
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  *(v5 + 170) = *a2;
  *(v5 + 182) = v8;
  *(v5 + 178) = v7;
  *(v5 + 174) = v9;
  v10 = v5[170];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
      v13 = ADS::Simulator::sInstance;
      v14 = ADS::Simulator::sInstance + 120;
      v15 = (*(*(ADS::Simulator::sInstance + 120) + 16))(ADS::Simulator::sInstance + 120);
      *(v13 + 280) = 1;
      if (v15)
      {
        (*(*v14 + 24))(v14);
      }

      buf[9] = 0;
      *&buf[10] = 0;
      strcpy(buf, "#vedbolg");
      if (ADS::Simulator::sHost)
      {
        v16 = a1[5];
        v17 = *ADS::Simulator::sHost;
        pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
        v17(ADS::Simulator::sHost, v16, 1, buf);
      }
    }

    else if (v10 == 4)
    {
      buf[9] = 0;
      *&buf[10] = 0;
      strcpy(buf, "rOsdtpni");
      *(a1 + 936) ^= 1u;
      if (ADS::Simulator::sHost)
      {
        v11 = a1[2];
        v12 = *ADS::Simulator::sHost;
        pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
        v12(ADS::Simulator::sHost, v11, 1, buf);
      }
    }
  }

  else
  {
    if (v10 == 1)
    {
      if (ADS::Device::isSupportedSampleRate(a1, *(a2 + 8)))
      {
        operator new();
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3974;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::PerformConfigChange via DeviceAction: unsupported sample rate", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    if (v10 == 2)
    {
      if (*(a2 + 16))
      {
        if ((*(*a1 + 32))(a1, a1[2], 0))
        {
          LODWORD(v27.__r_.__value_.__l.__data_) = 0;
          memset(buf, 0, 24);
          (*(*a1 + 64))(a1, a1[2], 0, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), &v27, buf, 1);
          if (LODWORD(v27.__r_.__value_.__l.__data_))
          {
            pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 1174405120;
            block[2] = ___ZN3ADS6Device19performDeviceActionERK20FakeDeviceActionData_block_invoke;
            block[3] = &__block_descriptor_tmp_267;
            data = v27.__r_.__value_.__l.__data_;
            block[4] = a1;
            __p = 0;
            v24 = 0;
            v25 = 0;
            std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(&__p, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 2));
            if (ADS::Simulator::sServerHighPriorityQueue)
            {
              AMCP::Utility::Dispatch_Queue::async(ADS::Simulator::sServerHighPriorityQueue, block);
            }

            if (__p)
            {
              v24 = __p;
              operator delete(__p);
            }
          }

          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          goto LABEL_23;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          caulk::string_from_4cc(&v27, **(a2 + 16));
          v20 = (v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v27 : v27.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3984;
          *&buf[18] = 2080;
          *&buf[20] = v20;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::SetPropertyData via privileged DeviceAction: device does not have property %s", buf, 0x1Cu);
          if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__r_.__value_.__l.__data_);
          }
        }

        v18 = 2003332927;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3983;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::SetPropertyData via privileged DeviceAction: device action property address was NULL", buf, 0x12u);
        }

        v18 = 1852797029;
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      *v21 = off_1F5991DD8;
      v21[2] = v18;
    }
  }

LABEL_23:
  if (v6)
  {
    (*(*v5 + 24))(v5);
  }
}

void sub_1DE3EABBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OpaqueExtAudioFile *CAExtAudioFile::Close(CAExtAudioFile *this)
{
  result = *(this + 1);
  if (result)
  {
    *(this + 1) = 0;
    v3 = ExtAudioFileDispose(result);
    v4 = *(*this + 16);

    return v4(this, v3, "ExtAudioFileClose");
  }

  return result;
}

uint64_t ADS::ChangeInfoData<double>::ChangeInfoData(uint64_t a1, int a2, uint64_t a3, int a4, double a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  *a1 = &unk_1F596D6F8;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 20) = a4;
  std::__function::__value_func<int ()(void)>::__value_func[abi:ne200100](a1 + 24, v8);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](v8);
  *a1 = &unk_1F596CBD0;
  *(a1 + 56) = a5;
  return a1;
}

void sub_1DE3EAD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3ADS6Device19performDeviceActionERK20FakeDeviceActionData_block_invoke(uint64_t result)
{
  if (ADS::Simulator::sHost)
  {
    v1 = *(result + 40);
    v2 = *(*(result + 32) + 8);
    v3 = *(result + 64);
    v4 = *ADS::Simulator::sHost;
    pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
    return v4(ADS::Simulator::sHost, v2, v3, v1);
  }

  return result;
}

void sub_1DE3EADF8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void __destroy_helper_block_e8_40c68_ZTSNSt3__16vectorI26AudioObjectPropertyAddressNS_9allocatorIS1_EEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t *__copy_helper_block_e8_40c68_ZTSNSt3__16vectorI26AudioObjectPropertyAddressNS_9allocatorIS1_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = (a1 + 40);
  v2[2] = 0;
  return std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(v2, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 2));
}

void ADS::ChangeInfoData<double>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<double>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void ADS::Device::SetPropertyData(uint64_t a1, ADS::ObjectManager *this, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, _DWORD *a9, uint64_t a10, char a11)
{
  v15 = this;
  v113 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) != this)
  {
    v23 = ADS::ObjectManager::CopyObjectByObjectID(this);
    v24 = v23;
    if (!v23)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2192;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::GetPropertyData: unknown device", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560947818;
    }

    (*(*v23 + 64))(v23, v15, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    ADS::ObjectManager::ReleaseObject(v24, v25);
    return;
  }

  v17 = *a4;
  if (*a4 <= 1751738722)
  {
    if (v17 <= 1685278560)
    {
      if (v17 <= 1634038356)
      {
        if (v17 == 1633970543)
        {
          if (a7 != 8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3615;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioFakeDevicePropertyStartIOCallback", buf, 0x12u);
            }

            v84 = __cxa_allocate_exception(0x10uLL);
            *v84 = off_1F5991DD8;
            v84[2] = 561211770;
          }

          v18 = *a8;
          if (!*(a1 + 504))
          {
            *(a1 + 640) = v18;
            *a9 = 1;
            strcpy(buf, "oidabolg");
            buf[9] = 0;
            *&buf[10] = 0;
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
            return;
          }

          pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          v19 = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_253;
          v20 = &__block_descriptor_tmp_254;
          goto LABEL_111;
        }

        if (v17 != 1634038341)
        {
          goto LABEL_125;
        }

        if ((a11 & 1) == 0)
        {
          v72 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v72 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(a1);
          }

          v74 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v73 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
            v75 = *v74;
            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
          }

          else
          {
            v75 = *v74;
          }

          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3747;
            *&buf[18] = 2080;
            *&buf[20] = "policy != SettabilityPolicy::IgnoreSettability";
            _os_log_error_impl(&dword_1DE1F9000, v75, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Setting priveleged property failed", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v107);
          __cxa_allocate_exception(0x40uLL);
          std::runtime_error::runtime_error(&v100, "Setting priveleged property failed");
          std::runtime_error::runtime_error(&cf, &v100);
          v103 = 0;
          v104 = 0;
          v105 = 0;
          v106 = -1;
          cf.__vftable = &unk_1F5992170;
          v102 = &unk_1F5992198;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &cf);
          v110 = "void ADS::Device::Device_SetPropertyData(AudioObjectID, pid_t, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, UInt32 &, std::vector<AudioObjectPropertyAddress> &, SettabilityPolicy)";
          v111 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/ADS/AudioObjects/ADS_Device.cpp";
          v112 = 3747;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v98);
        }

        v26 = *a8;
        pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        v27 = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_265;
        v28 = &__block_descriptor_tmp_266;
LABEL_56:
        *&buf[16] = v27;
        *&buf[24] = v28;
        v110 = __PAIR64__(v26, v15);
        goto LABEL_112;
      }

      if (v17 != 1634038357)
      {
        if (v17 == 1634690672)
        {
          if (*(a1 + 12) == 1633905771)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3369;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: clock devices do not have streams (kAudioFakeDevicePropertyAudioOutFilePath)", buf, 0x12u);
            }

            v80 = __cxa_allocate_exception(0x10uLL);
            *v80 = off_1F5991DD8;
            v80[2] = 1970171760;
          }

          if (a7 != 8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3370;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioFakeDevicePropertyAudioOutFilePath", buf, 0x12u);
            }

            v91 = __cxa_allocate_exception(0x10uLL);
            *v91 = off_1F5991DD8;
            v91[2] = 561211770;
          }

          v30 = *a8;
          if (*a8)
          {
            CFRetain(*a8);
          }

          cf.__vftable = &unk_1F5991188;
          cf.__imp_.__imp_ = v30;
          OS::CF::String::AsStdString(buf, &cf);
          if (buf[23] >= 0)
          {
            v31 = buf;
          }

          else
          {
            v31 = *buf;
          }

          v32 = access(v31, 2);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (v32)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3373;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: cannot write to the requested path.", buf, 0x12u);
            }

            v94 = __cxa_allocate_exception(0x10uLL);
            *v94 = off_1F5991DD8;
            v94[2] = 560492391;
          }

          if (*(a1 + 504))
          {
            v33 = *(a1 + 8);
            pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 1174405120;
            *&buf[16] = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke;
            *&buf[24] = &__block_descriptor_tmp_5000;
            v112 = v33;
            OS::CF::UntypedObject::UntypedObject(&v110, cf.__imp_.__imp_);
            v110 = &unk_1F5991188;
            if (ADS::Simulator::sServerDefaultPriorityQueue)
            {
              AMCP::Utility::Dispatch_Queue::async(ADS::Simulator::sServerDefaultPriorityQueue, buf);
            }

            OS::CF::UntypedObject::~UntypedObject(&v110);
          }

          else
          {
            OS::CF::String::operator=(a1 + 600, cf.__imp_.__imp_);
            *a9 = 1;
            strcpy(buf, "pfoabolg");
            buf[9] = 0;
            *&buf[10] = 0;
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
          }

          OS::CF::UntypedObject::~UntypedObject(&cf);
        }

        else
        {
          if (v17 != 1685087596)
          {
            goto LABEL_125;
          }

          if (a7 != 4)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3470;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioDevicePropertyEnableListening", buf, 0x12u);
            }

            v79 = __cxa_allocate_exception(0x10uLL);
            *v79 = off_1F5991DD8;
            v79[2] = 561211770;
          }

          if (*(a1 + 712) != *a8)
          {
            *(a1 + 712) = *a8;
            *a9 = 1;
            strcpy(buf, "lepdbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
          }
        }

        return;
      }

      if ((a11 & 1) == 0)
      {
        v68 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v68 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(a1);
        }

        v70 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v69 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v69)
        {
          atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
          v71 = *v70;
          std::__shared_weak_count::__release_shared[abi:ne200100](v69);
        }

        else
        {
          v71 = *v70;
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3732;
          *&buf[18] = 2080;
          *&buf[20] = "policy != SettabilityPolicy::IgnoreSettability";
          _os_log_error_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Setting priveleged property failed", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v107);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v100, "Setting priveleged property failed");
        std::runtime_error::runtime_error(&cf, &v100);
        v103 = 0;
        v104 = 0;
        v105 = 0;
        v106 = -1;
        cf.__vftable = &unk_1F5992170;
        v102 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &cf);
        v110 = "void ADS::Device::Device_SetPropertyData(AudioObjectID, pid_t, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, UInt32 &, std::vector<AudioObjectPropertyAddress> &, SettabilityPolicy)";
        v111 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/ADS/AudioObjects/ADS_Device.cpp";
        v112 = 3732;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v98);
      }

      v34 = *a8;
      if (*a8)
      {
        CFRetain(*a8);
        cf.__vftable = v34;
        v35 = CFGetTypeID(v34);
        if (v35 != CFStringGetTypeID())
        {
          v95 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v95, "Could not construct");
          __cxa_throw(v95, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        LODWORD(v15) = *(a1 + 8);
      }

      else
      {
        cf.__vftable = 0;
      }

      pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 1174405120;
      *&buf[16] = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_263;
      *&buf[24] = &__block_descriptor_tmp_264;
      LODWORD(v111) = v15;
      v67 = cf.__vftable;
      if (cf.__vftable)
      {
        CFRetain(cf.__vftable);
      }

      v110 = cf.__vftable;
      if (ADS::Simulator::sServerDefaultPriorityQueue)
      {
        AMCP::Utility::Dispatch_Queue::async(ADS::Simulator::sServerDefaultPriorityQueue, buf);
        v67 = v110;
      }

      if (v67)
      {
        CFRelease(v67);
      }

      v63 = cf.__vftable;
      if (!cf.__vftable)
      {
        return;
      }
    }

    else
    {
      if (v17 > 1702248803)
      {
        if (v17 == 1702248804)
        {
          *(a1 + 848) = *a8 != 0;
          *a9 = 1;
          strcpy(buf, "dAvebolg");
          buf[9] = 0;
          *&buf[10] = 0;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
          return;
        }

        if (v17 == 1702392685)
        {
          *(a1 + 844) = *a8 != 0;
          *a9 = 1;
          strcpy(buf, "msxebolg");
          buf[9] = 0;
          *&buf[10] = 0;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
          return;
        }

        if (v17 != 1751737454)
        {
          goto LABEL_125;
        }

        if (a11)
        {
          *(a1 + 554) = *a8 != 0;
          *a9 = 1;
          strcpy(buf, "ndihbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
        }

        return;
      }

      if (v17 != 1685278561)
      {
        if (v17 == 1685484385)
        {
          if (a7 != 64)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3513;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioFakeDevicePropertyTriggerAction", buf, 0x12u);
            }

            v89 = __cxa_allocate_exception(0x10uLL);
            *v89 = off_1F5991DD8;
            v89[2] = 561211770;
          }

          v53 = *(a8 + 1);
          v108[0] = *a8;
          v108[1] = v53;
          v54 = *(a8 + 3);
          v108[2] = *(a8 + 2);
          v108[3] = v54;
          if (*(a1 + 504) || LODWORD(v108[0]) <= 4 && ((1 << SLOBYTE(v108[0])) & 0x1A) != 0)
          {
            operator new();
          }

          ADS::Device::performDeviceAction(a1, v108);
          *a9 = 1;
          strcpy(buf, "asvdbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
        }

        else
        {
          if (v17 != 1685484386)
          {
            goto LABEL_125;
          }

          if (a7 != 4)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3485;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioFakeDevicePropertySelectBehavior", buf, 0x12u);
            }

            v90 = __cxa_allocate_exception(0x10uLL);
            *v90 = off_1F5991DD8;
            v90[2] = 561211770;
          }

          if (*(a1 + 504))
          {
            operator new();
          }

          atomic_store(*a8, (a1 + 856));
          v66 = atomic_load((a1 + 856));
          *(a1 + 617) = (v66 & 0x40) != 0;
          *a9 = 1;
          strcpy(buf, "bsvdbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
        }

        return;
      }

      v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v55 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3762;
        _os_log_debug_impl(&dword_1DE1F9000, v58, OS_LOG_TYPE_DEBUG, "%32s:%-5d kAudioDevicePropertyDSPOffloadAvailable assigned on ADS device.", buf, 0x12u);
      }

      v59 = *(a1 + 944);
      *(a1 + 944) = 0;
      if (v59)
      {
        CFRelease(v59);
      }

      if (!a8)
      {
        return;
      }

      v60 = PropertyListDeepImmutableCopy(*a8);
      v61 = v60;
      *buf = v60;
      if (v60)
      {
        v62 = CFGetTypeID(v60);
        if (v62 != CFDictionaryGetTypeID())
        {
          v96 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v96, "Could not construct");
          __cxa_throw(v96, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      v63 = *(a1 + 944);
      *(a1 + 944) = v61;
      *buf = v63;
      if (!v63)
      {
        return;
      }
    }

    CFRelease(v63);
    return;
  }

  if (v17 <= 1819173228)
  {
    if (v17 > 1752525154)
    {
      if (v17 != 1752525155)
      {
        if (v17 == 1768515184)
        {
          if (a7 != 8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3704;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioFakeDevicePropertyInputInjectionFilePath", buf, 0x12u);
            }

            v83 = __cxa_allocate_exception(0x10uLL);
            *v83 = off_1F5991DD8;
            v83[2] = 561211770;
          }

          v42 = *a8;
          if (!*(a1 + 504))
          {
            applesauce::CF::details::Retain<__CFString const*>(*a8);
            v64 = applesauce::CF::StringRef::StringRef(buf, v42);
            v65 = *(a1 + 680);
            *(a1 + 680) = *buf;
            *buf = v65;
            applesauce::CF::StringRef::~StringRef(v64);
            CAExtAudioFile::Close((a1 + 688));
            *a9 = 1;
            strcpy(buf, "pfiibolg");
            buf[9] = 0;
            *&buf[10] = 0;
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
            return;
          }

          pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_259;
          *&buf[24] = &__block_descriptor_tmp_260;
          LODWORD(v111) = v15;
          v110 = v42;
          goto LABEL_112;
        }

        if (v17 == 1769302372)
        {
          *(a1 + 932) = *a8;
          return;
        }

        goto LABEL_125;
      }

      if (a7 != 8)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3588;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for AudioFakeDeviceTeardownForIsolatedIOCallback", buf, 0x12u);
        }

        v87 = __cxa_allocate_exception(0x10uLL);
        *v87 = off_1F5991DD8;
        v87[2] = 561211770;
      }

      v18 = *a8;
      if (!*(a1 + 504))
      {
        *(a1 + 664) = v18;
        *a9 = 1;
        strcpy(buf, "ciuhbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
        return;
      }

      pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      v19 = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_251;
      v20 = &__block_descriptor_tmp_252;
    }

    else
    {
      switch(v17)
      {
        case 1751738723:
          if (a7 != 8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3534;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioFakeDevicePropertyHardwareIsolatedIOCallback", buf, 0x12u);
            }

            v85 = __cxa_allocate_exception(0x10uLL);
            *v85 = off_1F5991DD8;
            v85[2] = 561211770;
          }

          v18 = *a8;
          if (!*(a1 + 504))
          {
            *(a1 + 648) = v18;
            *a9 = 1;
            strcpy(buf, "ciihbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
            return;
          }

          pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          v19 = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_247;
          v20 = &__block_descriptor_tmp_248;
          break;
        case 1751740259:
          if (a7 != 8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3671;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioFakeDevicePropertyHardwareIOCallback", buf, 0x12u);
            }

            v81 = __cxa_allocate_exception(0x10uLL);
            *v81 = off_1F5991DD8;
            v81[2] = 561211770;
          }

          v18 = *a8;
          if (!*(a1 + 504))
          {
            *(a1 + 632) = v18;
            *a9 = 1;
            strcpy(buf, "coihbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
            return;
          }

          pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          v19 = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_257;
          v20 = &__block_descriptor_tmp_258;
          break;
        case 1752197475:
          if (a7 != 8)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ADS_Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 3561;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for AudioFakeDeviceSetupForIsolatedIOCallback", buf, 0x12u);
            }

            v77 = __cxa_allocate_exception(0x10uLL);
            *v77 = off_1F5991DD8;
            v77[2] = 561211770;
          }

          v18 = *a8;
          if (!*(a1 + 504))
          {
            *(a1 + 656) = v18;
            *a9 = 1;
            strcpy(buf, "ciphbolg");
            buf[9] = 0;
            *&buf[10] = 0;
            std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
            return;
          }

          pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          v19 = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_249;
          v20 = &__block_descriptor_tmp_250;
          break;
        default:
LABEL_125:
          ADS::BaseObject::SetPropertyData(a1, this, a3, a4, a5, a6, a7, a8, a9, a10, a11);
          return;
      }
    }

LABEL_111:
    *&buf[16] = v19;
    *&buf[24] = v20;
    LODWORD(v111) = v15;
    v110 = v18;
LABEL_112:
    if (ADS::Simulator::sServerDefaultPriorityQueue)
    {
      AMCP::Utility::Dispatch_Queue::async(ADS::Simulator::sServerDefaultPriorityQueue, buf);
    }

    return;
  }

  if (v17 > 1937008738)
  {
    switch(v17)
    {
      case 1937008739:
        if (a7 != 8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3644;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioFakeDevicePropertyIOThreadStateChangeCallback", buf, 0x12u);
          }

          v88 = __cxa_allocate_exception(0x10uLL);
          *v88 = off_1F5991DD8;
          v88[2] = 561211770;
        }

        v18 = *a8;
        if (!*(a1 + 504))
        {
          *(a1 + 672) = v18;
          *a9 = 1;
          strcpy(buf, "chtsbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
          return;
        }

        pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        v19 = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_255;
        v20 = &__block_descriptor_tmp_256;
        goto LABEL_111;
      case 1987013732:
        ADS::BaseObject::SetPropertyData(a1, this, a3, a4, a5, a6, a7, a8, a9, a10, a11);
        ADS::Device::getControlsWithScope(buf, *(a1 + 472), *(a1 + 480), *(a4 + 1));
        v43 = *(a4 + 1);
        LODWORD(cf.__vftable) = 1818456950;
        HIDWORD(cf.__vftable) = v43;
        LODWORD(cf.__imp_.__imp_) = 0;
        v99[0] = 1818453110;
        v99[1] = v43;
        v99[2] = 0;
        v45 = *buf;
        v44 = *&buf[8];
        if (*buf != *&buf[8])
        {
          v46 = a1 + 852;
          v47 = *buf;
          do
          {
            v48 = ADS::ObjectManager::CopyObjectByObjectID(*v47);
            v50 = v48;
            if (v48 && (*(*v48 + 32))(v48, v15, a3, &cf))
            {
              LOBYTE(v97) = 0;
              (*(*v50 + 64))(v50, v15, a3, v99, 0, 0, 4, a8, a9, a10, v97);
              LODWORD(v98) = 0;
              (*(*v50 + 56))(v50, v15, a3, &cf, 0, 0, 4, &v98, v46);
            }

            ADS::ObjectManager::ReleaseObject(v50, v49);
            ++v47;
          }

          while (v47 != v44);
        }

        if (v45)
        {
          operator delete(v45);
        }

        break;
      case 1987013741:
        ADS::BaseObject::SetPropertyData(a1, this, a3, a4, a5, a6, a7, a8, a9, a10, a11);
        v29 = 0.0;
        if (*a8 != 0.0)
        {
          v29 = 1.0;
        }

        *(a1 + 852) = v29;
        break;
      default:
        goto LABEL_125;
    }
  }

  else
  {
    switch(v17)
    {
      case 1819173229:
        if (a7 != 8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3359;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioObjectPropertyName", buf, 0x12u);
          }

          v86 = __cxa_allocate_exception(0x10uLL);
          *v86 = off_1F5991DD8;
          v86[2] = 561211770;
        }

        v51 = *a8;
        if (*a8)
        {
          CFRetain(*a8);
        }

        v52 = *(a1 + 128);
        *(a1 + 128) = v51;
        *buf = &unk_1F5991188;
        *&buf[8] = v52;
        OS::CF::UntypedObject::~UntypedObject(buf);
        *a9 = 1;
        strcpy(buf, "manlbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
        break;
      case 1853059700:
        if (a7 != 8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3428;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
          }

          v82 = __cxa_allocate_exception(0x10uLL);
          *v82 = off_1F5991DD8;
          v82[2] = 561211770;
        }

        v36 = *a8;
        v38 = a1 + 184;
        v37 = *(a1 + 184);
        cf.__vftable = (a1 + 184);
        v39 = (*(v37 + 16))(a1 + 184);
        LOBYTE(cf.__imp_.__imp_) = v39;
        if (!ADS::Device::isSupportedSampleRate(a1, v36))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3436;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::setSampleRate: unsupported value for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
          }

          v92 = __cxa_allocate_exception(0x10uLL);
          *v92 = off_1F5991DD8;
          v92[2] = 560226676;
        }

        v40 = *(a1 + 720);
        if (v39)
        {
          (*(*v38 + 24))(a1 + 184);
        }

        if (v36 != v40)
        {
          v41 = *(a1 + 8);
          pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_245;
          *&buf[24] = &__block_descriptor_tmp_246;
          LODWORD(v111) = v41;
          v110 = *&v36;
          goto LABEL_112;
        }

        break;
      case 1935892848:
        if (*(a1 + 12) == 1633905771)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3397;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: clock devices do not have streams (kAudioFakeDevicePropertyStreamCaptureEnabled)", buf, 0x12u);
          }

          v78 = __cxa_allocate_exception(0x10uLL);
          *v78 = off_1F5991DD8;
          v78[2] = 1970171760;
        }

        if (a7 != 4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 3398;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::Device_SetPropertyData: wrong size for the data for kAudioFakeDevicePropertyStreamCaptureEnabled", buf, 0x12u);
          }

          v93 = __cxa_allocate_exception(0x10uLL);
          *v93 = off_1F5991DD8;
          v93[2] = 561211770;
        }

        v26 = *a8;
        if (!*(a1 + 504))
        {
          *(a1 + 616) = v26 != 0;
          *a9 = 1;
          strcpy(buf, "pacsbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, buf);
          return;
        }

        pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        v27 = ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_243;
        v28 = &__block_descriptor_tmp_244;
        goto LABEL_56;
      default:
        goto LABEL_125;
    }
  }
}

void sub_1DE3ED4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, std::runtime_error a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    __cxa_free_exception(v32);
    applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef((v33 - 192));
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3EB0BCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OS::CF::String::operator=(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_1DE3ED830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a2)
  {
    std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
    OS::CF::UntypedObject::~UntypedObject(&a10);
    MEMORY[0x1E12C1730](v11, 0x10E1C40BFE29AC7);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3ED800);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_243(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "ADS_Device.cpp";
    v3 = 1024;
    v4 = 3414;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device_SetPropertyData: sending the request to the host to enable stream capture.", &v1, 0x12u);
  }

  operator new();
}

void sub_1DE3ED98C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    MEMORY[0x1E12C1730](v2, 0x10A1C40E7D7FC54);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3ED960);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3EDA3C(void *a1)
{
  MEMORY[0x1E12C1730](v1, 0x10A1C40E7D7FC54);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_247(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "ADS_Device.cpp";
    v3 = 1024;
    v4 = 3550;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device_SetPropertyData: sending the request to the host to enable stream capture.", &v1, 0x12u);
  }

  operator new();
}

void sub_1DE3EDBE4(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
    MEMORY[0x1E12C1730](v2, 0x10A1C40E4F7B131);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3EDBB4);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_249(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "ADS_Device.cpp";
    v3 = 1024;
    v4 = 3577;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device_SetPropertyData: sending the request to the host to enable stream capture.", &v1, 0x12u);
  }

  operator new();
}

void sub_1DE3EDD94(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
    MEMORY[0x1E12C1730](v2, 0x10A1C40E4F7B131);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3EDD64);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_251(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "ADS_Device.cpp";
    v3 = 1024;
    v4 = 3604;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device_SetPropertyData: sending the request to the host to enable stream capture.", &v1, 0x12u);
  }

  operator new();
}

void sub_1DE3EDF44(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
    MEMORY[0x1E12C1730](v2, 0x10A1C40E4F7B131);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3EDF14);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_253(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "ADS_Device.cpp";
    v3 = 1024;
    v4 = 3631;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device_SetPropertyData: sending the request to the host to enable stream capture.", &v1, 0x12u);
  }

  operator new();
}

void sub_1DE3EE0F4(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
    MEMORY[0x1E12C1730](v2, 0x10A1C40E4F7B131);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3EE0C4);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_255(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "ADS_Device.cpp";
    v3 = 1024;
    v4 = 3660;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device_SetPropertyData: sending the request to the host to enable stream capture.", &v1, 0x12u);
  }

  operator new();
}

void sub_1DE3EE2A4(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
    MEMORY[0x1E12C1730](v2, 0x10A1C40E4F7B131);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3EE274);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_257(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "ADS_Device.cpp";
    v3 = 1024;
    v4 = 3687;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device_SetPropertyData: sending the request to the host to enable stream capture.", &v1, 0x12u);
  }

  operator new();
}

void sub_1DE3EE454(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
    MEMORY[0x1E12C1730](v2, 0x10A1C40E4F7B131);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3EE424);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef applesauce::CF::details::Retain<__CFString const*>(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

applesauce::CF::StringRef *applesauce::CF::StringRef::StringRef(applesauce::CF::StringRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return this;
}

{
  if (cf)
  {
    CFRetain(cf);
  }

  *this = cf;
  return this;
}

void sub_1DE3EE560(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void ___ZN3ADS6Device22Device_SetPropertyDataEjiRK26AudioObjectPropertyAddressjPKvjS5_RjRNSt3__16vectorIS1_NS7_9allocatorIS1_EEEENS_17SettabilityPolicyE_block_invoke_259(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "ADS_Device.cpp";
    v3 = 1024;
    v4 = 3721;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device_SetPropertyData: sending the request to the host to set the input file path.", &v1, 0x12u);
  }

  operator new();
}

void sub_1DE3EE688(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    MEMORY[0x1E12C1730](v2, 0x10E1C404817AA86);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE3EE65CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3EE738(void *a1)
{
  MEMORY[0x1E12C1730](v1, 0x10E1C404817AA86);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ADS::Device::getControlsWithScope(ADS::Device *this, int *a2, int *a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v8 = ADS::ObjectManager::CopyObjectByObjectID(*v6);
      v9 = *(v8 + 29);
      ADS::ObjectManager::ReleaseObject(v8, v10);
      if (v9 == a4)
      {
        std::vector<unsigned int>::push_back[abi:ne200100](this, v6);
      }

      ++v6;
    }

    while (v6 != a3);
  }
}

void sub_1DE3EE978(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c32_ZTSKN10applesauce2CF9StringRefE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void *__copy_helper_block_e8_32c32_ZTSKN10applesauce2CF9StringRefE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 32);
  if (v3)
  {
    result = CFRetain(*(a2 + 32));
  }

  v2[4] = v3;
  return result;
}

uint64_t ADS::ChangeInfoData<__CFString const*>::ChangeInfoData(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  *a1 = &unk_1F596D6F8;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 20) = a4;
  std::__function::__value_func<int ()(void)>::__value_func[abi:ne200100](a1 + 24, v8);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](v8);
  *a1 = &unk_1F596D238;
  *(a1 + 56) = a5;
  return a1;
}

void sub_1DE3EEAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ADS::ChangeInfoData<__CFString const*>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<__CFString const*>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void ADS::ChangeInfoData<void (*)(unsigned int,unsigned int,unsigned int,unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<void (*)(unsigned int,unsigned int,unsigned int,unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void ADS::ChangeInfoData<void (*)(__CFDictionary const*)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<void (*)(__CFDictionary const*)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void ADS::ChangeInfoData<int (*)(unsigned int)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<int (*)(unsigned int)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void ADS::ChangeInfoData<int (*)(unsigned int,IsolatedAudio_UseCaseID)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<int (*)(unsigned int,IsolatedAudio_UseCaseID)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void ADS::ChangeInfoData<int (*)(unsigned int,unsigned int,IsolatedAudio_UseCaseID)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<int (*)(unsigned int,unsigned int,IsolatedAudio_UseCaseID)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void ADS::ChangeInfoData<int (*)(unsigned int,IsolatedAudio_UseCaseID,unsigned int,unsigned int,AudioServerPlugInIOCycleInfo const*)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<int (*)(unsigned int,IsolatedAudio_UseCaseID,unsigned int,unsigned int,AudioServerPlugInIOCycleInfo const*)>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void ADS::ChangeInfoData<FakeDeviceActionData>::~ChangeInfoData(uint64_t a1)
{
  ADS::ChangeInfoData<FakeDeviceActionData>::~ChangeInfoData(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t ADS::ChangeInfoData<FakeDeviceActionData>::~ChangeInfoData(uint64_t a1)
{
  *a1 = &unk_1F596CB98;
  v2 = *(a1 + 96) == 8;
  v3 = *(a1 + 72);
  v4 = *(a1 + 104);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (v5 || (v2 & *(a1 + 112) & 1) != 0)
  {
    if (v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*v3 == 1768515184)
  {
LABEL_12:
    CFRelease(*v4);
    v3 = *(a1 + 72);
LABEL_13:
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  MEMORY[0x1E12C1730]();
LABEL_15:
  v7 = *(a1 + 88);
  if (v7)
  {
    MEMORY[0x1E12C1700](v7, 0x1000C8077774924);
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    MEMORY[0x1E12C1700](v8, 0x1000C8077774924);
  }

  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](a1 + 24);
  return a1;
}

void ADS::ChangeInfoData<FakeDeviceBehavior>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<FakeDeviceBehavior>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

OS::CF::UntypedObject *__copy_helper_block_e8_32c19_ZTSN2OS2CF6StringE(uint64_t a1, uint64_t a2)
{
  result = OS::CF::UntypedObject::UntypedObject((a1 + 32), *(a2 + 40));
  *(a1 + 32) = &unk_1F5991188;
  return result;
}

void ADS::ChangeInfoData<OS::CF::String>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D078;
  OS::CF::UntypedObject::~UntypedObject((a1 + 7));
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<OS::CF::String>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D078;
  OS::CF::UntypedObject::~UntypedObject((a1 + 7));
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void ADS::Device::GetPropertyData(ADS::Device *this, ADS::ObjectManager *a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6, const void *a7, unsigned int *a8, unsigned int *a9)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(this + 2) == a2)
  {

    ADS::Device::Device_GetPropertyData(this, a2, a3, a4, a5, a7, a8, a9, a9);
  }

  else
  {
    v16 = ADS::ObjectManager::CopyObjectByObjectID(a2);
    v17 = v16;
    if (!v16)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "ADS_Device.cpp";
        v22 = 1024;
        v23 = 2176;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::GetPropertyData: unknown device", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560947818;
    }

    (*(*v16 + 56))(v16, a2, a3, a4, a5, a6, a7, a8, a9);
    ADS::ObjectManager::ReleaseObject(v17, v18);
  }
}