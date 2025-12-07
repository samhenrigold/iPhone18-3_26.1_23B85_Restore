void *CentauriUpdaterCreate(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, ACFULogging *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  v10 = inited;
  v11 = ACFULogging::getLogInstance(inited);
  if (v10)
  {
    CentauriUpdaterCreate_cold_1(v11, a4, v10);
LABEL_11:
    Instance = 0;
    goto LABEL_14;
  }

  v12 = ACFULogging::handleMessage(v11, 0, "%s::%s: CentauriUpdater Version: %s\n", "CentauriUpdater", "CentauriUpdaterCreate", "CentauriUpdater-56.0.1~5524");
  v13 = ACFULogging::getLogInstance(v12);
  ACFULogging::handleMessage(v13, 3, "%s::%s: creating updater\n", "CentauriUpdater", "CentauriUpdaterCreate");
  if (CentauriUpdaterCreate::only_once != -1)
  {
    CentauriUpdaterCreate_cold_2();
  }

  if (!kCentauriUpdaterTypeID)
  {
    CentauriUpdaterCreate_cold_5(a4);
    goto LABEL_11;
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v16 = CentauriRestore::create(a1, v14);
    Instance[2] = v16;
    v17 = ACFULogging::getLogInstance(v16);
    if (v16)
    {
      ACFULogging::handleMessage(v17, 3, "%s::%s: successfully created updater\n", "CentauriUpdater", "CentauriUpdaterCreate");
      return Instance;
    }

    CentauriUpdaterCreate_cold_3(v17, a4);
  }

  else
  {
    CentauriUpdaterCreate_cold_4(a4);
  }

LABEL_14:
  v20 = ACFULogging::getLogInstance(v19);
  ACFULogging::handleMessage(v20, 2, "%s::%s: failed to create updater\n", "CentauriUpdater", "CentauriUpdaterCreate");
  if (Instance)
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

void populateCFError(const char *a1, void *a2, const char *a3, int a4)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    populateCFError(0);
    return;
  }

  v8 = Mutable;
  CFStringAppendCString(Mutable, "CentauriUpdater::", 0x8000100u);
  CFStringAppendCString(v8, a1, 0x8000100u);
  MEMORY[0x29C2B4550](v15, v8);
  v9 = strlen(a3);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v11 = operator new(v12);
    __dst[1] = v10;
    v14 = v12 | 0x8000000000000000;
    __dst[0] = v11;
  }

  else
  {
    HIBYTE(v14) = v9;
    v11 = __dst;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  memcpy(v11, a3, v10);
LABEL_11:
  *(v10 + v11) = 0;
  ACFUError::addError();
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  *a2 = ACFUError::getCFError(v15);
  MEMORY[0x29C2B4560](v15);
  CFRelease(v8);
}

void sub_299E8AF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B4560](&a16, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t __CentauriUpdaterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kCentauriUpdaterTypeID = result;
  return result;
}

ACFULogging *CentauriUpdaterFinalize(ACFULogging *result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 2))
    {
      LogInstance = ACFULogging::getLogInstance(result);
      ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Destroying updater\n", "CentauriUpdater", "CentauriUpdaterFinalize");
      result = *(v1 + 2);
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      *(v1 + 2) = 0;
    }
  }

  return result;
}

CFStringRef CentauriUpdaterCopyDebugDescription(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<CentauriUpdater %p [%p]>{}", v1, v3);
  }

  return result;
}

uint64_t CentauriUpdaterExecCommand(void *a1, ACFUCommon *this, uint64_t a3, uint64_t a4, void *a5)
{
  ACFUCommon::stringFromCFString(__p, this, this);
  v9 = ACFURestore::restoreCommand(this, v8);
  LogInstance = ACFULogging::getLogInstance(v9);
  v11 = __p;
  if (v29 < 0)
  {
    v11 = __p[0];
  }

  v12 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: executing command %s\n", "CentauriUpdater", "CentauriUpdaterExecCommand", v11);
  if (!a1)
  {
    v20 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v20, 2, "%s::%s: null updater\n", "CentauriUpdater", "CentauriUpdaterExecCommand");
    v21 = "null updater";
LABEL_16:
    populateCFError("CentauriUpdaterExecCommand", a5, v21, 4005);
LABEL_17:
    v18 = 0;
    goto LABEL_10;
  }

  v13 = CFGetTypeID(a1);
  if (v13 != kCentauriUpdaterTypeID)
  {
    v22 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v22, 2, "%s::%s: updater has wrong type\n", "CentauriUpdater", "CentauriUpdaterExecCommand");
    v21 = "updater has wrong type";
    goto LABEL_16;
  }

  v14 = a1[2];
  if (!v14)
  {
    v23 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v23, 2, "%s::%s: uninitialized updater\n", "CentauriUpdater", "CentauriUpdaterExecCommand");
    v21 = "uninitialized updater";
    goto LABEL_16;
  }

  v15 = ACFURestore::executeCommand();
  if ((v15 & 1) == 0)
  {
    v24 = ACFULogging::getLogInstance(v15);
    v25 = __p;
    if (v29 < 0)
    {
      v25 = __p[0];
    }

    ACFULogging::handleMessage(v24, 2, "%s::%s: failed to execute command %s\n", "CentauriUpdater", "CentauriUpdaterExecCommand", v25);
    ACFURestore::getErrorHandle(&v26, v14);
    *a5 = ACFUError::getCFError(v26);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    goto LABEL_17;
  }

  v16 = ACFULogging::getLogInstance(v15);
  v17 = __p;
  if (v29 < 0)
  {
    v17 = __p[0];
  }

  ACFULogging::handleMessage(v16, 3, "%s::%s: successfully executed command %s\n", "CentauriUpdater", "CentauriUpdaterExecCommand", v17);
  v18 = 1;
LABEL_10:
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  return v18;
}

void sub_299E8B2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ACFURestore **CentauriUpdaterIsDone(uint64_t a1, ACFULogging **a2)
{
  v15 = @"CentauriUpdaterIsDone";
  v4 = std::allocate_shared[abi:ne200100]<ACFUError,std::allocator<ACFUError>,__CFString const*,0>(&v15, &v16);
  if (!a1)
  {
    goto LABEL_9;
  }

  LogInstance = ACFULogging::getLogInstance(v4);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: checking if updater is done\n", "CentauriUpdater", "CentauriUpdaterIsDone");
  v6 = CFGetTypeID(a1);
  if (v6 != kCentauriUpdaterTypeID)
  {
    v12 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v12, 2, "%s::%s: updater has wrong type\n", "CentauriUpdater", "CentauriUpdaterIsDone");
    v13 = "updater has wrong type";
LABEL_14:
    populateCFError("CentauriUpdaterIsDone", a2, v13, 4005);
    a1 = 1;
    goto LABEL_9;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    v14 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v14, 2, "%s::%s: uninitialized updater\n", "CentauriUpdater", "CentauriUpdaterIsDone");
    v13 = "uninitialized updater";
    goto LABEL_14;
  }

  isRestoreComplete = ACFURestore::isRestoreComplete(v7);
  a1 = isRestoreComplete;
  if (isRestoreComplete)
  {
    isRestoreComplete = ACFUError::getCFError(v16);
    *a2 = isRestoreComplete;
  }

  v9 = ACFULogging::getLogInstance(isRestoreComplete);
  v10 = "not done yet";
  if (a1)
  {
    v10 = "done";
  }

  ACFULogging::handleMessage(v9, 3, "%s::%s: updater is %s\n", "CentauriUpdater", "CentauriUpdaterIsDone", v10);
LABEL_9:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  return a1;
}

void sub_299E8B450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

const __CFData *CentauriUpdaterCopySiKPublicKey(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, void *a4)
{
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  if (a2 && (v8 = ACFULogging::getLogInstance(a1), inited = ACFULogging::initLog(v8, a1, a2, a3), (v10 = inited) != 0))
  {
    LogInstance = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize logging\n", "CentauriUpdater", "CentauriUpdaterCopySiKPublicKey");
    populateCFError("CentauriUpdaterCopySiKPublicKey", a4, "failed to initialize logging", v10);
  }

  else
  {
    ACFUDiagnostics::create(&v24, 0, 1);
    std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(&v25, &v24);
    v11 = v24;
    v24 = 0;
    if (v11)
    {
      v12 = MEMORY[0x29C2B4480]();
      operator delete(v12);
    }

    if (v25)
    {
      v22 = v25;
      v23 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      CentauriTransport::create(&v22, 0, 0, 1, 0, 0, &v24);
      std::shared_ptr<CentauriTransport>::operator=[abi:ne200100]<CentauriTransport,std::default_delete<CentauriTransport>,0>(&v27, &v24);
      v13 = v24;
      v24 = 0;
      if (v13)
      {
        (*(*v13 + 64))(v13);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v27)
      {
        v14 = CentauriTransport::copySiKPublicKey(v27);
        if (v14)
        {
          goto LABEL_14;
        }

        v20 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v20, 2, "%s::%s: failed to copy sik public key\n", "CentauriUpdater", "CentauriUpdaterCopySiKPublicKey");
        v17 = 3013;
        v18 = "failed to copy sik public key";
      }

      else
      {
        v19 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v19, 2, "%s::%s: failed to allocate transport object\n", "CentauriUpdater", "CentauriUpdaterCopySiKPublicKey");
        v17 = 1007;
        v18 = "failed to allocate transport object";
      }
    }

    else
    {
      v16 = ACFULogging::getLogInstance(v11);
      ACFULogging::handleMessage(v16, 2, "%s::%s: failed to allocate diagnostic object\n", "CentauriUpdater", "CentauriUpdaterCopySiKPublicKey");
      v17 = 4008;
      v18 = "failed to allocate diagnostic object";
    }

    populateCFError("CentauriUpdaterCopySiKPublicKey", a4, v18, v17);
  }

  v14 = 0;
LABEL_14:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  return v14;
}

void sub_299E8B6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    CentauriUpdaterCopySiKPublicKey_cold_1(a14);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v18 = *(v16 - 40);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A2023A28;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::shared_ptr<CentauriTransport>::operator=[abi:ne200100]<CentauriTransport,std::default_delete<CentauriTransport>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A2023A88;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F290568, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::allocate_shared[abi:ne200100]<ACFUError,std::allocator<ACFUError>,__CFString const*,0>@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  result = std::__shared_ptr_emplace<ACFUError>::__shared_ptr_emplace[abi:ne200100]<__CFString const*,std::allocator<ACFUError>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<ACFUError>::__shared_ptr_emplace[abi:ne200100]<__CFString const*,std::allocator<ACFUError>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20239D8;
  MEMORY[0x29C2B4550](a1 + 3, *a2);
  return a1;
}

void std::__shared_ptr_emplace<ACFUError>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20239D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x29C2B4480]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ACFUDiagnostics  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__shared_ptr_pointer<CentauriTransport  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CentauriTransport  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CentauriTransport  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void CentauriTransport::create(uint64_t *a1@<X0>, ACFULogging *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v14 = operator new(0x70uLL);
  ACFUTransport::ACFUTransport(v14);
  *v14 = &unk_2A2023AE8;
  v14[24] = 1;
  *(v14 + 4) = 0;
  *(v14 + 10) = 0;
  *(v14 + 6) = 0;
  *(v14 + 36) = 0;
  *(v14 + 56) = 0u;
  *(v14 + 76) = 0x300000000;
  *(v14 + 11) = 0;
  *(v14 + 48) = 256;
  v14[98] = 0;
  *(v14 + 13) = 0;
  *a7 = v14;
  v15 = *a1;
  v16 = a1[1];
  v21[0] = v15;
  v21[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = CentauriTransport::init(v14, v21, a2, a3, v9, v8, v7);
  v18 = v17;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if ((v18 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize transport object\n", "CentauriTransport", "create");
    *a7 = 0;
    v20 = *(*v14 + 64);

    v20(v14);
  }
}

void sub_299E8BD90(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 64))(v1);
  _Unwind_Resume(a1);
}

void CentauriTransport::CentauriTransport(CentauriTransport *this)
{
  ACFUTransport::ACFUTransport(this);
  *v1 = &unk_2A2023AE8;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0;
  *(v1 + 56) = 0u;
  *(v1 + 76) = 0x300000000;
  *(v1 + 88) = 0;
  *(v1 + 96) = 256;
  *(v1 + 98) = 0;
  *(v1 + 104) = 0;
}

uint64_t CentauriTransport::init(uint64_t a1, uint64_t *a2, ACFULogging *a3, uint64_t a4, char a5, char a6, int a7)
{
  Platform = CentauriTransport::getPlatform(a1);
  *(a1 + 80) = Platform;
  if (Platform == 3)
  {
    CentauriTransport::init(Platform);
    return 0;
  }

  result = CentauriTransport::parseDeviceBootArgs(a1);
  if (!result)
  {
    return result;
  }

  v16 = CentauriTransport::tagForBootMode(a3);
  if (!v16)
  {
    CentauriTransport::init(a3);
    return 0;
  }

  *(a1 + 76) = a3;
  if (a4)
  {
    *(a1 + 88) = a4;
    *(a1 + 96) = 1;
  }

  *(a1 + 97) = a5;
  *(a1 + 98) = a6;
  LogInstance = ACFULogging::getLogInstance(v16);
  v18 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: === CentauriTransport Config ===\n", "CentauriTransport", "init");
  v19 = ACFULogging::getLogInstance(v18);
  CentauriTransport::platformToString(*(a1 + 80), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v21 = ACFULogging::handleMessage(v19, 0, "%s::%s: Platform: %s\n", "CentauriTransport", "init", p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v22 = ACFULogging::getLogInstance(v21);
  v23 = ACFULogging::handleMessage(v22, 0, "%s::%s: Timeouts:\n", "CentauriTransport", "init");
  v24 = ACFULogging::getLogInstance(v23);
  v25 = ACFULogging::handleMessage(v24, 0, "%s::%s:     ROM transport driver open: %lld milliseconds\n", "CentauriTransport", "init", CentauriTransport::kTimeouts[6 * *(a1 + 80)]);
  v26 = ACFULogging::getLogInstance(v25);
  v27 = ACFULogging::handleMessage(v26, 0, "%s::%s:     ROM send image: %lld milliseconds\n", "CentauriTransport", "init", CentauriTransport::kTimeouts[6 * *(a1 + 80) + 1]);
  v28 = ACFULogging::getLogInstance(v27);
  v29 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 2];
  if (*(a1 + 96))
  {
    v29 += 65000;
  }

  v30 = ACFULogging::handleMessage(v28, 0, "%s::%s:     Second stage transport driver open: %lld milliseconds\n", "CentauriTransport", "init", v29);
  v31 = ACFULogging::getLogInstance(v30);
  v32 = ACFULogging::handleMessage(v31, 0, "%s::%s:     Second stage send image: %lld milliseconds\n", "CentauriTransport", "init", CentauriTransport::kTimeouts[6 * *(a1 + 80) + 3]);
  v33 = ACFULogging::getLogInstance(v32);
  v34 = ACFULogging::handleMessage(v33, 0, "%s::%s:     CCHI stage transport driver open: %lld milliseconds\n", "CentauriTransport", "init", CentauriTransport::kTimeouts[6 * *(a1 + 80) + 4]);
  v35 = ACFULogging::getLogInstance(v34);
  CentauriTransport::bootModeToString(*(a1 + 76), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &__p;
  }

  else
  {
    v36 = __p.__r_.__value_.__r.__words[0];
  }

  v37 = ACFULogging::handleMessage(v35, 0, "%s::%s: Boot mode: %s\n", "CentauriTransport", "init", v36);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v38 = ACFULogging::getLogInstance(v37);
  if (*(a1 + 24))
  {
    v39 = "Yes";
  }

  else
  {
    v39 = "No";
  }

  v40 = ACFULogging::handleMessage(v38, 0, "%s::%s: Enable second boot stage: %s\n", "CentauriTransport", "init", v39);
  v41 = ACFULogging::getLogInstance(v40);
  if (*(a1 + 96))
  {
    v42 = "Yes";
  }

  else
  {
    v42 = "No";
  }

  v43 = ACFULogging::handleMessage(v41, 0, "%s::%s: Client owns control driver: %s\n", "CentauriTransport", "init", v42);
  v44 = ACFULogging::getLogInstance(v43);
  if (*(a1 + 97))
  {
    v45 = "Yes";
  }

  else
  {
    v45 = "No";
  }

  v46 = ACFULogging::handleMessage(v44, 0, "%s::%s: Enable log collection: %s\n", "CentauriTransport", "init", v45);
  v47 = ACFULogging::getLogInstance(v46);
  if (*(a1 + 98))
  {
    v48 = "Yes";
  }

  else
  {
    v48 = "No";
  }

  v49 = ACFULogging::handleMessage(v47, 0, "%s::%s: Extend timeouts for SiK generation: %s\n", "CentauriTransport", "init", v48);
  v50 = ACFULogging::getLogInstance(v49);
  ACFULogging::handleMessage(v50, 0, "%s::%s: =========================\n", "CentauriTransport", "init");
  v51 = a2[1];
  v55 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
  }

  v52 = ACFUTransport::init();
  v53 = v55;
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if ((v52 & 1) == 0)
  {
    CentauriTransport::init(v53);
    return 0;
  }

  if (a7)
  {
    MEMORY[0x29C2B40B0](&__block_literal_global_0);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB8F28], MEMORY[0x29EDB9020]);
  *(a1 + 104) = Mutable;
  if (!Mutable)
  {
    CentauriTransport::init(0);
  }

  return 1;
}

void sub_299E8C230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void CentauriTransport::getBoardParameters(CentauriTransport *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v89[1] = *MEMORY[0x29EDCA608];
  v86 = xmmword_29F2905B8;
  v87 = *&off_29F2905C8;
  v88 = xmmword_29F2905D8;
  *v84 = xmmword_29F290598;
  v85 = *&off_29F2905A8;
  v82 = 0;
  v83 = 0;
  __p = 0;
  v8 = std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(&__p, v84, v89, 0xAuLL);
  *v84 = 0u;
  v85 = 0u;
  *v79 = 0;
  *bytes = 0;
  v78 = 0;
  *v77 = 0;
  *v76 = 0;
  *v75 = 0;
  *v74 = 0;
  v73 = 0;
  LogInstance = ACFULogging::getLogInstance(v8);
  v10 = "No";
  if (a2)
  {
    v11 = "Yes";
  }

  else
  {
    v11 = "No";
  }

  if (a3)
  {
    v10 = "Yes";
  }

  v12 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: bootedQuery %s, generateNonce %s\n", "CentauriTransport", "getBoardParameters", v11, v10);
  v13 = *(this + 7);
  if (v13)
  {
    if (!a3 || *(v13 + 80) == 1)
    {
      v61 = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(v61, 0, "%s::%s: returning cached values\n", "CentauriTransport", "getBoardParameters");
      v17 = 0;
      goto LABEL_33;
    }

    v14 = *(this + 8);
    *(this + 7) = 0;
    *(this + 8) = 0;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  if (a2)
  {
    v15 = CentauriTransport::openInterfaceDriver(this);
    if (v15)
    {
      v16 = CentauriTransport::sendCCHICommand(this, 0, 0, 2u);
      v17 = v16;
      if (v16)
      {
        Length = CFDataGetLength(v16);
        if (Length == 58)
        {
          BytePtr = CFDataGetBytePtr(v17);
          *&v77[2] = *BytePtr;
          v20 = *(BytePtr + 2);
          *v77 = *(BytePtr + 2);
          v21 = *(BytePtr + 44);
          *v79 = *(BytePtr + 4);
          *bytes = v21;
          v75[1] = *(BytePtr + 52);
          v75[0] = *(BytePtr + 53);
          v73 = *(BytePtr + 54);
          v74[1] = *(BytePtr + 55);
          v74[0] = *(BytePtr + 56);
          *v76 = *(BytePtr + 57);
          v22 = *(BytePtr + 28);
          *v84 = *(BytePtr + 12);
          v85 = v22;
LABEL_26:
          if (v20 == 1)
          {
            v31 = ACFULogging::getLogInstance(BytePtr);
            ACFULogging::handleMessage(v31, 0, "%s::%s: Detected ACB board ID (%u), reporting TCB board ID (%u) instead\n", "CentauriTransport", "getBoardParameters", 1, 3);
            *v77 = 3;
          }

          std::allocate_shared[abi:ne200100]<ACFUCommon::PersonalizeParams,std::allocator<ACFUCommon::PersonalizeParams>,std::vector<__CFString const*> const&,0>(&__p, &v72);
          v32 = v72;
          v72 = 0uLL;
          v33 = *(this + 8);
          *(this + 56) = v32;
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
            v33 = *(&v72 + 1);
            if (*(&v72 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v72 + 1));
            }

            v34 = *(this + 7);
            if (v34)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v34 = v32;
            if (v32)
            {
LABEL_32:
              v35 = *MEMORY[0x29EDB8ED8];
              v36 = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 8);
              *(v34 + 72) = v36;
              *(v34 + 80) = v36 != 0;
              v37 = *(this + 7);
              v38 = CFDataCreate(v35, v84, 32);
              *(v37 + 56) = v38;
              *(v37 + 64) = v38 != 0;
              v39 = *(this + 7);
              v40 = CFDataCreate(v35, v79, 8);
              *(v39 + 40) = v40;
              *(v39 + 48) = v40 != 0;
              v41 = *(this + 7);
              v42 = CFDataCreate(v35, v77, 2);
              *(v41 + 24) = v42;
              *(v41 + 32) = v42 != 0;
              v43 = *(this + 7);
              v44 = CFDataCreate(v35, &v77[2], 2);
              *(v43 + 8) = v44;
              *(v43 + 16) = v44 != 0;
              v45 = *(this + 7);
              v46 = CFDataCreate(v35, &v75[1], 1);
              *(v45 + 88) = v46;
              *(v45 + 96) = v46 != 0;
              v47 = *(this + 7);
              v48 = CFDataCreate(v35, v75, 1);
              *(v47 + 104) = v48;
              *(v47 + 112) = v48 != 0;
              v49 = *(this + 7);
              v50 = CFDataCreate(v35, &v74[1], 1);
              *(v49 + 136) = v50;
              *(v49 + 144) = v50 != 0;
              v51 = *(this + 7);
              v52 = CFDataCreate(v35, v74, 1);
              *(v51 + 152) = v52;
              *(v51 + 160) = v52 != 0;
              v53 = *(this + 7);
              v54 = CFDataCreate(v35, v76, 2);
              *(v53 + 168) = v54;
              *(v53 + 176) = v54 != 0;
              v55 = *(this + 7);
              v56 = CFDataCreate(v35, &v73, 1);
              *(v55 + 120) = v56;
              *(v55 + 128) = v56 != 0;
              ACFUCommon::PersonalizeParams::logParameters(*(this + 7));
LABEL_33:
              v57 = 0;
              goto LABEL_34;
            }
          }

          v60 = ACFULogging::getLogInstance(v33);
          ACFULogging::handleMessage(v60, 2, "%s::%s: failed to create personalization parameters\n", "CentauriTransport", "getBoardParameters");
          goto LABEL_49;
        }

        v65 = ACFULogging::getLogInstance(Length);
        v66 = CFDataGetLength(v17);
        ACFULogging::handleMessage(v65, 2, "%s::%s: wrong response size: expected %zu, received %zu\n", "CentauriTransport", "getBoardParameters", 0x3AuLL, v66);
      }

LABEL_49:
      v57 = 3000;
      goto LABEL_34;
    }

    v62 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v62, 2, "%s::%s: failed to open interface driver\n", "CentauriTransport", "getBoardParameters");
