SERestoreInfo::IcefallDeviceInfo *SERestoreInfo::IcefallDeviceInfo::IcefallDeviceInfo(SERestoreInfo::IcefallDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  *this = &unk_2A20296E0;
  *(this + 1) = 0u;
  *(this + 4) = 0u;
  v3 = (this + 64);
  *(this + 7) = 0u;
  v4 = (this + 112);
  *(this + 16) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 37) = 6;
  *(this + 76) = 7;
  v5 = *(a2 + 1);
  if (!v5 || (*(a2 + 2) & 0xFFFFFFFFFFFFFFFDLL) != 0x9D || *v5 != 257 || (*(this + 10) = *(v5 + 3) == 0, std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 2, (v5 + 4), (v5 + 28), 0x18uLL), std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 5, (v5 + 28), (v5 + 48), 0x14uLL), std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v3, (v5 + 48), (v5 + 80), 0x20uLL), std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 11, (v5 + 112), (v5 + 144), 0x20uLL), std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v4, (v5 + 80), (v5 + 112), 0x20uLL), *(this + 17) = *(v5 + 144), v6 = *(v5 + 153), v7 = *(v5 + 2), *(this + 36) = v6, *(this + 37) = v7, v6 != 131601))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void sub_299F1B5A0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v5);
  v7 = *v4;
  if (*v4)
  {
    v1[15] = v7;
    operator delete(v7);
  }

  v8 = v1[11];
  if (v8)
  {
    v1[12] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[9] = v9;
    operator delete(v9);
  }

  v10 = v1[5];
  if (v10)
  {
    v1[6] = v10;
    operator delete(v10);
  }

  v11 = *v2;
  if (*v2)
  {
    v1[3] = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void SERestoreInfo::IcefallDeviceInfo::updateDict(SERestoreInfo::IcefallDeviceInfo *this, __CFDictionary *a2, char a3)
{
  valuePtr = *(this + 36);
  v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v6)
  {
    __assert_rtn("_CFDictionarySetInteger32", "SERestoreInfoHelpers.hpp", 42, "num != nullptr");
  }

  v7 = v6;
  CFDictionarySetValue(a2, @"SE,ChipID", v6);
  CFRelease(v7);
  v8 = CFDataCreate(0, *(this + 2), *(this + 3) - *(this + 2));
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  CFDictionarySetValue(a2, @"SE,ID", v8);
  CFRelease(v9);
  v10 = CFDataCreate(0, *(this + 5), *(this + 6) - *(this + 5));
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  CFDictionarySetValue(a2, @"SE,Nonce", v10);
  CFRelease(v11);
  if (*(this + 153) == 1)
  {
    CFDictionarySetValue(a2, @"SE,FactoryMode", *MEMORY[0x29EDB8F00]);
  }

  v12 = CFDataCreate(0, *(this + 8), *(this + 9) - *(this + 8));
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  CFDictionarySetValue(a2, @"SE,RootKeyIdentifier", v12);
  CFRelease(v13);
  if (a3)
  {
    return;
  }

  v14 = MEMORY[0x29EDB8F00];
  if (!*(this + 10))
  {
    v14 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(a2, @"SE,IsDev", *v14);
  v15 = CFDataCreate(0, *(this + 14), *(this + 15) - *(this + 14));
  if (!v15 || (v16 = v15, CFDictionarySetValue(a2, @"SE,BLFWKeysIdentifier", v15), CFRelease(v16), (v17 = CFDataCreate(0, *(this + 11), *(this + 12) - *(this + 11))) == 0))
  {
LABEL_14:
    __assert_rtn("_CFDictionarySetData", "SERestoreInfoHelpers.hpp", 59, "tmpData");
  }

  v18 = v17;
  CFDictionarySetValue(a2, @"SE,OsKeysIdentifier", v17);
  CFRelease(v18);
}

void SERestoreInfo::IcefallDeviceInfo::~IcefallDeviceInfo(SERestoreInfo::IcefallDeviceInfo *this)
{
  SERestoreInfo::IcefallDeviceInfo::~IcefallDeviceInfo(this);

  JUMPOUT(0x29C2B5F30);
}

{
  *this = &unk_2A20296E0;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

uint64_t *SERestoreInfo::IcefallDeviceInfo::getOsKeyId@<X0>(SERestoreInfo::IcefallDeviceInfo *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 11), *(this + 12), *(this + 12) - *(this + 11));
}

SERestoreInfo::SN300VDeviceInfo *SERestoreInfo::SN300VDeviceInfo::SN300VDeviceInfo(SERestoreInfo::SN300VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A2029730;
  if (*(v3 + 14) != 44)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SN300VDeviceInfo::~SN300VDeviceInfo(SERestoreInfo::SN300VDeviceInfo *this)
{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x29C2B5F30);
}

void getAlohaPairingOptions(id *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *a1;
  v3 = [v16 objectForKeyedSubscript:@"Options"];
  if (!v3)
  {
    _ObjCLog(2, "getAlohaPairingOptions", &cfstr_OptionsNotPres.isa);
  }

  v4 = [v3 objectForKeyedSubscript:@"DebugLogPath"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    _ObjCLog(2, "getAlohaPairingOptions", &cfstr_DebuglogpathNo.isa);
  }

  v7 = [v16 objectForKeyedSubscript:@"RestoreOptions"];
  v8 = v7;
  if (!v7)
  {
    _ObjCLog(2, "getAlohaPairingOptions", &cfstr_SkipPairingDue.isa);
LABEL_15:
    *a2 = 0;
    *(a2 + 40) = 0;
    goto LABEL_31;
  }

  v9 = [v7 objectForKeyedSubscript:@"PairStockholm"];
  v10 = [v9 BOOLValue];

  if ((v10 & 1) == 0)
  {
    _ObjCLog(2, "getAlohaPairingOptions", &cfstr_PairingNotEnab.isa);
    goto LABEL_15;
  }

  v11 = [v8 objectForKeyedSubscript:@"StockholmPairingProtocolVersion"];
  v12 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v11, "integerValue")}];
  if ([v12 integerValue] > 1)
  {
    v13 = [v8 objectForKeyedSubscript:@"StockholmPairingServerURL"];
    if (!v13)
    {
      _ObjCLog(0, "getAlohaPairingOptions", &cfstr_PairingIsReque.isa);
      exception = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v17, "Pairing is requested but no server URL is provided\n");
      v15 = SERestoreInfo::SEException::SEException(exception, &v17, 2, @"SEUpdaterErrorDomain");
    }

    if (v12)
    {
      CFRetain(v12);
    }

    CFRetain(v13);
    if (v5)
    {
      CFRetain(v5);
    }

    if (v12)
    {
      CFRetain(v12);
    }

    CFRetain(v13);
    if (v5)
    {
      CFRetain(v5);
    }

    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v5;
    *(a2 + 32) = 1;
    *(a2 + 34) = 1;
    *(a2 + 40) = 1;
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v13);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    _ObjCLog(2, "getAlohaPairingOptions", &cfstr_SkipPairingDue_0.isa, v11);
    *a2 = 0;
    *(a2 + 40) = 0;
  }

LABEL_31:
}

