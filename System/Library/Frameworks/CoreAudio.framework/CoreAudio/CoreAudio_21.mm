void sub_1DE381A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    if ((v35 & 1) == 0)
    {
LABEL_10:
      v38 = *(v36 - 120);
      if (v38)
      {
        operator delete(v38);
      }

      IOConnectRelease(v33);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v34);
  goto LABEL_10;
}

uint64_t AMCP::IOAudio2::Device::get_device_connection(AMCP::IOAudio2::Device *this, io_connect_t a2)
{
  *this = a2;
  result = IOConnectAddRef(a2);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v3, v5, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  return result;
}

void std::vector<unsigned long long>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 8 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_2,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_2>,void ()(applesauce::CF::DictionaryRef const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5969C08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_1,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_1>,applesauce::CF::DictionaryRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device10build_coreEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_1,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_1>,applesauce::CF::DictionaryRef ()(void)>::operator()(CFDictionaryRef *a1@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  cf = CFStringCreateWithBytes(0, "kind", 4, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  valuePtr = 0;
  v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v2)
  {
    v4 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v4, "Could not construct");
    __cxa_throw(v4, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  CFRetain(cf);
  v8 = cf;
  CFRetain(v2);
  v9 = v2;
  v6[0] = &v8;
  v6[1] = 1;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(v6);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(v2);
  CFRelease(cf);
}

void sub_1DE381F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,unsigned int>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,unsigned int const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,unsigned int>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,unsigned int const&)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities47make_owned_object_with_properties_list_propertyIjJNS_7AddressEjEEENSt3__110shared_ptrINS0_9OperationEEERNS0_6BrokerEjRKS3_SB_RKT_DpRKT0_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1DE3821DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS2_7AddressERKjENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerEjS8_RKT_DpOT0_EUlSL_E_NSE_ISP_EEFbRKNS_10shared_ptrINS3_4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS_7AddressERKjENSt3__19enable_ifILb1EvEEEENS8_6vectorIjNS8_9allocatorIjEEEERNS0_6BrokerEjS5_RKT_DpOT0_EUlSJ_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS2_7AddressERKjENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerEjS8_RKT_DpOT0_EUlSL_E_NSE_ISP_EEFbRKNS_10shared_ptrINS3_4CoreEEEEEclESV_(void *a1, AMCP::Core::Core **a2)
{
  v2 = *a2;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(*a2, v3);
  if (!HIDWORD(v7))
  {
    return 0;
  }

  if (*v3 == 1668047219 || *v3 == 1650682995)
  {
    if ((AMCP::is_base_of(*v4, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*v4 != v7)
  {
    return 0;
  }

  return _ZN4AMCP4Core4Core26has_properties_with_valuesIjJENSt3__19enable_ifILb1EvEEEEbRKNS_7AddressERKT_DpOT0_(v2, v5, v6);
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP4Core16Broker_Utilities49fetch_owned_object_ids_with_properties_and_valuesIjJRKNS2_7AddressERKjENS_9enable_ifILb1EvEEEENS_6vectorIjNS_9allocatorIjEEEERNS3_6BrokerEjS8_RKT_DpOT0_EUlSL_E_NSE_ISP_EEFbRKNS_10shared_ptrINS3_4CoreEEEEE7__cloneEPNS0_6__baseISW_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5980A38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,unsigned int>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,unsigned int const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_owned_object_with_properties_list_property<unsigned int,AMCP::Address,unsigned int>(AMCP::Core::Broker &,unsigned int,AMCP::Address const&,AMCP::Address const&,unsigned int const&,AMCP::Address,unsigned int const&)::{lambda(void)#1}>,std::vector<unsigned int> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59809C8;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 20) = *(a1 + 20);
  result = *(a1 + 36);
  *(a2 + 36) = result;
  *(a2 + 52) = 0;
  return result;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
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

void AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(uint64_t *a1, uint64_t *a2, const void *a3, uint64_t a4)
{
  v6[17] = *MEMORY[0x1E69E9840];
  memset(v6, 0, 24);
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(v6, a3, a4, a4 - a3);
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address const&,0>(a1, a2);
}

void sub_1DE382690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t AMCP::CF::fetch_BOOL_from_dictionary<__CFString const*>(CFDictionaryRef *a1, const void **a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(&cf, *a1, *a2);
  if (v11 != 1)
  {
    if (*a1)
    {
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v8, *a1, *a2);
      if (v9 != 1)
      {
        return 0;
      }

      v5 = v8;
      if (v8)
      {
        v4 = applesauce::CF::convert_to<BOOL,0>(v8);
        CFRelease(v5);
        return v4;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_16:
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  if (!cf)
  {
    goto LABEL_13;
  }

  v4 = applesauce::CF::convert_to<BOOL,0>(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(&cf, *a1, *a2);
  if (v15 == 1)
  {
    if (!cf)
    {
      v9 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v9, "Could not construct");
      __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v4 = applesauce::CF::convert_to<BOOL,0>(cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    if (!*a1)
    {
      v10 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v10, "Could not construct");
      __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v12, *a1, *a2);
    if (v13 != 1)
    {
      v6 = 0;
      v4 = 0;
      return v4 | (v6 << 8);
    }

    v5 = v12;
    if (!v12)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
      __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v4 = applesauce::CF::convert_to<BOOL,0>(v12);
    CFRelease(v5);
  }

  v6 = 1;
  return v4 | (v6 << 8);
}

{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(&cf, *a1, *a2);
  if (v11 != 1)
  {
    if (*a1)
    {
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v8, *a1, *a2);
      if (v9 != 1)
      {
        return 0;
      }

      v5 = v8;
      if (v8)
      {
        v4 = applesauce::CF::convert_to<BOOL,0>(v8);
        CFRelease(v5);
        return v4;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_16:
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  if (!cf)
  {
    goto LABEL_13;
  }

  v4 = applesauce::CF::convert_to<BOOL,0>(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(&cf, *a1, *a2);
  if (v11 != 1)
  {
    if (*a1)
    {
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v8, *a1, *a2);
      if (v9 != 1)
      {
        return 0;
      }

      v5 = v8;
      if (v8)
      {
        v4 = applesauce::CF::convert_to<BOOL,0>(v8);
        CFRelease(v5);
        return v4;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_16:
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_16;
  }

  if (!cf)
  {
    goto LABEL_13;
  }

  v4 = applesauce::CF::convert_to<BOOL,0>(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void *applesauce::CF::details::find_at_key<applesauce::CF::NumberRef,__CFString const*>(void *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::NumberRef::from_get(a1, v4);
}

void std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1DE382984(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[351];
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::Core::Engine> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>())
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
      std::__function::__value_func<std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__value_func[abi:ne200100](a2);
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
      std::__function::__value_func<std::shared_ptr<AMCP::Core::Engine> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>::dispatch;
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
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::shared_ptr<AMCP::Core::Engine> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device18update_core_commonERNS_4Core13Operation_SetEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::operator()(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v2, (*(*(a1 + 8) + 32) + 704));
  operator new();
}

void sub_1DE382EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, io_connect_t connect, char a19)
{
  __cxa_free_exception(v20);
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v22);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&a19);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::IOAudio2::Engine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596E5D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy_deallocate(uint64_t a1)
{
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

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  operator delete(a1);
}

void std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::destroy(uint64_t a1)
{
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

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5969A08;
  result = AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::$_2(a2 + 8, a1 + 8);
  *(a2 + 134) = 0;
  *(a2 + 130) = 0;
  return result;
}

uint64_t AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2::$_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = IOConnectAddRef(v5);
  if (v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v13 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v6, v13, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    CFRetain(*(a2 + 24));
  }

  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v10;
  *(a1 + 48) = v9;
  *(a1 + 32) = v8;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>((a1 + 72), *(a2 + 72), *(a2 + 80), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>((a1 + 96), *(a2 + 96), *(a2 + 104), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

void sub_1DE383234(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5969A08;
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

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_2>,std::shared_ptr<AMCP::Core::Engine> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5969A08;
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

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  IOConnectRelease(*(a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFBooleanGetTypeID())
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

uint64_t std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities22make_constant_propertyIN2CA13ChannelLayoutEEENSt3__110shared_ptrINS0_9OperationEEERKNS_7AddressERKT_EUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a2, *(a1 + 8), *(a1 + 16), *(a1 + 16) - *(a1 + 8));
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

uint64_t *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F59805A8;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  return std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a2 + 1, *(a1 + 8), *(a1 + 16), *(a1 + 16) - *(a1 + 8));
}

void std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59805A8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1},std::allocator<std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<CA::ChannelLayout>(AMCP::Address const&,CA::ChannelLayout const&)::{lambda(void)#1}>,CA::ChannelLayout ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59805A8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(double const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device18update_core_commonERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(double const&)>::operator()(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  inputStruct = vcvtd_n_s64_f64(*a2 - floor(*a2), 0x20uLL) + (vcvtmd_s64_f64(*a2) << 32);
  AMCP::IOAudio2::Device::get_device_connection(&v6, **(v2 + 376));
  v3 = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone>(v6, 4u, &inputStruct, 8uLL);
  return IOConnectRelease(v3);
}

void sub_1DE38383C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  IOConnectRelease(v1);
  _Unwind_Resume(a1);
}

void applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone>(mach_port_t a1, uint32_t a2, void *inputStruct, size_t inputStructCnt)
{
  memset(v7, 0, sizeof(v7));
  outputCnt = 0;
  memset(__p, 0, sizeof(__p));
  v4 = 0;
  if (IOConnectCallMethod(a1, a2, 0, 0, inputStruct, inputStructCnt, 0, &outputCnt, 0, &v4))
  {
    __cxa_allocate_exception(0x20uLL);
    std::system_category();
    operator new();
  }

  std::vector<unsigned long long>::resize(v7, outputCnt);
  if (v4)
  {
    std::vector<unsigned char>::__append(__p, v4);
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  if (v7[0])
  {
    operator delete(v7[0]);
  }
}

void sub_1DE3839FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v31 & 1) == 0)
    {
LABEL_10:
      v35 = *(v33 - 72);
      if (v35)
      {
        operator delete(v35);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v32);
  goto LABEL_10;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_1>,void ()(double const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5969988;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,double ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device18update_core_commonERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IOAudio2::Device::update_core_common(AMCP::Core::Operation_Set &)::$_0>,double ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5969908;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device10build_coreEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::operator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(*(**(a1 + 8) + 32) + 16);
  v4 = *(a1 + 16);
  v12 = &unk_1F5969AF8;
  LODWORD(v13) = v4;
  v14 = &v12;
  AMCP::Core::Broker::fetch_first_core_if (&v9, v3, &v12);
  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](&v12);
  AMCP::Core::Core::get_simple_required_property<1718449187u>(&v12, v9);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = v12;
  v6 = v13;
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = v5[1];
    while (v7 != v8)
    {
      CA::ValueRangeList::AddRange(a2, v7);
      v7 += 2;
    }

    v5 += 8;
  }

  v11 = &v12;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE383D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, void **a11, char a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
  }

  a11 = &a12;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&a11);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void AMCP::Core::Core::get_simple_required_property<1718449187u>(uint64_t *a1, AMCP::Core::Core *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = 0x676C6F62666D7423;
  v15 = 0;
  has_property = AMCP::Core::Core::has_property(this, &v14);
  if (!has_property)
  {
    goto LABEL_14;
  }

  AMCP::Core::Core::find_operation(&v21, this, &v14);
  v5 = v21;
  if (v21)
  {
    v6 = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      AMCP::Core::Operation::call_function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(buf, v5);
      v13 = *&buf[8];
      v16 = *buf;
      v17 = *&buf[16];
      memset(buf, 0, 24);
      v18 = 1;
      __p[0] = buf;
      std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_5:
      v7 = 0;
      v5 = v13;
      goto LABEL_10;
    }

    v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v8))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v5);
      AMCP::Thing::convert_to<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(__p, buf);
      v13 = __p[1];
      v16 = *__p;
      v17 = v20;
      __p[1] = 0;
      v20 = 0;
      __p[0] = 0;
      v18 = 1;
      v23 = __p;
      std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v23);
      if (*&v26[2])
      {
        (*&v26[2])(0, buf, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v7 = 1;
LABEL_10:
  has_property = v22;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v7)
  {
LABEL_14:
    LOBYTE(v16) = 0;
    v18 = 0;
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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
      HIBYTE(v20) = 4;
      strcpy(__p, "fmt#");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      *&buf[18] = 2080;
      *&buf[20] = "optional_value.operator BOOL() == true";
      v25 = 2080;
      *v26 = __p;
      *&v26[8] = 1024;
      v27 = 1735159650;
      v28 = 1024;
      v29 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>(a1, v16, v5, (v5 - v16) >> 6);
  *buf = &v16;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_1DE38407C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Operation::call_function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>>(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a2, v3);
  if (!v4)
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
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<std::tuple<CA::ValueRangeList, CA::StreamDescription>>, Argument_Types = <>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
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
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<std::tuple<CA::ValueRangeList, CA::StreamDescription>>, Argument_Types = <>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6);
}

void sub_1DE38452C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>> ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 57);
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio26Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP8IOAudio26Device10build_coreEvENK3$_0clEvEUlRKT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZZN4AMCP8IOAudio26Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEEclESH_(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1870098034u>(*a2);
  v5 = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  return *(a1 + 8) == simple_required && v5 == 1634956402;
}

uint64_t _ZNKSt3__110__function6__funcIZZN4AMCP8IOAudio26Device10build_coreEvENK3__0clEvEUlRKT_E_NS_9allocatorIS9_EEFbRKNS_10shared_ptrINS2_4Core4CoreEEEEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5969AF8;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 std::__function::__func<AMCP::IOAudio2::Device::build_core(void)::$_0,std::allocator<AMCP::IOAudio2::Device::build_core(void)::$_0>,CA::ValueRangeList ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5969A88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1,std::allocator<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26DeviceC1ERNS0_6DriverERKN10applesauce5iokit16io_object_holderENS4_2CF13DictionaryRefEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1,std::allocator<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1>,void ()(void)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL a5, unsigned int a6)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v7 = AMCP::Utility::Mach_Port::receive_message(*(v6 + 384), 0x88u, &msg, 0);
  v8 = v7;
  AMCP::Utility::Kernel_Error_Category::get(v7);
  if (!v8 && v39)
  {
    v10 = 0;
    for (i = &v40; *(i + 1) != 1668247142; i += 4)
    {
      if (++v10 >= v39)
      {
        return;
      }
    }

    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      v9 = AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *(v13 + 16);
    switch(v15)
    {
      case 3:
        v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v24 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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

        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v30 = *(v6 + 8);
          if (v30)
          {
            applesauce::CF::convert_to<std::string,0>(v41, v30);
            v31 = v41;
            if (v42 < 0)
            {
              v31 = *v41;
            }

            buf[0] = 136315650;
            *&buf[1] = "IOAudio2_Device.cpp";
            v44 = 1024;
            v45 = 557;
            v46 = 2080;
            v47 = v31;
            v32 = v27;
            v33 = OS_LOG_TYPE_INFO;
            goto LABEL_42;
          }

LABEL_50:
          exception = __cxa_allocate_exception(0x10uLL);
          v37 = MEMORY[0x1E69E5288];
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], v37);
        }

        break;
      case 2:
        v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v20 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(v6 + 8);
          if (v28)
          {
            applesauce::CF::convert_to<std::string,0>(v41, v28);
            v29 = v41;
            if (v42 < 0)
            {
              v29 = *v41;
            }

            buf[0] = 136315650;
            *&buf[1] = "IOAudio2_Device.cpp";
            v44 = 1024;
            v45 = 557;
            v46 = 2080;
            v47 = v29;
            _os_log_debug_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_DEBUG, "%32s:%-5d Begin configuration change for device '%s'", buf, 0x1Cu);
            goto LABEL_43;
          }

          goto LABEL_50;
        }

        break;
      case 1:
        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(v6 + 8);
          if (v34)
          {
            applesauce::CF::convert_to<std::string,0>(v41, v34);
            v35 = v41;
            if (v42 < 0)
            {
              v35 = *v41;
            }

            buf[0] = 136315650;
            *&buf[1] = "IOAudio2_Device.cpp";
            v44 = 1024;
            v45 = 557;
            v46 = 2080;
            v47 = v35;
            v32 = v19;
            v33 = OS_LOG_TYPE_DEFAULT;
LABEL_42:
            _os_log_impl(&dword_1DE1F9000, v32, v33, "%32s:%-5d Begin configuration change for device '%s'", buf, 0x1Cu);
LABEL_43:
            if (v42 < 0)
            {
              operator delete(*v41);
            }

            break;
          }

          goto LABEL_50;
        }

        break;
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    kdebug_trace();
    operator new();
  }
}

