void sub_1E5296EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  if (*(v34 - 89) < 0)
  {
    operator delete(*(v34 - 112));
    operator delete(v32);
    operator delete(v31);
    if (!v33)
    {
LABEL_4:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
      BasebandProvisioning::~BasebandProvisioning(va);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    operator delete(v32);
    operator delete(v31);
    if (!v33)
    {
      goto LABEL_4;
    }
  }

  (*(*v33 + 8))(v33);
  goto LABEL_4;
}

void sub_1E529704C()
{
  operator delete(v1);
  operator delete(v0);
  if (!v2)
  {
    JUMPOUT(0x1E529700CLL);
  }

  JUMPOUT(0x1E5296FE4);
}

void sub_1E5297088()
{
  if (*(v2 - 89) < 0)
  {
    operator delete(*(v2 - 112));
  }

  operator delete(v1);
  operator delete(v0);
  JUMPOUT(0x1E529700CLL);
}

uint64_t createAPProvisioningInfo(__CFDictionary **a1)
{
  v65 = *MEMORY[0x1E69E9840];
  LogInstance = ACFULogging::getLogInstance(a1);
  if (!a1)
  {
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Missing apProvInfo parameter\n");
    return 0;
  }

  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Copy existing provisining info from the device\n", "BasebandProvisioning", "createAPProvisioningInfo");
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v60 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v60, 2, "%s::%s: info dict alloc failed\n");
    return 0;
  }

  v5 = Mutable;
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v6 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v6 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_8;
    }
  }

  v7 = v6(@"MLBSerialNumber", 0);
  if (v7)
  {
    v8 = v7;
    CFDictionarySetValue(v5, @"MLB", v7);
    CFRelease(v8);
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v9 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_8:
  v9 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    goto LABEL_12;
  }

LABEL_9:
  v10 = v9(@"ModelNumber", 0);
  if (v10)
  {
    v11 = v10;
    CFDictionarySetValue(v5, @"MPN", v10);
    CFRelease(v11);
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v12 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_12:
  v12 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    goto LABEL_16;
  }

LABEL_13:
  v13 = v12(@"RegionInfo", 0);
  if (v13)
  {
    v14 = v13;
    CFDictionarySetValue(v5, @"RGN", v13);
    CFRelease(v14);
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v15 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_16:
  v15 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    goto LABEL_22;
  }

LABEL_17:
  v16 = v15(@"UniqueChipID", 0);
  if (v16)
  {
    v17 = v16;
    *&valuePtr[0] = 0;
    if (CFNumberGetValue(v16, kCFNumberSInt64Type, valuePtr))
    {
      v18 = CFStringCreateWithFormat(v3, 0, @"%qu", *&valuePtr[0]);
      if (!v18)
      {
        v61 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v61, 2, "%s::%s: ecid str alloc failed\n");
        return 0;
      }

      v19 = v18;
      CFDictionarySetValue(v5, @"ECID", v18);
      CFRelease(v19);
    }

    CFRelease(v17);
  }

LABEL_22:
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  valuePtr[6] = v20;
  valuePtr[7] = v20;
  valuePtr[4] = v20;
  valuePtr[5] = v20;
  valuePtr[2] = v20;
  valuePtr[3] = v20;
  valuePtr[0] = v20;
  valuePtr[1] = v20;
  v63 = 128;
  v21 = sysctlbyname("hw.target", valuePtr, &v63, 0, 0);
  if (v21)
  {
    v22 = ACFULogging::getLogInstance(v21);
    v23 = __error();
    v24 = strerror(*v23);
    ACFULogging::handleMessage(v22, 0, "%s::%s: sysctlybyname for hw.target failed: %s\n", "BasebandProvisioning", "copy_hardware_model", v24);
    v25 = @"unknown";
  }

  else
  {
    v25 = CFStringCreateWithCString(v3, valuePtr, 0x8000100u);
    if (!v25)
    {
      goto LABEL_32;
    }
  }

  MutableCopy = CFStringCreateMutableCopy(v3, 0, v25);
  CFStringLowercase(MutableCopy, 0);
  Length = CFStringGetLength(MutableCopy);
  if (CFStringHasSuffix(MutableCopy, @"ap") == 1)
  {
    v28 = -2;
    v29.length = 2;
  }

  else
  {
    if (CFStringHasSuffix(MutableCopy, @"dev") != 1)
    {
      goto LABEL_30;
    }

    v28 = -3;
    v29.length = 3;
  }

  v29.location = v28 + Length;
  CFStringDelete(MutableCopy, v29);
LABEL_30:
  CFRelease(v25);
  if (MutableCopy)
  {
    CFStringUppercase(MutableCopy, 0);
    CFDictionarySetValue(v5, @"PRODUCT", MutableCopy);
    CFRelease(MutableCopy);
  }

LABEL_32:
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v30 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_36;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v30 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_36;
    }
  }

  v31 = v30(@"SerialNumber", 0);
  if (v31)
  {
    v32 = v31;
    CFDictionarySetValue(v5, @"SN", v31);
    CFRelease(v32);
  }

LABEL_36:
  v33 = copy_mac_address_existence(@"WifiAddress");
  if (v33)
  {
    v34 = v33;
    CFDictionarySetValue(v5, @"WIFI_MAC", v33);
    CFRelease(v34);
  }

  v35 = copy_mac_address_existence(@"BluetoothAddress");
  if (v35)
  {
    v36 = v35;
    CFDictionarySetValue(v5, @"BT_MAC", v35);
    CFRelease(v36);
  }

  v37 = copy_mac_address_existence(@"EthernetMacAddress");
  if (v37)
  {
    v38 = v37;
    CFDictionarySetValue(v5, @"USB_ETHER_MAC", v37);
    CFRelease(v38);
  }

  v39 = copy_mac_address_existence(@"SecondaryWifiMacAddress");
  if (v39)
  {
    v40 = v39;
    CFDictionarySetValue(v5, @"WIFI_MAC2", v39);
    CFRelease(v40);
  }

  v41 = copy_mac_address_existence(@"SecondaryBluetoothMacAddress");
  if (v41)
  {
    v42 = v41;
    CFDictionarySetValue(v5, @"BT_MAC2", v41);
    CFRelease(v42);
  }

  v43 = copy_mac_address_existence(@"SecondaryEthernetMacAddress");
  if (v43)
  {
    v44 = v43;
    CFDictionarySetValue(v5, @"ETH_MAC", v43);
    CFRelease(v44);
  }

  v45 = copy_mac_address_existence(@"ExtendedLOMMacAddress");
  if (v45)
  {
    v46 = v45;
    CFDictionarySetValue(v5, @"ETHER_MAC2", v45);
    CFRelease(v46);
  }

  v47 = copy_mac_address_existence(@"PintoMacAddress");
  if (v47)
  {
    v48 = v47;
    CFDictionarySetValue(v5, @"PINTO_MAC", v47);
    CFRelease(v48);
  }

  v49 = copy_mac_address_existence(@"ThreadRadioMacAddressForProvisioning");
  if (v49)
  {
    v50 = v49;
    CFDictionarySetValue(v5, @"T_MAC", v49);
    CFRelease(v50);
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v51 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_59;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v51 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_59;
    }
  }

  v52 = v51(@"UniqueDeviceID", 0);
  if (v52)
  {
    v53 = v52;
    CFDictionarySetValue(v5, @"UDID", v52);
    CFRelease(v53);
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v54 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_65;
    }

    goto LABEL_60;
  }

LABEL_59:
  v54 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
LABEL_65:
    *a1 = v5;
    return 1;
  }

LABEL_60:
  v55 = v54(@"BoardId", 0);
  if (!v55)
  {
    goto LABEL_65;
  }

  v56 = v55;
  *&valuePtr[0] = 0;
  if (!CFNumberGetValue(v55, kCFNumberSInt64Type, valuePtr))
  {
LABEL_64:
    CFRelease(v56);
    goto LABEL_65;
  }

  v57 = CFStringCreateWithFormat(v3, 0, @"%qx", *&valuePtr[0]);
  if (v57)
  {
    v58 = v57;
    CFDictionarySetValue(v5, @"BoardId", v57);
    CFRelease(v58);
    goto LABEL_64;
  }

  v62 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v62, 2, "%s::%s: boardid str alloc failed\n");
  return 0;
}

uint64_t sendProvisionPing(ACFULogging *a1, uint64_t *a2, ACFUFirmware **a3, BOOL *a4, uint64_t *a5)
{
  v62 = 0xAAAAAAAAAAAAAAAALL;
  memset(&v61, 0, sizeof(v61));
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  *v66 = 0u;
  v59 = 0;
  cf = 0;
  theDict = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  v11 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Send Provisioning Ping\n", "BasebandProvisioning", "sendProvisionPing");
  if (!a1)
  {
    v38 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v38, 2, "%s::%s: Missing restore options\n");
    goto LABEL_49;
  }

  if (!*a2)
  {
    v39 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v39, 2, "%s::%s: Missing transport parameter\n");
    goto LABEL_49;
  }

  if (!*a3)
  {
    v40 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v40, 2, "%s::%s: Missing firmware parameter\n");
    goto LABEL_49;
  }

  v12 = configureProvisioner(&v61, a1);
  if ((v12 & 1) == 0)
  {
    v41 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v41, 2, "%s::%s: Provisioner cfg failed\n");
    goto LABEL_49;
  }

  v13 = ACFULogging::getLogInstance(v12);
  ACFULogging::handleMessage(v13, 0, "%s::%s: Provisioner initialized\n", "BasebandProvisioning", "sendProvisionPing");
  APProvisioningInfo = createAPProvisioningInfo(&cf);
  if ((APProvisioningInfo & 1) == 0)
  {
    v42 = ACFULogging::getLogInstance(APProvisioningInfo);
    ACFULogging::handleMessage(v42, 2, "%s::%s: copy prov info returned error\n");
    goto LABEL_49;
  }

  v15 = cf;
  if (!cf)
  {
    v43 = ACFULogging::getLogInstance(APProvisioningInfo);
    ACFULogging::handleMessage(v43, 2, "%s::%s: copy prov info returned null data\n");
    goto LABEL_49;
  }

  CFRetain(cf);
  v16 = v66[0];
  v66[0] = v15;
  if (v16)
  {
    CFRelease(v16);
  }

  CFRelease(v15);
  ACFULogging::getLogInstance(v17);
  v18 = operator new(0x30uLL);
  strcpy(v18, "BasebandProvisioning::sendProvisionPing");
  HIBYTE(v49[1]) = 0;
  strcpy(v49, "sendProvisionPinProvisioning::");
  __p = v18;
  v57 = xmmword_1E5391340;
  ACFULogging::handleMessageCFType();
  operator delete(__p);
  v20 = a2[1];
  v54 = *a2;
  v55 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a3[1];
  v52 = *a3;
  v53 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  v22 = a5[1];
  v50 = *a5;
  v51 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = createBasebandProvInfo(0, &v54, &v52, &v59, v19, a1);
  v24 = v23;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v25 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if ((v24 & 1) == 0)
  {
    v44 = ACFULogging::getLogInstance(v23);
    ACFULogging::handleMessage(v44, 2, "%s::%s: copy baseband prov info returned error\n");
    goto LABEL_49;
  }

  v27 = v59;
  if (!v59)
  {
    v45 = ACFULogging::getLogInstance(v23);
    ACFULogging::handleMessage(v45, 2, "%s::%s: copy baseband prov info returned null data\n");
    goto LABEL_49;
  }

  CFRetain(v59);
  v28 = v66[1];
  v66[1] = v27;
  if (v28)
  {
    CFRelease(v28);
  }

  CFRelease(v27);
  ACFULogging::getLogInstance(v29);
  v30 = operator new(0x30uLL);
  *v30 = 0x646E616265736142;
  *(v30 + 10) = 14906;
  *(v30 + 4) = DWORD2(v49[1]);
  *(v30 + 1) = *&v49[1];
  *(v30 + 19) = 103;
  *(v30 + 22) = v49[0];
  __p = v30;
  v57 = xmmword_1E5391340;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p);
  }

  v31 = BasebandProvisioning::sendServerReq(&v61, @"1", a1, &theDict);
  if ((v31 & 1) == 0)
  {
    v46 = ACFULogging::getLogInstance(v31);
    ACFULogging::handleMessage(v46, 2, "%s::%s: Send server req returned error for prov ping\n");
    goto LABEL_49;
  }

  if (!theDict)
  {
    v47 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v47, 2, "%s::%s: Returned null provisioned info\n");
    goto LABEL_49;
  }

  Value = CFDictionaryGetValue(theDict, @"STATUS");
  v33 = Value;
  if (!Value)
  {
    v48 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v48, 2, "%s::%s: statusString is NULL\n");
LABEL_49:
    v35 = 0;
    v36 = theDict;
    if (!theDict)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  ACFULogging::getLogInstance(Value);
  v34 = operator new(0x30uLL);
  *v34 = 0x646E616265736142;
  *(v34 + 10) = 14906;
  *(v34 + 4) = DWORD2(v49[1]);
  *(v34 + 1) = *&v49[1];
  *(v34 + 19) = 103;
  *(v34 + 22) = v49[0];
  __p = v34;
  v57 = xmmword_1E5391340;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p);
  }

  *a4 = CFStringCompare(v33, @"0", 0) == kCFCompareEqualTo;
  v35 = 1;
  v36 = theDict;
  if (theDict)
  {
LABEL_36:
    CFRelease(v36);
  }

LABEL_37:
  BasebandProvisioning::~BasebandProvisioning(&v61);
  return v35;
}

void sub_1E5297D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a28 < 0)
  {
    operator delete(__p);
    BasebandProvisioning::~BasebandProvisioning(&a32);
    _Unwind_Resume(a1);
  }

  BasebandProvisioning::~BasebandProvisioning(&a32);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    if (v8 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v9 = operator new(48 * v8);
  }

  else
  {
    v9 = 0;
  }

  v14 = &v9[48 * v3];
  v15 = &v9[48 * v8];
  std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(a1, v14, a2, a3);
  v10 = *(a1 + 8) - *a1;
  v11 = v14 - v10;
  memcpy(v14 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v14 + 2;
  *(a1 + 16) = v15;
  if (v12)
  {
    operator delete(v12);
  }

  return v14 + 2;
}

void sub_1E5297F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>::construct[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,std::string&,std::vector<unsigned char>&,void,0>(int a1, std::string *this, __int128 *a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a3, *(a3 + 1));
    this[1].__r_.__value_.__r.__words[0] = 0;
    this[1].__r_.__value_.__l.__size_ = 0;
    this[1].__r_.__value_.__r.__words[2] = 0;
    v7 = *a4;
    v8 = *(a4 + 8) - *a4;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v6 = *a3;
    this->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
    this[1].__r_.__value_.__r.__words[0] = 0;
    this[1].__r_.__value_.__l.__size_ = 0;
    this[1].__r_.__value_.__r.__words[2] = 0;
    v7 = *a4;
    v8 = *(a4 + 8) - *a4;
    if (!v8)
    {
      return;
    }
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v9 = operator new(v8);
  this[1].__r_.__value_.__r.__words[0] = v9;
  this[1].__r_.__value_.__l.__size_ = v9;
  v10 = v9 + v8;
  this[1].__r_.__value_.__r.__words[2] = v9 + v8;
  memcpy(v9, v7, v8);
  this[1].__r_.__value_.__l.__size_ = v10;
}

void sub_1E529804C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v14 = this;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v4[1].__r_.__value_.__r.__words[0] = 0;
      v4[1].__r_.__value_.__l.__size_ = 0;
      v4[1].__r_.__value_.__r.__words[2] = 0;
      v9 = *(v6 + 3);
      v8 = *(v6 + 4);
      v10 = v8 - v9;
      if (v8 != v9)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v11 = operator new(v8 - v9);
        v4[1].__r_.__value_.__r.__words[0] = v11;
        v4[1].__r_.__value_.__l.__size_ = v11;
        v12 = &v11[v10];
        v4[1].__r_.__value_.__r.__words[2] = &v11[v10];
        memcpy(v11, v9, v10);
        v4[1].__r_.__value_.__l.__size_ = v12;
      }

      v6 += 3;
      v4 = v14 + 2;
      v14 += 2;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_1E529820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 32) = v12;
    operator delete(v12);
    if ((*(v9 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v9 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v9);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v7 = *(v4 - 3);
        if (v7)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v8 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
          operator delete(*v8);
        }

        v4 -= 6;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v7 = v4 - 6;
          if (*(v4 - 25) < 0)
          {
            operator delete(*v7);
          }

          v4 -= 6;
        }

        while (v7 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::~basic_format(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    std::locale::~locale((a1 + 192));
    *(a1 + 184) = 0;
  }

  *(a1 + 96) = &unk_1F5F00840;
  if (*(a1 + 168) == 1)
  {
    operator delete(*(a1 + 112));
  }

  *(a1 + 153) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 96) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 104));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = *a1;
    if (v4 == v3)
    {
LABEL_21:
      *(a1 + 8) = v3;
      operator delete(v5);
      return a1;
    }

    while (1)
    {
      if (LOBYTE(v4[-4].__locale_) == 1)
      {
        std::locale::~locale(v4 - 3);
        LOBYTE(v4[-4].__locale_) = 0;
        if ((SHIBYTE(v4[-9].__locale_) & 0x80000000) == 0)
        {
LABEL_15:
          if (SHIBYTE(v4[-12].__locale_) < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_12;
        }
      }

      else if ((SHIBYTE(v4[-9].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      operator delete(v4[-11].__locale_);
      if (SHIBYTE(v4[-12].__locale_) < 0)
      {
LABEL_19:
        operator delete(v4[-14].__locale_);
      }

LABEL_12:
      v4 -= 15;
      if (v4 == v3)
      {
        v5 = *a1;
        goto LABEL_21;
      }
    }
  }

  return a1;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(uint64_t a1)
{
  *a1 = &unk_1F5F00840;
  if (*(a1 + 72) == 1)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 57) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F5F00840;
  if (*(a1 + 72) == 1)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 57) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(char *a1)
{
  *a1 = &unk_1F5F00840;
  if (a1[72] == 1)
  {
    operator delete(*(a1 + 2));
  }

  *(a1 + 57) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 1) = 0u;
  *a1 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(a1 + 1);

  operator delete(a1);
}

double boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::seekoff@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if ((a4 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if (a3 == 2)
      {
        v7 = 8;
      }

      else
      {
        if (a3 == 1)
        {
          if ((a4 & 0x10) != 0)
          {
            goto LABEL_25;
          }

          v12 = v6 + a2;
          if (a1[2] > (v6 + a2))
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (a3)
        {
LABEL_25:
          v8 = -1;
          goto LABEL_26;
        }

        v7 = 2;
      }

      a2 = a2 - v6 + a1[v7];
      v12 = v6 + a2;
      if (a1[2] <= (v6 + a2))
      {
LABEL_24:
        if (v12 > a1[8])
        {
          goto LABEL_25;
        }

        v9 = v6 + a2;
        a1[3] = v9;
        if ((a4 & 0x10) == 0 || !v5)
        {
LABEL_31:
          v8 = a2;
          goto LABEL_26;
        }

        LODWORD(v9) = v9 - v5;
LABEL_30:
        a1[6] = v5 + v9;
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  v8 = -1;
  if ((a4 & 0x10) != 0 && v5)
  {
    if (!a3)
    {
      v11 = a1[5];
      v9 = v11 - v5 + a2;
      v10 = v11 + a2;
      if (v11 > v11 + a2)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (a3 == 2)
    {
      v9 = a1[8] - v5 + a2;
      v10 = a1[8] + a2;
      if (a1[5] > v10)
      {
        goto LABEL_25;
      }

LABEL_17:
      a2 = v9;
      if (v10 <= a1[8])
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v8;
  return result;
}

double boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::seekpos@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 128);
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if (v4 == -1)
  {
LABEL_16:
    v10 = -1;
    goto LABEL_17;
  }

  if ((a3 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        v7 = a1[2];
        if (v4 <= a1[8] - v7)
        {
          v8 = v6 + v4 - v6 + v7;
          a1[3] = v8;
          if ((a3 & 0x10) == 0 || !v5)
          {
            goto LABEL_20;
          }

          v9 = v8 - v5;
LABEL_19:
          a1[6] = v5 + v9;
LABEL_20:
          v10 = v4;
          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }
  }

  v10 = -1;
  if ((a3 & 0x10) != 0 && v5 && (v4 & 0x8000000000000000) == 0)
  {
    v11 = a1[2];
    if (v4 <= a1[8] - v11)
    {
      v9 = v4 - v5 + v11;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_17:
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = v10;
  return result;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::underflow(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  if (v1 < *(a1 + 32))
  {
    return *v1;
  }

  if ((*(a1 + 76) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 64);
  if (v1 >= v3 && v1 >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 < v3)
  {
    *(a1 + 64) = v3;
    v4 = v3;
  }

  *(a1 + 32) = v4;
  return *v1;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::pbackfail(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 16) >= v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 != -1 && (*(a1 + 76) & 0x10) == 0)
  {
    v4 = *(v2 - 1);
    v3 = (v2 - 1);
    if (v4 == a2)
    {
      *(a1 + 24) = v3;
      *v3 = a2;
      return a2;
    }

    return 0xFFFFFFFFLL;
  }

  v6 = (v2 - 1);
  *(a1 + 24) = v6;
  if (a2 == -1)
  {
    return 0;
  }

  *v6 = a2;
  return a2;
}

uint64_t boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::overflow(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 56);
    if (v3 < v4)
    {
      *(a1 + 48) = v3 + 1;
      *v3 = a2;
      return a2;
    }

    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(a1 + 16);
    v6 = v4 - v7;
  }

  else
  {
    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = 0;
    v7 = *(a1 + 16);
  }

  v8 = v6 >> 1;
  if (v6 >> 1 <= 0x100)
  {
    v8 = 256;
  }

  while (__CFADD__(v8, v6))
  {
    v10 = v8 >= 2;
    v8 >>= 1;
    if (!v10)
    {
      v11 = 0;
      v12 = v6;
LABEL_18:
      memmove(v11, v7, v6);
      v13 = 0;
      v14 = a1;
      if (*(a1 + 72) != 1)
      {
        goto LABEL_20;
      }

LABEL_19:
      operator delete(v7);
      v14 = a1;
      goto LABEL_20;
    }
  }

  v12 = v8 + v6;
  v11 = operator new(v8 + v6);
  if (v6)
  {
    goto LABEL_18;
  }

  v13 = 1;
  v14 = a1;
  if (*(a1 + 72) == 1)
  {
    goto LABEL_19;
  }

LABEL_20:
  *(v14 + 72) = 1;
  if (v13)
  {
    v15 = &v11[v12];
    *(v14 + 40) = v11;
    *(v14 + 48) = v11;
    *(v14 + 56) = &v11[v12];
    *(v14 + 64) = v11;
    if ((*(v14 + 76) & 8) != 0)
    {
      *(v14 + 16) = v11;
      *(v14 + 24) = v11;
      *(v14 + 32) = v11 + 1;
      if (v11 == v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v14 + 16) = v11;
      *(v14 + 24) = 0;
      *(v14 + 32) = v11;
      if (v11 == v15)
      {
LABEL_23:
        (*(*v14 + 104))(v14, a2);
        return a2;
      }
    }
  }

  else
  {
    v16 = &v11[*(v14 + 64) - v7];
    v17 = *(v14 + 40);
    v18 = *(v14 + 48) - v17;
    v19 = v17 - v7;
    v21 = *(v14 + 16);
    v20 = *(v14 + 24);
    v22 = &v11[v19];
    v23 = &v11[v12];
    *(v14 + 56) = &v11[v12];
    *(v14 + 64) = v16;
    v24 = &v22[v18];
    *(v14 + 40) = v22;
    *(v14 + 48) = v24;
    if ((*(v14 + 76) & 8) != 0)
    {
      *(v14 + 16) = v11;
      *(v14 + 24) = &v11[v20 - v21];
      v11 = &v22[v18];
      *(v14 + 32) = v24 + 1;
      if (v24 == v23)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v14 + 16) = v11;
      *(v14 + 24) = 0;
      v25 = v11;
      v11 = &v22[v18];
      *(v14 + 32) = v25;
      if (v24 == v23)
      {
        goto LABEL_23;
      }
    }
  }

  *(v14 + 48) = v11 + 1;
  *v11 = a2;
  return a2;
}

std::locale **std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~vector[abi:ne200100](std::locale **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_13:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (LOBYTE(v3[-4].__locale_) == 1)
      {
        std::locale::~locale(v3 - 3);
        LOBYTE(v3[-4].__locale_) = 0;
        if ((SHIBYTE(v3[-9].__locale_) & 0x80000000) == 0)
        {
LABEL_7:
          if (SHIBYTE(v3[-12].__locale_) < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_4;
        }
      }

      else if ((SHIBYTE(v3[-9].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(v3[-11].__locale_);
      if (SHIBYTE(v3[-12].__locale_) < 0)
      {
LABEL_11:
        operator delete(v3[-14].__locale_);
      }

LABEL_4:
      v3 -= 15;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }

  return a1;
}

uint64_t boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::~format_item(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  std::locale::~locale((a1 + 96));
  *(a1 + 88) = 0;
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

const __CFString *copy_mac_address_existence(const __CFString *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: macAddrKey is NULL\n", "BasebandProvisioning", "copy_mac_address_existence");
    return 0;
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v1 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      return 0;
    }
  }

  else
  {
    v13 = a1;
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    a1 = v13;
    v1 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      return 0;
    }
  }

  v2 = a1;
  v3 = v1();
  if (!v3)
  {
    return v3;
  }

  v27 = -1431655766;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v4;
  v26 = v4;
  v23 = v4;
  v24 = v4;
  v22 = v4;
  *buffer = v4;
  v20 = -1431655766;
  v18 = v4;
  v19 = v4;
  v16 = v4;
  v17 = v4;
  *__s = v4;
  v15 = v4;
  CFStringGetCString(v2, buffer, 100, 0x600u);
  CString = CFStringGetCString(v3, __s, 100, 0x600u);
  v6 = ACFULogging::getLogInstance(CString);
  ACFULogging::handleMessage(v6, 0, "%s::%s: found address (%s): %s\n", "BasebandProvisioning", "copy_mac_address_existence", buffer, __s);
  v7 = CFStringCompare(v3, @"00:00:00:00:00:00", 1uLL);
  if (!v7 || (v7 = CFStringCompare(v3, @"BA:BA:BA:BA:BA:BA", 1uLL)) == 0 || (v7 = CFStringCompare(v3, @"DE:AD:BE:FF:00:00", 1uLL)) == 0 || (v7 = CFStringCompare(v3, @"DE:AD:BE:FF:00:01", 1uLL)) == 0 || (v7 = CFStringCompare(v3, @"DF:AD:BE:FF:00:00", 1uLL)) == 0 || (v7 = CFStringCompare(v3, @"88:88:88:88:88:88", 1uLL)) == 0 || (v7 = CFStringCompare(v3, @"99:99:99:99:99:99", 1uLL)) == 0 || (v7 = CFStringCompare(v3, @"02:88:88:88:88:88", 1uLL)) == 0 || (v7 = CFStringCompare(v3, @"02:99:99:99:99:99", 1uLL)) == 0)
  {
    v9 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v9, 0, "%s::%s: ignoring found value as it matches a value known to be used in testing\n");
LABEL_18:
    CFRelease(v3);
    return 0;
  }

  if (strlen(__s) > 2)
  {
    v8 = AMSupportHexAsciiToNumeric();
    if (!v8)
    {
      v11 = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(v11, 0, "%s::%s: AMSupportHexAsciiToNumeric failed to parse address.\n", "BasebandProvisioning", "copy_mac_address_existence");
      goto LABEL_18;
    }
  }

  return v3;
}

void BasebandProvisioning::~BasebandProvisioning(BasebandProvisioning *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    v6 = *(this + 7);
    v7 = *(this + 6);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 3);
        if (v8)
        {
          *(v6 - 2) = v8;
          operator delete(v8);
        }

        v9 = v6 - 6;
        if (*(v6 - 25) < 0)
        {
          operator delete(*v9);
        }

        v6 -= 6;
      }

      while (v9 != v5);
      v7 = *(this + 6);
    }

    *(this + 7) = v5;
    operator delete(v7);
  }

  v10 = *(this + 5);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 4);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

uint64_t std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 152);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = a1;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        a1 = v2;
      }
    }
  }

  v3 = *(*a1 + 8);

  return v3();
}