void sub_299F1BE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void doAlohaPairing(unsigned __int8 *a1, uint64_t *a2)
{
  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v4 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v5 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v4, 2, 0, 1, "print", "Pairing options:\n");
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v6 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v7 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v6, 2, 0, 1, "print", "Pairing selected: %d\n", *a1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v8 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v9 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v11 = *(a1 + 1);
  if (v11)
  {
    ctu::cf::show(&v55, 1, v10, *(a1 + 1));
    if (v56 >= 0)
    {
      v12 = &v55;
    }

    else
    {
      v12 = v55;
    }
  }

  else
  {
    v12 = 0;
  }

  SEUpdaterUtil::SELogObj::printLog(v8, 2, 0, 1, "print", "Pairing protocol version: %s\n", v12);
  if (v11 && v56 < 0)
  {
    operator delete(v55);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v13 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v14 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v16 = *(a1 + 2);
  if (v16)
  {
    ctu::cf::show(__p, 1, v15, *(a1 + 2));
    if (v54 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }
  }

  else
  {
    v17 = 0;
  }

  SEUpdaterUtil::SELogObj::printLog(v13, 2, 0, 1, "print", "Pairing hostname URL: %s\n", v17);
  if (v16 && v54 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v18 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v19 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v21 = *(a1 + 3);
  if (v21)
  {
    ctu::cf::show(v51, 1, v20, *(a1 + 3));
    if (v52 >= 0)
    {
      v22 = v51;
    }

    else
    {
      v22 = v51[0];
    }
  }

  else
  {
    v22 = 0;
  }

  SEUpdaterUtil::SELogObj::printLog(v18, 2, 0, 1, "print", "Pairing error debug log path: %s\n", v22);
  if (v21 && v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v23 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v24 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v23, 2, 0, 1, "print", "Pairing with reverse proxy: %d\n", a1[32]);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v25 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v26 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v25, 2, 0, 1, "print", "Submitting sePK to FDR: %d\n", a1[34]);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = [AlohaPairingController alloc];
  v28 = a2[1];
  v49 = *a2;
  v50 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = [(AlohaPairingController *)v27 initWithOptions:a1 seController:&v49];
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  v30 = [(AlohaPairingController *)v29 performAlohaPairing];
  v31 = v30;
  _ObjCLog(2, "doAlohaPairing", &cfstr_ApcFinishedWit.isa, v30);
  if (v31)
  {
    v35 = [(AlohaPairingController *)v29 debugRecordPath];

    if (v35)
    {
      v42 = [(AlohaPairingController *)v29 transceiver];
      v43 = [v42 capduRecord];
      [(AlohaPairingController *)v29 writeRecord:v43 fileExtension:@"capdu"];

      v44 = [(AlohaPairingController *)v29 transceiver];
      v45 = [v44 rapduRecord];
      [(AlohaPairingController *)v29 writeRecord:v45 fileExtension:@"rapdu"];

      v46 = [(AlohaPairingController *)v29 alohaPlistRecord];
      [(AlohaPairingController *)v29 writeRecord:v46 fileExtension:@"plist"];
    }

    else
    {
      _ObjCLog(2, "doAlohaPairing", &cfstr_DebuglogpathIs.isa);
    }

    [(AlohaPairingController *)v29 invalidate];
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(v48, "Aloha Pairing failed with return code\n");
    v37 = SERestoreInfo::SEException::SEException(exception, v48, v31, @"SEUpdaterErrorDomain");
  }

  if (a1[34] == 1)
  {
    v47 = 0;
    v32 = [(AlohaPairingController *)v29 submitPairingRecord:&v47];
    v33 = v47;
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = v32;
    }

    if (!v34)
    {
      v38 = v33;
      v39 = [(__CFError *)v33 description];
      _ObjCLog(0, "doAlohaPairing", &cfstr_FailedToQueryS_1.isa, [v39 UTF8String]);

      [(AlohaPairingController *)v29 invalidate];
      v40 = __cxa_allocate_exception(0x48uLL);
      v41 = SERestoreInfo::SEException::SEException(v40, v38);
    }
  }

  [(AlohaPairingController *)v29 invalidate];
}

void sub_299F1C92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_299F1C9AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AlohaPairingController;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_299F1E560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_299F1EC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, id);
  std::exception_ptr::~exception_ptr((v18 - 112));
  if (*(v18 - 96) == 1)
  {
    std::mutex::unlock(*(v18 - 104));
  }

  if (!atomic_fetch_add(v16 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v16 + 16))(v16);
  }

  _Block_object_dispose(va, 8);

  _Block_object_dispose(va1, 8);
  std::promise<BOOL>::~promise((v17 + 48));

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__187(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x29C2B5F30);
}

uint64_t *std::promise<BOOL>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v12);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C2B5C20](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x29EDC9548] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v2, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x29C2B5C30](v10);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C2B5C20](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

void _GLOBAL__sub_I_AlohaPairingController_mm()
{
  v0 = objc_autoreleasePoolPush();
  _MergedGlobals_7 = [MEMORY[0x29EDBA070] numberWithInt:1];
  qword_2A197F330 = [MEMORY[0x29EDBA070] numberWithInt:1];
  qword_2A197F338 = [MEMORY[0x29EDBA070] numberWithInt:0];

  objc_autoreleasePoolPop(v0);
}

SERestoreInfo::SN300V3DeviceInfo *SERestoreInfo::SN300V3DeviceInfo::SN300V3DeviceInfo(SERestoreInfo::SN300V3DeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A20297C8;
  if (*(v3 + 14) != 56)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SN300V3DeviceInfo::~SN300V3DeviceInfo(SERestoreInfo::SN300V3DeviceInfo *this)
{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x29C2B5F30);
}

CFErrorRef SERestoreInfo::CreateCFError(const UInt8 *a1, int a2, const void *a3, const __CFString *a4)
{
  v8 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v23, "Assertion: ");
    v18 = std::string::append(&v23, "userInfo");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v25 = v18->__r_.__value_.__r.__words[2];
    v24 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v24);
  }

  v10 = Mutable;
  v11 = *(a1 + 23);
  if (v11 < 0)
  {
    v12 = a1;
    a1 = *a1;
    v11 = *(v12 + 1);
  }

  v13 = CFStringCreateWithBytes(v8, a1, v11, 0x8000100u, 0);
  if (!v13)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v23, "Assertion: ");
    v21 = std::string::append(&v23, "description");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v25 = v21->__r_.__value_.__r.__words[2];
    v24 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](v20, &v24);
  }

  v14 = v13;
  CFDictionaryAddValue(v10, *MEMORY[0x29EDB8F58], v13);
  CFRelease(v14);
  if (a3)
  {
    CFDictionaryAddValue(v10, *MEMORY[0x29EDB8F68], a3);
  }

  v15 = CFErrorCreate(v8, a4, a2, v10);
  CFRelease(v10);
  return v15;
}

void sub_299F1FD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *SEUpdaterUtil::SN210VImage4Signer::getSigningKey@<X0>(uint64_t *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, SEUpdaterUtil::SN210VImage4Signer::getSigningKey(void)const::signingKey, SEUpdaterUtil::SN210VImage4Signer::getSigningCert(void)const::signingCert, 121);
}

uint64_t *SEUpdaterUtil::SN210VImage4Signer::getSigningCert@<X0>(uint64_t *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, SEUpdaterUtil::SN210VImage4Signer::getSigningCert(void)const::signingCert, "N13SEUpdaterUtil18SN210VImage4SignerE", 630);
}

void SEUpdaterUtil::SN210VImage4Signer::~SN210VImage4Signer(SEUpdaterUtil::SN210VImage4Signer *this)
{
  SEUpdaterUtil::SEImage4Signer::~SEImage4Signer(this);

  JUMPOUT(0x29C2B5F30);
}

SERestoreInfo::SE310SDeviceInfo *SERestoreInfo::SE310SDeviceInfo::SE310SDeviceInfo(SERestoreInfo::SE310SDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A2029878;
  if (*(v3 + 14) != 55)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SE310SDeviceInfo::~SE310SDeviceInfo(SERestoreInfo::SE310SDeviceInfo *this)
{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x29C2B5F30);
}

void SERestoreInfo::SERestoreInfoLog::printToOsLog(SERestoreInfo::SERestoreInfoLog *this, char *a2, const char *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&__str, a2);
  v3 = 0;
  v4 = MEMORY[0x29EDCA988];
  while ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v3 >= SHIBYTE(__str.__r_.__value_.__r.__words[2]))
    {
      return;
    }

LABEL_6:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      std::string::basic_string(&v6, &__str, v3, 0x3E8uLL, &v8);
      if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v6;
      }

      else
      {
        v5 = v6.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v10 = v5;
      _os_log_impl(&dword_299EC0000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v6.__r_.__value_.__l.__data_);
      }
    }

    v3 += 1000;
  }

  if (v3 < __str.__r_.__value_.__l.__size_)
  {
    goto LABEL_6;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
}

char *SERestoreInfo::SERestoreInfoLog::FormatMsg(SERestoreInfo::SERestoreInfoLog *this, const char *a2, ...)
{
  va_start(va, a2);
  v3 = 0;
  if (vasprintf(&v3, "[%3.3ld.%1.1d] [%s] %s: %s", va) <= 0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

char *SERestoreInfo::SERestoreInfoLog::createVerboseLogString(SERestoreInfo::SERestoreInfoLog *this, unsigned int a2, const char *a3, const char *a4)
{
  if (a2 >= 5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, "Assertion: ");
    v11 = std::string::append(&v13, "level >= 0 && level < _LOG_LEVEL_MAX && level is not good");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v15 = v11->__r_.__value_.__r.__words[2];
    v14 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v14);
  }

  v14.tv_sec = 0;
  *&v14.tv_usec = 0;
  v7 = gettimeofday(&v14, 0);
  return SERestoreInfo::SERestoreInfoLog::FormatMsg(v7, v8, v14.tv_sec, (v14.tv_usec / 1000), SERestoreInfo::logLevelNames[a2], a3, a4);
}