LABEL_46:
    v17 = 0;
    v57 = 3019;
    goto LABEL_34;
  }

  v23 = CentauriTransport::openBootDriver(this, 0, CentauriTransport::kTimeouts[6 * *(this + 20)]);
  if ((v23 & 1) == 0)
  {
    v63 = ACFULogging::getLogInstance(v23);
    ACFULogging::handleMessage(v63, 2, "%s::%s: failed to open transport driver for rom\n", "CentauriTransport", "getBoardParameters");
    goto LABEL_46;
  }

  if (a3)
  {
    BootNonce = CentauriTransport::generateBootNonce(this);
    if ((BootNonce & 1) == 0)
    {
      v71 = ACFULogging::getLogInstance(BootNonce);
      ACFULogging::handleMessage(v71, 2, "%s::%s: failed to generate boot nonce\n", "CentauriTransport", "getBoardParameters");
      v17 = 0;
      v57 = 3008;
      goto LABEL_34;
    }

    v25 = ACFULogging::getLogInstance(BootNonce);
    ACFULogging::handleMessage(v25, 0, "%s::%s: generated a boot nonce\n", "CentauriTransport", "getBoardParameters");
  }

  Register = CentauriTransport::readRegister(this, 3, v84, 32);
  if ((Register & 1) == 0)
  {
    v64 = ACFULogging::getLogInstance(Register);
    ACFULogging::handleMessage(v64, 2, "%s::%s: failed to get boot nonce hash\n", "CentauriTransport", "getBoardParameters");
    v17 = 0;
    v57 = 3017;
    goto LABEL_34;
  }

  v27 = CentauriTransport::readRegister(this, 4, bytes, 8);
  if (v27)
  {
    v28 = CentauriTransport::readRegister(this, 2, v79, 8);
    if (v28)
    {
      v29 = CentauriTransport::readRegister(this, 1, &v78 + 4, 4);
      if (v29)
      {
        v30 = WORD2(v78);
        *v77 = HIDWORD(v78);
        BytePtr = CentauriTransport::readRegister(this, 0, &v78, 4);
        if (BytePtr)
        {
          v17 = 0;
          v74[0] = v78 & 0x7F;
          v74[1] = (v78 >> 7) & 3;
          v75[1] = (v78 & 0x200) != 0;
          v75[0] = (v78 & 0x400) != 0;
          v73 = (v78 & 0x800) != 0;
          v20 = v30;
          *v76 = (v78 >> 19) & 0x70 | (v78 >> 20) & 7;
          goto LABEL_26;
        }

        v70 = ACFULogging::getLogInstance(BytePtr);
        ACFULogging::handleMessage(v70, 2, "%s::%s: failed to get domain/mode\n");
      }

      else
      {
        v69 = ACFULogging::getLogInstance(v29);
        ACFULogging::handleMessage(v69, 2, "%s::%s: failed to get chip information\n");
      }
    }

    else
    {
      v68 = ACFULogging::getLogInstance(v28);
      ACFULogging::handleMessage(v68, 2, "%s::%s: failed to get ecid\n");
    }

    v17 = 0;
    v57 = 3011;
  }

  else
  {
    v67 = ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage(v67, 2, "%s::%s: failed to get boot nonce\n", "CentauriTransport", "getBoardParameters");
    v17 = 0;
    v57 = 3007;
  }

LABEL_34:
  CentauriTransport::closeBootDriver(this);
  if (v17)
  {
    CFRelease(v17);
  }

  v59 = *(this + 7);
  v58 = *(this + 8);
  if (v58)
  {
    atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  *a4 = v59;
  *(a4 + 8) = v58;
  *(a4 + 16) = v57;
  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }
}

void sub_299E8C934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::openInterfaceDriver(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: opening CCHI interface driver\n", "CentauriTransport", "openInterfaceDriver");
  v4 = *(this + 6);
  v5 = ACFULogging::getLogInstance(v3);
  if (v4)
  {
    ACFULogging::handleMessage(v5, 0, "%s::%s: already open\n", "CentauriTransport", "openInterfaceDriver");
    return 1;
  }

  ACFULogging::handleMessage(v5, 3, "%s::%s: creating interface object\n", "CentauriTransport", "openInterfaceDriver");
  v6 = airship_ch_interface_create();
  *(this + 6) = v6;
  if (v6)
  {
    v7 = airship_ch_interface_set_ring_sizes();
    v8 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v8, 3, "%s::%s: opening interface object\n", "CentauriTransport", "openInterfaceDriver");
    v9 = airship_ch_interface_open();
    v10 = ACFULogging::getLogInstance(v9);
    if (!v9)
    {
      ACFULogging::handleMessage(v10, 0, "%s::%s: successfully opened CCHI interface driver\n", "CentauriTransport", "openInterfaceDriver");
      *(this + 36) = 0;
      return 1;
    }

    ACFULogging::handleMessage(v10, 2, "%s::%s: failed to open interface object: 0x%08x\n", "CentauriTransport", "openInterfaceDriver", v9);
  }

  else
  {
    CentauriTransport::openInterfaceDriver(0);
  }

  CentauriTransport::closeInterfaceDriver(this);
  return 0;
}

CFDataRef CentauriTransport::sendCCHICommand(CentauriTransport *this, CFDataRef theData, ACFULogging *a3, unsigned int a4)
{
  v43 = 0;
  if (!*(this + 6))
  {
    CentauriTransport::sendCCHICommand(this);
    goto LABEL_44;
  }

  if (theData)
  {
    Length = CFDataGetLength(theData);
    v9 = Length;
    if (Length >= 1017)
    {
      CentauriTransport::sendCCHICommand(Length);
LABEL_44:
      v35 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = malloc_type_calloc(1uLL, 0x400uLL, 0x100004077774924uLL);
  v11 = v10;
  if (!v10)
  {
    CentauriTransport::sendCCHICommand(0);
    goto LABEL_44;
  }

  *v10 = v9 + 8;
  v10[2] = a3;
  v12 = v10 + 2;
  v38 = a4;
  v10[3] = a4;
  v13 = v10 + 3;
  v14 = *(this + 72);
  *(this + 72) = v14 + 1;
  v10[4] = v14;
  v15 = v10 + 4;
  if (theData)
  {
    v44.location = 0;
    v44.length = v9;
    CFDataGetBytes(theData, v44, v10 + 8);
  }

  LogInstance = ACFULogging::getLogInstance(v10);
  v17 = ACFULogging::handleMessage(LogInstance, 4, "%s::%s: sending:\n", "CentauriTransport", "sendCCHICommand");
  ACFULogging::getLogInstance(v17);
  std::string::basic_string[abi:ne200100]<0>(&v39, "CentauriTransport");
  v18 = std::string::append(&v39, "::", 2uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v40, "sendCCHICommand", 0xFuLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v42 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageBinary();
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v22 = airship_ch_interface_write();
  if (v22)
  {
    CentauriTransport::sendCCHICommand(v22);
    goto LABEL_44;
  }

  v23 = airship_ch_interface_read();
  if (v23)
  {
    CentauriTransport::sendCCHICommand(v23);
    goto LABEL_44;
  }

  v24 = v43;
  v25 = ACFULogging::getLogInstance(v23);
  if (v24 >= 0x401)
  {
    ACFULogging::handleMessage(v25, 2, "%s::%s: amount read too large: %u\n");
    goto LABEL_44;
  }

  v26 = ACFULogging::handleMessage(v25, 4, "%s::%s: received:\n", "CentauriTransport", "sendCCHICommand");
  ACFULogging::getLogInstance(v26);
  std::string::basic_string[abi:ne200100]<0>(&v39, "CentauriTransport");
  v27 = std::string::append(&v39, "::", 2uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = std::string::append(&v40, "sendCCHICommand", 0xFuLL);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v42 = v29->__r_.__value_.__r.__words[2];
  *__p = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = ACFULogging::handleMessageBinary();
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v24 <= 7)
  {
    CentauriTransport::sendCCHICommand(v24);
    goto LABEL_44;
  }

  if (v24 != *v11)
  {
    v37 = ACFULogging::getLogInstance(v31);
    ACFULogging::handleMessage(v37, 2, "%s::%s: response length mismatch: %hu != %u\n");
    goto LABEL_44;
  }

  v32 = *v15;
  v34 = *(this + 73);
  v33 = this + 73;
  if (v32 != v34)
  {
    CentauriTransport::sendCCHICommand((v11 + 4), v33);
    goto LABEL_44;
  }

  *v33 = v32 + 1;
  if (*v12 != a3)
  {
    CentauriTransport::sendCCHICommand(a3, v11 + 2);
    goto LABEL_44;
  }

  if (*v13 != v38)
  {
    CentauriTransport::sendCCHICommand(v38, v11 + 3);
    goto LABEL_44;
  }

  if (v11[5])
  {
    CentauriTransport::sendCCHICommand((v11 + 5));
    goto LABEL_44;
  }

  v35 = CFDataCreate(*MEMORY[0x29EDB8ED8], v11 + 8, v24 - 8);
  if (!v35)
  {
    CentauriTransport::sendCCHICommand(0);
  }

LABEL_32:
  AMSupportSafeFree();
  return v35;
}

void sub_299E8CED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::openBootDriver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  CentauriTransport::bootStageToString(a2, &__p);
  LogInstance = ACFULogging::getLogInstance(v5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: opening boot driver for %s stage\n", "CentauriTransport", "openBootDriver", p_p);
  if (*(a1 + 32))
  {
    if (*(a1 + 40) == v3)
    {
      v9 = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(v9, 0, "%s::%s: same stage already open\n", "CentauriTransport", "openBootDriver");
LABEL_12:
      v17 = 1;
      goto LABEL_13;
    }

    v19 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v19, 2, "%s::%s: different stage already open\n", "CentauriTransport", "openBootDriver");
  }

  else
  {
    v10 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v10, 3, "%s::%s: creating boot object\n", "CentauriTransport", "openBootDriver");
    *(a1 + 40) = v3;
    v11 = airship_ch_boot_create();
    *(a1 + 32) = v11;
    if (v11)
    {
      v12 = ACFULogging::getLogInstance(v11);
      ACFULogging::handleMessage(v12, 3, "%s::%s: opening boot object\n", "CentauriTransport", "openBootDriver");
      v13 = airship_ch_boot_open();
      v14 = v13;
      if (!v13)
      {
        v15 = ACFULogging::getLogInstance(v13);
        v16 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v16 = __p.__r_.__value_.__r.__words[0];
        }

        ACFULogging::handleMessage(v15, 0, "%s::%s: successfully opened boot driver for %s stage\n", "CentauriTransport", "openBootDriver", v16);
        goto LABEL_12;
      }

      v22 = ACFULogging::getLogInstance(v13);
      v23 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = __p.__r_.__value_.__r.__words[0];
      }

      ACFULogging::handleMessage(v22, 2, "%s::%s: failed to open boot object for %s stage: 0x%08x\n", "CentauriTransport", "openBootDriver", v23, v14);
    }

    else
    {
      v20 = ACFULogging::getLogInstance(0);
      v21 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      ACFULogging::handleMessage(v20, 2, "%s::%s: failed to create boot object for %s stage\n", "CentauriTransport", "openBootDriver", v21);
    }

    CentauriTransport::closeBootDriver(a1);
  }

  v17 = 0;
LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_299E8D118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::generateBootNonce(CentauriTransport *this)
{
  v5 = 1;
  v2 = CentauriTransport::writeRegister(this, 6, &v5, 4);
  if ((v2 & 1) == 0)
  {
    CentauriTransport::generateBootNonce(v2);
    return 0;
  }

  __ns.__rep_ = 100000000;
  std::this_thread::sleep_for (&__ns);
  Register = CentauriTransport::readRegister(this, 6, &v5, 4);
  if ((Register & 1) == 0)
  {
    CentauriTransport::generateBootNonce(Register);
    return 0;
  }

  if (v5)
  {
    CentauriTransport::generateBootNonce(v5);
    return 0;
  }

  return 1;
}

uint64_t CentauriTransport::readRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32))
  {
    v4 = a4;
    v5 = a2;
    v6 = airship_ch_boot_read_register();
    if (!v6)
    {
      return 1;
    }

    v8 = v6;
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to read register %u (%u bytes): 0x%08x\n", "CentauriTransport", "readRegister", v5, v4, v8);
  }

  else
  {
    CentauriTransport::readRegister(0);
  }

  return 0;
}

ACFULogging *CentauriTransport::closeBootDriver(ACFULogging *this)
{
  if (*(this + 4))
  {
    v1 = this;
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: closing boot driver\n", "CentauriTransport", "closeBootDriver");
    MEMORY[0x29C2B47B0](*(v1 + 4));
    v3 = airship_ch_boot_destroy();
    *(v1 + 4) = 0;
    v4 = ACFULogging::getLogInstance(v3);
    return ACFULogging::handleMessage(v4, 0, "%s::%s: boot driver closed\n", "CentauriTransport", "closeBootDriver");
  }

  return this;
}

uint64_t CentauriTransport::pushFirmware(uint64_t a1, uint64_t a2)
{
  CentauriCommon::getTatsuTagToFileNameMap(v65);
  memset(v64, 0, sizeof(v64));
  LogInstance = ACFULogging::getLogInstance(v4);
  CentauriTransport::bootModeToString(*(a1 + 76), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: booting in %s mode\n", "CentauriTransport", "pushFirmware", p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *a2;
  if (!*a2 || (v7 = __dynamic_cast(v7, MEMORY[0x29EDBF8F0], MEMORY[0x29EDBF900], 0)) == 0)
  {
    v24 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v24, 2, "%s::%s: failed to get RTKit firmware\n", "CentauriTransport", "pushFirmware");
LABEL_30:
    v25 = 3012;
    goto LABEL_57;
  }

  v8 = v7;
  v62 = CentauriTransport::tagForBootMode(*(a1 + 76));
  if (!v62)
  {
    v40 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v40, 2, "%s::%s: failed to get tag for boot mode\n", "CentauriTransport", "pushFirmware");
    goto LABEL_30;
  }

  v9 = std::map<__CFString const*,std::string>::at(v65, &v62);
  v10 = (*(*v8 + 40))(v8, v9);
  if (!v10)
  {
    v41 = ACFULogging::getLogInstance(v10);
    CentauriTransport::bootModeToString(*(a1 + 76), &__p);
    v42 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v43 = __p.__r_.__value_.__r.__words[0];
    ACFUCommon::stringFromCFString(v60, v62, v44);
    v45 = &__p;
    if (v42 < 0)
    {
      v45 = v43;
    }

    if (v61 >= 0)
    {
      v46 = v60;
    }

    else
    {
      v46 = v60[0];
    }

    ACFULogging::handleMessage(v41, 2, "%s::%s: cannot boot in %s mode since %s image is missing from firmware\n", "CentauriTransport", "pushFirmware", v45, v46);
    if (v61 < 0)
    {
      operator delete(v60[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_30;
  }

  PlatformIdentifier = CentauriPlatform::getPlatformIdentifier(v10, v11, v12);
  v14 = PlatformIdentifier;
  if (!PlatformIdentifier)
  {
    v47 = ACFULogging::getLogInstance(PlatformIdentifier);
    ACFULogging::handleMessage(v47, 2, "%s::%s: failed to get host platform identifier\n");
LABEL_72:
    v25 = 3000;
    goto LABEL_57;
  }

  CentauriTransport::setBootTimestamp(a1, "openROMStart");
  if (!CentauriTransport::openBootDriver(a1, 0, CentauriTransport::kTimeouts[6 * *(a1 + 80)]))
  {
    goto LABEL_58;
  }

  CentauriTransport::setBootTimestamp(a1, "openROMEnd");
  v15 = CentauriTransport::bootFlagsForBootMode(*(a1 + 76));
  if (!CentauriTransport::setBootFlags(a1, v15))
  {
    v25 = 3010;
    goto LABEL_57;
  }

  v16 = CentauriTransport::setHostPlatformIdentifier(a1, v14);
  if ((v16 & 1) == 0)
  {
    v48 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v48, 2, "%s::%s: failed to set host platform identifier\n");
    goto LABEL_72;
  }

  CentauriTransport::setBootTimestamp(a1, "firstSendImageStart");
  v17 = *(a2 + 8);
  v59[0] = *a2;
  v59[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = CentauriTransport::sendImage(a1, v59, CentauriTransport::kTimeouts[6 * *(a1 + 80) + 1]);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if ((v18 & 1) == 0)
  {
    v25 = 3026;
    goto LABEL_57;
  }

  CentauriTransport::setBootTimestamp(a1, "firstSendImageEnd");
  CentauriTransport::closeBootDriver(a1);
  if (*(a1 + 24) != 1)
  {
    v25 = 0;
    goto LABEL_57;
  }

  CentauriTransport::setBootTimestamp(a1, "openSecondStageStart");
  if (*(a1 + 96))
  {
    v19 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 2] + 65000;
  }

  else
  {
    v19 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 2];
  }

  if (*(a1 + 76) == 1)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  if ((CentauriTransport::openBootDriver(a1, v20, v19) & 1) == 0)
  {
LABEL_58:
    v25 = 3019;
    goto LABEL_57;
  }

  CentauriTransport::setBootTimestamp(a1, "openSecondStageEnd");
  if (*(a1 + 76))
  {
    SecondaryFtab = 0;
    v23 = 0;
    goto LABEL_38;
  }

  v26 = ACFULogging::getLogInstance(v21);
  ACFULogging::handleMessage(v26, 0, "%s::%s: initializing memswap\n", "CentauriTransport", "pushFirmware");
  std::string::basic_string[abi:ne200100]<0>(&__p, "2ftb");
  v27 = ACFUFirmware::copyFWDataByFileName();
  v23 = v27;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v23)
  {
    v49 = ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage(v49, 2, "%s::%s: secondary ftab header missing from primary ftab\n", "CentauriTransport", "pushFirmware");
    goto LABEL_72;
  }

  v28 = CFGetTypeID(v23);
  TypeID = CFDataGetTypeID();
  if (v28 != TypeID)
  {
    v50 = ACFULogging::getLogInstance(TypeID);
    v51 = CFGetTypeID(v23);
    ACFUCommon::cfTypeDescription(&__p, v51);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &__p;
    }

    else
    {
      v52 = __p.__r_.__value_.__r.__words[0];
    }

    ACFULogging::handleMessage(v50, 2, "%s::%s: secondary ftab header has unexpected type %s\n", "CentauriTransport", "pushFirmware", v52);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_84;
  }

  v30 = CentauriTransport::openControlDriver(a1);
  if ((v30 & 1) == 0)
  {
    v53 = ACFULogging::getLogInstance(v30);
    ACFULogging::handleMessage(v53, 2, "%s::%s: failed to open control driver\n");
LABEL_84:
    v25 = 3000;
LABEL_56:
    CFRelease(v23);
    goto LABEL_57;
  }

  SecondaryFtab = CentauriTransport::createSecondaryFtab(a1, v23, v64);
  if (!SecondaryFtab)
  {
    v55 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v55, 2, "%s::%s: failed to create secondary ftab\n");
    goto LABEL_84;
  }

