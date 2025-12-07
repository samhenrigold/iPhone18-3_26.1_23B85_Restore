void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C808;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060014EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_29Is_Property_Settable_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C788;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C788;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_29Is_Property_Settable_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C788;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060014EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlRKbE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EEclESK_(uint64_t a1, unsigned __int8 *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C708;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C708;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlRKbE_NS_9allocatorISL_EEFvSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C708;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1652060014EEENSt3__19enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEEclEv(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C688;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C688;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1652060014EEENS_9enable_ifIXsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C688;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651536495EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C608;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C608;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C608;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651536495EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEEclEv(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C588;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C588;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651536495EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C588;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651010921EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C508;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C508;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C508;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651010921EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEEclEv(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C488;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C488;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651010921EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C488;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651013225EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C408;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C408;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C408;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651013225EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEEclEv(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C388;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C388;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651013225EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C388;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651007861EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C308;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C308;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C308;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651007861EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEEclEv(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C288;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C288;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651007861EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFbvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C288;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651861860EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlNS5_21Has_Property_FunctionEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EEclEOSJ_(uint64_t a1, const AudioObjectPropertyAddress *a2)
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C108;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED0Ev(void *a1)
{
  *a1 = &unk_1F597C108;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlNS7_21Has_Property_FunctionEE_NS_9allocatorISK_EEFbSJ_EED1Ev(void *a1)
{
  *a1 = &unk_1F597C108;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3ASP13make_propertyILj1651861860EEENSt3__19enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS2_10shared_ptrINS_4Core9OperationEEEE4typeERKNS_7AddressERKNS4_INS0_6PlugInEEEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEEclEv(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_1DE5A7574(void *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  __clang_call_terminate(a1);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F597C088;
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

void _ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED0Ev(void *a1)
{
  *a1 = &unk_1F597C088;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *_ZNSt3__110__function6__funcIZN4AMCP3ASP13make_propertyILj1651861860EEENS_9enable_ifIXntsr15Property_TraitsIXT_EEE17k_may_be_settableENS_10shared_ptrINS2_4Core9OperationEEEE4typeERKNS2_7AddressERKNS6_INS3_6PlugInEEEjEUlvE_NS_9allocatorISJ_EEFN10applesauce2CF9StringRefEvEED1Ev(void *a1)
{
  *a1 = &unk_1F597C088;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t AMCP::ASP::get_max_number_channels_for_scope(int a1, AMCP::ASP::PlugIn **a2, uint64_t a3)
{
  v4 = *a2;
  v22[0] = 1937009955;
  v22[1] = a1;
  LODWORD(v23) = 0;
  AMCP::ASP::PlugIn::object_get_property_data<unsigned int [],unsigned int>(&v18, v4, a3, v22);
  v5 = __p;
  if (!v18)
  {
    v8 = v20;
    if (__p != v20)
    {
      LODWORD(v6) = 0;
      v9 = __p;
      while (1)
      {
        v10 = *v9;
        v11 = *a2;
        *&v21.mSelector = 0x676C6F6270667461;
        v21.mElement = 0;
        PropertyDataSize = AMCP::ASP::PlugIn::ObjectGetPropertyDataSize(v11, v10, 0, &v21, 0, 0);
        v13 = PropertyDataSize;
        if (PropertyDataSize >> 35 >= 7 && PropertyDataSize == 0)
        {
          std::vector<AudioStreamRangedDescription>::vector[abi:ne200100](&v26, (613566757 * (PropertyDataSize >> 35)) >> 32);
          v22[0] = AMCP::ASP::PlugIn::ObjectGetPropertyData(v11, v10, 0, &v21, 0, 0, (v27 - v26) & 0xFFFFFFF8, v26);
          v24 = 0;
          v25 = 0;
          v23 = 0;
          std::vector<AudioStreamRangedDescription>::__init_with_size[abi:ne200100]<AudioStreamRangedDescription*,AudioStreamRangedDescription*>(&v23, v26, v27, 0x6DB6DB6DB6DB6DB7 * ((v27 - v26) >> 3));
          if (v26)
          {
            v27 = v26;
            operator delete(v26);
          }

          v15 = v23;
          if (v22[0])
          {
LABEL_26:
            v16 = 0;
            if (!v15)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v15 = 0;
          v22[0] = v13;
          v24 = 0;
          v25 = 0;
          v23 = 0;
          if (v13)
          {
            goto LABEL_26;
          }
        }

        if (v15 == v24)
        {
          goto LABEL_26;
        }

        v16 = 0;
        v17 = v15;
        do
        {
          if (v16 <= v17[7])
          {
            v16 = v17[7];
          }

          v17 += 14;
        }

        while (v17 != v24);
        if (!v15)
        {
          goto LABEL_24;
        }

LABEL_23:
        operator delete(v15);
LABEL_24:
        v6 = v16 + v6;
        if (++v9 == v8)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v6 = 0;
LABEL_3:
  if (v5)
  {
    operator delete(v5);
  }

  return v6;
}

void AMCP::ASP::PlugIn_Object::update_core(AMCP::ASP::PlugIn_Object *this)
{
  AMCP::Core::Broker::fetch_core(&v9, *(*(this + 1) + 16), *(this + 15));
  v2 = v9;
  if (v9)
  {
    *__p = 0u;
    *v7 = 0u;
    v8 = 1065353216;
    v3 = AMCP::ASP::calculate_max_element(this + 3, *(this + 11), *(this + 17));
    if ((AMCP::is_base_of(0x61706C67, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x61626F78, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x61646576, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x61737472, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x736C6472, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x6C65766C, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x746F676C, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x736C6374, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x7370616E, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x6163746C, *(this + 17)) & 1) == 0 && (AMCP::is_base_of(0x61636C6B, *(this + 17)) & 1) == 0 && AMCP::is_base_of(0x616F626A, *(this + 17)))
    {
      AMCP::ASP::PlugIn_Object::update_object_core(this, v3, __p);
    }

    v11 = v2 + 48;
    LOBYTE(v12) = 1;
    caulk::concurrent::shared_spin_lock::lock((v2 + 48));
    v4 = v7[0];
    if (v7[0])
    {
      do
      {
        std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>((v2 + 8), (v4[4] + 40), v4 + 4);
        v4 = *v4;
      }

      while (v4);
    }

    caulk::concurrent::shared_spin_lock::unlock((v2 + 48));
    v11 = 0x676C6F626F776E72;
    v12 = 0;
    *(v2 + 4) = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v2, &v11, &AMCP::k_object_id_unknown);
    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(v7[0]);
    v5 = __p[0];
    __p[0] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE5A7B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t CADeprecated::CAPThread::Start(uint64_t this)
{
  v18 = *MEMORY[0x1E69E9840];
  if (atomic_load((this + 8)))
  {
    CAVerboseAbort("CAPThread::Start: can't start because the thread is already running");
  }

  if (!atomic_load((this + 8)))
  {
    v3 = this;
    v4 = pthread_attr_init(&v17);
    if (v4)
    {
      v7 = v4;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 136315394;
      v14 = "CAPThread.cpp";
      v15 = 1024;
      v16 = 255;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  CAPThread::Start: Thread attributes could not be created.";
    }

    else
    {
      v5 = pthread_attr_setdetachstate(&v17, 2);
      if (v5)
      {
        v7 = v5;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 136315394;
        v14 = "CAPThread.cpp";
        v15 = 1024;
        v16 = 258;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "%25s:%-5d  CAPThread::Start: A thread could not be created in the detached state.";
      }

      else
      {
        pthread_attr_getschedparam(&v17, &v12);
        v12.sched_priority = *(v3 + 104);
        pthread_attr_setschedparam(&v17, &v12);
        if (*(v3 + 122) == 1)
        {
          pthread_attr_setschedpolicy(&v17, 4);
        }

        v11 = 0;
        v6 = pthread_create(&v11, &v17, CADeprecated::CAPThread::Entry, v3);
        if (!v6 && v11)
        {
          atomic_store(v11, (v3 + 8));
          return pthread_attr_destroy(&v17);
        }

        v7 = v6;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_19:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          exception[2] = v7;
        }

        *buf = 136315394;
        v14 = "CAPThread.cpp";
        v15 = 1024;
        v16 = 272;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "%25s:%-5d  CAPThread::Start: Could not create a thread.";
      }
    }

    _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
    goto LABEL_19;
  }

  return this;
}

uint64_t CADeprecated::CAPThread::Entry(CADeprecated::CAPThread *this, void *a2)
{
  atomic_store(pthread_self(), this + 1);
  if (*(this + 40))
  {
    pthread_setname_np(this + 40);
  }

  if (*(this + 121) == 1 && (*(this + 121) = 1, (v3 = atomic_load(this + 1)) != 0) && (*policy_info = *(this + 108), v4 = *(this + 120), v14 = *(this + 29), v15 = v4, v5 = atomic_load(this + 1), v6 = pthread_mach_thread_np(v5), (v7 = thread_policy_set(v6, 2u, policy_info, 4u)) != 0))
  {
    v12[0] = HIBYTE(v7);
    v12[1] = BYTE2(v7);
    v12[2] = BYTE1(v7);
    v12[3] = v7;
    v12[4] = 0;
    v10 = CAVerboseAbort("CAPThread::SetTimeConstraints: thread_policy_set failed, Error: %d (%s)", v7, v12);
    __cxa_begin_catch(v10);
    __cxa_end_catch();
  }

  else
  {
    v8 = *(this + 3);
    if (v8)
    {
      v9 = v8(*(this + 4));
      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_10:
  atomic_store(0, this + 1);
  if (*(this + 123) == 1)
  {
    (*(*this + 8))(this);
  }

  return v9;
}

void AMCP::IOAudio2::Stream::~Stream(AMCP::IOAudio2::Stream *this)
{
  AMCP::IOAudio2::Stream::~Stream(this);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = this;
  v29 = *MEMORY[0x1E69E9840];
  *this = &unk_1F597EE90;
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
  switch(v5)
  {
    case 3:
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

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = *(v1 + 8);
        v23 = 136315650;
        v24 = "IOAudio2_Stream.cpp";
        v25 = 1024;
        v26 = 120;
        v27 = 1024;
        v28 = v19;
        v20 = v17;
        v21 = OS_LOG_TYPE_INFO;
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v20, v21, "%32s:%-5d Tore down Stream with object id %u", &v23, 0x18u);
      }

      break;
    case 2:
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
        v18 = *(v1 + 8);
        v23 = 136315650;
        v24 = "IOAudio2_Stream.cpp";
        v25 = 1024;
        v26 = 120;
        v27 = 1024;
        v28 = v18;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tore down Stream with object id %u", &v23, 0x18u);
      }

      break;
    case 1:
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

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v1 + 8);
        v23 = 136315650;
        v24 = "IOAudio2_Stream.cpp";
        v25 = 1024;
        v26 = 120;
        v27 = 1024;
        v28 = v22;
        v20 = v9;
        v21 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_29;
      }

      break;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  AMCP::IOAudio2::Device_Sub_Object::~Device_Sub_Object(v1);
}

void sub_1DE5A8230(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOAudio2::Device_Sub_Object::Device_Sub_Object(uint64_t a1, uint64_t a2, const void *a3, CFDictionaryRef *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5989748;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  if (!*a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = 0;
  v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v13)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*&>(&valuePtr, *a4, a3);
  if (v16 == 1)
  {
    v7 = valuePtr;
    if (!valuePtr)
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
      __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    CFRetain(valuePtr);
    cf = v7;
    CFRelease(v7);
  }

  else
  {
    v7 = v13;
    v13 = 0;
    cf = v7;
  }

  v8 = applesauce::CF::convert_to<unsigned int,0>(v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  *(a1 + 36) = v8;
  *(a1 + 40) = *a4;
  *a4 = 0;
  return a1;
}

void sub_1DE5A8404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::NumberRef::~NumberRef(&a10);
  applesauce::CF::NumberRef::~NumberRef(&a9);
  v13 = *(v10 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::IOAudio2::get_stream_starting_channel(CFDictionaryRef theDict, const applesauce::CF::DictionaryRef *a2)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_9;
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,__CFString const*>(&v6, theDict, @"starting channel");
  if (v7 != 1)
  {
    return 0;
  }

  v2 = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_9:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<unsigned int,0>(v6);
  CFRelease(v2);
  return v3;
}

void AMCP::IOAudio2::Stream::create_from_dictionary_list(const void **a1, uint64_t a2, int a3, CFArrayRef *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a4;
  if (*a4)
  {
    Count = CFArrayGetCount(*a4);
    v7 = Count;
    v8 = *a4;
    if (*a4)
    {
      v9 = CFArrayGetCount(*a4);
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v9 = 0;
      if (!Count)
      {
        return;
      }
    }

    if (v4 != v8 || v9)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v4, 0);
      operator new();
    }
  }
}

void sub_1DE5A8834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, const void *);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::IOAudio2::Stream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597F1F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::IOAudio2::Stream::find_stream_dictionary_by_driver_id(AMCP::IOAudio2::Stream *this, CFArrayRef *a2, int a3)
{
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_18;
  }

  Count = CFArrayGetCount(*a2);
  v8 = Count;
  v9 = *a2;
  if (v9)
  {
    v10 = CFArrayGetCount(v9);
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
    if (!Count)
    {
      goto LABEL_18;
    }
  }

  v11 = 0;
  while (v4 != v9 || v10 != v11)
  {
    applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(this, v4, v11);
    if (!*this)
    {
      goto LABEL_21;
    }

    LODWORD(valuePtr) = 0;
    cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *this, @"stream ID", &cf);
    v12 = valuePtr;
    if (!valuePtr)
    {
LABEL_21:
      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "Could not construct");
      __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v13 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
    CFRelease(v12);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v13 == a3)
    {
      return;
    }

    if (*this)
    {
      CFRelease(*this);
    }

    if (v8 == ++v11)
    {
      break;
    }
  }

LABEL_18:
  *this = 0;
}

uint64_t AMCP::IOAudio2::Stream::get_mapping_options(AMCP::IOAudio2::Stream *this)
{
  if (!*(this + 5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_10;
  }

  LODWORD(valuePtr) = 1;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v6 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v6, "Could not construct");
    __cxa_throw(v6, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(&valuePtr, *(this + 5), @"buffer mapping options", &cf);
  v2 = valuePtr;
  if (!valuePtr)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<unsigned int,0>(valuePtr);
  CFRelease(v2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

void AMCP::IOAudio2::get_stream_format(AMCP::IOAudio2 *this, const applesauce::CF::DictionaryRef *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*>(&v39, a2, @"current format");
  if ((v40 & 1) == 0)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *valuePtr = 136315650;
      *&valuePtr[4] = "IOAudio2_Stream.cpp";
      v42 = 1024;
      v43 = 107;
      v44 = 2080;
      v45 = "!raw_current_format_opt";
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to find the current format for a stream", valuePtr, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v38);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v31, "failed to find the current format for a stream");
    std::runtime_error::runtime_error(&cf, &v31);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    cf.__vftable = &unk_1F5992170;
    v33 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(valuePtr, &cf);
    v46 = "CA::StreamDescription AMCP::IOAudio2::get_stream_format(const CF::Dictionary &)";
    v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IOAudio2/IOAudio2_Stream.cpp";
    v48 = 107;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  v4 = v39;
  if (!v39)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v21, "Could not construct");
    goto LABEL_65;
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "Could not construct");
    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"sample rate", &cf);
  v5 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  v6 = applesauce::CF::convert_to<unsigned long long,0>(*valuePtr);
  CFRelease(v5);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *this = vcvtd_n_f64_u64(v6, 0x20uLL) + HIDWORD(v6);
  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"format ID", &cf);
  v7 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  v8 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  *(this + 2) = v8;
  CFRelease(v7);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "Could not construct");
    __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"format flags", &cf);
  v9 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  v10 = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  *(this + 3) = v10;
  CFRelease(v9);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
    __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"bytes per packet", &cf);
  v11 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  *(this + 4) = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  CFRelease(v11);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"frames per packet", &cf);
  v12 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  *(this + 5) = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  CFRelease(v12);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
    __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"bytes per frame", &cf);
  v13 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  *(this + 6) = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  CFRelease(v13);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v28, "Could not construct");
    __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"channels per frame", &cf);
  v14 = *valuePtr;
  if (!*valuePtr)
  {
    goto LABEL_64;
  }

  *(this + 7) = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  CFRelease(v14);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  *valuePtr = 0;
  cf.__vftable = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!cf.__vftable)
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v29, "Could not construct");
    __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,__CFString const*>(valuePtr, v4, @"bits per channel", &cf);
  v15 = *valuePtr;
  if (!*valuePtr)
  {
LABEL_64:
    v21 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v21, "Could not construct");
LABEL_65:
    __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *(this + 8) = applesauce::CF::convert_to<unsigned int,0>(*valuePtr);
  CFRelease(v15);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  if (v8 == 1819304813)
  {
    *(this + 3) = v10 & 0xFFFFFFBF;
  }

  CFRelease(v4);
}

