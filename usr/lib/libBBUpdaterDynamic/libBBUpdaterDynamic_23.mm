void sub_1E536E2AC(_Unwind_Exception *a1)
{
  Bsp::BspCommandDriver::~BspCommandDriver(&STACK[0x2B0]);
  v2 = STACK[0x6B0];
  STACK[0x6B0] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t BasebandUpdaterTransport::setPreflightMode(BasebandUpdaterTransport *this)
{
  v16 = 8;
  ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
  v2 = operator new(0x20uLL);
  *(v2 + 1) = 0;
  *v2 = &unk_1F5F05FE8;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v3 = BasebandUpdaterTransport::IOACIPCHelper::init(v2, "rom", (ScaledTime / 1000000));
  if (v3)
  {
    v4 = *(v2 + 1);
    if (v4)
    {
      LogInstance = ACFULogging::getLogInstance(v3);
      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Setting preflight mode\n", "BasebandUpdaterTransport", "setPreflightMode");
      v6 = (*(*v4 + 120))(v4, 15, &v16, 4);
      if (v6)
      {
        v15 = ACFULogging::getLogInstance(v6);
        ACFULogging::handleMessage(v15, 2, "%s::%s: Failed to write MMIO:BootFlags register with Preflight\n", "BasebandUpdaterTransport", "setPreflightMode");
        v8 = 3025;
      }

      else
      {
        v7 = ACFULogging::getLogInstance(v6);
        ACFULogging::handleMessage(v7, 0, "%s::%s: Preflight mode set successfully\n", "BasebandUpdaterTransport", "setPreflightMode");
        v8 = 0;
      }
    }

    else
    {
      v14 = ACFULogging::getLogInstance(v3);
      ACFULogging::handleMessage(v14, 2, "%s::%s: Failed to get the ACIPC interface object\n", "BasebandUpdaterTransport", "setPreflightMode");
      v8 = 3000;
    }

    (*(*v2 + 8))(v2);
  }

  else
  {
    v10 = (*(*v2 + 8))(v2);
    v11 = ACFULogging::getLogInstance(v10);
    v12 = ACFULogging::handleMessage(v11, 2, "%s::%s: Failed to init IOACIPCHelper\n", "BasebandUpdaterTransport", "create");
    v13 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v13, 2, "%s::%s: Failed to open ACIPC %s interface\n", "BasebandUpdaterTransport", "setPreflightMode", "rom");
    return 3019;
  }

  return v8;
}

void BasebandUpdaterTransport::runCertification(int a1@<W1>, uint64_t a2@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52[0] = v4;
  v52[1] = v4;
  v51 = v4;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v54 = 0xAAAAAAAAFFFFFFFFLL;
  security::ARICommandDriver::ARICommandDriver();
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50[2] = v5;
  v50[3] = v5;
  v50[0] = v5;
  v50[1] = v5;
  AriSdk::ARI_CsiSecCollectScrtBlobReq_SDK::ARI_CsiSecCollectScrtBlobReq_SDK(v50);
  v49 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[2] = v6;
  v48[3] = v6;
  v48[0] = v6;
  v48[1] = v6;
  AriSdk::ARI_CsiSecReadSikPKeyReq_SDK::ARI_CsiSecReadSikPKeyReq_SDK(v48);
  v47 = 0;
  support::transport::ARI::create("BasebandUpdaterTransport", 0x2710, 0, 0, __p);
  v8 = __p[0];
  if (!__p[0])
  {
    LogInstance = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n", "BasebandUpdaterTransport", "runCertification");
    *a2 = 0;
    *(a2 + 8) = 3019;
    goto LABEL_18;
  }

  security::ARICommandDriver::ARICommandDriver();
  *&v52[0] = v44;
  LODWORD(v54) = v46;
  std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *> *>>(v52 + 8, v45);
  security::ARICommandDriver::~ARICommandDriver(__p);
  if (a1 == 1)
  {
    SikPKey = security::ARICommandDriver::CsiSecReadSikPKey();
    if (SikPKey)
    {
      v22 = **(v47 + 88);
      v23 = ACFULogging::getLogInstance(SikPKey);
      v24 = ACFULogging::handleMessage(v23, 0, "%s::%s: SCRT pubK size: %u\n", "BasebandUpdaterTransport", "runCertification", v22);
      if ((v22 - 133) > 0xFFFFFF7B)
      {
        v25 = *(v47 + 64);
        v15 = operator new(v22);
        memmove(v15, v25, v22);
        v26 = CFDataCreate(*MEMORY[0x1E695E480], v15, v22);
        v17 = v26;
        if (v26)
        {
          v27 = ACFULogging::getLogInstance(v26);
          v28 = ACFULogging::handleMessage(v27, 0, "%s::%s: Collected Sik Pub Key: \n", "BasebandUpdaterTransport", "runCertification");
          ACFULogging::getLogInstance(v28);
          v29 = operator new(0x20uLL);
          strcpy(v29, "BasebandUpdaterTransport::");
          v41 = v29;
          v40 = a2;
          goto LABEL_13;
        }

        v39 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v39, 2, "%s::%s: Failed to create data payload for Sik pub key.\n", "BasebandUpdaterTransport", "runCertification");
LABEL_27:
        v17 = 0;
        v31 = 4000;
LABEL_16:
        operator delete(v15);
        goto LABEL_17;
      }

      v37 = ACFULogging::getLogInstance(v24);
      ACFULogging::handleMessage(v37, 2, "%s::%s: Received unexpected SCRT pubK size: %u bytes\n", "BasebandUpdaterTransport", "runCertification", v22);
    }

    else
    {
      v35 = ACFULogging::getLogInstance(SikPKey);
      ACFULogging::handleMessage(v35, 2, "%s::%s: Failed CsiSecReadSikPKey ARI command\n", "BasebandUpdaterTransport", "runCertification");
    }

LABEL_24:
    v17 = 0;
    v31 = 1;
    goto LABEL_17;
  }

  if (!a1)
  {
    v10 = security::ARICommandDriver::CsiSecCollectScrtBlob();
    if (v10)
    {
      v11 = **(v49 + 64);
      v12 = ACFULogging::getLogInstance(v10);
      v13 = ACFULogging::handleMessage(v12, 0, "%s::%s: SCRT data size: %u\n", "BasebandUpdaterTransport", "runCertification", v11);
      if ((v11 - 4097) > 0xFFFFEFFF)
      {
        v14 = *(v49 + 72);
        v15 = operator new(v11);
        memmove(v15, v14, v11);
        v16 = CFDataCreate(*MEMORY[0x1E695E480], v15, v11);
        v17 = v16;
        if (v16)
        {
          v18 = ACFULogging::getLogInstance(v16);
          v19 = ACFULogging::handleMessage(v18, 0, "%s::%s: Collected Sik Data Blob: \n", "BasebandUpdaterTransport", "runCertification");
          ACFULogging::getLogInstance(v19);
          v20 = operator new(0x20uLL);
          strcpy(v20, "BasebandUpdaterTransport::");
          v41 = v20;
          v40 = a2;
LABEL_13:
          v32 = operator new(0x40uLL);
          memmove(v32, v41, 0x1AuLL);
          strcpy(v32 + 26, "runCertification");
          operator delete(v41);
          v42[1] = 42;
          v42[0] = v32;
          a2 = v40;
          *__p = *v42;
          v44 = 0x8000000000000040;
          CFDataGetBytePtr(v17);
          CFDataGetLength(v17);
          ACFULogging::handleMessageBinary();
          if (SHIBYTE(v44) < 0)
          {
            operator delete(__p[0]);
          }

          v31 = 0;
          goto LABEL_16;
        }

        v38 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v38, 2, "%s::%s: Failed to create data payload for SCRT data blob\n", "BasebandUpdaterTransport", "runCertification");
        goto LABEL_27;
      }

      v36 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v36, 2, "%s::%s: Received unexpected SCRT data blob size: %u bytes\n", "BasebandUpdaterTransport", "runCertification", v11);
    }

    else
    {
      v34 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v34, 2, "%s::%s: Failed CsiSecCollectScrtBlob ARI command\n", "BasebandUpdaterTransport", "runCertification");
    }

    goto LABEL_24;
  }

  v30 = ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage(v30, 2, "%s::%s: Unsupported sikblobtype: %u\n", "BasebandUpdaterTransport", "runCertification", a1);
  v17 = 0;
  v31 = 1010;
LABEL_17:
  *a2 = v17;
  *(a2 + 8) = v31;
  (*(*v8 + 8))(v8);
LABEL_18:
  MEMORY[0x1E6926AF0](v48);
  MEMORY[0x1E6926BD0](v50);
  security::ARICommandDriver::~ARICommandDriver(&v51);
}

void sub_1E536F070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  MEMORY[0x1E6926AF0](&a33, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x1E6926BD0](&a43);
  security::ARICommandDriver::~ARICommandDriver((v43 - 160));
  _Unwind_Resume(a1);
}

uint64_t BasebandUpdaterTransport::retrieveChipRev(BasebandUpdaterTransport *this, unsigned __int8 *a2)
{
  v16 = 4;
  *v17 = 0;
  ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
  v5 = operator new(0x20uLL);
  *(v5 + 1) = 0;
  *v5 = &unk_1F5F05FE8;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  v6 = BasebandUpdaterTransport::IOACIPCHelper::init(v5, "rom", (ScaledTime / 1000000));
  if (v6)
  {
    v18 = *(v5 + 1);
    if (v18)
    {
      v7 = ACFUACIPCTransport::readRegister(this, &v18, 2, v17, &v16);
      if (v7)
      {
        LogInstance = ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Warning: unable to get chip information\n", "BasebandUpdaterTransport", "retrieveChipRev");
        v8 = 3025;
      }

      else
      {
        v8 = 0;
        *a2 = v17[1];
      }
    }

    else
    {
      v14 = ACFULogging::getLogInstance(v6);
      ACFULogging::handleMessage(v14, 3, "%s::%s: Warning: unable to get the ACIPC interface object\n", "BasebandUpdaterTransport", "retrieveChipRev");
      v8 = 3000;
    }

    (*(*v5 + 8))(v5);
  }

  else
  {
    v10 = (*(*v5 + 8))(v5);
    v11 = ACFULogging::getLogInstance(v10);
    v12 = ACFULogging::handleMessage(v11, 2, "%s::%s: Failed to init IOACIPCHelper\n", "BasebandUpdaterTransport", "create");
    v13 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v13, 3, "%s::%s: Warning: unable to open ACIPC %s interface\n", "BasebandUpdaterTransport", "retrieveChipRev", "rom");
    return 3019;
  }

  return v8;
}

void BasebandUpdaterTransport::~BasebandUpdaterTransport(void **this)
{
  *this = &unk_1F5F05ED8;
  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  v2 = this[24];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[22];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[20];
  if (v4)
  {
    CFRelease(v4);
  }

  MEMORY[0x1EEDED400](this);
}

{
  BasebandUpdaterTransport::~BasebandUpdaterTransport(this);

  operator delete(v1);
}

char **std::vector<std::shared_ptr<ctu::TimerScalingScenario>>::~vector[abi:ne200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void BasebandUpdaterTransport::IOACIPCHelper::~IOACIPCHelper(BasebandUpdaterTransport::IOACIPCHelper *this)
{
  *this = &unk_1F5F05FE8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::mutex::~mutex((v2 + 48));
    std::condition_variable::~condition_variable(v2);
    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F05FE8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::mutex::~mutex((v2 + 48));
    std::condition_variable::~condition_variable(v2);
    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *> *>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 && (bzero(*a1, 8 * v4), v5 = *(a1 + 16), *(a1 + 16) = 0, *(a1 + 24) = 0, v5))
  {
    while (a2)
    {
      v5[4] = *(a2 + 4);
      v6 = a2[3];
      if (v6)
      {
        v6 = _Block_copy(v6);
      }

      v7 = *(v5 + 3);
      *(v5 + 3) = v6;
      if (v7)
      {
        _Block_release(v7);
      }

      v8 = *v5;
      std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__node_insert_multi(a1, v5);
      a2 = *a2;
      v5 = v8;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    do
    {
      v12 = *v5;
      v13 = *(v5 + 3);
      if (v13)
      {
        _Block_release(v13);
      }

      operator delete(v5);
      v5 = v12;
    }

    while (v12);
  }

  else
  {
LABEL_9:
    while (a2)
    {
      v9 = operator new(0x20uLL);
      *v9 = 0;
      v9[1] = 0;
      v10 = *(a2 + 4);
      *(v9 + 4) = v10;
      v11 = a2[3];
      if (v11)
      {
        v11 = _Block_copy(v11);
        v10 = *(v9 + 4);
      }

      v9[3] = v11;
      v9[1] = v10;
      std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__node_insert_multi(a1, v9);
      a2 = *a2;
    }
  }
}

void sub_1E536F7C8(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__deallocate_node(v1);
  __cxa_rethrow();
}

void sub_1E536F7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a2 + 8) = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (v5 && (v7 * v5) >= v6)
  {
    goto LABEL_42;
  }

  v8 = 1;
  if (v5 >= 3)
  {
    v8 = (v5 & (v5 - 1)) != 0;
  }

  v9 = v8 | (2 * v5);
  v10 = vcvtps_u32_f32(v6 / v7);
  if (v9 <= v10)
  {
    prime = v10;
  }

  else
  {
    prime = v9;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v5 = *(a1 + 8);
  }

  if (prime <= v5)
  {
    if (prime >= v5)
    {
      goto LABEL_42;
    }

    v23 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v5 < 3 || (v24 = vcnt_s8(v5), v24.i16[0] = vaddlv_u8(v24), v24.u32[0] > 1uLL))
    {
      v44 = std::__next_prime(v23);
      if (prime <= v44)
      {
        prime = v44;
      }

      if (prime >= v5)
      {
LABEL_36:
        v5 = *(a1 + 8);
        v26 = vcnt_s8(v5);
        v26.i16[0] = vaddlv_u8(v26);
        v27 = v26.u32[0];
        if (v26.u32[0] < 2uLL)
        {
          goto LABEL_43;
        }

        goto LABEL_72;
      }
    }

    else
    {
      v25 = 1 << -__clz(v23 - 1);
      if (v23 >= 2)
      {
        v23 = v25;
      }

      if (prime <= v23)
      {
        prime = v23;
      }

      if (prime >= v5)
      {
        goto LABEL_36;
      }
    }

    if (prime)
    {
      goto LABEL_13;
    }

    v45 = *a1;
    *a1 = 0;
    if (v45)
    {
      operator delete(v45);
    }

    v5 = 0;
    *(a1 + 8) = 0;
    v46 = vcnt_s8(0);
    v46.i16[0] = vaddlv_u8(v46);
    v27 = v46.u32[0];
    if (v46.u32[0] < 2uLL)
    {
      goto LABEL_43;
    }

LABEL_72:
    v47 = v4;
    if (v5 <= v4)
    {
      v47 = v4 % v5;
    }

    v31 = *a1;
    v48 = *(*a1 + 8 * v47);
    if (!v48)
    {
      v36 = 0;
      v40 = *(a2 + 8);
      if (v40 < v5)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    v49 = 0;
    do
    {
      v36 = v48;
      v48 = *v48;
      if (!v48)
      {
        break;
      }

      v53 = v48[1];
      v54 = v53;
      if (v53 >= v5)
      {
        v54 = v53 % v5;
      }

      if (v54 != v47)
      {
        break;
      }

      v50 = v53 == v4 && *(v48 + 4) == *(a2 + 16);
      v51 = v50 != (v49 & 1);
      v52 = v49 & v51;
      v49 |= v51;
    }

    while (v52 != 1);
    goto LABEL_50;
  }

LABEL_13:
  if (prime >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = operator new(8 * prime);
  v13 = *a1;
  *a1 = v12;
  if (v13)
  {
    operator delete(v13);
    v12 = *a1;
  }

  *(a1 + 8) = prime;
  bzero(v12, 8 * prime);
  v15 = a1 + 16;
  v14 = *(a1 + 16);
  if (v14)
  {
    v16 = v14[1];
    v17 = prime - 1;
    if ((prime & (prime - 1)) != 0)
    {
      if (v16 >= prime)
      {
        v16 %= prime;
      }

      v12[v16] = v15;
      for (i = *v14; *v14; i = *v14)
      {
        v41 = i[1];
        if (v41 >= prime)
        {
          v41 %= prime;
        }

        if (v41 == v16)
        {
          v14 = i;
        }

        else
        {
          v42 = i;
          if (v12[v41])
          {
            do
            {
              v43 = v42;
              v42 = *v42;
            }

            while (v42 && *(i + 4) == *(v42 + 4));
            *v14 = v42;
            *v43 = *v12[v41];
            *v12[v41] = i;
          }

          else
          {
            v12[v41] = v14;
            v14 = i;
            v16 = v41;
          }
        }
      }
    }

    else
    {
      v18 = v16 & v17;
      v12[v18] = v15;
      for (j = *v14; *v14; j = *v14)
      {
        v20 = j[1] & v17;
        if (v20 == v18)
        {
          v14 = j;
        }

        else
        {
          v21 = j;
          if (v12[v20])
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21 && *(j + 4) == *(v21 + 4));
            *v14 = v21;
            *v22 = *v12[v20];
            *v12[v20] = j;
          }

          else
          {
            v12[v20] = v14;
            v14 = j;
            v18 = v20;
          }
        }
      }
    }
  }

  v5 = prime;
LABEL_42:
  v29 = vcnt_s8(v5);
  v29.i16[0] = vaddlv_u8(v29);
  v27 = v29.u32[0];
  if (v29.u32[0] >= 2uLL)
  {
    goto LABEL_72;
  }

LABEL_43:
  v30 = (v5 - 1) & v4;
  v31 = *a1;
  v32 = *(*a1 + 8 * v30);
  if (!v32)
  {
    v36 = 0;
    v40 = *(a2 + 8);
    goto LABEL_64;
  }

  v33 = 0;
  while (1)
  {
    v36 = v32;
    v32 = *v32;
    if (!v32)
    {
      break;
    }

    v37 = v32[1];
    if ((v37 & (v5 - 1)) != v30)
    {
      break;
    }

    if (v37 == v4)
    {
      v34 = (*(v32 + 4) == *(a2 + 16)) != (v33 & 1);
      v35 = v33 & v34;
      v33 |= v34;
      if (v35)
      {
        break;
      }
    }

    else
    {
      v38 = (v33 & 1) != 0;
      v39 = v33 & v38;
      v33 |= v38;
      if (v39)
      {
        break;
      }
    }
  }

LABEL_50:
  v40 = *(a2 + 8);
  if (v27 <= 1)
  {
LABEL_64:
    v40 &= v5 - 1;
    goto LABEL_86;
  }

  if (v40 >= v5)
  {
LABEL_85:
    v40 %= v5;
  }

LABEL_86:
  if (!v36)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v31[v40] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_100;
    }

    v55 = *(*a2 + 8);
    if (v27 > 1)
    {
      if (v55 >= v5)
      {
        v55 %= v5;
      }
    }

    else
    {
      v55 &= v5 - 1;
    }

LABEL_99:
    v31[v55] = a2;
    goto LABEL_100;
  }

  *a2 = *v36;
  *v36 = a2;
  if (*a2)
  {
    v55 = *(*a2 + 8);
    if (v27 > 1)
    {
      if (v55 >= v5)
      {
        v55 %= v5;
      }
    }

    else
    {
      v55 &= v5 - 1;
    }

    if (v55 != v40)
    {
      goto LABEL_99;
    }
  }

LABEL_100:
  ++*(a1 + 24);
}

void std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__deallocate_node(void **__p)
{
  do
  {
    v2 = *__p;
    v3 = __p[3];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(__p);
    __p = v2;
  }

  while (v2);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[3];
      if (v3)
      {
        _Block_release(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void Bsp::BspCommandDriver::~BspCommandDriver(Bsp::BspCommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::ofstream::~ofstream(void *a1)
{
  v1 = MEMORY[0x1E69E54D0];
  v2 = *MEMORY[0x1E69E54D0];
  *a1 = *MEMORY[0x1E69E54D0];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x1E6926FD0](a1 + 1);

  return std::ostream::~ostream();
}

void *std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0>,__CFData const* ()(std::shared_ptr<ACFUFirmware>)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5F06018;
  return result;
}

ACFULogging *std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0>,__CFData const* ()(std::shared_ptr<ACFUFirmware>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v28 = *a2;
  v2 = *a2;
  v29 = v3;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (!v2)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: BTI stage: NULL FW param. Should never happen\n", "BasebandUpdaterTransport", "operator()");
    v6 = 0;
    if (!v3)
    {
      return v6;
    }

    goto LABEL_35;
  }

  v4 = __dynamic_cast(v2, MEMORY[0x1E698C0F0], MEMORY[0x1E698C100], 0);
  if (v4)
  {
    v33 = v4;
    v34 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  GetBasebandTatsuTagToFileNameMap(&v30);
  v7 = v31;
  if (!v31)
  {
LABEL_14:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v8 = *(v7 + 4);
      if (v8 <= @"Cellular1,LLB")
      {
        break;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    if (v8 >= @"Cellular1,LLB")
    {
      break;
    }

    v7 = *(v7 + 1);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  RTKitFirmware::getFileOffsetByFileName();
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v30, v31);
  if ((v32 & 0x100000000) == 0)
  {
    v14 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v14, 2, "%s::%s: BTI stage: failed to get the iBoot offset from the FW\n", "BasebandUpdaterTransport", "operator()");
    goto LABEL_32;
  }

  v10 = ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage(v10, 3, "%s::%s: BTI stage: iBoot offset: %d\n", "BasebandUpdaterTransport", "operator()", v32);
  v11 = v33;
  GetBasebandTatsuTagToFileNameMap(&v30);
  v12 = v31;
  if (!v31)
  {
LABEL_22:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v13 = *(v12 + 4);
      if (v13 <= @"Cellular1,LLB")
      {
        break;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    if (v13 >= @"Cellular1,LLB")
    {
      break;
    }

    v12 = *(v12 + 1);
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  v15 = (*(*v11 + 40))(v11, v12 + 40);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v30, v31);
  if (!v15)
  {
    v26 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v26, 2, "%s::%s: BTI stage: failed to get the iBoot size from the FW\n", "BasebandUpdaterTransport", "operator()");
LABEL_32:
    v6 = 0;
    v25 = v34;
    if (!v34)
    {
      goto LABEL_34;
    }

LABEL_33:
    if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
      v3 = v29;
      if (!v29)
      {
        return v6;
      }

      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v17 = ACFULogging::getLogInstance(v16);
  v18 = ACFULogging::handleMessage(v17, 3, "%s::%s: BTI stage: iBoot size: %d\n", "BasebandUpdaterTransport", "operator()", v15);
  v19 = v32;
  v20 = ACFULogging::getLogInstance(v18);
  ACFULogging::handleMessage(v20, 3, "%s::%s: BTI stage: 4K-aligned total sub-mapping size: %zu\n", "BasebandUpdaterTransport", "operator()", ((v19 + v15) + 4095) & 0x1FFFFF000);
  TypeID = ACFUFirmware::copyFWContainerFromOffset(v28);
  v6 = TypeID;
  if (TypeID && (v22 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v22 == TypeID))
  {
    v23 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v23, 3, "%s::%s: BTI stage: successfully obtained FTAB sub-mapping containing up to the end of iBoot\n", "BasebandUpdaterTransport", "operator()");
  }

  else
  {
    v24 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v24, 2, "%s::%s: BTI stage: failed to obtain FTAB sub-mapping containing up to the end of iBoot\n", "BasebandUpdaterTransport", "operator()");
    v6 = 0;
  }

  v25 = v34;
  if (v34)
  {
    goto LABEL_33;
  }

LABEL_34:
  v3 = v29;
  if (!v29)
  {
    return v6;
  }

LABEL_35:
  if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return v6;
}

void sub_1E5370330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 48);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5370374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a15, a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v16 - 48);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_0>,__CFData const* ()(std::shared_ptr<ACFUFirmware>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1>,std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5F060A8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1>,std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F060A8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1>,std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::operator()(uint64_t a1@<X0>, char *a2@<X1>, BasebandRestore *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 176);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v5 = std::__shared_weak_count::lock(v5);
  v7 = v5;
  if (!v5 || (v5 = *(v4 + 168)) == 0)
  {
LABEL_6:
    LogInstance = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: BasebandRestore object is no longer available. Should never happen.\n", "BasebandUpdaterTransport", "operator()");
    *a3 = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_7;
  }

  BasebandRestore::handleRTIClientImage(v5, a2, a3);
LABEL_7:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1E5370598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1,std::allocator<BasebandUpdaterTransport::init(std::shared_ptr<ACFUDiagnostics>,std::weak_ptr<BasebandRestore>,BasebandUpdaterTransport::Parameters)::$_1>,std::unique_ptr<ACFUDataContainer> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN24BasebandUpdaterTransport4initENSt3__110shared_ptrI15ACFUDiagnosticsEENS0_8weak_ptrI15BasebandRestoreEENS_10ParametersEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *_ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher6notifyEbNS_8functionIFvvEEEEd_UlvE_NS_9allocatorIS7_EES5_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5F06138;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher6notifyEbNS_8functionIFvvEEEEd_UlvE_NS_9allocatorIS7_EES5_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E53953ECLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E53953ECLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53953ECLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53953ECLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *_ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher4waitEjNS_8functionIFbvEEEEd_UlvE_NS_9allocatorIS7_EES5_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5F061B8;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher4waitEjNS_8functionIFbvEEEEd_UlvE_NS_9allocatorIS7_EES5_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E53954A1)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E53954A1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53954A1))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53954A1 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F06238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5F06288;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::~__func(void *__p)
{
  *__p = &unk_1F5F06288;
  v2 = __p[1];
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_1F5F06288;
  v2[1] = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  v2[2] = *(a1 + 16);
  return v2;
}

CFTypeRef std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::__clone(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  *a2 = &unk_1F5F06288;
  a2[1] = result;
  if (result)
  {
    result = CFRetain(result);
  }

  a2[2] = *(a1 + 16);
  return result;
}

void std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(__p);
}

void std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::operator()(std::string *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v148 = *MEMORY[0x1E69E9840];
  size = a1->__r_.__value_.__l.__size_;
  v4 = a1->__r_.__value_.__r.__words[2];
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  memset(&v103, 0, sizeof(v103));
  if (!size)
  {
    goto LABEL_7;
  }

  v7 = *(a2 + 23);
  v8 = v7;
  v9 = *(a2 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  if (v10 != 4)
  {
    if (!v10)
    {
LABEL_7:
      *(&v103.__r_.__value_.__s + 23) = 12;
      LODWORD(v103.__r_.__value_.__r.__words[1]) = 1953391981;
      v103.__r_.__value_.__r.__words[0] = *"Bad argument";
      goto LABEL_206;
    }

LABEL_11:
    if (v4[3])
    {
      goto LABEL_134;
    }

    bzero(buffer, 0x400uLL);
    CFStringGetCString(size, buffer, 1024, 0x8000100u);
    memset(__dst, 170, sizeof(__dst));
    v12 = strlen(buffer);
    if (v12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v12 | 7) + 1;
      }

      v14 = operator new(v15);
      __dst[1] = v13;
      __dst[2] = (v15 | 0x8000000000000000);
      __dst[0] = v14;
    }

    else
    {
      HIBYTE(__dst[2]) = v12;
      v14 = __dst;
      if (!v12)
      {
LABEL_25:
        *(v13 + v14) = 0;
        memset(__b, 170, sizeof(__b));
        v16 = SHIBYTE(__dst[2]);
        if (SHIBYTE(__dst[2]) >= 0)
        {
          v17 = HIBYTE(__dst[2]);
        }

        else
        {
          v17 = __dst[1];
        }

        v18 = v17 + 1;
        if (v17 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v18 < 0x17)
        {
          *&v129 = 0;
          v128[1] = 0;
          v128[0] = 0;
          v20 = v128;
          BYTE7(v129) = v17 + 1;
          if (!v17)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if ((v18 | 7) == 0x17)
          {
            v19 = 25;
          }

          else
          {
            v19 = (v18 | 7) + 1;
          }

          v20 = operator new(v19);
          *&v129 = v19 | 0x8000000000000000;
          v128[0] = v20;
          v128[1] = (v17 + 1);
        }

        if (v16 >= 0)
        {
          v21 = __dst;
        }

        else
        {
          v21 = __dst[0];
        }

        memmove(v20, v21, v17);
LABEL_39:
        *&v20[v17] = 47;
        v22 = SBYTE7(v129);
        if ((SBYTE7(v129) & 0x8000000000000000) != 0)
        {
          v22 = v128[1];
          v24 = (v129 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v24 - v128[1] < 7)
          {
            v18 = v128[1] + 7;
            if ((0x7FFFFFFFFFFFFFF7 - (v129 & 0x7FFFFFFFFFFFFFFFLL)) < v128[1] - v24 + 7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v23 = v128[0];
            if (v24 > 0x3FFFFFFFFFFFFFF2)
            {
              v28 = 0;
              v27 = 0x7FFFFFFFFFFFFFF7;
LABEL_54:
              v29 = operator new(v27);
              v30 = v29;
              if (v22)
              {
                memmove(v29, v23, v22);
              }

              v31 = &v30[v22];
              *(v31 + 3) = 1852400174;
              *v31 = 779383908;
              if (!v28)
              {
                operator delete(v23);
              }

              *&v129 = v27 | 0x8000000000000000;
              v128[0] = v30;
              v128[1] = v18;
              v32 = &v30[v18];
LABEL_65:
              *v32 = 0;
              *__p = *v128;
              *&v107 = v129;
              *&v129 = 0;
              v128[0] = 0;
              v128[1] = 0;
              std::ifstream::basic_ifstream(__b, __p, 4);
              if (SBYTE7(v107) < 0)
              {
                operator delete(__p[0]);
                if ((SBYTE7(v129) & 0x80000000) == 0)
                {
LABEL_67:
                  if (__b[5].__r_.__value_.__r.__words[2])
                  {
LABEL_68:
                    v136 = 0xAAAAAAAAAAAAAAAALL;
                    *&v36 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v134 = v36;
                    v135 = v36;
                    v132 = v36;
                    v133 = v36;
                    v130 = v36;
                    v131 = v36;
                    *v128 = v36;
                    v129 = v36;
                    std::istream::tellg();
                    std::istream::seekg();
                    v127 = 0xAAAAAAAAAAAAAAAALL;
                    *&v37 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v125 = v37;
                    v126 = v37;
                    v123 = v37;
                    v124 = v37;
                    v121 = v37;
                    v122 = v37;
                    v119 = v37;
                    v120 = v37;
                    std::istream::tellg();
                    v38 = v127;
                    v39 = v136;
                    std::istream::seekg();
                    v40 = (v38 - v39) / 0x24;
                    if ((v38 - v39) % 0x24)
                    {
                      if (!*&v4[3])
                      {
LABEL_80:
                        std::string::__assign_external(&v103, "Invalid coredump translation table file", 0x27uLL);
                        goto LABEL_81;
                      }

                      v41 = v4[2];
                      if (!v41)
                      {
LABEL_77:
                        v4[2] = 0;
                        v43 = v4[1];
                        if (v43)
                        {
                          bzero(*v4, 8 * *&v43);
                        }

                        v4[3] = 0;
                        goto LABEL_80;
                      }

                      while (1)
                      {
                        v42 = *v41;
                        if (v41[63] < 0)
                        {
                          operator delete(*(v41 + 5));
                          if ((v41[39] & 0x80000000) == 0)
                          {
                            goto LABEL_73;
                          }

LABEL_76:
                          operator delete(*(v41 + 2));
                          operator delete(v41);
                          v41 = v42;
                          if (!v42)
                          {
                            goto LABEL_77;
                          }
                        }

                        else
                        {
                          if (v41[39] < 0)
                          {
                            goto LABEL_76;
                          }

LABEL_73:
                          operator delete(v41);
                          v41 = v42;
                          if (!v42)
                          {
                            goto LABEL_77;
                          }
                        }
                      }
                    }

                    if (v40 < 1)
                    {
LABEL_126:
                      v44 = 1;
                      goto LABEL_127;
                    }

                    v45 = 0;
                    while (1)
                    {
                      v118 = 0;
                      memset(&v117[1], 0, 32);
                      std::istream::read();
                      if ((*(&__b[1].__r_.__value_.__r.__words[1] + *(__b[0].__r_.__value_.__r.__words[0] - 24)) & 5) != 0)
                      {
                        v115 = 0xAAAAAAAAAAAAAAAALL;
                        *&v94 = 0xAAAAAAAAAAAAAAAALL;
                        *(&v94 + 1) = 0xAAAAAAAAAAAAAAAALL;
                        v114[7] = v94;
                        v114[8] = v94;
                        v114[5] = v94;
                        v114[6] = v94;
                        v114[3] = v94;
                        v114[4] = v94;
                        v114[1] = v94;
                        v114[2] = v94;
                        v113 = v94;
                        v114[0] = v94;
                        *v111 = v94;
                        v112 = v94;
                        v109 = v94;
                        v110 = v94;
                        v107 = v94;
                        v108 = v94;
                        *__p = v94;
                        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
                        v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v107, "Failed to read coredump translation table entry instance ", 57);
                        MEMORY[0x1E69270D0](v95, v45);
                        if ((BYTE8(v113) & 0x10) != 0)
                        {
                          v98 = v113;
                          if (v113 < *(&v110 + 1))
                          {
                            *&v113 = *(&v110 + 1);
                            v98 = *(&v110 + 1);
                          }

                          v99 = &v110;
                        }

                        else
                        {
                          if ((BYTE8(v113) & 8) == 0)
                          {
                            v96 = 0;
                            *(&v105.__r_.__value_.__s + 23) = 0;
                            v97 = &v105;
                            goto LABEL_232;
                          }

                          v99 = &v108 + 1;
                          v98 = *(&v109 + 1);
                        }

                        v100 = *v99;
                        v96 = v98 - *v99;
                        if (v96 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        if (v96 >= 0x17)
                        {
                          if ((v96 | 7) == 0x17)
                          {
                            v101 = 25;
                          }

                          else
                          {
                            v101 = (v96 | 7) + 1;
                          }

                          v97 = operator new(v101);
                          v105.__r_.__value_.__l.__size_ = v96;
                          v105.__r_.__value_.__r.__words[2] = v101 | 0x8000000000000000;
                          v105.__r_.__value_.__r.__words[0] = v97;
                        }

                        else
                        {
                          *(&v105.__r_.__value_.__s + 23) = v98 - *v99;
                          v97 = &v105;
                          if (!v96)
                          {
LABEL_232:
                            v97->__r_.__value_.__s.__data_[v96] = 0;
                            if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v103.__r_.__value_.__l.__data_);
                            }

                            v103 = v105;
                            __p[0] = *MEMORY[0x1E69E54D8];
                            v102 = *(MEMORY[0x1E69E54D8] + 72);
                            *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
                            *&v107 = v102;
                            *(&v107 + 1) = MEMORY[0x1E69E5548] + 16;
                            if (SHIBYTE(v112) < 0)
                            {
                              operator delete(v111[1]);
                            }

                            *(&v107 + 1) = MEMORY[0x1E69E5538] + 16;
                            std::locale::~locale(&v108);
                            std::iostream::~basic_iostream();
                            MEMORY[0x1E69273B0](v114);
LABEL_81:
                            v44 = 0;
LABEL_127:
                            if (!std::filebuf::close())
                            {
                              std::ios_base::clear((__b + *(__b[0].__r_.__value_.__r.__words[0] - 24)), *(&__b[1].__r_.__value_.__r.__words[1] + *(__b[0].__r_.__value_.__r.__words[0] - 24)) | 4);
                            }

LABEL_129:
                            __b[0].__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54C8];
                            *(__b[0].__r_.__value_.__r.__words + *(__b[0].__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
                            MEMORY[0x1E6926FD0](&__b[0].__r_.__value_.__r.__words[2]);
                            std::istream::~istream();
                            a1 = MEMORY[0x1E69273B0](&__b[17].__r_.__value_.__r.__words[2]);
                            if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
                            {
                              if (!v44)
                              {
                                goto LABEL_206;
                              }

LABEL_133:
                              v7 = *(a2 + 23);
                              v9 = *(a2 + 8);
                              v8 = *(a2 + 23);
LABEL_134:
                              if (v8 >= 0)
                              {
                                v57 = a2;
                              }

                              else
                              {
                                v57 = *a2;
                              }

                              if (v8 >= 0)
                              {
                                v58 = v7;
                              }

                              else
                              {
                                v58 = v9;
                              }

                              v59 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](buffer, v57, v58);
                              v60 = v4[1];
                              if (v60)
                              {
                                v61 = v59;
                                v62 = vcnt_s8(v60);
                                v62.i16[0] = vaddlv_u8(v62);
                                if (v62.u32[0] > 1uLL)
                                {
                                  v63 = v59;
                                  if (v59 >= *&v60)
                                  {
                                    v63 = v59 % *&v60;
                                  }
                                }

                                else
                                {
                                  v63 = (*&v60 - 1) & v59;
                                }

                                v64 = *(*v4 + 8 * v63);
                                if (v64)
                                {
                                  v65 = *v64;
                                  if (*v64)
                                  {
                                    v66 = *(a2 + 23);
                                    if (v66 >= 0)
                                    {
                                      v67 = *(a2 + 23);
                                    }

                                    else
                                    {
                                      v67 = *(a2 + 8);
                                    }

                                    if (v66 >= 0)
                                    {
                                      v68 = a2;
                                    }

                                    else
                                    {
                                      v68 = *a2;
                                    }

                                    if (v62.u32[0] < 2uLL)
                                    {
                                      v69 = *&v60 - 1;
                                      while (1)
                                      {
                                        v74 = v65[1];
                                        if (v74 == v61)
                                        {
                                          v75 = *(v65 + 39);
                                          v76 = v75;
                                          if (v75 < 0)
                                          {
                                            v75 = v65[3];
                                          }

                                          if (v75 == v67)
                                          {
                                            v77 = v76 >= 0 ? (v65 + 2) : v65[2];
                                            if (!memcmp(v77, v68, v67))
                                            {
                                              goto LABEL_178;
                                            }
                                          }
                                        }

                                        else if ((v74 & v69) != v63)
                                        {
                                          goto LABEL_181;
                                        }

                                        v65 = *v65;
                                        if (!v65)
                                        {
                                          goto LABEL_181;
                                        }
                                      }
                                    }

                                    do
                                    {
                                      v70 = v65[1];
                                      if (v70 == v61)
                                      {
                                        v71 = *(v65 + 39);
                                        v72 = v71;
                                        if (v71 < 0)
                                        {
                                          v71 = v65[3];
                                        }

                                        if (v71 == v67)
                                        {
                                          v73 = v72 >= 0 ? (v65 + 2) : v65[2];
                                          if (!memcmp(v73, v68, v67))
                                          {
LABEL_178:
                                            *buffer = a2;
                                            v78 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, a2, buffer);
                                            if (v78 + 5 != a3)
                                            {
                                              if (*(v78 + 63) < 0)
                                              {
                                                std::string::__assign_no_alias<true>(a3, v78[5], v78[6]);
                                              }

                                              else
                                              {
                                                v79 = *(v78 + 5);
                                                *(a3 + 2) = v78[7];
                                                *a3 = v79;
                                              }
                                            }

                                            goto LABEL_210;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        if (v70 >= *&v60)
                                        {
                                          v70 %= *&v60;
                                        }

                                        if (v70 != v63)
                                        {
                                          break;
                                        }
                                      }

                                      v65 = *v65;
                                    }

                                    while (v65);
                                  }
                                }
                              }

LABEL_181:
                              v147 = 0xAAAAAAAAAAAAAAAALL;
                              *&v80 = 0xAAAAAAAAAAAAAAAALL;
                              *(&v80 + 1) = 0xAAAAAAAAAAAAAAAALL;
                              v146[8] = v80;
                              v146[7] = v80;
                              v146[6] = v80;
                              v146[5] = v80;
                              v146[4] = v80;
                              v146[3] = v80;
                              v146[2] = v80;
                              v146[1] = v80;
                              v146[0] = v80;
                              v145 = v80;
                              v144 = v80;
                              *v143 = v80;
                              v142 = v80;
                              v141 = v80;
                              v140 = v80;
                              v139 = v80;
                              *buffer = v80;
                              std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buffer);
                              v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v139, "Tag (", 5);
                              v82 = *(a2 + 23);
                              if (v82 >= 0)
                              {
                                v83 = a2;
                              }

                              else
                              {
                                v83 = *a2;
                              }

                              if (v82 >= 0)
                              {
                                v84 = *(a2 + 23);
                              }

                              else
                              {
                                v84 = *(a2 + 8);
                              }

                              v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v83, v84);
                              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, ") not found in coredump translation table", 41);
                              if ((BYTE8(v145) & 0x10) != 0)
                              {
                                v88 = v145;
                                if (v145 < *(&v142 + 1))
                                {
                                  *&v145 = *(&v142 + 1);
                                  v88 = *(&v142 + 1);
                                }

                                v89 = v142;
                                v86 = v88 - v142;
                                if ((v88 - v142) > 0x7FFFFFFFFFFFFFF7)
                                {
                                  goto LABEL_214;
                                }
                              }

                              else
                              {
                                if ((BYTE8(v145) & 8) == 0)
                                {
                                  v86 = 0;
                                  *(&__b[0].__r_.__value_.__s + 23) = 0;
                                  v87 = __b;
                                  goto LABEL_201;
                                }

                                v89 = *(&v140 + 1);
                                v86 = *(&v141 + 1) - *(&v140 + 1);
                                if (*(&v141 + 1) - *(&v140 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
                                {
LABEL_214:
                                  std::string::__throw_length_error[abi:ne200100]();
                                }
                              }

                              if (v86 >= 0x17)
                              {
                                if ((v86 | 7) == 0x17)
                                {
                                  v90 = 25;
                                }

                                else
                                {
                                  v90 = (v86 | 7) + 1;
                                }

                                v87 = operator new(v90);
                                __b[0].__r_.__value_.__r.__words[2] = v90 | 0x8000000000000000;
                                __b[0].__r_.__value_.__r.__words[0] = v87;
                                __b[0].__r_.__value_.__l.__size_ = v86;
                              }

                              else
                              {
                                *(&__b[0].__r_.__value_.__s + 23) = v86;
                                v87 = __b;
                                if (!v86)
                                {
                                  goto LABEL_201;
                                }
                              }

                              memmove(v87, v89, v86);
LABEL_201:
                              v87->__r_.__value_.__s.__data_[v86] = 0;
                              if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v103.__r_.__value_.__l.__data_);
                              }

                              v103 = __b[0];
                              *buffer = *MEMORY[0x1E69E54D8];
                              v91 = *(MEMORY[0x1E69E54D8] + 72);
                              *&buffer[*(*buffer - 24)] = *(MEMORY[0x1E69E54D8] + 64);
                              *&v139 = v91;
                              *(&v139 + 1) = MEMORY[0x1E69E5548] + 16;
                              if (SHIBYTE(v144) < 0)
                              {
                                operator delete(v143[1]);
                              }

                              *(&v139 + 1) = MEMORY[0x1E69E5538] + 16;
                              std::locale::~locale(&v140);
                              std::iostream::~basic_iostream();
                              a1 = MEMORY[0x1E69273B0](v146);
                              goto LABEL_206;
                            }

                            operator delete(__dst[0]);
                            if (v44)
                            {
                              goto LABEL_133;
                            }

LABEL_206:
                            LogInstance = ACFULogging::getLogInstance(a1);
                            if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v93 = &v103;
                            }

                            else
                            {
                              v93 = v103.__r_.__value_.__r.__words[0];
                            }

                            ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to get filename for tag: %s\n", "BasebandUpdaterTransport", "operator()", v93);
                            goto LABEL_210;
                          }
                        }

                        memmove(v97, v100, v96);
                        goto LABEL_232;
                      }

                      __p[1] = 0xAAAAAAAAAAAAAAAALL;
                      *&v107 = 0x4AAAAAAAAAAAAAALL;
                      __p[0] = (LODWORD(v117[1]) | 0xAAAAAA0000000000);
                      if (LOBYTE(v117[1]) != 67)
                      {
                        __p[0] = (v18 & 0xFFFFFF0000000000 | bswap32(v117[1]));
                        v18 = __p[0] & 0xFFFFFF00FFFFFF00;
                      }

                      memset(&v105, 170, sizeof(v105));
                      v46 = strlen(&v117[1] + 4);
                      if (v46 > 0x7FFFFFFFFFFFFFF7)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v47 = v46;
                      if (v46 >= 0x17)
                      {
                        if ((v46 | 7) == 0x17)
                        {
                          v52 = 25;
                        }

                        else
                        {
                          v52 = (v46 | 7) + 1;
                        }

                        v48 = operator new(v52);
                        v105.__r_.__value_.__l.__size_ = v47;
                        v105.__r_.__value_.__r.__words[2] = v52 | 0x8000000000000000;
                        v105.__r_.__value_.__r.__words[0] = v48;
                      }

                      else
                      {
                        *(&v105.__r_.__value_.__s + 23) = v46;
                        v48 = &v105;
                        if (!v46)
                        {
                          v105.__r_.__value_.__s.__data_[0] = 0;
                          v49 = SHIBYTE(v105.__r_.__value_.__r.__words[2]);
                          if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_96;
                          }

                          goto LABEL_110;
                        }
                      }

                      memcpy(v48, &v117[1] + 4, v47);
                      v48->__r_.__value_.__s.__data_[v47] = 0;
                      v49 = SHIBYTE(v105.__r_.__value_.__r.__words[2]);
                      if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_96:
                        if (v49 == 17)
                        {
                          v50 = v105.__r_.__value_.__r.__words[0] == 0x65725F6873617263 && v105.__r_.__value_.__l.__size_ == 0x6F736A2E74726F70;
                          if (v50 && v105.__r_.__value_.__s.__data_[16] == 110)
                          {
                            goto LABEL_119;
                          }
                        }

                        v104 = v105;
                        goto LABEL_120;
                      }

LABEL_110:
                      if (v105.__r_.__value_.__l.__size_ == 17)
                      {
                        v53 = *v105.__r_.__value_.__l.__data_ == 0x65725F6873617263 && *(v105.__r_.__value_.__r.__words[0] + 8) == 0x6F736A2E74726F70;
                        if (v53 && *(v105.__r_.__value_.__r.__words[0] + 16) == 110)
                        {
LABEL_119:
                          *(&v104.__r_.__value_.__s + 23) = 11;
                          strcpy(&v104, "report.json");
                          goto LABEL_120;
                        }
                      }

                      std::string::__init_copy_ctor_external(&v104, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
LABEL_120:
                      v117[0] = __p;
                      v55 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, __p, v117);
                      if (*(v55 + 63) < 0)
                      {
                        v56 = v55;
                        operator delete(v55[5]);
                        *(v56 + 5) = v104;
                        if (v49 < 0)
                        {
                          goto LABEL_87;
                        }

LABEL_124:
                        if ((SBYTE7(v107) & 0x80000000) == 0)
                        {
                          goto LABEL_88;
                        }

LABEL_125:
                        operator delete(__p[0]);
                        v45 = (v45 + 1);
                        if (v40 == v45)
                        {
                          goto LABEL_126;
                        }
                      }

                      else
                      {
                        *(v55 + 5) = v104;
                        if ((v49 & 0x80000000) == 0)
                        {
                          goto LABEL_124;
                        }

LABEL_87:
                        operator delete(v105.__r_.__value_.__l.__data_);
                        if (SBYTE7(v107) < 0)
                        {
                          goto LABEL_125;
                        }

LABEL_88:
                        v45 = (v45 + 1);
                        if (v40 == v45)
                        {
                          goto LABEL_126;
                        }
                      }
                    }
                  }

LABEL_84:
                  v44 = 1;
                  goto LABEL_129;
                }
              }

              else if ((SBYTE7(v129) & 0x80000000) == 0)
              {
                goto LABEL_67;
              }

              operator delete(v128[0]);
              if (__b[5].__r_.__value_.__r.__words[2])
              {
                goto LABEL_68;
              }

              goto LABEL_84;
            }

LABEL_45:
            v25 = 2 * v24;
            if (v18 > 2 * v24)
            {
              v25 = v18;
            }

            if ((v25 | 7) == 0x17)
            {
              v26 = 25;
            }

            else
            {
              v26 = (v25 | 7) + 1;
            }

            if (v25 >= 0x17)
            {
              v27 = v26;
            }

            else
            {
              v27 = 23;
            }

            v28 = v24 == 22;
            goto LABEL_54;
          }

          v33 = v128[0];
        }

        else
        {
          if ((SBYTE7(v129) - 16) < 7)
          {
            v18 = SBYTE7(v129) + 7;
            v23 = v128;
            v24 = 22;
            goto LABEL_45;
          }

          v33 = v128;
        }

        v34 = (v33 + v22);
        *(v34 + 3) = 1852400174;
        *v34 = 779383908;
        v35 = v22 + 7;
        if (SBYTE7(v129) < 0)
        {
          v128[1] = (v22 + 7);
        }

        else
        {
          BYTE7(v129) = v35 & 0x7F;
        }

        v32 = v33 + v35;
        goto LABEL_65;
      }
    }

    memcpy(v14, buffer, v13);
    goto LABEL_25;
  }

  v11 = *a2;
  if ((v7 & 0x80u) == 0)
  {
    v11 = a2;
  }

  if (*v11 != 808469571)
  {
    goto LABEL_11;
  }

  if (a3 != "dtt.bin")
  {
    *(a3 + 2) = 0x700000000000000;
    *a3 = *"dtt.bin";
  }

  if (v4[3])
  {
    a1 = std::string::__assign_external(&v103, "Duplicate coredump translation file received", 0x2CuLL);
    goto LABEL_206;
  }

LABEL_210:
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }
}

void sub_1E5371AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  std::ifstream::~ifstream(&STACK[0x300]);
  MEMORY[0x1E69273B0](&STACK[0x4A8]);
  if (a65 < 0)
  {
    operator delete(__p);
    if (a18 < 0)
    {
LABEL_6:
      operator delete(a13);
      if ((*(v65 + 23) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      operator delete(*v65);
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_6;
  }

  if ((*(v65 + 23) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t std::__function::__func<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<BasebandUpdaterTransport::collectCoredump(std::shared_ptr<ACFUFirmware>)::$_0>,std::string ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, uint64_t *a2, __int128 **a3)
{
  v4 = a2;
  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v43, a2, v7);
  v9 = v8;
  v10 = *(a1 + 1);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v8;
      if (v8 >= v10)
      {
        v12 = v8 % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v12);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *(v4 + 23);
        if (v15 >= 0)
        {
          v16 = *(v4 + 23);
        }

        else
        {
          v16 = v4[1];
        }

        if (v15 < 0)
        {
          v4 = *v4;
        }

        if (v11.u32[0] < 2uLL)
        {
          while (1)
          {
            v21 = v14[1];
            if (v21 == v9)
            {
              v22 = *(v14 + 39);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = v14[3];
              }

              if (v22 == v16)
              {
                v24 = v23 >= 0 ? v14 + 2 : v14[2];
                if (!memcmp(v24, v4, v16))
                {
                  return v14;
                }
              }
            }

            else if ((v21 & (v10 - 1)) != v12)
            {
              goto LABEL_43;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v17 = v14[1];
          if (v17 == v9)
          {
            v18 = *(v14 + 39);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = v14[3];
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? v14 + 2 : v14[2];
              if (!memcmp(v20, v4, v16))
              {
                return v14;
              }
            }
          }

          else
          {
            if (v17 >= v10)
            {
              v17 %= v10;
            }

            if (v17 != v12)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_43:
  v25 = operator new(0x40uLL);
  v43[0] = v25;
  v43[1] = a1;
  v44 = 0;
  *v25 = 0;
  *(v25 + 1) = v9;
  v26 = *a3;
  if (*(*a3 + 23) < 0)
  {
    v28 = v25;
    std::string::__init_copy_ctor_external((v25 + 16), *v26, *(v26 + 1));
    v25 = v28;
  }

  else
  {
    v27 = *v26;
    *(v25 + 4) = *(v26 + 2);
    *(v25 + 1) = v27;
  }

  *(v25 + 5) = 0;
  *(v25 + 6) = 0;
  *(v25 + 7) = 0;
  LOBYTE(v44) = 1;
  v29 = (*(a1 + 3) + 1);
  v30 = a1[8];
  if (v10 && (v30 * v10) >= v29)
  {
    goto LABEL_74;
  }

  v31 = 1;
  if (v10 >= 3)
  {
    v31 = (v10 & (v10 - 1)) != 0;
  }

  v32 = v31 | (2 * v10);
  v33 = vcvtps_u32_f32(v29 / v30);
  if (v32 <= v33)
  {
    prime = v33;
  }

  else
  {
    prime = v32;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v35 = *(a1 + 2);
  if (prime > *&v35)
  {
    goto LABEL_58;
  }

  if (prime < *&v35)
  {
    v36 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
    if (*&v35 < 3uLL || (v37 = vcnt_s8(v35), v37.i16[0] = vaddlv_u8(v37), v37.u32[0] > 1uLL))
    {
      v36 = std::__next_prime(v36);
    }

    else
    {
      v38 = 1 << -__clz(v36 - 1);
      if (v36 >= 2)
      {
        v36 = v38;
      }
    }

    if (prime <= v36)
    {
      prime = v36;
    }

    if (prime < *&v35)
    {
LABEL_58:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
    }
  }

  v10 = *(a1 + 1);
  if ((v10 & (v10 - 1)) != 0)
  {
    if (v9 >= v10)
    {
      v12 = v9 % v10;
      v39 = *a1;
      v40 = *(*a1 + 8 * (v9 % v10));
      if (!v40)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }

    v12 = v9;
LABEL_74:
    v39 = *a1;
    v40 = *(*a1 + 8 * v12);
    if (!v40)
    {
      goto LABEL_79;
    }

    goto LABEL_75;
  }

  v12 = (v10 - 1) & v9;
  v39 = *a1;
  v40 = *(*a1 + 8 * v12);
  if (!v40)
  {
LABEL_79:
    v14 = v43[0];
    *v43[0] = *(a1 + 2);
    *(a1 + 2) = v14;
    *(v39 + 8 * v12) = a1 + 4;
    if (*v14)
    {
      v42 = *(*v14 + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v42 >= v10)
        {
          v42 %= v10;
        }

        *(v39 + 8 * v42) = v14;
      }

      else
      {
        *(v39 + 8 * (v42 & (v10 - 1))) = v14;
      }
    }

    goto LABEL_76;
  }

LABEL_75:
  v14 = v43[0];
  *v43[0] = *v40;
  *v40 = v14;
LABEL_76:
  ++*(a1 + 3);
  return v14;
}

void sub_1E53720E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E53720F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x1E69E54C8];
  v2 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x1E6926FD0](a1 + 2);

  return std::istream::~istream();
}

uint64_t __cxx_global_var_init_44()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void *getReverseProxySettings@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3812000000;
  v24[3] = __Block_byref_object_copy__4;
  v24[4] = __Block_byref_object_dispose__4;
  v24[5] = "";
  v4 = operator new(0x90uLL);
  *(v4 + 1) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_1F5F05418;
  v25[0] = v4;
  std::mutex::lock((v4 + 24));
  v5 = *(v4 + 34);
  if ((v5 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  *(v4 + 34) = v5 | 2;
  std::mutex::unlock((v4 + 24));
  cf = 0xAAAAAAAAAAAAAAAALL;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a1, *(a1 + 8));
  }

  else
  {
    v22 = *a1;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v22;
  }

  v25[1] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v26;
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v28 = v27;
  }

  v6 = *MEMORY[0x1E695E480];
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if (ctu::cf::convert_copy())
  {
    v7 = CFURLCreateWithString(v6, v29, 0);
    CFRelease(v29);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    cf = v7;
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_41:
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_40:
  operator delete(v27.__r_.__value_.__l.__data_);
  cf = v7;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_41;
  }

LABEL_18:
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_42:
  operator delete(v22.__r_.__value_.__l.__data_);
LABEL_19:
  v8 = RPRegisterForAvailability();
  v9 = v8;
  if (v8)
  {
    v10 = *(a1 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a1 + 8);
    }

    if (v10 && cf)
    {
      RPRegistrationResume();
      v28.__r_.__value_.__r.__words[0] = std::chrono::steady_clock::now().__d_.__rep_ + 5000000000;
      v11 = std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v4, &v28);
      v12 = RPRegistrationInvalidate();
      if (v11)
      {
        LogInstance = ACFULogging::getLogInstance(v12);
        ACFULogging::handleMessage(LogInstance, 2, "%s::%s: PRP timed out %d\n\n", "BasebandHttpCommon", "getReverseProxySettings", v11);
      }

      else
      {
        std::__assoc_state<BOOL>::move(v4);
        if (!atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v13;
          (*(*v4 + 16))(v4);
          v13 = v14;
        }

        if (v13)
        {
          v15 = RPCopyProxyDictionary();
          v16 = *a2;
          *a2 = v15;
          if (v16)
          {
            CFRelease(v16);
          }
        }

        else
        {
          v21 = ACFULogging::getLogInstance(v13);
          ACFULogging::handleMessage(v21, 2, "%s::%s: Failed to get PRP\n", "BasebandHttpCommon", "getReverseProxySettings");
        }

        v4 = 0;
      }
    }

    else
    {
      v18 = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(v18, 2, "%s::%s: NULL requestURL\n", "BasebandHttpCommon", "getReverseProxySettings");
    }

    CFRelease(v9);
  }

  else
  {
    v19 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v19, 2, "%s::%s: Failed to register for proxy\n", "BasebandHttpCommon", "getReverseProxySettings");
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v4 && !atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v4 + 16))(v4);
  }

  _Block_object_dispose(v24, 8);
  return std::promise<BOOL>::~promise(v25);
}

void sub_1E53726EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a23);
  _Block_object_dispose(&a24, 8);
  std::promise<BOOL>::~promise((v40 + 48));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v39);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void ___Z23getReverseProxySettingsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(ACFULogging *a1, int a2)
{
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      LogInstance = ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Proxy Available\n", "BasebandHttpCommon", "getReverseProxySettings_block_invoke");
      v5 = *(*(*(a1 + 4) + 8) + 48);
      if (!v5)
      {
        std::__throw_future_error[abi:ne200100](3u);
      }

      std::mutex::lock((v5 + 24));
      if ((*(v5 + 136) & 1) != 0 || (v8.__ptr_ = 0, v6 = *(v5 + 16), std::exception_ptr::~exception_ptr(&v8), v6))
      {
        std::__throw_future_error[abi:ne200100](2u);
      }

      *(v5 + 140) = 1;
      *(v5 + 136) |= 5u;
      std::condition_variable::notify_all((v5 + 88));
      std::mutex::unlock((v5 + 24));
    }

    else
    {
      v7 = ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage(v7, 0, "%s::%s: Proxy Aborted? %d\n", "BasebandHttpCommon", "getReverseProxySettings_block_invoke", a2);
    }
  }
}

uint64_t createPostBodyFromDictionary(const __CFAllocator *a1, const __CFDictionary *a2, const __CFData **a3)
{
  if (!a2)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: null input dictionary\n");
    return 0;
  }

  v3 = a3;
  if (!a3)
  {
    v25 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v25, 2, "%s::%s: null output dataref\n", "BasebandHttpCommon", "createPostBodyFromDictionary");
    return v3;
  }

  Mutable = CFStringCreateMutable(a1, 0);
  if (!Mutable)
  {
    v26 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v26, 2, "%s::%s: poststring creation failed\n");
    return 0;
  }

  v7 = Mutable;
  Count = CFDictionaryGetCount(a2);
  v9 = malloc(8 * Count);
  v10 = malloc(8 * Count);
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v28 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v28, 2, "%s::%s: requestDictValuesBuffer allocation failed\n");
      goto LABEL_23;
    }

    CFDictionaryGetKeysAndValues(a2, v9, v10);
    if (Count >= 1)
    {
      v13 = 0;
      while (1)
      {
        v14 = v9[v13];
        if (!v14)
        {
          v22 = ACFULogging::getLogInstance(v12);
          ACFULogging::handleMessage(v22, 2, "%s::%s: invalid requestDictKeysBuffer array\n");
          goto LABEL_23;
        }

        if (!v11[v13])
        {
          break;
        }

        CFStringAppend(v7, v14);
        CFStringAppend(v7, @"=");
        CFStringAppend(v7, v11[v13]);
        if (v13 < Count - 1)
        {
          CFStringAppend(v7, @"&");
        }

        if (Count == ++v13)
        {
          goto LABEL_13;
        }
      }

      v23 = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(v23, 2, "%s::%s: invalid requestDictValuesBuffer array\n");
LABEL_23:
      v17 = 0;
      v3 = 0;
      CFRelease(v7);
      free(v9);
      if (!v11)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_13:
    ACFULogging::getLogInstance(v12);
    v15 = operator new(0x38uLL);
    strcpy(v15, "BasebandHttpCommon::createPostBodyFromDictionary");
    __p = v15;
    ACFULogging::handleMessageCFType();
    operator delete(__p);
    Length = CFStringGetLength(v7);
    v17 = malloc(Length + 1);
    if (v17)
    {
      CString = CFStringGetCString(v7, v17, Length + 1, 0x8000100u);
      if (CString)
      {
        v19 = CFDataCreate(a1, v17, Length);
        if (v19)
        {
          v20 = v19;
          *v3 = CFRetain(v19);
          CFRelease(v7);
          v3 = 1;
          CFRelease(v20);
          free(v9);
          if (!v11)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v31 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v31, 2, "%s::%s: postData allocation failed\n");
      }

      else
      {
        v30 = ACFULogging::getLogInstance(CString);
        ACFULogging::handleMessage(v30, 2, "%s::%s: conversion of postString to c-string failed\n");
      }
    }

    else
    {
      v29 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v29, 2, "%s::%s: tmpStringBuffer allocation failure\n");
    }

    v3 = 0;
    CFRelease(v7);
    free(v9);
    if (v11)
    {
LABEL_17:
      free(v11);
    }
  }

  else
  {
    v27 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v27, 2, "%s::%s: requestDictKeysBuffer allocation failed\n", "BasebandHttpCommon", "createPostBodyFromDictionary");
    CFRelease(v7);
    v17 = 0;
    v3 = 0;
    if (v11)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  if (v17)
  {
    free(v17);
  }

  return v3;
}

void sub_1E5372DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t setHttpUriEscapedValue(const __CFAllocator *a1, __CFDictionary *a2, const __CFString *a3, CFStringRef theString)
{
  value = 0;
  result = 1005;
  if (a2 && a3 && theString)
  {
    v8 = escapeHttpUriString(a1, theString, &value);
    if (v8)
    {
      v10 = v8;
      LogInstance = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: HttpUriEscapeString failed\n", "BasebandHttpCommon", "setHttpUriEscapedValue");
      result = v10;
    }

    else if (value)
    {
      CFDictionarySetValue(a2, a3, value);
      result = 0;
    }

    else
    {
      v12 = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(v12, 2, "%s::%s: escapedValue is NULL\n", "BasebandHttpCommon", "setHttpUriEscapedValue");
      result = 1;
    }
  }

  if (value)
  {
    v9 = result;
    CFRelease(value);
    return v9;
  }

  return result;
}

uint64_t escapeHttpUriString(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3)
{
  if (!theString)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: value == NULL\n");
    return 1005;
  }

  if (!a3)
  {
    v12 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v12, 2, "%s::%s: outEscapedValue == NULL\n");
    return 1005;
  }

  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  if (MutableCopy)
  {
    v5 = MutableCopy;
    v6 = off_1E876EE90;
    v7 = 33;
    do
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      v14.length = CFStringGetLength(v5);
      v14.location = 0;
      CFStringFindAndReplace(v5, v8, v9, v14, 0);
      v6 += 2;
      --v7;
    }

    while (v7);
    *a3 = CFRetain(v5);
    CFRelease(v5);
    return 0;
  }

  else
  {
    v13 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v13, 2, "%s::%s: escapedValue == NULL\n", "BasebandHttpCommon", "escapeHttpUriString");
    return 1;
  }
}

uint64_t setHttpBase64EncodedValue(const __CFAllocator *a1, __CFDictionary *a2, const __CFString *a3, CFDataRef theData)
{
  cf = 0;
  if (!a2)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: null input dictionary\n", "BasebandHttpCommon", "setHttpBase64EncodedValue");
    return 1005;
  }

  if (a3)
  {
    if (theData)
    {
      v7 = encodeBase64(a1, theData, &cf);
      if (v7)
      {
        v13 = v7;
        v14 = ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage(v14, 2, "%s::%s: Base64Encode failed\n", "BasebandHttpCommon", "setHttpBase64EncodedValue");
        result = v13;
      }

      else if (cf)
      {
        result = setHttpUriEscapedValue(a1, a2, a3, cf);
      }

      else
      {
        v15 = ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage(v15, 2, "%s::%s: encodedValue is NULL\n", "BasebandHttpCommon", "setHttpBase64EncodedValue");
        result = 1;
      }

      goto LABEL_7;
    }

    v12 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v12, 2, "%s::%s: null input value\n");
  }

  else
  {
    v11 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v11, 2, "%s::%s: null input key\n");
  }

  result = 1005;
LABEL_7:
  if (cf)
  {
    v9 = result;
    CFRelease(cf);
    return v9;
  }

  return result;
}

uint64_t encodeBase64(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  if (!theData)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: value is NULL\n");
    return 1005;
  }

  Length = CFDataGetLength(theData);
  if (!Length)
  {
    v18 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v18, 2, "%s::%s: value length is 0\n");
    return 1005;
  }

  if (!a3)
  {
    v19 = ACFULogging::getLogInstance(Length);
    ACFULogging::handleMessage(v19, 2, "%s::%s: outEncodedValue is NULL\n");
    return 1005;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v8 = CFDataGetLength(theData);
  if (!BytePtr)
  {
    goto LABEL_12;
  }

  v9 = v8;
  if (v8 < 1)
  {
    goto LABEL_12;
  }

  v10 = v8 / 3;
  if (v8 != 3 * (v8 / 3))
  {
    ++v10;
  }

  v11 = (4 * v10) | 1;
  v8 = malloc(v11);
  if (v8)
  {
    v12 = v8;
    b64_ntop(BytePtr, v9 & 0x7FFFFFFF, v8, v11);
    v13 = strlen(v12);
    if (v13)
    {
      v13 = CFStringCreateWithBytes(a1, v12, v13, 0x8000100u, 0);
      if (v13)
      {
        v14 = v13;
        *a3 = CFRetain(v13);
        free(v12);
        CFRelease(v14);
        return 0;
      }

      v20 = "%s::%s: encodedValue is NULL\n";
    }

    else
    {
      v20 = "%s::%s: encodedLength is 0\n";
    }

    v21 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v21, 2, v20, "BasebandHttpCommon", "encodeBase64");
    free(v12);
  }

  else
  {
LABEL_12:
    v16 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v16, 2, "%s::%s: encodedBuffer is NULL\n", "BasebandHttpCommon", "encodeBase64");
  }

  return 1;
}

uint64_t decodeBase64(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3)
{
  if (!theString)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: value == NULL\n");
    return 1005;
  }

  Length = CFStringGetLength(theString);
  if (!Length)
  {
    v23 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v23, 2, "%s::%s: value length is 0\n");
    return 1005;
  }

  if (!a3)
  {
    v24 = ACFULogging::getLogInstance(Length);
    ACFULogging::handleMessage(v24, 2, "%s::%s: outDecodedValue is NULL\n");
    return 1005;
  }

  v7 = CFStringGetLength(theString);
  v8 = v7 + 1;
  v9 = malloc(v8);
  if (v9)
  {
    v10 = v9;
    CString = CFStringGetCString(theString, v9, v8, 0x8000100u);
    if (CString)
    {
      if (v7 < -1)
      {
        CString = strlen(v10);
        v8 = CString;
      }

      v12 = v10;
      if (v8 >= 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = v10;
        v12 = v10;
        do
        {
          v17 = *v15;
          if (v17 == 10 || v17 == 13)
          {
            v16 = 0;
            v13 = 0;
          }

          else
          {
            v16 = b64decode_table[*v15];
            if (v16 == -1)
            {
              v16 = v14;
            }

            else if (v13 > 1)
            {
              if (v13 == 2)
              {
                *v12++ = (16 * v14) | (v16 >> 2) & 0xF;
                v13 = 3;
              }

              else
              {
                v13 = 0;
                *v12++ = v16 | (v14 << 6);
              }
            }

            else if (v13)
            {
              *v12++ = (4 * v14) | (v16 >> 4) & 3;
              v13 = 2;
            }

            else
            {
              v13 = 1;
            }
          }

          ++v15;
          v14 = v16;
        }

        while (v15 < &v10[v8]);
      }

      *v12 = 0;
      if (v12 - v10 <= 0)
      {
        v27 = ACFULogging::getLogInstance(CString);
        ACFULogging::handleMessage(v27, 2, "%s::%s: b64decode of value failed with error code %d.\n");
      }

      else
      {
        v19 = CFDataCreate(a1, v10, (v12 - v10) & 0x7FFFFFFF);
        if (v19)
        {
          v20 = v19;
          *a3 = CFRetain(v19);
          free(v10);
          CFRelease(v20);
          return 0;
        }

        v28 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v28, 2, "%s::%s: decodedData is NULL\n");
      }
    }

    else
    {
      v26 = ACFULogging::getLogInstance(CString);
      ACFULogging::handleMessage(v26, 2, "%s::%s: failed to convert value to c-string\n");
    }

    free(v10);
  }

  else
  {
    v25 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v25, 2, "%s::%s: failed to allocate buffer\n", "BasebandHttpCommon", "decodeBase64");
  }

  return 1;
}

void BBUICEInitializer::~BBUICEInitializer(BBUICEInitializer *this)
{
  *this = &unk_1F5F02D68;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 2));
  }
}

{
  *this = &unk_1F5F02D68;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 2));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

uint64_t BBUICEInitializer::prepare(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
    {
LABEL_3:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v7 = (**a1)(a1, a2);
        v8 = BBUStageAsString(a3);
        _BBULog(4, 0, v7, "", "Preparing at %s with reset requested %u\n", v8, a4);
      }
    }
  }

  if (a3 != 2)
  {
    return 0;
  }

  if (*(a1 + 40) == 1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
      {
LABEL_9:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v9 = (**a1)(a1, a2);
          _BBULog(4, 0, v9, "", "Powering on modem. It is NOOP if BB is already on\n");
        }
      }
    }

    TelephonyBasebandPowerOnModem();
    result = 0;
    *(a1 + 40) = 0;
    return result;
  }

  *(a1 + 40) = 0;
  BBUFeedback::handleComment(*(a1 + 8), "%s: Start resetting modem", "prepare");
  if (TelephonyBasebandResetModem())
  {
    return 0;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 73;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 73;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v11 = (**a1)(a1);
    _BBULog(4, 0, v11, "", "Failed to prep\n");
    return 73;
  }

  return result;
}

uint64_t BBUICEInitializer::finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 > 4 || ((1 << a4) & 0x1A) == 0 || (result = (*(*a1 + 240))(a1, a2, a3), !result))
  {
    result = (*(*a1 + 232))(a1, a2, a4);
    if (!result)
    {
      v10 = (*(*a1 + 200))(a1);
      result = (*(*a1 + 224))(a1, a2, a5, v10);
      if (!result)
      {
        v11 = *(*a1 + 280);

        return v11(a1, a2, 0, 0);
      }
    }
  }

  return result;
}

uint64_t BBUICEInitializer::crashBaseband(uint64_t a1, uint64_t a2)
{
  TelephonyBasebandGetReset();
  BBUFeedback::handleComment(*(a1 + 8), "modem %s reset", "is not");
  if (capabilities::coredump::supportsGPIOSignalling(v3))
  {
    TelephonyBasebandSetModemCoredumpGPIO();
    usleep(0xF4240u);
    TelephonyBasebandSetModemCoredumpGPIO();
    BBUFeedback::handleComment(*(a1 + 8), "Coredump GPIO signalled");
  }

  BBUFeedback::handleComment(*(a1 + 8), "resetting modem... may take several seconds for safe reset");
  TelephonyBasebandResetModem();
  return 0;
}

uint64_t BBUICEInitializer::getVersion(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Initialization/ICE/BBUICEInitializer.cpp", 0xA1u, "Assertion failure(transport && TelephonyUtilTransport Error.)");
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *a3 = 0;
  IceAriGetContext();
  v4 = KTLGetFirmwareVersion();
  BBUFeedback::handleComment(*(a1 + 8), "Baseband firmware version size is: %u", 128);
  if (v4)
  {
    return 0;
  }

  BBUFeedback::handleComment(*(a1 + 8), "Failed to get baseband firmware version.");
  return 62;
}

uint64_t BBUICEInitializer::gatherPersonalizationParameters(BBUFeedback **a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[0] = v6;
  v42[1] = v6;
  v40[1] = v6;
  v41 = v6;
  *v39 = v6;
  v40[0] = v6;
  IceAriGetContext();
  v7 = KTLGetPersonalizationInfo();
  memset(v38, 170, sizeof(v38));
  ctu::hex(v38, v40, HIDWORD(v39[0]));
  memset(v37, 170, sizeof(v37));
  ctu::hex(v37, &v41, LODWORD(v39[1]));
  memset(v36, 170, sizeof(v36));
  ctu::hex(v36, v42, HIDWORD(v39[1]));
  v8 = v38;
  if (SHIBYTE(v38[2]) < 0)
  {
    v8 = v38[0];
  }

  v9 = v37;
  if (SHIBYTE(v37[2]) < 0)
  {
    v9 = v37[0];
  }

  if (SHIBYTE(v36[2]) >= 0)
  {
    v10 = v36;
  }

  else
  {
    v10 = v36[0];
  }

  BBUFeedback::handleComment(a1[1], "Personalization info: \n \t\t\t\t\t\t\t chipId     : 0x%x \n \t\t\t\t\t\t\t nonceSize  : %u \n \t\t\t\t\t\t\t snumSize   : %u \n \t\t\t\t\t\t\t pkHashSize : %u \n \t\t\t\t\t\t\t nonce      : %s \n \t\t\t\t\t\t\t snum       : %s \n \t\t\t\t\t\t\t pkHash     : %s \n", LODWORD(v39[0]), HIDWORD(v39[0]), LODWORD(v39[1]), HIDWORD(v39[1]), v8, v9, v10);
  if (!v7)
  {
    BBUFeedback::handleComment(a1[1], "Failed to gather personalization information.");
    v32 = 64;
    if (SHIBYTE(v36[2]) < 0)
    {
      goto LABEL_41;
    }

LABEL_38:
    if (SHIBYTE(v37[2]) < 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v11 = HIDWORD(v39[0]);
  v12 = operator new(0x10uLL);
  *v12 = &unk_1F5F06660;
  v12[1] = 0;
  v13 = *MEMORY[0x1E695E480];
  v12[1] = CFDataCreate(*MEMORY[0x1E695E480], v40, v11);
  v14 = *(a3 + 8);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(a3 + 8) = v12;
  v15 = BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(&v41, (8 * LODWORD(v39[1])));
  (*(*a3 + 16))(a3, v15);
  v16 = BBUICEPersonalizationParameters::ICEChipID::createFromChipID(LODWORD(v39[0]));
  v17 = *(a3 + 16);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  *(a3 + 16) = v16;
  v18 = HIDWORD(v39[1]);
  v19 = operator new(0x10uLL);
  *v19 = &unk_1F5F06780;
  v19[1] = 0;
  v19[1] = CFDataCreate(v13, v42, v18);
  (*(*a3 + 24))(a3, v19);
  if (v15 && v16)
  {
    v20 = a1[1];
    (*(*v15 + 24))(__p, v15);
    if (v35 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_20;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_20:
    v22 = BBUpdaterCommon::inRestoreOS(void)::restoreOS;
    v23 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
    v24 = (*(*v16 + 24))(v16);
    if ((v22 | v23))
    {
      v25 = v21;
    }

    else
    {
      v25 = "<< SNUM >>";
    }

    BBUFeedback::handleComment(v20, "   SNUM: 0x%s / CHIPID: 0x%08x", v25, v24);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v26 = a1[1];
  (*(*v12 + 24))(__p, v12);
  if (v35 >= 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  BBUFeedback::handleComment(v26, "   NONCE: %s", v27);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v28 = a1[1];
  (*(*v19 + 24))(__p, v19);
  if (v35 >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  BBUFeedback::handleComment(v28, "   PUBLIC_KEY_HASH: %s", v29);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v30 = a1[1];
  v31 = (*(**(a3 + 24) + 24))(*(a3 + 24));
  BBUFeedback::handleComment(v30, "   CertID: %u", v31);
  v32 = (*(*a1 + 26))(a1, a2, a3, 0);
  if ((SHIBYTE(v36[2]) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

LABEL_41:
  operator delete(v36[0]);
  if (SHIBYTE(v37[2]) < 0)
  {
LABEL_42:
    operator delete(v37[0]);
    if (SHIBYTE(v38[2]) < 0)
    {
      goto LABEL_43;
    }

    return v32;
  }

LABEL_39:
  if (SHIBYTE(v38[2]) < 0)
  {
LABEL_43:
    operator delete(v38[0]);
  }

  return v32;
}

void sub_1E5374378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if (a34 < 0)
    {
      goto LABEL_7;
    }
  }

  else if (a34 < 0)
  {
LABEL_7:
    operator delete(a29);
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((a40 & 0x80000000) == 0)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a35);
  goto LABEL_9;
}

uint64_t BBUICEInitializer::overridePersonalizationParameters(BBUFeedback **this, BBUPersonalizationParameters *a2, const __CFDictionary *a3)
{
  value = 0xAAAAAAAAAAAAAAAALL;
  BBUFeedback::handleComment(this[1], "Overriding with preflight information:");
  if (CFDictionaryGetValueIfPresent(a3, @"ChipID", &value))
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFNumberGetTypeID())
    {
      v7 = value;
      v8 = operator new(0x10uLL);
      *v8 = &unk_1F5F066F0;
      v8[1] = v7;
      CFRetain(v7);
      v9 = *(a2 + 2);
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      *(a2 + 2) = v8;
      v10 = this[1];
      v11 = (*(*v8 + 24))(v8);
      v12 = (*(*v8 + 24))(v8);
      BBUFeedback::handleComment(v10, "   ChipID: %u (0x%08x)", v11, v12);
    }
  }

  if (CFDictionaryGetValueIfPresent(a3, @"ChipSerialNo", &value) && (v13 = CFGetTypeID(value), v13 == CFDataGetTypeID()) && ((v14 = value, v15 = operator new(0x10uLL), *v15 = &unk_1F5F06690, v15[1] = v14, CFRetain(v14), (*(*a2 + 16))(a2, v15), v16 = this[1], (*(*v15 + 24))(__p, v15), v31 >= 0) ? (v17 = __p) : (v17 = __p[0]), BBUFeedback::handleComment(v16, "   ChipSerialNo: %s", v17), v31 < 0))
  {
    operator delete(__p[0]);
    if (!CFDictionaryGetValueIfPresent(a3, @"CertHash", &value))
    {
      goto LABEL_20;
    }
  }

  else if (!CFDictionaryGetValueIfPresent(a3, @"CertHash", &value))
  {
    goto LABEL_20;
  }

  v18 = CFGetTypeID(value);
  if (v18 == CFDataGetTypeID())
  {
    v19 = value;
    v20 = operator new(0x10uLL);
    *v20 = &unk_1F5F06780;
    v20[1] = v19;
    CFRetain(v19);
    (*(*a2 + 24))(a2, v20);
    v21 = this[1];
    (*(*v20 + 24))(__p, v20);
    v22 = v31 >= 0 ? __p : __p[0];
    BBUFeedback::handleComment(v21, "   CertHash: %s", v22);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_20:
  if (CFDictionaryGetValueIfPresent(a3, @"Nonce", &value))
  {
    v23 = CFGetTypeID(value);
    if (v23 == CFDataGetTypeID())
    {
      v24 = value;
      v25 = operator new(0x10uLL);
      *v25 = &unk_1F5F06660;
      v25[1] = v24;
      CFRetain(v24);
      v26 = *(a2 + 1);
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      *(a2 + 1) = v25;
      v27 = this[1];
      (*(*v25 + 24))(__p, v25);
      if (v31 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      BBUFeedback::handleComment(v27, "   Nonce: %s", v28);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return 0;
}

void sub_1E537489C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICEInitializer::gatherProvisioningParameters(BBUFeedback **a1, capabilities::euicc *a2, uint64_t a3)
{
  v6 = (*(*a1 + 31))(a1);
  if (!v6)
  {
    v6 = (*(*a1 + 32))(a1, a2, a3);
  }

  eUICC::getEID(a2, a3, a1[1]);
  return v6;
}

uint64_t BBUICEInitializer::getProvisioningStatus(BBUFeedback **a1, uint64_t a2, uint64_t a3, _BYTE *a4, BOOL *a5)
{
  *a4 = 1;
  if ((*(*a1 + 26))(a1, a2, a3, 0))
  {
    result = 0;
    *a5 = 0;
    return result;
  }

  v10 = *(a3 + 48);
  if (!v10)
  {
    return 3;
  }

  v11 = (*(*v10 + 24))(v10);
  v12 = v11;
  v13 = v11 == 1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v15 = 0;
        v14 = "Ignoring ART mismatch";
        goto LABEL_14;
      }

LABEL_13:
      v15 = 0;
      v14 = "bringup";
      goto LABEL_14;
    }

LABEL_12:
    v15 = v11 != 2;
    v14 = "mature";
    goto LABEL_14;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  if (v11 != 1)
  {
    goto LABEL_13;
  }

  *a4 = 0;
  v14 = "mature";
  v15 = 1;
LABEL_14:
  *a5 = v15;
  BBUFeedback::handleComment(a1[1], v14);
  v16 = a1[1];
  StateAsString = ETLProvisionGetStateAsString();
  BBUFeedback::handleComment(v16, "Provisioning state %s(%u), mismatched %u", StateAsString, v12, v13);
  return 0;
}

uint64_t BBUICEInitializer::gatherManifestInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  memset(v42, 0, 144);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *v34 = 0u;
  v5 = (a1 + 8);
  BBUFeedback::handleComment(*(a1 + 8), "Getting manifest information from BB");
  IceAriGetContext();
  v6 = KTLGetManifestStatus();
  BBUFeedback::handleComment(*v5, "Manifest status: \n\t\t\t  status             : %u\n \t\t\t  provision_status   : %u\n \t\t\t  fatp_cal_status    : %u\n \t\t\t  calibration_status : %u\n \t\t\t  skey_hash length   : %u", LODWORD(v34[0]), WORD2(v34[0]), HIWORD(v34[0]), LOWORD(v34[1]), WORD1(v34[1]));
  memset(__p, 170, 24);
  ctu::hex(__p, (v34 | 0xC), *(v34 | 0xA));
  v7 = *(v34 | 0xA);
  if (*(v34 | 0xA))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v8 + v7;
      if (v10 >= 16)
      {
        v10 = 16;
      }

      ctu::hex(v32, ((v34 | 0xC) + v9), v10);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v32;
      __p[2] = v32[2];
      if (SHIBYTE(v32[2]) >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = v32[0];
      }

      BBUFeedback::handleComment(*(a1 + 8), "  skey_hash    [0x%02x]: %s", v9, v11);
      v9 += 16;
      v7 = WORD1(v34[1]);
      v8 -= 16;
    }

    while (v9 < WORD1(v34[1]));
  }

  memset(v32, 170, sizeof(v32));
  ctu::hex(v32, (&v42[3] + 2), LOWORD(v42[3]));
  BBUFeedback::handleComment(*(a1 + 8), "  ckey_hash length   : %u", LOWORD(v42[3]));
  v12 = v32;
  if (SHIBYTE(v32[2]) < 0)
  {
    v12 = v32[0];
  }

  BBUFeedback::handleComment(*(a1 + 8), "  ckey_hash          : %s", v12);
  if (!v6)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed to gather manifest info.");
    v15 = 63;
    if (SHIBYTE(v32[2]) < 0)
    {
      goto LABEL_50;
    }

    goto LABEL_19;
  }

  v13 = 0;
  v14 = WORD2(v34[0]) - 4;
  if (v14 > 0x3C)
  {
    goto LABEL_23;
  }

  if (((1 << (BYTE4(v34[0]) - 4)) & 0x3000004) != 0)
  {
    v13 = 2;
    goto LABEL_25;
  }

  if (((1 << (BYTE4(v34[0]) - 4)) & 0x801) != 0)
  {
    v13 = 1;
    goto LABEL_25;
  }

  if (v14 != 60)
  {
LABEL_23:
    if (WORD2(v34[0]))
    {
      v13 = 3;
    }
  }

LABEL_25:
  v17 = BBUICEPersonalizationParameters::ICEKeyStatus::createFromKeyStatus(v13);
  v18 = BBUICEPersonalizationParameters::ICEKeyStatus::createFromKeyStatus(WORD2(v34[0]));
  v19 = BBUICEPersonalizationParameters::ICEKeyStatus::createFromKeyStatus(LOWORD(v34[1]));
  v20 = BBUICEPersonalizationParameters::ICEKeyStatus::createFromKeyStatus(HIWORD(v34[0]));
  v21 = a3[6];
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  a3[6] = v17;
  v22 = a3[8];
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  a3[8] = v18;
  v23 = a3[9];
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  a3[9] = v19;
  v24 = a3[10];
  if (v24)
  {
    v24 = (*(*v24 + 8))(v24);
  }

  a3[10] = v20;
  if (WORD2(v34[0]) > 0xFu || ((1 << SBYTE4(v34[0])) & 0x8011) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "BB has no provisioning manifest");
    v15 = 0;
    if (SHIBYTE(v32[2]) < 0)
    {
      goto LABEL_50;
    }

    goto LABEL_19;
  }

  DigestType = capabilities::updater::getDigestType(v24);
  if (DigestType == 1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        goto LABEL_45;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v27 = (**a1)(a1);
      _BBULog(4, 0, v27, "", "SHA256 detected\n");
    }
  }

  else
  {
    if (DigestType != 2)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 63, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Initialization/ICE/BBUICEInitializer.cpp", 0x1CBu, "Assertion failure(false && Unsupported hash digest type.)");
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        goto LABEL_45;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v26 = (**a1)(a1);
      _BBULog(4, 0, v26, "", "SHA384 detected\n");
    }
  }

LABEL_45:
  v28 = WORD1(v34[1]);
  v29 = operator new(0x10uLL);
  *v29 = &unk_1F5F06750;
  v29[1] = 0;
  v29[1] = CFDataCreate(*MEMORY[0x1E695E480], (v34 | 0xC), v28);
  v30 = a3[7];
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v15 = 0;
  a3[7] = v29;
  if (SHIBYTE(v32[2]) < 0)
  {
LABEL_50:
    operator delete(v32[0]);
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_51;
    }

    return v15;
  }

LABEL_19:
  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_51:
    operator delete(__p[0]);
  }

  return v15;
}

void sub_1E5375100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_free_exception(v25);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t BBUICEInitializer::pingAndCheckForResponse(uint64_t a1, uint64_t a2)
{
  v3 = TelephonyUtilSystemMachTime();
  while (1)
  {
    IceAriGetContext();
    v4 = KTLPing();
    BBUFeedback::handleComment(*(a1 + 8), "ping returned %d, psReady %u", v4, 0);
    if (v4)
    {
      break;
    }

    BBUFeedback::handleComment(*(a1 + 8), "Retrying ping\n");
    usleep(0x7A120u);
    if ((TelephonyUtilSystemMachTime() - v3) >= 0x5DD)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Timeout on ping attemps\n");
      return 46;
    }
  }

  BBUFeedback::handleComment(*(a1 + 8), "ping success but PS Ready false, treating as not ready and sleeping 1s");
  usleep(0xF4240u);
  return 6;
}

void sub_1E5375344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICEInitializer::restoreNVItems(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Restoring NV items to Factory defaults");
      IceAriGetContext();
      if (KTLBspSetNvItemsToState())
      {
        return 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
        return result;
      }

      BBUFeedback::handleComment(*(a1 + 8), "Restoring NV items to Shipping defaults");
      IceAriGetContext();
      if (KTLBspSetNvItemsToState())
      {
        return 0;
      }
    }

LABEL_15:
    BBUFeedback::handleComment(*(a1 + 8), "Failed to restore NV items to state: %d", a3);
    return 58;
  }

  if (a3 == 4)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Restoring NV items to FATP defaults");
    IceAriGetContext();
    if (KTLBspSetNvItemsToState())
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (a3 == 5)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Restoring NV items to OQC defaults");
    IceAriGetContext();
    if (KTLBspSetNvItemsToState())
    {
      return 0;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t BBUICEInitializer::fusingCheck(uint64_t a1)
{
  BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Fusing check");
  IceAriGetContext();
  FusingState = KTLSecGetFusingState();
  if (FusingState)
  {
    capabilities::updater::shouldAllowUnfused(FusingState);
  }

  (*(**(a1 + 8) + 24))(*(a1 + 8), 24);
  BBUFeedback::handleComment(*(a1 + 8), "Fusing state: %d", 0);
  BBUFeedback::handleComment(*(a1 + 8), "Failed fusing check.");
  return 24;
}

uint64_t BBUICEInitializer::updateIMEISvn(uint64_t a1, uint64_t a2, unsigned int a3)
{
  BBUFeedback::handleComment(*(a1 + 8), "IMEI-SVN Check and Update: %d", a3);
  if (a3 == -1)
  {
    return 0;
  }

  if (a3 > 0x62)
  {
    return 2;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v6 = (**a1)(a1);
    _BBULog(20, 0, v6, "", "Getting current SVN\n");
  }

LABEL_8:
  IceAriGetContext();
  Svn = KTLCpsGetSvn();
  BBUFeedback::handleComment(*(a1 + 8), "Current SVN: %d", 170);
  if (!Svn)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v10 = (**a1)(a1);
      _BBULog(20, 0, v10, "", "Trying to set SVN\n");
    }

LABEL_18:
    IceAriGetContext();
    v11 = KTLCpsSetSvn();
    if (gBBULogMaskGet(void)::once != -1)
    {
      v18 = v11;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v11 = v18;
    }

    v12 = (gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4);
    if (v11)
    {
      if (v12)
      {
        v13 = (**a1)(a1);
        _BBULog(20, 0, v13, "", "SVN set: %d\n");
      }

      return 0;
    }

    goto LABEL_31;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v8 = (gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4);
  if (a3 == 170)
  {
    if (v8)
    {
      v9 = (**a1)(a1);
      _BBULog(20, 0, v9, "", "No need to update SVN\n", v20);
    }

    return 0;
  }

  if (v8)
  {
    v14 = (**a1)(a1);
    _BBULog(20, 0, v14, "", "Trying to set new SVN\n");
  }

  IceAriGetContext();
  v15 = KTLCpsSetSvn();
  if (gBBULogMaskGet(void)::once != -1)
  {
    v19 = v15;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v15 = v19;
  }

  v12 = (gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4);
  if (v15)
  {
    if (v12)
    {
      v16 = (**a1)(a1);
      _BBULog(20, 0, v16, "", "SVN changed from %d to %d\n");
    }

    return 0;
  }

LABEL_31:
  if (v12)
  {
    v17 = (**a1)(a1);
    _BBULog(20, 0, v17, "", "Could not set SVN\n");
  }

  return 59;
}

uint64_t BBUICEInitializer::getIMEI(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v31 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v5;
  v30 = v5;
  v27 = v5;
  v28 = v5;
  __src = v5;
  IceAriGetContext();
  v6 = KTLGetIMEI_V2();
  BBUFeedback::handleComment(*(a1 + 8), "IMEI1: %s", &__src);
  if (capabilities::updater::supportsDualIMEIProvision(v7))
  {
    BBUFeedback::handleComment(*(a1 + 8), "IMEI2: %s", &v27 + 4);
  }

  if (!v6)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed to get IMEI.");
    return 30;
  }

  memset(__dst, 170, sizeof(__dst));
  v8 = (v27 - 1);
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v9 = operator new(v11);
    *&__dst[16] = v11 | 0x8000000000000000;
    *__dst = v9;
    *&__dst[8] = v8;
    goto LABEL_12;
  }

  __dst[23] = v27 - 1;
  v9 = __dst;
  if (v27 != 1)
  {
LABEL_12:
    memcpy(v9, &__src, v8);
  }

  v9[v8] = 0;
  valid = KTLIsValidIMEIString();
  if (valid)
  {
    v13 = operator new(0x18uLL);
    v14 = v13;
    if ((__dst[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v13, *__dst, *&__dst[8]);
    }

    else
    {
      *&v13->__r_.__value_.__l.__data_ = *__dst;
      v13->__r_.__value_.__r.__words[2] = *&__dst[16];
    }

    valid = *a3;
    if (*a3)
    {
      if (*(valid + 23) < 0)
      {
        v15 = *a3;
        operator delete(*valid);
        valid = v15;
      }

      operator delete(valid);
    }

    *a3 = v14;
  }

  v16 = capabilities::updater::supportsDualIMEIProvision(valid);
  if (DWORD1(v28))
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 != 1)
  {
    goto LABEL_44;
  }

  v18 = (DWORD1(v28) - 1);
  memset(__p, 170, sizeof(__p));
  if (DWORD1(v28) >= 0x18)
  {
    if ((v18 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v18 | 7) + 1;
    }

    v19 = operator new(v20);
    __p[1] = v18;
    __p[2] = (v20 | 0x8000000000000000);
    __p[0] = v19;
    goto LABEL_33;
  }

  HIBYTE(__p[2]) = BYTE4(v28) - 1;
  v19 = __p;
  if (DWORD1(v28) != 1)
  {
LABEL_33:
    memcpy(v19, &v27 + 4, v18);
  }

  *(v19 + v18) = 0;
  if (KTLIsValidIMEIString())
  {
    v21 = operator new(0x18uLL);
    v22 = v21;
    if (SHIBYTE(__p[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v21, __p[0], __p[1]);
    }

    else
    {
      *&v21->__r_.__value_.__l.__data_ = *__p;
      v21->__r_.__value_.__r.__words[2] = __p[2];
    }

    v23 = a3[1];
    if (v23)
    {
      if (*(v23 + 23) < 0)
      {
        operator delete(*v23);
      }

      operator delete(v23);
    }

    a3[1] = v22;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_45;
  }

LABEL_44:
  if ((__dst[23] & 0x80000000) != 0)
  {
LABEL_45:
    operator delete(*__dst);
  }

  return 0;
}

void sub_1E5375CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  operator delete(v22);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t BBUICEInitializer::getMEID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0uLL;
  IceAriGetContext();
  v5 = KTLGetMEID();
  BBUFeedback::handleComment(*(a1 + 8), "MEID: %s", &v11);
  if (v5)
  {
    __p[0] = v11;
    *(__p + 6) = *(&v11 + 6);
    HIWORD(__p[1]) = -22016;
    if (KTLIsValidMEIDString())
    {
      v6 = operator new(0x18uLL);
      *v6 = *__p;
      v6[2] = 0xEAAAAAAAAAAAAAALL;
      v8 = *(a3 + 16);
      if (v8)
      {
        if (*(v8 + 23) < 0)
        {
          v9 = *(a3 + 16);
          operator delete(*v8);
          v8 = v9;
        }

        operator delete(v8);
      }

      *(a3 + 16) = v6;
    }

    return 0;
  }

  else
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed to get MEID.");
    return 29;
  }
}

void sub_1E5375EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t BBUICEInitializer::performNVSync(uint64_t a1, uint64_t a2, int a3, int a4)
{
  __src[47] = *MEMORY[0x1E69E9840];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&__src[41] = v8;
  *&__src[43] = v8;
  *&__src[37] = v8;
  *&__src[39] = v8;
  *&__src[33] = v8;
  *&__src[35] = v8;
  *&__src[31] = v8;
  *&__src[29] = v8;
  *&__src[27] = v8;
  *&__src[25] = v8;
  *&__src[23] = v8;
  *&__src[21] = v8;
  *&__src[19] = v8;
  *&__src[17] = v8;
  *&__src[15] = v8;
  *&__src[13] = v8;
  *&__src[11] = v8;
  *&__src[9] = v8;
  *&__src[7] = v8;
  *&__src[5] = v8;
  *&__src[3] = v8;
  *&__src[1] = v8;
  __src[45] = 0xAAAAAAAAAAAAAAAALL;
  __src[0] = 0;
  BBUFeedback::handleComment(*(a1 + 8), "Performing FS sync");
  memset(__p, 170, 24);
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v9 = off_1ED944170;
  if (!off_1ED944170)
  {
    v10 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v10);
    v11 = operator new(0x20uLL);
    *v11 = &unk_1F5F05A00;
    v11[1] = 0;
    v11[2] = 0;
    v11[3] = v10;
    v12 = off_1ED944178;
    off_1ED944170 = v10;
    off_1ED944178 = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_1ED944170;
  }

  v13 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v9, __p);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (__p[23] >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = *__p;
    }

    if (v14)
    {
      goto LABEL_14;
    }

LABEL_22:
    _BBUFSDebugPrint("BBUFSServerParametersInit", "invalid parameters specified: parameters = %p, destination = %s\n", __src, 0);
    goto LABEL_23;
  }

  if (__p[23] >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = *__p;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_14:
  memset(__src, 0, 368);
  v15 = strnlen(v14, 0x100uLL);
  v16 = TelephonyUtilStrlcpy();
  if (v16 == v15 && (v16 + 1) <= 0x100)
  {
    v17 = 0;
    __src[45] = 0;
    v18 = 1;
    goto LABEL_27;
  }

  _BBUFSDebugPrint("BBUFSServerParametersInit", "required path length = %zu, copied = %zu, max length = %zu\n", v15 + 1, v16 + 1, 0x100uLL);
  __src[45] = 0;
LABEL_23:
  if (gBBULogMaskGet(void)::once == -1)
  {
    v18 = 0;
    v17 = 11;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v18 = 0;
    v17 = 11;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      goto LABEL_27;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v19 = (**a1)(a1);
    _BBULog(4, 0, v19, "", "Failed preparing fs sync parameters\n");
    v18 = 0;
  }

LABEL_27:
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v20 = *(a2 + 48);
  *&__src[5] = *(a2 + 32);
  *&__src[7] = v20;
  *&__src[9] = *(a2 + 64);
  __src[11] = *(a2 + 80);
  v21 = *(a2 + 16);
  *&__src[1] = *a2;
  *&__src[3] = v21;
  __src[12] = IceAriGetContext();
  if ((v18 & 1) == 0)
  {
LABEL_32:
    if (v17 || !a3)
    {
      goto LABEL_36;
    }

    if (sBBUFSServerSetConfig)
    {
      if (sBBUFSServerSetConfig(a1 + 48, "ForceSync", 0xAAAAAAAA00000001))
      {
LABEL_36:
        if (!v17 && a4)
        {
          if (!sBBUFSServerSetConfig)
          {
            _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n");
LABEL_58:
            BBUFeedback::handleComment(*(a1 + 8), "Failed setting config '%s' to '%d'\n", "ShutdownSync", 1);
            return 61;
          }

          if ((sBBUFSServerSetConfig(a1 + 48, "ShutdownSync", 0xAAAAAAAA00000001) & 1) == 0)
          {
            goto LABEL_58;
          }

LABEL_46:
          if (sBBUFSServerSetConfig)
          {
            if (sBBUFSServerSetConfig(a1 + 48, "ARICtxId", 0xAAAAAAAA00000000))
            {
              if (sBBUFSServerStart)
              {
                if (sBBUFSServerStart(a1 + 48))
                {
                  if (sBBUFSServerFlush)
                  {
                    v23 = sBBUFSServerFlush(a1 + 48);
                    v24 = v23;
                    if ((*(a1 + 416) & 1) == 0)
                    {
                      fwrite("file server stopped\n", 0x14uLL, 1uLL, *MEMORY[0x1E69E9848]);
                      if (v24)
                      {
                        return 0;
                      }

LABEL_69:
                      BBUFeedback::handleComment(*(a1 + 8), "Failed FS flush\n");
                      return 61;
                    }

                    if (v23)
                    {
                      if (sBBUFSServerStop)
                      {
                        sBBUFSServerStop(a1 + 48);
                      }

                      else
                      {
                        _BBUFSDebugPrint("BBUFSServerStop", "sBBUFSServerStop function not initialized\n");
                      }

                      return 0;
                    }
                  }

                  else
                  {
                    _BBUFSDebugPrint("BBUFSServerFlush", "sBBUFSServerFlush function not initialized\n");
                    if ((*(a1 + 416) & 1) == 0)
                    {
                      v25 = *MEMORY[0x1E69E9848];
                      v26 = "file server stopped\n";
                      v27 = 20;
                      goto LABEL_68;
                    }
                  }

                  v25 = *MEMORY[0x1E69E9848];
                  v26 = "filesystem flush operation failed\n";
                  v27 = 34;
LABEL_68:
                  fwrite(v26, v27, 1uLL, v25);
                  goto LABEL_69;
                }
              }

              else
              {
                _BBUFSDebugPrint("BBUFSServerStart", "sBBUFSServerStart function not initialized\n");
              }

              BBUFeedback::handleComment(*(a1 + 8), "Failed starting file server");
              return 61;
            }
          }

          else
          {
            _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n");
          }

          BBUFeedback::handleComment(*(a1 + 8), "Failed setting config '%s' to '%d'", "ARICtxId", 0);
          return 61;
        }

        if (!v17)
        {
          goto LABEL_46;
        }

        return v17;
      }
    }

    else
    {
      _BBUFSDebugPrint("BBUFSServerSetConfig", "sBBUFSServerSetConfig function not initialized\n");
    }

    BBUFeedback::handleComment(*(a1 + 8), "Failed setting config '%s' to '%d'\n", "ForceSync", 1);
    return 61;
  }

  memcpy(__p, __src, sizeof(__p));
  if (BBUFSServerCreate((a1 + 48), __p))
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v17 = 19;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return v17;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v17 = 19;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return v17;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v22 = (**a1)(a1);
    _BBULog(4, 0, v22, "", "Failed creating file server\n");
  }

  return v17;
}

void sub_1E537663C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char **a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100](&a14);
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t BBUICEInitializer::queryChipInfoBooted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36[3] = *MEMORY[0x1E69E9840];
  memset(v36, 170, 24);
  memset(v31, 0, sizeof(v31));
  v32 = 0u;
  BBUFeedback::handleComment(*(a1 + 8), "Querying chip info from booted baseband");
  if (!a2 || !a3)
  {
    BBUFeedback::handleComment(*(a1 + 8), "missing parameter");
    return 2;
  }

  v35 = -21846;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *bytes = v6;
  v34 = v6;
  IceAriGetContext();
  if ((KTLSecGetSNUM() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "failed reading snum from booted baseband over KTL");
    return 18;
  }

  IceAriGetContext();
  if ((KTLSecGetChipId() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "failed reading chipid from booted baseband over KTL");
    return 18;
  }

  IceAriGetContext();
  if ((KTLSecGetPkHash() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "failed reading pkhash from booted baseband over KTL");
    return 18;
  }

  v7 = BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(v36, (8 * LOWORD(v36[2])));
  (*(*a3 + 16))(a3, v7);
  v8 = BBUICEPersonalizationParameters::ICEChipID::createFromChipID(v31[0]);
  v9 = *(a3 + 16);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a3 + 16) = v8;
  v10 = v35;
  v11 = operator new(0x10uLL);
  *v11 = &unk_1F5F06780;
  v11[1] = 0;
  v11[1] = CFDataCreate(*MEMORY[0x1E695E480], bytes, v10);
  (*(*a3 + 24))(a3, v11);
  if (!v7 || !v8)
  {
    goto LABEL_20;
  }

  v12 = *(a1 + 8);
  (*(*v7 + 24))(__p, v7);
  if (v30 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_15;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_15:
  v14 = BBUpdaterCommon::inRestoreOS(void)::restoreOS;
  v15 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
  v16 = (*(*v8 + 24))(v8);
  if ((v14 | v15))
  {
    v17 = v13;
  }

  else
  {
    v17 = "<< SNUM >>";
  }

  BBUFeedback::handleComment(v12, "   SNUM: 0x%s / CHIPID: 0x%08x", v17, v16);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  v18 = *(a1 + 8);
  (*(*v11 + 24))(__p, v11);
  if (v30 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  BBUFeedback::handleComment(v18, "   PUBLIC_KEY_HASH: 0x%s", v19);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *(a1 + 8);
  v20 = (a1 + 8);
  v22 = (*(**(a3 + 24) + 24))(*(a3 + 24));
  BBUFeedback::handleComment(v21, "   CertID: %u", v22);
  v25 = *&v31[1] == *bytes && *&v31[3] == *&bytes[8] && v32 == v34 && *(&v32 + 1) == *(&v34 + 1);
  v26 = *v20;
  if (v25)
  {
    BBUFeedback::handleComment(v26, "   Detected as unfused BB");
    result = 0;
    v28 = 1;
  }

  else
  {
    BBUFeedback::handleComment(v26, "   Detected as fused BB\n");
    result = 0;
    v28 = 3;
  }

  *(a3 + 88) = v28;
  return result;
}

void sub_1E5376B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_45()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_98()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t DaleCoredump::create@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  *a2 = 0;
  v5 = operator new(0xD8uLL);
  v20 = &unk_1F5F03338;
  LOBYTE(v21) = 0;
  v23 = 0;
  v6 = *(a1 + 32);
  if (v6 == 1)
  {
    v21 = *(a1 + 8);
    v22 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v23 = 1;
    LOBYTE(v24) = 0;
    v26 = 0;
    v7 = *(a1 + 64);
    if (v7 != 1)
    {
LABEL_3:
      LOBYTE(v27) = 0;
      v29 = 0;
      v8 = *(a1 + 96);
      if (v8 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v24) = 0;
    v26 = 0;
    v7 = *(a1 + 64);
    if (v7 != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = *(a1 + 40);
  v25 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v26 = 1;
  LOBYTE(v27) = 0;
  v29 = 0;
  v8 = *(a1 + 96);
  if (v8 != 1)
  {
LABEL_4:
    LOBYTE(v30) = 0;
    v32 = 0;
    v9 = *(a1 + 128);
    if (v9 != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v27 = *(a1 + 72);
  v28 = *(a1 + 88);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  v29 = 1;
  LOBYTE(v30) = 0;
  v32 = 0;
  v9 = *(a1 + 128);
  if (v9 != 1)
  {
LABEL_5:
    LOBYTE(v33) = 0;
    v35 = 0;
    v10 = *(a1 + 152);
    if (v10 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  v30 = *(a1 + 104);
  v31 = *(a1 + 120);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  v32 = 1;
  LOBYTE(v33) = 0;
  v35 = 0;
  v10 = *(a1 + 152);
  if (v10 == 1)
  {
LABEL_6:
    v4 = *(a1 + 144);
    v33 = *(a1 + 136);
    v34 = v4;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    v35 = 1;
  }

LABEL_7:
  v11 = *(a1 + 160);
  v12 = *(a1 + 176);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v36 = v11;
  v37 = v12;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v13 = *(a1 + 192);
  v14 = *(a1 + 200);
  v38 = v13;
  v39 = v14;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *v5 = &unk_1F5F064A8;
  *(v5 + 1) = &unk_1F5F03338;
  v5[16] = 0;
  v5[40] = 0;
  if (v6)
  {
    *(v5 + 1) = v21;
    *(v5 + 4) = v22;
    v22 = 0;
    v21 = 0uLL;
    v5[40] = 1;
    v5[48] = 0;
    v15 = v5 + 48;
    v5[72] = 0;
    if (!v7)
    {
LABEL_9:
      v5[80] = 0;
      v16 = v5 + 80;
      v5[104] = 0;
      if (!v8)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v5[48] = 0;
    v15 = v5 + 48;
    v5[72] = 0;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  *v15 = v24;
  *(v15 + 2) = v25;
  v25 = 0;
  v24 = 0uLL;
  v5[72] = 1;
  v5[80] = 0;
  v16 = v5 + 80;
  v5[104] = 0;
  if (!v8)
  {
LABEL_10:
    v5[112] = 0;
    v17 = v5 + 112;
    v5[136] = 0;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *v16 = v27;
  *(v16 + 2) = v28;
  v28 = 0;
  v27 = 0uLL;
  v5[104] = 1;
  v5[112] = 0;
  v17 = v5 + 112;
  v5[136] = 0;
  if (!v9)
  {
LABEL_11:
    v5[144] = 0;
    v5[160] = 0;
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  *v17 = v30;
  *(v17 + 2) = v31;
  v31 = 0;
  v30 = 0uLL;
  v5[136] = 1;
  v5[144] = 0;
  v5[160] = 0;
  if (v10)
  {
LABEL_12:
    *(v5 + 18) = v33;
    *(v5 + 19) = v4;
    v33 = 0;
    v34 = 0;
    v5[160] = 1;
  }

LABEL_13:
  v36 = 0uLL;
  *(v5 + 184) = v12;
  *(v5 + 168) = v11;
  v37 = 0uLL;
  *(v5 + 25) = v13;
  *(v5 + 26) = v14;
  v38 = 0;
  v39 = 0;
  BasebandCoredumpParams::~BasebandCoredumpParams(&v20);
  result = (*(*v5 + 40))(v5);
  if (result)
  {
    *a2 = v5;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(result);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init booter object\n", "DaleCoredump", "create");
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void sub_1E5376FE4(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleCoredump::init(DaleCoredump *this)
{
  if (*(this + 25))
  {
    return 1;
  }

  if (*(this + 136))
  {
    return 1;
  }

  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: coredump save directory is not present\n", "DaleCoredump", "init");
  return 0;
}

uint64_t DaleCoredump::collectExceptionInfo(DaleCoredump *this, char a2)
{
  v242 = *MEMORY[0x1E69E9840];
  v210 = 0;
  v211 = 0;
  v208 = 0;
  v209 = 0;
  v206 = 0;
  v207 = 0;
  v203 = 0;
  v204 = 0;
  v205 = 0;
  v4 = *(this + 25);
  if (!v4)
  {
    memset(&block, 170, sizeof(block));
    if (*(this + 135) < 0)
    {
      std::string::__init_copy_ctor_external(&block, *(this + 14), *(this + 15));
    }

    else
    {
      block = *(this + 112);
    }

    if ((block.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_block = &block;
    }

    else
    {
      p_block = block.__r_.__value_.__r.__words[0];
    }

    v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_block, 0x8000100u);
    v8 = v7;
    v220.__r_.__value_.__r.__words[0] = v7;
    if (v7)
    {
      v9 = ACFUDiagnostics::create(&v217, v7, 0);
      v4 = v217.__r_.__value_.__r.__words[0];
      v10 = v217.__r_.__value_.__r.__words[0] != 0;
      if (v217.__r_.__value_.__r.__words[0])
      {
        v5 = operator new(0x20uLL);
        v5->__vftable = &unk_1F5F03AE8;
        v5->__shared_owners_ = 0;
        v5->__shared_weak_owners_ = 0;
        v5[1].__vftable = v4;
        v210 = v4;
        v211 = v5;
      }

      else
      {
        v210 = 0;
        v211 = 0;
        LogInstance = ACFULogging::getLogInstance(v9);
        ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create diagnostics object\n", "DaleCoredump", "collectExceptionInfo");
        v5 = 0;
      }

      CFRelease(v8);
      if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if (v10)
        {
          goto LABEL_17;
        }

        goto LABEL_378;
      }
    }

    else
    {
      v182 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v182, 2, "%s::%s: failed to create coredump path ref\n", "DaleCoredump", "collectExceptionInfo");
      v10 = 0;
      v4 = 0;
      v5 = 0;
      if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    operator delete(block.__r_.__value_.__l.__data_);
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_378:
    v17 = 0;
LABEL_379:
    v159 = 0;
    v160 = v203;
    if (v203)
    {
      goto LABEL_337;
    }

    goto LABEL_338;
  }

  v5 = *(this + 26);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v210 = v4;
  v211 = v5;
LABEL_17:
  v12 = *(this + 23);
  if (!v12)
  {
    v197.__r_.__value_.__s.__data_[0] = 0;
    v198 = 0;
    if (*(this + 40) == 1)
    {
      if (*(this + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v197, *(this + 2), *(this + 3));
      }

      else
      {
        v197 = *(this + 16);
      }

      v198 = 1;
    }

    v199.__r_.__value_.__s.__data_[0] = 0;
    v200 = 0;
    if (*(this + 72) == 1)
    {
      if (*(this + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v199, *(this + 6), *(this + 7));
      }

      else
      {
        v199 = *(this + 2);
      }

      v200 = 1;
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    v202 = 0;
    if (*(this + 104) == 1)
    {
      if (*(this + 103) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(this + 10), *(this + 11));
      }

      else
      {
        __p = *(this + 80);
      }

      v202 = 1;
    }

    DaleFirmware_Coredump::create(&v197, &block);
    v18 = block.__r_.__value_.__r.__words[0];
    if (block.__r_.__value_.__r.__words[0])
    {
      v19 = operator new(0x20uLL);
      *v19 = &unk_1F5F06500;
      *(v19 + 1) = 0;
      *(v19 + 2) = 0;
      *(v19 + 3) = v18;
      v206 = v18;
      v207 = v19;
      block.__r_.__value_.__r.__words[0] = 0;
      if ((v202 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v19 = 0;
      v206 = 0;
      v207 = 0;
      block.__r_.__value_.__r.__words[0] = 0;
      if ((v202 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_45:
    if (v200 == 1 && SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v199.__r_.__value_.__l.__data_);
    }

    if (v198 == 1 && SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v197.__r_.__value_.__l.__data_);
    }

    if (!v18)
    {
      v15 = ACFULogging::getLogInstance(v19);
      v16 = "%s::%s: failed to create coredump firmware object\n";
      goto LABEL_26;
    }

    goto LABEL_52;
  }

  if (!v13)
  {
    v206 = 0;
    v207 = 0;
    v15 = ACFULogging::getLogInstance(0);
    v16 = "%s::%s: failed to cast to dale coredump firmware object\n";
LABEL_26:
    v17 = 0;
    ACFULogging::handleMessage(v15, 2, v16, "DaleCoredump", "collectExceptionInfo");
    goto LABEL_379;
  }

  v14 = *(this + 24);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v206 = v13;
  v207 = v14;
LABEL_52:
  v20 = *(this + 21);
  if (!v20)
  {
    v195 = v4;
    v196 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v193 = 0;
    v194 = 0;
    DaleController::create(&v195, &v193, &block.__r_.__value_.__l.__data_);
    v24 = block.__r_.__value_.__r.__words[0];
    if (block.__r_.__value_.__r.__words[0])
    {
      v25 = operator new(0x20uLL);
      v25->__vftable = &unk_1F5F06550;
      v25->__shared_owners_ = 0;
      v25->__shared_weak_owners_ = 0;
      v25[1].__vftable = v24;
      block.__r_.__value_.__r.__words[0] = 0;
      v26 = v209;
      v208 = v24;
      v209 = v25;
      if (!v26)
      {
        goto LABEL_74;
      }
    }

    else
    {
      block.__r_.__value_.__r.__words[0] = 0;
      v26 = v209;
      v208 = 0;
      v209 = 0;
      if (!v26)
      {
        goto LABEL_74;
      }
    }

    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }

    v27 = block.__r_.__value_.__r.__words[0];
    block.__r_.__value_.__r.__words[0] = 0;
    if (v27)
    {
      (*(*v27 + 64))(v27);
    }

LABEL_74:
    v28 = v194;
    if (v194 && !atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    v29 = v196;
    if (v196 && !atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v21 = v208;
    if (!v208)
    {
      v15 = ACFULogging::getLogInstance(0);
      v16 = "%s::%s: failed to create controller object\n";
      goto LABEL_26;
    }

    goto LABEL_81;
  }

  if (!v21)
  {
    v23 = v209;
    v208 = 0;
    v209 = 0;
    if (!v23)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  v22 = *(this + 22);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = v209;
  v208 = v21;
  v209 = v22;
  if (v23)
  {
LABEL_64:
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v21 = v208;
  }

LABEL_67:
  if (!v21)
  {
    v15 = ACFULogging::getLogInstance(0);
    v16 = "%s::%s: failed to cast to dale controller object\n";
    goto LABEL_26;
  }

LABEL_81:
  v30 = DaleController::warmReset(v21);
  if (v30)
  {
    v15 = ACFULogging::getLogInstance(v30);
    v16 = "%s::%s: failed to warm reset baseband\n";
    goto LABEL_26;
  }

  v192 = 8;
  strcpy(v191, "coredump");
  v218[0] = &unk_1F5F065A0;
  v218[1] = &v208;
  v219 = v218;
  support::misc::safe_timer::create(v191, 240000, v218, 17, &block);
  v185 = block.__r_.__value_.__r.__words[0];
  block.__r_.__value_.__r.__words[0] = 0;
  v31 = v219;
  if (v219 == v218)
  {
    v31 = (*(*v219 + 32))(v219);
    if ((v192 & 0x80000000) == 0)
    {
      goto LABEL_86;
    }
  }

  else
  {
    if (v219)
    {
      v31 = (*(*v219 + 40))();
    }

    if ((v192 & 0x80000000) == 0)
    {
LABEL_86:
      v32 = v185;
      if (v185)
      {
        goto LABEL_87;
      }

LABEL_91:
      v15 = ACFULogging::getLogInstance(v31);
      v16 = "%s::%s: failed to create coredump timer\n";
      goto LABEL_26;
    }
  }

  operator delete(v191[0]);
  v32 = v185;
  if (!v185)
  {
    goto LABEL_91;
  }

LABEL_87:
  v33 = *(v32 + 23);
  if (v33 == dispatch_get_specific("CurrentQueue"))
  {
    support::misc::safe_timer::start_sync(v32);
  }

  else
  {
    block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    block.__r_.__value_.__l.__size_ = 0x40000000;
    block.__r_.__value_.__r.__words[2] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    v223 = &__block_descriptor_tmp_8_0;
    v224 = v32;
    dispatch_sync(v33, &block);
  }

  v34 = v208;
  v35 = v206;
  LOBYTE(v188) = 0;
  v190 = 0;
  if (*(this + 160) == 1)
  {
    v36 = *(this + 19);
    v188 = *(this + 18);
    v189 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v190 = 1;
  }

  v37 = DaleController::collectExceptionInfo(v34, v35, a2, &v203, &v188);
  if (v190 == 1)
  {
    v38 = v189;
    if (v189)
    {
      if (!atomic_fetch_add(&v189->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }
    }
  }

  support::misc::safe_timer::stop(v185);
  v220.__r_.__value_.__r.__words[0] = 0;
  v220.__r_.__value_.__l.__size_ = &v220;
  v220.__r_.__value_.__r.__words[2] = 0x2000000000;
  v221 = 0;
  v39 = *(v185 + 23);
  block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  block.__r_.__value_.__l.__size_ = 1107296256;
  block.__r_.__value_.__r.__words[2] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
  v223 = &__block_descriptor_tmp_12_0;
  *&v225 = v185;
  v224 = &v220;
  dispatch_sync(v39, &block);
  v40 = *(v220.__r_.__value_.__l.__size_ + 24);
  _Block_object_dispose(&v220, 8);
  if (v40 == 1)
  {
    v17 = v185;
    v175 = ACFULogging::getLogInstance(v41);
    ACFULogging::handleMessage(v175, 2, "%s::%s: failed to collect coredump (timeout)\n", "DaleCoredump", "collectExceptionInfo");
    goto LABEL_379;
  }

  if (v37)
  {
    v17 = v185;
    v176 = ACFULogging::getLogInstance(v41);
    ACFULogging::handleMessage(v176, 2, "%s::%s: failed to collect coredump (ACFU error code = %d)\n", "DaleCoredump", "collectExceptionInfo", v37);
    goto LABEL_379;
  }

  memset(&__s, 0, sizeof(__s));
  v42 = v203;
  v43 = xpc_dictionary_create(0, 0, 0);
  if (v43 || (v43 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6927F20](v43) == MEMORY[0x1E69E9E80])
    {
      xpc_retain(v43);
      v44 = v43;
    }

    else
    {
      v44 = xpc_null_create();
    }
  }

  else
  {
    v44 = xpc_null_create();
    v43 = 0;
  }

  xpc_release(v43);
  v45 = xpc_array_create(0, 0);
  v46 = MEMORY[0x1E69E9E50];
  if (v45 || (v45 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6927F20](v45) == v46)
    {
      xpc_retain(v45);
      v47 = v45;
    }

    else
    {
      v47 = xpc_null_create();
    }
  }

  else
  {
    v47 = xpc_null_create();
    v45 = 0;
  }

  xpc_release(v45);
  v48 = xpc_array_create(0, 0);
  if (v48 || (v48 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6927F20](v48) == v46)
    {
      xpc_retain(v48);
      v49 = v48;
    }

    else
    {
      v49 = xpc_null_create();
    }
  }

  else
  {
    v49 = xpc_null_create();
    v48 = 0;
  }

  xpc_release(v48);
  v50 = xpc_array_create(0, 0);
  if (v50 || (v50 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6927F20](v50) == v46)
    {
      xpc_retain(v50);
      v51 = v50;
    }

    else
    {
      v51 = xpc_null_create();
    }
  }

  else
  {
    v51 = xpc_null_create();
    v50 = 0;
  }

  xpc_release(v50);
  v184 = v44;
  if (v204 == v203)
  {
    v177 = ACFULogging::getLogInstance(v52);
    ACFULogging::handleMessage(v177, 2, "%s::%s: invalid crash reason buffer\n");
    goto LABEL_154;
  }

  if (!v42)
  {
    v178 = ACFULogging::getLogInstance(v52);
    ACFULogging::handleMessage(v178, 2, "%s::%s: invalid crash reason buffer data\n");
    goto LABEL_154;
  }

  v53 = *(this + 25);
  if (!v53)
  {
    memset(&block, 170, sizeof(block));
    if (*(this + 135) < 0)
    {
      std::string::__init_copy_ctor_external(&block, *(this + 14), *(this + 15));
    }

    else
    {
      block = *(this + 112);
    }

    v66 = SHIBYTE(block.__r_.__value_.__r.__words[2]);
    if ((block.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(block.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = block.__r_.__value_.__l.__size_;
    }

    v68 = size + 12;
    if (size + 12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v68 < 0x17)
    {
      memset(&v220, 0, sizeof(v220));
      v70 = &v220;
      *(&v220.__r_.__value_.__s + 23) = size + 12;
      if (!size)
      {
        goto LABEL_175;
      }
    }

    else
    {
      if ((v68 | 7) == 0x17)
      {
        v69 = 25;
      }

      else
      {
        v69 = (v68 | 7) + 1;
      }

      v70 = operator new(v69);
      v220.__r_.__value_.__l.__size_ = size + 12;
      v220.__r_.__value_.__r.__words[2] = v69 | 0x8000000000000000;
      v220.__r_.__value_.__r.__words[0] = v70;
    }

    if (v66 >= 0)
    {
      v71 = &block;
    }

    else
    {
      v71 = block.__r_.__value_.__r.__words[0];
    }

    v53 = memmove(v70, v71, size);
LABEL_175:
    v44 = v184;
    strcpy(v70 + size, "/report.json");
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
      __s = v220;
      if ((*(&block.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_177;
      }
    }

    else
    {
      __s = v220;
      if ((v66 & 0x80) == 0)
      {
        goto LABEL_177;
      }
    }

    operator delete(block.__r_.__value_.__l.__data_);
    if (*v42 == 67)
    {
      goto LABEL_178;
    }

LABEL_352:
    v165 = ACFULogging::getLogInstance(v53);
    ACFULogging::handleMessage(v165, 2, "%s::%s: invalid crash reason header\n");
    goto LABEL_154;
  }

  memset(&block, 0, sizeof(block));
  v217.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v54 = ACFUDiagnostics::copyDiagnosticsPath(v53);
  v56 = v54;
  v217.__r_.__value_.__r.__words[0] = v54;
  if (!v54)
  {
    v180 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v180, 2, "%s::%s: invalid diagnostics path\n", "DaleCoredump", "parseAndSaveCrashReason");
    goto LABEL_154;
  }

  v57 = ACFUCommon::stringFromCFString(&v220, v54, v55);
  block = v220;
  v58 = SHIBYTE(v220.__r_.__value_.__r.__words[2]);
  if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = v220.__r_.__value_.__l.__size_;
  }

  if (v59)
  {
    v60 = v59 + 12;
    if (v59 + 12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v60 <= 0x16)
    {
      memset(&v220, 0, sizeof(v220));
      v62 = &v220;
      *(&v220.__r_.__value_.__s + 23) = v59 + 12;
    }

    else
    {
      if ((v60 | 7) == 0x17)
      {
        v61 = 25;
      }

      else
      {
        v61 = (v60 | 7) + 1;
      }

      v62 = operator new(v61);
      v220.__r_.__value_.__l.__size_ = v59 + 12;
      v220.__r_.__value_.__r.__words[2] = v61 | 0x8000000000000000;
      v220.__r_.__value_.__r.__words[0] = v62;
    }

    if (v58 >= 0)
    {
      v63 = &block;
    }

    else
    {
      v63 = block.__r_.__value_.__r.__words[0];
    }

    memmove(v62, v63, v59);
    strcpy(v62 + v59, "/report.json");
    v44 = v184;
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    __s = v220;
  }

  else
  {
    v181 = ACFULogging::getLogInstance(v57);
    ACFULogging::handleMessage(v181, 2, "%s::%s: failed to get coredump info save directory in str format\n", "DaleCoredump", "parseAndSaveCrashReason");
  }

  CFRelease(v56);
  if (v58 < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
    if (!v59)
    {
      goto LABEL_154;
    }
  }

  else if (!v59)
  {
LABEL_154:
    if (v204 != v203)
    {
      v64 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v65 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v64 = __s.__r_.__value_.__l.__size_;
      }

      if (v64)
      {
        v214[0] = 0xAAAAAAAAAAAAAAAALL;
        v214[1] = 0xAAAAAAAAAAAAAAAALL;
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v220, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
        }

        else
        {
          v220 = __s;
        }

        support::fs::SyncFile::create(&v220, 52, 0x100000uLL, v214);
        if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v220.__r_.__value_.__l.__data_);
        }

        if (v214[0])
        {
          block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
          block.__r_.__value_.__l.__size_ = 0x40000000;
          block.__r_.__value_.__r.__words[2] = ___ZN7support2fs8SyncFile4openEv_block_invoke;
          v223 = &__block_descriptor_tmp_2;
          v224 = v214[0];
          ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped(v214[0] + 1, &block);
          isOpen = support::fs::SyncFile::isOpen(v214[0]);
          if (isOpen)
          {
            support::fs::SyncFile::write(v214[0], v203, v204 - v203);
            __dst.__r_.__value_.__l.__data_ = v214[0];
            block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
            block.__r_.__value_.__l.__size_ = 0x40000000;
            block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5closeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
            v223 = &__block_descriptor_tmp_17;
            v224 = (v214[0] + 8);
            *&v225 = &__dst;
            v168 = *(v214[0] + 3);
            if (*(v214[0] + 4))
            {
              dispatch_async_and_wait(v168, &block);
            }

            else
            {
              dispatch_sync(v168, &block);
            }

            v170 = ACFULogging::getLogInstance(v169);
            v171 = 0;
            v172 = "%s::%s: successfully written raw crash reason to %s\n";
            p_s = &__s;
          }

          else
          {
            v170 = ACFULogging::getLogInstance(isOpen);
            p_s = (v214[0] + 40);
            v65 = *(v214[0] + 63);
            v172 = "%s::%s: failed to open file (%s)\n";
            v171 = 2;
          }

          if (v65 < 0)
          {
            p_s = p_s->__r_.__value_.__r.__words[0];
          }

          ACFULogging::handleMessage(v170, v171, v172, "DaleCoredump", "writeRawCrashReasonToDisk", p_s);
        }

        else
        {
          v183 = ACFULogging::getLogInstance(v166);
          ACFULogging::handleMessage(v183, 2, "%s::%s: failed to create crash reason file\n", "DaleCoredump", "writeRawCrashReasonToDisk");
        }

        v174 = v214[1];
        if (v214[1] && !atomic_fetch_add(v214[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v174->__on_zero_shared)(v174);
          std::__shared_weak_count::__release_weak(v174);
        }
      }
    }

    goto LABEL_334;
  }

LABEL_177:
  if (*v42 != 67)
  {
    goto LABEL_352;
  }

LABEL_178:
  if (v42[1] != 82 || v42[2] != 69)
  {
    goto LABEL_352;
  }

  v186 = v51;
  xarray = v47;
  v72 = 0;
  v73 = v42 + 272;
  v74 = v42;
  do
  {
    v75 = *&v73[v72];
    v220.__r_.__value_.__r.__words[2] = 6;
    *&v220.__r_.__value_.__l.__data_ = v75;
    *&v76 = 0xAAAAAAAAAAAAAAAALL;
    *(&v76 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v239 = v76;
    v240 = v76;
    v237 = v76;
    v238 = v76;
    v235 = v76;
    v236 = v76;
    v233 = v76;
    v234 = v76;
    v231 = v76;
    v232 = v76;
    v229 = v76;
    v230 = v76;
    v227 = v76;
    v228 = v76;
    v225 = v76;
    v226 = v76;
    block.__r_.__value_.__r.__words[0] = &v225;
    *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
    v223 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v224 = 0;
    __src = &v225;
    v217.__r_.__value_.__r.__words[0] = 1;
    v217.__r_.__value_.__l.__size_ = &v220;
    v217.__r_.__value_.__r.__words[2] = 6;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v217);
    v77 = block.__r_.__value_.__r.__words[2];
    if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v78 = __src;
    if (block.__r_.__value_.__r.__words[2] >= 0x17)
    {
      if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
      {
        v85 = 25;
      }

      else
      {
        v85 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
      }

      p_dst = operator new(v85);
      __dst.__r_.__value_.__l.__size_ = v77;
      __dst.__r_.__value_.__r.__words[2] = v85 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
      v42 = v74;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
      p_dst = &__dst;
      if (!block.__r_.__value_.__r.__words[2])
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        v80 = __src;
        if (__src == &v225)
        {
          goto LABEL_186;
        }

LABEL_185:
        operator delete(v80);
        goto LABEL_186;
      }
    }

    memmove(p_dst, v78, v77);
    *(p_dst + v77) = 0;
    v80 = __src;
    if (__src != &v225)
    {
      goto LABEL_185;
    }

LABEL_186:
    v81 = std::string::insert(&__dst, 0, "0x", 2uLL);
    v82 = *&v81->__r_.__value_.__l.__data_;
    v215 = v81->__r_.__value_.__r.__words[2];
    *v214 = v82;
    v81->__r_.__value_.__l.__size_ = 0;
    v81->__r_.__value_.__r.__words[2] = 0;
    v81->__r_.__value_.__r.__words[0] = 0;
    if (v215 >= 0)
    {
      v83 = v214;
    }

    else
    {
      v83 = v214[0];
    }

    v84 = xpc_string_create(v83);
    if (!v84)
    {
      v84 = xpc_null_create();
    }

    xpc_array_append_value(xarray, v84);
    xpc_release(v84);
    if (SHIBYTE(v215) < 0)
    {
      operator delete(v214[0]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_193:
        if (!*&v73[v72])
        {
          break;
        }

        goto LABEL_203;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_193;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!*&v73[v72])
    {
      break;
    }

LABEL_203:
    v86 = v72 == 60;
    v72 += 4;
  }

  while (!v86);
  v87 = 336;
  do
  {
    v88 = *&v42[v87];
    v220.__r_.__value_.__r.__words[2] = 6;
    *&v220.__r_.__value_.__l.__data_ = v88;
    *&v89 = 0xAAAAAAAAAAAAAAAALL;
    *(&v89 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v239 = v89;
    v240 = v89;
    v237 = v89;
    v238 = v89;
    v235 = v89;
    v236 = v89;
    v233 = v89;
    v234 = v89;
    v231 = v89;
    v232 = v89;
    v229 = v89;
    v230 = v89;
    v227 = v89;
    v228 = v89;
    v225 = v89;
    v226 = v89;
    block.__r_.__value_.__r.__words[0] = &v225;
    *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
    v223 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v224 = 0;
    __src = &v225;
    v217.__r_.__value_.__r.__words[0] = 1;
    v217.__r_.__value_.__l.__size_ = &v220;
    v217.__r_.__value_.__r.__words[2] = 6;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v217);
    v90 = block.__r_.__value_.__r.__words[2];
    if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v91 = __src;
    if (block.__r_.__value_.__r.__words[2] >= 0x17)
    {
      if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
      {
        v98 = 25;
      }

      else
      {
        v98 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
      }

      v92 = operator new(v98);
      __dst.__r_.__value_.__l.__size_ = v90;
      __dst.__r_.__value_.__r.__words[2] = v98 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v92;
      v42 = v74;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
      v92 = &__dst;
      if (!block.__r_.__value_.__r.__words[2])
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        v93 = __src;
        if (__src == &v225)
        {
          goto LABEL_211;
        }

LABEL_210:
        operator delete(v93);
        goto LABEL_211;
      }
    }

    memmove(v92, v91, v90);
    *(v92 + v90) = 0;
    v93 = __src;
    if (__src != &v225)
    {
      goto LABEL_210;
    }

LABEL_211:
    v94 = std::string::insert(&__dst, 0, "0x", 2uLL);
    v95 = *&v94->__r_.__value_.__l.__data_;
    v215 = v94->__r_.__value_.__r.__words[2];
    *v214 = v95;
    v94->__r_.__value_.__l.__size_ = 0;
    v94->__r_.__value_.__r.__words[2] = 0;
    v94->__r_.__value_.__r.__words[0] = 0;
    if (v215 >= 0)
    {
      v96 = v214;
    }

    else
    {
      v96 = v214[0];
    }

    v97 = xpc_string_create(v96);
    if (!v97)
    {
      v97 = xpc_null_create();
    }

    xpc_array_append_value(v49, v97);
    xpc_release(v97);
    if (SHIBYTE(v215) < 0)
    {
      operator delete(v214[0]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_218:
        if (!*&v42[v87])
        {
          break;
        }

        goto LABEL_228;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_218;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!*&v42[v87])
    {
      break;
    }

LABEL_228:
    v86 = v87 == 972;
    v87 += 4;
  }

  while (!v86);
  v99 = 0;
  v100 = v42 + 976;
  do
  {
    v101 = *&v100[v99];
    v220.__r_.__value_.__r.__words[2] = 6;
    *&v220.__r_.__value_.__l.__data_ = v101;
    *&v102 = 0xAAAAAAAAAAAAAAAALL;
    *(&v102 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v239 = v102;
    v240 = v102;
    v237 = v102;
    v238 = v102;
    v235 = v102;
    v236 = v102;
    v233 = v102;
    v234 = v102;
    v231 = v102;
    v232 = v102;
    v229 = v102;
    v230 = v102;
    v227 = v102;
    v228 = v102;
    v225 = v102;
    v226 = v102;
    block.__r_.__value_.__r.__words[0] = &v225;
    *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
    v223 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v224 = 0;
    __src = &v225;
    v217.__r_.__value_.__r.__words[0] = 1;
    v217.__r_.__value_.__l.__size_ = &v220;
    v217.__r_.__value_.__r.__words[2] = 6;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v217);
    v103 = block.__r_.__value_.__r.__words[2];
    if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v104 = __src;
    if (block.__r_.__value_.__r.__words[2] >= 0x17)
    {
      if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
      {
        v111 = 25;
      }

      else
      {
        v111 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
      }

      v105 = operator new(v111);
      __dst.__r_.__value_.__l.__size_ = v103;
      __dst.__r_.__value_.__r.__words[2] = v111 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v105;
      v42 = v74;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
      v105 = &__dst;
      if (!block.__r_.__value_.__r.__words[2])
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        v106 = __src;
        if (__src == &v225)
        {
          goto LABEL_236;
        }

LABEL_235:
        operator delete(v106);
        goto LABEL_236;
      }
    }

    memmove(v105, v104, v103);
    *(v105 + v103) = 0;
    v106 = __src;
    if (__src != &v225)
    {
      goto LABEL_235;
    }

LABEL_236:
    v107 = std::string::insert(&__dst, 0, "0x", 2uLL);
    v108 = *&v107->__r_.__value_.__l.__data_;
    v215 = v107->__r_.__value_.__r.__words[2];
    *v214 = v108;
    v107->__r_.__value_.__l.__size_ = 0;
    v107->__r_.__value_.__r.__words[2] = 0;
    v107->__r_.__value_.__r.__words[0] = 0;
    if (v215 >= 0)
    {
      v109 = v214;
    }

    else
    {
      v109 = v214[0];
    }

    v110 = xpc_string_create(v109);
    if (!v110)
    {
      v110 = xpc_null_create();
    }

    xpc_array_append_value(v186, v110);
    xpc_release(v110);
    if (SHIBYTE(v215) < 0)
    {
      operator delete(v214[0]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_243:
        if (!*&v100[v99])
        {
          break;
        }

        goto LABEL_253;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_243;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!*&v100[v99])
    {
      break;
    }

LABEL_253:
    v86 = v99 == 44;
    v99 += 4;
  }

  while (!v86);
  v112 = *(v42 + 1);
  v220.__r_.__value_.__r.__words[2] = 6;
  *&v220.__r_.__value_.__l.__data_ = v112;
  *&v113 = 0xAAAAAAAAAAAAAAAALL;
  *(&v113 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v239 = v113;
  v240 = v113;
  v238 = v113;
  v237 = v113;
  v236 = v113;
  v235 = v113;
  v234 = v113;
  v233 = v113;
  v232 = v113;
  v231 = v113;
  v230 = v113;
  v229 = v113;
  v228 = v113;
  v227 = v113;
  v226 = v113;
  v225 = v113;
  block.__r_.__value_.__r.__words[0] = &v225;
  *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
  v223 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v224 = 0;
  __src = &v225;
  v217.__r_.__value_.__r.__words[0] = 1;
  v217.__r_.__value_.__l.__size_ = &v220;
  v217.__r_.__value_.__r.__words[2] = 6;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v217);
  v114 = block.__r_.__value_.__r.__words[2];
  v44 = v184;
  v47 = xarray;
  v51 = v186;
  if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v115 = __src;
  if (block.__r_.__value_.__r.__words[2] >= 0x17)
  {
    if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
    {
      v149 = 25;
    }

    else
    {
      v149 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
    }

    v116 = operator new(v149);
    __dst.__r_.__value_.__l.__size_ = v114;
    __dst.__r_.__value_.__r.__words[2] = v149 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v116;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
    v116 = &__dst;
    if (!block.__r_.__value_.__r.__words[2])
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v117 = __src;
      if (__src != &v225)
      {
        goto LABEL_259;
      }

      goto LABEL_260;
    }
  }

  memmove(v116, v115, v114);
  *(v116 + v114) = 0;
  v117 = __src;
  if (__src != &v225)
  {
LABEL_259:
    operator delete(v117);
  }

LABEL_260:
  v118 = std::string::insert(&__dst, 0, "0x", 2uLL);
  v119 = *&v118->__r_.__value_.__l.__data_;
  v215 = v118->__r_.__value_.__r.__words[2];
  *v214 = v119;
  v118->__r_.__value_.__l.__size_ = 0;
  v118->__r_.__value_.__r.__words[2] = 0;
  v118->__r_.__value_.__r.__words[0] = 0;
  if (v215 >= 0)
  {
    v120 = v214;
  }

  else
  {
    v120 = v214[0];
  }

  v121 = xpc_string_create(v120);
  if (!v121)
  {
    v121 = xpc_null_create();
  }

  xpc_dictionary_set_value(v184, "exp_reg", v121);
  v122 = xpc_null_create();
  xpc_release(v121);
  xpc_release(v122);
  if (SHIBYTE(v215) < 0)
  {
    operator delete(v214[0]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_314;
    }
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_267;
    }

LABEL_314:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_267:
  v123 = *(v42 + 2);
  v220.__r_.__value_.__r.__words[2] = 6;
  *&v220.__r_.__value_.__l.__data_ = v123;
  *&v124 = 0xAAAAAAAAAAAAAAAALL;
  *(&v124 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v239 = v124;
  v240 = v124;
  v238 = v124;
  v237 = v124;
  v236 = v124;
  v235 = v124;
  v234 = v124;
  v233 = v124;
  v232 = v124;
  v231 = v124;
  v230 = v124;
  v229 = v124;
  v228 = v124;
  v227 = v124;
  v226 = v124;
  v225 = v124;
  block.__r_.__value_.__r.__words[0] = &v225;
  *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
  v223 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v224 = 0;
  __src = &v225;
  v217.__r_.__value_.__r.__words[0] = 1;
  v217.__r_.__value_.__l.__size_ = &v220;
  v217.__r_.__value_.__r.__words[2] = 6;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v217);
  v125 = block.__r_.__value_.__r.__words[2];
  if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v126 = __src;
  if (block.__r_.__value_.__r.__words[2] >= 0x17)
  {
    if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
    {
      v150 = 25;
    }

    else
    {
      v150 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
    }

    v127 = operator new(v150);
    __dst.__r_.__value_.__l.__size_ = v125;
    __dst.__r_.__value_.__r.__words[2] = v150 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v127;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
    v127 = &__dst;
    if (!block.__r_.__value_.__r.__words[2])
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v128 = __src;
      if (__src != &v225)
      {
        goto LABEL_271;
      }

      goto LABEL_272;
    }
  }

  memmove(v127, v126, v125);
  *(v127 + v125) = 0;
  v128 = __src;
  if (__src != &v225)
  {
LABEL_271:
    operator delete(v128);
  }

LABEL_272:
  v129 = std::string::insert(&__dst, 0, "0x", 2uLL);
  v130 = *&v129->__r_.__value_.__l.__data_;
  v215 = v129->__r_.__value_.__r.__words[2];
  *v214 = v130;
  v129->__r_.__value_.__l.__size_ = 0;
  v129->__r_.__value_.__r.__words[2] = 0;
  v129->__r_.__value_.__r.__words[0] = 0;
  if (v215 >= 0)
  {
    v131 = v214;
  }

  else
  {
    v131 = v214[0];
  }

  v132 = xpc_string_create(v131);
  if (!v132)
  {
    v132 = xpc_null_create();
  }

  xpc_dictionary_set_value(v184, "rgu_reg", v132);
  v133 = xpc_null_create();
  xpc_release(v132);
  xpc_release(v133);
  if (SHIBYTE(v215) < 0)
  {
    operator delete(v214[0]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_316;
    }
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_279;
    }

LABEL_316:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_279:
  v134 = *(v42 + 3);
  v220.__r_.__value_.__r.__words[2] = 6;
  *&v220.__r_.__value_.__l.__data_ = v134;
  *&v135 = 0xAAAAAAAAAAAAAAAALL;
  *(&v135 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v239 = v135;
  v240 = v135;
  v238 = v135;
  v237 = v135;
  v236 = v135;
  v235 = v135;
  v234 = v135;
  v233 = v135;
  v232 = v135;
  v231 = v135;
  v230 = v135;
  v229 = v135;
  v228 = v135;
  v227 = v135;
  v226 = v135;
  v225 = v135;
  block.__r_.__value_.__r.__words[0] = &v225;
  *&block.__r_.__value_.__r.__words[1] = xmmword_1E5395710;
  v223 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v224 = 0;
  __src = &v225;
  v217.__r_.__value_.__r.__words[0] = 1;
  v217.__r_.__value_.__l.__size_ = &v220;
  v217.__r_.__value_.__r.__words[2] = 6;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&block, &v217);
  v136 = block.__r_.__value_.__r.__words[2];
  if (block.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v137 = __src;
  if (block.__r_.__value_.__r.__words[2] >= 0x17)
  {
    if ((block.__r_.__value_.__r.__words[2] | 7) == 0x17)
    {
      v151 = 25;
    }

    else
    {
      v151 = (block.__r_.__value_.__r.__words[2] | 7) + 1;
    }

    v138 = operator new(v151);
    __dst.__r_.__value_.__l.__size_ = v136;
    __dst.__r_.__value_.__r.__words[2] = v151 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v138;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = block.__r_.__value_.__s.__data_[16];
    v138 = &__dst;
    if (!block.__r_.__value_.__r.__words[2])
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v139 = __src;
      if (__src != &v225)
      {
        goto LABEL_283;
      }

      goto LABEL_284;
    }
  }

  memmove(v138, v137, v136);
  *(v138 + v136) = 0;
  v139 = __src;
  if (__src != &v225)
  {
LABEL_283:
    operator delete(v139);
  }

LABEL_284:
  v140 = std::string::insert(&__dst, 0, "0x", 2uLL);
  v141 = *&v140->__r_.__value_.__l.__data_;
  v215 = v140->__r_.__value_.__r.__words[2];
  *v214 = v141;
  v140->__r_.__value_.__l.__size_ = 0;
  v140->__r_.__value_.__r.__words[2] = 0;
  v140->__r_.__value_.__r.__words[0] = 0;
  if (v215 >= 0)
  {
    v142 = v214;
  }

  else
  {
    v142 = v214[0];
  }

  v143 = xpc_string_create(v142);
  if (!v143)
  {
    v143 = xpc_null_create();
  }

  xpc_dictionary_set_value(v184, "lpc_reg", v143);
  v144 = xpc_null_create();
  xpc_release(v143);
  xpc_release(v144);
  if (SHIBYTE(v215) < 0)
  {
    operator delete(v214[0]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_318;
    }
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_291;
    }

LABEL_318:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_291:
  v145 = operator new(0x108uLL);
  memmove(v145, v42 + 16, 0x100uLL);
  v145[256] = 0;
  v146 = xpc_string_create(v145);
  if (!v146)
  {
    v146 = xpc_null_create();
  }

  xpc_dictionary_set_value(v184, "signature", v146);
  v147 = xpc_null_create();
  xpc_release(v146);
  xpc_release(v147);
  operator delete(v145);
  if (xarray)
  {
    xpc_retain(xarray);
    v148 = xarray;
  }

  else
  {
    v148 = xpc_null_create();
  }

  xpc_dictionary_set_value(v184, "stack", v148);
  v152 = xpc_null_create();
  xpc_release(v148);
  xpc_release(v152);
  if (v49)
  {
    xpc_retain(v49);
    v153 = v49;
  }

  else
  {
    v153 = xpc_null_create();
  }

  xpc_dictionary_set_value(v184, "pc_trace", v153);
  v154 = xpc_null_create();
  xpc_release(v153);
  xpc_release(v154);
  if (v186)
  {
    xpc_retain(v186);
    v155 = v186;
  }

  else
  {
    v155 = xpc_null_create();
  }

  xpc_dictionary_set_value(v184, "reserved", v155);
  v156 = xpc_null_create();
  xpc_release(v155);
  xpc_release(v156);
  object = v184;
  if (v184)
  {
    xpc_retain(v184);
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_328;
    }

LABEL_330:
    std::string::__init_copy_ctor_external(&v217, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    object = xpc_null_create();
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_330;
    }

LABEL_328:
    v217 = __s;
  }

  v157 = util::writeJSON(&object, &v217);
  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v217.__r_.__value_.__l.__data_);
  }

  xpc_release(object);
  object = 0;
  if ((v157 & 1) == 0)
  {
    v179 = ACFULogging::getLogInstance(v158);
    ACFULogging::handleMessage(v179, 2, "%s::%s: Failed to store crash reason\n");
    goto LABEL_154;
  }

LABEL_334:
  xpc_release(v51);
  xpc_release(v49);
  xpc_release(v47);
  xpc_release(v44);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v159 = 1;
  v17 = v185;
  v160 = v203;
  if (v203)
  {
LABEL_337:
    v204 = v160;
    operator delete(v160);
  }

LABEL_338:
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v161 = v207;
  if (v207 && !atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v161->__on_zero_shared)(v161);
    std::__shared_weak_count::__release_weak(v161);
  }

  v162 = v209;
  if (v209 && !atomic_fetch_add(&v209->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v162->__on_zero_shared)(v162);
    std::__shared_weak_count::__release_weak(v162);
  }

  v163 = v211;
  if (v211 && !atomic_fetch_add(&v211->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v163->__on_zero_shared)(v163);
    std::__shared_weak_count::__release_weak(v163);
  }

  return v159;
}

void sub_1E537904C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, xpc_object_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _Unwind_Exception *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, xpc_object_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a65);
  if (v65 < 0)
  {
    operator delete(STACK[0x210]);
  }

  xpc_release(v68);
  xpc_release(v67);
  xpc_release(v66);
  xpc_release(a12);
  if (a64 < 0)
  {
    operator delete(a59);
    v70 = a42;
    if (a42)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v70 = a42;
    if (a42)
    {
LABEL_5:
      operator delete(v70);
      if (!a13)
      {
LABEL_10:
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a45);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a47);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a49);
        _Unwind_Resume(a1);
      }

LABEL_9:
      (*(*a13 + 8))(a13);
      goto LABEL_10;
    }
  }

  if (!a13)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1E5379590(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t DaleCoredump::collectCoredump(DaleCoredump *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: collecting coredump...\n", "DaleCoredump", "collectCoredump");

  return DaleCoredump::collectExceptionInfo(this, 0);
}

uint64_t DaleCoredump::collectCrashReason(DaleCoredump *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: collecting crash reason...\n", "DaleCoredump", "collectCrashReason");

  return DaleCoredump::collectExceptionInfo(this, 1);
}

void DaleCoredump::~DaleCoredump(DaleCoredump *this)
{
  *this = &unk_1F5F064A8;
  BasebandCoredumpParams::~BasebandCoredumpParams((this + 8));
}

{
  *this = &unk_1F5F064A8;
  BasebandCoredumpParams::~BasebandCoredumpParams((this + 8));

  operator delete(this);
}

void std::__shared_ptr_pointer<DaleFirmware_Coredump  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DaleFirmware_Coredump  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DaleFirmware_Coredump  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5395794)
  {
    if (((v2 & 0x80000001E5395794 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5395794))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5395794 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<DaleController  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DaleController  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DaleController  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5395824)
  {
    if (((v2 & 0x80000001E5395824 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5395824))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5395824 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::__function::__func<DaleCoredump::collectExceptionInfo(BOOL)::$_0,std::allocator<DaleCoredump::collectExceptionInfo(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5F065A0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<DaleCoredump::collectExceptionInfo(BOOL)::$_0,std::allocator<DaleCoredump::collectExceptionInfo(BOOL)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F065A0;
  a2[1] = v2;
  return result;
}

ACFULogging *std::__function::__func<DaleCoredump::collectExceptionInfo(BOOL)::$_0,std::allocator<DaleCoredump::collectExceptionInfo(BOOL)::$_0>,void ()(void)>::operator()(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: coredump timeout, aborting via cold-reset\n", "DaleCoredump", "operator()");
  result = (*(***(a1 + 1) + 32))(**(a1 + 1));
  if (result)
  {
    v4 = result;
    v5 = ACFULogging::getLogInstance(result);
    return ACFULogging::handleMessage(v5, 2, "%s::%s: failed to cold-reset (ACFU error code = %d)\n", "DaleCoredump", "operator()", v4);
  }

  return result;
}

uint64_t std::__function::__func<DaleCoredump::collectExceptionInfo(BOOL)::$_0,std::allocator<DaleCoredump::collectExceptionInfo(BOOL)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12DaleCoredump20collectExceptionInfoEbE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12DaleCoredump20collectExceptionInfoEbE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12DaleCoredump20collectExceptionInfoEbE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12DaleCoredump20collectExceptionInfoEbE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    v6 = operator new(v4);
    v7 = v6;
    v8 = *(a1 + 296);
    v9 = *(a1 + 16);
    if (v9)
    {
      memmove(v6, *(a1 + 296), v9);
    }

    if (v8 != (a1 + 40))
    {
      operator delete(v8);
    }

    *(a1 + 296) = v7;
    *a1 = v7;
    *(a1 + 8) = v4;
  }
}

void std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = "{:x}";
  v27[0] = "{:x}";
  v27[1] = "";
  v28 = 0;
  v29 = 0;
  v30 = v3;
  v23 = *a2;
  v24 = a2[2];
  LOBYTE(v20.__locale_) = 0;
  v21 = 0;
  v22 = a1;
  LOBYTE(v25.__locale_) = 0;
  v26 = 0;
  v5 = "The format string terminates at a '{'";
  do
  {
    while (1)
    {
      v6 = *v4;
      if (v6 == 125)
      {
        break;
      }

      if (v6 != 123)
      {
        goto LABEL_16;
      }

      if (++v4 == "")
      {
        goto LABEL_32;
      }

      if (*v4 == 123)
      {
        goto LABEL_16;
      }

      v22 = v2;
      v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4, "", v27);
      if (v7 == "")
      {
        goto LABEL_31;
      }

      v9 = *v7;
      v32 = v9 == 58;
      if (v9 != 125)
      {
        if (v9 != 58)
        {
LABEL_31:
          v5 = "The argument index should end with a ':' or a '}'";
LABEL_32:
          std::__throw_format_error[abi:ne200100](v5);
        }

        ++v7;
      }

      v27[0] = v7;
      v31[0] = v27;
      v31[1] = &v22;
      v31[2] = &v32;
      if (v23 <= v8)
      {
        LOBYTE(v34) = 0;
      }

      else if (v23 > 0xC)
      {
        v18 = (*(&v23 + 1) + 32 * v8);
        v19 = v18[1];
        v33 = *v18;
        v34 = v19;
      }

      else
      {
        v10 = (*(&v23 + 1) + 16 * v8);
        v12 = *v10;
        v11 = v10[1];
        *&v33 = v12;
        *(&v33 + 1) = v11;
        LOBYTE(v34) = (v24 >> (5 * v8)) & 0x1F;
      }

      std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v31, &v33);
      if (v27[0] == "" || *v27[0] != 125)
      {
        v5 = "The replacement field misses a terminating '}'";
        goto LABEL_32;
      }

      v4 = (v27[0] + 1);
      v2 = v22;
      if ((v27[0] + 1) == "")
      {
        goto LABEL_25;
      }
    }

    if (++v4 == "" || *v4 != 125)
    {
      v5 = "The format string contains an invalid escape sequence";
      goto LABEL_32;
    }

LABEL_16:
    v13 = v2[4];
    if (!v13 || (v15 = *v13, v14 = v13[1], v13[1] = v14 + 1, v14 < v15))
    {
      v16 = *v2;
      v17 = v2[2];
      v2[2] = v17 + 1;
      *(v16 + v17) = v6;
      if (v2[2] == v2[1])
      {
        (v2[3])(v2, 2);
      }
    }

    ++v4;
  }

  while (v4 != "");
LABEL_25:
  if (v26 == 1)
  {
    std::locale::~locale(&v25);
    if (v21)
    {
      std::locale::~locale(&v20);
    }
  }
}

void sub_1E5379D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_1F5F06638;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  if (v3 == 125 || (v4 = v3 - 58, v3 == 58))
  {
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }

      ++*(a3 + 24);
    }

    else
    {
      *(a3 + 16) = 2;
      ++*(a3 + 24);
    }
  }

  else
  {
    v5 = v3 - 48;
    if (!v5)
    {
      v6 = *(a3 + 16);
      if (!v6)
      {
        *(a3 + 16) = 1;
        return ++result;
      }

      if (v6 != 2)
      {
        return ++result;
      }

      goto LABEL_37;
    }

    if (v4 <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    if (a2 - result <= 9)
    {
      v8 = a2;
    }

    else
    {
      v8 = result + 9;
    }

    v9 = result + 1;
    if (result + 1 == v8)
    {
      v8 = result + 1;
      if (v9 == a2)
      {
        goto LABEL_27;
      }

LABEL_19:
      v11 = *v8;
      if ((v11 - 48) > 9)
      {
        result = v8;
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v11 + 10 * v5 - 48) >> 31 || (result += 2, result != a2) && *result - 48 <= 9)
        {
          std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
        }

LABEL_30:
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      result = v8 - 1;
      do
      {
        v10 = *v9;
        if ((v10 - 58) < 0xFFFFFFF6)
        {
          result = v9;
          goto LABEL_30;
        }

        v5 = v10 + 10 * v5 - 48;
        ++v9;
      }

      while (v9 != v8);
      if (v8 != a2)
      {
        goto LABEL_19;
      }

LABEL_27:
      result = a2;
      v12 = *(a3 + 16);
      if (!v12)
      {
LABEL_34:
        *(a3 + 16) = 1;
        return result;
      }
    }

    if (v12 == 2)
    {
LABEL_37:
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  return result;
}

void std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 ***a1, unsigned __int8 *a2)
{
  v570[131] = *MEMORY[0x1E69E9840];
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      v569[0].__locale_ = 0;
      LODWORD(v569[1].__locale_) = -1;
      BYTE4(v569[1].__locale_) = 32;
      *(&v569[1].__locale_ + 5) = 0;
      HIBYTE(v569[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_332;
      }

      v4 = *a1;
      v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v569, *a1, 55);
      if (BYTE1(v569[0].__locale_) - 2 < 6)
      {
        *v4 = v5;
        v6 = a1[1];
        v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v569, v6);
        goto LABEL_65;
      }

      if (BYTE1(v569[0].__locale_) > 1u)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
      }

      if ((v569[0].__locale_ & 0x18) != 0)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "sign");
      }

      if ((v569[0].__locale_ & 0x20) != 0)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "alternate form");
      }

      if ((v569[0].__locale_ & 7) == 4)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "zero-padding");
      }

      if (LODWORD(v569[1].__locale_) != -1)
      {
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a BOOL", "precision");
      }

      if ((v569[0].__locale_ & 7) == 0)
      {
        LOBYTE(v569[0].__locale_) |= 1u;
      }

      *v4 = v5;
LABEL_332:
      v6 = a1[1];
      v181 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v569, v6);
      v183 = v182;
      if ((v181 & 0x40) != 0)
      {
        if ((v6[5] & 1) == 0)
        {
          MEMORY[0x1E69272B0](v570);
          v187 = (v6 + 4);
          if (*(v6 + 40) == 1)
          {
            std::locale::operator=(v187, v570);
          }

          else
          {
            std::locale::locale(v187, v570);
            *(v6 + 40) = 1;
          }

          std::locale::~locale(v570);
        }

        std::locale::locale(v566, v6 + 4);
        v216 = std::locale::use_facet(v566, MEMORY[0x1E69E5368]);
        std::locale::~locale(v566);
        memset(v570, 170, 24);
        v217 = v216->__vftable;
        if (v3)
        {
          (v217[2].~facet)(v570, v216);
        }

        else
        {
          (v217[2].~facet_0)(v570, v216);
        }

        if (SHIBYTE(v570[2].__locale_) >= 0)
        {
          locale = v570;
        }

        else
        {
          locale = v570[0].__locale_;
        }

        if (SHIBYTE(v570[2].__locale_) >= 0)
        {
          locale_high = HIBYTE(v570[2].__locale_);
        }

        else
        {
          locale_high = v570[1].__locale_;
        }

        v28 = *v6;
        std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(locale, locale_high, *v6, v181, v183);
        if (SHIBYTE(v570[2].__locale_) < 0)
        {
          operator delete(v570[0].__locale_);
        }
      }

      else
      {
        v184 = v3 == 0;
        if (v3)
        {
          v185 = 4;
        }

        else
        {
          v185 = 5;
        }

        v28 = *v6;
        if (v184)
        {
          v186 = "false";
        }

        else
        {
          v186 = "true";
        }

        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v186, v185, *v6, v181, v183, v185);
      }

      goto LABEL_429;
    case 2u:
      v3 = *a2;
      v570[0].__locale_ = 0;
      LODWORD(v570[1].__locale_) = -1;
      BYTE4(v570[1].__locale_) = 32;
      *(&v570[1].__locale_ + 5) = 0;
      HIBYTE(v570[1].__locale_) = 0;
      if (*a1[2])
      {
        v42 = *a1;
        v43 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v570, *a1, 55);
        v44 = BYTE1(v570[0].__locale_);
        if (BYTE1(v570[0].__locale_) - 2 >= 6)
        {
          if (BYTE1(v570[0].__locale_) > 0x13u || ((1 << SBYTE1(v570[0].__locale_)) & 0x80401) == 0)
          {
            std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a character");
          }

          if ((v570[0].__locale_ & 0x18) != 0)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "sign");
          }

          if ((v570[0].__locale_ & 0x20) != 0)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "alternate form");
          }

          if ((v570[0].__locale_ & 7) == 4)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "zero-padding");
          }

          if (LODWORD(v570[1].__locale_) != -1)
          {
            std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("a character", "precision");
          }

          if ((v570[0].__locale_ & 7) == 0)
          {
            LOBYTE(v570[0].__locale_) |= 1u;
          }
        }

        *v42 = v43;
        v6 = a1[1];
        if (v44 != 10 && v44 != 0)
        {
          v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v570, v6);
LABEL_65:
          v47 = v7;
          v48 = v8;
          v49 = v3;
          v50 = v6;
          goto LABEL_147;
        }
      }

      else
      {
        v6 = a1[1];
      }

      v74 = *v6;
      v88 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v570, v6);
      LOBYTE(v569[0].__locale_) = v3;
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v569, 1uLL, v74, v88, v89, 1);
      goto LABEL_134;
    case 3u:
      LODWORD(v21) = *a2;
      v570[0].__locale_ = 0;
      LODWORD(v570[1].__locale_) = -1;
      BYTE4(v570[1].__locale_) = 32;
      *(&v570[1].__locale_ + 5) = 0;
      HIBYTE(v570[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_73;
      }

      v51 = *a1;
      v52 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v570, *a1, 55);
      if (BYTE1(v570[0].__locale_) - 2 < 6 || BYTE1(v570[0].__locale_) == 0)
      {
        goto LABEL_72;
      }

      if (BYTE1(v570[0].__locale_) != 10)
      {
        goto LABEL_1227;
      }

      if ((v570[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1228;
      }

      if ((v570[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1229;
      }

      if ((v570[0].__locale_ & 7) == 4)
      {
        goto LABEL_1230;
      }

      if (LODWORD(v570[1].__locale_) != -1)
      {
        goto LABEL_1231;
      }

      if ((v570[0].__locale_ & 7) == 0)
      {
        LOBYTE(v570[0].__locale_) |= 1u;
      }

LABEL_72:
      *v51 = v52;
LABEL_73:
      v6 = a1[1];
      v25 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v570, v6);
      v27 = v54;
      if ((v25 & 0xFF00) != 0xA00)
      {
        if (v21 >= 0)
        {
          v49 = v21;
        }

        else
        {
          v49 = -v21;
        }

        v98 = v21 >> 31;
        v50 = v6;
        v47 = v25;
        v48 = v27;
        goto LABEL_148;
      }

      if (v21 == v21)
      {
        goto LABEL_28;
      }

      goto LABEL_1224;
    case 4u:
      v21 = *a2;
      v570[0].__locale_ = 0;
      LODWORD(v570[1].__locale_) = -1;
      BYTE4(v570[1].__locale_) = 32;
      *(&v570[1].__locale_ + 5) = 0;
      HIBYTE(v570[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_26;
      }

      v22 = *a1;
      v23 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v570, *a1, 55);
      if (BYTE1(v570[0].__locale_) - 2 < 6 || BYTE1(v570[0].__locale_) == 0)
      {
        goto LABEL_25;
      }

      if (BYTE1(v570[0].__locale_) != 10)
      {
        goto LABEL_1227;
      }

      if ((v570[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1228;
      }

      if ((v570[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1229;
      }

      if ((v570[0].__locale_ & 7) == 4)
      {
        goto LABEL_1230;
      }

      if (LODWORD(v570[1].__locale_) != -1)
      {
        goto LABEL_1231;
      }

      if ((v570[0].__locale_ & 7) == 0)
      {
        LOBYTE(v570[0].__locale_) |= 1u;
      }

LABEL_25:
      *v22 = v23;
LABEL_26:
      v6 = a1[1];
      v25 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v570, v6);
      v27 = v26;
      if ((v25 & 0xFF00) == 0xA00)
      {
        if (v21 == v21)
        {
LABEL_28:
          v28 = *v6;
          LOBYTE(v569[0].__locale_) = v21;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v569, 1uLL, v28, v25, v27, 1);
LABEL_429:
          *v6 = v28;
          return;
        }

        goto LABEL_1224;
      }

      if (v21 >= 0)
      {
        v90 = v21;
      }

      else
      {
        v90 = -v21;
      }

      v41 = v21 >> 63;
      v91 = v6;
      v92 = v25;
      v93 = v27;
      goto LABEL_152;
    case 5u:
      v59 = *a2;
      v60 = *(a2 + 1);
      v570[0].__locale_ = 0;
      LODWORD(v570[1].__locale_) = -1;
      BYTE4(v570[1].__locale_) = 32;
      *(&v570[1].__locale_ + 5) = 0;
      HIBYTE(v570[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_93;
      }

      v61 = *a1;
      v62 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v570, *a1, 55);
      if (BYTE1(v570[0].__locale_) - 2 < 6 || BYTE1(v570[0].__locale_) == 0)
      {
        goto LABEL_92;
      }

      if (BYTE1(v570[0].__locale_) != 10)
      {
        goto LABEL_1227;
      }

      if ((v570[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1228;
      }

      if ((v570[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1229;
      }

      if ((v570[0].__locale_ & 7) == 4)
      {
        goto LABEL_1230;
      }

      if (LODWORD(v570[1].__locale_) != -1)
      {
        goto LABEL_1231;
      }

      if ((v570[0].__locale_ & 7) == 0)
      {
        LOBYTE(v570[0].__locale_) |= 1u;
      }

LABEL_92:
      *v61 = v62;
LABEL_93:
      v6 = a1[1];
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v570, v6);
      v41 = v64;
      if ((v39 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(-1, -257) < __PAIR128__((v59 >= 0x80) + v60 - 1, v59 - 128))
        {
          v28 = *v6;
          LOBYTE(v569[0].__locale_) = v59;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v569, 1uLL, v28, v39, v64, 1);
          goto LABEL_429;
        }

LABEL_1224:
        std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
      }

      v95 = (__PAIR128__(v60 ^ (v60 >> 63), v59 ^ (v60 >> 63)) - __PAIR128__(v60 >> 63, v60 >> 63)) >> 64;
      v94 = (v59 ^ (v60 >> 63)) - (v60 >> 63);
      v97 = v60 >> 63;
      v96 = v6;
      goto LABEL_150;
    case 6u:
      v34 = *a2;
      v570[0].__locale_ = 0;
      LODWORD(v570[1].__locale_) = -1;
      BYTE4(v570[1].__locale_) = 32;
      *(&v570[1].__locale_ + 5) = 0;
      HIBYTE(v570[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_83;
      }

      v55 = *a1;
      v56 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v570, *a1, 55);
      if (BYTE1(v570[0].__locale_) - 2 < 6 || BYTE1(v570[0].__locale_) == 0)
      {
        goto LABEL_82;
      }

      if (BYTE1(v570[0].__locale_) != 10)
      {
        goto LABEL_1227;
      }

      if ((v570[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1228;
      }

      if ((v570[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1229;
      }

      if ((v570[0].__locale_ & 7) == 4)
      {
        goto LABEL_1230;
      }

      if (LODWORD(v570[1].__locale_) != -1)
      {
        goto LABEL_1231;
      }

      if ((v570[0].__locale_ & 7) == 0)
      {
        LOBYTE(v570[0].__locale_) |= 1u;
      }

LABEL_82:
      *v55 = v56;
LABEL_83:
      v6 = a1[1];
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v570, v6);
      v41 = v58;
      if ((v39 & 0xFF00) != 0xA00)
      {
        v49 = v34;
        v50 = v6;
        v47 = v39;
        v48 = v41;
LABEL_147:
        LOBYTE(v98) = 0;
LABEL_148:
        *v6 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v49, v50, v47, v48, v98);
        return;
      }

      if (v34 < 0x80)
      {
        goto LABEL_114;
      }

      goto LABEL_1224;
    case 7u:
      v34 = *a2;
      v570[0].__locale_ = 0;
      LODWORD(v570[1].__locale_) = -1;
      BYTE4(v570[1].__locale_) = 32;
      *(&v570[1].__locale_ + 5) = 0;
      HIBYTE(v570[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_112;
      }

      v70 = *a1;
      v71 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v570, *a1, 55);
      if (BYTE1(v570[0].__locale_) - 2 < 6 || BYTE1(v570[0].__locale_) == 0)
      {
        goto LABEL_111;
      }

      if (BYTE1(v570[0].__locale_) != 10)
      {
        goto LABEL_1227;
      }

      if ((v570[0].__locale_ & 0x18) != 0)
      {
        goto LABEL_1228;
      }

      if ((v570[0].__locale_ & 0x20) != 0)
      {
        goto LABEL_1229;
      }

      if ((v570[0].__locale_ & 7) == 4)
      {
        goto LABEL_1230;
      }

      if (LODWORD(v570[1].__locale_) != -1)
      {
        goto LABEL_1231;
      }

      if ((v570[0].__locale_ & 7) == 0)
      {
        LOBYTE(v570[0].__locale_) |= 1u;
      }

LABEL_111:
      *v70 = v71;
LABEL_112:
      v6 = a1[1];
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v570, v6);
      v41 = v73;
      if ((v39 & 0xFF00) != 0xA00)
      {
        v90 = v34;
        v91 = v6;
        v92 = v39;
        v93 = v41;
        LOBYTE(v41) = 0;
LABEL_152:
        *v6 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v90, v91, v92, v93, v41);
        return;
      }

      if (v34 >= 0x80)
      {
        goto LABEL_1224;
      }

      goto LABEL_114;
    case 8u:
      v34 = *a2;
      v35 = *(a2 + 1);
      v570[0].__locale_ = 0;
      LODWORD(v570[1].__locale_) = -1;
      BYTE4(v570[1].__locale_) = 32;
      *(&v570[1].__locale_ + 5) = 0;
      HIBYTE(v570[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_45;
      }

      v36 = *a1;
      v37 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v570, *a1, 55);
      if (BYTE1(v570[0].__locale_) - 2 < 6 || BYTE1(v570[0].__locale_) == 0)
      {
        goto LABEL_44;
      }

      if (BYTE1(v570[0].__locale_) != 10)
      {
LABEL_1227:
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
      }

      if ((v570[0].__locale_ & 0x18) != 0)
      {
LABEL_1228:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "sign");
      }

      if ((v570[0].__locale_ & 0x20) != 0)
      {
LABEL_1229:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "alternate form");
      }

      if ((v570[0].__locale_ & 7) == 4)
      {
LABEL_1230:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "zero-padding");
      }

      if (LODWORD(v570[1].__locale_) != -1)
      {
LABEL_1231:
        std::__format_spec::__throw_invalid_option_format_error[abi:ne200100]("an integer", "precision");
      }

      if ((v570[0].__locale_ & 7) == 0)
      {
        LOBYTE(v570[0].__locale_) |= 1u;
      }

LABEL_44:
      *v36 = v37;
LABEL_45:
      v6 = a1[1];
      v39 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v570, v6);
      v41 = v40;
      if ((v39 & 0xFF00) != 0xA00)
      {
        v94 = v34;
        v95 = v35;
        v96 = v6;
        LOBYTE(v97) = 0;
LABEL_150:
        *v6 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v94, v95, v96, v39, v41, v97);
        return;
      }

      if (__PAIR128__(v35, v34) >= 0x80)
      {
        goto LABEL_1224;
      }

LABEL_114:
      v74 = *v6;
      LOBYTE(v569[0].__locale_) = v34;
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v569, 1uLL, v74, v39, v41, 1);
LABEL_134:
      *v6 = v74;
      return;
    case 9u:
      v29 = *a2;
      v561.__locale_ = 0;
      v562 = -1;
      v563 = 32;
      v564 = 0;
      v565 = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_158;
      }

      v30 = *a1;
      v31 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v561, *a1, 63);
      if (BYTE1(v561.__locale_) - 13 >= 6)
      {
        if (BYTE1(v561.__locale_) <= 0xCu && ((1 << SBYTE1(v561.__locale_)) & 0x1801) != 0)
        {
          goto LABEL_157;
        }

LABEL_1237:
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
      }

      v32 = v562 != -1 || SWORD1(v561.__locale_) <= -1;
      if (v32)
      {
        v33 = v562;
      }

      else
      {
        v33 = 6;
      }

      v562 = v33;
LABEL_157:
      *v30 = v31;
LABEL_158:
      v100 = a1[1];
      v103 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v561, v100);
      v104 = v101;
      if ((LODWORD(v29) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        *v100 = std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(*v100, v103, v101, v29 < 0.0, 0);
        return;
      }

      *&v105 = 0xAAAAAAAAAAAAAAAALL;
      *(&v105 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v570[33].__locale_ = v105;
      *&v570[31].__locale_ = v105;
      *&v570[29].__locale_ = v105;
      *&v570[27].__locale_ = v105;
      *&v570[25].__locale_ = v105;
      *&v570[23].__locale_ = v105;
      *&v570[21].__locale_ = v105;
      *&v570[19].__locale_ = v105;
      *&v570[17].__locale_ = v105;
      *&v570[15].__locale_ = v105;
      *&v570[13].__locale_ = v105;
      *&v570[11].__locale_ = v105;
      *&v570[9].__locale_ = v105;
      *&v570[7].__locale_ = v105;
      *&v570[5].__locale_ = v105;
      *&v570[3].__locale_ = v105;
      *&v570[1].__locale_ = v105;
      if (v101 == -1)
      {
        v106 = 149;
      }

      else
      {
        v106 = v101;
      }

      v570[0].__locale_ = v106;
      if (v106 < 150)
      {
        v107 = v106 + 45;
        v570[1].__locale_ = v107;
        if ((v106 + 45) >= 0x101)
        {
          v108 = operator new(v106 + 45);
          v106 = v104;
          goto LABEL_167;
        }
      }

      else
      {
        LODWORD(v570[0].__locale_) = 149;
        HIDWORD(v570[0].__locale_) = v106 - 149;
        v107 = 194;
        v570[1].__locale_ = 194;
        v106 = 149;
      }

      v108 = &v570[3];
LABEL_167:
      v109 = v103;
      v559 = v103;
      v110 = BYTE1(v103);
      v570[2].__locale_ = v108;
      if ((LODWORD(v29) & 0x80000000) != 0)
      {
        v114 = 45;
        v112 = v109;
      }

      else
      {
        v111 = (v109 >> 3) & 3;
        v112 = v109;
        if (v111 == 2)
        {
          v114 = 43;
        }

        else
        {
          v113 = v108;
          if (v111 != 3)
          {
            goto LABEL_174;
          }

          v114 = 32;
        }
      }

      *v108 = v114;
      v113 = (v108 + 1);
LABEL_174:
      v115 = fabsf(v29);
      v557 = v104;
      if (v110 > 14)
      {
        if ((v110 - 15) >= 2)
        {
          if (v110 == 17)
          {
            HIDWORD(v570[0].__locale_) = 0;
            v117 = MEMORY[0x1E69273A0](v113, v108 + v107, 3, v106, v115);
            v126 = (v113 + 1);
            if ((v113 + 1) != v117)
            {
              v127 = v117 - v126;
              if (v117 - v126 >= 4)
              {
                v128 = 6;
                if (v127 < 6)
                {
                  v128 = v117 - v126;
                }

                v129 = -v128;
                while (*(v117 + v129) != 101)
                {
                  if (++v129 == -3)
                  {
                    goto LABEL_353;
                  }
                }

                goto LABEL_554;
              }

              goto LABEL_353;
            }
          }

          else
          {
            HIDWORD(v570[0].__locale_) = 0;
            v117 = MEMORY[0x1E69273A0](v113, v108 + v107, 3, v106, v115);
            v126 = (v113 + 1);
            if ((v113 + 1) != v117)
            {
              v127 = v117 - v126;
              if (v117 - v126 >= 4)
              {
                v189 = 6;
                if (v127 < 6)
                {
                  v189 = v117 - v126;
                }

                v190 = -v189;
                while (*(v117 + v190) != 101)
                {
                  if (++v190 == -3)
                  {
                    goto LABEL_353;
                  }
                }

                v118 = (v117 + v190);
                if (*v126 == 46)
                {
                  v121 = v113 + 1;
                }

                else
                {
                  v121 = v117;
                }

LABEL_574:
                *v118 = 69;
                goto LABEL_588;
              }

LABEL_353:
              v191 = memchr(v126, 46, v127);
              if (v191)
              {
                v121 = v191;
              }

              else
              {
                v121 = v117;
              }

              v118 = v117;
              goto LABEL_588;
            }
          }

LABEL_413:
          v121 = v117;
          v118 = v117;
          goto LABEL_588;
        }

        v122 = v108 + v107;
        v123 = v106;
        v124 = MEMORY[0x1E69273A0](v113, v122, 2, v115);
        v117 = v124;
        if (v123)
        {
          v125 = v123 + 1;
        }

        else
        {
          v125 = 0;
        }

        v121 = v124 - v125;
        v118 = v124;
      }

      else
      {
        if (v110 > 11)
        {
          if (v110 == 12)
          {
            if ((v104 & 0x80000000) != 0 || v106 == -1)
            {
              v188 = std::to_chars();
            }

            else
            {
              v188 = MEMORY[0x1E69273A0](v113, v108 + v107, 4, v115);
            }

            v117 = v188;
            v118 = (v113 + 1);
            if (*(v113 + 1) != 46 || ((v220 = memchr((v188 - 5), 112, 3uLL)) != 0 ? (v118 = v220) : (v118 = (v117 - 2)), v121 = v113 + 1, v188 = v113 + 1, v118 != v113))
            {
              v229 = v113;
              do
              {
                v230 = *v229;
                if ((v230 - 97) < 6)
                {
                  LOBYTE(v230) = v230 - 32;
                }

                *v229 = v230;
                v229 = (v229 + 1);
              }

              while (v229 != v118);
              v121 = v188;
            }

            *v118 = 80;
            goto LABEL_588;
          }

          if (v110 == 13)
          {
            v116 = MEMORY[0x1E69273A0](v113, v108 + v107, 1, v106, v115);
            v117 = v116;
            v118 = (v113 + 1);
            if (*(v113 + 1) == 46)
            {
              v119 = v116 - v113 - 2;
              if (v119 < 4)
              {
LABEL_185:
                v121 = v113 + 1;
                v118 = v116;
              }

              else
              {
                if (v119 >= 6)
                {
                  v119 = 6;
                }

                v120 = -v119;
                while (*(v116 + v120) != 101)
                {
                  if (++v120 == -3)
                  {
                    goto LABEL_185;
                  }
                }

                v121 = v113 + 1;
                v118 = (v116 + v120);
              }

              goto LABEL_588;
            }

            goto LABEL_527;
          }

          v192 = MEMORY[0x1E69273A0](v113, v108 + v107, 1, v106, v115);
          v117 = v192;
          v118 = (v113 + 1);
          if (*(v113 + 1) == 46)
          {
            v193 = v192 - v113 - 2;
            if (v193 < 4)
            {
LABEL_364:
              v121 = v113 + 1;
              v118 = v192;
            }

            else
            {
              if (v193 >= 6)
              {
                v193 = 6;
              }

              v194 = -v193;
              while (*(v192 + v194) != 101)
              {
                if (++v194 == -3)
                {
                  goto LABEL_364;
                }
              }

              v121 = v113 + 1;
              v118 = (v192 + v194);
            }
          }

          else
          {
            v121 = v192;
          }

          goto LABEL_574;
        }

        if (!v110)
        {
          if ((v104 & 0x80000000) != 0)
          {
            v233 = std::to_chars(v113, v108 + v107, v102, v115);
            v117 = v233;
            v234 = v233 - v113;
            if (v233 - v113 < 4)
            {
LABEL_520:
              v118 = v233;
            }

            else
            {
              if (v234 >= 6)
              {
                v234 = 6;
              }

              v235 = -v234;
              while (*(v233 + v235) != 101)
              {
                if (++v235 == -3)
                {
                  goto LABEL_520;
                }
              }

              v118 = (v233 + v235);
            }

            v258 = memchr(v113 + 1, 46, v118 - (v113 + 1));
            if (v258)
            {
              v259 = v258;
            }

            else
            {
              v259 = v118;
            }

            if (v259 == v118)
            {
              v121 = v117;
            }

            else
            {
              v121 = v259;
            }

            goto LABEL_588;
          }

          HIDWORD(v570[0].__locale_) = 0;
          v117 = MEMORY[0x1E69273A0](v113, v108 + v107, 3, v106, v115);
          v126 = (v113 + 1);
          if ((v113 + 1) != v117)
          {
            v127 = v117 - v126;
            if (v117 - v126 >= 4)
            {
              v130 = 6;
              if (v127 < 6)
              {
                v130 = v117 - v126;
              }

              v129 = -v130;
              while (*(v117 + v129) != 101)
              {
                if (++v129 == -3)
                {
                  goto LABEL_353;
                }
              }

LABEL_554:
              v118 = (v117 + v129);
              if (*v126 == 46)
              {
                v121 = v126;
              }

              else
              {
                v121 = v117;
              }

              goto LABEL_588;
            }

            goto LABEL_353;
          }

          goto LABEL_413;
        }

        if ((v104 & 0x80000000) != 0)
        {
          v195 = std::to_chars();
        }

        else
        {
          v195 = MEMORY[0x1E69273A0](v113, v108 + v107, 4, v106, v115);
        }

        v117 = v195;
        v118 = (v113 + 1);
        if (*(v113 + 1) != 46)
        {
LABEL_527:
          v121 = v117;
          goto LABEL_588;
        }

        v236 = memchr((v195 - 5), 112, 3uLL);
        if (v236)
        {
          v237 = v236;
        }

        else
        {
          v237 = (v117 - 2);
        }

        v121 = v113 + 1;
        v118 = v237;
      }

      if ((v112 & 0x20) == 0)
      {
        goto LABEL_605;
      }

LABEL_588:
      if (v121 == v117)
      {
        *v117 = 46;
        if (v118 != v117)
        {
          if ((v118 + 1) == v117)
          {
            v260 = *v118;
            *v118 = *(v118 + 1);
            *(v118 + 1) = v260;
          }

          else
          {
            memmove(v118 + 1, v118, v117 - v118);
            *v118 = 46;
          }
        }

        v261 = v118;
        v118 = (v118 + 1);
        v117 = (v117 + 1);
        v121 = v261;
      }

      if ((v110 - 17) <= 1)
      {
        v262 = v559;
        if (v557 <= 1)
        {
          v263 = 1;
        }

        else
        {
          v263 = v557;
        }

        if ((v557 & 0x80000000) != 0)
        {
          v263 = 6;
        }

        v264 = v113 - v121;
        if (v118 != v117)
        {
          v264 = -1;
        }

        v265 = v264 + v263;
        v266 = v118 + ~v121;
        if (v266 < v265)
        {
          HIDWORD(v570[0].__locale_) += v265 - v266;
        }
      }

      else
      {
LABEL_605:
        v262 = v559;
      }

      if ((v112 & 0x40) == 0)
      {
        v267 = v113;
        v268 = v118;
        v269 = v570[2].__locale_;
        v270 = v117;
        v271 = v117 - v570[2].__locale_;
        v272 = SHIDWORD(v570[0].__locale_);
        if (v117 - v570[2].__locale_ + SHIDWORD(v570[0].__locale_) < v262 >> 32)
        {
          v273 = v112;
          v274 = *v100;
          if ((v273 & 7) == 4)
          {
            if (v570[2].__locale_ != v267)
            {
              v275 = *v570[2].__locale_;
              v276 = *(v274 + 32);
              if (!v276 || (v278 = *v276, v277 = v276[1], v276[1] = v277 + 1, v277 < v278))
              {
                v279 = *v274;
                v280 = *(v274 + 16);
                *(v274 + 16) = v280 + 1;
                *(v279 + v280) = v275;
                if (*(v274 + 16) == *(v274 + 8))
                {
                  v281 = v262;
                  (*(v274 + 24))(v274, 2);
                  v262 = v281;
                }
              }

              v269 = (v269 + 1);
            }

            v282 = v262 & 0xB8 | 3;
            v283 = 48;
            v284 = v557;
          }

          else
          {
            v282 = v262;
            v284 = v557;
            v283 = BYTE4(v557);
          }

          v302 = v262 & 0xFFFFFFFFFFFFFF00 | v282;
          v303 = v284 & 0xFFFFFF00FFFFFFFFLL | (v283 << 32);
          if (v272)
          {
            std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v269, v117, v274, v302, v303, v271, v268, v272);
          }

          else
          {
            std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v269, v117 - v269, v274, v302, v303, v271);
          }

          goto LABEL_908;
        }

        v274 = *v100;
        if (HIDWORD(v570[0].__locale_) && v268 != v117)
        {
          v286 = v268 - v570[2].__locale_;
          v287 = *(v274 + 32);
          if (v287)
          {
            v288 = v100;
            v289 = *v287;
            v290 = v287[1];
            if (*v287 - v290 >= v286)
            {
              v291 = v268 - v570[2].__locale_;
            }

            else
            {
              v291 = *v287 - v290;
            }

            v32 = v289 > v290;
            v292 = v290 + v286;
            v287[1] = v292;
            if (!v32 || v291 == 0)
            {
              goto LABEL_742;
            }
          }

          else
          {
            v288 = v100;
            v291 = v268 - v570[2].__locale_;
          }

          v338 = *(v274 + 16);
          do
          {
            v339 = *(v274 + 8) - v338;
            if (v339 < v291 + 1)
            {
              (*(v274 + 24))(v274, v291 + 2);
              v338 = *(v274 + 16);
              v339 = *(v274 + 8) - v338;
            }

            if (v339 >= v291)
            {
              v340 = v291;
            }

            else
            {
              v340 = v339;
            }

            if (v340)
            {
              memmove((*v274 + v338), v269, v340);
              v338 = *(v274 + 16);
            }

            v338 += v340;
            *(v274 + 16) = v338;
            v269 = (v269 + v340);
            v32 = v291 > v339;
            v291 -= v340;
          }

          while (v32);
          v287 = *(v274 + 32);
          if (!v287)
          {
            goto LABEL_749;
          }

          v289 = *v287;
          v292 = v287[1];
LABEL_742:
          v341 = v292 + v272;
          v287[1] = v292 + v272;
          v342 = v289 >= v292;
          v343 = v289 - v292;
          if (v343 == 0 || !v342)
          {
            v346 = v268;
            v347 = v270 - v268;
            v100 = v288;
            goto LABEL_758;
          }

          if (v343 < v272)
          {
            v272 = v343;
          }

          v338 = *(v274 + 16);
          do
          {
LABEL_749:
            v344 = *(v274 + 8) - v338;
            if (v344 < v272 + 1)
            {
              (*(v274 + 24))(v274, v272 + 2);
              v338 = *(v274 + 16);
              v344 = *(v274 + 8) - v338;
            }

            if (v344 >= v272)
            {
              v345 = v272;
            }

            else
            {
              v345 = v344;
            }

            if (v345)
            {
              memset((*v274 + v338), 48, v345);
              v338 = *(v274 + 16);
            }

            v338 += v345;
            *(v274 + 16) = v338;
            v32 = v272 > v344;
            v272 -= v345;
          }

          while (v32);
          v287 = *(v274 + 32);
          v346 = v268;
          v347 = v270 - v268;
          v100 = v288;
          if (!v287)
          {
            v350 = v288;
            goto LABEL_786;
          }

          v289 = *v287;
          v341 = v287[1];
LABEL_758:
          v348 = v289 - v341;
          if (v289 - v341 >= v347)
          {
            v348 = v347;
          }

          v287[1] = v347 + v341;
          if (v289 <= v341 || v348 == 0)
          {
            goto LABEL_908;
          }

          v350 = v100;
          v338 = *(v274 + 16);
          v347 = v348;
          do
          {
LABEL_786:
            v357 = *(v274 + 8) - v338;
            if (v357 < v347 + 1)
            {
              (*(v274 + 24))(v274, v347 + 2);
              v338 = *(v274 + 16);
              v357 = *(v274 + 8) - v338;
            }

            if (v357 >= v347)
            {
              v358 = v347;
            }

            else
            {
              v358 = v357;
            }

            if (v358)
            {
              memmove((*v274 + v338), v346, v358);
              v338 = *(v274 + 16);
            }

            v338 += v358;
            *(v274 + 16) = v338;
            v346 = (v346 + v358);
            v32 = v347 > v357;
            v347 -= v358;
          }

          while (v32);
          v100 = v350;
          goto LABEL_908;
        }

        v294 = *(v274 + 32);
        if (!v294)
        {
          goto LABEL_638;
        }

        v295 = *v294;
        v296 = v294[1];
        v297 = v296 + v271;
        if (*v294 - v296 < v271)
        {
          v271 = *v294 - v296;
        }

        v294[1] = v297;
        if (v295 > v296 && v271 != 0)
        {
LABEL_638:
          v299 = *(v274 + 16);
          do
          {
            v300 = *(v274 + 8) - v299;
            if (v300 < v271 + 1)
            {
              (*(v274 + 24))(v274, v271 + 2);
              v299 = *(v274 + 16);
              v300 = *(v274 + 8) - v299;
            }

            if (v300 >= v271)
            {
              v301 = v271;
            }

            else
            {
              v301 = v300;
            }

            if (v301)
            {
              memmove((*v274 + v299), v269, v301);
              v299 = *(v274 + 16);
            }

            v299 += v301;
            *(v274 + 16) = v299;
            v269 = (v269 + v301);
            v32 = v271 > v300;
            v271 -= v301;
          }

          while (v32);
          v294 = *(v274 + 32);
          if (!v294)
          {
            goto LABEL_719;
          }

          v295 = *v294;
          v297 = v294[1];
        }

        v333 = v295 - v297;
        if (v295 - v297 >= v272)
        {
          v333 = v272;
        }

        v294[1] = v297 + v272;
        if (v295 <= v297 || v333 == 0)
        {
          goto LABEL_908;
        }

        v299 = *(v274 + 16);
        v272 = v333;
        do
        {
LABEL_719:
          v335 = *(v274 + 8) - v299;
          if (v335 < v272 + 1)
          {
            (*(v274 + 24))(v274, v272 + 2);
            v299 = *(v274 + 16);
            v335 = *(v274 + 8) - v299;
          }

          if (v335 >= v272)
          {
            v336 = v272;
          }

          else
          {
            v336 = v335;
          }

          if (v336)
          {
            memset((*v274 + v299), 48, v336);
            v299 = *(v274 + 16);
          }

          v299 += v336;
          *(v274 + 16) = v299;
          v32 = v272 > v335;
          v272 -= v336;
        }

        while (v32);
        goto LABEL_908;
      }

      v553 = v112;
      v274 = *v100;
      if ((v100[5] & 1) == 0)
      {
        MEMORY[0x1E69272B0](v569);
        v285 = (v100 + 4);
        if (*(v100 + 40) == 1)
        {
          std::locale::operator=(v285, v569);
        }

        else
        {
          std::locale::locale(v285, v569);
          *(v100 + 40) = 1;
        }

        std::locale::~locale(v569);
      }

      std::locale::locale(&v568, v100 + 4);
      v304 = std::locale::use_facet(&v568, MEMORY[0x1E69E5368]);
      memset(v569, 170, 24);
      (v304->__vftable[1].__on_zero_shared)(v569);
      if (v118 >= v121)
      {
        v305 = v121;
      }

      else
      {
        v305 = v118;
      }

      v555 = v305 - v113;
      v556 = v304;
      v550 = v100;
      v551 = v121;
      v554 = v117;
      v552 = v118;
      if ((SHIBYTE(v569[2].__locale_) & 0x8000000000000000) != 0)
      {
        v306 = v569[1].__locale_;
        if (!v569[1].__locale_)
        {
          goto LABEL_798;
        }

        v549 = v113;
        v309 = v569[0].__locale_;
        locale_low = *v569[0].__locale_;
        if (v555 <= locale_low)
        {
          *v569[0].__locale_ = 0;
          v569[1].__locale_ = 0;
          v113 = v549;
          goto LABEL_798;
        }

        v310 = *v569[0].__locale_;
        v307 = v569[0].__locale_;
      }

      else
      {
        if (!HIBYTE(v569[2].__locale_))
        {
          goto LABEL_798;
        }

        if (v555 <= SLOBYTE(v569[0].__locale_))
        {
          LOBYTE(v569[0].__locale_) = 0;
          HIBYTE(v569[2].__locale_) = 0;
          goto LABEL_798;
        }

        v549 = v113;
        v307 = v569[0].__locale_;
        v306 = v569[1].__locale_;
        locale_low = SLOBYTE(v569[0].__locale_);
        v309 = v569;
        v310 = v569[0].__locale_;
      }

      v566[0].__locale_ = 0;
      v566[1].__locale_ = 0;
      v567 = 0;
      v311 = v306 + v307;
      if (SHIBYTE(v569[2].__locale_) >= 0)
      {
        v312 = v569 + SHIBYTE(v569[2].__locale_);
      }

      else
      {
        v312 = v311;
      }

      v313 = v555 - locale_low;
      if (v555 <= locale_low)
      {
        v331 = 0;
        v330 = v310 + v313;
        v113 = v549;
        goto LABEL_728;
      }

      v314 = v312 - 1;
      do
      {
        while (1)
        {
          v315 = HIBYTE(v567);
          if ((SHIBYTE(v567) & 0x80000000) == 0)
          {
            break;
          }

          v317 = (v567 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v566[1].__locale_ != v317)
          {
            v323 = v566[0].__locale_;
            v317 = v566[1].__locale_;
            goto LABEL_693;
          }

          if ((v567 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v316 = v566[0].__locale_;
          if (v317 < 0x3FFFFFFFFFFFFFF3)
          {
            goto LABEL_675;
          }

          v321 = 0;
          v320 = 0x7FFFFFFFFFFFFFF7;
LABEL_685:
          v322 = operator new(v320);
          v323 = v322;
          if (v317)
          {
            memmove(v322, v316, v317);
          }

          if (!v321)
          {
            operator delete(v316);
          }

          v566[0].__locale_ = v323;
          v567 = v320 | 0x8000000000000000;
LABEL_693:
          v566[1].__locale_ = (v317 + 1);
          v325 = v323 + v317;
          *v325 = v310;
          v325[1] = 0;
          if (v309 != v314)
          {
            goto LABEL_694;
          }

LABEL_668:
          v310 = *v309;
          v313 -= *v309;
          if (v313 <= 0)
          {
            goto LABEL_704;
          }
        }

        if (HIBYTE(v567) == 22)
        {
          v316 = v566;
          v317 = 22;
LABEL_675:
          if (v317 + 1 > 2 * v317)
          {
            v318 = v317 + 1;
          }

          else
          {
            v318 = 2 * v317;
          }

          if ((v318 | 7) == 0x17)
          {
            v319 = 25;
          }

          else
          {
            v319 = (v318 | 7) + 1;
          }

          if (v318 >= 0x17)
          {
            v320 = v319;
          }

          else
          {
            v320 = 23;
          }

          v321 = v317 == 22;
          goto LABEL_685;
        }

        HIBYTE(v567) = (HIBYTE(v567) + 1) & 0x7F;
        v324 = v566 + v315;
        *v324 = v310;
        v324[1] = 0;
        if (v309 == v314)
        {
          goto LABEL_668;
        }

LABEL_694:
        v326 = (v309 + 1);
        v327 = (v309 + 1);
        do
        {
          v328 = *v327++;
          v310 = v328;
          if (v328)
          {
            v329 = 1;
          }

          else
          {
            v329 = v326 == v314;
          }

          v326 = v327;
        }

        while (!v329);
        v309 = (v327 - 1);
        v313 -= v310;
      }

      while (v313 > 0);
LABEL_704:
      v330 = v310 + v313;
      if (SHIBYTE(v567) < 0)
      {
        v332 = (v567 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        v117 = v554;
        v113 = v549;
        if (v566[1].__locale_ == v332)
        {
          if ((v567 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          __p = v566[0].__locale_;
          v351 = 0x7FFFFFFFFFFFFFF7;
          if (v332 >= 0x3FFFFFFFFFFFFFF3)
          {
            v354 = 0;
          }

          else
          {
LABEL_768:
            if (v332 + 1 > 2 * v332)
            {
              v352 = v332 + 1;
            }

            else
            {
              v352 = 2 * v332;
            }

            if ((v352 | 7) == 0x17)
            {
              v353 = 25;
            }

            else
            {
              v353 = (v352 | 7) + 1;
            }

            if (v352 >= 0x17)
            {
              v351 = v353;
            }

            else
            {
              v351 = 23;
            }

            v354 = v332 == 22;
          }

          v355 = v351;
          v356 = operator new(v351);
          v337 = v356;
          if (v332)
          {
            memmove(v356, __p, v332);
          }

          if (!v354)
          {
            operator delete(__p);
          }

          v566[0].__locale_ = v337;
          v567 = v355 | 0x8000000000000000;
        }

        else
        {
          v337 = v566[0].__locale_;
          v332 = v566[1].__locale_;
        }

        v566[1].__locale_ = (v332 + 1);
      }

      else
      {
        v331 = HIBYTE(v567);
        v117 = v554;
        v113 = v549;
        if (HIBYTE(v567) == 22)
        {
          __p = v566;
          v332 = 22;
          goto LABEL_768;
        }

LABEL_728:
        v332 = v331;
        HIBYTE(v567) = (v331 + 1) & 0x7F;
        v337 = v566;
      }

      v359 = v337 + v332;
      *v359 = v330;
      v359[1] = 0;
      if (SHIBYTE(v569[2].__locale_) < 0)
      {
        operator delete(v569[0].__locale_);
      }

      *&v569[0].__locale_ = *&v566[0].__locale_;
      v569[2].__locale_ = v567;
LABEL_798:
      v360 = HIBYTE(v569[2].__locale_);
      if (SHIBYTE(v569[2].__locale_) < 0)
      {
        v360 = v569[1].__locale_;
      }

      v361 = v360 + v117 - v570[2].__locale_ + SHIDWORD(v570[0].__locale_) - (v360 != 0);
      v362 = v553 & 7;
      v363 = (v559 >> 32) - v361;
      if (v559 >> 32 <= v361)
      {
        v560 = 0;
        v363 = 0;
        v364 = HIDWORD(v557);
      }

      else
      {
        if (v362 == 4)
        {
          LOBYTE(v364) = 48;
        }

        else
        {
          v364 = HIDWORD(v557);
        }

        if (v362 == 4)
        {
          v365 = 3;
        }

        else
        {
          v365 = v553 & 7;
        }

        if (v365 > 1)
        {
          if (v365 == 3)
          {
            goto LABEL_812;
          }

          v560 = v363 - (v363 >> 1);
          v363 >>= 1;
        }

        else
        {
          if (v365)
          {
            v560 = v363;
            v363 = 0;
            goto LABEL_814;
          }

LABEL_812:
          v560 = 0;
        }
      }

LABEL_814:
      if (v362 == 4 && v113 != v570[2].__locale_)
      {
        v366 = *v570[2].__locale_;
        v367 = *(v274 + 32);
        if (!v367 || (v369 = *v367, v368 = v367[1], v367[1] = v368 + 1, v368 < v369))
        {
          v370 = *v274;
          v371 = *(v274 + 16);
          *(v274 + 16) = v371 + 1;
          *(v370 + v371) = v366;
          if (*(v274 + 16) == *(v274 + 8))
          {
            v372 = v363;
            (*(v274 + 24))(v274, 2);
            v363 = v372;
          }
        }
      }

      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v274, v363, HIDWORD(v557) & 0xFFFFFF00 | v364);
      if (v362 != 4 && v113 != v570[2].__locale_)
      {
        v373 = *v570[2].__locale_;
        v374 = *(v274 + 32);
        if (!v374 || (v376 = *v374, v375 = v374[1], v374[1] = v375 + 1, v375 < v376))
        {
          v377 = *v274;
          v378 = *(v274 + 16);
          *(v274 + 16) = v378 + 1;
          *(v377 + v378) = v373;
          if (*(v274 + 16) == *(v274 + 8))
          {
            (*(v274 + 24))(v274, 2);
          }
        }
      }

      v379 = SHIBYTE(v569[2].__locale_);
      v558 = HIDWORD(v557) & 0xFFFFFF00 | v364;
      if ((SHIBYTE(v569[2].__locale_) & 0x8000000000000000) != 0)
      {
        v379 = v569[1].__locale_;
        if (!v569[1].__locale_)
        {
          goto LABEL_857;
        }

        v380 = v569[0].__locale_;
LABEL_831:
        v381 = v379 + v380;
        v382 = (v556->__vftable[1].~facet_0)();
        v383 = v380 + 1;
        while (1)
        {
          v384 = v113;
          v386 = v381 - 1;
          v385 = *(v381 - 1);
          v387 = *(v274 + 32);
          if (v387)
          {
            v389 = *v387;
            v388 = v387[1];
            if (*v387 - v388 >= v385)
            {
              v390 = *(v381 - 1);
            }

            else
            {
              v390 = *v387 - v388;
            }

            v387[1] = v388 + v385;
            if (v389 <= v388 || v390 == 0)
            {
              goto LABEL_841;
            }
          }

          else
          {
            v390 = *(v381 - 1);
          }

          v397 = *(v274 + 16);
          v398 = v113;
          do
          {
            v399 = *(v274 + 8) - v397;
            if (v399 < v390 + 1)
            {
              (*(v274 + 24))(v274, v390 + 2);
              v397 = *(v274 + 16);
              v399 = *(v274 + 8) - v397;
            }

            if (v399 >= v390)
            {
              v400 = v390;
            }

            else
            {
              v400 = v399;
            }

            if (v400)
            {
              memmove((*v274 + v397), v398, v400);
              v397 = *(v274 + 16);
            }

            v397 += v400;
            *(v274 + 16) = v397;
            v398 = (v398 + v400);
            v32 = v390 > v399;
            v390 -= v400;
          }

          while (v32);
LABEL_841:
          if (v381 == v383)
          {
            goto LABEL_863;
          }

          v113 = (v384 + *(v381 - 1));
          v392 = *(v274 + 32);
          if (v392)
          {
            v394 = *v392;
            v393 = v392[1];
            v392[1] = v393 + 1;
            --v381;
            if (v393 >= v394)
            {
              continue;
            }
          }

          v395 = *v274;
          v396 = *(v274 + 16);
          *(v274 + 16) = v396 + 1;
          *(v395 + v396) = v382;
          v381 = v386;
          if (*(v274 + 16) == *(v274 + 8))
          {
            (*(v274 + 24))(v274, 2);
            v381 = v386;
          }
        }
      }

      if (HIBYTE(v569[2].__locale_))
      {
        v380 = v569;
        goto LABEL_831;
      }

LABEL_857:
      v401 = *(v274 + 32);
      if (v401)
      {
        v403 = *v401;
        v402 = v401[1];
        if (*v401 - v402 >= v555)
        {
          v404 = v555;
        }

        else
        {
          v404 = *v401 - v402;
        }

        v401[1] = v402 + v555;
        if (v403 <= v402 || !v404)
        {
          goto LABEL_863;
        }
      }

      else
      {
        v404 = v555;
      }

      v436 = *(v274 + 16);
      do
      {
        v437 = *(v274 + 8) - v436;
        if (v437 < v404 + 1)
        {
          (*(v274 + 24))(v274, v404 + 2);
          v436 = *(v274 + 16);
          v437 = *(v274 + 8) - v436;
        }

        if (v437 >= v404)
        {
          v438 = v404;
        }

        else
        {
          v438 = v437;
        }

        if (v438)
        {
          memmove((*v274 + v436), v113, v438);
          v436 = *(v274 + 16);
        }

        v436 += v438;
        *(v274 + 16) = v436;
        v113 = (v113 + v438);
        v32 = v404 > v437;
        v404 -= v438;
      }

      while (v32);
LABEL_863:
      v405 = v552;
      if (v551 != v554)
      {
        v406 = (v556->__vftable[1].~facet)(v556);
        v407 = *(v274 + 32);
        if (!v407 || (v409 = *v407, v408 = v407[1], v407[1] = v408 + 1, v408 < v409))
        {
          v410 = *v274;
          v411 = *(v274 + 16);
          *(v274 + 16) = v411 + 1;
          *(v410 + v411) = v406;
          if (*(v274 + 16) == *(v274 + 8))
          {
            (*(v274 + 24))(v274, 2);
          }
        }

        v412 = (v551 + 1);
        v413 = v552 - v551 - 1;
        v414 = *(v274 + 32);
        if (v414)
        {
          v415 = *v414;
          v416 = v414[1];
          if (*v414 - v416 >= v413)
          {
            v417 = v552 - v551 - 1;
          }

          else
          {
            v417 = *v414 - v416;
          }

          v418 = &v413[v416];
          v414[1] = v418;
          if (v415 <= v416 || !v417)
          {
            v419 = SHIDWORD(v570[0].__locale_);
            goto LABEL_888;
          }
        }

        else
        {
          v417 = v552 - v551 - 1;
        }

        v420 = *(v274 + 16);
        do
        {
          v421 = *(v274 + 8) - v420;
          if (v421 < v417 + 1)
          {
            (*(v274 + 24))(v274, v417 + 2);
            v420 = *(v274 + 16);
            v421 = *(v274 + 8) - v420;
          }

          if (v421 >= v417)
          {
            v422 = v417;
          }

          else
          {
            v422 = v421;
          }

          if (v422)
          {
            memmove((*v274 + v420), v412, v422);
            v420 = *(v274 + 16);
          }

          v420 += v422;
          *(v274 + 16) = v420;
          v412 += v422;
          v32 = v417 > v421;
          v417 -= v422;
        }

        while (v32);
        v414 = *(v274 + 32);
        v419 = SHIDWORD(v570[0].__locale_);
        if (v414)
        {
          v415 = *v414;
          v418 = v414[1];
LABEL_888:
          v423 = v415 - v418;
          if (v415 - v418 >= v419)
          {
            v423 = v419;
          }

          v414[1] = &v418[v419];
          if (v415 > v418 && v423 != 0)
          {
            v420 = *(v274 + 16);
            v419 = v423;
            goto LABEL_924;
          }
        }

        else
        {
          do
          {
LABEL_924:
            v434 = *(v274 + 8) - v420;
            if (v434 < v419 + 1)
            {
              (*(v274 + 24))(v274, v419 + 2);
              v420 = *(v274 + 16);
              v434 = *(v274 + 8) - v420;
            }

            if (v434 >= v419)
            {
              v435 = v419;
            }

            else
            {
              v435 = v434;
            }

            if (v435)
            {
              memset((*v274 + v420), 48, v435);
              v420 = *(v274 + 16);
            }

            v420 += v435;
            *(v274 + 16) = v420;
            v32 = v419 > v434;
            v419 -= v435;
          }

          while (v32);
        }
      }

      if (v552 != v554)
      {
        v425 = v554 - v552;
        v426 = *(v274 + 32);
        if (v426)
        {
          v428 = *v426;
          v427 = v426[1];
          if (*v426 - v427 >= v425)
          {
            v429 = v554 - v552;
          }

          else
          {
            v429 = *v426 - v427;
          }

          v426[1] = v427 + v425;
          if (v428 > v427 && v429 != 0)
          {
            goto LABEL_912;
          }
        }

        else
        {
          v429 = v554 - v552;
LABEL_912:
          v431 = *(v274 + 16);
          do
          {
            v432 = *(v274 + 8) - v431;
            if (v432 < v429 + 1)
            {
              (*(v274 + 24))(v274, v429 + 2);
              v431 = *(v274 + 16);
              v432 = *(v274 + 8) - v431;
            }

            if (v432 >= v429)
            {
              v433 = v429;
            }

            else
            {
              v433 = v432;
            }

            if (v433)
            {
              memmove((*v274 + v431), v405, v433);
              v431 = *(v274 + 16);
            }

            v431 += v433;
            *(v274 + 16) = v431;
            v405 = (v405 + v433);
            v32 = v429 > v432;
            v429 -= v433;
          }

          while (v32);
        }
      }

      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v274, v560, v558);
      v100 = v550;
      if (SHIBYTE(v569[2].__locale_) < 0)
      {
        operator delete(v569[0].__locale_);
      }

      std::locale::~locale(&v568);
LABEL_908:
      if (v570[1].__locale_ >= 0x101)
      {
        operator delete(v570[2].__locale_);
      }

      *v100 = v274;
      return;
    case 0xAu:
      v75 = *a2;
      v566[0].__locale_ = 0;
      LODWORD(v566[1].__locale_) = -1;
      BYTE4(v566[1].__locale_) = 32;
      *(&v566[1].__locale_ + 5) = 0;
      HIBYTE(v566[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_272;
      }

      v76 = *a1;
      v77 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v566, *a1, 63);
      if (BYTE1(v566[0].__locale_) - 13 >= 6)
      {
        if (BYTE1(v566[0].__locale_) > 0xCu || ((1 << SBYTE1(v566[0].__locale_)) & 0x1801) == 0)
        {
          goto LABEL_1237;
        }
      }

      else
      {
        if (LODWORD(v566[1].__locale_) != -1 || SWORD1(v566[0].__locale_) <= -1)
        {
          v79 = v566[1].__locale_;
        }

        else
        {
          v79 = 6;
        }

        LODWORD(v566[1].__locale_) = v79;
      }

      *v76 = v77;
LABEL_272:
      v132 = a1[1];
      v133 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v566, v132);
      v135 = v159;
      v136 = *&v75;
      if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_1222;
      }

      memset(&v570[1], 170, 0x410uLL);
      if (v135 == -1)
      {
        v161 = 1074;
      }

      else
      {
        v161 = v135;
      }

      v570[0].__locale_ = v161;
      if (v161 < 1075)
      {
        v162 = v161 + 316;
        v570[1].__locale_ = v162;
        if ((v161 + 316) < 0x401)
        {
          v163 = &v570[3];
          v161 = v135;
LABEL_281:
          v570[2].__locale_ = v163;
          *&v164 = 0xAAAAAAAAAAAAAAAALL;
          *(&v164 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v569[0].__locale_ = v164;
          *&v569[2].__locale_ = v164;
          if ((*&v75 & 0x8000000000000000) != 0)
          {
            v167 = 45;
          }

          else
          {
            v165 = (v133 >> 3) & 3;
            if (v165 == 2)
            {
              v167 = 43;
            }

            else
            {
              v166 = v163;
              if (v165 != 3)
              {
                goto LABEL_288;
              }

              v167 = 32;
            }
          }

          *v163 = v167;
          v166 = (v163 + 1);
LABEL_288:
          v168 = fabs(v75);
          if (BYTE1(v133) > 0xEu)
          {
            if (BYTE1(v133) - 15 < 2)
            {
              v569[0].__locale_ = v166;
              v172 = MEMORY[0x1E6927340](v166, v163 + v162, 2, v161, v168);
              v569[2].__locale_ = v172;
              v569[3].__locale_ = v172;
              if (v161)
              {
                v173 = v161 + 1;
              }

              else
              {
                v173 = 0;
              }

              v174 = (v172 - v173);
              goto LABEL_1086;
            }

            if (BYTE1(v133) == 17)
            {
              HIDWORD(v570[0].__locale_) = 0;
              v569[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[0].__locale_ = v166;
              v175 = MEMORY[0x1E6927340](v166, v163 + v162, 3, v161, v168);
              v569[3].__locale_ = v175;
              v176 = (v166 + 1);
              if ((v166 + 1) != v175)
              {
                v177 = v175 - v176;
                if (v175 - v176 >= 4)
                {
                  v178 = 6;
                  if (v177 < 6)
                  {
                    v178 = v175 - v176;
                  }

                  v179 = -v178;
                  while (*(v175 + v179) != 101)
                  {
                    if (++v179 == -3)
                    {
                      goto LABEL_390;
                    }
                  }

                  goto LABEL_560;
                }

                goto LABEL_390;
              }
            }

            else
            {
              HIDWORD(v570[0].__locale_) = 0;
              v569[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[0].__locale_ = v166;
              v175 = MEMORY[0x1E6927340](v166, v163 + v162, 3, v161, v168);
              v569[3].__locale_ = v175;
              v176 = (v166 + 1);
              if ((v166 + 1) != v175)
              {
                v177 = v175 - v176;
                if (v175 - v176 >= 4)
                {
                  v202 = 6;
                  if (v177 < 6)
                  {
                    v202 = v175 - v176;
                  }

                  v203 = -v202;
                  while (*(v175 + v203) != 101)
                  {
                    if (++v203 == -3)
                    {
                      goto LABEL_390;
                    }
                  }

                  if (*v176 != 46)
                  {
                    v176 = v175;
                  }

                  v569[1].__locale_ = v176;
                  v569[2].__locale_ = (v175 + v203);
                  *(v175 + v203) = 69;
                  goto LABEL_1087;
                }

LABEL_390:
                v569[2].__locale_ = v175;
                v204 = v175;
                v205 = memchr(v176, 46, v177);
                if (v205)
                {
                  v174 = v205;
                }

                else
                {
                  v174 = v204;
                }

LABEL_1086:
                v569[1].__locale_ = v174;
                goto LABEL_1087;
              }
            }
          }

          else
          {
            if (BYTE1(v133) > 0xBu)
            {
              if (BYTE1(v133) != 12)
              {
                if (BYTE1(v133) == 13)
                {
                  v569[0].__locale_ = v166;
                  v169 = MEMORY[0x1E6927340](v166, v163 + v162, 1, v161, v168);
                  v569[3].__locale_ = v169;
                  if (*(v166 + 1) == 46)
                  {
                    v569[1].__locale_ = (v166 + 1);
                    v170 = v169 - v166 - 2;
                    if (v170 < 4)
                    {
LABEL_299:
                      v569[2].__locale_ = v169;
                    }

                    else
                    {
                      if (v170 >= 6)
                      {
                        v170 = 6;
                      }

                      v171 = -v170;
                      while (*(v169 + v171) != 101)
                      {
                        if (++v171 == -3)
                        {
                          goto LABEL_299;
                        }
                      }

                      v569[2].__locale_ = (v169 + v171);
                    }
                  }

                  else
                  {
                    v569[1].__locale_ = v169;
                    v569[2].__locale_ = (v166 + 1);
                  }
                }

                else
                {
                  v569[0].__locale_ = v166;
                  v210 = MEMORY[0x1E6927340](v166, v163 + v162, 1, v161, v168);
                  v569[3].__locale_ = v210;
                  v211 = (v166 + 1);
                  if (*(v166 + 1) == 46)
                  {
                    v569[1].__locale_ = (v166 + 1);
                    v212 = v210 - v166 - 2;
                    if (v212 < 4)
                    {
LABEL_408:
                      v211 = v210;
                    }

                    else
                    {
                      if (v212 >= 6)
                      {
                        v212 = 6;
                      }

                      v213 = -v212;
                      while (*(v210 + v213) != 101)
                      {
                        if (++v213 == -3)
                        {
                          goto LABEL_408;
                        }
                      }

                      v211 = (v210 + v213);
                    }
                  }

                  else
                  {
                    v569[1].__locale_ = v210;
                  }

                  v569[2].__locale_ = v211;
                  *v211 = 69;
                }

                goto LABEL_1087;
              }

              v569[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[0].__locale_ = v166;
              if ((v135 & 0x80000000) != 0 || v161 == -1)
              {
                v197 = std::to_chars();
              }

              else
              {
                v197 = MEMORY[0x1E6927340](v166, v163 + v162, 4, v161, v168);
              }

              v569[3].__locale_ = v197;
              v225 = (v166 + 1);
              if (*(v166 + 1) == 46)
              {
                v226 = (v197 - 2);
                v227 = memchr(v197 - 6, 112, 4uLL);
                if (v227)
                {
                  v228 = v227;
                }

                else
                {
                  v228 = v226;
                }

                v569[1].__locale_ = (v166 + 1);
                v569[2].__locale_ = v228;
                v225 = v228;
                if (v228 == v166)
                {
LABEL_509:
                  *v225 = 80;
                  goto LABEL_1087;
                }
              }

              else
              {
                v569[1].__locale_ = v197;
                v569[2].__locale_ = (v166 + 1);
              }

              do
              {
                v232 = *v166;
                if ((v232 - 97) < 6)
                {
                  LOBYTE(v232) = v232 - 32;
                }

                *v166 = v232;
                v166 = (v166 + 1);
              }

              while (v166 != v225);
              goto LABEL_509;
            }

            if (BYTE1(v133))
            {
              v569[0].__locale_ = v166;
              if ((v135 & 0x80000000) != 0)
              {
                v215 = std::to_chars();
              }

              else
              {
                v215 = MEMORY[0x1E6927340](v166, v163 + v162, 4, v161, v168);
              }

              v569[3].__locale_ = v215;
              v253 = *(v166 + 1);
              v252 = (v166 + 1);
              if (v253 == 46)
              {
                v254 = (v215 - 2);
                v255 = memchr(v215 - 6, 112, 4uLL);
                v215 = v252;
                if (v255)
                {
                  v252 = v255;
                }

                else
                {
                  v252 = v254;
                }
              }

              v569[1].__locale_ = v215;
              v569[2].__locale_ = v252;
              goto LABEL_1087;
            }

            if ((v135 & 0x80000000) != 0)
            {
              v569[0].__locale_ = v166;
              v247 = std::to_chars(v166, v163 + v162, v160, v168);
              v248 = v247;
              v569[3].__locale_ = v247;
              v249 = v247 - v166;
              if (v247 - v166 < 4)
              {
LABEL_547:
                v251 = v247;
              }

              else
              {
                if (v249 >= 6)
                {
                  v249 = 6;
                }

                v250 = -v249;
                while (*(v247 + v250) != 101)
                {
                  if (++v250 == -3)
                  {
                    goto LABEL_547;
                  }
                }

                v251 = (v247 + v250);
              }

              v569[2].__locale_ = v251;
              v497 = memchr(v166 + 1, 46, v251 - (v166 + 1));
              if (v497)
              {
                v174 = v497;
              }

              else
              {
                v174 = v251;
              }

              if (v174 == v251)
              {
                v174 = v248;
              }

              goto LABEL_1086;
            }

            HIDWORD(v570[0].__locale_) = 0;
            v569[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v569[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v569[0].__locale_ = v166;
            v175 = MEMORY[0x1E6927340](v166, v163 + v162, 3, v161, v168);
            v569[3].__locale_ = v175;
            v176 = (v166 + 1);
            if ((v166 + 1) != v175)
            {
              v177 = v175 - v176;
              if (v175 - v176 >= 4)
              {
                v180 = 6;
                if (v177 < 6)
                {
                  v180 = v175 - v176;
                }

                v179 = -v180;
                while (*(v175 + v179) != 101)
                {
                  if (++v179 == -3)
                  {
                    goto LABEL_390;
                  }
                }

LABEL_560:
                v257 = (v175 + v179);
                if (*v176 != 46)
                {
                  v176 = v175;
                }

                v569[1].__locale_ = v176;
                v569[2].__locale_ = v257;
                goto LABEL_1087;
              }

              goto LABEL_390;
            }
          }

          v569[1].__locale_ = v175;
          v569[2].__locale_ = v175;
LABEL_1087:
          if ((v133 & 0x20) != 0)
          {
            v498 = v569[1].__locale_;
            v499 = v569[3].__locale_;
            if (v569[1].__locale_ == v569[3].__locale_)
            {
              v501 = ++v569[3].__locale_;
              *v499 = 46;
              v500 = v569[2].__locale_;
              if (v569[2].__locale_ != v498)
              {
                if ((v569[2].__locale_ + 1) == v498)
                {
                  v502 = *v569[2].__locale_;
                  *v569[2].__locale_ = *(v569[2].__locale_ + 1);
                  *(v500 + 1) = v502;
                }

                else
                {
                  memmove(v501 - (v498 - v569[2].__locale_), v569[2].__locale_, v498 - v569[2].__locale_);
                  *v500 = 46;
                }
              }

              v569[1].__locale_ = v500;
              v569[2].__locale_ = (v500 + 1);
              v499 = v501;
            }

            else
            {
              v500 = v569[1].__locale_;
            }

            if (BYTE1(v133) - 17 <= 1)
            {
              if (v135 <= 1)
              {
                v503 = 1;
              }

              else
              {
                v503 = v135;
              }

              if ((v135 & 0x80000000) != 0)
              {
                v503 = 6;
              }

              if (v569[2].__locale_ == v499)
              {
                v504 = LODWORD(v569[0].__locale_) - v500;
              }

              else
              {
                v504 = -1;
              }

              v505 = v504 + v503;
              v506 = v569[2].__locale_ + ~v500;
              if (v506 < v505)
              {
                HIDWORD(v570[0].__locale_) += v505 - v506;
              }
            }
          }

          if ((v133 & 0x40) == 0)
          {
            v449 = v569[3].__locale_;
            v450 = v570[2].__locale_;
            v451 = v569[3].__locale_ - v570[2].__locale_;
            v452 = SHIDWORD(v570[0].__locale_);
            if (v569[3].__locale_ - v570[2].__locale_ + SHIDWORD(v570[0].__locale_) < v133 >> 32)
            {
              v453 = *v132;
              if ((v133 & 7) == 4)
              {
                if (v570[2].__locale_ != v569[0].__locale_)
                {
                  v507 = *v570[2].__locale_;
                  v508 = *(v453 + 32);
                  if (!v508 || (v510 = *v508, v509 = v508[1], v508[1] = v509 + 1, v509 < v510))
                  {
                    v511 = *v453;
                    v512 = *(v453 + 16);
                    *(v453 + 16) = v512 + 1;
                    *(v511 + v512) = v507;
                    if (*(v453 + 16) == *(v453 + 8))
                    {
                      (*(v453 + 24))(v453, 2);
                    }
                  }

                  v450 = (v450 + 1);
                }

                v513 = v133 & 0xB8 | 3;
                v514 = 48;
              }

              else
              {
                v513 = v133;
                v514 = BYTE4(v135);
              }

              v479 = v133 & 0xFFFFFFFFFFFFFF00 | v513;
              v480 = v135 & 0xFFFFFF00FFFFFFFFLL | (v514 << 32);
              if (v452)
              {
LABEL_1012:
                std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v450, v449, v453, v479, v480, v451, v569[2].__locale_, v452);
LABEL_1154:
                if (v570[1].__locale_ >= 0x401)
                {
                  operator delete(v570[2].__locale_);
                }

                *v132 = v453;
                return;
              }

LABEL_1034:
              std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v450, v449 - v450, v453, v479, v480, v451);
              goto LABEL_1154;
            }

            if (HIDWORD(v570[0].__locale_))
            {
              v516 = v569[2].__locale_;
              if (v569[2].__locale_ != v569[3].__locale_)
              {
                v453 = *v132;
                v517 = v569[2].__locale_ - v570[2].__locale_;
                v518 = *(*v132 + 32);
                if (v518)
                {
                  v519 = *v518;
                  v520 = v518[1];
                  if (*v518 - v520 >= v517)
                  {
                    v521 = v569[2].__locale_ - v570[2].__locale_;
                  }

                  else
                  {
                    v521 = *v518 - v520;
                  }

                  v32 = v519 > v520;
                  v522 = v520 + v517;
                  v518[1] = v522;
                  if (!v32 || v521 == 0)
                  {
                    goto LABEL_1189;
                  }
                }

                else
                {
                  v521 = v569[2].__locale_ - v570[2].__locale_;
                }

                v536 = *(v453 + 16);
                do
                {
                  v537 = *(v453 + 8) - v536;
                  if (v537 < v521 + 1)
                  {
                    (*(v453 + 24))(v453, v521 + 2);
                    v536 = *(v453 + 16);
                    v537 = *(v453 + 8) - v536;
                  }

                  if (v537 >= v521)
                  {
                    v538 = v521;
                  }

                  else
                  {
                    v538 = v537;
                  }

                  if (v538)
                  {
                    memmove((*v453 + v536), v450, v538);
                    v536 = *(v453 + 16);
                  }

                  v536 += v538;
                  *(v453 + 16) = v536;
                  v450 = (v450 + v538);
                  v32 = v521 > v537;
                  v521 -= v538;
                }

                while (v32);
                v518 = *(v453 + 32);
                if (!v518)
                {
                  goto LABEL_1196;
                }

                v519 = *v518;
                v522 = v518[1];
LABEL_1189:
                v539 = v522 + v452;
                v518[1] = v522 + v452;
                v342 = v519 >= v522;
                v540 = v519 - v522;
                if (v540 == 0 || !v342)
                {
                  v543 = v449 - v516;
                  goto LABEL_1205;
                }

                if (v540 < v452)
                {
                  v452 = v540;
                }

                v536 = *(v453 + 16);
                do
                {
LABEL_1196:
                  v541 = *(v453 + 8) - v536;
                  if (v541 < v452 + 1)
                  {
                    (*(v453 + 24))(v453, v452 + 2);
                    v536 = *(v453 + 16);
                    v541 = *(v453 + 8) - v536;
                  }

                  if (v541 >= v452)
                  {
                    v542 = v452;
                  }

                  else
                  {
                    v542 = v541;
                  }

                  if (v542)
                  {
                    memset((*v453 + v536), 48, v542);
                    v536 = *(v453 + 16);
                  }

                  v536 += v542;
                  *(v453 + 16) = v536;
                  v32 = v452 > v541;
                  v452 -= v542;
                }

                while (v32);
                v518 = *(v453 + 32);
                v543 = v449 - v516;
                if (!v518)
                {
                  do
                  {
LABEL_1214:
                    v546 = *(v453 + 8) - v536;
                    if (v546 < v543 + 1)
                    {
                      (*(v453 + 24))(v453, v543 + 2);
                      v536 = *(v453 + 16);
                      v546 = *(v453 + 8) - v536;
                    }

                    if (v546 >= v543)
                    {
                      v547 = v543;
                    }

                    else
                    {
                      v547 = v546;
                    }

                    if (v547)
                    {
                      memmove((*v453 + v536), v516, v547);
                      v536 = *(v453 + 16);
                    }

                    v536 += v547;
                    *(v453 + 16) = v536;
                    v516 = (v516 + v547);
                    v32 = v543 > v546;
                    v543 -= v547;
                  }

                  while (v32);
                  goto LABEL_1154;
                }

                v519 = *v518;
                v539 = v518[1];
LABEL_1205:
                v544 = v519 - v539;
                if (v519 - v539 >= v543)
                {
                  v544 = v543;
                }

                v518[1] = v543 + v539;
                if (v519 <= v539 || v544 == 0)
                {
                  goto LABEL_1154;
                }

                v536 = *(v453 + 16);
                v543 = v544;
                goto LABEL_1214;
              }
            }

            v453 = *v132;
            v524 = *(*v132 + 32);
            if (!v524)
            {
              goto LABEL_1138;
            }

            v525 = *v524;
            v526 = v524[1];
            v527 = v526 + v451;
            if (*v524 - v526 < v451)
            {
              v451 = *v524 - v526;
            }

            v524[1] = v527;
            if (v525 > v526 && v451 != 0)
            {
LABEL_1138:
              v529 = *(v453 + 16);
              do
              {
                v530 = *(v453 + 8) - v529;
                if (v530 < v451 + 1)
                {
                  (*(v453 + 24))(v453, v451 + 2);
                  v529 = *(v453 + 16);
                  v530 = *(v453 + 8) - v529;
                }

                if (v530 >= v451)
                {
                  v531 = v451;
                }

                else
                {
                  v531 = v530;
                }

                if (v531)
                {
                  memmove((*v453 + v529), v450, v531);
                  v529 = *(v453 + 16);
                }

                v529 += v531;
                *(v453 + 16) = v529;
                v450 = (v450 + v531);
                v32 = v451 > v530;
                v451 -= v531;
              }

              while (v32);
              v524 = *(v453 + 32);
              if (!v524)
              {
                do
                {
LABEL_1168:
                  v534 = *(v453 + 8) - v529;
                  if (v534 < v452 + 1)
                  {
                    (*(v453 + 24))(v453, v452 + 2);
                    v529 = *(v453 + 16);
                    v534 = *(v453 + 8) - v529;
                  }

                  if (v534 >= v452)
                  {
                    v535 = v452;
                  }

                  else
                  {
                    v535 = v534;
                  }

                  if (v535)
                  {
                    memset((*v453 + v529), 48, v535);
                    v529 = *(v453 + 16);
                  }

                  v529 += v535;
                  *(v453 + 16) = v529;
                  v32 = v452 > v534;
                  v452 -= v535;
                }

                while (v32);
                goto LABEL_1154;
              }

              v525 = *v524;
              v527 = v524[1];
            }

            v532 = v525 - v527;
            if (v525 - v527 >= v452)
            {
              v532 = v452;
            }

            v524[1] = v527 + v452;
            if (v525 <= v527 || v532 == 0)
            {
              goto LABEL_1154;
            }

            v529 = *(v453 + 16);
            v452 = v532;
            goto LABEL_1168;
          }

          v453 = *v132;
          if ((v132[5] & 1) == 0)
          {
            MEMORY[0x1E69272B0](&v561);
            v515 = (v132 + 4);
            if (*(v132 + 40) == 1)
            {
              std::locale::operator=(v515, &v561);
            }

            else
            {
              std::locale::locale(v515, &v561);
              *(v132 + 40) = 1;
            }

            std::locale::~locale(&v561);
          }

LABEL_1153:
          std::locale::locale(&v568, v132 + 4);
          std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v453, v570, &v569[0].__locale_, &v568, v133, v135);
          std::locale::~locale(&v568);
          goto LABEL_1154;
        }
      }

      else
      {
        LODWORD(v570[0].__locale_) = 1074;
        HIDWORD(v570[0].__locale_) = v161 - 1074;
        v162 = 1390;
        v570[1].__locale_ = 1390;
        v161 = 1074;
      }

      v163 = operator new(v162);
      goto LABEL_281;
    case 0xBu:
      v65 = *a2;
      v566[0].__locale_ = 0;
      LODWORD(v566[1].__locale_) = -1;
      BYTE4(v566[1].__locale_) = 32;
      *(&v566[1].__locale_ + 5) = 0;
      HIBYTE(v566[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_215;
      }

      v66 = *a1;
      v67 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v566, *a1, 63);
      if (BYTE1(v566[0].__locale_) - 13 >= 6)
      {
        if (BYTE1(v566[0].__locale_) > 0xCu || ((1 << SBYTE1(v566[0].__locale_)) & 0x1801) == 0)
        {
          goto LABEL_1237;
        }
      }

      else
      {
        if (LODWORD(v566[1].__locale_) != -1 || SWORD1(v566[0].__locale_) <= -1)
        {
          v69 = v566[1].__locale_;
        }

        else
        {
          v69 = 6;
        }

        LODWORD(v566[1].__locale_) = v69;
      }

      *v66 = v67;
LABEL_215:
      v132 = a1[1];
      v133 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v566, v132);
      v135 = v134;
      v136 = *&v65;
      if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
LABEL_1222:
        *v132 = std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(*v132, v133, v135, v136 < 0, 0);
        return;
      }

      memset(&v570[1], 170, 0x410uLL);
      if (v135 == -1)
      {
        v138 = 1074;
      }

      else
      {
        v138 = v135;
      }

      v570[0].__locale_ = v138;
      if (v138 < 1075)
      {
        v139 = v138 + 316;
        v570[1].__locale_ = v139;
        if ((v138 + 316) < 0x401)
        {
          v140 = &v570[3];
          v138 = v135;
LABEL_224:
          v570[2].__locale_ = v140;
          *&v141 = 0xAAAAAAAAAAAAAAAALL;
          *(&v141 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v569[0].__locale_ = v141;
          *&v569[2].__locale_ = v141;
          if ((*&v65 & 0x8000000000000000) != 0)
          {
            v144 = 45;
          }

          else
          {
            v142 = (v133 >> 3) & 3;
            if (v142 == 2)
            {
              v144 = 43;
            }

            else
            {
              v143 = v140;
              if (v142 != 3)
              {
                goto LABEL_231;
              }

              v144 = 32;
            }
          }

          *v140 = v144;
          v143 = (v140 + 1);
LABEL_231:
          v145 = fabs(v65);
          if (BYTE1(v133) > 0xEu)
          {
            if (BYTE1(v133) - 15 < 2)
            {
              v569[0].__locale_ = v143;
              v149 = MEMORY[0x1E6927370](v143, v140 + v139, 2, v138, v145);
              v569[2].__locale_ = v149;
              v569[3].__locale_ = v149;
              if (v138)
              {
                v150 = v138 + 1;
              }

              else
              {
                v150 = 0;
              }

              v151 = (v149 - v150);
              goto LABEL_948;
            }

            if (BYTE1(v133) == 17)
            {
              HIDWORD(v570[0].__locale_) = 0;
              v569[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[0].__locale_ = v143;
              v152 = MEMORY[0x1E6927370](v143, v140 + v139, 3, v138, v145);
              v569[3].__locale_ = v152;
              v153 = (v143 + 1);
              if ((v143 + 1) != v152)
              {
                v154 = v152 - v153;
                if (v152 - v153 >= 4)
                {
                  v155 = 6;
                  if (v154 < 6)
                  {
                    v155 = v152 - v153;
                  }

                  v156 = -v155;
                  while (*(v152 + v156) != 101)
                  {
                    if (++v156 == -3)
                    {
                      goto LABEL_380;
                    }
                  }

                  goto LABEL_557;
                }

                goto LABEL_380;
              }
            }

            else
            {
              HIDWORD(v570[0].__locale_) = 0;
              v569[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[0].__locale_ = v143;
              v152 = MEMORY[0x1E6927370](v143, v140 + v139, 3, v138, v145);
              v569[3].__locale_ = v152;
              v153 = (v143 + 1);
              if ((v143 + 1) != v152)
              {
                v154 = v152 - v153;
                if (v152 - v153 >= 4)
                {
                  v198 = 6;
                  if (v154 < 6)
                  {
                    v198 = v152 - v153;
                  }

                  v199 = -v198;
                  while (*(v152 + v199) != 101)
                  {
                    if (++v199 == -3)
                    {
                      goto LABEL_380;
                    }
                  }

                  if (*v153 != 46)
                  {
                    v153 = v152;
                  }

                  v569[1].__locale_ = v153;
                  v569[2].__locale_ = (v152 + v199);
                  *(v152 + v199) = 69;
LABEL_949:
                  if ((v133 & 0x20) != 0)
                  {
                    v440 = v569[1].__locale_;
                    v441 = v569[3].__locale_;
                    if (v569[1].__locale_ == v569[3].__locale_)
                    {
                      v443 = ++v569[3].__locale_;
                      *v441 = 46;
                      v442 = v569[2].__locale_;
                      if (v569[2].__locale_ != v440)
                      {
                        if ((v569[2].__locale_ + 1) == v440)
                        {
                          v444 = *v569[2].__locale_;
                          *v569[2].__locale_ = *(v569[2].__locale_ + 1);
                          *(v442 + 1) = v444;
                        }

                        else
                        {
                          memmove(v443 - (v440 - v569[2].__locale_), v569[2].__locale_, v440 - v569[2].__locale_);
                          *v442 = 46;
                        }
                      }

                      v569[1].__locale_ = v442;
                      v569[2].__locale_ = (v442 + 1);
                      v441 = v443;
                    }

                    else
                    {
                      v442 = v569[1].__locale_;
                    }

                    if (BYTE1(v133) - 17 <= 1)
                    {
                      if (v135 <= 1)
                      {
                        v445 = 1;
                      }

                      else
                      {
                        v445 = v135;
                      }

                      if ((v135 & 0x80000000) != 0)
                      {
                        v445 = 6;
                      }

                      if (v569[2].__locale_ == v441)
                      {
                        v446 = LODWORD(v569[0].__locale_) - v442;
                      }

                      else
                      {
                        v446 = -1;
                      }

                      v447 = v446 + v445;
                      v448 = v569[2].__locale_ + ~v442;
                      if (v448 < v447)
                      {
                        HIDWORD(v570[0].__locale_) += v447 - v448;
                      }
                    }
                  }

                  if ((v133 & 0x40) != 0)
                  {
                    v453 = *v132;
                    if ((v132[5] & 1) == 0)
                    {
                      MEMORY[0x1E69272B0](&v561);
                      v462 = (v132 + 4);
                      if (*(v132 + 40) == 1)
                      {
                        std::locale::operator=(v462, &v561);
                      }

                      else
                      {
                        std::locale::locale(v462, &v561);
                        *(v132 + 40) = 1;
                      }

                      std::locale::~locale(&v561);
                    }

                    goto LABEL_1153;
                  }

                  v449 = v569[3].__locale_;
                  v450 = v570[2].__locale_;
                  v451 = v569[3].__locale_ - v570[2].__locale_;
                  v452 = SHIDWORD(v570[0].__locale_);
                  if (v569[3].__locale_ - v570[2].__locale_ + SHIDWORD(v570[0].__locale_) < v133 >> 32)
                  {
                    v453 = *v132;
                    if ((v133 & 7) == 4)
                    {
                      if (v570[2].__locale_ != v569[0].__locale_)
                      {
                        v454 = *v570[2].__locale_;
                        v455 = *(v453 + 32);
                        if (!v455 || (v457 = *v455, v456 = v455[1], v455[1] = v456 + 1, v456 < v457))
                        {
                          v458 = *v453;
                          v459 = *(v453 + 16);
                          *(v453 + 16) = v459 + 1;
                          *(v458 + v459) = v454;
                          if (*(v453 + 16) == *(v453 + 8))
                          {
                            (*(v453 + 24))(v453, 2);
                          }
                        }

                        v450 = (v450 + 1);
                      }

                      v460 = v133 & 0xB8 | 3;
                      v461 = 48;
                    }

                    else
                    {
                      v460 = v133;
                      v461 = BYTE4(v135);
                    }

                    v479 = v133 & 0xFFFFFFFFFFFFFF00 | v460;
                    v480 = v135 & 0xFFFFFF00FFFFFFFFLL | (v461 << 32);
                    if (v452)
                    {
                      goto LABEL_1012;
                    }

                    goto LABEL_1034;
                  }

                  if (HIDWORD(v570[0].__locale_))
                  {
                    v463 = v569[2].__locale_;
                    if (v569[2].__locale_ != v569[3].__locale_)
                    {
                      v453 = *v132;
                      v464 = v569[2].__locale_ - v570[2].__locale_;
                      v465 = *(*v132 + 32);
                      if (v465)
                      {
                        v466 = *v465;
                        v467 = v465[1];
                        if (*v465 - v467 >= v464)
                        {
                          v468 = v569[2].__locale_ - v570[2].__locale_;
                        }

                        else
                        {
                          v468 = *v465 - v467;
                        }

                        v32 = v466 > v467;
                        v469 = v467 + v464;
                        v465[1] = v469;
                        if (!v32 || v468 == 0)
                        {
                          goto LABEL_1048;
                        }
                      }

                      else
                      {
                        v468 = v569[2].__locale_ - v570[2].__locale_;
                      }

                      v485 = *(v453 + 16);
                      do
                      {
                        v486 = *(v453 + 8) - v485;
                        if (v486 < v468 + 1)
                        {
                          (*(v453 + 24))(v453, v468 + 2);
                          v485 = *(v453 + 16);
                          v486 = *(v453 + 8) - v485;
                        }

                        if (v486 >= v468)
                        {
                          v487 = v468;
                        }

                        else
                        {
                          v487 = v486;
                        }

                        if (v487)
                        {
                          memmove((*v453 + v485), v450, v487);
                          v485 = *(v453 + 16);
                        }

                        v485 += v487;
                        *(v453 + 16) = v485;
                        v450 = (v450 + v487);
                        v32 = v468 > v486;
                        v468 -= v487;
                      }

                      while (v32);
                      v465 = *(v453 + 32);
                      if (!v465)
                      {
                        goto LABEL_1055;
                      }

                      v466 = *v465;
                      v469 = v465[1];
LABEL_1048:
                      v488 = v469 + v452;
                      v465[1] = v469 + v452;
                      v342 = v466 >= v469;
                      v489 = v466 - v469;
                      if (v489 == 0 || !v342)
                      {
                        v492 = v449 - v463;
                        goto LABEL_1064;
                      }

                      if (v489 < v452)
                      {
                        v452 = v489;
                      }

                      v485 = *(v453 + 16);
                      do
                      {
LABEL_1055:
                        v490 = *(v453 + 8) - v485;
                        if (v490 < v452 + 1)
                        {
                          (*(v453 + 24))(v453, v452 + 2);
                          v485 = *(v453 + 16);
                          v490 = *(v453 + 8) - v485;
                        }

                        if (v490 >= v452)
                        {
                          v491 = v452;
                        }

                        else
                        {
                          v491 = v490;
                        }

                        if (v491)
                        {
                          memset((*v453 + v485), 48, v491);
                          v485 = *(v453 + 16);
                        }

                        v485 += v491;
                        *(v453 + 16) = v485;
                        v32 = v452 > v490;
                        v452 -= v491;
                      }

                      while (v32);
                      v465 = *(v453 + 32);
                      v492 = v449 - v463;
                      if (!v465)
                      {
                        do
                        {
LABEL_1073:
                          v495 = *(v453 + 8) - v485;
                          if (v495 < v492 + 1)
                          {
                            (*(v453 + 24))(v453, v492 + 2);
                            v485 = *(v453 + 16);
                            v495 = *(v453 + 8) - v485;
                          }

                          if (v495 >= v492)
                          {
                            v496 = v492;
                          }

                          else
                          {
                            v496 = v495;
                          }

                          if (v496)
                          {
                            memmove((*v453 + v485), v463, v496);
                            v485 = *(v453 + 16);
                          }

                          v485 += v496;
                          *(v453 + 16) = v485;
                          v463 = (v463 + v496);
                          v32 = v492 > v495;
                          v492 -= v496;
                        }

                        while (v32);
                        goto LABEL_1154;
                      }

                      v466 = *v465;
                      v488 = v465[1];
LABEL_1064:
                      v493 = v466 - v488;
                      if (v466 - v488 >= v492)
                      {
                        v493 = v492;
                      }

                      v465[1] = v492 + v488;
                      if (v466 <= v488 || v493 == 0)
                      {
                        goto LABEL_1154;
                      }

                      v485 = *(v453 + 16);
                      v492 = v493;
                      goto LABEL_1073;
                    }
                  }

                  v453 = *v132;
                  v471 = *(*v132 + 32);
                  if (!v471)
                  {
                    goto LABEL_1000;
                  }

                  v472 = *v471;
                  v473 = v471[1];
                  v474 = v473 + v451;
                  if (*v471 - v473 < v451)
                  {
                    v451 = *v471 - v473;
                  }

                  v471[1] = v474;
                  if (v472 > v473 && v451 != 0)
                  {
LABEL_1000:
                    v476 = *(v453 + 16);
                    do
                    {
                      v477 = *(v453 + 8) - v476;
                      if (v477 < v451 + 1)
                      {
                        (*(v453 + 24))(v453, v451 + 2);
                        v476 = *(v453 + 16);
                        v477 = *(v453 + 8) - v476;
                      }

                      if (v477 >= v451)
                      {
                        v478 = v451;
                      }

                      else
                      {
                        v478 = v477;
                      }

                      if (v478)
                      {
                        memmove((*v453 + v476), v450, v478);
                        v476 = *(v453 + 16);
                      }

                      v476 += v478;
                      *(v453 + 16) = v476;
                      v450 = (v450 + v478);
                      v32 = v451 > v477;
                      v451 -= v478;
                    }

                    while (v32);
                    v471 = *(v453 + 32);
                    if (!v471)
                    {
                      do
                      {
LABEL_1027:
                        v483 = *(v453 + 8) - v476;
                        if (v483 < v452 + 1)
                        {
                          (*(v453 + 24))(v453, v452 + 2);
                          v476 = *(v453 + 16);
                          v483 = *(v453 + 8) - v476;
                        }

                        if (v483 >= v452)
                        {
                          v484 = v452;
                        }

                        else
                        {
                          v484 = v483;
                        }

                        if (v484)
                        {
                          memset((*v453 + v476), 48, v484);
                          v476 = *(v453 + 16);
                        }

                        v476 += v484;
                        *(v453 + 16) = v476;
                        v32 = v452 > v483;
                        v452 -= v484;
                      }

                      while (v32);
                      goto LABEL_1154;
                    }

                    v472 = *v471;
                    v474 = v471[1];
                  }

                  v481 = v472 - v474;
                  if (v472 - v474 >= v452)
                  {
                    v481 = v452;
                  }

                  v471[1] = v474 + v452;
                  if (v472 <= v474 || v481 == 0)
                  {
                    goto LABEL_1154;
                  }

                  v476 = *(v453 + 16);
                  v452 = v481;
                  goto LABEL_1027;
                }

LABEL_380:
                v569[2].__locale_ = v152;
                v200 = v152;
                v201 = memchr(v153, 46, v154);
                if (v201)
                {
                  v151 = v201;
                }

                else
                {
                  v151 = v200;
                }

LABEL_948:
                v569[1].__locale_ = v151;
                goto LABEL_949;
              }
            }
          }

          else
          {
            if (BYTE1(v133) > 0xBu)
            {
              if (BYTE1(v133) != 12)
              {
                if (BYTE1(v133) == 13)
                {
                  v569[0].__locale_ = v143;
                  v146 = MEMORY[0x1E6927370](v143, v140 + v139, 1, v138, v145);
                  v569[3].__locale_ = v146;
                  if (*(v143 + 1) == 46)
                  {
                    v569[1].__locale_ = (v143 + 1);
                    v147 = v146 - v143 - 2;
                    if (v147 < 4)
                    {
LABEL_242:
                      v569[2].__locale_ = v146;
                    }

                    else
                    {
                      if (v147 >= 6)
                      {
                        v147 = 6;
                      }

                      v148 = -v147;
                      while (*(v146 + v148) != 101)
                      {
                        if (++v148 == -3)
                        {
                          goto LABEL_242;
                        }
                      }

                      v569[2].__locale_ = (v146 + v148);
                    }
                  }

                  else
                  {
                    v569[1].__locale_ = v146;
                    v569[2].__locale_ = (v143 + 1);
                  }
                }

                else
                {
                  v569[0].__locale_ = v143;
                  v206 = MEMORY[0x1E6927370](v143, v140 + v139, 1, v138, v145);
                  v569[3].__locale_ = v206;
                  v207 = (v143 + 1);
                  if (*(v143 + 1) == 46)
                  {
                    v569[1].__locale_ = (v143 + 1);
                    v208 = v206 - v143 - 2;
                    if (v208 < 4)
                    {
LABEL_400:
                      v207 = v206;
                    }

                    else
                    {
                      if (v208 >= 6)
                      {
                        v208 = 6;
                      }

                      v209 = -v208;
                      while (*(v206 + v209) != 101)
                      {
                        if (++v209 == -3)
                        {
                          goto LABEL_400;
                        }
                      }

                      v207 = (v206 + v209);
                    }
                  }

                  else
                  {
                    v569[1].__locale_ = v206;
                  }

                  v569[2].__locale_ = v207;
                  *v207 = 69;
                }

                goto LABEL_949;
              }

              v569[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
              v569[0].__locale_ = v143;
              if ((v135 & 0x80000000) != 0 || v138 == -1)
              {
                v196 = std::to_chars();
              }

              else
              {
                v196 = MEMORY[0x1E6927370](v143, v140 + v139, 4, v138, v145);
              }

              v569[3].__locale_ = v196;
              v221 = (v143 + 1);
              if (*(v143 + 1) == 46)
              {
                v222 = (v196 - 2);
                v223 = memchr(v196 - 6, 112, 4uLL);
                if (v223)
                {
                  v224 = v223;
                }

                else
                {
                  v224 = v222;
                }

                v569[1].__locale_ = (v143 + 1);
                v569[2].__locale_ = v224;
                v221 = v224;
                if (v224 == v143)
                {
LABEL_504:
                  *v221 = 80;
                  goto LABEL_949;
                }
              }

              else
              {
                v569[1].__locale_ = v196;
                v569[2].__locale_ = (v143 + 1);
              }

              do
              {
                v231 = *v143;
                if ((v231 - 97) < 6)
                {
                  LOBYTE(v231) = v231 - 32;
                }

                *v143 = v231;
                v143 = (v143 + 1);
              }

              while (v143 != v221);
              goto LABEL_504;
            }

            if (BYTE1(v133))
            {
              v569[0].__locale_ = v143;
              if ((v135 & 0x80000000) != 0)
              {
                v214 = std::to_chars();
              }

              else
              {
                v214 = MEMORY[0x1E6927370](v143, v140 + v139, 4, v138, v145);
              }

              v569[3].__locale_ = v214;
              v244 = *(v143 + 1);
              v243 = (v143 + 1);
              if (v244 == 46)
              {
                v245 = (v214 - 2);
                v246 = memchr(v214 - 6, 112, 4uLL);
                v214 = v243;
                if (v246)
                {
                  v243 = v246;
                }

                else
                {
                  v243 = v245;
                }
              }

              v569[1].__locale_ = v214;
              v569[2].__locale_ = v243;
              goto LABEL_949;
            }

            if ((v135 & 0x80000000) != 0)
            {
              v569[0].__locale_ = v143;
              v238 = std::to_chars(v143, v140 + v139, v137, v145);
              v239 = v238;
              v569[3].__locale_ = v238;
              v240 = v238 - v143;
              if (v238 - v143 < 4)
              {
LABEL_534:
                v242 = v238;
              }

              else
              {
                if (v240 >= 6)
                {
                  v240 = 6;
                }

                v241 = -v240;
                while (*(v238 + v241) != 101)
                {
                  if (++v241 == -3)
                  {
                    goto LABEL_534;
                  }
                }

                v242 = (v238 + v241);
              }

              v569[2].__locale_ = v242;
              v439 = memchr(v143 + 1, 46, v242 - (v143 + 1));
              if (v439)
              {
                v151 = v439;
              }

              else
              {
                v151 = v242;
              }

              if (v151 == v242)
              {
                v151 = v239;
              }

              goto LABEL_948;
            }

            HIDWORD(v570[0].__locale_) = 0;
            v569[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v569[2].__locale_ = 0xAAAAAAAAAAAAAAAALL;
            v569[0].__locale_ = v143;
            v152 = MEMORY[0x1E6927370](v143, v140 + v139, 3, v138, v145);
            v569[3].__locale_ = v152;
            v153 = (v143 + 1);
            if ((v143 + 1) != v152)
            {
              v154 = v152 - v153;
              if (v152 - v153 >= 4)
              {
                v157 = 6;
                if (v154 < 6)
                {
                  v157 = v152 - v153;
                }

                v156 = -v157;
                while (*(v152 + v156) != 101)
                {
                  if (++v156 == -3)
                  {
                    goto LABEL_380;
                  }
                }

LABEL_557:
                v256 = (v152 + v156);
                if (*v153 != 46)
                {
                  v153 = v152;
                }

                v569[1].__locale_ = v153;
                v569[2].__locale_ = v256;
                goto LABEL_949;
              }

              goto LABEL_380;
            }
          }

          v569[1].__locale_ = v152;
          v569[2].__locale_ = v152;
          goto LABEL_949;
        }
      }

      else
      {
        LODWORD(v570[0].__locale_) = 1074;
        HIDWORD(v570[0].__locale_) = v138 - 1074;
        v139 = 1390;
        v570[1].__locale_ = 1390;
        v138 = 1074;
      }

      v140 = operator new(v139);
      goto LABEL_224;
    case 0xCu:
      v80 = *a2;
      LODWORD(v570[0].__locale_) = 1;
      *(&v570[0].__locale_ + 4) = 0xFFFFFFFF00000000;
      BYTE4(v570[1].__locale_) = 32;
      *(&v570[1].__locale_ + 5) = 0;
      HIBYTE(v570[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_128;
      }

      v81 = *a1;
      v82 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v570, *a1, 40);
      if (BYTE1(v570[0].__locale_) >= 2u && BYTE1(v570[0].__locale_) != 19)
      {
        goto LABEL_1232;
      }

      *v81 = v82;
LABEL_128:
      v13 = a1[1];
      v83 = strlen(v80);
      v16 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v570, v80, v83, v13);
      goto LABEL_136;
    case 0xDu:
      v17 = *a2;
      v18 = *(a2 + 1);
      LODWORD(v570[0].__locale_) = 1;
      *(&v570[0].__locale_ + 4) = 0xFFFFFFFF00000000;
      BYTE4(v570[1].__locale_) = 32;
      *(&v570[1].__locale_ + 5) = 0;
      HIBYTE(v570[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_18;
      }

      v19 = *a1;
      v20 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v570, *a1, 40);
      if (BYTE1(v570[0].__locale_) >= 2u && BYTE1(v570[0].__locale_) != 19)
      {
LABEL_1232:
        std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
      }

      *v19 = v20;
LABEL_18:
      v13 = a1[1];
      v16 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v570, v17, v18, v13);
LABEL_136:
      *v13 = v16;
      return;
    case 0xEu:
      v9 = *a2;
      v569[0].__locale_ = 0;
      LODWORD(v569[1].__locale_) = -1;
      BYTE4(v569[1].__locale_) = 32;
      *(&v569[1].__locale_ + 5) = 0;
      HIBYTE(v569[1].__locale_) = 0;
      if (*a1[2] == 1)
      {
        v10 = *a1;
        v11 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v569, *a1, 36);
        if (BYTE1(v569[0].__locale_) - 8 >= 2 && BYTE1(v569[0].__locale_) != 0)
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
        }

        *v10 = v11;
      }

      v13 = a1[1];
      v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v569, v13);
      v570[0].__locale_ = 0xAAAAAAAAAAAAAAAALL;
      v570[1].__locale_ = 0xAAAAAAAAAAAAAAAALL;
      *(&v570[1].__locale_ + 7) = -1431655766;
      if ((v14 & 0xFF00) == 0x900)
      {
        v16 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v9, v13, v14 & 0xFFFFFFFFFFFF00DFLL | 0x720, v15, v570, &v570[2].__locale_ + 3, "0X", 16);
      }

      else
      {
        v16 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v9, v13, v14 & 0xFFFFFFFFFFFF00DFLL | 0x620, v15, v570, &v570[2].__locale_ + 3, "0x", 16);
      }

      goto LABEL_136;
    case 0xFu:
      v84 = *a1;
      v85 = *a2;
      v86 = *(a2 + 1);
      v87 = a1[1];

      v86(v84, v87, v85);
      return;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

void sub_1E537DCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::locale a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, unint64_t a38, void *__p)
{
  if (a38 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v37[0] = *a2;
  v37[1] = v3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v37) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v9 = v37[0];
  v10 = a3;
  if (v37[0] >= v3)
  {
    goto LABEL_9;
  }

  v11 = *v37[0];
  switch(v11)
  {
    case '<':
      v12 = 1;
LABEL_19:
      *a1 = *a1 & 0xF8 | v12;
      v14 = v9 - v4;
      if (v9 - v4 == 1)
      {
        v15 = *v4;
        if (v15 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }

        *(a1 + 12) = v15;
      }

      else if (v9 != v4)
      {
        memmove((a1 + 12), v4, v9 - v4);
        v10 = a3;
      }

      v4 += v14 + 1;
      if (v4 == v3)
      {
        return v4;
      }

      goto LABEL_25;
    case '>':
      v12 = 3;
      goto LABEL_19;
    case '^':
      v12 = 2;
      goto LABEL_19;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v13 = 1;
LABEL_15:
      *a1 = *a1 & 0xF8 | v13;
      if (++v4 == v3)
      {
        return v4;
      }

      break;
    case '>':
      v13 = 3;
      goto LABEL_15;
    case '^':
      v13 = 2;
      goto LABEL_15;
  }

LABEL_25:
  v16 = v10;
  if (v10)
  {
    v22 = *v4;
    switch(v22)
    {
      case ' ':
        *a1 |= 0x18u;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
      case '+':
        *a1 = *a1 & 0xE7 | 0x10;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
      case '-':
        *a1 = *a1 & 0xE7 | 8;
        if (++v4 == v3)
        {
          return v4;
        }

        break;
    }
  }

  if ((v16 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((v16 & 4) == 0)
  {
    goto LABEL_34;
  }

  v17 = *v4;
  if (v17 != 48)
  {
    goto LABEL_35;
  }

  if ((*a1 & 7) == 0)
  {
    *a1 |= 4u;
  }

  if (++v4 != v3)
  {
LABEL_34:
    v17 = *v4;
LABEL_35:
    if (v17 == 123)
    {
      if (v4 + 1 == v3)
      {
        goto LABEL_124;
      }

      v23 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 1, v3, a2);
      if (v3 == v23 || *v23 != 125)
      {
        goto LABEL_123;
      }

      v20 = v23 + 1;
      *(a1 + 2) |= 0x4000u;
    }

    else
    {
      LODWORD(v18) = v17 - 48;
      if (v17 == 48)
      {
        std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
      }

      if ((v17 - 58) < 0xFFFFFFF6)
      {
        goto LABEL_55;
      }

      v19 = v4 + 9;
      if (v3 - v4 <= 9)
      {
        v19 = v3;
      }

      v20 = v4 + 1;
      if (v4 + 1 == v19)
      {
        v19 = v4 + 1;
LABEL_68:
        if (v19 == v3)
        {
          *(a1 + 4) = v18;
          return v3;
        }

        v28 = *v19;
        if ((v28 - 48) > 9)
        {
          v20 = v19;
        }

        else
        {
          v18 = v28 + 10 * v18 - 48;
          if (v18 >> 31 || (v20 = v4 + 2, v4 + 2 != v3) && *v20 - 48 <= 9)
          {
LABEL_91:
            std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
          }
        }
      }

      else
      {
        v4 = v19 - 1;
        while (1)
        {
          v21 = *v20;
          if ((v21 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          LODWORD(v18) = v21 + 10 * v18 - 48;
          if (++v20 == v19)
          {
            goto LABEL_68;
          }
        }
      }
    }

    *(a1 + 4) = v18;
    v4 = v20;
    if (v20 == v3)
    {
      return v4;
    }

LABEL_55:
    if ((v16 & 8) == 0 || *v4 != 46)
    {
      goto LABEL_96;
    }

    v24 = v4 + 1;
    if (v4 + 1 == v3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v25 = *v24;
    if (v25 == 123)
    {
      if (v4 + 2 != v3)
      {
        v26 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, v3, a2);
        if (v3 != v26 && *v26 == 125)
        {
          v4 = v26 + 1;
          *(a1 + 2) |= 0x8000u;
          *(a1 + 8) = v27;
          goto LABEL_95;
        }

LABEL_123:
        std::__throw_format_error[abi:ne200100]("The argument index is invalid");
      }

LABEL_124:
      std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
    }

    if ((v25 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
    }

    if (v3 - v24 <= 9)
    {
      v29 = v3;
    }

    else
    {
      v29 = v4 + 10;
    }

    LODWORD(v30) = v25 - 48;
    v4 += 2;
    if (v4 != v29)
    {
      v24 = v29 - 1;
      while (1)
      {
        v31 = *v4;
        if ((v31 - 58) < 0xFFFFFFF6)
        {
          goto LABEL_94;
        }

        LODWORD(v30) = v31 + 10 * v30 - 48;
        if (++v4 == v29)
        {
          goto LABEL_86;
        }
      }
    }

    v29 = v4;
LABEL_86:
    if (v29 == v3)
    {
      v4 = v3;
    }

    else
    {
      v32 = *v29;
      if ((v32 - 48) > 9)
      {
        v4 = v29;
      }

      else
      {
        v30 = v32 + 10 * v30 - 48;
        if (v30 >> 31)
        {
          goto LABEL_91;
        }

        v4 = v24 + 2;
        if (v24 + 2 != v3 && *v4 - 48 <= 9)
        {
          goto LABEL_91;
        }
      }
    }

LABEL_94:
    *(a1 + 8) = v30;
    *(a1 + 2) &= ~0x8000u;
LABEL_95:
    if (v4 == v3)
    {
      return v4;
    }

LABEL_96:
    if ((v16 & 0x10) != 0)
    {
      v33 = *v4;
      if (v33 != 76)
      {
LABEL_100:
        v34 = v33 - 65;
        v35 = 12;
        switch(v34)
        {
          case 0:
            goto LABEL_118;
          case 1:
            v35 = 3;
            goto LABEL_118;
          case 4:
            v35 = 14;
            goto LABEL_118;
          case 5:
            v35 = 16;
            goto LABEL_118;
          case 6:
            v35 = 18;
            goto LABEL_118;
          case 15:
            v35 = 9;
            goto LABEL_118;
          case 23:
            v35 = 7;
            goto LABEL_118;
          case 32:
            v35 = 11;
            goto LABEL_118;
          case 33:
            v35 = 2;
            goto LABEL_118;
          case 34:
            v35 = 10;
            goto LABEL_118;
          case 35:
            v35 = 5;
            goto LABEL_118;
          case 36:
            v35 = 13;
            goto LABEL_118;
          case 37:
            v35 = 15;
            goto LABEL_118;
          case 38:
            v35 = 17;
            goto LABEL_118;
          case 46:
            v35 = 4;
            goto LABEL_118;
          case 47:
            v35 = 8;
            goto LABEL_118;
          case 50:
            v35 = 1;
            goto LABEL_118;
          case 55:
            v35 = 6;
LABEL_118:
            *(a1 + 1) = v35;
            ++v4;
            break;
          default:
            break;
        }

        if (v4 != v3 && *v4 != 125)
        {
          std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
        }

        return v4;
      }

      *a1 |= 0x40u;
      if (++v4 == v3)
      {
        return v4;
      }
    }

    v33 = *v4;
    goto LABEL_100;
  }

  return v4;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

    goto LABEL_28;
  }

  if (v2 != 3)
  {
    if (v2 == 4 && a1[1] - v1 >= 4)
    {
      v6 = (v1[1] & 0xC0) == 128;
      if ((v1[1] & 0xC0) == 0x80)
      {
        v6 = (v1[2] & 0xC0) == 128;
        if ((v1[2] & 0xC0) == 0x80)
        {
          v6 = (v1[3] & 0xC0) == 128;
        }
      }

      if (v6)
      {
        *a1 = v1 + 1;
        v7 = *v1 & 7;
        *a1 = v1 + 2;
        v8 = (v7 << 12) | ((v1[1] & 0x3F) << 6);
        *a1 = v1 + 3;
        v9 = v1[2];
        *a1 = v1 + 4;
        if (v8 >= 0x400)
        {
          v10 = v1[3] & 0x3F | ((v8 | v9 & 0x3F) << 6);
          if (v8 >> 10 >= 0x11)
          {
            return 2147549181;
          }

          else
          {
            return v10;
          }
        }

        return 2147549181;
      }
    }

LABEL_28:
    *a1 = v1 + 1;
    return 2147549181;
  }

  if (a1[1] - v1 < 3)
  {
    goto LABEL_28;
  }

  v11 = (v1[1] & 0xC0) == 128;
  if ((v1[1] & 0xC0) == 0x80)
  {
    v11 = (v1[2] & 0xC0) == 128;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

  *a1 = v1 + 1;
  v12 = *v1 & 0xF;
  *a1 = v1 + 2;
  v13 = (v12 << 12) | ((v1[1] & 0x3F) << 6);
  *a1 = v1 + 3;
  if (v13 < 0x800)
  {
    return 2147549181;
  }

  v14 = v13 | v1[2] & 0x3F;
  if ((v13 & 0xF800) == 0xD800)
  {
    return 2147549181;
  }

  else
  {
    return v14;
  }
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  v21.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v21.__r_.__value_.__r.__words[1] = xmmword_1E53931C0;
  strcpy(v21.__r_.__value_.__l.__data_, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v21, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v23 = v3->__r_.__value_.__r.__words[2];
  v22 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = SHIBYTE(v23);
  if ((SHIBYTE(v23) & 0x8000000000000000) != 0)
  {
    v5 = *(&v22 + 1);
    v6 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v6 - *(&v22 + 1) < 0x14)
    {
      v7 = 0x7FFFFFFFFFFFFFF7;
      v8 = *(&v22 + 1) + 20;
      if (0x7FFFFFFFFFFFFFF7 - (v23 & 0x7FFFFFFFFFFFFFFFLL) < *(&v22 + 1) + 20 - v6)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v22;
      if (v6 > 0x3FFFFFFFFFFFFFF2)
      {
        v12 = 0;
LABEL_16:
        v13 = operator new(v7);
        v14 = v13;
        if (v5)
        {
          memmove(v13, v9, v5);
        }

        v15 = &v14[v5];
        *v15 = *" formatting argument";
        *(v15 + 4) = 1953391981;
        if (!v12)
        {
          operator delete(v9);
        }

        *(&v22 + 1) = v8;
        v23 = v7 | 0x8000000000000000;
        *&v22 = v14;
        v16 = &v14[v8];
LABEL_27:
        *v16 = 0;
        v25 = v23;
        v24 = v22;
        v23 = 0;
        v22 = 0uLL;
        if (v25 >= 0)
        {
          v20 = &v24;
        }

        else
        {
          v20 = v24;
        }

        std::__throw_format_error[abi:ne200100](v20);
      }

LABEL_7:
      v10 = 2 * v6;
      if (v8 > 2 * v6)
      {
        v10 = v8;
      }

      if ((v10 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v10 | 7) + 1;
      }

      if (v10 >= 0x17)
      {
        v7 = v11;
      }

      else
      {
        v7 = 23;
      }

      v12 = v6 == 22;
      goto LABEL_16;
    }

    v17 = v22;
  }

  else
  {
    if ((SHIBYTE(v23) - 3) < 0x14)
    {
      v8 = SHIBYTE(v23) + 20;
      v9 = &v22;
      v6 = 22;
      goto LABEL_7;
    }

    v17 = &v22;
  }

  v18 = v17 + v5;
  *v18 = *" formatting argument";
  *(v18 + 4) = 1953391981;
  v19 = v5 + 20;
  if (SHIBYTE(v23) < 0)
  {
    *(&v22 + 1) = v5 + 20;
  }

  else
  {
    HIBYTE(v23) = v19 & 0x7F;
  }

  v16 = v17 + v19;
  goto LABEL_27;
}

void sub_1E537E7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if (a15 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  v41.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v41.__r_.__value_.__r.__words[1] = xmmword_1E5391A10;
  strcpy(v41.__r_.__value_.__l.__data_, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v41, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
    v8 = (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 - v42.__r_.__value_.__l.__size_ < 0x14)
    {
      v9 = 0x7FFFFFFFFFFFFFF7;
      v10 = v42.__r_.__value_.__l.__size_ + 20;
      if (0x7FFFFFFFFFFFFFF7 - (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v42.__r_.__value_.__l.__size_ + 20 - v8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v42.__r_.__value_.__r.__words[0];
      if (v8 >= 0x3FFFFFFFFFFFFFF3)
      {
        v14 = 0;
LABEL_16:
        v15 = operator new(v9);
        v16 = v15;
        if (size)
        {
          memmove(v15, v11, size);
        }

        v17 = v16 + size;
        *v17 = *" does not allow the ";
        *(v17 + 16) = 543516788;
        if (!v14)
        {
          operator delete(v11);
        }

        v42.__r_.__value_.__l.__size_ = v10;
        v42.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
        v42.__r_.__value_.__r.__words[0] = v16;
        v18 = (v16 + v10);
LABEL_27:
        *v18 = 0;
        v43 = v42;
        memset(&v42, 0, sizeof(v42));
        v22 = strlen(a2);
        v23 = std::string::append(&v43, a2, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v45 = v23->__r_.__value_.__r.__words[2];
        v44 = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = SHIBYTE(v45);
        if ((SHIBYTE(v45) & 0x8000000000000000) != 0)
        {
          v25 = *(&v44 + 1);
          v26 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v26 - *(&v44 + 1) < 7)
          {
            v27 = 0x7FFFFFFFFFFFFFF7;
            v28 = *(&v44 + 1) + 7;
            if (0x7FFFFFFFFFFFFFF7 - (v45 & 0x7FFFFFFFFFFFFFFFLL) < *(&v44 + 1) + 7 - v26)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v29 = v44;
            if (v26 >= 0x3FFFFFFFFFFFFFF3)
            {
              v32 = 0;
LABEL_42:
              v33 = operator new(v27);
              v34 = v33;
              if (v25)
              {
                memmove(v33, v29, v25);
              }

              v35 = &v34[v25];
              *(v35 + 3) = 1852795252;
              *v35 = 1953525536;
              if (!v32)
              {
                operator delete(v29);
              }

              *(&v44 + 1) = v28;
              v45 = v27 | 0x8000000000000000;
              *&v44 = v34;
              v36 = &v34[v28];
LABEL_55:
              *v36 = 0;
              v47 = v45;
              v46 = v44;
              v45 = 0;
              v44 = 0uLL;
              if (v47 >= 0)
              {
                v40 = &v46;
              }

              else
              {
                v40 = v46;
              }

              std::__throw_format_error[abi:ne200100](v40);
            }

LABEL_33:
            v30 = 2 * v26;
            if (v28 > 2 * v26)
            {
              v30 = v28;
            }

            if ((v30 | 7) == 0x17)
            {
              v31 = 25;
            }

            else
            {
              v31 = (v30 | 7) + 1;
            }

            if (v30 >= 0x17)
            {
              v27 = v31;
            }

            else
            {
              v27 = 23;
            }

            v32 = v26 == 22;
            goto LABEL_42;
          }

          v37 = v44;
        }

        else
        {
          if ((SHIBYTE(v45) - 16) < 7)
          {
            v28 = SHIBYTE(v45) + 7;
            v29 = &v44;
            v26 = 22;
            goto LABEL_33;
          }

          v37 = &v44;
        }

        v38 = (v37 + v25);
        *(v38 + 3) = 1852795252;
        *v38 = 1953525536;
        v39 = v25 + 7;
        if (SHIBYTE(v45) < 0)
        {
          *(&v44 + 1) = v25 + 7;
        }

        else
        {
          HIBYTE(v45) = v39 & 0x7F;
        }

        v36 = v37 + v39;
        goto LABEL_55;
      }

LABEL_7:
      v12 = 2 * v8;
      if (v10 > 2 * v8)
      {
        v12 = v10;
      }

      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      if (v12 >= 0x17)
      {
        v9 = v13;
      }

      else
      {
        v9 = 23;
      }

      v14 = v8 == 22;
      goto LABEL_16;
    }

    v19 = v42.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) - 3) < 0x14)
    {
      v10 = SHIBYTE(v42.__r_.__value_.__r.__words[2]) + 20;
      v11 = &v42;
      v8 = 22;
      goto LABEL_7;
    }

    v19 = &v42;
  }

  v20 = v19 + size;
  *v20 = *" does not allow the ";
  *(v20 + 4) = 543516788;
  v21 = size + 20;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    v42.__r_.__value_.__l.__size_ = size + 20;
  }

  else
  {
    *(&v42.__r_.__value_.__s + 23) = v21 & 0x7F;
  }

  v18 = v19 + v21;
  goto LABEL_27;
}

void sub_1E537EC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(a30);
    if (a28 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_3;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if (a15 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a16);
  if (a15 < 0)
  {
LABEL_5:
    operator delete(a10);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  *&v23[23] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) == 0)
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
    }

    goto LABEL_10;
  }

  v8 = *(a1 + 1);
  v9 = a2[1];
  if (v9 <= v8)
  {
    LOBYTE(v11) = 0;
  }

  else if (v9 > 0xC)
  {
    v12 = a2[2] + 32 * v8;
    v2 = *v12;
    v8 = *(v12 + 8);
    LOBYTE(v11) = *(v12 + 16);
    *v19 = *(v12 + 17);
    *&v19[7] = *(v12 + 24);
  }

  else
  {
    v10 = a2[2];
    v11 = (a2[3] >> (5 * v8)) & 0x1FLL;
    v2 = *(v10 + 16 * v8);
    v8 = *(v10 + 16 * v8 + 8);
  }

  v20 = v2;
  v21 = v8;
  v22 = v11;
  *v23 = *v19;
  *&v23[7] = *&v19[7];
  v7 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v20);
  if ((*(a1 + 1) & 0x8000) != 0)
  {
LABEL_10:
    v13 = *(a1 + 2);
    v14 = a2[1];
    if (v14 <= v13)
    {
      LOBYTE(v16) = 0;
    }

    else if (v14 > 0xC)
    {
      v17 = a2[2] + 32 * v13;
      v2 = *v17;
      v13 = *(v17 + 8);
      LOBYTE(v16) = *(v17 + 16);
      *v19 = *(v17 + 17);
      *&v19[7] = *(v17 + 24);
    }

    else
    {
      v15 = a2[2];
      v16 = (a2[3] >> (5 * v13)) & 0x1FLL;
      v2 = *(v15 + 16 * v13);
      v13 = *(v15 + 16 * v13 + 8);
    }

    v20 = v2;
    v21 = v13;
    v22 = v16;
    *v23 = *v19;
    *&v23[7] = *&v19[7];
    std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v20);
  }

  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  *&v14[5] = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v13[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src = v7;
    *v13 = v7;
    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v8 = "0b";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v8 = "0B";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v10 = v14;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, &__src, v10, v8, v11);
  }

  if (BYTE1(a3) > 5u)
  {
    *&__src = 0xAAAAAAAAAAAAAAAALL;
    *(&__src + 7) = -1431655766;
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v8 = "0x";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v8 = "0X";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v10 = &__src + 11;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, &__src, v10, v8, v11);
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    *&__src = 0xAAAAAAAAAAAAAAAALL;
    *(&__src + 7) = -1431655766;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, &__src, &__src + 11, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *(&__src + 5) = 0xAAAAAAAAAAAAAAAALL;
  *&__src = 0xAAAAAAAAAAAAAAAALL;
  return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, &__src, &__src + 13, v5, 8u);
}

uint64_t std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = __src;
  v7 = HIDWORD(a4);
  if (a4 <= 0)
  {
    v13 = *(a3 + 32);
    if (v13)
    {
      v15 = *v13;
      v14 = v13[1];
      if (*v13 - v14 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *v13 - v14;
      }

      v13[1] = v14 + a2;
      if (v15 <= v14 || v16 == 0)
      {
        return a3;
      }
    }

    else
    {
      v16 = a2;
    }

    v23 = *(a3 + 16);
    do
    {
      v25 = *(a3 + 8) - v23;
      if (v25 < v16 + 1)
      {
        (*(a3 + 24))(a3, v16 + 2);
        v23 = *(a3 + 16);
        v25 = *(a3 + 8) - v23;
      }

      if (v25 >= v16)
      {
        v26 = v16;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        memmove((*a3 + v23), v6, v26);
        v23 = *(a3 + 16);
      }

      v23 += v26;
      *(a3 + 16) = v23;
      v6 += v26;
      v24 = v16 > v25;
      v16 -= v26;
    }

    while (v24);
    return a3;
  }

  if (a2)
  {
    if (*__src < 0)
    {
      v11 = a4;
      v12 = a5;
    }

    else
    {
      v8 = 0;
      v9 = &__src[v7];
      __src = &__src[v7 - 1];
      while (1)
      {
        if (a2 - 1 == v8)
        {
          v19 = a2;
          goto LABEL_36;
        }

        if (v7 - 1 == v8)
        {
          break;
        }

        v10 = v6[++v8];
        if (v10 < 0)
        {
          v11 = a4;
          v12 = a5;
          v7 = v7 - v8 + 1;
          __src = &v6[v8 - 1];
          goto LABEL_21;
        }
      }

      if ((*v9 & 0x80000000) == 0)
      {
        v19 = HIDWORD(a4);
        goto LABEL_36;
      }

      v11 = a4;
      v12 = a5;
      v7 = 1;
    }

LABEL_21:
    v20 = (__src - v6);
    v21 = a2;
    v22 = std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(__src, &v6[a2], v7, 1);
    a2 = v21;
    v19 = &v20[v22];
    a5 = v12;
    a4 = v11;
  }

  else
  {
    v19 = 0;
  }

LABEL_36:
  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v6, a2, a3, a4, a5, v19);
  return a3;
}

uint64_t std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 > a6)
  {
    v10 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v26 = v9 >> 1;
        v9 -= v9 >> 1;
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v26, SHIDWORD(a5));
        v11 = *(a3 + 32);
        if (v11)
        {
          goto LABEL_17;
        }

LABEL_39:
        v19 = a2;
        goto LABEL_40;
      }
    }

    else if ((a4 & 7) != 0)
    {
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
      v11 = *(a3 + 32);
      if (!v11)
      {
        goto LABEL_39;
      }

LABEL_17:
      v18 = *v11;
      v17 = v11[1];
      if (*v11 - v17 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *v11 - v17;
      }

      v11[1] = v17 + a2;
      if (v18 <= v17 || v19 == 0)
      {
LABEL_25:
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v9, v10);
        return a3;
      }

LABEL_40:
      v27 = *(a3 + 16);
      do
      {
        v28 = *(a3 + 8) - v27;
        if (v28 < v19 + 1)
        {
          (*(a3 + 24))(a3, v19 + 2);
          v27 = *(a3 + 16);
          v28 = *(a3 + 8) - v27;
        }

        if (v28 >= v19)
        {
          v29 = v19;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          memmove((*a3 + v27), __src, v29);
          v27 = *(a3 + 16);
        }

        v27 += v29;
        *(a3 + 16) = v27;
        __src += v29;
        v23 = v19 > v28;
        v19 -= v29;
      }

      while (v23);
      goto LABEL_25;
    }

    v9 = 0;
    std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - a6, SHIDWORD(a5));
    v11 = *(a3 + 32);
    if (v11)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

  v12 = *(a3 + 32);
  if (v12)
  {
    v14 = *v12;
    v13 = v12[1];
    if (*v12 - v13 >= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = *v12 - v13;
    }

    v12[1] = v13 + a2;
    if (v14 <= v13 || v15 == 0)
    {
      return a3;
    }
  }

  else
  {
    v15 = a2;
  }

  v22 = *(a3 + 16);
  do
  {
    v24 = *(a3 + 8) - v22;
    if (v24 < v15 + 1)
    {
      (*(a3 + 24))(a3, v15 + 2);
      v22 = *(a3 + 16);
      v24 = *(a3 + 8) - v22;
    }

    if (v24 >= v15)
    {
      v25 = v15;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      memmove((*a3 + v22), __src, v25);
      v22 = *(a3 + 16);
    }

    v22 += v25;
    *(a3 + 16) = v22;
    __src += v25;
    v23 = v15 > v24;
    v15 -= v25;
  }

  while (v23);
  return a3;
}

unint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v147 = a1;
  v148 = a2;
  memset(v149, 170, sizeof(v149));
  v5 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v147);
  v6 = v5 & 0x7FFFFFFF;
  LODWORD(v149[0]) = v5 & 0x7FFFFFFF;
  v7 = (v5 << 11) | 0x7FF;
  v8 = 1496;
  v9 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v10 = v8 >> 1;
    v11 = &v9[v8 >> 1];
    v13 = *v11;
    v12 = v11 + 1;
    v8 += ~(v8 >> 1);
    if (v7 >= v13)
    {
      v9 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  while (v8);
  if (v9 == &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100] || (v14 = *(v9 - 1), ((v14 >> 4) & 0x7F) + (v14 >> 11) < v6))
  {
    LOBYTE(v15) = 16;
    BYTE4(v149[0]) = 16;
    v149[1] = 0;
    LODWORD(v149[2]) = 0;
    v17 = a2;
    v16 = a3;
    v18 = a4;
  }

  else
  {
    v15 = v14 & 0xF;
    BYTE4(v149[0]) = v14 & 0xF;
    v149[1] = 0;
    LODWORD(v149[2]) = 0;
    v17 = a2;
    v16 = a3;
    v18 = a4;
    if (v15 == 9)
    {
      v27 = 3;
      goto LABEL_25;
    }

    if (v15 == 3)
    {
      v27 = 2;
      goto LABEL_25;
    }
  }

  v19 = 201;
  v20 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v21 = v19 >> 1;
    v22 = &v20[v19 >> 1];
    v24 = *v22;
    v23 = v22 + 1;
    v19 += ~(v19 >> 1);
    if (v7 >= v24)
    {
      v20 = v23;
    }

    else
    {
      v19 = v21;
    }
  }

  while (v19);
  if (v20 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v25 = *(v20 - 1);
    v26 = (v25 & 3) == 0 && ((v25 >> 2) & 0x1FF) + (v25 >> 11) >= v6;
    if (v26)
    {
      v27 = 1;
LABEL_25:
      LODWORD(v149[1]) = v27;
    }
  }

  if (a1 == v17)
  {
    return 0;
  }

  if (v147 != v148)
  {
    result = 0;
    while (1)
    {
      v30 = v6;
      v31 = v147;
      if (v147 == v148)
      {
        v35 = v148;
        if (v6 - 262142 >= 0xFFFC1102)
        {
          goto LABEL_323;
        }

LABEL_334:
        v104 = result + 1;
        if (v18)
        {
          goto LABEL_29;
        }

LABEL_335:
        if (v104 <= v16)
        {
          goto LABEL_29;
        }

        return result;
      }

      v33 = v149[1];
      v32 = HIDWORD(v149[1]);
      v34 = v149[2];
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v35 = v31;
              v36 = v15;
              v37 = *v31;
              v38 = (__clz(v37 ^ 0xFF) - 24);
              if (v38 > 2)
              {
                if (v38 == 3)
                {
                  if (v148 - v35 >= 3)
                  {
                    v45 = (v35[1] & 0xC0) == 128;
                    if ((v35[1] & 0xC0) == 0x80)
                    {
                      v45 = (v35[2] & 0xC0) == 128;
                    }

                    if (v45)
                    {
                      v147 = v35 + 2;
                      v46 = ((v37 & 0xF) << 12) | ((v35[1] & 0x3F) << 6);
                      v31 = v35 + 3;
                      v147 = v35 + 3;
                      if (v46 >= 0x800)
                      {
                        if ((v46 & 0xF800) == 0xD800)
                        {
                          v37 = -2147418115;
                        }

                        else
                        {
                          v37 = v46 | v35[2] & 0x3F;
                        }

                        goto LABEL_69;
                      }

                      goto LABEL_68;
                    }
                  }

LABEL_67:
                  v31 = v35 + 1;
                  v147 = v35 + 1;
LABEL_68:
                  v37 = -2147418115;
                  goto LABEL_69;
                }

                if (v38 != 4 || v148 - v35 < 4)
                {
                  goto LABEL_67;
                }

                v42 = (v35[1] & 0xC0) == 128;
                if ((v35[1] & 0xC0) == 0x80)
                {
                  v42 = (v35[2] & 0xC0) == 128;
                  if ((v35[2] & 0xC0) == 0x80)
                  {
                    v42 = (v35[3] & 0xC0) == 128;
                  }
                }

                if (!v42)
                {
                  goto LABEL_67;
                }

                v147 = v35 + 2;
                v43 = ((v37 & 7) << 12) | ((v35[1] & 0x3F) << 6);
                v147 = v35 + 3;
                v44 = v35[2];
                v31 = v35 + 4;
                v147 = v35 + 4;
                if (v43 < 0x400)
                {
                  goto LABEL_68;
                }

                v37 = v35[3] & 0x3F | ((v43 | v44 & 0x3F) << 6);
                if (v43 >> 10 >= 0x11)
                {
                  v37 = -2147418115;
                }
              }

              else
              {
                if (v38)
                {
                  if (v38 == 2 && v148 - v35 >= 2)
                  {
                    v39 = v35[1];
                    if ((v39 & 0xC0) == 0x80)
                    {
                      v40 = v37 & 0x1F;
                      v31 = v35 + 2;
                      v147 = v35 + 2;
                      v41 = v39 & 0x3F | (v40 << 6);
                      if (v40 >= 2)
                      {
                        v37 = v41;
                      }

                      else
                      {
                        v37 = -2147418115;
                      }

                      goto LABEL_69;
                    }
                  }

                  goto LABEL_67;
                }

                v31 = v35 + 1;
                v147 = v35 + 1;
              }

LABEL_69:
              v47 = (v37 << 11) | 0x7FF;
              v48 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
              v49 = 1496;
              do
              {
                v50 = v49 >> 1;
                v51 = &v48[v49 >> 1];
                v53 = *v51;
                v52 = v51 + 1;
                v49 += ~(v49 >> 1);
                if (v47 >= v53)
                {
                  v48 = v52;
                }

                else
                {
                  v49 = v50;
                }
              }

              while (v49);
              v6 = v37 & 0x7FFFFFFF;
              if (v48 == &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
              {
                v15 = 16;
                if (v33 <= 1)
                {
                  break;
                }

                goto LABEL_91;
              }

              v54 = *(v48 - 1);
              v55 = ((v54 >> 4) & 0x7F) + (v54 >> 11);
              v56 = v54 & 0xF;
              v15 = v55 >= v6 ? v56 : 16;
              if (v33 <= 1)
              {
                break;
              }

LABEL_91:
              if (v33 == 2)
              {
                if (v32 == 2)
                {
                  if (v15 == 3)
                  {
                    v32 = 0;
                    HIDWORD(v149[1]) = 0;
LABEL_140:
                    v33 = 2;
                    LODWORD(v149[0]) = v6;
                    BYTE4(v149[0]) = v15;
                    if (v31 == v148)
                    {
                      goto LABEL_280;
                    }
                  }

                  else
                  {
                    LODWORD(v149[1]) = 0;
                    if (v15 == 5 && !v36)
                    {
                      goto LABEL_161;
                    }

                    if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                    {
                      goto LABEL_322;
                    }

                    if (v36 > 6u)
                    {
                      if (v36 == 7)
                      {
                        goto LABEL_236;
                      }

                      if (v36 != 12)
                      {
                        goto LABEL_245;
                      }

LABEL_234:
                      if (v15 - 11 < 2)
                      {
                        goto LABEL_161;
                      }

                      if (v36 == 7)
                      {
LABEL_236:
                        if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                        {
                          goto LABEL_306;
                        }

                        goto LABEL_161;
                      }

                      goto LABEL_245;
                    }

                    if (v36 == 4)
                    {
                      if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                      {
                        goto LABEL_306;
                      }

                      goto LABEL_161;
                    }

                    if (v36 == 6)
                    {
                      goto LABEL_234;
                    }

LABEL_245:
                    if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                    {
LABEL_306:
                      v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                      v89 = 201;
                      do
                      {
                        v90 = v89 >> 1;
                        v91 = &v68[v89 >> 1];
                        v93 = *v91;
                        v92 = v91 + 1;
                        v89 += ~(v89 >> 1);
                        if (v47 >= v93)
                        {
                          v68 = v92;
                        }

                        else
                        {
                          v89 = v90;
                        }
                      }

                      while (v89);
                      goto LABEL_311;
                    }

LABEL_161:
                    v33 = 0;
                    v32 = 2;
                    LODWORD(v149[0]) = v6;
                    BYTE4(v149[0]) = v15;
                    if (v31 == v148)
                    {
                      goto LABEL_280;
                    }
                  }
                }

                else
                {
                  if (v32 != 1)
                  {
                    if (v15 == 13)
                    {
                      goto LABEL_138;
                    }

                    if (v15 != 2)
                    {
LABEL_142:
                      LODWORD(v149[1]) = 0;
                      if (v15 == 5 && !v36)
                      {
                        goto LABEL_230;
                      }

                      if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                      {
                        goto LABEL_322;
                      }

                      if (v36 > 6u)
                      {
                        if (v36 == 7)
                        {
                          goto LABEL_219;
                        }

                        if (v36 == 12)
                        {
                          goto LABEL_217;
                        }
                      }

                      else
                      {
                        if (v36 == 4)
                        {
                          if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                          {
                            goto LABEL_300;
                          }

                          goto LABEL_230;
                        }

                        if (v36 != 6)
                        {
                          goto LABEL_239;
                        }

LABEL_217:
                        if (v15 - 11 < 2)
                        {
                          goto LABEL_230;
                        }

                        if (v36 == 7)
                        {
LABEL_219:
                          if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                          {
                            goto LABEL_300;
                          }

                          goto LABEL_230;
                        }
                      }

LABEL_239:
                      if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                      {
LABEL_300:
                        v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                        v84 = 201;
                        do
                        {
                          v85 = v84 >> 1;
                          v86 = &v68[v84 >> 1];
                          v88 = *v86;
                          v87 = v86 + 1;
                          v84 += ~(v84 >> 1);
                          if (v47 >= v88)
                          {
                            v68 = v87;
                          }

                          else
                          {
                            v84 = v85;
                          }
                        }

                        while (v84);
                        goto LABEL_311;
                      }

                      goto LABEL_230;
                    }

                    v32 = 1;
LABEL_139:
                    HIDWORD(v149[1]) = v32;
                    goto LABEL_140;
                  }

                  if (v15 != 2)
                  {
                    if (v15 != 13)
                    {
                      goto LABEL_142;
                    }

LABEL_138:
                    v32 = 2;
                    goto LABEL_139;
                  }

                  v32 = 1;
                  v33 = 2;
                  LODWORD(v149[0]) = v6;
                  BYTE4(v149[0]) = 2;
                  if (v31 == v148)
                  {
                    goto LABEL_280;
                  }
                }
              }

              else
              {
                LODWORD(v149[1]) = 0;
                if (v15 == 9 || v15 == 5 && !v36)
                {
                  goto LABEL_230;
                }

                if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
                {
                  goto LABEL_322;
                }

                if (v36 > 6u)
                {
                  if (v36 == 7)
                  {
                    goto LABEL_186;
                  }

                  if (v36 != 12)
                  {
                    goto LABEL_206;
                  }
                }

                else
                {
                  if (v36 == 4)
                  {
                    if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                    {
                      goto LABEL_294;
                    }

                    goto LABEL_230;
                  }

                  if (v36 != 6)
                  {
                    goto LABEL_206;
                  }
                }

                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_186:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_294;
                  }

                  goto LABEL_230;
                }

LABEL_206:
                if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
                {
LABEL_294:
                  v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                  v79 = 201;
                  do
                  {
                    v80 = v79 >> 1;
                    v81 = &v68[v79 >> 1];
                    v83 = *v81;
                    v82 = v81 + 1;
                    v79 += ~(v79 >> 1);
                    if (v47 >= v83)
                    {
                      v68 = v82;
                    }

                    else
                    {
                      v79 = v80;
                    }
                  }

                  while (v79);
LABEL_311:
                  if (v68 != &std::__indic_conjunct_break::__entries[abi:ne200100] && ((v94 = *(v68 - 1), (v94 & 3) == 0) ? (v95 = ((v94 >> 2) & 0x1FF) + (v94 >> 11) >= v6) : (v95 = 0), v95))
                  {
                    v66 = 1;
                    v67 = 16;
                  }

                  else
                  {
                    if (v15 != 3)
                    {
                      goto LABEL_317;
                    }

LABEL_279:
                    v66 = 2;
                    v67 = 12;
                  }

LABEL_320:
                  v96 = 0;
                  LODWORD(v149[1]) = v66;
                  goto LABEL_321;
                }

LABEL_230:
                v33 = 0;
                LODWORD(v149[0]) = v6;
                BYTE4(v149[0]) = v15;
                if (v31 == v148)
                {
                  goto LABEL_280;
                }
              }
            }

            if (!v33)
            {
              if (v15 == 5 && !v36)
              {
                goto LABEL_230;
              }

              if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
              {
                goto LABEL_322;
              }

              if (v36 > 6u)
              {
                if (v36 == 7)
                {
                  goto LABEL_156;
                }

                if (v36 == 12)
                {
                  goto LABEL_154;
                }
              }

              else
              {
                if (v36 == 4)
                {
                  if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                  {
                    goto LABEL_282;
                  }

                  goto LABEL_230;
                }

                if (v36 != 6)
                {
                  goto LABEL_170;
                }

LABEL_154:
                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_156:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_282;
                  }

                  goto LABEL_230;
                }
              }

LABEL_170:
              if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
              {
LABEL_282:
                v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                v69 = 201;
                do
                {
                  v70 = v69 >> 1;
                  v71 = &v68[v69 >> 1];
                  v73 = *v71;
                  v72 = v71 + 1;
                  v69 += ~(v69 >> 1);
                  if (v47 >= v73)
                  {
                    v68 = v72;
                  }

                  else
                  {
                    v69 = v70;
                  }
                }

                while (v69);
                goto LABEL_311;
              }

              goto LABEL_230;
            }

            v57 = &std::__indic_conjunct_break::__entries[abi:ne200100];
            v58 = 201;
            do
            {
              v59 = v58 >> 1;
              v60 = &v57[v58 >> 1];
              v62 = *v60;
              v61 = v60 + 1;
              v58 += ~(v58 >> 1);
              if (v47 >= v62)
              {
                v57 = v61;
              }

              else
              {
                v58 = v59;
              }
            }

            while (v58);
            if (v57 == &std::__indic_conjunct_break::__entries[abi:ne200100] || ((v63 = *(v57 - 1), v64 = ((v63 >> 2) & 0x1FF) + (v63 >> 11), v33 = v63 & 3, v33 != 3) ? (v65 = v64 >= v6) : (v65 = 0), !v65))
            {
              LODWORD(v149[1]) = 0;
              if (v15 == 5 && !v36)
              {
                goto LABEL_230;
              }

              if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
              {
                goto LABEL_322;
              }

              if (v36 > 6u)
              {
                if (v36 == 7)
                {
                  goto LABEL_167;
                }

                if (v36 == 12)
                {
                  goto LABEL_165;
                }
              }

              else
              {
                if (v36 == 4)
                {
                  if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_230;
                }

                if (v36 != 6)
                {
                  goto LABEL_189;
                }

LABEL_165:
                if (v15 - 11 < 2)
                {
                  goto LABEL_230;
                }

                if (v36 == 7)
                {
LABEL_167:
                  if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
                  {
                    goto LABEL_288;
                  }

                  goto LABEL_230;
                }
              }

LABEL_189:
              if ((v15 != 11 || v36 != 11) && (v15 > 0xD || ((1 << v15) & 0x2404) == 0) && v36 != 8)
              {
LABEL_288:
                v68 = &std::__indic_conjunct_break::__entries[abi:ne200100];
                v74 = 201;
                do
                {
                  v75 = v74 >> 1;
                  v76 = &v68[v74 >> 1];
                  v78 = *v76;
                  v77 = v76 + 1;
                  v74 += ~(v74 >> 1);
                  if (v47 >= v78)
                  {
                    v68 = v77;
                  }

                  else
                  {
                    v74 = v75;
                  }
                }

                while (v74);
                goto LABEL_311;
              }

              goto LABEL_230;
            }

            if (!v34)
            {
              break;
            }

            if ((v33 - 1) >= 2)
            {
              v34 = 0;
              LODWORD(v149[2]) = 0;
            }

            v33 = 1;
            LODWORD(v149[0]) = v6;
            BYTE4(v149[0]) = v15;
            if (v31 == v148)
            {
LABEL_280:
              v35 = v148;
              if (v30 - 262142 < 0xFFFC1102)
              {
                goto LABEL_334;
              }

              goto LABEL_323;
            }
          }

          if (v33 != 1)
          {
            break;
          }

          v34 = 0;
          LODWORD(v149[0]) = v6;
          BYTE4(v149[0]) = v15;
          if (v31 == v148)
          {
            goto LABEL_280;
          }
        }

        if (v33 != 2)
        {
          break;
        }

        v34 = 1;
        LODWORD(v149[2]) = 1;
        v33 = 1;
        LODWORD(v149[0]) = v6;
        BYTE4(v149[0]) = v15;
        if (v31 == v148)
        {
          goto LABEL_280;
        }
      }

      LODWORD(v149[1]) = 0;
      if (v15 == 5 && !v36)
      {
        goto LABEL_229;
      }

      if (v36 <= 5u && ((1 << v36) & 0x23) != 0 || v15 <= 5 && ((1 << v15) & 0x23) != 0)
      {
        goto LABEL_322;
      }

      if (v36 > 6u)
      {
        if (v36 != 7)
        {
          if (v36 != 12)
          {
            goto LABEL_269;
          }

          goto LABEL_267;
        }

LABEL_37:
        if (v15 > 0xD || ((1 << v15) & 0x2C04) == 0)
        {
          goto LABEL_277;
        }

        goto LABEL_229;
      }

      if (v36 == 4)
      {
        if (v15 > 0xD || ((1 << v15) & 0x34D4) == 0)
        {
          goto LABEL_277;
        }

        goto LABEL_229;
      }

      if (v36 != 6)
      {
        goto LABEL_269;
      }

LABEL_267:
      if (v15 - 11 < 2)
      {
LABEL_229:
        v34 = 0;
        goto LABEL_230;
      }

      if (v36 == 7)
      {
        goto LABEL_37;
      }

LABEL_269:
      if (v15 == 11 && v36 == 11 || v15 <= 0xD && ((1 << v15) & 0x2404) != 0 || v36 == 8)
      {
        goto LABEL_229;
      }

LABEL_277:
      v143 = result;
      if (!std::__indic_conjunct_break::__get_property[abi:ne200100](v6))
      {
        v66 = 1;
        v67 = 16;
        result = v143;
        v17 = a2;
        v16 = a3;
        v18 = a4;
        goto LABEL_320;
      }

      result = v143;
      v17 = a2;
      v16 = a3;
      v18 = a4;
      if (v15 == 3)
      {
        goto LABEL_279;
      }

LABEL_317:
      if (v15 != 9)
      {
        goto LABEL_322;
      }

      v96 = 3;
      v67 = 8;
LABEL_321:
      *(v149 + v67) = v96;
LABEL_322:
      LODWORD(v149[0]) = v6;
      BYTE4(v149[0]) = v15;
      if (v30 - 262142 < 0xFFFC1102)
      {
        goto LABEL_334;
      }

LABEL_323:
      v97 = &std::__width_estimation_table::__entries[abi:ne200100];
      v98 = 107;
      do
      {
        v99 = v98 >> 1;
        v100 = &v97[v98 >> 1];
        v102 = *v100;
        v101 = v100 + 1;
        v98 += ~(v98 >> 1);
        if (((v30 << 14) | 0x3FFF) >= v102)
        {
          v97 = v101;
        }

        else
        {
          v98 = v99;
        }
      }

      while (v98);
      if (v97 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
        goto LABEL_334;
      }

      if ((*(v97 - 1) & 0x3FFF) + (*(v97 - 1) >> 14) < v30)
      {
        v103 = 1;
      }

      else
      {
        v103 = 2;
      }

      v104 = v103 + result;
      if (!v18)
      {
        goto LABEL_335;
      }

LABEL_29:
      v29 = v35 == v17 || v104 > v16;
      result = v104;
      if (v29)
      {
        return result;
      }
    }
  }

  if (v6 - 262142 >= 0xFFFC1102)
  {
    v105 = (v5 << 14) | 0x3FFF;
    if (v18)
    {
      if (v147 == v17)
      {
        v121 = 107;
        v122 = &std::__width_estimation_table::__entries[abi:ne200100];
        do
        {
          v123 = v121 >> 1;
          v124 = &v122[v121 >> 1];
          v126 = *v124;
          v125 = v124 + 1;
          v121 += ~(v121 >> 1);
          if (v105 >= v126)
          {
            v122 = v125;
          }

          else
          {
            v121 = v123;
          }
        }

        while (v121);
        if (v122 == &std::__width_estimation_table::__entries[abi:ne200100])
        {
          return 1;
        }

        else if ((*(v122 - 1) & 0x3FFFu) + (*(v122 - 1) >> 14) < v6)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        result = 0;
        do
        {
          while (1)
          {
            v106 = &std::__width_estimation_table::__entries[abi:ne200100];
            v107 = 107;
            do
            {
              v108 = v107 >> 1;
              v109 = &v106[v107 >> 1];
              v111 = *v109;
              v110 = v109 + 1;
              v107 += ~(v107 >> 1);
              if (v105 >= v111)
              {
                v106 = v110;
              }

              else
              {
                v107 = v108;
              }
            }

            while (v107);
            if (v106 != &std::__width_estimation_table::__entries[abi:ne200100])
            {
              break;
            }

            if (++result > v16)
            {
              return result;
            }
          }

          if ((*(v106 - 1) & 0x3FFFu) + (*(v106 - 1) >> 14) < v6)
          {
            v112 = 1;
          }

          else
          {
            v112 = 2;
          }

          result += v112;
        }

        while (result <= v16);
      }
    }

    else if (v147 == v17)
    {
      v134 = 107;
      v135 = &std::__width_estimation_table::__entries[abi:ne200100];
      do
      {
        v136 = v134 >> 1;
        v137 = &v135[v134 >> 1];
        v139 = *v137;
        v138 = v137 + 1;
        v134 += ~(v134 >> 1);
        if (v105 >= v139)
        {
          v135 = v138;
        }

        else
        {
          v134 = v136;
        }
      }

      while (v134);
      if (v135 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
        v140 = 1;
      }

      else
      {
        v140 = 1;
        if ((*(v135 - 1) & 0x3FFFu) + (*(v135 - 1) >> 14) >= v6)
        {
          v140 = 2;
        }
      }

      if (v140 <= v16)
      {
        return v140;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v113 = 0;
      do
      {
        while (1)
        {
          result = v113;
          v114 = &std::__width_estimation_table::__entries[abi:ne200100];
          v115 = 107;
          do
          {
            v116 = v115 >> 1;
            v117 = &v114[v115 >> 1];
            v119 = *v117;
            v118 = v117 + 1;
            v115 += ~(v115 >> 1);
            if (v105 >= v119)
            {
              v114 = v118;
            }

            else
            {
              v115 = v116;
            }
          }

          while (v115);
          if (v114 != &std::__width_estimation_table::__entries[abi:ne200100])
          {
            break;
          }

          v113 = result + 1;
          if (result + 1 > v16)
          {
            return result;
          }
        }

        if ((*(v114 - 1) & 0x3FFFu) + (*(v114 - 1) >> 14) < v6)
        {
          v120 = 1;
        }

        else
        {
          v120 = 2;
        }

        v113 = v120 + result;
      }

      while (v113 <= v16);
    }
  }

  else
  {
    result = v18 != 0 || v16 != 0;
    if ((v18 != 0 || v16 != 0) && v147 != v17)
    {
      if (v18)
      {
        if (v16 + 1 > 1)
        {
          return v16 + 1;
        }

        else
        {
          return 1;
        }
      }

      if (v16 <= 1)
      {
        v127 = 1;
      }

      else
      {
        v127 = v16;
      }

      v26 = v127 != 0;
      v128 = v127 - 1;
      if (__PAIR128__(v26 - 1, v128) >= v16)
      {
        v128 = v16;
      }

      if (v128 && (v16 <= 1 ? (v129 = 1) : (v129 = v16), (v26 = v129 != 0, v130 = v129 - 1, __PAIR128__(v26 - 1, v130) >= v16) ? (v131 = v16) : (v131 = v130), (~v131 & 0xFFFFFFFFFFFFFFFELL) != 0))
      {
        v141 = v128 + 1;
        result = (v128 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v132 = (v128 + 1) | 1;
        v142 = result;
        do
        {
          v142 -= 2;
        }

        while (v142);
        if (v141 == result)
        {
          return result;
        }
      }

      else
      {
        v132 = 1;
      }

      do
      {
        v133 = v132 + 1;
        if (v132 > v16)
        {
          break;
        }

        ++v132;
      }

      while (v133 <= v16);
      return v133 - 1;
    }
  }

  return result;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, size_t a2, int __c)
{
  v4 = a2;
  __src = __c;
  v6 = __clz(~__c) - 24;
  if (v6)
  {
    if (a2)
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v9 = *(a1 + 32);
        v10 = v8;
        if (!v9 || ((v12 = *v9, v11 = v9[1], *v9 - v11 >= v8) ? (v10 = v8) : (v10 = *v9 - v11), v9[1] = v11 + v8, v12 > v11))
        {
          v13 = *(a1 + 16);
          p_src = &__src;
          do
          {
            v16 = *(a1 + 8) - v13;
            if (v16 < v10 + 1)
            {
              (*(a1 + 24))(a1, v10 + 2);
              v13 = *(a1 + 16);
              v16 = *(a1 + 8) - v13;
            }

            if (v16 >= v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              memcpy((*a1 + v13), p_src, v17);
              v13 = *(a1 + 16);
            }

            v13 += v17;
            *(a1 + 16) = v13;
            p_src = (p_src + v17);
            v15 = v10 > v16;
            v10 -= v17;
          }

          while (v15);
        }

        ++v7;
      }

      while (v7 != v4);
    }
  }

  else
  {
    v18 = *(a1 + 32);
    if (!v18)
    {
      goto LABEL_29;
    }

    v20 = *v18;
    v19 = v18[1];
    if (*v18 - v19 < a2)
    {
      v4 = *v18 - v19;
    }

    v18[1] = v19 + a2;
    if (v20 > v19 && v4 != 0)
    {
LABEL_29:
      v23 = *(a1 + 16);
      do
      {
        v24 = *(a1 + 8) - v23;
        if (v24 < v4 + 1)
        {
          (*(a1 + 24))(a1, v4 + 2);
          v23 = *(a1 + 16);
          v24 = *(a1 + 8) - v23;
        }

        if (v24 >= v4)
        {
          v25 = v4;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          memset((*a1 + v23), __c, v25);
          v23 = *(a1 + 16);
        }

        v23 += v25;
        *(a1 + 16) = v23;
        v15 = v4 > v24;
        v4 -= v25;
      }

      while (v15);
    }
  }

  return a1;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int *a1)
{
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a1;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_12;
    case 4:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_12:
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_10;
      }

      return result;
    case 7:
      result = *a1;
      if (result >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, char *__src, char *a7, char *a8, unsigned int a9)
{
  v9 = a7;
  v10 = __src;
  v12 = a3;
  v14 = a1;
  v15 = a3;
  if (a5)
  {
    v16 = 45;
LABEL_7:
    *__src = v16;
    v18 = __src + 1;
    goto LABEL_8;
  }

  v17 = (a3 >> 3) & 3;
  if (v17 == 2)
  {
    v16 = 43;
    goto LABEL_7;
  }

  v18 = __src;
  if (v17 == 3)
  {
    v16 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v19 = *a8;
      if (*a8)
      {
        v20 = a8 + 1;
        do
        {
          *v18++ = v19;
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }
    }
  }

  HIDWORD(v23) = a9 - 2;
  LODWORD(v23) = a9 - 2;
  v22 = v23 >> 1;
  switch(v22)
  {
    case 4:
      if (a7 - v18 > 9 || (v24 = (1233 * (32 - __clz(a1 | 1))) >> 12, a7 - v18 >= (((__PAIR64__(v24, a1) - std::__itoa::__pow10_32[v24]) >> 32) + 1)))
      {
        v25 = std::__itoa::__base_10_u32[abi:ne200100](v18, a1);
LABEL_17:
        v9 = v25;
      }

      break;
    case 0:
      v25 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 3:
      v25 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 7:
      v25 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    default:
      v85 = (a7 - v18);
      v86 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a1, a9);
      if (v85 >= v86)
      {
        v9 = &v18[v86];
        v87 = v9 - 1;
        do
        {
          *v87-- = a0123456789abcd_0[v14 % a9];
          v88 = v14 >= a9;
          v14 /= a9;
        }

        while (v88);
      }

      else
      {
        v9 = a7;
      }

      break;
  }

  if ((v15 & 0x40) == 0)
  {
LABEL_73:
    v53 = v9;
    v54 = HIDWORD(v12);
    v32 = *a2;
    if ((v15 & 7) == 4)
    {
      v92 = v12;
      v94 = a4;
      v55 = v18 - v10;
      v56 = *(v32 + 32);
      v57 = v18 - v10;
      if (!v56 || ((v59 = *v56, v58 = v56[1], *v56 - v58 >= v55) ? (v57 = v18 - v10) : (v57 = *v56 - v58), (v56[1] = v58 + v55, v59 > v58) ? (v60 = v57 == 0) : (v60 = 1), !v60))
      {
        v67 = *(v32 + 16);
        do
        {
          v69 = *(v32 + 8) - v67;
          if (v69 < v57 + 1)
          {
            (*(v32 + 24))(v32, v57 + 2);
            v67 = *(v32 + 16);
            v69 = *(v32 + 8) - v67;
          }

          if (v69 >= v57)
          {
            v70 = v57;
          }

          else
          {
            v70 = v69;
          }

          if (v70)
          {
            memmove((*v32 + v67), v10, v70);
            v67 = *(v32 + 16);
          }

          v67 += v70;
          *(v32 + 16) = v67;
          v10 += v70;
          v68 = v57 > v69;
          v57 -= v70;
        }

        while (v68);
      }

      LODWORD(v12) = v92;
      v61 = v92 & 0xF8 | 3;
      if (v54 >= v55)
      {
        v62 = v55;
      }

      else
      {
        v62 = v54;
      }

      v54 = (v54 - v62);
      v32 = *a2;
      v63 = 48;
      a4 = v94;
    }

    else
    {
      v63 = BYTE4(a4);
      v61 = v12;
      v18 = v10;
    }

    v64 = v54 << 32;
    v65 = a4 & 0xFFFFFF00FFFFFFFFLL | (v63 << 32);
    if ((v12 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v18, v53, v32, v12 & 0xFFFF0700 | v64 | v61, v65);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v18, v53 - v18, v32, v64 | v12 & 0xFFFFFF00 | v61, v65, v53 - v18);
    }

    return v32;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x1E69272B0](v100);
    v26 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v26, v100);
    }

    else
    {
      std::locale::locale(v26, v100);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v100);
  }

  std::locale::locale(&v97, (a2 + 32));
  v27 = std::locale::use_facet(&v97, MEMORY[0x1E69E5368]);
  v90 = v9;
  v28 = v9 - v18;
  std::locale::~locale(&v97);
  memset(v100, 170, sizeof(v100));
  (v27->__vftable[1].__on_zero_shared)(v100, v27);
  if ((SHIBYTE(v100[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v100[0].__locale_;
    v30 = v100[1].__locale_;
    if (v100[1].__locale_ && v28 > *v100[0].__locale_)
    {
      v89 = v27;
      v91 = v12;
      v93 = a4;
      v31 = v100[0].__locale_;
      goto LABEL_31;
    }

    operator delete(v100[0].__locale_);
    goto LABEL_72;
  }

  if (!HIBYTE(v100[2].__locale_) || v28 <= SLOBYTE(v100[0].__locale_))
  {
LABEL_72:
    v9 = v90;
    goto LABEL_73;
  }

  v89 = v27;
  v91 = v12;
  v93 = a4;
  locale = v100;
  v31 = v100[0].__locale_;
  v30 = v100[1].__locale_;
LABEL_31:
  v32 = *a2;
  v97.__locale_ = 0;
  v98 = 0;
  v99 = 0;
  v33 = v30 + v31;
  if (SHIBYTE(v100[2].__locale_) >= 0)
  {
    v34 = v100 + SHIBYTE(v100[2].__locale_);
  }

  else
  {
    v34 = v33;
  }

  v35 = *locale;
  v36 = *locale;
  v37 = v28 - v35;
  if (v28 <= v35)
  {
    v72 = 0;
    v71 = v36 + v37;
    v73 = v90;
    goto LABEL_105;
  }

  v38 = v34 - 1;
  do
  {
    while (1)
    {
      v39 = HIBYTE(v99);
      if ((SHIBYTE(v99) & 0x80000000) == 0)
      {
        break;
      }

      v40 = (v99 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v98 != v40)
      {
        v46 = v97.__locale_;
        v40 = v98;
        goto LABEL_61;
      }

      if ((v99 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v95 = locale;
      __srca = v97.__locale_;
      if (v40 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_43;
      }

      v44 = 0;
      v43 = 0x7FFFFFFFFFFFFFF7;
LABEL_53:
      v45 = operator new(v43);
      v46 = v45;
      if (v40)
      {
        memmove(v45, __srca, v40);
      }

      if (!v44)
      {
        operator delete(__srca);
      }

      v97.__locale_ = v46;
      v99 = v43 | 0x8000000000000000;
      locale = v95;
LABEL_61:
      v98 = v40 + 1;
      v48 = v46 + v40;
      *v48 = v36;
      v48[1] = 0;
      if (locale != v38)
      {
        goto LABEL_62;
      }

LABEL_36:
      v36 = *locale;
      v37 -= *locale;
      if (v37 <= 0)
      {
        goto LABEL_101;
      }
    }

    if (HIBYTE(v99) == 22)
    {
      v95 = locale;
      __srca = &v97;
      v40 = 22;
LABEL_43:
      if (v40 + 1 > 2 * v40)
      {
        v41 = v40 + 1;
      }

      else
      {
        v41 = 2 * v40;
      }

      if ((v41 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v41 | 7) + 1;
      }

      if (v41 >= 0x17)
      {
        v43 = v42;
      }

      else
      {
        v43 = 23;
      }

      v44 = v40 == 22;
      goto LABEL_53;
    }

    HIBYTE(v99) = (HIBYTE(v99) + 1) & 0x7F;
    v47 = &v97 + v39;
    *v47 = v36;
    v47[1] = 0;
    if (locale == v38)
    {
      goto LABEL_36;
    }

LABEL_62:
    v49 = (locale + 1);
    v50 = (locale + 1);
    do
    {
      v51 = *v50++;
      v36 = v51;
      if (v51)
      {
        v52 = 1;
      }

      else
      {
        v52 = v49 == v38;
      }

      v49 = v50;
    }

    while (!v52);
    locale = (v50 - 1);
    v37 -= v36;
  }

  while (v37 > 0);
LABEL_101:
  v71 = v36 + v37;
  if (SHIBYTE(v99) < 0)
  {
    v75 = (v99 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v73 = v90;
    if (v98 == v75)
    {
      if ((v99 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v74 = v97.__locale_;
      v77 = 0x7FFFFFFFFFFFFFF7;
      if (v75 >= 0x3FFFFFFFFFFFFFF3)
      {
        v80 = 0;
      }

      else
      {
LABEL_109:
        if (v75 + 1 > 2 * v75)
        {
          v78 = v75 + 1;
        }

        else
        {
          v78 = 2 * v75;
        }

        if ((v78 | 7) == 0x17)
        {
          v79 = 25;
        }

        else
        {
          v79 = (v78 | 7) + 1;
        }

        if (v78 >= 0x17)
        {
          v77 = v79;
        }

        else
        {
          v77 = 23;
        }

        v80 = v75 == 22;
      }

      v81 = operator new(v77);
      v76 = v81;
      if (v75)
      {
        memmove(v81, v74, v75);
      }

      if (!v80)
      {
        operator delete(v74);
      }

      v97.__locale_ = v76;
      v99 = v77 | 0x8000000000000000;
      v73 = v90;
    }

    else
    {
      v76 = v97.__locale_;
      v75 = v98;
    }

    v98 = v75 + 1;
  }

  else
  {
    v72 = HIBYTE(v99);
    v73 = v90;
    if (HIBYTE(v99) == 22)
    {
      v74 = &v97;
      v75 = 22;
      goto LABEL_109;
    }

LABEL_105:
    v75 = v72;
    HIBYTE(v99) = (v72 + 1) & 0x7F;
    v76 = &v97;
  }

  v82 = v76 + v75;
  *v82 = v71;
  v82[1] = 0;
  v83 = (v89->__vftable[1].~facet_0)(v89);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v32, v10, v18, v73, &v97, v83, v91, v93);
  if (SHIBYTE(v99) < 0)
  {
    operator delete(v97.__locale_);
  }

  if (SHIBYTE(v100[2].__locale_) < 0)
  {
    operator delete(v100[0].__locale_);
  }

  return v32;
}

void sub_1E5380FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(uint64_t *a1, _BYTE *__src, unsigned __int8 *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v10 = a3;
  v11 = __src;
  v13 = HIDWORD(a7);
  v14 = a3 - __src;
  LODWORD(v15) = *(a5 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = a5[1];
  }

  v16 = a4 - __src - 1 + v15;
  v85 = HIDWORD(a8);
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v16)
    {
      v84 = 0;
      v29 = a1[4];
      if (v29)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v28 = (a7 >> 32) - v16;
      if ((a7 & 7u) > 1)
      {
        if ((a7 & 7) != 3)
        {
          v84 = v28 - (v28 >> 1);
          std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v28 >> 1, SHIDWORD(a8));
          v29 = a1[4];
          if (!v29)
          {
            goto LABEL_121;
          }

          goto LABEL_56;
        }
      }

      else if ((a7 & 7) != 0)
      {
        v84 = (a7 >> 32) - v16;
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, 0, SHIDWORD(a8));
        v29 = a1[4];
        if (!v29)
        {
          goto LABEL_121;
        }

LABEL_56:
        v38 = *v29;
        v37 = v29[1];
        v39 = v37 + v14;
        if (*v29 - v37 < v14)
        {
          v14 = *v29 - v37;
        }

        v29[1] = v39;
        if (v38 <= v37 || v14 == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_121;
      }

      v84 = 0;
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, (a7 >> 32) - v16, SHIDWORD(a8));
      v29 = a1[4];
      if (v29)
      {
        goto LABEL_56;
      }
    }

LABEL_121:
    v80 = a1[2];
    do
    {
      v81 = a1[1] - v80;
      if (v81 < v14 + 1)
      {
        (a1[3])(a1, v14 + 2);
        v80 = a1[2];
        v81 = a1[1] - v80;
      }

      if (v81 >= v14)
      {
        v82 = v14;
      }

      else
      {
        v82 = v81;
      }

      if (v82)
      {
        memmove((*a1 + v80), v11, v82);
        v80 = a1[2];
      }

      v80 += v82;
      a1[2] = v80;
      v11 += v82;
      v31 = v14 > v81;
      v14 -= v82;
    }

    while (v31);
    goto LABEL_63;
  }

  v83 = a7;
  v17 = a1[4];
  if (!v17)
  {
    goto LABEL_28;
  }

  v19 = *v17;
  v18 = v17[1];
  v20 = v18 + v14;
  if (*v17 - v18 < v14)
  {
    v14 = *v17 - v18;
  }

  v17[1] = v20;
  if (v19 > v18 && v14 != 0)
  {
LABEL_28:
    v30 = a1[2];
    do
    {
      v32 = a1[1] - v30;
      if (v32 < v14 + 1)
      {
        (a1[3])(a1, v14 + 2);
        v30 = a1[2];
        v32 = a1[1] - v30;
      }

      if (v32 >= v14)
      {
        v33 = v14;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        memmove((*a1 + v30), v11, v33);
        v30 = a1[2];
      }

      v30 += v33;
      a1[2] = v30;
      v11 += v33;
      v31 = v14 > v32;
      v14 -= v33;
    }

    while (v31);
  }

  if (v13 <= v16)
  {
    v84 = 0;
    v8 = v83;
    goto LABEL_63;
  }

  v22 = v13 - v16;
  v23 = a1[4];
  if (!v23)
  {
    v26 = v13 - v16;
    v8 = v83;
    goto LABEL_45;
  }

  v25 = *v23;
  v24 = v23[1];
  if (*v23 - v24 >= v22)
  {
    v26 = v13 - v16;
  }

  else
  {
    v26 = *v23 - v24;
  }

  v23[1] = v24 + v22;
  v27 = v25 <= v24 || v26 == 0;
  v8 = v83;
  if (!v27)
  {
LABEL_45:
    v34 = a1[2];
    do
    {
      v35 = a1[1] - v34;
      if (v35 < v26 + 1)
      {
        (a1[3])(a1, v26 + 2);
        v34 = a1[2];
        v35 = a1[1] - v34;
      }

      if (v35 >= v26)
      {
        v36 = v26;
      }

      else
      {
        v36 = v35;
      }

      if (v36)
      {
        memset((*a1 + v34), 48, v36);
        v34 = a1[2];
      }

      v34 += v36;
      a1[2] = v34;
      v31 = v26 > v35;
      v26 -= v36;
    }

    while (v31);
  }

  v84 = 0;
LABEL_63:
  v41 = *(a5 + 23);
  v42 = v41;
  v43 = a5 + v41;
  if (v42 >= 0)
  {
    v44 = v43;
  }

  else
  {
    v44 = *a5 + a5[1];
  }

  if (v42 >= 0)
  {
    v45 = a5;
  }

  else
  {
    v45 = *a5;
  }

  v46 = v45 + 1;
  v47 = v8 & 0xFF00;
  while (1)
  {
    v49 = (v44 - 1);
    v48 = *(v44 - 1);
    if (v47 != 1792)
    {
      break;
    }

    v50 = &v10[v48];
    v51 = a1[4];
    if (!v51)
    {
      goto LABEL_94;
    }

    v53 = *v51;
    v52 = v51[1];
    v54 = v52 + v48;
    if (*v51 - v52 < v48)
    {
      v48 = *v51 - v52;
    }

    v51[1] = v54;
    if (v53 > v52 && v48 != 0)
    {
LABEL_94:
      v66 = a1[2];
      do
      {
        v67 = a1[1] - v66;
        if (v67 < v48 + 1)
        {
          (a1[3])(a1, v48 + 2);
          v66 = a1[2];
          v67 = a1[1] - v66;
        }

        if (v67 >= v48)
        {
          v68 = v48;
        }

        else
        {
          v68 = v67;
        }

        if (v68)
        {
          v69 = (*a1 + v66);
          v70 = v68;
          v71 = v10;
          do
          {
            v73 = *v71++;
            v72 = v73;
            v74 = v73 - 32;
            if ((v73 - 97) < 6)
            {
              v72 = v74;
            }

            *v69++ = v72;
            --v70;
          }

          while (v70);
          v66 = a1[2];
        }

        v10 += v68;
        v66 += v68;
        a1[2] = v66;
        v31 = v48 > v67;
        v48 -= v68;
      }

      while (v31);
    }

    v10 = v50;
    if (v44 == v46)
    {
      goto LABEL_118;
    }

LABEL_90:
    v61 = a1[4];
    if (v61)
    {
      v63 = *v61;
      v62 = v61[1];
      v61[1] = v62 + 1;
      --v44;
      if (v62 >= v63)
      {
        continue;
      }
    }

    v64 = *a1;
    v65 = a1[2];
    a1[2] = v65 + 1;
    *(v64 + v65) = a6;
    v44 = v49;
    if (a1[2] == a1[1])
    {
      (a1[3])(a1, 2);
      v44 = v49;
    }
  }

  v56 = a1[4];
  if (!v56)
  {
    goto LABEL_108;
  }

  v58 = *v56;
  v57 = v56[1];
  v59 = v57 + v48;
  if (*v56 - v57 < v48)
  {
    v48 = *v56 - v57;
  }

  v56[1] = v59;
  if (v58 > v57 && v48 != 0)
  {
LABEL_108:
    v75 = a1[2];
    v76 = v10;
    do
    {
      v77 = a1[1] - v75;
      if (v77 < v48 + 1)
      {
        (a1[3])(a1, v48 + 2);
        v75 = a1[2];
        v77 = a1[1] - v75;
      }

      if (v77 >= v48)
      {
        v78 = v48;
      }

      else
      {
        v78 = v77;
      }

      if (v78)
      {
        memmove((*a1 + v75), v76, v78);
        v75 = a1[2];
      }

      v75 += v78;
      a1[2] = v75;
      v76 += v78;
      v31 = v48 > v77;
      v48 -= v78;
    }

    while (v31);
  }

  v10 += *v49;
  if (v44 != v46)
  {
    goto LABEL_90;
  }

LABEL_118:

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v84, v85);
}

uint64_t std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1;
  v7 = a2 - a1;
  v8 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    v9 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v26 = v8 >> 1;
        v8 -= v8 >> 1;
        std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v26, SHIDWORD(a5));
        v10 = *(a3 + 32);
        if (!v10)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }
    }

    else if ((a4 & 7) != 0)
    {
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
      v10 = *(a3 + 32);
      if (!v10)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    v8 = 0;
    std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - (a2 - a1), SHIDWORD(a5));
    v10 = *(a3 + 32);
    if (!v10)
    {
LABEL_40:
      v32 = *(a3 + 16);
      do
      {
        v33 = *(a3 + 8) - v32;
        if (v33 < v7 + 1)
        {
          (*(a3 + 24))(a3, v7 + 2);
          v32 = *(a3 + 16);
          v33 = *(a3 + 8) - v32;
        }

        if (v33 >= v7)
        {
          v34 = v7;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          v35 = (*a3 + v32);
          v36 = v34;
          v37 = v6;
          do
          {
            v39 = *v37++;
            v38 = v39;
            v40 = v39 - 32;
            if ((v39 - 97) < 6)
            {
              v38 = v40;
            }

            *v35++ = v38;
            --v36;
          }

          while (v36);
          v32 = *(a3 + 16);
        }

        v6 += v34;
        v32 += v34;
        *(a3 + 16) = v32;
        v17 = v7 > v33;
        v7 -= v34;
      }

      while (v17);
LABEL_38:
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v8, v9);
      return a3;
    }

LABEL_31:
    v28 = *v10;
    v27 = v10[1];
    v29 = v27 + v7;
    if (*v10 - v27 < v7)
    {
      v7 = *v10 - v27;
    }

    v10[1] = v29;
    if (v28 <= v27 || v7 == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  v11 = *(a3 + 32);
  if (!v11)
  {
    goto LABEL_13;
  }

  v13 = *v11;
  v12 = v11[1];
  v14 = v12 + v7;
  if (*v11 - v12 < v7)
  {
    v7 = *v11 - v12;
  }

  v11[1] = v14;
  if (v13 > v12 && v7 != 0)
  {
LABEL_13:
    v16 = *(a3 + 16);
    do
    {
      v18 = *(a3 + 8) - v16;
      if (v18 < v7 + 1)
      {
        (*(a3 + 24))(a3, v7 + 2);
        v16 = *(a3 + 16);
        v18 = *(a3 + 8) - v16;
      }

      if (v18 >= v7)
      {
        v19 = v7;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        v20 = (*a3 + v16);
        v21 = v19;
        v22 = v6;
        do
        {
          v24 = *v22++;
          v23 = v24;
          v25 = v24 - 32;
          if ((v24 - 97) < 6)
          {
            v23 = v25;
          }

          *v20++ = v23;
          --v21;
        }

        while (v21);
        v16 = *(a3 + 16);
      }

      v6 += v19;
      v16 += v19;
      *(a3 + 16) = v16;
      v17 = v7 > v18;
      v7 -= v19;
    }

    while (v17);
  }

  return a3;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        return a1 + 5;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        return (a1 + 9);
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        return a1 + 4;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        return (a1 + 7);
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      return a1 + 3;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      return (a1 + 5);
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      return a1 + 2;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      return (a1 + 3);
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    return a1 + 1;
  }

  else
  {
    *a1 = a2 | 0x30;
    return (a1 + 1);
  }
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x11)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 4;
        *(v4 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
        v4 -= 4;
        v6 = a3 > 0x10F;
        a3 >>= 4;
      }

      while (v6);
    }

    v7 = (v4 - 1);
    do
    {
      *v7-- = a01[v5 & 1];
      v6 = v5 > 1;
      v5 >>= 1;
    }

    while (v6);
  }

  return a2;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x41)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 6;
        *(v4 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
        v4 -= 2;
        a3 = v5;
      }

      while (v5 > 0x40);
    }

    v6 = (v4 - 1);
    do
    {
      *v6-- = a01234567[v5 & 7];
      v7 = v5 > 7;
      v5 >>= 3;
    }

    while (v7);
  }

  return a2;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 >= v3)
  {
    a2 = a1 + v3;
    if (a3 < 0x101)
    {
      v5 = a3;
      v4 = a2;
    }

    else
    {
      v4 = a1 + v3;
      do
      {
        v5 = a3 >> 8;
        *(v4 - 2) = std::__itoa::__base_16_lut[a3];
        v4 -= 2;
        a3 = v5;
      }

      while (v5 > 0x100);
    }

    v6 = (v4 - 1);
    do
    {
      *v6-- = a0123456789abcd_1[v5 & 0xF];
      v7 = v5 > 0xF;
      v5 >>= 4;
    }

    while (v7);
  }

  return a2;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  *&v15[5] = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v14[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v7;
    *v14 = v7;
    *v12 = v7;
    *&v12[16] = v7;
    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v8 = "0b";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v8 = "0B";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v10 = v15;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, v12, v10, v8, v11);
  }

  if (BYTE1(a3) > 5u)
  {
    memset(v12, 170, 19);
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v8 = "0x";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v8 = "0X";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v10 = &v12[19];
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, v12, v10, v8, v11);
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    memset(v12, 170, 21);
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, &v12[21], 0, 0xAu);
  }

  *&v12[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v12[16] = 0xAAAAAAAAAAAAAAAALL;
  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *v12 = 0xAAAAAAAAAAAAAAAALL;
  return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v12[24], v5, 8u);
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, unsigned __int8 *a6, char *a7, unsigned __int8 *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_67;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x1E69272B0](v88);
    v21 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v21, v88);
    }

    else
    {
      std::locale::locale(v21, v88);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v88);
  }

  std::locale::locale(&v85, (a2 + 32));
  v22 = std::locale::use_facet(&v85, MEMORY[0x1E69E5368]);
  v23 = v20 - v16;
  std::locale::~locale(&v85);
  memset(v88, 170, sizeof(v88));
  (v22->__vftable[1].__on_zero_shared)(v88, v22);
  if ((SHIBYTE(v88[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v88[0].__locale_;
    v25 = v88[1].__locale_;
    if (v88[1].__locale_ && v23 > *v88[0].__locale_)
    {
      v78 = v22;
      v79 = v20;
      v77 = a3;
      v81 = a4;
      v26 = v88[0].__locale_;
      goto LABEL_26;
    }

    operator delete(v88[0].__locale_);
LABEL_67:
    v48 = HIDWORD(a3);
    v27 = *a2;
    if ((v13 & 7) == 4)
    {
      v80 = v20;
      v82 = a4;
      v49 = v16 - v9;
      v50 = *(v27 + 32);
      v51 = v16 - v9;
      if (!v50 || ((v53 = *v50, v52 = v50[1], *v50 - v52 >= v49) ? (v51 = v16 - v9) : (v51 = *v50 - v52), (v50[1] = v52 + v49, v53 > v52) ? (v54 = v51 == 0) : (v54 = 1), !v54))
      {
        v61 = *(v27 + 16);
        do
        {
          v63 = *(v27 + 8) - v61;
          if (v63 < v51 + 1)
          {
            (*(v27 + 24))(v27, v51 + 2);
            v61 = *(v27 + 16);
            v63 = *(v27 + 8) - v61;
          }

          if (v63 >= v51)
          {
            v64 = v51;
          }

          else
          {
            v64 = v63;
          }

          if (v64)
          {
            memmove((*v27 + v61), v9, v64);
            v61 = *(v27 + 16);
          }

          v61 += v64;
          *(v27 + 16) = v61;
          v9 += v64;
          v62 = v51 > v63;
          v51 -= v64;
        }

        while (v62);
      }

      v55 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v49)
      {
        v56 = v49;
      }

      else
      {
        v56 = HIDWORD(a3);
      }

      v48 = (HIDWORD(a3) - v56);
      v27 = *a2;
      v57 = 48;
      v20 = v80;
      a4 = v82;
    }

    else
    {
      v57 = BYTE4(a4);
      v55 = a3;
      v16 = v9;
    }

    v58 = v48 << 32;
    v59 = a4 & 0xFFFFFF00FFFFFFFFLL | (v57 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v16, v20, v27, a3 & 0xFFFF0700 | v58 | v55, v59);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v16, v20 - v16, v27, v58 | a3 & 0xFFFFFF00 | v55, v59, v20 - v16);
    }

    return v27;
  }

  if (!HIBYTE(v88[2].__locale_) || v23 <= SLOBYTE(v88[0].__locale_))
  {
    goto LABEL_67;
  }

  v78 = v22;
  v79 = v20;
  v77 = a3;
  v81 = a4;
  locale = v88;
  v26 = v88[0].__locale_;
  v25 = v88[1].__locale_;
LABEL_26:
  v27 = *a2;
  v85.__locale_ = 0;
  v86 = 0;
  v87 = 0;
  v28 = v25 + v26;
  if (SHIBYTE(v88[2].__locale_) >= 0)
  {
    v29 = v88 + SHIBYTE(v88[2].__locale_);
  }

  else
  {
    v29 = v28;
  }

  v30 = *locale;
  v31 = *locale;
  v32 = v23 - v30;
  if (v23 <= v30)
  {
    v66 = 0;
    v65 = v31 + v32;
    goto LABEL_99;
  }

  v33 = v29 - 1;
  do
  {
    while (1)
    {
      v34 = HIBYTE(v87);
      if ((SHIBYTE(v87) & 0x80000000) == 0)
      {
        break;
      }

      v35 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v86 != v35)
      {
        v41 = v85.__locale_;
        v35 = v86;
        goto LABEL_56;
      }

      if ((v87 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v83 = locale;
      __src = v85.__locale_;
      if (v35 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_38;
      }

      v39 = 0;
      v38 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
      v40 = operator new(v38);
      v41 = v40;
      if (v35)
      {
        memmove(v40, __src, v35);
      }

      if (!v39)
      {
        operator delete(__src);
      }

      v85.__locale_ = v41;
      v87 = v38 | 0x8000000000000000;
      locale = v83;
LABEL_56:
      v86 = v35 + 1;
      v43 = v41 + v35;
      *v43 = v31;
      v43[1] = 0;
      if (locale != v33)
      {
        goto LABEL_57;
      }

LABEL_31:
      v31 = *locale;
      v32 -= *locale;
      if (v32 <= 0)
      {
        goto LABEL_95;
      }
    }

    if (HIBYTE(v87) == 22)
    {
      v83 = locale;
      __src = &v85;
      v35 = 22;
LABEL_38:
      if (v35 + 1 > 2 * v35)
      {
        v36 = v35 + 1;
      }

      else
      {
        v36 = 2 * v35;
      }

      if ((v36 | 7) == 0x17)
      {
        v37 = 25;
      }

      else
      {
        v37 = (v36 | 7) + 1;
      }

      if (v36 >= 0x17)
      {
        v38 = v37;
      }

      else
      {
        v38 = 23;
      }

      v39 = v35 == 22;
      goto LABEL_48;
    }

    HIBYTE(v87) = (HIBYTE(v87) + 1) & 0x7F;
    v42 = &v85 + v34;
    *v42 = v31;
    v42[1] = 0;
    if (locale == v33)
    {
      goto LABEL_31;
    }

LABEL_57:
    v44 = (locale + 1);
    v45 = (locale + 1);
    do
    {
      v46 = *v45++;
      v31 = v46;
      if (v46)
      {
        v47 = 1;
      }

      else
      {
        v47 = v44 == v33;
      }

      v44 = v45;
    }

    while (!v47);
    locale = (v45 - 1);
    v32 -= v31;
  }

  while (v32 > 0);
LABEL_95:
  v65 = v31 + v32;
  if (SHIBYTE(v87) < 0)
  {
    v68 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v86 == v68)
    {
      if ((v87 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v67 = v85.__locale_;
      v70 = 0x7FFFFFFFFFFFFFF7;
      if (v68 >= 0x3FFFFFFFFFFFFFF3)
      {
        v73 = 0;
      }

      else
      {
LABEL_103:
        if (v68 + 1 > 2 * v68)
        {
          v71 = v68 + 1;
        }

        else
        {
          v71 = 2 * v68;
        }

        if ((v71 | 7) == 0x17)
        {
          v72 = 25;
        }

        else
        {
          v72 = (v71 | 7) + 1;
        }

        if (v71 >= 0x17)
        {
          v70 = v72;
        }

        else
        {
          v70 = 23;
        }

        v73 = v68 == 22;
      }

      v74 = operator new(v70);
      v69 = v74;
      if (v68)
      {
        memmove(v74, v67, v68);
      }

      if (!v73)
      {
        operator delete(v67);
      }

      v85.__locale_ = v69;
      v87 = v70 | 0x8000000000000000;
    }

    else
    {
      v69 = v85.__locale_;
      v68 = v86;
    }

    v86 = v68 + 1;
  }

  else
  {
    v66 = HIBYTE(v87);
    if (HIBYTE(v87) == 22)
    {
      v67 = &v85;
      v68 = 22;
      goto LABEL_103;
    }

LABEL_99:
    v68 = v66;
    HIBYTE(v87) = (v66 + 1) & 0x7F;
    v69 = &v85;
  }

  v75 = v69 + v68;
  *v75 = v65;
  v75[1] = 0;
  v76 = (v78->__vftable[1].~facet_0)(v78);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v27, v9, v16, v79, &v85, v76, v77, v81);
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v85.__locale_);
  }

  if (SHIBYTE(v88[2].__locale_) < 0)
  {
    operator delete(v88[0].__locale_);
  }

  return v27;
}

void sub_1E53825B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, char *a2, unint64_t a3, uint64_t a4)
{
  HIDWORD(v5) = a4 - 2;
  LODWORD(v5) = a4 - 2;
  v4 = v5 >> 1;
  if (v4 == 4)
  {
    if (a2 - a1 <= 19)
    {
      v6 = (1233 * (64 - __clz(a3 | 1))) >> 12;
      if (a2 - a1 < v6 - (std::__itoa::__pow10_64[v6] > a3) + 1)
      {
        return a2;
      }
    }

    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      v8 = a3 / 0x2540BE400;
      v9 = a3;
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      a3 = v9 - 10000000000 * v8;
    }

    *a1 = std::__itoa::__digits_base_10[a3 / 0x5F5E100];
    *(a1 + 1) = std::__itoa::__digits_base_10[a3 % 0x5F5E100 / 0xF4240];
    v10 = a3 % 0x5F5E100 % 0xF4240;
    *(a1 + 2) = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
    v10 %= 0x2710u;
    *(a1 + 3) = std::__itoa::__digits_base_10[v10 / 0x64u];
    *(a1 + 4) = std::__itoa::__digits_base_10[v10 % 0x64u];
    return a1 + 10;
  }

  else if (v4)
  {
    if (v4 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    else
    {
      if (v4 != 7)
      {
        v18 = a1;
        v19 = a3;
        v11 = a2 - a1;
        v12 = a2;
        v13 = a4;
        v14 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
        a2 = v12;
        if (v11 >= v14)
        {
          v15 = v19;
          a2 = &v18[v14];
          v16 = a2 - 1;
          do
          {
            *v16-- = a0123456789abcd_0[v15 % v13];
            v17 = v15 >= v13;
            v15 /= v13;
          }

          while (v17);
        }

        return a2;
      }

      return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }
  }

  else
  {
    return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x11)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 4;
      *(v6 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v6 -= 4;
      v8 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v8);
  }

  v9 = (v6 - 1);
  do
  {
    *v9-- = a01[v7 & 1];
    v8 = v7 > 1;
    v7 >>= 1;
  }

  while (v8);
  return v5;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x41)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 6;
      *(v6 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x40);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a01234567[v7 & 7];
    v9 = v7 > 7;
    v7 >>= 3;
  }

  while (v9);
  return v5;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (67 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x101)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 8;
      *(v6 - 2) = std::__itoa::__base_16_lut[a3];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x100);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a0123456789abcd_1[v7 & 0xF];
    v9 = v7 > 0xF;
    v7 >>= 4;
  }

  while (v9);
  return v5;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, std::locale *a3, unint64_t a4, unint64_t a5, char a6)
{
  *&v23[5] = *MEMORY[0x1E69E9840];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    *&v22[15] = -1431655766;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v9;
    *v22 = v9;
    v19 = v9;
    v20 = v9;
    *&v17[16] = v9;
    v18 = v9;
    __src = v9;
    *v17 = v9;
    v15 = 2;
    if (BYTE1(a4) == 2)
    {
      v14 = "0b";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v14 = "0B";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v13 = v23;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v10, a5, a6, &__src, v13, v14, v15);
  }

  if (BYTE1(a4) > 5u)
  {
    *&v17[15] = -1431655766;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src = v12;
    *v17 = v12;
    v15 = 16;
    if (BYTE1(a4) == 6)
    {
      v14 = "0x";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v14 = "0X";
      v10 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v13 = &v17[19];
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v10, a5, a6, &__src, v13, v14, v15);
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    *&v17[16] = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src = v11;
    *v17 = v11;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, &__src, &v17[24], 0, 0xAu);
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v17[13] = v6;
  __src = v6;
  *v17 = v6;
  if (a1 | a2)
  {
    v7 = "0";
  }

  else
  {
    v7 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, &__src, &v17[29], v7, 8u);
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, std::locale *a3, unint64_t a4, unint64_t a5, char a6, char *__src, char *a8, char *a9, unsigned int a10)
{
  v10 = a8;
  v11 = __src;
  v13 = a4;
  v14 = a3;
  v15 = a1;
  v16 = a4;
  if (a6)
  {
    v17 = 45;
LABEL_7:
    *__src = v17;
    v19 = __src + 1;
    goto LABEL_8;
  }

  v18 = (a4 >> 3) & 3;
  if (v18 == 2)
  {
    v17 = 43;
    goto LABEL_7;
  }

  v19 = __src;
  if (v18 == 3)
  {
    v17 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v20 = *a9;
      if (*a9)
      {
        v21 = a9 + 1;
        do
        {
          *v19++ = v20;
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }
    }
  }

  HIDWORD(v24) = a10 - 2;
  LODWORD(v24) = a10 - 2;
  v23 = v24 >> 1;
  if (v23 == 4)
  {
    v25 = a8 - v19;
    if (a2)
    {
      if (v25 > 38 || (v26 = (1233 * (128 - __clz(a2))) >> 12, v25 >= v26 - (__PAIR128__(a2, a1) < std::__itoa::__pow10_128[v26]) + 1))
      {
        if (__PAIR128__(a2, a1) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
        {
          *v19 = __udivti3() | 0x30;
          v30 = __udivti3();
          v19[1] = ((1441151881 * v30) >> 57) + 48;
          *(v19 + 1) = std::__itoa::__digits_base_10[v30 % 0x5F5E100 / 0xF4240uLL];
          v31 = v30 % 0x5F5E100 % 0xF4240;
          *(v19 + 2) = std::__itoa::__digits_base_10[v31 / 0x2710uLL];
          v31 %= 0x2710u;
          *(v19 + 3) = std::__itoa::__digits_base_10[v31 / 0x64u];
          *(v19 + 4) = std::__itoa::__digits_base_10[v31 % 0x64u];
          v32 = __udivti3();
          *(v19 + 5) = std::__itoa::__digits_base_10[v32 / 0x5F5E100];
          v33 = v32 % 0x5F5E100;
          *(v19 + 6) = std::__itoa::__digits_base_10[v33 / 0xF4240uLL];
          v33 %= 0xF4240u;
          *(v19 + 7) = std::__itoa::__digits_base_10[v33 / 0x2710uLL];
          v33 %= 0x2710u;
          *(v19 + 8) = std::__itoa::__digits_base_10[v33 / 0x64u];
          *(v19 + 9) = std::__itoa::__digits_base_10[v33 % 0x64u];
          v28 = v19 + 20;
        }

        else
        {
          v27 = __udivti3();
          if (HIDWORD(v27))
          {
            v36 = v19;
            if (v27 > 0x2540BE3FFLL)
            {
              v36 = std::__itoa::__base_10_u32[abi:ne200100](v19, v27 / 0x2540BE400);
              v27 %= 0x2540BE400uLL;
            }

            *v36 = std::__itoa::__digits_base_10[v27 / 0x5F5E100];
            v37 = v27 % 0x5F5E100;
            v36[1] = std::__itoa::__digits_base_10[v37 / 0xF4240uLL];
            v37 %= 0xF4240u;
            v36[2] = std::__itoa::__digits_base_10[v37 / 0x2710uLL];
            v37 %= 0x2710u;
            v36[3] = std::__itoa::__digits_base_10[v37 / 0x64u];
            v36[4] = std::__itoa::__digits_base_10[v37 % 0x64u];
            v28 = v36 + 5;
          }

          else
          {
            v28 = std::__itoa::__base_10_u32[abi:ne200100](v19, v27);
          }
        }

        v38 = __umodti3();
        *v28 = v38 / 0x2540BE400 / 0x5F5E100 + 48;
        v39 = v38 / 0x2540BE400 % 0x5F5E100;
        *(v28 + 1) = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
        v39 %= 0xF4240u;
        *(v28 + 3) = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
        v39 %= 0x2710u;
        *(v28 + 5) = std::__itoa::__digits_base_10[v39 / 0x64u];
        *(v28 + 7) = std::__itoa::__digits_base_10[v39 % 0x64u];
        *(v28 + 9) = std::__itoa::__digits_base_10[v38 % 0x2540BE400 / 0x5F5E100];
        *(v28 + 11) = std::__itoa::__digits_base_10[v38 % 0x2540BE400 % 0x5F5E100 / 0xF4240];
        v40 = v38 % 0x2540BE400 % 0x5F5E100 % 0xF4240;
        *(v28 + 13) = std::__itoa::__digits_base_10[v40 / 0x2710uLL];
        v40 %= 0x2710u;
        *(v28 + 15) = std::__itoa::__digits_base_10[v40 / 0x64u];
        *(v28 + 17) = std::__itoa::__digits_base_10[v40 % 0x64u];
        v10 = v28 + 19;
        v13 = a4;
      }
    }

    else if (v25 > 19 || (v29 = (1233 * (64 - __clz(a1 | 1))) >> 12, v25 >= v29 - (std::__itoa::__pow10_64[v29] > a1) + 1))
    {
      if (HIDWORD(a1))
      {
        v34 = v19;
        if (v15 > 0x2540BE3FFLL)
        {
          v34 = std::__itoa::__base_10_u32[abi:ne200100](v19, v15 / 0x2540BE400);
          v15 %= 0x2540BE400uLL;
        }

        *v34 = std::__itoa::__digits_base_10[v15 / 0x5F5E100];
        v34[1] = std::__itoa::__digits_base_10[v15 % 0x5F5E100 / 0xF4240];
        v35 = v15 % 0x5F5E100 % 0xF4240;
        v34[2] = std::__itoa::__digits_base_10[v35 / 0x2710uLL];
        v35 %= 0x2710u;
        v34[3] = std::__itoa::__digits_base_10[v35 / 0x64u];
        v34[4] = std::__itoa::__digits_base_10[v35 % 0x64u];
        v10 = (v34 + 5);
      }

      else
      {
        v10 = std::__itoa::__base_10_u32[abi:ne200100](v19, a1);
      }
    }
  }

  else if (v23)
  {
    if (v23 == 3)
    {
      v10 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
    }

    else if (v23 == 7)
    {
      v10 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
    }

    else
    {
      __srca = a3;
      v100 = a8;
      v101 = (a8 - v19);
      v102 = a2;
      v103 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a1, a2, a10);
      if (v101 >= v103)
      {
        v100 = &v19[v103];
        v104 = v100 - 1;
        do
        {
          v105 = __udivti3();
          v106 = __PAIR128__(v102, v15) >= a10;
          *v104-- = a0123456789abcd_0[v15 - v105 * a10];
          v15 = v105;
          v102 = v107;
        }

        while (v106);
      }

      v10 = v100;
      v14 = __srca;
    }
  }

  else
  {
    v10 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
  }

  v113 = v10;
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_87;
  }

  if ((v14[5].__locale_ & 1) == 0)
  {
    MEMORY[0x1E69272B0](v119);
    v41 = v14 + 4;
    if (LOBYTE(v14[5].__locale_) == 1)
    {
      std::locale::operator=(v41, v119);
    }

    else
    {
      std::locale::locale(v41, v119);
      LOBYTE(v14[5].__locale_) = 1;
    }

    std::locale::~locale(v119);
  }

  std::locale::locale(&v116, v14 + 4);
  v42 = std::locale::use_facet(&v116, MEMORY[0x1E69E5368]);
  v43 = v10 - v19;
  std::locale::~locale(&v116);
  memset(v119, 170, sizeof(v119));
  (v42->__vftable[1].__on_zero_shared)(v119, v42);
  if ((SHIBYTE(v119[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v119[0].__locale_;
    v45 = v119[1].__locale_;
    if (v119[1].__locale_ && v43 > *v119[0].__locale_)
    {
      v108 = v42;
      v110 = v13;
      v111 = a5;
      v46 = v119[0].__locale_;
      goto LABEL_45;
    }

    operator delete(v119[0].__locale_);
    goto LABEL_86;
  }

  if (!HIBYTE(v119[2].__locale_) || v43 <= SLOBYTE(v119[0].__locale_))
  {
LABEL_86:
    v10 = v113;
LABEL_87:
    v68 = HIDWORD(v13);
    v47 = v14->__locale_;
    if ((v16 & 7) == 4)
    {
      v69 = v14;
      v70 = v13;
      v112 = a5;
      v71 = v19 - v11;
      v72 = *(v47 + 32);
      v73 = v19 - v11;
      if (!v72 || ((v75 = *v72, v74 = v72[1], *v72 - v74 >= v71) ? (v73 = v19 - v11) : (v73 = *v72 - v74), (v72[1] = v74 + v71, v75 > v74) ? (v76 = v73 == 0) : (v76 = 1), !v76))
      {
        v83 = *(v47 + 16);
        do
        {
          v85 = *(v47 + 8) - v83;
          if (v85 < v73 + 1)
          {
            (*(v47 + 24))(v47, v73 + 2);
            v83 = *(v47 + 16);
            v85 = *(v47 + 8) - v83;
          }

          if (v85 >= v73)
          {
            v86 = v73;
          }

          else
          {
            v86 = v85;
          }

          if (v86)
          {
            memmove((*v47 + v83), v11, v86);
            v83 = *(v47 + 16);
          }

          v83 += v86;
          *(v47 + 16) = v83;
          v11 += v86;
          v84 = v73 > v85;
          v73 -= v86;
        }

        while (v84);
      }

      v77 = v70 & 0xF8 | 3;
      if (v68 >= v71)
      {
        v78 = v71;
      }

      else
      {
        v78 = v68;
      }

      LODWORD(v13) = v70;
      v68 = (v68 - v78);
      v47 = *v69;
      v79 = 48;
      a5 = v112;
      v10 = v113;
    }

    else
    {
      v79 = BYTE4(a5);
      v77 = v13;
      v19 = v11;
    }

    v80 = v68 << 32;
    v81 = a5 & 0xFFFFFF00FFFFFFFFLL | (v79 << 32);
    if ((v13 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v19, v10, v47, v13 & 0xFFFF0700 | v80 | v77, v81);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v19, v10 - v19, v47, v80 | v13 & 0xFFFFFF00 | v77, v81, v10 - v19);
    }

    return v47;
  }

  v108 = v42;
  v110 = v13;
  v111 = a5;
  locale = v119;
  v46 = v119[0].__locale_;
  v45 = v119[1].__locale_;
LABEL_45:
  v47 = v14->__locale_;
  v116.__locale_ = 0;
  v117 = 0;
  v118 = 0;
  v48 = v45 + v46;
  if (SHIBYTE(v119[2].__locale_) >= 0)
  {
    v49 = v119 + SHIBYTE(v119[2].__locale_);
  }

  else
  {
    v49 = v48;
  }

  v50 = *locale;
  v51 = *locale;
  v52 = v43 - v50;
  if (v43 <= v50)
  {
    v88 = 0;
    v87 = v51 + v52;
    v89 = v110;
    goto LABEL_119;
  }

  v53 = v49 - 1;
  do
  {
    while (1)
    {
      v54 = HIBYTE(v118);
      if ((SHIBYTE(v118) & 0x80000000) == 0)
      {
        break;
      }

      v55 = (v118 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v117 != v55)
      {
        v61 = v116.__locale_;
        v55 = v117;
        goto LABEL_75;
      }

      if ((v118 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v114 = locale;
      __srca = v116.__locale_;
      if (v55 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_57;
      }

      v59 = 0;
      v58 = 0x7FFFFFFFFFFFFFF7;
LABEL_67:
      v60 = operator new(v58);
      v61 = v60;
      if (v55)
      {
        memmove(v60, __srca, v55);
      }

      if (!v59)
      {
        operator delete(__srca);
      }

      v116.__locale_ = v61;
      v118 = v58 | 0x8000000000000000;
      locale = v114;
LABEL_75:
      v117 = v55 + 1;
      v63 = v61 + v55;
      *v63 = v51;
      v63[1] = 0;
      if (locale != v53)
      {
        goto LABEL_76;
      }

LABEL_50:
      v51 = *locale;
      v52 -= *locale;
      if (v52 <= 0)
      {
        goto LABEL_115;
      }
    }

    if (HIBYTE(v118) == 22)
    {
      v114 = locale;
      __srca = &v116;
      v55 = 22;
LABEL_57:
      if (v55 + 1 > 2 * v55)
      {
        v56 = v55 + 1;
      }

      else
      {
        v56 = 2 * v55;
      }

      if ((v56 | 7) == 0x17)
      {
        v57 = 25;
      }

      else
      {
        v57 = (v56 | 7) + 1;
      }

      if (v56 >= 0x17)
      {
        v58 = v57;
      }

      else
      {
        v58 = 23;
      }

      v59 = v55 == 22;
      goto LABEL_67;
    }

    HIBYTE(v118) = (HIBYTE(v118) + 1) & 0x7F;
    v62 = &v116 + v54;
    *v62 = v51;
    v62[1] = 0;
    if (locale == v53)
    {
      goto LABEL_50;
    }

LABEL_76:
    v64 = (locale + 1);
    v65 = (locale + 1);
    do
    {
      v66 = *v65++;
      v51 = v66;
      if (v66)
      {
        v67 = 1;
      }

      else
      {
        v67 = v64 == v53;
      }

      v64 = v65;
    }

    while (!v67);
    locale = (v65 - 1);
    v52 -= v51;
  }

  while (v52 > 0);
LABEL_115:
  v87 = v51 + v52;
  if (SHIBYTE(v118) < 0)
  {
    v91 = (v118 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v89 = v110;
    if (v117 == v91)
    {
      if ((v118 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v90 = v116.__locale_;
      v93 = 0x7FFFFFFFFFFFFFF7;
      if (v91 >= 0x3FFFFFFFFFFFFFF3)
      {
        v96 = 0;
      }

      else
      {
LABEL_123:
        if (v91 + 1 > 2 * v91)
        {
          v94 = v91 + 1;
        }

        else
        {
          v94 = 2 * v91;
        }

        if ((v94 | 7) == 0x17)
        {
          v95 = 25;
        }

        else
        {
          v95 = (v94 | 7) + 1;
        }

        if (v94 >= 0x17)
        {
          v93 = v95;
        }

        else
        {
          v93 = 23;
        }

        v96 = v91 == 22;
      }

      v97 = operator new(v93);
      v92 = v97;
      if (v91)
      {
        memmove(v97, v90, v91);
      }

      if (!v96)
      {
        operator delete(v90);
      }

      v116.__locale_ = v92;
      v118 = v93 | 0x8000000000000000;
    }

    else
    {
      v92 = v116.__locale_;
      v91 = v117;
    }

    v117 = v91 + 1;
  }

  else
  {
    v88 = HIBYTE(v118);
    v89 = v110;
    if (HIBYTE(v118) == 22)
    {
      v90 = &v116;
      v91 = 22;
      goto LABEL_123;
    }

LABEL_119:
    v91 = v88;
    HIBYTE(v118) = (v88 + 1) & 0x7F;
    v92 = &v116;
  }

  v98 = v92 + v91;
  *v98 = v87;
  v98[1] = 0;
  v99 = (v108->__vftable[1].~facet_0)(v108);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v47, v11, v19, v113, &v116, v99, v89, v111);
  if (SHIBYTE(v118) < 0)
  {
    operator delete(v116.__locale_);
  }

  if (SHIBYTE(v119[2].__locale_) < 0)
  {
    operator delete(v119[0].__locale_);
  }

  return v47;
}

void sub_1E5383A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(unint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) >= a3)
  {
    v6 = a3 * a3;
    v7 = a3 * a3 * a3;
    v3 = 4;
    while (1)
    {
      if (__PAIR128__(a2, a1) < v6)
      {
        return (v3 - 2);
      }

      if (__PAIR128__(a2, a1) < v7)
      {
        break;
      }

      if (__PAIR128__(a2, a1) < v6 * v6)
      {
        return v3;
      }

      a1 = __udivti3();
      v3 = (v3 + 4);
      if (__PAIR128__(a2, a1) < a3)
      {
        return (v3 - 3);
      }
    }

    return (v3 - 1);
  }

  else
  {
    return 1;
  }
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x11)
    {
      v8 = a3;
      v10 = a4;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 4;
        v10 = a4 >> 4;
        *(v7 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
        v7 -= 4;
        v11 = a3 <= 0x10F;
        a3 = v8;
        a4 >>= 4;
      }

      while (!v11);
    }

    v12 = (v7 - 1);
    do
    {
      v13 = v8 & 1;
      v11 = v8 <= 1;
      *(&v14 + 1) = v10;
      *&v14 = v8;
      v8 = v14 >> 1;
      v10 >>= 1;
      *v12-- = a01[v13];
    }

    while (!v11);
  }

  return a2;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x41)
    {
      v8 = a3;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 6;
        a4 >>= 6;
        *(v7 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
        v7 -= 2;
        a3 = v8;
      }

      while (v8 > 0x40);
    }

    v10 = (v7 - 1);
    do
    {
      v11 = v8 & 7;
      v12 = v8 <= 7;
      *(&v13 + 1) = a4;
      *&v13 = v8;
      v8 = v13 >> 3;
      a4 >>= 3;
      *v10-- = a01234567[v11];
    }

    while (!v12);
  }

  return a2;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (131 - v5) >> 2;
  if (a2 - a1 >= v6)
  {
    a2 = a1 + v6;
    if (__PAIR128__(a4, a3) < 0x101)
    {
      v8 = a3;
      v7 = a2;
    }

    else
    {
      v7 = a1 + v6;
      do
      {
        *(&v9 + 1) = a4;
        *&v9 = a3;
        v8 = v9 >> 8;
        a4 >>= 8;
        *(v7 - 2) = std::__itoa::__base_16_lut[a3];
        v7 -= 2;
        a3 = v8;
      }

      while (v8 > 0x100);
    }

    v10 = (v7 - 1);
    do
    {
      v11 = v8 & 0xF;
      v12 = v8 <= 0xF;
      *(&v13 + 1) = a4;
      *&v13 = v8;
      v8 = v13 >> 4;
      a4 >>= 4;
      *v10-- = a0123456789abcd_1[v11];
    }

    while (!v12);
  }

  return a2;
}

uint64_t std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(uint64_t a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  __src = -1431655766;
  if (a4)
  {
    p_src = (&__src + 1);
    LOBYTE(__src) = 45;
    if (BYTE1(a2) > 0x10u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = (a2 >> 3) & 3;
    if (v7 == 2)
    {
      p_src = (&__src + 1);
      LOBYTE(__src) = 43;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else if (v7 == 3)
    {
      p_src = (&__src + 1);
      LOBYTE(__src) = 32;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      p_src = &__src;
      if (BYTE1(a2) > 0x10u)
      {
        goto LABEL_13;
      }
    }
  }

  if (((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
    goto LABEL_15;
  }

LABEL_13:
  v8 = 6;
  if (BYTE1(a2) != 18)
  {
    v8 = 0;
  }

LABEL_15:
  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  *(p_src + 2) = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
  return a1;
}

uint64_t std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, size_t a8)
{
  v8 = a8;
  v13 = HIDWORD(a5);
  v14 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
      v15 = a7 - a1;
      v16 = *(a3 + 32);
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_7:
      v17 = *v16;
      v18 = v16[1];
      if (*v16 - v18 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = *v16 - v18;
      }

      v20 = v18 + v15;
      v16[1] = v20;
      if (v17 <= v18 || v19 == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

    goto LABEL_6;
  }

  if ((a4 & 7) == 3)
  {
LABEL_6:
    v14 = 0;
    std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - (a6 + a8), SHIDWORD(a5));
    v15 = a7 - a1;
    v16 = *(a3 + 32);
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  v22 = v14 >> 1;
  v14 -= v14 >> 1;
  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v22, SHIDWORD(a5));
  v15 = a7 - a1;
  v16 = *(a3 + 32);
  if (v16)
  {
    goto LABEL_7;
  }

LABEL_17:
  v19 = v15;
LABEL_18:
  v23 = *(a3 + 16);
  do
  {
    v25 = *(a3 + 8) - v23;
    if (v25 < v19 + 1)
    {
      (*(a3 + 24))(a3, v19 + 2);
      v23 = *(a3 + 16);
      v25 = *(a3 + 8) - v23;
    }

    if (v25 >= v19)
    {
      v26 = v19;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      memmove((*a3 + v23), a1, v26);
      v23 = *(a3 + 16);
    }

    v23 += v26;
    *(a3 + 16) = v23;
    a1 += v26;
    v24 = v19 > v25;
    v19 -= v26;
  }

  while (v24);
  v16 = *(a3 + 32);
  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = *v16;
  v20 = v16[1];
LABEL_30:
  v27 = v17 - v20;
  if (v17 - v20 >= v8)
  {
    v27 = v8;
  }

  v24 = v17 > v20;
  v28 = v20 + v8;
  v16[1] = v28;
  if (!v24 || v27 == 0)
  {
    v30 = a2 - a7;
    goto LABEL_49;
  }

  v23 = *(a3 + 16);
  v8 = v27;
  do
  {
LABEL_40:
    v31 = *(a3 + 8) - v23;
    if (v31 < v8 + 1)
    {
      (*(a3 + 24))(a3, v8 + 2);
      v23 = *(a3 + 16);
      v31 = *(a3 + 8) - v23;
    }

    if (v31 >= v8)
    {
      v32 = v8;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      memset((*a3 + v23), 48, v32);
      v23 = *(a3 + 16);
    }

    v23 += v32;
    *(a3 + 16) = v23;
    v24 = v8 > v31;
    v8 -= v32;
  }

  while (v24);
  v16 = *(a3 + 32);
  v30 = a2 - a7;
  if (!v16)
  {
    goto LABEL_61;
  }

  v17 = *v16;
  v28 = v16[1];
LABEL_49:
  v33 = v17 - v28;
  if (v17 - v28 >= v30)
  {
    v33 = v30;
  }

  v16[1] = v28 + v30;
  if (v17 > v28 && v33 != 0)
  {
    v23 = *(a3 + 16);
    v30 = v33;
    do
    {
LABEL_61:
      v36 = *(a3 + 8) - v23;
      if (v36 < v30 + 1)
      {
        (*(a3 + 24))(a3, v30 + 2);
        v23 = *(a3 + 16);
        v36 = *(a3 + 8) - v23;
      }

      if (v36 >= v30)
      {
        v37 = v30;
      }

      else
      {
        v37 = v36;
      }

      if (v37)
      {
        memmove((*a3 + v23), a7, v37);
        v23 = *(a3 + 16);
      }

      v23 += v37;
      *(a3 + 16) = v23;
      a7 += v37;
      v24 = v30 > v36;
      v30 -= v37;
    }

    while (v24);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, v13);
}

uint64_t *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(uint64_t *a1, uint64_t a2, const void **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  memset(__p, 170, 24);
  v138 = std::locale::use_facet(this, MEMORY[0x1E69E5368]);
  (v138->__vftable[1].__on_zero_shared)(__p);
  v9 = a3[2];
  v10 = *a3;
  v140 = a3;
  if (v9 >= a3[1])
  {
    v9 = a3[1];
  }

  v11 = v9 - v10;
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v12 = __p[1];
    if (!__p[1])
    {
      goto LABEL_59;
    }

    v15 = __p[0];
    v14 = *__p[0];
    if (v11 <= v14)
    {
      *__p[0] = 0;
      __p[1] = 0;
      goto LABEL_59;
    }

    v134 = a5;
    v135 = v9 - v10;
    v16 = *__p[0];
    v13 = __p[0];
  }

  else
  {
    if (!HIBYTE(__p[2]))
    {
      goto LABEL_59;
    }

    if (v11 <= SLOBYTE(__p[0]))
    {
      LOBYTE(__p[0]) = 0;
      HIBYTE(__p[2]) = 0;
      goto LABEL_59;
    }

    v134 = a5;
    v135 = v9 - v10;
    v13 = __p[0];
    v12 = __p[1];
    v14 = SLOBYTE(__p[0]);
    v15 = __p;
    v16 = __p[0];
  }

  v142 = 0uLL;
  v143 = 0;
  v17 = &v12[v13];
  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p + SHIBYTE(__p[2]);
  }

  else
  {
    v18 = v17;
  }

  v19 = v135 - v14;
  if (v135 <= v14)
  {
    v37 = 0;
    v36 = v16 + v19;
    a5 = v134;
    v11 = v135;
    goto LABEL_56;
  }

  v20 = (v18 - 1);
  do
  {
    while (1)
    {
      v21 = HIBYTE(v143);
      if ((SHIBYTE(v143) & 0x80000000) == 0)
      {
        break;
      }

      v23 = (v143 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (*(&v142 + 1) != v23)
      {
        v23 = *(&v142 + 1);
        v29 = v142;
        goto LABEL_40;
      }

      if ((v143 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v142;
      *v141 = v15;
      if (v23 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_22;
      }

      v27 = 0;
      v26 = 0x7FFFFFFFFFFFFFF7;
LABEL_32:
      v28 = operator new(v26);
      v29 = v28;
      if (v23)
      {
        memmove(v28, v22, v23);
      }

      if (!v27)
      {
        operator delete(v22);
      }

      *&v142 = v29;
      v143 = v26 | 0x8000000000000000;
      v15 = *v141;
LABEL_40:
      *(&v142 + 1) = v23 + 1;
      v31 = &v29[v23];
      *v31 = v16;
      v31[1] = 0;
      if (v15 != v20)
      {
        goto LABEL_41;
      }

LABEL_15:
      v16 = *v15;
      v19 -= *v15;
      if (v19 <= 0)
      {
        goto LABEL_51;
      }
    }

    if (HIBYTE(v143) == 22)
    {
      *v141 = v15;
      v22 = &v142;
      v23 = 22;
LABEL_22:
      if (v23 + 1 > 2 * v23)
      {
        v24 = v23 + 1;
      }

      else
      {
        v24 = 2 * v23;
      }

      if ((v24 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v24 | 7) + 1;
      }

      if (v24 >= 0x17)
      {
        v26 = v25;
      }

      else
      {
        v26 = 23;
      }

      v27 = v23 == 22;
      goto LABEL_32;
    }

    HIBYTE(v143) = (HIBYTE(v143) + 1) & 0x7F;
    v30 = &v142 + v21;
    *v30 = v16;
    v30[1] = 0;
    if (v15 == v20)
    {
      goto LABEL_15;
    }

LABEL_41:
    v32 = (v15 + 1);
    v33 = (v15 + 1);
    do
    {
      v34 = *v33;
      v33 = (v33 + 1);
      v16 = v34;
      if (v34)
      {
        v35 = 1;
      }

      else
      {
        v35 = v32 == v20;
      }

      v32 = v33;
    }

    while (!v35);
    v15 = (v33 - 1);
    v19 -= v16;
  }

  while (v19 > 0);
LABEL_51:
  v36 = v16 + v19;
  if (SHIBYTE(v143) < 0)
  {
    v39 = (v143 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    a5 = v134;
    v11 = v135;
    if (*(&v142 + 1) == v39)
    {
      if ((v143 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v38 = v142;
      v126 = 0x7FFFFFFFFFFFFFF7;
      if (v39 >= 0x3FFFFFFFFFFFFFF3)
      {
        v129 = 0;
      }

      else
      {
LABEL_205:
        if (v39 + 1 > 2 * v39)
        {
          v127 = v39 + 1;
        }

        else
        {
          v127 = 2 * v39;
        }

        if ((v127 | 7) == 0x17)
        {
          v128 = 25;
        }

        else
        {
          v128 = (v127 | 7) + 1;
        }

        if (v127 >= 0x17)
        {
          v126 = v128;
        }

        else
        {
          v126 = 23;
        }

        v129 = v39 == 22;
      }

      v130 = v126;
      v131 = operator new(v126);
      v132 = v131;
      if (v39)
      {
        memmove(v131, v38, v39);
      }

      if (!v129)
      {
        operator delete(v38);
      }

      *&v142 = v132;
      v143 = v130 | 0x8000000000000000;
    }

    else
    {
      v39 = *(&v142 + 1);
      v132 = v142;
    }

    *(&v142 + 1) = v39 + 1;
    v133 = &v132[v39];
    *v133 = v36;
    v133[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v37 = HIBYTE(v143);
    a5 = v134;
    v11 = v135;
    if (HIBYTE(v143) == 22)
    {
      v38 = &v142;
      v39 = 22;
      goto LABEL_205;
    }

LABEL_56:
    HIBYTE(v143) = (v37 + 1) & 0x7F;
    v40 = &v142 + v37;
    *v40 = v36;
    v40[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_57:
      operator delete(__p[0]);
    }
  }

  *__p = v142;
  __p[2] = v143;
LABEL_59:
  v41 = *(a2 + 16);
  v42 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v42 = __p[1];
  }

  v43 = &v42[v140[3] - v41 + *(a2 + 4) - (v42 != 0)];
  v44 = a5 & 7;
  v45 = (a5 >> 32) - v43;
  if (a5 >> 32 <= v43)
  {
    *v141 = 0;
    v45 = 0;
    v46 = HIDWORD(a6);
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  if (v44 == 4)
  {
    LOBYTE(v46) = 48;
  }

  else
  {
    v46 = HIDWORD(a6);
  }

  if (v44 == 4)
  {
    v47 = 3;
  }

  else
  {
    v47 = v44;
  }

  if (v47 > 1)
  {
    if (v47 != 3)
    {
      *v141 = v45 - (v45 >> 1);
      v45 >>= 1;
      if (v44 != 4)
      {
        goto LABEL_83;
      }

      goto LABEL_78;
    }

    goto LABEL_75;
  }

  if (!v47)
  {
LABEL_75:
    *v141 = 0;
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  *v141 = v45;
  v45 = 0;
  if (v44 != 4)
  {
    goto LABEL_83;
  }

LABEL_78:
  if (v10 != v41)
  {
    v48 = *v41;
    v49 = a1[4];
    if (!v49 || (v51 = *v49, v50 = v49[1], v49[1] = v50 + 1, v50 < v51))
    {
      v52 = *a1;
      v53 = a1[2];
      a1[2] = v53 + 1;
      *(v52 + v53) = v48;
      if (a1[2] == a1[1])
      {
        v54 = v11;
        v55 = v45;
        (a1[3])(a1, 2);
        v45 = v55;
        v11 = v54;
      }
    }
  }

LABEL_83:
  __ca = HIDWORD(a6) & 0xFFFFFF00 | v46;
  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v45, __ca);
  if (v44 != 4)
  {
    v56 = *(a2 + 16);
    if (v10 != v56)
    {
      v57 = *v56;
      v58 = a1[4];
      if (!v58 || (v60 = *v58, v59 = v58[1], v58[1] = v59 + 1, v59 < v60))
      {
        v61 = *a1;
        v62 = a1[2];
        a1[2] = v62 + 1;
        *(v61 + v62) = v57;
        if (a1[2] == a1[1])
        {
          (a1[3])(a1, 2);
        }
      }
    }
  }

  v63 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v63 = __p[1];
    if (!__p[1])
    {
      goto LABEL_120;
    }

    v64 = __p[0];
LABEL_94:
    v65 = v63 + v64;
    v66 = (v138->__vftable[1].~facet_0)(v138);
    v67 = v64 + 1;
    while (1)
    {
      v69 = v65 - 1;
      v68 = *(v65 - 1);
      v70 = a1[4];
      if (v70)
      {
        v72 = *v70;
        v71 = v70[1];
        if (*v70 - v71 >= v68)
        {
          v73 = *(v65 - 1);
        }

        else
        {
          v73 = *v70 - v71;
        }

        v70[1] = v71 + v68;
        if (v72 <= v71 || v73 == 0)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v73 = *(v65 - 1);
      }

      v80 = a1[2];
      v81 = v10;
      do
      {
        v83 = a1[1] - v80;
        if (v83 < v73 + 1)
        {
          (a1[3])(a1, v73 + 2);
          v80 = a1[2];
          v83 = a1[1] - v80;
        }

        if (v83 >= v73)
        {
          v84 = v73;
        }

        else
        {
          v84 = v83;
        }

        if (v84)
        {
          memmove((*a1 + v80), v81, v84);
          v80 = a1[2];
        }

        v80 += v84;
        a1[2] = v80;
        v81 += v84;
        v82 = v73 > v83;
        v73 -= v84;
      }

      while (v82);
LABEL_104:
      if (v65 == v67)
      {
        goto LABEL_126;
      }

      v10 += *(v65 - 1);
      v75 = a1[4];
      if (v75)
      {
        v77 = *v75;
        v76 = v75[1];
        v75[1] = v76 + 1;
        --v65;
        if (v76 >= v77)
        {
          continue;
        }
      }

      v78 = *a1;
      v79 = a1[2];
      a1[2] = v79 + 1;
      *(v78 + v79) = v66;
      v65 = v69;
      if (a1[2] == a1[1])
      {
        (a1[3])(a1, 2);
        v65 = v69;
      }
    }
  }

  if (HIBYTE(__p[2]))
  {
    v64 = __p;
    goto LABEL_94;
  }

LABEL_120:
  v85 = a1[4];
  if (v85)
  {
    v87 = *v85;
    v86 = v85[1];
    if (*v85 - v86 >= v11)
    {
      v88 = v11;
    }

    else
    {
      v88 = *v85 - v86;
    }

    v85[1] = v86 + v11;
    if (v87 <= v86 || !v88)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v88 = v11;
  }

  v123 = a1[2];
  do
  {
    v124 = a1[1] - v123;
    if (v124 < v88 + 1)
    {
      (a1[3])(a1, v88 + 2);
      v123 = a1[2];
      v124 = a1[1] - v123;
    }

    if (v124 >= v88)
    {
      v125 = v88;
    }

    else
    {
      v125 = v124;
    }

    if (v125)
    {
      memmove((*a1 + v123), v10, v125);
      v123 = a1[2];
    }

    v123 += v125;
    a1[2] = v123;
    v10 += v125;
    v82 = v88 > v124;
    v88 -= v125;
  }

  while (v82);
LABEL_126:
  if (v140[1] != v140[3])
  {
    v89 = (v138->__vftable[1].~facet)(v138);
    v90 = a1[4];
    if (!v90 || (v92 = *v90, v91 = v90[1], v90[1] = v91 + 1, v91 < v92))
    {
      v93 = *a1;
      v94 = a1[2];
      a1[2] = v94 + 1;
      *(v93 + v94) = v89;
      if (a1[2] == a1[1])
      {
        (a1[3])(a1, 2);
      }
    }

    v95 = v140[1];
    v96 = v95 + 1;
    v97 = v140[2] - (v95 + 1);
    v98 = a1[4];
    if (v98)
    {
      v99 = *v98;
      v100 = v98[1];
      if (*v98 - v100 >= v97)
      {
        v101 = v97;
      }

      else
      {
        v101 = *v98 - v100;
      }

      v102 = v100 + v97;
      v98[1] = v102;
      if (v99 <= v100 || !v101)
      {
        v103 = *(a2 + 4);
        goto LABEL_151;
      }
    }

    else
    {
      v101 = v140[2] - (v95 + 1);
    }

    v104 = a1[2];
    do
    {
      v105 = a1[1] - v104;
      if (v105 < v101 + 1)
      {
        (a1[3])(a1, v101 + 2);
        v104 = a1[2];
        v105 = a1[1] - v104;
      }

      if (v105 >= v101)
      {
        v106 = v101;
      }

      else
      {
        v106 = v105;
      }

      if (v106)
      {
        memmove((*a1 + v104), v96, v106);
        v104 = a1[2];
      }

      v104 += v106;
      a1[2] = v104;
      v96 += v106;
      v82 = v101 > v105;
      v101 -= v106;
    }

    while (v82);
    v98 = a1[4];
    v103 = *(a2 + 4);
    if (v98)
    {
      v99 = *v98;
      v102 = v98[1];
LABEL_151:
      v107 = v99 - v102;
      if (v99 - v102 >= v103)
      {
        v107 = v103;
      }

      v98[1] = v102 + v103;
      if (v99 > v102 && v107 != 0)
      {
        v104 = a1[2];
        v103 = v107;
        goto LABEL_184;
      }
    }

    else
    {
      do
      {
LABEL_184:
        v121 = a1[1] - v104;
        if (v121 < v103 + 1)
        {
          (a1[3])(a1, v103 + 2);
          v104 = a1[2];
          v121 = a1[1] - v104;
        }

        if (v121 >= v103)
        {
          v122 = v103;
        }

        else
        {
          v122 = v121;
        }

        if (v122)
        {
          memset((*a1 + v104), 48, v122);
          v104 = a1[2];
        }

        v104 += v122;
        a1[2] = v104;
        v82 = v103 > v121;
        v103 -= v122;
      }

      while (v82);
    }
  }

  v110 = v140[2];
  v109 = v140[3];
  if (v110 != v109)
  {
    v111 = v109 - v110;
    v112 = a1[4];
    if (v112)
    {
      v114 = *v112;
      v113 = v112[1];
      if (*v112 - v113 >= v111)
      {
        v115 = v111;
      }

      else
      {
        v115 = *v112 - v113;
      }

      v112[1] = v113 + v111;
      if (v114 > v113 && v115 != 0)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v115 = v111;
LABEL_172:
      v118 = a1[2];
      do
      {
        v119 = a1[1] - v118;
        if (v119 < v115 + 1)
        {
          (a1[3])(a1, v115 + 2);
          v118 = a1[2];
          v119 = a1[1] - v118;
        }

        if (v119 >= v115)
        {
          v120 = v115;
        }

        else
        {
          v120 = v119;
        }

        if (v120)
        {
          memmove((*a1 + v118), v110, v120);
          v118 = a1[2];
        }

        v118 += v120;
        a1[2] = v118;
        v110 += v120;
        v82 = v115 > v119;
        v115 -= v120;
      }

      while (v82);
    }
  }

  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, *v141, __ca);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1E5384CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    v27 = a1;
    operator delete(__p);
    a1 = v27;
  }

  _Unwind_Resume(a1);
}

uint64_t std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, char *a2, size_t a3, uint64_t *a4)
{
  v6 = *a4;
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v9 = v7;
  if ((v7 & 0x80000000) != 0)
  {
    std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v6, v8, v7);
    return v6;
  }

  v10 = 0;
  v11 = a2;
  if (a3 && v9)
  {
    v12 = v9 & 0x7FFFFFFF;
    if (*a2 < 0)
    {
      v14 = a2;
    }

    else
    {
      v13 = 0;
      v11 = &a2[v12];
      v14 = &a2[v12 - 1];
      while (1)
      {
        if (a3 - 1 == v13)
        {
          v10 = a3;
          v11 = &a2[a3];
          goto LABEL_16;
        }

        if (v12 - 1 == v13)
        {
          break;
        }

        v15 = a2[++v13];
        if (v15 < 0)
        {
          v12 = v12 - v13 + 1;
          v14 = &a2[v13 - 1];
          goto LABEL_12;
        }
      }

      if ((*v11 & 0x80000000) == 0)
      {
        v10 = v9 & 0x7FFFFFFF;
        goto LABEL_16;
      }

      v12 = 1;
    }

LABEL_12:
    v10 = v14 - a2 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v14, &a2[a3], v12, 0);
  }

LABEL_16:
  std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v11 - a2, v6, v8, v9, v10);
  return v6;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char *a5, char *a6, char *a7, uint64_t a8)
{
  v8 = a5;
  v12 = (a3 >> 3) & 3;
  if (v12 == 2)
  {
    v14 = 43;
    goto LABEL_5;
  }

  v13 = a5;
  if (v12 == 3)
  {
    v14 = 32;
LABEL_5:
    *a5 = v14;
    v13 = a5 + 1;
  }

  if ((a3 & 0x20) != 0)
  {
    if (a7)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = a7 + 1;
        do
        {
          *v13++ = v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v13, a6, a1, a8);
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_65;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x1E69272B0](v86);
    v19 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v19, v86);
    }

    else
    {
      std::locale::locale(v19, v86);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v86);
  }

  std::locale::locale(&v83, (a2 + 32));
  v20 = std::locale::use_facet(&v83, MEMORY[0x1E69E5368]);
  v21 = v18 - v13;
  std::locale::~locale(&v83);
  memset(v86, 170, sizeof(v86));
  (v20->__vftable[1].__on_zero_shared)(v86, v20);
  if ((SHIBYTE(v86[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v86[0].__locale_;
    v23 = v86[1].__locale_;
    if (v86[1].__locale_ && v21 > *v86[0].__locale_)
    {
      v76 = v20;
      v77 = v18;
      v75 = a3;
      v79 = a4;
      v24 = v86[0].__locale_;
      goto LABEL_24;
    }

    operator delete(v86[0].__locale_);
LABEL_65:
    v46 = HIDWORD(a3);
    v25 = *a2;
    if ((a3 & 7) == 4)
    {
      v78 = v18;
      v80 = a4;
      v47 = v13 - v8;
      v48 = *(v25 + 32);
      v49 = v13 - v8;
      if (!v48 || ((v51 = *v48, v50 = v48[1], *v48 - v50 >= v47) ? (v49 = v13 - v8) : (v49 = *v48 - v50), (v48[1] = v50 + v47, v51 > v50) ? (v52 = v49 == 0) : (v52 = 1), !v52))
      {
        v59 = *(v25 + 16);
        do
        {
          v61 = *(v25 + 8) - v59;
          if (v61 < v49 + 1)
          {
            (*(v25 + 24))(v25, v49 + 2);
            v59 = *(v25 + 16);
            v61 = *(v25 + 8) - v59;
          }

          if (v61 >= v49)
          {
            v62 = v49;
          }

          else
          {
            v62 = v61;
          }

          if (v62)
          {
            memmove((*v25 + v59), v8, v62);
            v59 = *(v25 + 16);
          }

          v59 += v62;
          *(v25 + 16) = v59;
          v8 += v62;
          v60 = v49 > v61;
          v49 -= v62;
        }

        while (v60);
      }

      v53 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v47)
      {
        v54 = v47;
      }

      else
      {
        v54 = HIDWORD(a3);
      }

      v46 = (HIDWORD(a3) - v54);
      v25 = *a2;
      v55 = 48;
      v18 = v78;
      a4 = v80;
    }

    else
    {
      v55 = BYTE4(a4);
      v53 = a3;
      v13 = v8;
    }

    v56 = v46 << 32;
    v57 = a4 & 0xFFFFFF00FFFFFFFFLL | (v55 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v18, v25, a3 & 0xFFFF0700 | v56 | v53, v57);
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v18 - v13, v25, v56 | a3 & 0xFFFFFF00 | v53, v57, v18 - v13);
    }

    return v25;
  }

  if (!HIBYTE(v86[2].__locale_) || v21 <= SLOBYTE(v86[0].__locale_))
  {
    goto LABEL_65;
  }

  v76 = v20;
  v77 = v18;
  v75 = a3;
  v79 = a4;
  locale = v86;
  v24 = v86[0].__locale_;
  v23 = v86[1].__locale_;
LABEL_24:
  v25 = *a2;
  v83.__locale_ = 0;
  v84 = 0;
  v85 = 0;
  v26 = v23 + v24;
  if (SHIBYTE(v86[2].__locale_) >= 0)
  {
    v27 = v86 + SHIBYTE(v86[2].__locale_);
  }

  else
  {
    v27 = v26;
  }

  v28 = *locale;
  v29 = *locale;
  v30 = v21 - v28;
  if (v21 <= v28)
  {
    v64 = 0;
    v63 = v29 + v30;
    goto LABEL_97;
  }

  v31 = v27 - 1;
  do
  {
    while (1)
    {
      v32 = HIBYTE(v85);
      if ((SHIBYTE(v85) & 0x80000000) == 0)
      {
        break;
      }

      v33 = (v85 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v84 != v33)
      {
        v39 = v83.__locale_;
        v33 = v84;
        goto LABEL_54;
      }

      if ((v85 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v81 = locale;
      __src = v83.__locale_;
      if (v33 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_36;
      }

      v37 = 0;
      v36 = 0x7FFFFFFFFFFFFFF7;
LABEL_46:
      v38 = operator new(v36);
      v39 = v38;
      if (v33)
      {
        memmove(v38, __src, v33);
      }

      if (!v37)
      {
        operator delete(__src);
      }

      v83.__locale_ = v39;
      v85 = v36 | 0x8000000000000000;
      locale = v81;
LABEL_54:
      v84 = v33 + 1;
      v41 = v39 + v33;
      *v41 = v29;
      v41[1] = 0;
      if (locale != v31)
      {
        goto LABEL_55;
      }

LABEL_29:
      v29 = *locale;
      v30 -= *locale;
      if (v30 <= 0)
      {
        goto LABEL_93;
      }
    }

    if (HIBYTE(v85) == 22)
    {
      v81 = locale;
      __src = &v83;
      v33 = 22;
LABEL_36:
      if (v33 + 1 > 2 * v33)
      {
        v34 = v33 + 1;
      }

      else
      {
        v34 = 2 * v33;
      }

      if ((v34 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v34 | 7) + 1;
      }

      if (v34 >= 0x17)
      {
        v36 = v35;
      }

      else
      {
        v36 = 23;
      }

      v37 = v33 == 22;
      goto LABEL_46;
    }

    HIBYTE(v85) = (HIBYTE(v85) + 1) & 0x7F;
    v40 = &v83 + v32;
    *v40 = v29;
    v40[1] = 0;
    if (locale == v31)
    {
      goto LABEL_29;
    }

LABEL_55:
    v42 = (locale + 1);
    v43 = (locale + 1);
    do
    {
      v44 = *v43++;
      v29 = v44;
      if (v44)
      {
        v45 = 1;
      }

      else
      {
        v45 = v42 == v31;
      }

      v42 = v43;
    }

    while (!v45);
    locale = (v43 - 1);
    v30 -= v29;
  }

  while (v30 > 0);
LABEL_93:
  v63 = v29 + v30;
  if (SHIBYTE(v85) < 0)
  {
    v66 = (v85 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v84 == v66)
    {
      if ((v85 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v65 = v83.__locale_;
      v68 = 0x7FFFFFFFFFFFFFF7;
      if (v66 >= 0x3FFFFFFFFFFFFFF3)
      {
        v71 = 0;
      }

      else
      {
LABEL_101:
        if (v66 + 1 > 2 * v66)
        {
          v69 = v66 + 1;
        }

        else
        {
          v69 = 2 * v66;
        }

        if ((v69 | 7) == 0x17)
        {
          v70 = 25;
        }

        else
        {
          v70 = (v69 | 7) + 1;
        }

        if (v69 >= 0x17)
        {
          v68 = v70;
        }

        else
        {
          v68 = 23;
        }

        v71 = v66 == 22;
      }

      v72 = operator new(v68);
      v67 = v72;
      if (v66)
      {
        memmove(v72, v65, v66);
      }

      if (!v71)
      {
        operator delete(v65);
      }

      v83.__locale_ = v67;
      v85 = v68 | 0x8000000000000000;
    }

    else
    {
      v67 = v83.__locale_;
      v66 = v84;
    }

    v84 = v66 + 1;
  }

  else
  {
    v64 = HIBYTE(v85);
    if (HIBYTE(v85) == 22)
    {
      v65 = &v83;
      v66 = 22;
      goto LABEL_101;
    }

LABEL_97:
    v66 = v64;
    HIBYTE(v85) = (v64 + 1) & 0x7F;
    v67 = &v83;
  }

  v73 = v67 + v66;
  *v73 = v63;
  v73[1] = 0;
  v74 = (v76->__vftable[1].~facet_0)(v76);
  std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v25, v8, v13, v77, &v83, v74, v75, v79);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(v83.__locale_);
  }

  if (SHIBYTE(v86[2].__locale_) < 0)
  {
    operator delete(v86[0].__locale_);
  }

  return v25;
}

void sub_1E53854A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_46()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUICEPersonalizationParameters::ICENonce::~ICENonce(BBUICEPersonalizationParameters::ICENonce *this)
{
  *this = &unk_1F5F06660;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F06660;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void BBUICEPersonalizationParameters::ICESerialNumber::~ICESerialNumber(BBUICEPersonalizationParameters::ICESerialNumber *this)
{
  *this = &unk_1F5F06690;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F06690;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

uint64_t BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(const UInt8 *this, const unsigned __int8 *a2)
{
  if (a2 != 96)
  {
    return 0;
  }

  v3 = operator new(0x10uLL);
  *v3 = &unk_1F5F06690;
  v3[1] = 0;
  v4 = v3;
  v5 = CFDataCreate(*MEMORY[0x1E695E480], this, 12);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 100, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x80u, "Assertion failure(data && Failed to create serial number.)");
  }

  v6 = v5;
  result = v4;
  *(v4 + 8) = v6;
  return result;
}

void BBUICEPersonalizationParameters::ICECertID::~ICECertID(BBUICEPersonalizationParameters::ICECertID *this)
{
  *this = &unk_1F5F066C0;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F066C0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

const __CFData *BBUICEPersonalizationParameters::ICECertID::createFromPublicKeyHashData(const __CFData *this, const __CFData *a2)
{
  if (this)
  {
    v2 = this;
    BytePtr = CFDataGetBytePtr(this);
    if ((CFDataGetLength(v2) & 0xFFFFFFFCLL) != 0)
    {
      v4 = operator new(0x10uLL);
      *v4 = &unk_1F5F066C0;
      v4[1] = 0;
      valuePtr = bswap32(*BytePtr);
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      v4[1] = v5;
      if (!v5)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 97, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0xEFu, "Assertion failure(certID->fNumber && Failed to create CertID!)");
      }

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t BBUICEPersonalizationParameters::ICECertID::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v5 = -1431655766;
  if ((ctu::cf::assign(&v5, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 97, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x10Du, "Assertion failure(success && Failed to create CertID!)");
  }

  return v5;
}

void BBUICEPersonalizationParameters::ICEChipID::~ICEChipID(BBUICEPersonalizationParameters::ICEChipID *this)
{
  *this = &unk_1F5F066F0;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F066F0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void *BBUICEPersonalizationParameters::ICEChipID::createFromChipID(BBUICEPersonalizationParameters::ICEChipID *this)
{
  v1 = this;
  v2 = operator new(0x10uLL);
  *v2 = &unk_1F5F066F0;
  v2[1] = 0;
  valuePtr = v1;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  v2[1] = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 98, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x126u, "Assertion failure(( chipID->fNumber && Failed to create ChipID!))");
  }

  return v2;
}

uint64_t BBUICEPersonalizationParameters::ICEChipID::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v5 = -1431655766;
  if ((ctu::cf::assign(&v5, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 98, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x141u, "Assertion failure(success && Failed to create chipID!)");
  }

  return v5;
}

void BBUICEPersonalizationParameters::ICEKeyStatus::~ICEKeyStatus(BBUICEPersonalizationParameters::ICEKeyStatus *this)
{
  *this = &unk_1F5F06720;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F06720;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void *BBUICEPersonalizationParameters::ICEKeyStatus::createFromKeyStatus(BBUICEPersonalizationParameters::ICEKeyStatus *this)
{
  v1 = this;
  v2 = operator new(0x10uLL);
  *v2 = &unk_1F5F06720;
  v2[1] = 0;
  valuePtr = v1;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  v2[1] = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 99, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x15Au, "Assertion failure(status->fNumber && Failed to create key status!)");
  }

  return v2;
}

uint64_t BBUICEPersonalizationParameters::ICEKeyStatus::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v5 = -1431655766;
  if ((ctu::cf::assign(&v5, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 99, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/ICE/BBUICEPersonalizationParameters.cpp", 0x16Fu, "Assertion failure(success && Failed to create key status!)");
  }

  return v5;
}

void BBUICEPersonalizationParameters::ICEKeyHash::~ICEKeyHash(BBUICEPersonalizationParameters::ICEKeyHash *this)
{
  *this = &unk_1F5F06750;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F06750;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void BBUICEPersonalizationParameters::ICEPublicKeyHash::~ICEPublicKeyHash(BBUICEPersonalizationParameters::ICEPublicKeyHash *this)
{
  *this = &unk_1F5F06780;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F06780;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

_DWORD *BBULoaderVersion::createFromVersionString(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0;
  }

  if (!capabilities::radio::maverick(a1))
  {
    return 0;
  }

  v3 = operator new(0x28uLL);
  v3[2] = 0;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 2) = 0;
  *v3 = &unk_1F5F02BE0;
  v4 = v3;
  v5 = off_1F5F02C00(v3, a1);
  if (v5)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 4) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = v5;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v5 = v7;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 4) != 0)
      {
LABEL_8:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(18, 0, "BBULoaderVersion", &str_19, "Parsing failed, ret = %s\n", BBUReturnAsString::BBUReturnStrings[v5]);
        }
      }
    }

    (*(*v4 + 8))(v4);
    return 0;
  }

  return v4;
}

void *BBUpdaterExtremeCreateCommon(CFErrorRef *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  block = 0u;
  v33 = 0u;
  v23 = 256;
  v2 = sysctlbyname("hw.model", &block, &v23, 0, 0);
  if (v2)
  {
    if (!a1)
    {
      fprintf(*MEMORY[0x1E69E9858], "%s: hw.model query failed with %d\n");
      goto LABEL_30;
    }

    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v30 = v3;
    v31 = v3;
    v28 = v3;
    v29 = v3;
    v26 = v3;
    v27 = v3;
    *__str = v3;
    v25 = v3;
    snprintf(__str, 0x80uLL, "%s: hw.model query failed with %d\n", "BBUpdaterDetermineVendorandPlatform", v2);
    CFError = BBUpdaterExtremePrivate::makeCFError(16, __str);
    goto LABEL_25;
  }

  v5 = TelephonyCapabilitiesSetHardwareModelFromString();
  if ((v5 & 1) == 0)
  {
    if (a1)
    {
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v30 = v18;
      v31 = v18;
      v28 = v18;
      v29 = v18;
      v26 = v18;
      v27 = v18;
      *__str = v18;
      v25 = v18;
      snprintf(__str, 0x80uLL, "%s: could not set Telephony HW model with %s\n", "BBUpdaterDetermineVendorandPlatform", &block);
      CFError = BBUpdaterExtremePrivate::makeCFError(16, __str);
LABEL_25:
      *a1 = CFError;
      goto LABEL_30;
    }

    fprintf(*MEMORY[0x1E69E9858], "%s: could not set Telephony HW model with %s\n");
    goto LABEL_30;
  }

  v6 = capabilities::radio::vendor(v5);
  if ((v6 - 1) >= 2)
  {
    if (v6 == 3)
    {
      v19 = BasebandUpdaterCreate(0, 0, 0, a1);
      v8 = v19;
      if (v19)
      {
        *(v19 + 24) = 0;
      }

      return v8;
    }

LABEL_30:
    if (a1)
    {
      v8 = 0;
      *a1 = BBUpdaterExtremePrivate::makeCFError(24, "BBUpdaterExtremeCreateCommon(): Unable to determine radio vendor\n");
      return v8;
    }

    return 0;
  }

  pthread_once(&BBUpdaterExtreme::sBBUpdaterRegisterClassOnce, BBUpdaterRegisterClass);
  if (!BBUpdaterExtreme::sBBUpdaterTypeID)
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    *(Instance + 24) = 1;
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v9 = _BBULog(0, 0xFFFFFFFFLL, "BBUpdaterExtreme", "", "BBUpdater Version: %s-%s\n", "BBU_PROJECT_VERSION", "BBU_BUILD_INFO");
    v10 = capabilities::radio::vendor(v9);
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v11 = off_1ED944120;
    if (!off_1ED944120)
    {
      v12 = operator new(0x38uLL);
      BBUError::BBUError(v12);
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&block, v12);
      v13 = block;
      block = 0uLL;
      v14 = *(&off_1ED944120 + 1);
      off_1ED944120 = v13;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v15 = *(&block + 1);
      if (*(&block + 1) && !atomic_fetch_add((*(&block + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      v11 = off_1ED944120;
    }

    v16 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v23 = __str;
    *__str = MEMORY[0x1E69E9820];
    *&__str[8] = 0x40000000;
    *&v25 = ___ZN8BBUError11clearErrorsEv_block_invoke;
    *(&v25 + 1) = &__block_descriptor_tmp_9;
    *&v26 = v11;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 0x40000000;
    *&v33 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    *(&v33 + 1) = &__block_descriptor_tmp_13_0;
    *&v34 = v11;
    *(&v34 + 1) = &v23;
    v17 = *(v11 + 16);
    if (*(v11 + 24))
    {
      dispatch_async_and_wait(v17, &block);
    }

    else
    {
      dispatch_sync(v17, &block);
    }

    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v10 == 1)
    {
      v20 = operator new(0x170uLL);
      BBUpdaterController::BBUpdaterController(v20, v8);
    }

    else
    {
      if (v10 != 2)
      {
        if (a1)
        {
          *&v21 = 0xAAAAAAAAAAAAAAAALL;
          *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v38 = v21;
          v39 = v21;
          v36 = v21;
          v37 = v21;
          v34 = v21;
          v35 = v21;
          block = v21;
          v33 = v21;
          snprintf(&block, 0x80uLL, "Unknown telephony radio vendor %d", v10);
          *a1 = BBUpdaterExtremePrivate::makeCFError(24, &block);
        }

        else
        {
          fprintf(*MEMORY[0x1E69E9858], "Unknown telephony radio vendor %d\n", v10);
        }

        goto LABEL_44;
      }

      fprintf(*MEMORY[0x1E69E9858], "%s: Good\n", "BBUpdaterInit");
      v20 = operator new(0x170uLL);
      BBUpdaterController::BBUpdaterController(v20, v8);
    }

    v8[2] = v20;
LABEL_44:
    if (v8[2])
    {
      return v8;
    }

    CFRelease(v8);
    return 0;
  }

  return v8;
}

uint64_t BBUpdaterExecCommand(uint64_t a1, ACFURestore *a2, const __CFDictionary **a3, uint64_t *a4)
{
  if (!a1 || !a2)
  {
    if (!a4)
    {
      return 0;
    }

    CFError = BBUpdaterExtremePrivate::makeCFError(4, 0);
    result = 0;
    *a4 = CFError;
    return result;
  }

  if (*(a1 + 24) == 1)
  {
    v7 = *(**(a1 + 16) + 24);
    v9 = *(a1 + 16);

    return v7(v9, a1, a2, a3, a4);
  }

  result = BasebandUpdaterExecCommand(a1, a2, 0, a3, a4);
  if (!result)
  {
    return result;
  }

  IsDone = BasebandUpdaterIsDone(a1, a4);
  if (!a3 || !IsDone)
  {
    return 1;
  }

  if (!*a3)
  {
    v15 = *MEMORY[0x1E695E4D0];
    keys = @"done";
    result = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v15, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a3 = result;
    if (!result)
    {
      return result;
    }

    return 1;
  }

  result = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *a3);
  if (result)
  {
    v14 = result;
    CFRelease(*a3);
    CFDictionaryAddValue(v14, @"done", *MEMORY[0x1E695E4D0]);
    *a3 = v14;
    return 1;
  }

  return result;
}

uint64_t BBUpdaterSetOptions(uint64_t a1, const __CFDictionary *a2, CFErrorRef *a3)
{
  if (a1)
  {
    if (*(a1 + 24) == 1)
    {
      v3 = *(**(a1 + 16) + 16);

      return v3();
    }

    else
    {

      return BasebandUpdaterSetOptions(a1, a2, a3);
    }
  }

  else
  {
    if (a3)
    {
      *a3 = BBUpdaterExtremePrivate::makeCFError(4, 0);
    }

    return 0;
  }
}

ACFULogging *BBUpdaterRegisterLogSink(ACFULogging *result, void *a2, uint64_t (*a3)(void, void, void))
{
  if (result)
  {
    if (*(result + 24) == 1)
    {
      return (*(**(result + 2) + 32))(*(result + 2), a2, a3);
    }

    else
    {
      gBBULogSinkContext = a2;
      gBBULogSinkFunc = a3;
      return BasebandUpdaterRegisterLogSink(result, a2, GenericBasebandUpdaterLogSink);
    }
  }

  return result;
}

uint64_t GenericBasebandUpdaterLogSink(uint64_t result, const char *a2)
{
  if (gBBULogSinkFunc)
  {
    return gBBULogSinkFunc(result, 0, a2);
  }

  return result;
}

uint64_t BBUpdaterRegisterGlobalLogSink(uint64_t result, uint64_t (*a2)(void, void, void))
{
  gBBULogSinkContext = result;
  gBBULogSinkFunc = a2;
  return result;
}

uint64_t BBUpdaterRegisterClass(void)
{
  result = _CFRuntimeRegisterClass();
  BBUpdaterExtreme::sBBUpdaterTypeID = result;
  return result;
}

void *BBUpdaterDestroy(void *result)
{
  if (result)
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      result = (*(*result + 8))(result);
      v1[2] = 0;
    }
  }

  return result;
}

CFStringRef BBUpdaterDescribe(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<libBBUpdater %p [%p]>{}", v1, v3);
  }

  return result;
}

uint64_t __cxx_global_var_init_47()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUEUR20Fusing::~BBUEUR20Fusing(void **this)
{
  *this = &unk_1F5F03778;
  if ((*(this + 79) & 0x80000000) == 0)
  {
    if ((*(this + 55) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[4]);
    return;
  }

  operator delete(this[7]);
  if (*(this + 55) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_1F5F03778;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
    if ((*(this + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[4]);
  v2 = this;

LABEL_5:
  operator delete(v2);
}

uint64_t BBUEUR20Fusing::performFusing(void **a1)
{
  BBUFeedback::handleBeginPhase(a1[1], "Fuse");
  if ((a1[3] & 1) == 0)
  {
    ((*a1)[6])(a1);
    ETLFusingProgramTriggerM20();
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_7;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v3 = ((*a1)[4])(a1);
      _BBULog(13, 0, v3, "", "Triggering Fusing Program with status (%d)\n", -1);
    }

LABEL_7:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
LABEL_9:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v4 = ((*a1)[4])(a1);
          _BBULog(13, 0, v4, "", "Failed to run ETLFusingProgramTriggerM20() with status (%d)\n", -1);
        }
      }
    }

    v2 = 24;
    goto LABEL_12;
  }

  v2 = 0;
LABEL_12:
  (*(*a1[1] + 16))(a1[1], v2);
  return v2;
}

uint64_t BBUEUR20Fusing::verifyFusing(uint64_t a1, uint64_t a2)
{
  BBUFeedback::handleBeginPhase(*(a1 + 8), "Verify Fusing");
  if ((*(a1 + 24) & 1) == 0 && (*(a1 + 80) & 1) == 0)
  {
    v72 = 0xAAAAAAAAAAAAAAAALL;
    v6 = (*(*a2 + 64))(a2);
    v7 = operator new(0x20uLL);
    v7->__shared_owners_ = 0;
    v7->__vftable = &unk_1F5F06930;
    v7->__shared_weak_owners_ = 0;
    v7[1].__vftable = v6;
    if (v6)
    {
      v8 = (*(*v6 + 24))(v6);
      v9 = v8;
      v10 = v8;
      if (v8)
      {
        v11 = operator new(v8);
        bzero(v11, v10);
      }

      else
      {
        v11 = 0;
      }

      LODWORD(v76) = -1431655766;
      if ((*(*v6 + 16))(v6, v11, v9, &v76, 0))
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
          {
LABEL_19:
            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              v13 = (*(*a1 + 32))(a1);
              _BBULog(13, 0, v13, "", "Failed to copy data from fusing source\n");
            }
          }
        }

LABEL_37:
        v72 = 0;
        goto LABEL_38;
      }

      if (v76 != v9)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_37;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v23 = (*(*a1 + 32))(a1);
          _BBULog(13, 0, v23, "", "Copied length is different from the fusing source's size\n");
        }

        goto LABEL_37;
      }

      v14 = *MEMORY[0x1E695E480];
      v15 = CFDataCreate(*MEMORY[0x1E695E480], v11, v10);
      if (!v15)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_37;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v24 = (*(*a1 + 32))(a1);
          _BBULog(13, 0, v24, "", "Failed to create a data from the buffer\n");
        }

        goto LABEL_37;
      }

      format = kCFPropertyListXMLFormat_v1_0;
      v16 = CFPropertyListCreateWithData(v14, v15, 2uLL, &format, 0);
      v17 = v16;
      v75[0] = v16;
      if (v16)
      {
        Value = CFDictionaryGetValue(v16, @"FusingProfile");
        v19 = Value;
        if (Value)
        {
          v20 = CFGetTypeID(Value);
          if (v20 == CFArrayGetTypeID())
          {
            v21 = CFGetTypeID(v19);
            if (v21 == CFArrayGetTypeID())
            {
              Copy = CFArrayCreateCopy(v14, v19);
              v73[0] = Copy;
              if (Copy)
              {
                v72 = Copy;
                v73[0] = 0;
LABEL_150:
                ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(v73);
                goto LABEL_138;
              }

              if (gBBULogMaskGet(void)::once == -1)
              {
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                {
LABEL_147:
                  if ((gBBULogVerbosity & 0x80000000) == 0)
                  {
                    v59 = (*(*a1 + 32))(a1);
                    _BBULog(13, 0, v59, "", "Failed to copy the array\n");
                  }
                }
              }

              v72 = 0;
              goto LABEL_150;
            }
          }
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
          {
            goto LABEL_135;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
          {
LABEL_135:
            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              v57 = (*(*a1 + 32))(a1);
              _BBULog(13, 0, v57, "", "Failed to get fusing profile from the plist\n");
            }
          }
        }

        v72 = 0;
LABEL_138:
        CFRelease(v17);
LABEL_144:
        CFRelease(v15);
LABEL_38:
        if (v11)
        {
          operator delete(v11);
        }

LABEL_40:
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          cf = v72;
          if (v72)
          {
LABEL_42:
            v71[1] = -1431655766;
            v25 = operator new(0xA0uLL);
            v25[8] = 0u;
            v25[9] = 0u;
            v25[6] = 0u;
            v25[7] = 0u;
            v25[4] = 0u;
            v25[5] = 0u;
            v25[2] = 0u;
            v25[3] = 0u;
            *v25 = 0u;
            v25[1] = 0u;
            v64 = v25;
            v26 = operator new(0xA0uLL);
            v26[8] = 0u;
            v26[9] = 0u;
            v26[6] = 0u;
            v26[7] = 0u;
            v26[4] = 0u;
            v26[5] = 0u;
            v26[2] = 0u;
            v26[3] = 0u;
            *v26 = 0u;
            v26[1] = 0u;
            v65[1] = v26;
            v66 = v26 + 10;
            v67 = v26 + 10;
            v27 = operator new(0xA0uLL);
            v27[8] = 0u;
            v27[9] = 0u;
            v27[6] = 0u;
            v27[7] = 0u;
            v27[4] = 0u;
            v27[5] = 0u;
            v27[2] = 0u;
            v27[3] = 0u;
            *v27 = 0u;
            v27[1] = 0u;
            v68 = v27;
            v69 = v27 + 10;
            v70 = v27 + 10;
            v71[0] = 0;
            v60 = v27;
            (*(*a1 + 48))(a1);
            if ((ETLFusingGetFusedData() & 1) == 0)
            {
              v29 = v60;
              if (gBBULogMaskGet(void)::once == -1)
              {
                v4 = 125;
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                {
                  goto LABEL_118;
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                v4 = 125;
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                {
                  goto LABEL_118;
                }
              }

              if (gBBULogVerbosity < 0)
              {
                goto LABEL_118;
              }

              v30 = (*(*a1 + 32))(a1);
              _BBULog(13, 0, v30, "", "Failed to run ETLFusingGetFusedData()\n");
              goto LABEL_117;
            }

            v71[0] = 0;
            v66 = v26;
            v69 = v60;
            CFRetain(cf);
            format = &format;
            p_format = &format;
            v80 = 0;
            v31 = operator new(0x28uLL);
            v31[2] = 0x4B5F57485F434553;
            v31[3] = 22853;
            *(v31 + 39) = 10;
            *v31 = &format;
            v31[1] = &format;
            format = v31;
            p_format = v31;
            v80 = 1;
            Count = CFArrayGetCount(cf);
            v61 = Count;
            if (!Count)
            {
              v62 = 1;
              goto LABEL_101;
            }

            v33 = 0;
            v62 = 0;
            while (1)
            {
              v76 = 0xAAAAAAAAAAAAAAAALL;
              v77 = 0xAAAAAAAAAAAAAAAALL;
              ValueAtIndex = CFArrayGetValueAtIndex(cf, v33);
              ctu::cf::dict_adapter::dict_adapter(&v76, ValueAtIndex);
              if (!v77)
              {
                if (gBBULogMaskGet(void)::once == -1)
                {
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                  {
LABEL_98:
                    if ((gBBULogVerbosity & 0x80000000) == 0)
                    {
                      v47 = (*(*a1 + 32))(a1);
                      _BBULog(13, 0, v47, "", "Failed to get dictionary from the fusing profile array\n");
                    }
                  }
                }

                else
                {
                  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                  {
                    goto LABEL_98;
                  }
                }

                MEMORY[0x1E69265E0](&v76);
LABEL_101:
                v29 = v60;
                if (v80)
                {
                  v48 = p_format;
                  v49 = *(format + 8);
                  v50 = *p_format;
                  *(v50 + 8) = v49;
                  *v49 = v50;
                  v80 = 0;
                  if (v48 != &format)
                  {
                    do
                    {
                      v52 = *(v48 + 1);
                      if (*(v48 + 39) < 0)
                      {
                        operator delete(*(v48 + 2));
                      }

                      operator delete(v48);
                      v48 = v52;
                    }

                    while (v52 != &format);
                  }
                }

                CFRelease(cf);
                if (v62)
                {
                  LODWORD(format) = -1;
                  (*(*a1 + 48))(a1);
                  if (ETLFusingGetSecureState())
                  {
                    if (format)
                    {
                      if (gBBULogMaskGet(void)::once == -1)
                      {
                        v4 = 125;
                        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                        {
                          goto LABEL_118;
                        }
                      }

                      else
                      {
                        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                        v4 = 125;
                        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                        {
                          goto LABEL_118;
                        }
                      }

                      if ((gBBULogVerbosity & 0x80000000) == 0)
                      {
                        v56 = (*(*a1 + 32))(a1);
                        _BBULog(13, 0, v56, "", "Failed to pass the secure state: (0x%08X)\n", format);
                      }
                    }

                    else if (gBBULogMaskGet(void)::once == -1)
                    {
                      v4 = 0;
                      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                      {
LABEL_108:
                        if ((gBBULogVerbosity & 0x80000000) == 0)
                        {
                          v51 = (*(*a1 + 32))(a1);
                          _BBULog(13, 0, v51, "", "Pass Fusing Secure State: (0x%08X)\n", format);
                          v4 = 0;
                        }
                      }
                    }

                    else
                    {
                      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                      v4 = 0;
                      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                      {
                        goto LABEL_108;
                      }
                    }
                  }

                  else
                  {
                    if (gBBULogMaskGet(void)::once == -1)
                    {
                      v4 = 125;
                      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                      {
                        goto LABEL_118;
                      }
                    }

                    else
                    {
                      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                      v4 = 125;
                      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                      {
                        goto LABEL_118;
                      }
                    }

                    if ((gBBULogVerbosity & 0x80000000) == 0)
                    {
                      v55 = (*(*a1 + 32))(a1);
                      _BBULog(13, 0, v55, "", "Failed to run ETLFusingGetSecureState()\n");
                    }
                  }

LABEL_118:
                  v69 = v29;
                  operator delete(v29);
                  if (v65[1])
                  {
                    operator delete(v65[1]);
                  }

                  if (v64)
                  {
                    operator delete(v64);
                  }

                  if (v72)
                  {
                    CFRelease(v72);
                  }

                  goto LABEL_124;
                }

                if (gBBULogMaskGet(void)::once == -1)
                {
                  v4 = 125;
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                  {
                    goto LABEL_118;
                  }
                }

                else
                {
                  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                  v4 = 125;
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
                  {
                    goto LABEL_118;
                  }
                }

                if (gBBULogVerbosity < 0)
                {
                  goto LABEL_118;
                }

                v53 = (*(*a1 + 32))(a1);
                _BBULog(13, 0, v53, "", "Failed to match both plist and the fusing data\n");
LABEL_117:
                v29 = v60;
                goto LABEL_118;
              }

              v74 = 0;
              memset(v75, 170, sizeof(v75));
              v73[0] = 0;
              v73[1] = 0;
              ctu::cf::map_adapter::getString();
              if (SHIBYTE(v74) < 0)
              {
                operator delete(v73[0]);
              }

              Int = ctu::cf::map_adapter::getInt(&v76, @"Address");
              v36 = p_format;
              if (p_format == &format)
              {
                goto LABEL_80;
              }

              v37 = SHIBYTE(v75[2]) >= 0 ? HIBYTE(v75[2]) : v75[1];
              v38 = SHIBYTE(v75[2]) >= 0 ? v75 : v75[0];
              while (1)
              {
                v39 = *(v36 + 39);
                v40 = v39;
                if (v39 < 0)
                {
                  v39 = *(v36 + 3);
                }

                if (v39 == v37)
                {
                  v41 = v40 >= 0 ? v36 + 2 : *(v36 + 2);
                  if (!memcmp(v41, v38, v37))
                  {
                    break;
                  }
                }

                v36 = *(v36 + 1);
                if (v36 == &format)
                {
                  goto LABEL_80;
                }
              }

              if (v36 == &format)
              {
LABEL_80:
                if (gBBULogMaskGet(void)::once == -1)
                {
                  v42 = 1;
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                  {
                    goto LABEL_82;
                  }
                }

                else
                {
                  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                  v42 = 1;
                  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                  {
LABEL_82:
                    if ((gBBULogVerbosity & 0x80000000) == 0)
                    {
                      v45 = (*(*a1 + 32))(a1);
                      v46 = v75;
                      if (SHIBYTE(v75[2]) < 0)
                      {
                        v46 = v75[0];
                      }

                      _BBULog(13, 0, v45, "", "%s: Failed to find the addressin BB from the plist address (0x%08X)\n", v46, Int);
                    }
                  }
                }
              }

              else if (gBBULogMaskGet(void)::once == -1)
              {
                v42 = 4;
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                v42 = 4;
                if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
                {
LABEL_76:
                  if ((gBBULogVerbosity & 0x80000000) == 0)
                  {
                    v43 = (*(*a1 + 32))(a1);
                    v44 = v75;
                    if (SHIBYTE(v75[2]) < 0)
                    {
                      v44 = v75[0];
                    }

                    _BBULog(13, 0, v43, "", "Skip because the region type(%s:0x%08X) is in the deny list\n", v44, Int);
                  }
                }
              }

              if (SHIBYTE(v75[2]) < 0)
              {
                operator delete(v75[0]);
              }

              MEMORY[0x1E69265E0](&v76);
              if ((v42 | 4) == 4)
              {
                v62 = ++v33 >= v61;
                if (v33 != v61)
                {
                  continue;
                }
              }

              goto LABEL_101;
            }
          }
        }

        else
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
          cf = v72;
          if (v72)
          {
            goto LABEL_42;
          }
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v4 = 125;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_124;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v4 = 125;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_124;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v28 = (*(*a1 + 32))(a1);
          _BBULog(13, 0, v28, "", "Failed to get FusingProfile\n");
        }

        goto LABEL_124;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
        {
          goto LABEL_141;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
        {
LABEL_141:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v58 = (*(*a1 + 32))(a1);
            _BBULog(13, 0, v58, "", "Failed to create fusing dictionary from the plist\n");
          }
        }
      }

      v72 = 0;
      goto LABEL_144;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
LABEL_12:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v12 = (*(*a1 + 32))(a1);
          _BBULog(13, 0, v12, "", "Failed to get fusing source\n");
        }
      }
    }

    v72 = 0;
    goto LABEL_40;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v4 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_124;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v4 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_124;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v5 = (*(*a1 + 32))(a1);
    _BBULog(13, 0, v5, "", "Fake Fusing is detected. Bypass the fusing check\n");
    v4 = 0;
  }

LABEL_124:
  (*(**(a1 + 8) + 16))(*(a1 + 8), v4);
  return v4;
}

void sub_1E538889C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v29 - 176));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v29 - 152));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a23);
  if (v28)
  {
    operator delete(v28);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E53889A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  BBUEUR20Fusing::FusingData::~FusingData(&a29);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v29 - 184));
  _Unwind_Resume(a1);
}

void sub_1E53889C8()
{
  if (*(v0 - 153) < 0)
  {
    JUMPOUT(0x1E53889F0);
  }

  JUMPOUT(0x1E53889F4);
}

void sub_1E53889DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (*(v29 - 129) < 0)
  {
    operator delete(*(v29 - 152));
  }

  MEMORY[0x1E69265E0](v29 - 128, a2, a3, a4, a5, a6, a7, a8);
  std::list<std::string>::~list((v29 - 112));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a22);
  BBUEUR20Fusing::FusingData::~FusingData(&a29);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v29 - 184));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void BBUEUR20Fusing::FusingData::~FusingData(BBUEUR20Fusing::FusingData *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void std::__list_imp<std::string>::clear(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__shared_ptr_pointer<BBUDataSource *,std::shared_ptr<BBUDataSource>::__shared_ptr_default_delete<BBUDataSource,BBUDataSource>,std::allocator<BBUDataSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUDataSource *,std::shared_ptr<BBUDataSource>::__shared_ptr_default_delete<BBUDataSource,BBUDataSource>,std::allocator<BBUDataSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BBUDataSource *,std::shared_ptr<BBUDataSource>::__shared_ptr_default_delete<BBUDataSource,BBUDataSource>,std::allocator<BBUDataSource>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5397E07)
  {
    if (((v2 & 0x80000001E5397E07 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5397E07))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5397E07 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *eUICC::eUICCVinylMAVValve::GetVinylType@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, void *a2@<X8>)
{
  v4 = eUICC::GetVinylType::Perform();
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 1;
  }

  v7 = v6;
  if (gBBULogMaskGet(void)::once != -1)
  {
    v10 = v4;
    v11 = v5;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v5 = v11;
    v4 = v10;
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_11:
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status 0x%hhx\n", v4, v5);
    return memcpy(a2, this + 8, 0x11AuLL);
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v8 = v5 >> 8;
  v9 = BYTE1(v5);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "status 0x%hhx cards_type: %hhu \n", 1, BYTE1(v5));
  *(this + 2) = 1;
  *(this + 285) = v8;
  *(this + 287) = v9 == 3;
  return memcpy(a2, this + 8, 0x11AuLL);
}

void *eUICC::eUICCVinylMAVValve::GetData@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, void *a2@<X8>)
{
  v3 = (this + 8);
  if (*(this + 289) == 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "eUICCVinylData cache is valid. Using cached data!\n");
    goto LABEL_7;
  }

  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *v3 = 0u;
  *(this + 274) = 0u;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v7;
  v16 = v7;
  *v14 = v7;
  *&v14[16] = v7;
  v12 = v7;
  v13 = v7;
  *&v10[128] = v7;
  v11 = v7;
  *&v10[96] = v7;
  *&v10[112] = v7;
  *&v10[64] = v7;
  *&v10[80] = v7;
  *&v10[32] = v7;
  *&v10[48] = v7;
  *v10 = v7;
  *&v10[16] = v7;
  v8 = eUICC::GetData::Perform();
  *(this + 2) = v10[8];
  *(this + 13) = bswap32(*&v10[10]) >> 16;
  *(this + 15) = *&v10[12];
  *(this + 31) = v10[28];
  *(this + 2) = *&v10[29];
  *(this + 3) = *&v10[45];
  *(this + 4) = *&v10[61];
  *(this + 5) = *&v10[77];
  *(this + 143) = *&v10[140];
  *(this + 7) = *&v10[109];
  *(this + 8) = *&v10[125];
  *(this + 6) = *&v10[93];
  *(this + 218) = *&v14[15];
  *(this + 203) = *v14;
  *(this + 187) = v13;
  *(this + 171) = v12;
  *(this + 155) = v11;
  *(this + 115) = *&v14[19];
  *(this + 250) = v14[31];
  *(this + 124) = *&v14[29];
  *(this + 267) = v16;
  *(this + 251) = v15;
  *(this + 12) = v10[9];
  *(this + 283) = -21846;
  *(this + 286) = v10[8] == 4;
  *(this + 288) = v10[8] == 15;
  if (*(this + 2) == capabilities::updater::EUICCVinylSuccessStatus(v8))
  {
    *(this + 289) = 1;
LABEL_7:
    eUICC::logEUICCData(v3, v4, v5);
    return memcpy(a2, v3, 0x11AuLL);
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status %u sw1_sw2 0x%x\n", *v10, *(this + 2), *(this + 13));
  return memcpy(a2, v3, 0x11AuLL);
}

uint64_t eUICC::eUICCVinylMAVValve::SetCardMode(uint64_t a1, int a2, char a3)
{
  __src[36] = *MEMORY[0x1E69E9840];
  (*(*a1 + 8))(__src);
  v6 = memcpy((a1 + 8), __src, 0x11AuLL);
  if (*(a1 + 8) != capabilities::updater::EUICCVinylSuccessStatus(v6))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "outData.Valid()");
    return 18;
  }

  if ((a3 & 1) == 0 && *(a1 + 31) == a2)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Baseband already in mode %hhu\n", a2);
    return 0;
  }

  v7 = *(a1 + 292);
  __src[0] = *(a1 + 296);
  LOBYTE(__src[1]) = v7;
  BYTE1(__src[1]) = a2;
  WORD1(__src[1]) = 1;
  HIDWORD(__src[1]) = 10000;
  v8 = eUICC::SwitchMode::Perform();
  if (v8 || (v9 & 0xFF00000000) != 0x100000000 || a2 != BYTE5(v9))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      v11 = v8;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v8 = v11;
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Failed err %d status %hhu mode %d sw1 0x%x sw2 0x%x\n", v8);
    return 18;
  }

  return 0;
}

uint64_t eUICC::eUICCVinylMAVValve::InstallTicket(uint64_t a1, CFDataRef *a2)
{
  if (*a2)
  {
    v3 = (*(*a1 + 16))(a1, 0, 0);
    if (v3)
    {
      v4 = v3;
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 136);
      return v4;
    }

    else
    {
      CFDataGetBytePtr(*a2);
      CFDataGetLength(*a2);
      v6 = eUICC::InstallTicket::Perform();
      if (v6 || (v7 & 0xFF00000000) != 0x100000000)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          v8 = v6;
          v9 = HIDWORD(v7);
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          HIDWORD(v7) = v9;
          v6 = v8;
        }

        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "InstallTicket failed error %d status %hhu sw1 0x%x sw2 0x%x\n", v6, BYTE4(v7), BYTE5(v7), BYTE6(v7));
        return 16;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "installTicket", "", "", 133);
    return 2;
  }
}

uint64_t eUICC::eUICCVinylMAVValve::StreamFirmware(_DWORD *a1, uint64_t a2)
{
  __src[36] = *MEMORY[0x1E69E9840];
  memset(v38, 170, sizeof(v38));
  (*(**a2 + 24))(v38);
  v3 = v38[1];
  v4 = v38[0];
  (*(*a1 + 8))(__src, a1);
  v5 = memcpy(a1 + 2, __src, 0x11AuLL);
  if (a1[2] != capabilities::updater::EUICCVinylSuccessStatus(v5))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "outData.Valid()", "", "", 169);
    v10 = 18;
    v11 = v38[0];
    if (v38[0])
    {
      goto LABEL_55;
    }

    return v10;
  }

  v6 = *(a1 + 284);
  if (!*(a1 + 284))
  {
    v6 = *(a1 + 304);
  }

  v7 = v6;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "~~~~ MAX APDU PER SET: %zu  ~~~~\n", v7);
  v8 = (v3 - v4) >> 5;
  v9 = v8 / v7;
  v36 = v8;
  if (v8 % v7)
  {
    ++v9;
  }

  v37 = v9;
  if (!v9)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "apduSetCount", "", "", 174);
    v10 = 15;
    v11 = v38[0];
    if (v38[0])
    {
      goto LABEL_55;
    }

    return v10;
  }

  v10 = (*(*a1 + 16))(a1, 1, 0);
  if (v10)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 178);
LABEL_54:
    v11 = v38[0];
    if (v38[0])
    {
      goto LABEL_55;
    }

    return v10;
  }

  v12 = 0;
  v35 = 0;
  v13 = 32 * v7;
  v14 = 16;
  v15 = v36;
  do
  {
    v16 = v15 - v7;
    if (v15 >= v7)
    {
      v15 = v7;
    }

    if (v15 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v15;
    }

    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__src[3] = v18;
    if (v36 - v12 * v7 >= v7)
    {
      v19 = v7;
    }

    else
    {
      v19 = v36 - v12 * v7;
    }

    *&__src[1] = v18;
    LODWORD(__src[4]) = 15000;
    v20 = v13;
    __src[2] = operator new[](v13);
    __src[3] = v7;
    __src[0] = *(a1 + 37);
    LOBYTE(__src[1]) = a1[73];
    WORD1(__src[1]) = v37;
    WORD2(__src[1]) = v12;
    BYTE6(__src[1]) = v19;
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "StreamFirmware set %d/%zu adpusThisSet %zu\n", v12, v37, v19);
    if (v36 == v12 * v7)
    {
LABEL_36:
      v28 = eUICC::StreamAPDU::Perform();
      v30 = HIDWORD(v29);
      v31 = v28;
      if (v28 || (v29 & 0xFF00000000) != 0x100000000)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed StreamAPDU set %d/%zu, error %d status %hhu sw1 0x%x sw2 0x%x\n", v12, v37, v31, v30, BYTE1(v30), BYTE2(v30));
        v32 = 0;
        v35 = 16;
        v33 = __src[2];
        __src[2] = 0;
        if (v33)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v32 = 1;
        v33 = __src[2];
        __src[2] = 0;
        if (v33)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v21 = 0;
      v22 = (v38[0] + v14);
      v23 = (__src[2] + 16);
      while (__src[3] >= v21)
      {
        v25 = *(v22 - 2);
        v24 = *(v22 - 1);
        v27 = *v22;
        v26 = v22[1];
        v22 += 4;
        *(v23 - 2) = v24;
        *(v23 - 1) = v25;
        *v23 = v26;
        v23[1] = v27;
        v23 += 4;
        if (v17 == ++v21)
        {
          goto LABEL_36;
        }
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "j <= req.apdu_payload.apdu_data_size", "", "", 198);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed SteamAPDU index '%d' is greater than max array size '%zu'", v21, __src[3]);
      v32 = 0;
      v33 = __src[2];
      __src[2] = 0;
      if (v33)
      {
LABEL_43:
        operator delete[](v33);
      }
    }

    if ((v32 & 1) == 0)
    {
      v10 = v35;
      goto LABEL_54;
    }

    ++v12;
    v13 = v20;
    v14 += v20;
    v15 = v16;
  }

  while (v37 > v12);
  v10 = 0;
  v11 = v38[0];
  if (!v38[0])
  {
    return v10;
  }

LABEL_55:
  v38[1] = v11;
  operator delete(v11);
  return v10;
}

void sub_1E5389A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete[](__p);
  }

  if (!a18)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylMAVValve::DeleteProfile(eUICC::eUICCVinylMAVValve *this, char a2)
{
  result = eUICC::DeleteProfile::Perform();
  v4 = result;
  if (result || v3 != 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      v5 = v3;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v3 = v5;
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "DeleteProfile failed, error %d status %hhu sw1 0x%x sw2 0x%x\n", v4, v3, BYTE1(v3), BYTE2(v3));
    return 18;
  }

  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::StoreData(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v7 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  eUICC::StoreData::Perform();
  if (__b[0] || LOBYTE(__b[3]) != 1)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp.Valid()", "", "", 240);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to StoreData status %hhu SW1 0x%x SW2 0x%x\n", LOBYTE(__b[3]), BYTE1(__b[3]), BYTE2(__b[3]));
    return 18;
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, &__b[4] + 1, &__b[4] + *(&__b[3] + 3) + 1, *(&__b[3] + 3));
    result = 0;
    *v2 = bswap32(*(&__b[3] + 1)) >> 16;
  }

  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::InitPerso(uint64_t a1, uint64_t a2, char **a3)
{
  v21 = *MEMORY[0x1E69E9840];
  *&__dst[6] = 0;
  *__dst = 0;
  *&__dst[14] = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0xC)
  {
    v9 = 12;
  }

  else
  {
    v9 = v8;
  }

  memcpy(__dst, v6, v9);
  v14 = v4;
  v15 = v5;
  v16 = 0;
  v17 = 0;
  v18 = v9;
  v19 = *__dst;
  v20 = *&__dst[16];
  memset(__dst, 170, 16);
  eUICC::InitPersoSession::Perform();
  if (!*__dst)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp", "", "", 253);
    result = 11;
    v11 = *&__dst[8];
    if (!*&__dst[8])
    {
      return result;
    }

LABEL_19:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = result;
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      return v12;
    }

    return result;
  }

  if (!**__dst && *(*__dst + 8) == 1 && *(*__dst + 11))
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (*__dst + 13), *__dst + 13 + *(*__dst + 11), *(*__dst + 11));
    result = 0;
    v11 = *&__dst[8];
    if (!*&__dst[8])
    {
      return result;
    }

    goto LABEL_19;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid() && rsp->contents.rsp_len", "", "", 254);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to InitPerso status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", *(*__dst + 8), *(*__dst + 9), *(*__dst + 10), *(*__dst + 11));
  result = 18;
  v11 = *&__dst[8];
  if (*&__dst[8])
  {
    goto LABEL_19;
  }

  return result;
}

void sub_1E538A020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylMAVValve::AuthPerso(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = operator new(0x818uLL);
  bzero(v6 + 8, 0x810uLL);
  *(v6 + 516) = 30000;
  *v6 = *(a1 + 296);
  v6[8] = *(a1 + 292);
  v7 = *a2;
  if (*(a2 + 8) - *a2 >= 0x800uLL)
  {
    v8 = 2048;
  }

  else
  {
    v8 = *(a2 + 8) - *a2;
  }

  memcpy(v6 + 14, v7, v8);
  *(v6 + 6) = v8;
  eUICC::AuthPersoSession::Perform();
  if (!MEMORY[0xAAAAAAAAAAAAAAAA] && MEMORY[0xAAAAAAAAAAAAAAB2] == 1 && MEMORY[0xAAAAAAAAAAAAAAB5])
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, 0xAAAAAAAAAAAAAAB7, MEMORY[0xAAAAAAAAAAAAAAB5] - 0x5555555555555549, MEMORY[0xAAAAAAAAAAAAAAB5]);
    v9 = 0;
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid() && rsp->contents.rsp_len", "", "", 269);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", MEMORY[0xAAAAAAAAAAAAAAB2], MEMORY[0xAAAAAAAAAAAAAAB3], MEMORY[0xAAAAAAAAAAAAAAB4], MEMORY[0xAAAAAAAAAAAAAAB5]);
    v9 = 18;
  }

  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }

  operator delete(v6);
  return v9;
}

void sub_1E538A2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylMAVValve::FinalizePerso(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(__dst, 0, 266);
  *(&__dst[16] + 2) = 30000;
  v3 = *(a1 + 296);
  v4 = *(a1 + 292);
  v5 = *a2;
  v7 = *(a2 + 8) - v5;
  if (v7 >= 0x100)
  {
    v8 = 256;
  }

  else
  {
    v8 = v7;
  }

  memcpy(__dst, v5, v8);
  v9 = *(a1 + 290);
  v14 = v3;
  v15 = v4;
  v16 = 0;
  v17 = v9;
  v18 = 0;
  v19 = v8;
  memcpy(v20, __dst, sizeof(v20));
  *&__dst[0] = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
  eUICC::FinalizePersoSession::Perform();
  if (!*&__dst[0])
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp", "", "", 282);
    result = 11;
    v11 = *(&__dst[0] + 1);
    if (!*(&__dst[0] + 1))
    {
      return result;
    }

LABEL_18:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = result;
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      return v12;
    }

    return result;
  }

  if (!**&__dst[0] && *(*&__dst[0] + 8) == 1)
  {
    result = 0;
    v11 = *(&__dst[0] + 1);
    if (!*(&__dst[0] + 1))
    {
      return result;
    }

    goto LABEL_18;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid()", "", "", 283);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to FinalizePersoDevice status %hhu SW1 0x%x SW2 0x%x\n", *(*&__dst[0] + 8), *(*&__dst[0] + 9), *(*&__dst[0] + 10));
  result = 18;
  v11 = *(&__dst[0] + 1);
  if (*(&__dst[0] + 1))
  {
    goto LABEL_18;
  }

  return result;
}

void sub_1E538A594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylMAVValve::ValidatePerso(uint64_t a1, uint64_t a2, char **a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  memset(v16, 0, 28);
  __dst = 0u;
  v14 = 0u;
  DWORD1(v16[1]) = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0x41)
  {
    v9 = 65;
  }

  else
  {
    v9 = v8;
  }

  memcpy(&__dst, v6, v9);
  v22 = v14;
  v23 = v15;
  *v24 = v16[0];
  *&v24[12] = *(v16 + 12);
  v17 = v4;
  v18 = v5;
  v19 = 0;
  v20 = v9;
  v21 = __dst;
  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  eUICC::ValidatePerso::Perform();
  if (!__dst)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp", "", "", 295);
    result = 11;
    v11 = *(&__dst + 1);
    if (!*(&__dst + 1))
    {
      return result;
    }

LABEL_19:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = result;
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      return v12;
    }

    return result;
  }

  if (!*__dst && *(__dst + 8) == 1 && *(__dst + 11))
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (__dst + 13), __dst + 13 + *(__dst + 11), *(__dst + 11));
    result = 0;
    v11 = *(&__dst + 1);
    if (!*(&__dst + 1))
    {
      return result;
    }

    goto LABEL_19;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid() && rsp->contents.rsp_len", "", "", 296);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", *(__dst + 8), *(__dst + 9), *(__dst + 10), *(__dst + 11));
  result = 18;
  v11 = *(&__dst + 1);
  if (*(&__dst + 1))
  {
    goto LABEL_19;
  }

  return result;
}

void sub_1E538A864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t DERImg4DecodePropertyWithItem(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9[0] = 0;
  v9[2] = 0;
  v9[1] = 22;
  v9[3] = 24;
  v10 = a3;
  result = DERParseSequenceToObject(a1, 2u, v9, a4, 0x30uLL, 0);
  if (!result)
  {
    result = DERParseInteger(a4, &v8);
    if (!result)
    {
      if ((v8 | 0xE000000000000000) == a2)
      {
        result = 0;
        a4[2] = a2 | 0xE000000000000000;
        a4[5] = a3;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

unint64_t *DERImg4DecodeFindProperty(unint64_t *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8[0] = 0;
  v8[1] = 0;
  result = DERDecodeSeqContentInit(a1, v8);
  if (!result)
  {
    return DERImg4DecodeFindPropertyInSequence(v8, a2, a3, a4);
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

uint64_t ACFUCommon::PersonalizeParams::PersonalizeParams()
{
  return MEMORY[0x1EEDED210]();
}

{
  return MEMORY[0x1EEDED218]();
}

uint64_t RTKitFirmware::create()
{
  return MEMORY[0x1EEDED348]();
}

{
  return MEMORY[0x1EEDED350]();
}

uint64_t ctu::path_join_impl()
{
  return MEMORY[0x1EEE62FF8]();
}

{
  return MEMORY[0x1EEE63000]();
}

{
  return MEMORY[0x1EEE63008]();
}

uint64_t ctu::cf::convert_copy()
{
  return MEMORY[0x1EEE63098]();
}

{
  return MEMORY[0x1EEE630A0]();
}

uint64_t ctu::cf::assign()
{
  return MEMORY[0x1EEE630D8]();
}

{
  return MEMORY[0x1EEE630E0]();
}

{
  return MEMORY[0x1EEE630E8]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x1EEE63218]();
}

{
  return MEMORY[0x1EEE63220]();
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE0]();
}

{
  return MEMORY[0x1EEE63EF8]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x1EEE64438](this, a2, a3, a4);
}

{
  return MEMORY[0x1EEE64450](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x1EEE64440]();
}

{
  return MEMORY[0x1EEE64448]();
}

{
  return MEMORY[0x1EEE64458]();
}

{
  return MEMORY[0x1EEE64460]();
}

{
  return MEMORY[0x1EEE64470]();
}

{
  return MEMORY[0x1EEE64478]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}