LABEL_38:
  CentauriTransport::setBootTimestamp(a1, "secondSendImageStart");
  if (*(a1 + 98))
  {
    v31 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 3] + 8000;
  }

  else
  {
    v31 = CentauriTransport::kTimeouts[6 * *(a1 + 80) + 3];
  }

  v32 = *a2;
  v33 = *(a2 + 8);
  v58[0] = v32;
  v58[1] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
  }

  v34 = CentauriTransport::sendImage(a1, v58, v31);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v34)
  {
    CentauriTransport::setBootTimestamp(a1, "secondSendImageEnd");
    CentauriTransport::closeBootDriver(a1);
    if (*(a1 + 76))
    {
LABEL_52:
      v25 = 0;
      goto LABEL_53;
    }

    BytePtr = CFDataGetBytePtr(v23);
    Length = CFDataGetLength(v23);
    if (BytePtr && Length > 0)
    {
      v37 = memcmp(BytePtr, SecondaryFtab, Length);
      if (v37)
      {
        v56 = ACFULogging::getLogInstance(v37);
        ACFULogging::handleMessage(v56, 2, "%s::%s: second boot stage modified secondary ftab header\n");
      }

      else
      {
        CentauriTransport::setBootTimestamp(a1, "memswapHandOffStart");
        v38 = CentauriTransport::handOffMemswapRegions(a1, v64);
        if (v38)
        {
          CentauriTransport::setBootTimestamp(a1, "memswapHandOffEnd");
          goto LABEL_52;
        }

        v57 = ACFULogging::getLogInstance(v38);
        ACFULogging::handleMessage(v57, 2, "%s::%s: failed to hand off memswap regions\n");
      }
    }

    else
    {
      v54 = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(v54, 2, "%s::%s: failed to get original secondary ftab header\n");
    }

    v25 = 3000;
  }

  else
  {
    v25 = 3027;
  }

LABEL_53:
  if (SecondaryFtab)
  {
    CentauriTransport::destroySecondaryFtab(a1, SecondaryFtab);
  }

  if (v23)
  {
    goto LABEL_56;
  }

LABEL_57:
  CentauriTransport::closeBootDriver(a1);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v65, v65[1]);
  return v25;
}

void sub_299E8D968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v30 - 88, *(v30 - 80));
  _Unwind_Resume(a1);
}

void CentauriTransport::bootModeToString(int a1@<W0>, std::string *a2@<X8>)
{
  v17[3] = *MEMORY[0x29EDCA608];
  v11 = a1;
  v12 = 0;
  std::string::basic_string[abi:ne200100]<0>(v13, "normal");
  v14 = 1;
  std::string::basic_string[abi:ne200100]<0>(v15, "low power");
  v16 = 2;
  std::string::basic_string[abi:ne200100]<0>(v17, "remote");
  std::map<CentauriTransport::BootMode,std::string>::map[abi:ne200100](&v9, &v12, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v17[i + 2]) < 0)
    {
      operator delete(v17[i]);
    }
  }

  v5 = v10[0];
  if (!v10[0])
  {
    goto LABEL_12;
  }

  v6 = v10;
  do
  {
    if (*(v5 + 8) >= a1)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) < a1)];
  }

  while (v5);
  if (v6 != v10 && *(v6 + 8) <= a1)
  {
    v7 = std::map<CentauriTransport::BootMode,std::string>::at(&v9, &v11);
    if (*(v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      a2->__r_.__value_.__r.__words[2] = v7[2];
      *&a2->__r_.__value_.__l.__data_ = v8;
    }
  }

  else
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v9, v10[0]);
}

void sub_299E8DB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
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

uint64_t CentauriTransport::tagForBootMode(int a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v9 = a1;
  v10[0] = xmmword_29F290620;
  v10[1] = unk_29F290630;
  v10[2] = xmmword_29F290640;
  std::map<CentauriTransport::BootMode,__CFString const*>::map[abi:ne200100](&v7, v10, 3);
  v2 = v8[0];
  if (!v8[0])
  {
    goto LABEL_8;
  }

  v3 = v8;
  v4 = v8[0];
  do
  {
    if (*(v4 + 32) >= a1)
    {
      v3 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a1));
  }

  while (v4);
  if (v3 != v8 && *(v3 + 8) <= a1)
  {
    v5 = *std::map<CentauriTransport::BootMode,std::string>::at(&v7, &v9);
    v2 = v8[0];
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(&v7, v2);
  return v5;
}

void sub_299E8DCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void **);
  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(va, v8);
  _Unwind_Resume(a1);
}

void *std::map<__CFString const*,std::string>::at(uint64_t a1, unint64_t *a2)
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
      v4 = v2[4];
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

void CentauriTransport::setBootTimestamp(CFMutableDictionaryRef *this, const char *a2)
{
  valuePtr = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], a2, 0x8000100u);
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    CFDictionaryAddValue(this[13], v4, v5);
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 4, "%s::%s: added key: %s, value: %llu\n", "CentauriTransport", "setBootTimestamp", a2, valuePtr);
LABEL_6:
    CFRelease(v4);
    goto LABEL_7;
  }

  v10 = ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage(v10, 2, "%s::%s: failed to create key and/or value\n", "CentauriTransport", "setBootTimestamp");
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t CentauriTransport::setBootFlags(ACFULogging *a1, int a2)
{
  v12 = a2;
  v11 = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: setting boot flags to 0x%x\n", "CentauriTransport", "setBootFlags", a2);
  v5 = CentauriTransport::writeRegister(a1, 5, &v12, 4);
  if ((v5 & 1) == 0)
  {
    CentauriTransport::setBootFlags(v5);
    return 0;
  }

  Register = CentauriTransport::readRegister(a1, 5, &v11, 4);
  if ((Register & 1) == 0)
  {
    CentauriTransport::setBootFlags(Register);
    return 0;
  }

  v7 = v11;
  v8 = v12;
  v9 = ACFULogging::getLogInstance(Register);
  if (v7 != v8)
  {
    ACFULogging::handleMessage(v9, 2, "%s::%s: boot flags read back (0x%08x) don't match boot flags written (0x%08x)\n", "CentauriTransport", "setBootFlags", v7, v8);
    return 0;
  }

  ACFULogging::handleMessage(v9, 0, "%s::%s: successfully set boot flags to 0x%x\n", "CentauriTransport", "setBootFlags", v7);
  return 1;
}

uint64_t CentauriTransport::bootFlagsForBootMode(int a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v9 = a1;
  v10 = xmmword_299EA1DF0;
  v11 = 0x100000002;
  std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::map[abi:ne200100](&v7, &v10, 3);
  v2 = v8[0];
  if (!v8[0])
  {
    goto LABEL_8;
  }

  v3 = v8;
  v4 = v8[0];
  do
  {
    if (*(v4 + 28) >= a1)
    {
      v3 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < a1));
  }

  while (v4);
  if (v3 != v8 && *(v3 + 7) <= a1)
  {
    v5 = *std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::at(&v7, &v9);
    v2 = v8[0];
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(&v7, v2);
  return v5;
}

void sub_299E8E060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void **);
  std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(va, v8);
  _Unwind_Resume(a1);
}

uint64_t CentauriTransport::setHostPlatformIdentifier(CentauriTransport *this, int a2)
{
  v12 = a2;
  v11 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: setting host platform identifier to 0x%08x\n", "CentauriTransport", "setHostPlatformIdentifier", a2);
  v5 = CentauriTransport::writeRegister(this, 7, &v12, 4);
  if ((v5 & 1) == 0)
  {
    CentauriTransport::setHostPlatformIdentifier(v5);
    return 0;
  }

  Register = CentauriTransport::readRegister(this, 7, &v11, 4);
  if ((Register & 1) == 0)
  {
    CentauriTransport::setHostPlatformIdentifier(Register);
    return 0;
  }

  v7 = v11;
  v8 = v12;
  v9 = ACFULogging::getLogInstance(Register);
  if (v7 != v8)
  {
    ACFULogging::handleMessage(v9, 2, "%s::%s: host platform identifier read back (0x%08x) doesn't match host platform identifier written (0x%08x)\n", "CentauriTransport", "setHostPlatformIdentifier", v7, v8);
    return 0;
  }

  ACFULogging::handleMessage(v9, 0, "%s::%s: successfully set host platform identifier to 0x%08x\n", "CentauriTransport", "setHostPlatformIdentifier", v7);
  return 1;
}

uint64_t CentauriTransport::sendImage(ACFULogging *a1, ACFUFirmware **a2, uint64_t a3)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v6 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: preparing to send an image\n", "CentauriTransport", "sendImage");
  if (!*(a1 + 4))
  {
    CentauriTransport::sendImage(v6);
    return 0;
  }

  v7 = ACFUFirmware::copyFWContainer(*a2);
  if (!v7)
  {
    CentauriTransport::sendImage(0);
    return 0;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  TypeID = CFDataGetTypeID();
  if (v9 != TypeID)
  {
    CentauriTransport::sendImage(TypeID);
LABEL_19:
    v25 = 0;
    goto LABEL_11;
  }

  Length = CFDataGetLength(v8);
  v12 = Length;
  if (!Length)
  {
    CentauriTransport::sendImage(Length);
    goto LABEL_19;
  }

  v13 = (Length + 4095) & 0xFFFFF000;
  v14 = ACFULogging::getLogInstance(Length);
  ACFULogging::handleMessage(v14, 3, "%s::%s: image size %u -> %u\n", "CentauriTransport", "sendImage", v12, v13);
  v15 = airship_ch_boot_image_buffer_create();
  if (!v15)
  {
    CentauriTransport::sendImage(0);
    goto LABEL_19;
  }

  v16 = v15;
  size = airship_ch_boot_image_buffer_get_size();
  v18 = ACFULogging::getLogInstance(size);
  if (size < v13)
  {
    ACFULogging::handleMessage(v18, 2, "%s::%s: image buffer is smaller than requested size (%u < %u)\n");
LABEL_23:
    v25 = 0;
    goto LABEL_10;
  }

  ACFULogging::handleMessage(v18, 4, "%s::%s: allocated image buffer of size %u\n", "CentauriTransport", "sendImage", size);
  v19 = MEMORY[0x29C2B4800](v16);
  if (!v19)
  {
    CentauriTransport::sendImage(0);
    goto LABEL_23;
  }

  v20 = v19;
  v27.length = v12;
  v27.location = 0;
  CFDataGetBytes(v8, v27, v19);
  bzero(&v20[v12], size - v12);
  v22 = ACFULogging::getLogInstance(v21);
  ACFULogging::handleMessage(v22, 3, "%s::%s: sending image\n", "CentauriTransport", "sendImage");
  v23 = airship_ch_boot_send_image();
  v24 = ACFULogging::getLogInstance(v23);
  if (v23)
  {
    ACFULogging::handleMessage(v24, 2, "%s::%s: failed to send image: 0x%08x: out code 0x%08x\n");
    goto LABEL_23;
  }

  ACFULogging::handleMessage(v24, 0, "%s::%s: successfully sent image: out code 0x%08x\n", "CentauriTransport", "sendImage", 0);
  v25 = 1;
LABEL_10:
  airship_ch_boot_image_buffer_destroy();
LABEL_11:
  CFRelease(v8);
  return v25;
}

uint64_t CentauriTransport::getSecondStageOpenTimeout(CentauriTransport *this)
{
  if (*(this + 96))
  {
    return CentauriTransport::kTimeouts[6 * *(this + 20) + 2] + 65000;
  }

  else
  {
    return CentauriTransport::kTimeouts[6 * *(this + 20) + 2];
  }
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
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
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t CentauriTransport::openControlDriver(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: opening control driver\n", "CentauriTransport", "openControlDriver");
  if (*(this + 11))
  {
    CentauriTransport::openControlDriver(v3);
    return 1;
  }

  v4 = CentauriControllerCreateWithParameters();
  if (!v4 && *(this + 11))
  {
    v5 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v5, 0, "%s::%s: successfully opened control driver\n", "CentauriTransport", "openControlDriver");
    return 1;
  }

  CentauriTransport::openControlDriver(v4, this);
  return 0;
}

UInt8 *CentauriTransport::createSecondaryFtab(ACFULogging *a1, ACFUFTABFile *a2, uint64_t a3)
{
  buffer = 0;
  v65 = 0;
  if (a3)
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  v7 = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: parsing secondary ftab header in primary ftab\n", "CentauriTransport", "createSecondaryFtab");
  if (!*(a1 + 11))
  {
    v9 = "%s::%s: control driver not open\n";
    goto LABEL_42;
  }

  v9 = "%s::%s: bad parameter\n";
  if (!a2 || !a3)
  {
LABEL_42:
    v51 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v51, 2, v9, "CentauriTransport", "createSecondaryFtab");
    if (!a3)
    {
      return 0;
    }

LABEL_45:
    v46 = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return v46;
  }

  v10 = ACFUFTABFile::createFromHeader(__p, a2, v8);
  v11 = __p[0];
  if (!__p[0])
  {
    CentauriTransport::createSecondaryFtab(v10);
    goto LABEL_45;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mswc");
  FileOffsetByFileName = ACFUFTABFile::getFileOffsetByFileName();
  v13 = v63;
  v14 = v64;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v14 & 1) == 0)
  {
    v52 = ACFULogging::getLogInstance(FileOffsetByFileName);
    ACFULogging::handleMessage(v52, 2, "%s::%s: failed to get offset for subsystem 0 memswap section\n");
LABEL_52:
    v46 = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    goto LABEL_35;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mswc");
  v15 = (*(*v11 + 32))(v11, __p);
  v16 = v15;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v16)
  {
    v53 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v53, 2, "%s::%s: failed to get size for subsystem 0 memswap section\n");
    goto LABEL_52;
  }

  *a3 = v13;
  *(a3 + 8) = v16;
  std::string::basic_string[abi:ne200100]<0>(__p, "msww");
  v17 = ACFUFTABFile::getFileOffsetByFileName();
  v18 = v63;
  v19 = v64;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v19 & 1) == 0)
  {
    v54 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v54, 2, "%s::%s: failed to get offset for subsystem 1 memswap section\n");
    goto LABEL_52;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "msww");
  v20 = (*(*v11 + 32))(v11, __p);
  v21 = v20;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v21)
  {
    v55 = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(v55, 2, "%s::%s: failed to get size for subsystem 1 memswap section\n");
    goto LABEL_52;
  }

  *(a3 + 16) = v18;
  *(a3 + 24) = v21;
  std::string::basic_string[abi:ne200100]<0>(__p, "mswb");
  v22 = ACFUFTABFile::getFileOffsetByFileName();
  v23 = v63;
  v24 = v64;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v24 & 1) == 0)
  {
    v56 = ACFULogging::getLogInstance(v22);
    ACFULogging::handleMessage(v56, 2, "%s::%s: failed to get offset for subsystem 2 memswap section\n");
    goto LABEL_52;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mswb");
  v25 = (*(*v11 + 32))(v11, __p);
  v26 = v25;
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v26)
  {
    v57 = ACFULogging::getLogInstance(v25);
    ACFULogging::handleMessage(v57, 2, "%s::%s: failed to get size for subsystem 2 memswap section\n");
    goto LABEL_52;
  }

  *(a3 + 32) = v23;
  *(a3 + 40) = v26;
  v27 = ACFULogging::getLogInstance(v25);
  v28 = ACFULogging::handleMessage(v27, 4, "%s::%s: memswap sections in secondary ftab:\n", "CentauriTransport", "createSecondaryFtab");
  v29 = ACFULogging::getLogInstance(v28);
  v30 = ACFULogging::handleMessage(v29, 4, "%s::%s:     subsystem 0: offset %llu, size %u\n", "CentauriTransport", "createSecondaryFtab", *a3, *(a3 + 8));
  v31 = ACFULogging::getLogInstance(v30);
  v32 = ACFULogging::handleMessage(v31, 4, "%s::%s:     subsystem 1: offset %llu, size %u\n", "CentauriTransport", "createSecondaryFtab", *(a3 + 16), *(a3 + 24));
  v33 = ACFULogging::getLogInstance(v32);
  ACFULogging::handleMessage(v33, 4, "%s::%s:     subsystem 2: offset %llu, size %u\n", "CentauriTransport", "createSecondaryFtab", *(a3 + 32), *(a3 + 40));
  TypeID = (*(*v11 + 40))(v11);
  v35 = TypeID;
  if (TypeID && (v36 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v36 == TypeID))
  {
    Length = CFDataGetLength(v35);
    v38 = Length;
    if (Length <= 0)
    {
      v58 = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(v58, 2, "%s::%s: failed to get data length\n", "CentauriTransport", "createSecondaryFtab");
    }

    else if (HIDWORD(Length))
    {
      v59 = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(v59, 2, "%s::%s: data length too large: %ld\n", "CentauriTransport", "createSecondaryFtab", v38);
    }

    else
    {
      v39 = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(v39, 3, "%s::%s: requesting buffer of size %u\n", "CentauriTransport", "createSecondaryFtab", v38);
      SecondaryMemory = CentauriControllerAllocateSecondaryMemory();
      v41 = SecondaryMemory;
      if (!SecondaryMemory)
      {
        v42 = CentauriControllerMapSecondaryMemory();
        v43 = v42;
        if (!v42 && buffer && v38 == v65)
        {
          v67.length = CFDataGetLength(v35);
          v67.location = 0;
          CFDataGetBytes(v35, v67, buffer);
          v45 = ACFULogging::getLogInstance(v44);
          ACFULogging::handleMessage(v45, 3, "%s::%s: successfully created secondary ftab\n", "CentauriTransport", "createSecondaryFtab");
        }

        else
        {
          v48 = ACFULogging::getLogInstance(v42);
          ACFULogging::handleMessage(v48, 2, "%s::%s: failed to map memory: 0x%08x\n", "CentauriTransport", "createSecondaryFtab", v43);
          v49 = buffer;
          *a3 = 0u;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          if (v49)
          {
            CentauriTransport::destroySecondaryFtab(a1, v49);
            buffer = 0;
          }
        }

        goto LABEL_34;
      }

      v60 = ACFULogging::getLogInstance(SecondaryMemory);
      ACFULogging::handleMessage(v60, 2, "%s::%s: failed to allocate secondary memory: 0x%08x\n", "CentauriTransport", "createSecondaryFtab", v41);
    }

    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    v50 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v50, 2, "%s::%s: failed to copy firmware container\n", "CentauriTransport", "createSecondaryFtab");
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    if (!v35)
    {
      v46 = 0;
      goto LABEL_35;
    }
  }

LABEL_34:
  CFRelease(v35);
  v46 = buffer;
LABEL_35:
  (*(*v11 + 56))(v11);
  return v46;
}

void sub_299E8EAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  (*(*v18 + 56))(v18, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t CentauriTransport::handOffMemswapRegions(ACFULogging *a1, uint64_t a2)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: handing off memswap regions to control driver\n", "CentauriTransport", "handOffMemswapRegions");
  if (*(a1 + 11))
  {
    v4 = CentauriControllerSetMemSwapRegions();
    v5 = ACFULogging::getLogInstance(v4);
    if (!v4)
    {
      ACFULogging::handleMessage(v5, 3, "%s::%s: successfully handed off memswap regions\n", "CentauriTransport", "handOffMemswapRegions");
      return 1;
    }

    ACFULogging::handleMessage(v5, 2, "%s::%s: failed to set mem swap regions: 0x%08x\n", "CentauriTransport", "handOffMemswapRegions", v4);
  }

  else
  {
    CentauriTransport::handOffMemswapRegions(0);
  }

  return 0;
}