void sub_1DE5A95A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a2)
  {
    __cxa_free_exception(v29);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::IOAudio2::Stream::build_core(AMCP::IOAudio2::Stream *this)
{
  v2 = AMCP::Core::Broker::reserve_id(*(*(**(this + 3) + 32) + 16));
  *(this + 8) = v2;
  *__p = 0u;
  *v6 = 0u;
  v7 = 1065353216;
  v3 = 0x676C6F6269646E74;
  LODWORD(v4) = 0;
  LODWORD(v9) = v2;
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>(&v8, &v3, &v9);
}

void sub_1DE5A9A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v9 - 32));
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void AMCP::IOAudio2::update_stream_core(float *a1, const applesauce::CF::DictionaryRef *a2, CFDictionaryRef *a3, int a4)
{
  v9 = *MEMORY[0x1E69E9840];
  stream_starting_channel = AMCP::IOAudio2::get_stream_starting_channel(*a3, a2);
  cf = 0x676C6F627363686ELL;
  v7 = 0;
  LODWORD(valuePtr) = stream_starting_channel;
  AMCP::Core::Operation_Utilities::make_typed_property<unsigned int,std::shared_ptr<AMCP::Core::Operation> AMCP::Core::Operation_Utilities::make_constant_property<unsigned int>(AMCP::Address const&,unsigned int const&)::{lambda(void)#1}>(buf, &cf, &valuePtr);
}

void sub_1DE5AAC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t connect, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    __cxa_free_exception(v40);
    operator delete(v41);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1::~$_1(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  IOConnectRelease(*a1);
  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio2L18update_stream_coreERNS_4Core13Operation_SetERKN10applesauce5iokit17io_connect_holderERKNS4_2CF13DictionaryRefEjE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  is_an_available_format = AMCP::Utility::Stream_Format::format_is_an_available_format(a2, *(a1 + 16), *(a1 + 24));
  if (!is_an_available_format)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_an_available_format);
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
      *inputStruct = 136315650;
      *&inputStruct[4] = "IOAudio2_Stream.cpp";
      *&inputStruct[12] = 1024;
      *&inputStruct[14] = 215;
      *&inputStruct[18] = 2080;
      *&inputStruct[20] = "(format_is_valid) == false";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set stream format", inputStruct, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(v20, "failed to set stream format");
    std::runtime_error::runtime_error(&v13, v20);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v13.__vftable = &unk_1F5992170;
    v14 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(inputStruct, &v13);
    v26 = "auto AMCP::IOAudio2::update_stream_core(Core::Operation_Set &, const IOKit::Connection &, const CF::Dictionary &, uint32_t)::(anonymous class)::operator()(const CA::StreamDescription &) const";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IOAudio2/IOAudio2_Stream.cpp";
    v28 = 215;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
  }

  *inputStruct = vcvtd_n_s64_f64(*a2 - floor(*a2), 0x20uLL) | (vcvtmd_s64_f64(*a2) << 32);
  *&inputStruct[8] = *(a2 + 8);
  *&inputStruct[24] = *(a2 + 24);
  LODWORD(v26) = *(a2 + 32);
  v5 = *(a1 + 8);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  input = *(a1 + 12);
  v13.__vftable = 0;
  v13.__imp_.__imp_ = 0;
  v14 = 0;
  outputCnt = 0;
  __p = 0;
  v12 = 0uLL;
  v22 = 0;
  if (IOConnectCallMethod(v5, 5u, &input, 1u, inputStruct, 0x28uLL, 0, &outputCnt, 0, &v22))
  {
    __cxa_allocate_exception(0x20uLL);
    std::system_category();
    operator new();
  }

  std::vector<unsigned long long>::resize(&v13, outputCnt);
  if (v22)
  {
    std::vector<unsigned char>::__append(&__p, v22);
    if (__p)
    {
      operator delete(__p);
    }
  }

  if (v13.__vftable)
  {
    operator delete(v13.__vftable);
  }
}

void sub_1DE5AB480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::runtime_error a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a33 < 0)
  {
    operator delete(a29.__vftable);
    if ((v40 & 1) == 0)
    {
LABEL_10:
      if (a16)
      {
        operator delete(a16);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v39);
  goto LABEL_10;
}

void std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::destroy_deallocate(uint64_t a1)
{
  v2 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v2);
  IOConnectRelease(*(a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::destroy(uint64_t a1)
{
  v3 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return IOConnectRelease(*(a1 + 8));
}

uint64_t AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1::$_1(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = IOConnectAddRef(v4);
  if (v5)
  {
    v8 = v5;
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v8, v10, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v6 = *(a2 + 4);
  *(a1 + 8) = 0;
  *(a1 + 4) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<CA::ValueRangeList,CA::StreamDescription>*,std::tuple<CA::ValueRangeList,CA::StreamDescription>*>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 6);
  return a1;
}

void std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F597F0E8;
  v2 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v2);
  IOConnectRelease(*(a1 + 8));

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_1>,void ()(CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F597F0E8;
  v3 = (a1 + 16);
  std::vector<std::tuple<CA::ValueRangeList,CA::StreamDescription>>::__destroy_vector::operator()[abi:ne200100](&v3);
  IOConnectRelease(*(a1 + 8));
  return a1;
}

uint64_t std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0>,CA::StreamDescription ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio2L18update_stream_coreERNS_4Core13Operation_SetERKN10applesauce5iokit17io_connect_holderERKNS4_2CF13DictionaryRefEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0>,CA::StreamDescription ()(void)>::operator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 40);
  return result;
}

__n128 std::__function::__func<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0,std::allocator<AMCP::IOAudio2::update_stream_core(AMCP::Core::Operation_Set &,applesauce::iokit::io_connect_holder const&,applesauce::CF::DictionaryRef const&,unsigned int)::$_0>,CA::StreamDescription ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F597EFD8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

double AMCP::DAL::Packetized_File_Handler::get_length_in_frames(AMCP::DAL::Packetized_File_Handler *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(this + 6);
  if (!v1)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      v28 = "Packetized_File_Handler.cpp";
      v29 = 1024;
      v30 = 52;
      v31 = 2080;
      v32 = "not (m_audio_File != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Packetized_File_Handler::GetLengthInFrames: mAudioFile is null", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&ioPropertyDataSize);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v15, "Packetized_File_Handler::GetLengthInFrames: mAudioFile is null", v14);
    std::logic_error::logic_error(&outPropertyData, &v15);
    outPropertyData.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &outPropertyData);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v33 = "virtual Sample_Time AMCP::DAL::Packetized_File_Handler::get_length_in_frames() const";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Handler.cpp";
    LODWORD(v35) = 52;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  outPropertyData.__vftable = 0;
  ioPropertyDataSize = 8;
  Property = ExtAudioFileGetProperty(v1, 0x2366726Du, &ioPropertyDataSize, &outPropertyData);
  v3 = Property;
  AMCP::Utility::OSStatus_Error_Category::get(Property);
  if (v3)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v28 = "Packetized_File_Handler.cpp";
      v29 = 1024;
      v30 = 56;
      v31 = 2080;
      v32 = "the_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Packetized_File_Handler::GetFileLengthInFrames: couldn't get the file's length", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](&v25, v3, &AMCP::Utility::OSStatus_Error_Category::get(void)::s_category);
    boost::enable_error_info<std::system_error>(&v16, &v25);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v16);
    v35 = "virtual Sample_Time AMCP::DAL::Packetized_File_Handler::get_length_in_frames() const";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Handler.cpp";
    v37 = 56;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  return outPropertyData.__vftable;
}

void sub_1DE5ABE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int16 a25, char a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(v35 - 128);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a16);
  std::runtime_error::~runtime_error(&a33);
  if (a11)
  {
    __cxa_free_exception(v34);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a27);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Packetized_File_Factory(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(buf, "read");
  v3 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a1, buf);
  v4 = v3;
  if (v23 < 0)
  {
    operator delete(*buf);
  }

  if (v4)
  {
    operator new();
  }

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
    *buf = 136315394;
    *&buf[4] = "Packetized_File_Handler.cpp";
    v21 = 1024;
    v22 = 34;
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Packetized_File_Factory only supports reading packetized files", buf, 0x12u);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&ioPropertyDataSize);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string(&v11, "Packetized_File_Factory only supports reading packetized files", v9);
  std::runtime_error::runtime_error(&v19, &v11);
  std::runtime_error::runtime_error(&cf, &v19);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = -1;
  cf.__vftable = &unk_1F5992170;
  v13 = &unk_1F5992198;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &cf);
  v24 = "std::shared_ptr<DAL_File_Handler> AMCP::DAL::Packetized_File_Factory(const DAL_Settings &)";
  v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Handler.cpp";
  LODWORD(v26) = 34;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
}

void sub_1DE5AD4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::runtime_error a37)
{
  v40[4] = v38;
  v43 = v40[5];
  if (v43)
  {
    v40[6] = v43;
    operator delete(v43);
  }

  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v41 - 192);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a20);
  std::runtime_error::~runtime_error(&a37);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (v39)
  {
    __cxa_free_exception(v37);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a12);
  _Unwind_Resume(a1);
}

void sub_1DE5AD534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, __int16 a15, char a16, char a17, void *a18, void *a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, std::runtime_error a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (a2)
  {
    applesauce::CF::DictionaryRef::~DictionaryRef(&a41.__vftable);
    if (*(v49 - 169) < 0)
    {
      operator delete(*(v48 + 80));
    }

    __cxa_begin_catch(a1);
    v51 = *(v47 + 48);
    if (v51)
    {
      ExtAudioFileDispose(v51);
      *(v47 + 48) = 0;
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1DE5AD980(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Packetized_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::Packetized_File_Reader>,std::allocator<AMCP::DAL::Packetized_File_Reader>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_File_HandlerEE27__shared_ptr_default_deleteIS3_NS2_22Packetized_File_ReaderEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Packetized_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::Packetized_File_Reader>,std::allocator<AMCP::DAL::Packetized_File_Reader>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::Packetized_File_Reader *,std::shared_ptr<AMCP::DAL::DAL_File_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_File_Handler,AMCP::DAL::Packetized_File_Reader>,std::allocator<AMCP::DAL::Packetized_File_Reader>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext::HasEnabledOutputStreams(HALS_IOContext *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOContext23HasEnabledOutputStreamsEv_block_invoke;
  v4[3] = &unk_1E8676D38;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5ADB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOContext23HasEnabledOutputStreamsEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = (*(**(v2 + 104) + 32))(*(v2 + 104), 0);
  if (result)
  {
    result = (*(**(v2 + 104) + 48))(*(v2 + 104), 0);
    v4 = result != 0;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

uint64_t HALS_IOContext::HasEnabledInputStreams(HALS_IOContext *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOContext22HasEnabledInputStreamsEv_block_invoke;
  v4[3] = &unk_1E8676D60;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5ADCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOContext22HasEnabledInputStreamsEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = (*(**(v2 + 104) + 32))(*(v2 + 104), 1);
  if (result)
  {
    result = (*(**(v2 + 104) + 48))(*(v2 + 104), 1);
    v4 = result != 0;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

uint64_t HALS_IOContext::GetNumberInputStreamsOfType(uint64_t a1, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK14HALS_IOContext27GetNumberInputStreamsOfTypeE15InputStreamType_block_invoke;
  v5[3] = &unk_1E8676CF0;
  v5[4] = &v7;
  v5[5] = a1;
  v6 = a2;
  v2 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK14HALS_IOContext27GetNumberInputStreamsOfTypeE15InputStreamType_block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 40) + 104) + 40))(*(*(a1 + 40) + 104), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE5ADE98(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext::SetPropertyData(HALS_IOContext *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, _DWORD *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v107 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
    goto LABEL_76;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1836282993)
  {
    if (mSelector > 1684108386)
    {
      if (mSelector <= 1735750500)
      {
        if (mSelector != 1684108387)
        {
          if (mSelector != 1718839674)
          {
LABEL_101:
            HALS_Object::SetPropertyData(this, a2, a3, v16, v17, v18, v19, a8);
          }

          goto LABEL_37;
        }

        if ((*(*this + 112))(this, a2, a3, a6, a7, a8) > a4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1266;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioDevicePropertyEnableCaptureFile", buf, 0x12u);
          }

          v61 = __cxa_allocate_exception(0x10uLL);
          *v61 = off_1F5991DD8;
          v61[2] = 561211770;
        }

        *(this + 41) = *a5;
        v40 = *(this + 13);
        AudioCaptureMode = HALS_IOContext::GetAudioCaptureMode(this);
        v42 = *(*v40 + 568);

        v42(v40, AudioCaptureMode);
        return;
      }

      if (mSelector == 1735750501)
      {
        mScope = a3->mScope;
        v44 = HALS_ObjectMap::CopyObjectByObjectID(**(this + 9));
        v78 = 0;
        v79 = &v78;
        v80 = 0x2000000000;
        v81 = 0;
        v74 = 0;
        v75 = &v74;
        v76 = 0x2000000000;
        v77 = 0;
        v89 = 0;
        v90 = &v89;
        v91 = 0x3802000000;
        v92 = __Block_byref_object_copy__12047;
        v93 = __Block_byref_object_dispose__12048;
        memset(v94, 0, sizeof(v94));
        v95 = 1;
        v82 = 0;
        v83 = &v82;
        v84 = 0x3802000000;
        v85 = __Block_byref_object_copy__12047;
        v86 = __Block_byref_object_dispose__12048;
        memset(v87, 0, sizeof(v87));
        v88 = 1;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 1174405120;
        *&buf[16] = ___ZN14HALS_IOContext14SetStreamUsageERK26AudioIOContext_StreamUsagejb_block_invoke;
        v97 = &unk_1F597F578;
        v105 = a4;
        v106 = mScope == 1768845428;
        v98 = &v78;
        v99 = &v74;
        v102 = this;
        v103 = a5;
        v100 = &v89;
        v104 = v44;
        HALS_ObjectMap::RetainObject(v44, v45);
        v101 = &v82;
        v46 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v46, buf);
        if (mScope == 1768845428 && *(v75 + 24) == 1)
        {
          HALS_IOContext::UpdateInputStreamUsageStatus(v47);
        }

        if (*(v79 + 6))
        {
          v66 = __cxa_allocate_exception(0x10uLL);
          v67 = *(v79 + 6);
          *v66 = off_1F5991DD8;
          v66[2] = v67;
        }

        HALS_ObjectMap::ReleaseObject(v104, v48);
        _Block_object_dispose(&v82, 8);
        _Block_object_dispose(&v89, 8);
        _Block_object_dispose(&v74, 8);
        _Block_object_dispose(&v78, 8);
        HALS_ObjectMap::ReleaseObject(v44, v49);
        return;
      }

      if (mSelector != 1752135523)
      {
        goto LABEL_101;
      }

      if ((*(*this + 112))(this, a2, a3, a6, a7, a8) > a4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1350;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioAggregateDevicePropertyHandleOverloadWithCatchup", buf, 0x12u);
        }

        v59 = __cxa_allocate_exception(0x10uLL);
        *v59 = off_1F5991DD8;
        v59[2] = 561211770;
      }

      v24 = *(**(this + 13) + 728);

LABEL_61:
      v24();
      return;
    }

    if (mSelector != 1633906541)
    {
      if (mSelector == 1633970532)
      {
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 0x40000000;
        v72[2] = ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
        v72[3] = &__block_descriptor_tmp_37_12039;
        v73 = a4;
        v72[4] = this;
        v72[5] = a5;
        v50 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v50, v72);
      }

      else
      {
        if (mSelector != 1634300531)
        {
          goto LABEL_101;
        }

        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 0x40000000;
        v68[2] = ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_40;
        v68[3] = &__block_descriptor_tmp_41_12041;
        v69 = a4;
        v68[4] = this;
        v68[5] = a5;
        v23 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v23, v68);
      }

      return;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1214;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyComposition", buf, 0x12u);
      }

      v60 = __cxa_allocate_exception(0x10uLL);
      *v60 = off_1F5991DD8;
      v60[2] = 561211770;
    }

    v33 = *a5;
    v34 = pthread_self();
    is_thread_configured_for_realtime = AMCP::Utility::is_thread_configured_for_realtime(v34, v35);
    if (is_thread_configured_for_realtime)
    {
      v52 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v52 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_thread_configured_for_realtime);
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

      v38 = 1852797029;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1938;
        _os_log_error_impl(&dword_1DE1F9000, v55, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext::SetComposition not allowed on the IO thread, returning kAudioHardwareIllegalOperationError", buf, 0x12u);
      }
    }

    else
    {
      v37 = (*(**(this + 13) + 600))(*(this + 13), v33);
      if (!v37)
      {
        return;
      }

      v38 = v37;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v38;
LABEL_76:
  }

  if (mSelector <= 1902539641)
  {
    if (mSelector == 1836282994)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1246;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioIOContextProperty_MasterDevice", buf, 0x12u);
        }

        v39 = __cxa_allocate_exception(0x10uLL);
        *v39 = off_1F5991DD8;
        v39[2] = 561211770;
      }

      return;
    }

    if (mSelector == 1852012899)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1238;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioDevicePropertyIOCycleUsage", buf, 0x12u);
        }

        v63 = __cxa_allocate_exception(0x10uLL);
        *v63 = off_1F5991DD8;
        v63[2] = 561211770;
      }

      v20.n128_u32[0] = *a5;
      v51 = *(**(this + 13) + 632);

      v51(v20);
      return;
    }

    if (mSelector != 1869838183)
    {
      goto LABEL_101;
    }

    if ((*(*this + 112))(this, a2, a3, a6, a7, a8) > a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1333;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioDevicePropertyIOThreadOSWorkgroup", buf, 0x12u);
      }

      v58 = __cxa_allocate_exception(0x10uLL);
      *v58 = off_1F5991DD8;
      v58[2] = 561211770;
    }

    v24 = *(**(this + 13) + 688);

    goto LABEL_61;
  }

  if (mSelector > 1935959153)
  {
    if (mSelector != 1935959154)
    {
      if (mSelector != 1937077093)
      {
        goto LABEL_101;
      }

      v25 = a3->mScope;
      v26 = HALS_ObjectMap::CopyObjectByObjectID(**(this + 9));
      v89 = 0;
      v90 = &v89;
      v91 = 0x3802000000;
      v92 = __Block_byref_object_copy__12047;
      v93 = __Block_byref_object_dispose__12048;
      memset(v94, 0, sizeof(v94));
      v95 = 1;
      v82 = 0;
      v83 = &v82;
      v84 = 0x3802000000;
      v85 = __Block_byref_object_copy__12047;
      v86 = __Block_byref_object_dispose__12048;
      memset(v87, 0, sizeof(v87));
      v88 = 1;
      v78 = 0;
      v79 = &v78;
      v80 = 0x2000000000;
      v81 = 0;
      v74 = 0;
      v75 = &v74;
      v76 = 0x2000000000;
      v77 = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 1174405120;
      *&buf[16] = ___ZN14HALS_IOContext20SetIOProcStreamUsageERK30AudioHardwareIOProcStreamUsagejb_block_invoke;
      v97 = &unk_1F597F5B0;
      v105 = a4;
      v106 = v25 == 1768845428;
      v98 = &v78;
      v99 = &v74;
      v102 = this;
      v103 = a5;
      v100 = &v89;
      v104 = v26;
      HALS_ObjectMap::RetainObject(v26, v27);
      v101 = &v82;
      v28 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v28, buf);
      if (v25 == 1768845428 && *(v75 + 24) == 1)
      {
        HALS_IOContext::UpdateInputStreamUsageStatus(v29);
      }

      if (*(v79 + 6))
      {
        v64 = __cxa_allocate_exception(0x10uLL);
        v65 = *(v79 + 6);
        *v64 = off_1F5991DD8;
        v64[2] = v65;
      }

      HALS_ObjectMap::ReleaseObject(v104, v30);
      _Block_object_dispose(&v74, 8);
      _Block_object_dispose(&v78, 8);
      _Block_object_dispose(&v82, 8);
      _Block_object_dispose(&v89, 8);
      HALS_ObjectMap::ReleaseObject(v26, v31);
      return;
    }

    if ((*(*this + 112))(this, a2, a3, a6, a7, a8) > a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1342;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioDevicePropertyIdentifySpeechDeviceToAllowDeviceRestart", buf, 0x12u);
      }

      v62 = __cxa_allocate_exception(0x10uLL);
      *v62 = off_1F5991DD8;
      v62[2] = 561211770;
    }

    v24 = *(**(this + 13) + 712);

    goto LABEL_61;
  }

  if (mSelector == 1902539642)
  {
LABEL_37:
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1229;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::SetPropertyData: bad property data size for kAudioDevicePropertyBufferFrameSize", buf, 0x12u);
      }

      v57 = __cxa_allocate_exception(0x10uLL);
      *v57 = off_1F5991DD8;
      v57[2] = 561211770;
    }

    v32 = *(**(this + 13) + 624);

    v32();
    return;
  }

  if (mSelector != 1919773028)
  {
    goto LABEL_101;
  }

  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 0x40000000;
  v70[2] = ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_38;
  v70[3] = &__block_descriptor_tmp_39_12040;
  v71 = a4;
  v70[4] = this;
  v70[5] = a5;
  v22 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v22, v70);
}

