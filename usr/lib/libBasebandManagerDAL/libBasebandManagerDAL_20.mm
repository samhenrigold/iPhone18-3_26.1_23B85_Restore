void sub_29737C65C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN10BootModule21handleBootFailed_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v14 = v4;
    if (v4)
    {
      if (!a1[5])
      {
        goto LABEL_15;
      }

      v5 = v3[18];
      v3[17] = 0;
      v3[18] = 0;
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      v11 = 0xAAAAAAAAAAAAAAAALL;
      v12 = 0xAAAAAAAAAAAAAAAALL;
      (*(*v3 + 88))(&v11, v3);
      v6 = v11;
      if (v11)
      {
        v7 = operator new(0x38uLL);
        strcpy(v7, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
        v8 = *(v6 + 48);
        std::string::__init_copy_ctor_external(&v15, v7, 0x33uLL);
        (*(*v8 + 32))(v8, &v15);
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }

        operator delete(v7);
      }

      v9 = v12;
      if (v12 && !atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v4 = v14;
      if (v14)
      {
LABEL_15:
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v10 = v4;
          (v4->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v10);
        }
      }
    }
  }
}

void sub_29737CB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  operator delete(v19);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a10);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_29737CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule21handleBootFailed_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_90(void *a1, int a2, xpc_object_t *a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
          v12 = v7[10];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v7[10];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = v7[9];
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x28uLL);
        *v16 = v7;
        v16[1] = v10;
        v16[2] = v9;
        *(v16 + 6) = a2;
        v16[4] = v11;
        v17 = xpc_null_create();
        v18 = v7[11];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_21handleBootFailed_syncENSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEUb3_E4__12EEvOT_EUlvE_EEvP16dispatch_queue_sNS6_10unique_ptrISE_NS6_14default_deleteISE_EEEEENUlPvE_8__invokeESN_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void BootModule::handleReset_sync(uint64_t a1, uint64_t a2, void **a3)
{
  memset(&v54, 170, sizeof(v54));
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, *(a2 + 48), *(a2 + 56));
    v6 = (a1 + 112);
    if ((a1 + 112) == &v54)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v54 = *(a2 + 48);
    v6 = (a1 + 112);
    if ((a1 + 112) == &v54)
    {
      goto LABEL_16;
    }
  }

  if (*(a1 + 135) < 0)
  {
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v54;
    }

    else
    {
      v7 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v54.__r_.__value_.__l.__size_;
    }

    std::string::__assign_no_alias<false>(v6, v7, size);
  }

  else if ((*(&v54.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v6, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    *v6 = v54;
  }

LABEL_16:
  v53 = 0;
  v9 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v53 = Mutable;
  }

  else
  {
    Mutable = v53;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF210], v9, v11);
  ResetInfo::addToDict(a2, &v53, v12, v13, v14);
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v15 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(&v55);
    v16 = v55;
    v55 = 0uLL;
    v17 = *(&off_2A1399448 + 1);
    off_2A1399448 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *(&v55 + 1);
    if (*(&v55 + 1) && !atomic_fetch_add((*(&v55 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v15 = off_2A1399448;
  }

  v51 = v15;
  v52 = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v19 = *(a1 + 80);
  if (!v19 || (v20 = *(a1 + 72), (v21 = std::__shared_weak_count::lock(v19)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v21;
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v51;
  v24 = *MEMORY[0x29EDBF460];
  v25 = strlen(*MEMORY[0x29EDBF460]);
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v26 = v25;
  if (v25 >= 0x17)
  {
    if ((v25 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v25 | 7) + 1;
    }

    v27 = operator new(v29);
    __dst[1] = v26;
    v50 = v29 | 0x8000000000000000;
    __dst[0] = v27;
LABEL_42:
    memmove(v27, v24, v26);
    *(v26 + v27) = 0;
    v28 = v53;
    if (!v53)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  HIBYTE(v50) = v25;
  v27 = __dst;
  if (v25)
  {
    goto LABEL_42;
  }

  LOBYTE(__dst[0]) = 0;
  v28 = v53;
  if (!v53)
  {
    goto LABEL_45;
  }

LABEL_43:
  v30 = CFGetTypeID(v28);
  if (v30 == CFDictionaryGetTypeID())
  {
    v48 = v28;
    CFRetain(v28);
    goto LABEL_46;
  }

LABEL_45:
  v28 = 0;
  v48 = 0;
LABEL_46:
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 1174405120;
  v37[2] = ___ZN10BootModule16handleReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
  v37[3] = &__block_descriptor_tmp_97;
  v37[4] = a1;
  v37[5] = v20;
  v38 = v22;
  atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ResetInfo::ResetInfo(&v39, a2);
  v31 = *a3;
  if (*a3)
  {
    v31 = _Block_copy(v31);
  }

  aBlock = v31;
  v32 = _Block_copy(v37);
  v47 = v32;
  ABMServer::broadcast(v23, __dst, &v48, &v47);
  if (v32)
  {
    _Block_release(v32);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(__dst[0]);
    v33 = aBlock;
    if (!aBlock)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v33 = aBlock;
  if (aBlock)
  {
LABEL_56:
    _Block_release(v33);
  }

LABEL_57:
  if (v45 < 0)
  {
    operator delete(__p);
    if ((v43 & 0x80000000) == 0)
    {
LABEL_59:
      if ((v41 & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_72;
    }
  }

  else if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v42);
  if ((v41 & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

LABEL_73:
    operator delete(v39.__r_.__value_.__l.__data_);
    v34 = v38;
    if (!v38)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_72:
  operator delete(v40);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_73;
  }

LABEL_61:
  v34 = v38;
  if (v38)
  {
LABEL_62:
    std::__shared_weak_count::__release_weak(v34);
  }

LABEL_63:
  std::__shared_weak_count::__release_weak(v22);
  v35 = v52;
  if (!v52 || atomic_fetch_add((v52 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  v36 = v53;
  if (v53)
  {
LABEL_66:
    CFRelease(v36);
  }

LABEL_67:
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }
}

void sub_29737D340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *aBlock, uint64_t a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v38 - 152));
  if (*(v38 - 121) < 0)
  {
    operator delete(*(v38 - 144));
  }

  _Unwind_Resume(a1);
}

void ___ZN10BootModule16handleReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  v23 = v4;
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!*(a1 + 40))
  {
    goto LABEL_20;
  }

  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&__s1, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __s1 = *(a1 + 56);
  }

  v6 = *MEMORY[0x29EDBEB68];
  v7 = strlen(*MEMORY[0x29EDBEB68]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v7 != __s1.__r_.__value_.__l.__size_)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
      v8 = v3[13];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        ResetInfo::ResetInfo(&v16, (a1 + 56));
        v9 = *(a1 + 168);
        if (v9)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        BootModule::hardReset_sync(v3, &v16, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        v10 = &v16;
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_32;
      }

LABEL_11:
      LOWORD(__s1.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Request to perform hard reset", &__s1, 2u);
      goto LABEL_12;
    }

    if (v7 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v11 = __s1.__r_.__value_.__r.__words[0];
    v12 = memcmp(__s1.__r_.__value_.__l.__data_, v6, v7);
    operator delete(v11);
    if (v12)
    {
LABEL_10:
      v8 = v3[13];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]) || memcmp(&__s1, v6, v7))
  {
    goto LABEL_10;
  }

  v13 = v3[13];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__s1.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297288000, v13, OS_LOG_TYPE_DEFAULT, "#I Request to perform soft reset", &__s1, 2u);
  }

  ResetInfo::ResetInfo(&v19, (a1 + 56));
  v14 = *(a1 + 168);
  if (v14)
  {
    v14 = _Block_copy(v14);
  }

  v18 = v14;
  (*(*v3 + 112))(v3, &v19, &v18);
  if (v18)
  {
    _Block_release(v18);
  }

  v10 = &v19;
  if ((v20 & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v10[2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v10[3].__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v10[2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v10[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_34:
    operator delete(v10[1].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        return;
      }

LABEL_36:
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return;
    }

    goto LABEL_35;
  }

LABEL_33:
  operator delete(v10[2].__r_.__value_.__l.__data_);
  if (SHIBYTE(v10[1].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  if ((SHIBYTE(v10->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_35:
  operator delete(v10->__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_36;
  }
}

void sub_29737D728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *aBlock, void *a25)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ResetInfo::~ResetInfo(&a25);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v25 - 64);
  _Unwind_Resume(a1);
}

void sub_29737D774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, void *a10)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ResetInfo::~ResetInfo(&a10);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v10 - 64);
  _Unwind_Resume(a1);
}

void BootModule::hardReset_sync(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v6 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(&__s1);
    v7 = *&__s1.__r_.__value_.__l.__data_;
    *&__s1.__r_.__value_.__l.__data_ = 0uLL;
    v8 = *(&off_2A1399448 + 1);
    off_2A1399448 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    size = __s1.__r_.__value_.__l.__size_;
    if (__s1.__r_.__value_.__l.__size_ && !atomic_fetch_add((__s1.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v6 = off_2A1399448;
  }

  v46 = v6;
  v47 = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  *(a1 + 188) = 0;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__s1, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __s1 = *(a2 + 24);
  }

  v10 = *MEMORY[0x29EDBF5C0];
  v11 = strlen(*MEMORY[0x29EDBF5C0]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v11 == __s1.__r_.__value_.__l.__size_)
    {
      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v12 = __s1.__r_.__value_.__r.__words[0];
      v13 = memcmp(__s1.__r_.__value_.__l.__data_, v10, v11);
      operator delete(v12);
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }

LABEL_25:
    if ((capabilities::trace::supportsCoredumpCrashReasonOnCustomerBuild(v11) & 1) == 0)
    {
      v17 = *(a1 + 584);
      if (v17)
      {
        v16 = (*v17 + 16);
        goto LABEL_28;
      }
    }

    goto LABEL_29;
  }

  if (v11 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
  {
    goto LABEL_25;
  }

  v11 = memcmp(&__s1, v10, v11);
  if (v11)
  {
    goto LABEL_25;
  }

LABEL_21:
  v14 = *(a1 + 104);
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 584);
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  LOWORD(__s1.__r_.__value_.__l.__data_) = 0;
  _os_log_error_impl(&dword_297288000, v14, OS_LOG_TYPE_ERROR, "Falling back to baseband powercycle as bootup failed", &__s1, 2u);
  v15 = *(a1 + 584);
  if (v15)
  {
LABEL_23:
    v16 = (*v15 + 24);
LABEL_28:
    (*v16)();
  }

LABEL_29:
  if (*a3)
  {
    LODWORD(__s1.__r_.__value_.__l.__data_) = 0;
    dispatch::block<void({block_pointer})(int,std::string)>::operator()<int,char const(&)[1]>(a3, &__s1, "");
  }

  __s1.__r_.__value_.__r.__words[0] = 0;
  v18 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v21 = __s1.__r_.__value_.__r.__words[0];
  if (Mutable)
  {
    __s1.__r_.__value_.__r.__words[0] = Mutable;
    if (v21)
    {
      CFRelease(v21);
      Mutable = __s1.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    Mutable = __s1.__r_.__value_.__r.__words[0];
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF0C8], v18, v20);
  ResetInfo::addToDict(a2, &__s1, v22, v23, v24);
  v25 = *(a1 + 80);
  if (!v25 || (v26 = *(a1 + 72), (v27 = std::__shared_weak_count::lock(v25)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v28 = v27;
  atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = v46;
  v30 = *MEMORY[0x29EDBF460];
  v31 = strlen(*MEMORY[0x29EDBF460]);
  if (v31 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v31 | 7) + 1;
    }

    v33 = operator new(v35);
    __dst[1] = v32;
    v44 = v35 | 0x8000000000000000;
    __dst[0] = v33;
LABEL_48:
    memmove(v33, v30, v32);
    *(v32 + v33) = 0;
    v34 = __s1.__r_.__value_.__r.__words[0];
    if (!__s1.__r_.__value_.__r.__words[0])
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  HIBYTE(v44) = v31;
  v33 = __dst;
  if (v31)
  {
    goto LABEL_48;
  }

  LOBYTE(__dst[0]) = 0;
  v34 = __s1.__r_.__value_.__r.__words[0];
  if (!__s1.__r_.__value_.__r.__words[0])
  {
    goto LABEL_51;
  }

LABEL_49:
  v36 = CFGetTypeID(v34);
  if (v36 == CFDictionaryGetTypeID())
  {
    v42 = v34;
    CFRetain(v34);
    goto LABEL_52;
  }

LABEL_51:
  v34 = 0;
  v42 = 0;
LABEL_52:
  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 1174405120;
  v39[2] = ___ZN10BootModule14hardReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
  v39[3] = &__block_descriptor_tmp_101;
  v39[4] = a1;
  v39[5] = v26;
  v40 = v28;
  atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v37 = _Block_copy(v39);
  v41 = v37;
  ABMServer::broadcast(v29, __dst, &v42, &v41);
  if (v37)
  {
    _Block_release(v37);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  std::__shared_weak_count::__release_weak(v28);
  if (__s1.__r_.__value_.__r.__words[0])
  {
    CFRelease(__s1.__r_.__value_.__l.__data_);
  }

  v38 = v47;
  if (v47)
  {
    if (!atomic_fetch_add((v47 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }
  }
}

void sub_29737DD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24)
{
  if (v25)
  {
    _Block_release(v25);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v24);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a24);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v26 - 80);
  _Unwind_Resume(a1);
}

void sub_29737DE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v20 - 80);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule14hardReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6[0] = MEMORY[0x29EDCA5F8];
        v6[1] = 0x40000000;
        v6[2] = ___ZN10BootModule14hardReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2;
        v6[3] = &__block_descriptor_tmp_98_0;
        v6[4] = v3;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped((v3 + 72), v6);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void BootModule::boot_sync(BootModule *this)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *(this + 576);
  if ((v2 - 2) <= 6)
  {
    v3 = *(this + 13);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = off_29EE683F0[v2 - 2];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Bootup request rejected as we are already in %s state", &buf, 0xCu);
    }

    return;
  }

  (*(*this + 104))(this, 2);
  ++*(this + 46);
  v6 = *(this + 9);
  v5 = *(this + 10);
  v36 = v6;
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5), (v37 = v7) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v9 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x4002000000;
  v40 = __Block_byref_object_copy__1;
  v41 = __Block_byref_object_dispose__1;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (capabilities::abs::shouldBoot(v9))
  {
    global_queue = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN10BootModule9boot_syncEv_block_invoke;
    block[3] = &unk_2A1E3B338;
    block[6] = this;
    block[7] = v6;
    v31 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    block[4] = &v32;
    block[5] = &buf;
    dispatch_group_async(v9, global_queue, block);
    v11 = v31;
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    if (v9)
    {
      dispatch_retain(v9);
      dispatch_group_enter(v9);
    }

    v12 = *(this + 13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Faking bootup", v29, 2u);
    }

    v13 = *(this + 17);
    v14 = operator new(0x20uLL);
    v27 = v14;
    v28 = xmmword_297431AE0;
    strcpy(v14, "Wait for Ready on Fake Boot");
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule9boot_syncEv_block_invoke_136;
    aBlock[3] = &__block_descriptor_tmp_137;
    aBlock[4] = this;
    aBlock[5] = v6;
    v24 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    group = v9;
    if (v9)
    {
      dispatch_retain(v9);
      dispatch_group_enter(group);
    }

    v15 = _Block_copy(aBlock);
    v26 = v15;
    ResetDetection::add(v13, &v27, 0, &v26, -1);
    if (v15)
    {
      _Block_release(v15);
    }

    operator delete(v14);
    *(v33 + 24) = 1;
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    v16 = v24;
    if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v9)
    {
      dispatch_group_leave(v9);
      dispatch_release(v9);
    }
  }

  v17 = *(this + 11);
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 1174405120;
  v20[2] = ___ZN10BootModule9boot_syncEv_block_invoke_138;
  v20[3] = &unk_2A1E3B430;
  v20[6] = this;
  v20[7] = v36;
  v21 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20[4] = &v32;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v20[5] = &buf;
  dispatch_group_notify(v9, v17, v20);
  if (object)
  {
    dispatch_release(object);
  }

  v18 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    _Block_object_dispose(&buf, 8);
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  _Block_object_dispose(&buf, 8);
  if (SHIBYTE(v44) < 0)
  {
LABEL_35:
    operator delete(v42);
  }

LABEL_36:
  if (v9)
  {
    dispatch_release(v9);
  }

  _Block_object_dispose(&v32, 8);
  v19 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }
}