void sub_1DE3850E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0,std::allocator<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26Device34handle_driver_configuration_changeERK20IOAudio2NotificationE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0,std::allocator<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v95 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if (!is_valid)
  {
    v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v65 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
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
      *buf = 136315650;
      *&buf[4] = "IOAudio2_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 564;
      *&buf[18] = 2080;
      *&buf[20] = "expiration_check.is_valid()";
      _os_log_error_impl(&dword_1DE1F9000, v68, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", buf, 0x1Cu);
    }

    abort();
  }

  AMCP::IOAudio2::Device::get_device_connection(buf, **(v2 + 376));
  v4 = *buf;
  if (!*buf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone>(*buf, 3u, *(a1 + 48), 0x20uLL);
  IOConnectRelease(v4);
  v5 = *(v2 + 360);
  if (!v5)
  {
    v73 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v73, "cannot create io_object_proxy from null io_object");
    __cxa_throw(v73, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::iokit::get_properties(buf, v5);
  v6 = *(v2 + 464);
  v7 = *buf;
  *(v2 + 464) = *buf;
  *buf = v6;
  if (v6)
  {
    CFRelease(v6);
    v7 = *(v2 + 464);
  }

  if (!v7)
  {
    v74 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v74);
    __cxa_throw(v74, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *buf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v85, v7, @"input streams", buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  AMCP::IOAudio2::Stream::create_from_dictionary_list(v84, v2, 1, &v85);
  v8 = *(v2 + 464);
  if (!v8)
  {
    v75 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v75, "Could not construct");
    __cxa_throw(v75, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *buf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v83, v8, @"output streams", buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  AMCP::IOAudio2::Stream::create_from_dictionary_list(v82, v2, 0, &v83);
  _ZNSt3__16invokeB8ne200100IRZZN4AMCP8IOAudio26Device34handle_driver_configuration_changeERK20IOAudio2NotificationENK3__0clEvEUlRT_E_JRNS_5tupleIJRNS_6vectorINS_10shared_ptrINS2_6StreamEEENS_9allocatorISG_EEEESK_EEEEEENS_13invoke_resultIS8_JDpT0_EE4typeEOS8_DpOSO_(v2, v2 + 472, v82);
  _ZNSt3__16invokeB8ne200100IRZZN4AMCP8IOAudio26Device34handle_driver_configuration_changeERK20IOAudio2NotificationENK3__0clEvEUlRT_E_JRNS_5tupleIJRNS_6vectorINS_10shared_ptrINS2_6StreamEEENS_9allocatorISG_EEEESK_EEEEEENS_13invoke_resultIS8_JDpT0_EE4typeEOS8_DpOSO_(v2, v2 + 496, v84);
  v9 = *(v2 + 464);
  if (!v9)
  {
    v76 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v76, "Could not construct");
    __cxa_throw(v76, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *buf = 0;
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&v81, v9, @"controls", buf);
  if (*buf)
  {
    CFRelease(*buf);
  }

  AMCP::IOAudio2::Control::create_from_dictionary_list(&v79, v2, &v81);
  cf = 0uLL;
  *&__p = 0;
  v11 = v79;
  v10 = v80;
  while (1)
  {
    v86[0] = v11;
    if (v11 == v10)
    {
      break;
    }

    v12 = *(v2 + 520);
    v13 = *(v2 + 528);
    if (v12 != v13)
    {
      while (*(*v12 + 36) != *(*v11 + 36))
      {
        v12 += 16;
        if (v12 == v13)
        {
          goto LABEL_22;
        }
      }
    }

    if (v12 == v13)
    {
LABEL_22:
      std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](&cf, v86);
      v10 = v80;
    }

    v11 += 16;
  }

  v87 = 0;
  v14 = 0uLL;
  *v86 = 0u;
  v15 = *(v2 + 520);
  theArray = v15;
  v77 = v2;
  v16 = *(v2 + 528);
  if (v15 == v16)
  {
    v18 = 0;
  }

  else
  {
    do
    {
      v17 = v79;
      if (v79 != v80)
      {
        while (*(*v17 + 36) != *(*v15 + 36))
        {
          v17 = (v17 + 16);
          if (v17 == v80)
          {
            v17 = v80;
            break;
          }
        }
      }

      if (v17 == v16)
      {
        std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](v86, &theArray);
        v16 = v77[66];
      }

      v15 = (v15 + 16);
      theArray = v15;
    }

    while (v15 != v16);
    v14 = *v86;
    v18 = v87;
  }

  v19 = (v77 + 65);
  *buf = cf;
  *&buf[24] = v14;
  *&buf[16] = __p;
  v94 = v18;
  v20 = v14;
  if (v14 != *(&v14 + 1))
  {
    v21 = v14;
    do
    {
      v22 = *v21++;
      v23 = *v22;
      AMCP::Core::Broker::destroy_core(*(*(**(*v22 + 24) + 32) + 16), *(*v22 + 32));
      *(v23 + 32) = 0;
    }

    while (v21 != *(&v20 + 1));
    v24 = v77[66];
    if (v77[65] != v24)
    {
      v25 = v77[65];
      while (2)
      {
        v26 = v20;
        while (*v25 != **v26)
        {
          if (++v26 == *(&v20 + 1))
          {
            goto LABEL_44;
          }
        }

        if (v26 != *(&v20 + 1))
        {
          if (v25 == v24 || (v27 = (v25 + 16), (v25 + 16) == v24))
          {
            v16 = v25;
          }

          else
          {
            v16 = v25;
            do
            {
              v28 = v27;
              v29 = *&buf[24];
              v30 = *(v25 + 2);
              while (v29 != *&buf[32])
              {
                if (v30 == **v29)
                {
                  if (*&buf[32] != v29)
                  {
                    goto LABEL_58;
                  }

                  break;
                }

                ++v29;
              }

              v31 = *(v25 + 3);
              *v27 = 0;
              v27[1] = 0;
              v32 = *(v16 + 1);
              *v16 = v30;
              *(v16 + 1) = v31;
              if (v32)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v32);
              }

              v16 = (v16 + 16);
LABEL_58:
              v27 = v28 + 2;
              v25 = v28;
            }

            while (v28 + 2 != v24);
            v24 = v77[66];
          }

          goto LABEL_61;
        }

LABEL_44:
        v25 = (v25 + 16);
        if (v25 != v24)
        {
          continue;
        }

        goto LABEL_68;
      }
    }

    v16 = v77[65];
LABEL_61:
    if (v16 == v24)
    {
LABEL_68:
      v16 = v24;
      goto LABEL_69;
    }

    while (v24 != v16)
    {
      v33 = *(v24 - 1);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      v24 = (v24 - 16);
    }

    v77[66] = v16;
  }

LABEL_69:
  v34 = *&buf[8];
  v35 = *buf;
  if (*buf != *&buf[8])
  {
    v36 = v77;
    do
    {
      v37 = *v35;
      v38 = v36[67];
      if (v16 >= v38)
      {
        v39 = (v16 - *v19) >> 4;
        if ((v39 + 1) >> 60)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v40 = v38 - *v19;
        v41 = v40 >> 3;
        if (v40 >> 3 <= (v39 + 1))
        {
          v41 = v39 + 1;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF0)
        {
          v42 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        v90 = v77 + 65;
        if (v42)
        {
          std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v42);
        }

        v43 = (16 * v39);
        *v43 = *v37;
        v16 = (16 * v39 + 16);
        *v37 = 0;
        *(v37 + 8) = 0;
        v36 = v77;
        v44 = v77[65];
        v45 = v77[66] - v44;
        v46 = (v43 - v45);
        memcpy(v43 - v45, v44, v45);
        v47 = v77[65];
        v77[65] = v46;
        v77[66] = v16;
        v48 = v77[67];
        v77[67] = 0;
        *&__p = v47;
        *(&__p + 1) = v48;
        *&cf = v47;
        *(&cf + 1) = v47;
        std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(&cf);
      }

      else
      {
        *v16 = *v37;
        v16 = (v16 + 16);
        *v37 = 0;
        *(v37 + 8) = 0;
        v36 = v77;
      }

      v36[66] = v16;
      ++v35;
    }

    while (v35 != v34);
  }

  for (i = *v19; i != v16; i += 2)
  {
    v50 = v77[58];
    if (!v50)
    {
      goto LABEL_139;
    }

    v51 = *i;
    v52 = *(*i + 36);
    *&cf = 0;
    applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(&theArray, v50, @"controls", &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v53 = theArray;
    if (!theArray)
    {
LABEL_139:
      v71 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v71, "Could not construct");
      __cxa_throw(v71, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (CFArrayGetCount(theArray))
    {
      Count = CFArrayGetCount(v53);
      v55 = CFArrayGetCount(v53);
      if (Count)
      {
        v56 = v55;
        v57 = 0;
        while (v56 != v57)
        {
          applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v78, v53, v57);
          if (!v78)
          {
            goto LABEL_138;
          }

          LODWORD(cf) = 0;
          v86[0] = CFNumberCreate(0, kCFNumberIntType, &cf);
          if (!v86[0])
          {
            v69 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v69, "Could not construct");
            __cxa_throw(v69, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&cf, v78, @"control ID", v86);
          v58 = cf;
          if (!cf)
          {
LABEL_138:
            v70 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v70, "Could not construct");
            __cxa_throw(v70, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v59 = applesauce::CF::convert_to<unsigned int,0>(cf);
          CFRelease(v58);
          if (v86[0])
          {
            CFRelease(v86[0]);
          }

          if (v59 == v52)
          {
            goto LABEL_102;
          }

          if (v78)
          {
            CFRelease(v78);
          }

          if (Count == ++v57)
          {
            break;
          }
        }
      }
    }

    v78 = 0;
LABEL_102:
    CFRelease(v53);
    v60 = *(v51 + 40);
    *(v51 + 40) = v78;
    v78 = v60;
    v61 = *(v51 + 32);
    if (!v61)
    {
      AMCP::IOAudio2::Control::build_core(v51);
    }

    AMCP::Core::Broker::fetch_core(&theArray, *(*(**(v51 + 24) + 32) + 16), v61);
    v62 = theArray;
    if (theArray)
    {
      cf = 0u;
      __p = 0u;
      LODWORD(v90) = 1065353216;
      AMCP::IOAudio2::Control::update_value(v51, &cf);
      AMCP::IOAudio2::Control::update_range(v51, &cf);
      v86[0] = v62 + 48;
      LOBYTE(v86[1]) = 1;
      caulk::concurrent::shared_spin_lock::lock(v62 + 12);
      for (j = __p; j; j = *j)
      {
        std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>(v62 + 2, (j[4] + 40), j + 4);
      }

      caulk::concurrent::shared_spin_lock::unlock(v62 + 12);
      v86[0] = 0x676C6F626F776E72;
      LODWORD(v86[1]) = 0;
      *(v62 + 1) = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v62, v86, &AMCP::k_object_id_unknown);
      std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(__p);
      v64 = cf;
      *&cf = 0;
      if (v64)
      {
        operator delete(v64);
      }
    }

    if (v92)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v92);
    }

    if (v78)
    {
      CFRelease(v78);
    }
  }

  AMCP::Core::Broker::fetch_core(&theArray, *(*(*v77 + 4) + 16), *(v77 + 4));
  if (theArray)
  {
    cf = 0u;
    __p = 0u;
    LODWORD(v90) = 1065353216;
    AMCP::IOAudio2::Device::update_core_common(v77, &cf);
  }

  if (v92)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v92);
  }

  if (*&buf[24])
  {
    operator delete(*&buf[24]);
  }

  if (*buf)
  {
    operator delete(*buf);
  }

  *buf = &v79;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v81)
  {
    CFRelease(v81);
  }

  *buf = v82;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v83)
  {
    CFRelease(v83);
  }

  *buf = v84;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v85)
  {
    CFRelease(v85);
  }
}

void sub_1DE385D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va3, a13);
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  va_copy(va2, va1);
  v19 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v21 = va_arg(va3, void);
  v23 = va_arg(va3, void);
  v24 = va_arg(va3, void);
  *(v13 - 176) = va;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100]((v13 - 176));
  applesauce::CF::ArrayRef::~ArrayRef(va1);
  *(v13 - 176) = va2;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100]((v13 - 176));
  applesauce::CF::ArrayRef::~ArrayRef(va3);
  _Unwind_Resume(a1);
}

void _ZNSt3__16invokeB8ne200100IRZZN4AMCP8IOAudio26Device34handle_driver_configuration_changeERK20IOAudio2NotificationENK3__0clEvEUlRT_E_JRNS_5tupleIJRNS_6vectorINS_10shared_ptrINS2_6StreamEEENS_9allocatorISG_EEEESK_EEEEEENS_13invoke_resultIS8_JDpT0_EE4typeEOS8_DpOSO_(uint64_t a1, uint64_t a2, char **a3)
{
  theArray[0] = 0;
  theArray[1] = 0;
  v84[0] = 0;
  v7 = *a3;
  v6 = a3[1];
  while (1)
  {
    cf[0] = v7;
    if (v7 == v6)
    {
      break;
    }

    v8 = *a2;
    v9 = *(a2 + 8);
    if (*a2 != v9)
    {
      while (*(*v8 + 36) != *(*v7 + 36))
      {
        v8 += 16;
        if (v8 == v9)
        {
          goto LABEL_8;
        }
      }
    }

    if (v8 == v9)
    {
LABEL_8:
      std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](theArray, cf);
      v6 = a3[1];
    }

    v7 += 16;
  }

  *&v81 = 0;
  v10 = 0uLL;
  *cf = 0u;
  v12 = *(a2 + 8);
  v86 = *a2;
  v11 = v86;
  if (v86 != v12)
  {
    do
    {
      v13 = *a3;
      v14 = a3[1];
      if (*a3 != v14)
      {
        while (*(*v13 + 36) != *(*v11 + 36))
        {
          v13 += 16;
          if (v13 == v14)
          {
            v13 = a3[1];
            break;
          }
        }
      }

      if (v13 == v12)
      {
        std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](cf, &v86);
        v12 = *(a2 + 8);
      }

      v11 += 16;
      v86 = v11;
    }

    while (v11 != v12);
    v10 = *cf;
  }

  *v78 = *theArray;
  *__p = v10;
  v15 = v10;
  v76 = a1;
  if (v10 != *(&v10 + 1))
  {
    v16 = v10;
    do
    {
      v17 = *v16++;
      v18 = *v17;
      AMCP::Core::Broker::destroy_core(*(*(**(*v17 + 24) + 32) + 16), *(*v17 + 32));
      *(v18 + 32) = 0;
    }

    while (v16 != *(&v15 + 1));
    v19 = *(a2 + 8);
    if (*a2 != v19)
    {
      v20 = *a2;
      a1 = v76;
      while (2)
      {
        v21 = v15;
        while (*v20 != **v21)
        {
          if (++v21 == *(&v15 + 1))
          {
            goto LABEL_29;
          }
        }

        if (v21 != *(&v15 + 1))
        {
          if (v20 == v19 || (v22 = v20 + 16, v20 + 16 == v19))
          {
            v12 = v20;
          }

          else
          {
            v12 = v20;
            do
            {
              v23 = v22;
              v24 = __p[0];
              v25 = *(v20 + 2);
              while (v24 != __p[1])
              {
                if (v25 == **v24)
                {
                  if (__p[1] != v24)
                  {
                    goto LABEL_43;
                  }

                  break;
                }

                ++v24;
              }

              v26 = *(v20 + 3);
              *v22 = 0;
              v22[1] = 0;
              v27 = *(v12 + 1);
              *v12 = v25;
              *(v12 + 1) = v26;
              if (v27)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v27);
              }

              v12 += 16;
LABEL_43:
              v22 = v23 + 2;
              v20 = v23;
            }

            while (v23 + 2 != v19);
            v19 = *(a2 + 8);
          }

          goto LABEL_46;
        }

LABEL_29:
        v20 += 16;
        if (v20 != v19)
        {
          continue;
        }

        goto LABEL_53;
      }
    }

    v12 = *a2;
    a1 = v76;