void sub_299F20394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

void SERestoreInfo::SERestoreInfoLog::printLogv(SERestoreInfo::SERestoreInfoLog *this, unsigned int a2, const char *a3, const char *a4, va_list a5)
{
  v12 = 0;
  v8 = vasprintf(&v12, a4, a5);
  v9 = v12;
  if (v8 >= 1 && v12 != 0)
  {
    VerboseLogString = SERestoreInfo::SERestoreInfoLog::createVerboseLogString(v8, a2, a3, v12);
    free(v9);
    if (VerboseLogString)
    {
      std::mutex::lock((this + 24));
      (*this)(*(this + 1), VerboseLogString);
      std::mutex::unlock((this + 24));
      free(VerboseLogString);
    }
  }
}

void SERestoreInfo::SERestoreInfoLog::printLog(SERestoreInfo::SERestoreInfoLog *this, signed int a2, const char *a3, const char *a4, ...)
{
  va_start(va, a4);
  if (*(this + 4) >= a2)
  {
    SERestoreInfo::SERestoreInfoLog::printLogv(this, a2, a3, a4, va);
  }
}

void SEUpdaterCreate(const __CFDictionary *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v7 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global();
    }

    v8 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    __p[0] = MEMORY[0x29EDCA5F8];
    __p[1] = 0x40000000;
    v28 = ___ZN13SEUpdaterUtil8SELogObj15registerLogSinkEPvPFvS1_PKcE_block_invoke;
    v29 = &__block_descriptor_tmp_26;
    v30 = v7;
    v31 = a2;
    v32 = a3;
    v33 = __p;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN13SEUpdaterUtil8SELogObjEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke_0;
    block[3] = &__block_descriptor_tmp_27;
    block[4] = v7;
    block[5] = &v33;
    v9 = *(v7 + 16);
    if (*(v7 + 24))
    {
      dispatch_async_and_wait(v9, block);
      if (!v8)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    dispatch_sync(v9, block);
    if (v8)
    {
LABEL_8:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

LABEL_9:
  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v10 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v11 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "root");
  if (SHIBYTE(v28) >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  SEUpdaterUtil::SELogObj::printLog(v10, 2, 0, 1, "SEUpdaterCreate", "Project version%s: %s\n", &unk_299F305FF, v12);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  Value = CFDictionaryGetValue(a1, @"Options");
  v14 = Value;
  if (Value && (v15 = CFGetTypeID(Value), v15 == CFDictionaryGetTypeID()))
  {
    v16 = CFDictionaryGetValue(v14, @"PreflightContext");
    v17 = v16;
    if (v16)
    {
      v18 = CFGetTypeID(v16);
      if (v18 == CFStringGetTypeID())
      {
        pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v19 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global();
        }

        v20 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        ctu::cf::show(__p, v17, v21);
        if (SHIBYTE(v28) >= 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = __p[0];
        }

        SEUpdaterUtil::SELogObj::printLog(v19, 1, 0, 1, "IsBootedOS", "Got Updater Context %s\n", v22);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p[0]);
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        v23 = CFStringCompare(v17, @"BootedOS", 0) == kCFCompareEqualTo;
        goto LABEL_51;
      }
    }

    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v26 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global();
    }

    v25 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v26, 1, 0, 1, "IsBootedOS", "No updater context hint, defaulting to limited environment\n");
  }

  else
  {
    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v24 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global();
    }

    v25 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v24, 1, 0, 1, "IsBootedOS", "No RestoreOptions dictionary? Defaulting to limited environment\n");
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v23 = 0;
LABEL_51:
  SEUpdater::makeUpdateController(v23);
}

void sub_299F20B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (a2 == 3)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = v18[16];
    (*(*v18 + 16))(v18);
    SEUpdaterUtil::_AddError(v19, 1, "SEUpdaterCreate", "%s", v20, v21);
  }

  else
  {
    if (a2 != 2)
    {
      _Unwind_Resume(a1);
    }

    v22 = __cxa_begin_catch(a1);
    (*(*v22 + 16))(v22);
    SEUpdaterUtil::_AddError(0x1F, 1, "SEUpdaterCreate", "%s", v23, v24);
  }

  __cxa_end_catch();
  JUMPOUT(0x299F209D8);
}

uint64_t __SEUpdaterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_2A197F348 = result;
  return result;
}

void SEUpdaterDestroy(const void *a1)
{
  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v2 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v3 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v2, 2, 0, 1, "SEUpdaterDestroy", "Called SEUpdaterDestroy updater %p\n", a1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (a1)
  {
    pthread_mutex_lock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
    v4 = *(&xmmword_2A14F24A8 + 1);
    xmmword_2A14F24A8 = 0uLL;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
    v5 = *(&xmmword_2A14F23B0 + 1);
    xmmword_2A14F23B0 = 0uLL;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v6 = *(&off_2A14F2360 + 1);
    off_2A14F2360 = 0;
    *(&off_2A14F2360 + 1) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  }
}

CFStringRef SEUpdaterCreateDescribe(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<libSEUpdater %p [%p]>{}", v1, v3);
  }

  return result;
}