void sub_29737E4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_group_t group)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BootModule::checkFSSyncStatus_sync(uint64_t a1, void **a2)
{
  v3 = *(a1 + 80);
  if (!v3 || (v5 = *(a1 + 72), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *MEMORY[0x29EDBF310];
  v9 = strlen(*MEMORY[0x29EDBF310]);
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
    v23 = v12 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_13;
  }

  HIBYTE(v23) = v9;
  v11 = __dst;
  if (v9)
  {
LABEL_13:
    memmove(v11, v8, v10);
  }

  *(v10 + v11) = 0;
  v13 = xpc_null_create();
  v21 = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule22checkFSSyncStatus_syncEN8dispatch5blockIU13block_pointerFvbbEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_102;
  aBlock[4] = a1;
  v14 = *a2;
  if (*a2)
  {
    v14 = _Block_copy(v14);
  }

  v17 = v14;
  v18 = v5;
  v19 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = _Block_copy(aBlock);
  v20 = v15;
  Service::runCommand(a1, __dst, &v21, &v20);
  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v13);
  v21 = 0;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_29737E7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v26)
  {
    _Block_release(v26);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v27);
  if (a25 < 0)
  {
    operator delete(__p);
    std::__shared_weak_count::__release_weak(v25);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v25);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule22checkFSSyncStatus_syncEN8dispatch5blockIU13block_pointerFvbbEEE_block_invoke(void *a1, int a2, xpc_object_t *a3)
{
  v4 = a1[7];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (a1[6])
  {
    v10 = *a3;
    if (*a3)
    {
      xpc_retain(*a3);
      v11 = a1[5];
      if (v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = a1[5];
      if (v11)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v13 = v7[10];
        if (!v13)
        {
LABEL_25:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

LABEL_10:
        v14 = v7[9];
        v15 = std::__shared_weak_count::lock(v13);
        if (!v15)
        {
          goto LABEL_25;
        }

        v16 = v15;
        v17 = operator new(0x18uLL);
        *v17 = a2;
        v17[1] = v10;
        v18 = xpc_null_create();
        if (v12)
        {
          v19 = _Block_copy(v12);
        }

        else
        {
          v19 = 0;
        }

        v17[2] = v19;
        v20 = v7[11];
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = operator new(0x18uLL);
        *v21 = v17;
        v21[1] = v14;
        v21[2] = v16;
        dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_22checkFSSyncStatus_syncENS_5blockIU13block_pointerFvbbEEEEUb4_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISB_NSG_14default_deleteISB_EEEEENUlPvE_8__invokeESL_);
        if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (!v12)
          {
            goto LABEL_19;
          }
        }

        else
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
          if (!v12)
          {
LABEL_19:
            xpc_release(v18);
            goto LABEL_20;
          }
        }

        _Block_release(v12);
        goto LABEL_19;
      }
    }

    v12 = 0;
    v13 = v7[10];
    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_10;
  }

LABEL_20:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void *__copy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvbbEEE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(void *a1, void *a2)
{
  result = a2[5];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[6];
  v5 = a2[7];
  a1[5] = result;
  a1[6] = v6;
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvbbEEE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void BootModule::softReset_sync(uint64_t a1, const ResetInfo *a2, void **a3)
{
  if ((atomic_load_explicit(&qword_2A1399E98, memory_order_acquire) & 1) == 0)
  {
    v27 = __cxa_guard_acquire(&qword_2A1399E98);
    if (v27)
    {
      v28 = config::hw::watch(v27);
      v29 = 12;
      if (v28)
      {
        v29 = 18;
      }

      _MergedGlobals_12 = v29;
      __cxa_guard_release(&qword_2A1399E98);
    }
  }

  v6 = *(a1 + 80);
  if (!v6 || (v7 = *(a1 + 72), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v50 = 0;
    v10 = std::__shared_weak_count::lock(v8);
    v51 = v10;
    if (v10)
    {
LABEL_6:
      v50 = v7;
      goto LABEL_9;
    }
  }

  else
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
    v50 = 0;
    v10 = std::__shared_weak_count::lock(v9);
    v51 = v10;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_9:
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_122;
  aBlock[4] = a1;
  aBlock[5] = v7;
  v39 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a3;
  if (*a3)
  {
    v11 = _Block_copy(v11);
  }

  v40 = v11;
  ResetInfo::ResetInfo(&v41, a2);
  v12 = _Block_copy(aBlock);
  v13 = *(a1 + 88);
  if (v13)
  {
    dispatch_retain(*(a1 + 88));
  }

  v48 = v12;
  v49 = v13;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v14 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v15 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v52, v14);
    v16 = v52;
    v52 = 0uLL;
    v17 = *(&off_2A1399388 + 1);
    off_2A1399388 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *(&v52 + 1);
    if (*(&v52 + 1) && !atomic_fetch_add((*(&v52 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v15 = off_2A1399388;
  }

  v19 = *(&off_2A1399388 + 1);
  v32 = v15;
  v33 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v15 + 16))(&v34, v15);
  v36 = 0;
  v37 = 0;
  if (v35)
  {
    v37 = std::__shared_weak_count::lock(v35);
    if (v37)
    {
      v36 = v34;
    }

    if (v35)
    {
      std::__shared_weak_count::__release_weak(v35);
    }
  }

  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = v36;
    if (!v36)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v20 = v36;
    if (!v36)
    {
      goto LABEL_43;
    }
  }

  v21 = *(a1 + 584);
  if (v21)
  {
    (*(*v21 + 56))(v21, 5);
  }

  v22 = v48;
  if (v48)
  {
    v22 = _Block_copy(v48);
  }

  v30 = v22;
  object = v49;
  if (v49)
  {
    dispatch_retain(v49);
  }

  (*(*v20 + 24))(v20, 8000000000, &v30);
  if (object)
  {
    dispatch_release(object);
  }

  if (v30)
  {
    _Block_release(v30);
  }

LABEL_43:
  v23 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v49)
  {
    dispatch_release(v49);
  }

  if (v48)
  {
    _Block_release(v48);
  }

  if (v47 < 0)
  {
    operator delete(__p);
    if ((v45 & 0x80000000) == 0)
    {
LABEL_52:
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_58;
    }
  }

  else if ((v45 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

  operator delete(v44);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_53:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(v42);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_54:
    v24 = v40;
    if (!v40)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_59:
  operator delete(v41.__r_.__value_.__l.__data_);
  v24 = v40;
  if (v40)
  {
LABEL_60:
    _Block_release(v24);
  }

LABEL_61:
  v25 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void sub_29737F050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *aBlock)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v27 - 112);
  ResetInfo::~ResetInfo((v26 + 64));
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v25 + 40);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v27 - 96);
  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(void *a1, ctu::cf **a2)
{
  v71 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v62 = 0uLL;
  v63 = 0;
  if (!*a2)
  {
    v6 = *(v3 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Soft reset issued; waiting for reset detection", buf, 2u);
    }

    v7 = *(v3 + 136);
    v8 = operator new(0x20uLL);
    v42 = v8;
    v43 = xmmword_29742C6A0;
    strcpy(v8, "Soft Reset Wait for Reset");
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 1174405120;
    v31[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_104;
    v31[3] = &__block_descriptor_tmp_118;
    v10 = a1[5];
    v9 = a1[6];
    v31[4] = v3;
    v31[5] = v10;
    v32 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = a1[7];
    if (v11)
    {
      v11 = _Block_copy(v11);
    }

    aBlock = v11;
    ResetInfo::ResetInfo(&v34, (a1 + 8));
    v12 = _Block_copy(v31);
    v41 = v12;
    v13 = dispatch_time(0, 1000000000 * _MergedGlobals_12);
    ResetDetection::add(v7, &v42, 1, &v41, v13);
    if (v12)
    {
      _Block_release(v12);
    }

    operator delete(v8);
    if (v40 < 0)
    {
      operator delete(__p);
      if ((v38 & 0x80000000) == 0)
      {
LABEL_18:
        if ((v36 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_38;
      }
    }

    else if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v37);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_19:
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_39;
    }

LABEL_38:
    operator delete(v35);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      v14 = aBlock;
      if (!aBlock)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(v34.__r_.__value_.__l.__data_);
    v14 = aBlock;
    if (!aBlock)
    {
LABEL_41:
      v17 = v32;
      if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        if ((SHIBYTE(v63) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_78;
      }

      goto LABEL_77;
    }

LABEL_40:
    _Block_release(v14);
    goto LABEL_41;
  }

  ctu::cf::show(buf, *a2, a2);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  v62 = *buf;
  v63 = v65;
  v4 = *(v3 + 104);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = a1[7];
    if (!v5)
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  v30 = &v62;
  if (v63 < 0)
  {
    v30 = v62;
  }

  *buf = 136446210;
  *&buf[4] = v30;
  _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "Soft reset failed; falling back to hard reset: %{public}s", buf, 0xCu);
  v5 = a1[7];
  if (v5)
  {
LABEL_6:
    if (SHIBYTE(v63) < 0)
    {
      std::string::__init_copy_ctor_external(buf, v62, *(&v62 + 1));
    }

    else
    {
      *buf = v62;
      *&v65 = v63;
    }

    (*(v5 + 16))(v5, 3760250880, buf);
    if (SBYTE7(v65) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_25:
  if ((v3 + 112) != &v62)
  {
    if (*(v3 + 135) < 0)
    {
      if (v63 >= 0)
      {
        v15 = &v62;
      }

      else
      {
        v15 = v62;
      }

      if (v63 >= 0)
      {
        v16 = HIBYTE(v63);
      }

      else
      {
        v16 = *(&v62 + 1);
      }

      std::string::__assign_no_alias<false>((v3 + 112), v15, v16);
    }

    else if (v63 < 0)
    {
      std::string::__assign_no_alias<true>((v3 + 112), v62, *(&v62 + 1));
    }

    else
    {
      *(v3 + 112) = v62;
      *(v3 + 128) = v63;
    }
  }

  v18 = *(v3 + 584);
  if (v18)
  {
    (*(*v18 + 56))(v18, 7);
  }

  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69 = v19;
  v70 = v19;
  v67 = v19;
  v68 = v19;
  v65 = v19;
  v66 = v19;
  *buf = v19;
  v20 = *MEMORY[0x29EDBEB60];
  v21 = strlen(*MEMORY[0x29EDBEB60]);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v21 | 7) + 1;
    }

    p_dst = operator new(v24);
    *(&__dst + 1) = v22;
    v61 = v24 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_56;
  }

  HIBYTE(v61) = v21;
  p_dst = &__dst;
  if (v21)
  {
LABEL_56:
    memmove(p_dst, v20, v22);
  }

  *(p_dst + v22) = 0;
  v25 = *MEMORY[0x29EDBF5C8];
  v26 = strlen(*MEMORY[0x29EDBF5C8]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    *(&v58 + 1) = v27;
    v59 = v29 | 0x8000000000000000;
    *&v58 = v28;
    goto LABEL_65;
  }

  HIBYTE(v59) = v26;
  v28 = &v58;
  if (v26)
  {
LABEL_65:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  Timestamp::Timestamp(v54);
  Timestamp::asString(v54, 0, 9, v56);
  v53 = 0;
  LOBYTE(v52) = 0;
  ResetInfo::ResetInfo(buf, &__dst, &v58, (v3 + 112), v56, 7, &v52);
  if ((v57 & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v54, v55);
    if ((SHIBYTE(v59) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_81:
    operator delete(v58);
    if ((SHIBYTE(v61) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_82;
  }

  operator delete(v56[0]);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v54, v55);
  if (SHIBYTE(v59) < 0)
  {
    goto LABEL_81;
  }

LABEL_68:
  if ((SHIBYTE(v61) & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

LABEL_82:
  operator delete(__dst);
LABEL_69:
  ResetInfo::ResetInfo(&v45, buf);
  v44 = 0;
  BootModule::handleReset_sync(v3, &v45, &v44);
  if (v51 < 0)
  {
    operator delete(v50);
    if ((v49 & 0x80000000) == 0)
    {
LABEL_71:
      if ((v47 & 0x80000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_85;
    }
  }

  else if ((v49 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v48);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_72:
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_86;
  }

LABEL_85:
  operator delete(v46);
  if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(v70) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_87;
  }

LABEL_86:
  operator delete(v45.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
LABEL_74:
    if ((SBYTE7(v68) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_88;
  }

LABEL_87:
  operator delete(*(&v69 + 1));
  if ((SBYTE7(v68) & 0x80000000) == 0)
  {
LABEL_75:
    if ((SHIBYTE(v66) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_89;
  }

LABEL_88:
  operator delete(v67);
  if (SHIBYTE(v66) < 0)
  {
LABEL_89:
    operator delete(*(&v65 + 1));
    if (SBYTE7(v65) < 0)
    {
      goto LABEL_90;
    }

LABEL_77:
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_78;
  }

LABEL_76:
  if ((SBYTE7(v65) & 0x80000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_90:
  operator delete(*buf);
  if (SHIBYTE(v63) < 0)
  {
LABEL_78:
    operator delete(v62);
  }
}

void sub_29737F7CC(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  _Unwind_Resume(a1);
}

void ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_104(void *a1, int a2)
{
  v80 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  if (!a2)
  {
    v7 = *(v3 + 104);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Reset detection observed for soft reset", &buf, 2u);
    }

    usleep(0x249F0u);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_105;
    aBlock[3] = &__block_descriptor_tmp_113;
    aBlock[4] = v3;
    v8 = a1[7];
    if (v8)
    {
      v8 = _Block_copy(v8);
    }

    v62 = v8;
    ResetInfo::ResetInfo(&v63, (a1 + 8));
    v9 = a1[6];
    v70 = a1[5];
    v71 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = _Block_copy(aBlock);
    v72 = v10;
    BootModule::checkFSSyncStatus_sync(v3, &v72);
    if (v10)
    {
      _Block_release(v10);
    }

    v11 = v71;
    if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      if ((v69 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v67 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_45;
      }
    }

    else if ((v69 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(__p);
    if ((v67 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v65 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_46;
    }

LABEL_45:
    operator delete(v66);
    if ((v65 & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }

LABEL_46:
    operator delete(v64);
    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      v12 = v62;
      if (!v62)
      {
        return;
      }

      goto LABEL_48;
    }

LABEL_47:
    operator delete(v63.__r_.__value_.__l.__data_);
    v12 = v62;
    if (!v62)
    {
      return;
    }

LABEL_48:
    _Block_release(v12);
    return;
  }

  v4 = operator new(0x38uLL);
  v60.__r_.__value_.__r.__words[0] = v4;
  *&v60.__r_.__value_.__r.__words[1] = xmmword_297433A40;
  strcpy(v4, "Soft reset failed; timeout waiting for reset detection");
  v5 = *(v3 + 104);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v4;
    _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
  }

  if (TelephonyUtilIsInternalBuild())
  {
    v6 = *(v3 + 104);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  IsCarrierBuild = TelephonyUtilIsCarrierBuild();
  v6 = *(v3 + 104);
  v14 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (IsCarrierBuild)
  {
    if (!v14)
    {
LABEL_7:
      if ((v3 + 112) != &v60)
      {
        if (*(v3 + 135) < 0)
        {
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v60;
          }

          else
          {
            v16 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v60.__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>((v3 + 112), v16, size);
        }

        else if ((*(&v60.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>((v3 + 112), v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
        }

        else
        {
          *(v3 + 112) = v60;
        }
      }

      v18 = a1[7];
      if (v18)
      {
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&buf, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
        }

        else
        {
          buf = *&v60.__r_.__value_.__l.__data_;
          *&v74 = *(&v60.__r_.__value_.__l + 2);
        }

        (*(v18 + 16))(v18, 3760250880, &buf);
        if (SBYTE7(v74) < 0)
        {
          operator delete(buf);
        }
      }

      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v78 = v19;
      v79 = v19;
      v76 = v19;
      v77 = v19;
      v74 = v19;
      v75 = v19;
      buf = v19;
      v20 = *MEMORY[0x29EDBEB60];
      v21 = strlen(*MEMORY[0x29EDBEB60]);
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v21;
      if (v21 >= 0x17)
      {
        if ((v21 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v21 | 7) + 1;
        }

        p_dst = operator new(v24);
        *(&__dst + 1) = v22;
        v59 = v24 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v59) = v21;
        p_dst = &__dst;
        if (!v21)
        {
LABEL_65:
          *(p_dst + v22) = 0;
          v25 = *MEMORY[0x29EDBF738];
          v26 = strlen(*MEMORY[0x29EDBF738]);
          if (v26 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v27 = v26;
          if (v26 >= 0x17)
          {
            if ((v26 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v26 | 7) + 1;
            }

            v28 = operator new(v29);
            *(&v56 + 1) = v27;
            v57 = v29 | 0x8000000000000000;
            *&v56 = v28;
          }

          else
          {
            HIBYTE(v57) = v26;
            v28 = &v56;
            if (!v26)
            {
LABEL_74:
              v28[v27] = 0;
              Timestamp::Timestamp(v52);
              Timestamp::asString(v52, 0, 9, v54);
              v51 = 0;
              LOBYTE(v50) = 0;
              ResetInfo::ResetInfo(&buf, &__dst, &v56, (v3 + 112), v54, 7, &v50);
              if (v55 < 0)
              {
                operator delete(v54[0]);
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v52, v53);
                if ((SHIBYTE(v57) & 0x80000000) == 0)
                {
LABEL_76:
                  if ((SHIBYTE(v59) & 0x80000000) == 0)
                  {
                    goto LABEL_77;
                  }

LABEL_88:
                  operator delete(__dst);
LABEL_77:
                  ResetInfo::ResetInfo(&v43, &buf);
                  v42 = 0;
                  BootModule::handleReset_sync(v3, &v43, &v42);
                  if (v49 < 0)
                  {
                    operator delete(v48);
                    if ((v47 & 0x80000000) == 0)
                    {
LABEL_79:
                      if ((v45 & 0x80000000) == 0)
                      {
                        goto LABEL_80;
                      }

                      goto LABEL_91;
                    }
                  }

                  else if ((v47 & 0x80000000) == 0)
                  {
                    goto LABEL_79;
                  }

                  operator delete(v46);
                  if ((v45 & 0x80000000) == 0)
                  {
LABEL_80:
                    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_81;
                    }

                    goto LABEL_92;
                  }

LABEL_91:
                  operator delete(v44);
                  if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_81:
                    if ((SHIBYTE(v79) & 0x80000000) == 0)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_93;
                  }

LABEL_92:
                  operator delete(v43.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v79) & 0x80000000) == 0)
                  {
LABEL_82:
                    if ((SBYTE7(v77) & 0x80000000) == 0)
                    {
                      goto LABEL_83;
                    }

                    goto LABEL_94;
                  }

LABEL_93:
                  operator delete(*(&v78 + 1));
                  if ((SBYTE7(v77) & 0x80000000) == 0)
                  {
LABEL_83:
                    if ((SHIBYTE(v75) & 0x80000000) == 0)
                    {
                      goto LABEL_84;
                    }

                    goto LABEL_95;
                  }

LABEL_94:
                  operator delete(v76);
                  if ((SHIBYTE(v75) & 0x80000000) == 0)
                  {
LABEL_84:
                    if ((SBYTE7(v74) & 0x80000000) == 0)
                    {
                      goto LABEL_113;
                    }

LABEL_96:
                    operator delete(buf);
                    goto LABEL_113;
                  }

LABEL_95:
                  operator delete(*(&v74 + 1));
                  if ((SBYTE7(v74) & 0x80000000) == 0)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_96;
                }
              }

              else
              {
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v52, v53);
                if ((SHIBYTE(v57) & 0x80000000) == 0)
                {
                  goto LABEL_76;
                }
              }

              operator delete(v56);
              if ((SHIBYTE(v59) & 0x80000000) == 0)
              {
                goto LABEL_77;
              }

              goto LABEL_88;
            }
          }

          memmove(v28, v25, v27);
          goto LABEL_74;
        }
      }

      memmove(p_dst, v20, v22);
      goto LABEL_65;
    }

LABEL_6:
    LOWORD(buf) = 0;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Dumping logs", &buf, 2u);
    goto LABEL_7;
  }

  if (v14)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Falling back to hard reset", &buf, 2u);
  }

  ResetInfo::ResetInfo(&v35, (a1 + 8));
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_115;
  v31[3] = &__block_descriptor_tmp_116_0;
  v15 = a1[7];
  if (v15)
  {
    v15 = _Block_copy(v15);
  }

  v32 = v15;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v60;
  }

  v34 = _Block_copy(v31);
  BootModule::hardReset_sync(v3, &v35, &v34);
  if (v34)
  {
    _Block_release(v34);
  }

  if (v41 < 0)
  {
    operator delete(v40);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_102:
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_109;
    }
  }

  else if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_102;
  }

  operator delete(v38);
  if ((v37 & 0x80000000) == 0)
  {
LABEL_103:
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_110;
  }

LABEL_109:
  operator delete(v36);
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_104:
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

LABEL_111:
    operator delete(v33.__r_.__value_.__l.__data_);
    v30 = v32;
    if (!v32)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_110:
  operator delete(v35.__r_.__value_.__l.__data_);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_111;
  }

LABEL_105:
  v30 = v32;
  if (v32)
  {
LABEL_112:
    _Block_release(v30);
  }

LABEL_113:
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }
}

void sub_2973800D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ResetInfo::~ResetInfo(&a19);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_105(void *a1, int a2, int a3)
{
  v84 = *MEMORY[0x29EDCA608];
  v6 = a1[4];
  v7 = *(v6 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Check FS Sync in progress: %d and sync not started: %d", buf, 0xEu);
  }

  if ((a2 & 1) != 0 || a3)
  {
    if (a2)
    {
      v13 = "Baseband shutdown during baseband filesystem sync";
    }

    else
    {
      v13 = "Baseband never started filesystem sync";
    }

    v76.__r_.__value_.__r.__words[2] = 0x13AAAAAA00AAAAAALL;
    *&v76.__r_.__value_.__l.__data_ = *"Soft reset failed: ";
    *(&v76.__r_.__value_.__r.__words[1] + 7) = 540697701;
    if (a2)
    {
      v14 = 49;
    }

    else
    {
      v14 = 38;
    }

    std::string::append(&v76, v13, v14);
    if ((v6 + 112) != &v76)
    {
      if (*(v6 + 135) < 0)
      {
        if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v76;
        }

        else
        {
          v35 = v76.__r_.__value_.__r.__words[0];
        }

        if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v76.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v76.__r_.__value_.__l.__size_;
        }

        std::string::__assign_no_alias<false>((v6 + 112), v35, size);
      }

      else if ((*(&v76.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>((v6 + 112), v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
      }

      else
      {
        *(v6 + 112) = v76;
      }
    }

    v37 = *(v6 + 104);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v51 = &v76;
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v51 = v76.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *&buf[4] = v51;
      _os_log_error_impl(&dword_297288000, v37, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      v38 = a1[5];
      if (!v38)
      {
LABEL_79:
        v39 = *(v6 + 584);
        if (v39)
        {
          (*(*v39 + 56))(v39, 7);
        }

        *&v40 = 0xAAAAAAAAAAAAAAAALL;
        *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v82 = v40;
        v83 = v40;
        v80 = v40;
        v81 = v40;
        v78 = v40;
        v79 = v40;
        *buf = v40;
        v41 = *MEMORY[0x29EDBEB60];
        v42 = strlen(*MEMORY[0x29EDBEB60]);
        if (v42 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v43 = v42;
        if (v42 >= 0x17)
        {
          if ((v42 | 7) == 0x17)
          {
            v45 = 25;
          }

          else
          {
            v45 = (v42 | 7) + 1;
          }

          v44 = operator new(v45);
          *(&v74 + 1) = v43;
          v75 = v45 | 0x8000000000000000;
          *&v74 = v44;
        }

        else
        {
          HIBYTE(v75) = v42;
          v44 = &v74;
          if (!v42)
          {
LABEL_90:
            *(v44 + v43) = 0;
            v46 = *MEMORY[0x29EDBF7E8];
            v47 = strlen(*MEMORY[0x29EDBF7E8]);
            if (v47 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v48 = v47;
            if (v47 >= 0x17)
            {
              if ((v47 | 7) == 0x17)
              {
                v50 = 25;
              }

              else
              {
                v50 = (v47 | 7) + 1;
              }

              v49 = operator new(v50);
              *(&v72 + 1) = v48;
              v73 = v50 | 0x8000000000000000;
              *&v72 = v49;
            }

            else
            {
              HIBYTE(v73) = v47;
              v49 = &v72;
              if (!v47)
              {
LABEL_99:
                v49[v48] = 0;
                Timestamp::Timestamp(v68);
                Timestamp::asString(v68, 0, 9, __p);
                v67 = 0;
                LOBYTE(v66) = 0;
                ResetInfo::ResetInfo(buf, &v74, &v72, (v6 + 112), __p, 7, &v66);
                if (v71 < 0)
                {
                  operator delete(__p[0]);
                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v68, v69);
                  if ((SHIBYTE(v73) & 0x80000000) == 0)
                  {
LABEL_101:
                    if ((SHIBYTE(v75) & 0x80000000) == 0)
                    {
                      goto LABEL_102;
                    }

LABEL_114:
                    operator delete(v74);
LABEL_102:
                    ResetInfo::ResetInfo(&v59, buf);
                    v58 = 0;
                    BootModule::handleReset_sync(v6, &v59, &v58);
                    if (v65 < 0)
                    {
                      operator delete(v64);
                      if ((v63 & 0x80000000) == 0)
                      {
LABEL_104:
                        if ((v61 & 0x80000000) == 0)
                        {
                          goto LABEL_105;
                        }

                        goto LABEL_117;
                      }
                    }

                    else if ((v63 & 0x80000000) == 0)
                    {
                      goto LABEL_104;
                    }

                    operator delete(v62);
                    if ((v61 & 0x80000000) == 0)
                    {
LABEL_105:
                      if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_106;
                      }

                      goto LABEL_118;
                    }

LABEL_117:
                    operator delete(v60);
                    if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_106:
                      if ((SHIBYTE(v83) & 0x80000000) == 0)
                      {
                        goto LABEL_107;
                      }

                      goto LABEL_119;
                    }

LABEL_118:
                    operator delete(v59.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v83) & 0x80000000) == 0)
                    {
LABEL_107:
                      if ((SBYTE7(v81) & 0x80000000) == 0)
                      {
                        goto LABEL_108;
                      }

                      goto LABEL_120;
                    }

LABEL_119:
                    operator delete(*(&v82 + 1));
                    if ((SBYTE7(v81) & 0x80000000) == 0)
                    {
LABEL_108:
                      if ((SHIBYTE(v79) & 0x80000000) == 0)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_121;
                    }

LABEL_120:
                    operator delete(v80);
                    if ((SHIBYTE(v79) & 0x80000000) == 0)
                    {
LABEL_109:
                      if ((SBYTE7(v78) & 0x80000000) == 0)
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_122;
                    }

LABEL_121:
                    operator delete(*(&v78 + 1));
                    if ((SBYTE7(v78) & 0x80000000) == 0)
                    {
LABEL_110:
                      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        return;
                      }

                      goto LABEL_123;
                    }

LABEL_122:
                    operator delete(*buf);
                    if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      return;
                    }

LABEL_123:
                    operator delete(v76.__r_.__value_.__l.__data_);
                    return;
                  }
                }

                else
                {
                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v68, v69);
                  if ((SHIBYTE(v73) & 0x80000000) == 0)
                  {
                    goto LABEL_101;
                  }
                }

                operator delete(v72);
                if ((SHIBYTE(v75) & 0x80000000) == 0)
                {
                  goto LABEL_102;
                }

                goto LABEL_114;
              }
            }

            memmove(v49, v46, v48);
            goto LABEL_99;
          }
        }

        memmove(v44, v41, v43);
        goto LABEL_90;
      }
    }

    else
    {
      v38 = a1[5];
      if (!v38)
      {
        goto LABEL_79;
      }
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(buf, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
    }

    else
    {
      *buf = *&v76.__r_.__value_.__l.__data_;
      *&v78 = *(&v76.__r_.__value_.__l + 2);
    }

    (*(v38 + 16))(v38, 3760250880, buf);
    if (SBYTE7(v78) < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_79;
  }

  v8 = *(v6 + 584);
  if (v8)
  {
    v9 = (*(*v8 + 56))(v8, 6);
    if (capabilities::ipc::supportsPCI(v9))
    {
      (*(**(v6 + 584) + 16))(*(v6 + 584));
    }
  }

  if (a1[5])
  {
    *buf = 0;
    dispatch::block<void({block_pointer})(int,std::string)>::operator()<int,char const(&)[1]>(a1 + 5, buf, "");
  }

  *&v74 = 0;
  v10 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    *&v74 = Mutable;
  }

  else
  {
    Mutable = v74;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF0C8], v10, v12);
  ResetInfo::addToDict((a1 + 6), &v74, v15, v16, v17);
  v76.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v76.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v18 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(buf);
    v19 = *buf;
    memset(buf, 0, sizeof(buf));
    v20 = *(&off_2A1399448 + 1);
    off_2A1399448 = v19;
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    v21 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v18 = off_2A1399448;
  }

  v76.__r_.__value_.__r.__words[0] = v18;
  v76.__r_.__value_.__l.__size_ = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v22 = *MEMORY[0x29EDBF460];
  v23 = strlen(*MEMORY[0x29EDBF460]);
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v23 | 7) + 1;
    }

    v25 = operator new(v27);
    __dst[1] = v24;
    v57 = v27 | 0x8000000000000000;
    __dst[0] = v25;
