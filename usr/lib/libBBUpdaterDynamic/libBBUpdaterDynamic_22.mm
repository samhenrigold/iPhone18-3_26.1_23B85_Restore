_DWORD *BBUDataSource::createFromEurekaMIData(BBUDataSource *this, const __CFData *a2, int a3)
{
  v4 = a2;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v16 = Mutable;
  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  if (this)
  {
    Length = CFDataGetLength(this);
  }

  else
  {
    Length = 0;
  }

  HIDWORD(v13) = Length;
  LODWORD(v14) = Length;
  v12 = a3;
  CFDataAppendBytes(Mutable, &v12, 40);
  if (this)
  {
    BytePtr = CFDataGetBytePtr(this);
    v9 = CFDataGetLength(this);
    CFDataAppendBytes(Mutable, BytePtr, v9);
  }

  v10 = operator new(0x18uLL);
  v10[4] = v4;
  *v10 = &unk_1F5F04B00;
  *(v10 + 1) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
    CFRelease(Mutable);
  }

  return v10;
}

void sub_1E535ED28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void BBUDataSource::generateHash(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = (*(*a1 + 24))(a1);
  v7 = operator new[](0x100000uLL);
  if (a3 == 1)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v14.wbuf[12] = v11;
    *&v14.wbuf[14] = v11;
    *&v14.wbuf[8] = v11;
    *&v14.wbuf[10] = v11;
    *&v14.wbuf[4] = v11;
    *&v14.wbuf[6] = v11;
    *v14.wbuf = v11;
    *&v14.wbuf[2] = v11;
    *&v14.hash[4] = v11;
    *&v14.hash[6] = v11;
    *v14.hash = v11;
    *&v14.hash[2] = v11;
    *v14.count = v11;
    CC_SHA384_Init(&v14);
    if (v6)
    {
      v12 = 0;
      do
      {
        v15 = 0;
        if (v6 >= 0x100000)
        {
          v13 = 0x100000;
        }

        else
        {
          v13 = v6;
        }

        (*(*a1 + 16))(a1, v7, v13, &v15, v12);
        CC_SHA384_Update(&v14, v7, v15);
        v12 = v15 + v12;
        v6 -= v15;
      }

      while (v6);
    }

    CC_SHA384_Final(a2, &v14);
  }

  else if (!a3)
  {
    v14.wbuf[2] = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v14.hash[6] = v8;
    *v14.wbuf = v8;
    *&v14.hash[2] = v8;
    *&v14.hash[4] = v8;
    *v14.count = v8;
    *v14.hash = v8;
    CC_SHA256_Init(&v14);
    if (v6)
    {
      v9 = 0;
      do
      {
        v15 = 0;
        if (v6 >= 0x100000)
        {
          v10 = 0x100000;
        }

        else
        {
          v10 = v6;
        }

        (*(*a1 + 16))(a1, v7, v10, &v15, v9);
        CC_SHA256_Update(&v14, v7, v15);
        v9 = v15 + v9;
        v6 -= v15;
      }

      while (v6);
    }

    CC_SHA256_Final(a2, &v14);
  }

  operator delete[](v7);
}

uint64_t BBUDataSource::saveDataToFile(uint64_t a1, uint64_t a2, int a3)
{
  v85 = *MEMORY[0x1E69E9840];
  memset(&v69, 170, sizeof(v69));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v6 = off_1ED944170;
  if (!off_1ED944170)
  {
    v7 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v7);
    *&__str = v7;
    v8 = operator new(0x20uLL);
    *v8 = &unk_1F5F05A00;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = v7;
    v9 = off_1ED944178;
    off_1ED944170 = v7;
    off_1ED944178 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = off_1ED944170;
  }

  v10 = off_1ED944178;
  *&__b.f_bsize = v6;
  __b.f_blocks = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v11 = v6[1];
  if (!v11)
  {
LABEL_14:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v12 = *(v11 + 8);
      if (v12 < 1)
      {
        break;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    v11 = v11[1];
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  if (*(v11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, v11[5], v11[6]);
  }

  else
  {
    v69 = *(v11 + 5);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v14 = open(v13, 1537, 420);
  if (v14 < 0)
  {
    v22 = 35;
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_104;
    }

    return v22;
  }

  v15 = (*(*a1 + 24))(a1);
  v60 = operator new[](v15);
  if (v15)
  {
    v16 = 0;
    v17 = v15;
    v18 = v60;
    do
    {
      __b.f_bsize = -1431655766;
      (*(*a1 + 16))(a1, v18, v17, &__b, v16);
      v16 = (__b.f_bsize + v16);
      v18 += __b.f_bsize;
      v17 = (v17 - __b.f_bsize);
    }

    while (v17);
  }

  v68 = -1431655766;
  v19 = TelephonyUtilWriteToCompletion();
  if (!v19)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_44;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v23 = (*(*a1 + 56))(a1);
      if (*(a2 + 23) >= 0)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a2;
      }

      _BBULog(15, 0, v23, "", "Wrote %u bytes to %s\n", v68, v24);
    }

LABEL_44:
    if (!a3)
    {
LABEL_47:
      v22 = 0;
      goto LABEL_103;
    }

    memset(&__b, 0, 24);
    v25 = bbufs::chownToWireless(&__b, v14);
    if (SHIBYTE(__b.f_bfree) < 0)
    {
      v49 = v25;
      operator delete(*&__b.f_bsize);
      if (v49)
      {
        goto LABEL_47;
      }
    }

    else if (v25)
    {
      goto LABEL_47;
    }

    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v50 = off_1ED944120;
    if (!off_1ED944120)
    {
      v51 = operator new(0x38uLL);
      v52 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v53 = dispatch_queue_create("BBUError", v52);
      *v51 = 0;
      v51[1] = 0;
      v51[2] = v53;
      if (v53)
      {
        v54 = v53;
        dispatch_retain(v53);
        v51[3] = 0;
        dispatch_release(v54);
      }

      else
      {
        v51[3] = 0;
      }

      v51[4] = 0;
      v51[5] = 0;
      v51[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&__b, v51);
      v55 = *&__b.f_bsize;
      *&__b.f_bsize = 0;
      __b.f_blocks = 0;
      v56 = *(&off_1ED944120 + 1);
      off_1ED944120 = v55;
      if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v56->__on_zero_shared)(v56);
        std::__shared_weak_count::__release_weak(v56);
      }

      f_blocks = __b.f_blocks;
      if (__b.f_blocks && !atomic_fetch_add((__b.f_blocks + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (f_blocks->__on_zero_shared)(f_blocks);
        std::__shared_weak_count::__release_weak(f_blocks);
      }

      v50 = off_1ED944120;
    }

    v58 = *(&off_1ED944120 + 1);
    v67.__r_.__value_.__r.__words[0] = v50;
    v67.__r_.__value_.__l.__size_ = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    block = operator new(0x20uLL);
    v72 = xmmword_1E5391A90;
    strcpy(block, "Failed to change file ownership");
    *&__b.f_bsize = MEMORY[0x1E69E9820];
    __b.f_blocks = 0x40000000;
    __b.f_bfree = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    __b.f_bavail = &__block_descriptor_tmp_8;
    __b.f_files = v50;
    __b.f_ffree = &block;
    __b.f_fsid.val[0] = 35;
    __p[0] = &__b;
    *&__str = MEMORY[0x1E69E9820];
    *(&__str + 1) = 0x40000000;
    *&v78 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    *(&v78 + 1) = &__block_descriptor_tmp_13_0;
    *&v79 = v50;
    *(&v79 + 1) = __p;
    v59 = *(v50 + 16);
    if (*(v50 + 24))
    {
      dispatch_async_and_wait(v59, &__str);
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
LABEL_123:
        if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v58->__on_zero_shared)(v58);
          std::__shared_weak_count::__release_weak(v58);
        }

        goto LABEL_102;
      }
    }

    else
    {
      dispatch_sync(v59, &__str);
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
        goto LABEL_123;
      }
    }

    operator delete(block);
    goto LABEL_123;
  }

  memset(&__b, 170, sizeof(__b));
  memset(&v67, 0, sizeof(v67));
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v69;
  }

  else
  {
    v20 = v69.__r_.__value_.__r.__words[0];
  }

  if (statfs(v20, &__b))
  {
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      v67.__r_.__value_.__l.__size_ = 18;
      v21 = v67.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v67.__r_.__value_.__s + 23) = 18;
      v21 = &v67;
    }

    strcpy(v21, ": failed to statfs");
  }

  else
  {
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    __str = 0u;
    snprintf(&__str, 0x80uLL, ": free %llu avail %llu", __b.f_bfree * __b.f_bsize, __b.f_bavail * __b.f_bsize);
    std::string::__assign_external(&v67, &__str);
  }

  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v26 = off_1ED944120;
  if (!off_1ED944120)
  {
    v27 = operator new(0x38uLL);
    v28 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v29 = dispatch_queue_create("BBUError", v28);
    *v27 = 0;
    v27[1] = 0;
    v27[2] = v29;
    if (v29)
    {
      v30 = v29;
      dispatch_retain(v29);
      v27[3] = 0;
      dispatch_release(v30);
    }

    else
    {
      v27[3] = 0;
    }

    v27[4] = 0;
    v27[5] = 0;
    v27[6] = 0;
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&__str, v27);
    v31 = __str;
    __str = 0uLL;
    v32 = *(&off_1ED944120 + 1);
    off_1ED944120 = v31;
    if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v32);
    }

    v33 = *(&__str + 1);
    if (*(&__str + 1) && !atomic_fetch_add((*(&__str + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }

    v26 = off_1ED944120;
  }

  v34 = *(&off_1ED944120 + 1);
  v65 = v26;
  v66 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  __str = 0u;
  if (strerror_r(v19, &__str, 0x80uLL))
  {
    snprintf(&__str, 0x80uLL, "unknown error %d", v19);
  }

  v35 = strlen(&__str);
  if (v35 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v36 = v35;
  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    p_dst = operator new(v38);
    __dst.__r_.__value_.__l.__size_ = v36;
    __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_74;
  }

  *(&__dst.__r_.__value_.__s + 23) = v35;
  p_dst = &__dst;
  if (v35)
  {
LABEL_74:
    memcpy(p_dst, &__str, v36);
  }

  p_dst->__r_.__value_.__s.__data_[v36] = 0;
  v39 = std::string::insert(&__dst, 0, "Failed to write file: ", 0x16uLL);
  v40 = *&v39->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v67;
  }

  else
  {
    v41 = v67.__r_.__value_.__r.__words[0];
  }

  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v67.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v62, v41, size);
  v44 = *&v43->__r_.__value_.__l.__data_;
  v64 = v43->__r_.__value_.__r.__words[2];
  *__p = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  *&__str = MEMORY[0x1E69E9820];
  *(&__str + 1) = 0x40000000;
  *&v78 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
  *(&v78 + 1) = &__block_descriptor_tmp_8;
  *&v79 = v26;
  *(&v79 + 1) = __p;
  LODWORD(v80) = 35;
  p_str = &__str;
  block = MEMORY[0x1E69E9820];
  *&v72 = 0x40000000;
  *(&v72 + 1) = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v73 = &__block_descriptor_tmp_13_0;
  v74 = v26;
  p_p_str = &p_str;
  v45 = *(v26 + 16);
  if (*(v26 + 24))
  {
    dispatch_async_and_wait(v45, &block);
    if ((SHIBYTE(v64) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }
  }

  else
  {
    dispatch_sync(v45, &block);
    if ((SHIBYTE(v64) & 0x80000000) == 0)
    {
LABEL_83:
      if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_89;
    }
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_84:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_90;
  }

LABEL_89:
  operator delete(v62.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_85:
    if (!v34)
    {
      goto LABEL_93;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (!v34)
  {
    goto LABEL_93;
  }

LABEL_91:
  if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

LABEL_93:
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
    {
      goto LABEL_95;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
    {
LABEL_95:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v46 = (*(*a1 + 56))(a1);
        if (*(a2 + 23) >= 0)
        {
          v47 = a2;
        }

        else
        {
          v47 = *a2;
        }

        _BBULog(15, 0, v46, "", "Failed writing %u bytes to %s - wrote only %u\n", v15, v47, v68);
      }
    }
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

LABEL_102:
  v22 = 35;
LABEL_103:
  close(v14);
  operator delete[](v60);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_104:
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  return v22;
}

void sub_1E535FB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  if (a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E535FC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_41()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t DaleController_ExceptionDump::create@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = operator new(0x38uLL);
  v5 = &unk_1F5F05AD0;
  *v4 = &unk_1F5F05AD0;
  v4[1] = 0;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[6] = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a1, *(a1 + 8));
    v5 = *v4;
  }

  else
  {
    v9 = *a1;
  }

  result = v5[2](v4, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = result;
    operator delete(v9.__r_.__value_.__l.__data_);
    result = v7;
  }

  if (result)
  {
    *a2 = v4;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(result);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init exception dump object\n", "DaleController_ExceptionDump", "create");
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void sub_1E535FE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  *v16 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleController_ExceptionDump::init(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v5 = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    if (atomic_load_explicit(v3, memory_order_acquire) == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  if (atomic_load_explicit(v3, memory_order_acquire) != -1)
  {
LABEL_5:
    v8 = &v5;
    v7 = &v8;
    std::__call_once(v3, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_ExceptionDump::init(std::string)::$_0 &&>>);
  }

LABEL_6:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1E535FF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DaleController_ExceptionDump::handshake(DaleController_ExceptionDump *this)
{
  v11 = 0;
  v10 = 0;
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: Sending oem mrdump command\n", "DaleController_ExceptionDump", "handshake");
  v3 = support::transport::airship::write(*(*(this + 3) + 8), "oem mrdump", 0xAuLL);
  v4 = v3;
  v5 = ACFULogging::getLogInstance(v3);
  if (v4)
  {
    ACFULogging::handleMessage(v5, 4, "%s::%s: Reading oem mrdump command response\n", "DaleController_ExceptionDump", "handshake");
    v6 = support::transport::airship::read(*(*(this + 3) + 8), &v10, 4uLL);
    if (v6)
    {
      v11 = 0;
      if (v10 == 1497451343)
      {
        return 1;
      }

      v9 = ACFULogging::getLogInstance(v6);
      ACFULogging::handleMessage(v9, 2, "%s::%s: unexpected response (%s) to oem memory dump\n");
    }

    else
    {
      v8 = ACFULogging::getLogInstance(v6);
      ACFULogging::handleMessage(v8, 2, "%s::%s: failed to read response to memory dump command\n");
    }
  }

  else
  {
    ACFULogging::handleMessage(v5, 2, "%s::%s: failed to send oem memory dump command\n");
  }

  return 0;
}

uint64_t DaleController_ExceptionDump::transfer(DaleController_ExceptionDump *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v59 = *MEMORY[0x1E69E9840];
  v2 = 0x7FFFFFFFFFFFFFF7;
  v3 = *(v1 + 55);
  if (v3 >= 0)
  {
    v4 = *(v1 + 55);
  }

  else
  {
    v4 = *(v1 + 40);
  }

  v5 = v4 + 1;
  if (v4 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v1;
  memset(__b, 170, sizeof(__b));
  if (v5 < 0x17)
  {
    memset(&block, 0, sizeof(block));
    p_block = &block;
    *(&block.__r_.__value_.__s + 23) = v4 + 1;
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

    p_block = operator new(v7);
    block.__r_.__value_.__l.__size_ = v4 + 1;
    block.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    block.__r_.__value_.__r.__words[0] = p_block;
  }

  if (v3 >= 0)
  {
    v9 = (v6 + 32);
  }

  else
  {
    v9 = *(v6 + 32);
  }

  memmove(p_block, v9, v4);
LABEL_15:
  *(&p_block->__r_.__value_.__l.__data_ + v4) = 47;
  size = SHIBYTE(block.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) - 11) < 0xC)
    {
      v11 = SHIBYTE(block.__r_.__value_.__r.__words[2]) + 12;
      v12 = &block;
      v13 = 22;
LABEL_21:
      v14 = 2 * v13;
      if (v11 > 2 * v13)
      {
        v14 = v11;
      }

      if ((v14 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v14 | 7) + 1;
      }

      if (v14 >= 0x17)
      {
        v2 = v15;
      }

      else
      {
        v2 = 23;
      }

      v16 = v13 == 22;
      goto LABEL_30;
    }

    v21 = &block;
LABEL_37:
    v22 = v21 + size;
    *v22 = *"coredump.zip";
    *(v22 + 2) = 1885960750;
    v23 = size + 12;
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      block.__r_.__value_.__l.__size_ = size + 12;
    }

    else
    {
      *(&block.__r_.__value_.__s + 23) = v23 & 0x7F;
    }

    v20 = v21 + v23;
    goto LABEL_41;
  }

  size = block.__r_.__value_.__l.__size_;
  v13 = (block.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v13 - block.__r_.__value_.__l.__size_ >= 0xC)
  {
    v21 = block.__r_.__value_.__r.__words[0];
    goto LABEL_37;
  }

  v11 = block.__r_.__value_.__l.__size_ + 12;
  if (0x7FFFFFFFFFFFFFF7 - (block.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < block.__r_.__value_.__l.__size_ + 12 - v13)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = block.__r_.__value_.__r.__words[0];
  if (v13 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v16 = 0;
LABEL_30:
  v17 = operator new(v2);
  v18 = v17;
  if (size)
  {
    memmove(v17, v12, size);
  }

  v19 = v18 + size;
  *v19 = *"coredump.zip";
  *(v19 + 8) = 1885960750;
  if (!v16)
  {
    operator delete(v12);
  }

  block.__r_.__value_.__l.__size_ = v11;
  block.__r_.__value_.__r.__words[2] = v2 | 0x8000000000000000;
  block.__r_.__value_.__r.__words[0] = v18;
  v20 = (v18 + v11);
LABEL_41:
  *v20 = 0;
  v24 = block.__r_.__value_.__r.__words[2];
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  __p = block.__r_.__value_.__r.__words[0];
  if ((block.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v50, block.__r_.__value_.__l.__data_, block.__r_.__value_.__l.__size_);
  }

  else
  {
    v50 = block;
  }

  support::fs::SyncFile::create(&v50, 52, 0x100000uLL, &v51);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v26 = tcgetattr;
  if (!v51)
  {
    LogInstance = ACFULogging::getLogInstance(v25);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to create coredump file\n");
    goto LABEL_75;
  }

  block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  block.__r_.__value_.__l.__size_ = 0x40000000;
  block.__r_.__value_.__r.__words[2] = ___ZN7support2fs8SyncFile4openEv_block_invoke;
  v55 = &__block_descriptor_tmp_2;
  v56 = v51;
  ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped(v51 + 1, &block);
  isOpen = support::fs::SyncFile::isOpen(v51);
  if (!isOpen)
  {
    v47 = ACFULogging::getLogInstance(isOpen);
    if (*(v51 + 63) >= 0)
    {
      v48 = v51 + 40;
    }

    else
    {
      v48 = *(v51 + 5);
    }

    ACFULogging::handleMessage(v47, 2, "%s::%s: failed to open file (%s)\n", "DaleController_ExceptionDump", "transfer", v48);
LABEL_75:
    v36 = 0;
    v37 = v51;
    if (!v51)
    {
      goto LABEL_65;
    }

    goto LABEL_56;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    v30 = support::transport::airship::read(*(*(v6 + 24) + 8), __b, 0xF000uLL);
    if ((v30 & 1) == 0)
    {
      v44 = ACFULogging::getLogInstance(v30);
      v26 = tcgetattr;
      ACFULogging::handleMessage(v44, 2, "%s::%s: failed to read coredump chunk\n");
      goto LABEL_75;
    }

    v31 = *__b;
    v32 = ACFULogging::getLogInstance(v30);
    v33 = ACFULogging::handleMessage(v32, 4, "%s::%s: Length of data contained within the chunk: %u bytes\n", "DaleController_ExceptionDump", "transfer", v31);
    if (!v31)
    {
      break;
    }

    if (v31 >= 0xEFFD)
    {
      v45 = ACFULogging::getLogInstance(v33);
      v26 = tcgetattr;
      ACFULogging::handleMessage(v45, 2, "%s::%s: Unexpected data length: %u\n", "DaleController_ExceptionDump", "transfer", v31);
      goto LABEL_75;
    }

    v28 += v31;
    if ((v28 - v29) > 0x500000)
    {
      v34 = ACFULogging::getLogInstance(v33);
      ACFULogging::handleMessage(v34, 0, "%s::%s: %llu bytes transferred\n", "DaleController_ExceptionDump", "transfer", v28);
      v29 = v28;
    }

    support::fs::SyncFile::write(v51, &__b[4], v31);
  }

  v35 = ACFULogging::getLogInstance(v33);
  v26 = tcgetattr;
  ACFULogging::handleMessage(v35, 0, "%s::%s: Total transferred bytes %llu\n", "DaleController_ExceptionDump", "transfer", v28);
  v36 = 1;
  v37 = v51;
  if (!v51)
  {
    goto LABEL_65;
  }

LABEL_56:
  if (support::fs::SyncFile::isOpen(v37))
  {
    v53 = v51;
    block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    block.__r_.__value_.__l.__size_ = *(v26 + 130);
    block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5closeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v55 = &__block_descriptor_tmp_17;
    v56 = (v51 + 8);
    v57 = &v53;
    v38 = *(v51 + 3);
    if (*(v51 + 4))
    {
      dispatch_async_and_wait(v38, &block);
    }

    else
    {
      dispatch_sync(v38, &block);
    }

    v39 = support::fs::SyncFile::isOpen(v51);
    if (v39)
    {
      v40 = ACFULogging::getLogInstance(v39);
      if (*(v51 + 63) >= 0)
      {
        v41 = v51 + 40;
      }

      else
      {
        v41 = *(v51 + 5);
      }

      ACFULogging::handleMessage(v40, 2, "%s::%s: failed to close file (%s)\n", "DaleController_ExceptionDump", "transfer", v41);
    }
  }

LABEL_65:
  v42 = v52;
  if (v52 && !atomic_fetch_add((v52 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
    if ((v24 & 0x8000000000000000) == 0)
    {
      return v36;
    }

    goto LABEL_68;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_68:
    operator delete(__p);
  }

  return v36;
}

void sub_1E5360698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DaleController_ExceptionDump::~DaleController_ExceptionDump(void **this)
{
  *this = &unk_1F5F05AD0;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this[3];
  this[3] = 0;
  if (v2)
  {
    v3 = v2[1];
    v2[1] = 0;
    if (v3)
    {
      support::transport::airship::~airship(v3);
      operator delete(v4);
    }

    operator delete(v2);
  }
}

{
  *this = &unk_1F5F05AD0;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this[3];
  this[3] = 0;
  if (v2)
  {
    v3 = v2[1];
    v2[1] = 0;
    if (v3)
    {
      support::transport::airship::~airship(v3);
      operator delete(v4);
    }

    operator delete(v2);
  }

  operator delete(this);
}

void ***std::__call_once_proxy[abi:ne200100]<std::tuple<DaleController_ExceptionDump::init(std::string)::$_0 &&>>(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  DaleTransport_BootLoader::create(3, &__p);
  v4 = __p;
  __p = 0;
  v5 = *(v2 + 24);
  *(v2 + 24) = v4;
  if (v5)
  {
    v6 = v5[1];
    v5[1] = 0;
    if (v6)
    {
      support::transport::airship::~airship(v6);
      operator delete(v7);
    }

    operator delete(v5);
    v8 = __p;
    __p = 0;
    if (v8)
    {
      v9 = v8[1];
      v8[1] = 0;
      if (v9)
      {
        support::transport::airship::~airship(v9);
        operator delete(v10);
      }

      operator delete(v8);
    }

    v4 = *(v2 + 24);
  }

  if (!v4)
  {
    LogInstance = ACFULogging::getLogInstance(v3);
    result = ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create transport\n");
LABEL_25:
    *(v2 + 8) = 0;
    return result;
  }

  v11 = *(v1 + 31);
  v12 = v11;
  if (v11 < 0)
  {
    v11 = v1[2];
  }

  if (!v11)
  {
    v18 = ACFULogging::getLogInstance(v3);
    result = ACFULogging::handleMessage(v18, 2, "%s::%s: invalid coredump save directory\n");
    goto LABEL_25;
  }

  v13 = (v1 + 1);
  result = (v2 + 32);
  if ((v2 + 32) != v1 + 1)
  {
    if (*(v2 + 55) < 0)
    {
      if (v12 >= 0)
      {
        v16 = v1 + 1;
      }

      else
      {
        v16 = *v13;
      }

      result = std::string::__assign_no_alias<false>(result, v16, v11);
    }

    else if (v12 < 0)
    {
      result = std::string::__assign_no_alias<true>(result, *v13, v1[2]);
    }

    else
    {
      v15 = *v13;
      *(v2 + 48) = v1[3];
      *result = v15;
    }
  }

  *(v2 + 8) = 1;
  return result;
}

uint64_t __cxx_global_var_init_42()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void eUICC::Firmware::CreateFromData(const void **a1@<X0>, const void **a2@<X1>, const void **a3@<X2>, void *a4@<X8>)
{
  v54 = 0xAAAAAAAAAAAAAAAALL;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0x48uLL);
  v9 = *a1;
  v53 = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  v10 = *a2;
  v52 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = &unk_1F5F05B08;
  *(v8 + 3) = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  *(v8 + 4) = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  *(v8 + 56) = 0u;
  *(v8 + 40) = 0u;
  v54 = v8;
  v11 = operator new(0x20uLL);
  v11[1] = 0;
  v12 = v11 + 1;
  *v11 = &unk_1F5F05B80;
  v11[2] = 0;
  v11[3] = v8;
  v55 = v11;
  v13 = *(v8 + 2);
  if (!v13)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v11;
    if (!atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_46;
    }

LABEL_14:
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v13->__shared_owners_ != -1)
  {
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  *(v8 + 1) = v8;
  *(v8 + 2) = v11;
  v14 = v11;
  std::__shared_weak_count::__release_weak(v13);
  v11 = v14;
  if (atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }

LABEL_46:
  v27 = v11;
  (*(*v11 + 16))();
  std::__shared_weak_count::__release_weak(v27);
  if (v10)
  {
LABEL_15:
    CFRelease(v10);
  }

LABEL_16:
  if (v9)
  {
    CFRelease(v9);
  }

  v15 = v54;
  v16 = *a3;
  v51 = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  cf[0] = 0;
  v17 = *MEMORY[0x1E695E480];
  error[0] = 0;
  error[1] = cf;
  v18 = CFPropertyListCreateWithData(v17, v16, 0, 0, error);
  v56 = v18;
  v19 = *error[1];
  if (error[0])
  {
    *error[1] = error[0];
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *error[1] = 0;
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  CFRelease(v19);
LABEL_25:
  if (!v18)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "Condition <<%s>> failed %s %s/%d\n", "plistRef", "", "", 51);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(error, cf[0], v23);
    if (SHIBYTE(error[2]) >= 0)
    {
      v24 = error;
    }

    else
    {
      v24 = error[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "%s\n", v24);
    goto LABEL_70;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v18))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "Condition <<%s>> failed %s %s/%d\n", "CFDictionaryGetTypeID() == CFGetTypeID(plistRef.get())", "", "", 52);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(error, v18, v25);
    if (SHIBYTE(error[2]) >= 0)
    {
      v26 = error;
    }

    else
    {
      v26 = error[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "info.plist is wrong type %s\n", v26);
    goto LABEL_70;
  }

  v21 = CFGetTypeID(v18);
  if (v21 != CFDictionaryGetTypeID())
  {
    v18 = 0;
    v22 = v15[5];
    v15[5] = 0;
    if (!v22)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  CFRetain(v18);
  v22 = v15[5];
  v15[5] = v18;
  if (v22)
  {
LABEL_49:
    CFRelease(v22);
    v18 = v15[5];
  }

LABEL_50:
  Value = CFDictionaryGetValue(v18, @"com.apple.EmbeddedSoftwareRestore.eUICC.firmwareMac");
  if (!Value)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "Condition <<%s>> failed %s %s/%d\n", "fwMacData", "", "", 58);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "Missing firmwareMac in info.plist -- firmware too old\n");
LABEL_72:
    v33 = 0;
    v34 = v56;
    if (!v56)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v29 = CFDataGetTypeID();
  if (v29 != CFGetTypeID(Value))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "Condition <<%s>> failed %s %s/%d\n", "CFDataGetTypeID() == CFGetTypeID(fwMacData)", "", "", 59);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    ctu::cf::show(error, Value, v35);
    if (SHIBYTE(error[2]) >= 0)
    {
      v36 = error;
    }

    else
    {
      v36 = error[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "fwMacData is wrong type %s\n", v36);
LABEL_70:
    if (SHIBYTE(error[2]) < 0)
    {
      operator delete(error[0]);
    }

    goto LABEL_72;
  }

  memset(error, 0, sizeof(error));
  ctu::cf::assign();
  v30 = error[0];
  v31 = *&error[1];
  v32 = v15[6];
  if (v32)
  {
    v15[7] = v32;
    v48 = v31;
    operator delete(v32);
    v31 = v48;
    v15[6] = 0;
    v15[7] = 0;
    v15[8] = 0;
  }

  v15[6] = v30;
  *(v15 + 7) = v31;
  if (v31 - v30 != 8)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "Condition <<%s>> failed %s %s/%d\n", "fwMac.size() == kFWMacSize", "", "", 62);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "firmwareMac is wrong size %zu\n", v15[7] - v15[6]);
    goto LABEL_72;
  }

  v33 = 1;
  v34 = v56;
  if (v56)
  {
LABEL_73:
    CFRelease(v34);
  }