LABEL_46:
    if (v12 == v19)
    {
LABEL_53:
      v12 = v19;
      goto LABEL_54;
    }

    while (v19 != v12)
    {
      v28 = *(v19 - 1);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v19 -= 16;
    }

    *(a2 + 8) = v12;
  }

LABEL_54:
  v29 = v78[0];
  if (v78[0] != v78[1])
  {
    do
    {
      v30 = *v29;
      v32 = *a2;
      v31 = *(a2 + 8);
      v33 = **v29;
      v34 = &v31[-*a2];
      if (v31 == *a2)
      {
        v36 = *(a2 + 8);
      }

      else
      {
        v35 = v34 >> 4;
        v36 = *a2;
        do
        {
          v37 = v35 >> 1;
          v38 = &v36[16 * (v35 >> 1)];
          v40 = *v38;
          v39 = v38 + 16;
          v35 += ~(v35 >> 1);
          if (*(v40 + 52) < *(v33 + 52))
          {
            v36 = v39;
          }

          else
          {
            v35 = v37;
          }
        }

        while (v35);
      }

      v41 = *(a2 + 16);
      if (v31 >= v41)
      {
        v46 = (v34 >> 4) + 1;
        if (v46 >> 60)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v47 = v41 - v32;
        v48 = (v41 - v32) >> 3;
        if (v48 > v46)
        {
          v46 = v48;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v46;
        }

        v82 = a2;
        if (v49)
        {
          std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v49);
        }

        v50 = v36 - v32;
        v51 = (v36 - v32) >> 4;
        v52 = (16 * v51);
        cf[0] = 0;
        cf[1] = (16 * v51);
        v81 = (16 * v51);
        if (!v51)
        {
          if (v50 < 1)
          {
            if (v36 == v32)
            {
              v59 = 1;
            }

            else
            {
              v59 = v50 >> 3;
            }

            v85 = v82;
            std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v59);
          }

          v52 = (v52 - (((v50 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
          cf[1] = v52;
          *&v81 = v52;
        }

        *v52 = *v30;
        *v30 = 0;
        v30[1] = 0;
        *&v81 = v81 + 16;
        memcpy(v81, v36, *(a2 + 8) - v36);
        v60 = *a2;
        v61 = cf[1];
        *&v81 = v81 + *(a2 + 8) - v36;
        *(a2 + 8) = v36;
        v62 = v36 - v60;
        v63 = &v61[-(v36 - v60)];
        memcpy(v63, v60, v62);
        v64 = *a2;
        *a2 = v63;
        v65 = *(a2 + 16);
        *(a2 + 8) = v81;
        *&v81 = v64;
        *(&v81 + 1) = v65;
        cf[0] = v64;
        cf[1] = v64;
        std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(cf);
      }

      else if (v36 == v31)
      {
        *v31 = v33;
        *(v31 + 1) = v30[1];
        *v30 = 0;
        v30[1] = 0;
        *(a2 + 8) = v31 + 16;
      }

      else
      {
        v42 = v30[1];
        *v30 = 0;
        v30[1] = 0;
        v43 = *(a2 + 8);
        v44 = v43 - 16;
        if (v43 < 0x10)
        {
          v45 = *(a2 + 8);
        }

        else
        {
          *v43 = *v44;
          v45 = v43 + 16;
          *v44 = 0;
          *(v43 - 1) = 0;
        }

        *(a2 + 8) = v45;
        if (v43 != v36 + 16)
        {
          v53 = (v43 - 8);
          v54 = v36 - v43 + 16;
          v55 = v43 - 32;
          do
          {
            v56 = *v55;
            *v55 = 0;
            *(v55 + 1) = 0;
            v57 = *v53;
            *(v53 - 1) = v56;
            if (v57)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v57);
            }

            v53 -= 2;
            v55 -= 16;
            v54 += 16;
          }

          while (v54);
        }

        v58 = *(v36 + 1);
        *v36 = v33;
        *(v36 + 1) = v42;
        a1 = v76;
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }
      }

      ++v29;
    }

    while (v29 != v78[1]);
    v12 = *(a2 + 8);
  }

  v66 = *a2;
  if (*a2 != v12)
  {
    while (1)
    {
      v67 = *v66;
      v68 = *(*v66 + 36);
      v77 = 0;
      v69 = *(a1 + 464);
      if (!v69)
      {
        break;
      }

      cf[0] = 0;
      applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(theArray, v69, @"input streams", cf);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v70 = theArray[0];
      if (!theArray[0])
      {
        break;
      }

      if (CFArrayGetCount(theArray[0]) && (AMCP::IOAudio2::Stream::find_stream_dictionary_by_driver_id(cf, theArray, v68), (v77 = cf[0]) != 0))
      {
        v71 = v70;
      }

      else
      {
        v72 = *(a1 + 464);
        if (!v72)
        {
          break;
        }

        v86 = 0;
        applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(cf, v72, @"output streams", &v86);
        v71 = cf[0];
        theArray[0] = cf[0];
        cf[0] = v70;
        CFRelease(v70);
        if (v86)
        {
          CFRelease(v86);
        }

        if (!v71)
        {
          break;
        }

        if (CFArrayGetCount(v71))
        {
          AMCP::IOAudio2::Stream::find_stream_dictionary_by_driver_id(cf, theArray, v68);
          v77 = cf[0];
        }
      }

      CFRelease(v71);
      v73 = *(v67 + 40);
      *(v67 + 40) = v77;
      v74 = *(v67 + 32);
      if (!v74)
      {
        AMCP::IOAudio2::Stream::build_core(v67);
      }

      AMCP::Core::Broker::fetch_core(&v86, *(*(**(v67 + 24) + 32) + 16), v74);
      if (v86)
      {
        *theArray = 0u;
        *v84 = 0u;
        LODWORD(v85) = 1065353216;
        AMCP::IOAudio2::Device::get_device_connection(cf, **(*(v67 + 24) + 376));
        AMCP::IOAudio2::update_stream_core(theArray, cf, (v67 + 40), *(v67 + 36));
      }

      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v87);
      }

      if (v73)
      {
        CFRelease(v73);
      }

      v66 += 16;
      if (v66 == v12)
      {
        goto LABEL_117;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_117:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v78[0])
  {
    operator delete(v78[0]);
  }
}

void sub_1DE38681C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, io_connect_t connect, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(&connect);
  std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(&a12);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0,std::allocator<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0,std::allocator<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5969C88;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0,std::allocator<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5969C88;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0,std::allocator<AMCP::IOAudio2::Device::handle_driver_configuration_change(IOAudio2Notification const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5969C88;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1,std::allocator<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5969888;
  a2[1] = v2;
  return result;
}

uint64_t applesauce::iokit::io_service_notifications::notification_callback_(uint64_t this, void *a2, int a3, uint64_t a4, void *a5)
{
  if (this)
  {
    v7 = a3;
    v6 = a4;
    v5 = *(this + 40);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v5 + 48))(v5, &v7, &v6, a4, a5);
  }

  return this;
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0,std::allocator<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0>,void ()(unsigned int,void *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26DeviceC1ERNS0_6DriverERKN10applesauce5iokit16io_object_holderENS4_2CF13DictionaryRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0,std::allocator<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0>,void ()(unsigned int,void *)>::operator()(uint64_t result, _DWORD *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*a2 == -536870896)
  {
    v2 = *(result + 8);
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    if (v3 != v4)
    {
      while (*v3 != *(result + 16))
      {
        if (++v3 == v4)
        {
          return result;
        }
      }
    }

    v5 = v3;
    if (v3 != v4)
    {
      operator new();
    }
  }

  return result;
}

void sub_1DE386D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v14 - 72);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE386D54);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0,std::allocator<AMCP::IOAudio2::Device::Device(AMCP::IOAudio2::Driver &,applesauce::iokit::io_object_holder const&,applesauce::CF::DictionaryRef)::$_0>,void ()(unsigned int,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5969808;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t AMCP::DAL::Resampler2_Resampler::get_latency(AMCP::DAL::Resampler2_Resampler *this)
{
  v1 = **(this + 12);
  if ((*(v1 + 112) | 2) != 2)
  {
    return 0;
  }

  v2 = 0.5;
  if (*(v1 + 108) != 1818848869)
  {
    v2 = *(v1 + 160) + *(*(v1 + 48) + 20);
  }

  return (v2 / *(v1 + 88));
}

uint64_t AMCP::DAL::Resampler2_Resampler::get_expected_output_samples_for_input_samples(Resampler2 ***this, unsigned int a2, unint64_t *a3)
{
  v5 = 100 * a2;
  v6 = a2;
  Resampler2::PreFlight(*this[12], &v6, &v5);
  result = v5;
  *a3 = v6;
  return result;
}

uint64_t AMCP::DAL::Resampler2_Resampler::get_required_input_samples_for_output_samples(Resampler2 ***this, unsigned int a2)
{
  v4 = a2;
  v3 = 100 * a2;
  Resampler2::PreFlight(*this[12], &v3, &v4);
  return v3;
}

double AMCP::DAL::Resampler2_Resampler::process(uint64_t a1, void *a2, uint64_t ***a3, void *a4, double a5, double a6, double a7)
{
  v96 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == *(a1 + 104))
  {
    v50 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v50 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *__p = 136315650;
      *&__p[4] = "Resampler2_Resampler.cpp";
      v88 = 1024;
      v89 = 47;
      v90 = 2080;
      v91 = "not (not m_resamplers.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v53, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v77);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v80, "", v62);
    std::logic_error::logic_error(&v76, &v80);
    v76.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v81, &v76);
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = -1;
    v81.__vftable = &unk_1F5991430;
    v82 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v81);
    *&v93[2] = "virtual Sample_Time_Range AMCP::DAL::Resampler2_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v94 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Resampler2_Resampler.cpp";
    v95 = 47;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v79);
  }

  if (*a2 == a2[1])
  {
    v54 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v54 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *__p = 136315650;
      *&__p[4] = "Resampler2_Resampler.cpp";
      v88 = 1024;
      v89 = 48;
      v90 = 2080;
      v91 = "not (not source.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v57, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v77);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v80, "", v63);
    std::logic_error::logic_error(&v76, &v80);
    v76.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v81, &v76);
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = -1;
    v81.__vftable = &unk_1F5991430;
    v82 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v81);
    *&v93[2] = "virtual Sample_Time_Range AMCP::DAL::Resampler2_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v94 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Resampler2_Resampler.cpp";
    v95 = 48;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v79);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scale ratio");
  v14 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a4, __p);
  if (v14)
  {
    v15 = AMCP::Thing::convert_to<double>((v14 + 5));
  }

  else
  {
    v15 = 1.0;
  }

  if (SBYTE3(v91) < 0)
  {
    operator delete(*__p);
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
      Resampler2::SetVarispeedRate(*v17, v15);
      if (*(a1 + 88) == 1)
      {
        *__p = v20;
        LODWORD(v81.__vftable) = 100 * v20;
        v21 = Resampler2::PreFlight(**(a1 + 96), __p, &v81);
        if (!LODWORD(v81.__vftable))
        {
          v40 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v40 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v21);
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
            *__p = 136315650;
            *&__p[4] = "Resampler2_Resampler.cpp";
            v88 = 1024;
            v89 = 60;
            v90 = 2080;
            v91 = "not (output_length > 0)";
            _os_log_error_impl(&dword_1DE1F9000, v43, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v77);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v80, "", v48);
          std::logic_error::logic_error(&v76, &v80);
          v76.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v81, &v76);
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v86 = -1;
          v81.__vftable = &unk_1F5991430;
          v82 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v81);
          *&v93[2] = "virtual Sample_Time_Range AMCP::DAL::Resampler2_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v94 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Resampler2_Resampler.cpp";
          v95 = 60;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v79);
        }

        v16 = LODWORD(v81.__vftable);
      }

      else
      {
        *__p = v19;
        LODWORD(v81.__vftable) = 100 * v19;
        v22 = Resampler2::PreFlight(**(a1 + 96), &v81, __p);
        v23 = LODWORD(v81.__vftable);
        if (vabdd_f64(LODWORD(v81.__vftable), a5) > 1.0)
        {
          v44 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v44 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v22);
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
            *__p = 136316162;
            *&__p[4] = "Resampler2_Resampler.cpp";
            v88 = 1024;
            v89 = 66;
            v90 = 2080;
            v91 = "not (std::abs(static_cast<double>(actual_input_consumed) - number_of_samples.get_double()) <= 1.0)";
            v92 = 2048;
            *v93 = v23;
            *&v93[8] = 2048;
            v94 = *&a5;
            _os_log_error_impl(&dword_1DE1F9000, v47, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s process failed: %llu < %f", __p, 0x30u);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v77);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v80, "process failed: %llu < %f", v49, v23, *&a5);
          std::logic_error::logic_error(&v76, &v80);
          v76.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v81, &v76);
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v86 = -1;
          v81.__vftable = &unk_1F5991430;
          v82 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v81);
          *&v93[2] = "virtual Sample_Time_Range AMCP::DAL::Resampler2_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
          v94 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Resampler2_Resampler.cpp";
          v95 = 66;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v79);
        }
      }

      ++v17;
    }

    while (v17 != v18);
  }

  v24 = *a3;
  AMCP::DAL::Container::get_container_data_ptr<AMCP::DAL::PCM_Data_Handler>(*a3);
  AMCP::DAL::PCM_Data_Handler::get_other_data<float>(&v80, v24, a6, a6 + v16);
  v26 = *a3;
  if (*a3)
  {
    if ((*(v26 + 20) & 0x20) != 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = *(v26 + 9);
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = a2[1] - *a2;
  if (v28 != v80.__r_.__value_.__l.__size_ - v80.__r_.__value_.__r.__words[0])
  {
    v58 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v58 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v25);
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
      *__p = 136315650;
      *&__p[4] = "Resampler2_Resampler.cpp";
      v88 = 1024;
      v89 = 75;
      v90 = 2080;
      v91 = "not (stream_count == dest.size())";
      _os_log_error_impl(&dword_1DE1F9000, v61, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v78);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v79, "", v72);
    std::logic_error::logic_error(&v77, &v79);
    v77.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v81, &v77);
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = -1;
    v81.__vftable = &unk_1F5991430;
    v82 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v81);
    *&v93[2] = "virtual Sample_Time_Range AMCP::DAL::Resampler2_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
    v94 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Resampler2_Resampler.cpp";
    v95 = 75;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v76);
  }

  if ((*(a1 + 60) & 0x20) != 0)
  {
    if (v27 != 1)
    {
      v64 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v64 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v25);
      }

      v66 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v65 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
        v67 = *v66;
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }

      else
      {
        v67 = *v66;
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "Resampler2_Resampler.cpp";
        v88 = 1024;
        v89 = 108;
        v90 = 2080;
        v91 = "not (number_of_channels == 1)";
        _os_log_error_impl(&dword_1DE1F9000, v67, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v78);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v79, "", v73);
      std::logic_error::logic_error(&v77, &v79);
      v77.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v81, &v77);
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = -1;
      v81.__vftable = &unk_1F5991430;
      v82 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v81);
      *&v93[2] = "virtual Sample_Time_Range AMCP::DAL::Resampler2_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
      v94 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Resampler2_Resampler.cpp";
      v95 = 108;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v76);
    }

    v34 = v28 >> 4;
    if (v26)
    {
      if ((*(v26 + 20) & 0x20) != 0)
      {
        v35 = *(v26 + 9);
      }

      else
      {
        v35 = 1;
      }
    }

    else
    {
      v35 = 1;
    }

    if (v34 != v35)
    {
      v68 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v68 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v25);
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
        *__p = 136315650;
        *&__p[4] = "Resampler2_Resampler.cpp";
        v88 = 1024;
        v89 = 109;
        v90 = 2080;
        v91 = "not (stream_count == dest_container.get_format().GetNumberChannelStreams())";
        _os_log_error_impl(&dword_1DE1F9000, v71, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v78);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v79, "", v74);
      std::logic_error::logic_error(&v77, &v79);
      v77.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v81, &v77);
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = -1;
      v81.__vftable = &unk_1F5991430;
      v82 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v81);
      *&v93[2] = "virtual Sample_Time_Range AMCP::DAL::Resampler2_Resampler::process(const Sample_Group<float> &, Sample_Time, Container, Sample_Time_Range, const DAL_Settings &)";
      v94 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Resampler2_Resampler.cpp";
      v95 = 109;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v76);
    }

    *__p = vcvtmd_s64_f64(a5);
    LODWORD(v81.__vftable) = vcvtmd_s64_f64(v16);
    if (v34 >= 2)
    {
      v36 = 0;
      v37 = 0;
      do
      {
        v38 = *(a1 + 96);
        if (v37 >= (*(a1 + 104) - v38) >> 3)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        Resampler2::PushConvert(*(v38 + 8 * v37++), *(*a2 + v36), *(*a2 + v36 + 16), *(v80.__r_.__value_.__r.__words[0] + v36), *(v80.__r_.__value_.__r.__words[0] + v36 + 16), __p, &v81, 1, 1u, v75);
        v36 += 32;
      }

      while (v34 >> 1 != v37);
    }

    if ((v28 & 0x10) != 0)
    {
      Resampler2::PushConvert(*(*(a1 + 104) - 8), *(*a2 + 16 * v34 - 16), 0, *(v80.__r_.__value_.__r.__words[0] + 16 * v34 - 16), 0, __p, &v81, 1, 1u, v75);
    }
  }

  else
  {
    if (v27 >= 2)
    {
      v29 = 0;
      v30 = 0;
      v31 = vcvtmd_s64_f64(a5);
      v32 = vcvtmd_s64_f64(v16);
      do
      {
        *__p = v31;
        LODWORD(v81.__vftable) = v32;
        v33 = *(a1 + 96);
        if (v30 >= (*(a1 + 104) - v33) >> 3)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        Resampler2::PushConvert(*(v33 + v29), (**a2 + v29), (**a2 + v29 + 4), (*v80.__r_.__value_.__l.__data_ + v29), (*v80.__r_.__value_.__l.__data_ + v29 + 4), __p, &v81, v27, v27, v75);
        ++v30;
        v29 += 8;
      }

      while (8 * (v27 >> 1) != v29);
    }

    if (v27)
    {
      *__p = vcvtmd_s64_f64(a5);
      LODWORD(v81.__vftable) = vcvtmd_s64_f64(v16);
      Resampler2::PushConvert(*(*(a1 + 104) - 8), (**a2 + 4 * (v27 - 1)), 0, (*v80.__r_.__value_.__l.__data_ + 4 * (v27 - 1)), 0, __p, &v81, v27, v27, v75);
    }
  }

  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100](&v80);
  return a6;
}