LABEL_42:
    memmove(v25, v22, v24);
    *(v24 + v25) = 0;
    v26 = v74;
    if (!v74)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  HIBYTE(v57) = v23;
  v25 = __dst;
  if (v23)
  {
    goto LABEL_42;
  }

  LOBYTE(__dst[0]) = 0;
  v26 = v74;
  if (!v74)
  {
    goto LABEL_45;
  }

LABEL_43:
  v28 = CFGetTypeID(v26);
  if (v28 == CFDictionaryGetTypeID())
  {
    v55 = v26;
    CFRetain(v26);
    goto LABEL_46;
  }

LABEL_45:
  v26 = 0;
  v55 = 0;
LABEL_46:
  v52[0] = MEMORY[0x29EDCA5F8];
  v52[1] = 1174405120;
  v52[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_109;
  v52[3] = &__block_descriptor_tmp_111;
  v30 = a1[20];
  v29 = a1[21];
  v52[4] = v6;
  v52[5] = v30;
  v53 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = _Block_copy(v52);
  v54 = v31;
  ABMServer::broadcast(v18, __dst, &v55, &v54);
  if (v31)
  {
    _Block_release(v31);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(__dst[0]);
  }

  v32 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    v33 = v76.__r_.__value_.__l.__size_;
    if (!v76.__r_.__value_.__l.__size_)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v33 = v76.__r_.__value_.__l.__size_;
    if (!v76.__r_.__value_.__l.__size_)
    {
      goto LABEL_58;
    }
  }

  if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    v34 = v74;
    if (v74)
    {
      goto LABEL_59;
    }

    return;
  }

LABEL_58:
  v34 = v74;
  if (v74)
  {
LABEL_59:
    CFRelease(v34);
  }
}

void sub_297380B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v56 - 201) < 0)
  {
    operator delete(*(v56 - 224));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_109(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2;
  v2[3] = &__block_descriptor_tmp_110;
  v2[4] = v1;
  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v1 + 72), v2);
}

void __copy_helper_block_e8_40c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE48c15_ZTSK9ResetInfo160c38_ZTSNSt3__110shared_ptrI10BootModuleEE(std::string *a1, void *a2)
{
  v4 = a2[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  a1[1].__r_.__value_.__r.__words[2] = v4;
  ResetInfo::ResetInfo(a1 + 2, (a2 + 6));
  v5 = a2[21];
  a1[6].__r_.__value_.__r.__words[2] = a2[20];
  a1[7].__r_.__value_.__r.__words[0] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_297380E00(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE48c15_ZTSK9ResetInfo160c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
LABEL_4:
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 159) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(a1 + 136));
  if ((*(a1 + 119) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    operator delete(*(a1 + 48));
    v3 = *(a1 + 40);
    if (!v3)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_12:
  operator delete(*(a1 + 72));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v3 = *(a1 + 40);
  if (v3)
  {
LABEL_14:
    _Block_release(v3);
  }
}

void ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_115(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __p = *(a1 + 40);
    }

    (*(v1 + 16))(v1, 3760250880, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_297380F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }
}

void sub_297381010(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_5:
    _Block_release(v2);
  }
}