uint64_t SEUpdaterUtil::GetErrorCode(SEUpdaterUtil *this)
{
  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
  v1 = xmmword_2A14F23B0;
  if (!xmmword_2A14F23B0)
  {
    SEUpdaterUtil::Error::create_default_global();
  }

  v2 = *(&xmmword_2A14F23B0 + 1);
  if (*(&xmmword_2A14F23B0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F23B0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
  ErrorCode = SEUpdaterUtil::Error::getErrorCode(v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return ErrorCode;
}

uint64_t SEUpdaterUtil::CreateCFError(SEUpdaterUtil *this)
{
  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
  v1 = xmmword_2A14F23B0;
  if (!xmmword_2A14F23B0)
  {
    SEUpdaterUtil::Error::create_default_global();
  }

  v2 = *(&xmmword_2A14F23B0 + 1);
  if (*(&xmmword_2A14F23B0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F23B0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
  CFError = SEUpdaterUtil::Error::CreateCFError(v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return CFError;
}

BOOL SEUpdaterExecCommand(uint64_t a1, const __CFString *a2, const __CFDictionary *a3, const __CFDictionary **a4, char *a5, BOOL a6)
{
  if (!a1 || !a2)
  {
    v17 = 2;
    SEUpdaterUtil::_AddError(2, 0, "SEUpdaterExecCommand", "Invalid input", a5, a6);
    goto LABEL_14;
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
  v10 = xmmword_2A14F24A8;
  if (!xmmword_2A14F24A8)
  {
    v11 = *(&xmmword_2A14F24A8 + 1);
    *(&xmmword_2A14F24A8 + 1) = 0;
    if (!v11)
    {
      v10 = 0;
      v12 = 0;
      goto LABEL_9;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    v10 = xmmword_2A14F24A8;
  }

  v12 = *(&xmmword_2A14F24A8 + 1);
  if (*(&xmmword_2A14F24A8 + 1))
  {
    v13 = 0;
    atomic_fetch_add_explicit((*(&xmmword_2A14F24A8 + 1) + 8), 1uLL, memory_order_relaxed);
    goto LABEL_10;
  }

LABEL_9:
  v13 = 1;
LABEL_10:
  pthread_mutex_unlock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
  if (v10)
  {
    v16 = SEUpdater::UpdateControllerBase::execCommand(v10, a2, a3, a4);
    v17 = v16;
  }

  else
  {
    v17 = 2;
    SEUpdaterUtil::_AddError(2, 0, "SEUpdaterExecCommand", "no controller instance", v14, v15);
  }

  if ((v13 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_14:
  if (a5 && v17)
  {
    *a5 = SEUpdaterUtil::CreateCFError(v16);
    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v18 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global();
    }

    v19 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v18, 2, 0, 1, "SEUpdaterExecCommand", "Returning outError:\n");
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    SEUpdaterUtil::SELogPrintCFType(2, 1, *a5, v20);
  }

  return v17 == 0;
}

void sub_299F212E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((v10 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (a2 == 2)
  {
    v13 = __cxa_begin_catch(a1);
    v14 = v13[16];
    (*(*v13 + 16))(v13);
    SEUpdaterUtil::_AddError(v14, 1, "SEUpdaterExecCommand", "%s", v15, v16);
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      JUMPOUT(0x299F212DCLL);
    }

    v17 = __cxa_begin_catch(a1);
    (*(*v17 + 16))(v17);
    SEUpdaterUtil::_AddError(0x1F, 1, "SEUpdaterExecCommand", "%s", v18, v19);
    __cxa_end_catch();
  }

  JUMPOUT(0x299F21190);
}

void SEUpdaterUtil::SELogPrintCFType(SEUpdaterUtil *this, ctu::cf *a2, const void *a3, const void *a4)
{
  ctu::cf::show(__p, a2, a3, a3);
  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v5 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v6 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v7 = __p;
  if (v9 < 0)
  {
    v7 = __p[0];
  }

  SEUpdaterUtil::SELogObj::printLog(v5, this, 0, 1, 0, "%s\n", v7);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_299F214E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t SEUpdaterIsDone(uint64_t a1, CFErrorRef *a2)
{
  if (!a1)
  {
    v7 = 0;
    return v7 & 1;
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
  v3 = xmmword_2A14F24A8;
  if (!xmmword_2A14F24A8)
  {
    v4 = *(&xmmword_2A14F24A8 + 1);
    *(&xmmword_2A14F24A8 + 1) = 0;
    if (!v4)
    {
      v3 = 0;
      v5 = 0;
      goto LABEL_8;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    v3 = xmmword_2A14F24A8;
  }

  v5 = *(&xmmword_2A14F24A8 + 1);
  if (*(&xmmword_2A14F24A8 + 1))
  {
    v6 = 0;
    atomic_fetch_add_explicit((*(&xmmword_2A14F24A8 + 1) + 8), 1uLL, memory_order_relaxed);
    goto LABEL_9;
  }

LABEL_8:
  v6 = 1;
LABEL_9:
  pthread_mutex_unlock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
  if (v3)
  {
    v7 = *(v3 + 80);
    if (v6)
    {
      return v7 & 1;
    }

    goto LABEL_16;
  }

  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "no controller instance");
    *a2 = SERestoreInfo::CreateCFError(__p, 3, 0, @"SEUpdaterErrorDomain");
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = 1;
  if ((v6 & 1) == 0)
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v7 & 1;
}

void sub_299F21634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN13SEUpdaterUtil8SELogObj15registerLogSinkEPvPFvS1_PKcE_block_invoke(void *result)
{
  v1 = result[5];
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v6, "Assertion: ");
    v4 = std::string::append(&v6, "logSink");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v8 = v4->__r_.__value_.__r.__words[2];
    v7 = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v7);
  }

  v2 = result[4];
  *(v2 + 32) = v1;
  *(v2 + 40) = result[6];
  return result;
}

void sub_299F21728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void SEUpdater::cbNfRestoreSEEnumerate(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Assertion: ");
    v19 = std::string::append(&v21, "ctx");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v23 = v19->__r_.__value_.__r.__words[2];
    v22 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v22);
  }

  if (a2)
  {
    v5 = a2;
    while (1)
    {
      pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v6 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global();
      }

      v7 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      SEUpdaterUtil::SELogObj::printLog(v6, 3, 0, 1, "cbNfRestoreSEEnumerate", "found SE with ID: %d \n", *a1);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (*(a1 + 4))
      {
        break;
      }

      a1 += 42;
      if (!--v5)
      {
        return;
      }
    }

    v8 = *a1;
    v9 = *(a1 + 2);
    *(a3 + 16) = *(a1 + 1);
    *(a3 + 32) = v9;
    *a3 = v8;
    v10 = *(a1 + 3);
    v11 = *(a1 + 4);
    v12 = *(a1 + 6);
    *(a3 + 80) = *(a1 + 5);
    *(a3 + 96) = v12;
    *(a3 + 48) = v10;
    *(a3 + 64) = v11;
    v13 = *(a1 + 7);
    v14 = *(a1 + 8);
    v15 = *(a1 + 9);
    *(a3 + 160) = *(a1 + 20);
    *(a3 + 128) = v14;
    *(a3 + 144) = v15;
    *(a3 + 112) = v13;
    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v16 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global();
    }

    v17 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v16, 3, 0, 1, "cbNfRestoreSEEnumerate", "Selecting SE with ID: %d \n", *a1);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }
}

void SEUpdater::makeUpdateController(SEUpdater *this)
{
  v2 = this;
  pthread_mutex_lock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
  v3 = *(&xmmword_2A14F24A8 + 1);
  xmmword_2A14F24A8 = 0uLL;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v4 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v5 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v4, 2, 0, 1, "makeUpdateController", "Are we in booted OS? %d\n", v2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v2)
  {
    operator new();
  }

  v6 = NfRestoreSEEnumerate();
  if (v6 == 1)
  {
    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v7 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global();
    }

    v8 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v7, 0, 0, 1, "getSEInfo", "Ignoring NFC load stack error\n");
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v9 = v6;
    std::string::basic_string[abi:ne200100]<0>(&v12, "Failed to load NFC stack");
    SERestoreInfo::CallAndThrow<NfResult>(v9, &v12);
    if (v13 < 0)
    {
      operator delete(v12);
    }
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v10 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v11 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v10, 2, 0, 1, "makeUpdateController", "No personalizable SE found\n");
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _ZNSt3__115allocate_sharedB8ne200100IN9SEUpdater19NOPUpdateControllerENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v12);
}

void std::__shared_ptr_emplace<SEUpdater::PreflightUpdateController>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2029968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void sub_299F223BC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<SEUpdater::NOPUpdateController>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20299B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::NOPUpdateController::~NOPUpdateController(SEUpdater::NOPUpdateController *this)
{
  SEUpdater::UpdateControllerBase::~UpdateControllerBase(this);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SEUpdater::P73BaseUpdateController>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2029A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void _GLOBAL__sub_I_SEUpdaterFactory_cpp()
{
  v12 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(_MergedGlobals_9, "4143_WeakPullDown");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[3], "4143_HiZ");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[6], "412A_Default");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[9], "415E_Value0C");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[12], "415E_Value00");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[15], "40BD_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[18], "40BD_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[21], "4108_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[24], "4108_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[27], "40D0_Disable");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[30], "40D0_Enable_WithFilters_SW");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[33], "40D0_Enable_WithFilters_SW_ISO");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[36], "40D0_Enable_WithFilters_SW_ISO_Type");
  LODWORD(v1) = 0;
  WORD2(v1) = -28672;
  BYTE6(v1) = 0;
  qword_2A197F490 = 0;
  unk_2A197F498 = 0;
  qword_2A197F488 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F488, &v1, &v1 + 7, 7);
  LODWORD(v1) = 21185023;
  WORD2(v1) = -28670;
  BYTE6(v1) = 0;
  qword_2A197F4A8 = 0;
  unk_2A197F4B0 = 0;
  qword_2A197F4A0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F4A0, &v1, &v1 + 7, 7);
  LODWORD(v1) = 21185023;
  WORD2(v1) = -28671;
  BYTE6(v1) = 0;
  qword_2A197F4C0 = 0;
  unk_2A197F4C8 = 0;
  qword_2A197F4B8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F4B8, &v1, &v1 + 7, 7);
  v3 = xmmword_299F2FE98;
  *v4 = unk_299F2FEA8;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2FE78;
  v2 = unk_299F2FE88;
  qword_2A197F4D8 = 0;
  unk_2A197F4E0 = 0;
  qword_2A197F4D0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F4D0, &v1, &v4[22], 70);
  v3 = xmmword_299F2FEDE;
  *v4 = unk_299F2FEEE;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2FEBE;
  v2 = unk_299F2FECE;
  qword_2A197F4F0 = 0;
  unk_2A197F4F8 = 0;
  qword_2A197F4E8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F4E8, &v1, &v4[22], 70);
  v3 = xmmword_299F2FF24;
  *v4 = unk_299F2FF34;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2FF04;
  v2 = unk_299F2FF14;
  qword_2A197F508 = 0;
  unk_2A197F510 = 0;
  qword_2A197F500 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F500, &v1, &v4[22], 70);
  *&v1 = 0x90000000000000;
  qword_2A197F520 = 0;
  unk_2A197F528 = 0;
  qword_2A197F518 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F518, &v1, &v1 + 8, 8);
  *&v1 = 0x900000025E4103;
  qword_2A197F538 = 0;
  unk_2A197F540 = 0;
  qword_2A197F530 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F530, &v1, &v1 + 8, 8);
  *&v1 = 0x900C00025E4103;
  qword_2A197F558 = 0;
  qword_2A197F548 = 0;
  unk_2A197F550 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F548, &v1, &v1 + 8, 8);
  *&v1 = 0xA5A5A5A504BD40FFLL;
  WORD4(v1) = 144;
  qword_2A197F560 = 0;
  qword_2A197F570 = 0;
  qword_2A197F568 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F560, &v1, &v1 + 10, 10);
  *&v1 = 0x5AA5A5A504BD40FFLL;
  WORD4(v1) = 144;
  qword_2A197F578 = 0;
  qword_2A197F588 = 0;
  qword_2A197F580 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F578, &v1, &v1 + 10, 10);
  *&v1 = 0xA5A5A5A5040841FFLL;
  WORD4(v1) = 144;
  qword_2A197F590 = 0;
  qword_2A197F5A0 = 0;
  qword_2A197F598 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F590, &v1, &v1 + 10, 10);
  *&v1 = 0x5AA5A5A5040841FFLL;
  WORD4(v1) = 144;
  qword_2A197F5A8 = 0;
  qword_2A197F5B8 = 0;
  qword_2A197F5B0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F5A8, &v1, &v1 + 10, 10);
  *&v1 = 0x5A5A5A5A05D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F5C0 = 0;
  qword_2A197F5D0 = 0;
  qword_2A197F5C8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F5C0, &v1, &v1 + 11, 11);
  *&v1 = 0x5A5AA5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F5D8 = 0;
  qword_2A197F5E8 = 0;
  qword_2A197F5E0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F5D8, &v1, &v1 + 11, 11);
  *&v1 = 0x5AA5A5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F5F0 = 0;
  qword_2A197F600 = 0;
  qword_2A197F5F8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F5F0, &v1, &v1 + 11, 11);
  *&v1 = 0xA5A5A5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F608 = 0;
  qword_2A197F618 = 0;
  qword_2A197F610 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F608, &v1, &v1 + 11, 11);
  v7 = unk_299F2FFBA;
  v8 = xmmword_299F2FFCA;
  v9 = unk_299F2FFDA;
  v10 = xmmword_299F2FFEA;
  v5 = unk_299F2FF9A;
  v6 = xmmword_299F2FFAA;
  v1 = xmmword_299F2FF4A;
  v2 = unk_299F2FF5A;
  *v4 = unk_299F2FF7A;
  *&v4[16] = xmmword_299F2FF8A;
  v3 = xmmword_299F2FF6A;
  v11 = -57;
  SERestoreInfo::CApdu::CApdu(&v0, &v1, 177, 0);
}

