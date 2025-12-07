void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597B788;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1819173229EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B708;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597B708;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597B708;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF9StringRefEE_NS_9allocatorISO_EEFvSN_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1819173229EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKN10applesauce2CF9StringRefEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF9StringRefEE_NS_9allocatorISO_EEFvSN_EEclESN_(uint64_t a1, void *a2)
{
  v6 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, 8, &v6);
  *__p = *a2;
  AMCP::ASP::PlugIn::ObjectSetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, (v5 - __p), __p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF9StringRefEE_NS_9allocatorISO_EEFvSN_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF9StringRefEE_NS_9allocatorISO_EEFvSN_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF9StringRefEE_NS_9allocatorISO_EEFvSN_EE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B688;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF9StringRefEE_NS_9allocatorISO_EEFvSN_EED0Ev(void *a1)
{
  *a1 = &unk_1F597B688;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF9StringRefEE_NS_9allocatorISO_EEFvSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F597B688;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1819173229EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_1DE5950C4(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597B608;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597B608;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819173229EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597B608;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::ASP::make_properties<1953653102u>(uint64_t *a1, int a2, float *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  strcpy(v5, "nartbolg");
  v6 = 0;
  v7 = 0;
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(&v4, v5);
}

void sub_1DE5955A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13PlugIn_Object19populate_clock_coreEjRNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::operator()(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  AMCP::Core::Broker::fetch_core(&v10, *(*(a1 + 32) + 16), *(a1 + 28));
  v4 = v10;
  if (v10)
  {
    AMCP::Core::Core::get_simple_required_property<1969841184u>(&cf, v10);
    AMCP::Core::Core::get_simple_required_property<1853059700u>(v4);
    v5 = *(a1 + 8);
    v6 = *(a1 + 24);
    *&v13.mSelector = 0x676C6F6272696E67;
    v13.mElement = 0;
    LODWORD(v8[0]) = 0;
    AMCP::ASP::PlugIn::ObjectGetPropertyData(v5, v6, 0, &v13, 0, 0, 4, v8);
    AMCP::Core::Core::get_simple_required_property<1668049764u>(v4);
    LODWORD(v8[0]) = 0;
    *&v13.mSelector = 0x696E707473616674;
    v13.mElement = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, &v13, v8);
    LODWORD(v8[0]) = 0;
    *&v13.mSelector = 0x6F75747073616674;
    v13.mElement = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, &v13, v8);
    LODWORD(v8[0]) = 0;
    *&v13.mSelector = 0x696E70746C746E63;
    v13.mElement = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, &v13, v8);
    LODWORD(v8[0]) = 0;
    *&v13.mSelector = 0x6F7574706C746E63;
    v13.mElement = 0;
    AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v4, &v13, v8);
    AMCP::ASP::make_stream_info_list(v8, *(*(a1 + 32) + 16), &v10, 0x696E7074u);
    AMCP::ASP::make_stream_info_list(&__p, *(*(a1 + 32) + 16), &v10, 0x6F757470u);
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(&v13, (*(*(a1 + 32) + 32) + 704));
    operator new();
  }

  v12 = 0uLL;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *a2 = v12;
}