void BootModule::shutdown_sync(uint64_t a1, void (***a2)(void *, uint64_t, std::string *))
{
  v46 = *MEMORY[0x29EDCA608];
  v39 = 0;
  v40 = &v39;
  v41 = 0x4002000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 576) != 8)
  {
    v5 = *(a1 + 80);
    if (!v5 || (v6 = *(a1 + 72), (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    p_shared_weak_owners = &v7->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v8);
    }

    v37 = 0xAAAAAAAAAAAAAAAALL;
    object = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke;
    aBlock[3] = &unk_2A1E3B300;
    aBlock[5] = a1;
    aBlock[6] = v6;
    v35 = v8;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    aBlock[4] = &v39;
    v10 = *a2;
    if (*a2)
    {
      v10 = _Block_copy(v10);
    }

    v36 = v10;
    v11 = _Block_copy(aBlock);
    v12 = *(a1 + 88);
    if (v12)
    {
      dispatch_retain(*(a1 + 88));
    }

    v37 = v11;
    object = v12;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    v33 = 0xAAAAAAAAAAAAAAAALL;
    v13 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v14 = off_2A1399388;
    if (!off_2A1399388)
    {
      CommandDriverFactory::create_default_global(&buf, v13);
      v15 = *&buf.__r_.__value_.__l.__data_;
      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      v16 = *(&off_2A1399388 + 1);
      off_2A1399388 = v15;
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      size = buf.__r_.__value_.__l.__size_;
      if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v14 = off_2A1399388;
    }

    v18 = *(&off_2A1399388 + 1);
    v28 = v14;
    v29 = *(&off_2A1399388 + 1);
    if (*(&off_2A1399388 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    (*(*v14 + 16))(&v30, v14);
    v32 = 0;
    v33 = 0;
    if (v31)
    {
      v33 = std::__shared_weak_count::lock(v31);
      if (v33)
      {
        v32 = v30;
      }

      if (v31)
      {
        std::__shared_weak_count::__release_weak(v31);
      }
    }

    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      v19 = v32;
      if (!v32)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v19 = v32;
      if (!v32)
      {
        goto LABEL_48;
      }
    }

    if (*(a1 + 152) == 1)
    {
      v20 = *(a1 + 104);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
        *(buf.__r_.__value_.__r.__words + 4) = 10;
        _os_log_impl(&dword_297288000, v20, OS_LOG_TYPE_DEFAULT, "#I Poweroff baseband requested with timeout %llu sec", &buf, 0xCu);
      }

      v21 = v37;
      if (v37)
      {
        v21 = _Block_copy(v37);
      }

      v26 = v21;
      v27 = object;
      if (object)
      {
        dispatch_retain(object);
      }

      (*(*v19 + 32))(v19, 10000000000, &v26);
      if (v27)
      {
        dispatch_release(v27);
      }

      if (v26)
      {
        _Block_release(v26);
      }

      goto LABEL_56;
    }

LABEL_48:
    (*(*a1 + 104))(a1, 8);
    if (*(a1 + 584))
    {
      std::string::__assign_external((v40 + 5), "Transport clients are not started yet", 0x25uLL);
      v22 = *(a1 + 104);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v25 = v40 + 5;
        if (*(v40 + 63) < 0)
        {
          v25 = *v25;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v25;
        _os_log_error_impl(&dword_297288000, v22, OS_LOG_TYPE_ERROR, "Poweroff baseband request skipped (powercycle anyway); Error: %s", &buf, 0xCu);
      }

      (*(**(a1 + 584) + 24))(*(a1 + 584));
    }

    v23 = *a2;
    if (*(v40 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, v40[5], v40[6]);
    }

    else
    {
      buf = *(v40 + 5);
    }

    v23[2](v23, 3760250880, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

LABEL_56:
    v24 = v33;
    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v37)
    {
      _Block_release(v37);
    }

    if (v36)
    {
      _Block_release(v36);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_weak(v35);
    }

    std::__shared_weak_count::__release_weak(v8);
    _Block_object_dispose(&v39, 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_68;
    }

    return;
  }

  std::string::__assign_external(&__p, "BootModule already in shutdown state", 0x24uLL);
  v3 = *a2;
  if (*(v40 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v40[5], v40[6]);
  }

  else
  {
    buf = *(v40 + 5);
  }

  v3[2](v3, 0, &buf);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    _Block_object_dispose(&v39, 8);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_68:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  _Block_object_dispose(&v39, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_68;
  }
}

void sub_29738171C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void *aBlock, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN10BootModule13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke(void *a1, ctu::cf **a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v3 = a1[5];
  v34 = 0;
  v35 = 0;
  v4 = a1[7];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    v35 = v6;
    if (v6)
    {
      v34 = a1[6];
      if (v34)
      {
        if (!*a2)
        {
          v18 = v3[13];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v36.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_297288000, v18, OS_LOG_TYPE_DEFAULT, "#I Poweroff baseband request delivered; waiting for reset detection", &v36, 2u);
          }

          v19 = v3[17];
          v20 = operator new(0x28uLL);
          v32 = v20;
          v33 = xmmword_29742F120;
          strcpy(v20, "Poweroff: Wait for reset detection");
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZN10BootModule13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke_126;
          aBlock[3] = &unk_2A1E3B2C8;
          v22 = a1[6];
          v21 = a1[7];
          aBlock[5] = v3;
          aBlock[6] = v22;
          v29 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          aBlock[4] = a1[4];
          v23 = a1[8];
          if (v23)
          {
            v23 = _Block_copy(v23);
          }

          v30 = v23;
          v24 = _Block_copy(aBlock);
          v31 = v24;
          v25 = dispatch_time(0, 10000000000);
          ResetDetection::add(v19, &v32, 1, &v31, v25);
          if (v24)
          {
            _Block_release(v24);
          }

          operator delete(v20);
          if (v30)
          {
            _Block_release(v30);
          }

          if (v29)
          {
            std::__shared_weak_count::__release_weak(v29);
          }

          goto LABEL_21;
        }

        (*(*v3 + 104))(v3, 8);
        ctu::cf::show(&v36, *a2, v7);
        v8 = *(a1[4] + 8);
        if (*(v8 + 63) < 0)
        {
          operator delete(*(v8 + 40));
        }

        *(v8 + 40) = v36;
        v9 = v3[13];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v26 = *(a1[4] + 8);
          v27 = (v26 + 40);
          if (*(v26 + 63) < 0)
          {
            v27 = *v27;
          }

          LODWORD(v36.__r_.__value_.__l.__data_) = 136446210;
          *(v36.__r_.__value_.__r.__words + 4) = v27;
          _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "#I Poweroff baseband request failed; Error: %{public}s", &v36, 0xCu);
          v10 = v3[73];
          if (!v10)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v10 = v3[73];
          if (!v10)
          {
LABEL_10:
            v11 = *(a1[4] + 8);
            v12 = a1[8];
            if (*(v11 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(&v36, *(v11 + 40), *(v11 + 48));
            }

            else
            {
              v36 = *(v11 + 40);
            }

            (*(v12 + 16))(v12, 3760250880, &v36);
            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v36.__r_.__value_.__l.__data_);
            }

LABEL_21:
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }

            return;
          }
        }

        (*(*v10 + 24))(v10);
        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = operator new(0x38uLL);
  strcpy(v13, "Poweroff: BootModule destroyed before getting response");
  v14 = *(a1[4] + 8);
  if (*(v14 + 63) < 0)
  {
    v15 = v13;
    operator delete(*(v14 + 40));
    v13 = v15;
  }

  *(v14 + 40) = v13;
  *(v14 + 48) = xmmword_297433A40;
  v16 = *(a1[4] + 8);
  v17 = a1[8];
  if (*(v16 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *(v16 + 40), *(v16 + 48));
  }

  else
  {
    v36 = *(v16 + 40);
  }

  (*(v17 + 16))(v17, 3760250880, &v36);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    goto LABEL_21;
  }
}

void sub_297381CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10BootModule13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke_126(void *a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a1[5];
  v4 = a1[7];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6 && a1[6])
    {
      (*(*v3 + 104))(v3, 8);
      if (!a2)
      {
        v18 = v3[13];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_297288000, v18, OS_LOG_TYPE_DEFAULT, "#I Poweroff baseband success", &v24, 2u);
        }

        v19 = *(a1[4] + 8);
        v20 = a1[8];
        if (*(v19 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v24, *(v19 + 40), *(v19 + 48));
        }

        else
        {
          v24 = *(v19 + 40);
        }

        (*(v20 + 16))(v20, 0, &v24);
LABEL_31:
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
          v23 = v3[73];
          if (!v23)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v23 = v3[73];
          if (!v23)
          {
LABEL_36:
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }

            return;
          }
        }

        (*(*v23 + 24))(v23);
        goto LABEL_36;
      }

      v7 = operator new(0x30uLL);
      strcpy(v7, "Poweroff: Timeout waiting for reset detection");
      v8 = *(a1[4] + 8);
      if (*(v8 + 63) < 0)
      {
        v9 = v7;
        operator delete(*(v8 + 40));
        v7 = v9;
      }

      *(v8 + 40) = v7;
      *(v8 + 48) = xmmword_297431960;
      v10 = v3[13];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1[4] + 8);
        v22 = (v21 + 40);
        if (*(v21 + 63) < 0)
        {
          v22 = *v22;
        }

        LODWORD(v24.__r_.__value_.__l.__data_) = 136315138;
        *(v24.__r_.__value_.__r.__words + 4) = v22;
        _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "%s", &v24, 0xCu);
        v11 = *(a1[4] + 8);
        v12 = a1[8];
        if ((*(v11 + 63) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11 = *(a1[4] + 8);
        v12 = a1[8];
        if ((*(v11 + 63) & 0x80000000) == 0)
        {
LABEL_9:
          v24 = *(v11 + 40);
LABEL_30:
          (*(v12 + 16))(v12, 3760250883, &v24);
          goto LABEL_31;
        }
      }

      std::string::__init_copy_ctor_external(&v24, *(v11 + 40), *(v11 + 48));
      goto LABEL_30;
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = operator new(0x40uLL);
  strcpy(v13, "ResetDetect: BootModule destroyed before getting response");
  v14 = *(a1[4] + 8);
  if (*(v14 + 63) < 0)
  {
    v15 = v13;
    operator delete(*(v14 + 40));
    v13 = v15;
  }

  *(v14 + 40) = v13;
  *(v14 + 48) = xmmword_297433A50;
  v16 = *(a1[4] + 8);
  v17 = a1[8];
  if (*(v16 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(v16 + 40), *(v16 + 48));
  }

  else
  {
    v24 = *(v16 + 40);
  }

  (*(v17 + 16))(v17, 3760250880, &v24);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    goto LABEL_36;
  }
}

void ___ZN10BootModule9boot_syncEv_block_invoke(void *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = *(v2 + 584) != 0;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0 && (*(v2 + 189) = 1, v3 = *(v2 + 104), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v3, OS_LOG_TYPE_ERROR, "Boot controller object has not been created!", buf, 2u);
    v4 = *(a1[4] + 8);
    if (*(v4 + 24) == 1)
    {
LABEL_4:
      *(*(a1[4] + 8) + 24) = (***(v2 + 584))(*(v2 + 584), *(a1[5] + 8) + 40);
      if ((*(*(a1[4] + 8) + 24) & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = *(a1[4] + 8);
    if (*(v4 + 24) == 1)
    {
      goto LABEL_4;
    }
  }

  *(v4 + 24) = 0;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
LABEL_5:
    *(v2 + 189) = 1;
    v5 = *(v2 + 104);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1[5] + 8);
      v7 = (v6 + 40);
      if (*(v6 + 63) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315138;
      *&buf[4] = v7;
      v8 = "Failed on preparation for booting!: Reason: %s";
LABEL_24:
      _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
      return;
    }

    return;
  }

LABEL_11:
  *(v2 + 304) = TelephonyUtilSystemMachTime();
  v9 = *(v2 + 560);
  if (v9)
  {
    v10 = *(v9 + 9);
    SystemTime = TelephonyUtilGetSystemTime();
    lcdm::CrashDB::purgeCrashEntriesOlderThan(v9, v10, SystemTime);
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v12;
    v18 = v12;
    lcdm::CrashDB::createCrashContextData(*(v2 + 560), buf);
    if (buf[0] == 1)
    {
      BootController::setCrashContextData(*(v2 + 584), &buf[8]);
    }

    else
    {
      v13 = *(v2 + 104);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_297288000, v13, OS_LOG_TYPE_DEFAULT, "#I Not setting crash context data", v16, 2u);
      }
    }

    if (*&buf[8])
    {
      *&v18 = *&buf[8];
      operator delete(*&buf[8]);
    }
  }

  *(*(a1[4] + 8) + 24) = (*(**(v2 + 584) + 8))(*(v2 + 584), *(a1[5] + 8) + 40);
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v5 = *(v2 + 104);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1[5] + 8);
      v15 = (v14 + 40);
      if (*(v14 + 63) < 0)
      {
        v15 = *v15;
      }

      *buf = 136315138;
      *&buf[4] = v15;
      v8 = "Failed on booting!: Reason: %s";
      goto LABEL_24;
    }
  }
}

void sub_297382480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN10BootModule9boot_syncEv_block_invoke_136(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_297288000, v1, OS_LOG_TYPE_DEFAULT, "#I Recovery detected", v2, 2u);
  }
}

void __copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN10BootModule9boot_syncEv_block_invoke_138(void *a1)
{
  v1 = a1[6];
  if (*(v1 + 576) - 7 < 2)
  {
    return;
  }

  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v42 = _os_activity_create(&dword_297288000, "Baseband state: booted", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
    memset(state, 170, 16);
    os_activity_scope_enter(v42, state);
    os_activity_scope_leave(state);
    v3 = *(v1 + 104);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *state = 0;
      _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband bootup succeeded", state, 2u);
    }

    (*(*v1 + 104))(v1, 3);
    *(v1 + 312) = TelephonyUtilSystemMachTime();
    v41 = 0;
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v41 = Mutable;
    }

    ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBEDF0], v4, v6);
    v7 = *(v1 + 80);
    if (!v7 || (v8 = *(v1 + 72), (v9 = std::__shared_weak_count::lock(v7)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v10 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v10);
    }

    BootModule::reportStatisticsBootUpTime_sync(v1);
    v11 = *MEMORY[0x29EDBF460];
    v12 = strlen(*MEMORY[0x29EDBF460]);
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v12 | 7) + 1;
      }

      v14 = operator new(v17);
      __dst[1] = v13;
      v40 = v17 | 0x8000000000000000;
      __dst[0] = v14;
    }

    else
    {
      HIBYTE(v40) = v12;
      v14 = __dst;
      if (!v12)
      {
        LOBYTE(__dst[0]) = 0;
        v15 = v41;
        if (!v41)
        {
          goto LABEL_26;
        }

LABEL_24:
        v18 = CFGetTypeID(v15);
        if (v18 == CFDictionaryGetTypeID())
        {
          v38 = v15;
          CFRetain(v15);
          goto LABEL_27;
        }

LABEL_26:
        v38 = 0;
LABEL_27:
        v37 = 0;
        Service::broadcastEvent(v1, __dst, &v38, &v37);
        if (v37)
        {
          _Block_release(v37);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(__dst[0]);
          if (*(v1 + 194))
          {
LABEL_54:
            v24 = a1[9];
            v25 = *(v1 + 88);
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 1174405120;
            block[2] = ___ZN10BootModule9boot_syncEv_block_invoke_142;
            block[3] = &__block_descriptor_tmp_154_0;
            block[4] = v1;
            block[5] = v8;
            v28 = v10;
            atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            dispatch_group_notify(v24, v25, block);
            if (v28)
            {
              std::__shared_weak_count::__release_weak(v28);
            }

            std::__shared_weak_count::__release_weak(v10);
            if (v41)
            {
              CFRelease(v41);
            }

            if (v42)
            {
              os_release(v42);
            }

            return;
          }
        }

        else if (*(v1 + 194))
        {
          goto LABEL_54;
        }

        if (*(v1 + 192) == 1)
        {
          v36 = 0;
          pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          v19 = off_2A1399498;
          if (!off_2A1399498)
          {
            SharedData::create_default_global(state);
            v20 = *state;
            *state = 0;
            *&state[8] = 0;
            v21 = *(&off_2A1399498 + 1);
            off_2A1399498 = v20;
            if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v21->__on_zero_shared)(v21);
              std::__shared_weak_count::__release_weak(v21);
            }

            v22 = *&state[8];
            if (*&state[8] && !atomic_fetch_add((*&state[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v22->__on_zero_shared)(v22);
              std::__shared_weak_count::__release_weak(v22);
            }

            v19 = off_2A1399498;
          }

          v34 = v19;
          v35 = *(&off_2A1399498 + 1);
          if (*(&off_2A1399498 + 1))
          {
            atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          *state = operator new(0x28uLL);
          *&state[8] = xmmword_297431600;
          strcpy(*state, "Baseband Mobile Asset PT image sent");
          os_unfair_lock_lock((v19 + 40));
          Preferences::getPreference<BOOL>(v19, state, &v36);
          os_unfair_lock_unlock((v19 + 40));
          if ((state[23] & 0x80000000) != 0)
          {
            operator delete(*state);
          }

          v23 = v35;
          if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v23->__on_zero_shared)(v23);
            std::__shared_weak_count::__release_weak(v23);
          }

          if (v36 == 1)
          {
            v32[23] = 6;
            strcpy(v32, "Booted");
            v31[23] = 0;
            v31[0] = 0;
            BootModule::updateMobileAssetPTStatus_sync(v1, 2u, v32, v31);
          }

          else
          {
            v30[23] = 11;
            strcpy(v30, "BBURejected");
            v29[23] = 0;
            v29[0] = 0;
            BootModule::updateMobileAssetPTStatus_sync(v1, 4u, v30, v29);
          }
        }

        goto LABEL_54;
      }
    }

    memmove(v14, v11, v13);
    *(v13 + v14) = 0;
    v15 = v41;
    if (!v41)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v16 = *(v1 + 104);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *state = 0;
    _os_log_error_impl(&dword_297288000, v16, OS_LOG_TYPE_ERROR, "Baseband bootup failed", state, 2u);
  }

  (*(*v1 + 104))(v1, 5);
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 0x40000000;
  v26[2] = ___ZN10BootModule9boot_syncEv_block_invoke_155;
  v26[3] = &unk_29EE68308;
  v26[4] = a1[5];
  v26[5] = v1;
  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v1 + 72), v26);
}