uint64_t SEUpdaterUtil::RegisterDebugSignals(SEUpdaterUtil *this)
{
  v1 = 0;
  v3.__sigaction_u.__sa_handler = SEUpdaterUtil::_handleSignals;
  *&v3.sa_mask = 0;
  do
  {
    result = sigaction(dword_299F3049C[v1++], &v3, 0);
  }

  while (v1 != 6);
  return result;
}

void SEUpdaterUtil::parseArgs(uint64_t a1, uint64_t a2)
{
  v112 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, *a1, *(a1 + 8));
  }

  else
  {
    v45 = *a1;
  }

  MEMORY[0x29C2B5E20](&v80);
  LODWORD(v84) = 0x4000;
  std::locale::locale(&v85, &v80);
  LODWORD(v91) = v84;
  std::locale::locale(v92, &v85);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v45;
  }

  else
  {
    v2 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v45.__r_.__value_.__l.__size_;
  }

  v4 = (v2 + size);
  LODWORD(v93) = v91;
  std::locale::locale(&v94, v92);
  LODWORD(v102) = v93;
  std::locale::locale(&v103, &v94);
  v5 = MEMORY[0x29EDC93D0];
  while (size)
  {
    v6 = size;
    v7 = v2->__r_.__value_.__s.__data_[size - 1];
    v8 = std::locale::use_facet(&v103, v5);
    if ((v7 & 0x80) != 0)
    {
      v2 = v4;
      break;
    }

    v4 = (v4 - 1);
    v9 = *(&v8[1].~facet + v7);
    size = v6 - 1;
    if ((v9 & v102) == 0)
    {
      v2 = (v2 + v6);
      break;
    }
  }

  std::locale::~locale(&v103);
  v10 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v45;
  }

  else
  {
    v11 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v45.__r_.__value_.__l.__size_;
  }

  std::string::erase(&v45, v2 - v11, v11 + v10 - v2);
  std::locale::~locale(&v94);
  std::locale::~locale(v92);
  LODWORD(v93) = v84;
  std::locale::locale(&v94, &v85);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v45;
  }

  else
  {
    v12 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v45.__r_.__value_.__l.__size_;
  }

  LODWORD(v102) = v93;
  std::locale::locale(&v103, &v94);
  if (v13)
  {
    v14 = (v12 + v13);
    v15 = MEMORY[0x29EDC93D0];
    v16 = v12;
    while (1)
    {
      v17 = v16->__r_.__value_.__s.__data_[0];
      v18 = std::locale::use_facet(&v103, v15);
      if ((v17 & 0x80) != 0 || (*(&v18[1].~facet + v17) & v102) == 0)
      {
        break;
      }

      v16 = (v16 + 1);
      if (!--v13)
      {
        v16 = v14;
        break;
      }
    }
  }

  else
  {
    v16 = v12;
  }

  v19 = &v45;
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = v45.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&v45, v12 - v19, v16 - v12);
  std::locale::~locale(&v103);
  std::locale::~locale(&v94);
  std::locale::~locale(&v85);
  std::locale::~locale(&v80);
  v20 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  v21 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v45.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    v43 = 0uLL;
    v44 = 0;
    MEMORY[0x29C2B5E20](&v66);
    v41 = 0x4000;
    std::locale::locale(&v42, &v66);
    std::locale::locale(&v39 + 1, &v42);
    LODWORD(v102) = 0x4000;
    std::locale::locale(&v103, &v39 + 1);
    v46 = v102;
    std::locale::locale(&v47, &v103);
    LODWORD(v48) = 0;
    std::locale::~locale(&v103);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v45;
    }

    else
    {
      v22 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v45.__r_.__value_.__l.__size_;
    }

    LODWORD(v72) = v46;
    std::locale::locale(&v73, &v47);
    LODWORD(v74) = v48;
    LODWORD(v49) = v72;
    std::locale::locale(&v50, &v73);
    v51 = v74;
    LODWORD(v76) = v49;
    std::locale::locale(&v77, &v50);
    LODWORD(end) = v51;
    v55 = 0;
    LODWORD(v80.__locale_) = v76;
    std::locale::locale(&v81, &v77);
    LODWORD(v82) = end;
    LODWORD(v84) = v80.__locale_;
    std::locale::locale(&v85, &v81);
    LODWORD(v86) = v82;
    LODWORD(v93) = v84;
    std::locale::locale(&v94, &v85);
    LODWORD(v95) = v86;
    LODWORD(v102) = v93;
    std::locale::locale(&v103, &v94);
    LODWORD(v104) = v95;
    LODWORD(v56) = v102;
    std::locale::locale(&v57, &v103);
    v58 = v104;
    std::locale::~locale(&v103);
    std::locale::~locale(&v94);
    std::locale::~locale(&v85);
    v55 = &boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_classifiedF>>(boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_classifiedF>)::stored_vtable;
    std::locale::~locale(&v81);
    std::locale::~locale(&v77);
    std::locale::~locale(&v50);
    v59 = v22;
    v60 = v22;
    v61 = v22;
    v62 = v22 + v23;
    v63 = 0;
    if (v23)
    {
      boost::algorithm::split_iterator<std::__wrap_iter<char *>>::increment(&v55);
    }

    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v91, &v55);
    boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v55);
    std::locale::~locale(&v73);
    v49 = 0;
    v52 = 0u;
    v53 = 0u;
    v54 = 1;
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v84, &v49);
    boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v49);
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v80, &v91);
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v76, &v84);
    v65 = 0;
    v64 = 0uLL;
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v102, &v80);
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v93, &v76);
    v69 = &v64;
    v70 = 0;
    while (v102)
    {
      v24 = v110;
      if (!v93)
      {
        goto LABEL_59;
      }

      if ((v110 & 1) != 0 || v101)
      {
        if (v110 == v101)
        {
          goto LABEL_81;
        }

        goto LABEL_62;
      }

      v25 = v106;
      v26 = v107;
      v27 = v107 - v106;
      if (v107 - v106 == v98 - __s2 && !memcmp(v106, __s2, v107 - v106) && v108 == v99 && v109 == v100)
      {
LABEL_81:
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v93);
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v102);
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v76);
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v80);
        v37 = v43;
        v43 = v64;
        v64 = v37;
        v38 = v44;
        v44 = v65;
        v65 = v38;
        v102 = &v64;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v102);
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v84);
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v91);
        std::locale::~locale(&v47);
        std::locale::~locale(&v39 + 1);
        std::locale::~locale(&v42);
        std::locale::~locale(&v66);
        if (v43 != *(&v43 + 1))
        {
          v39 = 0uLL;
          v40 = 0;
          __n = 1;
          __src = 61;
          std::__sort<std::__less<char,char> &,char *>();
          v71 = __n;
          v69 = 0;
          if (__n < 0x11)
          {
            memcpy(&v69, &__src, __n);
            v104 = v71;
            v102 = 0;
            if (v71 < 0x11)
            {
              memcpy(&v102, &v69, v71);
              v74 = v104;
              v72 = 0;
              if (v104 <= 0x10)
              {
                memcpy(&v72, &v102, v104);
                v75 = 1;
                v89 = v74;
                *&__dst = 0;
                if (v74 < 0x11)
                {
                  memcpy(&__dst, &v72, v74);
                  v90 = 1;
                  v111.__end_ = v89;
                  v111.__first_ = 0;
                  if (v89 < 0x11)
                  {
                    memcpy(&v111, &__dst, v89);
                    LODWORD(v111.__end_cap_.__value_) = 1;
                    end = v111.__end_;
                    v76 = 0;
                    if (v111.__end_ < 0x11)
                    {
                      memcpy(&v76, &v111, v111.__end_);
                      v79 = 1;
                      v55 = 0;
                      v82 = end;
                      v80.__locale_ = 0;
                      if (end < 0x11)
                      {
                        memcpy(&v80, &v76, end);
                        v83 = 1;
                        v86 = v82;
                        v84 = 0;
                        if (v82 < 0x11)
                        {
                          memcpy(&v84, &v80, v82);
                          v87 = 1;
                          v95 = v86;
                          v93 = 0;
                          if (v86 < 0x11)
                          {
                            memcpy(&v93, &v84, v86);
                            v96 = 1;
                            v104 = v95;
                            v102 = 0;
                            if (v95 < 0x11)
                            {
                              memcpy(&v102, &v93, v95);
                              v105 = 1;
                              operator new();
                            }

                            operator new[]();
                          }

                          operator new[]();
                        }

                        operator new[]();
                      }

                      operator new[]();
                    }

                    operator new[]();
                  }

                  operator new[]();
                }

                operator new[]();
              }

              operator new[]();
            }

            operator new[]();
          }

          operator new[]();
        }

        v102 = &v43;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v102);
        v21 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
        goto LABEL_113;
      }