void sub_1DE5AF1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOContext::GetAudioCaptureMode(HALS_IOContext *this)
{
  v1 = *(this + 41);
  if (!v1)
  {
    v6[0] = 0;
    v6[1] = 0;
    HALS_System::GetInstance(&v7, 0, v6);
    if (v7 && *(v7 + 1848) == 1)
    {
      v3 = 0;
      v4 = *(v7 + 1852);
      if (v4 <= 1)
      {
        v1 = 1;
      }

      else
      {
        v1 = v4;
      }
    }

    else
    {
      v3 = 1;
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v3)
    {
      return *(this + 41);
    }
  }

  return v1;
}

uint64_t ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != 8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "HALS_IOContext.cpp";
      v9 = 1024;
      v10 = 1279;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioDevicePropertyAddReporterID", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = *(v2 + 168);
  v5 = *(v2 + 176);
  result = v2 + 168;
  if (v4 != v5)
  {
    while (*v4 != *v1)
    {
      if (++v4 == v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_7:
    std::vector<long long>::push_back[abi:ne200100](result, v1);
    std::__sort<std::__less<long long,long long> &,long long *>();
    return (*(**(v2 + 104) + 400))(*(v2 + 104));
  }

  return result;
}

uint64_t ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_38(uint64_t result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(result + 48) != 8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "HALS_IOContext.cpp";
      v9 = 1024;
      v10 = 1295;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::_SetPropertyData: bad property data size for kAudioDevicePropertyRemoveReporterID", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v1 = *(result + 32);
  v3 = *(v1 + 168);
  v2 = *(v1 + 176);
  if (v3 != v2)
  {
    while (*v3 != **(result + 40))
    {
      v3 += 8;
      if (v3 == v2)
      {
        v3 = *(v1 + 176);
        break;
      }
    }
  }

  if (v2 != v3)
  {
    v4 = v2 - (v3 + 8);
    if (v2 != v3 + 8)
    {
      memmove(v3, v3 + 8, v2 - (v3 + 8));
    }

    *(v1 + 176) = &v3[v4];
    v5 = *(**(v1 + 104) + 400);

    return v5();
  }

  return result;
}

uint64_t ___ZN14HALS_IOContext15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v2[22] = v2[21];
  v3 = *(a1 + 48);
  if (v3 >= 8)
  {
    v4 = 0;
    v5 = v3 & 0xFFFFFFF8;
    do
    {
      std::vector<long long>::push_back[abi:ne200100]((v2 + 21), (*(a1 + 40) + v4));
      v4 += 8;
    }

    while (v5 != v4);
  }

  std::__sort<std::__less<long long,long long> &,long long *>();
  v6 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::__equal_to &>(v2[21], v2[22]);
  if (v6 != v2[22])
  {
    v7 = v2[22];
    v2[22] = v6;
  }

  return (*(*v2[13] + 400))(v2[13], v7);
}

void std::vector<long long>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

__n128 __Block_byref_object_copy__12047(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN14HALS_IOContext20SetIOProcStreamUsageERK30AudioHardwareIOProcStreamUsagejb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  *(*(*(a1 + 32) + 8) + 24) = (*(**(v2 + 104) + 672))(*(v2 + 104), *(a1 + 72), *(a1 + 88), *(a1 + 92));
  *(*(*(a1 + 40) + 8) + 24) = (*(**(v2 + 104) + 160))(*(v2 + 104));
  v3 = (*(**(v2 + 104) + 144))(*(v2 + 104), a1 + 80);
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 40) = v3;
  *(v4 + 48) = v5;
  result = (*(**(v2 + 104) + 152))(*(v2 + 104), a1 + 80);
  v7 = *(*(a1 + 56) + 8);
  *(v7 + 40) = result;
  *(v7 + 48) = v8;
  return result;
}

uint64_t HALS_IOContext::UpdateInputStreamUsageStatus(HALS_PlatformBehaviors *a1)
{
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(a1);
  v2 = (*(*platform_behaviors + 64))(platform_behaviors);
  v3 = *(*HALS_PlatformBehaviors::get_platform_behaviors(v2) + 64);

  return v3();
}

void __copy_helper_block_e8_80c34_ZTS13HALS_ReleaserI11HALS_ClientE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a2 + 10);
  *(a1 + 80) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

uint64_t ___ZN14HALS_IOContext14SetStreamUsageERK26AudioIOContext_StreamUsagejb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  *(*(*(a1 + 32) + 8) + 24) = (*(**(v2 + 104) + 656))(*(v2 + 104), *(a1 + 72), *(a1 + 88), *(a1 + 92));
  *(*(*(a1 + 40) + 8) + 24) = (*(**(v2 + 104) + 160))(*(v2 + 104));
  v3 = (*(**(v2 + 104) + 144))(*(v2 + 104), a1 + 80);
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 40) = v3;
  *(v4 + 48) = v5;
  result = (*(**(v2 + 104) + 152))(*(v2 + 104), a1 + 80);
  v7 = *(*(a1 + 56) + 8);
  *(v7 + 40) = result;
  *(v7 + 48) = v8;
  return result;
}

void HALS_IOContext::GetPropertyData(HALS_IOContext *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v87 = *MEMORY[0x1E69E9840];
  v70 = a4;
  if (((*(*this + 96))(this, a2, a3, a9, a5, a6, a7, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v36 = 2003332927;
    goto LABEL_79;
  }

  mSelector = a3->mSelector;
  v16 = a3->mScope == 1768845428;
  if (a3->mSelector <= 1752135522)
  {
    if (mSelector <= 1718839673)
    {
      if (mSelector > 1634955891)
      {
        if (mSelector != 1634955892)
        {
          if (mSelector != 1684108387)
          {
            goto LABEL_75;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOContext.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1146;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyEnableCaptureFile", buf, 0x12u);
            }

            v38 = __cxa_allocate_exception(0x10uLL);
            *v38 = off_1F5991DD8;
            v38[2] = 561211770;
          }

          AudioCaptureMode = HALS_IOContext::GetAudioCaptureMode(this);
          goto LABEL_68;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1081;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyActualSampleRate", buf, 0x12u);
          }

          v42 = __cxa_allocate_exception(0x10uLL);
          *v42 = off_1F5991DD8;
          v42[2] = 561211770;
        }

        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 0x40000000;
        v62[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_30;
        v62[3] = &__block_descriptor_tmp_31_12068;
        v62[4] = this;
        v62[5] = a6;
        v29 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v29, v62);
LABEL_53:
        v26 = 8;
        goto LABEL_70;
      }

      if (mSelector == 1633906541)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1017;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyComposition", buf, 0x12u);
          }

          v39 = __cxa_allocate_exception(0x10uLL);
          *v39 = off_1F5991DD8;
          v39[2] = 561211770;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        LODWORD(v80) = 0;
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 0x40000000;
        v69[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
        v69[3] = &unk_1E8676E90;
        v69[6] = a6;
        v69[5] = this;
        v69[4] = buf;
        v28 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v28, v69);
        if (*(*&buf[8] + 24))
        {
          v54 = __cxa_allocate_exception(0x10uLL);
          v55 = *(*&buf[8] + 24);
          *v54 = off_1F5991DD8;
          v54[2] = v55;
        }

        v22 = 8;
      }

      else
      {
        if (mSelector != 1634300531)
        {
          v34 = 1633970532;
LABEL_74:
          if (mSelector != v34)
          {
            goto LABEL_75;
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          v36 = 1852797029;
LABEL_79:
          exception[2] = v36;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        LODWORD(v80) = 0;
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 0x40000000;
        v56[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_35;
        v56[3] = &unk_1E8676FC8;
        v56[4] = buf;
        v56[5] = this;
        v57 = a4;
        v56[6] = a6;
        v21 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v21, v56);
        v22 = 8 * *(*&buf[8] + 24);
      }
    }

    else
    {
      if (mSelector <= 1735354733)
      {
        if (mSelector == 1718839674)
        {
          goto LABEL_44;
        }

        if (mSelector != 1718843939)
        {
          goto LABEL_75;
        }

        if (a4 <= 0xF)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1035;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyBufferFrameSizeRange", buf, 0x12u);
          }

          v45 = __cxa_allocate_exception(0x10uLL);
          *v45 = off_1F5991DD8;
          v45[2] = 561211770;
        }

        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 0x40000000;
        v68[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_20;
        v68[3] = &__block_descriptor_tmp_21_12058;
        v68[4] = this;
        v68[5] = a6;
        v25 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v25, v68);
        v26 = 16;
LABEL_70:
        *a5 = v26;
        return;
      }

      if (mSelector == 1735354734)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1072;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceIsRunning", buf, 0x12u);
          }

          v47 = __cxa_allocate_exception(0x10uLL);
          *v47 = off_1F5991DD8;
          v47[2] = 561211770;
        }

        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 0x40000000;
        v63[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_28;
        v63[3] = &__block_descriptor_tmp_29_12066;
        v63[4] = this;
        v63[5] = a6;
        v32 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v32, v63);
        goto LABEL_69;
      }

      if (mSelector != 1735551332)
      {
        if (mSelector != 1735750501)
        {
          goto LABEL_75;
        }

        *a5 = a4;
        v18 = a3->mScope == 1768845428;
        v75 = 0;
        v76 = &v75;
        v77 = 0x2000000000;
        v78 = 0;
        v71 = 0;
        v72 = &v71;
        v73 = 0x2000000000;
        v74 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZNK14HALS_IOContext14GetStreamUsageER26AudioIOContext_StreamUsageRjb_block_invoke;
        v80 = &unk_1E8677050;
        v83 = this;
        v84 = a6;
        v85 = &v70;
        v86 = v18;
        v81 = &v75;
        v82 = &v71;
        v19 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v19, buf);
        if (*(v72 + 6))
        {
          v50 = __cxa_allocate_exception(0x10uLL);
          v51 = *(v72 + 6);
          *v50 = off_1F5991DD8;
          v50[2] = v51;
        }

        v70 = *(v76 + 6);
        _Block_object_dispose(&v71, 8);
        v20 = &v75;
LABEL_63:
        _Block_object_dispose(v20, 8);
        return;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      LODWORD(v80) = 0;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 0x40000000;
      v59[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_32;
      v59[3] = &unk_1E8676F78;
      v59[5] = this;
      v59[6] = a6;
      v60 = a4;
      v59[4] = buf;
      v61 = v16;
      v30 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v30, v59);
      v22 = 56 * *(*&buf[8] + 24);
    }

    *a5 = v22;
LABEL_62:
    v20 = buf;
    goto LABEL_63;
  }

  if (mSelector <= 1902539641)
  {
    if (mSelector <= 1852012898)
    {
      if (mSelector == 1752135523)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1193;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyHandleOverloadWithCatchup", buf, 0x12u);
          }

          v48 = __cxa_allocate_exception(0x10uLL);
          *v48 = off_1F5991DD8;
          v48[2] = 561211770;
        }

        AudioCaptureMode = (*(**(this + 13) + 736))(*(this + 13));
      }

      else
      {
        if (mSelector != 1836282994)
        {
          goto LABEL_75;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1090;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioIOContextProperty_MasterDevice", buf, 0x12u);
          }

          v41 = __cxa_allocate_exception(0x10uLL);
          *v41 = off_1F5991DD8;
          v41[2] = 561211770;
        }

        AudioCaptureMode = (*(**(this + 13) + 648))(*(this + 13));
      }

      goto LABEL_68;
    }

    if (mSelector == 1852012899)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1063;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyIOCycleUsage", buf, 0x12u);
        }

        v46 = __cxa_allocate_exception(0x10uLL);
        *v46 = off_1F5991DD8;
        v46[2] = 561211770;
      }

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 0x40000000;
      v64[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_26;
      v64[3] = &__block_descriptor_tmp_27_12064;
      v64[4] = this;
      v64[5] = a6;
      v31 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v31, v64);
      goto LABEL_69;
    }

    if (mSelector != 1869838183)
    {
      if (mSelector != 1870030194)
      {
        goto LABEL_75;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1136;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDeviceProcessorOverload", buf, 0x12u);
        }

        v40 = __cxa_allocate_exception(0x10uLL);
        *v40 = off_1F5991DD8;
        v40[2] = 561211770;
      }

      *a6 = 0;
      goto LABEL_69;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1175;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyIOThreadOSWorkgroup", buf, 0x12u);
      }

      v43 = __cxa_allocate_exception(0x10uLL);
      *v43 = off_1F5991DD8;
      v43[2] = 561211770;
    }

    *a6 = (*(**(this + 13) + 704))(*(this + 13));
    goto LABEL_53;
  }

  if (mSelector <= 1935959153)
  {
    if (mSelector != 1902539642)
    {
      if (mSelector == 1935763060)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOContext.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1054;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertySafetyOffset", buf, 0x12u);
          }

          v44 = __cxa_allocate_exception(0x10uLL);
          *v44 = off_1F5991DD8;
          v44[2] = 561211770;
        }

        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 0x40000000;
        v65[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_24;
        v65[3] = &__block_descriptor_tmp_25_12062;
        v65[4] = this;
        v65[5] = a6;
        v66 = v16;
        v23 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v23, v65);
        goto LABEL_69;
      }

      v34 = 1919773028;
      goto LABEL_74;
    }

LABEL_44:
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1045;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyBufferFrameSize", buf, 0x12u);
      }

      v37 = __cxa_allocate_exception(0x10uLL);
      *v37 = off_1F5991DD8;
      v37[2] = 561211770;
    }

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 0x40000000;
    v67[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_22;
    v67[3] = &__block_descriptor_tmp_23_12060;
    v67[4] = this;
    v67[5] = a6;
    v27 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v27, v67);
    goto LABEL_69;
  }

  switch(mSelector)
  {
    case 1935959154:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOContext.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1184;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyIdentifySpeechDeviceToAllowDeviceRestart", buf, 0x12u);
        }

        v49 = __cxa_allocate_exception(0x10uLL);
        *v49 = off_1F5991DD8;
        v49[2] = 561211770;
      }

      AudioCaptureMode = (*(**(this + 13) + 720))(*(this + 13));
LABEL_68:
      *a6 = AudioCaptureMode;
LABEL_69:
      v26 = 4;
      goto LABEL_70;
    case 1936482681:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      LODWORD(v80) = a4;
      v75 = 0;
      v76 = &v75;
      v77 = 0x2000000000;
      v78 = 0;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 0x40000000;
      v58[2] = ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
      v58[3] = &unk_1E8676FA0;
      v58[6] = this;
      v58[7] = a6;
      v58[4] = &v75;
      v58[5] = buf;
      v58[8] = a3;
      v33 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v33, v58);
      if (*(v76 + 6))
      {
        v52 = __cxa_allocate_exception(0x10uLL);
        v53 = *(v76 + 6);
        *v52 = off_1F5991DD8;
        v52[2] = v53;
      }

      *a5 = *(*&buf[8] + 24);
      _Block_object_dispose(&v75, 8);
      goto LABEL_62;
    case 1937077093:
      *a5 = a4;
      v17 = *(**(this + 13) + 680);

      v17();
      return;
  }

LABEL_75:

  HALS_Object::GetPropertyData(this, v14, a3, a4, a5, a6);
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 40) + 104) + 608))(*(*(a1 + 40) + 104));
  **(a1 + 48) = result;
  return result;
}

void sub_1DE5B1234(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    *(*(*(v2 + 32) + 8) + 24) = v4[2];
  }

  else
  {
    *(*(*(v2 + 32) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_22(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 104) + 304))(*(*(a1 + 32) + 104));
  **(a1 + 40) = result;
  return result;
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_24(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 104) + 760))(*(*(a1 + 32) + 104), *(a1 + 48));
  **(a1 + 40) = result;
  return result;
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_28(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 104) + 160))(*(*(a1 + 32) + 104));
  **(a1 + 40) = result;
  return result;
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  v4 = a1[7];
  v5 = *(a1[8] + 4);
  v6 = (*(**(v2 + 104) + 32))(*(v2 + 104), v5 == 1768845428);
  result = (*(**(v2 + 104) + 304))(*(v2 + 104));
  v8 = (16 * v6) | 8;
  if (*(v3 + 24) < v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_IOContext.cpp";
      v15 = 1024;
      v16 = 2251;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::GetPropertyData: bad property data size for kAudioDevicePropertyStreamConfiguration", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  *v4 = v6;
  if (v6)
  {
    v9 = result;
    v10 = 0;
    v11 = v4 + 4;
    do
    {
      result = (*(**(v2 + 104) + 72))(*(v2 + 104), v5 == 1768845428, v10, &v13);
      *(v11 - 2) = v18;
      *(v11 - 1) = v17 * v9;
      *v11 = 0;
      v11 += 2;
      ++v10;
    }

    while (v6 != v10);
  }

  *(v3 + 24) = v8;
  *(*(a1[4] + 8) + 24) = 0;
  return result;
}