void sub_1DE388234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Resampler2_Resampler::~Resampler2_Resampler(AMCP::DAL::Resampler2_Resampler *this, unsigned int a2)
{
  AMCP::DAL::Resampler2_Resampler::~Resampler2_Resampler(this, a2);

  JUMPOUT(0x1E12C1730);
}

{
  Resampler2::ShutdownVarispeedMode(*(this + 30));
  v3 = (this + 96);
  std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<Resampler2>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

Resampler2 **std::unique_ptr<Resampler2>::~unique_ptr[abi:ne200100](Resampler2 **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Resampler2::~Resampler2(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

uint64_t AMCP::Thing::convert_to<AMCP::Resampler_Quality>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    (v3)(3, a1, 0, &v17);
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

  v14 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>();
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

void sub_1DE388694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

__objc2_meth_list *AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>()
{
  v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
  {
    v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    if (v2)
    {
      v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    }
  }

  return v0[51].class_meths;
}

uint64_t HALS_IOStreamInfo::write_to_engine(HALS_IOStreamInfo *this, uint64_t a2)
{
  if (!*(this + 27) || ((v4 = *(this + 14), *(this + 15) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v4 = (this + 456);
  }

  v6 = *v4;
  result = (*(**v4 + 16))(*v4);
  if (result)
  {
    if (*(v6 + 832) == 1)
    {
      v8 = *(this + 6);
      v9 = *(v6 + 752);
      v10 = *(this + 2);
      v11 = 0;
      v12 = v8;
      v13 = v9;
      return (*(*v6 + 88))(v6, a2, *(this + 3));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t HALS_IOStreamInfo::write_to_hosted_dsp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HostedDSP_StreamProcessor::StreamProcessInfo::StreamProcessInfo(&v11, 1869968496, a2, a1, a3);
  if (v11 != 1869968496)
  {
    return 0;
  }

  v3 = *(v13 + 112);
  v4 = *(v13 + 120);
  if (v3 == v4)
  {
    return 0;
  }

  result = 0;
  do
  {
    v6 = *v3;
    if (*v3)
    {
      if (*(v6 + 832) == 1)
      {
        v7 = *(v3 + 6);
        v8 = *(v6 + 752);
        v14 = v3[2];
        v15 = 0;
        v16 = v7;
        v17 = v8;
        v9 = *(v6 + 88);
        v10 = (*(*v12 + 80))(v12);
        result = (*(*v9 + 824))(v9, v10, *(v3 + 24), v17, *v3, &v14);
      }
    }

    v3 += 16;
  }

  while (v3 != v4);
  return result;
}

void HALS_IOStreamInfo::~HALS_IOStreamInfo(HALS_IOStreamInfo *this)
{
  HALS_IOStreamInfo::~HALS_IOStreamInfo(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59910A0;
  v2 = *(this + 51);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 49);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 38);
  if (v4)
  {
    *(this + 39) = v4;
    operator delete(v4);
  }

  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  if (*(this + 264) == 1)
  {
    v6 = *(this + 30);
    if (v6)
    {
      *(this + 31) = v6;
      operator delete(v6);
    }
  }

  v7 = *(this + 27);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 25);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 22));
  v9 = *(this + 17);
  if (v9)
  {
    *(this + 18) = v9;
    operator delete(v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    *(this + 15) = v10;
    operator delete(v10);
  }

  v11 = *(this + 9);
  if (v11)
  {
    *(this + 10) = v11;
    operator delete(v11);
  }
}

void non-virtual thunk toHALS_IOUADriver::~HALS_IOUADriver(HALS_IOUADriver *this)
{
  HALS_IOUADriver::~HALS_IOUADriver((this - 336));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_IOUADriver::~HALS_IOUADriver((this - 336));
}

void HALS_IOUADriver::~HALS_IOUADriver(HALS_IOUADriver *this)
{
  *this = &unk_1F5969D70;
  v2 = (this + 336);
  *(this + 42) = &unk_1F5969EA8;
  v3 = *(this + 100);
  if (v3)
  {
    *(this + 101) = v3;
    operator delete(v3);
  }

  v4 = *(this + 97);
  if (v4)
  {
    *(this + 98) = v4;
    operator delete(v4);
  }

  v5 = *(this + 94);
  if (v5)
  {
    *(this + 95) = v5;
    operator delete(v5);
  }

  v6 = *(this + 93);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 400));
  v8 = *(this + 49);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  HALS_IOUAObject::~HALS_IOUAObject(v2, v7);
  *this = &unk_1F597A098;
  CACFString::~CACFString((this + 48));

  HALS_Object::~HALS_Object(this);
}

{
  HALS_IOUADriver::~HALS_IOUADriver(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOUADriver::_CopyDeviceList(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 752);
  for (i = *(a1 + 760); v2 != i; ++v2)
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

void HALS_IOUADriver::_CopyIODeviceList(void *a1, HALS_Object *a2)
{
  v4 = a1[97];
  v5 = a1[98];
  while (v4 != v5)
  {
    HALS_ObjectMap::RetainObject(*v4, a2);
    v6 = *v4++;
    v10 = v6;
    std::vector<HALS_Device *>::push_back[abi:ne200100](a2, &v10);
  }

  v7 = a1[94];
  v8 = a1[95];
  while (v7 != v8)
  {
    HALS_ObjectMap::RetainObject(*v7, a2);
    v9 = *v7++;
    v10 = v9;
    std::vector<HALS_Device *>::push_back[abi:ne200100](a2, &v10);
  }
}

void HALS_IOUADriver::_CopyClockDeviceList(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 776);
  for (i = *(a1 + 784); v2 != i; ++v2)
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

void HALS_IOUADriver::_CopyBoxList(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 800);
  for (i = *(a1 + 808); v2 != i; ++v2)
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

void HALS_IOUADriver::SetPropertyData(HALS_IOUADriver *this, HALS_Client *a2, const AudioObjectPropertyAddress *a3, unsigned int a4, const AudioObjectPropertyAddress *a5, unsigned int a6, CFTypeRef *a7, HALS_Client *a8)
{
  if (HALS_DeviceManager::HasProperty(this, a2, a3, a8))
  {
    HALS_Object::SetPropertyData(this, a2, a3, v14, v15, v16, v17, a8);
  }

  HALS_IOUAObject::SetPropertyData((this + 336), &a3->mSelector, a5, a7, v15, v16, v17, v18);
}

void HALS_IOUADriver::GetPropertyData(void *this, HALS_Client *a2, AudioObjectPropertyAddress *a3, unsigned int a4, AudioObjectPropertyAddress *a5, char *a6, unsigned int a7, void *a8, HALS_Client *a9)
{
  if (a3->mSelector == 1668641652)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((this[46] - this[45]) >> 2) >= a4 / 0xCuLL)
    {
      v13 = a4 / 0xCuLL;
    }

    else
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((this[46] - this[45]) >> 2);
    }

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = this[45];
        if (0xAAAAAAAAAAAAAAABLL * ((this[46] - v16) >> 2) > v15)
        {
          v17 = &a6[v14];
          v18 = (v16 + v14);
          v19 = *v18;
          *(v17 + 2) = *(v18 + 2);
          *v17 = v19;
        }

        ++v15;
        v14 += 12;
      }

      while (12 * v13 != v14);
    }

    a5->mSelector = 12 * v13;
  }

  else if (HALS_IOUAUCDriver::GetHasProperty(*(this[92] + 4), a3, 1u))
  {
    v27 = a4;
    HALS_IOUAUCDriver::GetPropertyData(*(this[92] + 4), a3, 1u, a8, a7, a6, &v27);
    a5->mSelector = v27;
  }

  else if (HALS_DeviceManager::HasProperty(this, a2, a3, a9))
  {

    HALS_DeviceManager::GetPropertyData(this, a2, a3, a4, &a5->mSelector, a6, a7, a8, a9);
  }

  else
  {

    HALS_IOUAObject::GetPropertyData((this + 42), &a3->mSelector, a5, a6, a8, v24, v25, v26, a9);
  }
}

uint64_t HALS_IOUADriver::GetPropertyDataSize(HALS_IOUADriver *this, HALS_Client *a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, HALS_Client *a6)
{
  if (a3->mSelector == 1668641652)
  {
    return (*(this + 92) - *(this + 90)) & 0xFFFFFFFC;
  }

  if (HALS_DeviceManager::HasProperty(this, a2, a3, a6))
  {

    return HALS_DeviceManager::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
  }

  else
  {

    return HALS_IOUAObject::GetPropertyDataSize((this + 336), a3, v13, v14, v15, v16);
  }
}

uint64_t HALS_IOUADriver::IsPropertySettable(HALS_IOUADriver *this, HALS_Client *a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (a3->mSelector == 1668641652)
  {
    return 0;
  }

  if (HALS_DeviceManager::HasProperty(this, a2, a3, a4))
  {

    return HALS_DeviceManager::IsPropertySettable(this, a2, a3);
  }

  else
  {

    return HALS_IOUAObject::IsPropertySettable((this + 336), a3, v8, v9);
  }
}

uint64_t HALS_IOUADriver::HasProperty(HALS_IOUADriver *this, HALS_Client *a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (a3->mSelector == 1668641652)
  {
    return *(this + 46) != *(this + 45);
  }

  if (HALS_DeviceManager::HasProperty(this, a2, a3, a4))
  {
    return 1;
  }

  v6 = *(*(this + 42) + 16);

  return v6();
}

uint64_t HALS_IOUADriver::GetMIGDispatchQueue(HALS_IOUADriver *this)
{
  return this + 400;
}

{
  return this + 400;
}

uint64_t HALS_IOUADriver::GetCommandGate(HALS_IOUADriver *this)
{
  return *(this + 48);
}

{
  return *(this + 48);
}

void HALS_IOUADriver::Activate(HALS_IOUADriver *this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(this + 92);
  v3 = IOServiceOpen(*v2, *MEMORY[0x1E69E9A60], 0x43417564u, (v2 + 4));
  if (!v3)
  {
    v4 = IOConnectCallMethod(*(v2 + 4), 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (!v4)
    {
      *&reference_4[4] = HALS_IOUAUCDriver::properties_changed_callback;
      *&reference_4[12] = v2;
      v5 = *(v2 + 4);
      MachPort = IONotificationPortGetMachPort(*(v2 + 344));
      v7 = IOConnectCallAsyncMethod(v5, 2u, MachPort, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
      v8 = v7;
      if (!v7)
      {
        *&reference_4[4] = HALS_IOUAUCDriver::request_config_change_callback;
        *&reference_4[12] = v2;
        v9 = *(v2 + 4);
        v10 = IONotificationPortGetMachPort(*(v2 + 688));
        v11 = IOConnectCallAsyncMethod(v9, 3u, v10, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
        v13 = v11;
        if (!v11)
        {
          HALS_Object::Activate(this, v12);
          (*(*(this + 42) + 24))();
          HALS_IOUADriver::RebuildDeviceList(v41, this);
        }

        v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v28 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
          *v41 = 136315906;
          *&v41[4] = "HALS_IOUAUCDriver.cpp";
          v42 = 1024;
          *v43 = 74;
          *&v43[4] = 2080;
          *&v43[6] = "ret != kIOReturnSuccess";
          *&v43[14] = 1024;
          *&v43[16] = v13;
          _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to set request config change async callback %d", v41, 0x22u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v34, "Failed to set request config change async callback");
        std::runtime_error::runtime_error(v35, &v34);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        *v35 = &unk_1F5992170;
        *&v35[16] = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v41, v35);
        *&v43[18] = "void HALS_IOUAUCDriver::Activate()";
        v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
        v45 = 74;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
      }

      v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v24 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
        *v41 = 136315906;
        *&v41[4] = "HALS_IOUAUCDriver.cpp";
        v42 = 1024;
        *v43 = 64;
        *&v43[4] = 2080;
        *&v43[6] = "ret != kIOReturnSuccess";
        *&v43[14] = 1024;
        *&v43[16] = v8;
        _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to set properties changed async callback %d", v41, 0x22u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v34, "Failed to set properties changed async callback");
      std::runtime_error::runtime_error(v35, &v34);
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = -1;
      *v35 = &unk_1F5992170;
      *&v35[16] = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v41, v35);
      *&v43[18] = "void HALS_IOUAUCDriver::Activate()";
      v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
      v45 = 64;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
    }

    v19 = v4;
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      reference = 136315906;
      *reference_4 = "HALS_IOUAUCDriver.cpp";
      *&reference_4[8] = 1024;
      *&reference_4[10] = 54;
      *&reference_4[14] = 2080;
      *&reference_4[16] = "ret != kIOReturnSuccess";
      v48 = 1024;
      *v49 = v19;
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to open connection %d", &reference, 0x22u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v32, "failed to open connection");
    std::runtime_error::runtime_error(v41, &v32);
    *&v43[10] = 0;
    *&v43[18] = 0;
    v44 = 0;
    v45 = -1;
    *v41 = &unk_1F5992170;
    *&v43[2] = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&reference, v41);
    *&v49[2] = "void HALS_IOUAUCDriver::Activate()";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
    v51 = 54;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v14 = v3;
  v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v15 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
    reference = 136315906;
    *reference_4 = "HALS_IOUAUCDriver.cpp";
    *&reference_4[8] = 1024;
    *&reference_4[10] = 49;
    *&reference_4[14] = 2080;
    *&reference_4[16] = "error";
    v48 = 1024;
    *v49 = v14;
    _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to open connection %d", &reference, 0x22u);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
  __cxa_allocate_exception(0x40uLL);
  std::runtime_error::runtime_error(&v32, "failed to open connection");
  std::runtime_error::runtime_error(v41, &v32);
  *&v43[10] = 0;
  *&v43[18] = 0;
  v44 = 0;
  v45 = -1;
  *v41 = &unk_1F5992170;
  *&v43[2] = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(&reference, v41);
  *&v49[2] = "void HALS_IOUAUCDriver::Activate()";
  v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAUCDriver.cpp";
  v51 = 49;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
}

void sub_1DE389EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::runtime_error a17, uint64_t a18, uint64_t a19, void *a20, void *__p, uint64_t a22, uint64_t a23, std::runtime_error a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v29 = *(v27 - 128);
  if (v29)
  {
    operator delete(v29);
  }

  v30 = *(v27 - 192);
  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUADriver::RebuildDeviceList(HALS_IOUADriver *this, HALS_DeviceManager *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = *(a2 + 92);
  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v3 + 4), "#vedbolg", 1u, 0, 0);
  std::vector<unsigned int>::vector[abi:ne200100](__p, PropertySize >> 2);
  v7 = __p[1] - __p[0];
  HALS_IOUAUCDriver::GetPropertyData(*(v3 + 4), "#vedbolg", 1u, 0, 0, __p[0], &v7);
  memset(v5, 0, sizeof(v5));
  HALS_DeviceManager::CopyDeviceList(a2, v5, 1, 0);
  operator new[]();
}