void *std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x1E6926F80](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x1E69E5508] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x1E6926F90](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x1E6926F80](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x1E69E53B0], MEMORY[0x1E69E52C8]);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *(a2 + 8));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v4 = a2;

LABEL_6:
        operator delete(v4);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 32));
    v4 = a2;

    goto LABEL_6;
  }
}

void *dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>@<X0>(atomic_ullong **a1@<X0>, void **a2@<X8>)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3812000000;
  v9[3] = __Block_byref_object_copy_;
  v9[4] = __Block_byref_object_dispose_;
  v9[5] = "";
  v4 = operator new(0xA0uLL);
  *(v4 + 3) = 850045863;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_1F5F008D8;
  v10 = v4;
  std::mutex::lock((v4 + 24));
  v5 = *(v4 + 34);
  if ((v5 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  *(v4 + 34) = v5 | 2;
  std::mutex::unlock((v4 + 24));
  v6 = *a1;
  *a1 = v4;
  if (v6 && !atomic_fetch_add(v6 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v6 + 16))(v6);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3254779904;
  v8[2] = ___ZN8dispatch20future_callback_implINSt3__110shared_ptrIN3ctu4Http12HttpResponseEEES6_EENS_5blockIU13block_pointerFvT0_EEERNS1_6futureIT_EE_block_invoke;
  v8[3] = &__block_descriptor_40_e8_32r_e82_v24__0_shared_ptr_ctu::Http::HttpResponse____HttpResponse_____shared_weak_count__8l;
  v8[4] = v9;
  *a2 = _Block_copy(v8);
  _Block_object_dispose(v9, 8);
  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v10);
}

void sub_1E52996DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::mutex::unlock(v13);
  _Block_object_dispose(va, 8);
  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v14 + 48));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void ___ZN8dispatch20future_callback_implINSt3__110shared_ptrIN3ctu4Http12HttpResponseEEES6_EENS_5blockIU13block_pointerFvT0_EEERNS1_6futureIT_EE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 48);
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::set_value<std::shared_ptr<ctu::Http::HttpResponse>>(v3, a2);
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::set_value<std::shared_ptr<ctu::Http::HttpResponse>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1E52998BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(uint64_t a1, const char *a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 88) = -1;
  *(a1 + 96) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E69272B0](a1 + 104);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 96) = &unk_1F5F00840;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 24;
  *(a1 + 184) = 0;
  if (!a2)
  {
    return a1;
  }

  v4 = strlen(a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = v5;
    v10 = v7 | 0x8000000000000000;
    __dst[0] = v6;
    goto LABEL_10;
  }

  HIBYTE(v10) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_10:
    memcpy(v6, a2, v5);
  }

  *(v5 + v6) = 0;
  boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::parse(a1, __dst);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  return a1;
}