void sub_297382D34(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  std::__shared_weak_count::__release_weak(v1);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v2 - 96));
  ctu::os::scoped_activity::~scoped_activity((v2 - 88));
  _Unwind_Resume(a1);
}

void BootModule::reportStatisticsBootUpTime_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting Stats of bootup time", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = time(0);
  v6 = xpc_int64_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF490], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  object = v4;
  *buf = operator new(0x20uLL);
  v11 = xmmword_29742C690;
  strcpy(*buf, "CommandUpdateBBBootStats");
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = 0;
  Service::runCommand(this, buf, &object, &v8);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v4);
}

void sub_297382FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule9boot_syncEv_block_invoke_142(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 136);
  v4 = operator new(0x19uLL);
  v11 = v4;
  v12 = xmmword_29742FB40;
  strcpy(v4, "Baseband Recovered Gate");
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule9boot_syncEv_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_151;
  v6 = a1[5];
  v5 = a1[6];
  aBlock[4] = v2;
  aBlock[5] = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = _Block_copy(aBlock);
  v10 = v7;
  ResetDetection::add(v3, &v11, 0, &v10, -1);
  if (v7)
  {
    _Block_release(v7);
  }

  operator delete(v4);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_297383154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v17)
  {
    _Block_release(v17);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  operator delete(v16);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule9boot_syncEv_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v17 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        BootModule::bbResetFlag(v3, 0);
        v6 = *(v3 + 17);
        v7 = operator new(0x19uLL);
        v14 = v7;
        v15 = xmmword_29742FB40;
        strcpy(v7, "Baseband Crash Recovery");
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZN10BootModule9boot_syncEv_block_invoke_3;
        aBlock[3] = &__block_descriptor_tmp_148_0;
        v9 = a1[5];
        v8 = a1[6];
        aBlock[4] = v3;
        aBlock[5] = v9;
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = _Block_copy(aBlock);
        v13 = v10;
        ResetDetection::add(v6, &v14, 1, &v13, -1);
        if (v10)
        {
          _Block_release(v10);
        }

        operator delete(v7);
        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_297383334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v17)
  {
    _Block_release(v17);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  operator delete(v16);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v18 - 64);
  _Unwind_Resume(a1);
}

void BootModule::bbResetFlag(BootModule *this, char a2)
{
  v3 = *(this + 10);
  if (!v3 || (v5 = *(this + 9), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[8] = a2;
  v9 = *(this + 11);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bbResetFlag(BOOL)::$_0>(BootModule::bbResetFlag(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bbResetFlag(BOOL)::$_0,dispatch_queue_s *::default_delete<BootModule::bbResetFlag(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void ___ZN10BootModule9boot_syncEv_block_invoke_3(void *a1)
{
  v1 = a1[4];
  if (v1[576] - 7 >= 2)
  {
    v3 = a1[6];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      v54 = v4;
      if (v4)
      {
        if (!a1[5])
        {
LABEL_64:
          if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v22 = v4;
            (v4->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v22);
          }

          return;
        }

        BootModule::bbResetFlag(v1, 1);
        *&v5 = 0xAAAAAAAAAAAAAAAALL;
        *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v51 = v5;
        v52 = v5;
        v49 = v5;
        v50 = v5;
        *&v47[16] = v5;
        v48 = v5;
        *v47 = v5;
        v6 = *MEMORY[0x29EDBEB60];
        v7 = strlen(*MEMORY[0x29EDBEB60]);
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v8 = v7;
        if (v7 >= 0x17)
        {
          if ((v7 | 7) == 0x17)
          {
            v10 = 25;
          }

          else
          {
            v10 = (v7 | 7) + 1;
          }

          p_dst = operator new(v10);
          *(&__dst + 1) = v8;
          v46 = v10 | 0x8000000000000000;
          *&__dst = p_dst;
        }

        else
        {
          HIBYTE(v46) = v7;
          p_dst = &__dst;
          if (!v7)
          {
LABEL_14:
            *(p_dst + v8) = 0;
            v11 = *MEMORY[0x29EDBF6D8];
            v12 = strlen(*MEMORY[0x29EDBF6D8]);
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
              *(&v43 + 1) = v13;
              v44 = v15 | 0x8000000000000000;
              *&v43 = v14;
            }

            else
            {
              HIBYTE(v44) = v12;
              v14 = &v43;
              if (!v12)
              {
LABEL_23:
                *(v14 + v13) = 0;
                v16 = operator new(0x20uLL);
                v41 = v16;
                v42 = xmmword_297433A30;
                strcpy(v16, "** baseband crash detected");
                Timestamp::Timestamp(v37);
                Timestamp::asString(v37, 0, 9, __p);
                v36 = 0;
                LOBYTE(v35) = 0;
                ResetInfo::ResetInfo(v47, &__dst, &v43, &v41, __p, 3, &v35);
                if (v40 < 0)
                {
                  operator delete(__p[0]);
                }

                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v37, v38);
                operator delete(v16);
                if (SHIBYTE(v44) < 0)
                {
                  operator delete(v43);
                }

                if (SHIBYTE(v46) < 0)
                {
                  operator delete(__dst);
                }

                ResetInfo::ResetInfo(&v28, v47);
                aBlock = 0;
                BootModule::requestReset(v1, &v28, &aBlock);
                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v34 < 0)
                {
                  operator delete(v33);
                  if ((v32 & 0x80000000) == 0)
                  {
LABEL_33:
                    if ((v30 & 0x80000000) == 0)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_57;
                  }
                }

                else if ((v32 & 0x80000000) == 0)
                {
                  goto LABEL_33;
                }

                operator delete(v31);
                if ((v30 & 0x80000000) == 0)
                {
LABEL_34:
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_35;
                  }

LABEL_58:
                  operator delete(v28.__r_.__value_.__l.__data_);
LABEL_35:
                  v17 = *MEMORY[0x29EDBF278];
                  v18 = strlen(*MEMORY[0x29EDBF278]);
                  if (v18 > 0x7FFFFFFFFFFFFFF7)
                  {
                    std::string::__throw_length_error[abi:ne200100]();
                  }

                  v19 = v18;
                  if (v18 >= 0x17)
                  {
                    if ((v18 | 7) == 0x17)
                    {
                      v21 = 25;
                    }

                    else
                    {
                      v21 = (v18 | 7) + 1;
                    }

                    v20 = operator new(v21);
                    v25[1] = v19;
                    v26 = v21 | 0x8000000000000000;
                    v25[0] = v20;
                  }

                  else
                  {
                    HIBYTE(v26) = v18;
                    v20 = v25;
                    if (!v18)
                    {
LABEL_44:
                      *(v19 + v20) = 0;
                      v23 = 0;
                      cf = 0;
                      Service::broadcastEvent(v1, v25, &cf, &v23);
                      if (v23)
                      {
                        _Block_release(v23);
                      }

                      if (cf)
                      {
                        CFRelease(cf);
                      }

                      if (SHIBYTE(v26) < 0)
                      {
                        operator delete(v25[0]);
                        if ((SHIBYTE(v52) & 0x80000000) == 0)
                        {
LABEL_50:
                          if ((SBYTE7(v50) & 0x80000000) == 0)
                          {
                            goto LABEL_51;
                          }

                          goto LABEL_61;
                        }
                      }

                      else if ((SHIBYTE(v52) & 0x80000000) == 0)
                      {
                        goto LABEL_50;
                      }

                      operator delete(*(&v51 + 1));
                      if ((SBYTE7(v50) & 0x80000000) == 0)
                      {
LABEL_51:
                        if ((SHIBYTE(v48) & 0x80000000) == 0)
                        {
                          goto LABEL_52;
                        }

                        goto LABEL_62;
                      }

LABEL_61:
                      operator delete(v49);
                      if ((SHIBYTE(v48) & 0x80000000) == 0)
                      {
LABEL_52:
                        if ((v47[23] & 0x80000000) == 0)
                        {
                          goto LABEL_53;
                        }

                        goto LABEL_63;
                      }

LABEL_62:
                      operator delete(*&v47[24]);
                      if ((v47[23] & 0x80000000) == 0)
                      {
LABEL_53:
                        v4 = v54;
                        if (!v54)
                        {
                          return;
                        }

                        goto LABEL_64;
                      }

LABEL_63:
                      operator delete(*v47);
                      v4 = v54;
                      if (!v54)
                      {
                        return;
                      }

                      goto LABEL_64;
                    }
                  }

                  memmove(v20, v17, v19);
                  goto LABEL_44;
                }

LABEL_57:
                operator delete(v29);
                if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_35;
                }

                goto LABEL_58;
              }
            }

            memmove(v14, v11, v13);
            goto LABEL_23;
          }
        }

        memmove(p_dst, v6, v8);
        goto LABEL_14;
      }
    }
  }
}

void sub_2973838E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
    ResetInfo::~ResetInfo((v43 - 192));
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v43 - 80);
    _Unwind_Resume(a1);
  }

  ResetInfo::~ResetInfo((v43 - 192));
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v43 - 80);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule9boot_syncEv_block_invoke_155(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v2 + 40), *(v2 + 48));
  }

  else
  {
    __p = *(v2 + 40);
  }

  BootModule::handleBootFailed_sync(v1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_297383AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE72c21_ZTSN8dispatch5groupE(void *a1, void *a2)
{
  v2 = a2[8];
  a1[7] = a2[7];
  a1[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  a1[9] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE72c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void BootModule::setVoiceCall_sync(BootModule *this, char a2)
{
  v3 = *(this + 10);
  if (!v3 || (v5 = *(this + 9), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *(this + 61);
  v10 = *(this + 11);
  v11 = operator new(0x20uLL);
  *v11 = this;
  v11[1] = v5;
  v11[2] = v7;
  *(v11 + 24) = a2;
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setVoiceCall_sync(BOOL)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setVoiceCall_sync(BOOL)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v7);
}

void sub_297383C70(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setRat1_sync(void *a1, int a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x20uLL);
  *v11 = a1;
  v11[1] = v5;
  v11[2] = v7;
  *(v11 + 6) = a2;
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v7);
}

void sub_297383D80(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setRat2_sync(void *a1, int a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x20uLL);
  *v11 = a1;
  v11[1] = v5;
  v11[2] = v7;
  *(v11 + 6) = a2;
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v7);
}

void sub_297383E90(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setPLMN1_sync(void *a1, uint64_t a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  *&v12 = a1;
  *(&v12 + 1) = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x30uLL);
  *&v11->__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__r.__words[2] = v7;
  v11[1] = __p;
  memset(&__p, 0, sizeof(__p));
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setPLMN1_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN1_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_297384010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
    std::__shared_weak_count::__release_weak(v11);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v11);
  _Unwind_Resume(a1);
}

void BootModule::setPLMN2_sync(void *a1, uint64_t a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  *&v12 = a1;
  *(&v12 + 1) = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x30uLL);
  *&v11->__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__r.__words[2] = v7;
  v11[1] = __p;
  memset(&__p, 0, sizeof(__p));
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setPLMN2_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN2_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_2973841B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
    std::__shared_weak_count::__release_weak(v11);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v11);
  _Unwind_Resume(a1);
}

void BootModule::setCellId_sync(void *a1, uint64_t a2, int a3)
{
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = a1[61];
  v12 = a1[11];
  v13 = operator new(0x28uLL);
  *v13 = a1;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = a2;
  *(v13 + 8) = a3;
  dispatch_group_notify_f(v11, v12, v13, dispatch::detail::group_notify<BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v9);
}

void sub_2973842EC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setAreaCode_sync(void *a1, uint64_t a2, int a3)
{
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = a1[61];
  v12 = a1[11];
  v13 = operator new(0x28uLL);
  *v13 = a1;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = a2;
  *(v13 + 8) = a3;
  dispatch_group_notify_f(v11, v12, v13, dispatch::detail::group_notify<BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v9);
}

void sub_297384408(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void *std::sub_match<std::__wrap_iter<char const*>>::str[abi:ne200100](void *__dst, uint64_t a2)
{
  v2 = __dst;
  if (*(a2 + 16) != 1)
  {
    *__dst = 0;
    __dst[1] = 0;
    __dst[2] = 0;
    return __dst;
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = v4 - *a2;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 > 0x16)
  {
    if ((v5 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v5 | 7) + 1;
    }

    __dst = operator new(v6);
    v2[1] = v5;
    v2[2] = v6 | 0x8000000000000000;
    *v2 = __dst;
    v2 = __dst;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(__dst + 23) = v5;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  __dst = memmove(v2, v3, v5);
LABEL_12:
  *(v2 + v5) = 0;
  return __dst;
}

void BootModule::stopNetworkCampTimer_sync(BootModule *this)
{
  v1 = *(this + 67);
  if (v1)
  {
    v3 = this + 536;
    v4 = *(this + 13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Stop network registration timer for metric submission", v6, 2u);
      v1 = *v3;
    }

    support::misc::safe_timer::stop(v1);
    v5 = *(this + 68);
    *v3 = 0;
    *(v3 + 1) = 0;
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void BootModule::updateNetworkCampStatus_sync(BootModule *this, _BOOL4 a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (config::hw::iPhone(this))
  {
    BootModule::stopNetworkCampTimer_sync(this);
    v4 = *(this + 13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "false";
      if (a2)
      {
        v5 = "true";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Updating metric with registration state [%s]", buf, 0xCu);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26F9F0](v6) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v6);
        v7 = v6;
      }

      else
      {
        v7 = xpc_null_create();
      }
    }

    else
    {
      v7 = xpc_null_create();
      v6 = 0;
    }

    xpc_release(v6);
    v8 = time(0);
    v9 = xpc_int64_create(v8);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, *MEMORY[0x29EDBF640], v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    v11 = xpc_BOOL_create(a2);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, *MEMORY[0x29EDBF3F8], v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    v13 = *(this + 10);
    if (!v13 || (v14 = *(this + 9), (v15 = std::__shared_weak_count::lock(v13)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v16 = v15;
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v16);
    }

    object = v7;
    *buf = operator new(0x20uLL);
    *&buf[8] = xmmword_29742C690;
    strcpy(*buf, "CommandUpdateBBBootStats");
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      object = xpc_null_create();
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_188_0;
    aBlock[4] = this;
    aBlock[5] = v14;
    v19 = v16;
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = _Block_copy(aBlock);
    v20 = v17;
    Service::runCommand(this, buf, &object, &v20);
    if (v17)
    {
      _Block_release(v17);
    }

    xpc_release(object);
    object = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    std::__shared_weak_count::__release_weak(v16);
    xpc_release(v7);
  }
}

void sub_297384924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke(void *a1, int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v20 = v6;
    if (v6)
    {
      if (!a1[5])
      {
LABEL_26:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v6;
          (v6->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v14);
        }

        return;
      }

      if (a2)
      {
        v7 = v6;
        v8 = *(v5 + 104);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "CommandUpdateBBBootStats";
          _os_log_error_impl(&dword_297288000, v8, OS_LOG_TYPE_ERROR, "Failed to send command %s to update", buf, 0xCu);
        }

        v6 = v7;
        goto LABEL_26;
      }

      v9 = xpc_dictionary_create(0, 0, 0);
      if (v9 || (v9 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C26F9F0](v9) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v9);
          v10 = v9;
        }

        else
        {
          v10 = xpc_null_create();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v9 = 0;
      }

      xpc_release(v9);
      *buf = operator new(0x28uLL);
      *&buf[8] = xmmword_29742C680;
      strcpy(*buf, "CommandSubmitHealthDBBootMetrics");
      object = v10;
      if (v10)
      {
        xpc_retain(v10);
      }

      else
      {
        object = xpc_null_create();
      }

      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke_182;
      aBlock[3] = &__block_descriptor_tmp_185_0;
      v12 = a1[5];
      v11 = a1[6];
      aBlock[4] = v5;
      aBlock[5] = v12;
      v16 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = _Block_copy(aBlock);
      v17 = v13;
      Service::runCommand(v5, buf, &object, &v17);
      if (v13)
      {
        _Block_release(v13);
      }

      xpc_release(object);
      object = 0;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      xpc_release(v10);
      v6 = v20;
      if (v20)
      {
        goto LABEL_26;
      }
    }
  }
}

void sub_297384C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, xpc_object_t object, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke_182(void *a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (!a2 || !a1[5] || (v7 = *(v5 + 104), v8 = v6, v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR), v6 = v8, !v9))
      {
        if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

        goto LABEL_7;
      }

      v11 = *MEMORY[0x29EDBEB08];
      v12 = 136315138;
      v13 = v11;
      _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "Failed to submit metric %s to Core Analytics", &v12, 0xCu);
      v6 = v8;
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v10 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }
}