void sub_1DE5B1718(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE5B1618);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOContext15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_35(uint64_t result)
{
  v1 = *(result + 56);
  v2 = *(*(result + 40) + 168);
  v3 = (*(*(result + 40) + 176) - v2) >> 3;
  v4 = v3 >= v1 >> 3;
  v5 = v1 >> 3;
  if (!v4)
  {
    v5 = (*(*(result + 40) + 176) - v2) >> 3;
  }

  *(*(*(result + 32) + 8) + 24) = v5;
  if (*(*(*(result + 32) + 8) + 24))
  {
    v6 = 0;
    do
    {
      if (v3 == v6)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      *(*(result + 48) + 8 * v6) = *(v2 + 8 * v6);
      ++v6;
    }

    while (v6 < *(*(*(result + 32) + 8) + 24));
  }

  return result;
}

uint64_t ___ZNK14HALS_IOContext14GetStreamUsageER26AudioIOContext_StreamUsageRjb_block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 48) + 104) + 664))(*(*(a1 + 48) + 104), *(a1 + 56), **(a1 + 64), *(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE5B1850(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    *(*(*(v2 + 40) + 8) + 24) = v4[2];
  }

  else
  {
    *(*(*(v2 + 40) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
}

uint64_t HALS_IOContext::GetPropertyDataSize(HALS_IOContext *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, HALS_Client *a6)
{
  v8 = (*(*this + 96))(this, a2, a3, a6, a5);
  if ((v8 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  v11 = 8;
  if (a3->mSelector <= 1752135522)
  {
    if (mSelector > 1718839673)
    {
      if (mSelector <= 1735354733)
      {
        if (mSelector == 1718839674)
        {
          return 4;
        }

        if (mSelector == 1718843939)
        {
          return 16;
        }

        goto LABEL_41;
      }

      switch(mSelector)
      {
        case 1735354734:
          return 4;
        case 1735551332:
          v23 = 0;
          v24 = &v23;
          v25 = 0x2000000000;
          v26 = 0;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 0x40000000;
          v22[2] = ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
          v22[3] = &unk_1E8676DF0;
          v22[4] = &v23;
          v22[5] = this;
          v22[6] = a3;
          v15 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v15, v22);
          v11 = (56 * *(v24 + 6));
          break;
        case 1735750501:
          v23 = 0;
          v24 = &v23;
          v25 = 0x2000000000;
          v26 = 0;
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 0x40000000;
          v21[2] = ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
          v21[3] = &unk_1E8676E18;
          v21[4] = &v23;
          v21[5] = this;
          v21[6] = a3;
          v13 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v13, v21);
          v11 = (4 * *(v24 + 6) + 4);
          break;
        default:
          goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (mSelector <= 1634300530)
    {
      if (mSelector == 1633906541 || mSelector == 1633970532)
      {
        return v11;
      }

      goto LABEL_41;
    }

    if (mSelector == 1634300531)
    {
      return (*(this + 44) - *(this + 42)) & 0xFFFFFFF8;
    }

    if (mSelector == 1634955892)
    {
      return v11;
    }

    v12 = 1684108387;
  }

  else
  {
    if (mSelector > 1902539641)
    {
      if (mSelector <= 1935959153)
      {
        if (mSelector != 1902539642)
        {
          if (mSelector != 1919773028)
          {
            v12 = 1935763060;
            goto LABEL_28;
          }

          return v11;
        }

        return 4;
      }

      switch(mSelector)
      {
        case 1935959154:
          return 4;
        case 1936482681:
          v23 = 0;
          v24 = &v23;
          v25 = 0x2000000000;
          v26 = 0;
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 0x40000000;
          v19[2] = ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
          v19[3] = &unk_1E8676E68;
          v19[4] = &v23;
          v19[5] = this;
          v19[6] = a3;
          v16 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v16, v19);
          v11 = (16 * *(v24 + 6)) | 8u;
          break;
        case 1937077093:
          v23 = 0;
          v24 = &v23;
          v25 = 0x2000000000;
          v26 = 0;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 0x40000000;
          v20[2] = ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
          v20[3] = &unk_1E8676E40;
          v20[4] = &v23;
          v20[5] = this;
          v20[6] = a3;
          v14 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v14, v20);
          v11 = (4 * *(v24 + 6) + 12);
          break;
        default:
          goto LABEL_41;
      }

LABEL_39:
      _Block_object_dispose(&v23, 8);
      return v11;
    }

    if (mSelector <= 1852012898)
    {
      if (mSelector == 1752135523)
      {
        return 4;
      }

      v12 = 1836282994;
    }

    else
    {
      if (mSelector == 1852012899)
      {
        return 4;
      }

      if (mSelector == 1869838183)
      {
        return v11;
      }

      v12 = 1870030194;
    }
  }

LABEL_28:
  if (mSelector == v12)
  {
    return 4;
  }

LABEL_41:

  return HALS_Object::GetPropertyDataSize(v8, v9, a3);
}

uint64_t ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke(void *a1)
{
  result = (*(**(a1[5] + 104) + 32))(*(a1[5] + 104), *(a1[6] + 4) == 1768845428);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_1DE5B1E98(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2(void *a1)
{
  result = (*(**(a1[5] + 104) + 32))(*(a1[5] + 104), *(a1[6] + 4) == 1768845428);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_1DE5B1F24(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3(void *a1)
{
  result = (*(**(a1[5] + 104) + 32))(*(a1[5] + 104), *(a1[6] + 4) == 1768845428);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_1DE5B1FB0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK14HALS_IOContext19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4(void *a1)
{
  result = (*(**(a1[5] + 104) + 32))(*(a1[5] + 104), *(a1[6] + 4) == 1768845428);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_1DE5B203C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOContext::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  if (((*(*a1 + 96))(a1, a2) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v5 = *a3;
  result = 1;
  if (*a3 <= 1752135522)
  {
    if (v5 > 1718839673)
    {
      if (v5 <= 1735354733)
      {
        if (v5 == 1718839674)
        {
          return result;
        }

        v7 = 1718843939;
LABEL_32:
        if (v5 == v7)
        {
          return 0;
        }

        goto LABEL_35;
      }

      if (v5 == 1735354734 || v5 == 1735551332)
      {
        return 0;
      }

      v8 = 1735750501;
    }

    else if (v5 <= 1634300530)
    {
      if (v5 == 1633906541)
      {
        return result;
      }

      v8 = 1633970532;
    }

    else
    {
      if (v5 == 1634300531)
      {
        return result;
      }

      if (v5 == 1634955892)
      {
        return 0;
      }

      v8 = 1684108387;
    }
  }

  else if (v5 <= 1902539641)
  {
    if (v5 > 1852012898)
    {
      if (v5 == 1852012899 || v5 == 1869838183)
      {
        return result;
      }

      v7 = 1870030194;
      goto LABEL_32;
    }

    if (v5 == 1752135523)
    {
      return result;
    }

    v8 = 1836282994;
  }

  else
  {
    if (v5 <= 1935959153)
    {
      if (v5 == 1902539642 || v5 == 1919773028)
      {
        return result;
      }

      v7 = 1935763060;
      goto LABEL_32;
    }

    if (v5 == 1935959154)
    {
      return result;
    }

    if (v5 == 1936482681)
    {
      return 0;
    }

    v8 = 1937077093;
  }

  if (v5 == v8)
  {
    return result;
  }

LABEL_35:

  return HALS_Object::IsPropertySettable(1, v4, a3);
}

BOOL HALS_IOContext::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 1;
  if (*a3 > 1836282993)
  {
    if (v3 > 1902539641)
    {
      if (v3 <= 1935959153)
      {
        if (v3 == 1902539642 || v3 == 1919773028)
        {
          return result;
        }

        v5 = 1935763060;
      }

      else if (v3 > 1937007733)
      {
        if (v3 == 1937007734)
        {
          return result;
        }

        v5 = 1937077093;
      }

      else
      {
        if (v3 == 1935959154)
        {
          return result;
        }

        v5 = 1936482681;
      }

LABEL_38:
      if (v3 == v5)
      {
        goto LABEL_39;
      }

      return 0;
    }

    if (v3 > 1869838182)
    {
      if (v3 == 1869838183 || v3 == 1870030194)
      {
        return result;
      }

      v6 = 1870098020;
    }

    else
    {
      if (v3 == 1836282994 || v3 == 1852012899)
      {
        return result;
      }

      v6 = 1869638759;
    }

LABEL_34:
    if (v3 == v6)
    {
      return result;
    }

    return 0;
  }

  if (v3 <= 1684108386)
  {
    if (v3 > 1634955891)
    {
      if (v3 == 1634955892 || v3 == 1650682995)
      {
        return result;
      }

      v6 = 1668047219;
    }

    else
    {
      if (v3 == 1633906541 || v3 == 1633970532)
      {
        return result;
      }

      v6 = 1634300531;
    }

    goto LABEL_34;
  }

  if (v3 <= 1735354733)
  {
    if (v3 == 1684108387 || v3 == 1718839674)
    {
      return result;
    }

    v6 = 1718843939;
    goto LABEL_34;
  }

  if (v3 <= 1735750500)
  {
    if (v3 == 1735354734)
    {
      return result;
    }

    v5 = 1735551332;
    goto LABEL_38;
  }

  if (v3 != 1735750501)
  {
    v6 = 1752135523;
    goto LABEL_34;
  }

LABEL_39:
  v7 = a3[1];
  return v7 == 1768845428 || v7 == 1869968496;
}

uint64_t HALS_IOContext::GetMIGDispatchQueue(HALS_IOContext *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

void HALS_IOContext::_Deactivate(HALS_IOContext *this)
{
  (*(**(this + 13) + 24))(*(this + 13));
  v2 = *(this + 15);
  if (v2)
  {
    HALS_IOProc::~HALS_IOProc(v2);
    MEMORY[0x1E12C1730]();
  }

  *(this + 15) = 0;
  free(*(this + 16));
  *(this + 16) = 0;
  free(*(this + 17));
  *(this + 17) = 0;
  *(this + 18) = 0;
  v3 = *(this + 12);
  *(this + 11) = 0;
  *(this + 12) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 2) = 0;
}

void HALS_IOContext::~HALS_IOContext(HALS_IOContext *this)
{
  HALS_IOContext::~HALS_IOContext(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F597F478;
  v2 = *(this + 14);
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v4);
    MEMORY[0x1E12C1730]();
  }

  std::unique_ptr<HALS_IOContext::OverloadReporter>::~unique_ptr[abi:ne200100](this + 29);
  std::unique_ptr<HALS_IOContext::TimeCodeIssueReporter>::~unique_ptr[abi:ne200100](this + 26);
  std::unique_ptr<HALS_IOContext::IntervalReporter>::~unique_ptr[abi:ne200100](this + 25);
  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x1E12C1730](v8, 0x1000C40B62306B4);
  }

  v9 = *(this + 7);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  HALS_Object::~HALS_Object(this);
}

uint64_t *std::unique_ptr<HALS_IOContext::OverloadReporter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((v2 + 16), 0);
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      std::default_delete<OverloadDescription>::operator()[abi:ne200100](v3);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C40878E4D35);
  }

  return a1;
}

uint64_t **std::unique_ptr<HALS_IOContext::TimeCodeIssueReporter>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](v2, 0);
    MEMORY[0x1E12C1730](v2, 0x20C4093837F09);
  }

  return a1;
}

uint64_t *std::unique_ptr<HALS_IOContext::IntervalReporter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((v2 + 64), 0);
    MEMORY[0x1E12C1730](v2, 0x1020C401DDC20BDLL);
  }

  return a1;
}

void std::default_delete<OverloadDescription>::operator()[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContext::HALS_IOContext(HALS_Object *a1, uint64_t a2, uint64_t a3, int a4, HALS_Object *a5)
{
  v6 = *MEMORY[0x1E69E9840];
  HALS_Object::HALS_Object(a1, 1768907636, 0, a2, a5);
  *v5 = &unk_1F597F478;
  v5[7] = 0;
  v5[8] = 0;
  v5[6] = 0;
  operator new();
}

void sub_1DE5B4504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, HALS_DSPHostIntegrationPoint_IOContext::CachedDetails *a12, __int128 a13, void **a14, HALS_IOContextDescription *a15, HALS_IOThread *a16, uint64_t a17, uint64_t a18, uint64_t a19, HALS_ObjectMap *a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  std::mutex::unlock((v57 + 8));
  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  HALS_ObjectMap::ReleaseObject(a20, v62);
  v63 = *(v56 + 2216);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  std::unique_ptr<HALS_IOContextHostedDSP>::~unique_ptr[abi:ne200100]((v56 + 2200));
  if (*(v56 + 2199) < 0)
  {
    operator delete(*a14);
  }

  std::thread::~thread((v56 + 2136));
  std::__hash_table<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::__unordered_map_hasher<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::hash<HALS_MultiTap *>,std::equal_to<HALS_MultiTap *>,true>,std::__unordered_map_equal<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::equal_to<HALS_MultiTap *>,std::hash<HALS_MultiTap *>,true>,std::allocator<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>>>::~__hash_table(v56 + 2096);
  HALS_IOContextDescription::~HALS_IOContextDescription(a15);
  v64 = *(v56 + 1496);
  if (v64)
  {
    *(v56 + 1504) = v64;
    operator delete(v64);
  }

  std::__function::__value_func<void ()(IORunningState)>::~__value_func[abi:ne200100](v56 + 1456);
  v65 = *(v56 + 1432);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  v66 = *(v56 + 1416);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::~__value_func[abi:ne200100](v56 + 1128);
  HALS_IOThread::~HALS_IOThread(a16);
  v67 = *(v56 + 40);
  if (v67)
  {
    std::__shared_weak_count::__release_weak(v67);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  std::__shared_weak_count::~__shared_weak_count(v56);
  operator delete(v68);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  v69 = *(v55 + 12);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  v70 = *(v55 + 9);
  *(v55 + 9) = 0;
  if (v70)
  {
    MEMORY[0x1E12C1730]();
  }

  v71 = *(v55 + 7);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  HALS_Object::~HALS_Object(v55);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HALS_IOContext_Legacy_Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597F788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_IOContext_MCP_Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F597F738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t ___ZNK14HALS_IOContext16GetNumberStreamsEb_block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 40) + 104) + 32))(*(*(a1 + 40) + 104), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE5B4E5C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE5B4EC8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_CreateIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *),void *)::$_0>(uint64_t **a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(**a1 + 120))
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "HALS_IOContext.cpp";
    v4 = 1024;
    v5 = 348;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::Server_Internal_CreateIOProcID: only one IOProc at a time is supported", &v2, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE5B5100(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v4 = *(v2 + 120);
    if (v4)
    {
      HALS_IOProc::~HALS_IOProc(v4);
      MEMORY[0x1E12C1730]();
    }

    *(v2 + 120) = 0;
    free(*(v2 + 128));
    *(v2 + 128) = 0;
    free(*(v2 + 136));
    *(v2 + 136) = 0;
    *(v2 + 144) = 0;
    **(v3 + 8) = 0;
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1DE5B5168(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE5B5170);
  }

  __clang_call_terminate(a1);
}

void caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_CreateIOProcIDWithBlock(dispatch_queue_s *,void({block_pointer})(AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*))::$_0>(uint64_t **a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(**a1 + 120))
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "HALS_IOContext.cpp";
    v4 = 1024;
    v5 = 388;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::Server_Internal_CreateIOProcIDWithBlock: only one IOProc at a time is supported", &v2, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE5B53B0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    MEMORY[0x1E12C1730](v2, 0x10A0C406C73CFA5);
    __cxa_begin_catch(exception_object);
    v6 = *(v3 + 120);
    if (v6)
    {
      HALS_IOProc::~HALS_IOProc(v6);
      MEMORY[0x1E12C1730]();
    }

    *(v3 + 120) = 0;
    free(*(v3 + 128));
    *(v3 + 128) = 0;
    free(*(v3 + 136));
    *(v3 + 136) = 0;
    *(v3 + 144) = 0;
    **(v4 + 8) = 0;
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE5B5444(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE5B544CLL);
  }

  __clang_call_terminate(a1);
}

void caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_DestroyIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 120) && *(v1 + 144) == (*a1)[1])
  {
    (*(**(v1 + 104) + 536))(*(v1 + 104));
    v2 = *(v1 + 120);
    if (v2)
    {
      HALS_IOProc::~HALS_IOProc(v2);
      MEMORY[0x1E12C1730]();
    }

    *(v1 + 120) = 0;
    free(*(v1 + 128));
    *(v1 + 128) = 0;
    free(*(v1 + 136));
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
  }
}

void sub_1DE5B5504(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_AddIOProc(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *),void *)::$_0>(uint64_t **a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(**a1 + 120))
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "HALS_IOContext.cpp";
    v4 = 1024;
    v5 = 456;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::Server_Internal_AddIOProc: only one IOProc at a time is supported", &v2, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE5B5730(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v3 = *(v2 + 120);
    if (v3)
    {
      HALS_IOProc::~HALS_IOProc(v3);
      MEMORY[0x1E12C1730]();
    }

    *(v2 + 120) = 0;
    free(*(v2 + 128));
    *(v2 + 128) = 0;
    free(*(v2 + 136));
    *(v2 + 136) = 0;
    *(v2 + 144) = 0;
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1DE5B5790(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE5B5798);
  }

  __clang_call_terminate(a1);
}

void caulk::function_ref<void ()(void)>::functor_invoker<HALS_IOContext::Server_Internal_RemoveIOProc(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>(uint64_t **a1)
{
  v1 = **a1;
  if (*(v1 + 120) && *(v1 + 144) == (*a1)[1])
  {
    (*(**(v1 + 104) + 536))(*(v1 + 104));
    v2 = *(v1 + 120);
    if (v2)
    {
      HALS_IOProc::~HALS_IOProc(v2);
      MEMORY[0x1E12C1730]();
    }

    *(v1 + 120) = 0;
    free(*(v1 + 128));
    *(v1 + 128) = 0;
    free(*(v1 + 136));
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
  }
}

void sub_1DE5B5850(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5B5808);
}

void sub_1DE5B585C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