LABEL_63:
      if (v27 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v27 > 0x16)
      {
        operator new();
      }

      HIBYTE(v89) = v27;
      if (v26 != v25)
      {
        memmove(&__dst, v25, v27);
      }

      *(&__dst + v27) = 0;
      v28 = *(&v64 + 1);
      if (*(&v64 + 1) >= v65)
      {
        v30 = 0xAAAAAAAAAAAAAAABLL * ((*(&v64 + 1) - v64) >> 3);
        v31 = v30 + 1;
        if (v30 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v65 - v64) >> 3) > v31)
        {
          v31 = 0x5555555555555556 * ((v65 - v64) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 3) >= 0x555555555555555)
        {
          v32 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v32 = v31;
        }

        v111.__end_cap_.__value_ = &v64;
        if (v32)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v64, v32);
        }

        v33 = 8 * ((*(&v64 + 1) - v64) >> 3);
        *v33 = __dst;
        *(v33 + 16) = v89;
        v29 = 24 * v30 + 24;
        v34 = 24 * v30 - (*(&v64 + 1) - v64);
        memcpy((v33 - (*(&v64 + 1) - v64)), v64, *(&v64 + 1) - v64);
        v35 = v64;
        v36 = v65;
        *&v64 = v34;
        *(&v64 + 1) = v29;
        v65 = 0;
        v111.__end_ = v35;
        v111.__end_cap_.__value_ = v36;
        v111.__first_ = v35;
        v111.__begin_ = v35;
        std::__split_buffer<std::string>::~__split_buffer(&v111);
      }

      else
      {
        **(&v64 + 1) = __dst;
        *(v28 + 16) = v89;
        v29 = v28 + 24;
      }

      *(&v64 + 1) = v29;
      boost::algorithm::split_iterator<std::__wrap_iter<char *>>::increment(&v102);
    }

    if (!v93)
    {
      goto LABEL_81;
    }

    v24 = v101;
LABEL_59:
    if (v24)
    {
      goto LABEL_81;
    }

LABEL_62:
    v25 = v106;
    v26 = v107;
    v27 = v107 - v106;
    goto LABEL_63;
  }

LABEL_113:
  if (v21 < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }
}

