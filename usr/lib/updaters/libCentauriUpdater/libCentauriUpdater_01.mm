uint64_t std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t CentauriPlatform::getPlatformIdentifier(CentauriPlatform *this, uint64_t a2, unsigned __int16 *a3)
{
  if (qword_2A14F2180 != -1)
  {
    CentauriPlatform::getPlatformIdentifier();
  }

  if ((_MergedGlobals_0 & 1) == 0)
  {
    CentauriPlatform::getPlatformIdentifier(this);
    return 0;
  }

  if (HIBYTE(_MergedGlobals_0) != 1)
  {
    *v19 = 0;
    ThunderboltDeviceInfo = CentauriPlatform::getThunderboltDeviceInfo(&v19[1], v19, a3);
    if (ThunderboltDeviceInfo)
    {
      ThunderboltIdentifier = CentauriPlatform::getThunderboltIdentifier(v19[1], v19[0]);
      v11 = ThunderboltIdentifier;
      LogInstance = ACFULogging::getLogInstance(ThunderboltIdentifier);
      CentauriPlatform::thunderboltIdentifierToString(v11, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v7 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: thunderbolt, %s\n", "CentauriPlatform", "getPlatformIdentifier", p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = v11 | 0x80000000;
      goto LABEL_17;
    }

    v16 = ACFULogging::getLogInstance(ThunderboltDeviceInfo);
    ACFULogging::handleMessage(v16, 2, "%s::%s: failed to get Thunderbolt device info\n");
    return 0;
  }

  v3 = MGGetSInt64Answer();
  v4 = MGGetSInt64Answer();
  v5 = v4;
  if (!v3 || !v4)
  {
    v17 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v17, 2, "%s::%s: failed to get host chip ID (%lld) or board ID (%lld)\n");
    return 0;
  }

  v6 = ACFULogging::getLogInstance(v4);
  if (v3 >= 0x10000 || v5 >= 0x8000)
  {
    ACFULogging::handleMessage(v6, 2, "%s::%s: host chip ID (%lld) or board ID (%lld) out of range\n");
    return 0;
  }

  v7 = ACFULogging::handleMessage(v6, 3, "%s::%s: builtin, host chip ID 0x%04x, host board ID 0x%04x\n", "CentauriPlatform", "getPlatformIdentifier", v3, v5);
  v8 = v3 | ((v5 & 0x7FFF) << 16);
LABEL_17:
  v14 = ACFULogging::getLogInstance(v7);
  ACFULogging::handleMessage(v14, 3, "%s::%s: successfully generated identifier 0x%08x\n", "CentauriPlatform", "getPlatformIdentifier", v8);
  return v8;
}