UInt64 HALS_IOContext::Server_Internal_StartIOProcID(UInt64 this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), AudioTimeStamp *a3, uint64_t a4)
{
  v7 = this;
  v21 = *MEMORY[0x1E69E9840];
  if (a3 && (a4 & 8) != 0)
  {
    (*(**(this + 104) + 520))(*(this + 104), a3, a4);
    mHostTime = a3->mHostTime;
    this = mach_absolute_time();
    if (mHostTime > this)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v9 = a3->mHostTime;
        v13 = 136315906;
        v14 = "HALS_IOContext.cpp";
        v15 = 1024;
        v16 = 521;
        v17 = 2048;
        v18 = v9;
        v19 = 2048;
        v20 = mach_absolute_time();
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext::Server_Internal_StartIOProcID: Attempting to start in the past with a start time that is in the future. Requested time: %llu  Current time: %llu", &v13, 0x26u);
      }

      this = mach_absolute_time();
      a3->mHostTime = this;
    }

    if ((a3->mFlags & 2) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "HALS_IOContext.cpp";
        v15 = 1024;
        v16 = 528;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::Server_Internal_StartIOProcID: Invalid start time", &v13, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }
  }

  if (!a2)
  {
    return (*(**(v7 + 104) + 528))(*(v7 + 104), a2, a3, a4);
  }

  v10 = *(v7 + 120);
  if (!v10)
  {
    return (*(**(v7 + 104) + 528))(*(v7 + 104), a2, a3, a4);
  }

  if (*(v7 + 144) != a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HALS_IOContext.cpp";
      v15 = 1024;
      v16 = 534;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext::Server_Internal_StartIOProcID: failed to start because the IOProcID wasn't nullptr or wasn't registered", &v13, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    *v12 = off_1F5991DD8;
    v12[2] = 1852797029;
  }

  if ((*(v10 + 32) & 1) == 0)
  {
    return (*(**(v7 + 104) + 528))(*(v7 + 104), a2, a3, a4);
  }

  return this;
}

void sub_1DE5B5B98(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v3 = *(v2 + 120);
    if (v3)
    {
      *(v3 + 32) = 0;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  JUMPOUT(0x1DE5B5C34);
}

void sub_1DE5B5C2C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE5B5C94(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZN14HALS_IOContext16PowerHintChangedEj_block_invoke(uint64_t a1)
{
  result = (*(**(*(a1 + 40) + 104) + 552))(*(*(a1 + 40) + 104), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE5B5D14(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(HALS_IOContext::OverloadReporter *this)
{
  if (*this)
  {
    if (g_static_start_options == 1)
    {
LABEL_20:
      *this = 0;
      return;
    }
  }

  else if (*(this + 1) != 1 || g_static_start_options == 1)
  {
    goto LABEL_20;
  }

  v3 = *(this + 1);
  v29 = v3[2];
  v30 = v3[3];
  v31 = *(v3 + 8);
  v27 = *v3;
  v28 = v3[1];
  if (*(v3 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *(v3 + 9), *(v3 + 10));
  }

  else
  {
    v32 = *(v3 + 3);
  }

  v4 = v3[15];
  v41 = v3[14];
  v42 = v4;
  v43 = v3[16];
  v5 = v3[11];
  v37 = v3[10];
  v38 = v5;
  v6 = v3[13];
  v39 = v3[12];
  v40 = v6;
  v7 = v3[7];
  v33 = v3[6];
  v34 = v7;
  v8 = v3[9];
  v35 = v3[8];
  v36 = v8;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v44 = v27;
  v45 = v28;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    v14 = v32.__r_.__value_.__r.__words[0];
    std::string::__init_copy_ctor_external(&__p, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    v58 = v41;
    v59 = v42;
    v60 = v43;
    v54 = v37;
    v55 = v38;
    v56 = v39;
    v57 = v40;
    v50 = v33;
    v51 = v34;
    v52 = v35;
    v53 = v36;
    operator delete(v14);
  }

  else
  {
    __p = v32;
    v9 = v3[15];
    v58 = v3[14];
    v59 = v9;
    v60 = v3[16];
    v10 = v3[11];
    v54 = v3[10];
    v55 = v10;
    v11 = v3[13];
    v56 = v3[12];
    v57 = v11;
    v12 = v3[7];
    v50 = v3[6];
    v51 = v12;
    v13 = v3[9];
    v52 = v3[8];
    v53 = v13;
  }

  if (*MEMORY[0x1E69E3C08])
  {
    v15 = *(this + 2);
    v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v16 + 16) = 0;
    *v16 = &unk_1F597F660;
    *(v16 + 8) = 0;
    v63 = v46;
    v64 = v47;
    v65 = v48;
    v61 = v44;
    v62 = v45;
    v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v66, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v66[0] = __p;
    }

    v18 = v61;
    *(v16 + 40) = v62;
    v19 = v64;
    *(v16 + 56) = v63;
    *(v16 + 72) = v19;
    *(v16 + 88) = v65;
    *(v16 + 24) = v18;
    *(v16 + 96) = v66[0];
    v20 = v50;
    v21 = v51;
    v22 = v53;
    *(v16 + 152) = v52;
    *(v16 + 136) = v21;
    *(v16 + 120) = v20;
    v23 = v57;
    *(v16 + 216) = v56;
    v24 = v54;
    *(v16 + 200) = v55;
    *(v16 + 184) = v24;
    *(v16 + 168) = v22;
    v25 = v58;
    v26 = v60;
    *(v16 + 264) = v59;
    *(v16 + 280) = v26;
    *(v16 + 248) = v25;
    *(v16 + 232) = v23;
    *v16 = &unk_1F597F608;
    caulk::concurrent::messenger::enqueue(v15, v16);
    if (v17 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_1DE5B6060(void *a1)
{
  operator delete(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5B6028);
}

void sub_1DE5B60BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  caulk::concurrent::details::rt_message_call<HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(void)::$_0,HALS_OverloadMessage &>::rt_cleanup::~rt_cleanup(va);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(void)::$_0,HALS_OverloadMessage &>::rt_cleanup::~rt_cleanup(uint64_t *a1)
{
  v2 = *a1;
  *v2 = &unk_1F597F660;
  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  caulk::concurrent::message::~message(v2);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(void)::$_0,HALS_OverloadMessage &>::~rt_message_call(void **this)
{
  *this = &unk_1F597F660;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F597F660;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::message_call<HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(void)::$_0,HALS_OverloadMessage &>::~message_call(void **this)
{
  *this = &unk_1F597F660;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F597F660;
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  caulk::concurrent::message::~message(this);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext::IntervalReporter::SendIntervals(unsigned int)::$_0,HALS_IntervalMessage &>::perform(uint64_t a1, unsigned int a2)
{
  v35 = a1;
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 88));
  if (v4)
  {
    HALS_IOContext::GetIssueReporters(&v42, v4);
    v40 = 0;
    v41 = 0;
    v39 = &v40;
    if (*(a1 + 32) == 1 && *(a1 + 48) == 1)
    {
      v5 = *(a1 + 24);
      v6 = *(a1 + 40);
      v7 = __udivti3();
      std::to_string(&v38, v7);
      std::string::basic_string[abi:ne200100]<0>(__p, "hardwareStartBegin_UptimeNs");
      v44 = __p;
      v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v39, __p, &v44);
      v9 = v8;
      if (*(v8 + 79) < 0)
      {
        operator delete(*(v8 + 56));
      }

      *(v9 + 56) = v38;
      *(&v38.__r_.__value_.__s + 23) = 0;
      v38.__r_.__value_.__s.__data_[0] = 0;
      if (v37 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      v10 = __udivti3();
      std::to_string(&v38, v10);
      std::string::basic_string[abi:ne200100]<0>(__p, "hardwareStartEnd_UptimeNs");
      v44 = __p;
      v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v39, __p, &v44);
      v12 = v11;
      if (*(v11 + 79) < 0)
      {
        operator delete(*(v11 + 56));
      }

      *(v12 + 56) = v38;
      *(&v38.__r_.__value_.__s + 23) = 0;
      v38.__r_.__value_.__s.__data_[0] = 0;
      if (v37 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      v13 = __udivti3();
      if (v6 < v5)
      {
        v13 = -v13;
      }

      std::to_string(&v38, v13);
      std::string::basic_string[abi:ne200100]<0>(__p, "hardwareStartDuration_Ns");
      v44 = __p;
      v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v39, __p, &v44);
      v15 = v14;
      if (*(v14 + 79) < 0)
      {
        operator delete(*(v14 + 56));
      }

      *(v15 + 56) = v38;
      *(&v38.__r_.__value_.__s + 23) = 0;
      v38.__r_.__value_.__s.__data_[0] = 0;
      if (v37 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }
    }

    if (*(a1 + 64) == 1 && *(a1 + 80) == 1)
    {
      v16 = *(a1 + 56);
      v17 = *(a1 + 72);
      v18 = __udivti3();
      std::to_string(&v38, v18);
      std::string::basic_string[abi:ne200100]<0>(__p, "clientOutputSilentBegin_UptimeNs");
      v44 = __p;
      v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v39, __p, &v44);
      v20 = v19;
      if (*(v19 + 79) < 0)
      {
        operator delete(*(v19 + 56));
      }

      *(v20 + 56) = v38;
      *(&v38.__r_.__value_.__s + 23) = 0;
      v38.__r_.__value_.__s.__data_[0] = 0;
      if (v37 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      v21 = __udivti3();
      std::to_string(&v38, v21);
      std::string::basic_string[abi:ne200100]<0>(__p, "clientOutputSilentEnd_UptimeNs");
      v44 = __p;
      v22 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v39, __p, &v44);
      v23 = v22;
      if (*(v22 + 79) < 0)
      {
        operator delete(*(v22 + 56));
      }

      *(v23 + 56) = v38;
      *(&v38.__r_.__value_.__s + 23) = 0;
      v38.__r_.__value_.__s.__data_[0] = 0;
      if (v37 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      v24 = __udivti3();
      if (v17 < v16)
      {
        v24 = -v24;
      }

      std::to_string(&v38, v24);
      std::string::basic_string[abi:ne200100]<0>(__p, "clientOutputSilentDuration_Ns");
      v44 = __p;
      v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v39, __p, &v44);
      v26 = v25;
      if (*(v25 + 79) < 0)
      {
        operator delete(*(v25 + 56));
      }

      *(v26 + 56) = v38;
      *(&v38.__r_.__value_.__s + 23) = 0;
      v38.__r_.__value_.__s.__data_[0] = 0;
      if (v37 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v41)
    {
      std::to_string(&v38, 1);
      std::string::basic_string[abi:ne200100]<0>(__p, "AudioAnalyticsRetainMessage");
      v44 = __p;
      v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v39, __p, &v44);
      v28 = v27;
      if (*(v27 + 79) < 0)
      {
        operator delete(*(v27 + 56));
      }

      *(v28 + 56) = v38;
      *(&v38.__r_.__value_.__s + 23) = 0;
      v38.__r_.__value_.__s.__data_[0] = 0;
      if (v37 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      v29 = applesauce::CF::details::make_CFDictionaryRef<std::string,std::string>(&v39);
      v38.__r_.__value_.__r.__words[0] = v29;
      v30 = v42;
      v31 = v43;
      if (v42 != v43)
      {
        v32 = v42;
        do
        {
          v33 = *v32;
          if (AudioStatisticsLibraryLoader(void)::once != -1)
          {
            dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_7791);
          }

          if (AudioStatisticsLibraryLoader(void)::libSym)
          {
            AudioStatisticsLibraryLoader(void)::libSym(v33, v29, 536870919, 5);
          }

          ++v32;
        }

        while (v32 != v31);
      }

      CFRelease(v29);
    }

    else
    {
      v30 = v42;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v40);
    if (v30)
    {
      operator delete(v30);
    }
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  return caulk::concurrent::details::rt_message_call<HALS_IOContext::IntervalReporter::SendIntervals::$_0,HALS_IntervalMessage &>::rt_cleanup::~rt_cleanup(&v35);
}

void sub_1DE5B68A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, void *a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a23);
  if (a25)
  {
    operator delete(a25);
  }

  HALS_ObjectMap::ReleaseObject(v25, v27);
  caulk::concurrent::details::rt_message_call<HALS_IOContext::IntervalReporter::SendIntervals::$_0,HALS_IntervalMessage &>::rt_cleanup::~rt_cleanup(&a9);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext::IntervalReporter::SendIntervals(unsigned int)::$_0,HALS_IntervalMessage &>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::IntervalReporter::SendIntervals(unsigned int)::$_0,HALS_IntervalMessage &>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext::TimeCodeIssueReporter::SendTimeCodeIssue(unsigned int,unsigned int)::$_0,HALS_TimeCodeIssueMessage &>::perform(caulk::concurrent::message *a1, unsigned int a2)
{
  v21 = a1;
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 7));
  if (v4)
  {
    HALS_IOContext::GetIssueReporters(&v27, v4);
    v26[0] = 0;
    v26[1] = 0;
    v25 = v26;
    memset(&__str, 0, sizeof(__str));
    std::string::basic_string[abi:ne200100]<0>(__p, "issue_type");
    v29 = __p;
    v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v25, __p, &v29);
    if (*(v5 + 79) < 0)
    {
      *(v5 + 64) = 13;
      v6 = *(v5 + 56);
    }

    else
    {
      v6 = (v5 + 56);
      *(v5 + 79) = 13;
    }

    strcpy(v6, "timecodeIssue");
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(a1 + 6);
    if ((v7 & 2) != 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v9 = ",HostTimeOutOfBounds";
      }

      else
      {
        v9 = "HostTimeOutOfBounds";
      }

      if (size)
      {
        v10 = 20;
      }

      else
      {
        v10 = 19;
      }

      std::string::append(&__str, v9, v10);
      v7 = *(a1 + 6);
    }

    if ((v7 & 4) != 0)
    {
      v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = __str.__r_.__value_.__l.__size_;
      }

      if (v11)
      {
        v12 = ",TimeStampOutOfLine";
      }

      else
      {
        v12 = "TimeStampOutOfLine";
      }

      if (v11)
      {
        v13 = 19;
      }

      else
      {
        v13 = 18;
      }

      std::string::append(&__str, v12, v13);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "clockResetReason");
    v29 = __p;
    v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v25, __p, &v29);
    std::string::operator=((v14 + 56), &__str);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = applesauce::CF::details::make_CFDictionaryRef<std::string,std::string>(&v25);
    __p[0] = v15;
    v16 = v27;
    v17 = v28;
    if (v27 != v28)
    {
      v18 = v27;
      do
      {
        v19 = *v18;
        if (AudioStatisticsLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_9769);
        }

        if (AudioStatisticsLibraryLoader(void)::libSym)
        {
          AudioStatisticsLibraryLoader(void)::libSym(v19, v15, 7, 6);
        }

        ++v18;
      }

      while (v18 != v17);
    }

    CFRelease(v15);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v26[0]);
    if (v16)
    {
      operator delete(v16);
    }
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  return caulk::concurrent::details::rt_message_call<HALS_IOContext::TimeCodeIssueReporter::SendTimeCodeIssue(unsigned int,unsigned int)::$_0,HALS_TimeCodeIssueMessage &>::rt_cleanup::~rt_cleanup(&v21);
}

void sub_1DE5B6C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, void *a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a23);
  if (a25)
  {
    operator delete(a25);
  }

  HALS_ObjectMap::ReleaseObject(v25, v27);
  caulk::concurrent::details::rt_message_call<HALS_IOContext::TimeCodeIssueReporter::SendTimeCodeIssue(unsigned int,unsigned int)::$_0,HALS_TimeCodeIssueMessage &>::rt_cleanup::~rt_cleanup(&a9);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOContext::TimeCodeIssueReporter::SendTimeCodeIssue(unsigned int,unsigned int)::$_0,HALS_TimeCodeIssueMessage &>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::TimeCodeIssueReporter::SendTimeCodeIssue(unsigned int,unsigned int)::$_0,HALS_TimeCodeIssueMessage &>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContext::RemoveTap(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v3 = a2;
  v4 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 800))(a1, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE5B6E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContext::SignalOverloadToClient(std::__shared_weak_count **this)
{
  v2 = AMCP::Utility::configure_syscall_mask_for_normal_priority(this);
  v3 = MEMORY[0x1E69E3C08];
  if (v2)
  {
    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*v3)
    {
      goto LABEL_38;
    }

    v6 = *(v4 + 8);
    v7 = (v2 << 32) | 0x6CALL;
    v8 = caulk::rt_safe_memory_resource::rt_allocate(*v3);
    *(v8 + 16) = 0;
    *(v8 + 20) = 16;
    *(v8 + 24) = "HALS_IOContext.cpp";
    *(v8 + 32) = v7;
    *v8 = &unk_1F597F7D8;
    *(v8 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v6, v8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v9 = ((*this)[8].__shared_weak_owners_)(this);
  if (!v9 || (platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v9), ((*(*platform_behaviors + 104))(platform_behaviors) & 1) != 0))
  {
    v11 = *(this + 20);
    if (!v11)
    {
      v11 = *(this + 4);
    }

    *&v30.mSelector = 0x676C6F626F766572;
    v30.mElement = 0;
    HALS_Object::PropertiesChanged_Sync(this, v11, 0, 1, &v30);
    goto LABEL_31;
  }

  v13 = this[11];
  v14 = this[12];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v13)
  {
    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*v3)
    {
      goto LABEL_38;
    }

    v18 = *(v23 + 8);
    v20 = caulk::rt_safe_memory_resource::rt_allocate(*v3);
    v21 = v20;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 20) = 16;
    *(v20 + 24) = "HALS_IOContext.cpp";
    *(v20 + 32) = 1745;
    v22 = &unk_1F597F830;
LABEL_27:
    *v20 = v22;
    v12 = caulk::concurrent::messenger::enqueue(v18, v21);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    goto LABEL_29;
  }

  v12 = (v13->__vftable[2].~__shared_weak_count)(v13);
  if (v12)
  {
    v15 = v12 == 268451843;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*v3)
    {
      goto LABEL_38;
    }

    v18 = *(v16 + 8);
    v19 = (v12 << 32) | 0x6D7;
    v20 = caulk::rt_safe_memory_resource::rt_allocate(*v3);
    v21 = v20;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 20) = 16;
    *(v20 + 24) = "HALS_IOContext.cpp";
    *(v20 + 32) = v19;
    v22 = &unk_1F597F888;
    goto LABEL_27;
  }