void sub_1E5299A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (*(v15 + 184) != 1)
    {
LABEL_3:
      boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v16);
      if ((*(v15 + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*(v15 + 184) != 1)
  {
    goto LABEL_3;
  }

  std::locale::~locale((v15 + 192));
  *(v15 + 184) = 0;
  boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v16);
  if ((*(v15 + 87) & 0x80000000) == 0)
  {
LABEL_4:
    v19 = *(v15 + 24);
    if (!v19)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*v17);
  v19 = *(v15 + 24);
  if (!v19)
  {
LABEL_5:
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~vector[abi:ne200100](v15);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v19);
  std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~vector[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

uint64_t boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::parse(uint64_t a1, char *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(a1 + 184) == 1)
  {
    std::locale::locale(&v56, (a1 + 192));
  }

  else
  {
    MEMORY[0x1E69272B0](&v56);
  }

  v4 = std::locale::use_facet(&v56, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v56);
  v53 = &v4->__vftable;
  __c = (v4->__vftable[2].~facet_0)(v4, 37);
  v5 = boost::io::detail::upper_bound_from_fstring<std::string,std::ctype<char>>(a2, __c, v4, *(a1 + 88));
  boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::make_or_reuse_data(a1, v5);
  v55 = 0;
  v6 = a2[23];
  v7 = a2[23];
  v8 = v6 >> 31;
  v9 = *(a2 + 1);
  if (v6 >= 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  if (!v10 || ((v11 = *a2, v6 >= 0) ? (v12 = a2) : (v12 = *a2), (v13 = memchr(v12, __c, v10), v14 = v13 - v12, v13) ? (v15 = v14 == -1) : (v15 = 1), v15))
  {
    v24 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 1;
    v51 = -1;
LABEL_17:
    v16 = a1 + 64;
    goto LABEL_18;
  }

  v23 = v13;
  v24 = 0;
  v25 = 0;
  v52 = 0;
  v51 = -1;
  v49 = 0;
  v50 = 1;
  do
  {
    v26 = a1 + 64;
    if (v25)
    {
      v26 = *a1 + 120 * v25 - 88;
    }

    v27 = v14 + 1;
    if (v8)
    {
      v28 = v11;
    }

    else
    {
      v28 = a2;
    }

    if (v28[v27] == v28[v14])
    {
      std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v26, &v12[v24], v23 + 1);
      v24 = v14 + 2;
      v29 = (v14 + 2);
      goto LABEL_66;
    }

    if (v14 != v24)
    {
      std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v26, &v12[v24], v23);
      v7 = a2[23];
    }

    if ((v7 & 0x80) != 0)
    {
      v30 = *a2;
      v7 = *(a2 + 1);
    }

    else
    {
      v30 = a2;
    }

    v55 = &v30[v27];
    v56.__locale_ = &v30[v7];
    v31 = boost::io::detail::parse_printf_directive<char,std::char_traits<char>,std::allocator<char>,std::__wrap_iter<char const*>,std::ctype<char>>(&v55, &v56, *a1 + 120 * v25, v53, (v14 + 1), *(a1 + 88));
    if (a2[23] >= 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = *a2;
    }

    v29 = (v55 - v32);
    if (!v31)
    {
      v24 = v14;
      goto LABEL_66;
    }

    v33 = *a1 + 120 * v25;
    v34 = *(v33 + 112);
    if ((v34 & 1) == 0)
    {
      goto LABEL_51;
    }

    v35 = *(v33 + 76);
    if ((v35 & 0x20) == 0)
    {
      v34 &= ~2u;
      *(v33 + 112) = v34;
      *(v33 + 72) = 48;
      *(v33 + 76) = v35 & 0xFFFFFF4F | 0x10;
LABEL_51:
      if ((v34 & 2) != 0)
      {
        goto LABEL_52;
      }

      goto LABEL_56;
    }

    v34 &= ~1u;
    *(v33 + 112) = v34;
    if ((v34 & 2) != 0)
    {
LABEL_52:
      if ((*(v33 + 77) & 8) != 0)
      {
        *(v33 + 112) = v34 & 0xFFFFFFFD;
      }
    }

LABEL_56:
    v36 = *v33;
    if (v36 != -3)
    {
      if (v36 == -1)
      {
        v50 = 0;
        v37 = v52;
      }

      else
      {
        v37 = v52;
        if (v36 == -2)
        {
          v49 = 1;
        }

        else
        {
          v38 = v51;
          if (v36 > v51)
          {
            v38 = v36;
          }

          v51 = v38;
        }
      }

      v52 = v37 + 1;
      ++v25;
    }

    v24 = v29;
LABEL_66:
    v39 = a2[23];
    v7 = a2[23];
    v8 = v39 >> 31;
    v9 = *(a2 + 1);
    if (v39 >= 0)
    {
      v40 = a2[23];
    }

    else
    {
      v40 = *(a2 + 1);
    }

    if (v40 <= v29)
    {
      break;
    }

    v11 = *a2;
    v12 = v39 >= 0 ? a2 : *a2;
    v41 = memchr(&v29[v12], __c, v40 - v29);
    if (!v41)
    {
      break;
    }

    v23 = v41;
    v14 = v41 - v12;
  }

  while (v41 - v12 != -1);
  if (!v25)
  {
    goto LABEL_17;
  }

  v16 = *a1 + 120 * v25 - 88;
LABEL_18:
  if (v8)
  {
    v17 = v9;
  }

  else
  {
    v17 = v7;
  }

  v18 = *a2;
  if (!v8)
  {
    v18 = a2;
  }

  std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(v16, &v18[v24], &v18[v17]);
  if (v50)
  {
    v19 = v53;
  }

  else
  {
    v19 = v53;
    if (v51 & 0x80000000) == 0 && (*(a1 + 88))
    {
      v56.__locale_ = &unk_1F5F00A40;
      v57[0] = v51;
      v57[1] = 0;
      boost::throw_exception<boost::io::bad_format_string>(&v56);
    }

    if (v52 < 1)
    {
      v42 = -1;
    }

    else
    {
      v20 = 0;
      v21 = *a1;
      v22 = v52;
      do
      {
        if (*v21 == -1)
        {
          *v21 = v20++;
        }

        v21 += 30;
        --v22;
      }

      while (v22);
      v42 = v20 - 1;
    }

    v51 = v42;
  }

  v43 = (*(*v19 + 56))(v19, 32);
  LODWORD(v56.__locale_) = -1;
  v65 = 0;
  *v57 = 0u;
  *__p = 0u;
  v59 = 0u;
  v60 = 0;
  v61 = 6;
  v62 = v43;
  v64 = 0;
  v63 = 4098;
  v66[1].__locale_ = 0x7FFFFFFFFFFFFFFFLL;
  v67 = 0;
  v44 = *(a1 + 8);
  v45 = 0xEEEEEEEEEEEEEEEFLL * ((v44 - *a1) >> 3);
  if (v52 > v45)
  {
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__append(a1, v52 - v45, &v56);
    goto LABEL_94;
  }

  if (v52 < v45)
  {
    v46 = *a1 + 120 * v52;
    while (1)
    {
      if (v44 == v46)
      {
        *(a1 + 8) = v46;
        break;
      }

      if (*(v44 - 32) == 1)
      {
        std::locale::~locale((v44 - 24));
        *(v44 - 32) = 0;
        if ((*(v44 - 65) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else if ((*(v44 - 65) & 0x80000000) == 0)
      {
LABEL_91:
        if ((*(v44 - 89) & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_92;
      }

      operator delete(*(v44 - 88));
      if ((*(v44 - 89) & 0x80000000) == 0)
      {
        goto LABEL_85;
      }

LABEL_92:
      operator delete(*(v44 - 112));
LABEL_85:
      v44 -= 120;
    }
  }

LABEL_94:
  if (v65 == 1)
  {
    std::locale::~locale(v66);
    v65 = 0;
    if (SHIBYTE(v59) < 0)
    {
      goto LABEL_96;
    }

LABEL_100:
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

LABEL_97:
    operator delete(v57[0]);
    v47 = *(a1 + 48);
    if ((v49 & 1) == 0)
    {
      goto LABEL_103;
    }

LABEL_102:
    v47 |= 4u;
    *(a1 + 48) = v47;
    goto LABEL_103;
  }

  if ((SHIBYTE(v59) & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_96:
  operator delete(__p[1]);
  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_97;
  }

LABEL_101:
  v47 = *(a1 + 48);
  if (v49)
  {
    goto LABEL_102;
  }

LABEL_103:
  *(a1 + 56) = v51 + 1;
  *(a1 + 48) = v47 & 0xFFFFFFFE | v50 & 1;
  return a1;
}

void sub_1E529A0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::~format_item(va);
  _Unwind_Resume(a1);
}

uint64_t boost::io::detail::upper_bound_from_fstring<std::string,std::ctype<char>>(uint64_t a1, int __c, uint64_t a3, char a4)
{
  v4 = *(a1 + 23);
  v5 = *(a1 + 8);
  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = *a1;
    if (v4 >= 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = *a1;
    }

    v14 = *(a3 + 16);
    while (1)
    {
      v15 = memchr(&v10[v13], __c, v6 - v10);
      if (!v15)
      {
        return v11;
      }

      v16 = &v15[-v13];
      if (&v15[-v13] == -1)
      {
        return v11;
      }

      v17 = v16 + 1;
      if ((v16 + 1) >= v6)
      {
        if (a4)
        {
          v25[0] = &unk_1F5F00A40;
          v25[1] = &v15[-v13];
          v25[2] = v6;
          boost::throw_exception<boost::io::bad_format_string>(v25);
        }

        return (v11 + 1);
      }

      v18 = v17[v13];
      if ((v4 & 0x80) != 0)
      {
        v19 = v12;
        v20 = v5;
        if (v18 == v16[v12])
        {
          goto LABEL_9;
        }

LABEL_17:
        v21 = &v17[v19];
        if (v17 != v20)
        {
          v22 = &v20[v19];
          while (1)
          {
            v23 = *v21;
            if (v23 < 0 || (*(v14 + 4 * v23) & 0x400) == 0)
            {
              break;
            }

            if (++v21 == v22)
            {
              v21 = v22;
              break;
            }
          }
        }

        v10 = &v21[-v13];
        if (v10 < v6 && v10[v13] == __c)
        {
          ++v10;
        }

        v11 = (v11 + 1);
        if (v6 <= v10)
        {
          return v11;
        }
      }

      else
      {
        v19 = a1;
        v20 = v4;
        if (v18 != v16[a1])
        {
          goto LABEL_17;
        }

LABEL_9:
        v10 = v16 + 2;
        if (v6 <= v10)
        {
          return v11;
        }
      }
    }
  }

  return 0;
}

void boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::make_or_reuse_data(std::locale *a1, unint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (LOBYTE(a1[23].__locale_) == 1)
  {
    std::locale::locale(&v17, a1 + 24);
  }

  else
  {
    MEMORY[0x1E69272B0](&v17);
  }

  v4 = std::locale::use_facet(&v17, MEMORY[0x1E69E5318]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 32);
  std::locale::~locale(&v17);
  v6 = a1[1].__locale_ - a1->__locale_;
  if (!v6)
  {
    LODWORD(v17.__locale_) = -1;
    v26 = 0;
    *v18 = 0u;
    *__p = 0u;
    v20 = 0u;
    v21 = 0;
    v22 = 6;
    v23 = v5;
    v25 = 0;
    v24 = 4098;
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    v29 = 0;
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::assign(a1, a2, &v17);
    if (v26 == 1)
    {
      std::locale::~locale(&v27);
      v26 = 0;
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
LABEL_12:
        if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

LABEL_25:
        operator delete(v18[0]);
        goto LABEL_26;
      }
    }

    else if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v7 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 3);
  if (a2 > v7)
  {
    LODWORD(v17.__locale_) = -1;
    v26 = 0;
    *v18 = 0u;
    *__p = 0u;
    v20 = 0u;
    v21 = 0;
    v22 = 6;
    v23 = v5;
    v25 = 0;
    v24 = 4098;
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    v29 = 0;
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__append(a1, a2 - v7, &v17);
    if (v26 == 1)
    {
      std::locale::~locale(&v27);
      v26 = 0;
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
LABEL_8:
        if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
        {
LABEL_9:
          std::vector<BOOL>::resize(&a1[3], 0, 0);
LABEL_15:
          v8 = 56;
          while (1)
          {
            v10.__locale_ = a1->__locale_;
            v11 = a1->__locale_ + v8;
            *(v11 - 14) = -1;
            *(v11 + 6) = 0x7FFFFFFFFFFFFFFFLL;
            *(v11 + 14) = 0;
            v12 = v11 - 48;
            if (*(v11 - 25) < 0)
            {
              v15 = *v12;
              *(v11 - 5) = 0;
              *v15 = 0;
              v13 = v10.__locale_ + v8;
              v14 = (v10.__locale_ + v8 - 24);
              if (*(v10.__locale_ + v8 - 1) < 0)
              {
LABEL_22:
                v14 = *v14;
                *(v13 - 2) = 0;
                goto LABEL_17;
              }
            }

            else
            {
              *(v11 - 25) = 0;
              *v12 = 0;
              v13 = v10.__locale_ + v8;
              v14 = (v10.__locale_ + v8 - 24);
              if (*(v10.__locale_ + v8 - 1) < 0)
              {
                goto LABEL_22;
              }
            }

            *(v13 - 1) = 0;
LABEL_17:
            *v14 = 0;
            v9 = v10.__locale_ + v8;
            *v9 = xmmword_1E5391360;
            v9[16] = v5;
            *(v9 + 7) = 0;
            v8 += 120;
            *(v9 + 20) = 4098;
            if (!--a2)
            {
              goto LABEL_26;
            }
          }
        }

LABEL_32:
        operator delete(v18[0]);
        goto LABEL_9;
      }
    }

    else if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

  std::vector<BOOL>::resize(&a1[3], 0, 0);
  if (a2)
  {
    goto LABEL_15;
  }

LABEL_26:
  if (SHIBYTE(a1[10].__locale_) < 0)
  {
    locale = a1[8].__locale_;
    a1[9].__locale_ = 0;
  }

  else
  {
    locale = &a1[8];
    HIBYTE(a1[10].__locale_) = 0;
  }

  *locale = 0;
}

uint64_t boost::io::detail::parse_printf_directive<char,std::char_traits<char>,std::allocator<char>,std::__wrap_iter<char const*>,std::ctype<char>>(char **a1, char **a2, uint64_t a3, void *a4, unsigned __int8 *a5, boost::io::detail *a6)
{
  *a3 = -1;
  v8 = *a1;
  v9 = &a5[*a2 - *a1];
  if (*a2 <= *a1)
  {
    if (a6)
    {
      v59 = &unk_1F5F00A40;
      v60 = a5;
      v61 = v9;
      boost::throw_exception<boost::io::bad_format_string>(&v59);
    }

    return 0;
  }

  v14 = *v8;
  v15 = (*(*a4 + 56))(a4, 124);
  v16 = *a1;
  if (v14 == v15)
  {
    *a1 = ++v16;
    if (v16 >= *a2)
    {
      if (a6)
      {
        v59 = &unk_1F5F00A40;
        v60 = &v16[a5 - v8];
        v61 = v9;
        boost::throw_exception<boost::io::bad_format_string>(&v59);
      }

      return 0;
    }
  }

  v57 = v15;
  v58 = v14;
  v17 = *v16;
  v18 = (*(*a4 + 56))(a4, 48);
  v19 = *a1;
  if (v17 != v18)
  {
    v20 = *v19;
    if ((v20 & 0x8000000000000000) == 0 && (*(a4[2] + 4 * v20) & 0x400) != 0)
    {
      v56 = v9;
      if (*a2 == v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0;
        do
        {
          v22 = *v19;
          if (v22 < 0)
          {
            break;
          }

          if ((*(a4[2] + 4 * v22) & 0x400) == 0)
          {
            break;
          }

          v21 = (*(*a4 + 72))(a4) + 10 * v21 - 48;
          ++v19;
        }

        while (v19 != *a2);
      }

      *a1 = v19;
      if (*a2 > v19)
      {
        v24 = *v19;
        if (v24 == (*(*a4 + 56))(a4, 37))
        {
          *a3 = v21 - 1;
          v25 = *a1 + 1;
          *a1 = v25;
          if (v58 == v57)
          {
            goto LABEL_95;
          }

          return 1;
        }

        v26 = **a1;
        if (v26 == (*(*a4 + 56))(a4, 36))
        {
          *a3 = v21 - 1;
          v19 = *a1 + 1;
          *a1 = v19;
          v9 = v56;
          goto LABEL_29;
        }

        *(a3 + 56) = v21;
        *a3 = -1;
        v31 = *a1;
        v9 = v56;
        goto LABEL_61;
      }

      if (a6)
      {
        v59 = &unk_1F5F00A40;
        v60 = &v19[a5 - v8];
        v61 = v56;
        boost::throw_exception<boost::io::bad_format_string>(&v59);
      }

      return 0;
    }
  }

  while (1)
  {
LABEL_29:
    if (v19 == *a2)
    {
      if (a6)
      {
        v59 = &unk_1F5F00A40;
        v60 = &v19[a5 - v8];
        v61 = v9;
        boost::throw_exception<boost::io::bad_format_string>(&v59);
      }

      return 1;
    }

    v28 = (*(*a4 + 72))(a4, *v19, 0);
    if (v28 > 0x2C)
    {
      break;
    }

    if (v28 <= 38)
    {
      if (v28 != 32)
      {
        if (v28 != 35)
        {
          goto LABEL_49;
        }

        *(a3 + 76) |= 0x600u;
        goto LABEL_28;
      }

      v27 = *(a3 + 112) | 2;
LABEL_27:
      *(a3 + 112) = v27;
      goto LABEL_28;
    }

    if (v28 != 39)
    {
      if (v28 != 43)
      {
        goto LABEL_49;
      }

      *(a3 + 76) |= 0x800u;
    }

LABEL_28:
    v19 = *a1 + 1;
    *a1 = v19;
  }

  if (v28 <= 60)
  {
    if (v28 != 45)
    {
      if (v28 != 48)
      {
        goto LABEL_49;
      }

      v27 = *(a3 + 112) | 1;
      goto LABEL_27;
    }

    *(a3 + 76) |= 0x20u;
    goto LABEL_28;
  }

  if (v28 == 61)
  {
    v27 = *(a3 + 112) | 4;
    goto LABEL_27;
  }

  if (v28 == 95)
  {
    *(a3 + 76) |= 0x10u;
    goto LABEL_28;
  }

LABEL_49:
  v29 = **a1;
  v30 = (*(*a4 + 56))(a4, 42);
  v31 = *a1;
  if (v29 == v30)
  {
    ++v31;
    goto LABEL_51;
  }

  if (v31 != *a2)
  {
    v32 = *v31;
    if ((v32 & 0x8000000000000000) == 0 && (*(a4[2] + 4 * v32) & 0x400) != 0)
    {
      *(a3 + 56) = 0;
      do
      {
        v33 = *v31;
        if (v33 < 0)
        {
          break;
        }

        if ((*(a4[2] + 4 * v33) & 0x400) == 0)
        {
          break;
        }

        *(a3 + 56) = 10 * *(a3 + 56) + (*(*a4 + 72))(a4) - 48;
        ++v31;
      }

      while (v31 != *a2);
LABEL_51:
      *a1 = v31;
    }
  }

LABEL_61:
  if (v31 >= *a2)
  {
    if (a6)
    {
      v59 = &unk_1F5F00A40;
      v60 = &v31[a5 - v8];
      v61 = v9;
      boost::throw_exception<boost::io::bad_format_string>(&v59);
    }

    return 1;
  }

  v34 = *v31;
  v35 = (*(*a4 + 56))(a4, 46);
  v36 = *a1;
  if (v34 == v35)
  {
    *a1 = ++v36;
    if (v36 != *a2)
    {
      v37 = *v36;
      v38 = (*(*a4 + 56))(a4, 42);
      v36 = *a1;
      if (v37 == v38)
      {
        v39 = 0;
        *a1 = ++v36;
        v56 = v9;
        if (v36 == *a2)
        {
          goto LABEL_109;
        }

        goto LABEL_75;
      }

      if (v36 != *a2)
      {
        v40 = *v36;
        if ((v40 & 0x8000000000000000) == 0 && (*(a4[2] + 4 * v40) & 0x400) != 0)
        {
          v36 = boost::io::detail::str2int<long,std::__wrap_iter<char const*>,std::ctype<char>>(a1, a2, (a3 + 64), a4);
          *a1 = v36;
          v39 = 1;
          v56 = v9;
          if (v36 == *a2)
          {
            goto LABEL_109;
          }

          goto LABEL_75;
        }
      }
    }

    v39 = 0;
    *(a3 + 64) = 0;
    v56 = v9;
    if (v36 == *a2)
    {
      goto LABEL_109;
    }

    goto LABEL_75;
  }

  v39 = 0;
  v56 = v9;
  if (v36 == *a2)
  {
LABEL_109:
    if (a6)
    {
      v59 = &unk_1F5F00A40;
      v60 = &v36[a5 - v8];
      v61 = v56;
      boost::throw_exception<boost::io::bad_format_string>(&v59);
    }

    return 1;
  }

LABEL_75:
  v41 = 0;
  while (2)
  {
    v42 = (*(*a4 + 72))(a4, *v36, 0);
    if (v42 <= 0x35)
    {
      switch(v42)
      {
        case '2':
          if (v41 != 51)
          {
            goto LABEL_94;
          }

          break;
        case '3':
          if (v41 != 73)
          {
            goto LABEL_94;
          }

          v41 = 51;
          goto LABEL_78;
        case '4':
          if (v41 != 54)
          {
LABEL_94:
            v25 = *a1;
            goto LABEL_95;
          }

          break;
        default:
          goto LABEL_96;
      }

      v41 = 0;
LABEL_78:
      v36 = (*a1 + 1);
      *a1 = v36;
      if (v36 == *a2)
      {
        goto LABEL_109;
      }

      continue;
    }

    break;
  }

  if (v42 - 73 <= 0x31)
  {
    if (((1 << (v42 - 73)) & 0x2400A80000008) != 0)
    {
      goto LABEL_78;
    }

    if (v42 == 73)
    {
      v41 = 73;
      goto LABEL_78;
    }
  }

  if (v42 == 54)
  {
    if (v41 != 73)
    {
      goto LABEL_94;
    }

    v41 = 54;
    goto LABEL_78;
  }

LABEL_96:
  v36 = *a1;
  v43 = v41 == 73 || v41 == 0;
  v44 = !v43;
  if (v36 >= *a2 || v44)
  {
    goto LABEL_109;
  }

  v45 = v58;
  if (v58 == v57 && (v46 = *v36, v47 = (*(*a4 + 56))(a4, 124), v36 = *a1, v43 = v46 == v47, v45 = v58, v43))
  {
    v48 = (v36 + 1);
LABEL_140:
    *a1 = v48;
  }

  else
  {
    switch((*(*a4 + 72))(a4, *v36, 0))
    {
      case 'A':
        v51 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v51;
        goto LABEL_130;
      case 'C':
      case 'c':
        *(a3 + 104) = 1;
        goto LABEL_136;
      case 'E':
        v52 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v52;
        goto LABEL_133;
      case 'F':
        v53 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v53;
        v50 = v53 | 4;
        goto LABEL_134;
      case 'G':
        *(a3 + 76) |= 0x4000u;
        goto LABEL_136;
      case 'S':
      case 's':
        if (v39)
        {
          *(a3 + 104) = *(a3 + 64);
        }

        *(a3 + 64) = 6;
        goto LABEL_135;
      case 'T':
        v49 = *a1 + 1;
        *a1 = v49;
        if (v49 >= *a2)
        {
          boost::io::detail::maybe_throw_exception(a6, &v49[a5 - v8], v56);
          return 0;
        }

        *(a3 + 72) = *v49;
        *(a3 + 112) |= 8u;
        *a3 = -2;
LABEL_135:
        v45 = v58;
LABEL_136:
        v25 = *a1 + 1;
        *a1 = v25;
        if (v45 != v57)
        {
          return 1;
        }

        if (v25 != *a2)
        {
          v54 = *v25;
          v55 = (*(*a4 + 56))(a4, 124);
          v25 = *a1;
          if (v54 == v55)
          {
            v48 = v25 + 1;
            goto LABEL_140;
          }
        }

        break;
      case 'X':
        *(a3 + 76) |= 0x4000u;
        goto LABEL_122;
      case 'a':
        v51 = *(a3 + 76);
LABEL_130:
        v50 = v51 & 0xFFFFFEB1 | 0x104;
        goto LABEL_134;
      case 'b':
        *(a3 + 76) |= 1u;
        goto LABEL_136;
      case 'd':
      case 'g':
      case 'i':
      case 'u':
        goto LABEL_136;
      case 'e':
        v52 = *(a3 + 76);
LABEL_133:
        v50 = v52 | 0x100;
        goto LABEL_134;
      case 'f':
        v50 = *(a3 + 76) | 4;
LABEL_134:
        *(a3 + 76) = v50;
        goto LABEL_135;
      case 'n':
        *a3 = -3;
        goto LABEL_136;
      case 'o':
        *(a3 + 76) = *(a3 + 76) & 0xFFFFFFB5 | 0x40;
        goto LABEL_136;
      case 'p':
      case 'x':
LABEL_122:
        *(a3 + 76) = *(a3 + 76) & 0xFFFFFFB5 | 8;
        goto LABEL_136;
      case 't':
        *(a3 + 72) = (*(*a4 + 56))(a4, 32);
        *(a3 + 112) |= 8u;
        *a3 = -2;
        goto LABEL_136;
      default:
        boost::io::detail::maybe_throw_exception(a6, &(*a1)[a5 - v8], v56);
        goto LABEL_136;
    }

LABEL_95:
    boost::io::detail::maybe_throw_exception(a6, &v25[a5 - v8], v56);
  }

  return 1;
}

void boost::throw_exception<boost::io::bad_format_string>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(exception, a1);
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::assign(std::locale **a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  v7 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((v6 - *a1) >> 3) >= a2)
  {
    v10 = a1[1] - v7;
    v11 = 0xEEEEEEEEEEEEEEEFLL * v10;
    if (0xEEEEEEEEEEEEEEEFLL * v10 >= a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xEEEEEEEEEEEEEEEFLL * v10;
    }

    for (; v12; --v12)
    {
      boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::operator=(v7, a3);
      v7 += 15;
    }

    if (a2 > v11)
    {
      v13 = a1[1];
      v14 = &v13[15 * (a2 - v11)];
      v15 = 120 * a2 - 120 * v11;
      do
      {
        std::construct_at[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>> const&,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(v13, a3);
        v13 += 15;
        v15 -= 120;
      }

      while (v15);
      a1[1] = v14;
      return;
    }

    v16 = a1[1];
    v17 = &(*a1)[15 * a2];
    while (1)
    {
      if (v16 == v17)
      {
        a1[1] = v17;
        return;
      }

      if (LOBYTE(v16[-4].__locale_) == 1)
      {
        std::locale::~locale(v16 - 3);
        LOBYTE(v16[-4].__locale_) = 0;
        if (SHIBYTE(v16[-9].__locale_) < 0)
        {
LABEL_30:
          operator delete(v16[-11].__locale_);
          if ((SHIBYTE(v16[-12].__locale_) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_31;
        }
      }

      else if (SHIBYTE(v16[-9].__locale_) < 0)
      {
        goto LABEL_30;
      }

      if ((SHIBYTE(v16[-12].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_31:
      operator delete(v16[-14].__locale_);
LABEL_23:
      v16 -= 15;
    }
  }

  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = a1[1];
  v9 = *a1;
  if (v8 != v7)
  {
    while (1)
    {
      if (LOBYTE(v8[-4].__locale_) == 1)
      {
        std::locale::~locale(v8 - 3);
        LOBYTE(v8[-4].__locale_) = 0;
        if ((SHIBYTE(v8[-9].__locale_) & 0x80000000) == 0)
        {
LABEL_8:
          if (SHIBYTE(v8[-12].__locale_) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_5;
        }
      }

      else if ((SHIBYTE(v8[-9].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(v8[-11].__locale_);
      if (SHIBYTE(v8[-12].__locale_) < 0)
      {
LABEL_12:
        operator delete(v8[-14].__locale_);
      }

LABEL_5:
      v8 -= 15;
      if (v8 == v7)
      {
        v9 = *a1;
        break;
      }
    }
  }

  a1[1] = v7;
  operator delete(v9);
  v6 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
LABEL_35:
  if (a2 > 0x222222222222222)
  {
    goto LABEL_45;
  }

  v18 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 3);
  v19 = 2 * v18;
  if (2 * v18 <= a2)
  {
    v19 = a2;
  }

  v20 = v18 >= 0x111111111111111 ? 0x222222222222222 : v19;
  if (v20 > 0x222222222222222)
  {
LABEL_45:
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v21 = 15 * v20;
  v22 = operator new(120 * v20);
  *a1 = v22;
  a1[1] = v22;
  a1[2] = &v22[v21];
  v23 = 120 * a2;
  v24 = &v22[15 * a2];
  do
  {
    std::construct_at[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>> const&,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(v22, a3);
    v22 += 15;
    v23 -= 120;
  }

  while (v23);
  a1[1] = v24;
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(a1 + 8) = a2;
    return;
  }

  v6 = *(a1 + 16);
  v7 = v6 << 6;
  if (v6 << 6 < v4 || v3 > (v6 << 6) - v4)
  {
    __dst = 0;
    v25 = 0;
    v26 = 0;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v6 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&__dst, v11);
    v12 = a1;
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = v14 + v4;
    v25 = v14 + v4;
    v16 = __dst;
    if (v14 < 1)
    {
      LODWORD(v18) = 0;
      v17 = __dst;
    }

    else
    {
      v18 = v14 >> 6;
      if (v14 >= 0x40)
      {
        memmove(__dst, v13, 8 * v18);
        v12 = a1;
      }

      v17 = &v16[8 * v18];
      if ((v14 & 0x3F) != 0)
      {
        *v17 = *v17 & ~(0xFFFFFFFFFFFFFFFFLL >> -(v14 & 0x3F)) | *(v13 + v18) & (0xFFFFFFFFFFFFFFFFLL >> -(v14 & 0x3F));
        LODWORD(v18) = v14 & 0x3F;
      }

      else
      {
        LODWORD(v18) = 0;
      }

      v13 = *v12;
      v14 = *(v12 + 8);
      v16 = __dst;
      v15 = v25;
    }

    *v12 = v16;
    *(v12 + 8) = v15;
    __dst = v13;
    v25 = v14;
    v19 = *(v12 + 16);
    *(v12 + 16) = v26;
    v26 = v19;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v17 = (*a1 + 8 * (v3 >> 6));
    v18 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = a2;
  }

  if (v4)
  {
    if (a3)
    {
      if (v18)
      {
        if ((64 - v18) >= v4)
        {
          v20 = v4;
        }

        else
        {
          v20 = (64 - v18);
        }

        *v17 |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v18 - v20)) & (-1 << v18);
        v17 += 8;
        v4 -= v20;
      }

      v21 = v4 >> 6;
      if (v4 >= 0x40)
      {
        memset(v17, 255, 8 * v21);
      }

      if ((v4 & 0x3F) != 0)
      {
        v22 = *&v17[8 * v21] | (0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
LABEL_44:
        *&v17[8 * v21] = v22;
      }
    }

    else
    {
      if (v18)
      {
        if ((64 - v18) >= v4)
        {
          v23 = v4;
        }

        else
        {
          v23 = (64 - v18);
        }

        *v17 &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v18 - v23)) & (-1 << v18));
        v17 += 8;
        v4 -= v23;
      }

      v21 = v4 >> 6;
      if (v4 >= 0x40)
      {
        bzero(v17, 8 * v21);
      }

      if ((v4 & 0x3F) != 0)
      {
        v22 = *&v17[8 * v21] & ~(0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
        goto LABEL_44;
      }
    }
  }
}

void sub_1E529B6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 != a2)
  {
    v5 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v5 >= 0)
      {
        v9 = (a2 + 8);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      if (v5 >= 0)
      {
        v10 = *(a2 + 31);
      }

      else
      {
        v10 = *(a2 + 16);
      }

      std::string::__assign_no_alias<false>(v4, v9, v10);
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v4, *(a2 + 8), *(a2 + 16));
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
LABEL_16:
        if (v8 >= 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = *(a2 + 32);
        }

        if (v8 >= 0)
        {
          v13 = v8;
        }

        else
        {
          v13 = *(a2 + 40);
        }

        std::string::__assign_no_alias<false>((a1 + 32), v12, v13);
        goto LABEL_24;
      }
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 16) = *(a2 + 24);
      *v4 = v6;
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    if ((v8 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v11 = *v7;
      *(a1 + 48) = v7[2];
      *(a1 + 32) = v11;
    }
  }

LABEL_24:
  v14 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v14;
  if (*(a1 + 88) == 1)
  {
    v15 = (a1 + 96);
    if (*(a2 + 88))
    {
      std::locale::operator=(v15, (a2 + 96));
    }

    else
    {
      std::locale::~locale(v15);
      *(a1 + 88) = 0;
    }
  }

  else if (*(a2 + 88))
  {
    std::locale::locale((a1 + 96), (a2 + 96));
    *(a1 + 88) = 1;
  }

  v16 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v16;
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>> const&,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    std::locale::locale((a1 + 96), (a2 + 96));
    *(a1 + 88) = 1;
  }

  v7 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v7;
  return a1;
}

void sub_1E529B910(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::reserve(uint64_t a1, unint64_t a2)
{
  if (a2 > *(a1 + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v3 = ((a2 - 1) >> 6) + 1;
    v4 = operator new(8 * v3);
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = (v6 - 1) >> 6;
    if (v6 < 0x41)
    {
      v7 = 0;
    }

    v4[v7] = 0;
    if (v6 > 0x3F || (v6 & 0x3F) != 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = v4;
      v11 = v5;
      v12 = v5;
      do
      {
        v13 = 1 << v8;
        if ((*v12 >> v9))
        {
          v14 = *v10 | v13;
        }

        else
        {
          v14 = *v10 & ~v13;
        }

        *v10 = v14;
        if (v9 == 63)
        {
          v11 = ++v12;
          v9 = 0;
        }

        else
        {
          ++v9;
        }

        v10 += v8 == 63;
        if (v8 == 63)
        {
          v12 = v11;
          v8 = 0;
        }

        else
        {
          ++v8;
        }
      }

      while (v9 != (v6 & 0x3F) || v12 != &v5[v6 >> 6]);
    }

    *a1 = v4;
    *(a1 + 16) = v3;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

unint64_t std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(unint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v4 = *(a1 + 23);
  v5 = a3 - a2;
  if (v4 < 0)
  {
    if (a3 == a2)
    {
      return a1;
    }

    v8 = *(a1 + 8);
    v10 = *(a1 + 16);
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = *a1;
    v6 = v10 >> 63;
    if (*a1 > a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return a1;
    }

    LODWORD(v6) = 0;
    v7 = 22;
    v8 = *(a1 + 23);
    v9 = a1;
    if (a1 > a2)
    {
LABEL_11:
      if (v7 - v8 >= v5)
      {
        v15 = a1;
        if (v6)
        {
          v15 = *a1;
        }

        goto LABEL_22;
      }

      v12 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - v7 >= v8 + v5 - v7)
      {
        v13 = a1;
        if ((v4 & 0x80000000) != 0)
        {
          v13 = *a1;
          v14 = a2;
          if (v7 > 0x3FFFFFFFFFFFFFF2)
          {
LABEL_15:
            v15 = operator new(0x7FFFFFFFFFFFFFF7uLL);
            if (!v8)
            {
LABEL_17:
              if (v7 != 22)
              {
                operator delete(v13);
              }

              *(a1 + 8) = v8;
              *(a1 + 16) = v12 | 0x8000000000000000;
              *a1 = v15;
              a2 = v14;
LABEL_22:
              memmove(&v15[v8], a2, v5);
              v15[v8 + v5] = 0;
              v16 = v8 + v5;
              if (*(a1 + 23) < 0)
              {
                *(a1 + 8) = v16;
              }

              else
              {
                *(a1 + 23) = v16 & 0x7F;
              }

              return a1;
            }

LABEL_16:
            memmove(v15, v13, v8);
            goto LABEL_17;
          }
        }

        else
        {
          v14 = a2;
          if (v7 > 0x3FFFFFFFFFFFFFF2)
          {
            goto LABEL_15;
          }
        }

        v23 = 2 * v7;
        if (v8 + v5 > 2 * v7)
        {
          v23 = v8 + v5;
        }

        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        if (v23 >= 0x17)
        {
          v12 = v24;
        }

        else
        {
          v12 = 23;
        }

        v15 = operator new(v12);
        if (!v8)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_49:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v9 + v8 + 1 <= a2)
  {
    goto LABEL_11;
  }

  memset(__dst, 170, sizeof(__dst));
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_49;
  }

  if (v5 > 0x16)
  {
    if ((v5 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v5 | 7) + 1;
    }

    v18 = a2;
    v19 = operator new(v17);
    a2 = v18;
    v11 = v19;
    __dst[1] = v5;
    __dst[2] = (v17 | 0x8000000000000000);
    __dst[0] = v19;
  }

  else
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v11 = __dst;
  }

  memmove(v11, a2, v5);
  *(v11 + v5) = 0;
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v20 = __dst;
  }

  else
  {
    v20 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) >= 0)
  {
    v21 = HIBYTE(__dst[2]);
  }

  else
  {
    v21 = __dst[1];
  }

  std::string::append(a1, v20, v21);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  return a1;
}

void sub_1E529BCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::io::detail::maybe_throw_exception(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (this)
  {
    v3[0] = &unk_1F5F00A40;
    v3[1] = a2;
    v3[2] = a3;
    boost::throw_exception<boost::io::bad_format_string>(v3);
  }

  return this;
}

char *boost::io::detail::str2int<long,std::__wrap_iter<char const*>,std::ctype<char>>(char **a1, char **a2, void *a3, void *a4)
{
  *a3 = 0;
  for (i = *a1; i != *a2; ++i)
  {
    v8 = *i;
    if (v8 < 0)
    {
      break;
    }

    if ((*(a4[2] + 4 * v8) & 0x400) == 0)
    {
      break;
    }

    *a3 = 10 * *a3 + (*(*a4 + 72))(a4) - 48;
  }

  return i;
}

__n128 boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_1F5EFF798;
  a1->n128_u64[1] = &unk_1F5F00A40;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3] = 0uLL;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_1F5F009C8;
  a1->n128_u64[1] = &unk_1F5F009F8;
  a1[2] = &unk_1F5F00A20;
  return result;
}

std::exception *boost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void *boost::wrapexcept<boost::io::bad_format_string>::clone(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_1F5EFF798;
  v2[1] = &unk_1F5F00A40;
  *(v2 + 1) = *(a1 + 16);
  v3 = *(a1 + 40);
  v2[4] = &unk_1F5EFF7F0;
  v2[5] = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 3) = *(a1 + 48);
  *(v2 + 16) = *(a1 + 64);
  *v2 = &unk_1F5F009C8;
  v2[1] = &unk_1F5F009F8;
  v2[4] = &unk_1F5F00A20;
  boost::exception_detail::copy_boost_exception((v2 + 4), a1 + 32);
  return v2;
}

void sub_1E529C054(_Unwind_Exception *a1)
{
  std::exception::~exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::io::bad_format_string>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::io::bad_format_string>::~wrapexcept(std::exception *a1)
{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  v4 = a1 - 1;
  std::exception::~exception(a1);

  operator delete(v4);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);

  operator delete(&a1[-4]);
}

void boost::io::bad_format_string::~bad_format_string(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

__n128 boost::wrapexcept<boost::io::bad_format_string>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5EFF798;
  *(a1 + 8) = &unk_1F5F00A40;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = &unk_1F5EFF7F0;
  *(a1 + 40) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = result;
  *a1 = &unk_1F5F009C8;
  *(a1 + 8) = &unk_1F5F009F8;
  *(a1 + 32) = &unk_1F5F00A20;
  return result;
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__append(std::locale **a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 3) < a2)
  {
    v7 = 0xEEEEEEEEEEEEEEEFLL * ((v6 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0x222222222222222)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xEEEEEEEEEEEEEEEFLL * (v5 - *a1);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x111111111111111)
    {
      v10 = 0x222222222222222;
    }

    else
    {
      v10 = v8;
    }

    v24 = a1;
    if (v10)
    {
      if (v10 > 0x222222222222222)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v11 = a2;
      v12 = operator new(120 * v10);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v15 = &v12[120 * v7];
    __p = v12;
    v21 = v15;
    v22 = v15;
    v23 = &v12[120 * v10];
    v16 = 120 * a2;
    v17 = v15 + 120 * a2;
    do
    {
      std::construct_at[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>> const&,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(v15, a3);
      v15 += 120;
      v16 -= 120;
    }

    while (v16);
    v22 = v17;
    std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__swap_out_circular_buffer(a1, &__p);
    v18 = v21;
    while (1)
    {
      while (1)
      {
        v19 = v22;
        if (v22 == v18)
        {
          if (__p)
          {
            operator delete(__p);
          }

          return;
        }

        v22 -= 120;
        if (*(v19 - 32) != 1)
        {
          break;
        }

        std::locale::~locale((v19 - 24));
        *(v19 - 32) = 0;
        if ((*(v19 - 65) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_27:
        operator delete(*(v19 - 88));
        if (*(v19 - 89) < 0)
        {
          goto LABEL_28;
        }
      }

      if (*(v19 - 65) < 0)
      {
        goto LABEL_27;
      }

LABEL_24:
      if (*(v19 - 89) < 0)
      {
LABEL_28:
        operator delete(*(v19 - 112));
      }
    }
  }

  if (a2)
  {
    v13 = v6 + 120 * a2;
    v14 = 120 * a2;
    do
    {
      std::construct_at[abi:ne200100]<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>> const&,boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>*>(v6, a3);
      v6 += 120;
      v14 -= 120;
    }

    while (v14);
    v6 = v13;
  }

  a1[1] = v6;
}

void sub_1E529C740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1E529C75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__swap_out_circular_buffer(std::locale **a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (a2[1] + *a1 - v5);
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v9 = &v4[v7];
      v10 = &v6[v7];
      LODWORD(v10->__locale_) = v4[v7].__locale_;
      v11 = *&v4[v7 + 1].__locale_;
      v10[3].__locale_ = v4[v7 + 3];
      *&v10[1].__locale_ = v11;
      v9[2].__locale_ = 0;
      v9[3].__locale_ = 0;
      v9[1].__locale_ = 0;
      v12 = *&v4[v7 + 4].__locale_;
      v10[6].__locale_ = v4[v7 + 6];
      *&v10[4].__locale_ = v12;
      v9[5].__locale_ = 0;
      v9[6].__locale_ = 0;
      v9[4].__locale_ = 0;
      v13 = *&v4[v7 + 7].__locale_;
      *&v10[9].__locale_ = *&v4[v7 + 9].__locale_;
      *&v10[7].__locale_ = v13;
      LOBYTE(v10[11].__locale_) = 0;
      if (LOBYTE(v4[v7 + 11].__locale_) == 1)
      {
        std::locale::locale(v10 + 12, v9 + 12);
        LOBYTE(v10[11].__locale_) = 1;
      }

      locale = v9[13].__locale_;
      LODWORD(v10[14].__locale_) = v9[14].__locale_;
      v10[13].__locale_ = locale;
      v7 += 15;
    }

    while (&v9[15] != v5);
    v14 = v4 + 12;
    while (1)
    {
      if (LOBYTE(v14[-1].__locale_) == 1)
      {
        std::locale::~locale(v14);
        LOBYTE(v14[-1].__locale_) = 0;
        if ((SHIBYTE(v14[-6].__locale_) & 0x80000000) == 0)
        {
LABEL_10:
          if (SHIBYTE(v14[-9].__locale_) < 0)
          {
            goto LABEL_14;
          }

          goto LABEL_7;
        }
      }

      else if ((SHIBYTE(v14[-6].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(v14[-8].__locale_);
      if (SHIBYTE(v14[-9].__locale_) < 0)
      {
LABEL_14:
        operator delete(v14[-11].__locale_);
      }

LABEL_7:
      v15 = v14 + 3;
      v14 += 15;
      if (v15 == v5)
      {
        v4 = *a1;
        break;
      }
    }
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    if (*(i - 32) == 1)
    {
      std::locale::~locale((i - 24));
      *(i - 32) = 0;
      if (*(i - 65) < 0)
      {
LABEL_9:
        operator delete(*(i - 88));
        if ((*(i - 89) & 0x80000000) == 0)
        {
          continue;
        }

        goto LABEL_10;
      }
    }

    else if (*(i - 65) < 0)
    {
      goto LABEL_9;
    }

    if ((*(i - 89) & 0x80000000) == 0)
    {
      continue;
    }

LABEL_10:
    operator delete(*(i - 112));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(uint64_t *a1, void *a2)
{
  if (*(a1 + 60) == 1)
  {
    v4 = *a1;
    v3 = a1[1];
    if (v3 != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (!a1[4] || (v8 = *(v4 + v5), (v8 & 0x80000000) != 0) || ((*(a1[3] + ((v8 >> 3) & 0x1FFFFFF8)) >> v8) & 1) == 0)
        {
          v9 = v4 + v5;
          v7 = (v9 + 8);
          if (*(v9 + 31) < 0)
          {
            v7 = *v7;
            *(v9 + 16) = 0;
          }

          else
          {
            *(v9 + 31) = 0;
          }

          *v7 = 0;
          v4 = *a1;
          v3 = a1[1];
        }

        ++v6;
        v5 += 120;
      }

      while (v6 < 0xEEEEEEEEEEEEEEEFLL * ((v3 - v4) >> 3));
    }

    *(a1 + 13) = 0;
    *(a1 + 60) = 0;
    if (a1[4])
    {
      v10 = *(a1 + 14);
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = a1[3];
        do
        {
          if (((*(v12 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            break;
          }

          *(a1 + 13) = ++v11;
        }

        while (v10 != v11);
      }
    }
  }

  boost::io::detail::distribute<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(a1, a2);
  v13 = *(a1 + 13);
  v14 = v13 + 1;
  *(a1 + 13) = v13 + 1;
  if (a1[4])
  {
    v15 = *(a1 + 14);
    if (v14 < v15)
    {
      v16 = a1[3];
      v17 = v13 + 2;
      do
      {
        if (((*(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          break;
        }

        ++v14;
        *(a1 + 13) = v17++;
      }

      while (v15 != v14);
    }
  }

  return a1;
}

uint64_t *boost::io::detail::distribute<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(uint64_t *result, void *a2)
{
  v2 = result;
  v3 = *(result + 13);
  v4 = *(result + 14);
  if (v3 >= v4)
  {
    if ((result[11] & 4) != 0)
    {
      v11[0] = &unk_1F5F00B40;
      v11[1] = v3;
      v11[2] = v4;
      boost::throw_exception<boost::io::too_many_args>(v11);
    }
  }

  else
  {
    v6 = *result;
    v5 = result[1];
    if (v5 != *result)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (*(v6 + v8) == *(v2 + 52))
        {
          if (*(v2 + 184))
          {
            v10 = (v2 + 192);
          }

          else
          {
            v10 = 0;
          }

          result = boost::io::detail::put<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(a2, v6 + v8, (v6 + v8 + 8), (v2 + 96), v10);
          v6 = *v2;
          v5 = *(v2 + 8);
        }

        ++v9;
        v8 += 120;
      }

      while (v9 < 0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 3));
    }
  }

  return result;
}

void boost::throw_exception<boost::io::too_many_args>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_many_args>::wrapexcept(exception, a1);
}

uint64_t boost::io::detail::put<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(void *a1, uint64_t a2, std::string *a3, void *a4, const std::locale *a5)
{
  v82 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69[8] = v10;
  v69[9] = v10;
  v69[7] = v10;
  v69[5] = v10;
  v69[6] = v10;
  v69[3] = v10;
  v69[4] = v10;
  v69[1] = v10;
  v69[2] = v10;
  v68 = v10;
  v69[0] = v10;
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::basic_oaltstringstream(&v68, a4);
  if (a5)
  {
    v11 = (&v69[-1] + *(v68 - 24));
    v67.__locale_ = 0xAAAAAAAAAAAAAAAALL;
    std::ios_base::getloc(v11);
    std::ios_base::imbue(v11, a5);
    std::locale::~locale(v70);
    rdbuf = v11->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(rdbuf, a5);
      v81.__locale_ = 0xAAAAAAAAAAAAAAAALL;
      std::locale::locale(&v81, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, a5);
      std::locale::~locale(&v81);
    }

    std::locale::~locale(&v67);
  }

  boost::io::detail::stream_format_state<char,std::char_traits<char>>::apply_on(a2 + 56, (&v69[-1] + *(v68 - 24)), a5);
  (a1[1])(&v68, *a1);
  v13 = v68;
  v14 = &v69[-1] + *(v68 - 24);
  v15 = *(v14 + 2);
  __n = *(v14 + 3);
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = a3->__r_.__value_.__r.__words[0];
    a3->__r_.__value_.__l.__size_ = 0;
    *v16 = 0;
    if ((v15 & 0x10) == 0)
    {
LABEL_19:
      if (__n >= 1)
      {
        *(v69 + *(v13 - 24) + 8) = 0;
      }

      (a1[2])(&v68, *a1);
      v29 = a4[5];
      if ((*(a2 + 112) & 2) != 0 && (a4[6] == v29 || (v30 = *v29, std::ios_base::getloc((&v69[-1] + *(v68 - 24))), v31 = std::locale::use_facet(v70, MEMORY[0x1E69E5318]), v32 = (v31->__vftable[2].~facet_0)(v31, 43), std::locale::~locale(v70), v30 != v32) && (v33 = *v29, std::ios_base::getloc((&v69[-1] + *(v68 - 24))), v34 = std::locale::use_facet(v70, MEMORY[0x1E69E5318]), v35 = (v34->__vftable[2].~facet_0)(v34, 45), std::locale::~locale(v70), v33 != v35)))
      {
        std::ios_base::getloc((&v69[-1] + *(v68 - 24)));
        v37 = std::locale::use_facet(v70, MEMORY[0x1E69E5318]);
        v36 = (v37->__vftable[2].~facet_0)(v37, 32);
        std::locale::~locale(v70);
      }

      else
      {
        v36 = 0;
      }

      v38 = a4[5];
      if (a4[6] - v38 >= *(a2 + 104) - (v36 != 0))
      {
        v39 = *(a2 + 104) - (v36 != 0);
      }

      else
      {
        v39 = a4[6] - v38;
      }

      v40 = &v69[-1] + *(v68 - 24);
      v41 = *(v40 + 36);
      if (v41 == -1)
      {
        std::ios_base::getloc((&v69[-1] + *(v68 - 24)));
        v42 = std::locale::use_facet(v70, MEMORY[0x1E69E5318]);
        v41 = (v42->__vftable[2].~facet_0)(v42, 32);
        std::locale::~locale(v70);
        *(v40 + 36) = v41;
      }

      boost::io::detail::mk_str<char,std::char_traits<char>,std::allocator<char>>(a3, v29, v39, __n, v41, v15, v36, (*(a2 + 112) >> 2) & 1);
LABEL_34:
      v43 = a4[6];
      if (!v43)
      {
        goto LABEL_75;
      }

      goto LABEL_73;
    }
  }

  else
  {
    *(&a3->__r_.__value_.__s + 23) = 0;
    a3->__r_.__value_.__s.__data_[0] = 0;
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!__n)
  {
    goto LABEL_19;
  }

  (a1[2])(&v68, *a1);
  v18 = a4[5];
  v17 = a4[6];
  v19 = v17 - v18;
  if ((*(a2 + 112) & 2) != 0 && (v17 == v18 || (v65 = v17 - v18, v20 = *v18, std::ios_base::getloc((&v69[-1] + *(v68 - 24))), v21 = std::locale::use_facet(v70, MEMORY[0x1E69E5318]), v22 = (v21->__vftable[2].~facet_0)(v21, 43), std::locale::~locale(v70), v19 = v65, v20 != v22) && (v23 = *v18, std::ios_base::getloc((&v69[-1] + *(v68 - 24))), v24 = std::locale::use_facet(v70, MEMORY[0x1E69E5318]), v25 = (v24->__vftable[2].~facet_0)(v24, 45), std::locale::~locale(v70), v19 = v65, v23 != v25)))
  {
    v26 = (a2 + 104);
    v28 = 1;
  }

  else
  {
    v26 = (a2 + 104);
    if (v19 == __n && __n <= *(a2 + 104))
    {
      std::string::__assign_external(a3, v18, __n);
      goto LABEL_34;
    }

    v28 = 0;
  }

  v44 = v18;
  v45 = v19;
  std::string::__assign_external(a3, v44, v19);
  v46 = a4[6];
  if (v46 && v46 != a4[5])
  {
    *&v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    *&v70[0].__locale_ = 0u;
    v71 = 0u;
    (*(*a4 + 40))(&v81, a4, v70, 16);
  }

  v47 = a4[3];
  if (v47 && v47 != a4[2])
  {
    *&v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    *&v70[0].__locale_ = 0u;
    v71 = 0u;
    (*(*a4 + 40))(&v81, a4, v70, 8);
  }

  *&v48 = 0xAAAAAAAAAAAAAAAALL;
  *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v79 = v48;
  v80 = v48;
  v77 = v48;
  v78 = v48;
  v75 = v48;
  v76 = v48;
  v73 = v48;
  v74 = v48;
  v71 = v48;
  v72 = v48;
  *&v70[0].__locale_ = v48;
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::basic_oaltstringstream(v70, a4);
  boost::io::detail::stream_format_state<char,std::char_traits<char>>::apply_on(a2 + 56, (v70 + *(v70[0].__locale_ - 3)), a5);
  (a1[1])(v70, *a1);
  *(&v71 + *(v70[0].__locale_ - 3) + 8) = 0;
  if (v28)
  {
    LOBYTE(v81.__locale_) = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, &v81, 1);
  }

  (a1[2])(v70, *a1);
  v50 = a4[5];
  v49 = a4[6];
  if (v49 == v50 && (*(a2 + 112) & 2) != 0)
  {
    LOBYTE(v81.__locale_) = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, &v81, 1);
    v50 = a4[5];
    v49 = a4[6];
    v28 = 1;
  }

  v51 = v49 - v50;
  if (v51 >= *v26)
  {
    v52 = *v26;
  }

  else
  {
    v52 = v51;
  }

  if (__n <= v52)
  {
    std::string::__assign_external(a3, v50, v52);
  }

  else
  {
    v53 = v45 + v28;
    if (v52 < v53)
    {
      v53 = v52;
    }

    v54 = v28;
    if (v53 > v28)
    {
      v55 = a3->__r_.__value_.__r.__words[0];
      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = a3;
      }

      v54 = v28;
      while (1)
      {
        v56 = v55->__r_.__value_.__s.__data_[0];
        v55 = (v55 + 1);
        if (v50[v54] != v56)
        {
          break;
        }

        if (v53 == ++v54)
        {
          v54 = v53;
          break;
        }
      }
    }

    if (v54 >= v52)
    {
      v57 = v28;
    }

    else
    {
      v57 = v54;
    }

    std::string::__assign_external(a3, v50, v57);
    v58 = v70 + *(v70[0].__locale_ - 3);
    v59 = *(v58 + 36);
    if (v59 == -1)
    {
      std::ios_base::getloc((v70 + *(v70[0].__locale_ - 3)));
      v60 = std::locale::use_facet(&v81, MEMORY[0x1E69E5318]);
      v59 = (v60->__vftable[2].~facet_0)(v60, 32);
      std::locale::~locale(&v81);
      *(v58 + 36) = v59;
    }

    std::string::append(a3, __n - v52, v59);
    std::string::append(a3, &v50[v57], v52 - v57);
  }

  std::ostream::~ostream();
  v61 = v71;
  if (v71)
  {
    if (atomic_fetch_add((v71 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v61 + 16))(v61);
      if (atomic_fetch_add(v61 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v61 + 24))(v61);
      }
    }
  }

  MEMORY[0x1E69273B0](&v71 + 8);
  v43 = a4[6];
  if (v43)
  {
LABEL_73:
    if (v43 != a4[5])
    {
      *&v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      *&v70[0].__locale_ = 0u;
      v71 = 0u;
      (*(*a4 + 40))(&v81, a4, v70, 16);
    }
  }

LABEL_75:
  v62 = a4[3];
  if (v62 && v62 != a4[2])
  {
    *&v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    *&v70[0].__locale_ = 0u;
    v71 = 0u;
    (*(*a4 + 40))(&v81, a4, v70, 8);
  }

  std::ostream::~ostream();
  v63 = *&v69[0];
  if (*&v69[0])
  {
    if (atomic_fetch_add((*&v69[0] + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v63 + 16))(v63);
      if (atomic_fetch_add(v63 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v63 + 24))(v63);
      }
    }
  }

  return MEMORY[0x1E69273B0](v69 + 8);
}