void sub_299E98EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriPlatform::getThunderboltDeviceInfo(CentauriPlatform *this, unsigned __int16 *a2, unsigned __int16 *a3)
{
  parent = 0;
  v42 = 0;
  valuePtr = 0;
  if (!this || !a2)
  {
    CentauriPlatform::getThunderboltDeviceInfo(this);
    return 0;
  }

  v5 = IOServiceMatching("AppleCentauriManager");
  if (!v5)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
    return 0;
  }

  v6 = *MEMORY[0x29EDBB110];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v5);
  if (!MatchingService)
  {
    CentauriPlatform::getThunderboltDeviceInfo(MatchingService);
    return 0;
  }

  v8 = MatchingService;
  v9 = *MEMORY[0x29EDB8ED8];
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"Thunderbolt Path", *MEMORY[0x29EDB8ED8], 0);
  if (!CFProperty)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
    v29 = 0;
    goto LABEL_25;
  }

  v11 = CFProperty;
  v12 = CFGetTypeID(CFProperty);
  TypeID = CFStringGetTypeID();
  if (v12 != TypeID)
  {
    LogInstance = ACFULogging::getLogInstance(TypeID);
    v32 = CFGetTypeID(v11);
    ACFUCommon::cfTypeDescription(__p, v32);
    if (v41 >= 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = __p[0];
    }

    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: thunderbolt path property has wrong type %s\n", "CentauriPlatform", "getThunderboltDeviceInfo", v33);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_38;
  }

  v14 = IORegistryEntryCopyFromPath(v6, v11);
  if (!v14)
  {
    CentauriPlatform::getThunderboltDeviceInfo(v14);
LABEL_38:
    v29 = 0;
    goto LABEL_24;
  }

  v15 = v14;
  ParentEntry = IORegistryEntryGetParentEntry(v14, "IOService", &parent);
  if (ParentEntry)
  {
    v17 = 1;
  }

  else
  {
    v17 = parent == 0;
  }

  if (v17)
  {
    CentauriPlatform::getThunderboltDeviceInfo(ParentEntry);
LABEL_41:
    v29 = 0;
    goto LABEL_23;
  }

  v18 = IORegistryEntryCreateCFProperty(parent, @"Device Vendor ID", v9, 0);
  if (!v18)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
    goto LABEL_41;
  }

  v19 = v18;
  v20 = CFGetTypeID(v18);
  v21 = CFNumberGetTypeID();
  if (v20 != v21)
  {
    v34 = ACFULogging::getLogInstance(v21);
    v35 = CFGetTypeID(v19);
    ACFUCommon::cfTypeDescription(__p, v35);
    if (v41 >= 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    ACFULogging::handleMessage(v34, 2, "%s::%s: device vendor ID property has wrong type %s\n", "CentauriPlatform", "getThunderboltDeviceInfo", v36);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_48;
  }

  v22 = IORegistryEntryCreateCFProperty(parent, @"Device Model ID", v9, 0);
  if (!v22)
  {
    CentauriPlatform::getThunderboltDeviceInfo(0);
LABEL_48:
    v29 = 0;
    goto LABEL_22;
  }

  v23 = v22;
  v24 = CFGetTypeID(v22);
  v25 = CFNumberGetTypeID();
  if (v24 != v25)
  {
    v37 = ACFULogging::getLogInstance(v25);
    v38 = CFGetTypeID(v23);
    ACFUCommon::cfTypeDescription(__p, v38);
    if (v41 >= 0)
    {
      v39 = __p;
    }

    else
    {
      v39 = __p[0];
    }

    ACFULogging::handleMessage(v37, 2, "%s::%s: device model ID property has wrong type %s\n", "CentauriPlatform", "getThunderboltDeviceInfo", v39);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_58;
  }

  Value = CFNumberGetValue(v19, kCFNumberSInt64Type, &valuePtr);
  if (!Value)
  {
    CentauriPlatform::getThunderboltDeviceInfo(Value);
LABEL_58:
    v29 = 0;
    goto LABEL_21;
  }

  if (valuePtr >= 0x10000)
  {
    CentauriPlatform::getThunderboltDeviceInfo(&valuePtr);
    goto LABEL_58;
  }

  v27 = CFNumberGetValue(v23, kCFNumberSInt64Type, &v42);
  if (!v27)
  {
    CentauriPlatform::getThunderboltDeviceInfo(v27);
    goto LABEL_58;
  }

  v28 = v42;
  if (v42 >= 0x10000)
  {
    CentauriPlatform::getThunderboltDeviceInfo(&v42);
    goto LABEL_58;
  }

  *this = valuePtr;
  *a2 = v28;
  v29 = 1;
LABEL_21:
  CFRelease(v23);
LABEL_22:
  CFRelease(v19);
LABEL_23:
  IOObjectRelease(v15);
LABEL_24:
  CFRelease(v11);
LABEL_25:
  IOObjectRelease(v8);
  return v29;
}

void sub_299E9926C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriPlatform::getThunderboltIdentifier(CentauriPlatform *this, int a2)
{
  v3 = this;
  if (a2 == 45067 && this == 238)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a2 == 56869 && this == 90)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: (0x%04x, 0x%04x) -> %hhu\n", "CentauriPlatform", "getThunderboltIdentifier", v3, a2, v7);
  return v7;
}