LABEL_74:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v33)
  {
    v37 = v54;
    v38 = (*(*v54 + 8))(v54);
    v40 = v39;
    memset(error, 170, sizeof(error));
    (**v37)(error, v37);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v41 = SHIBYTE(error[2]);
    v42 = error[0];
    ctu::hex(cf, v38, v40);
    v43 = error;
    if (v41 < 0)
    {
      v43 = v42;
    }

    if (v50 >= 0)
    {
      v44 = cf;
    }

    else
    {
      v44 = cf[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "eUICC Firmware loaded! Version %s MAC %s\n", v43, v44);
    if (v50 < 0)
    {
      operator delete(cf[0]);
      v47 = v55;
      *a4 = v37;
      a4[1] = v47;
      if ((SHIBYTE(error[2]) & 0x80000000) == 0)
      {
        return;
      }
    }

    else
    {
      v45 = v55;
      *a4 = v37;
      a4[1] = v45;
      if ((SHIBYTE(error[2]) & 0x80000000) == 0)
      {
        return;
      }
    }

    operator delete(error[0]);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    v46 = v55;
    if (v55 && !atomic_fetch_add((v55 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }
  }
}

void sub_1E536127C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 65) < 0)
  {
    operator delete(*(v32 - 88));
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v32 - 96));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&__p);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a21);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

void *eUICC::Firmware::GetVersionString@<X0>(CFMutableDataRef *this@<X0>, void *a2@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[0] = v4;
  v15[1] = v4;
  v13 = v4;
  v14 = v4;
  *__len = v4;
  v11[0] = CFDataGetMutableBytePtr(this[3]);
  v11[1] = CFDataGetLength(this[3]);
  if (DERParseSequence(v11, 2u, &eUICC::DER::firmwareImageItemSpec, v15, 0x20uLL))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/Source/eUICCFirmware.cpp", 0x51u, "Assertion failure(( DR_Success == ret) && Invalid input Firmware.)", v11[0]);
    goto LABEL_14;
  }

  result = DERParseSequenceContent(v15, 3u, &eUICC::DER::firmwareImageHeaderItemSpec, __len, 0x30uLL);
  if (result)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/Source/eUICCFirmware.cpp", 0x54u, "Assertion failure(( DR_Success == ret) && Invalid input Firmware.)", v11[0]);
LABEL_14:
  }

  v6 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = __len[0];
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (__len[1] | 7) + 1;
    }

    v9 = operator new(v8);
    a2[1] = v6;
    a2[2] = v8 | 0x8000000000000000;
    *a2 = v9;
    a2 = v9;
  }

  else
  {
    *(a2 + 23) = __len[1];
    if (!v6)
    {
      *a2 = 0;
      return result;
    }
  }

  result = memmove(a2, v7, v6);
  *(a2 + v6) = 0;
  return result;
}

CFTypeRef eUICC::Firmware::GetInstallTicket@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 4);
  if (v3 && (v4 = CFGetTypeID(*(this + 4)), this = CFDataGetTypeID(), v4 == this))
  {
    *a2 = v3;
    return CFRetain(v3);
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

uint64_t eUICC::Firmware::GetFirmwareAPDUs@<X0>(CFMutableDataRef *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v3;
  v28 = v3;
  v26[0] = CFDataGetMutableBytePtr(this[3]);
  v26[1] = CFDataGetLength(this[3]);
  memset(v25, 170, sizeof(v25));
  if (DERParseSequence(v26, 2u, &eUICC::DER::firmwareImageItemSpec, &v27, 0x20uLL))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/Source/eUICCFirmware.cpp", 0x71u, "Assertion failure(( DR_Success == ret) && Invalid input Firmware.)");
    goto LABEL_29;
  }

  if (DERDecodeSeqInit(&v28, &v25[2], v25))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/Source/eUICCFirmware.cpp", 0x74u, "Assertion failure(( DR_Success == ret) && Invalid input Firmware.)");
LABEL_29:
  }

  v4 = 0;
  v20 = 0;
  v5 = 0;
  while (1)
  {
    memset(v24, 170, sizeof(v24));
    result = DERDecodeSeqNext(v25, v24);
    if (result)
    {
      break;
    }

    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v7;
    v23 = v7;
    v21 = v7;
    if (DERParseSequenceContent(&v24[1], 3u, &eUICC::DER::firmwareImageAPDUItemSpec, &v21, 0x30uLL))
    {
      a2[1] = v5;
      a2[2] = v20;
      *a2 = v4;
      v15 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v15, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/Source/eUICCFirmware.cpp", 0x82u, "Assertion failure(( DR_Success == ret) && Corrupt eUICC FW Data!)");
    }

    v8 = v21;
    v9 = v22;
    if (v5 < v20)
    {
      *v5 = v21;
      *(v5 + 1) = v9;
      v5 += 32;
    }

    else
    {
      v10 = v5 - v4;
      v11 = (v5 - v4) >> 5;
      v12 = v11 + 1;
      __src = v4;
      if ((v11 + 1) >> 59)
      {
        a2[1] = v5;
        a2[2] = v20;
        *a2 = v4;
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      if ((v20 - v4) >> 4 > v12)
      {
        v12 = (v20 - v4) >> 4;
      }

      if ((v20 - v4) >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        if (v13 >> 59)
        {
          a2[1] = v5;
          a2[2] = v20;
          *a2 = v4;
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v4 = operator new(32 * v13);
      }

      else
      {
        v4 = 0;
      }

      v14 = &v4[32 * v11];
      *v14 = v8;
      v20 = &v4[32 * v13];
      v14[1] = v9;
      v5 = (v14 + 2);
      memcpy(v4, __src, v10);
      if (__src)
      {
        operator delete(__src);
      }
    }
  }

  if (result != 1)
  {
    a2[1] = v5;
    a2[2] = v20;
    *a2 = v4;
    v16 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v16, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/Source/eUICCFirmware.cpp", 0x7Eu, "Assertion failure(( DR_Success == ret) && Corrupt eUICC FW Data!)");
  }

  a2[1] = v5;
  a2[2] = v20;
  *a2 = v4;
  return result;
}

void sub_1E53619B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12)
{
  a10[1] = v12;
  a10[2] = a12;
  *a10 = a11;
  if (a11)
  {
    a10[1] = a11;
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Firmware::BundleVersionsSupported(uint64_t a1, void ***a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  while (v5 != v4)
  {
    v6 = *(v5 - 1);
    v5 -= 3;
    if (v6 < 0)
    {
      operator delete(*v5);
    }
  }

  a2[1] = v4;
  v46[0] = 0xAAAAAAAAAAAAAAAALL;
  v46[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v46, *(a1 + 40));
  context = a2;
  ctu::cf::MakeCFString::MakeCFString(&__dst, "com.apple.EmbeddedSoftwareRestore.eUICC.bootloaderVersionsSupported");
  v7 = (*v46[0])(v46, __dst);
  v8 = v7;
  if (v7)
  {
    v9 = CFGetTypeID(v7);
    TypeID = CFArrayGetTypeID();
    if (v9 == TypeID)
    {
      v55.length = CFArrayGetCount(v8);
      v55.location = 0;
      CFArrayApplyFunction(v8, v55, ctu::cf::_Applier_InsertArrayDefault<std::string,std::back_insert_iterator<std::vector<std::string>>>, &context);
    }

    CFRelease(v8);
    MEMORY[0x1E6926590](&__dst);
    if (v9 == TypeID)
    {
      goto LABEL_53;
    }
  }

  else
  {
    MEMORY[0x1E6926590](&__dst);
  }

  Int = ctu::cf::map_adapter::getInt(v46, @"com.apple.EmbeddedSoftwareRestore.eUICC.bootloaderMajorVersion");
  v12 = ctu::cf::map_adapter::getInt(v46, @"com.apple.EmbeddedSoftwareRestore.eUICC.bootloaderMinorVersion");
  if ((Int & 0x80000000) == 0)
  {
    v13 = v12;
    if ((v12 & 0x80000000) == 0)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x40) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x40) != 0)
        {
LABEL_15:
          if (gBBULogVerbosity >= 1)
          {
            _BBULog(22, 1, "eUICCFirmwareParser", "", "[LEGACY] Bundle Version: %d.%d\n", Int, v13);
          }
        }
      }

      eUICC::Firmware::BootloaderVersion(&v53, Int, v13);
      v14 = a2[2];
      v15 = *a2;
      if (v14 == *a2)
      {
        if (v14)
        {
          v19 = a2[1];
          v20 = *a2;
          if (v19 != v14)
          {
            do
            {
              v21 = *(v19 - 1);
              v19 -= 3;
              if (v21 < 0)
              {
                operator delete(*v19);
              }
            }

            while (v19 != v14);
            v20 = *a2;
          }

          a2[1] = v15;
          operator delete(v20);
          *a2 = 0;
          a2[1] = 0;
          a2[2] = 0;
        }

        v24 = operator new(0x18uLL);
        *a2 = &v24->__r_.__value_.__l.__data_;
        a2[1] = &v24->__r_.__value_.__l.__data_;
        a2[2] = &v24[1].__r_.__value_.__l.__data_;
        p_data = &v24->__r_.__value_.__l.__data_;
        v52 = v24;
        __dst = a2;
        p_p_data = &p_data;
        v49 = &v52;
        v50 = 0xAAAAAAAAAAAAAA00;
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v24, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
          v24 = v52;
        }

        else
        {
          *v24 = v53;
        }

        v25 = &v24[1].__r_.__value_.__l.__data_;
      }

      else
      {
        v16 = a2[1];
        if (v16 == v15)
        {
          p_data = a2[1];
          v52 = v16;
          __dst = a2;
          p_p_data = &p_data;
          v49 = &v52;
          v50 = 0xAAAAAAAAAAAAAA00;
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v16, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
            v23 = v52;
          }

          else
          {
            v22 = *&v53.__r_.__value_.__l.__data_;
            v16->__r_.__value_.__r.__words[2] = v53.__r_.__value_.__r.__words[2];
            *&v16->__r_.__value_.__l.__data_ = v22;
            v23 = v16;
          }

          v25 = (&v16[1].__r_.__value_.__l.__data_ + v23 - v15);
        }

        else
        {
          if (v15 != &v53)
          {
            if (*(v15 + 23) < 0)
            {
              if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v26 = &v53;
              }

              else
              {
                v26 = v53.__r_.__value_.__r.__words[0];
              }

              if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v53.__r_.__value_.__l.__size_;
              }

              std::string::__assign_no_alias<false>(*a2, v26, size);
            }

            else if ((*(&v53.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(*a2, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
            }

            else
            {
              v17 = *&v53.__r_.__value_.__l.__data_;
              v15[2] = v53.__r_.__value_.__r.__words[2];
              *v15 = v17;
            }
          }

          v25 = v15 + 3;
          v43 = a2[1];
          while (v43 != v25)
          {
            v44 = *(v43 - 1);
            v43 -= 3;
            if (v44 < 0)
            {
              operator delete(*v43);
            }
          }
        }
      }

      a2[1] = v25;
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

LABEL_53:
      v18 = 1;
      goto LABEL_54;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 156);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCFirmwareParser", "", "Bunk legacy keys?\n");
  v18 = 0;
LABEL_54:
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x40) == 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x40) == 0)
    {
      goto LABEL_68;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v28 = *a2;
    v29 = a2[1];
    memset(&v53, 0, sizeof(v53));
    if (v28 != v29)
    {
      if (v28 != &v53)
      {
        if (*(v28 + 23) < 0)
        {
          std::string::__assign_no_alias<true>(&v53, *v28, v28[1]);
        }

        else
        {
          v30 = *v28;
          v53.__r_.__value_.__r.__words[2] = v28[2];
          *&v53.__r_.__value_.__l.__data_ = v30;
        }
      }

      if (", ")
      {
        for (i = v28 + 3; i != v29; i += 3)
        {
          HIBYTE(v49) = 2;
          memmove(&__dst, ", ", 2uLL);
          BYTE2(__dst) = 0;
          if (SHIBYTE(v49) >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if (SHIBYTE(v49) >= 0)
          {
            v42 = HIBYTE(v49);
          }

          else
          {
            v42 = p_p_data;
          }

          std::string::append(&v53, p_dst, v42);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(__dst);
          }

          v38 = *(i + 23);
          if (v38 >= 0)
          {
            v39 = i;
          }

          else
          {
            v39 = *i;
          }

          if (v38 >= 0)
          {
            v40 = *(i + 23);
          }

          else
          {
            v40 = i[1];
          }

          std::string::append(&v53, v39, v40);
        }
      }

      else
      {
        for (j = v28 + 3; j != v29; j += 3)
        {
          v34 = *(j + 23);
          if (v34 >= 0)
          {
            v35 = j;
          }

          else
          {
            v35 = *j;
          }

          if (v34 >= 0)
          {
            v36 = *(j + 23);
          }

          else
          {
            v36 = j[1];
          }

          std::string::append(&v53, v35, v36);
        }
      }
    }

    v31 = &v53;
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = v53.__r_.__value_.__r.__words[0];
    }

    _BBULog(22, 0, "eUICCFirmwareParser", "", "Supported Bootloader Versions success %d ret { %s }\n", v18, v31);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }
  }

LABEL_68:
  MEMORY[0x1E69265E0](v46);
  return v18;
}

void sub_1E5362190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&__p);
  *(v22 + 8) = v23;
  if (*(v24 - 73) < 0)
  {
    operator delete(*(v24 - 96));
  }

  MEMORY[0x1E69265E0](&a15);
  _Unwind_Resume(a1);
}

void eUICC::Firmware::BootloaderVersion(std::string *__return_ptr a1@<X8>, eUICC::Firmware *this@<X0>, int a3@<W1>)
{
  std::to_string(&v21, this);
  size = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v6 = &v21;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) == 22)
    {
      v7 = 22;
      v8 = 23;
LABEL_7:
      v10 = 2 * v7;
      if (v8 > 2 * v7)
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
        v9 = v11;
      }

      else
      {
        v9 = 23;
      }

      v12 = v7 == 22;
      goto LABEL_16;
    }

LABEL_22:
    v6->__r_.__value_.__s.__data_[size] = 46;
    v16 = size + 1;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      v21.__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&v21.__r_.__value_.__s + 23) = v16 & 0x7F;
    }

    v15 = v6 + v16;
    goto LABEL_26;
  }

  size = v21.__r_.__value_.__l.__size_;
  v8 = v21.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v7 = (v21.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 != v21.__r_.__value_.__l.__size_)
  {
    v6 = v21.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }

  v9 = 0x7FFFFFFFFFFFFFF7;
  if (v8 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v21.__r_.__value_.__r.__words[0];
  if (v7 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_7;
  }

  v12 = 0;
LABEL_16:
  v13 = operator new(v9);
  v14 = v13;
  if (v7)
  {
    memmove(v13, v6, v7);
  }

  *(v14 + v7) = 46;
  if (!v12)
  {
    operator delete(v6);
  }

  v21.__r_.__value_.__l.__size_ = v8;
  v21.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
  v21.__r_.__value_.__r.__words[0] = v14;
  v15 = (v14 + v8);
LABEL_26:
  *v15 = 0;
  v22 = v21;
  memset(&v21, 0, sizeof(v21));
  std::to_string(&__p, a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = __p.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&v22, p_p, v18);
  *a1 = *v19;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_34:
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_38:
      operator delete(v21.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(v22.__r_.__value_.__l.__data_);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_38;
  }
}

void sub_1E5362480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void eUICC::Firmware::~Firmware(eUICC::Firmware *this)
{
  eUICC::Firmware::~Firmware(this);

  operator delete(v1);
}

{
  *this = &unk_1F5F05B08;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void std::__shared_ptr_pointer<eUICC::Firmware *,std::shared_ptr<eUICC::Firmware>::__shared_ptr_default_delete<eUICC::Firmware,eUICC::Firmware>,std::allocator<eUICC::Firmware>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<eUICC::Firmware *,std::shared_ptr<eUICC::Firmware>::__shared_ptr_default_delete<eUICC::Firmware,eUICC::Firmware>,std::allocator<eUICC::Firmware>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<eUICC::Firmware *,std::shared_ptr<eUICC::Firmware>::__shared_ptr_default_delete<eUICC::Firmware,eUICC::Firmware>,std::allocator<eUICC::Firmware>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5394BADLL)
  {
    if (((v2 & 0x80000001E5394BADLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5394BADLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5394BADLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void ctu::cf::_Applier_InsertArrayDefault<std::string,std::back_insert_iterator<std::vector<std::string>>>(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  ctu::cf::assign();
  v3 = *a2;
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    *(v3 + 8) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v3, __p);
    if (SHIBYTE(v7) < 0)
    {
LABEL_8:
      operator delete(__p[0]);
    }
  }

  else
  {
    if (SHIBYTE(v7) < 0)
    {
      std::string::__init_copy_ctor_external(*(v3 + 8), __p[0], __p[1]);
    }

    else
    {
      v5 = *__p;
      *(v4 + 16) = v7;
      *v4 = v5;
    }

    *(v3 + 8) = v4 + 24;
    *(v3 + 8) = v4 + 24;
    if (SHIBYTE(v7) < 0)
    {
      goto LABEL_8;
    }
  }
}

void sub_1E5362790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<BOOL ()(void)>::~function(uint64_t a1)
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

void *BBUBootLogger::create@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.bb", "BBUBootLogger");
  ctu::SharedLoggable<BBUBootLogger,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v6, "BBUBootLogger", 17, v8);
  ctu::OsLogContext::~OsLogContext(v8);
  *(v6 + 32) = a1;
  v6[17] = a2;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 13) = 0u;
  v6[15] = 0;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  return std::shared_ptr<BBUBootLogger>::shared_ptr[abi:ne200100]<BBUBootLogger,std::shared_ptr<BBUBootLogger> ctu::SharedSynchronizable<BBUBootLogger>::make_shared_ptr<BBUBootLogger>(BBUBootLogger*)::{lambda(BBUBootLogger*)#1},0>(a3, v6);
}

void sub_1E53628FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void *ctu::SharedLoggable<BBUBootLogger,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, uint64_t a3, const ctu::OsLogContext *a4)
{
  object = 0;
  ctu::SharedSynchronizable<BBUBootLogger>::SharedSynchronizable(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x1E6926470](a1 + 4, &object);
  MEMORY[0x1E6926480](&object);
  return a1;
}

void ___ZN13BBUBootLogger18openTransport_syncEv_block_invoke(void *a1, int a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (!a1[5])
  {
    goto LABEL_11;
  }

  v8 = *(v5 + 32);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (a2 == 1)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v13 = 0;
    v10 = "#D status error";
    v11 = &v13;
    goto LABEL_14;
  }

  if (a2)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v12 = 0;
    v10 = "#D status unknown";
    v11 = &v12;
LABEL_14:
    _os_log_debug_impl(&dword_1E5234000, v8, OS_LOG_TYPE_DEBUG, v10, v11, 2u);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    return;
  }

  if (v9)
  {
    v14 = 0;
    v10 = "#D status not ready";
    v11 = &v14;
    goto LABEL_14;
  }

LABEL_11:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_15:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }
}

uint64_t __copy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13BBUBootLoggerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13BBUBootLoggerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN13BBUBootLogger18openTransport_syncEv_block_invoke_2(void *a1, int a2, char *a3, int a4)
{
  *&v26[7] = *MEMORY[0x1E69E9840];
  v6 = a1[4];
  v7 = a1[6];
  if (v7)
  {
    v10 = std::__shared_weak_count::lock(v7);
    if (v10)
    {
      v11 = a1[5];
      if (v11)
      {
        if (a3 && !a2 && a4)
        {
          if (a4 >= 1024)
          {
            v12 = 1024;
          }

          else
          {
            v12 = a4;
          }

          v13 = *(v11 + 128);
          if (v13 == 1)
          {
            v19 = *(v11 + 136);
            if (v19)
            {
              BBUFeedback::handleComment(v19, "BBUBootLogger: %.*s", v12, a3);
            }

            else
            {
              v21 = *(v6 + 32);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 68157954;
                v24 = v12;
                v25 = 2080;
                *v26 = a3;
                _os_log_error_impl(&dword_1E5234000, v21, OS_LOG_TYPE_ERROR, "feedback object is null, logging to oslog instead:\n%.*s", buf, 0x12u);
              }
            }
          }

          else if (v13 == 2)
          {
            v14 = *(v6 + 32);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              v24 = v12;
              v25 = 2080;
              *v26 = a3;
              _os_log_impl(&dword_1E5234000, v14, OS_LOG_TYPE_DEFAULT, "#I %*.s", buf, 0x12u);
            }
          }

          goto LABEL_35;
        }

        v15 = *(v11 + 128);
        if (v15 == 1)
        {
          if (*(v11 + 136))
          {
            v20 = "invalid";
            if (a3)
            {
              v20 = "valid";
            }

            BBUFeedback::handleComment(*(v6 + 136), "BBUBootLogger: readCompletionBlock: status: 0x%x, size: %u, buffer: %s", a2, a4, v20);
          }

          else
          {
            v16 = *(v6 + 32);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v22 = "invalid";
              *buf = 67109634;
              v24 = a2;
              if (a3)
              {
                v22 = "valid";
              }

              v25 = 1024;
              *v26 = a4;
              v26[2] = 2080;
              *&v26[3] = v22;
              v18 = "feedback object is null, logging to oslog instead:\nreadCompletionBlock: status: 0x%x, size: %u, buffer: %s";
LABEL_42:
              _os_log_error_impl(&dword_1E5234000, v16, OS_LOG_TYPE_ERROR, v18, buf, 0x18u);
              if (!a3)
              {
LABEL_36:
                if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v10->__on_zero_shared)(v10);
                  std::__shared_weak_count::__release_weak(v10);
                }

                return;
              }

LABEL_35:
              free(a3);
              goto LABEL_36;
            }
          }
        }

        else if (v15 == 2)
        {
          v16 = *(v6 + 32);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = "invalid";
            *buf = 67109634;
            v24 = a2;
            if (a3)
            {
              v17 = "valid";
            }

            v25 = 1024;
            *v26 = a4;
            v26[2] = 2080;
            *&v26[3] = v17;
            v18 = "readCompletionBlock: status: 0x%x, size: %u, buffer: %s";
            goto LABEL_42;
          }
        }

        if (!a3)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (a3)
  {
    free(a3);
  }

  if (v10)
  {
    goto LABEL_36;
  }
}