void sub_1E529D700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  std::locale::~locale((v34 - 240));
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(va);
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(&a13);
  _Unwind_Resume(a1);
}

void sub_1E529D724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::locale a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E529D7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, ...)
{
  va_start(va, a12);
  std::locale::~locale(&a12);
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(va);
  _Unwind_Resume(a1);
}

void sub_1E529D7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(va);
  _Unwind_Resume(a1);
}

void sub_1E529D808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(va);
  _Unwind_Resume(a1);
}

void sub_1E529D81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(va);
  _Unwind_Resume(a1);
}

__n128 boost::wrapexcept<boost::io::too_many_args>::wrapexcept(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_1F5EFF798;
  a1->n128_u64[1] = &unk_1F5F00B40;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3] = 0uLL;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_1F5F00AC8;
  a1->n128_u64[1] = &unk_1F5F00AF8;
  a1[2] = &unk_1F5F00B20;
  return result;
}

std::exception *boost::wrapexcept<boost::io::too_many_args>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void *boost::wrapexcept<boost::io::too_many_args>::clone(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_1F5EFF798;
  v2[1] = &unk_1F5F00B40;
  *(v2 + 1) = *(a1 + 16);
  v3 = *(a1 + 40);
  v2[4] = &unk_1F5EFF7F0;
  v2[5] = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 3) = *(a1 + 48);
  *(v2 + 16) = *(a1 + 64);
  *v2 = &unk_1F5F00AC8;
  v2[1] = &unk_1F5F00AF8;
  v2[4] = &unk_1F5F00B20;
  boost::exception_detail::copy_boost_exception((v2 + 4), a1 + 32);
  return v2;
}