ACFULogging *CentauriTransport::destroySecondaryFtab(CentauriTransport *this, unsigned __int8 *a2)
{
  if (!*(this + 11))
  {
    return CentauriTransport::destroySecondaryFtab(0);
  }

  result = CentauriControllerUnmapSecondaryMemory();
  if (result)
  {
    return CentauriTransport::destroySecondaryFtab(result);
  }

  return result;
}

uint64_t CentauriTransport::reset(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "reset");
  if (*(this + 20))
  {
    CentauriTransport::reset(v3);
    return 0;
  }

  v4 = CentauriTransport::openControlDriver(this);
  if (v4)
  {
    v5 = CentauriControllerReset();
    v6 = ACFULogging::getLogInstance(v5);
    if (!v5)
    {
      ACFULogging::handleMessage(v6, 0, "%s::%s: success\n", "CentauriTransport", "reset");
      return 0;
    }

    ACFULogging::handleMessage(v6, 2, "%s::%s: failed to reset chip: 0x%08x\n", "CentauriTransport", "reset", v5);
  }

  else
  {
    CentauriTransport::reset(v4);
  }

  return 3014;
}

uint64_t CentauriTransport::pingCheck(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "pingCheck");
  if ((*(this + 24) & 1) == 0)
  {
    CentauriTransport::pingCheck(v3);
    return 0;
  }

  CentauriTransport::setBootTimestamp(this, "openCCHIStart");
  v4 = CentauriTransport::openInterfaceDriver(this);
  if ((v4 & 1) == 0)
  {
    CentauriTransport::pingCheck(v4);
    return 3003;
  }

  CentauriTransport::setBootTimestamp(this, "openCCHIEnd");
  v5 = *MEMORY[0x29EDB8ED8];
  v6 = CFDataCreate(*MEMORY[0x29EDB8ED8], "CentauriTransport", 18);
  if (!v6)
  {
    CentauriTransport::pingCheck(0);
    return 3003;
  }

  v7 = v6;
  CentauriTransport::setBootTimestamp(this, "ccpuPingStart");
  v8 = CentauriTransport::sendCCHICommand(this, v7, 0, 0);
  if (!v8)
  {
    CFRelease(v7);
    return 3003;
  }

  v9 = v8;
  Length = CFDataGetLength(v8);
  if (Length <= 0)
  {
    CentauriTransport::pingCheck(Length);
    v13 = 0;
  }

  else
  {
    CentauriTransport::setBootTimestamp(this, "ccpuPingEnd");
    BytePtr = CFDataGetBytePtr(v9);
    v12 = CFDataGetLength(v9);
    v13 = CFStringCreateWithBytes(v5, BytePtr, v12, 0x8000100u, 0);
    v14 = ACFULogging::getLogInstance(v13);
    v16 = v14;
    if (v13)
    {
      ACFUCommon::stringFromCFString(__p, v13, v15);
      if (v21 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      ACFULogging::handleMessage(v16, 0, "%s::%s: success: '%s'\n", "CentauriTransport", "pingCheck", v17);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      v18 = 0;
      goto LABEL_13;
    }

    ACFULogging::handleMessage(v14, 2, "%s::%s: failed to create hello response\n", "CentauriTransport", "pingCheck");
  }

  v18 = 3003;
LABEL_13:
  CFRelease(v7);
  CFRelease(v9);
  if (v13)
  {
    CFRelease(v13);
  }

  return v18;
}

void sub_299E8EF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriTransport::getDebugInfo(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "getDebugInfo");
  if ((*(a1 + 97) & 1) == 0)
  {
    v8 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v8, 0, "%s::%s: log collection disabled\n", "CentauriTransport", "getDebugInfo");
    return 0;
  }

  v4 = CentauriTransport::openControlDriver(a1);
  if ((v4 & 1) == 0)
  {
    CentauriTransport::getDebugInfo(v4);
    return 1;
  }

  v5 = CentauriControllerCollectLogsWithOptions();
  if (v5)
  {
    CentauriTransport::getDebugInfo(v5);
    return 1;
  }

  __ns.__rep_ = 10000000000;
  std::this_thread::sleep_for (&__ns);
  Crashlogs = CentauriControllerGetCrashlogs();
  if (Crashlogs != -536870160)
  {
    v7 = Crashlogs;
    if (Crashlogs)
    {
      v11 = ACFULogging::getLogInstance(Crashlogs);
      ACFULogging::handleMessage(v11, 2, "%s::%s: failed to get crashlogs: 0x%08x\n", "CentauriTransport", "getDebugInfo", v7);
    }

    else
    {
      CentauriTransport::getDebugInfo(Crashlogs);
    }

    return 1;
  }

  v10 = ACFULogging::getLogInstance(Crashlogs);
  ACFULogging::handleMessage(v10, 0, "%s::%s: no crashlogs found\n", "CentauriTransport", "getDebugInfo");
  return 0;
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to open control driver\n", "CentauriTransport", "getDebugInfo");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: get crashlogs returned success but no crashlogs\n", "CentauriTransport", "getDebugInfo");
}

void CentauriTransport::parseCrashlogs(CentauriTransport *this, CFArrayRef theArray)
{
  v73[3] = *MEMORY[0x29EDCA608];
  v73[0] = "Crashlog.CTRL.bin";
  v73[1] = "Crashlog.WFMAIN.bin";
  v73[2] = "Crashlog.BTMAIN.bin";
  valuePtr = 0;
  memset(&v71, 0, sizeof(v71));
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_87;
  }

  v63 = Count;
  v3 = 0;
  v4 = 0;
  v66 = 0;
  v67 = 0;
  alloc = *MEMORY[0x29EDB8ED8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
    v6 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v7 = CFGetTypeID(ValueAtIndex);
      TypeID = CFDictionaryGetTypeID();
      if (v7 == TypeID)
      {
        v9 = v67;
        if (v67 || (v9 = CFStringCreateWithCString(alloc, "Metadata", 0x8000100u)) != 0)
        {
          v67 = v9;
          Value = CFDictionaryGetValue(v6, v9);
          v11 = Value;
          if (Value)
          {
            v12 = CFGetTypeID(Value);
            v13 = CFDictionaryGetTypeID();
            if (v12 == v13)
            {
              v14 = v66;
              if (v66 || (v14 = CFStringCreateWithCString(alloc, "SubsystemID", 0x8000100u)) != 0)
              {
                v66 = v14;
                v15 = CFDictionaryGetValue(v11, v14);
                v16 = v15;
                if (v15)
                {
                  v17 = CFGetTypeID(v15);
                  v18 = CFNumberGetTypeID();
                  if (v17 == v18)
                  {
                    v19 = CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
                    if (v19)
                    {
                      v20 = valuePtr;
                      if (valuePtr >= 3)
                      {
                        LogInstance = ACFULogging::getLogInstance(v19);
                        ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid subsystem ID %u at index %zu\n", "CentauriTransport", "parseCrashlogs", valuePtr, v3);
                      }

                      else
                      {
                        if (v4)
                        {
                          CFRelease(v4);
                          v20 = valuePtr;
                        }

                        v4 = CFStringCreateWithCString(alloc, v73[v20], 0x8000100u);
                        if (v4)
                        {
                          v21 = CFDictionaryGetValue(v6, v4);
                          v22 = v21;
                          if (v21)
                          {
                            v23 = CFGetTypeID(v21);
                            v24 = CFDataGetTypeID();
                            if (v23 == v24)
                            {
                              Length = CFDataGetLength(v22);
                              v26 = Length;
                              if (Length <= 0)
                              {
                                v55 = ACFULogging::getLogInstance(Length);
                                ACFULogging::handleMessage(v55, 2, "%s::%s: %s: %s empty\n");
                              }

                              else if (Length <= 0x50)
                              {
                                v56 = ACFULogging::getLogInstance(Length);
                                ACFULogging::handleMessage(v56, 2, "%s::%s: %s: %s too small: %zu bytes\n", "CentauriTransport", "parseCrashlogs", (&off_29F290608)[valuePtr], v73[valuePtr], v26);
                              }

                              else
                              {
                                BytePtr = CFDataGetBytePtr(v22);
                                v28 = BytePtr;
                                if (BytePtr)
                                {
                                  if (LODWORD(BytePtr->__r_.__value_.__l.__data_) == 1129072709)
                                  {
                                    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      v71.__r_.__value_.__l.__size_ = 0;
                                      v29 = v71.__r_.__value_.__r.__words[0];
                                    }

                                    else
                                    {
                                      *(&v71.__r_.__value_.__s + 23) = 0;
                                      v29 = &v71;
                                    }

                                    v29->__r_.__value_.__s.__data_[0] = 0;
                                    v30 = 32;
                                    while (1)
                                    {
                                      v31 = v28 + v30;
                                      v32 = *(&v28->__r_.__value_.__r.__words[1] + v30 + 4);
                                      if (v32 <= 0xF)
                                      {
                                        v40 = ACFULogging::getLogInstance(BytePtr);
                                        ACFULogging::handleMessage(v40, 2, "%s::%s: %s: section too small in %s\n", "CentauriTransport", "parseCrashlogs", (&off_29F290608)[valuePtr], v73[valuePtr]);
                                        goto LABEL_58;
                                      }

                                      if (*v31 == 1131639922)
                                      {
                                        if (*(v31 + 2) != 257)
                                        {
                                          v41 = ACFULogging::getLogInstance(BytePtr);
                                          ACFULogging::handleMessage(v41, 2, "%s::%s: %s: section version mismatch in %s: expected 0x%x, found 0x%x\n", "CentauriTransport", "parseCrashlogs", (&off_29F290608)[valuePtr], v73[valuePtr], 257, *(v31 + 2));
                                          goto LABEL_58;
                                        }

                                        if (v30 + v32 + 32 > v26)
                                        {
                                          v42 = ACFULogging::getLogInstance(BytePtr);
                                          ACFULogging::handleMessage(v42, 2, "%s::%s: %s: section too large in %s: offset %zu, section size %u, total size %zu\n", "CentauriTransport", "parseCrashlogs", (&off_29F290608)[valuePtr], v73[valuePtr], v30, *(v31 + 3), v26);
                                          goto LABEL_58;
                                        }

                                        if (v32 <= 0x14)
                                        {
                                          v43 = ACFULogging::getLogInstance(BytePtr);
                                          ACFULogging::handleMessage(v43, 2, "%s::%s: %s: string section too small in %s: %u bytes\n", "CentauriTransport", "parseCrashlogs", (&off_29F290608)[valuePtr], v73[valuePtr], *(v31 + 3));
                                          goto LABEL_58;
                                        }

                                        if (v31[16])
                                        {
                                          break;
                                        }
                                      }

LABEL_56:
                                      v30 += v32;
                                      if (v30 + 48 >= v26)
                                      {
                                        v39 = ACFULogging::getLogInstance(BytePtr);
                                        ACFULogging::handleMessage(v39, 0, "%s::%s: %s: '%s'\n");
                                        goto LABEL_58;
                                      }
                                    }

                                    size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
                                    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                    {
                                      size = v71.__r_.__value_.__l.__size_;
                                    }

                                    if (size)
                                    {
                                      std::string::append(&v71, "-", 1uLL);
                                      v32 = *(v31 + 3);
                                    }

                                    v34 = v32 - 20;
                                    if ((v32 - 20) >= 0x7FFFFFFFFFFFFFF8)
                                    {
                                      std::string::__throw_length_error[abi:ne200100]();
                                    }

                                    if (v34 >= 0x17)
                                    {
                                      if ((v34 | 7) == 0x17)
                                      {
                                        v36 = 25;
                                      }

                                      else
                                      {
                                        v36 = (v34 | 7) + 1;
                                      }

                                      p_dst = operator new(v36);
                                      v69 = v34;
                                      v70 = v36 | 0x8000000000000000;
                                      __dst = p_dst;
                                    }

                                    else
                                    {
                                      HIBYTE(v70) = v32 - 20;
                                      p_dst = &__dst;
                                      if (v32 == 20)
                                      {
                                        goto LABEL_47;
                                      }
                                    }

                                    memmove(p_dst, v31 + 20, v34);
LABEL_47:
                                    *(p_dst + v34) = 0;
                                    if (v70 >= 0)
                                    {
                                      v37 = &__dst;
                                    }

                                    else
                                    {
                                      v37 = __dst;
                                    }

                                    if (v70 >= 0)
                                    {
                                      v38 = HIBYTE(v70);
                                    }

                                    else
                                    {
                                      v38 = v69;
                                    }

                                    BytePtr = std::string::append(&v71, v37, v38);
                                    if (SHIBYTE(v70) < 0)
                                    {
                                      operator delete(__dst);
                                    }

                                    v32 = *(v31 + 3);
                                    goto LABEL_56;
                                  }

                                  v58 = ACFULogging::getLogInstance(BytePtr);
                                  ACFULogging::handleMessage(v58, 2, "%s::%s: %s: %s invalid\n");
                                }

                                else
                                {
                                  v57 = ACFULogging::getLogInstance(0);
                                  ACFULogging::handleMessage(v57, 2, "%s::%s: %s: failed to get %s ptr\n");
                                }
                              }
                            }

                            else
                            {
                              v54 = ACFULogging::getLogInstance(v24);
                              ACFULogging::handleMessage(v54, 2, "%s::%s: %s: %s has wrong type\n");
                            }
                          }

                          else
                          {
                            v53 = ACFULogging::getLogInstance(0);
                            ACFULogging::handleMessage(v53, 0, "%s::%s: %s: %s not found\n");
                          }
                        }

                        else
                        {
                          v52 = ACFULogging::getLogInstance(0);
                          ACFULogging::handleMessage(v52, 2, "%s::%s: %s: failed to create crashlog name\n", "CentauriTransport", "parseCrashlogs", (&off_29F290608)[valuePtr]);
                          v4 = 0;
                        }
                      }
                    }

                    else
                    {
                      v50 = ACFULogging::getLogInstance(v19);
                      ACFULogging::handleMessage(v50, 2, "%s::%s: failed to convert subsystem ID at index %zu\n");
                    }
                  }

                  else
                  {
                    v49 = ACFULogging::getLogInstance(v18);
                    ACFULogging::handleMessage(v49, 2, "%s::%s: subsystem ID at index %zu has wrong type\n");
                  }
                }

                else
                {
                  v48 = ACFULogging::getLogInstance(0);
                  ACFULogging::handleMessage(v48, 2, "%s::%s: no subsystem ID at index %zu\n");
                }
              }

              else
              {
                v60 = ACFULogging::getLogInstance(0);
                ACFULogging::handleMessage(v60, 2, "%s::%s: failed to create subsystem id key\n", "CentauriTransport", "parseCrashlogs");
                v66 = 0;
              }
            }

            else
            {
              v47 = ACFULogging::getLogInstance(v13);
              ACFULogging::handleMessage(v47, 2, "%s::%s: metadata at index %zu has wrong type\n");
            }
          }

          else
          {
            v46 = ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage(v46, 2, "%s::%s: no metadata at index %zu\n");
          }
        }

        else
        {
          v59 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v59, 2, "%s::%s: failed to create metadata key\n", "CentauriTransport", "parseCrashlogs");
          v67 = 0;
        }
      }

      else
      {
        v45 = ACFULogging::getLogInstance(TypeID);
        ACFULogging::handleMessage(v45, 2, "%s::%s: info at index %zu has wrong type\n");
      }
    }

    else
    {
      v44 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v44, 2, "%s::%s: null info at index %zu\n");
    }

LABEL_58:
    ++v3;
  }

  while (v3 != v63);
  v62 = v66;
  v61 = v67;
  if (v4)
  {
    CFRelease(v4);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v61)
  {
    CFRelease(v61);
  }

LABEL_87:
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }
}

void sub_299E8F92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFData *CentauriTransport::runCertification@<X0>(CentauriTransport *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    result = CentauriTransport::copySiKPublicKey(a1);
  }

  else if (a2)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: unknown sikBlobType: %u\n", "CentauriTransport", "runCertification", a2);
    result = 0;
  }

  else
  {
    result = CentauriTransport::copySiKCertificateSigningRequest(a1);
  }

  if (result)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1011;
  }

  *a3 = result;
  *(a3 + 8) = v7;
  return result;
}

const __CFData *CentauriTransport::copySiKPublicKey(CentauriTransport *this)
{
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "copySiKPublicKey");
  v3 = CentauriTransport::openInterfaceDriver(this);
  if ((v3 & 1) == 0)
  {
    v11 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v11, 2, "%s::%s: failed to open interface driver\n", "CentauriTransport", "copySiKPublicKey");
    return 0;
  }

  v4 = CentauriTransport::sendCCHICommand(this, 0, 0, 5u);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  Length = CFDataGetLength(v4);
  if (Length <= 0)
  {
    v12 = ACFULogging::getLogInstance(Length);
    ACFULogging::handleMessage(v12, 2, "%s::%s: no response payload\n", "CentauriTransport", "copySiKPublicKey");
    CFRelease(v5);
    return 0;
  }

  v7 = ACFUCommon::hexStringFromCFData(&v13, v5, 0);
  *__p = v13;
  v16 = v14;
  v8 = ACFULogging::getLogInstance(v7);
  v9 = __p;
  if (v16 < 0)
  {
    v9 = __p[0];
  }

  ACFULogging::handleMessage(v8, 0, "%s::%s: success: %s\n", "CentauriTransport", "copySiKPublicKey", v9);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_299E8FB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CentauriTransport::sendBootTimestamps(CentauriTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriTransport", "sendBootTimestamps");
  v2 = CentauriControllerSendBootTimestamps();
  v3 = v2;
  if (v2)
  {
    CentauriTransport::sendBootTimestamps(v2);
  }

  return v3 == 0;
}

void CentauriTransport::~CentauriTransport(std::__shared_weak_count **this)
{
  *this = &unk_2A2023AE8;
  CentauriTransport::closeInterfaceDriver(this);
  CentauriTransport::closeBootDriver(this);
  CentauriTransport::closeControlDriver(this);
  v2 = this[13];
  if (v2)
  {
    CFRelease(v2);
    this[13] = 0;
  }

  v3 = this[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2A1C5F0F8](this);
}

{
  CentauriTransport::~CentauriTransport(this);

  operator delete(v1);
}

ACFULogging *CentauriTransport::closeInterfaceDriver(ACFULogging *this)
{
  if (*(this + 6))
  {
    v1 = this;
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: closing interface driver\n", "CentauriTransport", "closeInterfaceDriver");
    MEMORY[0x29C2B4860](*(v1 + 6));
    v3 = airship_ch_interface_destroy();
    *(v1 + 6) = 0;
    v4 = ACFULogging::getLogInstance(v3);
    return ACFULogging::handleMessage(v4, 0, "%s::%s: interface driver closed\n", "CentauriTransport", "closeInterfaceDriver");
  }

  return this;
}

uint64_t CentauriTransport::closeControlDriver(uint64_t this)
{
  if (*(this + 88))
  {
    v1 = this;
    if ((*(this + 96) & 1) == 0)
    {
      LogInstance = ACFULogging::getLogInstance(this);
      ACFULogging::handleMessage(LogInstance, 3, "%s::%s: closing control driver\n", "CentauriTransport", "closeControlDriver");
      this = CentauriControllerFree();
      *(v1 + 88) = 0;
    }
  }

  return this;
}

uint64_t CentauriTransport::getPlatform(CentauriTransport *this)
{
  data_np = sysctlbyname_get_data_np();
  LogInstance = ACFULogging::getLogInstance(data_np);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get hw.model\n", "CentauriTransport", "getPlatform");
  return 3;
}