void sub_1E5362E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5362E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t BBUBootLogger::openTransport(BBUBootLogger *this)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN13BBUBootLogger13openTransportEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_12;
  v4[4] = this;
  v5 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableI13BBUBootLoggerE20execute_wrapped_syncIU13block_pointerFbvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  v6[3] = &__block_descriptor_tmp_21_2;
  v6[4] = this;
  v6[5] = &v5;
  v7 = v6;
  v2 = this + 16;
  v1 = *(this + 2);
  if (*(v2 + 1))
  {
    v14 = -86;
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0;
    v11 = &__block_descriptor_tmp_24;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v14 = -86;
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0;
    v11 = &__block_descriptor_tmp_23_0;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v1, &block);
  }

  return v14 & 1;
}

uint64_t ___ZN13BBUBootLogger13openTransportEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (!v2 || (v3 = *v1, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v6;
  v17 = v6;
  v14 = v6;
  v15 = v6;
  v13 = v6;
  TelephonyBasebandPCITransportInitParameters();
  *(&v13 + 1) = v1[2];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1174405120;
  v11[2] = ___ZN13BBUBootLogger18openTransport_syncEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_21;
  v11[4] = v1;
  v11[5] = v3;
  v12 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&v14 = v11;
  LODWORD(v13) = 20;
  *(&v15 + 4) = 0x40000000008;
  DWORD2(v14) = 5000;
  LODWORD(v15) = v15 | 4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___ZN13BBUBootLogger18openTransport_syncEv_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_10_0;
  v9[4] = v1;
  v9[5] = v3;
  v10 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&v16 = v9;
  v7 = TelephonyBasebandPCITransportCreate();
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v5);
  return v7;
}

void sub_1E53631E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    v24 = a22;
    if (!a22)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v22);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v24 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v24);
  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<BBUBootLogger>::shared_ptr[abi:ne200100]<BBUBootLogger,std::shared_ptr<BBUBootLogger> ctu::SharedSynchronizable<BBUBootLogger>::make_shared_ptr<BBUBootLogger>(BBUBootLogger*)::{lambda(BBUBootLogger*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_1F5F05C40;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *a2 = a2;
  a2[1] = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_1E5363358(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<BBUBootLogger> ctu::SharedSynchronizable<BBUBootLogger>::make_shared_ptr<BBUBootLogger>(BBUBootLogger*)::{lambda(BBUBootLogger*)#1}::operator() const(BBUBootLogger*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BBUBootLogger *,std::shared_ptr<BBUBootLogger> ctu::SharedSynchronizable<BBUBootLogger>::make_shared_ptr<BBUBootLogger>(BBUBootLogger*)::{lambda(BBUBootLogger *)#1},std::allocator<BBUBootLogger>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUBootLogger *,std::shared_ptr<BBUBootLogger> ctu::SharedSynchronizable<BBUBootLogger>::make_shared_ptr<BBUBootLogger>(BBUBootLogger*)::{lambda(BBUBootLogger *)#1},std::allocator<BBUBootLogger>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI13BBUBootLoggerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI13BBUBootLoggerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI13BBUBootLoggerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI13BBUBootLoggerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<BBUBootLogger> ctu::SharedSynchronizable<BBUBootLogger>::make_shared_ptr<BBUBootLogger>(BBUBootLogger*)::{lambda(BBUBootLogger*)#1}::operator() const(BBUBootLogger*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 96);
    if (v2 && v2(a1 + 40))
    {
      TelephonyUtilTransportFree();
      *(a1 + 120) = 0;
      *(a1 + 104) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 40) = 0u;
    }

    MEMORY[0x1E6926480](a1 + 32);
    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(a1);
  }
}

void *ctu::SharedSynchronizable<BBUBootLogger>::SharedSynchronizable(void *a1, const char *a2, dispatch_qos_class_t a3, dispatch_object_t *a4)
{
  v8 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v10 = dispatch_queue_create_with_target_V2(a2, initially_inactive, v8);
  dispatch_set_qos_class_floor(v10, a3, 0);
  dispatch_activate(v10);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *a4;
  a1[3] = *a4;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  return a1;
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t compareVersionString(std::basic_regex<char> *a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66 = v7;
  v67 = v7;
  *&v64[0].__locale_ = v7;
  v65 = v7;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v64, a1, 0);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59 = 0xAAAAAAAAAAAAAA00;
  v56[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
  v62 = v8;
  v57 = 0;
  v58 = 0;
  v60 = 0;
  v61 = 0;
  LOBYTE(v62) = 0;
  BYTE8(v62) = 0;
  v63 = 0;
  memset(v56, 0, 41);
  v50 = 0xAAAAAAAAAAAAAAAALL;
  v52 = 0xAAAAAAAAAAAAAA00;
  v54 = v8;
  v51 = 0;
  v53 = 0uLL;
  LOBYTE(v54) = 0;
  BYTE8(v54) = 0;
  v55 = 0;
  *__p = 0u;
  memset(v49, 0, sizeof(v49));
  v72 = 0xAAAAAAAAAAAAAA00;
  *(&v69[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v75 = v8;
  v70 = 0;
  v71 = 0;
  v73 = 0;
  v74 = 0;
  LOBYTE(v75) = 0;
  BYTE8(v75) = 0;
  v76 = 0;
  __dst = 0u;
  v69[0] = 0u;
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) == 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  *(v69 + 9) = 0uLL;
  v11 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v64, v10, (v10 + v9), &__dst, 0);
  v12 = *(a2 + 23);
  if ((v12 & 0x80u) == 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v56, v13, (v13 + v12), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (!v11)
  {
    goto LABEL_70;
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72 = 0xAAAAAAAAAAAAAA00;
  *(&v69[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v75 = v14;
  v70 = 0;
  v71 = 0;
  v73 = 0;
  v74 = 0;
  LOBYTE(v75) = 0;
  BYTE8(v75) = 0;
  v76 = 0;
  __dst = 0u;
  v69[0] = 0u;
  v15 = *(a3 + 23);
  if ((v15 & 0x80u) == 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a3 + 8);
  }

  *(v69 + 9) = 0uLL;
  v17 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v64, v16, (v16 + v15), &__dst, 0);
  v18 = *(a3 + 23);
  if ((v18 & 0x80u) == 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a3 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(__p, v19, (v19 + v18), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (v17)
  {
    if (a4)
    {
      v20 = 16;
    }

    else
    {
      v20 = 10;
    }

    begin = v56[0].__begin_;
    if (0xAAAAAAAAAAAAAAABLL * ((v56[0].__end_ - v56[0].__begin_) >> 3) >= 2)
    {
      v22 = 2;
      v23 = 1;
      while (1)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3) <= v23)
        {
          goto LABEL_72;
        }

        v24 = &begin[v23];
        if (v24->matched)
        {
          break;
        }

        __dst = 0uLL;
        *&v69[0] = 0;
LABEL_40:
        v29 = std::stoi(&__dst, 0, v20);
        if (SBYTE7(v69[0]) < 0)
        {
          operator delete(__dst);
        }

        v30 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
        v31 = __p[0] + 24 * v23;
        v32 = (v31 + 16);
        if (v30 <= v23)
        {
          v32 = &v50;
        }

        if (*v32 == 1)
        {
          v33 = v30 > v23;
          v34 = &v49[8];
          if (v33)
          {
            v34 = (__p[0] + 24 * v23);
          }

          v35 = *v34;
          v36 = (v31 + 8);
          if (!v33)
          {
            v36 = &v49[16];
          }

          v37 = *v36;
          v38 = *v36 - v35;
          if (v38 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v38 > 0x16)
          {
            if ((v38 | 7) == 0x17)
            {
              v43 = 25;
            }

            else
            {
              v43 = (v38 | 7) + 1;
            }

            p_dst = operator new(v43);
            *(&__dst + 1) = v38;
            *&v69[0] = v43 | 0x8000000000000000;
            *&__dst = p_dst;
            if (v37 != v35)
            {
LABEL_52:
              memmove(p_dst, v35, v38);
            }
          }

          else
          {
            BYTE7(v69[0]) = *v36 - v35;
            p_dst = &__dst;
            if (v37 != v35)
            {
              goto LABEL_52;
            }
          }

          *(p_dst + v38) = 0;
          goto LABEL_55;
        }

        __dst = 0uLL;
        *&v69[0] = 0;
LABEL_55:
        v40 = std::stoi(&__dst, 0, v20);
        if (SBYTE7(v69[0]) < 0)
        {
          v41 = v40;
          operator delete(__dst);
          v40 = v41;
        }

        if (v29 != v40)
        {
          if (v29 > v40)
          {
            v44 = 1;
          }

          else
          {
            v44 = 0xFFFFFFFFLL;
          }

          v45 = __p[0];
          if (__p[0])
          {
            goto LABEL_73;
          }

          goto LABEL_74;
        }

        v23 = v22;
        begin = v56[0].__begin_;
        ++v22;
        if (0xAAAAAAAAAAAAAAABLL * ((v56[0].__end_ - v56[0].__begin_) >> 3) <= v23)
        {
          goto LABEL_72;
        }
      }

      i = v24->first.__i_;
      v26 = v24->second.__i_;
      v27 = v26 - v24->first.__i_;
      if (v27 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v27 > 0x16)
      {
        if ((v27 | 7) == 0x17)
        {
          v42 = 25;
        }

        else
        {
          v42 = (v27 | 7) + 1;
        }

        v28 = operator new(v42);
        *(&__dst + 1) = v27;
        *&v69[0] = v42 | 0x8000000000000000;
        *&__dst = v28;
        if (v26 == i)
        {
          goto LABEL_38;
        }
      }

      else
      {
        BYTE7(v69[0]) = v26 - LOBYTE(v24->first.__i_);
        v28 = &__dst;
        if (v26 == i)
        {
LABEL_38:
          *(v28 + v27) = 0;
          goto LABEL_40;
        }
      }

      memmove(v28, i, v27);
      goto LABEL_38;
    }

LABEL_72:
    v44 = 0;
    v45 = __p[0];
    if (__p[0])
    {
      goto LABEL_73;
    }
  }

  else
  {
LABEL_70:
    v44 = 255;
    v45 = __p[0];
    if (__p[0])
    {
LABEL_73:
      __p[1] = v45;
      operator delete(v45);
    }
  }

LABEL_74:
  if (v56[0].__begin_)
  {
    v56[0].__end_ = v56[0].__begin_;
    operator delete(v56[0].__begin_);
  }

  v46 = v67;
  if (v67 && !atomic_fetch_add((v67 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  std::locale::~locale(v64);
  return v44;
}

void sub_1E5363B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::locale a39)
{
  if (__p)
  {
    operator delete(__p);
    v40 = a25;
    if (!a25)
    {
LABEL_3:
      std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a39);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v40 = a25;
    if (!a25)
    {
      goto LABEL_3;
    }
  }

  operator delete(v40);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a39);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR4PersonalizationParameters::getFusingState(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = (*(*v3 + 24))(v3);
    *a2 = capabilities::fusing::inferFusingStateFromCertID(v4);
    return 0;
  }

  else
  {
    *a2 = 0;
    return 3;
  }
}

uint64_t BBUEUR4PersonalizationParameters::setPublicKeyHash(uint64_t a1, const __CFData *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 40) = a2;
  if (a2)
  {
    v5 = (*(*a2 + 16))(a2);
    a2 = BBUEURPersonalizationParameters::EURCertID::createFromPublicKeyHashData(v5, v6);
  }

  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 24) = a2;
  return result;
}

void BBUEUR4PersonalizationParameters::~BBUEUR4PersonalizationParameters(BBUEUR4PersonalizationParameters *this)
{
  BBUPersonalizationParameters::~BBUPersonalizationParameters(this);

  operator delete(v1);
}

uint64_t KernelPCIRestoreTrace::KernelPCIRestoreTrace(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  v11.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v11.__r_.__value_.__r.__words[1] = xmmword_1E538EAF0;
  strcpy(v11.__r_.__value_.__l.__data_, "com.apple.telephony.basebandservices.support");
  *(&__p.__r_.__value_.__s + 23) = 16;
  strcpy(&__p, "pci.kernel.trace");
  v5 = support::log::client::client((a1 + 56), &v11, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
LABEL_5:
  *(a1 + 136) = 0x4000;
  v6 = capabilities::ipc::defaultPCIBinaryTraceBufferCount(v5);
  v7 = *(a2 + 16);
  *(a1 + 160) = 0;
  *(a1 + 140) = v6;
  *(a1 + 144) = v7;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  v8 = *(a2 + 48);
  if (v8)
  {
    if (v8 == a2 + 24)
    {
      *(a1 + 224) = a1 + 200;
      (*(**(a2 + 48) + 24))(*(a2 + 48));
      return a1;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  *(a1 + 224) = v8;
  return a1;
}

void sub_1E5363ED4(_Unwind_Exception *a1)
{
  std::__tree<std::shared_ptr<PipeContext>>::destroy(*v4);
  std::__tree<char *>::destroy(*v3);
  support::log::client::~client((v2 + 16));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2);
  ctu::SharedSynchronizable<CircularFileLogWriter>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void sub_1E5363F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v21);
      ctu::SharedSynchronizable<CircularFileLogWriter>::~SharedSynchronizable(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v21);
  ctu::SharedSynchronizable<CircularFileLogWriter>::~SharedSynchronizable(v20);
  _Unwind_Resume(a1);
}

void sub_1E5363F6C(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2);
  ctu::SharedSynchronizable<CircularFileLogWriter>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void KernelPCIRestoreTrace::~KernelPCIRestoreTrace(KernelPCIRestoreTrace *this)
{
  v2 = **(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E5234000, v2, OS_LOG_TYPE_INFO, "KernelPCIRestoreTrace obj is gone", v9, 2u);
  }

  v3 = *(this + 28);
  if (v3 == (this + 200))
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  std::__tree<std::shared_ptr<PipeContext>>::destroy(*(this + 23));
  std::__tree<char *>::destroy(*(this + 20));
  *(this + 7) = &unk_1F5EFEF10;
  v4 = *(this + 15);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 6);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void KernelPCIRestoreTrace::start(uint64_t *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0>(KernelPCIRestoreTrace::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void KernelPCIRestoreTrace::stop(uint64_t *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0>(KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void KernelPCIRestoreTrace::deregisterWithKernel_sync(KernelPCIRestoreTrace *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = **(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "deregisterWithKernel_sync";
    _os_log_debug_impl(&dword_1E5234000, v2, OS_LOG_TYPE_DEBUG, "%s", &v7, 0xCu);
    v2 = **(this + 13);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
LABEL_3:
      v4 = (this + 40);
      v3 = *(this + 5);
      if (!v3)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    goto LABEL_3;
  }

  LOWORD(v7) = 0;
  _os_log_impl(&dword_1E5234000, v2, OS_LOG_TYPE_INFO, "stopping kernel trace interface", &v7, 2u);
  v4 = (this + 40);
  v3 = *(this + 5);
  if (!v3)
  {
    return;
  }

LABEL_7:
  (*(*v3 + 32))(v3);
  v5 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *(this + 6);
    *v4 = 0;
    v4[1] = 0;
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
  }
}

void *KernelPCIRestoreTrace::createBuffContext_sync(uint64_t *a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = *a1[13];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v27 = 136315138;
    v28 = "createBuffContext_sync";
    _os_log_debug_impl(&dword_1E5234000, v8, OS_LOG_TYPE_DEBUG, "%s", &v27, 0xCu);
  }

  v9 = operator new(0x38uLL);
  v10 = a1[1];
  if (!v10 || (v11 = *a1, (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  v15 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *a4;
  if (v16)
  {
    dispatch_retain(v16);
    dispatch_group_enter(v16);
  }

  *v9 = 0;
  v9[1] = a2;
  v9[2] = v11;
  v9[3] = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9[4] = v15;
  if (!v14)
  {
    v9[5] = 0;
LABEL_33:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = std::__shared_weak_count::lock(v14);
  v9[5] = v17;
  if (!v17)
  {
    goto LABEL_33;
  }

  v9[6] = v16;
  if (v16)
  {
    dispatch_retain(v16);
    v18 = v9[6];
    if (v18)
    {
      dispatch_group_enter(v18);
    }
  }

  v19 = v9[1];
  if (v19)
  {
    *v9 = malloc(v19);
  }

  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  std::__shared_weak_count::__release_weak(v14);
  std::__shared_weak_count::__release_weak(v13);
  v21 = a1 + 20;
  v20 = a1[20];
  if (v20)
  {
    while (1)
    {
      while (1)
      {
        v22 = v20;
        v23 = *(v20 + 32);
        if (v9 >= v23)
        {
          break;
        }

        v20 = *v22;
        v21 = v22;
        if (!*v22)
        {
          goto LABEL_27;
        }
      }

      if (v23 >= v9)
      {
        break;
      }

      v20 = v22[1];
      if (!v20)
      {
        v21 = v22 + 1;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v22 = a1 + 20;
LABEL_27:
    v24 = operator new(0x28uLL);
    v24[4] = v9;
    *v24 = 0;
    v24[1] = 0;
    v24[2] = v22;
    *v21 = v24;
    v25 = *a1[19];
    if (v25)
    {
      a1[19] = v25;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[20], v24);
    ++a1[21];
  }

  return v9;
}

void sub_1E53647D8(_Unwind_Exception *a1)
{
  v6 = v1[3];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
    if (!v4)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  dispatch_group_leave(v4);
  dispatch_release(v4);
  if (!v3)
  {
LABEL_5:
    std::__shared_weak_count::__release_weak(v2);
    operator delete(v1);
    _Unwind_Resume(a1);
  }

LABEL_4:
  std::__shared_weak_count::__release_weak(v3);
  goto LABEL_5;
}

void readLogsCompletionCB(void *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v4 = a1[3];
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = a1[2];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = *v9[13];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315138;
    v19 = "readLogsCompletion";
    _os_log_debug_impl(&dword_1E5234000, v10, OS_LOG_TYPE_DEBUG, "%s", &v18, 0xCu);
    v11 = v9[1];
    if (!v11)
    {
LABEL_16:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v11 = v9[1];
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  v12 = *v9;
  v13 = std::__shared_weak_count::lock(v11);
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13;
  v15 = operator new(0x20uLL);
  *v15 = v9;
  v15[1] = a1;
  v15[2] = a3;
  *(v15 + 6) = a2;
  v16 = v9[2];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0>(KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_9:
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return;
  }

LABEL_12:
  (v8->__on_zero_shared)(v8);

  std::__shared_weak_count::__release_weak(v8);
}

void sub_1E5364A70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void KernelPCIRestoreTrace::deleteBuffContext_sync(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = **(a1 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315138;
    v20 = "deleteBuffContext_sync";
    _os_log_debug_impl(&dword_1E5234000, v4, OS_LOG_TYPE_DEBUG, "%s", &v19, 0xCu);
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    v6 = (a1 + 160);
    v7 = *(a1 + 160);
    do
    {
      v8 = *(v7 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v6 = v7;
      }

      v7 = *(v7 + 8 * v10);
    }

    while (v7);
    if (v6 != (a1 + 160) && v6[4] <= a2)
    {
      v11 = v6[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        v13 = v6;
        do
        {
          v12 = v13[2];
          v14 = *v12 == v13;
          v13 = v12;
        }

        while (!v14);
      }

      if (*(a1 + 152) == v6)
      {
        *(a1 + 152) = v12;
      }

      --*(a1 + 168);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v6);
      operator delete(v6);
      if (*a2)
      {
        free(*a2);
      }

      v15 = *(a2 + 48);
      if (v15)
      {
        dispatch_group_leave(v15);
        v16 = *(a2 + 48);
        if (v16)
        {
          dispatch_release(v16);
        }
      }

      v17 = *(a2 + 40);
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      v18 = *(a2 + 24);
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      operator delete(a2);
    }
  }
}

void flushLogsCompletionCB(void *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v4 = a1[3];
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = a1[2];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = *v9[13];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315138;
    v19 = "flushLogsCompletion";
    _os_log_debug_impl(&dword_1E5234000, v10, OS_LOG_TYPE_DEBUG, "%s", &v18, 0xCu);
    v11 = v9[1];
    if (!v11)
    {
LABEL_16:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v11 = v9[1];
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  v12 = *v9;
  v13 = std::__shared_weak_count::lock(v11);
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13;
  v15 = operator new(0x20uLL);
  *v15 = v9;
  v15[1] = a1;
  *(v15 + 4) = a2;
  v15[3] = a3;
  v16 = v9[2];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0>(KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_9:
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return;
  }

LABEL_12:
  (v8->__on_zero_shared)(v8);

  std::__shared_weak_count::__release_weak(v8);
}

void sub_1E5364E8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN21KernelPCIRestoreTrace18dumpPCIEState_syncEN8dispatch13group_sessionE_block_invoke(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[6])
      {
        v6 = **(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1E5234000, v6, OS_LOG_TYPE_INFO, "snapshot completion received (flush completion with null-log)", buf, 2u);
        }

        if (*(v3 + 32) == 1)
        {
          v7 = *(v3 + 176);
          v8 = (v3 + 184);
          if (v7 != v8)
          {
            while (1)
            {
              v9 = v7[4];
              v10 = v7[5];
              if (v10)
              {
                atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v11 = *(v9 + 64);
              if (!v11)
              {
                goto LABEL_15;
              }

              v16[0] = MEMORY[0x1E69E9820];
              v16[1] = 0x40000000;
              v16[2] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
              v16[3] = &__block_descriptor_tmp;
              v16[4] = v11;
              v17 = v16;
              *buf = MEMORY[0x1E69E9820];
              v19 = 0x40000000;
              v20 = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
              v21 = &__block_descriptor_tmp_21;
              v22 = v11 + 8;
              v23 = &v17;
              v12 = *(v11 + 24);
              if (*(v11 + 32))
              {
                break;
              }

              dispatch_sync(v12, buf);
              if (v10)
              {
LABEL_16:
                if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v10->__on_zero_shared)(v10);
                  std::__shared_weak_count::__release_weak(v10);
                }
              }

LABEL_19:
              v13 = v7[1];
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
                  v14 = v7[2];
                  v15 = *v14 == v7;
                  v7 = v14;
                }

                while (!v15);
              }

              v7 = v14;
              if (v14 == v8)
              {
                goto LABEL_25;
              }
            }

            dispatch_async_and_wait(v12, buf);
LABEL_15:
            if (v10)
            {
              goto LABEL_16;
            }

            goto LABEL_19;
          }
        }
      }

LABEL_25:
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c46_ZTSNSt3__18weak_ptrI21KernelPCIRestoreTraceEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c46_ZTSNSt3__18weak_ptrI21KernelPCIRestoreTraceEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void std::__shared_ptr_emplace<std::string>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F05D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<std::string>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  if (a1)
  {
    v1 = ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(a1);

    operator delete(v1);
  }
}

void *ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(void *a1)
{
  v2 = a1[8];
  if (v2 && a1[3])
  {
    v3 = a1[4];
    v12 = a1[3];
    v13 = v3;
    (*(*v2 + 48))(v2, &v13, &v12);
  }

  v4 = a1[4];
  if (v4)
  {
    os_release(v4);
  }

  v5 = a1 + 5;
  a1[4] = 0;
  v6 = a1[8];
  a1[8] = 0;
  if (v6 == a1 + 5)
  {
    (*(*v6 + 32))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
LABEL_9:
      if (v7)
      {
        (*(*v7 + 40))(v7);
        v8 = a1[2];
        if (!v8)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_14:
      v8 = a1[2];
      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_13:
    (*(*v7 + 32))(v7);
    goto LABEL_14;
  }

  if (v6)
  {
    (*(*v6 + 40))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  a1[3] = 0;
  v8 = a1[2];
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_15:
  dispatch_group_leave(v8);
  v9 = a1[2];
  if (v9)
  {
    dispatch_release(v9);
  }

LABEL_17:
  v10 = a1[1];
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return a1;
}

void ctu::os::signpost_interval::~signpost_interval(ctu::os::signpost_interval *this)
{
  v2 = *(this + 5);
  if (v2 && *this)
  {
    v3 = *(this + 1);
    v8 = *this;
    v9 = v3;
    (*(*v2 + 48))(v2, &v9, &v8);
  }

  v4 = *(this + 1);
  if (v4)
  {
    os_release(v4);
  }

  v5 = this + 16;
  *(this + 1) = 0;
  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6 == (this + 16))
  {
    (*(*v6 + 32))(v6);
    v7 = *(this + 5);
    *this = 0;
    if (v7 != v5)
    {
      goto LABEL_9;
    }

LABEL_13:
    (*(*v7 + 32))(v7);
    return;
  }

  if (!v6)
  {
    *this = 0;
    return;
  }

  (*(*v6 + 40))(v6);
  v7 = *(this + 5);
  *this = 0;
  if (v7 == v5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }
}

void std::__tree<std::shared_ptr<PipeContext>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<PipeContext>>::destroy(*a1);
    std::__tree<std::shared_ptr<PipeContext>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0>(KernelPCIRestoreTrace::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v78 = *a1;
  v2 = **a1;
  v3 = **(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "operator()";
    _os_log_debug_impl(&dword_1E5234000, v3, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
    if (*(v2 + 32) == 1)
    {
LABEL_3:
      v4 = **(v2 + 104);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1E5234000, v4, OS_LOG_TYPE_INFO, "pci kernel trace started already", &buf, 2u);
      }

      goto LABEL_153;
    }
  }

  else if (*(v2 + 32) == 1)
  {
    goto LABEL_3;
  }

  *(v2 + 32) = 1;
  v5 = **(v2 + 104);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "registerWithKernel_sync";
    _os_log_debug_impl(&dword_1E5234000, v5, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  pci::transport::kernelTrace::create(&buf, v6);
  v7 = buf;
  if (buf)
  {
    v8 = operator new(0x20uLL);
    *v8 = &unk_1F5F05D78;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = v7;
    *&buf = 0;
    v9 = *(v2 + 48);
    *(v2 + 40) = v7;
    *(v2 + 48) = v8;
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *&buf = 0;
    v9 = *(v2 + 48);
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_14:
  v10 = buf;
  *&buf = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(v2 + 40);
  if (!v11)
  {
    v14 = **(v2 + 104);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_150;
    }

    LOWORD(buf) = 0;
    v21 = "error: failed to create kernel trace obj";
LABEL_35:
    v22 = v14;
    v23 = 2;
LABEL_36:
    _os_log_error_impl(&dword_1E5234000, v22, OS_LOG_TYPE_ERROR, v21, &buf, v23);
    goto LABEL_150;
  }

  if (!*(v2 + 16))
  {
    v14 = **(v2 + 104);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_150;
    }

    LOWORD(buf) = 0;
    v21 = "error: empty queue";
    goto LABEL_35;
  }

  v12 = (*(*v11 + 24))(v11);
  v13 = *(v2 + 104);
  v14 = *v13;
  if ((v12 & 1) == 0)
  {
    if (!os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_150;
    }

    LOWORD(buf) = 0;
    v21 = "error: failed to start kernel trace";
    goto LABEL_35;
  }

  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1E5234000, v14, OS_LOG_TYPE_DEFAULT, "ABP kernel interface started", &buf, 2u);
  }

  *block = 0;
  (*(**(v2 + 40) + 112))(*(v2 + 40), block);
  v15 = *block;
  if (!*block)
  {
    v14 = **(v2 + 104);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_150;
    }

    LOWORD(buf) = 0;
    v21 = "error: failed to get buffer constraints from kernel";
    goto LABEL_35;
  }

  *(v2 + 136) = *block;
  v16 = **(v2 + 104);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v15 >> 10;
    _os_log_impl(&dword_1E5234000, v16, OS_LOG_TYPE_INFO, "set buffer size to %d KB", &buf, 8u);
  }

  LODWORD(v81[0]) = 0;
  (*(**(v2 + 40) + 136))(*(v2 + 40), v81);
  v17 = v81[0];
  if (v17 < *(v2 + 140) * (*(**(v2 + 40) + 40))(*(v2 + 40)))
  {
    v18 = **(v2 + 104);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_150;
    }

    v19 = v81[0];
    v20 = *(v2 + 140) * (*(**(v2 + 40) + 40))(*(v2 + 40));
    LODWORD(buf) = 67109376;
    DWORD1(buf) = v19;
    WORD4(buf) = 1024;
    *(&buf + 10) = v20;
    v21 = "error: buffer count exceeded kernel limits (param: %u, assigned buffer: %u)";
    v22 = v18;
    v23 = 14;
    goto LABEL_36;
  }

  v24 = (*(**(v2 + 40) + 40))(*(v2 + 40));
  if (!v24)
  {
LABEL_90:
    v50 = *(v2 + 176);
    if (v50 == (v2 + 184))
    {
      goto LABEL_153;
    }

    while (1)
    {
      v51 = v50[4];
      v52 = v50[5];
      v81[0] = v51;
      v81[1] = v52;
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v51)
      {
        v55 = **(v2 + 104);
        v24 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
        if (v24)
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_1E5234000, v55, OS_LOG_TYPE_ERROR, "error: moving to next pipe due to null pipe", &buf, 2u);
          if (v52)
          {
            goto LABEL_133;
          }

          goto LABEL_139;
        }

LABEL_132:
        if (v52)
        {
          goto LABEL_133;
        }

        goto LABEL_139;
      }

      *&v53 = 0xAAAAAAAAAAAAAAAALL;
      *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v91[32] = v53;
      v92 = v53;
      *v91 = v53;
      *&v91[16] = v53;
      buf = v53;
      v90 = v53;
      if (*(v51 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v80, *v51, *(v51 + 1));
      }

      else
      {
        v54 = *v51;
        v80.__r_.__value_.__r.__words[2] = *(v51 + 2);
        *&v80.__r_.__value_.__l.__data_ = v54;
      }

      v56 = *(v2 + 144);
      capabilities::ipc::ABPLogExtension(block, v24);
      if (SHIBYTE(v85) >= 0)
      {
        v57 = block;
      }

      else
      {
        v57 = *block;
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = *&v80.__r_.__value_.__l.__data_;
        *&v90 = *(&v80.__r_.__value_.__l + 2);
      }

      v1 &= 0xFFFFFFFFFFFFFF00;
      *&v91[8] = *v79;
      *&v91[11] = *&v79[3];
      memset(&v91[15], 0, 25);
      *(&v90 + 1) = v1;
      *&v91[40] = (v56 << 20);
      *&v92 = 0x100000;
      BYTE8(v92) = 0;
      if (v57)
      {
        std::string::__assign_external(&v91[16], v57);
        if ((SHIBYTE(v85) & 0x80000000) == 0)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v91[39] = 4;
        strcpy(&v91[16], ".log");
        if ((SHIBYTE(v85) & 0x80000000) == 0)
        {
LABEL_110:
          if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_111;
          }

          goto LABEL_116;
        }
      }

      operator delete(*block);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_111:
        v58 = **(v2 + 104);
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          goto LABEL_117;
        }

        goto LABEL_112;
      }