void sub_1E529DA98(_Unwind_Exception *a1)
{
  std::exception::~exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::io::too_many_args>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_many_args>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::io::too_many_args>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_many_args>::~wrapexcept(std::exception *a1)
{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  v4 = a1 - 1;
  std::exception::~exception(a1);

  operator delete(v4);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);

  operator delete(&a1[-4]);
}

void boost::io::too_many_args::~too_many_args(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

__n128 boost::wrapexcept<boost::io::too_many_args>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5EFF798;
  *(a1 + 8) = &unk_1F5F00B40;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = &unk_1F5EFF7F0;
  *(a1 + 40) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = result;
  *a1 = &unk_1F5F00AC8;
  *(a1 + 8) = &unk_1F5F00AF8;
  *(a1 + 32) = &unk_1F5F00B20;
  return result;
}

uint64_t boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::basic_oaltstringstream(uint64_t a1, void *a2)
{
  *(a1 + 8) = a2;
  v4 = (a1 + 24);
  *(a1 + 72) = 0;
  v5 = MEMORY[0x1E69E5590] + 16;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  v6 = operator new(0x20uLL);
  v6[1] = 0x100000001;
  *v6 = &unk_1F5F00C70;
  v6[2] = a2;
  *a1 = &unk_1F5F00BE0;
  *(a1 + 16) = v6;
  *(a1 + 24) = &unk_1F5F00C08;
  std::ios_base::init(v4, a2);
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  *a1 = &unk_1F5F00B70;
  *(a1 + 24) = &unk_1F5F00B98;
  return a1;
}

void sub_1E529E0B0(_Unwind_Exception *a1)
{
  boost::shared_ptr<boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>>::~shared_ptr(v2);
  MEMORY[0x1E69273B0](v1);
  _Unwind_Resume(a1);
}

void sub_1E529E0D8(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  MEMORY[0x1E69273B0](v1);
  _Unwind_Resume(a1);
}

void boost::io::detail::stream_format_state<char,std::char_traits<char>>::apply_on(uint64_t a1, std::ios_base *this, const std::locale *a3)
{
  if (*(a1 + 32) == 1)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    std::ios_base::getloc(this);
    std::ios_base::imbue(this, (a1 + 40));
    std::locale::~locale(&v16);
    rdbuf = this->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(this->__rdbuf_, a1 + 40);
      v15.__locale_ = 0xAAAAAAAAAAAAAAAALL;
      std::locale::locale(&v15, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, (a1 + 40));
      std::locale::~locale(&v15);
    }

    v6 = &v14;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    v13 = 0xAAAAAAAAAAAAAAAALL;
    std::ios_base::getloc(this);
    std::ios_base::imbue(this, a3);
    std::locale::~locale(&v16);
    v8 = this->__rdbuf_;
    if (v8)
    {
      (*(v8->__locale_ + 2))(this->__rdbuf_, a3);
      v15.__locale_ = 0xAAAAAAAAAAAAAAAALL;
      std::locale::locale(&v15, v8 + 1);
      std::locale::operator=(v8 + 1, a3);
      std::locale::~locale(&v15);
    }

    v6 = &v13;
  }

  std::locale::~locale(v6);
LABEL_10:
  if (*a1 != -1)
  {
    this->__width_ = *a1;
  }

  v9 = *(a1 + 8);
  if (v9 != -1)
  {
    this->__precision_ = v9;
  }

  v10 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (this[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(this);
      v11 = std::locale::use_facet(&v16, MEMORY[0x1E69E5318]);
      v12 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v16);
      this[1].__fmtflags_ = v12;
    }

    this[1].__fmtflags_ = v10;
  }

  this->__fmtflags_ = *(a1 + 20);
  std::ios_base::clear(this, *(a1 + 24));
  this->__exceptions_ = *(a1 + 28);
  std::ios_base::clear(this, this->__rdstate_);
}

void boost::io::detail::mk_str<char,std::char_traits<char>,std::allocator<char>>(std::string *__dst, std::string::value_type *__s, std::string::size_type __n, unint64_t a4, std::string::value_type __c, char a6, int a7, int a8)
{
  if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
  {
    v13 = __dst->__r_.__value_.__r.__words[0];
    __dst->__r_.__value_.__l.__size_ = 0;
    *v13 = 0;
    if (a4 < 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = 0;
    __dst->__r_.__value_.__s.__data_[0] = 0;
    if (a4 < 1)
    {
LABEL_19:
      if (a7)
      {
        v23 = __n + 1;
      }

      else
      {
        v23 = __n;
      }

      if (v23 <= 0x7FFFFFFFFFFFFFF7)
      {
        v24 = 22;
        if ((__dst->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = (__dst->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v24 < v23)
        {
          v25 = v23 | 7;
          if ((v23 | 7) == 0x17)
          {
            v25 = 24;
          }

          if (v23 <= 0x16)
          {
            v26 = 22;
          }

          else
          {
            v26 = v25;
          }

          std::string::__shrink_or_extend[abi:ne200100](__dst, v26);
        }

        if (a7)
        {
          std::string::append(__dst, 1uLL, a7);
        }

        if (__n)
        {

          std::string::append(__dst, __s, __n);
        }

        return;
      }

LABEL_52:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  v14 = a4 - __n;
  if (a4 <= __n)
  {
    goto LABEL_19;
  }

  if (a4 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_52;
  }

  v16 = 22;
  if ((__dst->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = (__dst->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v16 < a4)
  {
    v17 = a4 | 7;
    if ((a4 | 7) == 0x17)
    {
      v17 = 24;
    }

    if (a4 <= 0x16)
    {
      v18 = 22;
    }

    else
    {
      v18 = v17;
    }

    v19 = a6;
    v20 = a8;
    std::string::__shrink_or_extend[abi:ne200100](__dst, v18);
    a8 = v20;
    a6 = v19;
  }

  v15 = a7 != 0;
  v21 = v14 - v15;
  if (a8)
  {
    v22 = v21 / 2;
    v21 -= v21 / 2;
    if (!v21)
    {
      goto LABEL_41;
    }

LABEL_40:
    std::string::append(__dst, v21, __c);
    goto LABEL_41;
  }

  if ((a6 & 0x20) != 0)
  {
    v22 = v14 - v15;
    if (!a7)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v22 = 0;
  if (v21)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (a7)
  {
LABEL_42:
    std::string::append(__dst, 1uLL, a7);
  }

LABEL_43:
  if (__n)
  {
    std::string::append(__dst, __s, __n);
  }

  if (v22)
  {

    std::string::append(__dst, v22, __c);
  }
}

uint64_t boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(uint64_t a1)
{
  v2 = *(std::ostream::~ostream() + 16);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  MEMORY[0x1E69273B0](a1 + 24);
  return a1;
}

void boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(char *a1)
{
  v2 = *(std::ostream::~ostream() + 16);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  MEMORY[0x1E69273B0](a1 + 24);

  operator delete(a1);
}

void virtual thunk toboost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_oaltstringstream(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  v2 = *(v1 + 2);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  JUMPOUT(0x1E69273B0);
}

{
  v1 = (a1 + *(*a1 - 24));
  std::ostream::~ostream();
  v2 = v1[2];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  MEMORY[0x1E69273B0](v1 + 3);

  operator delete(v1);
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::detail::sp_counted_impl_pd<boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>> *,boost::io::basic_oaltstringstream<char,std::char_traits<char>,std::allocator<char>>::No_Op>::get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E539165CLL)
  {
    return a1 + 24;
  }

  if (((v2 & 0x80000001E539165CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E539165CLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E539165CLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t boost::shared_ptr<boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void std::string::__shrink_or_extend[abi:ne200100](_BYTE *__dst, unint64_t a2)
{
  v4 = __dst[23];
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 22;
    LOBYTE(v6) = __dst[23];
    v7 = v6;
    v8 = a2 < 0x17;
    if (a2 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v5 >= a2)
    {
      v13 = operator new(a2 + 1);
      v10 = v13;
      if ((v4 & 0x80000000) == 0 || (v14 = *(__dst + 2), (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1 < a2))
      {

        operator delete(v13);
        return;
      }

      v6 = HIBYTE(v14);
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = operator new(a2 + 1);
      if ((v6 & 0x80) == 0)
      {
LABEL_8:
        v9 = __dst;
        goto LABEL_9;
      }
    }

    v9 = *__dst;
    goto LABEL_23;
  }

  v7 = *(__dst + 1);
  v11 = *(__dst + 2);
  v5 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v6 = HIBYTE(v11);
  v8 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = *__dst;
  v10 = __dst;
  if ((v6 & 0x80) != 0)
  {
LABEL_23:
    v15 = *(__dst + 1);
    v8 = 1;
    v12 = v15 + 1;
    if (v15 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_9:
  v12 = v6 + 1;
LABEL_10:
  memmove(v10, v9, v12);
LABEL_11:
  if (v8)
  {
    operator delete(v9);
    if (a2 < 0x17)
    {
      goto LABEL_13;
    }
  }

  else if (a2 < 0x17)
  {
LABEL_13:
    __dst[23] = v7 & 0x7F;
    return;
  }

  *(__dst + 1) = v7;
  *(__dst + 2) = (a2 + 1) | 0x8000000000000000;
  *__dst = v10;
}

void sub_1E529EBDC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void *boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>(void *a1, uint64_t ***a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, a2, v3);
}

void boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  if (v4 == *a1)
  {
    if (*(a1 + 87) < 0)
    {
      v30 = a1[8];
      v31 = a1[9];

      std::string::__init_copy_ctor_external(a2, v30, v31);
    }

    else
    {
      *a2 = *(a1 + 4);
      *(a2 + 16) = a1[10];
    }

    return;
  }

  v7 = *(a1 + 13);
  v8 = *(a1 + 14);
  if (v7 < v8 && (a1[11] & 2) != 0)
  {
    v32[0] = &unk_1F5F00DB8;
    v32[1] = v7;
    v32[2] = v8;
    boost::throw_exception<boost::io::too_few_args>(v32);
  }

  v9 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 3);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v10 = *(a1 + 87);
  if (v10 < 0)
  {
    v11 = a1[9];
  }

  else
  {
    v11 = *(a1 + 87);
  }

  if (v9 <= 1)
  {
    v9 = 1;
  }

  v12 = (v5 + 56);
  do
  {
    while (1)
    {
      v14 = *(v12 - 25);
      if (v14 < 0)
      {
        v15 = *(v12 - 5) + v11;
        if (*(v12 - 14) != -2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = v14 + v11;
        if (*(v12 - 14) != -2)
        {
          goto LABEL_12;
        }
      }

      if (v15 <= *v12)
      {
        v15 = *v12;
      }

LABEL_12:
      v13 = *(v12 - 1);
      if (v13 < 0)
      {
        break;
      }

      v11 = v13 + v15;
      v12 += 15;
      if (!--v9)
      {
        goto LABEL_23;
      }
    }

    v11 = *(v12 - 2) + v15;
    v12 += 15;
    --v9;
  }

  while (v9);
LABEL_23:
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v16 = 24;
    }

    else
    {
      v16 = v11 | 7;
    }

    std::string::__shrink_or_extend[abi:ne200100](a2, v16);
    LOBYTE(v10) = *(a1 + 87);
  }

  if ((v10 & 0x80u) == 0)
  {
    v17 = (a1 + 8);
  }

  else
  {
    v17 = a1[8];
  }

  if ((v10 & 0x80u) == 0)
  {
    v18 = v10;
  }

  else
  {
    v18 = a1[9];
  }

  std::string::append(a2, v17, v18);
  v19 = *a1;
  if (a1[1] != *a1)
  {
    v20 = 0;
    v21 = 40;
    while (1)
    {
      v22 = *(v19 + v21 - 9);
      if (v22 >= 0)
      {
        v23 = (v19 + v21 - 32);
      }

      else
      {
        v23 = *(v19 + v21 - 32);
      }

      if (v22 >= 0)
      {
        v24 = *(v19 + v21 - 9);
      }

      else
      {
        v24 = *(v19 + v21 - 24);
      }

      std::string::append(a2, v23, v24);
      if (*(v19 + v21 - 40) != -2)
      {
        goto LABEL_49;
      }

      v25 = *(v19 + v21 + 16);
      v26 = *(a2 + 23);
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      v26 = *(a2 + 8);
      if (v25 > v26)
      {
        goto LABEL_48;
      }

LABEL_49:
      v27 = *(v19 + v21 + 15);
      if (v27 >= 0)
      {
        v28 = (v19 + v21 - 8);
      }

      else
      {
        v28 = *(v19 + v21 - 8);
      }

      if (v27 >= 0)
      {
        v29 = *(v19 + v21 + 15);
      }

      else
      {
        v29 = *(v19 + v21);
      }

      std::string::append(a2, v28, v29);
      ++v20;
      v19 = *a1;
      v21 += 120;
      if (v20 >= 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3))
      {
        goto LABEL_56;
      }
    }

    if (v25 <= v26)
    {
      goto LABEL_49;
    }

LABEL_48:
    std::string::append(a2, v25 - v26, *(v19 + v21 + 32));
    goto LABEL_49;
  }

LABEL_56:
  *(a1 + 60) = 1;
}

void sub_1E529EF14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::throw_exception<boost::io::too_few_args>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_few_args>::wrapexcept(exception, a1);
}

__n128 boost::wrapexcept<boost::io::too_few_args>::wrapexcept(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &unk_1F5EFF798;
  a1->n128_u64[1] = &unk_1F5F00DB8;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3] = 0uLL;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &unk_1F5F00D40;
  a1->n128_u64[1] = &unk_1F5F00D70;
  a1[2] = &unk_1F5F00D98;
  return result;
}

std::exception *boost::wrapexcept<boost::io::too_few_args>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void *boost::wrapexcept<boost::io::too_few_args>::clone(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  *v2 = &unk_1F5EFF798;
  v2[1] = &unk_1F5F00DB8;
  *(v2 + 1) = *(a1 + 16);
  v3 = *(a1 + 40);
  v2[4] = &unk_1F5EFF7F0;
  v2[5] = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 3) = *(a1 + 48);
  *(v2 + 16) = *(a1 + 64);
  *v2 = &unk_1F5F00D40;
  v2[1] = &unk_1F5F00D70;
  v2[4] = &unk_1F5F00D98;
  boost::exception_detail::copy_boost_exception((v2 + 4), a1 + 32);
  return v2;
}

void sub_1E529F1FC(_Unwind_Exception *a1)
{
  std::exception::~exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::io::too_few_args>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::io::too_few_args>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::io::too_few_args>::~wrapexcept(std::exception *a1)
{
  a1[4].__vftable = &unk_1F5EFF7F0;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::io::too_few_args>::~wrapexcept(std::exception *a1)
{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

{
  a1[3].__vftable = &unk_1F5EFF7F0;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  v4 = a1 - 1;
  std::exception::~exception(a1);

  operator delete(v4);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);

  operator delete(&a1[-4]);
}

void boost::io::too_few_args::~too_few_args(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

__n128 boost::wrapexcept<boost::io::too_few_args>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5EFF798;
  *(a1 + 8) = &unk_1F5F00DB8;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = &unk_1F5EFF7F0;
  *(a1 + 40) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = result;
  *a1 = &unk_1F5F00D40;
  *(a1 + 8) = &unk_1F5F00D70;
  *(a1 + 32) = &unk_1F5F00D98;
  return result;
}

uint64_t __cxx_global_var_init_296()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_297()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void DaleTransport_BootLogger_UART::start_pl_log(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v5;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v27 = v5;
  WORD2(v26) = 1;
  memset(&v25, 0, sizeof(v25));
  v29 = 0;
  v30 = 0xAAAAAAAAAAAA0000;
  LODWORD(v26) = 921600;
  v6 = *(a1 + 16);
  if (v6)
  {
    dispatch_retain(*(a1 + 16));
  }

  *(&v26 + 1) = v6;
  std::function<void ()(unsigned char *,long)>::operator=<std::function<void ()(unsigned char const*,long)> &,void>(&v27, a3);
  std::string::__assign_external(&v25, "/dev/tty.baseband-boot-logger", 0x1DuLL);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = v25;
  }

  v19 = v26;
  v20 = WORD2(v26);
  v21 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    dispatch_retain(*(&v26 + 1));
  }

  v7 = v29;
  if (v29)
  {
    if (v29 == &v27)
    {
      v23 = v22;
      (*(*v29 + 24))();
      goto LABEL_13;
    }

    v7 = (*(*v29 + 16))();
  }

  v23 = v7;
LABEL_13:
  v24 = v30;
  std::allocate_shared[abi:ne200100]<UART,std::allocator<UART>,UART::_Config &,0>(&v18, &v17);
  v8 = v17;
  v17 = 0uLL;
  v9 = *(a1 + 152);
  *(a1 + 144) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(&v17 + 1);
  if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = v23;
    if (v23 != v22)
    {
LABEL_19:
      if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      v12 = v21;
      if (v21)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 = v23;
    if (v23 != v22)
    {
      goto LABEL_19;
    }
  }

  (*(*v11 + 32))(v11);
  v12 = v21;
  if (v21)
  {
LABEL_22:
    dispatch_release(v12);
  }

LABEL_23:
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v13 = *(a1 + 144);
    if (v13)
    {
      goto LABEL_25;
    }

LABEL_28:
    v15 = **(a1 + 112);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_error_impl(&dword_1E5234000, v15, OS_LOG_TYPE_ERROR, "error: Failed to create UART object", &v17, 2u);
      v14 = v29;
      if (v29 == &v27)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v14 = v29;
      if (v29 == &v27)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_30;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
  v13 = *(a1 + 144);
  if (!v13)
  {
    goto LABEL_28;
  }

LABEL_25:
  UART::startAsyncRead(v13);
  v14 = v29;
  if (v29 == &v27)
  {
LABEL_41:
    (*(*v14 + 32))(v14);
    v16 = *(&v26 + 1);
    if (!*(&v26 + 1))
    {
      goto LABEL_34;
    }

LABEL_33:
    dispatch_release(v16);
    goto LABEL_34;
  }

LABEL_30:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  v16 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    goto LABEL_33;
  }

LABEL_34:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1E529FB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  UART::_Config::~_Config(va);
  _Unwind_Resume(a1);
}

void sub_1E529FB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, dispatch_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (object)
  {
    dispatch_release(object);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      UART::_Config::~_Config(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  UART::_Config::~_Config(&a27);
  _Unwind_Resume(a1);
}

void sub_1E529FB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  UART::_Config::~_Config(va);
  UART::_Config::~_Config(va1);
  _Unwind_Resume(a1);
}

void sub_1E529FBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  UART::_Config::~_Config(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(unsigned char *,long)>::operator=<std::function<void ()(unsigned char const*,long)> &,void>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2[3];
  if (!v3)
  {
    v10 = 0;
    v12 = 0;
    if (v11 != a1)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v3 != a2)
  {
    v4 = (*(*v3 + 16))(v3);
    v10 = v4;
    v12 = 0;
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v10 = v9;
  (*(*v3 + 24))(v3, v9);
  v4 = v10;
  v12 = 0;
  if (!v10)
  {
LABEL_9:
    v3 = 0;
    if (v11 != a1)
    {
      goto LABEL_13;
    }

LABEL_10:
    v5 = v3;
    goto LABEL_15;
  }

LABEL_4:
  v3 = operator new(0x28uLL);
  *v3 = &unk_1F5F00E38;
  if (v4 == v9)
  {
    v3[4] = v3 + 1;
    v6 = v3;
    (*(*v4 + 24))(v4);
    v3 = v6;
  }

  else
  {
    v3[4] = v4;
    v10 = 0;
  }

  v12 = v3;
  if (v11 == a1)
  {
    goto LABEL_10;
  }

LABEL_13:
  v5 = *(a1 + 24);
  if (v5 == a1)
  {
    (*(*v5 + 24))(*(a1 + 24), v11);
    (*(**(a1 + 24) + 32))(*(a1 + 24));
    *(a1 + 24) = v12;
    v12 = v11;
    v5 = v11;
  }

  else
  {
    v12 = *(a1 + 24);
    *(a1 + 24) = v3;
    if (v5 != v11)
    {
LABEL_15:
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      v7 = v10;
      if (v10 != v9)
      {
        goto LABEL_18;
      }

LABEL_22:
      (*(*v7 + 32))(v7);
      return a1;
    }
  }

  (*(*v5 + 32))(v5);
  v7 = v10;
  if (v10 == v9)
  {
    goto LABEL_22;
  }

LABEL_18:
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  return a1;
}

void sub_1E529FEA8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E529FEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::function<void ()(unsigned char const*,long)>::~function(va);
  _Unwind_Resume(a1);
}

void DaleTransport_BootLogger_UART::stop_pl_log(uint64_t a1)
{
  *(a1 + 144) = 0;
  v1 = (a1 + 144);
  v2 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (!v2)
  {
    *v1 = 0;
    *(a1 + 152) = 0;
    return;
  }

  if (atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(a1 + 152);
    *v1 = 0;
    *(a1 + 152) = 0;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 152);
    *v1 = 0;
    v1[1] = 0;
    if (!v3)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void DaleTransport_BootLogger_UART::start_rom_log(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v5;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v27 = v5;
  WORD2(v26) = 1;
  memset(&v25, 0, sizeof(v25));
  v29 = 0;
  v30 = 0xAAAAAAAAAAAA0000;
  LODWORD(v26) = 115200;
  v6 = *(a1 + 16);
  if (v6)
  {
    dispatch_retain(*(a1 + 16));
  }

  *(&v26 + 1) = v6;
  std::function<void ()(unsigned char *,long)>::operator=<std::function<void ()(unsigned char const*,long)> &,void>(&v27, a3);
  std::string::__assign_external(&v25, "/dev/tty.baseband-boot-logger", 0x1DuLL);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = v25;
  }

  v19 = v26;
  v20 = WORD2(v26);
  v21 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    dispatch_retain(*(&v26 + 1));
  }

  v7 = v29;
  if (v29)
  {
    if (v29 == &v27)
    {
      v23 = v22;
      (*(*v29 + 24))();
      goto LABEL_13;
    }

    v7 = (*(*v29 + 16))();
  }

  v23 = v7;
LABEL_13:
  v24 = v30;
  std::allocate_shared[abi:ne200100]<UART,std::allocator<UART>,UART::_Config &,0>(&v18, &v17);
  v8 = v17;
  v17 = 0uLL;
  v9 = *(a1 + 152);
  *(a1 + 144) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(&v17 + 1);
  if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = v23;
    if (v23 != v22)
    {
LABEL_19:
      if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      v12 = v21;
      if (v21)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 = v23;
    if (v23 != v22)
    {
      goto LABEL_19;
    }
  }

  (*(*v11 + 32))(v11);
  v12 = v21;
  if (v21)
  {
LABEL_22:
    dispatch_release(v12);
  }

LABEL_23:
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v13 = *(a1 + 144);
    if (v13)
    {
      goto LABEL_25;
    }

LABEL_28:
    v15 = **(a1 + 112);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_error_impl(&dword_1E5234000, v15, OS_LOG_TYPE_ERROR, "error: Failed to create UART object", &v17, 2u);
      v14 = v29;
      if (v29 == &v27)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v14 = v29;
      if (v29 == &v27)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_30;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
  v13 = *(a1 + 144);
  if (!v13)
  {
    goto LABEL_28;
  }

LABEL_25:
  UART::startAsyncRead(v13);
  v14 = v29;
  if (v29 == &v27)
  {
LABEL_41:
    (*(*v14 + 32))(v14);
    v16 = *(&v26 + 1);
    if (!*(&v26 + 1))
    {
      goto LABEL_34;
    }

LABEL_33:
    dispatch_release(v16);
    goto LABEL_34;
  }

LABEL_30:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  v16 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    goto LABEL_33;
  }

LABEL_34:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1E52A039C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  UART::_Config::~_Config(va);
  _Unwind_Resume(a1);
}

void sub_1E52A03B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, dispatch_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (object)
  {
    dispatch_release(object);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      UART::_Config::~_Config(&a27);
      _Unwind_Resume(a1);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  UART::_Config::~_Config(&a27);
  _Unwind_Resume(a1);
}

void sub_1E52A03F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  UART::_Config::~_Config(va);
  UART::_Config::~_Config(va1);
  _Unwind_Resume(a1);
}

void sub_1E52A0414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  UART::_Config::~_Config(va);
  _Unwind_Resume(a1);
}