uint64_t CentauriTransport::parseDeviceBootArgs(CentauriTransport *this)
{
  v52 = *MEMORY[0x29EDCA608];
  v48 = 0;
  v49 = 0;
  data_np = sysctlbyname_get_data_np();
  if (data_np)
  {
    v2 = 1;
  }

  else
  {
    v2 = v49 == 0;
  }

  v3 = !v2;
  v37 = v3;
  if (v2)
  {
    LogInstance = ACFULogging::getLogInstance(data_np);
    v13 = 0;
    v39 = 0;
    v12 = 0;
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get boot-args\n", "CentauriTransport", "parseDeviceBootArgs");
    goto LABEL_41;
  }

  v4 = ACFULogging::getLogInstance(data_np);
  ACFULogging::handleMessage(v4, 3, "%s::%s: boot-args: %s\n", "CentauriTransport", "parseDeviceBootArgs", v49);
  v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v49];
  v6 = [v5 componentsSeparatedByString:@" "];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = v6;
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v9)
  {
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v8 |= [*(*(&v44 + 1) + 8 * i) isEqualToString:@"-restore"];
      }

      v9 = [v7 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v9);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = v7;
  v13 = 0;
  v14 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v14)
  {
    v39 = 0;
    v15 = *v41;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v40 + 1) + 8 * j) componentsSeparatedByString:@"="];

        v13 = v17;
        if ([v17 count] == 2)
        {
          v18 = [v17 objectAtIndexedSubscript:0];
          v19 = [v18 isEqualToString:@"centauri-second-stage"];

          if (v19)
          {
            v20 = [v13 objectAtIndexedSubscript:1];

            v39 = v20;
          }

          v21 = [v13 objectAtIndexedSubscript:0];
          v22 = [v21 isEqualToString:@"proxima-platform"];

          if (v22)
          {
            v23 = [v13 objectAtIndexedSubscript:1];
            v24 = [v23 intValue] == 3;

            if (v24)
            {
              v26 = ACFULogging::getLogInstance(v25);
              ACFULogging::handleMessage(v26, 0, "%s::%s: Overriding platform to FPGA due to %s boot-arg\n", "CentauriTransport", "parseDeviceBootArgs", [@"proxima-platform" UTF8String]);
              *(this + 20) = 1;
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v14);
  }

  else
  {
    v39 = 0;
  }

  if (v8)
  {
    v28 = *(this + 20);
    if (v28 == 2)
    {
      v30 = ACFULogging::getLogInstance(v27);
      v27 = ACFULogging::handleMessage(v30, 0, "%s::%s: Defaulting to disable second boot stage for simulator platform during restore - this is temporary\n");
    }

    else
    {
      if (v28 != 1)
      {
        goto LABEL_36;
      }

      v29 = ACFULogging::getLogInstance(v27);
      v27 = ACFULogging::handleMessage(v29, 0, "%s::%s: Defaulting to disable second boot stage for FPGA platform during restore\n");
    }

    *(this + 24) = 0;
  }

LABEL_36:
  if (v39)
  {
    v31 = ACFULogging::getLogInstance(v27);
    v32 = [v39 BOOLValue];
    v33 = [@"centauri-second-stage" UTF8String];
    v34 = "disabled";
    if (v32)
    {
      v34 = "enabled";
    }

    ACFULogging::handleMessage(v31, 0, "%s::%s: Overriding second boot stage to %s due to %s boot-arg\n", "CentauriTransport", "parseDeviceBootArgs", v34, v33);
    *(this + 24) = [v39 BOOLValue];
  }

  else
  {
    v39 = 0;
  }

LABEL_41:
  if (v49)
  {
    free(v49);
    v49 = 0;
  }

  return v37;
}

void CentauriTransport::platformToString(int a1@<W0>, std::string *a2@<X8>)
{
  v17[3] = *MEMORY[0x29EDCA608];
  v11 = a1;
  v12 = 0;
  std::string::basic_string[abi:ne200100]<0>(v13, "silicon");
  v14 = 1;
  std::string::basic_string[abi:ne200100]<0>(v15, "FPGA");
  v16 = 2;
  std::string::basic_string[abi:ne200100]<0>(v17, "simulator");
  std::map<CentauriTransport::Platform,std::string>::map[abi:ne200100](&v9, &v12, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v17[i + 2]) < 0)
    {
      operator delete(v17[i]);
    }
  }

  v5 = v10[0];
  if (!v10[0])
  {
    goto LABEL_12;
  }

  v6 = v10;
  do
  {
    if (*(v5 + 8) >= a1)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) < a1)];
  }

  while (v5);
  if (v6 != v10 && *(v6 + 8) <= a1)
  {
    v7 = std::map<CentauriTransport::BootMode,std::string>::at(&v9, &v11);
    if (*(v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      a2->__r_.__value_.__r.__words[2] = v7[2];
      *&a2->__r_.__value_.__l.__data_ = v8;
    }
  }

  else
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v9, v10[0]);
}

void sub_299E905F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
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

void CentauriTransport::bootStageToString(int a1@<W0>, std::string *a2@<X8>)
{
  v17[3] = *MEMORY[0x29EDCA608];
  v11 = a1;
  v12 = 0;
  std::string::basic_string[abi:ne200100]<0>(v13, "ROM");
  v14 = 1;
  std::string::basic_string[abi:ne200100]<0>(v15, "secondary boot");
  v16 = 2;
  std::string::basic_string[abi:ne200100]<0>(v17, "secondary lpm boot");
  std::map<airship_ch_boot_stage_id,std::string>::map[abi:ne200100](&v9, &v12, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v17[i + 2]) < 0)
    {
      operator delete(v17[i]);
    }
  }

  v5 = v10[0];
  if (!v10[0])
  {
    goto LABEL_12;
  }

  v6 = v10;
  do
  {
    if (*(v5 + 8) >= a1)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) < a1)];
  }

  while (v5);
  if (v6 != v10 && *(v6 + 8) <= a1)
  {
    v7 = std::map<CentauriTransport::BootMode,std::string>::at(&v9, &v11);
    if (*(v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v7, v7[1]);
    }

    else
    {
      v8 = *v7;
      a2->__r_.__value_.__r.__words[2] = v7[2];
      *&a2->__r_.__value_.__l.__data_ = v8;
    }
  }

  else
  {
LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(a2, "unknown");
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v9, v10[0]);
}

void sub_299E90830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
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

uint64_t CentauriTransport::writeRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32))
  {
    v4 = a4;
    v5 = a2;
    v6 = airship_ch_boot_write_register();
    if (!v6)
    {
      return 1;
    }

    v8 = v6;
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to write register %u (%u bytes): 0x%08x\n", "CentauriTransport", "writeRegister", v5, v4, v8);
  }

  else
  {
    CentauriTransport::writeRegister(0);
  }

  return 0;
}

uint64_t *std::map<CentauriTransport::BootMode,std::string>::at(uint64_t a1, int *a2)
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
      v4 = *(v2 + 8);
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

uint64_t *std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::at(uint64_t a1, int *a2)
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
      v4 = *(v2 + 7);
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
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    v6[1] = v7;
  }

  return result;
}

void sub_299E90A44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<__CFString const*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void *std::allocate_shared[abi:ne200100]<ACFUCommon::PersonalizeParams,std::allocator<ACFUCommon::PersonalizeParams>,std::vector<__CFString const*> const&,0>@<X0>(const void **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> const&,std::allocator<ACFUCommon::PersonalizeParams>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> const&,std::allocator<ACFUCommon::PersonalizeParams>,0>(void *a1, const void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2023B80;
  std::construct_at[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> const&,ACFUCommon::PersonalizeParams*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2023B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::construct_at[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> const&,ACFUCommon::PersonalizeParams*>(uint64_t a1, const void **a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(&__p, *a2, a2[1], (a2[1] - *a2) >> 3);
  MEMORY[0x29C2B41E0](a1, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_299E90D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_299E90DDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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
    }

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F290570, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

uint64_t **std::map<CentauriTransport::BootMode,std::string>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
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
      std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__construct_node<std::pair<CentauriTransport::BootMode const,std::string> const&>(a1, a4, v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8[0]);
    return v8[0];
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
    if (*(v10 + 8) < *a5)
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

  if (a4 != v5 && v6 >= *(a4 + 8))
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

void std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__construct_node<std::pair<CentauriTransport::BootMode const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
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

void sub_299E91224(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **std::map<CentauriTransport::BootMode,__CFString const*>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,__CFString const*> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,__CFString const*> const&>(uint64_t **a1, uint64_t *a2, int *a3, _OWORD *a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    *(v7 + 2) = *a4;
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

void std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(uint64_t a1, void **a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,__CFString const*>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,__CFString const*>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t **std::map<CentauriTransport::BootMode,CentauriTransport::BootFlags>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,CentauriTransport::BootFlags> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__emplace_hint_unique_key_args<CentauriTransport::BootMode,std::pair<CentauriTransport::BootMode const,CentauriTransport::BootFlags> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x28uLL);
    *(v7 + 28) = *a4;
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,CentauriTransport::BootFlags>>>::__find_equal<CentauriTransport::BootMode>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
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
    if (*(v10 + 7) < *a5)
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
          v18 = *(v16 + 28);
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

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
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

uint64_t **std::map<CentauriTransport::Platform,std::string>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
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
      std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::Platform,std::pair<CentauriTransport::Platform const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__emplace_hint_unique_key_args<CentauriTransport::Platform,std::pair<CentauriTransport::Platform const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__construct_node<std::pair<CentauriTransport::Platform const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void std::__tree<std::__value_type<CentauriTransport::Platform,std::string>,std::__map_value_compare<CentauriTransport::Platform,std::__value_type<CentauriTransport::Platform,std::string>,std::less<CentauriTransport::Platform>,true>,std::allocator<std::__value_type<CentauriTransport::Platform,std::string>>>::__construct_node<std::pair<CentauriTransport::Platform const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
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

void sub_299E91A34(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **std::map<airship_ch_boot_stage_id,std::string>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
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
      std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__emplace_hint_unique_key_args<airship_ch_boot_stage_id,std::pair<airship_ch_boot_stage_id const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__emplace_hint_unique_key_args<airship_ch_boot_stage_id,std::pair<airship_ch_boot_stage_id const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__find_equal<CentauriTransport::BootMode>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__construct_node<std::pair<airship_ch_boot_stage_id const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void std::__tree<std::__value_type<airship_ch_boot_stage_id,std::string>,std::__map_value_compare<airship_ch_boot_stage_id,std::__value_type<airship_ch_boot_stage_id,std::string>,std::less<airship_ch_boot_stage_id>,true>,std::allocator<std::__value_type<airship_ch_boot_stage_id,std::string>>>::__construct_node<std::pair<airship_ch_boot_stage_id const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
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

void sub_299E91BE0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void CentauriFirmware::create(uint64_t *a2@<X1>, RTKitFirmware **a3@<X8>)
{
  v5 = operator new(0x68uLL);
  RTKitFirmware::RTKitFirmware(v5);
  *v5 = &unk_2A2023BD0;
  *(v5 + 11) = 0;
  *(v5 + 12) = 0;
  *a3 = v5;
  CentauriCommon::getTatsuTagToFileNameMap(v10);
  v6 = RTKitFirmware::init();
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v10, v10[1]);
  if (v6)
  {
    v8 = *a2;
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(v5 + 12);
    *(v5 + 11) = v8;
    *(v5 + 12) = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    *a3 = 0;
    (*(*v5 + 56))(v5);
  }
}

void sub_299E91CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a10, a11);
  *v12 = 0;
  (*(*v11 + 56))(v11);
  _Unwind_Resume(a1);
}

void CentauriFirmware::CentauriFirmware(CentauriFirmware *this)
{
  RTKitFirmware::RTKitFirmware(this);
  *v1 = &unk_2A2023BD0;
  v1[11] = 0;
  v1[12] = 0;
}

void CentauriFirmware::createEmpty(ACFUCommon *a1@<X0>, uint64_t *a2@<X1>, RTKitFirmware **a3@<X8>)
{
  v6 = operator new(0x68uLL);
  RTKitFirmware::RTKitFirmware(v6);
  *v6 = &unk_2A2023BD0;
  *(v6 + 11) = 0;
  *(v6 + 12) = 0;
  *a3 = v6;
  CentauriCommon::getTatsuTagToFileNameMap(v15);
  URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(a1, @"/usr/standalone/firmware/Centauri/", v7);
  if (URLByAppendingStrings)
  {
    std::map<__CFString const*,std::string>::map[abi:ne200100](v14, v15);
    v9 = RTKitFirmware::init();
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v14, v14[1]);
    if (v9)
    {
      v11 = *a2;
      v10 = a2[1];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = *(v6 + 12);
      *(v6 + 11) = v11;
      *(v6 + 12) = v10;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    else
    {
      *a3 = 0;
      (*(*v6 + 56))(v6);
    }

    CFRelease(URLByAppendingStrings);
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create save path\n", "CentauriFirmware", "createEmpty");
    *a3 = 0;
    (*(*v6 + 56))(v6);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v15, v15[1]);
}

void sub_299E91F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char *a19)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v21 + 24, a16);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a18, a19);
  *v20 = 0;
  if (v19)
  {
    (*(*v19 + 56))(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t CentauriFirmware::setNVRAM(uint64_t a1, uint64_t a2)
{
  v75 = 0;
  v74 = 0;
  cf = 0;
  isCentauriBuiltin = CentauriPlatform::isCentauriBuiltin(&v75, a2);
  if ((isCentauriBuiltin & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(isCentauriBuiltin);
    v57 = "%s::%s: failed to determine whether Centauri is builtin\n";
    goto LABEL_85;
  }

  if (v75 == 1)
  {
    v6 = CentauriFirmware::copyRFEM(&v74, v5);
    if ((v6 & 1) == 0)
    {
      LogInstance = ACFULogging::getLogInstance(v6);
      v57 = "%s::%s: failed to copy RFEM\n";
      goto LABEL_85;
    }

    if (!v74)
    {
      goto LABEL_8;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "rfem");
    v72 = v74;
    v8 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(a2, __p, __p);
    v9 = v7;
    if (v71 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v9 & 1) == 0)
    {
      v64 = ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage(v64, 2, "%s::%s: failed to insert RFEM into nvram overrides\n", "CentauriFirmware", "setNVRAM");
    }

    else
    {
LABEL_8:
      v10 = CentauriFirmware::copyWSKU(&cf, v7);
      if ((v10 & 1) == 0)
      {
        LogInstance = ACFULogging::getLogInstance(v10);
        v57 = "%s::%s: failed to copy WSKU\n";
        goto LABEL_85;
      }

      if (!cf)
      {
        goto LABEL_13;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "wsku");
      v72 = cf;
      v11 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(a2, __p, __p);
      v13 = v12;
      if (v71 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13)
      {
        goto LABEL_13;
      }

      v65 = ACFULogging::getLogInstance(v11);
      ACFULogging::handleMessage(v65, 2, "%s::%s: failed to insert WSKU into nvram overrides\n", "CentauriFirmware", "setNVRAM");
    }

    v18 = 0;
    goto LABEL_93;
  }

LABEL_13:
  std::string::basic_string[abi:ne200100]<0>(__p, "nvrm");
  v14 = ACFUFirmware::copyFWDataByFileName();
  v16 = v14;
  if ((v71 & 0x80000000) == 0)
  {
    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

  operator delete(__p[0]);
  if (!v16)
  {
LABEL_35:
    if (*(a2 + 16))
    {
      v34 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v34, 3, "%s::%s: creating fresh nvram file with only overrides\n");
    }

    else
    {
      v36 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v36, 3, "%s::%s: creating empty nvram file\n");
    }

    v37 = ACFURTKitNVRMGenerator::create();
    v18 = __p[0];
    if (__p[0])
    {
      v30 = ACFURTKitNVRMGenerator::copy(__p[0]);
      if (v30)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "nvrm");
        v38 = RTKitFirmware::addTagWithData();
        v39 = v38;
        if (v71 < 0)
        {
          operator delete(__p[0]);
        }

        if (!v39)
        {
          v40 = ACFULogging::getLogInstance(v38);
          ACFULogging::handleMessage(v40, 0, "%s::%s: successfully added an nvram file\n", "CentauriFirmware", "setNVRAM");
          goto LABEL_45;
        }

        v63 = ACFULogging::getLogInstance(v38);
        ACFULogging::handleMessage(v63, 2, "%s::%s: failed to add nvram tag\n", "CentauriFirmware", "setNVRAM");
        goto LABEL_88;
      }

      v62 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v62, 2, "%s::%s: failed to copy nvram payload\n", "CentauriFirmware", "setNVRAM");
LABEL_93:
      v51 = 0;
      goto LABEL_65;
    }

    LogInstance = ACFULogging::getLogInstance(v37);
    v57 = "%s::%s: failed to create nvram generator\n";
LABEL_85:
    v18 = 0;
    ACFULogging::handleMessage(LogInstance, 2, v57, "CentauriFirmware", "setNVRAM");
    goto LABEL_93;
  }

LABEL_15:
  v17 = ACFURTKitNVRMGenerator::create(__p, v16, v15);
  v18 = __p[0];
  if (!__p[0])
  {
    v58 = ACFULogging::getLogInstance(v17);
    v18 = 0;
    ACFULogging::handleMessage(v58, 2, "%s::%s: failed to create nvram generator\n", "CentauriFirmware", "setNVRAM");
    v51 = 0;
    goto LABEL_64;
  }

  if (!*(a2 + 16))
  {
    v35 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v35, 0, "%s::%s: using existing nvram file as is\n", "CentauriFirmware", "setNVRAM");
    v30 = 0;
    goto LABEL_45;
  }

  v19 = ACFULogging::getLogInstance(v17);
  ACFULogging::handleMessage(v19, 3, "%s::%s: merging nvram overrides with existing nvram file\n", "CentauriFirmware", "setNVRAM");
  v22 = *a2;
  v20 = (a2 + 8);
  v21 = v22;
  if (v22 == v20)
  {
LABEL_29:
    v30 = ACFURTKitNVRMGenerator::copy(v18);
    if (!v30)
    {
      goto LABEL_82;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "nvrm");
    updated = RTKitFirmware::updateTagWithData();
    v32 = updated;
    if (v71 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v32)
    {
      v33 = ACFULogging::getLogInstance(updated);
      ACFULogging::handleMessage(v33, 0, "%s::%s: successfully merged nvram overrides with existing nvram file\n", "CentauriFirmware", "setNVRAM");
LABEL_45:
      ACFURTKitNVRMGenerator::log(v18);
      if (v30 || (v30 = ACFURTKitNVRMGenerator::copy(v18)) != 0)
      {
        if (*(a1 + 88))
        {
          ACFUDiagnostics::addItem();
        }

        std::string::basic_string[abi:ne200100]<0>(&v66, "bootargs");
        Length = ACFURTKitNVRMGenerator::copyVariable();
        v42 = Length;
        if (v67 < 0)
        {
          operator delete(v66);
          if (!v42)
          {
            goto LABEL_61;
          }
        }

        else if (!Length)
        {
          goto LABEL_61;
        }

        Length = CFDataGetLength(v42);
        if (Length >= 1)
        {
          BytePtr = CFDataGetBytePtr(v42);
          v44 = CFDataGetLength(v42);
          v45 = CFStringCreateWithBytes(*MEMORY[0x29EDB8ED8], BytePtr, v44, 0x8000100u, 0);
          v47 = v45;
          if (v45)
          {
            v48 = ACFUCommon::stringFromCFString(__p, v45, v46);
            v49 = ACFULogging::getLogInstance(v48);
            if (v71 >= 0)
            {
              v50 = __p;
            }

            else
            {
              v50 = __p[0];
            }

            ACFULogging::handleMessage(v49, 0, "%s::%s: Firmware boot-args: '%s'\n", "CentauriFirmware", "setNVRAM", v50);
            if (v71 < 0)
            {
              operator delete(__p[0]);
            }

            CFRelease(v47);
            v51 = 1;
          }

          else
          {
            v59 = ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage(v59, 2, "%s::%s: failed to create bootargs string\n", "CentauriFirmware", "setNVRAM");
            v51 = 0;
          }

LABEL_62:
          CFRelease(v42);
          goto LABEL_63;
        }

LABEL_61:
        v52 = ACFULogging::getLogInstance(Length);
        ACFULogging::handleMessage(v52, 0, "%s::%s: Firmware boot-args: <none>\n", "CentauriFirmware", "setNVRAM");
        v51 = 1;
        if (!v42)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

LABEL_82:
      v60 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v60, 2, "%s::%s: failed to copy nvram payload\n", "CentauriFirmware", "setNVRAM");
      goto LABEL_75;
    }

    v61 = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(v61, 2, "%s::%s: failed to update nvram tag\n", "CentauriFirmware", "setNVRAM");
LABEL_88:
    v51 = 0;
LABEL_63:
    CFRelease(v30);
    if (!v16)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  while (1)
  {
    v23 = (v21 + 4);
    v24 = (v21 + 4);
    if (*(v21 + 55) < 0)
    {
      v24 = *v23;
    }

    std::string::basic_string[abi:ne200100]<0>(&v68, v24);
    v25 = ACFURTKitNVRMGenerator::add();
    v26 = v25;
    if (v69 < 0)
    {
      operator delete(v68);
    }

    if ((v26 & 1) == 0)
    {
      break;
    }

    v27 = v21[1];
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      do
      {
        v28 = v21[2];
        v29 = *v28 == v21;
        v21 = v28;
      }

      while (!v29);
    }

    v21 = v28;
    if (v28 == v20)
    {
      goto LABEL_29;
    }
  }

  v55 = ACFULogging::getLogInstance(v25);
  if (*(v21 + 55) < 0)
  {
    v23 = *v23;
  }

  ACFULogging::handleMessage(v55, 2, "%s::%s: failed to add %s\n", "CentauriFirmware", "setNVRAM", v23);