void SEUpdaterUtil::cbPrintLog(SEUpdaterUtil *this, void *a2, SEUpdaterUtil::SELogObj *a3, const char *a4, ...)
{
  va_start(va, a4);
  v5 = a2;
  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v6 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v7 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (v5 > 6)
  {
    v8 = 3;
  }

  else
  {
    v8 = dword_299F30534[v5];
  }

  SEUpdaterUtil::SELogObj::printLogv(v6, v8, 0, 1, 0, a3, va);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

SEUpdaterUtil *SEUpdaterUtil::assertSW(SEUpdaterUtil *this, const SERestoreInfo::RApdu *a2, const char *a3, const char *a4)
{
  v4 = *(*(this + 1) + 8);
  if ((v4 - **(this + 1)) < 2)
  {
    v5 = 43947;
LABEL_5:
    SEUpdaterUtil::SELogToStr(&v8, a2, v5);
    exception = __cxa_allocate_exception(0x48uLL);
    v7 = SERestoreInfo::SEException::SEException(exception, &v8, 8, @"SEUpdaterErrorDomain");
  }

  v5 = *(v4 - 1) | (*(v4 - 2) << 8);
  if (v5 != 36864)
  {
    goto LABEL_5;
  }

  return this;
}

void sub_299F2483C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, void *a2, __int128 **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v4 = *a2;
  if (*a2)
  {
    *a1 = v4;
    if (v4)
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    else
    {
      (*v4)(a2 + 8, a1 + 8, 0);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char *>>::increment(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*a1)
  {
    result = (*((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8))(a1 + 8, *(a1 + 48), v2);
    v2 = *(a1 + 56);
  }

  else
  {
    v4 = *(a1 + 56);
    result = v4;
  }

  v5 = result == v2 && v4 == v2;
  if (v5 && *(a1 + 40) == v2)
  {
    *(a1 + 64) = 1;
  }

  *(a1 + 32) = *(a1 + 48);
  *(a1 + 40) = result;
  *(a1 + 48) = v4;
  return result;
}

void boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_classifiedF>>::manage(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    std::locale::locale((a2 + 8), (a1 + 8));
    *(a2 + 16) = *(a1 + 16);
    if (a3 != 1)
    {
      return;
    }

    v6 = (a1 + 8);
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return;
    }

    v6 = (a2 + 8);
LABEL_10:

    std::locale::~locale(v6);
    return;
  }

  v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
  if (v7 == (0x8000000299F304B4 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, (0x8000000299F304B4 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    *a2 = a1;
  }

  else
  {
    *a2 = 0;
  }
}

unsigned __int8 *boost::detail::function::function_obj_invoker2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_classifiedF>,boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::invoke(std::locale *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = a1 + 1;
  locale = a1->__locale_;
  std::locale::locale(&v16, a1 + 1);
  if (a3 == a2)
  {
    std::locale::~locale(&v16);
  }

  else
  {
    v7 = MEMORY[0x29EDC93D0];
    while (1)
    {
      v8 = *a2;
      v9 = std::locale::use_facet(&v16, v7);
      if ((v8 & 0x80) == 0 && (*(&v9[1].~facet + v8) & locale) != 0)
      {
        break;
      }

      if (++a2 == a3)
      {
        a2 = a3;
        break;
      }
    }

    std::locale::~locale(&v16);
    if (a2 != a3)
    {
      if (!LODWORD(a1[2].__locale_))
      {
        v11 = MEMORY[0x29EDC93D0];
        v12 = a2;
        while (1)
        {
          v13 = *v12;
          v14 = std::locale::use_facet(v6, v11);
          if (v13 < 0 || (*(&v14[1].~facet + v13) & a1->__locale_) == 0)
          {
            break;
          }

          if (++v12 == a3)
          {
            return a2;
          }
        }
      }

      return a2;
    }
  }

  return a3;
}

void (***boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manage(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v5 = *a2;
    if (*a2)
    {
      if (v5[2] >= 0x11uLL && *v5)
      {
        MEMORY[0x29C2B5F10](*v5, 0x1000C8077774924);
      }

      result = MEMORY[0x29C2B5F30](v5, 0x1012C405C87E9CELL);
    }

LABEL_16:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != (0x8000000299F304F4 & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, (0x8000000299F304F4 & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_16;
    }
  }

  *a2 = *v4;
  return result;
}

char *boost::detail::function::function_obj_invoker2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>,boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::invoke(const void ***a1, char *a2, char *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v6 = (*a1)[2];
  v11 = v6;
  v10[0] = 0;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  memcpy(v10, v5, v6);
  v7 = a3;
  v8 = a3;
  if (a2 != a3)
  {
    v7 = a2;
    while (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(v10, *v7))
    {
      if (++v7 == a3)
      {
        v7 = a3;
        break;
      }
    }

    v8 = v7;
  }

  if (v11 >= 0x11 && v10[0])
  {
    MEMORY[0x29C2B5F10](v10[0], 0x1000C8077774924);
  }

  if (v8 != a3)
  {
    if (!v5[6])
    {
      do
      {
        if (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(v5, *v7))
        {
          break;
        }

        ++v7;
      }

      while (v7 != a3);
    }

    return v8;
  }

  return a3;
}

BOOL boost::algorithm::detail::is_any_ofF<char>::operator()<char>(void *a1, int a2)
{
  v2 = a1[2];
  if (v2 >= 0x11)
  {
    a1 = *a1;
    v3 = (a1 + v2);
  }

  else
  {
    v3 = (a1 + v2);
    if (!v2)
    {
      return a1 != v3 && *a1 <= a2;
    }
  }

  do
  {
    v4 = a1 + (v2 >> 1);
    v6 = *v4;
    v5 = v4 + 1;
    v7 = v2 >> 1;
    v2 += ~(v2 >> 1);
    if (v6 < a2)
    {
      a1 = v5;
    }

    else
    {
      v2 = v7;
    }
  }

  while (v2);
  return a1 != v3 && *a1 <= a2;
}

void (***boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

SERestoreInfo::SN100VDeviceInfo *SERestoreInfo::SN100VDeviceInfo::SN100VDeviceInfo(SERestoreInfo::SN100VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A2029AE0;
  if (*(v3 + 14) != 100)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SN100VDeviceInfo::~SN100VDeviceInfo(SERestoreInfo::SN100VDeviceInfo *this)
{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x29C2B5F30);
}

SERestoreInfo::SN200VDeviceInfo *SERestoreInfo::SN200VDeviceInfo::SN200VDeviceInfo(SERestoreInfo::SN200VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A2029B30;
  if (*(v3 + 14) != 200)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SN200VDeviceInfo::~SN200VDeviceInfo(SERestoreInfo::SN200VDeviceInfo *this)
{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x29C2B5F30);
}

SEUpdater::UpdateControllerBase *SEUpdater::UpdateControllerBase::UpdateControllerBase(SEUpdater::UpdateControllerBase *this)
{
  *this = &unk_2A20283A8;
  *(this + 16) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 66) = 0;
  *(this + 9) = 0;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 80) = 0;
  *(this + 13) = 0;
  *(this + 2) = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(this + 14, &Mutable);
  *(this + 15) = 0;
  return this;
}

void sub_299F25710(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3, *v4);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v2);
  std::optional<AlohaPairingOptions>::~optional(v1);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void SEUpdater::UpdateControllerBase::start(const void **this, const __CFDictionary *a2, uint64_t a3, const void *a4)
{
  if (a2)
  {
    SEUpdaterUtil::SELogPrintCFType(3, 1, a2, a4);
  }

  *&v9[0].var0 = a2;
  ctu::cf::CFSharedRef<__CFDictionary const>::reset(this + 9, v9);
  SEUpdater::UpdateControllerBase::setDebugOptions(this);
  (*(*this + 2))(this);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, this + 9);
  getAlohaPairingOptions(&cf, v9);
  std::__optional_storage_base<AlohaPairingOptions,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AlohaPairingOptions,false>>(this + 2, v9);
  if (v13 == 1)
  {
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v12);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v11);
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&v7, this + 9);
  v9[0] = 256;
  AlohaVerificationOptions::print(v9);
  v6 = v9[0];
  *(this + 66) = 1;
  *(this + 32) = v6;
  if (v7)
  {
    CFRelease(v7);
  }
}

void ctu::cf::CFSharedRef<__CFDictionary const>::reset(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(v4);
  }
}

void SEUpdater::UpdateControllerBase::setDebugOptions(SEUpdater::UpdateControllerBase *this)
{
  *(this + 5) = SEUpdater::UpdateControllerBase::getBooleanOption(this, @"RestoreInternal", 0) | 0x100;
  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v2 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v3 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if ((*(this + 11) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(this + 10))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  SEUpdaterUtil::SELogObj::printLog(v2, 1, 0, 1, "setDebugOptions", "Internal Restore? %s\n", v4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  SEUpdater::UpdateControllerBase::getStringfromOption(__p, this);
  SEUpdaterUtil::parseArgs(__p, this + 88);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(this + 9);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 objectForKeyedSubscript:@"Options"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"DebugLogPath"];
      v10 = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      v11 = *(this + 15);
      *(this + 15) = v10;
      __p[0] = v11;
      ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(__p);

      if (*(this + 15))
      {
        pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v12 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global();
        }

        v13 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        SEUpdaterUtil::SELogObj::printLog(v12, 2, 0, 1, "setDebugOptions", "EVENT LOGGING: debugLogPath obtained\n");
      }

      else
      {
        pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v17 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global();
        }

        v13 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        SEUpdaterUtil::SELogObj::printLog(v17, 2, 0, 1, "setDebugOptions", "EVENT LOGGING: debugLogPath not present\n");
      }
    }

    else
    {
      pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v16 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global();
      }

      v13 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      SEUpdaterUtil::SELogObj::printLog(v16, 2, 0, 1, "setDebugOptions", "EVENT LOGGING: Options not present\n");
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  else
  {
    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v14 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global();
    }

    v15 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v14, 2, 0, 1, "setDebugOptions", "EVENT LOGGING: Invalid options parameter\n");
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_299F25CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);

  _Unwind_Resume(a1);
}

uint64_t SEUpdater::UpdateControllerBase::execCommand(const void **this, const __CFString *a2, const __CFDictionary *a3, const __CFDictionary **a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Assertion: ");
    v29 = std::string::append(&__p, "command");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v33 = v29->__r_.__value_.__r.__words[2];
    v32 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v32);
  }

  v32 = 0uLL;
  v33 = 0;
  ctu::cf::assign();
  memset(&__p, 0, sizeof(__p));
  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v8 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v9 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  SEUpdaterUtil::SELogObj::printLog(v8, 2, 0, 1, "execCommand", "Start processing command: %s\n", p_p);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (a3)
  {
    SEUpdaterUtil::SELogPrintCFType(2, 1, a3, v11);
    *&v32 = a3;
    ctu::cf::CFSharedRef<__CFDictionary const>::reset(this + 9, &v32);
  }

  if (((*(*this + 3))(this, a2, a4) & 1) == 0)
  {
    v14 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    SEUpdaterUtil::_AddError(2, 1, "execCommand", "Unrecognized command %s", v12, v13, v14);
  }

  if (a4)
  {
    if (CFDictionaryGetCount(this[14]))
    {
      pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v15 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global();
      }

      v16 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      SEUpdaterUtil::SELogObj::printLog(v15, 2, 0, 1, "execCommand", "Command output:\n");
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      SEUpdaterUtil::SELogPrintCFType(2, 1, this[14], v17);
      v18 = CFRetain(this[14]);
      *a4 = v18;
    }

    else
    {
      pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v21 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global();
      }

      v22 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v18 = SEUpdaterUtil::SELogObj::printLog(v21, 2, 0, 1, "execCommand", "No command output, returning NULL\n");
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      *a4 = 0;
    }
  }

  else
  {
    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v19 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global();
    }

    v20 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v18 = SEUpdaterUtil::SELogObj::printLog(v19, 1, 0, 1, "execCommand", "Caller did not provide an output dictionary\n");
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  ErrorCode = SEUpdaterUtil::GetErrorCode(v18);
  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v24 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v25 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v26 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v26 = __p.__r_.__value_.__r.__words[0];
  }

  SEUpdaterUtil::SELogObj::printLog(v24, 2, 0, 1, "execCommand", "Finish processing command: %s and returning %d \n", v26, ErrorCode);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ErrorCode;
}