void DaleTransport_BootLogger_UART::stop_rom_log(uint64_t a1)
{
  *(a1 + 144) = 0;
  v1 = (a1 + 144);
  v2 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (!v2)
  {
    *v1 = 0;
    *(a1 + 152) = 0;
    return;
  }

  if (atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(a1 + 152);
    *v1 = 0;
    *(a1 + 152) = 0;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 152);
    *v1 = 0;
    v1[1] = 0;
    if (!v3)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void DaleTransport_BootLogger_UART::~DaleTransport_BootLogger_UART(DaleTransport_BootLogger_UART *this)
{
  *this = &unk_1F5F00DE0;
  v1 = *(this + 19);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  DaleTransport_BootLogger::~DaleTransport_BootLogger(this);
}

{
  *this = &unk_1F5F00DE0;
  v1 = *(this + 19);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    DaleTransport_BootLogger::~DaleTransport_BootLogger(this);
  }

  else
  {
    DaleTransport_BootLogger::~DaleTransport_BootLogger(this);
  }

  operator delete(v2);
}

void *std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::~__func(void *a1)
{
  *a1 = &unk_1F5F00E38;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::~__func(char *__p)
{
  *__p = &unk_1F5F00E38;
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void *std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_1F5F00E38;
  v3 = v2 + 1;
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v4 != a1 + 8)
  {
    v4 = (*(*v4 + 16))(v4, v3);
LABEL_4:
    v2[4] = v4;
    return v2;
  }

  v2[4] = v3;
  (*(*v4 + 24))(v4);
  return v2;
}

uint64_t std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F5F00E38;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v6 = *a3;
  v7 = v3;
  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v7, &v6);
}

uint64_t std::__function::__func<std::function<void ()(unsigned char const*,long)>,std::allocator<std::function<void ()(unsigned char const*,long)>>,void ()(unsigned char *,long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E539178ALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E539178ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E539178ALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E539178ALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::function<void ()(unsigned char const*,long)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t __cxx_global_var_init_5()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::buffer>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUFileDataSource::~BBUFileDataSource(BBUFileDataSource *this)
{
  *this = &unk_1F5F00F28;
  v2 = *(this + 4);
  if (v2)
  {
    fclose(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5F00F28;
  v2 = *(this + 4);
  if (v2)
  {
    fclose(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
    v3 = this;
  }

  else
  {
    v3 = this;
  }

  operator delete(v3);
}

uint64_t BBUFileDataSource::init(uint64_t a1, __int128 *a2, int a3)
{
  *(a1 + 44) = a3;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_8;
    }
  }

  if (gBBULogVerbosity >= 7)
  {
    v5 = (*(*a1 + 56))(a1);
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    _BBULog(15, 7, v5, "", "Opening %s\n", v6);
  }

LABEL_8:
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = fopen(v7, "r");
  *(a1 + 32) = v8;
  if (!v8)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      return result;
    }

    v14 = (*(*a1 + 56))(a1);
    _BBULog(15, 0, v14, "", "Failed to open file %s\n");
    return 35;
  }

  if (fseek(v8, 0, 2))
  {
    v9 = *__error();
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 35;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
    {
LABEL_15:
      if (gBBULogVerbosity < 0)
      {
        return result;
      }

      v11 = (*(*a1 + 56))(a1);
      v12 = strerror(v9);
      v13 = "Failed to seek, err = %s (%u)\n";
      goto LABEL_17;
    }

    return result;
  }

  v15 = MEMORY[0x1E69279A0](*(a1 + 32));
  if ((v15 & 0x8000000000000000) == 0)
  {
    *(a1 + 40) = v15;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
LABEL_27:
        if (gBBULogVerbosity >= 7)
        {
          v16 = (*(*a1 + 56))(a1);
          _BBULog(15, 7, v16, "", "File size is %u\n", *(a1 + 40));
        }
      }
    }

    if (!fseek(*(a1 + 32), 0, 0))
    {
      if ((a1 + 8) != a2)
      {
        v17 = *(a2 + 23);
        if (*(a1 + 31) < 0)
        {
          if (v17 >= 0)
          {
            v19 = a2;
          }

          else
          {
            v19 = *a2;
          }

          if (v17 >= 0)
          {
            v20 = *(a2 + 23);
          }

          else
          {
            v20 = *(a2 + 1);
          }

          std::string::__assign_no_alias<false>((a1 + 8), v19, v20);
        }

        else
        {
          if ((*(a2 + 23) & 0x80) == 0)
          {
            result = 0;
            v18 = *a2;
            *(a1 + 24) = *(a2 + 2);
            *(a1 + 8) = v18;
            return result;
          }

          std::string::__assign_no_alias<true>((a1 + 8), *a2, *(a2 + 1));
        }
      }

      return 0;
    }

    v9 = *__error();
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      return result;
    }

    v11 = (*(*a1 + 56))(a1);
    v12 = strerror(v9);
    v13 = "Failed to re-seek, err = %s (%u)\n";
LABEL_17:
    _BBULog(15, 0, v11, "", v13, v12, v9);
    return 35;
  }

  v9 = *__error();
  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 35;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 35;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v11 = (*(*a1 + 56))(a1);
    v12 = strerror(v9);
    v13 = "Failed to tell, err = %s (%u)\n";
    goto LABEL_17;
  }

  return result;
}

uint64_t BBUFileDataSource::copyData(FILE **this, unsigned __int8 *a2, int a3, unsigned int *a4, unsigned int a5)
{
  LODWORD(v7) = a3;
  if (((*this)->_bf._base)(this) < a5)
  {
    result = 0;
    *a4 = 0;
    return result;
  }

  v11 = ((*this)->_bf._base)(this) - a5;
  if (v11 >= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = v11;
  }

  if (fseek(this[4], a5, 0))
  {
    v12 = *__error();
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v13 = ((*this)->_close)(this);
      strerror(v12);
      _BBULog(15, 0, v13, "", "Failed to seek to %u, err = %s (%u)\n");
      return 35;
    }
  }

  else
  {
    v14 = fread(a2, 1uLL, v7, this[4]);
    *a4 = v14;
    if (v7 <= v14)
    {
      return 0;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 35;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v15 = ((*this)->_close)(this);
      _BBULog(15, 0, v15, "", "Read only %u of %u bytes\n");
      return 35;
    }
  }

  return result;
}

void *BBUFileDataSource::getNameAsString@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 31);
  if (v3 >= 0)
  {
    v4 = *(this + 31);
  }

  else
  {
    v4 = this[2];
  }

  v5 = v4 + 5;
  if (v4 + 5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = this;
  if (v5 < 0x17)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 23) = v5;
    *(a2 + 4) = 32;
    v9 = (a2 + 5);
    *a2 = 1701603654;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v5 | 7) + 1;
    }

    v8 = operator new(v7);
    *(a2 + 8) = v5;
    *(a2 + 16) = v7 | 0x8000000000000000;
    *a2 = v8;
    *v8 = 1701603654;
    v9 = v8 + 5;
    v8[4] = 32;
  }

  if (v3 >= 0)
  {
    v10 = v6 + 1;
  }

  else
  {
    v10 = v6[1];
  }

  this = memmove(v9, v10, v4);
LABEL_15:
  *(v9 + v4) = 0;
  return this;
}

BOOL BBUEUR20HashData::compare(BBUEUR20HashData *this, BBUFeedback *a2, const BBUHashData *lpsrc)
{
  v4 = this;
  if (lpsrc)
  {
    v5 = this;
    if (this)
    {
      this = BBUHashData::compareHash(v4, a2, v4 + 8, this + 8, "SBL1");
      if (this)
      {
        v6 = BBUHashData::compareHash(v4, a2, v4 + 56, v5 + 56, "ACDB");
        v7 = v6;
        if (!capabilities::updater::supportsBbcfgImage(v6))
        {
          goto LABEL_5;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
  if (!capabilities::updater::supportsBbcfgImage(this))
  {
LABEL_5:
    if (v7)
    {
      goto LABEL_11;
    }

    return 0;
  }

LABEL_9:
  if (!v7 || !BBUHashData::compareHash(v4, a2, v4 + 104, v5 + 104, "BBCFG"))
  {
    return 0;
  }

LABEL_11:

  return BBUHashData::compareHash(v4, a2, v4 + 152, v5 + 152, "OEMMisc");
}

void BBUEUR20HashData::showHashes(BBUEUR20HashData *this, BBUFeedback *a2)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  BBUFeedback::handleComment(a2, "\t %s:  %s", "SBL1_HASH", &__p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v9 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "ACDB_HASH", p_p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v9 >= 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "BBCFG_HASH", v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v9 >= 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "OEMMisc_HASH", v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52A19CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BasebandUpdater::BasebandUpdater(BasebandUpdater *this, const void *a2, const __CFDictionary *a3)
{
  *this = &unk_1F5F00FE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  capabilities::radio::vendor(this);
  BasebandRestore::create(&v8, a3);
  v5 = v8;
  v8 = 0uLL;
  v6 = *(this + 3);
  *(this + 1) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(&v8 + 1);
  if (*(&v8 + 1))
  {
    if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void BasebandUpdater::~BasebandUpdater(BasebandUpdater *this)
{
  *this = &unk_1F5F00FE0;
  v1 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = this;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      this = v2;
    }

    v3 = *(this + 3);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

{
  *this = &unk_1F5F00FE0;
  v1 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (!v1)
  {
    goto LABEL_6;
  }

  if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  v3 = *(this + 3);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = this;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    this = v4;
  }

  else
  {
LABEL_6:
  }

  operator delete(this);
}

BOOL BBUEUR25HashData::compare(BBUEUR25HashData *this, BBUFeedback *a2, const BBUHashData *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!BBUHashData::compareHash(this, a2, this + 8, v5 + 8, "XBLsc") || !BBUHashData::compareHash(this, a2, this + 56, v6 + 56, "ACDB") || !BBUHashData::compareHash(this, a2, this + 104, v6 + 104, "BBCFG"))
  {
    return 0;
  }

  return BBUHashData::compareHash(this, a2, this + 152, v6 + 152, "OEMMisc");
}

void BBUEUR25HashData::showHashes(BBUEUR25HashData *this, BBUFeedback *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  BBUFeedback::handleComment(a2, "\t %s:  %s", "XBLsc_HASH", &__p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v10 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "ACDB_HASH", p_p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v10 >= 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "BBCFG_HASH", v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v10 >= 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "OEMMisc_HASH", v6);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v10 >= 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "SignedFirmwareSOCView_HASH", v7);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52A2154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR20UpdateSource::BBUEUR20UpdateSource(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F5F03CB8;
  *(a1 + 8) = a3;
  *(a1 + 64) = a2;
  v7 = operator new(0x20uLL);
  *v7 = &unk_1F5F011C0;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = a2;
  *(a1 + 72) = v7;
  *(a1 + 103) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *a1 = &unk_1F5F01088;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  v8 = operator new(0x18uLL);
  *(a1 + 240) = v8 + 3;
  *(a1 + 248) = v8 + 3;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  *(a1 + 232) = v8;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = a4;
  return a1;
}

void sub_1E52A22B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<BBUZipFile>::~unique_ptr[abi:ne200100](va);
  BBUUpdateSource::~BBUUpdateSource(v3);
  _Unwind_Resume(a1);
}

void BBUEURUpdateSource::~BBUEURUpdateSource(void **this)
{
  *this = &unk_1F5F03CB8;
  if (*(this + 103) < 0)
  {
    v1 = this;
    operator delete(this[10]);
    this = v1;
  }

  v2 = this[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = this;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    this = v3;
  }

  BBUUpdateSource::~BBUUpdateSource(this);
}

uint64_t BBUEUR20UpdateSource::BBUEUR20UpdateSource(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F5F03CB8;
  *(a1 + 8) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v6;
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *a1 = &unk_1F5F01088;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  v7 = operator new(0x18uLL);
  *(a1 + 240) = v7 + 3;
  *(a1 + 248) = v7 + 3;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  *(a1 + 232) = v7;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = a4;
  return a1;
}

void sub_1E52A24A8(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2);
  BBUUpdateSource::~BBUUpdateSource(v1);
  _Unwind_Resume(a1);
}

void BBUEUR20UpdateSource::~BBUEUR20UpdateSource(BBUEUR20UpdateSource *this)
{
  *this = &unk_1F5F01088;
  v2 = *(this + 50);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 26);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 25);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 22);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 23);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 27);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 28);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 32);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 33);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 34);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 35);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 36);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 37);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 38);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 39);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 40);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(this + 29);
  v22 = *(this + 30);
  while (v21 != v22)
  {
    if (*v21)
    {
      (*(**v21 + 8))(*v21);
    }

    ++v21;
  }

  v23 = *(this + 19);
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 41);
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(this + 42);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(this + 43);
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(this + 44);
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(this + 45);
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(this + 46);
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = *(this + 47);
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(this + 48);
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(this + 49);
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(this + 29);
  if (v33)
  {
    *(this + 30) = v33;
    operator delete(v33);
  }

  *this = &unk_1F5F03CB8;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  v34 = *(this + 9);
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
    v35 = this;
  }

  else
  {
    v35 = this;
  }

  BBUUpdateSource::~BBUUpdateSource(v35);
}

{
  BBUEUR20UpdateSource::~BBUEUR20UpdateSource(this);

  operator delete(v1);
}