LABEL_75:
  v51 = 0;
  if (v16)
  {
LABEL_64:
    CFRelease(v16);
  }

LABEL_65:
  if (v74)
  {
    CFRelease(v74);
    v74 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    v53 = MEMORY[0x29C2B44F0](v18);
    operator delete(v53);
  }

  return v51;
}

uint64_t CentauriFirmware::copyRFEM(CentauriFirmware *this, const __CFData **a2)
{
  v2 = this;
  if (!this)
  {
    CentauriFirmware::copyRFEM(0);
    return v2;
  }

  v3 = IOServiceNameMatching("centauri");
  if (!v3)
  {
    CentauriFirmware::copyRFEM(0);
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v3);
  if (!MatchingService)
  {
    CentauriFirmware::copyRFEM(MatchingService);
    return 0;
  }

  v5 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"wifi-rfem-info", *MEMORY[0x29EDB8ED8], 0);
  if (CFProperty)
  {
    v7 = CFProperty;
    v8 = CFGetTypeID(CFProperty);
    TypeID = CFDataGetTypeID();
    if (v8 != TypeID)
    {
      CFRelease(v7);
      LogInstance = ACFULogging::getLogInstance(v16);
      ACFUCommon::cfTypeDescription(&v21, v8);
      if (v22 >= 0)
      {
        v18 = &v21;
      }

      else
      {
        v18 = v21;
      }

      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: property has wrong type %s\n", "CentauriFirmware", "copyRFEM", v18);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21);
      }

      v2 = 0;
      goto LABEL_15;
    }

    ACFULogging::getLogInstance(TypeID);
    std::string::basic_string[abi:ne200100]<0>(&v19, "CentauriFirmware");
    v10 = std::string::append(&v19, "::", 2uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v20, "copyRFEM", 8uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v22 = v12->__r_.__value_.__r.__words[2];
    v21 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType();
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    *v2 = v7;
  }

  else
  {
    v14 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v14, 3, "%s::%s: RFEM not found\n", "CentauriFirmware", "copyRFEM");
  }

  v2 = 1;
LABEL_15:
  IOObjectRelease(v5);
  return v2;
}

void sub_299E929D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::copyWSKU(CentauriFirmware *this, const __CFString **a2)
{
  v2 = this;
  if (this)
  {
    v3 = MGCopyAnswer();
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      TypeID = CFDataGetTypeID();
      if (v5 == TypeID)
      {
        Length = CFDataGetLength(v4);
        if (Length == 16)
        {
          BytePtr = CFDataGetBytePtr(v4);
          v9 = BytePtr;
          v10 = *BytePtr;
          if (*BytePtr == 0x1000000)
          {
            LogInstance = ACFULogging::getLogInstance(BytePtr);
            ACFULogging::handleMessage(LogInstance, 0, "%s::%s: swapping endianness\n", "CentauriFirmware", "copyWSKU");
            *v9 = vrev32q_s8(*v9);
            v10 = v9->i32[0];
          }

          if (v10 == 1)
          {
            v12 = 0;
            v13 = &v9->i8[8];
            do
            {
              if (*(v12 + v13) < 0)
              {
                CentauriFirmware::copyWSKU(v12);
                goto LABEL_20;
              }

              v12 = (v12 + 1);
            }

            while (v12 != 8);
            v14 = *v13;
            v15 = ACFULogging::getLogInstance(8);
            if (!v14)
            {
              ACFULogging::handleMessage(v15, 0, "%s::%s: ignoring empty WSKU\n", "CentauriFirmware", "copyWSKU");
              goto LABEL_16;
            }

            ACFULogging::handleMessage(v15, 0, "%s::%s: WSKU: '%s'\n", "CentauriFirmware", "copyWSKU", v13);
            v16 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v13, 0x8000100u);
            if (v16)
            {
              *v2 = v16;
LABEL_16:
              v2 = 1;
              goto LABEL_17;
            }

            CentauriFirmware::copyWSKU(0);
          }

          else
          {
            CentauriFirmware::copyWSKU(v9);
          }
        }

        else
        {
          CentauriFirmware::copyWSKU(Length);
        }
      }

      else
      {
        v19 = ACFULogging::getLogInstance(TypeID);
        ACFUCommon::cfTypeDescription(__p, v5);
        if (v22 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        ACFULogging::handleMessage(v19, 2, "%s::%s: unexpected type %s\n", "CentauriFirmware", "copyWSKU", v20);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_20:
      v2 = 0;
LABEL_17:
      CFRelease(v4);
    }

    else
    {
      v17 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v17, 3, "%s::%s: WSKU not found\n", "CentauriFirmware", "copyWSKU");
      return 1;
    }
  }

  else
  {
    CentauriFirmware::copyWSKU(0);
  }

  return v2;
}

void sub_299E92C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::setCalibration(CentauriFirmware *this, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x29EDCA608];
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v8 = CentauriFirmware::copyCalibrationData(a2, a3, a4, a6, a7, a8, a5, &v54);
  if ((v8 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to copy calibration data\n", "CentauriFirmware", "setCalibration");
LABEL_50:
    v38 = 0;
    goto LABEL_37;
  }

  v9 = v54;
  v10 = v55;
  if (v54 == v55)
  {
    v33 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v33, 0, "%s::%s: proceeding to boot without any calibration data\n", "CentauriFirmware", "setCalibration");
    std::string::basic_string[abi:ne200100]<0>(bytes, "_cal");
    v34 = (*(*this + 40))(this, bytes);
    v35 = v34;
    if (SBYTE3(v58) < 0)
    {
      operator delete(*bytes);
      if (!v35)
      {
        goto LABEL_36;
      }
    }

    else if (!v34)
    {
      goto LABEL_36;
    }

    v39 = ACFULogging::getLogInstance(v34);
    ACFULogging::handleMessage(v39, 0, "%s::%s: removing %u bytes of existing calibration data from firmware\n", "CentauriFirmware", "setCalibration", v35);
    std::string::basic_string[abi:ne200100]<0>(bytes, "_cal");
    v40 = RTKitFirmware::removeTag();
    v41 = v40;
    if (SBYTE3(v58) < 0)
    {
      operator delete(*bytes);
    }

    if (v41)
    {
      v48 = ACFULogging::getLogInstance(v40);
      ACFULogging::handleMessage(v48, 2, "%s::%s: failed to remove calibration tag\n", "CentauriFirmware", "setCalibration");
      goto LABEL_50;
    }

LABEL_36:
    v38 = 1;
    goto LABEL_37;
  }

  alloc = *MEMORY[0x29EDB8ED8];
  Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v12 = Mutable;
  if (!Mutable)
  {
    v47 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v47, 2, "%s::%s: failed to allocate data\n", "CentauriFirmware", "setCalibration");
    goto LABEL_50;
  }

  v13 = v10 - v9;
  memset(v59, 0, sizeof(v59));
  v14 = 0x8E38E38E38E38E39 * v13;
  v58 = 0u;
  *&bytes[4] = 0u;
  *bytes = 954437177 * v13;
  CFDataAppendBytes(Mutable, bytes, 64);
  CFDataIncreaseLength(v12, v14 << 6);
  Length = CFDataGetLength(v12);
  v16 = 0;
  v17 = 0;
  v18 = v54;
  do
  {
    v19 = CFDataGetLength(v18[9 * v16]);
    if (v54[9 * v16 + 3])
    {
      v20 = "fdr";
    }

    else
    {
      v20 = "raw";
    }

    v21 = CFStringCreateWithFormat(alloc, 0, @"cal-file-%u-%s.bin", v17, v20);
    if (!v21)
    {
      v45 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v45, 2, "%s::%s: failed to create diagnostic filename\n", "CentauriFirmware", "setCalibration");
      goto LABEL_46;
    }

    if (*(this + 11))
    {
      ACFUDiagnostics::addItem();
    }

    CFRelease(v21);
    v23 = ACFULogging::getLogInstance(v22);
    if (v54[9 * v16 + 3])
    {
      v24 = "fdr";
    }

    else
    {
      v24 = "raw";
    }

    ACFULogging::handleMessage(v23, 0, "%s::%s: inserting %ld bytes of %s calibration data into firmware\n", "CentauriFirmware", "setCalibration", v19, v24);
    v25 = &v54[9 * v16];
    *(v25 + 4) = Length;
    *(v25 + 5) = v19;
    v61.location = (v16 << 6) + 64;
    v61.length = 64;
    CFDataReplaceBytes(v12, v61, v25 + 8, 64);
    BytePtr = CFDataGetBytePtr(v54[9 * v16]);
    CFDataAppendBytes(v12, BytePtr, v19);
    v18 = v54;
    Length += HIDWORD(v54[9 * v16 + 2]);
    v16 = (v17 + 1);
    v17 = v16;
  }

  while (v14 > v16);
  if (*(this + 11))
  {
    ACFUDiagnostics::addItem();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "_cal");
  v27 = (*(*this + 40))(this, __p);
  v28 = v27;
  if (v53 < 0)
  {
    operator delete(__p[0]);
    if (!v28)
    {
      goto LABEL_27;
    }

LABEL_19:
    v29 = ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage(v29, 0, "%s::%s: replacing %u bytes of existing calibration data in firmware\n", "CentauriFirmware", "setCalibration", v28);
    std::string::basic_string[abi:ne200100]<0>(__p, "_cal");
    updated = RTKitFirmware::updateTagWithData();
    v31 = updated;
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v31)
    {
LABEL_30:
      v37 = ACFULogging::getLogInstance(updated);
      ACFULogging::handleMessage(v37, 0, "%s::%s: successfully inserted calibration data into firmware\n", "CentauriFirmware", "setCalibration");
      v38 = 1;
      goto LABEL_31;
    }

    v32 = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(v32, 2, "%s::%s: failed to update calibration tag\n");
  }

  else
  {
    if (v27)
    {
      goto LABEL_19;
    }

LABEL_27:
    std::string::basic_string[abi:ne200100]<0>(__p, "_cal");
    updated = RTKitFirmware::addTagWithData();
    v36 = updated;
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v36)
    {
      goto LABEL_30;
    }

    v49 = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(v49, 2, "%s::%s: failed to add calibration tag\n");
  }

LABEL_46:
  v38 = 0;
LABEL_31:
  CFRelease(v12);
LABEL_37:
  v42 = v54;
  v43 = v55;
  if (v54 != v55)
  {
    do
    {
      if (*v42)
      {
        CFRelease(*v42);
        *v42 = 0;
      }

      v42 += 9;
    }

    while (v42 != v43);
    v42 = v54;
  }

  if (v42)
  {
    v55 = v42;
    operator delete(v42);
  }

  return v38;
}

void sub_299E9324C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::copyCalibrationData(ACFULogging *a1, unsigned int a2, uint64_t a3, char a4, char a5, char a6, int a7, CFTypeRef **a8)
{
  v89 = *MEMORY[0x29EDCA608];
  LogInstance = ACFULogging::getLogInstance(a1);
  v13 = "does not support";
  if (a7)
  {
    v13 = "supports";
  }

  v14 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: looking for calibration data, firmware %s FDR trust evaluation\n", "CentauriFirmware", "copyCalibrationData", v13);
  if (a4)
  {
    v15 = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(v15, 0, "%s::%s: ignoring FDR calibration data if it exists\n", "CentauriFirmware", "copyCalibrationData");
    goto LABEL_50;
  }

  v79 = 0;
  v80 = "BWC3";
  v77 = 0;
  v78 = 0;
  v16 = std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&v77, &v80, &v81, 1uLL);
  v73 = a5;
  v74 = a6;
  v75 = 0;
  v17 = a7;
  v76 = a7;
  CentauriFirmware::getManifestUniqueId(v16, &v72);
  size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v72.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v43 = 0;
    goto LABEL_45;
  }

  v20 = v77;
  v67 = v78;
  if (v77 == v78)
  {
LABEL_42:
    if (*a8 == a8[1])
    {
      v42 = ACFULogging::getLogInstance(v18);
      ACFULogging::handleMessage(v42, 0, "%s::%s: no FDR calibration data found\n", "CentauriFirmware", "copyCalibrationData");
    }

    v43 = 1;
    goto LABEL_45;
  }

  while (v17)
  {
    ACFUCommon::FDRDataClass::FDRDataClass(&v80, *v20);
    DataLocalCopy = ACFUFDR::getDataLocalCopy();
    if (SBYTE7(v83) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80);
    }

    if (v71)
    {
LABEL_74:
      v61 = ACFULogging::getLogInstance(DataLocalCopy);
      ACFULogging::handleMessage(v61, 2, "%s::%s: failed to validate calibration data\n", "CentauriFirmware", "copyCalibrationData");
      AMSupportSafeRelease();
      goto LABEL_65;
    }

    if (!theDict)
    {
LABEL_40:
      v41 = ACFULogging::getLogInstance(DataLocalCopy);
      v18 = ACFULogging::handleMessage(v41, 0, "%s::%s: %s not found\n", "CentauriFirmware", "copyCalibrationData", *v20);
      goto LABEL_41;
    }

    v87 = 0u;
    v88 = 0u;
    *__dst = 0u;
    v86 = 0u;
    v22 = ACFULogging::getLogInstance(DataLocalCopy);
    ACFULogging::handleMessage(v22, 0, "%s::%s: found FDR calibration data: %s\n", "CentauriFirmware", "copyCalibrationData", *v20);
    v23 = strlcpy(__dst, *v20, 8uLL);
    if (v23 >= 8)
    {
      v63 = ACFULogging::getLogInstance(v23);
      strlen(*v20);
      ACFULogging::handleMessage(v63, 2, "%s::%s: data class too large (%zu >= %zu)\n");
LABEL_64:
      AMSupportSafeRelease();
      goto LABEL_65;
    }

    LOBYTE(v86) = v86 | 1;
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v72;
    }

    else
    {
      v24 = v72.__r_.__value_.__r.__words[0];
    }

    v25 = strlcpy(&v87, v24, 0x20uLL);
    if (v25 >= 0x20)
    {
      v64 = ACFULogging::getLogInstance(v25);
      ACFULogging::handleMessage(v64, 2, "%s::%s: manifest unique id too large (%zu >= %zu)\n");
      goto LABEL_64;
    }

    v80 = theDict;
    v81 = *__dst;
    __p = v86;
    v83 = v87;
    v84 = v88;
    std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](a8, &v80);
LABEL_41:
    if (++v20 == v67)
    {
      goto LABEL_42;
    }
  }

  DataLocalCopy = ACFUFDR::getDictLocalCopy();
  if (v71)
  {
    goto LABEL_74;
  }

  if (!theDict)
  {
    goto LABEL_40;
  }

  v26 = ACFULogging::getLogInstance(DataLocalCopy);
  ACFULogging::handleMessage(v26, 0, "%s::%s: found FDR calibration data: %s\n", "CentauriFirmware", "copyCalibrationData", *v20);
  Count = CFDictionaryGetCount(theDict);
  if (!Count)
  {
    v62 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v62, 2, "%s::%s: %s is empty\n", "CentauriFirmware", "copyCalibrationData", *v20);
    AMSupportSafeRelease();
    goto LABEL_65;
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  v28 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (!v28)
  {
    v65 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v65, 2, "%s::%s: failed to allocate keys\n", "CentauriFirmware", "copyCalibrationData");
    AMSupportSafeRelease();
    goto LABEL_65;
  }

  v29 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (v29)
  {
    CFDictionaryGetKeysAndValues(theDict, v28, v29);
    if (Count >= 1)
    {
      v30 = 0;
      while (1)
      {
        v31 = v28[v30];
        if (!v31)
        {
          v53 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v53, 2, "%s::%s: subCC index %zu null key\n");
          goto LABEL_64;
        }

        if (!v29[v30])
        {
          v54 = ACFULogging::getLogInstance(v31);
          ACFULogging::handleMessage(v54, 2, "%s::%s: subCC index %zu null value\n");
          goto LABEL_64;
        }

        v32 = CFGetTypeID(v31);
        TypeID = CFStringGetTypeID();
        if (v32 != TypeID)
        {
          v55 = ACFULogging::getLogInstance(TypeID);
          ACFULogging::handleMessage(v55, 2, "%s::%s: subCC index %zu wrong key type\n");
          goto LABEL_64;
        }

        v34 = CFGetTypeID(v29[v30]);
        v35 = CFDataGetTypeID();
        if (v34 != v35)
        {
          break;
        }

        v37 = ACFUCommon::stringFromCFString(__dst, v28[v30], v36);
        v38 = ACFULogging::getLogInstance(v37);
        if ((SBYTE7(v86) & 0x80u) == 0)
        {
          v39 = __dst;
        }

        else
        {
          v39 = *__dst;
        }

        ACFULogging::handleMessage(v38, 0, "%s::%s: found subCC index %zu: %s\n", "CentauriFirmware", "copyCalibrationData", v30, v39);
        v40 = CFRetain(v29[v30]);
        v84 = 0u;
        v83 = 0u;
        __p = 0u;
        v81 = 0u;
        v80 = v40;
        std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](a8, &v80);
        if (SBYTE7(v86) < 0)
        {
          operator delete(*__dst);
        }

        if (Count == ++v30)
        {
          goto LABEL_39;
        }
      }

      v56 = ACFULogging::getLogInstance(v35);
      ACFULogging::handleMessage(v56, 2, "%s::%s: subCC index %zu wrong value type\n");
      goto LABEL_64;
    }

LABEL_39:
    v18 = AMSupportSafeRelease();
    v17 = a7;
    goto LABEL_41;
  }

  v66 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v66, 2, "%s::%s: failed to allocate values\n", "CentauriFirmware", "copyCalibrationData");
  AMSupportSafeRelease();
LABEL_65:
  v43 = 0;
LABEL_45:
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v43)
  {
LABEL_50:
    if (a1)
    {
      v44 = CFArrayGetCount(a1);
      if (v44 >= 1)
      {
        v45 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v45);
          FileDatafromFilePath = ACFUCommon::createFileDatafromFilePath(ValueAtIndex, v47);
          v49 = ACFULogging::getLogInstance(FileDatafromFilePath);
          if (!FileDatafromFilePath)
          {
            break;
          }

          ACFULogging::handleMessage(v49, 0, "%s::%s: found raw calibration data: index %zu\n", "CentauriFirmware", "copyCalibrationData", v45);
          v80 = FileDatafromFilePath;
          v81 = 0u;
          __p = 0u;
          v83 = 0u;
          v84 = 0u;
          std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](a8, &v80);
          v44 = CFArrayGetCount(a1);
          if (++v45 >= v44)
          {
            goto LABEL_57;
          }
        }

        ACFULogging::handleMessage(v49, 2, "%s::%s: failed to read raw calibration data: index %zu\n", "CentauriFirmware", "copyCalibrationData", v45);
        goto LABEL_67;
      }
    }

    else
    {
      v50 = ACFULogging::getLogInstance(0);
      v44 = ACFULogging::handleMessage(v50, 0, "%s::%s: no raw calibration data provided\n", "CentauriFirmware", "copyCalibrationData");
    }

LABEL_57:
    if (*a8 == a8[1])
    {
      v51 = ACFULogging::getLogInstance(v44);
      ACFULogging::handleMessage(v51, 0, "%s::%s: no calibration data found\n", "CentauriFirmware", "copyCalibrationData");
    }

    v52 = 1;
  }

  else
  {
LABEL_67:
    v57 = a8;
    v59 = *a8;
    v58 = a8[1];
    if (*a8 != v58)
    {
      do
      {
        if (*v59)
        {
          CFRelease(*v59);
          *v59 = 0;
          v57 = a8;
        }

        v59 += 9;
      }

      while (v59 != v58);
      v59 = *v57;
    }

    v52 = 0;
    v57[1] = v59;
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  return v52;
}