void sub_1DE38A620(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  MEMORY[0x1E12C1700](v15, 0x1000C8052888210, a3, a4, a5, a6, a7, a8);
  MEMORY[0x1E12C1700](v17, 0x1000C8052888210);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&a11, v19);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  v20 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void HALS_IOUADriver::RebuildClockDeviceList(HALS_IOUADriver *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = *(this + 92);
  v4 = *(this + 93);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v3 + 4), "#klcbolg", 1u, 0, 0);
  std::vector<unsigned int>::vector[abi:ne200100](&v35, PropertySize >> 2);
  *buf = v36 - v35;
  HALS_IOUAUCDriver::GetPropertyData(*(v3 + 4), "#klcbolg", 1u, 0, 0, v35, buf);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  HALS_DeviceManager::CopyClockDeviceList(this, &v32);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v7 = v35;
  v8 = v36;
  while (v7 != v8)
  {
    v9 = v32;
    if (v32 == v33)
    {
LABEL_10:
      std::vector<unsigned int>::push_back[abi:ne200100](&v29, v7);
    }

    else
    {
      while (*(*v9 + 11) != *v7)
      {
        if (++v9 == v33)
        {
          goto LABEL_10;
        }
      }
    }

    ++v7;
  }

  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  v10 = v32;
  v11 = v33;
  if (v32 != v33)
  {
    do
    {
      v12 = v35;
      if (v35 == v36)
      {
LABEL_16:
        *buf = *(*v10 + 11);
        std::vector<unsigned int>::push_back[abi:ne200100](__p, buf);
      }

      else
      {
        while (*(*v10 + 11) != *v12)
        {
          if (++v12 == v36)
          {
            goto LABEL_16;
          }
        }
      }

      ++v10;
    }

    while (v10 != v11);
    v13 = __p[1];
    v14 = __p[0];
    if (__p[0] != __p[1])
    {
      v1 = 1;
      do
      {
        v15 = HALS_IOUADriver::CopyObjectByUCID(this, *v14);
        v17 = v15;
        if (v15)
        {
          v18 = *(this + 40);
          v19 = v15[4];
          v20 = v15[7];
          v21 = (*(*v15 + 208))(v15);
          HALS_System::ClockDeviceDied(v18, v19, v20, v21);
          (*(*v17 + 8))(v17);
          HALS_IOUADriver::RemoveClockDevice(this, v17);
        }

        HALS_ObjectMap::ReleaseObject(v17, v16);
        ++v14;
      }

      while (v14 != v13);
    }
  }

  v23 = v29;
  v22 = v30;
  if (v29 != v30)
  {
    do
    {
      v25 = HALS_ObjectMap::CopyObjectByObjectID(*v23);
      if (!v25)
      {
        *&v39 = *v23;
        *(&v39 + 1) = 0x676C6F6275696420;
        HALS_IOUAUCDriver::get_string_property(&cf, *(this + 92), v39, (v1 & 0xFFFFFFFF00000000), 0, 0);
        operator new();
      }

      HALS_ObjectMap::ReleaseObject(v25, v24);
      ++v23;
    }

    while (v23 != v22);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v32, v6);
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_1DE38B0F0(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&a33, a2);
  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

void HALS_IOUADriver::RebuildBoxList(HALS_IOUADriver *this)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = 0;
  v2 = *(this + 92);
  v3 = *(this + 93);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v2 + 4), "#xobbolg", 1u, 0, 0);
  std::vector<unsigned int>::vector[abi:ne200100](&v10, PropertySize >> 2);
  v14 = v11 - v10;
  HALS_IOUAUCDriver::GetPropertyData(*(v2 + 4), "#xobbolg", 1u, 0, 0, v10, &v14);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1174405120;
  v6[2] = ___ZN15HALS_IOUADriver14RebuildBoxListEv_block_invoke;
  v6[3] = &unk_1F5969ED0;
  v6[4] = v12;
  v6[5] = this;
  v8 = 0;
  v9 = 0;
  __p = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v10, v11, (v11 - v10) >> 2);
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  _Block_object_dispose(v12, 8);
}

void sub_1DE38B338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v20 - 72), 8);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_IOUADriver14RebuildBoxListEv_block_invoke(void *a1)
{
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  while (v3 != v4)
  {
    v5 = v2[100];
    v6 = v2[101];
    if (v5 == v6)
    {
LABEL_6:
      std::vector<unsigned int>::push_back[abi:ne200100](v28, v3);
    }

    else
    {
      while (*(*v5 + 44) != *v3)
      {
        v5 += 8;
        if (v5 == v6)
        {
          goto LABEL_6;
        }
      }
    }

    ++v3;
  }

  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  v7 = v2[100];
  v8 = v2[101];
  if (v7 == v8)
  {
    v12 = 0;
    v13 = 0;
    v11 = *v28;
  }

  else
  {
    do
    {
      v9 = a1[6];
      v10 = a1[7];
      if (v9 == v10)
      {
LABEL_12:
        LODWORD(cf) = *(*v7 + 44);
        std::vector<unsigned int>::push_back[abi:ne200100](__p, &cf);
      }

      else
      {
        while (*(*v7 + 44) != *v9)
        {
          if (++v9 == v10)
          {
            goto LABEL_12;
          }
        }
      }

      v7 += 8;
    }

    while (v7 != v8);
    v11 = *v28;
    v12 = __p[1];
    v13 = __p[0];
    if (__p[0] == __p[1])
    {
      v12 = __p[0];
    }

    else
    {
      v14 = v2[101];
      v15 = __p[0];
      v23 = *v28;
      do
      {
        v16 = v2[100];
        if (v16 != v14)
        {
          while (*(*v16 + 11) != *v13)
          {
            if (++v16 == v14)
            {
              goto LABEL_24;
            }
          }
        }

        if (v16 != v14)
        {
          (*(**v16 + 8))();
          HALS_ObjectMap::ReleaseObject(*v16, v17);
          v18 = v2[101];
          v19 = v18 - (v16 + 1);
          if (v18 != v16 + 1)
          {
            memmove(v16, v16 + 1, v18 - (v16 + 1));
          }

          v14 = (v16 + v19);
          v2[101] = v16 + v19;
          v11 = v23;
        }

LABEL_24:
        ++v13;
      }

      while (v13 != v12);
      v13 = v15;
    }
  }

  v20 = *(&v11 + 1);
  v24 = v11;
  if (v11 != *(&v11 + 1))
  {
    *&v30 = *v11;
    *(&v30 + 1) = 0x676C6F6262756964;
    HALS_IOUAUCDriver::get_string_property(&cf, v2[92], v30, 0, 0, 0);
    operator new();
  }

  if (v13)
  {
    __p[1] = v13;
    operator delete(v13);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  v22 = v20 != v24 || v12 != v13;
  *(*(a1[4] + 8) + 24) = v22;
}

void sub_1DE38B8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  applesauce::CF::StringRef::~StringRef(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_IOUADriver::CopyObjectByUCID(HALS_IOUADriver *this, int a2)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  HALS_DeviceManager::CopyDeviceList(this, &v32, 1, 0);
  v4 = v32;
  v5 = v33;
  while (v4 != v5)
  {
    v6 = *v4;
    if (*(*v4 + 368) == a2)
    {
      HALS_ObjectMap::RetainObject(*v4, v3);
      v14 = v6;
      goto LABEL_42;
    }

    v7 = 0;
    v8 = 1;
    do
    {
      NumberStreams = HALS_IODevice::GetNumberStreams(v6, v7 & 1);
      if (NumberStreams)
      {
        v10 = 1;
        do
        {
          v11 = HALS_IODevice::CopyStreamByIndex(v6, v7 & 1, v10 - 1);
          v13 = v11;
          if (v11 && *(v11 + 22) == a2)
          {
            HALS_ObjectMap::RetainObject(v11, v12);
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          HALS_ObjectMap::ReleaseObject(v13, v12);
          if (v14)
          {
            break;
          }

          v15 = v10++ >= NumberStreams;
        }

        while (!v15);
      }

      else
      {
        v14 = 0;
      }

      v16 = (v14 == 0) & v8;
      v7 = 1;
      v8 = 0;
    }

    while ((v16 & 1) != 0);
    if (v14)
    {
      goto LABEL_42;
    }

    v17 = (*(*v6 + 632))(v6);
    if (v17)
    {
      v18 = 1;
      do
      {
        v19 = (*(*v6 + 640))(v6, v18 - 1);
        v21 = v19;
        if (v19 && *(v19 + 22) == a2)
        {
          HALS_ObjectMap::RetainObject(v19, v20);
          v14 = v21;
        }

        else
        {
          v14 = 0;
        }

        HALS_ObjectMap::ReleaseObject(v21, v20);
        if (v14)
        {
          break;
        }

        v15 = v18++ >= v17;
      }

      while (!v15);
      if (v14)
      {
        goto LABEL_42;
      }
    }

    ++v4;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  HALS_DeviceManager::CopyClockDeviceList(this, &v29);
  for (i = v29; i != v30; ++i)
  {
    v14 = *i;
    if (*(*i + 98) == a2)
    {
      HALS_ObjectMap::RetainObject(*i, v22);
      HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v29, v26);
      goto LABEL_42;
    }
  }

  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v29, v22);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  HALS_DeviceManager::CopyBoxList(this, &v29, 0);
  for (j = v29; ; ++j)
  {
    if (j == v30)
    {
      v14 = 0;
      goto LABEL_41;
    }

    v14 = *j;
    if (*(*j + 90) == a2)
    {
      break;
    }
  }

  HALS_ObjectMap::RetainObject(*j, v24);
LABEL_41:
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v29, v24);
LABEL_42:
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v32, v3);
  return v14;
}

void sub_1DE38BBD0(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, HALS_ObjectMap **);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(va, a2);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va1, v6);
  _Unwind_Resume(a1);
}

void HALS_IOUADriver::RemoveClockDevice(HALS_IOUADriver *this, HALS_IOUAClockDevice *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN15HALS_IOUADriver17RemoveClockDeviceEP20HALS_IOUAClockDevice_block_invoke;
  v3[3] = &__block_descriptor_tmp_9_3729;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void ___ZN15HALS_IOUADriver14AddClockDeviceEP20HALS_IOUAClockDevice_block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v5 = HALS_IOUADriver::_CopyClockDeviceByUCID(v2, v3[98]);
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = (*(*v3 + 224))(v3);
      v20 = 136315394;
      v21 = "_AddClockDevice";
      v22 = 2082;
      v23 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: HALS_PlugInManager::_AddClockDevice: there is already a clcok device with the UID, %{public}s\n", &v20, 0x16u);
    }

    v7 = 1852797029;
  }

  else
  {
    v8 = *(v2 + 98);
    v9 = *(v2 + 99);
    if (v8 >= v9)
    {
      v11 = *(v2 + 97);
      v12 = v8 - v11;
      v13 = (v8 - v11) >> 3;
      v14 = v13 + 1;
      if ((v13 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v15 = v9 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (!(v16 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = (v8 - v11) >> 3;
      v18 = (8 * v13);
      v19 = (8 * v13 - 8 * v17);
      *v18 = v3;
      v10 = v18 + 1;
      memcpy(v19, v11, v12);
      *(v2 + 97) = v19;
      *(v2 + 98) = v10;
      *(v2 + 99) = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v8 = v3;
      v10 = v8 + 8;
    }

    v7 = 0;
    *(v2 + 98) = v10;
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
  *(*(a1[4] + 8) + 24) = v7;
}

void sub_1DE38BEE8(_Unwind_Exception *exception_object, HALS_Object *a2)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(v2, a2);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE38BE94);
  }

  _Unwind_Resume(exception_object);
}

HALS_ObjectMap *HALS_IOUADriver::_CopyClockDeviceByUCID(HALS_IOUADriver *this, int a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  HALS_DeviceManager::CopyClockDeviceList(this, &v10);
  v4 = v10;
  if (v10 == v11)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (*(v7 + 98) == a2)
      {
        v5 = v6;
      }
    }

    while (v4 != v11);
  }

  HALS_ObjectMap::RetainObject(v5, v3);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v10, v8);
  return v5;
}

void sub_1DE38BFB8(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(va, a2);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_IOUADriver17RemoveClockDeviceEP20HALS_IOUAClockDevice_block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  v3 = *(v2 + 776);
  v4 = *(v2 + 784);
  if (v3 != v4)
  {
    while (*v3 != v1)
    {
      if (++v3 == v4)
      {
        v3 = *(v2 + 784);
        break;
      }
    }
  }

  if (v4 != v3)
  {
    v5 = v3 + 1;
    v6 = v4 - (v3 + 1);
    if (v4 != v3 + 1)
    {
      memmove(v3, v5, v4 - (v3 + 1));
    }

    *(v2 + 784) = v3 + v6;

    HALS_ObjectMap::ReleaseObject(v1, v5);
  }
}