CFMutableDictionaryRef BBUEUR20UpdateSource::copyBasebandMigrationData(BBUEUR20UpdateSource *this, BBUFeedback *a2)
{
  memset(&v66, 170, sizeof(v66));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v3 = off_1ED944170;
  if (!off_1ED944170)
  {
    v4 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v4);
    *&v67.st_dev = v4;
    v5 = operator new(0x20uLL);
    *v5 = &unk_1F5F05A00;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
    v6 = off_1ED944178;
    off_1ED944170 = v4;
    off_1ED944178 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_1ED944170;
  }

  v7 = off_1ED944178;
  *&v57 = v3;
  *(&v57 + 1) = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v3, &v66);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v66;
    }

    else
    {
      v9 = v66.__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_29:
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
    goto LABEL_30;
  }

  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v66;
  }

  else
  {
    v9 = v66.__r_.__value_.__r.__words[0];
  }

  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_14:
  if (bbufs::prepareDestination(v9, v8))
  {
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v65 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v64[7] = v12;
    v64[8] = v12;
    v64[5] = v12;
    v64[6] = v12;
    v64[3] = v12;
    v64[4] = v12;
    v64[1] = v12;
    v64[2] = v12;
    v63 = v12;
    v64[0] = v12;
    *v61 = v12;
    v62 = v12;
    v59 = v12;
    v60 = v12;
    v57 = v12;
    v58 = v12;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v57);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v66;
    }

    else
    {
      v13 = v66.__r_.__value_.__r.__words[0];
    }

    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v66.__r_.__value_.__l.__size_;
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, v13, size);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "efs", 3);
    v17 = MEMORY[0x1E69270E0](v16, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ".bin", 4);
    if ((BYTE8(v63) & 0x10) != 0)
    {
      v21 = v63;
      if (v63 < *(&v60 + 1))
      {
        *&v63 = *(&v60 + 1);
        v21 = *(&v60 + 1);
      }

      v22 = v60;
      v18 = v21 - v60;
      if ((v21 - v60) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if ((BYTE8(v63) & 8) == 0)
      {
        v18 = 0;
        HIBYTE(v56) = 0;
        v19 = __dst;
        goto LABEL_44;
      }

      v22 = *(&v58 + 1);
      v18 = *(&v59 + 1) - *(&v58 + 1);
      if (*(&v59 + 1) - *(&v58 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_63:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v18 >= 0x17)
    {
      if ((v18 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v18 | 7) + 1;
      }

      v19 = operator new(v23);
      __dst[1] = v18;
      v56 = v23 | 0x8000000000000000;
      __dst[0] = v19;
    }

    else
    {
      HIBYTE(v56) = v18;
      v19 = __dst;
      if (!v18)
      {
LABEL_44:
        *(v19 + v18) = 0;
        v24.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v24.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v67.st_blksize = v24;
        *v67.st_qspare = v24;
        v67.st_birthtimespec = v24;
        *&v67.st_size = v24;
        v67.st_mtimespec = v24;
        v67.st_ctimespec = v24;
        *&v67.st_uid = v24;
        v67.st_atimespec = v24;
        *&v67.st_dev = v24;
        if (v56 >= 0)
        {
          v25 = __dst;
        }

        else
        {
          v25 = __dst[0];
        }

        v26 = stat(v25, &v67);
        if (SHIBYTE(v56) < 0)
        {
          v29 = v26;
          operator delete(__dst[0]);
          if (v29)
          {
LABEL_49:
            if ((BYTE8(v63) & 0x10) != 0)
            {
              v32 = v63;
              if (v63 < *(&v60 + 1))
              {
                *&v63 = *(&v60 + 1);
                v32 = *(&v60 + 1);
              }

              v33 = v60;
              v27 = v32 - v60;
              if ((v32 - v60) > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_81;
              }
            }

            else
            {
              if ((BYTE8(v63) & 8) == 0)
              {
                v27 = 0;
                HIBYTE(v67.st_gid) = 0;
                v28 = &v67;
                goto LABEL_69;
              }

              v33 = *(&v58 + 1);
              v27 = *(&v59 + 1) - *(&v58 + 1);
              if (*(&v59 + 1) - *(&v58 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
              {
LABEL_81:
                std::string::__throw_length_error[abi:ne200100]();
              }
            }

            if (v27 >= 0x17)
            {
              if ((v27 | 7) == 0x17)
              {
                v34 = 25;
              }

              else
              {
                v34 = (v27 | 7) + 1;
              }

              v28 = operator new(v34);
              v67.st_ino = v27;
              *&v67.st_uid = v34 | 0x8000000000000000;
              *&v67.st_dev = v28;
            }

            else
            {
              HIBYTE(v67.st_gid) = v27;
              v28 = &v67;
              if (!v27)
              {
                goto LABEL_69;
              }
            }

            memmove(v28, v33, v27);
LABEL_69:
            *(v28 + v27) = 0;
            v35 = &v67;
            if ((v67.st_gid & 0x80000000) != 0)
            {
              v35 = *&v67.st_dev;
            }

            BBUFeedback::handleComment(this, "Failed to locate %s while copying baseband migration data\n", v35);
LABEL_72:
            if (SHIBYTE(v67.st_gid) < 0)
            {
              operator delete(*&v67.st_dev);
            }

            goto LABEL_121;
          }
        }

        else if (v26)
        {
          goto LABEL_49;
        }

        if ((BYTE8(v63) & 0x10) != 0)
        {
          v36 = v63;
          if (v63 < *(&v60 + 1))
          {
            *&v63 = *(&v60 + 1);
            v36 = *(&v60 + 1);
          }

          v37 = v60;
          v30 = v36 - v60;
          if ((v36 - v60) > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_102;
          }
        }

        else
        {
          if ((BYTE8(v63) & 8) == 0)
          {
            v30 = 0;
            HIBYTE(v67.st_gid) = 0;
            v31 = &v67;
            goto LABEL_87;
          }

          v37 = *(&v58 + 1);
          v30 = *(&v59 + 1) - *(&v58 + 1);
          if (*(&v59 + 1) - *(&v58 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
          {
LABEL_102:
            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        if (v30 >= 0x17)
        {
          if ((v30 | 7) == 0x17)
          {
            v38 = 25;
          }

          else
          {
            v38 = (v30 | 7) + 1;
          }

          v31 = operator new(v38);
          v67.st_ino = v30;
          *&v67.st_uid = v38 | 0x8000000000000000;
          *&v67.st_dev = v31;
        }

        else
        {
          HIBYTE(v67.st_gid) = v30;
          v31 = &v67;
          if (!v30)
          {
LABEL_87:
            v31[v30] = 0;
            v39 = operator new(0x30uLL);
            *v39 = &unk_1F5F00F28;
            *(v39 + 8) = 0u;
            *(v39 + 24) = 0u;
            if (BBUFileDataSource::init(v39, &v67.st_dev, 0))
            {
              (*(*v39 + 8))(v39);
              v39 = 0;
            }

            if (SHIBYTE(v67.st_gid) < 0)
            {
              operator delete(*&v67.st_dev);
            }

            if (v39)
            {
              if ((BYTE8(v63) & 0x10) != 0)
              {
                v44 = v63;
                if (v63 < *(&v60 + 1))
                {
                  *&v63 = *(&v60 + 1);
                  v44 = *(&v60 + 1);
                }

                v45 = &v60;
              }

              else
              {
                if ((BYTE8(v63) & 8) == 0)
                {
                  v40 = 0;
                  HIBYTE(v54) = 0;
                  v41 = __p;
                  goto LABEL_116;
                }

                v45 = &v58 + 1;
                v44 = *(&v59 + 1);
              }

              v48 = *v45;
              v40 = v44 - *v45;
              if (v40 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v40 >= 0x17)
              {
                if ((v40 | 7) == 0x17)
                {
                  v49 = 25;
                }

                else
                {
                  v49 = (v40 | 7) + 1;
                }

                v41 = operator new(v49);
                __p[1] = v40;
                v54 = v49 | 0x8000000000000000;
                __p[0] = v41;
              }

              else
              {
                HIBYTE(v54) = v44 - *v45;
                v41 = __p;
                if (!v40)
                {
                  goto LABEL_116;
                }
              }

              memmove(v41, v48, v40);
LABEL_116:
              *(v41 + v40) = 0;
              BBUDataSource::createData(&v67, v39);
              ctu::cf::insert<std::string,__CFData const*>(Mutable, __p, *&v67.st_dev, v10);
              if (*&v67.st_dev)
              {
                CFRelease(*&v67.st_dev);
              }

              if (SHIBYTE(v54) < 0)
              {
                operator delete(__p[0]);
              }

              (*(*v39 + 8))(v39);
LABEL_121:
              *&v57 = *MEMORY[0x1E69E54E8];
              *(&v57 + *(v57 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
              *(&v57 + 1) = MEMORY[0x1E69E5548] + 16;
              if (SHIBYTE(v62) < 0)
              {
                operator delete(v61[1]);
              }

              *(&v57 + 1) = MEMORY[0x1E69E5538] + 16;
              std::locale::~locale(&v58);
              std::ostream::~ostream();
              MEMORY[0x1E69273B0](v64);
              if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_31;
              }

              return Mutable;
            }

            if ((BYTE8(v63) & 0x10) != 0)
            {
              v46 = v63;
              if (v63 < *(&v60 + 1))
              {
                *&v63 = *(&v60 + 1);
                v46 = *(&v60 + 1);
              }

              v47 = &v60;
            }

            else
            {
              if ((BYTE8(v63) & 8) == 0)
              {
                v42 = 0;
                HIBYTE(v67.st_gid) = 0;
                v43 = &v67;
                goto LABEL_135;
              }

              v47 = &v58 + 1;
              v46 = *(&v59 + 1);
            }

            v50 = *v47;
            v42 = v46 - *v47;
            if (v42 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v42 >= 0x17)
            {
              if ((v42 | 7) == 0x17)
              {
                v51 = 25;
              }

              else
              {
                v51 = (v42 | 7) + 1;
              }

              v43 = operator new(v51);
              v67.st_ino = v42;
              *&v67.st_uid = v51 | 0x8000000000000000;
              *&v67.st_dev = v43;
            }

            else
            {
              HIBYTE(v67.st_gid) = v46 - *v47;
              v43 = &v67;
              if (!v42)
              {
                goto LABEL_135;
              }
            }

            memmove(v43, v50, v42);
LABEL_135:
            *(v43 + v42) = 0;
            v52 = &v67;
            if ((v67.st_gid & 0x80000000) != 0)
            {
              v52 = *&v67.st_dev;
            }

            BBUFeedback::handleComment(this, "Failed generating data source for %s while copying baseband migration data\n", v52);
            goto LABEL_72;
          }
        }

        memmove(v31, v37, v30);
        goto LABEL_87;
      }
    }

    memmove(v19, v22, v18);
    goto LABEL_44;
  }

  _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
LABEL_30:
  BBUFeedback::handleComment(this, "Failed preparing baseband filesystem directory for copying baseband migration data\n");
  Mutable = 0;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_31:
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  return Mutable;
}

void sub_1E52A3450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (*(v23 - 201) < 0)
  {
    operator delete(*(v23 - 224));
  }

  std::ostringstream::~ostringstream(&a23);
  if (*(v23 - 225) < 0)
  {
    operator delete(*(v23 - 248));
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<std::string,__CFData const*>(__CFDictionary *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  ctu::cf::convert_copy();
  if (a3)
  {
    CFRetain(a3);
    CFRelease(a3);
  }

  return 0;
}

void sub_1E52A35E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR20UpdateSource::restoreBasebandMigrationData(BBUEUR20UpdateSource *this, BBUFeedback *a2, const __CFDictionary *a3)
{
  memset(&__p, 170, sizeof(__p));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v5 = off_1ED944170;
  if (!off_1ED944170)
  {
    v6 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v6);
    context.__r_.__value_.__r.__words[0] = v6;
    v7 = operator new(0x20uLL);
    *v7 = &unk_1F5F05A00;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v6;
    v8 = off_1ED944178;
    off_1ED944170 = v6;
    off_1ED944178 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_1ED944170;
  }

  v9 = off_1ED944178;
  *v34 = v5;
  *&v34[8] = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v5, &__p);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (p_p)
    {
      goto LABEL_14;
    }

LABEL_21:
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
    goto LABEL_22;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!p_p)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (bbufs::prepareDestination(p_p, v10))
  {
    v12 = 1;
    goto LABEL_23;
  }

  _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
LABEL_22:
  BBUFeedback::handleComment(this, "Failed preparing baseband filesystem directory for copying baseband migration data");
  v12 = 0;
LABEL_23:
  *(&v35 + 1) = 0;
  v36 = 0;
  *&v35 = &v35 + 8;
  *&v34[8] = 0uLL;
  *v34 = &v34[8];
  context.__r_.__value_.__r.__words[0] = v34;
  context.__r_.__value_.__l.__size_ = &v34[8];
  if (!a2)
  {
    std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(v34, 0);
    v18 = v35;
    if (v35 == (&v35 + 8))
    {
      goto LABEL_81;
    }

    goto LABEL_31;
  }

  CFDictionaryApplyFunction(a2, ctu::cf::_Applier_InsertMapDefault<std::string,__CFData const*,std::insert_iterator<std::map<std::string,__CFData const*>>>, &context);
  v13 = v35;
  v35 = *v34;
  *v34 = v13;
  v14 = v36;
  v36 = *&v34[16];
  *&v34[16] = v14;
  v15 = &v35;
  if (v36)
  {
    v15 = (*(&v35 + 1) + 16);
  }

  *v15 = &v35 + 8;
  v16 = v14 == 0;
  v17 = v34;
  if (!v16)
  {
    v17 = (*(&v13 + 1) + 16);
  }

  *v17 = &v34[8];
  std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(v34, *(&v13 + 1));
  v18 = v35;
  if (v35 != (&v35 + 8))
  {
LABEL_31:
    v19 = *MEMORY[0x1E695E480];
    do
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v34 = v20;
      *&v34[16] = v20;
      if (*(v18 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(v34, *(v18 + 4), *(v18 + 5));
      }

      else
      {
        *v34 = v18[2];
        *&v34[16] = *(v18 + 6);
      }

      *&v34[24] = *(v18 + 7);
      if ((v34[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v32, *v34, *&v34[8]);
      }

      else
      {
        v32 = *v34;
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
      }

      else
      {
        v39 = v32;
      }

      v38 = 0;
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&context, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
      }

      else
      {
        context = v39;
      }

      v41 = 0;
      if (ctu::cf::convert_copy())
      {
        v21 = v41;
      }

      else
      {
        v21 = 0;
      }

      if (SHIBYTE(context.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(context.__r_.__value_.__l.__data_);
        v33 = v21;
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_65:
          operator delete(v39.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v33 = v21;
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_65;
        }
      }

      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

LABEL_66:
      operator delete(v32.__r_.__value_.__l.__data_);
LABEL_51:
      v22 = CFURLCreateWithFileSystemPath(v19, v21, kCFURLPOSIXPathStyle, 0);
      if (!v22)
      {
        if (v34[23] >= 0)
        {
          v23 = v34;
        }

        else
        {
          v23 = *v34;
        }

        BBUFeedback::handleComment(this, "Failed creating CFURLRef for %s while restoring baseband migration data", v23);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      if (v22)
      {
        context.__r_.__value_.__r.__words[0] = v22;
        v39.__r_.__value_.__r.__words[0] = 0;
        v24 = CFWriteStreamCreateWithFile(0, v22);
        v25 = v24;
        v39.__r_.__value_.__r.__words[0] = v24;
        if (v24)
        {
          if (CFWriteStreamOpen(v24))
          {
            BytePtr = CFDataGetBytePtr(*&v34[24]);
            Length = CFDataGetLength(*&v34[24]);
            v28 = CFWriteStreamWrite(v25, BytePtr, Length);
            if (v28 <= 0)
            {
              BBUFeedback::handleComment(this, "Failed writing to stream for restoring baseband migration data");
            }

            CFWriteStreamClose(v25);
            v12 = v12 & (v28 > 0);
          }

          else
          {
            BBUFeedback::handleComment(this, "Failed opening stream for restoring baseband migration data");
            v12 = 0;
          }

          CFRelease(v25);
        }

        else
        {
          BBUFeedback::handleComment(this, "Failed creating CFWriteStremRef for restoring baseband migration data");
          v12 = 0;
        }

        CFRelease(v22);
      }

      else
      {
        v12 = 0;
      }

      if ((v34[23] & 0x80000000) != 0)
      {
        operator delete(*v34);
        v29 = *(v18 + 1);
        if (v29)
        {
          do
          {
LABEL_76:
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
          goto LABEL_32;
        }
      }

      else
      {
        v29 = *(v18 + 1);
        if (v29)
        {
          goto LABEL_76;
        }
      }

      do
      {
        v30 = *(v18 + 2);
        v16 = *v30 == v18;
        v18 = v30;
      }

      while (!v16);
LABEL_32:
      v18 = v30;
    }

    while (v30 != (&v35 + 8));
  }

LABEL_81:
  std::__tree<std::__value_type<std::string,__CFData const*>,std::__map_value_compare<std::string,std::__value_type<std::string,__CFData const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,__CFData const*>>>::destroy(&v35, *(&v35 + 1));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_1E52A3BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v41 - 128));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_1E52A3D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a14);
  if ((a20 & 0x80000000) == 0)
  {
    JUMPOUT(0x1E52A3CF8);
  }

  JUMPOUT(0x1E52A3CF0);
}

void BBUEUR20UpdateSource::init(BBUEUR20UpdateSource *this)
{
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v2 = off_1ED944170;
  if (!off_1ED944170)
  {
    v3 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v3);
    v209.__r_.__value_.__r.__words[0] = v3;
    v4 = operator new(0x20uLL);
    *v4 = &unk_1F5F05A00;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_1ED944178;
    off_1ED944170 = v3;
    off_1ED944178 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_1ED944170;
  }

  v6 = off_1ED944178;
  v210.__r_.__value_.__r.__words[0] = v2;
  v210.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v2, &__p);
  if ((__p.st_gid & 0x80000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = *&__p.st_dev;
  }

  if (p_p)
  {
    if ((bbufs::prepareDestination(p_p, v7) & 1) == 0)
    {
      _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
    }
  }

  else
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
  }

  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else if (!v6)
  {
LABEL_20:
    v9 = *(this + 103);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    if (*(this + 11))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_20;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  v9 = *(this + 103);
  if (v9 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v9)
  {
    goto LABEL_26;
  }

LABEL_25:
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x109u, "Assertion failure(( !fFirmwareFolder.empty() || fZipFile) && Firmware data source error!)");
LABEL_493:
  }

LABEL_26:
  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "restoresbl1.mbn");
  v10 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v14 = v10;
    operator delete(*&__p.st_dev);
    if (v14)
    {
      goto LABEL_28;
    }

LABEL_36:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_40;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v15 = (**this)(this);
      _BBULog(3, 1, v15, "", "File not present: %s\n");
    }

    goto LABEL_40;
  }

  if (!v10)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (*(this + 20))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x10Eu, "Assertion failure(fRestoreSBLImage == __null)");
    goto LABEL_493;
  }

  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "restoresbl1.mbn");
  DataSource = BBUEURUpdateSource::createDataSource(this, &__p, 704643072);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v12 = operator new(0x58uLL);
  BBUEURMIImage::BBUEURMIImage(v12, DataSource, 0);
  *v12 = &unk_1F5F01210;
  *(v12 + 10) = 0;
  *(v12 + 74) = 0;
  *(v12 + 36) = 19522;
  *(v12 + 8) = *"restoreSBL";
  v12[87] = 10;
  *(this + 20) = v12;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_40;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v13 = (**this)(this);
    _BBULog(3, 0, v13, "", "Loaded restoreSBL1\n");
  }

LABEL_40:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "sbl1.mbn");
  v16 = BBUEURUpdateSource::containsFile(this, &__p);
  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
  {
    if (v16)
    {
      goto LABEL_42;
    }

LABEL_50:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_54;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v21 = (**this)(this);
      _BBULog(1, 1, v21, "", "File not present: %s\n");
    }

    goto LABEL_54;
  }

  v20 = v16;
  operator delete(*&__p.st_dev);
  if (!v20)
  {
    goto LABEL_50;
  }

LABEL_42:
  if (*(this + 21))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x11Du, "Assertion failure(fSBLImage == __null)");
    goto LABEL_493;
  }

  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "sbl1.mbn");
  v17 = BBUEURUpdateSource::createDataSource(this, &__p, 704643072);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v18 = operator new(0x58uLL);
  BBUEURMIImage::BBUEURMIImage(v18, v17, 0);
  *v18 = &unk_1F5F01210;
  *(v18 + 75) = 0;
  *(v18 + 67) = 0;
  *(v18 + 83) = 0;
  *(v18 + 32) = 16979;
  v18[66] = 76;
  v18[87] = 3;
  *(this + 21) = v18;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_54;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v19 = (**this)(this);
    _BBULog(3, 0, v19, "", "Loaded SBL1\n");
  }

LABEL_54:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apps.mbn");
  v22 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v27 = v22;
    operator delete(*&__p.st_dev);
    if (v27)
    {
      goto LABEL_56;
    }

LABEL_63:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_67;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v28 = (**this)(this);
      _BBULog(3, 1, v28, "", "File not present: %s\n");
    }

    goto LABEL_67;
  }

  if (!v22)
  {
    goto LABEL_63;
  }

LABEL_56:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apps.mbn");
  v23 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v24 = operator new(0x20uLL);
  *v24 = &unk_1F5F014B0;
  v24[1] = v23;
  v24[2] = 0;
  *(v24 + 6) = 0;
  v25 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v25, v23, 0);
  v24[2] = v25;
  *v24 = &unk_1F5F00210;
  *(this + 26) = v24;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_67;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_67;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v26 = (**this)(this);
    _BBULog(3, 0, v26, "", "Loaded APPS\n");
  }

LABEL_67:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "qdsp6sw.mbn");
  v29 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v34 = v29;
    operator delete(*&__p.st_dev);
    if (v34)
    {
      goto LABEL_69;
    }

LABEL_76:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_80;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v35 = (**this)(this);
      _BBULog(3, 1, v35, "", "File not present: %s\n");
    }

    goto LABEL_80;
  }

  if (!v29)
  {
    goto LABEL_76;
  }

LABEL_69:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "qdsp6sw.mbn");
  v30 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v31 = operator new(0x20uLL);
  *v31 = &unk_1F5F014B0;
  v31[1] = v30;
  v31[2] = 0;
  *(v31 + 6) = 0;
  v32 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v32, v30, 0);
  v31[2] = v32;
  *v31 = &unk_1F5F00280;
  *(this + 27) = v31;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_80;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_80;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v33 = (**this)(this);
    _BBULog(3, 0, v33, "", "Loaded QDSP6SW\n");
  }

LABEL_80:
  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "tz.mbn");
  v36 = BBUEURUpdateSource::containsFile(this, &__p);
  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
  {
    if (v36)
    {
      goto LABEL_82;
    }

LABEL_89:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_93;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_93;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v42 = (**this)(this);
      _BBULog(3, 1, v42, "", "File not present: %s\n");
    }

    goto LABEL_93;
  }

  v41 = v36;
  operator delete(*&__p.st_dev);
  if (!v41)
  {
    goto LABEL_89;
  }

LABEL_82:
  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "tz.mbn");
  v37 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v38 = operator new(0x20uLL);
  *v38 = &unk_1F5F014B0;
  v38[1] = v37;
  v38[2] = 0;
  *(v38 + 6) = 0;
  v39 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v39, v37, 0);
  v38[2] = v39;
  *v38 = &unk_1F5F002F0;
  *(this + 28) = v38;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
      goto LABEL_86;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
LABEL_86:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v40 = (**this)(this);
        _BBULog(3, 0, v40, "", "Loaded TZ\n");
      }
    }
  }

LABEL_93:
  memset(&v210, 170, sizeof(v210));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v43 = off_1ED944170;
  if (!off_1ED944170)
  {
    v44 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v44);
    v209.__r_.__value_.__r.__words[0] = v44;
    v45 = operator new(0x20uLL);
    *v45 = &unk_1F5F05A00;
    v45[1] = 0;
    v45[2] = 0;
    v45[3] = v44;
    v46 = off_1ED944178;
    off_1ED944170 = v44;
    off_1ED944178 = v45;
    if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }

    v43 = off_1ED944170;
  }

  v47 = off_1ED944178;
  *&__p.st_dev = v43;
  __p.st_ino = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v43, &v210);
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  for (i = 0; i != 3; ++i)
  {
    memset(&__p, 170, 24);
    v49 = SHIBYTE(v210.__r_.__value_.__r.__words[2]);
    if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v210.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v210.__r_.__value_.__l.__size_;
    }

    v51 = size + 3;
    if (size + 3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v52 = this;
    if (v51 < 0x17)
    {
      memset(&v208, 0, sizeof(v208));
      v54 = &v208;
      *(&v208.__r_.__value_.__s + 23) = size + 3;
      if (!size)
      {
        goto LABEL_119;
      }
    }

    else
    {
      if ((v51 | 7) == 0x17)
      {
        v53 = 25;
      }

      else
      {
        v53 = (v51 | 7) + 1;
      }

      v54 = operator new(v53);
      v208.__r_.__value_.__l.__size_ = size + 3;
      v208.__r_.__value_.__r.__words[2] = v53 | 0x8000000000000000;
      v208.__r_.__value_.__r.__words[0] = v54;
    }

    if (v49 >= 0)
    {
      v55 = &v210;
    }

    else
    {
      v55 = v210.__r_.__value_.__r.__words[0];
    }

    memmove(v54, v55, size);
LABEL_119:
    v56 = &unk_1ED949000;
    *&v54[size] = 7562853;
    std::to_string(&v207, i + 1);
    if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v207;
    }

    else
    {
      v57 = v207.__r_.__value_.__r.__words[0];
    }

    if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = HIBYTE(v207.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v58 = v207.__r_.__value_.__l.__size_;
    }

    v59 = std::string::append(&v208, v57, v58);
    this = v52;
    v60 = *&v59->__r_.__value_.__l.__data_;
    v209.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
    *&v209.__r_.__value_.__l.__data_ = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    v61 = SHIBYTE(v209.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v209.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if ((SHIBYTE(v209.__r_.__value_.__r.__words[2]) - 19) < 4)
      {
        v62 = SHIBYTE(v209.__r_.__value_.__r.__words[2]) + 4;
        v63 = &v209;
        v64 = 22;
LABEL_131:
        v65 = 2 * v64;
        if (v62 > 2 * v64)
        {
          v65 = v62;
        }

        if ((v65 | 7) == 0x17)
        {
          v66 = 25;
        }

        else
        {
          v66 = (v65 | 7) + 1;
        }

        if (v65 >= 0x17)
        {
          v67 = v66;
        }

        else
        {
          v67 = 23;
        }

        v68 = v64 == 22;
        goto LABEL_140;
      }

      v72 = &v209;
      *(&v209.__r_.__value_.__l.__data_ + SHIBYTE(v209.__r_.__value_.__r.__words[2])) = 1852400174;
      v73 = v61 + 4;
      if ((SHIBYTE(v209.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_148;
    }

    v61 = v209.__r_.__value_.__l.__size_;
    v64 = (v209.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v64 - v209.__r_.__value_.__l.__size_ >= 4)
    {
      v72 = v209.__r_.__value_.__r.__words[0];
      *(v209.__r_.__value_.__r.__words[0] + v209.__r_.__value_.__l.__size_) = 1852400174;
      v73 = v61 + 4;
      if ((SHIBYTE(v209.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_146:
        *(&v209.__r_.__value_.__s + 23) = v73 & 0x7F;
LABEL_149:
        v71 = v72 + v73;
        goto LABEL_150;
      }

LABEL_148:
      v209.__r_.__value_.__l.__size_ = v73;
      goto LABEL_149;
    }

    v62 = v209.__r_.__value_.__l.__size_ + 4;
    if (0x7FFFFFFFFFFFFFF7 - (v209.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v209.__r_.__value_.__l.__size_ + 4 - v64)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v63 = v209.__r_.__value_.__r.__words[0];
    if (v64 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_131;
    }

    v68 = 0;
    v67 = 0x7FFFFFFFFFFFFFF7;
LABEL_140:
    v69 = operator new(v67);
    v70 = v69;
    if (v61)
    {
      memmove(v69, v63, v61);
    }

    *(v70 + v61) = 1852400174;
    if (!v68)
    {
      operator delete(v63);
    }

    v209.__r_.__value_.__l.__size_ = v62;
    v209.__r_.__value_.__r.__words[2] = v67 | 0x8000000000000000;
    v209.__r_.__value_.__r.__words[0] = v70;
    v71 = (v70 + v62);
    this = v52;
    v56 = &unk_1ED949000;
LABEL_150:
    *v71 = 0;
    *&__p.st_dev = *&v209.__r_.__value_.__l.__data_;
    *&__p.st_uid = *(&v209.__r_.__value_.__l + 2);
    memset(&v209, 0, sizeof(v209));
    if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v207.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v208.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_152;
      }
    }

    else if ((SHIBYTE(v208.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_152;
    }

    operator delete(v208.__r_.__value_.__l.__data_);
LABEL_152:
    v74 = operator new(0x30uLL);
    *v74 = &unk_1F5F00F28;
    *(v74 + 8) = 0u;
    *(v74 + 24) = 0u;
    v75 = BBUFileDataSource::init(v74, &__p.st_dev, 0);
    v76 = *v74;
    if (!v75)
    {
      if ((*(v76 + 24))(v74) >= 0x29)
      {
        v78 = operator new(0x58uLL);
        BBUEUREFSImage::BBUEUREFSImage(v78, v74, i + 1, 0);
        v79 = (*(*v74 + 24))(v74);
        v80 = (*(*v78 + 72))(v78, v79);
        (*(*v78 + 8))(v78);
        if (v80)
        {
          v74 = operator new(0x30uLL);
          *v74 = &unk_1F5F00F28;
          *(v74 + 8) = 0u;
          *(v74 + 24) = 0u;
          if (BBUFileDataSource::init(v74, &__p.st_dev, 0))
          {
            (*(*v74 + 8))(v74);
            v74 = 0;
          }

          v77 = 1;
          goto LABEL_164;
        }

        v74 = 0;
      }

      v77 = 0;
LABEL_164:
      BBUFeedback::handleComment(*(this + 1), "EFS file verify status: %d", v77);
      goto LABEL_165;
    }

    (*(v76 + 8))(v74);
    v74 = 0;
    v77 = 1;
LABEL_165:
    if (i | v74 && v77)
    {
      if (!v74)
      {
        goto LABEL_188;
      }
    }

    else
    {
      memset(&v209, 170, sizeof(v209));
      if (v74)
      {
        v81 = (*(*v74 + 24))(v74);
        std::to_string(&v209, v81);
        v82 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v82 = *&__p.st_dev;
        }

        v83 = &v209;
        if ((v209.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v83 = v209.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        *(&v209.__r_.__value_.__s + 23) = 4;
        strcpy(&v209, "NULL");
        v82 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v82 = *&__p.st_dev;
        }

        v83 = &v209;
      }

      BBUFeedback::handleComment(*(this + 1), "Failed to load %s (size %s), creating empty file (size %u)", v82, v83, 0x100000);
      if (v74)
      {
        (*(*v74 + 8))(v74);
      }

      v84 = BBUScratchFile::createWithFile(&__p, 0x100000);
      if (v84)
      {
        v202 = __cxa_allocate_exception(0x210uLL);
        v200 = v202;
        v203 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v203 = *&__p.st_dev;
        }

        _BBUException::_BBUException(v202, 104, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x17Bu, "Failed to create scratch %s (%d)", v203, v84);
LABEL_487:
      }

      v74 = operator new(0x30uLL);
      *v74 = &unk_1F5F00F28;
      *(v74 + 8) = 0u;
      *(v74 + 24) = 0u;
      if (BBUFileDataSource::init(v74, &__p.st_dev, 0))
      {
        (*(*v74 + 8))(v74);
        v199 = __cxa_allocate_exception(0x210uLL);
        v200 = v199;
        v201 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v201 = *&__p.st_dev;
        }

        _BBUException::_BBUException(v199, 104, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x17Eu, "Failed to create data source from fresh scratch file %s (%d)", v201, 0);
        goto LABEL_487;
      }

      if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v209.__r_.__value_.__l.__data_);
      }
    }

    v85 = operator new(0x58uLL);
    BBUEUREFSImage::BBUEUREFSImage(v85, v74, i + 1, 0);
    *(*(this + 29) + 8 * i) = v85;
    if (v56[396] == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_188;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_188;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v86 = (**this)(this);
      _BBULog(3, 0, v86, "", "Loaded EFS%u\n", i + 1);
    }

LABEL_188:
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }
  }

  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "acdb.mbn");
  v87 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v91 = v87;
    operator delete(*&__p.st_dev);
    if (!v91)
    {
      goto LABEL_201;
    }