LABEL_29:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_31:
  v24 = AMCP::Utility::configure_syscall_mask_for_realtime_priority(v12);
  if (!v24)
  {
    return;
  }

  v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*v3)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v27 = *(v25 + 8);
  v28 = (v24 << 32) | 0x6E5;
  v29 = caulk::rt_safe_memory_resource::rt_allocate(*v3);
  *(v29 + 16) = 0;
  *(v29 + 20) = 16;
  *(v29 + 24) = "HALS_IOContext.cpp";
  *(v29 + 32) = v28;
  *v29 = &unk_1F597F8E0;
  *(v29 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v27, v29);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void sub_1DE5B7188(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_3,std::tuple<char const*,int,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::SignalOverloadToClient - Failed to set the syscall mask back to realtime priority: %d", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_3,std::tuple<char const*,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_2,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::SignalOverloadToClient: failed to receive the client message for overload notification, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_2,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::SignalOverloadToClient: no client connection", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_0,std::tuple<char const*,int,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::SignalOverloadToClient - Failed to set the syscall mask to normal priority: %d", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::SignalOverloadToClient(void)::$_0,std::tuple<char const*,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext::WaitForClientToBeginTransport(HALS_IOContext *this)
{
  v2 = (*(*this + 208))(this);
  if (!v2)
  {
    return 1;
  }

  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v2);
  if ((*(*platform_behaviors + 104))(platform_behaviors))
  {
    return 1;
  }

  v12 = 0;
  do
  {
    v11[0] = this;
    v11[1] = &v12;
    (*(**(this + 13) + 368))(*(this + 13), caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext::WaitForClientToBeginTransport(void)::$_0>, v11);
  }

  while (((*(**(this + 13) + 392))() & 1) == 0 && v12 == 268451843);
  if ((*(**(this + 13) + 392))(*(this + 13)))
  {
    return 1;
  }

  v5 = v12;
  if (!v12)
  {
    return 1;
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v8 = *(v6 + 8);
    v9 = (v5 << 32) | 0x700;
    v10 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v10 + 16) = 0;
    *(v10 + 20) = 16;
    *(v10 + 24) = "HALS_IOContext.cpp";
    *(v10 + 32) = v9;
    *v10 = &unk_1F597F990;
    *(v10 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v8, v10);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::WaitForClientToBeginTransport(void)::$_1,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::IOWorkLoop: did not receive the first poke from the client, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::WaitForClientToBeginTransport(void)::$_1,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext::WaitForClientToBeginTransport(void)::$_0>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    *v1[1] = (*(*v3 + 112))(v3);
  }

  else
  {
    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
      return;
    }

    v7 = *(v5 + 8);
    v8 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v8 + 16) = 0;
    *(v8 + 20) = 16;
    *(v8 + 24) = "HALS_IOContext.cpp";
    *(v8 + 32) = 1781;
    *v8 = &unk_1F597F938;
    *(v8 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v7, v8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE5B7B8C(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __clang_call_terminate(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::WaitForClientToBeginTransport(void)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::PerformIO: no client connection", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::WaitForClientToBeginTransport(void)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *HALS_IOContext::CallClientIOProc(HALS_IOContext *this, int a2, int a3, unsigned int a4, char a5)
{
  v60 = a2;
  v59 = a5;
  *&v58[1] = 0;
  v8 = (*(**(this + 13) + 48))(*(this + 13), 0);
  *v58 = v8 != 0;
  v9 = (*(*this + 208))(this);
  if (v9 && (platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v9), ((*(*platform_behaviors + 104))(platform_behaviors) & 1) == 0))
  {
    if (!a4)
    {
      (*(**(this + 13) + 288))(*(this + 13));
      kdebug_trace();
      v47 = *(this + 13);
      v48 = *(this + 14);
      block = v47;
      v62 = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        v47 = *(this + 13);
      }

      v57 = *(this + 11);
      *&v51 = &block;
      *(&v51 + 1) = &v57;
      *&v52 = &v60;
      *(&v52 + 1) = v58;
      *&v53 = &v58[1];
      *(&v53 + 1) = &v59;
      (*(*v47 + 368))(v47, caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0>, &v51);
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      if ((v58[0] & 1) == 0)
      {
        return *&v58[1];
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 = *(this + 15);
    if (v11 && *(v11 + 32) == 1 && (a4 & 1) == 0)
    {
      v12 = (*(**(this + 13) + 32))(*(this + 13), 1);
      **(this + 16) = v12;
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          (*(**(this + 13) + 72))(*(this + 13), 1, v14, &v51);
          v15 = *(this + 16) + v13 * 4;
          *(v15 + 8) = HIDWORD(v53);
          v16 = DWORD2(v53) * a3;
          if (DWORD2(v52) != 1819304813)
          {
            v16 = v53;
          }

          *(v15 + 12) = v16;
          v17 = (*(**(this + 13) + 312))();
          v18 = *(this + 16);
          *&v18[v13 + 4] = v17;
          ++v14;
          v13 += 4;
        }

        while (v14 < *v18);
      }

      v19 = (*(**(this + 13) + 32))(*(this + 13), 0);
      **(this + 17) = v19;
      if (v19)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          (*(**(this + 13) + 72))(*(this + 13), 0, v21, &v51);
          v22 = *(this + 17) + v20 * 4;
          *(v22 + 8) = HIDWORD(v53);
          v23 = DWORD2(v53) * a3;
          if (DWORD2(v52) != 1819304813)
          {
            v23 = v53;
          }

          *(v22 + 12) = v23;
          v24 = (*(**(this + 13) + 312))();
          v25 = *(this + 17);
          *&v25[v20 + 4] = v24;
          ++v21;
          v20 += 4;
        }

        while (v21 < *v25);
      }

      v26 = (*(**(this + 13) + 288))(*(this + 13));
      v27 = v26[3];
      v29 = *v26;
      v28 = v26[1];
      v53 = v26[2];
      v54 = v27;
      v51 = v29;
      v52 = v28;
      v30 = v26[7];
      v32 = v26[4];
      v31 = v26[5];
      v55[2] = v26[6];
      v55[3] = v30;
      v55[0] = v32;
      v55[1] = v31;
      v33 = v26[11];
      v35 = v26[8];
      v34 = v26[9];
      v56[2] = v26[10];
      v56[3] = v33;
      v56[0] = v35;
      v56[1] = v34;
      kdebug_trace();
      v37 = *(this + 15);
      v36 = *(this + 16);
      v38 = *(this + 17);
      if (*v37)
      {
        (*v37)(*(this + 20), &v51, v36, v55, v38, v56, *(v37 + 8));
      }

      else
      {
        v49 = *(v37 + 24);
        if (v49)
        {
          v50 = *(v37 + 16);
          if (v50)
          {
            block = MEMORY[0x1E69E9820];
            v62 = 0x40000000;
            v63 = ___ZN11HALS_IOProc4CallEjPK14AudioTimeStampPK15AudioBufferListS2_PS3_S2__block_invoke;
            v64 = &__block_descriptor_tmp_18498;
            v65 = v37;
            v66 = &v51;
            v67 = v36;
            v68 = v55;
            v69 = v38;
            v70 = v56;
            dispatch_sync(v50, &block);
          }

          else
          {
            (*(v49 + 16))(v49, &v51, v36, v55, v38, v56);
          }
        }
      }

      kdebug_trace();
      if (!v8)
      {
        return *&v58[1];
      }

      goto LABEL_23;
    }
  }

  if (!v8)
  {
    return *&v58[1];
  }

  (*(**(this + 13) + 256))(*(this + 13));
LABEL_23:
  if ((*(**(this + 13) + 280))(*(this + 13)))
  {
    kdebug_trace();
    ++*(this + 27);
    *(this + 28) = 0;
    v39 = *(this + 25);
    if ((*(v39 + 40) & 1) == 0)
    {
      *(v39 + 32) = mach_absolute_time();
      *(v39 + 40) = 1;
    }

    return *&v58[1];
  }

  v40 = *(this + 28) + 1;
  *(this + 27) = 0;
  *(this + 28) = v40;
  v41 = *(this + 25);
  if (*(v41 + 56))
  {
    return *&v58[1];
  }

  Interval::PostEnd((v41 + 32));
  v42 = *(this + 25);
  v43 = *(this + 4);
  v51 = *v42;
  v52 = v42[1];
  v53 = v42[2];
  v54 = v42[3];
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v45 = *(v42 + 8);
    v46 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v46 + 8) = 0;
    *(v46 + 16) = 0;
    *(v46 + 24) = v51;
    *(v46 + 40) = v52;
    *(v46 + 56) = v53;
    *(v46 + 72) = v54;
    *(v46 + 88) = v43;
    *v46 = &unk_1F597F688;
    caulk::concurrent::messenger::enqueue(v45, v46);
    return *&v58[1];
  }

  __break(1u);
  return result;
}

void sub_1DE5B83E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void caulk::rt_function_ref<void ()(void)>::functor_invoker<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0>(uint64_t a1)
{
  v1 = *a1;
  if (!**(*a1 + 8))
  {
    v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_29;
    }

    v4 = *(v2 + 8);
    v5 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v5 + 16) = 0;
    *(v5 + 20) = 16;
    *(v5 + 24) = "HALS_IOContext.cpp";
    *(v5 + 32) = 1822;
    *v5 = &unk_1F597F9E8;
    *(v5 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v4, v5);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v6 = *v1[1];
  if (!v6)
  {
    (*(***v1 + 256))(**v1);
LABEL_28:
    kdebug_trace();
    return;
  }

  v7 = (*(*v6 + 88))(v6, *v1[2], *v1[3], *v1[5]);
  v9 = v8;
  if (v7)
  {
    (*(***v1 + 256))(**v1);
LABEL_27:
    (*(***v1 + 856))(**v1, v9 & 1);
    goto LABEL_28;
  }

  if ((v8 & 0x100) != 0)
  {
    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v19 = *(v17 + 8);
      v20 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v20 + 16) = 0;
      *(v20 + 20) = 2;
      *(v20 + 24) = "HALS_IOContext.cpp";
      *(v20 + 32) = 1834;
      *v20 = &unk_1F597FA40;
      *(v20 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v19, v20);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      *v1[4] = 1;
      goto LABEL_27;
    }
  }

  else
  {
    v10 = HIDWORD(v7);
    if (HIDWORD(v7))
    {
      v11 = *v1[2] == HIDWORD(v7);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_27;
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v14 = *(v12 + 8);
      v15 = *v1[2] + 1;
      v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v16 + 16) = 0;
      *(v16 + 20) = 2;
      *(v16 + 24) = "HALS_IOContext.cpp";
      *(v16 + 32) = 1839;
      *(v16 + 36) = v10;
      *(v16 + 40) = v15;
      *v16 = &unk_1F597FA98;
      *(v16 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v14, v16);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      goto LABEL_27;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int,int,int> &)#1},std::tuple<char const*,int,int,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::CallClientIOProc: received an out of order message (got %d want: %d)", &v11, 0x1Eu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int,int,int> &)#1},std::tuple<char const*,int,int,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#2},std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::CallClientIOProc: client io proc is stopping", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#2},std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext::PerformIO: no client connection", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext::CallClientIOProc(unsigned int,unsigned int,BOOL,BOOL)::$_0::operator() const(void)::{lambda(std::tuple<char const*,int> &)#1},std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOContext::GetIssueReporters(HALS_IOContext *this, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x4002000000;
  v9 = __Block_byref_object_copy__49_12194;
  v10 = __Block_byref_object_dispose__50_12195;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK14HALS_IOContext17GetIssueReportersEv_block_invoke;
  v5[3] = &unk_1E8677078;
  v5[4] = &v6;
  v5[5] = a2;
  v3 = (*(*a2 + 64))(a2);
  HALB_CommandGate::ExecuteCommand(v3, v5);
  v4 = v7;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this, v4[5], v4[6], (v4[6] - v4[5]) >> 3);
  _Block_object_dispose(&v6, 8);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_1DE5B8C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__49_12194(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__50_12195(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t *___ZNK14HALS_IOContext17GetIssueReportersEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = (*(*(a1 + 32) + 8) + 40);
  if (result != (v1 + 168))
  {
    return std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(result, *(v1 + 168), *(v1 + 176), (*(v1 + 176) - *(v1 + 168)) >> 3);
  }

  return result;
}

uint64_t HALS_IOContext::IncludesDevice(HALS_IOContext *this, int a2)
{
  if ((*(**(this + 13) + 768))(*(this + 13)) == a2)
  {
    v4 = 1;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___ZNK14HALS_IOContext14IncludesDeviceEj_block_invoke;
    v7[3] = &unk_1E86770A0;
    v8 = a2;
    v7[4] = &v9;
    v7[5] = this;
    v5 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v5, v7);
    v4 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return v4 & 1;
}

uint64_t ___ZNK14HALS_IOContext14IncludesDeviceEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = (*(**(v2 + 104) + 32))(*(v2 + 104), 0);
  if (result)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 104) + 72))(*(v2 + 104), 0, v5, v6);
      if (v6[0] == *(a1 + 48))
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }

      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }

  return result;
}

void DSP_Host_PropertySet::getHostedDSPPropertyInfo(DSP_Host_PropertySet *this, const AudioObjectPropertyAddress *a2, _DWORD *a3)
{
  if (!(*(*&a2->mSelector + 24))(a2, a3))
  {
    goto LABEL_18;
  }

  (*(*&a2->mSelector + 16))(&v11, a2);
  v10 = v14;
  v16 = v14;
  v17 = v15;
  v15 = 0;
  v14 = 0uLL;
  v11 = &unk_1F598E988;
  v18 = &v14;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v11 = &unk_1F598E9C8;
  if (v13 == 1 && cf)
  {
    CFRelease(cf);
  }

  v6 = v10;
  if (v10 != *(&v10 + 1))
  {
    while (1)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v7 + 44) == 1 ? *(v7 + 40) : 0;
        if (v8 == *a3)
        {
          break;
        }
      }

      v6 += 2;
      if (v6 == *(&v10 + 1))
      {
        goto LABEL_17;
      }
    }
  }

  if (*(&v10 + 1) == v6)
  {
LABEL_17:
    v11 = &v16;
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v11);
LABEL_18:
    *this = 0;
    *(this + 1) = 0;
    return;
  }

  *this = *v6;
  v9 = v6[1];
  *(this + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = &v16;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v11);
}

uint64_t DSP_Host_PropertySet::getHostedDSPPropertyDataType(AudioObjectPropertyAddress *this, AudioObjectPropertyAddress *a2)
{
  DSP_Host_PropertySet::getHostedDSPPropertyInfo(&v4, this, a2);
  if (v4 && *(v4 + 140) == 1)
  {
    v2 = *(v4 + 136);
  }

  else
  {
    v2 = 1;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_meta_stream_property_traits_list(void)::$_0 &&>>()
{
  v25[6] = *MEMORY[0x1E69E9840];
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
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1935960434, 1, 0, 0, &AMCP::Property_Traits<1935960434u>::k_valid_scopes, &AMCP::Property_Traits<1935894638u>::k_valid_scopes, 0, 1935960434, 8);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1935894638, 1, 0, 0, &AMCP::Property_Traits<1935894638u>::k_valid_scopes, &AMCP::Property_Traits<1952542835u>::k_valid_scopes, 0, 1935894638, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1952542835, 1, 0, 0, &AMCP::Property_Traits<1952542835u>::k_valid_scopes, &AMCP::Property_Traits<1952805485u>::k_valid_scopes, 0, 1952542835, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1952805485, 1, 0, 0, &AMCP::Property_Traits<1952805485u>::k_valid_scopes, &AMCP::Property_Traits<1936487523u>::k_valid_scopes, 0, 1952805485, 22);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1936487523, 1, 0, 0, &AMCP::Property_Traits<1936487523u>::k_valid_scopes, &AMCP::Property_Traits<1718444404u>::k_valid_scopes, 0, 1819569763, 12);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v23, 1718444404, 1, 0, 1, &AMCP::Property_Traits<1718444404u>::k_valid_scopes, &AMCP::Property_Traits<1718449187u>::k_valid_scopes, 0, 1885762592, 11);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v24, 1718449187, 1, 0, 0, &AMCP::Property_Traits<1718449187u>::k_valid_scopes, &AMCP::Property_Traits<1735554416u>::k_valid_scopes, 0, 1885762657, 1);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v25, 1919246700, 0, 0, 0, &AMCP::Property_Traits<1919246700u>::k_valid_scopes, "N4AMCP3DAL16Ring_Buffer_BaseE", 0, 0, 15);
  operator new();
}

void sub_1DE5B97F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9, a3, a4, a5, a6, a7, a8);
  v15 = 1248;
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