void BootModule::MobileAssetUpdate::~MobileAssetUpdate(void **this)
{
  if ((*(this + 63) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[1]);
    return;
  }

  operator delete(this[5]);
  if (*(this + 31) < 0)
  {
    goto LABEL_5;
  }
}

void std::__shared_ptr_pointer<BootModule *,std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule *)#1},std::allocator<BootModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BootModule *,std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule *)#1},std::allocator<BootModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule*)#1}::operator() const(BootModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<HealthEventDB *,std::shared_ptr<HealthEventDB>::__shared_ptr_default_delete<HealthEventDB,HealthEventDB>,std::allocator<HealthEventDB>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<HealthEventDB *,std::shared_ptr<HealthEventDB>::__shared_ptr_default_delete<HealthEventDB,HealthEventDB>,std::allocator<HealthEventDB>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    HealthEventDB::~HealthEventDB(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<HealthEventDB *,std::shared_ptr<HealthEventDB>::__shared_ptr_default_delete<HealthEventDB,HealthEventDB>,std::allocator<HealthEventDB>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297433CABLL)
  {
    if (((v2 & 0x8000000297433CABLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297433CABLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297433CABLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void HealthEventDB::~HealthEventDB(HealthEventDB *this)
{
  *this = &unk_2A1E3D150;
  v2 = *(this + 10);
  if (v2)
  {
    do
    {
      while (1)
      {
        v3 = *v2;
        v4 = v2[6];
        if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }

        if (*(v2 + 39) < 0)
        {
          break;
        }

        operator delete(v2);
        v2 = v3;
        if (!v3)
        {
          goto LABEL_9;
        }
      }

      operator delete(v2[2]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

LABEL_9:
  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(this + 7))
  {
    v6 = 0;
    v7 = *(this + 5);
    do
    {
      (**v7)(v7);
      v8 = *(this + 4);
      v7 = (*(this + 5) + 24);
      *(this + 5) = v7;
      if (v7 == v8)
      {
        v7 = *(this + 3);
        *(this + 5) = v7;
      }

      ++v6;
    }

    while (v6 < *(this + 7));
  }

  v9 = *(this + 3);
  if (v9)
  {
    operator delete(v9);
  }

  MEMORY[0x29C26DE80](this + 8);
}

HealthEventDB **std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](HealthEventDB **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    HealthEventDB::~HealthEventDB(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t ctu::PthreadMutexGuardPolicy<HealthEventDB>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t *_ZNSt3__110unique_ptrIZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEUb_EUb0_E3__0NS_14default_deleteISE_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 144);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 136);
    if (v4)
    {
      _Block_release(v4);
    }

    if (*(v2 + 135) < 0)
    {
      operator delete(*(v2 + 112));
      if ((*(v2 + 95) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(v2 + 71) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else if ((*(v2 + 95) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(*(v2 + 72));
    if ((*(v2 + 71) & 0x80000000) == 0)
    {
LABEL_9:
      if ((*(v2 + 47) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(*(v2 + 48));
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
LABEL_10:
      v5 = *(v2 + 16);
      if (!v5)
      {
LABEL_12:
        operator delete(v2);
        return a1;
      }

LABEL_11:
      std::__shared_weak_count::__release_weak(v5);
      goto LABEL_12;
    }

LABEL_17:
    operator delete(*(v2 + 24));
    v5 = *(v2 + 16);
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return a1;
}

void _ZZN8dispatch6detail12group_notifyIZZZN10BootModule12requestResetE9ResetInfoNS_5blockIU13block_pointerFviNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEEUb_EUb0_E3__0EEvP16dispatch_group_sP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEEENUlPvE_8__invokeESO_(uint64_t *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v22 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  if (!a1[1])
  {
    goto LABEL_13;
  }

  ResetInfo::ResetInfo(&v14, (a1 + 3));
  v6 = a1[17];
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = v7;
  BootModule::handleReset_sync(v3, &v14, &v13);
  if (v7)
  {
    _Block_release(v7);
  }

  if (v20 < 0)
  {
    operator delete(v19);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_11:
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_34:
      operator delete(v15);
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_13:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }

LABEL_36:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v8 = a1;
        if (!a1)
        {
          return;
        }

        goto LABEL_15;
      }

      goto LABEL_35;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v17);
  if (v16 < 0)
  {
    goto LABEL_34;
  }

LABEL_12:
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_35:
  operator delete(v14.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_36;
  }

LABEL_14:
  v8 = a1;
  if (!a1)
  {
    return;
  }

LABEL_15:
  v9 = v8[18];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = v8[17];
  if (v10)
  {
    _Block_release(v10);
  }

  if (*(v8 + 135) < 0)
  {
    operator delete(v8[14]);
    if ((*(v8 + 95) & 0x80000000) == 0)
    {
LABEL_21:
      if ((*(v8 + 71) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }
  }

  else if ((*(v8 + 95) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v8[9]);
  if ((*(v8 + 71) & 0x80000000) == 0)
  {
LABEL_22:
    if ((*(v8 + 47) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_30:
    operator delete(v8[3]);
    v11 = v8[2];
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_29:
  operator delete(v8[6]);
  if (*(v8 + 47) < 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  v11 = v8[2];
  if (v11)
  {
LABEL_24:
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_25:
  operator delete(v8);
}

void sub_2973855BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (v11)
  {
    _Block_release(v11);
  }

  ResetInfo::~ResetInfo(&a11);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v12 - 48);
  _ZNSt3__110unique_ptrIZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEUb_EUb0_E3__0NS_14default_deleteISE_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void sub_2973855F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v9 - 48);
  _ZNSt3__110unique_ptrIZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEUb_EUb0_E3__0NS_14default_deleteISE_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  BootModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297385700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  BootModule::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_2973857F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v61 = *a1;
  v2 = *MEMORY[0x29EDBEC88];
  v3 = (*a1)->__vftable;
  if (xpc_dictionary_get_value((*a1)->__shared_owners_, *MEMORY[0x29EDBEC88]))
  {
    value = xpc_dictionary_get_value(v1->__shared_owners_, v2);
    *&buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v5 = xpc::dyn_cast_or_default(&buf, 0);
    xpc_release(buf);
    get_deleter = v3[2].__get_deleter;
    if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "false";
      if (v5)
      {
        v7 = "true";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Registration state is %s", &buf, 0xCu);
    }

    if ((v3[13].__on_zero_shared_weak & 1) == 0)
    {
      BootModule::updateNetworkCampStatus_sync(v3, v5);
    }
  }

  v8 = *MEMORY[0x29EDBF4D0];
  if (xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBF4D0]))
  {
    v9 = xpc_dictionary_get_value(v1->__shared_owners_, v8);
    *&buf = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    LOBYTE(v3[13].__on_zero_shared_weak) = xpc::dyn_cast_or_default(&buf, 0);
    xpc_release(buf);
    v10 = v3[2].__get_deleter;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (LOBYTE(v3[13].__on_zero_shared_weak))
      {
        v11 = "set";
      }

      else
      {
        v11 = "not set";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_DEFAULT, "#I User preference airplane mode is %s", &buf, 0xCu);
    }

    if (LOBYTE(v3[13].__on_zero_shared_weak) == 1)
    {
      BootModule::stopNetworkCampTimer_sync(v3);
    }
  }

  v12 = *MEMORY[0x29EDBE5A8];
  if (xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBE5A8]))
  {
    v13 = xpc_dictionary_get_value(v1->__shared_owners_, v12);
    *&buf = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v14 = xpc::dyn_cast_or_default(&buf, 0);
    xpc_release(buf);
    if (v14)
    {
      v15 = v3[12].__get_deleter;
      if (v15)
      {
        dispatch_retain(v3[12].__get_deleter);
        dispatch_suspend(v15);
      }

      on_zero_shared_weak = v3[12].__on_zero_shared_weak;
      v3[12].__on_zero_shared_weak = v15;
      if (!on_zero_shared_weak)
      {
LABEL_33:
        BootModule::setVoiceCall_sync(v3, v14);
        v17 = *MEMORY[0x29EDBE618];
        v18 = strlen(*MEMORY[0x29EDBE618]);
        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v19 = v18;
        if (v18 >= 0x17)
        {
          if ((v18 | 7) == 0x17)
          {
            v22 = 25;
          }

          else
          {
            v22 = (v18 | 7) + 1;
          }

          p_buf = operator new(v22);
          *(&buf + 1) = v19;
          v68 = v22 | 0x8000000000000000;
          *&buf = p_buf;
        }

        else
        {
          HIBYTE(v68) = v18;
          p_buf = &buf;
          if (!v18)
          {
            LOBYTE(buf) = 0;
            shared_owners = v1->__shared_owners_;
            v66 = shared_owners;
            if (shared_owners)
            {
LABEL_37:
              xpc_retain(shared_owners);
LABEL_44:
              aBlock = 0;
              Service::broadcastEvent(v3, &buf, &v66, &aBlock);
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              xpc_release(v66);
              v66 = 0;
              if (SHIBYTE(v68) < 0)
              {
                operator delete(buf);
              }

              goto LABEL_48;
            }

LABEL_43:
            v66 = xpc_null_create();
            goto LABEL_44;
          }
        }

        memmove(p_buf, v17, v19);
        *(p_buf + v19) = 0;
        shared_owners = v1->__shared_owners_;
        v66 = shared_owners;
        if (shared_owners)
        {
          goto LABEL_37;
        }

        goto LABEL_43;
      }
    }

    else
    {
      on_zero_shared_weak = v3[12].__on_zero_shared_weak;
      v3[12].__on_zero_shared_weak = 0;
      if (!on_zero_shared_weak)
      {
        goto LABEL_33;
      }
    }

    dispatch_resume(on_zero_shared_weak);
    dispatch_release(on_zero_shared_weak);
    goto LABEL_33;
  }

LABEL_48:
  v23 = *MEMORY[0x29EDBF890];
  if (xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBF890]))
  {
    v24 = xpc_dictionary_get_value(v1->__shared_owners_, v23);
    object.__r_.__value_.__r.__words[0] = v24;
    if (v24)
    {
      xpc_retain(v24);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v25 = xpc::dyn_cast_or_default(&object, 0xFFFFFFFFLL);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setRat1_sync(v3, v25);
  }

  v26 = *MEMORY[0x29EDBF898];
  if (xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBF898]))
  {
    v27 = xpc_dictionary_get_value(v1->__shared_owners_, v26);
    object.__r_.__value_.__r.__words[0] = v27;
    if (v27)
    {
      xpc_retain(v27);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v28 = xpc::dyn_cast_or_default(&object, 0xFFFFFFFFLL);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setRat2_sync(v3, v28);
  }

  v29 = *MEMORY[0x29EDBF8D0];
  if (xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBF8D0]))
  {
    memset(&object, 170, sizeof(object));
    v30 = xpc_dictionary_get_value(v1->__shared_owners_, v29);
    __p.__r_.__value_.__r.__words[0] = v30;
    if (v30)
    {
      xpc_retain(v30);
    }

    else
    {
      __p.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(&object, &__p, "", v31);
    xpc_release(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = object;
    }

    BootModule::setPLMN1_sync(v3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_67;
      }
    }

    else if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    operator delete(object.__r_.__value_.__l.__data_);
  }

LABEL_67:
  v32 = *MEMORY[0x29EDBF8D8];
  if (!xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBF8D8]))
  {
    goto LABEL_78;
  }

  memset(&object, 170, sizeof(object));
  v33 = xpc_dictionary_get_value(v1->__shared_owners_, v32);
  v62.__r_.__value_.__r.__words[0] = v33;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    v62.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&object, &v62, "", v34);
  xpc_release(v62.__r_.__value_.__l.__data_);
  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
  }

  else
  {
    v62 = object;
  }

  BootModule::setPLMN2_sync(v3, &v62);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
    if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }
  }

  else if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

  operator delete(object.__r_.__value_.__l.__data_);
LABEL_78:
  v35 = *MEMORY[0x29EDBE4B8];
  if (xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBE4B8]))
  {
    v36 = xpc_dictionary_get_value(v1->__shared_owners_, v35);
    object.__r_.__value_.__r.__words[0] = v36;
    if (v36)
    {
      xpc_retain(v36);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v37 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setCellId_sync(v3, v37, 0);
  }

  v38 = *MEMORY[0x29EDBE4C0];
  if (xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBE4C0]))
  {
    v39 = xpc_dictionary_get_value(v1->__shared_owners_, v38);
    object.__r_.__value_.__r.__words[0] = v39;
    if (v39)
    {
      xpc_retain(v39);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v40 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setCellId_sync(v3, v40, 1);
  }

  v41 = *MEMORY[0x29EDBE558];
  if (xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBE558]))
  {
    v42 = xpc_dictionary_get_value(v1->__shared_owners_, v41);
    object.__r_.__value_.__r.__words[0] = v42;
    if (v42)
    {
      xpc_retain(v42);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v43 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setAreaCode_sync(v3, v43, 0);
  }

  v44 = *MEMORY[0x29EDBE560];
  if (xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBE560]))
  {
    v45 = xpc_dictionary_get_value(v1->__shared_owners_, v44);
    object.__r_.__value_.__r.__words[0] = v45;
    if (v45)
    {
      xpc_retain(v45);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v46 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setAreaCode_sync(v3, v46, 1);
  }

  v47 = *MEMORY[0x29EDBF8B8];
  if (xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBF8B8]) || xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBF8C0]))
  {
    v48 = xpc_dictionary_get_value(v1->__shared_owners_, v47);
    object.__r_.__value_.__r.__words[0] = v48;
    if (v48)
    {
      xpc_retain(v48);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v49 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    if (v49)
    {
      goto LABEL_110;
    }

    v50 = xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBF8C0]);
    object.__r_.__value_.__r.__words[0] = v50;
    if (v50)
    {
      xpc_retain(v50);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v51 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    if (v51)
    {
LABEL_110:
      v52 = v3[12].__get_deleter;
      if (v52)
      {
        dispatch_retain(v3[12].__get_deleter);
        dispatch_suspend(v52);
      }

      v53 = v3[12].__on_zero_shared_weak;
      v3[12].__on_zero_shared_weak = v52;
      if (v53)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v53 = v3[12].__on_zero_shared_weak;
      v3[12].__on_zero_shared_weak = 0;
      if (v53)
      {
LABEL_113:
        dispatch_resume(v53);
        dispatch_release(v53);
      }
    }
  }

  if (v1->__shared_weak_owners_)
  {
    v54 = xpc_null_create();
    shared_weak_owners = v1->__shared_weak_owners_;
    object.__r_.__value_.__r.__words[0] = v54;
    v56 = xpc_null_create();
    (*(shared_weak_owners + 16))(shared_weak_owners, 0, &object);
    xpc_release(object.__r_.__value_.__l.__data_);
    xpc_release(v56);
  }

  if (v61)
  {
    v57 = v61->__shared_weak_owners_;
    if (v57)
    {
      _Block_release(v57);
    }

    xpc_release(v61->__shared_owners_);
    operator delete(v61);
  }

  v58 = a1;
  if (a1)
  {
    v59 = a1[2];
    if (v59)
    {
      if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v59->__on_zero_shared)(v59);
        std::__shared_weak_count::__release_weak(v59);
        v58 = a1;
      }
    }

    operator delete(v58);
  }
}

void sub_297386170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *aBlock)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _ZNSt3__110unique_ptrIZZN10BootModule28registerCommandHandlers_syncEvEUb1_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN10BootModule28registerCommandHandlers_syncEvEUb1_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  value = xpc_dictionary_get_value((*a1)[1], "BasebandHealthy");
  *buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v5 = xpc::dyn_cast_or_default(buf, 1);
  xpc_release(*buf);
  v6 = *(v3 + 104);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v3 + 192);
    if (v7 > 4)
    {
      v8 = "UNKNOWN";
    }

    else
    {
      v8 = off_29EE68428[v7];
    }

    *buf = 67109378;
    *&buf[4] = v5;
    v22 = 2080;
    v23 = v8;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Received BasebandHealthEvent: isHealthy=%d, current PT status=%s", buf, 0x12u);
  }

  if (*(v3 + 192) == 2)
  {
    if (v5)
    {
      v20[23] = 7;
      strcpy(v20, "Healthy");
      v19[23] = 0;
      v9 = v19;
      v10 = v20;
      v11 = 3;
      v19[0] = 0;
    }

    else
    {
      v18[23] = 10;
      strcpy(v18, "NotHealthy");
      v17[23] = 0;
      v17[0] = 0;
      v9 = v17;
      v10 = v18;
      v11 = 4;
    }

    BootModule::updateMobileAssetPTStatus_sync(v3, v11, v10, v9);
  }

  if (v2[2])
  {
    v12 = xpc_null_create();
    v13 = v2[2];
    *buf = v12;
    v14 = xpc_null_create();
    (*(v13 + 16))(v13, 0, buf);
    xpc_release(*buf);
    xpc_release(v14);
    v15 = v2[2];
    if (v15)
    {
      _Block_release(v15);
    }
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v16 = a1[2];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(a1);
}