LABEL_194:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "acdb.mbn");
    v88 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v89 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v89, v88, 0);
    *v89 = &unk_1F5F00360;
    *(this + 32) = v89;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_205;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_205;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v90 = (**this)(this);
      _BBULog(3, 0, v90, "", "Loaded ACDB\n");
    }
  }

  else
  {
    if (v87)
    {
      goto LABEL_194;
    }

LABEL_201:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_203:
        if (gBBULogVerbosity >= 1)
        {
          v92 = (**this)(this);
          _BBULog(3, 1, v92, "", "File not present: %s\n", "acdb.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_203;
      }
    }
  }

LABEL_205:
  HIBYTE(__p.st_gid) = 9;
  strcpy(&__p, "bbcfg.mbn");
  v93 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v97 = v93;
    operator delete(*&__p.st_dev);
    if (!v97)
    {
      goto LABEL_214;
    }

LABEL_207:
    HIBYTE(__p.st_gid) = 9;
    strcpy(&__p, "bbcfg.mbn");
    v94 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v95 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v95, v94, 0);
    *v95 = &unk_1F5F003D8;
    *(this + 33) = v95;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_218;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_218;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v96 = (**this)(this);
      _BBULog(3, 0, v96, "", "Loaded BBCFG\n");
    }
  }

  else
  {
    if (v93)
    {
      goto LABEL_207;
    }

LABEL_214:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_216:
        if (gBBULogVerbosity >= 1)
        {
          v98 = (**this)(this);
          _BBULog(3, 1, v98, "", "File not present: %s\n", "bbcfg.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_216;
      }
    }
  }

LABEL_218:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apdp.mbn");
  v99 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v104 = v99;
    operator delete(*&__p.st_dev);
    if (!v104)
    {
      goto LABEL_227;
    }

LABEL_220:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "apdp.mbn");
    v100 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v101 = operator new(0x20uLL);
    *v101 = &unk_1F5F014B0;
    v101[1] = v100;
    v101[2] = 0;
    *(v101 + 6) = 0;
    v102 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v102, v100, 0);
    v101[2] = v102;
    *v101 = &unk_1F5F00450;
    *(this + 34) = v101;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_231;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_231;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v103 = (**this)(this);
      _BBULog(3, 0, v103, "", "Loaded APDP\n");
    }
  }

  else
  {
    if (v99)
    {
      goto LABEL_220;
    }

LABEL_227:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_229:
        if (gBBULogVerbosity >= 1)
        {
          v105 = (**this)(this);
          _BBULog(3, 1, v105, "", "File not present: %s\n", "apdp.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_229;
      }
    }
  }

LABEL_231:
  HIBYTE(__p.st_gid) = 10;
  strcpy(&__p, "devcfg.mbn");
  v106 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v111 = v106;
    operator delete(*&__p.st_dev);
    if (!v111)
    {
      goto LABEL_240;
    }

LABEL_233:
    HIBYTE(__p.st_gid) = 10;
    strcpy(&__p, "devcfg.mbn");
    v107 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v108 = operator new(0x20uLL);
    *v108 = &unk_1F5F014B0;
    v108[1] = v107;
    v108[2] = 0;
    *(v108 + 6) = 0;
    v109 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v109, v107, 0);
    v108[2] = v109;
    *v108 = &unk_1F5F004C0;
    *(this + 35) = v108;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_244;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_244;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v110 = (**this)(this);
      _BBULog(3, 0, v110, "", "Loaded DEVCFG\n");
    }
  }

  else
  {
    if (v106)
    {
      goto LABEL_233;
    }

LABEL_240:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_242:
        if (gBBULogVerbosity >= 1)
        {
          v112 = (**this)(this);
          _BBULog(3, 1, v112, "", "File not present: %s\n", "devcfg.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_242;
      }
    }
  }

LABEL_244:
  HIBYTE(__p.st_gid) = 7;
  strcpy(&__p, "hyp.mbn");
  v113 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v118 = v113;
    operator delete(*&__p.st_dev);
    if (!v118)
    {
      goto LABEL_253;
    }

LABEL_246:
    HIBYTE(__p.st_gid) = 7;
    strcpy(&__p, "hyp.mbn");
    v114 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v115 = operator new(0x20uLL);
    *v115 = &unk_1F5F014B0;
    v115[1] = v114;
    v115[2] = 0;
    *(v115 + 6) = 0;
    v116 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v116, v114, 0);
    v115[2] = v116;
    *v115 = &unk_1F5F00530;
    *(this + 36) = v115;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_257;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_257;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v117 = (**this)(this);
      _BBULog(3, 0, v117, "", "Loaded HYP\n");
    }
  }

  else
  {
    if (v113)
    {
      goto LABEL_246;
    }

LABEL_253:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_255:
        if (gBBULogVerbosity >= 1)
        {
          v119 = (**this)(this);
          _BBULog(3, 1, v119, "", "File not present: %s\n", "hyp.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_255;
      }
    }
  }

LABEL_257:
  HIBYTE(__p.st_gid) = 7;
  strcpy(&__p, "aop.mbn");
  v120 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v125 = v120;
    operator delete(*&__p.st_dev);
    if (!v125)
    {
      goto LABEL_266;
    }

LABEL_259:
    HIBYTE(__p.st_gid) = 7;
    strcpy(&__p, "aop.mbn");
    v121 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v122 = operator new(0x20uLL);
    *v122 = &unk_1F5F014B0;
    v122[1] = v121;
    v122[2] = 0;
    *(v122 + 6) = 0;
    v123 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v123, v121, 0);
    v122[2] = v123;
    *v122 = &unk_1F5F005A0;
    *(this + 37) = v122;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_270;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_270;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v124 = (**this)(this);
      _BBULog(3, 0, v124, "", "Loaded AOP\n");
    }
  }

  else
  {
    if (v120)
    {
      goto LABEL_259;
    }

LABEL_266:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_268:
        if (gBBULogVerbosity >= 1)
        {
          v126 = (**this)(this);
          _BBULog(3, 1, v126, "", "File not present: %s\n", "aop.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_268;
      }
    }
  }

LABEL_270:
  memset(&v209, 170, sizeof(v209));
  v127 = SHIBYTE(v210.__r_.__value_.__r.__words[2]);
  if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v128 = HIBYTE(v210.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v128 = v210.__r_.__value_.__l.__size_;
  }

  v129 = v128 + 1;
  if (v128 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v129 < 0x17)
  {
    memset(&__p, 0, 24);
    v131 = &__p;
    HIBYTE(__p.st_gid) = v128 + 1;
    if (v128)
    {
      goto LABEL_280;
    }
  }

  else
  {
    if ((v129 | 7) == 0x17)
    {
      v130 = 25;
    }

    else
    {
      v130 = (v129 | 7) + 1;
    }

    v131 = operator new(v130);
    __p.st_ino = v128 + 1;
    *&__p.st_uid = v130 | 0x8000000000000000;
    *&__p.st_dev = v131;
LABEL_280:
    if (v127 >= 0)
    {
      v132 = &v210;
    }

    else
    {
      v132 = v210.__r_.__value_.__r.__words[0];
    }

    memmove(v131, v132, v128);
  }

  *(&v131->st_dev + v128) = 47;
  st_gid_high = SHIBYTE(__p.st_gid);
  if ((SHIBYTE(__p.st_gid) & 0x8000000000000000) != 0)
  {
    st_gid_high = __p.st_ino;
    v136 = (*&__p.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v136 - __p.st_ino >= 0xA)
    {
      v146 = *&__p.st_dev;
      goto LABEL_306;
    }

    v134 = __p.st_ino + 10;
    if (0x7FFFFFFFFFFFFFF7 - (*&__p.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < __p.st_ino + 10 - v136)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v135 = *&__p.st_dev;
    if (v136 >= 0x3FFFFFFFFFFFFFF3)
    {
      v140 = 0;
      v139 = 0x7FFFFFFFFFFFFFF7;
    }

    else
    {
LABEL_290:
      v137 = 2 * v136;
      if (v134 > 2 * v136)
      {
        v137 = v134;
      }

      if ((v137 | 7) == 0x17)
      {
        v138 = 25;
      }

      else
      {
        v138 = (v137 | 7) + 1;
      }

      if (v137 >= 0x17)
      {
        v139 = v138;
      }

      else
      {
        v139 = 23;
      }

      v140 = v136 == 22;
    }

    v141 = v139;
    v142 = operator new(v139);
    v143 = v142;
    if (st_gid_high)
    {
      memmove(v142, v135, st_gid_high);
    }

    v144 = &v143[st_gid_high];
    *v144 = *"mdmddr.mbn";
    *(v144 + 4) = 28258;
    if (!v140)
    {
      operator delete(v135);
    }

    __p.st_ino = v134;
    *&__p.st_uid = v141 | 0x8000000000000000;
    *&__p.st_dev = v143;
    v145 = &v143[v134];
  }

  else
  {
    if ((SHIBYTE(__p.st_gid) - 13) < 0xA)
    {
      v134 = SHIBYTE(__p.st_gid) + 10;
      v135 = &__p;
      v136 = 22;
      goto LABEL_290;
    }

    v146 = &__p;
LABEL_306:
    v147 = v146 + st_gid_high;
    *v147 = *"mdmddr.mbn";
    *(v147 + 4) = 28258;
    v148 = st_gid_high + 10;
    if (SHIBYTE(__p.st_gid) < 0)
    {
      __p.st_ino = st_gid_high + 10;
    }

    else
    {
      HIBYTE(__p.st_gid) = v148 & 0x7F;
    }

    v145 = v146 + v148;
  }

  *v145 = 0;
  *&v209.__r_.__value_.__l.__data_ = *&__p.st_dev;
  v209.__r_.__value_.__r.__words[2] = *&__p.st_uid;
  v149 = *&__p.st_dev;
  v150 = SHIBYTE(__p.st_gid);
  v151.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v151.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__p.st_blksize = v151;
  *__p.st_qspare = v151;
  __p.st_birthtimespec = v151;
  *&__p.st_size = v151;
  __p.st_mtimespec = v151;
  __p.st_ctimespec = v151;
  __p.st_atimespec = v151;
  *&__p.st_dev = v151;
  *&__p.st_uid = v151;
  if (v150 >= 0)
  {
    v152 = &v209;
  }

  else
  {
    v152 = v149;
  }

  if (stat(v152, &__p))
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    v208.__r_.__value_.__r.__words[0] = Mutable;
    *&__p.st_dev = xmmword_1E53918B0;
    memset(&__p.st_uid, 0, 24);
    CFDataAppendBytes(Mutable, &__p, 40);
    v154 = operator new(0x18uLL);
    v154[4] = 0;
    *v154 = &unk_1F5F04B00;
    *(v154 + 1) = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    v155 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v155, v154, 0);
    *v155 = &unk_1F5F01288;
    *(this + 38) = v155;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_318:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v156 = (**this)(this);
          _BBULog(3, 0, v156, "", "created dummy MDMDDR\n");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_318;
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v157 = operator new(0x30uLL);
    *v157 = &unk_1F5F00F28;
    *(v157 + 8) = 0u;
    *(v157 + 24) = 0u;
    if (BBUFileDataSource::init(v157, &v209, 0))
    {
      (*(*v157 + 8))(v157);
      v205 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v205, 120, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR20UpdateSource.cpp", 0x1D6u, "Assertion failure(dataSource && Failed creating data source from file for MDMDDR)");
    }

    v158 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v158, v157, 0);
    *v158 = &unk_1F5F01288;
    *(this + 38) = v158;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_327;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_327;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v159 = (**this)(this);
      _BBULog(3, 0, v159, "", "Loaded MDMDDR\n");
    }
  }

LABEL_327:
  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "multi_image.mbn");
  v160 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v165 = v160;
    operator delete(*&__p.st_dev);
    if (!v165)
    {
      goto LABEL_336;
    }

LABEL_329:
    HIBYTE(__p.st_gid) = 15;
    strcpy(&__p, "multi_image.mbn");
    v161 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v162 = operator new(0x20uLL);
    *v162 = &unk_1F5F014B0;
    v162[1] = v161;
    v162[2] = 0;
    *(v162 + 6) = 0;
    v163 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v163, v161, 0);
    v162[2] = v163;
    *v162 = &unk_1F5F00610;
    *(this + 39) = v162;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_340;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_340;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v164 = (**this)(this);
      _BBULog(3, 0, v164, "", "Loaded OEMMisc\n");
    }
  }

  else
  {
    if (v160)
    {
      goto LABEL_329;
    }

LABEL_336:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_338:
        if (gBBULogVerbosity >= 1)
        {
          v166 = (**this)(this);
          _BBULog(3, 1, v166, "", "File not present: %s\n", "multi_image.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_338;
      }
    }
  }

LABEL_340:
  HIBYTE(__p.st_gid) = 19;
  strcpy(&__p, "multi_image_qti.mbn");
  v167 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v172 = v167;
    operator delete(*&__p.st_dev);
    if (!v172)
    {
      goto LABEL_349;
    }

LABEL_342:
    HIBYTE(__p.st_gid) = 19;
    strcpy(&__p, "multi_image_qti.mbn");
    v168 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v169 = operator new(0x20uLL);
    *v169 = &unk_1F5F014B0;
    v169[1] = v168;
    v169[2] = 0;
    *(v169 + 6) = 0;
    v170 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v170, v168, 0);
    v169[2] = v170;
    *v169 = &unk_1F5F00680;
    *(this + 40) = v169;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_353;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_353;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v171 = (**this)(this);
      _BBULog(3, 0, v171, "", "Loaded QTIMisc\n");
    }
  }

  else
  {
    if (v167)
    {
      goto LABEL_342;
    }

LABEL_349:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_351:
        if (gBBULogVerbosity >= 1)
        {
          v173 = (**this)(this);
          _BBULog(3, 1, v173, "", "File not present: %s\n", "multi_image_qti.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_351;
      }
    }
  }

LABEL_353:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "xbl_cfg.elf");
  v174 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v179 = v174;
    operator delete(*&__p.st_dev);
    if (!v179)
    {
      goto LABEL_362;
    }

LABEL_355:
    HIBYTE(__p.st_gid) = 11;
    strcpy(&__p, "xbl_cfg.elf");
    v175 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v176 = operator new(0x20uLL);
    *v176 = &unk_1F5F014B0;
    v176[1] = v175;
    v176[2] = 0;
    *(v176 + 6) = 0;
    v177 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v177, v175, 0);
    v176[2] = v177;
    *v176 = &unk_1F5F006F0;
    *(this + 41) = v176;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_366;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_366;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v178 = (**this)(this);
      _BBULog(3, 0, v178, "", "Loaded XBL Config\n");
    }
  }

  else
  {
    if (v174)
    {
      goto LABEL_355;
    }

LABEL_362:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_364:
        if (gBBULogVerbosity >= 1)
        {
          v180 = (**this)(this);
          _BBULog(3, 1, v180, "", "File not present: %s\n", "xbl_cfg.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_364;
      }
    }
  }

LABEL_366:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "uefi.elf");
  v181 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v186 = v181;
    operator delete(*&__p.st_dev);
    if (!v186)
    {
      goto LABEL_375;
    }

LABEL_368:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "uefi.elf");
    v182 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v183 = operator new(0x20uLL);
    *v183 = &unk_1F5F014B0;
    v183[1] = v182;
    v183[2] = 0;
    *(v183 + 6) = 0;
    v184 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v184, v182, 0);
    v183[2] = v184;
    *v183 = &unk_1F5F00760;
    *(this + 42) = v183;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_379;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_379;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v185 = (**this)(this);
      _BBULog(3, 0, v185, "", "Loaded UEFI\n");
    }
  }

  else
  {
    if (v181)
    {
      goto LABEL_368;
    }

LABEL_375:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_377:
        if (gBBULogVerbosity >= 1)
        {
          v187 = (**this)(this);
          _BBULog(3, 1, v187, "", "File not present: %s\n", "uefi.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_377;
      }
    }
  }

LABEL_379:
  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "xbl_support.elf");
  v188 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v193 = v188;
    operator delete(*&__p.st_dev);
    if (!v193)
    {
      goto LABEL_388;
    }

LABEL_381:
    HIBYTE(__p.st_gid) = 15;
    strcpy(&__p, "xbl_support.elf");
    v189 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v190 = operator new(0x20uLL);
    *v190 = &unk_1F5F014B0;
    v190[1] = v189;
    v190[2] = 0;
    *(v190 + 6) = 0;
    v191 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v191, v189, 0);
    v190[2] = v191;
    *v190 = &unk_1F5F007D0;
    *(this + 43) = v190;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_392;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_392;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v192 = (**this)(this);
      _BBULog(3, 0, v192, "", "Loaded XBL Support\n");
    }
  }

  else
  {
    if (v188)
    {
      goto LABEL_381;
    }

LABEL_388:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_390:
        if (gBBULogVerbosity >= 1)
        {
          v194 = (**this)(this);
          _BBULog(3, 1, v194, "", "File not present: %s\n", "xbl_support.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_390;
      }
    }
  }

LABEL_392:
  HIBYTE(__p.st_gid) = 13;
  strcpy(&__p, "Options.plist");
  v195 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v196 = v195;
    operator delete(*&__p.st_dev);
    if (!v196)
    {
      goto LABEL_406;
    }
  }

  else if (!v195)
  {
    goto LABEL_406;
  }

  HIBYTE(__p.st_gid) = 13;
  strcpy(&__p, "Options.plist");
  v197 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  *&__p.st_dev = 0xAAAAAAAAAAAAAAAALL;
  BBUDataSource::createData(&__p, v197);
  if (v197)
  {
    (*(*v197 + 8))(v197);
  }

  v198 = *&__p.st_dev;
  v206 = *&__p.st_dev;
  if (*&__p.st_dev)
  {
    CFRetain(*&__p.st_dev);
  }

  BBUUpdateSource::loadOptions(this, &v206);
  if (v198)
  {
    CFRelease(v198);
  }

  if (*&__p.st_dev)
  {
    CFRelease(*&__p.st_dev);
  }

LABEL_406:
  (*(*this + 264))(this);
  if ((SHIBYTE(v209.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v210.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_410:
    operator delete(v210.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v209.__r_.__value_.__l.__data_);
  if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_410;
  }
}