uint64_t HALB_Info::IsStandardClass(HALB_Info *this)
{
  v1 = this;
  result = 0;
  if (v1 <= 1768907635)
  {
    if (v1 <= 1651273578)
    {
      if (v1 > 1634757734)
      {
        if (v1 > 1634957682)
        {
          if (v1 == 1634957683 || v1 == 1635017576)
          {
            return 1;
          }

          v3 = 1650602615;
        }

        else
        {
          if (v1 == 1634757735 || v1 == 1634956402)
          {
            return 1;
          }

          v3 = 1634956642;
        }
      }

      else if (v1 > 1633907819)
      {
        if (v1 == 1633907820 || v1 == 1633969526)
        {
          return 1;
        }

        v3 = 1634689642;
      }

      else
      {
        if (v1 == 1633773415 || v1 == 1633841016)
        {
          return 1;
        }

        v3 = 1633905771;
      }
    }

    else if (v1 <= 1685287522)
    {
      if (v1 > 1668050547)
      {
        if (v1 == 1668050548 || v1 == 1684370292)
        {
          return 1;
        }

        v3 = 1684895092;
      }

      else
      {
        if (v1 == 1651273579 || v1 == 1668047723)
        {
          return 1;
        }

        v3 = 1668049264;
      }
    }

    else if (v1 <= 1701734253)
    {
      if (v1 == 1685287523 || v1 == 1701078390)
      {
        return 1;
      }

      v3 = 1701733488;
    }

    else if (v1 > 1718432369)
    {
      if (v1 == 1718432370)
      {
        return 1;
      }

      v3 = 1751740518;
    }

    else
    {
      if (v1 == 1701734254)
      {
        return 1;
      }

      v3 = 1702259059;
    }

LABEL_70:
    if (v1 != v3)
    {
      return result;
    }

    return 1;
  }

  if (v1 > 1936483187)
  {
    if (v1 <= 1937072757)
    {
      if (v1 > 1936744813)
      {
        if (v1 == 1936744814 || v1 == 1937006960)
        {
          return 1;
        }

        v3 = 1937072749;
      }

      else
      {
        if (v1 == 1936483188 || v1 == 1936483442)
        {
          return 1;
        }

        v3 = 1936682095;
      }
    }

    else if (v1 <= 1953458027)
    {
      if (v1 == 1937072758 || v1 == 1952541794)
      {
        return 1;
      }

      v3 = 1952672883;
    }

    else if (v1 > 1986817380)
    {
      if (v1 == 1999790690)
      {
        return 1;
      }

      v3 = 1986817381;
    }

    else
    {
      if (v1 == 1953458028)
      {
        return 1;
      }

      v3 = 1953656941;
    }

    goto LABEL_70;
  }

  if (v1 <= 1852601963)
  {
    if (v1 > 1818588779)
    {
      if (v1 == 1818588780 || v1 == 1819504226)
      {
        return 1;
      }

      v3 = 1836414053;
    }

    else
    {
      if (v1 == 1768907636 || v1 == 1784767339)
      {
        return 1;
      }

      v3 = 1815241314;
    }

    goto LABEL_70;
  }

  if (v1 <= 1886544236)
  {
    if (v1 == 1852601964 || v1 == 1885888878)
    {
      return 1;
    }

    v3 = 1885893481;
    goto LABEL_70;
  }

  if (v1 > 1936028001)
  {
    if (v1 == 1936028002)
    {
      return 1;
    }

    v3 = 1936028007;
    goto LABEL_70;
  }

  if (v1 != 1886544237)
  {
    v3 = 1919182198;
    goto LABEL_70;
  }

  return 1;
}

uint64_t HALB_Info::GetBaseClass(HALB_Info *this)
{
  if (this <= 1768907635)
  {
    if (this <= 1651273578)
    {
      if (this > 1634757734)
      {
        if (this > 1634957682)
        {
          if (this == 1634957683)
          {
            return 1634689642;
          }

          if (this == 1635017576)
          {
            return 1953458028;
          }

          v2 = 1650602615;
LABEL_74:
          if (this == v2)
          {
            return 1953458028;
          }

          return 1634689642;
        }

        if (this == 1634757735 || this == 1634956402)
        {
          return 1634689642;
        }

        v1 = 1634956642;
LABEL_43:
        if (this == v1)
        {
          return 1633969526;
        }

        return 1634689642;
      }

      if (this > 1633907819)
      {
        if (this == 1634689642)
        {
          return 0;
        }

        return 1634689642;
      }

      if (this != 1633773415)
      {
        return 1634689642;
      }
    }

    else
    {
      if (this <= 1685287522)
      {
        if (this > 1668050547)
        {
          if (this == 1668050548)
          {
            return 1634689642;
          }

          if (this != 1684370292)
          {
            v2 = 1684895092;
            goto LABEL_74;
          }

          return 1936483188;
        }

        if (this != 1651273579)
        {
          if (this != 1668047723)
          {
            v2 = 1668049264;
            goto LABEL_74;
          }

          return 1936483188;
        }

        return 1633907820;
      }

      if (this > 1701734253)
      {
        if (this <= 1718432369)
        {
          if (this == 1701734254)
          {
            return 1634689642;
          }

          v2 = 1702259059;
          goto LABEL_74;
        }

        if (this == 1718432370)
        {
          return 1953458028;
        }

        if (this != 1751740518)
        {
          return 1634689642;
        }

        return 1936483188;
      }

      if (this == 1685287523)
      {
        return 1936483188;
      }

      if (this != 1701078390)
      {
        v1 = 1701733488;
        goto LABEL_43;
      }
    }

    return 1633969526;
  }

  if (this > 1936483187)
  {
    if (this <= 1937072757)
    {
      if (this > 1936744813)
      {
        if (this != 1936744814)
        {
          if (this == 1937006960)
          {
            return 1634689642;
          }

          v2 = 1937072749;
          goto LABEL_74;
        }
      }

      else if (this != 1936483188 && this != 1936483442)
      {
        v2 = 1936682095;
        goto LABEL_74;
      }
    }

    else
    {
      if (this <= 1953458027)
      {
        if (this == 1937072758)
        {
          return 1818588780;
        }

        if (this != 1952541794)
        {
          return 1634689642;
        }

        return 1953458028;
      }

      if (this > 1986817380)
      {
        if (this == 1986817381)
        {
          return 1818588780;
        }

        v2 = 1999790690;
        goto LABEL_74;
      }

      if (this != 1953458028)
      {
        if (this == 1953656941)
        {
          return 1634757735;
        }

        return 1634689642;
      }
    }

    return 1633907820;
  }

  if (this <= 1852601963)
  {
    if (this <= 1818588779)
    {
      if (this == 1768907636)
      {
        return 1634689642;
      }

      if (this != 1784767339)
      {
        v2 = 1815241314;
        goto LABEL_74;
      }

      return 1953458028;
    }

    if (this != 1818588780)
    {
      if (this == 1819504226)
      {
        return 1953458028;
      }

      v2 = 1836414053;
      goto LABEL_74;
    }

    return 1633907820;
  }

  if (this <= 1886544236)
  {
    if (this != 1852601964)
    {
      if (this != 1885888878)
      {
        v2 = 1885893481;
        goto LABEL_74;
      }

      return 1953458028;
    }

    return 1936483188;
  }

  if (this <= 1936028001)
  {
    if (this != 1886544237)
    {
      v1 = 1919182198;
      goto LABEL_43;
    }

    return 1818588780;
  }

  if (this != 1936028002)
  {
    if (this != 1936028007)
    {
      return 1634689642;
    }

    return 1818588780;
  }

  return 1651273579;
}

BOOL HALB_Info::IsSubClass(HALB_Info *this, int a2)
{
  if (a2 > 1768907635)
  {
    if (a2 <= 1936483187)
    {
      if (a2 > 1852601963 || a2 <= 1818588779 || a2 != 1818588780)
      {
        return this == a2;
      }

      v2 = 0;
      if (this <= 1936028006)
      {
        if (this == 1818588780)
        {
          return 1;
        }

        v3 = 1886544237;
        goto LABEL_125;
      }

      if (this == 1936028007 || this == 1986817381)
      {
        return 1;
      }

      v8 = 25206;
      goto LABEL_115;
    }

    if (a2 > 1937072757)
    {
      if (a2 != 1953458028)
      {
        return this == a2;
      }

      goto LABEL_31;
    }

    if (a2 != 1936483188)
    {
      return this == a2;
    }

    v2 = 0;
    if (this <= 1751740517)
    {
      if (this == 1668047723 || this == 1684370292)
      {
        return 1;
      }

      v3 = 1685287523;
      goto LABEL_125;
    }

    if (this == 1751740518)
    {
      return 1;
    }

    v9 = 1936483188;
LABEL_72:
    if (this == v9)
    {
      return 1;
    }

    v3 = 1852601964;
    goto LABEL_125;
  }

  if (a2 > 1651273578)
  {
    if (a2 >= 1668050548 || a2 != 1651273579)
    {
      return this == a2;
    }

    v6 = this == 1651273579;
    v7 = 1936028002;
    return v6 || this == v7;
  }

  if (a2 <= 1634757734)
  {
    if (a2 <= 1633907819)
    {
      return this == a2;
    }

    if (a2 != 1633907820)
    {
      if (a2 != 1633969526)
      {
        if (a2 != 1634689642)
        {
          return this == a2;
        }

        return 1;
      }

      v2 = 0;
      if (this <= 1701078389)
      {
        if (this == 1633773415)
        {
          return 1;
        }

        v3 = 1633969526;
      }

      else
      {
        if (this == 1701078390 || this == 1919182198)
        {
          return 1;
        }

        v3 = 1701733488;
      }

LABEL_125:
      if (this != v3)
      {
        return v2;
      }

      return 1;
    }

    v2 = 0;
    if (this <= 1836414052)
    {
      if (this <= 1685287522)
      {
        if (this <= 1668047722)
        {
          if (this > 1650602614)
          {
            if (this == 1650602615)
            {
              return 1;
            }

            v3 = 1651273579;
          }

          else
          {
            if (this == 1633907820)
            {
              return 1;
            }

            v3 = 1635017576;
          }

          goto LABEL_125;
        }

        if (this <= 1684370291)
        {
          if (this == 1668047723)
          {
            return 1;
          }

          v3 = 1668049264;
          goto LABEL_125;
        }

        v10 = 1684370292;
        goto LABEL_123;
      }

      if (this <= 1784767338)
      {
        if (this > 1718432369)
        {
          if (this == 1718432370)
          {
            return 1;
          }

          v3 = 1751740518;
        }

        else
        {
          if (this == 1685287523)
          {
            return 1;
          }

          v3 = 1702259059;
        }

        goto LABEL_125;
      }

      if (this > 1818588779)
      {
        if (this == 1818588780)
        {
          return 1;
        }

        v3 = 1819504226;
        goto LABEL_125;
      }

LABEL_107:
      if (this == 1784767339)
      {
        return 1;
      }

      v3 = 1815241314;
      goto LABEL_125;
    }

    if (this > 1936483441)
    {
      if (this > 1937072757)
      {
        if (this <= 1953458027)
        {
          if (this == 1937072758)
          {
            return 1;
          }

          v3 = 1952541794;
        }

        else
        {
          if (this == 1953458028 || this == 1999790690)
          {
            return 1;
          }

          v3 = 1986817381;
        }

        goto LABEL_125;
      }

      if (this <= 1936744813)
      {
        if (this == 1936483442)
        {
          return 1;
        }

        v3 = 1936682095;
        goto LABEL_125;
      }

      v11 = 1936744814;
LABEL_113:
      if (this == v11)
      {
        return 1;
      }

      v8 = 25197;
LABEL_115:
      v3 = v8 | 0x73750000;
      goto LABEL_125;
    }

    if (this > 1886544236)
    {
      if (this > 1936028006)
      {
        if (this == 1936028007)
        {
          return 1;
        }

        v3 = 1936483188;
      }

      else
      {
        if (this == 1886544237)
        {
          return 1;
        }

        v3 = 1936028002;
      }

      goto LABEL_125;
    }

    if (this > 1885888877)
    {
LABEL_96:
      if (this == 1885888878)
      {
        return 1;
      }

      v3 = 1885893481;
      goto LABEL_125;
    }

    v9 = 1836414053;
    goto LABEL_72;
  }

  if (a2 <= 1634957682)
  {
    if (a2 != 1634757735)
    {
      return this == a2;
    }

    v6 = this == 1634757735;
    v7 = 1953656941;
    return v6 || this == v7;
  }

  if (a2 == 1650685548)
  {
LABEL_31:
    v2 = 0;
    if (this > 1819504225)
    {
      if (this > 1936682094)
      {
        if (this > 1952541793)
        {
          if (this == 1952541794 || this == 1999790690)
          {
            return 1;
          }

          v3 = 1953458028;
          goto LABEL_125;
        }

        v11 = 1936682095;
        goto LABEL_113;
      }

      if (this <= 1885888877)
      {
        if (this == 1819504226)
        {
          return 1;
        }

        v3 = 1836414053;
        goto LABEL_125;
      }

      goto LABEL_96;
    }

    if (this <= 1702259058)
    {
      if (this <= 1668049263)
      {
        if (this == 1635017576)
        {
          return 1;
        }

        v3 = 1650602615;
        goto LABEL_125;
      }

      v10 = 1668049264;
LABEL_123:
      if (this == v10)
      {
        return 1;
      }

      v3 = 1684895092;
      goto LABEL_125;
    }

    if (this <= 1784767338)
    {
      if (this == 1702259059)
      {
        return 1;
      }

      v3 = 1718432370;
      goto LABEL_125;
    }

    goto LABEL_107;
  }

  return this == a2;
}