void sub_299F262F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SEUpdater::UpdateControllerBase::parseStartOptions(SEUpdater::UpdateControllerBase *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "logLevel");
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(this + 88, __p);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "logLevel");
    v31[0] = __p;
    v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 88, __p, &std::piecewise_construct, v31);
    v4 = std::stoi((v3 + 56), 0, 10);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p[0]);
    }

    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v5 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global();
    }

    v6 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v5, 0, 0, 1, "parseStartOptions", "Setting loglevel to %d\n", v4);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v7 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global();
    }

    v8 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    __p[0] = MEMORY[0x29EDCA5F8];
    __p[1] = 3221225472;
    v34 = ___ZN13SEUpdaterUtil8SELogObj11setLogLevelEi_block_invoke;
    v35 = &__block_descriptor_44_e5_v8__0l;
    v36 = v7;
    v37 = v4;
    v31[0] = __p;
    ctu::SharedSynchronizable<SEUpdaterUtil::SELogObj>::execute_wrapped_sync<void({block_pointer} {__strong}&)(void)>(v7, v31);

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if ((*(this + 11) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(this + 10) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "haltOnCrash");
    v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(this + 88, v31);
    v10 = v9;
    if (v32 < 0)
    {
      operator delete(v31[0]);
      if (!v10)
      {
        goto LABEL_31;
      }
    }

    else if (!v9)
    {
      goto LABEL_31;
    }

    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v11 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global();
    }

    v12 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v13 = SEUpdaterUtil::SELogObj::printLog(v11, 0, 0, 1, "parseStartOptions", "Install signal handlers\n");
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    SEUpdaterUtil::RegisterDebugSignals(v13);
  }

LABEL_31:
  *(this + 8) = SEUpdater::UpdateControllerBase::getBooleanOption(this, @"FactoryRFTest", 0);
  std::string::basic_string[abi:ne200100]<0>(v31, "setActivateFTA");
  v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(this + 88, v31);
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v14)
  {
    *(this + 8) = 1;
  }

  v15 = *(this + 9);
  if (v15)
  {
    Value = CFDictionaryGetValue(v15, @"RestoreOptions");
    if (Value)
    {
      v17 = Value;
      v18 = CFGetTypeID(Value);
      if (v18 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(v31, "RestoreOptions not a dict?");
        v30 = SERestoreInfo::SEException::SEException(exception, v31, 2, @"SEUpdaterErrorDomain");
      }

      v19 = CFDictionaryGetValue(v17, @"CreateFilesystemPartitions");
      if (!v19 || (v20 = v19, v21 = CFGetTypeID(v19), v21 != CFBooleanGetTypeID()))
      {
        v27 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(v31, "CreateFilesystemPartitions missing or wrong type");
        v28 = SERestoreInfo::SEException::SEException(v27, v31, 2, @"SEUpdaterErrorDomain");
      }

      *(this + 9) = CFBooleanGetValue(v20) != 0;
    }

    else
    {
      *(this + 9) = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v31, "setEraseInstall");
    v22 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(this + 88, v31);
    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    if (v22)
    {
      *(this + 9) = 1;
    }
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v23 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global();
  }

  v24 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v25 = "deactivated";
  if (*(this + 8))
  {
    v25 = "activated";
  }

  if (*(this + 9))
  {
    v26 = &unk_299F305FF;
  }

  else
  {
    v26 = "not ";
  }

  SEUpdaterUtil::SELogObj::printLog(v23, 1, 0, 1, "parseStartOptions", "Additional actions: FTA will be %s, MFD will %sbe performed\n", v25, v26);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

uint64_t SEUpdater::UpdateControllerBase::getBooleanOption(CFDictionaryRef *this, const __CFString *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(this[9], @"Options");
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = CFDictionaryGetValue(v6, a2);
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 == CFBooleanGetTypeID())
        {
          return CFBooleanGetValue(v9) != 0;
        }
      }
    }
  }

  return a3;
}

uint64_t *SEUpdater::UpdateControllerBase::getStringfromOption@<X0>(uint64_t *__return_ptr a1@<X8>, CFDictionaryRef *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = CFDictionaryGetValue(this[9], @"Options");
  if (result)
  {
    v5 = result;
    TypeID = CFDictionaryGetTypeID();
    result = CFGetTypeID(v5);
    if (TypeID == result)
    {
      ctu::cf::dict_adapter::dict_adapter(v9, v5);
      ctu::cf::map_adapter::getString();
      *a1 = v7;
      a1[2] = v8;
      return MEMORY[0x29C2B5A30](v9);
    }
  }

  return result;
}

void sub_299F26C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B5A30](&a18, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

BOOL SEUpdater::UpdateControllerBase::usesPORSecureElement(SEUpdater::UpdateControllerBase *this, int a2)
{
  v3 = 1;
  v4 = MGGetProductType();
  if (v4 <= 1625491064)
  {
    if (v4 <= 347088859)
    {
      if (v4 == -1)
      {
        return a2 == 56;
      }

      v5 = 248718555;
    }

    else
    {
      if (v4 == 347088860 || v4 == 861924853)
      {
        return a2 == 56;
      }

      v5 = 1260109173;
    }
  }

  else if (v4 > 2443002097)
  {
    if (v4 == 2443002098 || v4 == 4018315120)
    {
      return a2 == 56;
    }

    v5 = 3564012492;
  }

  else
  {
    if (v4 == 1625491065 || v4 == 1747059280)
    {
      return a2 == 56;
    }

    v5 = 2390434178;
  }

  if (v4 == v5)
  {
    return a2 == 56;
  }

  return v3;
}

uint64_t std::optional<AlohaPairingOptions>::~optional(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef((a1 + 24));
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef((a1 + 16));
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef((a1 + 8));
  }

  return a1;
}

const void **ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **std::__optional_storage_base<AlohaPairingOptions,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AlohaPairingOptions,false>>(const void **result, uint64_t a2)
{
  v3 = result;
  if (*(result + 40) == *(a2 + 40))
  {
    if (*(result + 40))
    {
      *result = *a2;
      if (result != a2)
      {
        v4 = result[1];
        result[1] = 0;
        v9 = v4;
        result[1] = *(a2 + 8);
        *(a2 + 8) = 0;
        ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v9);
        v5 = v3[2];
        v3[2] = 0;
        v9 = v5;
        v3[2] = *(a2 + 16);
        *(a2 + 16) = 0;
        ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v9);
        v6 = v3[3];
        v3[3] = 0;
        v9 = v6;
        v3[3] = *(a2 + 24);
        *(a2 + 24) = 0;
        result = ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v9);
      }

      v7 = *(a2 + 32);
      *(v3 + 34) = *(a2 + 34);
      *(v3 + 16) = v7;
    }
  }

  else if (*(result + 40))
  {
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(result + 3);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v3 + 2);
    result = ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(v3 + 1);
    *(v3 + 40) = 0;
  }

  else
  {
    *result = *a2;
    result[1] = 0;
    result[1] = *(a2 + 8);
    *(a2 + 8) = 0;
    result[2] = 0;
    result[2] = *(a2 + 16);
    *(a2 + 16) = 0;
    result[3] = 0;
    result[3] = *(a2 + 24);
    *(a2 + 24) = 0;
    v8 = *(a2 + 32);
    *(result + 34) = *(a2 + 34);
    *(result + 16) = v8;
    *(result + 40) = 1;
  }

  return result;
}

uint64_t ___ZN13SEUpdaterUtil8SELogObj11setLogLevelEi_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (v2 >= 6)
  {
    v2 = 5;
LABEL_4:
    *(v1 + 48) = v2;
    return result;
  }

  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  *(v1 + 48) = 0;
  return result;
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFDictionaryGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

void _GLOBAL__sub_I_UpdateControllerBase_cpp()
{
  v0 = objc_autoreleasePoolPush();
  qword_2A197F778 = [MEMORY[0x29EDBA070] numberWithInt:1];
  qword_2A197F780 = [MEMORY[0x29EDBA070] numberWithInt:1];
  qword_2A197F788 = [MEMORY[0x29EDBA070] numberWithInt:0];

  objc_autoreleasePoolPop(v0);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}