void sub_299E93B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::setPatchBay(CentauriFirmware *this, const __CFData *a2, const __CFData *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
  v6 = (*(*this + 40))(this, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
  updated = (*(*this + 40))(this, __p);
  v8 = updated;
  if (v24 < 0)
  {
    operator delete(__p[0]);
    if (a2)
    {
LABEL_5:
      v9 = *(this + 11);
      if (v9)
      {
        v9 = ACFUDiagnostics::addItem();
      }

      if (v6)
      {
        LogInstance = ACFULogging::getLogInstance(v9);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: replacing %u bytes of existing alpha data in firmware\n", "CentauriFirmware", "setPatchBay", v6);
        std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
        updated = RTKitFirmware::updateTagWithData();
        v11 = updated;
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        if (v11)
        {
          v12 = "%s::%s: failed to update alpha tag\n";
LABEL_41:
          CentauriFirmware::setPatchBay(v12);
          return 0;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
        updated = RTKitFirmware::addTagWithData();
        v15 = updated;
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        if (v15)
        {
          v12 = "%s::%s: failed to add alpha tag\n";
          goto LABEL_41;
        }
      }

      goto LABEL_21;
    }
  }

  else if (a2)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    v13 = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(v13, 0, "%s::%s: removing %u bytes of existing alpha data from firmware\n", "CentauriFirmware", "setPatchBay", v6);
    std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
    updated = RTKitFirmware::removeTag();
    v14 = updated;
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14)
    {
      v12 = "%s::%s: failed to remove alpha tag\n";
      goto LABEL_41;
    }
  }

LABEL_21:
  if (a3)
  {
    v16 = *(this + 11);
    if (v16)
    {
      v16 = ACFUDiagnostics::addItem();
    }

    if (v8)
    {
      v17 = ACFULogging::getLogInstance(v16);
      ACFULogging::handleMessage(v17, 0, "%s::%s: replacing %u bytes of existing beta data in firmware\n", "CentauriFirmware", "setPatchBay", v8);
      std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
      v18 = RTKitFirmware::updateTagWithData();
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18)
      {
        v12 = "%s::%s: failed to update beta tag\n";
        goto LABEL_41;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
      v21 = RTKitFirmware::addTagWithData();
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21)
      {
        v12 = "%s::%s: failed to add beta tag\n";
        goto LABEL_41;
      }
    }
  }

  else if (v8)
  {
    v19 = ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage(v19, 0, "%s::%s: removing %u bytes of existing beta data from firmware\n", "CentauriFirmware", "setPatchBay", v8);
    std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
    v20 = RTKitFirmware::removeTag();
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20)
    {
      v12 = "%s::%s: failed to remove beta tag\n";
      goto LABEL_41;
    }
  }

  return 1;
}

void sub_299E93F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CentauriFirmware::isChipRevisionSupported(CentauriFirmware *this, unsigned __int8 a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  memset(&v21, 0, sizeof(v21));
  CentauriFirmware::getSupportedChipRevision(&v19);
  v23 = v20;
  *__p = v19;
  v3 = HIBYTE(v20);
  v4 = SHIBYTE(v20);
  v5 = *(&v19 + 1);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(v20);
  }

  else
  {
    v6 = *(&v19 + 1);
  }

  v7 = 1;
  if (v6)
  {
    *(&v21.__r_.__value_.__s + 23) = 1;
    LOWORD(v21.__r_.__value_.__l.__data_) = ((a2 >> 4) + 65);
    std::string::push_back(&v21, a2 & 0xF | 0x30);
    v9 = __p[0];
    if (v4 >= 0)
    {
      v10 = (__p + v3);
    }

    else
    {
      v10 = (__p[0] + v5);
    }

    if (v4 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v11 != v10)
    {
      do
      {
        v8 = __toupper(*v11);
        *v11 = v8;
        v11 = (v11 + 1);
      }

      while (v11 != v10);
      LOBYTE(v4) = HIBYTE(v23);
      v9 = __p[0];
    }

    if ((v4 & 0x80u) == 0)
    {
      v9 = __p;
    }

    v12 = *v9;
    v13 = v21.__r_.__value_.__r.__words[0];
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v21;
    }

    v14 = v13->__r_.__value_.__s.__data_[0];
    v7 = v12 == v14;
    if (v12 == v14)
    {
      if ((*(&v21.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    LogInstance = ACFULogging::getLogInstance(v8);
    v17 = __p;
    if (v23 < 0)
    {
      v17 = __p[0];
    }

    v18 = &v21;
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v21.__r_.__value_.__r.__words[0];
    }

    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: %s firmware is incompatible with %s hardware\n", "CentauriFirmware", "isChipRevisionSupported", v17, v18);
    if ((*(&v21.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_21:
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

LABEL_22:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_299E940FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void CentauriFirmware::getSupportedChipRevision(uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "bver");
  v3 = ACFUFirmware::copyFWDataByFileName();
  v4 = v3;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v4);
    v7 = CFStringCreateWithBytes(*MEMORY[0x29EDB8ED8], BytePtr, Length, 0x8000100u, 0);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      LogInstance = ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: bver: '%s'\n", "CentauriFirmware", "getSupportedChipRevision", [(ACFULogging *)v9 UTF8String]);
      v28 = 0;
      v11 = [MEMORY[0x29EDBA0D0] regularExpressionWithPattern:@"chip_revision_([a-zA-Z][0-9])" options:0 error:&v28];
      v12 = v28;
      v13 = v12;
      if (v11)
      {
        v14 = [v11 firstMatchInString:v9 options:0 range:{0, -[ACFULogging length](v9, "length")}];
        v15 = [v14 numberOfRanges];
        if (v15 == 2)
        {
          v16 = [v14 rangeAtIndex:1];
          v18 = [(ACFULogging *)v9 substringWithRange:v16, v17];
          v20 = ACFUCommon::stringFromCFString(__p, v18, v19);
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = *__p;
          *(a2 + 16) = v30;
          v21 = ACFULogging::getLogInstance(v20);
          if (*(a2 + 23) >= 0)
          {
            v22 = a2;
          }

          else
          {
            v22 = *a2;
          }

          ACFULogging::handleMessage(v21, 0, "%s::%s: firmware intended for chip revision %s\n", "CentauriFirmware", "getSupportedChipRevision", v22);
        }

        else
        {
          v26 = ACFULogging::getLogInstance(v15);
          v18 = 0;
          ACFULogging::handleMessage(v26, 2, "%s::%s: no chip revision in bver\n", "CentauriFirmware", "getSupportedChipRevision");
        }
      }

      else
      {
        v27 = ACFULogging::getLogInstance(v12);
        if (v13)
        {
          LogInstance = [(ACFULogging *)v13 description];
          v25 = [LogInstance UTF8String];
        }

        else
        {
          v25 = "";
        }

        ACFULogging::handleMessage(v27, 2, "%s::%s: failed to create regex: %s\n", "CentauriFirmware", "getSupportedChipRevision", v25);
        if (v13)
        {
        }

        v14 = 0;
        v18 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      v24 = ACFULogging::getLogInstance(0);
      v13 = 0;
      v14 = 0;
      v18 = 0;
      ACFULogging::handleMessage(v24, 2, "%s::%s: failed to create string\n", "CentauriFirmware", "getSupportedChipRevision");
      v11 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v23 = ACFULogging::getLogInstance(v3);
    v13 = 0;
    v14 = 0;
    v18 = 0;
    ACFULogging::handleMessage(v23, 2, "%s::%s: no bver\n", "CentauriFirmware", "getSupportedChipRevision");
    v11 = 0;
    v8 = 0;
  }
}

void sub_299E94598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 + 23) < 0)
  {
    operator delete(*v19);
  }

  _Unwind_Resume(a1);
}

void CentauriFirmware::~CentauriFirmware(CentauriFirmware *this)
{
  *this = &unk_2A2023BD0;
  v1 = *(this + 12);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B4440);
}

{
  CentauriFirmware::~CentauriFirmware(this);

  operator delete(v1);
}

void CentauriFirmware::getManifestUniqueId(CentauriFirmware *this@<X0>, std::string *a2@<X8>)
{
  if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    CentauriFirmware::getManifestUniqueId();
  }

  if (CentauriFirmware::getManifestUniqueId(void)::once != -1)
  {
    CentauriFirmware::getManifestUniqueId();
  }

  v3 = *(&xmmword_2A14F2160 + 1);
  if (byte_2A14F2177 >= 0)
  {
    v3 = byte_2A14F2177;
  }

  if (v3)
  {
    if ((byte_2A14F2177 & 0x80) == 0)
    {
LABEL_9:
      *&a2->__r_.__value_.__l.__data_ = xmmword_2A14F2160;
      a2->__r_.__value_.__r.__words[2] = unk_2A14F2170;
      return;
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to compute manifest unique id\n", "CentauriFirmware", "getManifestUniqueId");
    if ((byte_2A14F2177 & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  v5 = xmmword_2A14F2160;

  std::string::__init_copy_ctor_external(a2, v5, *(&v5 + 1));
}

uint64_t ___ZN16CentauriFirmware19getManifestUniqueIdEv_block_invoke()
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v33);
  v31 = 0;
  valuePtr = 0;
  TypeID = MGCopyAnswer();
  v1 = TypeID;
  if (!TypeID || (v2 = CFGetTypeID(TypeID), TypeID = CFNumberGetTypeID(), v2 != TypeID))
  {
    LogInstance = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: error getting host chipID\n", "CentauriFirmware", "getManifestUniqueId_block_invoke");
    if (!v1)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  Value = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
  if (!Value)
  {
    v26 = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(v26, 2, "%s::%s: error converting host chipID\n", "CentauriFirmware", "getManifestUniqueId_block_invoke");
LABEL_38:
    v5 = 0;
    goto LABEL_29;
  }

  v4 = MGCopyAnswer();
  v5 = v4;
  if (v4 && (v6 = CFGetTypeID(v4), v4 = CFNumberGetTypeID(), v6 == v4))
  {
    v7 = CFNumberGetValue(v5, kCFNumberSInt64Type, &v31);
    if (v7)
    {
      *(&v34 + *(v34 - 24) + 8) |= 0x4000u;
      LOBYTE(__dst) = 48;
      v8 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v34, &__dst);
      v9 = *v8;
      *(v8 + *(*v8 - 24) + 24) = 8;
      *(v8 + *(v9 - 24) + 8) = *(v8 + *(v9 - 24) + 8) & 0xFFFFFFB5 | 8;
      v10 = MEMORY[0x29C2B4630]();
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "-", 1);
      v30 = 48;
      v12 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, &v30);
      v13 = *v12;
      *(v12 + *(*v12 - 24) + 24) = 16;
      *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
      v14 = MEMORY[0x29C2B4630]();
      if ((v41 & 0x10) != 0)
      {
        v17 = v40;
        if (v40 < v37)
        {
          v40 = v37;
          v17 = v37;
        }

        locale = v36[4].__locale_;
      }

      else
      {
        if ((v41 & 8) == 0)
        {
          v15 = 0;
          HIBYTE(v29) = 0;
          p_dst = &__dst;
          goto LABEL_23;
        }

        locale = v36[1].__locale_;
        v17 = v36[3].__locale_;
      }

      v15 = v17 - locale;
      if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v15 >= 0x17)
      {
        if ((v15 | 7) == 0x17)
        {
          v19 = 25;
        }

        else
        {
          v19 = (v15 | 7) + 1;
        }

        p_dst = operator new(v19);
        *(&__dst + 1) = v15;
        v29 = v19 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v29) = v17 - locale;
        p_dst = &__dst;
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      v14 = memmove(p_dst, locale, v15);
LABEL_23:
      *(p_dst + v15) = 0;
      if (byte_2A14F2177 < 0)
      {
        operator delete(xmmword_2A14F2160);
      }

      xmmword_2A14F2160 = __dst;
      unk_2A14F2170 = v29;
      v20 = ACFULogging::getLogInstance(v14);
      if (byte_2A14F2177 >= 0)
      {
        v21 = &xmmword_2A14F2160;
      }

      else
      {
        v21 = xmmword_2A14F2160;
      }

      ACFULogging::handleMessage(v20, 3, "%s::%s: manifest unique id: '%s'\n", "CentauriFirmware", "getManifestUniqueId_block_invoke", v21);
      goto LABEL_29;
    }

    v27 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v27, 2, "%s::%s: error converting host ECID\n");
  }

  else
  {
    v25 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v25, 2, "%s::%s: error getting host ECID\n");
  }

LABEL_29:
  CFRelease(v1);
  if (v5)
  {
    CFRelease(v5);
  }

LABEL_31:
  v33[0] = *MEMORY[0x29EDC9528];
  v22 = *(MEMORY[0x29EDC9528] + 72);
  *(v33 + *(v33[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v34 = v22;
  v35 = MEMORY[0x29EDC9570] + 16;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  v35 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2B46C0](&v42);
}

void sub_299E94C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18, MEMORY[0x29EDC9528]);
  MEMORY[0x29C2B46C0](&a34);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_299E94F54(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C2B46C0](v1);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x29EDC93D0]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>>(a1, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[72 * v10];
    v16 = &v14[72 * v13];
    *v15 = *a2;
    v17 = *(a2 + 16);
    v18 = *(a2 + 32);
    v19 = *(a2 + 48);
    *(v15 + 8) = *(a2 + 64);
    *(v15 + 2) = v18;
    *(v15 + 3) = v19;
    *(v15 + 1) = v17;
    v9 = v15 + 72;
    v20 = *(a1 + 8) - *a1;
    v21 = &v15[-v20];
    memcpy(&v15[-v20], *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v9;
    *(a1 + 16) = v16;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    *(v4 + 64) = *(a2 + 64);
    *(v4 + 32) = v7;
    *(v4 + 48) = v8;
    *(v4 + 16) = v6;
    v9 = (v4 + 72);
  }

  *(a1 + 8) = v9;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t *std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    v6[1] = v7;
  }

  return result;
}

void sub_299E9532C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

ACFUCommon::FDRDataClass *ACFUCommon::FDRDataClass::FDRDataClass(ACFUCommon::FDRDataClass *this, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(this, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 3, "");
  return this;
}

void sub_299E95380(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ACFUCommon::FDRDataClass::~FDRDataClass(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x38E38E38E38E38FLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(72 * a2);
}

uint64_t *std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(uint64_t ***a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
        v9 = v9[1];
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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
      v17 = a1 + 1;
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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
      v21 = a1 + 1;
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

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 4) = *a2;
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

void sub_299E957C4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(uint64_t ***a1, uint64_t ***a2, uint64_t a3)
{
  v5 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*>>(a1, a3, &v7);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(uint64_t a1, char **a2, uint64_t ***a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 32) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*>>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  *(v7 + 7) = *(a2 + 24);
  *(a3 + 16) = 1;
}

void sub_299E95974(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t ***a1, char *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2B4670](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_299E95B20(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C2B4610](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C2B4620](v13);
  return a1;
}

void sub_299E95D90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C2B4620](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x299E95D70);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_299E95FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ACFURestore *CentauriRestore::create(CentauriRestore *this, const __CFDictionary *a2)
{
  v3 = operator new(0x180uLL);
  ACFURestore::ACFURestore(v3);
  *v3 = &unk_2A2023C68;
  *(v3 + 45) = 0;
  *(v3 + 46) = 0;
  *(v3 + 376) = 1;
  if (CentauriRestore::init(v3, this, @"Wireless1,Ticket"))
  {
    CentauriRestore::create(v3);
    return 0;
  }

  return v3;
}

void CentauriRestore::CentauriRestore(CentauriRestore *this)
{
  ACFURestore::ACFURestore(this);
  *v1 = &unk_2A2023C68;
  *(v1 + 360) = 0;
  *(v1 + 368) = 0;
  *(v1 + 376) = 1;
}

void CentauriRestore::~CentauriRestore(CentauriRestore *this)
{
  *this = &unk_2A2023C68;
  if (*(this + 46))
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: stopping CoreCapture\n", "CentauriRestore", "~CentauriRestore");
    CoreCaptureStop();
  }

  MEMORY[0x2A1C5F098](this);
}

{
  CentauriRestore::~CentauriRestore(this);

  operator delete(v1);
}

uint64_t CentauriRestore::init(ACFUError **this, const __CFDictionary *a2, const void *a3)
{
  v68 = *MEMORY[0x29EDCA608];
  v5 = ACFURestore::init(this, a2, a3);
  if (v5)
  {
    LogInstance = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize base restore object\n", "CentauriRestore", "init");
    return 4000;
  }

  if (ACFURestore::isPreflight(this))
  {
    if (ACFURestore::isPreflightPersonalization(this))
    {
      v6 = this[44];
      v7 = this[24];
      v49 = this[23];
      v50 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      CentauriFirmware::createEmpty(v6, &v49, &v64);
      std::shared_ptr<ACFUFirmware>::operator=[abi:ne200100]<CentauriFirmware,std::default_delete<CentauriFirmware>,0>(this + 19, &v64);
      v8 = v64;
      *&v64 = 0;
      if (v8)
      {
        (*(*v8 + 56))(v8);
      }

      v9 = v50;
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (!this[19])
      {
        v47 = ACFULogging::getLogInstance(v9);
        ACFULogging::handleMessage(v47, 2, "%s::%s: failed to create firmware object\n", "CentauriRestore", "init");
        return 1000;
      }
    }

    v10 = 0;
    goto LABEL_59;
  }

  v63 = 256;
  v11 = this[44];
  v12 = this[24];
  v61 = this[23];
  v62 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CentauriFirmware::createEmpty(v11, &v61, &v64);
  std::shared_ptr<ACFUFirmware>::operator=[abi:ne200100]<CentauriFirmware,std::default_delete<CentauriFirmware>,0>(this + 19, &v64);
  v14 = v64;
  *&v64 = 0;
  if (v14)
  {
    (*(*v14 + 56))(v14);
  }

  v15 = v62;
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (!this[19])
  {
    v43 = ACFULogging::getLogInstance(v15);
    v26 = 0;
    ACFULogging::handleMessage(v43, 2, "%s::%s: failed to create firmware object\n", "CentauriRestore", "init");
    v38 = 1000;
    goto LABEL_65;
  }

  v16 = ACFUCommon::parseDebugArgs(&v64, a2, "collectLogs", v13);
  if (DWORD1(v64) != 4006)
  {
    if (DWORD1(v64))
    {
      v48 = ACFULogging::getLogInstance(v16);
      v26 = 0;
      ACFULogging::handleMessage(v48, 2, "%s::%s: failed to parse debug arguments\n", "CentauriRestore", "init");
      v38 = 4007;
      goto LABEL_65;
    }

    *(this + 376) = v64 != 0;
  }

  v17 = this[24];
  v59 = this[23];
  v60 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(this + 376);
  v19 = this[18];
  isNeRDOS = ACFURestore::isNeRDOS(this);
  CentauriTransport::create(&v59, 0, 0, v18, v19 != 0, isNeRDOS ^ 1u, &v64);
  std::shared_ptr<CentauriTransport>::operator=[abi:ne200100]<CentauriTransport,std::default_delete<CentauriTransport>,0>(this + 21, &v64);
  v21 = v64;
  *&v64 = 0;
  if (v21)
  {
    (*(*v21 + 64))(v21);
  }

  v22 = v60;
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (!this[21])
  {
    v44 = ACFULogging::getLogInstance(v22);
    v26 = 0;
    ACFULogging::handleMessage(v44, 2, "%s::%s: failed to create transport object\n", "CentauriRestore", "init");
LABEL_72:
    v38 = 4008;
    goto LABEL_65;
  }

  v23 = this[22];
  v57 = this[21];
  v58 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = this[20];
  v55 = this[19];
  v56 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = this[24];
  v53 = this[23];
  v54 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ACFURTKitROM::create();
  v26 = *(&v64 + 1);
  v10 = v64;
  v64 = 0uLL;
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v27 = v58;
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (!v10)
  {
    v45 = ACFULogging::getLogInstance(v27);
    ACFULogging::handleMessage(v45, 2, "%s::%s: failed to create update operations\n", "CentauriRestore", "init");
    goto LABEL_72;
  }

  if (!CFDictionaryContainsKey(this[16], @"BootArgs"))
  {
    goto LABEL_51;
  }

  Value = CFDictionaryGetValue(this[16], @"BootArgs");
  v29 = Value;
  if (Value)
  {
    v30 = CFGetTypeID(Value);
    Value = CFStringGetTypeID();
    if (v30 == Value)
    {
      this[45] = v29;
      ACFULogging::getLogInstance(Value);
      std::string::basic_string[abi:ne200100]<0>(&v51, "CentauriRestore");
      v31 = std::string::append(&v51, "::", 2uLL);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v52.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v52.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v52, "init", 4uLL);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v65 = v33->__r_.__value_.__r.__words[2];
      v64 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType();
      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

LABEL_51:
      *&v64 = &unk_2A2023D20;
      *(&v64 + 1) = this;
      v66 = &v64;
      std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::swap[abi:ne200100](&v64, this + 35);
      v35 = std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::~__value_func[abi:ne200100](&v64);
      *&v64 = &unk_2A2023DB0;
      *(&v64 + 1) = this;
      v66 = &v64;
      std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::swap[abi:ne200100](v35, this + 39);
      std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::~__value_func[abi:ne200100](&v64);
      if (*(this + 376) == 1 && (ACFURestore::isNeRDOS(this) & 1) == 0)
      {
        v36 = ACFUDiagnostics::copyDiagnosticsPath(this[23]);
        if (v36)
        {
          started = CentauriRestore::startCoreCapture(this, v36);
          CFRelease(v36);
          if ((started & 1) == 0)
          {
            v38 = 1007;
            goto LABEL_65;
          }
        }

        else
        {
          v39 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v39, 0, "%s::%s: no diagnostics path, skipping CoreCapture initialization\n", "CentauriRestore", "init");
        }
      }

      if (v26)
      {
        v40 = 0;
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        LODWORD(v64) = 0;
        *(&v64 + 1) = v10;
        v65 = v26;
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_60:
        LOWORD(v66) = 0;
        BYTE2(v66) = 1;
        std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__assign_unique<std::pair<ACFURestore::UpdateSteps const,RestoreStep> const*>(this + 3, &v64, &v67);
        if (v65)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v65);
        }

        if ((v40 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        ACFUError::createAppendedDomain(this[13], @"CentauriRestore");
        v38 = 0;
        goto LABEL_65;
      }

LABEL_59:
      v26 = 0;
      LODWORD(v64) = 0;
      v40 = 1;
      *(&v64 + 1) = v10;
      v65 = 0;
      goto LABEL_60;
    }
  }

  v46 = ACFULogging::getLogInstance(Value);
  ACFULogging::handleMessage(v46, 2, "%s::%s: Centauri boot-args option has wrong type\n", "CentauriRestore", "init");
  v38 = 4005;