LABEL_116:
      operator delete(v80.__r_.__value_.__l.__data_);
      v58 = **(v2 + 104);
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
LABEL_117:
        v59 = *(v51 + 9);
        *(v51 + 8) = 0;
        *(v51 + 9) = 0;
        if (!v59)
        {
          goto LABEL_120;
        }

        goto LABEL_118;
      }

LABEL_112:
      *block = 0;
      _os_log_impl(&dword_1E5234000, v58, OS_LOG_TYPE_INFO, "creating and opening log writer", block, 2u);
      v59 = *(v51 + 9);
      *(v51 + 8) = 0;
      *(v51 + 9) = 0;
      if (!v59)
      {
        goto LABEL_120;
      }

LABEL_118:
      if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v59->__on_zero_shared)(v59);
        std::__shared_weak_count::__release_weak(v59);
      }

LABEL_120:
      v60 = operator new(0xB8uLL);
      CircularFileLogWriter::CircularFileLogWriter(v60, &buf);
      v24 = std::shared_ptr<CircularFileLogWriter>::shared_ptr[abi:ne200100]<CircularFileLogWriter,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1},0>(block, v60);
      v61 = *block;
      memset(block, 0, sizeof(block));
      v62 = *(v51 + 9);
      v51[4] = v61;
      if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v62->__on_zero_shared)(v62);
        std::__shared_weak_count::__release_weak(v62);
      }

      v63 = *&block[8];
      if (*&block[8] && !atomic_fetch_add((*&block[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v63->__on_zero_shared)(v63);
        std::__shared_weak_count::__release_weak(v63);
      }

      v64 = *(v51 + 8);
      if (!v64)
      {
        goto LABEL_129;
      }

      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 0x40000000;
      v82[2] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
      v82[3] = &__block_descriptor_tmp;
      v82[4] = v64;
      v83 = v82;
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 0x40000000;
      v85 = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
      v86 = &__block_descriptor_tmp_21;
      v87 = v64 + 1;
      v88 = &v83;
      isa = v64[3].isa;
      if (v64[4].isa)
      {
        dispatch_async_and_wait(isa, block);
LABEL_129:
        if ((v91[39] & 0x80000000) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_136;
      }

      dispatch_sync(isa, block);
      if ((v91[39] & 0x80000000) == 0)
      {
LABEL_130:
        if ((v91[15] & 0x80000000) == 0)
        {
          goto LABEL_131;
        }

        goto LABEL_137;
      }

LABEL_136:
      operator delete(*&v91[16]);
      if ((v91[15] & 0x80000000) == 0)
      {
LABEL_131:
        if ((SBYTE7(v90) & 0x80000000) == 0)
        {
          goto LABEL_132;
        }

        goto LABEL_138;
      }

LABEL_137:
      operator delete(*(&v90 + 1));
      if ((SBYTE7(v90) & 0x80000000) == 0)
      {
        goto LABEL_132;
      }

LABEL_138:
      operator delete(buf);
      if (v52)
      {
LABEL_133:
        if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v52->__on_zero_shared)(v52);
          std::__shared_weak_count::__release_weak(v52);
        }
      }

LABEL_139:
      v66 = v50[1];
      if (v66)
      {
        do
        {
          v67 = v66;
          v66 = *v66;
        }

        while (v66);
      }

      else
      {
        do
        {
          v67 = v50[2];
          v27 = *v67 == v50;
          v50 = v67;
        }

        while (!v27);
      }

      v50 = v67;
      if (v67 == (v2 + 184))
      {
        v1 = v78;
        if (!v78)
        {
          goto LABEL_157;
        }

        goto LABEL_153;
      }
    }
  }

  v25 = 0;
  v26 = v2 + 200;
  v75 = (v2 + 184);
  while (1)
  {
    LODWORD(v83) = -1431655766;
    if ((*(**(v2 + 40) + 48))(*(v2 + 40), v25, &v83, &KernelPCIRestoreTrace::registerWithKernel_sync(void)::name, 256))
    {
      byte_1ECFD5847 = 0;
      v27 = KernelPCIRestoreTrace::registerWithKernel_sync(void)::name == 0x76655F7374617473 && dword_1ECFD5750 == 7630437;
      if (!v27)
      {
        break;
      }
    }

LABEL_89:
    v24 = (*(**(v2 + 40) + 40))(*(v2 + 40));
    v25 = (v25 + 1);
    if (v25 >= v24)
    {
      goto LABEL_90;
    }
  }

  v28 = operator new(0x68uLL);
  v28->__shared_owners_ = 0;
  v28->__shared_weak_owners_ = 0;
  v28->__vftable = &unk_1F5F05DC8;
  v29 = v83;
  v30 = *(v2 + 224);
  p_shared_owners = &v28->__shared_owners_;
  if (!v30)
  {
    goto LABEL_47;
  }

  if (v30 != v26)
  {
    v30 = (*(*v30 + 16))(v30);
LABEL_47:
    *(&v90 + 1) = v30;
    goto LABEL_49;
  }

  *(&v90 + 1) = &buf;
  (*(*v30 + 24))(v30, &buf);
LABEL_49:
  v31 = strlen(&KernelPCIRestoreTrace::registerWithKernel_sync(void)::name);
  if (v31 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  v33 = v28 + 1;
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

    v34 = operator new(v35);
    v28[1].__shared_owners_ = v32;
    v28[1].__shared_weak_owners_ = v35 | 0x8000000000000000;
    v28[1].__vftable = v34;
    goto LABEL_57;
  }

  HIBYTE(v28[1].__shared_weak_owners_) = v31;
  v34 = &v28[1];
  if (v31)
  {
LABEL_57:
    memcpy(v34, &KernelPCIRestoreTrace::registerWithKernel_sync(void)::name, v32);
  }

  *(&v34->~__shared_weak_count + v32) = 0;
  LODWORD(v28[2].__vftable) = v29;
  v36 = *(&v90 + 1);
  if (*(&v90 + 1))
  {
    if (*(&v90 + 1) == &buf)
    {
      v28[3].__shared_owners_ = &v28[2].__shared_owners_;
      (*(*v36 + 24))(v36);
    }

    else
    {
      v28[3].__shared_owners_ = (*(**(&v90 + 1) + 16))(*(&v90 + 1));
    }
  }

  else
  {
    v28[3].__shared_owners_ = 0;
  }

  v28[3].__shared_weak_owners_ = 0;
  v28[4].__vftable = 0;
  if (*(&v90 + 1) == &buf)
  {
    (*(**(&v90 + 1) + 32))(*(&v90 + 1));
    *block = v28 + 1;
    *&block[8] = v28;
    v37 = (v2 + 184);
    v38 = (v2 + 184);
    v39 = *v75;
    if (*v75)
    {
      goto LABEL_71;
    }

    goto LABEL_75;
  }

  if (*(&v90 + 1))
  {
    (*(**(&v90 + 1) + 40))(*(&v90 + 1));
  }

  *block = v28 + 1;
  *&block[8] = v28;
  v37 = (v2 + 184);
  v38 = (v2 + 184);
  v39 = *v75;
  if (!*v75)
  {
LABEL_75:
    v41 = operator new(0x30uLL);
    v41[4] = v33;
    v41[5] = v28;
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    *v41 = 0;
    v41[1] = 0;
    v41[2] = v38;
    *v37 = v41;
    v42 = **(v2 + 176);
    if (v42)
    {
      *(v2 + 176) = v42;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 184), v41);
    ++*(v2 + 192);
    goto LABEL_78;
  }

  while (1)
  {
LABEL_71:
    while (1)
    {
      v38 = v39;
      v40 = v39[4];
      if (v33 >= v40)
      {
        break;
      }

      v39 = *v38;
      v37 = v38;
      if (!*v38)
      {
        goto LABEL_75;
      }
    }

    if (v40 >= v33)
    {
      break;
    }

    v39 = v38[1];
    if (!v39)
    {
      v37 = v38 + 1;
      goto LABEL_75;
    }
  }

LABEL_78:
  v43 = **(v2 + 104);
  if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    if (*(v2 + 140))
    {
      goto LABEL_80;
    }

    goto LABEL_86;
  }

  LODWORD(buf) = 136315138;
  *(&buf + 4) = "allocateBuffQueue_sync";
  _os_log_debug_impl(&dword_1E5234000, v43, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  if (!*(v2 + 140))
  {
LABEL_86:
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    v26 = v2 + 200;
    goto LABEL_89;
  }

LABEL_80:
  v44 = 0;
  while (1)
  {
    v45 = *(v2 + 136);
    v82[0] = 0;
    BuffContext_sync = KernelPCIRestoreTrace::createBuffContext_sync(v2, v45, block, v82);
    v47 = (*(**(v2 + 40) + 72))(*(v2 + 40), LODWORD(v28[2].__vftable), *BuffContext_sync, *(BuffContext_sync + 2), 0, readLogsCompletionCB, BuffContext_sync);
    v48 = **(v2 + 104);
    if (v47)
    {
      break;
    }

    ++v44;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = *(v2 + 136) >> 10;
      LODWORD(buf) = 67109376;
      DWORD1(buf) = v44;
      WORD4(buf) = 1024;
      *(&buf + 10) = v49;
      _os_log_impl(&dword_1E5234000, v48, OS_LOG_TYPE_INFO, "pre-assigned buffer # %u of size %u KB to fetch logs", &buf, 0xEu);
    }

    if (v44 >= *(v2 + 140))
    {
      goto LABEL_86;
    }
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v74 = *(v2 + 136) >> 10;
    LODWORD(buf) = 67109632;
    DWORD1(buf) = v44 + 1;
    WORD4(buf) = 1024;
    *(&buf + 10) = v74;
    HIWORD(buf) = 1024;
    LODWORD(v90) = v47;
    _os_log_error_impl(&dword_1E5234000, v48, OS_LOG_TYPE_ERROR, "error: failed to pre-assign buffer # %u of size %u KB to fetch logs (error [0x%x])", &buf, 0x14u);
  }

  KernelPCIRestoreTrace::deleteBuffContext_sync(v2, BuffContext_sync);
  v68 = **(v2 + 104);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_1E5234000, v68, OS_LOG_TYPE_ERROR, "error: failed to allocate buffer", &buf, 2u);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_149:
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }
  }

  else if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_149;
  }

LABEL_150:
  v69 = **(v2 + 104);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_1E5234000, v69, OS_LOG_TYPE_ERROR, "error: registering with kernel driver failed, de-registering to cleanup", &buf, 2u);
  }

  KernelPCIRestoreTrace::deregisterWithKernel_sync(v2);
LABEL_153:
  v70 = *(v1 + 8);
  if (v70)
  {
    dispatch_group_leave(v70);
    v71 = *(v1 + 8);
    if (v71)
    {
      dispatch_release(v71);
    }
  }

  operator delete(v1);
LABEL_157:
  v72 = a1;
  if (a1)
  {
    v73 = *(a1 + 16);
    if (v73)
    {
      if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v73->__on_zero_shared)(v73);
        std::__shared_weak_count::__release_weak(v73);
        v72 = a1;
      }
    }

    operator delete(v72);
  }
}

void sub_1E5366770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&__p);
  std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a19);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void CircularFileLogWriter::Params::~Params(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
    if ((*(this + 47) & 0x80000000) == 0)
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

  else if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_7;
  }
}

void dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0>(KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = a1;
  v96 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = **a1;
  v4 = **(v3 + 104);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *(v3 + 32) = 0;
    v5 = dispatch_group_create();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_101:
    v68 = **(v3 + 104);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E5234000, v68, OS_LOG_TYPE_ERROR, "error: failed to create group", &buf, 2u);
      v67 = v2[1];
      if (!v67)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v67 = v2[1];
      if (!v67)
      {
        goto LABEL_105;
      }
    }

    goto LABEL_103;
  }

  LODWORD(buf) = 136315138;
  *(&buf + 4) = "operator()";
  _os_log_debug_impl(&dword_1E5234000, v4, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  *(v3 + 32) = 0;
  v5 = dispatch_group_create();
  if (!v5)
  {
    goto LABEL_101;
  }

LABEL_3:
  v6 = v5;
  v73 = v1;
  dispatch_retain(v5);
  dispatch_group_enter(v6);
  v7 = **(v3 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "dumpPCIEState_sync";
    _os_log_debug_impl(&dword_1E5234000, v7, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
    if (!*(v3 + 40))
    {
      goto LABEL_96;
    }
  }

  else if (!*(v3 + 40))
  {
    goto LABEL_96;
  }

  v71 = v2;
  v72 = v6;
  v8 = dispatch_group_create();
  v9 = operator new(0x38uLL);
  v10 = v9;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_1F5F05E18;
  v9[3] = v8;
  v11 = (v9 + 3);
  if (!v8)
  {
    v9[4] = 0;
    v9[5] = 0;
    v9[6] = 0;
    v81 = (v9 + 3);
    v82 = v9;
    v12 = *(v3 + 176);
    v75 = (v3 + 184);
    if (v12 == (v3 + 184))
    {
      goto LABEL_82;
    }

    goto LABEL_9;
  }

  dispatch_retain(v8);
  v10[1].__shared_owners_ = 0;
  v10[1].__shared_weak_owners_ = 0;
  v10[2].__vftable = 0;
  dispatch_release(v8);
  v81 = v11;
  v82 = v10;
  v12 = *(v3 + 176);
  v75 = (v3 + 184);
  if (v12 != (v3 + 184))
  {
LABEL_9:
    v13 = &v85;
    v74 = v3;
    do
    {
      v15 = v12[4];
      v14 = v12[5];
      v80[0] = v15;
      v80[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = v81;
      v76 = v14;
      v77 = v15;
      if (*(v15 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v78, *v15, *(v15 + 8));
      }

      else
      {
        v17 = *v15;
        v78.__r_.__value_.__r.__words[2] = *(v15 + 16);
        *&v78.__r_.__value_.__l.__data_ = v17;
      }

      v87[0] = v78.__r_.__value_.__l.__size_;
      v18 = v78.__r_.__value_.__r.__words[0];
      *(v87 + 7) = *(&v78.__r_.__value_.__r.__words[1] + 7);
      v19 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
      memset(&v78, 0, sizeof(v78));
      *object = 0u;
      v85 = 0u;
      v86 = 0u;
      v20 = dispatch_group_create();
      v21 = v20;
      group = v20;
      if (v20)
      {
        dispatch_retain(v20);
        dispatch_group_enter(v21);
        dispatch_release(v21);
      }

      v22 = v13;
      v23 = operator new(0x30uLL);
      v23[1] = 0;
      v23[2] = 0;
      *v23 = &unk_1F5F05D28;
      v23[3] = v18;
      v23[4] = v87[0];
      *(v23 + 39) = *(v87 + 7);
      *(v23 + 47) = v19;
      v87[0] = 0;
      *(v87 + 7) = 0;
      *&v83 = v23 + 3;
      *(&v83 + 1) = v23;
      v24 = *v16;
      if (*v16)
      {
        dispatch_retain(*v16);
        dispatch_group_enter(v24);
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v26 = global_queue;
      if (global_queue)
      {
        dispatch_retain(global_queue);
      }

      *&buf = v23 + 3;
      *(&buf + 1) = v23;
      atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
      v89 = v24;
      if (v24)
      {
        dispatch_retain(v24);
        dispatch_group_enter(v24);
      }

      v95 = 0;
      v90 = 0;
      v91 = 0;
      object[0] = 0;
      object[1] = 0;
      *(&v86 + 1) = 0;
      v27 = operator new(0x48uLL);
      *v27 = v23 + 3;
      v27[1] = v23;
      buf = 0uLL;
      v27[3] = 0;
      v27[4] = 0;
      v27[2] = v24;
      v27[8] = 0;
      v90 = 0;
      v91 = 0;
      v89 = 0;
      v95 = 0;
      dispatch_group_notify_f(v21, v26, v27, dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
      ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(&buf);
      if (v26)
      {
        dispatch_release(v26);
      }

      v28 = v16[2];
      v29 = v16[3];
      if (v28 < v29)
      {
        *v28 = v83;
        v30 = *(&v83 + 1);
        *(v28 + 1) = *(&v83 + 1);
        if (v30)
        {
          atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
        }

        v16[2] = (v28 + 16);
        if (v24)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      v35 = v16[1];
      v36 = v28 - v35;
      v37 = (v28 - v35) >> 4;
      v38 = v37 + 1;
      if ((v37 + 1) >> 60)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v39 = v29 - v35;
      if (v39 >> 3 > v38)
      {
        v38 = v39 >> 3;
      }

      if (v39 >= 0x7FFFFFFFFFFFFFF0)
      {
        v40 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v38;
      }

      if (v40)
      {
        if (v40 >> 60)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v41 = operator new(16 * v40);
        v42 = &v41[16 * v37];
        v43 = *(&v83 + 1);
        *v42 = v83;
        v44 = v43;
        if (v43)
        {
LABEL_52:
          atomic_fetch_add_explicit((v44 + 16), 1uLL, memory_order_relaxed);
          v35 = v16[1];
          v36 = v16[2] - v35;
          v37 = v36 >> 4;
        }
      }

      else
      {
        v41 = 0;
        v42 = (16 * v37);
        v56 = *(&v83 + 1);
        *(16 * v37) = v83;
        v44 = v56;
        if (v56)
        {
          goto LABEL_52;
        }
      }

      v45 = &v41[16 * v40];
      v46 = (v42 + 16);
      v47 = &v42[-16 * v37];
      memcpy(v47, v35, v36);
      v16[1] = v47;
      v16[2] = v46;
      v16[3] = v45;
      if (v35)
      {
        operator delete(v35);
      }

      v3 = v74;
      v13 = v22;
      v16[2] = v46;
      if (v24)
      {
LABEL_30:
        dispatch_group_leave(v24);
        dispatch_release(v24);
      }

LABEL_31:
      v31 = *(&v83 + 1);
      if (*(&v83 + 1) && !atomic_fetch_add((*(&v83 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
        v32 = *(&v86 + 1);
        if (!*(&v86 + 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v32 = *(&v86 + 1);
        if (!*(&v86 + 1))
        {
          goto LABEL_36;
        }
      }

      if (object[0])
      {
        *&buf = object[1];
        *&v83 = object[0];
        (*(*v32 + 48))(v32, &buf, &v83);
      }

LABEL_36:
      if (object[1])
      {
        os_release(object[1]);
      }

      v33 = *(&v86 + 1);
      object[1] = 0;
      *(&v86 + 1) = 0;
      if (v33 == v13)
      {
        (*(*v33 + 32))(v33);
        v34 = *(&v86 + 1);
        object[0] = 0;
        if (*(&v86 + 1) == v13)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (!v33)
        {
          goto LABEL_59;
        }

        (*(*v33 + 40))(v33);
        v34 = *(&v86 + 1);
        object[0] = 0;
        if (*(&v86 + 1) == v13)
        {
LABEL_58:
          (*(*v34 + 32))(v34);
          goto LABEL_59;
        }
      }

      if (v34)
      {
        (*(*v34 + 40))(v34);
      }

LABEL_59:
      v48 = KernelPCIRestoreTrace::createBuffContext_sync(v3, 0, v80, &group);
      v49 = group;
      if (group)
      {
        dispatch_group_leave(group);
        dispatch_release(v49);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      v50 = (*(**(v3 + 40) + 80))(*(v3 + 40), *(v77 + 24), 1, flushLogsCompletionCB, v48);
      v51 = *(v3 + 104);
      v52 = *v51;
      if (v50)
      {
        if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_1E5234000, v52, OS_LOG_TYPE_ERROR, "error: failed to assign null-buffer to trigger snapshot", &buf, 2u);
        }

        KernelPCIRestoreTrace::deleteBuffContext_sync(v3, v48);
      }

      else if (os_log_type_enabled(*v51, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1E5234000, v52, OS_LOG_TYPE_INFO, "assigned null-buffer to trigger snapshot", &buf, 2u);
      }

      if (v76 && !atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v76->__on_zero_shared)(v76);
        std::__shared_weak_count::__release_weak(v76);
        v53 = v12[1];
        if (!v53)
        {
          do
          {
LABEL_77:
            v54 = v12[2];
            v55 = *v54 == v12;
            v12 = v54;
          }

          while (!v55);
          goto LABEL_10;
        }
      }

      else
      {
        v53 = v12[1];
        if (!v53)
        {
          goto LABEL_77;
        }
      }

      do
      {
        v54 = v53;
        v53 = *v53;
      }

      while (v53);
LABEL_10:
      v12 = v54;
    }

    while (v54 != v75);
  }

LABEL_82:
  v57 = *(v3 + 8);
  if (!v57 || (v58 = *v3, (v59 = std::__shared_weak_count::lock(v57)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v60 = v59;
  atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v59->__on_zero_shared)(v59);
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = *v81;
  v62 = *(v3 + 16);
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 1174405120;
  v89 = ___ZN21KernelPCIRestoreTrace18dumpPCIEState_syncEN8dispatch13group_sessionE_block_invoke;
  v90 = &__block_descriptor_tmp_22;
  v91 = v3;
  v92 = v72;
  dispatch_retain(v72);
  if (v92)
  {
    dispatch_group_enter(v92);
  }

  v93 = v58;
  v94 = v60;
  atomic_fetch_add_explicit(&v60->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  dispatch_group_notify(v61, v62, &buf);
  if (v94)
  {
    std::__shared_weak_count::__release_weak(v94);
  }

  v2 = v71;
  v6 = v72;
  if (v92)
  {
    dispatch_group_leave(v92);
    if (v92)
    {
      dispatch_release(v92);
    }
  }

  std::__shared_weak_count::__release_weak(v60);
  v63 = v82;
  if (v82 && !atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v63->__on_zero_shared)(v63);
    std::__shared_weak_count::__release_weak(v63);
  }

LABEL_96:
  dispatch_group_leave(v6);
  dispatch_release(v6);
  v64 = v2[1];
  *&buf = v3;
  *(&buf + 1) = v64;
  if (v64)
  {
    dispatch_retain(v64);
    dispatch_group_enter(v64);
  }

  v65 = *(v3 + 16);
  v66 = operator new(0x10uLL);
  *v66 = v3;
  v66[1] = v64;
  dispatch_group_notify_f(v6, v65, v66, dispatch::detail::group_notify<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  dispatch_release(v6);
  v1 = v73;
  v67 = v2[1];
  if (v67)
  {
LABEL_103:
    dispatch_group_leave(v67);
    v69 = v2[1];
    if (v69)
    {
      dispatch_release(v69);
    }
  }

LABEL_105:
  operator delete(v2);
  v70 = v1[2];
  if (v70 && !atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v70->__on_zero_shared)(v70);
    std::__shared_weak_count::__release_weak(v70);
  }

  operator delete(v1);
}

void sub_1E536746C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, dispatch_group_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  dispatch_group_leave(group);
  dispatch_release(group);
  dispatch_release(group);
  std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a18);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}::~(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 8);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void dispatch::detail::group_notify<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(KernelPCIRestoreTrace **a1)
{
  v1 = a1;
  v2 = *a1;
  KernelPCIRestoreTrace::deregisterWithKernel_sync(*a1);
  v3 = *(v2 + 22);
  v4 = (v2 + 184);
  if (v3 != (v2 + 184))
  {
    while (1)
    {
      v6 = v3[4];
      v5 = v3[5];
      v16 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *(v6 + 64);
      if (v7 && ((*(*v7 + 16))(v7), v8 = *(v6 + 72), *(v6 + 64) = 0, *(v6 + 72) = 0, v8) && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        v9 = v16;
        if (v16)
        {
LABEL_10:
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }
        }
      }

      else
      {
        v9 = v16;
        if (v16)
        {
          goto LABEL_10;
        }
      }

      v10 = v3[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v3[2];
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
      if (v11 == v4)
      {
        v1 = a1;
        break;
      }
    }
  }

  std::__tree<std::shared_ptr<PipeContext>>::destroy(*(v2 + 23));
  *(v2 + 23) = 0;
  *(v2 + 24) = 0;
  *(v2 + 22) = v4;
  if (v1)
  {
    v13 = v1[1];
    if (v13)
    {
      dispatch_group_leave(v13);
      v14 = v1[1];
      if (v14)
      {
        dispatch_release(v14);
      }
    }

    operator delete(v1);
  }
}

void sub_1E53677DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E53677F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<pci::transport::kernelTrace  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<pci::transport::kernelTrace  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::transport::kernelTrace  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5394E60)
  {
    if (((v2 & 0x80000001E5394E60 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5394E60))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5394E60 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<PipeContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F05DC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<PipeContext>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(a1 + 80);
    if (v3 != a1 + 56)
    {
      goto LABEL_4;
    }

LABEL_9:
    (*(*v3 + 32))(v3);
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = *(a1 + 80);
  if (v3 == a1 + 56)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(a1 + 47) < 0)
  {
LABEL_10:
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<ctu::TrackedGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F05E18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ctu::TrackedGroup>::__on_zero_shared(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6)
  {

    dispatch_release(v6);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0>(KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (!v4)
  {
    v13 = **(v3 + 104);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v14 = "error: null buffer context in read completion callback";
LABEL_33:
    _os_log_error_impl(&dword_1E5234000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    operator delete(v2);
    v23 = a1[2];
    if (!v23)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v5 = *(v2 + 6);
  if (v5 || !*v4)
  {
    v6 = **(v3 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_error_impl(&dword_1E5234000, v6, OS_LOG_TYPE_ERROR, "error: read logs completion failed (error [0x%x])", buf, 8u);
    }
  }

  else
  {
    v15 = **(v3 + 104);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v2[2];
      *buf = 134217984;
      *&buf[4] = v16;
      _os_log_impl(&dword_1E5234000, v15, OS_LOG_TYPE_INFO, "read logs completion of size %zu bytes", buf, 0xCu);
      v4 = v2[1];
    }

    v17 = v4[4];
    if (!v17)
    {
      v13 = **(v3 + 104);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v14 = "error: pipe context is null in read callback";
      goto LABEL_33;
    }

    v18 = *v4;
    v19 = v2[2];
    v20 = *(v17 + 64);
    if (v20)
    {
      (*(*v20 + 72))(v20, v18, v2[2]);
    }

    v21 = *(v17 + 56);
    if (v21)
    {
      v25 = v19;
      *buf = v18;
      (*(*v21 + 48))(v21, buf, &v25);
    }
  }

  v7 = v2[1];
  if ((*(v3 + 32) & 1) == 0)
  {
    KernelPCIRestoreTrace::deleteBuffContext_sync(v3, v2[1]);
    goto LABEL_28;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    v13 = **(v3 + 104);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v14 = "error: pipe context is null when trying to schedule read";
    goto LABEL_33;
  }

  v9 = (*(**(v3 + 40) + 72))(*(v3 + 40), *(v8 + 24), *v7, *(v7 + 8), 0, readLogsCompletionCB, v2[1]);
  v10 = *(v3 + 104);
  v11 = *v10;
  if (v9)
  {
    v12 = v9;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v24 = *(v7 + 8) >> 10;
      *buf = 134218240;
      *&buf[4] = v24;
      v27 = 1024;
      v28 = v12;
      _os_log_error_impl(&dword_1E5234000, v11, OS_LOG_TYPE_ERROR, "error: failed re-assigning new buffer of size %zu KB to fetch logs (error [0x%x])", buf, 0x12u);
    }

    KernelPCIRestoreTrace::deleteBuffContext_sync(v3, v7);
LABEL_28:
    operator delete(v2);
    v23 = a1[2];
    if (!v23)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (!os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_28;
  }

  v22 = *(v7 + 8) >> 10;
  *buf = 134217984;
  *&buf[4] = v22;
  _os_log_debug_impl(&dword_1E5234000, v11, OS_LOG_TYPE_DEBUG, "assigning new buffer of size %zu KB to fetch logs", buf, 0xCu);
  operator delete(v2);
  v23 = a1[2];
  if (!v23)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

LABEL_31:
  operator delete(a1);
}

void sub_1E5367F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  operator delete(v9);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0>(KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (v4)
  {
    if (*v4)
    {
      v5 = *(v2 + 4);
      v6 = **(v3 + 104);
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v5;
          _os_log_error_impl(&dword_1E5234000, v6, OS_LOG_TYPE_ERROR, "error: flush logs completion returned error (error [0x%x])", buf, 8u);
        }

LABEL_21:
        KernelPCIRestoreTrace::deleteBuffContext_sync(v3, v2[1]);
        goto LABEL_22;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v12 = v2[3];
        *buf = 134217984;
        *&buf[4] = v12;
        _os_log_impl(&dword_1E5234000, v6, OS_LOG_TYPE_INFO, "flush logs completion of size %zu bytes", buf, 0xCu);
        v4 = v2[1];
      }

      v13 = v4[4];
      if (v13)
      {
        v14 = *v4;
        v15 = v2[3];
        v16 = *(v13 + 64);
        if (v16)
        {
          (*(*v16 + 72))(v16, v14, v2[3]);
        }

        v17 = *(v13 + 56);
        if (v17)
        {
          v19 = v15;
          *buf = v14;
          (*(*v17 + 48))(v17, buf, &v19);
        }

        goto LABEL_21;
      }

      v7 = **(v3 + 104);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v8 = "error: pipe context is null in flush callback";
    }

    else
    {
      v9 = **(v3 + 104);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5234000, v9, OS_LOG_TYPE_INFO, "snapshot received (flush completion with null-log)", buf, 2u);
        v4 = v2[1];
      }

      v10 = v4[4];
      if (v10)
      {
        v11 = *(v10 + 64);
        if (v11)
        {
          (*(*v11 + 16))(v11);
        }

        goto LABEL_21;
      }

      v7 = **(v3 + 104);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v8 = "error: pipe context is null in flush callback";
    }

    goto LABEL_8;
  }

  v7 = **(v3 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v8 = "error: buffContext is null";
LABEL_8:
    _os_log_error_impl(&dword_1E5234000, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
  }

LABEL_22:
  operator delete(v2);
  v18 = a1[2];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  operator delete(a1);
}

void sub_1E5368288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  operator delete(v9);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_43()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUICEBinaryImage::BBUICEBinaryImage(BBUICEBinaryImage *this, BBUDataSource *a2, const char *__s, int a4)
{
  *this = &unk_1F5F05E68;
  v8 = this + 16;
  v9 = strlen(__s);
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
    *(this + 3) = v10;
    *(this + 4) = v12 | 0x8000000000000000;
    *(this + 2) = v11;
    goto LABEL_9;
  }

  *(this + 39) = v9;
  v11 = v8;
  if (v9)
  {
LABEL_9:
    memmove(v11, __s, v10);
  }

  *(v11 + v10) = 0;
  *(this + 10) = a4;
  *(this + 6) = a2;
  *(this + 1) = 1;
  if (a2)
  {
    *(this + 3) = (*(*a2 + 24))(a2);
  }
}

void sub_1E5368400(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void BBUICEBinaryImage::~BBUICEBinaryImage(BBUICEBinaryImage *this)
{
  *this = &unk_1F5F05E68;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  *this = &unk_1F5F05E68;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
    v3 = this;
  }

  else
  {
    v3 = this;
  }

  operator delete(v3);
}

void *BBUICEBinaryImage::getWritePayloadData(BBUICEBinaryImage *this, unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  result = (*(*this + 32))(this);
  if (result + 8 <= a4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 80, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEBinaryImage.cpp", 0x1Eu, "Assertion failure(( offset < (getWritePayloadLength() + kBinHeaderSize)) && Error: Chunk size is not sufficient to write payload data of the binary image.)");
    goto LABEL_14;
  }

  v11 = -1431655766;
  if (a4 <= 7)
  {
    if (8 - a4 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = 8 - a4;
    }

    result = memcpy(a2, this + a4 + 8, v9);
    a2 += v9;
    a3 = (a3 - v9);
  }

  if (a3)
  {
    result = (*(**(this + 6) + 16))(*(this + 6), a2, a3, &v11, a4 + *(this + 10) - 8);
    if (result)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 80, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEBinaryImage.cpp", 0x2Eu, "Assertion failure((ret == kBBUReturnSuccess) && Failed to copy binary image payload data to buffer!)");
    }

    else
    {
      if (v11 == a3)
      {
        return result;
      }

      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 80, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEBinaryImage.cpp", 0x2Fu, "Assertion failure((amountCopied == amount) && Copied data size mismatch: Failed to copy binary image payload data to buffer!)");
    }

LABEL_14:
  }

  return result;
}

uint64_t BBUICEBinaryImage::getName(BBUICEBinaryImage *this)
{
  result = this + 16;
  if (*(this + 39) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t BBUICEBinaryImage::getWritePayloadLength(BBUICEBinaryImage *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return (*(*v1 + 24))(v1) + 8;
  }

  else
  {
    return 8;
  }
}

void BBUICEBinaryImage::generateHash(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

uint64_t BBUICEBinaryImage::generateBinHeader(BBUICEBinaryImage *this)
{
  *(this + 1) = 1;
  result = *(this + 6);
  if (result)
  {
    result = (*(*result + 24))(result);
    *(this + 3) = result;
  }

  return result;
}

void BasebandUpdaterTransport::create(void **a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0xE8uLL);
  ACFUACIPCTransport::ACFUACIPCTransport(v10);
  *v10 = &unk_1F5F05ED8;
  *(v10 + 10) = 0u;
  v11 = (v10 + 160);
  *(v10 + 11) = 0u;
  *(v10 + 185) = 0u;
  *(v10 + 201) = 16777217;
  *(v10 + 27) = 0;
  *(v10 + 28) = 0;
  *(v10 + 26) = 0;
  *a5 = v10;
  v12 = *a1;
  v13 = a1[1];
  v39 = v12;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *a2;
  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  Controller = TelephonyBasebandCreateController();
  v17 = *v11;
  *v11 = Controller;
  if (v17)
  {
    CFRelease(v17);
    Controller = *v11;
  }

  if (!Controller)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v20 = ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to create baseband controller object\n", "BasebandUpdaterTransport", "init");
    v21 = 0;
    goto LABEL_59;
  }

  v40 = 0;
  v41 = 0;
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
LABEL_10:
      if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
    goto LABEL_19;
  }

LABEL_11:
  if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
  {
    ctu::FirstBootAfterUpdate::create();
    *__p = v45;
    v18 = *(&v45 + 1);
    v22 = operator new(0x10uLL);
    *v22 = v45;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v40 = v22;
    v41 = v22 + 16;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

LABEL_19:
  v43 = 11;
  strcpy(__p, "BBTransport");
  ctu::AdaptiveTimerService::create();
  v23 = v45;
  v45 = 0uLL;
  v24 = *(v10 + 24);
  *(v10 + 184) = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (!*(&v45 + 1) || atomic_fetch_add((*(&v45 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  (*(**(&v45 + 1) + 16))(*(&v45 + 1));
  std::__shared_weak_count::__release_weak(*(&v45 + 1));
  if (v43 < 0)
  {
LABEL_25:
    operator delete(__p[0]);
  }

LABEL_26:
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = *(v10 + 22);
  *(v10 + 21) = v15;
  *(v10 + 22) = v14;
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  v10[200] = a3 & 1;
  v10[201] = a4 & 1;
  if (a3)
  {
    v10[202] = BYTE1(a4) & 1;
    v10[203] = BYTE2(a4) & 1;
    v10[204] = (a4 & 0x1000000) == 0;
    if ((a4 & 0x1000000) != 0)
    {
      v25 = ctu::AdaptiveTimerService::setScaledTimeOverrideSecs(*(v10 + 23));
    }
  }

  if (HIDWORD(a3))
  {
    v26 = ACFULogging::getLogInstance(v25);
    ACFULogging::handleMessage(v26, 4, "%s::%s: Transfer segment size provided for read/write chunking: %d\n", "BasebandUpdaterTransport", "init", HIDWORD(a3));
    *(v10 + 10) = HIDWORD(a3);
    *(v10 + 11) = HIDWORD(a3);
  }

  v27 = v10 + 56;
  __p[0] = &unk_1F5F06018;
  v28 = *(v10 + 10);
  if (v28 != (v10 + 56))
  {
    *(v10 + 7) = &unk_1F5F06018;
    v44 = v28;
    *(v10 + 10) = v27;
    if (v28 != __p)
    {
      goto LABEL_37;
    }

LABEL_40:
    (*(*v28 + 4))(v28);
    goto LABEL_41;
  }

  *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v45 = &unk_1F5F06018;
  v44 = 0;
  (*(*v28 + 3))(v28, __p);
  (*(**(v10 + 10) + 32))(*(v10 + 10));
  *(v10 + 10) = 0;
  v44 = __p;
  (*(v45 + 24))(&v45, v10 + 56);
  (*(v45 + 32))(&v45);
  *(v10 + 10) = v27;
  v28 = v44;
  if (v44 == __p)
  {
    goto LABEL_40;
  }

LABEL_37:
  if (v28)
  {
    (*(*v28 + 5))(v28);
  }

LABEL_41:
  v29 = v10 + 88;
  __p[0] = &unk_1F5F060A8;
  __p[1] = v10;
  v30 = *(v10 + 14);
  if (v30 == (v10 + 88))
  {
    *(&v45 + 1) = v10;
    v46 = 0xAAAAAAAAAAAAAAAALL;
    *&v45 = &unk_1F5F060A8;
    v44 = 0;
    (*(*v30 + 3))(v30, __p);
    (*(**(v10 + 14) + 32))(*(v10 + 14));
    *(v10 + 14) = 0;
    v44 = __p;
    (*(v45 + 24))(&v45, v10 + 88);
    (*(v45 + 32))(&v45);
    *(v10 + 14) = v29;
    v30 = v44;
    if (v44 != __p)
    {
LABEL_43:
      if (v30)
      {
        (*(*v30 + 5))(v30);
      }

      v31 = v13;
      __p[0] = v39;
      __p[1] = v13;
      if (!v13)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else
  {
    *(v10 + 11) = &unk_1F5F060A8;
    *(v10 + 12) = v10;
    v44 = v30;
    *(v10 + 14) = v29;
    if (v30 != __p)
    {
      goto LABEL_43;
    }
  }

  (*(*v30 + 4))(v30);
  v31 = v13;
  __p[0] = v39;
  __p[1] = v13;
  if (v13)
  {
LABEL_46:
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_47:
  v20 = ACFUACIPCTransport::init();
  v21 = v20;
  v32 = __p[1];
  if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v40)
  {
    v33 = v41;
    v34 = v40;
    if (v41 != v40)
    {
      do
      {
        v35 = *(v33 - 1);
        if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v35->__on_zero_shared)(v35);
          std::__shared_weak_count::__release_weak(v35);
        }

        v33 -= 16;
      }

      while (v33 != v40);
      v34 = v40;
    }

    operator delete(v34);
  }

LABEL_59:
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if ((v21 & 1) == 0)
  {
    v36 = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(v36, 2, "%s::%s: Failed to initialize BasebandUpdaterTransport object\n", "BasebandUpdaterTransport", "create");
    v37 = *a5;
    *a5 = 0;
    if (v37)
    {
      v38 = *(*v37 + 64);

      v38();
    }
  }
}

void sub_1E5369258(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v30 = *v28;
  *v28 = 0;
  if (v30)
  {
    (*(*v30 + 64))(v30, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandUpdaterTransport::IOACIPCHelper::init(BasebandUpdaterTransport::IOACIPCHelper *this, const char *a2, uint64_t a3)
{
  v3 = a3;
  v61 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3052000000;
  v53[3] = __Block_byref_object_copy__3;
  v53[4] = __Block_byref_object_dispose__3;
  v51[4] = v53;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3254779904;
  v52[2] = ___ZN24BasebandUpdaterTransport13IOACIPCHelper4initEPKcj_block_invoke;
  v52[3] = &__block_descriptor_48_e8_32r_e8_v12__0I8l;
  v52[4] = &v54;
  v52[5] = this;
  v53[5] = v52;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3254779904;
  v51[2] = ___ZN24BasebandUpdaterTransport13IOACIPCHelper4initEPKcj_block_invoke_7;
  v51[3] = &__block_descriptor_40_e8_32r_e8_v12__0I8l;
  v58 = 0;
  v6 = IOServiceMatching("IOAppleConvergedIPCInterface");
  v46 = v6;
  if (v6)
  {
    v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x600u);
    v58 = v7;
    if (v7)
    {
      CFDictionarySetValue(v6, @"ACIPCInterfaceProtocol", v7);
      CFDictionarySetValue(v6, @"ACIPCInterfaceProviderDevice", @"cellular");
    }

    else
    {
      LogInstance = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to create CFString for interface protocol\n", "BasebandUpdaterTransport", "getACIPCMatchingDict");
    }

    v8 = CFGetTypeID(v6);
    TypeID = CFDictionaryGetTypeID();
    if (v8 == TypeID)
    {
      v50 = v6;
      TypeID = CFRetain(v6);
    }

    else
    {
      v50 = 0;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    v36 = ACFULogging::getLogInstance(0);
    TypeID = ACFULogging::handleMessage(v36, 2, "%s::%s: Failed to obtain matching dictionary for %s interface\n", "BasebandUpdaterTransport", "getACIPCMatchingDict", "IOAppleConvergedIPCInterface");
    v50 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v10 = v50;
  if (!v50)
  {
    v37 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v37, 2, "%s::%s: Failed to create ACIPC interface matching dictionary\n");
LABEL_41:
    v33 = 0;
    goto LABEL_28;
  }

  v11 = operator new(0xC0uLL);
  *(v11 + 10) = 0u;
  *(v11 + 11) = 0u;
  *(v11 + 8) = 0u;
  *(v11 + 9) = 0u;
  *(v11 + 6) = 0u;
  *(v11 + 7) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  IOACIPCClass::IOACIPCClass(v11);
  *v11 = MEMORY[0x1E69E50D8] + 16;
  v12 = *(this + 1);
  *(this + 1) = v11;
  if (v12)
  {
    v13 = (*(*v12 + 8))(v12);
    if (!*(this + 1))
    {
      v39 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v39, 2, "%s::%s: Failed to create ACIPC interface object\n");
      goto LABEL_41;
    }
  }

  v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v15 = dispatch_queue_create("com.apple.bbu.acipcTransport", v14);
  v16 = *(this + 2);
  *(this + 2) = v15;
  if (v16)
  {
    dispatch_release(v16);
    v15 = *(this + 2);
  }

  if (!v15)
  {
    v40 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v40, 2, "%s::%s: Failed to create ACIPC dispatch queue\n");
    goto LABEL_41;
  }

  v17 = operator new(0x78uLL);
  *(v17 + 14) = 0;
  *v17 = 1018212795;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 5) = 0;
  *(v17 + 6) = 850045863;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 100) = 0u;
  v18 = *(this + 3);
  *(this + 3) = v17;
  if (v18)
  {
    std::mutex::~mutex((v18 + 48));
    std::condition_variable::~condition_variable(v18);
    operator delete(v19);
    if (!*(this + 3))
    {
      v41 = ACFULogging::getLogInstance(v17);
      ACFULogging::handleMessage(v41, 2, "%s::%s: Failed to create syncher\n");
      goto LABEL_41;
    }
  }

  v20 = ACFULogging::getLogInstance(v17);
  v21 = ACFULogging::handleMessage(v20, 0, "%s::%s: Opening ACIPC interface\n", "BasebandUpdaterTransport", "init");
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v23 = *(this + 1);
  v22 = *(this + 2);
  v24 = ACFULogging::getLogInstance(v21);
  ACFULogging::handleMessage(v24, 3, "%s::%s: Waiting %u seconds for ACIPC %s interface to start\n", "BasebandUpdaterTransport", "init", v3, a2);
  v25 = (*(*v23 + 24))(v23, v10, v22, v51, &__block_literal_global_8, 0);
  if (v25)
  {
    v59[0] = &unk_1F5F061B8;
    v60 = v59;
    v26 = ACFUSynchronize::Syncher::wait();
    v27 = v60;
    if (v60 == v59)
    {
      v27 = (*(*v60 + 32))(v60);
      if ((v26 & 1) == 0)
      {
LABEL_24:
        v28 = *(this + 2);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3254779904;
        block[2] = ___ZN24BasebandUpdaterTransport13IOACIPCHelper4initEPKcj_block_invoke_2;
        block[3] = &__block_descriptor_48_e8_32r40r_e5_v8__0l;
        block[4] = v53;
        block[5] = &v46;
        dispatch_sync(v28, block);
      }
    }

    else
    {
      if (v60)
      {
        v27 = (*(*v60 + 40))(v60);
      }

      if ((v26 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (*(v47 + 24) == 1)
    {
      v43 = ACFULogging::getLogInstance(v27);
      ACFULogging::handleMessage(v43, 2, "%s::%s: ACIPC start interface timeout\n", "BasebandUpdaterTransport", "init");
    }

    else
    {
      v29 = (*(**(this + 1) + 40))(*(this + 1), *(v55 + 6));
      v30 = v29;
      if (!v29)
      {
        _Block_object_dispose(&v46, 8);
        v32 = ACFULogging::getLogInstance(v31);
        ACFULogging::handleMessage(v32, 3, "%s::%s: ACIPC %s interface opened successfully\n", "BasebandUpdaterTransport", "init", a2);
        v33 = 1;
        goto LABEL_28;
      }

      v44 = ACFULogging::getLogInstance(v29);
      ACFULogging::handleMessage(v44, 2, "%s::%s: Failed to open ACIPC interface: 0x%08x\n", "BasebandUpdaterTransport", "init", v30);
    }

    goto LABEL_45;
  }

  v42 = ACFULogging::getLogInstance(v25);
  ACFULogging::handleMessage(v42, 2, "%s::%s: Failed to start ACIPC %s interface\n", "BasebandUpdaterTransport", "init", a2);
LABEL_45:
  _Block_object_dispose(&v46, 8);
  v33 = 0;
LABEL_28:
  v34 = *(v55 + 6);
  if (v34)
  {
    IOObjectRelease(v34);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(&v54, 8);
  return v33;
}

void sub_1E5369A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN24BasebandUpdaterTransport13IOACIPCHelper4initEPKcj_block_invoke(ACFULogging *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: Interface added\n", "BasebandUpdaterTransport", "init_block_invoke");
  *(*(*(a1 + 4) + 8) + 24) = a2;
  IOObjectRetain(*(*(*(a1 + 4) + 8) + 24));
  v6[0] = &unk_1F5F06138;
  v7 = v6;
  ACFUSynchronize::Syncher::notify();
  result = v7;
  if (v7 == v6)
  {
    return (*(*v7 + 32))(v7);
  }

  if (v7)
  {
    return (*(*v7 + 40))();
  }

  return result;
}

void sub_1E5369C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::function<void ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN24BasebandUpdaterTransport13IOACIPCHelper4initEPKcj_block_invoke_7(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    result = (*(result + 16))();
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }

  return result;
}

uint64_t ___ZN24BasebandUpdaterTransport13IOACIPCHelper4initEPKcj_block_invoke_2(uint64_t result)
{
  *(*(*(result + 32) + 8) + 40) = 0;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

void BasebandUpdaterTransport::getBoardParameters(BasebandUpdaterTransport *this@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  __dst[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    memset(__dst, 0, 32);
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Retrieving personalization parameters for preflight\n", "BasebandUpdaterTransport", "preflightGetBoardParameters");
    v7 = operator new(0xE8uLL);
    v7->__shared_owners_ = 0;
    v7->__shared_weak_owners_ = 0;
    v7->__vftable = &unk_1F5F06238;
    v8 = operator new(0x40uLL);
    *(&v111 + 1) = v8 + 4;
    *&v112[0] = v8 + 4;
    *v8 = xmmword_1E876EE28;
    v8[1] = *&off_1E876EE38;
    v8[2] = xmmword_1E876EE48;
    v8[3] = *off_1E876EE58;
    *&v111 = v8;
    ACFUCommon::PersonalizeParams::PersonalizeParams();
    if (v111)
    {
      *(&v111 + 1) = v111;
      operator delete(v111);
    }

    v109 = v7 + 1;
    v110 = v7;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v112[0] = v9;
    v112[1] = v9;
    v111 = v9;
    v113 = 0xAAAAAAAAAAAAAAAALL;
    v114 = 0xAAAAAAAAFFFFFFFFLL;
    security::ARICommandDriver::ARICommandDriver();
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v107 = v10;
    v108 = v10;
    v105 = v10;
    v106 = v10;
    AriSdk::ARI_CsiSecGetRandomNumReq_SDK::ARI_CsiSecGetRandomNumReq_SDK(&v105);
    v104 = 0;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v103[2] = v11;
    v103[3] = v11;
    v103[0] = v11;
    v103[1] = v11;
    AriSdk::ARI_GetPersonalizationParametersReq_SDK::ARI_GetPersonalizationParametersReq_SDK(v103);
    *v101 = 0xAAAAAAAAAAAAAAAALL;
    *v102 = 0;
    support::transport::ARI::create("BasebandUpdaterTransport", 0x2710, 0, 0, v101);
    if (!*v101)
    {
      v71 = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(v71, 2, "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n", "BasebandUpdaterTransport", "preflightGetBoardParameters");
      v29 = 3019;
      goto LABEL_13;
    }

    security::ARICommandDriver::ARICommandDriver();
    *&v112[0] = v98;
    LODWORD(v114) = v100;
    std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *> *>>(v112 + 8, v99);
    security::ARICommandDriver::~ARICommandDriver(bytes);
    if (a3)
    {
      RandomNum = security::ARICommandDriver::GetRandomNum();
      if ((RandomNum & 1) == 0)
      {
        v80 = ACFULogging::getLogInstance(RandomNum);
        ACFULogging::handleMessage(v80, 2, "%s::%s: Failed GetRandomNum ARI command\n");
        goto LABEL_62;
      }

      v14 = ACFULogging::getLogInstance(RandomNum);
      v15 = ACFULogging::handleMessage(v14, 4, "%s::%s: BootNonceHash size: %u\n", "BasebandUpdaterTransport", "preflightGetBoardParameters", *(v104[8] + 32));
      v16 = v104[8];
      v17 = v16[8];
      if ((v17 - 33) <= 0xFFFFFFDF)
      {
        v74 = ACFULogging::getLogInstance(v15);
        ACFULogging::handleMessage(v74, 2, "%s::%s: Received unexpected bootNonceHash size %u bytes. Expected > 0 and <= %u bytes\n", "BasebandUpdaterTransport", "preflightGetBoardParameters", *(v104[8] + 32), 32);
        goto LABEL_62;
      }

      memcpy(__dst, v16, v17);
      v18 = CFDataCreate(*MEMORY[0x1E695E480], __dst, 32);
      v7[3].__shared_owners_ = v18;
      LOBYTE(v7[3].__shared_weak_owners_) = v18 != 0;
    }

    PersonalizationParams = security::ARICommandDriver::GetPersonalizationParams();
    if (PersonalizationParams)
    {
      if (**(*v102 + 104) >= 2u)
      {
        v83 = ACFULogging::getLogInstance(PersonalizationParams);
        ACFULogging::handleMessage(v83, 2, "%s::%s: Invalid productionMode\n");
      }

      else
      {
        if (**(*v102 + 120) < 2u)
        {
          *bytes = **(*v102 + 64);
          v20 = *MEMORY[0x1E695E480];
          v21 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 2);
          v7[2].__vftable = v21;
          LOBYTE(v7[2].__shared_owners_) = v21 != 0;
          v22 = CFDataCreate(v20, *(*v102 + 72), 2);
          v7[1].__shared_owners_ = v22;
          LOBYTE(v7[1].__shared_weak_owners_) = v22 != 0;
          *bytes = **(*v102 + 80) | (**(*v102 + 88) << 32);
          v23 = CFDataCreate(v20, bytes, 8);
          v7[2].__shared_weak_owners_ = v23;
          LOBYTE(v7[3].__vftable) = v23 != 0;
          v24 = CFDataCreate(v20, *(*v102 + 96), 1);
          v7[6].__shared_weak_owners_ = v24;
          LOBYTE(v7[7].__vftable) = v24 != 0;
          bytes[0] = **(*v102 + 104);
          v25 = CFDataCreate(v20, bytes, 1);
          v7[4].__shared_weak_owners_ = v25;
          LOBYTE(v7[5].__vftable) = v25 != 0;
          v26 = CFDataCreate(v20, *(*v102 + 112), 1);
          v7[5].__shared_owners_ = v26;
          LOBYTE(v7[5].__shared_weak_owners_) = v26 != 0;
          v27 = CFDataCreate(v20, *(*v102 + 120), 1);
          v7[6].__vftable = v27;
          LOBYTE(v7[6].__shared_owners_) = v27 != 0;
          v28 = ACFULogging::getLogInstance(v27);
          ACFULogging::handleMessage(v28, 0, "%s::%s: Retrieved personalization parameters for preflight successfully\n", "BasebandUpdaterTransport", "preflightGetBoardParameters");
          ACFUCommon::PersonalizeParams::logParameters(&v7[1]);
          v29 = 0;
          goto LABEL_13;
        }

        v85 = ACFULogging::getLogInstance(PersonalizationParams);
        ACFULogging::handleMessage(v85, 2, "%s::%s: Invalid uidMode\n");
      }

      v29 = 3011;
LABEL_13:
      if (v104)
      {
        (*(*v104 + 16))(v104);
      }

      if (*v102)
      {
        (*(**v102 + 16))(*v102);
      }

      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      *a4 = v7 + 1;
      *(a4 + 8) = v7;
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      *(a4 + 16) = v29;
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v30 = *v101;
      *v101 = 0;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }

      MEMORY[0x1E6926C50](v103);
      MEMORY[0x1E6926B30](&v105);
      security::ARICommandDriver::~ARICommandDriver(&v111);
      v31 = v110;
      if (!v110)
      {
        return;
      }

LABEL_46:
      if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }

      return;
    }

    v73 = ACFULogging::getLogInstance(PersonalizationParams);
    ACFULogging::handleMessage(v73, 2, "%s::%s: Failed GetPersonalizationParams ARI command\n");
LABEL_62:
    v29 = 3000;
    goto LABEL_13;
  }

  v111 = 0u;
  v112[0] = 0u;
  LODWORD(v109) = 32;
  *bytes = 57005;
  LODWORD(v104) = 8;
  __dst[0] = 0xDEADBEEFDEADBEEFLL;
  v102[0] = 8;
  *v101 = 0;
  *v95 = 0;
  v96 = 4;
  v94 = 4;
  *v93 = -8531;
  v92 = -34;
  v91 = -34;
  v90 = -34;
  v89 = -34;
  v88 = -34;
  v33 = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(v33, 3, "%s::%s: Retrieving personalization parameters for live boot\n", "BasebandUpdaterTransport", "liveBootGetBoardParameters");
  v34 = operator new(0xE8uLL);
  v34->__shared_owners_ = 0;
  v34->__shared_weak_owners_ = 0;
  v34->__vftable = &unk_1F5F06238;
  v35 = operator new(0x40uLL);
  *(&v105 + 1) = v35 + 4;
  *&v106 = v35 + 4;
  *v35 = xmmword_1E876EE28;
  v35[1] = *&off_1E876EE38;
  v35[2] = xmmword_1E876EE48;
  v35[3] = *off_1E876EE58;
  *&v105 = v35;
  ACFUCommon::PersonalizeParams::PersonalizeParams();
  if (v105)
  {
    *(&v105 + 1) = v105;
    operator delete(v105);
  }

  *&v103[0] = v34 + 1;
  *(&v103[0] + 1) = v34;
  *&v105 = 0;
  ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
  v37 = operator new(0x20uLL);
  *(v37 + 1) = 0;
  *v37 = &unk_1F5F05FE8;
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  v38 = BasebandUpdaterTransport::IOACIPCHelper::init(v37, "rom", (ScaledTime / 1000000));
  if ((v38 & 1) == 0)
  {
    v67 = (*(*v37 + 8))(v37);
    v68 = ACFULogging::getLogInstance(v67);
    v69 = ACFULogging::handleMessage(v68, 2, "%s::%s: Failed to init IOACIPCHelper\n", "BasebandUpdaterTransport", "create");
    v70 = ACFULogging::getLogInstance(v69);
    ACFULogging::handleMessage(v70, 2, "%s::%s: Failed to open ACIPC %s interface\n", "BasebandUpdaterTransport", "liveBootGetBoardParameters", "rom");
    v37 = 0;
    v66 = 3019;
    goto LABEL_41;
  }

  *&v105 = *(v37 + 1);
  if (!v105)
  {
    v72 = ACFULogging::getLogInstance(v38);
    ACFULogging::handleMessage(v72, 2, "%s::%s: Failed to get the ACIPC interface object\n", "BasebandUpdaterTransport", "liveBootGetBoardParameters");
    v66 = 3000;
    goto LABEL_41;
  }

  v39 = MEMORY[0x1E695E480];
  if (a3)
  {
    BootNonce = ACFUACIPCTransport::generateBootNonce(this, &v105);
    v41 = BootNonce;
    if (BootNonce)
    {
      v81 = ACFULogging::getLogInstance(BootNonce);
      ACFULogging::handleMessage(v81, 2, "%s::%s: Failed to generate bootNonce (ret: 0x%08x)\n", "BasebandUpdaterTransport", "liveBootGetBoardParameters", v41);
      v66 = 3008;
      goto LABEL_41;
    }

    Register = ACFUACIPCTransport::readRegister(this, &v105, 5, &v111, &v109);
    v43 = Register;
    if (Register)
    {
      v82 = ACFULogging::getLogInstance(Register);
      ACFULogging::handleMessage(v82, 2, "%s::%s: Failed to get bootNonceHash0 (ret: 0x%08x)\n", "BasebandUpdaterTransport", "liveBootGetBoardParameters", v43);
      v66 = 3017;
      goto LABEL_41;
    }

    v44 = ACFULogging::getLogInstance(Register);
    v45 = ACFULogging::handleMessage(v44, 4, "%s::%s: BootNonceHash size: %u\n", "BasebandUpdaterTransport", "liveBootGetBoardParameters", v109);
    if ((v109 - 33) <= 0xFFFFFFDF)
    {
      v84 = ACFULogging::getLogInstance(v45);
      ACFULogging::handleMessage(v84, 2, "%s::%s: Bad bootNonceHash size %u\n", "BasebandUpdaterTransport", "liveBootGetBoardParameters", v109);
      v66 = 3018;
      goto LABEL_41;
    }

    v46 = *v39;
    v47 = CFDataCreate(*v39, &v111, 32);
    v34[3].__shared_owners_ = v47;
    LOBYTE(v34[3].__shared_weak_owners_) = v47 != 0;
    v48 = ACFUACIPCTransport::readRegister(this, &v105, 13, bytes, &v104);
    v49 = v48;
    if (v48)
    {
      v86 = ACFULogging::getLogInstance(v48);
      ACFULogging::handleMessage(v86, 2, "%s::%s: Failed to get bootNonce (ret: 0x%08x)\n", "BasebandUpdaterTransport", "liveBootGetBoardParameters", v49);
      v66 = 3007;
      goto LABEL_41;
    }

    v50 = ACFULogging::getLogInstance(v48);
    v51 = ACFULogging::handleMessage(v50, 4, "%s::%s: BootNonce size: %u\n", "BasebandUpdaterTransport", "liveBootGetBoardParameters", v104);
    if ((v104 - 9) <= 0xFFFFFFF7)
    {
      v87 = ACFULogging::getLogInstance(v51);
      ACFULogging::handleMessage(v87, 2, "%s::%s: Bad bootNonce size %u\n", "BasebandUpdaterTransport", "liveBootGetBoardParameters", v104);
      v66 = 3009;
      goto LABEL_41;
    }

    v52 = CFDataCreate(v46, bytes, 8);
    v34[4].__vftable = v52;
    LOBYTE(v34[4].__shared_owners_) = v52 != 0;
  }

  v53 = ACFUACIPCTransport::readRegister(this, &v105, 3, __dst, v102);
  if (v53 || __dst[0] == 0xDEADBEEFDEADBEEFLL)
  {
    v75 = ACFULogging::getLogInstance(v53);
    ACFULogging::handleMessage(v75, 2, "%s::%s: Failed to get ecid\n");
LABEL_56:
    v66 = 3025;
    goto LABEL_41;
  }

  v54 = ACFUACIPCTransport::readRegister(this, &v105, 2, v101, &v96);
  if (v54)
  {
    v76 = ACFULogging::getLogInstance(v54);
    ACFULogging::handleMessage(v76, 2, "%s::%s: Failed to get chip information\n");
    goto LABEL_56;
  }

  v92 = v101[0];
  if (v101[0] == 222)
  {
    v77 = ACFULogging::getLogInstance(v54);
    ACFULogging::handleMessage(v77, 2, "%s::%s: Invalid boardID\n");
  }

  else
  {
    *v93 = *&v101[2];
    if (*&v101[2] == 57005)
    {
      v78 = ACFULogging::getLogInstance(v54);
      ACFULogging::handleMessage(v78, 2, "%s::%s: Invalid chipId\n");
    }

    else
    {
      v55 = ACFUACIPCTransport::readRegister(this, &v105, 1, v95, &v94);
      if (!v55)
      {
        v89 = (*v95 >> 7) & 3;
        v91 = (*v95 & 0x200) != 0;
        v90 = (*v95 & 0x400) != 0;
        v88 = (*v95 & 0x800) != 0;
        v56 = *v39;
        v57 = CFDataCreate(*v39, __dst, 8);
        v34[2].__shared_weak_owners_ = v57;
        LOBYTE(v34[3].__vftable) = v57 != 0;
        v58 = CFDataCreate(v56, &v92, 1);
        v34[2].__vftable = v58;
        LOBYTE(v34[2].__shared_owners_) = v58 != 0;
        v59 = CFDataCreate(v56, v93, 2);
        v34[1].__shared_owners_ = v59;
        LOBYTE(v34[1].__shared_weak_owners_) = v59 != 0;
        v60 = CFDataCreate(v56, &v91, 1);
        v34[4].__shared_weak_owners_ = v60;
        LOBYTE(v34[5].__vftable) = v60 != 0;
        v61 = CFDataCreate(v56, &v90, 1);
        v34[5].__shared_owners_ = v61;
        LOBYTE(v34[5].__shared_weak_owners_) = v61 != 0;
        v62 = CFDataCreate(v56, &v89, 1);
        v34[6].__shared_weak_owners_ = v62;
        LOBYTE(v34[7].__vftable) = v62 != 0;
        v63 = CFDataCreate(v56, &v88, 1);
        v34[6].__vftable = v63;
        LOBYTE(v34[6].__shared_owners_) = v63 != 0;
        v64 = ACFUCommon::PersonalizeParams::logParameters(&v34[1]);
        v65 = ACFULogging::getLogInstance(v64);
        ACFULogging::handleMessage(v65, 3, "%s::%s: Retrieved personalization parameters for live boot successfully\n", "BasebandUpdaterTransport", "liveBootGetBoardParameters");
        v66 = 0;
        goto LABEL_41;
      }

      v79 = ACFULogging::getLogInstance(v55);
      ACFULogging::handleMessage(v79, 2, "%s::%s: Failed to get domain mode registers\n");
    }
  }

  v66 = 3011;
LABEL_41:
  atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  *a4 = v34 + 1;
  *(a4 + 8) = v34;
  atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a4 + 16) = v66;
  if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v31 = *(&v103[0] + 1);
  if (*(&v103[0] + 1))
  {
    goto LABEL_46;
  }
}

void sub_1E536AA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E536AA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E536AA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  if (a25)
  {
    (*(*a25 + 8))(a25, a2, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x1E6926C50](&a27, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x1E6926B30](va);
  security::ARICommandDriver::~ARICommandDriver((v36 - 208));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v36 - 224);
  _Unwind_Resume(a1);
}

uint64_t BasebandUpdaterTransport::pushFirmware(uint64_t a1, uint64_t *a2)
{
  v3 = TelephonyBasebandSetBasebandState();
  LogInstance = ACFULogging::getLogInstance(v3);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: ======== ENTERING FIRST BOOT STAGE (ROM) ========\n", "BasebandUpdaterTransport", "pushFirmware");
  ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
  v6 = operator new(0x20uLL);
  *(v6 + 1) = 0;
  *v6 = &unk_1F5F05FE8;
  v7 = ScaledTime;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v8 = "rom";
  v9 = BasebandUpdaterTransport::IOACIPCHelper::init(v6, "rom", (v7 / 1000000));
  if ((v9 & 1) == 0)
  {
LABEL_41:
    v45 = (*(*v6 + 8))(v6);
    v46 = ACFULogging::getLogInstance(v45);
    v41 = ACFULogging::handleMessage(v46, 2, "%s::%s: Failed to init IOACIPCHelper\n", "BasebandUpdaterTransport", "create");
    goto LABEL_42;
  }

  if (*(v6 + 1))
  {
    ctu::AdaptiveTimerService::getScaledTime();
    v10 = a2[1];
    v52 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    ImageOnBTIStage = ACFUACIPCTransport::loadImageOnBTIStage();
    if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = ImageOnBTIStage;
      (v52->__on_zero_shared)(v52);
      std::__shared_weak_count::__release_weak(v52);
      ImageOnBTIStage = v12;
    }

    if (ImageOnBTIStage)
    {
      v38 = ACFULogging::getLogInstance(ImageOnBTIStage);
      ACFULogging::handleMessage(v38, 2, "%s::%s: Failed to load image on FIRST (ROM) boot stage\n", "BasebandUpdaterTransport", "pushFirmware");
      v15 = 0;
      v14 = 3026;
    }

    else
    {
      v13 = ACFULogging::getLogInstance(ImageOnBTIStage);
      ACFULogging::handleMessage(v13, 0, "%s::%s: ======== COMPLETED FIRST BOOT STAGE (ROM) ========\n", "BasebandUpdaterTransport", "pushFirmware");
      v14 = 0;
      v15 = 1;
    }
  }

  else
  {
    v37 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v37, 2, "%s::%s: Failed to get the ACIPC interface object\n", "BasebandUpdaterTransport", "pushFirmware");
    v15 = 0;
    v14 = 3000;
  }

  v16 = (*(*v6 + 8))(v6);
  if (v15)
  {
    v17 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v17, 0, "%s::%s: ======== ENTERING SECOND BOOT STAGE (iBoot) ========\n", "BasebandUpdaterTransport", "pushFirmware");
    v18 = ctu::AdaptiveTimerService::getScaledTime();
    v19 = operator new(0x20uLL);
    *(v19 + 1) = 0;
    *v19 = &unk_1F5F05FE8;
    v20 = v18;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    v8 = "iboot";
    if ((BasebandUpdaterTransport::IOACIPCHelper::init(v19, "iboot", (v20 / 1000000)) & 1) == 0)
    {
      v39 = (*(*v19 + 8))(v19);
      v40 = ACFULogging::getLogInstance(v39);
      v41 = ACFULogging::handleMessage(v40, 2, "%s::%s: Failed to init IOACIPCHelper\n", "BasebandUpdaterTransport", "create");
LABEL_42:
      v47 = ACFULogging::getLogInstance(v41);
      ACFULogging::handleMessage(v47, 2, "%s::%s: Failed to open ACIPC %s interface\n", "BasebandUpdaterTransport", "pushFirmware", v8);
      v14 = 3019;
      goto LABEL_32;
    }

    v21 = validateBootStage(4);
    if (v21)
    {
      if (*(v19 + 1))
      {
        ctu::AdaptiveTimerService::getScaledTime();
        v22 = a2[1];
        v51 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v23 = ACFUACIPCTransport::processRTIStage();
        if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v24 = v23;
          (v51->__on_zero_shared)(v51);
          std::__shared_weak_count::__release_weak(v51);
          v23 = v24;
        }

        if (v23)
        {
          v44 = ACFULogging::getLogInstance(v23);
          ACFULogging::handleMessage(v44, 2, "%s::%s: Failed to load image on SECOND (iBoot) boot stage\n", "BasebandUpdaterTransport", "pushFirmware");
          v26 = 0;
          v14 = 3027;
        }

        else
        {
          v25 = ACFULogging::getLogInstance(v23);
          ACFULogging::handleMessage(v25, 0, "%s::%s: ======== COMPLETED SECOND BOOT STAGE (iBoot) ========\n", "BasebandUpdaterTransport", "pushFirmware");
          v14 = 0;
          v26 = 1;
        }

LABEL_21:
        v27 = (*(*v19 + 8))(v19);
        if (!v26)
        {
          goto LABEL_32;
        }

        v28 = ACFULogging::getLogInstance(v27);
        ACFULogging::handleMessage(v28, 0, "%s::%s: ======== ENTERING THIRD BOOT STAGE (CPS) ========\n", "BasebandUpdaterTransport", "pushFirmware");
        v29 = ctu::AdaptiveTimerService::getScaledTime();
        v6 = operator new(0x20uLL);
        *(v6 + 1) = 0;
        *v6 = &unk_1F5F05FE8;
        v30 = v29;
        *(v6 + 2) = 0;
        *(v6 + 3) = 0;
        v8 = "cps";
        v31 = BasebandUpdaterTransport::IOACIPCHelper::init(v6, "cps", (v30 / 1000000));
        if (v31)
        {
          if (*(v6 + 1))
          {
            ctu::AdaptiveTimerService::getScaledTime();
            v32 = a2[1];
            v50 = v32;
            if (v32)
            {
              atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
            }

            v33 = ACFUACIPCTransport::processRTIStage();
            if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v34 = v33;
              (v50->__on_zero_shared)(v50);
              std::__shared_weak_count::__release_weak(v50);
              v33 = v34;
            }

            if (v33)
            {
              v49 = ACFULogging::getLogInstance(v33);
              ACFULogging::handleMessage(v49, 2, "%s::%s: Failed to load image on THIRD (CPS) boot stage\n", "BasebandUpdaterTransport", "pushFirmware");
              v14 = 3027;
            }

            else
            {
              v35 = ACFULogging::getLogInstance(v33);
              ACFULogging::handleMessage(v35, 0, "%s::%s: ======== COMPLETED THIRD BOOT STAGE (CPS) ========\n", "BasebandUpdaterTransport", "pushFirmware");
              v14 = 0;
            }
          }

          else
          {
            v48 = ACFULogging::getLogInstance(v31);
            ACFULogging::handleMessage(v48, 2, "%s::%s: Failed to get the ACIPC interface object\n", "BasebandUpdaterTransport", "pushFirmware");
            v14 = 3000;
          }

          (*(*v6 + 8))(v6);
          goto LABEL_32;
        }

        goto LABEL_41;
      }

      v43 = ACFULogging::getLogInstance(v21);
      ACFULogging::handleMessage(v43, 2, "%s::%s: Failed to get the ACIPC interface object\n");
    }

    else
    {
      v42 = ACFULogging::getLogInstance(v21);
      ACFULogging::handleMessage(v42, 2, "%s::%s: Unexpected acipc boot stage\n");
    }

    v26 = 0;
    v14 = 3000;
    goto LABEL_21;
  }

LABEL_32:
  TelephonyBasebandSetBasebandState();
  return v14;
}

void sub_1E536B3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  (*(*v16 + 8))(v16);
  _Unwind_Resume(a1);
}

uint64_t ___ZN24BasebandUpdaterTransport12pushFirmwareENSt3__110shared_ptrI12ACFUFirmwareEE_block_invoke(ACFULogging *a1)
{
  v1 = *(a1 + 4);
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Image transfer timeout on ROM stage, aborting via force warm reset\n", "BasebandUpdaterTransport", "pushFirmware_block_invoke");

  return BasebandUpdaterTransport::warmResetForce(v1);
}

uint64_t BasebandUpdaterTransport::warmResetForce(BasebandUpdaterTransport *this)
{
  HardwareModel = TelephonyCapabilitiesGetHardwareModel();
  if (*(HardwareModel + 8) == 3)
  {
    LogInstance = ACFULogging::getLogInstance(HardwareModel);
    v4 = "%s::%s: Skipping force warm reset for ConfigSimConfigSim\n";
LABEL_6:
    v5 = 0;
    return ACFULogging::handleMessage(LogInstance, v5, v4, "BasebandUpdaterTransport", "warmResetForce");
  }

  if (*(this + 200) == 1)
  {
    if (*(this + 203))
    {
LABEL_5:
      LogInstance = ACFULogging::getLogInstance(HardwareModel);
      v4 = "%s::%s: User requested not to force warm reset, skipping...\n";
      goto LABEL_6;
    }

    if (*(this + 202) == 1)
    {
      v6 = MEMORY[0x1E69E9858];
      do
      {
        printf("        %s - %c/%c?: ", "force warm reset", 121, 110);
        fflush(*v6);
        HardwareModel = getchar();
        v7 = HardwareModel;
          ;
        }

        if (i == 110)
        {
          goto LABEL_5;
        }
      }

      while (v7 != 121);
    }
  }

  result = TelephonyBasebandForceResetModem();
  if (result)
  {
    return result;
  }

  LogInstance = ACFULogging::getLogInstance(result);
  v4 = "%s::%s: Failed to force warm reset baseband\n";
  v5 = 2;
  return ACFULogging::handleMessage(LogInstance, v5, v4, "BasebandUpdaterTransport", "warmResetForce");
}

uint64_t validateBootStage(int a1)
{
  v17 = 0;
  valuePtr = 0;
  v2 = IOServiceMatching("AppleConvergedIPCLedaBBControl");
  if (!v2)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to create matching dictionary\n");
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v2);
  v4 = MatchingService;
  if (!MatchingService)
  {
    v13 = ACFULogging::getLogInstance(MatchingService);
    ACFULogging::handleMessage(v13, 2, "%s::%s: Failed to find matching service for BB Control\n");
    return 0;
  }

  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"bootstage", *MEMORY[0x1E695E480], 0);
  v6 = CFProperty;
  v17 = CFProperty;
  if (!CFProperty || (v7 = CFGetTypeID(CFProperty), CFProperty = CFNumberGetTypeID(), v7 != CFProperty))
  {
    v11 = ACFULogging::getLogInstance(CFProperty);
    ACFULogging::handleMessage(v11, 2, "%s::%s: Failed to find boot stage\n");
LABEL_18:
    v9 = 0;
    goto LABEL_8;
  }

  Value = CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
  if (!Value)
  {
    v14 = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(v14, 2, "%s::%s: Failed to determine the value of the boot stage\n");
    goto LABEL_18;
  }

  if (valuePtr != a1)
  {
    v15 = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(v15, 2, "%s::%s: Mismatch - expected boot stage: %u, current boot stage: %u\n", "BasebandUpdaterTransport", "validateBootStage", a1, valuePtr);
    goto LABEL_18;
  }

  v9 = 1;