uint64_t HALB_Info::GetPropertyDataType(HALB_Info *this, _BYTE *a2, BOOL *a3)
{
  if (a2)
  {
    *a2 = 1;
  }

  v3 = 1969828658;
  if (this > 1836281965)
  {
    if (this > 1936092450)
    {
      if (this > 1937140844)
      {
        if (this > 1969841249)
        {
          if (this <= 1986229349)
          {
            if (this <= 1970170979)
            {
              if ((this - 1969841250) <= 0x12 && ((1 << (this - 98)) & 0x4000F) != 0)
              {
                return v3;
              }

              goto LABEL_457;
            }

            if (this <= 1983013985)
            {
              if (this == 1970170980)
              {
                return v3;
              }

              v4 = 1970496882;
              goto LABEL_438;
            }

            if (this != 1983013986)
            {
              if (this == 1983996971)
              {
                return v3;
              }

              v4 = 1983997011;
              goto LABEL_438;
            }

            return 1718367026;
          }

          if (this <= 1986880098)
          {
            if (this > 1986359922)
            {
              if (this == 1986359923 || this == 1986425722)
              {
                return v3;
              }

              v4 = 1986622324;
              goto LABEL_438;
            }

            if (this == 1986229350)
            {
              return v3;
            }

            v12 = 1986290211;
            goto LABEL_452;
          }

          if (this <= 1987013740)
          {
            if (this == 1986880099 || this == 1986885219)
            {
              return 1718367026;
            }

            v5 = 1987013732;
            goto LABEL_399;
          }

          if (this == 1987013741)
          {
            return 1718367026;
          }

          if (this == 2003136116)
          {
            return v3;
          }

          if (this != 2020373603)
          {
            goto LABEL_457;
          }

          goto LABEL_362;
        }

        if (this > 1953002098)
        {
          if (this <= 1953526562)
          {
            if (this <= 1953325672)
            {
              if (this == 1953002099)
              {
                return v3;
              }

              v4 = 1953002101;
              goto LABEL_438;
            }

            if (this == 1953325673)
            {
              return v3;
            }

            v8 = 1953326883;
            goto LABEL_444;
          }

          if (this <= 1953851747)
          {
            if (this != 1953526563)
            {
              v4 = 1953653102;
              goto LABEL_438;
            }

            return 1634284338;
          }

          if (this != 1953851748)
          {
            if (this == 1969514100)
            {
              return v3;
            }

            v9 = 1969841184;
            goto LABEL_423;
          }

          return 1667658612;
        }

        if (this <= 1952542834)
        {
          if (this > 1952542754)
          {
            if (this != 1952542755)
            {
              v4 = 1952542820;
              goto LABEL_438;
            }

            return 1886155636;
          }

          if (this != 1937140845)
          {
            v4 = 1937142886;
            goto LABEL_438;
          }

          return 1718367026;
        }

        if (this <= 1952805484)
        {
          if (this == 1952542835)
          {
            return v3;
          }

          v17 = 1952740195;
          goto LABEL_386;
        }

        if (this == 1952805485)
        {
          return v3;
        }

        v20 = 1952869748;
        goto LABEL_409;
      }

      if (this > 1936811875)
      {
        if (this <= 1936941933)
        {
          if (this <= 1936876643)
          {
            if ((this - 1936811876) > 0x10)
            {
              goto LABEL_457;
            }

            if (((1 << (this - 100)) & 0x18005) == 0)
            {
              if (this != 1936811890)
              {
                goto LABEL_457;
              }

              return 1634088500;
            }

            return 1718367026;
          }

          if (this > 1936941858)
          {
            if (this != 1936941859)
            {
              v4 = 1936941931;
              goto LABEL_438;
            }

            return 1634284338;
          }

          if (this == 1936876644)
          {
            return 1918990199;
          }

          v18 = 1936879204;
        }

        else
        {
          if (this <= 1937010787)
          {
            if (this > 1937007733)
            {
              if (this == 1937007734)
              {
                return v3;
              }

              if (this != 1937009955)
              {
                v4 = 1937010031;
                goto LABEL_438;
              }

              return 1634284338;
            }

            if (this != 1936941934)
            {
              v8 = 1936945763;
              goto LABEL_444;
            }

            return 1668510834;
          }

          if (this > 1937125987)
          {
            if (this == 1937125988)
            {
              return 1718367026;
            }

            if (this == 1937138723)
            {
              return 1634088500;
            }

            v5 = 1937140836;
            goto LABEL_399;
          }

          if (this == 1937010788)
          {
            return v3;
          }

          v18 = 1937077093;
        }

LABEL_448:
        if (this == v18)
        {
          return 1918990199;
        }

        goto LABEL_457;
      }

      if (this > 1936553331)
      {
        if (this <= 1936745314)
        {
          if (this <= 1936682094)
          {
            if (this == 1936553332)
            {
              return v3;
            }

            v9 = 1936618861;
            goto LABEL_423;
          }

          if (this == 1936682095)
          {
            return v3;
          }

          v22 = 24942;
        }

        else
        {
          if (this > 1936748066)
          {
            if (this == 1936748067)
            {
              return 1634284338;
            }

            if (this == 1936811108)
            {
              return 1918990199;
            }

            v17 = 1936811109;
            goto LABEL_386;
          }

          if (this == 1936745315)
          {
            return 1634284338;
          }

          v22 = 25462;
        }

        v5 = v22 | 0x73700000;
        goto LABEL_399;
      }

      if (this > 1936092531)
      {
        if (this > 1936290670)
        {
          if (this == 1936290671)
          {
            return v3;
          }

          if (this == 1936482681)
          {
            return 1918990199;
          }

          v4 = 1936483696;
          goto LABEL_438;
        }

        if (this != 1936092532)
        {
          v4 = 1936224868;
          goto LABEL_438;
        }

        return 1634951780;
      }

      if (this > 1936092512)
      {
        if (this == 1936092513)
        {
          return 1936876641;
        }

        v19 = 28013;
      }

      else
      {
        if (this == 1936092451)
        {
          return 1935828065;
        }

        v19 = 27967;
      }

      v20 = v19 | 0x73660000;
      goto LABEL_409;
    }

    if (this <= 1886156134)
    {
      if (this <= 1853059699)
      {
        if (this <= 1836479589)
        {
          if (this > 1836462691)
          {
            if (this <= 1836475426)
            {
              if (this == 1836462692)
              {
                return 1718367026;
              }

              v11 = 12915;
            }

            else
            {
              if (this == 1836475427)
              {
                return 1634088500;
              }

              if (this == 1836475490)
              {
                return 1718367026;
              }

              v11 = 29539;
            }

            v5 = v11 | 0x6D760000;
            goto LABEL_399;
          }

          if (this > 1836411235)
          {
            if (this != 1836411236)
            {
              v4 = 1836414053;
              goto LABEL_438;
            }

            return 1667658612;
          }

          if (this != 1836281966)
          {
            v4 = 1836282994;
            goto LABEL_438;
          }

          return 1718367026;
        }

        if (this > 1852400498)
        {
          if (this <= 1852601963)
          {
            if (this == 1852400499)
            {
              return 1667658612;
            }

            v8 = 1852601891;
            goto LABEL_444;
          }

          if (this == 1852601964)
          {
            return 1634284338;
          }

          if (this == 1852793963)
          {
            return v3;
          }

          v12 = 1853059619;
          goto LABEL_452;
        }

        if (this > 1851878763)
        {
          if (this == 1851878764)
          {
            return 1667658612;
          }

          if (this == 1851878770)
          {
            return v3;
          }

          v5 = 1852012899;
          goto LABEL_399;
        }

        if (this == 1836479590)
        {
          return v3;
        }

        v6 = 1851878757;
        goto LABEL_395;
      }

      if (this <= 1885762594)
      {
        if (this <= 1870098019)
        {
          if (this > 1869638758)
          {
            if (this != 1869638759)
            {
              v4 = 1870030194;
              goto LABEL_438;
            }

            return 1667658612;
          }

          if (this != 1853059700)
          {
            v4 = 1869180523;
            goto LABEL_438;
          }

          goto LABEL_362;
        }

        if (this <= 1885497699)
        {
          if (this == 1870098020)
          {
            return 1634284338;
          }

          v18 = 1885434987;
          goto LABEL_448;
        }

        if (this == 1885497700)
        {
          return 1667658612;
        }

        if (this == 1885632035)
        {
          return 1634284338;
        }

        v14 = 29728;
        goto LABEL_408;
      }

      if (this > 1885956451)
      {
        if ((this - 1885958719) <= 0x30 && ((1 << (this - 63)) & 0x1040000000001) != 0)
        {
          return v3;
        }

        if (this == 1885956452)
        {
          return 1667658612;
        }

        v8 = 1886152483;
        goto LABEL_444;
      }

      if (this > 1885762656)
      {
        if (this != 1885762657)
        {
          if (this != 1885762669)
          {
            v4 = 1885954665;
            goto LABEL_438;
          }

          return 1634951780;
        }

        return 1936876641;
      }

      if (this != 1885762595)
      {
        v14 = 29759;
LABEL_408:
        v20 = v14 | 0x70660000;
LABEL_409:
        if (this != v20)
        {
          goto LABEL_457;
        }

        return 1634951780;
      }

      return 1935828065;
    }

    if (this > 1920168546)
    {
      if (this > 1935894893)
      {
        if (this > 1935960433)
        {
          if (this > 1935962741)
          {
            if (this == 1935962742)
            {
              return v3;
            }

            v4 = 1936092276;
            goto LABEL_438;
          }

          if (this == 1935960434)
          {
            return v3;
          }

          v8 = 1935962738;
          goto LABEL_444;
        }

        if (this <= 1935946357)
        {
          if ((this - 1935896178) >= 2)
          {
            v9 = 1935894894;
            goto LABEL_423;
          }

          return 1667658612;
        }

        if (this != 1935946358)
        {
          v4 = 1935959154;
          goto LABEL_438;
        }

        return 1718367026;
      }

      if (this > 1935762291)
      {
        if (this <= 1935892840)
        {
          if (this == 1935762292)
          {
            return v3;
          }

          v4 = 1935763060;
          goto LABEL_438;
        }

        if (this != 1935892841 && this != 1935893353)
        {
          v4 = 1935894638;
          goto LABEL_438;
        }

        return 1634284338;
      }

      if (this <= 1934587251)
      {
        if (this != 1920168547)
        {
          v4 = 1920297316;
          goto LABEL_438;
        }

        return 1667658612;
      }

      if (this == 1934587252)
      {
        return v3;
      }

      if (this == 1934647619)
      {
        return 1918990199;
      }

      v4 = 1934647636;
      goto LABEL_438;
    }

    if (this > 1886548770)
    {
      if (this > 1919251298)
      {
        if (this <= 1919512166)
        {
          if (this == 1919251299)
          {
            return v3;
          }

          v4 = 1919251302;
          goto LABEL_438;
        }

        if (this == 1919512167)
        {
          return v3;
        }

        if (this != 1919773028)
        {
          v18 = 1919839344;
          goto LABEL_448;
        }

        goto LABEL_356;
      }

      if (this > 1902539641)
      {
        if (this == 1902539642)
        {
          return v3;
        }

        if (this == 1919055206)
        {
          return 1918990199;
        }

        v8 = 1919186467;
        goto LABEL_444;
      }

      if (this == 1886548771)
      {
        return 1634284338;
      }

      v13 = 29801;
LABEL_403:
      v4 = v13 | 0x70720000;
      goto LABEL_438;
    }

    if (this <= 1886353255)
    {
      if (this <= 1886221683)
      {
        if (this == 1886156135)
        {
          return v3;
        }

        v4 = 1886218606;
        goto LABEL_438;
      }

      if (this == 1886221684)
      {
        return v3;
      }

      v21 = 28020;
    }

    else
    {
      if (this > 1886415203)
      {
        if (this == 1886415204 || this == 1886545001)
        {
          return v3;
        }

        v13 = 26998;
        goto LABEL_403;
      }

      if (this == 1886353256)
      {
        return v3;
      }

      v21 = 30578;
    }

    v4 = v21 | 0x706F0000;
    goto LABEL_438;
  }

  if (this <= 1685089382)
  {
    if (this > 1667658617)
    {
      if (this <= 1668702577)
      {
        if (this > 1668181612)
        {
          if (this > 1668506479)
          {
            if (this <= 1668575851)
            {
              if (this == 1668506480)
              {
                return v3;
              }

              v8 = 1668510307;
            }

            else
            {
              if (this == 1668575852)
              {
                return 1634284338;
              }

              if (this == 1668639076)
              {
                return 1667658612;
              }

              v8 = 1668641652;
            }

            goto LABEL_444;
          }

          if (this <= 1668506402)
          {
            if (this == 1668181613)
            {
              return 1668510834;
            }

            v4 = 1668311396;
            goto LABEL_438;
          }

          if (this == 1668506403)
          {
            return 1634284338;
          }

          if (this == 1668506475)
          {
            return v3;
          }

          v6 = 1668506478;
LABEL_395:
          if (this != v6)
          {
            goto LABEL_457;
          }

          return 1668510834;
        }

        if (this > 1668047218)
        {
          if (this <= 1668049763)
          {
            if (this == 1668047219)
            {
              return v3;
            }

            v8 = 1668049699;
            goto LABEL_444;
          }

          if (this == 1668049764 || this == 1668049771)
          {
            return v3;
          }

          v6 = 1668181110;
          goto LABEL_395;
        }

        if (this <= 1667788396)
        {
          if (this == 1667658618)
          {
            return v3;
          }

          v6 = 1667787120;
          goto LABEL_395;
        }

        if (this != 1667788397)
        {
          v17 = 1667851118;
          goto LABEL_386;
        }

        return 1668510834;
      }

      if (this <= 1684301173)
      {
        if (this <= 1684107363)
        {
          if (this <= 1682929011)
          {
            if (this == 1668702578)
            {
              return v3;
            }

            v4 = 1682533920;
            goto LABEL_438;
          }

          if (this == 1682929012)
          {
            return v3;
          }

          v24 = 26471;
        }

        else
        {
          if (this > 1684157045)
          {
            if (this != 1684157046)
            {
              if (this == 1684236338)
              {
                return 1634284338;
              }

              v17 = 1684301171;
              goto LABEL_386;
            }

            return 1718367026;
          }

          if (this == 1684107364)
          {
            return v3;
          }

          v24 = 29795;
        }

        v4 = v24 | 0x64610000;
        goto LABEL_438;
      }

      if (this <= 1684500588)
      {
        if (this > 1684434035)
        {
          if (this == 1684434036 || this == 1684498541)
          {
            return v3;
          }

          v4 = 1684498544;
          goto LABEL_438;
        }

        if (this == 1684301174)
        {
          return v3;
        }

        v8 = 1684370979;
        goto LABEL_444;
      }

      if (this > 1684629093)
      {
        if (this == 1684629094 || this == 1684893796)
        {
          return v3;
        }

        v4 = 1685087596;
        goto LABEL_438;
      }

      if (this == 1684500589)
      {
        return 1718367026;
      }

      v18 = 1684500594;
      goto LABEL_448;
    }

    if (this > 1651010920)
    {
      if (this > 1652060005)
      {
        if (this > 1667461732)
        {
          if (this > 1667523954)
          {
            if (this != 1667523955)
            {
              if (this == 1667523958)
              {
                return v3;
              }

              v4 = 1667591277;
              goto LABEL_438;
            }

            return 1886155636;
          }

          if (this == 1667461733)
          {
            return v3;
          }

          v17 = 1667461737;
          goto LABEL_386;
        }

        if (this <= 1667327846)
        {
          if (this == 1652060006)
          {
            return v3;
          }

          v4 = 1652060014;
          goto LABEL_438;
        }

        if (this == 1667327847)
        {
          return v3;
        }

        if (this == 1667330160)
        {
          return 1667658612;
        }

        v6 = 1667460717;
        goto LABEL_395;
      }

      if (this > 1651272547)
      {
        if (this > 1651730809)
        {
          if (this == 1651730810)
          {
            return v3;
          }

          if (this != 1651735075)
          {
            v9 = 1651861860;
            goto LABEL_423;
          }

          return 1634088500;
        }

        if (this != 1651272548)
        {
          v8 = 1651472419;
          goto LABEL_444;
        }

        return 1886155636;
      }

      if (this > 1651074159)
      {
        if (this == 1651074160)
        {
          return v3;
        }

        v18 = 1651272546;
        goto LABEL_448;
      }

      if (this == 1651010921)
      {
        return v3;
      }

      v16 = 30313;
LABEL_253:
      v4 = v16 | 0x62680000;
      goto LABEL_438;
    }

    if (this <= 1634758764)
    {
      if (this <= 1634300530)
      {
        if (this <= 1633970531)
        {
          if (this == 1346585414)
          {
            return v3;
          }

          v17 = 1633906541;
          goto LABEL_386;
        }

        if (this != 1633970532)
        {
          v8 = 1634169456;
          goto LABEL_444;
        }
      }

      else
      {
        if (this > 1634496614)
        {
          if (this == 1634496615)
          {
            return v3;
          }

          if (this != 1634562932)
          {
            v9 = 1634755428;
            goto LABEL_423;
          }

          return 1667658612;
        }

        if (this != 1634300531)
        {
          v8 = 1634429294;
          goto LABEL_444;
        }
      }

LABEL_356:
      v23 = 1634284338;
      return (v23 + 770);
    }

    if (this > 1650682914)
    {
      if (this <= 1650685547)
      {
        if (this != 1650682915)
        {
          v4 = 1650682995;
          goto LABEL_438;
        }

        return 1634284338;
      }

      if (this == 1650685548)
      {
        return v3;
      }

      if (this == 1650751011)
      {
        return 1634284338;
      }

      v16 = 24949;
      goto LABEL_253;
    }

    if (this <= 1634955891)
    {
      if (this == 1634758765)
      {
        return v3;
      }

      v5 = 1634758774;
LABEL_399:
      if (this != v5)
      {
        goto LABEL_457;
      }

      return 1718367026;
    }

    if (this != 1634955892)
    {
      v4 = 1635087471;
      goto LABEL_438;
    }

LABEL_362:
    v23 = 1718367026;
    return (v23 + 770);
  }

  if (this > 1768845171)
  {
    if (this <= 1818850161)
    {
      if (this > 1818453106)
      {
        if (this > 1818456931)
        {
          if (this <= 1818456949)
          {
            if (this != 1818456932)
            {
              v7 = 29550;
LABEL_422:
              v9 = v7 | 0x6C630000;
              goto LABEL_423;
            }
          }

          else if (this != 1818456950)
          {
            if (this == 1818457190)
            {
              return v3;
            }

            v8 = 1818850145;
            goto LABEL_444;
          }
        }

        else
        {
          if (this > 1818454125)
          {
            if (this == 1818454126 || this == 1818455660)
            {
              return 1667658612;
            }

            v7 = 28270;
            goto LABEL_422;
          }

          if (this != 1818453107)
          {
            v5 = 1818453110;
            goto LABEL_399;
          }
        }

        return 1718367026;
      }

      if (this <= 1769174369)
      {
        if (this > 1768973154)
        {
          if (this == 1768973155)
          {
            return v3;
          }

          v4 = 1769173113;
          goto LABEL_438;
        }

        if (this == 1768845172)
        {
          return v3;
        }

        v17 = 1768907636;
        goto LABEL_386;
      }

      if (this <= 1784767338)
      {
        if (this == 1769174370)
        {
          return v3;
        }

        v4 = 1769302372;
        goto LABEL_438;
      }

      if (this == 1784767339)
      {
        return v3;
      }

      if (this == 1818452846)
      {
        return 1667658612;
      }

      v12 = 1818453106;
LABEL_452:
      if (this != v12)
      {
        goto LABEL_457;
      }

      return 1634088500;
    }

    if (this > 1835101041)
    {
      if (this <= 1835295858)
      {
        if (this > 1835295778)
        {
          if (this == 1835295779)
          {
            return 1634284338;
          }

          if (this == 1835295843)
          {
            return 1667658612;
          }

          v6 = 1835295854;
          goto LABEL_395;
        }

        if (this == 1835101042)
        {
          return 1668510834;
        }

        v15 = 29556;
LABEL_413:
        v4 = v15 | 0x6D610000;
        goto LABEL_438;
      }

      if (this > 1835758703)
      {
        if (this == 1835758704)
        {
          return 1886155636;
        }

        if (this == 1835821926)
        {
          return v3;
        }

        v8 = 1836281891;
        goto LABEL_444;
      }

      if (this == 1835295859)
      {
        return 1634284338;
      }

      v4 = 1835628607;
LABEL_438:
      if (this == v4)
      {
        return v3;
      }

      goto LABEL_457;
    }

    if (this <= 1819173228)
    {
      if (this <= 1819107690)
      {
        if (this != 1818850162)
        {
          v4 = 1818850926;
          goto LABEL_438;
        }

        return 1634284338;
      }

      if (this != 1819107691)
      {
        v9 = 1819111268;
        goto LABEL_423;
      }
    }

    else
    {
      if (this > 1819569762)
      {
        if (this == 1819569763)
        {
          return v3;
        }

        if (this == 1819634020)
        {
          return 1886155636;
        }

        v15 = 26990;
        goto LABEL_413;
      }

      if (this != 1819173229)
      {
        v9 = 1819501422;
        goto LABEL_423;
      }
    }

    return 1667658612;
  }

  if (this > 1735354733)
  {
    if (this > 1751740450)
    {
      if (this <= 1752135522)
      {
        if (this > 1751740523)
        {
          if (this != 1751740524)
          {
            if (this != 1752122448)
            {
              v4 = 1752131442;
              goto LABEL_438;
            }

            return 1886155636;
          }

          return 1667658612;
        }

        if (this == 1751740451)
        {
          return 1634284338;
        }

        v8 = 1751740518;
LABEL_444:
        if (this != v8)
        {
          goto LABEL_457;
        }

        return 1634284338;
      }

      if (this <= 1768174191)
      {
        if (this == 1752135523)
        {
          return v3;
        }

        if (this == 1768124270)
        {
          return 1668641388;
        }

        goto LABEL_457;
      }

      if (this == 1768174192 || this == 1768187246)
      {
        return v3;
      }

      v17 = 1768777573;
      goto LABEL_386;
    }

    if (this > 1735750500)
    {
      if (this <= 1751413615)
      {
        if (this != 1735750501)
        {
          v4 = 1751412337;
          goto LABEL_438;
        }

        return 1634284338;
      }

      if (this != 1751413616 && this != 1751474532)
      {
        v4 = 1751737454;
        goto LABEL_438;
      }

      return 1886155636;
    }

    if (this <= 1735551331)
    {
      if (this == 1735354734)
      {
        return v3;
      }

      v4 = 1735356005;
      goto LABEL_438;
    }

    if (this == 1735551332)
    {
      return 1918990199;
    }

    v17 = 1735554416;
LABEL_386:
    if (this != v17)
    {
      goto LABEL_457;
    }

    return 1886155636;
  }

  if (this > 1685287011)
  {
    if (this <= 1701733410)
    {
      if (this > 1685414762)
      {
        if (this != 1685414763)
        {
          if (this == 1685416292)
          {
            return v3;
          }

          v4 = 1698776147;
          goto LABEL_438;
        }

        return 1918990199;
      }

      if (this == 1685287012)
      {
        return v3;
      }

      v10 = 29808;
      goto LABEL_392;
    }

    if (this > 1718839673)
    {
      if (this == 1718839674)
      {
        return v3;
      }

      if (this != 1718843939)
      {
        v9 = 1719105134;
        goto LABEL_423;
      }

      return 1634088500;
    }

    if (this != 1701733411)
    {
      v4 = 1702193508;
      goto LABEL_438;
    }

    return 1634284338;
  }

  if (this > 1685222500)
  {
    if ((this - 1685278561) > 0x11 || ((1 << (this - 97)) & 0x20003) == 0)
    {
      if (this == 1685222501)
      {
        return v3;
      }

      v10 = 18515;
LABEL_392:
      v4 = v10 | 0x64730000;
      goto LABEL_438;
    }

    return 1886155636;
  }

  if ((this - 1685218913) <= 0x13 && ((1 << (this - 97)) & 0x90001) != 0)
  {
    return v3;
  }

  v9 = 1685089383;
LABEL_423:
  if (this == v9)
  {
    return 1667658612;
  }

LABEL_457:
  v3 = 1918990199;
  if (a2)
  {
    *a2 = 0;
  }

  return v3;
}