void CentauriPlatform::thunderboltIdentifierToString(unsigned int a1@<W0>, std::string *a2@<X8>)
{
  v20[3] = *MEMORY[0x29EDCA608];
  v14 = a1;
  v15[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v16, "generic");
  v17 = 1;
  std::string::basic_string[abi:ne200100]<0>(v18, "Thunderstrike");
  v19 = 2;
  std::string::basic_string[abi:ne200100]<0>(v20, "TigrisCreek");
  std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::map[abi:ne200100](&v12, v15, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v20[i + 2]) < 0)
    {
      operator delete(v20[i]);
    }
  }

  v5 = v13[0];
  if (!v13[0])
  {
    goto LABEL_13;
  }

  v6 = v13;
  do
  {
    v7 = v5[32];
    v8 = v7 >= a1;
    v9 = v7 < a1;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * v9];
  }

  while (v5);
  if (v6 != v13 && *(v6 + 32) <= a1)
  {
    v10 = std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::at(&v12, &v14);
    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v10, v10[1]);
    }

    else
    {
      v11 = *v10;
      a2->__r_.__value_.__r.__words[2] = v10[2];
      *&a2->__r_.__value_.__l.__data_ = v11;
    }
  }

  else
  {
LABEL_13:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v12, v13[0]);
}

void sub_299E994AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14 + 72;
  v17 = -96;
  while (1)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 32;
    v17 += 32;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke()
{
  parent = 0;
  v0 = IOServiceMatching("AppleCentauriManager");
  if (v0)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v0);
    v2 = MatchingService;
    if (MatchingService)
    {
      ParentEntry = IORegistryEntryGetParentEntry(MatchingService, "IOService", &parent);
      if (ParentEntry)
      {
        v4 = 1;
      }

      else
      {
        v4 = parent == 0;
      }

      if (v4)
      {
        ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke_cold_1(ParentEntry);
      }

      else
      {
        v5 = *MEMORY[0x29EDB8ED8];
        CFProperty = IORegistryEntryCreateCFProperty(parent, @"centauri-builtin", *MEMORY[0x29EDB8ED8], 0);
        if (CFProperty)
        {
          _MergedGlobals_0 = 257;
        }

        else
        {
          CFProperty = IORegistryEntryCreateCFProperty(parent, @"centauri-builtin-protium", v5, 0);
          HIBYTE(_MergedGlobals_0) = CFProperty != 0;
          LOBYTE(_MergedGlobals_0) = 1;
          if (!CFProperty)
          {
            goto LABEL_11;
          }
        }

        CFRelease(CFProperty);
      }
    }

    else
    {
      ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke_cold_2(MatchingService);
    }
  }

  else
  {
    ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke_cold_3(0);
    v2 = 0;
  }

LABEL_11:
  result = parent;
  if (parent)
  {
    result = IOObjectRelease(parent);
    parent = 0;
  }

  if (v2)
  {
    return IOObjectRelease(v2);
  }

  return result;
}

uint64_t **std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::at(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 32);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::map[abi:ne200100](uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__emplace_hint_unique_key_args<CentauriPlatform::ThunderboltIdentifier,std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__emplace_hint_unique_key_args<CentauriPlatform::ThunderboltIdentifier,std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__find_equal<CentauriPlatform::ThunderboltIdentifier>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__construct_node<std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__find_equal<CentauriPlatform::ThunderboltIdentifier>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 32), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 32) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 32))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__construct_node<std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[32] = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_299E999DC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void CentauriUpdaterCreate_cold_1(uint64_t a1, void *a2, int a3)
{
  ACFULogging::handleMessage(a1, 2, "%s::%s: failed to initialize logging\n", "CentauriUpdater", "CentauriUpdaterCreate");

  populateCFError("CentauriUpdaterCreate", a2, "failed to initialize logging", a3);
}