LABEL_65:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  return v38;
}

void sub_299E9684C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<ACFUFirmware>::operator=[abi:ne200100]<CentauriFirmware,std::default_delete<CentauriFirmware>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A2023CC0;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t CentauriRestore::startCoreCapture(CentauriRestore *this, __CFString *a2)
{
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v32 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  v5 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: starting CoreCapture\n", "CentauriRestore", "startCoreCapture");
  if (!a2)
  {
    v23 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v23, 2, "%s::%s: no diagnostics path\n");
LABEL_24:
    v21 = 0;
    goto LABEL_18;
  }

  if (!MEMORY[0x2A1C78550])
  {
    v24 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v24, 2, "%s::%s: failed to load CoreCaptureDaemon framework\n");
    goto LABEL_24;
  }

  v6 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@/scratch", a2);
  v8 = v6;
  if (!v6)
  {
    v25 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v25, 2, "%s::%s: failed to create working dir\n");
    goto LABEL_24;
  }

  v9 = ACFUCommon::stringFromCFString(&v29, v6, v7);
  v34 = v30;
  *v33 = v29;
  v10 = HIBYTE(v30);
  v11 = SHIBYTE(v30);
  if ((v30 & 0x8000000000000000) != 0)
  {
    v10 = *(&v29 + 1);
  }

  if (v10)
  {
    v12 = ACFULogging::getLogInstance(v9);
    v13 = v33[0];
    if (v11 >= 0)
    {
      v13 = v33;
    }

    ACFULogging::handleMessage(v12, 0, "%s::%s: working dir: %s\n", "CentauriRestore", "startCoreCapture", v13);
    v15 = ACFUCommon::stringFromCFString(&v29, a2, v14);
    v32 = v30;
    *__p = v29;
    v16 = HIBYTE(v30);
    v17 = SHIBYTE(v30);
    if ((v30 & 0x8000000000000000) != 0)
    {
      v16 = *(&v29 + 1);
    }

    if (v16)
    {
      v18 = ACFULogging::getLogInstance(v15);
      v19 = __p[0];
      if (v17 >= 0)
      {
        v19 = __p;
      }

      ACFULogging::handleMessage(v18, 0, "%s::%s: save dir: %s\n", "CentauriRestore", "startCoreCapture", v19);
      v20 = CoreCaptureStart();
      *(this + 46) = v20;
      if (v20)
      {
        v21 = 1;
        goto LABEL_16;
      }

      v28 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v28, 2, "%s::%s: failed to start CoreCapture\n");
    }

    else
    {
      v27 = ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(v27, 2, "%s::%s: failed to convert save dir\n");
    }
  }

  else
  {
    v26 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v26, 2, "%s::%s: failed to convert working dir\n");
  }

  v21 = 0;
LABEL_16:
  CFRelease(v8);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_18:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  return v21;
}

void sub_299E96C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *CentauriRestore::gatherPreflightParameters(CentauriRestore *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: \n", "CentauriRestore", "gatherPreflightParameters");
  if (MEMORY[0x2A1C78540])
  {
    v4 = 1;
    while (1)
    {
      v5 = ACFULogging::getLogInstance(v3);
      ACFULogging::handleMessage(v5, 0, "%s::%s: attempt %u of %u\n", "CentauriRestore", "gatherPreflightParameters", v4, 3);
      v6 = CENPreflightQuery();
      v7 = [v6 mutableCopy];

      if (v7)
      {
        break;
      }

      __ns.__rep_ = 1000000000;
      std::this_thread::sleep_for (&__ns);
      if (++v4 == 4)
      {
        v8 = ACFULogging::getLogInstance(v3);
        ACFULogging::handleMessage(v8, 0, "%s::%s: giving up after %u failed attempts\n", "CentauriRestore", "gatherPreflightParameters", 3);
        return 0;
      }
    }

    isPreflighted = ACFURestore::isPreflighted(this);
    if (isPreflighted)
    {
      v10 = ACFULogging::getLogInstance(isPreflighted);
      ACFULogging::handleMessage(v10, 0, "%s::%s: already preflighted, removing nonce\n", "CentauriRestore", "gatherPreflightParameters");
      CFDictionaryRemoveValue(v7, @"Wireless1,RestoreBootNonce");
    }

    v11 = ACFULogging::getLogInstance(isPreflighted);
    ACFULogging::handleMessage(v11, 0, "%s::%s: success\n", "CentauriRestore", "gatherPreflightParameters");
  }

  else
  {
    CentauriRestore::gatherPreflightParameters(v3);
    return 0;
  }

  return v7;
}

void CentauriRestore::queryCmd(CentauriRestore *this@<X0>, uint64_t a2@<X8>)
{
  if (ACFURestore::isNeRDOS(this))
  {
    v4 = *(this + 21);
    isPreflighted = ACFURestore::isPreflighted(this);
    v6 = (**v4)(&v22, v4, 1, isPreflighted ^ 1u);
    v8 = v22;
    v7 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v23;
      v9 = v24;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (!v9)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_12;
      }
    }

    else if (!v24)
    {
LABEL_12:
      v12 = (**v8)(v8);
      v13 = v12;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v13)
      {
        v14 = 1;
        goto LABEL_16;
      }

      LogInstance = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create dictionary\n", "CentauriRestore", "queryCmd");
      std::string::basic_string[abi:ne200100]<0>(v18, "failed to create dictionary");
      ACFUError::addError();
      if (v19 < 0)
      {
        v16 = v18;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v15 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v15, 2, "%s::%s: failed to get board params\n", "CentauriRestore", "queryCmd");
    std::string::basic_string[abi:ne200100]<0>(v20, "failed to get board params");
    ACFUError::addError();
    if (v21 < 0)
    {
      v16 = v20;
LABEL_24:
      operator delete(*v16);
    }

LABEL_25:
    v14 = 0;
    v13 = 0;
LABEL_16:
    *a2 = v13;
    *(a2 + 8) = v14;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    return;
  }

  ACFURestore::queryCmd(&v22, this);
  if (v23 == 1 && (v10 = v22) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *a2 = v10;
  *(a2 + 8) = v11;
}

void sub_299E97038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriRestore::performCmd(ACFUFirmware **this)
{
  if (ACFURestore::isPreflightPersonalization(this))
  {
    if (CentauriRestore::performCmd(this, v10))
    {
      return LOBYTE(v10[0]);
    }

    return 1;
  }

  result = ACFURestore::performCmd(this);
  if (!result)
  {
    return result;
  }

  if (!this[18])
  {
    return 1;
  }

  LogInstance = ACFULogging::getLogInstance(result);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: certification requested\n", "CentauriRestore", "performCmd");
  v5 = this[18];
  v4 = this[19];
  v10[0] = this[44];
  v10[1] = v5;
  v10[2] = 0;
  v10[3] = @"scrt";
  v11 = 2;
  v15 = 1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  Manifest = ACFUFirmware::getManifest(v4);
  v6 = (*(*this[6] + 32))(this[6], v10, this[17], this[15], 1);
  if (!v6)
  {
    return 1;
  }

  v7 = ACFULogging::getLogInstance(v6);
  ACFULogging::handleMessage(v7, 2, "%s::%s: certification failed\n", "CentauriRestore", "performCmd");
  std::string::basic_string[abi:ne200100]<0>(&__p, "certification failed");
  ACFUError::addError();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_299E971F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<CentauriFirmware  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CentauriFirmware  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CentauriFirmware  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<CentauriRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<CentauriRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2023D20;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<CentauriRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<CentauriRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2023D20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CentauriRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<CentauriRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = *a3;
  v7 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = *(a1 + 8);
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  v34 = 0;
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    v14 = 0;
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: wrong firmware type\n", "CentauriRestore", "operator()");
    v15 = 4002;
    goto LABEL_34;
  }

  v9 = v6;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v5)(&__p, v5, 0, 0);
  v11 = __p;
  v10 = v30;
  if (!v30)
  {
    if (v31)
    {
      v15 = 1;
      goto LABEL_33;
    }

LABEL_12:
    DataAs = ACFUCommon::Parameter::GetDataAsType<unsigned short>(v11 + 168, &v34);
    v17 = DataAs;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if ((v17 & 1) == 0)
    {
      v27 = ACFULogging::getLogInstance(DataAs);
      ACFULogging::handleMessage(v27, 2, "%s::%s: failed to extract chip revision\n", "CentauriRestore", "operator()");
      v15 = 1;
      goto LABEL_31;
    }

    if (!CentauriFirmware::isChipRevisionSupported(v9, v34))
    {
      v15 = 1005;
      goto LABEL_31;
    }

    v18 = *(v8 + 360);
    v19 = *(v8 + 144);
    if (v18)
    {
      if (v19)
      {
        v20 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ enable_sik=1", *(v8 + 360));
      }

      else
      {
        v20 = CFRetain(v18);
      }

      v21 = v20;
      if (v20)
      {
LABEL_23:
        std::string::basic_string[abi:ne200100]<0>(&__p, "bootargs");
        v33 = v21;
        v22 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(&v35, &__p, &__p);
        v24 = v23;
        if (v32 < 0)
        {
          operator delete(__p);
        }

        if ((v24 & 1) == 0)
        {
          v28 = ACFULogging::getLogInstance(v22);
          ACFULogging::handleMessage(v28, 2, "%s::%s: failed to insert bootargs into nvram overrides\n", "CentauriRestore", "operator()");
          v15 = 1017;
LABEL_30:
          CFRelease(v21);
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (v19)
      {
        v21 = @"enable_sik=1";
        goto LABEL_23;
      }

      v21 = 0;
    }

    std::map<std::string,void const*>::map[abi:ne200100](&__p, &v35);
    v25 = CentauriFirmware::setNVRAM(v9, &__p);
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&__p, v30);
    if (v25)
    {
      v15 = 0;
    }

    else
    {
      v15 = 1017;
    }

    if (v21)
    {
      goto LABEL_30;
    }

LABEL_31:
    v14 = v7;
    if (!v10)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = v31;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (!v12)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  v15 = 1;
LABEL_32:
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_33:
  v14 = v7;
LABEL_34:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&v35, v36[0]);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v15;
}

void sub_299E97680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&a19, a20);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CentauriRestore::init(__CFDictionary const*,void const*)::$_0,std::allocator<CentauriRestore::init(__CFDictionary const*,void const*)::$_0>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::map<std::string,void const*>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<std::string,void const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,void const*>,std::__tree_node<std::__value_type<std::string,void const*>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<std::string,void const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,void const*>,std::__tree_node<std::__value_type<std::string,void const*>,void *> *,long>>>(uint64_t *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,void const*> const&>(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,void const*> const&>(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

char *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, char **a3, uint64_t *a4, char *a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, a2 + 32) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 4, a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v13 = a2[1];
  if (v13)
  {
    v14 = a2[1];
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 32) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, a3, a5);
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::pair<std::string const,void const*> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  *(v7 + 7) = *(a2 + 24);
  *(a3 + 16) = 1;
}

void sub_299E97AF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_299E97DD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<CentauriRestore::init(__CFDictionary const*,void const*)::$_1,std::allocator<CentauriRestore::init(__CFDictionary const*,void const*)::$_1>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2023DB0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<CentauriRestore::init(__CFDictionary const*,void const*)::$_1,std::allocator<CentauriRestore::init(__CFDictionary const*,void const*)::$_1>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2023DB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CentauriRestore::init(__CFDictionary const*,void const*)::$_1,std::allocator<CentauriRestore::init(__CFDictionary const*,void const*)::$_1>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *a3;
  v6 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v7 = *(a1 + 8);
  if (!*(v7 + 144))
  {
LABEL_17:
    v15 = 0;
LABEL_18:
    if (!v6)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  if (v5)
  {
    if (v5)
    {
      v8 = v5;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(v7 + 360);
      std::string::basic_string[abi:ne200100]<0>(__p, "bootargs");
      v10 = &stru_2A2024340;
      if (v9)
      {
        v10 = v9;
      }

      v21 = v10;
      v11 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void const*>>(&v22, __p, __p);
      v13 = v12;
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13)
      {
        std::map<std::string,void const*>::map[abi:ne200100](__p, &v22);
        v14 = CentauriFirmware::setNVRAM(v8, __p);
        std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(__p, __p[1]);
        if (v14)
        {
          v15 = 1;
        }

        else
        {
          v15 = 1017;
        }

        if (v6)
        {
          goto LABEL_15;
        }
      }

      else
      {
        LogInstance = ACFULogging::getLogInstance(v11);
        ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to insert bootargs into nvram overrides\n", "CentauriRestore", "operator()");
        LOBYTE(v14) = 0;
        v15 = 1017;
        if (v6)
        {
LABEL_15:
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }
      }

      std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&v22, v23[0]);
      if ((v14 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v17 = ACFULogging::getLogInstance(v5);
  ACFULogging::handleMessage(v17, 2, "%s::%s: wrong firmware type\n", "CentauriRestore", "operator()");
  std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&v22, v23[0]);
  v15 = 4002;
  if (v6)
  {
LABEL_19:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_20:
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v15;
}

void sub_299E980C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, char *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char *a20)
{
  std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&__p, a13);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&a19, a20);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  else
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::destroy(&a19, a20);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CentauriRestore::init(__CFDictionary const*,void const*)::$_1,std::allocator<CentauriRestore::init(__CFDictionary const*,void const*)::$_1>,ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__assign_unique<std::pair<ACFURestore::UpdateSteps const,RestoreStep> const*>(void *result, int *a2, int *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 8;
            break;
          }

          v11 = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 8;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__emplace_unique_key_args<ACFURestore::UpdateSteps,std::pair<ACFURestore::UpdateSteps const,RestoreStep> const&>(v5, a2, a2);
    a2 += 8;
  }

  return result;
}

void sub_299E98298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__node_assign_unique(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = a3;
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  v7 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 8);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (v9 >= v7)
      {
        return v8;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = (a1 + 8);
LABEL_9:
    *(a3 + 32) = v7;
    RestoreStep::operator=();
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v8, v6, v3);
  }

  return v3;
}

void *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t *a1)
{
  std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(*a1, a1[2]);
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      a1[1] = v2;
    }

    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__emplace_unique_key_args<ACFURestore::UpdateSteps,std::pair<ACFURestore::UpdateSteps const,RestoreStep> const&>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 8);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        return v8;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = (a1 + 8);
LABEL_10:
    v10 = operator new(0x40uLL);
    v11 = v10;
    v10[8] = *a3;
    v12 = *(a3 + 16);
    *(v10 + 5) = *(a3 + 8);
    *(v10 + 6) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    *(v10 + 28) = *(a3 + 24);
    *(v10 + 58) = *(a3 + 26);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v8, v6, v10);
  }

  return v11;
}

void CentauriCommon::getTatsuTagToFileNameMap(uint64_t *__return_ptr a1@<X8>)
{
  v45[4] = *MEMORY[0x29EDCA608];
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v3, CentauriTags::Firmware::kRTKitOS, "rkos");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v4, CentauriTags::Firmware::kRestoreRTKitOS, "rrko");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v5, CentauriTags::Firmware::kRTKitOSLPEM, "rkol");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v6, CentauriTags::Firmware::kFirmwareDigestArray, "fwda");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v7, CentauriTags::Firmware::kACIWIFI, "aciw");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v8, CentauriTags::Firmware::kACIWiFiTxManuf, "awma");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v9, CentauriTags::Firmware::kWiFiTx, "wftp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v10, CentauriTags::Firmware::kWiFiTxManuf, "wftm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v11, CentauriTags::Firmware::kWiFiRx, "wfrp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v12, CentauriTags::Firmware::kWiFiRxManuf, "wfrm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v13, CentauriTags::Firmware::kScanWifi, "scaw");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v14, CentauriTags::Firmware::kScanWifiManuf, "swfm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v15, CentauriTags::Firmware::kWifi2GLMAC, "w2lp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v16, CentauriTags::Firmware::kWifi2GLMACManuf, "w2lm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v17, CentauriTags::Firmware::kWifi5GLMAC, "w5lp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v18, CentauriTags::Firmware::kWifi5GLMACManuf, "w5lm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v19, CentauriTags::Firmware::kWifi2GLPhy, "w2pp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v20, CentauriTags::Firmware::kWifi2GLPhyManuf, "w2pm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v21, CentauriTags::Firmware::kWifi5GLPhy, "w5pp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v22, CentauriTags::Firmware::kWifi5GLPhyManuf, "w5pm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v23, CentauriTags::Firmware::kWifiRegData, "wfrd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v24, CentauriTags::Firmware::kACIBT, "acib");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v25, CentauriTags::Firmware::kACIBTLPEM, "lpbt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v26, CentauriTags::Firmware::kACIBTManuf, "acim");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v27, CentauriTags::Firmware::kPhyBlueTooth, "phyb");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v28, CentauriTags::Firmware::kPhyBlueToothManuf, "pbtm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v29, CentauriTags::Firmware::kScanBluetooth, "scab");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v30, CentauriTags::Firmware::kScanBTLPEM, "sbtl");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v31, CentauriTags::Firmware::kScanBTManuf, "sbtm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v32, CentauriTags::Firmware::kBTRegData, "btrd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v33, CentauriTags::Firmware::kCCPUApplicationFirmware, "ccaf");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v34, CentauriTags::Firmware::kCoexRealTimeArbiter, "crta");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v35, CentauriTags::Firmware::kPhyBlueToothLPM, "pbtl");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v36, CentauriTags::Firmware::kBTOTPDatabase, "bopd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v37, CentauriTags::Firmware::kBTSecondary, "btse");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v38, CentauriTags::Firmware::kBTSecondaryManuf, "btsm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v39, CentauriTags::Firmware::kPhyBlueTooth5G, "bt5p");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v40, CentauriTags::Firmware::kPhyBlueTooth5GManuf, "bt5m");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v41, CentauriTags::Firmware::kWiFiOTPDatabase, "wopd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v42, CentauriTags::Firmware::kPhyBluetoothTrim, "pbtt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v43, CentauriTags::Firmware::kPhyBluetooth5GTrim, "bt5t");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v44, CentauriTags::Firmware::kWifi2GLPhyTrim, "w2pt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v45, &CentauriTags::Firmware::kWifi5GLPhyTrim, "w5pt");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, v3, 43);
  v2 = 172;
  do
  {
    if (SHIBYTE(v3[v2 - 1]) < 0)
    {
      operator delete(v3[v2 - 3]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
}

void sub_299E98AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v10 + 1352;
  v13 = -1376;
  while (1)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 32;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(uint64_t a1, void *a2, char *__s)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v5 = operator new(v8);
    *(a1 + 16) = v7;
    *(a1 + 24) = v8 | 0x8000000000000000;
    *(a1 + 8) = v5;
  }

  else
  {
    *(a1 + 31) = v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  memmove(v5, __s, v7);
LABEL_10:
  *(v5 + v7) = 0;
  return a1;
}