uint64_t HALS_IOUADriver::CopyDeviceByUCID(HALS_IOUADriver *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN15HALS_IOUADriver16CopyDeviceByUCIDEj_block_invoke;
  v5[3] = &unk_1E8673D90;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void HALS_IOUADriver::RemoveDevice(HALS_IOUADriver *this, HALS_IOUADevice *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN15HALS_IOUADriver12RemoveDeviceEP15HALS_IOUADevice_block_invoke;
  v3[3] = &__block_descriptor_tmp_6_3732;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void ___ZN15HALS_IOUADriver9AddDeviceEP15HALS_IOUADevice_block_invoke(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v4 = (*(*v3 + 208))(v3);
  v5 = HALS_DeviceManager::CopyDeviceByUID(v2, v4, 0);
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = (*(*v3 + 224))(v3);
      v21 = 136315394;
      v22 = "_AddDevice";
      v23 = 2082;
      v24 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: HALS_PlugInManager::_AddDevice: there is already a device with the UID, %{public}s\n", &v21, 0x16u);
    }

    HALS_ObjectMap::ReleaseObject(v5, v6);
    v8 = 1852797029;
  }

  else
  {
    v9 = *(v2 + 95);
    v10 = *(v2 + 96);
    if (v9 >= v10)
    {
      v12 = *(v2 + 94);
      v13 = v9 - v12;
      v14 = (v9 - v12) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v16 = v10 - v12;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = (v9 - v12) >> 3;
      v19 = (8 * v14);
      v20 = (8 * v14 - 8 * v18);
      *v19 = v3;
      v11 = v19 + 1;
      memcpy(v20, v12, v13);
      *(v2 + 94) = v20;
      *(v2 + 95) = v11;
      *(v2 + 96) = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v9 = v3;
      v11 = v9 + 8;
    }

    v8 = 0;
    *(v2 + 95) = v11;
  }

  *(*(a1[4] + 8) + 24) = v8;
}

void sub_1DE38C414(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE38C3C0);
  }

  _Unwind_Resume(a1);
}

void ___ZN15HALS_IOUADriver12RemoveDeviceEP15HALS_IOUADevice_block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  v3 = *(v2 + 752);
  v4 = *(v2 + 760);
  if (v3 != v4)
  {
    while (*v3 != v1)
    {
      if (++v3 == v4)
      {
        v3 = *(v2 + 760);
        break;
      }
    }
  }

  if (v4 != v3)
  {
    v5 = v3 + 1;
    v6 = v4 - (v3 + 1);
    if (v4 != v3 + 1)
    {
      memmove(v3, v5, v4 - (v3 + 1));
    }

    *(v2 + 760) = v3 + v6;

    HALS_ObjectMap::ReleaseObject(v1, v5);
  }
}

void ___ZN15HALS_IOUADriver16CopyDeviceByUCIDEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  HALS_DeviceManager::CopyDeviceList(v2, &v10, 1, 0);
  v5 = v10;
  if (v10 == v11)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v8 = *v5++;
      v7 = v8;
      if (*(v8 + 368) == v3)
      {
        v6 = v7;
      }
    }

    while (v5 != v11);
  }

  HALS_ObjectMap::RetainObject(v6, v4);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v10, v9);
  *(*(*(a1 + 32) + 8) + 24) = v6;
}

void sub_1DE38C574(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, a2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::vector<AudioObjectPropertyAddress> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned long long,unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_1,std::allocator<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_1>,void ()(unsigned int,unsigned long long,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN15HALS_IOUADriverC1EP11HALS_SystemN10applesauce5iokit16io_object_holderEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_1,std::allocator<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_1>,void ()(unsigned int,unsigned long long,unsigned long long)>::operator()(uint64_t a1, unsigned int *a2, uint64_t *a3, unint64_t *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 8);
  v8 = HALS_IOUADriver::CopyDeviceByUCID(v7, *a2);
  v9 = v8;
  if (v8)
  {
    if ((*(*v8 + 40))(v8))
    {
      *buf = v5;
      *&buf[8] = v6;
      buf[16] = 1;
      v10 = HALS_IOUADevice::HandleConfigurationChangeRequest(v9, buf, 0);
      if (v10)
      {
        v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v12 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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
          *&buf[4] = "HALS_IOUADriver.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1117;
          v42 = 2080;
          v43 = "config_change_error != kIOReturnSuccess";
          _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to handle config change", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v33, "Failed to handle config change");
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        *&v45[2] = "void HALS_IOUADriver::HandleConfigurationChangeRequest(AudioObjectID, uint64_t, uint64_t, BOOL)";
        v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUADriver.cpp";
        v47 = 1117;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
      }
    }

    else
    {
      v24 = *(v7 + 92);
      v25 = *(v7 + 93);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        HALS_IOUAUCDriver::abort_configuration_change(*(v24 + 4), v4, v6, v6);
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      else
      {
        HALS_IOUAUCDriver::abort_configuration_change(*(v24 + 4), v4, v6, v6);
      }
    }
  }

  else
  {
    v16 = HALS_IOUADriver::CopyClockDeviceByUCID(v7, v4);
    v17 = v16;
    if (!v16)
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
        *buf = 136315906;
        *&buf[4] = "HALS_IOUADriver.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1130;
        v42 = 2080;
        v43 = "!theClockDevice.IsValid()";
        v44 = 1024;
        *v45 = v4;
        _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s can't find device with object ID %u", buf, 0x22u);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v33, "Can't find device with that object ID");
      std::runtime_error::runtime_error(&v34, &v33);
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = -1;
      v34.__vftable = &unk_1F5992170;
      v35 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
      *&v45[2] = "void HALS_IOUADriver::HandleConfigurationChangeRequest(AudioObjectID, uint64_t, uint64_t, BOOL)";
      v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUADriver.cpp";
      v47 = 1130;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
    }

    if ((*(*v16 + 40))(v16))
    {
      *buf = v5;
      *&buf[8] = v6;
      buf[16] = 1;
      v18 = HALS_IOUAClockDevice::HandleConfigurationChangeRequest(v17, buf, 0);
      if (v18)
      {
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
          *&buf[4] = "HALS_IOUADriver.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1139;
          v42 = 2080;
          v43 = "config_change_error != kIOReturnSuccess";
          _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to handle config change", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v33, "Failed to handle config change");
        std::runtime_error::runtime_error(&v34, &v33);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = -1;
        v34.__vftable = &unk_1F5992170;
        v35 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v34);
        *&v45[2] = "void HALS_IOUADriver::HandleConfigurationChangeRequest(AudioObjectID, uint64_t, uint64_t, BOOL)";
        v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUADriver.cpp";
        v47 = 1139;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
      }
    }

    else
    {
      v26 = *(v7 + 92);
      v27 = *(v7 + 93);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        HALS_IOUAUCDriver::abort_configuration_change(*(v26 + 4), v4, v6, v6);
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      else
      {
        HALS_IOUAUCDriver::abort_configuration_change(*(v26 + 4), v4, v6, v6);
      }
    }

    HALS_ObjectMap::ReleaseObject(v17, v19);
  }

  HALS_ObjectMap::ReleaseObject(v9, v11);
}

void sub_1DE38CE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint8_t buf, int a30, int a31, __int16 a32)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE38CE94(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE38CE84);
  }

  JUMPOUT(0x1DE38CFD4);
}

void sub_1DE38CEA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, std::runtime_error a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
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

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a31);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a20);
    std::runtime_error::~runtime_error(&a19);
    if (v32)
    {
      __cxa_free_exception(v31);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a30);
    JUMPOUT(0x1DE38CFC4);
  }

  JUMPOUT(0x1DE38CE84);
}

void sub_1DE38CFB0(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int buf, int a30, int a31, __int16 a32)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(v36, a2);
    v39 = __cxa_begin_catch(a1);
    v40 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v40 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v39);
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
      buf = 136315394;
      *(v37 + 4) = "HALS_IOUADriver.cpp";
      a32 = 1024;
      *(v37 + 14) = 1150;
      _os_log_error_impl(&dword_1DE1F9000, v43, OS_LOG_TYPE_ERROR, "%32s:%-5d Caught exception handling config change request", &buf, 0x12u);
    }

    v44 = *(v35 + 736);
    v45 = *(v35 + 744);
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      HALS_IOUAUCDriver::abort_configuration_change(*(v44 + 4), v33, v34, v32);
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    else
    {
      HALS_IOUAUCDriver::abort_configuration_change(*(v44 + 4), v33, v34, v32);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE38C8E4);
  }

  JUMPOUT(0x1DE38CE84);
}

uint64_t HALS_IOUADriver::CopyClockDeviceByUCID(HALS_IOUADriver *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK15HALS_IOUADriver21CopyClockDeviceByUCIDEj_block_invoke;
  v5[3] = &unk_1E8673D68;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

HALS_ObjectMap *___ZNK15HALS_IOUADriver21CopyClockDeviceByUCIDEj_block_invoke(uint64_t a1)
{
  result = HALS_IOUADriver::_CopyClockDeviceByUCID(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t std::__function::__func<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_1,std::allocator<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_1>,void ()(unsigned int,unsigned long long,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596A028;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_0,std::allocator<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_0>,void ()(unsigned int,std::vector<AudioObjectPropertyAddress> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN15HALS_IOUADriverC1EP11HALS_SystemN10applesauce5iokit16io_object_holderEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_0,std::allocator<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_0>,void ()(unsigned int,std::vector<AudioObjectPropertyAddress> const&)>::operator()(uint64_t a1, int *a2, uint64_t a3)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(&v21, *a3, *(a3 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 2));
  v5 = v21;
  v4 = v22;
  if (v21 != v22)
  {
    {
LABEL_3:
      v5 = (v5 + 12);
      if (v5 == v4)
      {
        goto LABEL_9;
      }
    }

    while (1)
    {
      v4 = (v4 - 12);
      if (v4 == v5)
      {
        break;
      }

      {
        v11 = *(v5 + 2);
        v10 = *v5;
        v6 = *v4;
        *(v5 + 2) = *(v4 + 2);
        *v5 = v6;
        *(v4 + 2) = v11;
        *v4 = v10;
        goto LABEL_3;
      }
    }
  }

  v4 = v5;
LABEL_9:
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<std::__wrap_iter<AudioObjectPropertyAddress*>,std::__wrap_iter<AudioObjectPropertyAddress*>>(&v18, v21, v4, 0xAAAAAAAAAAAAAAABLL * ((v4 - v21) >> 2));
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<std::__wrap_iter<AudioObjectPropertyAddress*>,std::__wrap_iter<AudioObjectPropertyAddress*>>(&v15, v4, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v4) >> 2));
  memset(v24, 0, sizeof(v24));
  std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(v24, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 2));
  v25 = 0;
  v26[0] = 0;
  v26[1] = 0;
  std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(&v25, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 2));
  for (i = 0; i != 6; i += 3)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(&v12, v24[i], v24[i + 1], 0xAAAAAAAAAAAAAAABLL * ((v24[i + 1] - v24[i]) >> 2));
    if (v12 != v13)
    {
      operator new();
    }

    if (v12)
    {
      operator delete(v12);
    }
  }

  for (j = 0; j != -6; j -= 3)
  {
    v9 = v24[j + 3];
    if (v9)
    {
      v26[j] = v9;
      operator delete(v9);
    }
  }

  if (v15)
  {
    operator delete(v15);
  }

  if (v18)
  {
    operator delete(v18);
  }

  if (v21)
  {
    operator delete(v21);
  }
}

void sub_1DE38D7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28)
{
  v30 = *(v28 - 160);
  if (v30)
  {
    *(v28 - 152) = v30;
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void *HALS_IOUADriver::HandlePropertiesChange(unsigned int,std::vector<AudioObjectPropertyAddress> const&)::$_0::~$_0(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *std::unique_ptr<HALS_IOUADriver::HandlePropertiesChange(unsigned int,std::vector<AudioObjectPropertyAddress> const&)::$_0,std::default_delete<HALS_IOUADriver::HandlePropertiesChange(unsigned int,std::vector<AudioObjectPropertyAddress> const&)::$_0>>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      v2[5] = v3;
      operator delete(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C4023EB4E86);
  }

  return a1;
}

void *applesauce::dispatch::v1::async<HALS_IOUADriver::HandlePropertiesChange(unsigned int,std::vector<AudioObjectPropertyAddress> const&)::$_0 &>(dispatch_queue_s *,HALS_IOUADriver::HandlePropertiesChange(unsigned int,std::vector<AudioObjectPropertyAddress> const&)::$_0 &)::{lambda(void *)#1}::__invoke(unsigned int *a1, unsigned int a2)
{
  v3 = a1;
  HALS_IOUADriver::HandlePropertiesChange(unsigned int,std::vector<AudioObjectPropertyAddress> const&)::$_0::operator()(a1, a2);
  return std::unique_ptr<HALS_IOUADriver::HandlePropertiesChange(unsigned int,std::vector<AudioObjectPropertyAddress> const&)::$_0,std::default_delete<HALS_IOUADriver::HandlePropertiesChange(unsigned int,std::vector<AudioObjectPropertyAddress> const&)::$_0>>::~unique_ptr[abi:ne200100](&v3);
}

void sub_1DE38D9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<HALS_IOUADriver::HandlePropertiesChange(unsigned int,std::vector<AudioObjectPropertyAddress> const&)::$_0,std::default_delete<HALS_IOUADriver::HandlePropertiesChange(unsigned int,std::vector<AudioObjectPropertyAddress> const&)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_IOUADriver::HandlePropertiesChange(unsigned int,std::vector<AudioObjectPropertyAddress> const&)::$_0::operator()(unsigned int *a1, unsigned int a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*a1);
  v5 = v3;
  if (!v3)
  {
    goto LABEL_75;
  }

  v6 = *(a1 + 1);
  v7 = *v6;
  v8 = ((*(v6 + 8) - *v6) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v9 = (v8 >> 1) + (v8 >> 63);
  v10 = a1[6];
  if (v10 != 1)
  {
    v20 = HALS_IOUADriver::CopyObjectByUCID(v3, v10);
    v22 = v20;
    if (!v20)
    {
LABEL_74:
      HALS_ObjectMap::ReleaseObject(v22, v21);
      goto LABEL_75;
    }

    v23 = (*(*v20 + 40))(v20);
    if (!v23)
    {
      v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v33 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v23);
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

      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOUADriver.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 975;
        _os_log_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_INFO, "%32s:%-5d HALS_IOUADriver::HandlePropertiesChanged: the object is not active yet", buf, 0x12u);
      }

      goto LABEL_74;
    }

    v24 = v22[5];
    v25 = v22[6];
    if (v24 == v25 || v24 == 1633841016)
    {
      v27 = v24 == v25;
      if (v24 == 1633841016)
      {
        v27 = 0;
      }

      if (!v27)
      {
        goto LABEL_47;
      }
    }

    else if (v25 == 1633841016)
    {
LABEL_47:
      if (v9)
      {
        v37 = 0;
        v38 = v9;
        v39 = v7;
        do
        {
          mSelector = v39->mSelector;
          ++v39;
          v37 |= mSelector == 1668575852;
          --v38;
        }

        while (v38);
        if (v37)
        {
          HALS_IOUABox::UpdateControls(v22);
        }
      }

LABEL_91:
      HALS_Object::PropertiesChanged(v22, v22[4], 0, v9, v7);
      goto LABEL_74;
    }

    if (v24 <= 1701078389)
    {
      if (v24 == 1633773415)
      {
LABEL_64:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v41 = v22[4];
          *buf = 136315906;
          *&buf[4] = "HALS_IOUADevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1569;
          *&buf[18] = 1024;
          *&buf[20] = v41;
          *&buf[24] = 2080;
          *&buf[26] = v22 + 41;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOUADevice::HandlePropertiesChanged: Object: %d: %s", buf, 0x22u);
        }

        if (v9)
        {
          v42 = v9;
          p_mElement = &v7->mElement;
          v44 = MEMORY[0x1E69E9C10];
          v45.i32[1] = 0;
          do
          {
            v45.i32[0] = *(p_mElement - 2);
            v46 = vrev64_s16(*&vmovl_u8(v45));
            v47 = vuzp1_s8(v46, v46);
            v52 = v47.i32[0];
            v53 = 0;
            v47.i32[0] = *(p_mElement - 1);
            v48 = vrev64_s16(*&vmovl_u8(v47));
            v54 = vuzp1_s8(v48, v48).u32[0];
            v55 = 0;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v49 = *p_mElement;
              *buf = 136316162;
              *&buf[4] = "HALS_IOUADevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1574;
              *&buf[18] = 2080;
              *&buf[20] = &v52;
              *&buf[28] = 2080;
              *&buf[30] = &v54;
              v57 = 2048;
              v58 = v49;
              _os_log_impl(&dword_1DE1F9000, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d    '%s', '%s', %lu", buf, 0x30u);
            }

            p_mElement += 3;
            --v42;
          }

          while (v42);
          v50 = v9;
        }

        else
        {
          v50 = 0;
        }

        HALS_Object::PropertiesChanged(v22, v22[4], 0, v50, v7);
        goto LABEL_74;
      }

      v28 = 1633969526;
    }

    else
    {
      if (v24 == 1701078390 || v24 == 1701733488)
      {
        goto LABEL_64;
      }

      v28 = 1919182198;
    }

    if (v24 == v28)
    {
      goto LABEL_64;
    }

    if (v24 == v25)
    {
      if (v24 == 1634956402)
      {
LABEL_78:
        HALS_IOUAStream::HandlePropertiesChanged(v22, v9, v7);
        goto LABEL_74;
      }
    }

    else
    {
      if (v25 <= 1701078389)
      {
        if (v25 == 1633773415)
        {
          goto LABEL_64;
        }

        v51 = 1633969526;
      }

      else
      {
        if (v25 == 1701078390 || v25 == 1919182198)
        {
          goto LABEL_64;
        }

        v51 = 1701733488;
      }

      if (v25 == v51)
      {
        goto LABEL_64;
      }

      if (v24 == v25 || v24 == 1634956402 || v25 == 1634956402)
      {
        goto LABEL_78;
      }
    }

    if (!HALS_Object::IsSubClass(v22[5], v22[6], 1633907820) && !HALS_Object::IsSubClass(v24, v25, 1633905771))
    {
      goto LABEL_74;
    }

    goto LABEL_91;
  }

  v11 = (*(*v3 + 40))(v3);
  if (v11)
  {
    memset(buf, 0, 24);
    if (v9)
    {
      v12 = *(a1 + 4);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 5) - v12) >> 2) <= (v9 - 1))
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
LABEL_7:
      v17 = (v12 + 12 * v13);
      do
      {
        v19 = *v17;
        v17 += 3;
        v18 = v19;
        if (v19 == 1651472419)
        {
          v15 = 1;
        }

        else if (v18 == 1668049699)
        {
          v16 = 1;
        }

        else if (v18 == 1684370979)
        {
          ++v13;
          v14 = 1;
          if (v13 == v9)
          {
LABEL_41:
            HALS_IOUADriver::RebuildDeviceList(&v52, v5);
          }

          goto LABEL_7;
        }

        ++v13;
      }

      while (v9 != v13);
      if (v14)
      {
        goto LABEL_41;
      }

      if (v16)
      {
        HALS_IOUADriver::RebuildClockDeviceList(v5);
      }

      if (v15)
      {
        HALS_IOUADriver::RebuildBoxList(v5);
      }
    }

    HALS_Object::PropertiesChanged(v5, v5[4], 0, v9, v7);
  }

  else
  {
    v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v29 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOUADriver.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 935;
      _os_log_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_INFO, "%32s:%-5d HALS_IOUADriver::HandlePropertiesChanged: the object is not active yet", buf, 0x12u);
    }
  }