void CentauriUpdaterCreate_cold_3(uint64_t a1, void *a2)
{
  ACFULogging::handleMessage(a1, 2, "%s::%s: failed to create restore object\n", "CentauriUpdater", "CentauriUpdaterCreate");

  populateCFError("CentauriUpdaterCreate", a2, "failed to create restore object", 1007);
}

void CentauriUpdaterCreate_cold_4(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to instantiate CF object\n", "CentauriUpdater", "CentauriUpdaterCreate");

  populateCFError("CentauriUpdaterCreate", a1, "failed to instantiate CF object", 4000);
}

void CentauriUpdaterCreate_cold_5(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to register class with CF\n", "CentauriUpdater", "CentauriUpdaterCreate");

  populateCFError("CentauriUpdaterCreate", a1, "failed to register class with CF", 4000);
}

CFMutableDataRef CentauriTransport::copySiKCertificateSigningRequest(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "copySiKCertificateSigningRequest");
  v3 = CentauriTransport::openInterfaceDriver(this);
  if ((v3 & 1) == 0)
  {
    v26 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v26, 2, "%s::%s: failed to open interface driver\n", "CentauriTransport", "copySiKCertificateSigningRequest");
    return 0;
  }

  v4 = CentauriTransport::sendCCHICommand(this, 0, 0, 6u);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFDataGetLength(v4);
  if (v6 == 4)
  {
    BytePtr = CFDataGetBytePtr(v5);
    v8 = *BytePtr;
    v9 = ACFULogging::getLogInstance(BytePtr);
    v10 = ACFULogging::handleMessage(v9, 0, "%s::%s: total size %u\n", "CentauriTransport", "copySiKCertificateSigningRequest", v8);
    if (v8)
    {
      v11 = *MEMORY[0x29EDB8ED8];
      Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], v8);
      if (Mutable)
      {
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v15 = v8 - v13;
          if (v8 - v13 >= 0x3F8)
          {
            v15 = 1016;
          }

          *bytes = v13;
          LODWORD(length) = v15;
          if (v14)
          {
            CFRelease(v14);
          }

          CFRelease(v5);
          v14 = CFDataCreate(v11, bytes, 8);
          v16 = ACFULogging::getLogInstance(v14);
          if (!v14)
          {
            break;
          }

          ACFULogging::handleMessage(v16, 0, "%s::%s: requesting offset %u, size %u\n", "CentauriTransport", "copySiKCertificateSigningRequest", *bytes, length);
          v17 = CentauriTransport::sendCCHICommand(this, v14, 0, 7u);
          if (!v17)
          {
            CFRelease(Mutable);
            v23 = v14;
            goto LABEL_20;
          }

          v5 = v17;
          v18 = CFDataGetLength(v17);
          if (v18 != length)
          {
            v24 = ACFULogging::getLogInstance(v18);
            v25 = CFDataGetLength(v5);
            ACFULogging::handleMessage(v24, 2, "%s::%s: unexpected response size %zu\n", "CentauriTransport", "copySiKCertificateSigningRequest", v25);
            CFRelease(Mutable);
            CFRelease(v14);
            Mutable = 0;
            goto LABEL_16;
          }

          v19 = CFDataGetBytePtr(v5);
          CFDataAppendBytes(Mutable, v19, length);
          v13 += length;
          if (v13 >= v8)
          {
            v21 = ACFULogging::getLogInstance(v20);
            ACFULogging::handleMessage(v21, 0, "%s::%s: success\n", "CentauriTransport", "copySiKCertificateSigningRequest");
            CFRelease(v14);
            goto LABEL_16;
          }
        }

        ACFULogging::handleMessage(v16, 2, "%s::%s: failed to create command payload\n", "CentauriTransport", "copySiKCertificateSigningRequest");
        v23 = Mutable;