LABEL_8:
  IOObjectRelease(v4);
  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

void sub_1E536B7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E536B804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN24BasebandUpdaterTransport12pushFirmwareENSt3__110shared_ptrI12ACFUFirmwareEE_block_invoke_2(ACFULogging *a1)
{
  v1 = *(a1 + 4);
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Image transfer timeout on iBoot stage, aborting via force warm reset\n", "BasebandUpdaterTransport", "pushFirmware_block_invoke_2");

  return BasebandUpdaterTransport::warmResetForce(v1);
}

uint64_t ___ZN24BasebandUpdaterTransport12pushFirmwareENSt3__110shared_ptrI12ACFUFirmwareEE_block_invoke_3(ACFULogging *a1)
{
  v1 = *(a1 + 4);
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Image transfer timeout on CPS stage, aborting via force warm reset\n", "BasebandUpdaterTransport", "pushFirmware_block_invoke_3");

  return BasebandUpdaterTransport::warmResetForce(v1);
}

uint64_t ___ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEE_block_invoke(ACFULogging *a1)
{
  v1 = *(a1 + 4);
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Image transfer timeout on ROM stage for coredump, aborting via force warm reset\n", "BasebandUpdaterTransport", "collectCoredump_block_invoke");

  return BasebandUpdaterTransport::warmResetForce(v1);
}