LABEL_75:
  HALS_ObjectMap::ReleaseObject(v5, v4);
}

void sub_1DE38E170(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HALS_ObjectMap::ReleaseObject(v17, a2);
  HALS_ObjectMap::ReleaseObject(v16, v19);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_0,std::allocator<HALS_IOUADriver::HALS_IOUADriver(HALS_System *,applesauce::iokit::io_object_holder)::$_0>,void ()(unsigned int,std::vector<AudioObjectPropertyAddress> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5969F98;
  a2[1] = v2;
  return result;
}

uint64_t std::__shared_ptr_emplace<HALS_IOUAUCDriver>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(unsigned int,unsigned long long,unsigned long long)>::~__value_func[abi:ne200100](a1 + 752);
  std::__function::__value_func<void ()(unsigned int,std::vector<AudioObjectPropertyAddress> const&)>::~__value_func[abi:ne200100](a1 + 720);
  IONotificationPortDestroy(*(a1 + 712));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a1 + 376));
  IONotificationPortDestroy(*(a1 + 368));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a1 + 32));
  result = *(a1 + 24);
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

void std::__shared_ptr_emplace<HALS_IOUAUCDriver>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5969F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void ___ZN15HALS_IOUADriver25RemoveAllDevicesAndNotifyEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v29 = 0;
  v30 = &v29;
  v31 = 0x4002000000;
  v32 = __Block_byref_object_copy__3758;
  v33 = __Block_byref_object_dispose__3759;
  memset(v34, 0, sizeof(v34));
  v2 = (*(*v1 + 7))(v1);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 0x40000000;
  v28[2] = ___ZN15HALS_IOUADriver17_RemoveAllDevicesEv_block_invoke;
  v28[3] = &unk_1E8673C90;
  v28[4] = &v29;
  v28[5] = v1;
  HALB_CommandGate::ExecuteCommand(v2, v28);
  v3 = v30[5];
  v4 = v30[6];
  while (v3 != v4)
  {
    if (*v3)
    {
      v6 = HALS_ObjectMap::CopyObjectByObjectID(*(*v3 + 16));
      if (v6)
      {
        HALS_System::DeviceDied(v1[40], v6);
        (*(*v6 + 464))(v6);
        (*(*v6 + 8))(v6);
        HALS_IOUADriver::RemoveDevice(v1, v6);
      }

      HALS_ObjectMap::ReleaseObject(v6, v5);
    }

    v3 += 8;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  HALS_DeviceManager::CopyClockDeviceList(v1, &v25);
  v7 = v25;
  v8 = v26;
  while (v7 != v8)
  {
    v9 = *v7;
    v10 = v1[40];
    v11 = *(*v7 + 4);
    v12 = *(*v7 + 7);
    v13 = (*(**v7 + 208))(*v7);
    HALS_System::ClockDeviceDied(v10, v11, v12, v13);
    (*(*v9 + 8))(v9);
    HALS_IOUADriver::RemoveClockDevice(v1, v9);
    ++v7;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  HALS_DeviceManager::CopyBoxList(v1, &v22, 0);
  v15 = v22;
  for (i = v23; v15 != i; ++v15)
  {
    v17 = *v15;
    (*(**v15 + 8))(*v15);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 0x40000000;
    v35[2] = ___ZN15HALS_IOUADriver9RemoveBoxEP12HALS_IOUABox_block_invoke;
    v35[3] = &__block_descriptor_tmp_8_3761;
    v35[4] = v1;
    v35[5] = v17;
    v18 = (*(*v1 + 8))(v1);
    HALB_CommandGate::ExecuteCommand(v18, v35);
  }

  HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v22, v14);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v25, v19);
  _Block_object_dispose(&v29, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(v34, v20);
  v21 = *(v1 + 4);
  v29 = 0x676C6F6264657623;
  LODWORD(v30) = 0;
  HALS_Object::PropertiesChanged(v1, v21, 0, 1, &v29);
  HALS_System::CheckForDefaultDeviceChanges(v1[40]);
}

void sub_1DE38E770(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, HALS_ObjectMap **);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(va, a2);
  _Block_object_dispose(va1, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList((v7 + 40), v9);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3758(void *a1, uint64_t a2)
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

void ___ZN15HALS_IOUADriver9RemoveBoxEP12HALS_IOUABox_block_invoke(void *result, HALS_Object *a2)
{
  v2 = result[4];
  v3 = *(v2 + 800);
  v4 = *(v2 + 808);
  if (v3 != v4)
  {
    while (*v3 != result[5])
    {
      if (++v3 == v4)
      {
        return;
      }
    }
  }

  if (v3 != v4)
  {
    HALS_ObjectMap::ReleaseObject(*v3, a2);
    v5 = *(v2 + 808);
    v6 = v5 - (v3 + 1);
    if (v5 != v3 + 1)
    {
      memmove(v3, v3 + 1, v5 - (v3 + 1));
    }

    *(v2 + 808) = v3 + v6;
  }
}

void *std::unique_ptr<CASettingsStorage>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      MEMORY[0x1E12C1700](*v2, 0x1000C8077774924);
    }

    v3 = v2[2];
    if (v3)
    {
      CFRelease(v3);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void sub_1DE38EC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CACFNumber::~CACFNumber(va);
  _Unwind_Resume(a1);
}

void ___ZNK20HALS_SettingsManager16CopySettingsKeysEjRjPPK10__CFString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  *v3 = 0;
  v5 = *(v2 + 24);
  if (v5)
  {
    CASettingsStorage::RefreshSettings(*(v2 + 24));
    CFDictionaryGetKeysAndValues(*(v5 + 16), v4, 0);
    *v3 = v1;
    if (v1)
    {
      v6 = 0;
      do
      {
        CFRetain(v4[v6++]);
      }

      while (v6 < *v3);
    }
  }
}

void sub_1DE38ECFC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](std::regex_traits<char> *a1, char *a2)
{
  v4 = std::regex_traits<char>::regex_traits(a1);
  v4[2].__ct_ = 0;
  *&v4[1].__col_ = 0u;
  *&v4[1].__loc_.__locale_ = 0u;
  v5 = strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(a1, a2, &a2[v5]);
}

void sub_1DE38ED94(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

void std::vector<std::basic_regex<char,std::regex_traits<char>>>::__destroy_vector::operator()[abi:ne200100](std::locale ***a1)
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
        locale = v4[-2].__locale_;
        if (locale)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](locale);
        }

        v4 -= 8;
        std::locale::~locale(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void HALS_SettingsManager::DeleteSetting(HALS_SettingsManager *this, const __CFString *a2)
{
  applesauce::CF::StringRef::from_get(&cf, a2);
  v3 = *(this + 2);
  std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v11, *this, *(this + 1));
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v13 = v4;
  v5 = atomic_load((v3 + 32));
  if (v5)
  {
    atomic_store(1u, (v3 + 33));
  }

  if (*(v3 + 328) != 1)
  {
    operator new();
  }

  v7 = v11;
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v9 = *(v3 + 320);
  v10 = *v3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN20HALS_SettingsManager13DeleteSettingEPK10__CFStringE3__0EEvOT__block_invoke;
  block[3] = &__block_descriptor_tmp_61;
  block[4] = v7;
  v16 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    CFRetain(v8);
  }

  v17 = v8;
  dispatch_group_async(v9, v10, block);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1DE38F0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<HALS_SettingsManager::DeleteSetting(__CFString const*)::$_0,std::default_delete<HALS_SettingsManager::DeleteSetting(__CFString const*)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x1E12C1730](v2, 0x60C40149E097CLL);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<HALS_SettingsManager::DeleteSetting(__CFString const*)::$_0 &>(dispatch_queue_s *,HALS_SettingsManager::DeleteSetting(__CFString const*)::$_0 &)::{lambda(void *)#1}::__invoke(const __CFString **a1)
{
  v2 = a1;
  HALS_SettingsManager::_DeleteSetting((*a1)->length, a1[2]);
  return std::unique_ptr<HALS_SettingsManager::DeleteSetting(__CFString const*)::$_0,std::default_delete<HALS_SettingsManager::DeleteSetting(__CFString const*)::$_0>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1DE38F168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<HALS_SettingsManager::DeleteSetting(__CFString const*)::$_0,std::default_delete<HALS_SettingsManager::DeleteSetting(__CFString const*)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_SettingsManager::_DeleteSetting(CFMutableDictionaryRef *this, const __CFString *a2)
{
  if (this)
  {
    CASettingsStorage::RefreshSettings(this);
    CFDictionaryRemoveValue(this[2], a2);
    CASettingsStorage::SaveSettings(this);
  }
}

void sub_1DE38F1BC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void __destroy_helper_block_e8_32c63_ZTSZN20HALS_SettingsManager13DeleteSettingEPK10__CFStringE3__0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_e8_32c63_ZTSZN20HALS_SettingsManager13DeleteSettingEPK10__CFStringE3__0(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 40);
  result[4] = *(a2 + 32);
  result[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    result = CFRetain(*(a2 + 48));
  }

  v2[6] = v4;
  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = a4[6];
  v6 = a4[1] - *a4;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v8 = *a1;
  v9 = a1[1];
  v10 = v9;
  v11 = v9 - *a1;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  v13 = v7 - v12;
  if (v7 <= v12)
  {
    if (v7 < v12)
    {
      v10 = v8 + v6;
      a1[1] = v8 + v6;
    }
  }

  else
  {
    v14 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v9) >> 3) < v13)
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v14 - v8) >> 3) > v7)
        {
          v7 = 0x5555555555555556 * ((v14 - v8) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v14 - v8) >> 3) >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v7;
        }

        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v16 = 8 * (v6 >> 3) - 8 * (v11 >> 3);
    do
    {
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      v10 += 24;
      v16 -= 24;
    }

    while (v16);
    a1[1] = v9 + 24 * v13;
    v10 = v9 + 24 * v13;
  }

  v17 = *a1;
  if (v10 == *a1)
  {
    v20 = a2 - v5;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = a2 - v5;
    v22 = *a4;
    v21 = a4[1];
    do
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 3);
      v24 = (v22 + v18);
      if (v23 <= v19)
      {
        v25 = a4 + 3;
      }

      else
      {
        v25 = v24;
      }

      *(v17 + v18) = v20 + *v25;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v19)
      {
        v26 = a4 + 3;
      }

      else
      {
        v26 = (*a4 + v18);
      }

      *(*a1 + v18 + 8) = v20 + v26[1];
      v22 = *a4;
      v21 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v21 - *a4) >> 3) <= v19)
      {
        v27 = a4 + 3;
      }

      else
      {
        v27 = (*a4 + v18);
      }

      v28 = *(v27 + 16);
      v17 = *a1;
      v29 = a1[1];
      *(*a1 + v18 + 16) = v28;
      ++v19;
      v18 += 24;
    }

    while (v19 < 0xAAAAAAAAAAAAAAABLL * ((v29 - v17) >> 3));
  }

  a1[3] = a3;
  a1[4] = a3;
  *(a1 + 40) = 0;
  v30 = v20 + a4[6];
  a1[6] = v30;
  a1[7] = v20 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  a1[9] = v20 + a4[9];
  a1[10] = v20 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[13] = v30;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v123, 0, 48);
    v61 = *(a1 + 40);
    if (!v61)
    {
LABEL_186:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v123);
      return v61;
    }

    *v127 = 0;
    memset(&v127[8], 0, 32);
    v128 = 0uLL;
    memset(v129, 0, 37);
    std::deque<std::__state<char>>::push_back(v123, v127);
    if (v129[0])
    {
      operator delete(v129[0]);
    }

    if (*&v127[32])
    {
      operator delete(*&v127[32]);
    }

    v118 = a4;
    v62 = *&v123[8];
    v63 = *&v123[40] + *&v123[32] - 1;
    v64 = v63 / 0x2A;
    v65 = *(*&v123[8] + 8 * (v63 / 0x2A));
    v66 = 3 * (v63 % 0x2A);
    v67 = v65 + 32 * v66;
    *v67 = 0;
    *(v67 + 8) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 16) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v62 + 8 * v64) + 32 * v66 + 56), *(a1 + 32));
    v122 = 0;
    v68 = 0;
    v120 = 0;
    v69 = (a3 - a2);
    v70 = *&v123[40];
    v71 = *&v123[8];
    v72 = *&v123[40] + *&v123[32] - 1;
    v73 = v72 / 0x2A;
    v74 = 3 * (v72 % 0x2A);
    *(*(*&v123[8] + 8 * v73) + 32 * v74 + 80) = v61;
    v75 = *(v71 + 8 * v73) + 32 * v74;
    v76 = a5;
    *(v75 + 88) = a5;
    *(v75 + 92) = a6;
    v77 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v68 & 0xFFF) == 0 && (v68 >> 12) >= v69)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v79 = v70 + *&v123[32] - 1;
      v80 = (((v79 >> 1) * v77) >> 64) >> 4;
      v81 = *(*&v123[8] + 8 * v80) - 4032 * v80 + 96 * v79;
      v83 = (v81 + 80);
      v82 = *(v81 + 80);
      if (v82)
      {
        (*(*v82 + 16))(v82, v81);
      }

      v84 = *v81;
      if (*v81 <= -995)
      {
        switch(v84)
        {
          case -1000:
            v89 = *(v81 + 16);
            v91 = (v76 & 0x1000) == 0 || v89 == a3;
            v92 = v89 != a2 || (v76 & 0x20) == 0;
            if (!v92 || !v91)
            {
              goto LABEL_181;
            }

            v93 = &v89[-*(v81 + 8)];
            v94 = v120;
            if (v120 <= v93)
            {
              v94 = v93;
            }

            if (v122)
            {
              v93 = v94;
            }

            if (v93 == v69)
            {
              v95 = *&v123[8];
              v96 = *&v123[16];
              if (*&v123[16] == *&v123[8])
              {
                v96 = *&v123[8];
              }

              else
              {
                v97 = (((*&v123[32] >> 1) * v77) >> 64) >> 4;
                v98 = (*&v123[8] + 8 * v97);
                v99 = (*v98 - 4032 * v97 + 96 * *&v123[32]);
                v100 = v77;
                v101 = ((((*&v123[40] + *&v123[32]) >> 1) * v77) >> 64) >> 4;
                v102 = *(*&v123[8] + 8 * v101) - 4032 * v101 + 96 * (*&v123[40] + *&v123[32]);
                if (v99 != v102)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v99);
                    v99 += 12;
                    if ((v99 - *v98) == 4032)
                    {
                      v103 = v98[1];
                      ++v98;
                      v99 = v103;
                    }
                  }

                  while (v99 != v102);
                  v95 = *&v123[8];
                  v96 = *&v123[16];
                }

                v76 = a5;
                v77 = v100;
              }

              *&v123[40] = 0;
              v106 = (v96 - v95) >> 3;
              if (v106 >= 3)
              {
                do
                {
                  operator delete(*v95);
                  v95 = (*&v123[8] + 8);
                  *&v123[8] = v95;
                  v106 = (*&v123[16] - v95) >> 3;
                }

                while (v106 > 2);
              }

              if (v106 == 1)
              {
                v107 = 21;
LABEL_172:
                *&v123[32] = v107;
              }

              else if (v106 == 2)
              {
                v107 = 42;
                goto LABEL_172;
              }

              v122 = 1;
              v120 = (a3 - a2);
              break;
            }

            v120 = v93;
            std::deque<std::__state<char>>::pop_back(v123);
            v122 = 1;
            break;
          case -999:
            break;
          case -995:
            v85 = *&v123[32];
            v86 = *&v123[8];
            v87 = *&v123[16];
            if (!*&v123[32])
            {
              v88 = 42 * ((*&v123[16] - *&v123[8]) >> 3) - 1;
              if (*&v123[16] == *&v123[8])
              {
                v88 = 0;
              }

              if ((v88 - *&v123[40]) < 0x2A)
              {
                if (*&v123[16] - *&v123[8] < *&v123[24] - *v123)
                {
                  if (*&v123[8] != *v123)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v123[24] == *v123)
                {
                  v108 = 1;
                }

                else
                {
                  v108 = (*&v123[24] - *v123) >> 2;
                }

                *&v127[32] = v123;
                std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v108);
              }

              *&v123[32] = 42;
              *v127 = *(*&v123[16] - 8);
              *&v123[16] -= 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v123, v127);
              v85 = *&v123[32];
              v86 = *&v123[8];
              v87 = *&v123[16];
            }

            v109 = (((v85 >> 1) * v77) >> 64) >> 4;
            v110 = (v86 + 8 * v109);
            v111 = *v110 - 4032 * v109 + 96 * v85;
            if (v87 == v86)
            {
              v112 = 0;
            }

            else
            {
              v112 = v111;
            }

            if (v112 == *v110)
            {
              v112 = *(v110 - 1) + 4032;
            }

            v113 = *(v81 + 16);
            *(v112 - 96) = *v81;
            *(v112 - 80) = v113;
            *(v112 - 56) = 0;
            *(v112 - 48) = 0;
            *(v112 - 64) = 0;
            *(v112 - 64) = *(v81 + 32);
            *(v112 - 48) = *(v81 + 48);
            *(v81 + 32) = 0;
            *(v81 + 40) = 0;
            *(v81 + 48) = 0;
            *(v112 - 40) = 0;
            *(v112 - 32) = 0;
            *(v112 - 24) = 0;
            *(v112 - 40) = *(v81 + 56);
            *(v112 - 24) = *(v81 + 72);
            *(v81 + 56) = 0;
            *(v81 + 64) = 0;
            *(v81 + 72) = 0;
            v114 = *v83;
            *(v112 - 11) = *(v81 + 85);
            *(v112 - 16) = v114;
            *&v123[32] = vaddq_s64(*&v123[32], xmmword_1DE757F90);
            goto LABEL_181;
          default:
            goto LABEL_189;
        }
      }

      else
      {
        if (v84 > -993)
        {
          if (v84 == -992)
          {
            v104 = *(v81 + 16);
            *v127 = *v81;
            *&v127[16] = v104;
            v128 = 0uLL;
            *&v127[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v127[32], *(v81 + 32), *(v81 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v81 + 40) - *(v81 + 32)) >> 3));
            memset(v129, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v129, *(v81 + 56), *(v81 + 64), (*(v81 + 64) - *(v81 + 56)) >> 4);
            v105 = *v83;
            *(&v129[3] + 5) = *(v81 + 85);
            v129[3] = v105;
            (*(**(v81 + 80) + 24))(*(v81 + 80), 1, v81);
            (*(*v129[3] + 24))(v129[3], 0, v127);
            std::deque<std::__state<char>>::push_back(v123, v127);
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
            }

            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
            }
          }

          else if (v84 != -991)
          {
LABEL_189:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_182;
        }

        if (v84 != -994)
        {
          if (v84 != -993)
          {
            goto LABEL_189;
          }

LABEL_181:
          std::deque<std::__state<char>>::pop_back(v123);
        }
      }