LABEL_20:
        CFRelease(v23);
        return 0;
      }

      v29 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v29, 2, "%s::%s: failed to create mutable data\n", "CentauriTransport", "copySiKCertificateSigningRequest");
      goto LABEL_16;
    }

    v28 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v28, 2, "%s::%s: CSR unavailable\n");
  }

  else
  {
    v27 = ACFULogging::getLogInstance(v6);
    CFDataGetLength(v5);
    ACFULogging::handleMessage(v27, 2, "%s::%s: unexpected response size %zu for GetSize, expected %zu\n");
  }

  Mutable = 0;
LABEL_16:
  CFRelease(v5);
  return Mutable;
}

uint64_t CentauriTransport::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize base class\n", "CentauriTransport", "init");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize timestamps dictionary\n", "CentauriTransport", "init");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: invalid boot mode %d\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to determine platform\n", "CentauriTransport", "init");
}

uint64_t CentauriTransport::sendCCHICommand(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: payload too large: %lu\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to write: 0x%08x\n", v3, v4, v5);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to read: 0x%08x\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: error status %u in response\n", "CentauriTransport", "sendCCHICommand", *a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create response payload\n", "CentauriTransport", "sendCCHICommand");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: response too small: %u\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate buffer\n", "CentauriTransport", "sendCCHICommand");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: interface driver not opened\n", "CentauriTransport", "sendCCHICommand");
}

uint64_t CentauriTransport::sendCCHICommand(ACFULogging *a1, unsigned __int8 *a2)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: received sequence num %u, expected %u\n", "CentauriTransport", "sendCCHICommand", *a1, *a2);
}

{
  v3 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: received gid %u, expected %u\n", "CentauriTransport", "sendCCHICommand", *a2, v3);
}

{
  v3 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: received oid %u, expected %u\n", "CentauriTransport", "sendCCHICommand", *a2, v3);
}

uint64_t CentauriTransport::generateBootNonce(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to write doorbell\n", "CentauriTransport", "generateBootNonce");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read doorbell\n", "CentauriTransport", "generateBootNonce");
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: timed out: doorbell value 0x%08x\n", v3, v4, v5);
}

uint64_t CentauriTransport::setBootFlags(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to write boot flags\n", "CentauriTransport", "setBootFlags");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read boot flags\n", "CentauriTransport", "setBootFlags");
}

uint64_t CentauriTransport::setHostPlatformIdentifier(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to write host platform identifier\n", "CentauriTransport", "setHostPlatformIdentifier");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read host platform identifier\n", "CentauriTransport", "setHostPlatformIdentifier");
}

uint64_t CentauriTransport::sendImage(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get firmware data\n", "CentauriTransport", "sendImage");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get image buffer address\n", "CentauriTransport", "sendImage");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate image buffer\n", "CentauriTransport", "sendImage");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad firmware size\n", "CentauriTransport", "sendImage");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: boot driver not opened\n", "CentauriTransport", "sendImage");
}

uint64_t CentauriTransport::openControlDriver(ACFULogging *a1, uint64_t a2)
{
  v3 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create controller: 0x%08x\n", "CentauriTransport", "openControlDriver", v3);

  return CentauriTransport::closeControlDriver(a2);
}

uint64_t CentauriTransport::destroySecondaryFtab(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed to unmap memory: 0x%08x\n", v3, v4, v5);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: control driver not open\n", "CentauriTransport", "destroySecondaryFtab");
}

uint64_t CentauriTransport::reset(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 0, "%s::%s: skipping reset for non-silicon platform\n", "CentauriTransport", "reset");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to open control driver\n", "CentauriTransport", "reset");
}

uint64_t CentauriTransport::pingCheck(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 0, "%s::%s: skipping since second boot stage is disabled\n", "CentauriTransport", "pingCheck");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to open interface driver\n", "CentauriTransport", "pingCheck");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: no response payload\n", "CentauriTransport", "pingCheck");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create command payload\n", "CentauriTransport", "pingCheck");
}