uint64_t ___ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEE_block_invoke_2(ACFULogging *a1)
{
  v1 = *(a1 + 4);
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Image transfer timeout for coredump, aborting via force warm reset\n", "BasebandUpdaterTransport", "collectCoredump_block_invoke_2");

  return BasebandUpdaterTransport::warmResetForce(v1);
}

uint64_t BasebandUpdaterTransport::setNonce(BasebandUpdaterTransport *this, void *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Not implemented\n", "BasebandUpdaterTransport", "setNonce");
  return 0;
}

uint64_t BasebandUpdaterTransport::reset(BasebandUpdaterTransport *this)
{
  HardwareModel = TelephonyCapabilitiesGetHardwareModel();
  if (*(HardwareModel + 8) == 3)
  {
    LogInstance = ACFULogging::getLogInstance(HardwareModel);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Skipping cold reset for ConfigSim\n");
    return 0;
  }

  if (*(this + 200) == 1)
  {
    if (*(this + 203))
    {
LABEL_5:
      v4 = ACFULogging::getLogInstance(HardwareModel);
      ACFULogging::handleMessage(v4, 0, "%s::%s: User requested not to cold reset, skipping...\n");
      return 0;
    }

    if (*(this + 202) == 1)
    {
      v6 = MEMORY[0x1E69E9858];
      do
      {
        printf("        %s - %c/%c?: ", "Cold reset", 121, 110);
        fflush(*v6);
        HardwareModel = getchar();
        v7 = HardwareModel;
          ;
        }

        if (i == 110)
        {
          goto LABEL_5;
        }
      }

      while (v7 != 121);
    }
  }

  v9 = ACFULogging::getLogInstance(HardwareModel);
  ACFULogging::handleMessage(v9, 0, "%s::%s: Cold resetting baseband...\n", "BasebandUpdaterTransport", "reset");
  v10 = TelephonyBasebandPowercycleModem();
  result = 0;
  if ((v10 & 1) == 0)
  {
    v11 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v11, 2, "%s::%s: failed to cold reset baseband\n", "BasebandUpdaterTransport", "reset");
    return 1;
  }

  return result;
}

ACFULogging *BasebandUpdaterTransport::pingCheck(BasebandUpdaterTransport *this)
{
  v2 = capabilities::updater::pingDelay(this);
  v22 = v2;
  v3 = capabilities::updater::pingAttemptCount(v2);
  v4 = *(this + 22);
  if (!v4)
  {
    goto LABEL_13;
  }

  v4 = std::__shared_weak_count::lock(v4);
  v21 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = *(this + 21);
  __ns.__rep_ = v5;
  if (v5)
  {
    v6 = *(v5 + 120);
    if (v6)
    {
      v7 = v4;
      value = 0;
      if (CFDictionaryGetValueIfPresent(v6, @"waitForReadyDelayMilliseconds", &value))
      {
        v8 = value;
        if (value)
        {
          v9 = CFGetTypeID(value);
          if (v9 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v22, v8, v10);
          }
        }
      }

      v4 = v7;
    }

    if (*(v5 + 416))
    {
      v3 = *(v5 + 408);
    }
  }

  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_13:
    LogInstance = ACFULogging::getLogInstance(v4);
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_22:
    ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Skipping baseband ping\n", "BasebandUpdaterTransport", "pingCheck");
    return 0;
  }

  v16 = v4;
  (v4->__on_zero_shared)();
  std::__shared_weak_count::__release_weak(v16);
  LogInstance = ACFULogging::getLogInstance(v17);
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_14:
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Pinging baseband with %u ms delay and %zu attempts\n", "BasebandUpdaterTransport", "pingCheck", v22, v3);
  if (v22)
  {
    __ns.__rep_ = 1000000 * v22;
    std::this_thread::sleep_for (&__ns);
  }

  v12 = v3 - 1;
  v13 = 1;
  while (1)
  {
    FWVersion = BasebandUpdaterTransport::pingAndGetFWVersion(this, 0);
    v15 = ACFULogging::getLogInstance(FWVersion);
    if (!FWVersion)
    {
      break;
    }

    ACFULogging::handleMessage(v15, 2, "%s::%s: Ping failed, %zu attempts left\n", "BasebandUpdaterTransport", "pingCheck", v12);
    ++v13;
    --v12;
    if (v13 > v3)
    {
      return FWVersion;
    }
  }

  ACFULogging::handleMessage(v15, 3, "%s::%s: Ping success on attempt %zu\n", "BasebandUpdaterTransport", "pingCheck", v13);
  return FWVersion;
}

void sub_1E536BD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t BasebandUpdaterTransport::pingAndGetFWVersion(BasebandUpdaterTransport *this, const __CFDictionary **a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v65 = capabilities::updater::pingTimeout(this);
  v3 = *(this + 22);
  if (v3)
  {
    v3 = std::__shared_weak_count::lock(v3);
    __ns[1].__rep_ = v3;
    if (v3)
    {
      v4 = *(this + 21);
      __ns[0].__rep_ = v4;
      if (v4)
      {
        v5 = *(v4 + 120);
        if (v5)
        {
          v6 = v3;
          value[0] = 0;
          if (CFDictionaryGetValueIfPresent(v5, @"pingTimeoutMilliseconds", value))
          {
            v7 = value[0];
            if (value[0])
            {
              v8 = CFGetTypeID(value[0]);
              if (v8 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v65, v7, v9);
              }
            }
          }

          v3 = v6;
        }
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  LogInstance = ACFULogging::getLogInstance(v3);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Using %u ms timeout for ping\n", "BasebandUpdaterTransport", "pingAndGetFWVersion", v65);
  v12.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v13 = 0;
  while (1)
  {
    *&v85 = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v83 = v14;
    v84 = v14;
    *&__ns[0].__rep_ = v14;
    *(&v85 + 1) = 0xAAAAAAAAFFFFFFFFLL;
    Bsp::ARICommandDriver::ARICommandDriver();
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v71 = v15;
    v72 = v15;
    *value = v15;
    v70 = v15;
    AriSdk::ARI_CsiGetCurrentBootStateReq_SDK::ARI_CsiGetCurrentBootStateReq_SDK(value);
    v66[0] = 0;
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v81 = 0xAAAAAAAAAAAAAAAALL;
    support::transport::ARI::create("BasebandUpdaterTransport", (ScaledTime / 1000), 1, 0, &v81);
    if (v81)
    {
      Bsp::ARICommandDriver::ARICommandDriver();
      *&v83 = v75;
      DWORD2(v85) = v78;
      std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *> *>>(&v83 + 8, *(&v76 + 1));
      Bsp::ARICommandDriver::~ARICommandDriver(&v74);
      CurrentBootState = Bsp::ARICommandDriver::GetCurrentBootState();
      if (CurrentBootState)
      {
        v19 = 1;
        v20 = v81;
        v81 = 0;
        if (!v20)
        {
          goto LABEL_17;
        }

LABEL_16:
        v20 = (*(*v20 + 8))(v20);
        goto LABEL_17;
      }

      v31 = ACFULogging::getLogInstance(CurrentBootState);
      ACFULogging::handleMessage(v31, 2, "%s::%s: Failed GetCurrentBootState ARI command\n");
    }

    else
    {
      v30 = ACFULogging::getLogInstance(v17);
      ACFULogging::handleMessage(v30, 2, "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n");
    }

    v19 = 0;
    v20 = v81;
    v81 = 0;
    if (v20)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (!v19)
    {
      v22 = v66[0];
      if (!v66[0])
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v21 = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(v21, 3, "%s::%s: Baseband boot state: %d\n", "BasebandUpdaterTransport", "ping", **(v66[0] + 8));
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
    v22 = v66[0];
    v23 = **(v66[0] + 8);
    v24 = v23 == 4;
    v25 = (v23 - 3) < 2;
    v13 = ((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1) != 0 ? v25 : v24;
LABEL_24:
    (*(*v22 + 16))(v22);
LABEL_25:
    MEMORY[0x1E6926BF0](value);
    Bsp::ARICommandDriver::~ARICommandDriver(__ns);
    if (v19)
    {
      break;
    }

    v27.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v28 = (v27.__d_.__rep_ - v12.__d_.__rep_) / 1000 < v65;
    v29 = ACFULogging::getLogInstance(v27.__d_.__rep_);
    if (!v28)
    {
      ACFULogging::handleMessage(v29, 3, "%s::%s: Ping timeout\n", "BasebandUpdaterTransport", "pingAndGetFWVersion");
      return 3003;
    }

    ACFULogging::handleMessage(v29, 3, "%s::%s: Ping returned failure but did not timeout. Waiting for 500 ms and trying again\n", "BasebandUpdaterTransport", "pingAndGetFWVersion");
    __ns[0].__rep_ = 500000000;
    std::this_thread::sleep_for (__ns);
  }

  v32 = ACFULogging::getLogInstance(v26);
  if (!v13)
  {
    ACFULogging::handleMessage(v32, 3, "%s::%s: Ping returned success, but baseband boot state is not ready. Treating as failed\n", "BasebandUpdaterTransport", "pingAndGetFWVersion");
    v51.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v52 = (LODWORD(v51.__d_.__rep_) - LODWORD(v12.__d_.__rep_)) / 1000;
    if (v65 > v52)
    {
      v53 = ACFULogging::getLogInstance(v51.__d_.__rep_);
      ACFULogging::handleMessage(v53, 3, "%s::%s: Waiting for %u ms\n", "BasebandUpdaterTransport", "pingAndGetFWVersion", v65 - v52);
      if (v65 != v52)
      {
        __ns[0].__rep_ = 1000000 * (v65 - v52);
        std::this_thread::sleep_for (__ns);
      }
    }

    return 3003;
  }

  ACFULogging::handleMessage(v32, 3, "%s::%s: Ping returned success and baseband boot state is ready. Getting the FW version\n", "BasebandUpdaterTransport", "pingAndGetFWVersion");
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  *&__ns[0].__rep_ = 0u;
  v83 = 0u;
  v77 = 0xAAAAAAAAAAAAAAAALL;
  *&v33 = 0xAAAAAAAAAAAAAAAALL;
  *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v75 = v33;
  v76 = v33;
  v74 = v33;
  v78 = -1;
  v79 = -1431655766;
  Bsp::ARICommandDriver::ARICommandDriver();
  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v34 = 0xAAAAAAAAAAAAAAAALL;
  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v71 = v34;
  v72 = v34;
  *value = v34;
  v70 = v34;
  AriSdk::ARI_CsiSysGetInfoReqV2_SDK::ARI_CsiSysGetInfoReqV2_SDK(value);
  v68 = 0;
  v81 = 0xAAAAAAAAAAAAAAAALL;
  support::transport::ARI::create("BasebandUpdaterTransport", 0x2710, 1, 0, &v81);
  if (v81)
  {
    Bsp::ARICommandDriver::ARICommandDriver();
    *&v75 = v66[2];
    v78 = v67;
    std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *> *>>(&v75 + 8, v66[5]);
    Bsp::ARICommandDriver::~ARICommandDriver(v66);
    v36 = operator new(4uLL);
    *v36 = 4;
    v37 = v73;
    v73 = v36;
    if (v37)
    {
      operator delete(v37);
    }

    InfoV2 = Bsp::ARICommandDriver::SysGetInfoV2();
    if (InfoV2)
    {
      v39 = 1;
      v40 = v81;
      v81 = 0;
      if (v40)
      {
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    v59 = ACFULogging::getLogInstance(InfoV2);
    ACFULogging::handleMessage(v59, 2, "%s::%s: Failed SysGetInfoV2 ARI command\n");
  }

  else
  {
    v58 = ACFULogging::getLogInstance(v35);
    ACFULogging::handleMessage(v58, 2, "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n");
  }

  v39 = 0;
  v40 = v81;
  v81 = 0;
  if (v40)
  {
LABEL_40:
    v40 = (*(*v40 + 8))(v40);
  }

LABEL_41:
  if (!v39)
  {
    goto LABEL_59;
  }

  v41 = *(v68 + 64);
  if (v41[129])
  {
    v60 = ACFULogging::getLogInstance(v40);
    ACFULogging::handleMessage(v60, 2, "%s::%s: SysGetInfoV2 response err_stat is: %d\n");
    goto LABEL_72;
  }

  v42 = v41[128];
  if (v42 >= 0x201)
  {
    v61 = ACFULogging::getLogInstance(v40);
    ACFULogging::handleMessage(v61, 2, "%s::%s: SysGetInfoV2 response contains invalid info_valid_str_len: %d\n");
    goto LABEL_72;
  }

  if (v42 >= 0x100)
  {
    v62 = ACFULogging::getLogInstance(v40);
    ACFULogging::handleMessage(v62, 2, "%s::%s: Invalid Baseband FW version size (%d)\n");
LABEL_72:
    LOBYTE(v39) = 0;
    v50 = v68;
    if (!v68)
    {
      goto LABEL_61;
    }

LABEL_60:
    (*(*v50 + 16))(v50);
    goto LABEL_61;
  }

  v43 = memcpy(__ns, v41, v41[128]);
  *(&__ns[0].__rep_ + v42) = 0;
  v44 = ACFULogging::getLogInstance(v43);
  ACFULogging::handleMessage(v44, 3, "%s::%s: Baseband FW version: %s\n", "BasebandUpdaterTransport", "getFWVersion", __ns);
  if (!a2)
  {
    goto LABEL_51;
  }

  v45 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v54 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v54, 2, "%s::%s: Failed to create output dictionary\n");
LABEL_58:
    LOBYTE(v39) = 0;
LABEL_59:
    v50 = v68;
    if (!v68)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v81 = @"FirmwareVersion";
  CFRetain(@"FirmwareVersion");
  v66[0] = 0;
  ctu::cf::convert_copy(v66, __ns, 0x8000100, v45, v47);
  v48 = v66[0];
  v80 = v66[0];
  if (v66[0])
  {
    CFDictionaryAddValue(Mutable, @"FirmwareVersion", v66[0]);
    CFRelease(v48);
  }

  CFRelease(@"FirmwareVersion");
  if (!v48)
  {
    v63 = ACFULogging::getLogInstance(v49);
    ACFULogging::handleMessage(v63, 2, "%s::%s: Failed to insert fw version to output dictionary\n");
    goto LABEL_58;
  }

  *a2 = Mutable;
LABEL_51:
  LOBYTE(v39) = 1;
  v50 = v68;
  if (v68)
  {
    goto LABEL_60;
  }

LABEL_61:
  MEMORY[0x1E6926A70](value);
  Bsp::ARICommandDriver::~ARICommandDriver(&v74);
  if (v39)
  {
    return 0;
  }

  v57 = ACFULogging::getLogInstance(v55);
  ACFULogging::handleMessage(v57, 2, "%s::%s: Failed to get the baseband FW version\n", "BasebandUpdaterTransport", "pingAndGetFWVersion");
  return 3003;
}

void sub_1E536C654(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t BasebandUpdaterTransport::getDebugInfo(uint64_t a1, uint64_t a2)
{
  __dst[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 201) != 1)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Skipping gathering of debug info as requested by the client\n", "BasebandUpdaterTransport", "getDebugInfo");
    return 0;
  }

  LOBYTE(__dst[0]) = 0;
  Reset = TelephonyBasebandGetReset();
  if ((Reset & 1) == 0)
  {
    v7 = ACFULogging::getLogInstance(Reset);
    Reset = ACFULogging::handleMessage(v7, 2, "%s::%s: Failed to get baseband reset state\n", "BasebandUpdaterTransport", "crashBaseband");
    LOBYTE(__dst[0]) = 0;
  }

  v8 = capabilities::coredump::supportsSPMISignalling(Reset);
  v9 = v8;
  v10 = ACFULogging::getLogInstance(v8);
  if (v9)
  {
    ACFULogging::handleMessage(v10, 0, "%s::%s: Crashing baseband (SPMI)\n", "BasebandUpdaterTransport", "crashBaseband");
    memset(v170, 170, 24);
    if (*(a1 + 231) < 0)
    {
      std::string::__init_copy_ctor_external(v170, *(a1 + 208), *(a1 + 216));
      if (*(a1 + 231) < 0)
      {
        **(a1 + 208) = 0;
        *(a1 + 216) = 0;
        v134 = v170[23];
        v21 = v170[23];
        if (v170[23] < 0)
        {
          v134 = *&v170[8];
        }

        if (!v134)
        {
          goto LABEL_28;
        }

        goto LABEL_29;
      }
    }

    else
    {
      *v170 = *(a1 + 208);
      *&v170[16] = *(a1 + 224);
    }

    *(a1 + 208) = 0;
    *(a1 + 231) = 0;
    v20 = v170[23];
    v21 = v170[23];
    if (v170[23] < 0)
    {
      v20 = *&v170[8];
    }

    if (!v20)
    {
LABEL_28:
      std::string::__assign_external(v170, "BasebandUpdaterTransport::crashBaseband()", 0x29uLL);
      v21 = v170[23];
    }

LABEL_29:
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__p[6] = v22;
    *&__p[2] = v22;
    *&__p[4] = v22;
    *__p = v22;
    LOBYTE(__p[0]) = 12;
    v23 = &__p[1];
    if (v21 < 0)
    {
      std::string::__init_copy_ctor_external(&__p[1], *v170, *&v170[8]);
    }

    else
    {
      *&__p[1] = *v170;
      __p[3] = *&v170[16];
    }

    LOBYTE(__p[4]) = 1;
    memset(&__p[5], 0, 24);
    v24 = capabilities::coredump::supportsSPMIResetReasonEncoding(v23);
    if (v24)
    {
      v169 = -86;
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v167 = v25;
      v168 = v25;
      __src = v25;
      v166 = v25;
      ResetReasonEncoder::encode(__p, &__src);
      if (v169 == 1)
      {
        v27 = TelephonyBasebandCrashModemWithSPMIWithReason();
        if ((v27 & 1) == 0)
        {
          v28 = ACFULogging::getLogInstance(v27);
          ACFULogging::handleMessage(v28, 2, "%s::%s: Failed to crash baseband via SPMI (with reason)\n");
          goto LABEL_243;
        }

LABEL_39:
        v34 = 1;
        v17 = __p[5];
        if (!__p[5])
        {
LABEL_41:
          if (LOBYTE(__p[4]) == 1 && SHIBYTE(__p[3]) < 0)
          {
            operator delete(__p[1]);
          }

          if ((v170[23] & 0x80000000) != 0)
          {
            operator delete(*v170);
          }

          if ((v34 & 1) == 0)
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        }

LABEL_40:
        __p[6] = v17;
        operator delete(v17);
        goto LABEL_41;
      }

      v32 = ACFULogging::getLogInstance(v26);
      ACFULogging::handleMessage(v32, 2, "%s::%s: Failed to encode reset reason, so crashing baseband with SPMI without specifying reason\n", "BasebandUpdaterTransport", "crashBaseband");
      v33 = TelephonyBasebandCrashModemWithSPMI();
      if (v33)
      {
        goto LABEL_39;
      }

      v157 = ACFULogging::getLogInstance(v33);
      ACFULogging::handleMessage(v157, 2, "%s::%s: Failed to crash baseband via SPMI\n");
    }

    else
    {
      v29 = ACFULogging::getLogInstance(v24);
      ACFULogging::handleMessage(v29, 4, "%s::%s: reset reason encoding is not supported, so crashing baseband with SPMI without specifying reason\n", "BasebandUpdaterTransport", "crashBaseband");
      v30 = TelephonyBasebandCrashModemWithSPMI();
      if (v30)
      {
        goto LABEL_39;
      }

      v31 = ACFULogging::getLogInstance(v30);
      ACFULogging::handleMessage(v31, 2, "%s::%s: Failed to crash baseband via SPMI\n", "BasebandUpdaterTransport", "crashBaseband");
    }

LABEL_243:
    v34 = 0;
    v17 = __p[5];
    if (!__p[5])
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  ACFULogging::handleMessage(v10, 0, "%s::%s: Crashing baseband (ARI)\n", "BasebandUpdaterTransport", "crashBaseband");
  *v170 = 0xAAAAAAAAAAAAAAAALL;
  support::transport::ARI::create("BasebandUpdaterTransport", 0x2710, 0, 0, v170);
  if (*v170)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v166 = v12;
    v167 = v12;
    __src = v12;
    *&v168 = 0xAAAAAAAAAAAAAAAALL;
    *(&v168 + 1) = 0xAAAAAAAAFFFFFFFFLL;
    Bsp::BspCommandDriver::BspCommandDriver();
    __p[0] = operator new(0x28uLL);
    *&__p[1] = xmmword_1E538EA40;
    strcpy(__p[0], "AP triggered baseband reset over ARI");
    v13 = Bsp::BspCommandDriver::SwTrap();
    operator delete(__p[0]);
    if ((v13 & 1) == 0)
    {
      v156 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v156, 2, "%s::%s: Failed to send SW Trap\n", "BasebandUpdaterTransport", "crashBaseband");
    }

    v15 = *(&v167 + 1);
    if (*(&v167 + 1))
    {
      do
      {
        v18 = *v15;
        v19 = v15[3];
        if (v19)
        {
          _Block_release(v19);
        }

        operator delete(v15);
        v15 = v18;
      }

      while (v18);
    }

    v16 = *(&v166 + 1);
    *(&v166 + 1) = 0;
    if (v16)
    {
      operator delete(v16);
    }

    if (*(&__src + 1))
    {
      std::__shared_weak_count::__release_weak(*(&__src + 1));
    }

    v17 = *v170;
    *v170 = 0;
    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v155 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v155, 2, "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n", "BasebandUpdaterTransport", "crashBaseband");
    v13 = 0;
    v17 = *v170;
    *v170 = 0;
    if (v17)
    {
LABEL_18:
      v17 = (*(*v17 + 8))(v17);
    }
  }

  if ((v13 & 1) == 0)
  {
LABEL_47:
    v35 = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(v35, 2, "%s::%s: Failed to crash Baseband, proceeding with coredump anyway\n", "BasebandUpdaterTransport", "getDebugInfo");
  }

LABEL_48:
  v178 = 0xAAAAAAAAAAAAAAAALL;
  *&v36 = 0xAAAAAAAAAAAAAAAALL;
  *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v177[8] = v36;
  v177[7] = v36;
  v177[6] = v36;
  v177[5] = v36;
  v177[4] = v36;
  v177[3] = v36;
  v177[2] = v36;
  v177[1] = v36;
  v177[0] = v36;
  v176 = v36;
  v175 = v36;
  v174 = v36;
  v173 = v36;
  v172 = v36;
  v171 = v36;
  *&v170[16] = v36;
  *v170 = v36;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v170);
  cf = 0;
  LODWORD(v162) = 0;
  PMUTrace = TelephonyBasebandGetPMUTrace();
  if (PMUTrace)
  {
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v170[16], "Baseband PMU trace: ", 20);
    v39 = TelephonyBasebandPMUTraceToString();
    v40 = strlen(v39);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, v40);
    std::ios_base::getloc((v41 + *(*v41 - 24)));
    v42 = std::locale::use_facet(&__src, MEMORY[0x1E69E5318]);
    (v42->__vftable[2].~facet_0)(v42, 10);
    std::locale::~locale(&__src);
    std::ostream::put();
    std::ostream::flush();
  }

  else
  {
    v43 = ACFULogging::getLogInstance(PMUTrace);
    ACFULogging::handleMessage(v43, 0, "%s::%s: Failed to get Baseband PMU trace (not fatal)\n", "BasebandUpdaterTransport", "collectPreCoredump");
  }

  v44 = ACFUDiagnostics::copyDiagnosticsPath(*(a1 + 8));
  cf = v44;
  if (!v44)
  {
    v135 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v135, 2, "%s::%s: Invalid coredump path\n", "BasebandUpdaterTransport", "collectPreCoredump");
    goto LABEL_157;
  }

  bzero(&__src, 0x400uLL);
  CFStringGetCString(v44, &__src, 1024, 0x8000100u);
  memset(__dst, 170, 24);
  v45 = strlen(&__src);
  if (v45 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v46 = v45;
  if (v45 >= 0x17)
  {
    if ((v45 | 7) == 0x17)
    {
      v48 = 25;
    }

    else
    {
      v48 = (v45 | 7) + 1;
    }

    v47 = operator new(v48);
    __dst[1] = v46;
    __dst[2] = (v48 | 0x8000000000000000);
    __dst[0] = v47;
    goto LABEL_60;
  }

  HIBYTE(__dst[2]) = v45;
  v47 = __dst;
  if (v45)
  {
LABEL_60:
    memcpy(v47, &__src, v46);
  }

  *(v46 + v47) = 0;
  memset(__p, 170, 0x238uLL);
  v49 = SHIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v50 = HIBYTE(__dst[2]);
  }

  else
  {
    v50 = __dst[1];
  }

  v51 = v50 + 1;
  if (v50 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v51 < 0x17)
  {
    v158[1] = 0;
    v159 = 0;
    v158[0] = 0;
    v53 = v158;
    HIBYTE(v159) = v50 + 1;
    if (!v50)
    {
      goto LABEL_75;
    }
  }

  else
  {
    if ((v51 | 7) == 0x17)
    {
      v52 = 25;
    }

    else
    {
      v52 = (v51 | 7) + 1;
    }

    v53 = operator new(v52);
    v158[1] = (v50 + 1);
    v159 = v52 | 0x8000000000000000;
    v158[0] = v53;
  }

  if (v49 >= 0)
  {
    v54 = __dst;
  }

  else
  {
    v54 = __dst[0];
  }

  memmove(v53, v54, v50);