LABEL_182:
      v70 = *&v123[40];
      if (!*&v123[40])
      {
        if (v122)
        {
          v115 = *v118;
          *v115 = a2;
          *(v115 + 8) = &v120[a2];
          v61 = 1;
          *(v115 + 16) = 1;
        }

        else
        {
          v61 = 0;
        }

        goto LABEL_186;
      }
    }
  }

  v130 = 0;
  v131 = 0;
  v132 = 0;
  *v127 = 0;
  memset(&v127[8], 0, 32);
  v128 = 0u;
  memset(v129, 0, 37);
  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_94:
    v61 = 0;
    goto LABEL_95;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v123 = 0;
  memset(&v123[8], 0, 48);
  *__p = 0uLL;
  memset(v125, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v130, v123);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v123[32])
  {
    operator delete(*&v123[32]);
  }

  v117 = a4;
  v13 = v131;
  *(v131 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v131 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v119 = a3;
  v121 = a2;
  v17 = (a3 - a2);
  v18 = v131;
  *(v131 - 2) = v12;
  *(v18 - 2) = a5;
  *(v18 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v18 - 2;
    v20 = *(v18 - 2);
    v22 = v18 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v18 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v36 = *(v18 - 5);
          *v123 = *v22;
          *&v123[16] = v36;
          memset(&v123[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v123[32], *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v125[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v37 = *v21;
          *(&v125[1] + 5) = *(v18 - 11);
          v125[1] = v37;
          (*(**v21 + 24))(*v21, 1, v18 - 12);
          (*(*v125[1] + 24))(v125[1], 0, v123);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v130, v123);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v123[32])
          {
            *&v123[40] = *&v123[32];
            operator delete(*&v123[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_188:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v23 != -1000)
      {
        goto LABEL_188;
      }

      v24 = *(v18 - 10);
      if ((a5 & 0x20) != 0 && v24 == v121 || (a5 & 0x1000) != 0 && v24 != v119)
      {
LABEL_40:
        v35 = v131 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v131 - 12);
        v131 = v35;
        goto LABEL_45;
      }

      v25 = &v24[-*(v18 - 11)];
      if ((v15 & (v14 >= v25)) == 0)
      {
        v26 = *(v18 - 5);
        *v127 = *v22;
        *&v127[16] = v26;
        if (v127 != v22)
        {
          v27 = *(v18 - 8);
          v28 = *(v18 - 7);
          v29 = v28 - v27;
          v30 = *(&v128 + 1);
          v31 = *&v127[32];
          if (*(&v128 + 1) - *&v127[32] < (v28 - v27))
          {
            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
              v30 = 0;
              *&v127[32] = 0;
              v128 = 0uLL;
            }

            v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
            if (v32 <= 0xAAAAAAAAAAAAAAALL)
            {
              v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0x555555555555555)
              {
                v34 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v34 = v32;
              }

              if (v34 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v34);
              }
            }

            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v38 = v128;
          if (v128 - *&v127[32] >= v29)
          {
            while (v27 != v28)
            {
              *v31 = *v27;
              *(v31 + 16) = *(v27 + 16);
              v27 = (v27 + 24);
              v31 += 24;
            }
          }

          else
          {
            if (v128 != *&v127[32])
            {
              v39 = (v27 + v128 - *&v127[32]);
              do
              {
                *v31 = *v27;
                *(v31 + 16) = *(v27 + 16);
                v27 = (v27 + 24);
                v31 += 24;
              }

              while (v27 != v39);
              v27 = v39;
            }

            while (v27 != v28)
            {
              v40 = *v27;
              *(v38 + 16) = *(v27 + 2);
              *v38 = v40;
              v38 += 24;
              v27 = (v27 + 24);
            }

            v31 = v38;
          }

          *&v128 = v31;
          v41 = *(v18 - 5);
          v42 = *(v18 - 4);
          v43 = v42 - v41;
          v44 = v129[2];
          v45 = v129[0];
          if ((v129[2] - v129[0]) < (v42 - v41))
          {
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
              v44 = 0;
              memset(v129, 0, 24);
            }

            v46 = v43 >> 4;
            if (!((v43 >> 4) >> 60))
            {
              if (v44 >> 3 > v46)
              {
                v46 = v44 >> 3;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF0)
              {
                v47 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              if (!(v47 >> 60))
              {
                std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v47);
              }
            }

            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v48 = v129[1];
          if ((v129[1] - v129[0]) >= v43)
          {
            while (v41 != v42)
            {
              *v45 = *v41;
              v45[1] = *(v41 + 1);
              v41 += 16;
              v45 += 2;
            }
          }

          else
          {
            if (v129[1] != v129[0])
            {
              v49 = &v41[v129[1] - v129[0]];
              do
              {
                *v45 = *v41;
                v45[1] = *(v41 + 1);
                v41 += 16;
                v45 += 2;
              }

              while (v41 != v49);
              v41 = v49;
            }

            while (v41 != v42)
            {
              *v48 = *v41;
              v48[1] = *(v41 + 1);
              v41 += 16;
              v48 += 2;
            }

            v45 = v48;
          }

          v129[1] = v45;
        }

        v50 = *v21;
        *(&v129[3] + 5) = *(v21 + 5);
        v129[3] = v50;
        v14 = v25;
      }

      v51 = v131;
      if (v14 == v17)
      {
        v52 = v130;
        while (v51 != v52)
        {
          v51 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v51);
        }

        v131 = v52;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v53 = v131 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v131 - 12);
        v131 = v53;
        v15 = 1;
      }
    }

LABEL_45:
    v18 = v131;
  }

  while (v130 != v131);
  if ((v15 & 1) == 0)
  {
    goto LABEL_94;
  }

  v55 = *v117;
  *v55 = v121;
  *(v55 + 8) = &v14[v121];
  *(v55 + 16) = 1;
  if (v128 != *&v127[32])
  {
    v56 = 0xAAAAAAAAAAAAAAABLL * ((v128 - *&v127[32]) >> 3);
    v57 = (*&v127[32] + 16);
    v58 = 1;
    do
    {
      v59 = v55 + 24 * v58;
      *v59 = *(v57 - 1);
      v60 = *v57;
      v57 += 24;
      *(v59 + 16) = v60;
      v19 = v56 > v58++;
    }

    while (v19);
  }

  v61 = 1;
LABEL_95:
  if (v129[0])
  {
    v129[1] = v129[0];
    operator delete(v129[0]);
  }

  if (*&v127[32])
  {
    *&v128 = *&v127[32];
    operator delete(*&v127[32]);
  }

  *v127 = &v130;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v127);
  return v61;
}

void sub_1DE3906C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_1DE390CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 96 * v8;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v12 + 85) = *(a2 + 85);
    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    v7 = 96 * v8 + 96;
    v24 = (v12 + 96);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v12 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<std::sub_match<char const*>>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12C0FD0](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t *std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE39136C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE3913E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12C0FD0](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::pair<unsigned long,char const*>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::deque<std::__state<char>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v4 - v5) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v6 < v11)
      {
        if (v10 != v4)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v18 = a1;
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
    }

    a1[4] = v8 - 42;
    *&v17 = *v5;
    a1[1] = (v5 + 8);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v17);
    v5 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v5[8 * (v9 / 0x2A)] - 4032 * (v9 / 0x2A) + 96 * v9;
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_1DE39185C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * v5 + -4032 * (v5 / 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * *(a1 + 40) + 96 * v5 + -4032 * ((*(a1 + 40) + v5) / 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x1E12C14A0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x1E69E5340]);
  return this;
}

void sub_1DE392164(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12C0FD0](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

std::basic_regex<char>::value_type *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12C0FD0](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1E12C1730);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F5989598;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x1E12C1730);
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1E12C1730);
}

std::basic_regex<char>::value_type *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12C0FD0](exception, 15);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

std::basic_regex<char>::value_type *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *this, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
LABEL_25:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    goto LABEL_26;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v9 == 5)
    {
      if (this->__open_count_)
      {
        goto LABEL_4;
      }

      v15 = 41;
LABEL_15:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v15);
      v11 = a2 + 1;
      goto LABEL_38;
    }

LABEL_13:
    if ((v8 - 123) < 2)
    {
      goto LABEL_4;
    }

    v15 = *a2;
    goto LABEL_15;
  }

LABEL_4:
  v10 = (a2 + 1);
  v11 = a2;
  if (a2 + 1 == a3)
  {
    goto LABEL_22;
  }

  v12 = *a2;
  if (v12 != 92)
  {
    goto LABEL_23;
  }

  v13 = *v10;
  v14 = *v10;
  if ((v13 - 36) <= 0x3A && ((1 << (v13 - 36)) & 0x5800000080004F1) != 0 || (v13 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v14);
    v11 = a2 + 2;
    goto LABEL_38;
  }

  if ((this->__flags_ & 0x1F0) == 0x40)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(this, v10, a3, 0);
  }

  else
  {
    v16 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v14);
    v17 = 2;
    if (!v16)
    {
      v17 = 0;
    }

    v11 = &a2[v17];
  }

  if (v11 == a2)
  {
LABEL_22:
    v12 = *v11;
LABEL_23:
    if (v12 == 46)
    {
      operator new();
    }

    goto LABEL_25;
  }

LABEL_26:
  if (v11 == a2 && v11 != a3)
  {
    v18 = *v11;
    switch(v18)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
        v19 = this->__marked_count_;
        ++this->__open_count_;
        v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(this, (v11 + 1), a3);
        if (v20 == a3 || (v11 = v20, *v20 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v19);
        --this->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
        break;
      default:
        goto LABEL_37;
    }

    ++v11;
  }

LABEL_37:
  if (v11 == a2)
  {
    return v11;
  }

LABEL_38:
  v21 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v11, a3, end, marked_count + 1, v21);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12C0FD0](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12C0FD0](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12C0FD0](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}