void sub_1DE595954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::ASP::make_stream_info_list(void **a1, std::__shared_mutex_base *a2, AMCP::Core::Core **a3, unsigned int a4)
{
  v53 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = *a3;
  *buf = 1937009955;
  *&buf[4] = a4;
  *&buf[8] = 0;
  if (AMCP::Core::Core::has_property(v8, buf))
  {
    AMCP::Core::Core::get_simple_required_property<1937009955u>(&v38, *a3, a4);
    v9 = v38;
    v10 = v39;
    __p = v38;
    std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::reserve(a1, v39 - v38);
    if (v9 != v10)
    {
      v11 = __p;
      do
      {
        AMCP::Core::Broker::fetch_core(&v36, a2, *v11);
        v12 = v36;
        if (v36)
        {
          simple_required = AMCP::Core::Core::get_simple_required_property<1935894638u>(v36);
          strcpy(buf, "jbodbolg");
          buf[9] = 0;
          *&buf[10] = 0;
          v14 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v12, buf);
          if (!HIDWORD(v14))
          {
            v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v28 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v14);
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
              v41 = 4;
              strcpy(v40, "dobj");
              *buf = 136316418;
              *&buf[4] = "Core.h";
              v43 = 1024;
              v44 = 391;
              v45 = 2080;
              v46 = "optional_value.operator BOOL() == true";
              v47 = 2080;
              v48 = v40;
              v49 = 1024;
              v50 = 1735159650;
              v51 = 1024;
              v52 = 0;
              _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
              if (v41 < 0)
              {
                operator delete(v40[0]);
              }
            }

            abort();
          }

          v15 = v14;
          AMCP::Core::Core::get_simple_required_property<1718444404u>(&v33, v12);
          v16 = a1[1];
          v17 = a1[2];
          if (v16 >= v17)
          {
            v20 = *a1;
            v21 = v16 - *a1;
            v22 = 0x6DB6DB6DB6DB6DB7 * (v21 >> 3) + 1;
            if (v22 > 0x492492492492492)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v23 = 0x6DB6DB6DB6DB6DB7 * ((v17 - v20) >> 3);
            if (2 * v23 > v22)
            {
              v22 = 2 * v23;
            }

            if (v23 >= 0x249249249249249)
            {
              v24 = 0x492492492492492;
            }

            else
            {
              v24 = v22;
            }

            if (v24)
            {
              std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](v24);
            }

            v25 = 8 * (v21 >> 3);
            *v25 = simple_required;
            *(v25 + 4) = v15;
            *(v25 + 8) = 0;
            v26 = v34;
            *(v25 + 16) = v33;
            *(v25 + 32) = v26;
            *(v25 + 48) = v35;
            v19 = (v25 + 56);
            v27 = (v25 - v21);
            memcpy((v25 - v21), v20, v21);
            *a1 = v27;
            a1[1] = v19;
            a1[2] = 0;
            if (v20)
            {
              operator delete(v20);
            }
          }

          else
          {
            *v16 = simple_required;
            *(v16 + 1) = v15;
            *(v16 + 2) = 0;
            v18 = v34;
            *(v16 + 1) = v33;
            *(v16 + 2) = v18;
            *(v16 + 6) = v35;
            v19 = v16 + 56;
          }

          a1[1] = v19;
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        ++v11;
      }

      while (v11 != v10);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1DE595D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void *std::__function::__func<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F597D108;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
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

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597D108;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_clock_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597D108;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1853059619EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D088;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D088;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D088;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA14ValueRangeListEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1853059619EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA14ValueRangeListEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  LOBYTE(v11) = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v6 = __p;
  v7 = v10 - __p;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v7 >= 0x10)
  {
    v8 = 16 * (v7 >> 4);
    do
    {
      v11 = *v6;
      CA::ValueRangeList::AddRange(a2, &v11);
      ++v6;
      v8 -= 16;
    }

    while (v8);
    v6 = __p;
  }

  if (v6)
  {
    v10 = v6;
    operator delete(v6);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA14ValueRangeListEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA14ValueRangeListEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA14ValueRangeListEvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D008;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA14ValueRangeListEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D008;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059619EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA14ValueRangeListEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D008;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1853059700EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597CF88;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597CF88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597CF88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1853059700EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597CF08;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597CF08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597CF08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKdE_NS_9allocatorISL_EEFvSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1853059700EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKdE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKdE_NS_9allocatorISL_EEFvSK_EEclESK_(uint64_t a1, const void *a2)
{
  v6 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, 8, &v6);
  memcpy(__p, a2, v5 - __p);
  AMCP::ASP::PlugIn::ObjectSetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, (v5 - __p), __p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKdE_NS_9allocatorISL_EEFvSK_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKdE_NS_9allocatorISL_EEFvSK_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKdE_NS_9allocatorISL_EEFvSK_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597CE88;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKdE_NS_9allocatorISL_EEFvSK_EED0Ev(void *a1)
{
  *a1 = &unk_1F597CE88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKdE_NS_9allocatorISL_EEFvSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F597CE88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFdvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1853059700EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFdvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0.0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v10 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v10);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v9 - __p) < 8)
  {
    v6 = 0.0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v9 = __p;
  operator delete(__p);
LABEL_7:
  if (v5)
  {
    return 0.0;
  }

  return v6;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFdvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFdvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFdvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597CE08;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFdvEED0Ev(void *a1)
{
  *a1 = &unk_1F597CE08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1853059700EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFdvEED1Ev(void *a1)
{
  *a1 = &unk_1F597CE08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1819569763EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597CD88;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597CD88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597CD88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1819569763EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597CD08;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597CD08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1819569763EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597CD08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1668049764EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597CC88;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597CC88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597CC88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1668049764EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597CC08;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597CC08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668049764EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597CC08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1751737454EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1751737454EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjRKNS_15Property_TraitsIXT_EE10Value_TypeEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1751737454EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFbvEEclEv(uint64_t a1)
{
  if (!AMCP::ASP::PlugIn::ObjectHasProperty(*(a1 + 8), *(a1 + 24), 0, (a1 + 28)))
  {
    goto LABEL_9;
  }

  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_9;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *__p != 0;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_8:
  if (v5)
  {
LABEL_9:
    v7 = *(a1 + 40);
  }

  return v7 & 1;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1751737454EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1751737454EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1751737454EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFbvEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597CB88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1751737454EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597CB88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1751737454EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597CB88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1953653102EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C208;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C208;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C208;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1953653102EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C188;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C188;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1953653102EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C188;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1836411236EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597CB08;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597CB08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597CB08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1836411236EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_1DE5985DC(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597CA88;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597CA88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1836411236EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597CA88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13PlugIn_Object21populate_control_coreEjRNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DD58;
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

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597DD58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597DD58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1667591277EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DCD8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597DCD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597DCD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1667591277EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DC58;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597DC58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667591277EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597DC58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1668506480EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DBD8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597DBD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597DBD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1668506480EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DB58;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597DB58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1668506480EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597DB58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936745315EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597EDD8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597EDD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597EDD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936745315EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  v3 = 0;
  v4 = 0;
  if (!PropertyDataSize)
  {
    v5 = HIDWORD(PropertyDataSize);
    v11 = 0;
    std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
    if (!AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
    {
      if ((v10 - __p) < 8)
      {
        v6 = 0;
        v7 = 0;
        v4 = 0;
        v3 = 0;
        if (!__p)
        {
          return v4 | v3;
        }
      }

      else
      {
        v6 = *__p & 0xFFFFFFFF00000000;
        v7 = *__p;
      }

      v10 = __p;
      operator delete(__p);
      v4 = v6;
      v3 = v7;
      return v4 | v3;
    }

    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597ED58;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597ED58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745315EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597ED58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936745334EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597ECD8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597ECD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597ECD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936745334EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597EC58;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597EC58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597EC58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936745334EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKfE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EEclESK_(uint64_t a1, const void *a2)
{
  v6 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, 4, &v6);
  memcpy(__p, a2, v5 - __p);
  AMCP::ASP::PlugIn::ObjectSetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, (v5 - __p), __p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597EBD8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EED0Ev(void *a1)
{
  *a1 = &unk_1F597EBD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F597EBD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936745334EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0.0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v10 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v10);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v9 - __p) < 4)
  {
    v6 = 0.0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v9 = __p;
  operator delete(__p);
LABEL_7:
  if (v5)
  {
    return 0.0;
  }

  return v6;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597EB58;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEED0Ev(void *a1)
{
  *a1 = &unk_1F597EB58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936745334EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEED1Ev(void *a1)
{
  *a1 = &unk_1F597EB58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(uint64_t a1)
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

void sub_1DE59A584(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINSt3__16vectorINS3_5tupleIJjjN10applesauce2CF9StringRefEEEENS3_9allocatorIS9_EEEEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(&v3, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(a2, v3, v4, (v4 - v3) >> 4);
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>::dispatch;
  v5 = &v3;
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_1DE59A65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598AA78;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598AA78;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598AA78;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935892841EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJjjN10applesauce2CF9StringRefEEEENSK_ISR_EEEEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935892841EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935892841EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJjjN10applesauce2CF9StringRefEEEENSK_ISR_EEEEvEEclEv(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *&v33.mSelector = 0x676C6F6273636169;
  v33.mElement = 0;
  AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(&v30, *(a1 + 8), *(a1 + 24), &v33);
  v4 = v30;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v5 = __p;
  if (!v4)
  {
    v6 = v32;
    if (__p != v32)
    {
      do
      {
        *&v29.mSelector = 0x676C6F627363696ELL;
        v29.mElement = 0;
        v7 = *(a1 + 8);
        v8 = *(a1 + 24);
        cf = 0;
        if (AMCP::ASP::PlugIn::ObjectGetPropertyData(v7, v8, 0, &v29, 4, v5, 8, &cf))
        {
          v28 = 0;
        }

        else
        {
          v28 = cf;
          if (cf)
          {
            v9 = CFGetTypeID(cf);
            if (v9 != CFStringGetTypeID())
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
              __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }
          }
        }

        *&v27.mSelector = 0x676C6F62636C6B6BLL;
        v27.mElement = 0;
        v10 = *(a1 + 8);
        v11 = *(a1 + 24);
        LODWORD(cf) = 0;
        if (AMCP::ASP::PlugIn::ObjectGetPropertyData(v10, v11, 0, &v27, 4, v5, 4, &cf))
        {
          v12 = 0;
        }

        else
        {
          v12 = cf;
        }

        v14 = a2[1];
        v13 = a2[2];
        if (v14 >= v13)
        {
          v16 = (v14 - *a2) >> 4;
          if ((v16 + 1) >> 60)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v17 = v13 - *a2;
          v18 = v17 >> 3;
          if (v17 >> 3 <= (v16 + 1))
          {
            v18 = v16 + 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          v37 = a2;
          if (v19)
          {
            std::allocator<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::allocate_at_least[abi:ne200100](v19);
          }

          v20 = 16 * v16;
          cf = 0;
          v35 = v20;
          *(&v36 + 1) = 0;
          *v20 = *v5;
          *(v20 + 4) = v12;
          std::__tuple_leaf<2ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef&,0>((v20 + 8), v28);
          *&v36 = v20 + 16;
          v21 = a2[1];
          v22 = v20 + *a2 - v21;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(*a2, v21, v22);
          v23 = *a2;
          *a2 = v22;
          v24 = a2[2];
          v26 = v36;
          *(a2 + 1) = v36;
          *&v36 = v23;
          *(&v36 + 1) = v24;
          cf = v23;
          v35 = v23;
          std::__split_buffer<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::~__split_buffer(&cf);
          v15 = v26;
        }

        else
        {
          *v14 = *v5;
          *(v14 + 4) = v12;
          std::__tuple_leaf<2ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef&,0>((v14 + 8), v28);
          v15 = v14 + 16;
        }

        a2[1] = v15;
        if (v28)
        {
          CFRelease(v28);
        }

        ++v5;
      }

      while (v5 != v6);
      v5 = __p;
    }
  }

  if (v5)
  {
    operator delete(v5);
  }
}

void sub_1DE59AB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&a14);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935892841EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJjjN10applesauce2CF9StringRefEEEENSK_ISR_EEEEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935892841EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJjjN10applesauce2CF9StringRefEEEENSK_ISR_EEEEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935892841EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJjjN10applesauce2CF9StringRefEEEENSK_ISR_EEEEvEE7__cloneEPNS0_6__baseISU_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597EAD8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935892841EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJjjN10applesauce2CF9StringRefEEEENSK_ISR_EEEEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597EAD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935892841EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJjjN10applesauce2CF9StringRefEEEENSK_ISR_EEEEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597EAD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935893353EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597EA58;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597EA58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597EA58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935893353EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E9D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E9D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E9D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
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

void sub_1DE59B38C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterINSt3__16vectorIjNS3_9allocatorIjEEEEEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::operator()(uint64_t a1, uint64_t a2)
{
  AMCP::Thing::convert_to<std::vector<unsigned int>>(__p, a2);
  AMCP::Core::Operation::call_function<void,std::vector<unsigned int> const&>((a1 + 8), __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DE59B438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598A910;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F598A910;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<std::vector<unsigned int>>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F598A910;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKNS_6vectorIjNS_9allocatorIjEEEEE_NSK_ISP_EEFvSO_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935893353EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKNS2_6vectorIjNS2_9allocatorIjEEEEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKNS_6vectorIjNS_9allocatorIjEEEEE_NSK_ISP_EEFvSO_EEclESO_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8) - *a2;
  v7 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, v4, &v7);
  memcpy(__p, *a2, v6 - __p);
  AMCP::ASP::PlugIn::ObjectSetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, (v6 - __p), __p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKNS_6vectorIjNS_9allocatorIjEEEEE_NSK_ISP_EEFvSO_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKNS_6vectorIjNS_9allocatorIjEEEEE_NSK_ISP_EEFvSO_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKNS_6vectorIjNS_9allocatorIjEEEEE_NSK_ISP_EEFvSO_EE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E958;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKNS_6vectorIjNS_9allocatorIjEEEEE_NSK_ISP_EEFvSO_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E958;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKNS_6vectorIjNS_9allocatorIjEEEEE_NSK_ISP_EEFvSO_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E958;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935893353EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEEclEv(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v6 = __p;
  v7 = (v10 - __p) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v10 - __p) >> 2;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, v6, (v6 + v7), v8);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E8D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597E8D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935893353EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597E8D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1650685548EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E858;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E858;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E858;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1650685548EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E7D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E7D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E7D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1650685548EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKbE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EEclESK_(uint64_t a1, unsigned __int8 *a2)
{
  v7 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, 4, &v7);
  v4 = __p;
  *__p = *a2;
  AMCP::ASP::PlugIn::ObjectSetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, (v6 - v4), v4);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E758;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E758;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E758;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1650685548EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p != 0;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E6D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597E6D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650685548EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597E6D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13PlugIn_Object28populate_volume_control_coreEjRNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::operator()(uint64_t a1, float *a2)
{
  v2 = *a2;
  *&v6.mSelector = 0x676C6F626C636473;
  v6.mElement = 0;
  v5 = v2;
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, &v6, 0, 0, 4, &v5);
  result = v5;
  if (PropertyData)
  {
    return 0.0;
  }

  return result;
}

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597E658;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F597E658;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_1>,float ()(float,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F597E658;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13PlugIn_Object28populate_volume_control_coreEjRNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  v2 = *a2;
  *&v6.mSelector = 0x676C6F626C637364;
  v6.mElement = 0;
  v5 = v2;
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, &v6, 0, 0, 4, &v5);
  result = v5;
  if (PropertyData)
  {
    return 0.0;
  }

  return result;
}

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597E5D8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_1F597E5D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::ASP::PlugIn_Object::populate_volume_control_core(unsigned int,AMCP::Core::Operation_Set &)::$_0>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_1F597E5D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818453106EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E558;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E558;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E558;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(uint64_t a1)
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

void sub_1DE59CEAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIN2CA10ValueRangeEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = AMCP::Core::Operation::call_function<CA::ValueRange>((a1 + 8));
  a2[2] = 0;
  a2[3] = 0;
  *a2 = v4;
  a2[1] = v5;
  a2[4] = AMCP::Implementation::In_Place_Storage<CA::ValueRange>::dispatch;
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598A270;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map((a2 + 8), a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598A270;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<CA::ValueRange>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F598A270;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA10ValueRangeEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818453106EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA10ValueRangeEvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (!PropertyDataSize)
  {
    v5 = HIDWORD(PropertyDataSize);
    v8 = 0;
    std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v8);
    if (!AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
    {
      v3 = *__p;
      v7 = __p;
      operator delete(__p);
      return v3;
    }

    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }

  return 0.0;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA10ValueRangeEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA10ValueRangeEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA10ValueRangeEvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E4D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA10ValueRangeEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597E4D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453106EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN2CA10ValueRangeEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597E4D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818453110EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E458;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E458;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E458;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818453110EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E3D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E3D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E3D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818453110EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKfE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EEclESK_(uint64_t a1, const void *a2)
{
  v6 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, 4, &v6);
  memcpy(__p, a2, v5 - __p);
  AMCP::ASP::PlugIn::ObjectSetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, (v5 - __p), __p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E358;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E358;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E358;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818453110EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0.0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v10 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v10);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v9 - __p) < 4)
  {
    v6 = 0.0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v9 = __p;
  operator delete(__p);
LABEL_7:
  if (v5)
  {
    return 0.0;
  }

  return v6;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E2D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEED0Ev(void *a1)
{
  *a1 = &unk_1F597E2D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818453110EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEED1Ev(void *a1)
{
  *a1 = &unk_1F597E2D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818456950EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E258;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E258;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E258;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818456950EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E1D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E1D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E1D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818456950EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKfE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EEclESK_(uint64_t a1, const void *a2)
{
  v6 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, 4, &v6);
  memcpy(__p, a2, v5 - __p);
  AMCP::ASP::PlugIn::ObjectSetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, (v5 - __p), __p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E158;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E158;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKfE_NS_9allocatorISL_EEFvSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E158;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1818456950EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0.0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v10 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v10);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v9 - __p) < 4)
  {
    v6 = 0.0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v9 = __p;
  operator delete(__p);
LABEL_7:
  if (v5)
  {
    return 0.0;
  }

  return v6;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E0D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEED0Ev(void *a1)
{
  *a1 = &unk_1F597E0D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1818456950EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFfvEED1Ev(void *a1)
{
  *a1 = &unk_1F597E0D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935962738EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597E058;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597E058;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597E058;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935962738EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  v3 = 0;
  v4 = 0;
  if (!PropertyDataSize)
  {
    v5 = HIDWORD(PropertyDataSize);
    v11 = 0;
    std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
    if (!AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
    {
      if ((v10 - __p) < 8)
      {
        v6 = 0;
        v7 = 0;
        v4 = 0;
        v3 = 0;
        if (!__p)
        {
          return v4 | v3;
        }
      }

      else
      {
        v6 = *__p & 0xFFFFFFFF00000000;
        v7 = *__p;
      }

      v10 = __p;
      operator delete(__p);
      v4 = v6;
      v3 = v7;
      return v4 | v3;
    }

    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DFD8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597DFD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962738EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_5tupleIJjjEEEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597DFD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935962742EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DF58;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597DF58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597DF58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935962742EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DED8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597DED8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597DED8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKjE_NS_9allocatorISL_EEFvSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935962742EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKjE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKjE_NS_9allocatorISL_EEFvSK_EEclESK_(uint64_t a1, const void *a2)
{
  v6 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, 4, &v6);
  memcpy(__p, a2, v5 - __p);
  AMCP::ASP::PlugIn::ObjectSetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, (v5 - __p), __p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKjE_NS_9allocatorISL_EEFvSK_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKjE_NS_9allocatorISL_EEFvSK_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKjE_NS_9allocatorISL_EEFvSK_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DE58;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKjE_NS_9allocatorISL_EEFvSK_EED0Ev(void *a1)
{
  *a1 = &unk_1F597DE58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKjE_NS_9allocatorISL_EEFvSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F597DE58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935962742EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DDD8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597DDD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935962742EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597DDD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1718449187EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DAD8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597DAD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597DAD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1718449187EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEEclEv(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    goto LABEL_2;
  }

  v5 = HIDWORD(PropertyDataSize);
  LOBYTE(v8[0]) = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), v8);
  if (AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v5, __p))
  {
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

LABEL_2:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  memset(v8, 0, sizeof(v8));
  if ((v7 - __p) > 0x37)
  {
    std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100]((v7 - __p) / 0x38uLL);
  }

  AMCP::make_available_format_list(v8, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597DA58;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597DA58;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1718449187EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorINS_5tupleIJN2CA14ValueRangeListENSO_17StreamDescriptionEEEENSK_ISR_EEEEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597DA58;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP28make_current_format_propertyENSt3__110shared_ptrINS0_6PlugInEEEjjNS2_INS_4Core11System_CoreEEERNS5_13Operation_SetEEUlRKN2CA17StreamDescriptionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::operator()(uint64_t a1, const void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  AMCP::Core::Broker::fetch_core(&v26, *(*(a1 + 32) + 16), *(a1 + 28));
  if (!v26)
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
      buf.mSelector = 136315650;
      *&buf.mScope = "ASP_Object.cpp";
      v29 = 1024;
      v30 = 978;
      v31 = 2080;
      v32 = "(stream_core_ptr.get() == nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set stream format, invalid core stream object", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "failed to set stream format, invalid core stream object");
    std::runtime_error::runtime_error(&v20, &v16);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v20);
    v33 = "auto AMCP::ASP::make_current_format_property(PlugIn_Ptr, AudioObjectID, Object_ID, Core::System_Core_Ptr, Core::Operation_Set &)::(anonymous class)::operator()(const CA::StreamDescription &) const";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
    v35 = 978;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v19);
  }

  AMCP::Core::Core::get_simple_required_property<1718449187u>(v19, v26);
  is_an_available_format = AMCP::Utility::Stream_Format::format_is_an_available_format(a2, v19[0], v19[1]);
  if (!is_an_available_format)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_an_available_format);
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
      buf.mSelector = 136315650;
      *&buf.mScope = "ASP_Object.cpp";
      v29 = 1024;
      v30 = 982;
      v31 = 2080;
      v32 = "(format_is_valid) == false";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set stream format, invalid format", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v17, "failed to set stream format, invalid format");
    std::runtime_error::runtime_error(&v20, &v17);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&buf, &v20);
    v33 = "auto AMCP::ASP::make_current_format_property(PlugIn_Ptr, AudioObjectID, Object_ID, Core::System_Core_Ptr, Core::Operation_Set &)::(anonymous class)::operator()(const CA::StreamDescription &) const";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/ASP/ASP_Object.cpp";
    v35 = 982;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  strcpy(&buf, " tfpbolg");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  AMCP::ASP::PlugIn::ObjectSetPropertyData(v6, v7, 0, &buf, 0, 0, 40, a2);
  *&buf.mSelector = v19;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_1DE5A0278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, std::runtime_error a12, uint64_t a13, std::runtime_error a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a12.__vftable)
  {
    operator delete(a12.__vftable);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a26);
  std::runtime_error::~runtime_error(&a14);
  if (a11)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a18);
  *(v27 - 128) = &a19;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100]((v27 - 128));
  v29 = *(v27 - 136);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F597B588;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
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

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597B588;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(CA::StreamDescription const&)#1}>,void ()(CA::StreamDescription const&)>::~__func(void *a1)
{
  *a1 = &unk_1F597B588;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP28make_current_format_propertyENSt3__110shared_ptrINS0_6PlugInEEEjjNS2_INS_4Core11System_CoreEEERNS5_13Operation_SetEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  *&v8.mSelector = 0x676C6F6270667420;
  v8.mElement = 0;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(v3, v4, 0, &v8, 0, 0, 40, &v9);
  v12 = v9;
  v13 = v10;
  v14 = v11;
  if (PropertyData)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    result = *&v12;
    v7 = v13;
    *a2 = v12;
    *(a2 + 16) = v7;
    *(a2 + 32) = v14;
  }

  return result;
}

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597B508;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B508;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_current_format_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::StreamDescription ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B508;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936487523EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D9D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D9D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D9D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1936487523EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D958;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEED0Ev(void *a1)
{
  *a1 = &unk_1F597D958;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1936487523EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFivEED1Ev(void *a1)
{
  *a1 = &unk_1F597D958;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1952805485EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D8D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D8D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D8D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1952805485EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D858;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D858;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952805485EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D858;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1952542835EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjRKNS_15Property_TraitsIXT_EE10Value_TypeEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEEclEv(uint64_t a1)
{
  if (!AMCP::ASP::PlugIn::ObjectHasProperty(*(a1 + 8), *(a1 + 24), 0, (a1 + 28)))
  {
    return *(a1 + 40);
  }

  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return *(a1 + 40);
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_8:
  if (v5)
  {
    return *(a1 + 40);
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D7D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D7D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1952542835EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjRKNS2_15Property_TraitsIXT_EE10Value_TypeEEUlvE_NS_9allocatorISO_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D7D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935894638EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D758;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D758;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D758;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935894638EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D6D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D6D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935894638EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D6D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935960434EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D658;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D658;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D658;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935960434EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D5D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D5D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935960434EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS2_9DirectionEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D5D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::ASP::make_channel_layout_property(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, __int128 *a6, float *a7)
{
  v10 = *MEMORY[0x1E69E9840];
  v9[1] = 0uLL;
  LODWORD(v7) = 1936879204;
  HIDWORD(v7) = a1;
  v8 = 0;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a6 + 1))
  {
    atomic_fetch_add_explicit((*(a6 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(v9, &v7);
}

void sub_1DE5A233C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE5A24B0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1667523955EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D558;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D558;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D558;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1667523955EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D4D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D4D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D4D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1667523955EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EEclESN_(uint64_t a1, void *a2)
{
  v6 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, 8, &v6);
  *__p = *a2;
  AMCP::ASP::PlugIn::ObjectSetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, (v5 - __p), __p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D458;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D458;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKN10applesauce2CF13DictionaryRefEE_NS_9allocatorISO_EEFvSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D458;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1667523955EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
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
    if (v8 != CFDictionaryGetTypeID())
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

void sub_1DE5A2DA0(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D3D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D3D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1667523955EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D3D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1684301171EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D358;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D358;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D358;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1684301171EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
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
    if (v8 != CFDictionaryGetTypeID())
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

void sub_1DE5A3368(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D2D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D2D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1684301171EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF13DictionaryRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D2D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP35make_default_system_device_propertyENSt3__110shared_ptrINS0_6PlugInEEEjRNS_4Core13Operation_SetEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = AMCP::ASP::get_number_of_non_reference_streams_for_scope(0x6F757470u, (a1 + 8), v2);
  if (result)
  {
    *&v6.mSelector = 0x676C6F6273666C74;
    v6.mElement = 0;
    if (AMCP::ASP::PlugIn::ObjectHasProperty(*(a1 + 8), v2, 0, &v6))
    {
      v4 = *(a1 + 8);
      v7 = 0;
      PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(v4, v2, 0, &v6, 0, 0, 4, &v7);
      return (PropertyData | v7) != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AMCP::ASP::get_number_of_non_reference_streams_for_scope(AudioObjectPropertyScope a1, AMCP::ASP::PlugIn **a2, uint64_t a3)
{
  v4 = *a2;
  v13.mSelector = 1937009955;
  v13.mScope = a1;
  v13.mElement = 0;
  AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(&v14, v4, a3, &v13);
  v5 = __p;
  if (v14 || (v7 = v16, __p == v16))
  {
    v6 = 0;
  }

  else
  {
    LODWORD(v6) = 0;
    v8 = __p;
    do
    {
      v9 = *a2;
      v10 = *v8++;
      *&v13.mSelector = 0x676C6F6274617073;
      v13.mElement = 0;
      v17 = 0;
      if (AMCP::ASP::PlugIn::ObjectGetPropertyData(v9, v10, 0, &v13, 0, 0, 4, &v17))
      {
        v11 = 1;
      }

      else
      {
        v11 = v17 == 0;
      }

      if (v11)
      {
        v6 = (v6 + 1);
      }

      else
      {
        v6 = v6;
      }
    }

    while (v8 != v7);
  }

  if (v5)
  {
    operator delete(v5);
  }

  return v6;
}

void std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597B488;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B488;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_system_device_property(std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B488;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP28make_default_device_propertyEjNSt3__110shared_ptrINS0_6PlugInEEEjRNS_4Core13Operation_SetEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  result = AMCP::ASP::get_number_of_non_reference_streams_for_scope(v2, (a1 + 16), v3);
  if (result)
  {
    v7.mSelector = 1684434036;
    v7.mScope = v2;
    v7.mElement = 0;
    if (AMCP::ASP::PlugIn::ObjectHasProperty(*(a1 + 16), v3, 0, &v7))
    {
      v5 = *(a1 + 16);
      v8 = 0;
      PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(v5, v3, 0, &v7, 0, 0, 4, &v8);
      return (PropertyData | v8) != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F597B408;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B408;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_default_device_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,BOOL ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B408;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP28make_channel_layout_propertyEjNSt3__110shared_ptrINS0_6PlugInEEEjjNS2_INS_4Core11System_CoreEEERNS5_13Operation_SetEEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::operator()(uint64_t a1)
{
  AMCP::Core::Broker::fetch_core(&v5, *(*(a1 + 16) + 16), *(a1 + 12));
  if (v5)
  {
    AMCP::ASP::make_stream_info_list(v4, *(*(a1 + 16) + 16), &v5, *(a1 + 8));
    v2 = v4[0] != v4[1];
    if (v4[0])
    {
      operator delete(v4[0]);
    }
  }

  else
  {
    v2 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v2;
}

void sub_1DE5A3C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::__clone(void *result, void *a2)
{
  *a2 = &unk_1F597B388;
  a2[1] = result[1];
  v2 = result[3];
  a2[2] = result[2];
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B388;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(AMCP::Core::Has_Property_Function)#1}>,BOOL ()(AMCP::Core::Has_Property_Function)>::~__func(void *a1)
{
  *a1 = &unk_1F597B388;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP28make_channel_layout_propertyEjNSt3__110shared_ptrINS0_6PlugInEEEjjNS2_INS_4Core11System_CoreEEERNS5_13Operation_SetEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AMCP::Core::Broker::fetch_core(&v13, *(*(a1 + 40) + 16), *(a1 + 36));
  if (!v13)
  {
    v4 = 0;
    goto LABEL_10;
  }

  AMCP::ASP::make_stream_info_list(&v11, *(*(a1 + 40) + 16), &v13, *(a1 + 8));
  if (v11 == v12)
  {
    v4 = 0;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    v5 = v11;
    do
    {
      v4 += v5[11];
      v5 += 14;
    }

    while (v5 != v12);
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  operator delete(v11);
LABEL_10:
  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  LOBYTE(v11) = 0;
  std::vector<char>::vector[abi:ne200100](a2, 20 * v6 + 12, &v11);
  v7 = *a2;
  *v7 = 0;
  *(v7 + 8) = v4;
  v8 = v7 + 12;
  for (i = a2[1]; v8 != i; v8 += 20)
  {
    *v8 = 0xFFFFFFFFLL;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
  }

  v10 = v14;
  if (v14)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE5A3FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 40);
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

uint64_t std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F597B308;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  v3 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B308;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1},std::allocator<AMCP::ASP::make_channel_layout_property(unsigned int,std::shared_ptr<AMCP::ASP::PlugIn>,unsigned int,unsigned int,std::shared_ptr<AMCP::Core::System_Core>,AMCP::Core::Operation_Set &)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F597B308;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935763060EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D258;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597D258;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597D258;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1935763060EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597D1D8;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597D1D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1935763060EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597D1D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1650682915EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *&v10.mSelector = 0x676C6F6262636C23;
  v10.mElement = 0;
  AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(&v11, v4, v5, &v10);
  v6 = v11;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v7 = __p;
  if (!v6)
  {
    v8 = v13;
    if (__p != v13)
    {
      v9 = __p;
      do
      {
        v10.mSelector = AMCP::ASP::Driver::get_core_id_for_driver_id(*(*(a1 + 8) + 8), *v9);
        if (v10.mSelector)
        {
          std::vector<unsigned int>::push_back[abi:ne200100](a2, &v10);
        }

        ++v9;
      }

      while (v9 != v8);
    }
  }

  if (v7)
  {
    operator delete(v7);
  }
}

void sub_1DE5A4870(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597CA08;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597CA08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650682915EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597CA08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1650751011EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *&v10.mSelector = 0x676C6F6262647623;
  v10.mElement = 0;
  AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(&v11, v4, v5, &v10);
  v6 = v11;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v7 = __p;
  if (!v6)
  {
    v8 = v13;
    if (__p != v13)
    {
      v9 = __p;
      do
      {
        v10.mSelector = AMCP::ASP::Driver::get_core_id_for_driver_id(*(*(a1 + 8) + 8), *v9);
        if (v10.mSelector)
        {
          std::vector<unsigned int>::push_back[abi:ne200100](a2, &v10);
        }

        ++v9;
      }

      while (v9 != v8);
    }
  }

  if (v7)
  {
    operator delete(v7);
  }
}

void sub_1DE5A4B5C(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F597C988;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C988;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1650751011EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFNS_6vectorIjNSK_IjEEEEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C988;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060006EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C908;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C908;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C908;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060006EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEEclEv(uint64_t a1)
{
  PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0);
  if (PropertyDataSize)
  {
    return 0;
  }

  v3 = HIDWORD(PropertyDataSize);
  v11 = 0;
  std::vector<std::byte>::vector[abi:ne200100](&__p, HIDWORD(PropertyDataSize), &v11);
  PropertyData = AMCP::ASP::PlugIn::ObjectGetPropertyData(*(a1 + 8), *(a1 + 24), 0, (a1 + 28), 0, 0, v3, __p);
  v5 = PropertyData;
  if (PropertyData || (v10 - __p) < 4)
  {
    v6 = 0;
    v7 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *__p;
  }

  v10 = __p;
  operator delete(__p);
  v7 = v6;
LABEL_7:
  if (v5)
  {
    return 0;
  }

  return v7;
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C888;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C888;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060006EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFjvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C888;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060014EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C808;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C808;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}