LABEL_75:
  *&v53[v50] = 47;
  v55 = SHIBYTE(v159);
  if ((SHIBYTE(v159) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v159) - 12) < 0xB)
    {
      v56 = (SHIBYTE(v159) + 11);
      v57 = v158;
      v58 = 22;
LABEL_81:
      v59 = 2 * v58;
      if (v56 > 2 * v58)
      {
        v59 = v56;
      }

      if ((v59 | 7) == 0x17)
      {
        v60 = 25;
      }

      else
      {
        v60 = (v59 | 7) + 1;
      }

      if (v59 >= 0x17)
      {
        v61 = v60;
      }

      else
      {
        v61 = 23;
      }

      v62 = v58 == 22;
      goto LABEL_90;
    }

    v67 = v158;
LABEL_97:
    v68 = v67 + v55;
    *v68 = *"precoredump";
    *(v68 + 7) = 1886221668;
    v69 = v55 + 11;
    if (SHIBYTE(v159) < 0)
    {
      v158[1] = (v55 + 11);
    }

    else
    {
      HIBYTE(v159) = v69 & 0x7F;
    }

    v66 = v67 + v69;
    goto LABEL_101;
  }

  v55 = v158[1];
  v58 = (v159 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v58 - v158[1] >= 0xB)
  {
    v67 = v158[0];
    goto LABEL_97;
  }

  v56 = v158[1] + 11;
  if ((0x7FFFFFFFFFFFFFF7 - (v159 & 0x7FFFFFFFFFFFFFFFLL)) < v158[1] - v58 + 11)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v57 = v158[0];
  if (v58 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_81;
  }

  v62 = 0;
  v61 = 0x7FFFFFFFFFFFFFF7;
LABEL_90:
  v63 = operator new(v61);
  v64 = v63;
  if (v55)
  {
    memmove(v63, v57, v55);
  }

  v65 = v64 + v55;
  *v65 = *"precoredump";
  *(v65 + 7) = 1886221668;
  if (!v62)
  {
    operator delete(v57);
  }

  v158[1] = v56;
  v159 = v61 | 0x8000000000000000;
  v158[0] = v64;
  v66 = &v56[v64];
LABEL_101:
  *v66 = 0;
  *&v160[0].__locale_ = *v158;
  v161 = v159;
  v158[1] = 0;
  v159 = 0;
  v158[0] = 0;
  __p[58] = 0;
  v70 = (MEMORY[0x1E69E5530] + 64);
  __p[52] = (MEMORY[0x1E69E5530] + 64);
  v71 = MEMORY[0x1E69E54D0];
  v72 = *(MEMORY[0x1E69E54D0] + 16);
  __p[0] = *(MEMORY[0x1E69E54D0] + 8);
  *(__p + *(__p[0] - 3)) = v72;
  v73 = (__p + *(__p[0] - 3));
  std::ios_base::init(v73, &__p[1]);
  v74 = (MEMORY[0x1E69E5530] + 24);
  v73[1].__vftable = 0;
  v73[1].__fmtflags_ = -1;
  __p[0] = v74;
  __p[52] = v70;
  MEMORY[0x1E6926FC0](&__p[1]);
  v75 = std::filebuf::open();
  if (!v75)
  {
    std::ios_base::clear((__p + *(__p[0] - 3)), *(&__p[4] + *(__p[0] - 3)) | 4);
  }

  if (SHIBYTE(v161) < 0)
  {
    operator delete(v160[0].__locale_);
    if ((SHIBYTE(v159) & 0x80000000) == 0)
    {
LABEL_105:
      if (__p[16])
      {
        goto LABEL_106;
      }

LABEL_121:
      v83 = ACFULogging::getLogInstance(v75);
      ACFULogging::handleMessage(v83, 2, "%s::%s: Failed to open precoredump file\n", "BasebandUpdaterTransport", "collectPreCoredump");
      goto LABEL_152;
    }
  }

  else if ((SHIBYTE(v159) & 0x80000000) == 0)
  {
    goto LABEL_105;
  }

  operator delete(v158[0]);
  if (!__p[16])
  {
    goto LABEL_121;
  }

LABEL_106:
  if ((BYTE8(v176) & 0x10) != 0)
  {
    v77 = v176;
    if (v176 < *(&v173 + 1))
    {
      *&v176 = *(&v173 + 1);
      v77 = *(&v173 + 1);
    }

    v78 = v173;
    v79 = v77 - v173;
    if ((v77 - v173) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_136;
    }
  }

  else
  {
    if ((BYTE8(v176) & 8) == 0)
    {
      HIBYTE(v161) = 0;
      LOBYTE(v160[0].__locale_) = 0;
      v76 = 0;
      goto LABEL_115;
    }

    v78 = *(&v171 + 1);
    v79 = *(&v172 + 1) - *(&v171 + 1);
    if (*(&v172 + 1) - *(&v171 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_136:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v79 >= 0x17)
  {
    if ((v79 | 7) == 0x17)
    {
      v84 = 25;
    }

    else
    {
      v84 = (v79 | 7) + 1;
    }

    v80 = operator new(v84);
    v160[1].__locale_ = v79;
    v161 = v84 | 0x8000000000000000;
    v160[0].__locale_ = v80;
  }

  else
  {
    HIBYTE(v161) = v79;
    v80 = v160;
    if (!v79)
    {
      LOBYTE(v160[0].__locale_) = 0;
      v76 = SHIBYTE(v161);
      if ((SHIBYTE(v161) & 0x80000000) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_127;
    }
  }

  memmove(v80, v78, v79);
  *(v80 + v79) = 0;
  v76 = SHIBYTE(v161);
  if ((SHIBYTE(v161) & 0x80000000) == 0)
  {
LABEL_115:
    if (v76)
    {
      goto LABEL_116;
    }

    goto LABEL_128;
  }

LABEL_127:
  locale = v160[1].__locale_;
  operator delete(v160[0].__locale_);
  if (locale)
  {
LABEL_116:
    if ((BYTE8(v176) & 0x10) != 0)
    {
      v88 = v176;
      if (v176 < *(&v173 + 1))
      {
        *&v176 = *(&v173 + 1);
        v88 = *(&v173 + 1);
      }

      v89 = v173;
      v81 = v88 - v173;
      if ((v88 - v173) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_166;
      }
    }

    else
    {
      if ((BYTE8(v176) & 8) == 0)
      {
        v81 = 0;
        HIBYTE(v161) = 0;
        v82 = v160;
        goto LABEL_142;
      }

      v89 = *(&v171 + 1);
      v81 = *(&v172 + 1) - *(&v171 + 1);
      if (*(&v172 + 1) - *(&v171 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_166:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v81 >= 0x17)
    {
      if ((v81 | 7) == 0x17)
      {
        v90 = 25;
      }

      else
      {
        v90 = (v81 | 7) + 1;
      }

      v82 = operator new(v90);
      v160[1].__locale_ = v81;
      v161 = v90 | 0x8000000000000000;
      v160[0].__locale_ = v82;
    }

    else
    {
      HIBYTE(v161) = v81;
      v82 = v160;
      if (!v81)
      {
LABEL_142:
        *(v82 + v81) = 0;
        if (v161 >= 0)
        {
          v91 = v160;
        }

        else
        {
          v91 = v160[0].__locale_;
        }

        if (v161 >= 0)
        {
          v92 = HIBYTE(v161);
        }

        else
        {
          v92 = v160[1].__locale_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v91, v92);
        if (SHIBYTE(v161) < 0)
        {
          operator delete(v160[0].__locale_);
        }

        goto LABEL_150;
      }
    }

    memmove(v82, v89, v81);
    goto LABEL_142;
  }

LABEL_128:
  v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "empty", 5);
  std::ios_base::getloc((v86 + *(*v86 - 24)));
  v87 = std::locale::use_facet(v160, MEMORY[0x1E69E5318]);
  (v87->__vftable[2].~facet_0)(v87, 10);
  std::locale::~locale(v160);
  std::ostream::put();
  std::ostream::flush();
LABEL_150:
  if (!std::filebuf::close())
  {
    std::ios_base::clear((__p + *(__p[0] - 3)), *(&__p[4] + *(__p[0] - 3)) | 4);
  }

LABEL_152:
  __p[0] = *v71;
  *(__p + *(__p[0] - 3)) = *(v71 + 24);
  MEMORY[0x1E6926FD0](&__p[1]);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](&__p[52]);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
    v93 = cf;
    if (!cf)
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  v93 = cf;
  if (cf)
  {
LABEL_156:
    CFRelease(v93);
  }

LABEL_157:
  *v170 = *MEMORY[0x1E69E54D8];
  v94 = *(MEMORY[0x1E69E54D8] + 72);
  *&v170[*(*v170 - 24)] = *(MEMORY[0x1E69E54D8] + 64);
  *&v170[16] = v94;
  *&v170[24] = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v175) < 0)
  {
    operator delete(*(&v174 + 1));
  }

  *&v170[24] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v171);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v177);
  HardwareModel = TelephonyCapabilitiesGetHardwareModel();
  if (*(HardwareModel + 8) == 3)
  {
    v96 = "%s::%s: Skipping safe warm reset for ConfigSim\n";
LABEL_164:
    v97 = ACFULogging::getLogInstance(HardwareModel);
    ACFULogging::handleMessage(v97, 0, v96, "BasebandUpdaterTransport", "warmResetSafe");
    goto LABEL_174;
  }

  if (*(a1 + 200) == 1)
  {
    if (*(a1 + 203))
    {
LABEL_163:
      v96 = "%s::%s: User requested not to safe warm reset, skipping...\n";
      goto LABEL_164;
    }

    if (*(a1 + 202) == 1)
    {
      v98 = MEMORY[0x1E69E9858];
      do
      {
        printf("        %s - %c/%c?: ", "safe warm reset", 121, 110);
        fflush(*v98);
        HardwareModel = getchar();
        v99 = HardwareModel;
          ;
        }

        if (i == 110)
        {
          goto LABEL_163;
        }
      }

      while (v99 != 121);
    }
  }

  v101 = TelephonyBasebandResetModem();
  if ((v101 & 1) == 0)
  {
    v122 = ACFULogging::getLogInstance(v101);
    v123 = ACFULogging::handleMessage(v122, 2, "%s::%s: Failed to safe warm reset baseband\n", "BasebandUpdaterTransport", "warmResetSafe");
    v124 = ACFULogging::getLogInstance(v123);
    v6 = 1;
    ACFULogging::handleMessage(v124, 2, "%s::%s: Failed to warm reset baseband (ACFU error code = %d)\n");
    return v6;
  }

LABEL_174:
  v103 = *a2;
  v102 = *(a2 + 8);
  if (v102)
  {
    atomic_fetch_add_explicit(v102 + 1, 1uLL, memory_order_relaxed);
  }

  TelephonyBasebandSetBasebandState();
  __p[0] = 0;
  ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
  v105 = operator new(0x20uLL);
  *(v105 + 1) = 0;
  *v105 = &unk_1F5F05FE8;
  *(v105 + 2) = 0;
  *(v105 + 3) = 0;
  v106 = BasebandUpdaterTransport::IOACIPCHelper::init(v105, "rom", (ScaledTime / 1000000));
  if (v106)
  {
    __p[0] = *(v105 + 1);
    if (__p[0])
    {
      v107 = ACFULogging::getLogInstance(v106);
      ACFULogging::handleMessage(v107, 3, "%s::%s: ======== ENTERING FIRST BOOT STAGE (ROM) ========\n", "BasebandUpdaterTransport", "collectCoredump");
      ctu::AdaptiveTimerService::getScaledTime();
      v160[0].__locale_ = v103;
      v160[1].__locale_ = v102;
      if (v102)
      {
        atomic_fetch_add_explicit(v102 + 1, 1uLL, memory_order_relaxed);
      }

      *&__src = MEMORY[0x1E69E9820];
      *(&__src + 1) = 3221225472;
      *&v166 = ___ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEE_block_invoke;
      *(&v166 + 1) = &__block_descriptor_40_e5_v8__0l;
      *&v167 = a1;
      ImageOnBTIStage = ACFUACIPCTransport::loadImageOnBTIStage();
      v109 = v160[1].__locale_;
      if (v160[1].__locale_ && !atomic_fetch_add(v160[1].__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        v110 = ImageOnBTIStage;
        (*(*v109 + 16))(v109);
        std::__shared_weak_count::__release_weak(v109);
        ImageOnBTIStage = v110;
      }

      if (ImageOnBTIStage)
      {
        v141 = ACFULogging::getLogInstance(ImageOnBTIStage);
        ACFULogging::handleMessage(v141, 2, "%s::%s: Failed to load image on FIRST (ROM) boot stage\n", "BasebandUpdaterTransport", "collectCoredump");
        v112 = 0;
        v6 = 3026;
      }

      else
      {
        v111 = ACFULogging::getLogInstance(ImageOnBTIStage);
        ACFULogging::handleMessage(v111, 3, "%s::%s: ======== COMPLETED FIRST BOOT STAGE (ROM) ========\n", "BasebandUpdaterTransport", "collectCoredump");
        v6 = 0;
        v112 = 1;
      }
    }

    else
    {
      v140 = ACFULogging::getLogInstance(v106);
      ACFULogging::handleMessage(v140, 2, "%s::%s: Failed to get the ACIPC interface object\n", "BasebandUpdaterTransport", "collectCoredump");
      v112 = 0;
      v6 = 3000;
    }

    (*(*v105 + 8))(v105);
    if (!v112)
    {
      goto LABEL_229;
    }

    v162 = 0;
    cf = 0;
    memset(__p, 0, 32);
    __p[4] = 0xAAAAAAAA3F800000;
    v113 = ctu::AdaptiveTimerService::getScaledTime();
    v114 = operator new(0x20uLL);
    *(v114 + 1) = 0;
    *v114 = &unk_1F5F05FE8;
    *(v114 + 2) = 0;
    *(v114 + 3) = 0;
    if (BasebandUpdaterTransport::IOACIPCHelper::init(v114, "iboot", (v113 / 1000000)))
    {
      v115 = validateBootStage(5);
      if (v115)
      {
        v162 = *(v114 + 1);
        if (v162)
        {
          v116 = ACFUDiagnostics::copyDiagnosticsPath(*(a1 + 8));
          v117 = v116;
          cf = v116;
          if (!v116)
          {
            v153 = ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage(v153, 2, "%s::%s: Invalid coredump path\n", "BasebandUpdaterTransport", "collectCoredump");
            v6 = 1014;
            goto LABEL_207;
          }

          CFRetain(v116);
          v118 = a1 + 120;
          v119 = &unk_1F5F06288;
          *v170 = &unk_1F5F06288;
          *&v170[8] = v117;
          *&v170[16] = __p;
          *&v170[24] = v170;
          if ((a1 + 120) == v170)
          {
            v121 = v170;
          }

          else
          {
            if (*(a1 + 144) == v118)
            {
              __dst[1] = v117;
              __dst[2] = 0xAAAAAAAAAAAAAAAALL;
              __dst[0] = &unk_1F5F06288;
              CFRetain(v117);
              __dst[2] = *&v170[16];
              (*(**&v170[24] + 32))(*&v170[24]);
              *&v170[24] = 0;
              (*(**(a1 + 144) + 24))(*(a1 + 144), v170);
              (*(**(a1 + 144) + 32))(*(a1 + 144));
              *(a1 + 144) = 0;
              *&v170[24] = v170;
              (*(__dst[0] + 3))(__dst, a1 + 120);
              (*(__dst[0] + 4))(__dst);
              *(a1 + 144) = v118;
              v121 = *&v170[24];
              if (*&v170[24] != v170)
              {
LABEL_193:
                if (v121)
                {
                  v121 = (*(*v121 + 40))(v121);
                }

                goto LABEL_200;
              }
            }

            else
            {
              *(a1 + 120) = &unk_1F5F06288;
              *(a1 + 128) = v117;
              CFRetain(v117);
              v120 = *&v170[24];
              *(a1 + 136) = *&v170[16];
              (*(*v120 + 32))(v120);
              *&v170[24] = *(a1 + 144);
              v121 = *&v170[24];
              *(a1 + 144) = v118;
              if (v121 != v170)
              {
                goto LABEL_193;
              }
            }

            v119 = *v121;
          }

          v121 = (v119)[4](v121);
LABEL_200:
          v125 = ACFULogging::getLogInstance(v121);
          ACFULogging::handleMessage(v125, 0, "%s::%s: ======== COREDUMP BEGIN ========\n", "BasebandUpdaterTransport", "collectCoredump");
          v158[0] = 0;
          v158[1] = 0;
          *v170 = MEMORY[0x1E69E9820];
          *&v170[8] = 3221225472;
          *&v170[16] = ___ZN24BasebandUpdaterTransport15collectCoredumpENSt3__110shared_ptrI12ACFUFirmwareEE_block_invoke_2;
          *&v170[24] = &__block_descriptor_40_e5_v8__0l;
          *&v171 = a1;
          v126 = ACFUACIPCTransport::processRTIStage();
          v127 = v158[1];
          if (v158[1] && !atomic_fetch_add(v158[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            v128 = v126;
            (v127->__on_zero_shared)(v127);
            std::__shared_weak_count::__release_weak(v127);
            v126 = v128;
          }

          if (v126)
          {
            v154 = ACFULogging::getLogInstance(v126);
            ACFULogging::handleMessage(v154, 2, "%s::%s: Failed to load image on SECOND (iBoot) boot stage\n", "BasebandUpdaterTransport", "collectCoredump");
            v6 = 3027;
          }

          else
          {
            ACFULogging::getLogInstance(v126);
            v129 = operator new(0x20uLL);
            strcpy(v129, "BasebandUpdaterTransport::");
            v130 = operator new(0x40uLL);
            *v130 = *v129;
            *(v130 + 10) = *(v129 + 10);
            strcpy(v130 + 26, "collectCoredump");
            operator delete(v129);
            __dst[0] = v130;
            *&__dst[1] = xmmword_1E5394F50;
            v131 = ACFULogging::handleMessageCFType();
            if (SHIBYTE(__dst[2]) < 0)
            {
              operator delete(__dst[0]);
            }

            v132 = ACFULogging::getLogInstance(v131);
            ACFULogging::handleMessage(v132, 0, "%s::%s: ======== COREDUMP COMPLETE ========\n", "BasebandUpdaterTransport", "collectCoredump");
            v6 = 0;
          }

LABEL_207:
          (*(*v114 + 8))(v114);
          v133 = __p[2];
          if (__p[2])
          {
            goto LABEL_222;
          }

          goto LABEL_225;
        }

        v152 = ACFULogging::getLogInstance(v115);
        ACFULogging::handleMessage(v152, 2, "%s::%s: Failed to get the ACIPC interface object\n");
      }

      else
      {
        v151 = ACFULogging::getLogInstance(v115);
        ACFULogging::handleMessage(v151, 2, "%s::%s: Unexpected acipc boot stage\n");
      }

      v6 = 3000;
      goto LABEL_207;
    }

    v142 = (*(*v114 + 8))(v114);
    v143 = ACFULogging::getLogInstance(v142);
    v144 = ACFULogging::handleMessage(v143, 2, "%s::%s: Failed to init IOACIPCHelper\n", "BasebandUpdaterTransport", "create");
    v145 = ACFULogging::getLogInstance(v144);
    ACFULogging::handleMessage(v145, 2, "%s::%s: Failed to open ACIPC %s interface\n", "BasebandUpdaterTransport", "collectCoredump", "iboot");
    v6 = 3019;
    v133 = __p[2];
    if (!__p[2])
    {
LABEL_225:
      v147 = __p[0];
      __p[0] = 0;
      if (v147)
      {
        operator delete(v147);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_229;
    }

    while (1)
    {
LABEL_222:
      v146 = *v133;
      if (v133[63] < 0)
      {
        operator delete(*(v133 + 5));
        if ((v133[39] & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

LABEL_224:
        operator delete(*(v133 + 2));
        operator delete(v133);
        v133 = v146;
        if (!v146)
        {
          goto LABEL_225;
        }
      }

      else
      {
        if (v133[39] < 0)
        {
          goto LABEL_224;
        }

LABEL_221:
        operator delete(v133);
        v133 = v146;
        if (!v146)
        {
          goto LABEL_225;
        }
      }
    }
  }

  v136 = (*(*v105 + 8))(v105);
  v137 = ACFULogging::getLogInstance(v136);
  v138 = ACFULogging::handleMessage(v137, 2, "%s::%s: Failed to init IOACIPCHelper\n", "BasebandUpdaterTransport", "create");
  v139 = ACFULogging::getLogInstance(v138);
  ACFULogging::handleMessage(v139, 2, "%s::%s: Failed to open ACIPC %s interface\n", "BasebandUpdaterTransport", "collectCoredump", "rom");
  v6 = 3019;
LABEL_229:
  v148 = TelephonyBasebandSetBasebandState();
  if (v102 && !atomic_fetch_add(v102 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v102 + 16))(v102);
    std::__shared_weak_count::__release_weak(v102);
  }

  if (v6)
  {
    v150 = ACFULogging::getLogInstance(v148);
    ACFULogging::handleMessage(v150, 2, "%s::%s: Failed to collect coredump (ACFU error code = %d)\n");
  }

  return v6;
}