void sub_297386690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN10BootModule28registerCommandHandlers_syncEvEUb2_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::start(dispatch::group_session)::$_0>(BootModule::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<BootModule::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::string::size_type **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)[3];
  v3 = v2[11];
  v62 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v4 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(&v55);
    v5 = *&v55.__r_.__value_.__l.__data_;
    *&v55.__r_.__value_.__l.__data_ = 0uLL;
    v6 = *(&off_2A1399448 + 1);
    off_2A1399448 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    size = v55.__r_.__value_.__l.__size_;
    if (v55.__r_.__value_.__l.__size_ && !atomic_fetch_add((v55.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v4 = off_2A1399448;
  }

  __dst = v4;
  v51 = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v8.fObj.fObj = *(*v4 + 18);
  ResetDetection::create(&v62, v8, object);
  v9 = *object;
  object[0] = 0;
  object[1] = 0;
  v10 = v2[18];
  *(v2 + 17) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = object[1];
  if (object[1] && !atomic_fetch_add(&object[1][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

  if (v62)
  {
    dispatch_release(v62);
  }

  v12 = v2[17];
  v55.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  v55.__r_.__value_.__l.__size_ = 0x40000000;
  v55.__r_.__value_.__r.__words[2] = ___ZN14ResetDetection5startEv_block_invoke;
  v56 = &__block_descriptor_tmp_3;
  v57 = v12;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(v12, &v55);
  v13 = v1[2];
  if (v13)
  {
    dispatch_retain(v1[2]);
    dispatch_group_enter(v13);
  }

  v14 = v2[21];
  v2[21] = v13;
  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v2 + 88))(&v60, v2);
  if (v60)
  {
    v55.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    v55.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    Registry::getAdaptiveTimerService(&v55, v2[76]);
    if (v55.__r_.__value_.__r.__words[0])
    {
      ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
      v16 = v55.__r_.__value_.__l.__size_;
      if (!v55.__r_.__value_.__l.__size_)
      {
        goto LABEL_35;
      }
    }

    else
    {
      ScaledTime = 180000000;
      v16 = v55.__r_.__value_.__l.__size_;
      if (!v55.__r_.__value_.__l.__size_)
      {
LABEL_35:
        object[0] = 0xAAAAAAAAAAAAAAAALL;
        v17 = v60;
        v18 = operator new(0x38uLL);
        strcpy(v18, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
        v19 = *(v17 + 48);
        std::string::__init_copy_ctor_external(&v55, v18, 0x33uLL);
        (*(*v19 + 24))(object, v19, &v55, ScaledTime / 1000);
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        operator delete(v18);
        v55.__r_.__value_.__r.__words[0] = v2;
        v20 = *v1;
        v55.__r_.__value_.__l.__size_ = *v1;
        v21 = v1[1];
        v55.__r_.__value_.__r.__words[2] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
        }

        v22 = object[0];
        v56 = object[0];
        if (object[0])
        {
          dispatch_retain(object[0]);
          v23 = object[0];
        }

        else
        {
          v23 = 0;
        }

        v24 = v2[11];
        v25 = operator new(0x20uLL);
        *v25 = v2;
        v25[1] = v20;
        v25[2] = v21;
        v25[3] = v22;
        dispatch_group_notify_f(v23, v24, v25, dispatch::detail::group_notify<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
        if (object[0])
        {
          dispatch_release(object[0]);
        }

        goto LABEL_44;
      }
    }

    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    goto LABEL_35;
  }

LABEL_44:
  v26 = v2[65];
  if (v26)
  {
    dispatch_async(v26, &__block_literal_global_243);
    v55.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    v55.__r_.__value_.__l.__size_ = 1174405120;
    v55.__r_.__value_.__r.__words[2] = ___ZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEv_block_invoke_2;
    v56 = &__block_descriptor_tmp_246;
    v57 = v2;
    v58 = *v1;
    v28 = v1[1];
    v59 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v2[65])
    {
      goto LABEL_72;
    }

    capabilities::abs::supportedMobileAssetTypes(v27);
    v29 = capabilities::abs::operator&();
    if (v29)
    {
      v30 = "com.apple.MobileAsset.MAVBasebandAssets";
      v31 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
      if (v31 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_50;
      }
    }

    else
    {
      capabilities::abs::supportedMobileAssetTypes(v29);
      if (capabilities::abs::operator&())
      {
        v30 = "com.apple.MobileAsset.INTBasebandAssets";
      }

      else
      {
        v30 = "";
      }

      v31 = strlen(v30);
      if (v31 <= 0x7FFFFFFFFFFFFFF7)
      {
LABEL_50:
        v32 = v31;
        if (v31 >= 0x17)
        {
          if ((v31 | 7) == 0x17)
          {
            v35 = 25;
          }

          else
          {
            v35 = (v31 | 7) + 1;
          }

          v33 = operator new(v35);
          object[1] = v32;
          v54 = v35 | 0x8000000000000000;
          object[0] = v33;
        }

        else
        {
          HIBYTE(v54) = v31;
          v33 = object;
          if (!v31)
          {
LABEL_60:
            *(&v32->isa + v33) = 0;
            capabilities::abs::supportedMobileAssetTypes(v31);
            v36 = capabilities::abs::operator&();
            if (v36)
            {
              v37 = "PT";
              v38 = strlen("PT");
              if (v38 <= 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_62;
              }
            }

            else
            {
              capabilities::abs::supportedMobileAssetTypes(v36);
              if (capabilities::abs::operator&())
              {
                v37 = "RP";
              }

              else
              {
                v37 = "";
              }

              v38 = strlen(v37);
              if (v38 <= 0x7FFFFFFFFFFFFFF7)
              {
LABEL_62:
                v39 = v38;
                if (v38 >= 0x17)
                {
                  if ((v38 | 7) == 0x17)
                  {
                    v41 = 25;
                  }

                  else
                  {
                    v41 = (v38 | 7) + 1;
                  }

                  p_dst = operator new(v41);
                  v51 = v39;
                  v52 = v41 | 0x8000000000000000;
                  __dst = p_dst;
                }

                else
                {
                  HIBYTE(v52) = v38;
                  p_dst = &__dst;
                  if (!v38)
                  {
LABEL_70:
                    *(&v39->__vftable + p_dst) = 0;
                    *(v2 + 150) = support::mobileasset::registerForUpdates(object, &__dst, v2[65], &v55);
                    if (SHIBYTE(v52) < 0)
                    {
                      operator delete(__dst);
                      if ((SHIBYTE(v54) & 0x80000000) == 0)
                      {
                        goto LABEL_72;
                      }
                    }

                    else if ((SHIBYTE(v54) & 0x80000000) == 0)
                    {
                      goto LABEL_72;
                    }

                    operator delete(object[0]);
LABEL_72:
                    BootModule::getPowerTableFromMobileAsset(v2, 2);
                    if (v59)
                    {
                      std::__shared_weak_count::__release_weak(v59);
                    }

                    goto LABEL_74;
                  }
                }

                memcpy(p_dst, v37, v39);
                goto LABEL_70;
              }
            }

            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        v31 = memcpy(v33, v30, v32);
        goto LABEL_60;
      }
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v2[13];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v55.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297288000, v34, OS_LOG_TYPE_DEFAULT, "#I MobileAsset is not supported", &v55, 2u);
  }

LABEL_74:
  v42 = v61;
  if (v61 && !atomic_fetch_add((v61 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (__p)
  {
    v43 = __p[2];
    if (v43)
    {
      dispatch_group_leave(v43);
      v44 = __p[2];
      if (v44)
      {
        dispatch_release(v44);
      }
    }

    v45 = __p[1];
    if (v45)
    {
      std::__shared_weak_count::__release_weak(v45);
    }

    operator delete(__p);
  }

  v46 = a1;
  if (a1)
  {
    v47 = a1[2];
    if (v47)
    {
      if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v47->__on_zero_shared)(v47);
        std::__shared_weak_count::__release_weak(v47);
        v46 = a1;
      }
    }

    operator delete(v46);
  }
}

void sub_297386FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, dispatch_object_t object, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  if (v34)
  {
    dispatch_release(v34);
    std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,std::default_delete<BootModule::start(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
    std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,std::default_delete<BootModule::start(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,std::default_delete<BootModule::start(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[2];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v1[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEv_block_invoke(capabilities::abs *a1)
{
  capabilities::abs::supportedMobileAssetTypes(a1);
  v1 = capabilities::abs::operator&();
  if (v1)
  {
    v2 = "com.apple.MobileAsset.MAVBasebandAssets";
    v3 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
    if (v3 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_3;
    }

LABEL_28:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v1);
  if (capabilities::abs::operator&())
  {
    v2 = "com.apple.MobileAsset.INTBasebandAssets";
  }

  else
  {
    v2 = "";
  }

  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v16 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_10;
  }

  HIBYTE(v16) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_10:
    v3 = memcpy(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  capabilities::abs::supportedMobileAssetTypes(v3);
  v7 = capabilities::abs::operator&();
  if (v7)
  {
    v8 = "PT";
    v9 = strlen("PT");
    if (v9 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_13;
    }

LABEL_33:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v7);
  if (capabilities::abs::operator&())
  {
    v8 = "RP";
  }

  else
  {
    v8 = "";
  }

  v9 = strlen(v8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_33;
  }

LABEL_13:
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
    __p[1] = v10;
    v14 = v12 | 0x8000000000000000;
    __p[0] = v11;
    goto LABEL_20;
  }

  HIBYTE(v14) = v9;
  v11 = __p;
  if (v9)
  {
LABEL_20:
    memcpy(v11, v8, v10);
  }

  *(v10 + v11) = 0;
  MobileAssetSupport::unlockAsset(__dst, __p);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_35;
  }
}

void sub_29738736C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void ___ZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEv_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v9 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = v3[13];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I MobileAsset notification received", v7, 2u);
        }

        BootModule::getPowerTableFromMobileAsset(v3, 1);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_2973874AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(BootModule **a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_37;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v28 = v4;
  if (!v4)
  {
    goto LABEL_37;
  }

  v5 = v4;
  v27 = a1[1];
  if (!v27)
  {
    goto LABEL_35;
  }

  if (!*(v3 + 576))
  {
    BootModule::reportStatisticsHardResetTime_sync(v3);
    BootModule::boot_sync(v3);
LABEL_35:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    goto LABEL_37;
  }

  v26 = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v26 = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF0C8], v6, v8);
  v9 = *MEMORY[0x29EDBF460];
  v10 = strlen(*MEMORY[0x29EDBF460]);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v12 = operator new(v14);
    __dst[1] = v11;
    v25 = v14 | 0x8000000000000000;
    __dst[0] = v12;
LABEL_17:
    memmove(v12, v9, v11);
    *(v11 + v12) = 0;
    v13 = v26;
    if (!v26)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  HIBYTE(v25) = v10;
  v12 = __dst;
  if (v10)
  {
    goto LABEL_17;
  }

  LOBYTE(__dst[0]) = 0;
  v13 = v26;
  if (!v26)
  {
    goto LABEL_20;
  }

LABEL_18:
  v15 = CFGetTypeID(v13);
  if (v15 == CFDictionaryGetTypeID())
  {
    cf = v13;
    CFRetain(v13);
    goto LABEL_21;
  }

LABEL_20:
  cf = 0;
LABEL_21:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEvENKUlvE_clEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_250;
  aBlock[4] = v3;
  aBlock[5] = v27;
  v21 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = _Block_copy(aBlock);
  Service::broadcastEvent(v3, __dst, &cf, &v22);
  if (v22)
  {
    _Block_release(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  v16 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v5 = v28;
  if (v28)
  {
    goto LABEL_35;
  }

LABEL_37:
  if (a1)
  {
    v17 = a1[3];
    if (v17)
    {
      dispatch_release(v17);
    }

    v18 = a1[2];
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    operator delete(a1);
  }
}

void sub_297387820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v24 + 40);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v25 - 72));
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v25 - 64);
  std::unique_ptr<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEvENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEvENKUlvE_clEv_block_invoke_2;
  v2[3] = &__block_descriptor_tmp_247;
  v2[4] = v1;
  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v1 + 72), v2);
}

void **std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0,std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>(dispatch_queue_s *,std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0,std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v47 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 3);
  if (!v2)
  {
    goto LABEL_74;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v40 = v4;
  if (!v4)
  {
    goto LABEL_74;
  }

  if (*(a1 + 2))
  {
    v35 = 0;
    v36 = 0xAAAAAAAAAAAAAA00;
    v34[0] = 0;
    v34[1] = 0;
    *v37 = 0u;
    memset(v38, 0, sizeof(v38));
    capabilities::abs::supportedMobileAssetTypes(v4);
    v5 = capabilities::abs::operator&();
    if (v5)
    {
      v6 = "com.apple.MobileAsset.MAVBasebandAssets";
      v7 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      capabilities::abs::supportedMobileAssetTypes(v5);
      if (capabilities::abs::operator&())
      {
        v6 = "com.apple.MobileAsset.INTBasebandAssets";
      }

      else
      {
        v6 = "";
      }

      v7 = strlen(v6);
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
LABEL_6:
        v8 = v7;
        if (v7 >= 0x17)
        {
          if ((v7 | 7) == 0x17)
          {
            v10 = 25;
          }

          else
          {
            v10 = (v7 | 7) + 1;
          }

          v9 = operator new(v10);
          *&__dst[8] = v8;
          *&__dst[16] = v10 | 0x8000000000000000;
          *__dst = v9;
        }

        else
        {
          __dst[23] = v7;
          v9 = __dst;
          if (!v7)
          {
LABEL_14:
            v9[v8] = 0;
            capabilities::abs::supportedMobileAssetTypes(v7);
            v11 = capabilities::abs::operator&();
            if (v11)
            {
              v12 = "PT";
              v13 = strlen("PT");
              if (v13 <= 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_16;
              }
            }

            else
            {
              capabilities::abs::supportedMobileAssetTypes(v11);
              if (capabilities::abs::operator&())
              {
                v12 = "RP";
              }

              else
              {
                v12 = "";
              }

              v13 = strlen(v12);
              if (v13 <= 0x7FFFFFFFFFFFFFF7)
              {
LABEL_16:
                v14 = v13;
                if (v13 >= 0x17)
                {
                  if ((v13 | 7) == 0x17)
                  {
                    v16 = 25;
                  }

                  else
                  {
                    v16 = (v13 | 7) + 1;
                  }

                  v15 = operator new(v16);
                  __p[1] = v14;
                  v33 = v16 | 0x8000000000000000;
                  __p[0] = v15;
                }

                else
                {
                  HIBYTE(v33) = v13;
                  v15 = __p;
                  if (!v13)
                  {
LABEL_24:
                    *(v14 + v15) = 0;
                    v17 = MobileAssetSupport::lockAsset(__dst, __p, 0, v34);
                    if (SHIBYTE(v33) < 0)
                    {
                      operator delete(__p[0]);
                      if ((__dst[23] & 0x80000000) == 0)
                      {
LABEL_26:
                        if (v17)
                        {
                          goto LABEL_27;
                        }

                        goto LABEL_41;
                      }
                    }

                    else if ((__dst[23] & 0x80000000) == 0)
                    {
                      goto LABEL_26;
                    }

                    operator delete(*__dst);
                    if (v17)
                    {
LABEL_27:
                      *__dst = v3;
                      if (SHIBYTE(v35) < 0)
                      {
                        std::string::__init_copy_ctor_external(&__dst[8], v34[0], v34[1]);
                      }

                      else
                      {
                        *&__dst[8] = *v34;
                        v42 = v35;
                      }

                      v43 = v36;
                      if (SHIBYTE(v38[0]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v44, v37[0], v37[1]);
                      }

                      else
                      {
                        *&v44.__r_.__value_.__l.__data_ = *v37;
                        v44.__r_.__value_.__r.__words[2] = v38[0];
                      }

                      if (SHIBYTE(v38[3]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v45, v38[1], v38[2]);
                      }

                      else
                      {
                        v45 = *&v38[1];
                      }

                      v46 = a1[8];
                      v21 = v3[10];
                      if (!v21 || (v22 = v3[9], (v23 = std::__shared_weak_count::lock(v21)) == 0))
                      {
                        std::__throw_bad_weak_ptr[abi:ne200100]();
                      }

                      v24 = v23;
                      v25 = operator new(0x60uLL);
                      *v25 = *__dst;
                      *(v25 + 8) = *&__dst[8];
                      *(v25 + 3) = v42;
                      *&__dst[8] = 0;
                      *&__dst[16] = 0;
                      v42 = 0;
                      v25[32] = v43;
                      *(v25 + 40) = v44;
                      memset(&v44, 0, sizeof(v44));
                      v26 = *&v45.__r_.__value_.__l.__data_;
                      *(v25 + 10) = *(&v45.__r_.__value_.__l + 2);
                      *(v25 + 4) = v26;
                      memset(&v45, 0, sizeof(v45));
                      v25[88] = v46;
                      v27 = v3[11];
                      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
                      v28 = operator new(0x18uLL);
                      *v28 = v25;
                      v28[1] = v22;
                      v28[2] = v24;
                      dispatch_async_f(v27, v28, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>(BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
                      if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_55;
                        }
                      }

                      else
                      {
                        (v24->__on_zero_shared)(v24);
                        std::__shared_weak_count::__release_weak(v24);
                        if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
LABEL_55:
                          if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_56;
                          }

                          goto LABEL_60;
                        }
                      }

                      operator delete(v45.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_56:
                        if ((SHIBYTE(v42) & 0x80000000) == 0)
                        {
                          goto LABEL_62;
                        }

LABEL_61:
                        operator delete(*&__dst[8]);
                        goto LABEL_62;
                      }

LABEL_60:
                      operator delete(v44.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v42) & 0x80000000) == 0)
                      {
                        goto LABEL_62;
                      }

                      goto LABEL_61;
                    }

LABEL_41:
                    v18 = v3[13];
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                    {
                      v19 = a1[8];
                      if (v19 > 2)
                      {
                        v20 = "UNKNOWN";
                      }

                      else
                      {
                        v20 = off_29EE68450[v19];
                      }

                      *__dst = 136315138;
                      *&__dst[4] = v20;
                      _os_log_impl(&dword_297288000, v18, OS_LOG_TYPE_DEFAULT, "#I Failed to get the MobileAsset requested triggered by %s", __dst, 0xCu);
                      if ((SHIBYTE(v38[3]) & 0x80000000) == 0)
                      {
LABEL_63:
                        if ((SHIBYTE(v38[0]) & 0x80000000) == 0)
                        {
                          goto LABEL_64;
                        }

                        goto LABEL_70;
                      }

LABEL_69:
                      operator delete(v38[1]);
                      if ((SHIBYTE(v38[0]) & 0x80000000) == 0)
                      {
LABEL_64:
                        if ((SHIBYTE(v35) & 0x80000000) == 0)
                        {
                          goto LABEL_65;
                        }

LABEL_71:
                        operator delete(v34[0]);
                        v4 = v40;
                        if (!v40)
                        {
                          goto LABEL_74;
                        }

                        goto LABEL_72;
                      }

LABEL_70:
                      operator delete(v37[0]);
                      if ((SHIBYTE(v35) & 0x80000000) == 0)
                      {
LABEL_65:
                        v4 = v40;
                        if (!v40)
                        {
                          goto LABEL_74;
                        }

                        goto LABEL_72;
                      }

                      goto LABEL_71;
                    }

LABEL_62:
                    if ((SHIBYTE(v38[3]) & 0x80000000) == 0)
                    {
                      goto LABEL_63;
                    }

                    goto LABEL_69;
                  }
                }

                memcpy(v15, v12, v14);
                goto LABEL_24;
              }
            }

            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        v7 = memcpy(v9, v6, v8);
        goto LABEL_14;
      }
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_72:
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v29 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_74:
  if (a1)
  {
    v30 = *(a1 + 3);
    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    operator delete(a1);
  }
}