void CentauriTransport::getDebugInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to collect logs: 0x%08x\n", v2, v3, v4);
  __ns.__rep_ = 20000000000;
  std::this_thread::sleep_for (&__ns);
}

uint64_t CentauriTransport::sendBootTimestamps(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage(v1, 2, "%s::%s: failed: 0x%08x\n", v3, v4, v5);
}

uint64_t CentauriFirmware::copyRFEM(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to find service\n", "CentauriFirmware", "copyRFEM");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create matching dict\n", "CentauriFirmware", "copyRFEM");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad parameter\n", "CentauriFirmware", "copyRFEM");
}

uint64_t CentauriFirmware::copyWSKU(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: unexpected size %zu\n", "CentauriFirmware", "copyWSKU", a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: unsupported version %u\n", "CentauriFirmware", "copyWSKU", *a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create string\n", "CentauriFirmware", "copyWSKU");
}

{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid byte at offset %u\n", "CentauriFirmware", "copyWSKU", v1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad parameter\n", "CentauriFirmware", "copyWSKU");
}

void CentauriFirmware::getManifestUniqueId()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A14F2160, &dword_299E8A000);

    __cxa_guard_release(_MergedGlobals);
  }
}

{
  dispatch_once(&CentauriFirmware::getManifestUniqueId(void)::once, &__block_literal_global_1);
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned short>(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 2)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

uint64_t CentauriRestore::create(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize restore object\n", "CentauriRestore", "create");
  v3 = *(*a1 + 8);

  return v3(a1);
}

uint64_t CentauriRestore::init()
{
  OUTLINED_FUNCTION_0_0();
  return (*(v0 + 56))();
}

{
  OUTLINED_FUNCTION_0_0();
  return (*(v0 + 64))();
}

uint64_t CentauriRestore::performCmd(uint64_t a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0_0();
  if ((*v3)() || (OUTLINED_FUNCTION_0_0(), (*(v4 + 8))(), OUTLINED_FUNCTION_0_0(), result = (*(v5 + 24))(), result))
  {
    *a2 = 0;
    return 1;
  }

  return result;
}

uint64_t CentauriPlatform::isCentauriBuiltin(CentauriPlatform *this, BOOL *a2)
{
  if (this)
  {
    if (qword_2A14F2180 != -1)
    {
      dispatch_once(&qword_2A14F2180, &__block_literal_global_2);
    }

    if (_MergedGlobals_0 == 1)
    {
      *this = HIBYTE(_MergedGlobals_0);
      return 1;
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad parameter\n", "CentauriPlatform", "isCentauriBuiltin");
  }

  return 0;
}

uint64_t CentauriPlatform::getThunderboltDeviceInfo(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: device model ID out of range: %lld\n", "CentauriPlatform", "getThunderboltDeviceInfo", *a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to convert device model ID to an integer\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: device vendor ID out of range: %lld\n", "CentauriPlatform", "getThunderboltDeviceInfo", *a1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to convert device vendor ID to an integer\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get device model ID property\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get device vendor ID property\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to find thunderbolt port's parent: 0x%08x\n", "CentauriPlatform", "getThunderboltDeviceInfo", v1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get thunderbolt port from path\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get thunderbolt path property\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to find manager service\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create matching dict\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: bad parameter\n", "CentauriPlatform", "getThunderboltDeviceInfo");
}

uint64_t ___ZN16CentauriPlatform17isCentauriBuiltinEPb_block_invoke_cold_1(ACFULogging *a1)
{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get manager's parent: 0x%08x\n", "CentauriPlatform", "isCentauriBuiltin_block_invoke", v1);
}

uint64_t RTKitFirmware::init()
{
  return MEMORY[0x2A1C5F118]();
}

{
  return MEMORY[0x2A1C5F120]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}