void sub_297387EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a29);
  }

  support::mobileasset::assetData::~assetData(&a16);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a26);
  std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0,std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>(BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void ***a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  if ((*(*a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!v1[2])
    {
      goto LABEL_58;
    }
  }

  else if (!*(v1 + 31))
  {
    goto LABEL_58;
  }

  v2 = *v1;
  v3 = *(*v1 + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (*(v1 + 87) < 0)
    {
      v4 = *v4;
      v5 = *(v1 + 88);
      if (v5 <= 2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = *(v1 + 88);
      if (v5 <= 2)
      {
LABEL_8:
        v6 = off_29EE68450[v5];
LABEL_11:
        *buf = 136315394;
        *&buf[4] = v4;
        *&buf[12] = 2080;
        *&buf[14] = v6;
        _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Update requested with MobileAsset version %s, triggered by %s", buf, 0x16u);
        goto LABEL_12;
      }
    }

    v6 = "UNKNOWN";
    goto LABEL_11;
  }

LABEL_12:
  *(v2 + 193) = *(v1 + 88);
  *(v2 + 224) = *(v1 + 32);
  v7 = (v2 + 232);
  if ((v2 + 232) != v1 + 5)
  {
    v8 = *(v1 + 63);
    if (*(v2 + 255) < 0)
    {
      if (v8 >= 0)
      {
        v10 = v1 + 5;
      }

      else
      {
        v10 = v1[5];
      }

      if (v8 >= 0)
      {
        v11 = *(v1 + 63);
      }

      else
      {
        v11 = v1[6];
      }

      std::string::__assign_no_alias<false>(v7, v10, v11);
    }

    else if ((*(v1 + 63) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v7, v1[5], v1[6]);
    }

    else
    {
      v9 = *(v1 + 5);
      *(v2 + 248) = v1[7];
      *v7 = v9;
    }
  }

  v12 = (v2 + 200);
  if ((v2 + 200) != v1 + 8)
  {
    v13 = *(v1 + 87);
    if (*(v2 + 223) < 0)
    {
      if (v13 >= 0)
      {
        v15 = v1 + 8;
      }

      else
      {
        v15 = v1[8];
      }

      if (v13 >= 0)
      {
        v16 = *(v1 + 87);
      }

      else
      {
        v16 = v1[9];
      }

      std::string::__assign_no_alias<false>(v12, v15, v16);
    }

    else if ((*(v1 + 87) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v12, v1[8], v1[9]);
    }

    else
    {
      v14 = *(v1 + 4);
      *(v2 + 216) = v1[10];
      *v12 = v14;
    }
  }

  v17 = *(v1 + 88);
  if (v17 > 2)
  {
    v18 = "UNKNOWN";
  }

  else
  {
    v18 = off_29EE68450[v17];
  }

  v19 = strlen(v18);
  if (v19 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v19 | 7) + 1;
    }

    v21 = operator new(v23);
    *&buf[8] = v20;
    *&buf[16] = v23 | 0x8000000000000000;
    *buf = v21;
LABEL_48:
    memcpy(v21, v18, v20);
    v21[v20] = 0;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_49;
  }

  buf[23] = v19;
  v21 = buf;
  if (v19)
  {
    goto LABEL_48;
  }

  buf[0] = 0;
  if ((*(v1 + 31) & 0x80000000) == 0)
  {
LABEL_43:
    v22 = *(v1 + 1);
    v30.__r_.__value_.__r.__words[2] = v1[3];
    *&v30.__r_.__value_.__l.__data_ = v22;
    goto LABEL_50;
  }

LABEL_49:
  std::string::__init_copy_ctor_external(&v30, v1[1], v1[2]);
LABEL_50:
  updated = BootModule::updateMobileAssetPTStatus_sync(v2, 1u, buf, &v30);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_55:
    operator delete(*buf);
    if (!updated)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  operator delete(v30.__r_.__value_.__l.__data_);
  if ((buf[23] & 0x80000000) != 0)
  {
    goto LABEL_55;
  }

LABEL_52:
  if (!updated)
  {
LABEL_58:
    v25 = __p;
    if (!__p)
    {
      goto LABEL_63;
    }

LABEL_59:
    if (*(v25 + 87) < 0)
    {
      operator delete(v25[8]);
      if ((*(v25 + 63) & 0x80000000) == 0)
      {
LABEL_61:
        if ((*(v25 + 31) & 0x80000000) == 0)
        {
LABEL_62:
          operator delete(v25);
          goto LABEL_63;
        }

LABEL_71:
        operator delete(v25[1]);
        goto LABEL_62;
      }
    }

    else if ((*(v25 + 63) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    operator delete(v25[5]);
    if ((*(v25 + 31) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_71;
  }

LABEL_56:
  if (*(v2 + 576) - 3 < 3)
  {
    BootModule::triggerResetWithUpdatedPT_sync(v2);
    goto LABEL_58;
  }

  *(v2 + 194) = 1;
  v25 = __p;
  if (__p)
  {
    goto LABEL_59;
  }

LABEL_63:
  v26 = a1;
  if (a1)
  {
    v27 = a1[2];
    if (v27)
    {
      if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
        v26 = a1;
      }
    }

    operator delete(v26);
  }
}

void sub_297388360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2973883CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
      if ((*(v2 + 63) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(v2 + 31) & 0x80000000) == 0)
        {
LABEL_5:
          operator delete(v2);
          return a1;
        }

LABEL_9:
        operator delete(*(v2 + 8));
        goto LABEL_5;
      }
    }

    else if ((*(v2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v2 + 40));
    if ((*(v2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return a1;
}

void support::mobileasset::assetData::~assetData(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
    if ((*(this + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[4]);
  if (*(this + 23) < 0)
  {
    goto LABEL_7;
  }
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3B660;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E3B660;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E3B660;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E3B660;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      v10 = a1[2];
      if (v10)
      {
        v11 = a1[3];
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          dispatch_retain(v4);
          dispatch_group_enter(v4);
        }

        if (v5)
        {
          xpc_retain(v5);
          v12 = v5;
          v13 = v7[10];
          if (!v13)
          {
LABEL_23:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v12 = xpc_null_create();
          v13 = v7[10];
          if (!v13)
          {
            goto LABEL_23;
          }
        }

        v14 = v7[9];
        v15 = std::__shared_weak_count::lock(v13);
        if (!v15)
        {
          goto LABEL_23;
        }

        v16 = v15;
        v17 = operator new(0x28uLL);
        *v17 = v7;
        v17[1] = v10;
        v17[2] = v11;
        v17[3] = v4;
        v17[4] = v12;
        v18 = xpc_null_create();
        v19 = v7[11];
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = operator new(0x18uLL);
        *v20 = v17;
        v20[1] = v14;
        v20[2] = v16;
        dispatch_async_f(v19, v20, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
        if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        xpc_release(v18);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v48 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v35 = *a1;
  v2 = **a1;
  v3 = v2[576];
  if (v3 == 3)
  {
    object = _os_activity_create(&dword_297288000, "Baseband state: transport is ready", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
    memset(state, 170, 16);
    os_activity_scope_enter(object, state);
    os_activity_scope_leave(state);
    (*(*v2 + 104))(v2, 4);
    cf = 0;
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v7 = Mutable;
    if (Mutable)
    {
      cf = Mutable;
    }

    v8 = *MEMORY[0x29EDBEAF8];
    *state = 0;
    ctu::cf::convert_copy(state, v8, 0x8000100, v4, v6);
    v9 = *MEMORY[0x29EDBEFB8];
    v10 = *state;
    __dst[0] = *state;
    *state = 0;
    ctu::cf::convert_copy(state, v9, 0x8000100, v4, v11);
    v12 = *state;
    v42 = *state;
    if (v10 && *state)
    {
      CFDictionarySetValue(v7, v10, *state);
    }

    else if (!*state)
    {
      goto LABEL_12;
    }

    CFRelease(v12);
LABEL_12:
    if (v10)
    {
      CFRelease(v10);
    }

    v42 = 0xAAAAAAAAAAAAAAAALL;
    BootModule::calculateBootStatistics_sync(v2, &v42);
    v16 = v42;
    if (v42)
    {
      v17 = *MEMORY[0x29EDBF158];
      *state = 0;
      ctu::cf::convert_copy(state, v17, 0x8000100, v4, v15);
      v18 = *state;
      __dst[0] = *state;
      *state = v16;
      CFRetain(v16);
      if (v18)
      {
        CFDictionarySetValue(v7, v18, v16);
      }

      CFRelease(v16);
      if (v18)
      {
        CFRelease(v18);
      }
    }

    v19 = *MEMORY[0x29EDBF460];
    v20 = strlen(*MEMORY[0x29EDBF460]);
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      if ((v20 | 7) == 0x17)
      {
        v24 = 25;
      }

      else
      {
        v24 = (v20 | 7) + 1;
      }

      v22 = operator new(v24);
      __dst[1] = v21;
      v39 = v24 | 0x8000000000000000;
      __dst[0] = v22;
    }

    else
    {
      HIBYTE(v39) = v20;
      v22 = __dst;
      if (!v20)
      {
        LOBYTE(__dst[0]) = 0;
        v23 = cf;
        if (!cf)
        {
          goto LABEL_31;
        }

LABEL_29:
        v25 = CFGetTypeID(v23);
        if (v25 == CFDictionaryGetTypeID())
        {
          v37 = v23;
          CFRetain(v23);
LABEL_32:
          *state = MEMORY[0x29EDCA5F8];
          *&state[8] = 1174405120;
          *&state[16] = ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke;
          v44 = &__block_descriptor_tmp_264;
          v45 = v2;
          v46 = v1[1];
          v26 = v1[2];
          v47 = v26;
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          aBlock = _Block_copy(state);
          Service::broadcastEvent(v2, __dst, &v37, &aBlock);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v37)
          {
            CFRelease(v37);
          }

          if (SHIBYTE(v39) < 0)
          {
            operator delete(__dst[0]);
          }

          v27 = *(v2 + 21);
          *(v2 + 21) = 0;
          if (v27)
          {
            dispatch_group_leave(v27);
            dispatch_release(v27);
          }

          if (v47)
          {
            std::__shared_weak_count::__release_weak(v47);
          }

          if (v42)
          {
            CFRelease(v42);
          }

          if (v23)
          {
            CFRelease(v23);
          }

          if (object)
          {
            os_release(object);
          }

LABEL_50:
          if (v2[194] != 1)
          {
            goto LABEL_55;
          }

LABEL_54:
          BootModule::triggerResetWithUpdatedPT_sync(v2);
          goto LABEL_55;
        }

LABEL_31:
        v37 = 0;
        goto LABEL_32;
      }
    }

    memmove(v22, v19, v21);
    *(v21 + v22) = 0;
    v23 = cf;
    if (!cf)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v13 = *(v2 + 13);
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_50;
  }

  if (v3 > 8)
  {
    v14 = "Unknown";
  }

  else
  {
    v14 = off_29EE68468[v3];
  }

  v28 = *MEMORY[0x29EDBEFB8];
  *state = 136315394;
  *&state[4] = v14;
  *&state[12] = 2080;
  *&state[14] = v28;
  _os_log_impl(&dword_297288000, v13, OS_LOG_TYPE_DEFAULT, "#I State is '%s'; don't send '%s' event", state, 0x16u);
  if (v2[194] == 1)
  {
    goto LABEL_54;
  }

LABEL_55:
  if (v35)
  {
    xpc_release(v35[4]);
    v35[4] = 0;
    v29 = v35[3];
    if (v29)
    {
      dispatch_group_leave(v29);
      v30 = v35[3];
      if (v30)
      {
        dispatch_release(v30);
      }
    }

    v31 = v35[2];
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }

    operator delete(v35);
  }

  v32 = a1;
  if (a1)
  {
    v33 = *(a1 + 16);
    if (v33)
    {
      if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
        v32 = a1;
      }
    }

    operator delete(v32);
  }
}

void sub_297388E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *aBlock, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 24);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 24);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = *(v1 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6[0] = MEMORY[0x29EDCA5F8];
        v6[1] = 0x40000000;
        v6[2] = ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_2;
        v6[3] = &__block_descriptor_tmp_261;
        v6[4] = v3;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped((v3 + 72), v6);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 576);
  if (v2 == 4)
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    (*(*v1 + 88))(&v9);
    v3 = v9;
    if (v9)
    {
      v4 = operator new(0x38uLL);
      strcpy(v4, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
      v5 = *(v3 + 48);
      std::string::__init_copy_ctor_external(&v11, v4, 0x33uLL);
      (*(*v5 + 32))(v5, &v11);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      operator delete(v4);
    }

    v6 = v10;
    if (v10)
    {
      if (!atomic_fetch_add((v10 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  else
  {
    v7 = *(v1 + 104);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v2 > 8)
      {
        v8 = "Unknown";
      }

      else
      {
        v8 = off_29EE684B0[v2];
      }

      LODWORD(v11.__r_.__value_.__l.__data_) = 136315138;
      *(v11.__r_.__value_.__r.__words + 4) = v8;
      _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I State is '%s' not releasing power assertion yet", &v11, 0xCu);
    }
  }
}

void sub_297389294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3B710;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E3B710;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E3B710;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E3B710;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}