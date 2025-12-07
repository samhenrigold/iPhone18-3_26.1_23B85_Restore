void sub_1E53366B4(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a13, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E69273B0](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v27);
  v29 = *(v26 + 8);
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  _Unwind_Resume(a1);
}

void eUICC::Source::GetMainFirmware(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
      v5 = *a2;
    }

    else
    {
      v5 = "vinyl";
    }
  }

  else if (*(a2 + 23))
  {
    v5 = a2;
  }

  else
  {
    v5 = "vinyl";
  }

  memset(__dst, 170, sizeof(__dst));
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    __dst[2] = (v9 | 0x8000000000000000);
    __dst[0] = v8;
    goto LABEL_16;
  }

  HIBYTE(__dst[2]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_16:
    memmove(v8, v5, v7);
  }

  *(v7 + v8) = 0;
  ctu::path_join_impl();
  ctu::path_join_impl();
  eUICC::Source::GetFirmwareInternal(a1, __dst, a3);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1E5336870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void eUICC::Source::GetFirmwareInternal(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memset(&v36, 170, sizeof(v36));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *a2, *(a2 + 8));
  }

  else
  {
    v36 = *a2;
  }

  ctu::path_join_impl();
  memset(&v35, 170, sizeof(v35));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *a2, *(a2 + 8));
  }

  else
  {
    v35 = *a2;
  }

  ctu::path_join_impl();
  memset(&v34, 170, sizeof(v34));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *a2, *(a2 + 8));
  }

  else
  {
    v34 = *a2;
  }

  ctu::path_join_impl();
  memset(&v33, 170, sizeof(v33));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *a2, *(a2 + 8));
  }

  else
  {
    v33 = *a2;
  }

  ctu::path_join_impl();
  v31 = 0;
  v32 = 0;
  cf = 0;
  v30 = 0;
  v6 = *(a1 + 16);
  v27 = 0;
  p_cf = &v32;
  v7 = BBUZipFile::copyEntireFile(v6, &v36.__r_.__value_.__l.__data_, &v27);
  v8 = *p_cf;
  if (v27)
  {
    *p_cf = v27;
    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *p_cf = 0;
    if (v8)
    {
LABEL_17:
      CFRelease(v8);
    }
  }

  if (v7 || !v32)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICC::Source", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == r && installData", "", "", 68);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v11 = v36.__r_.__value_.__r.__words[0];
    v12 = (v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
    v13 = &v36;
    goto LABEL_40;
  }

  v9 = *(a1 + 16);
  v27 = 0;
  p_cf = &v30;
  v7 = BBUZipFile::copyEntireFile(v9, &v34.__r_.__value_.__l.__data_, &v27);
  v10 = *p_cf;
  if (v27)
  {
    *p_cf = v27;
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *p_cf = 0;
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  CFRelease(v10);
LABEL_30:
  if (!v7 && v30)
  {
    v14 = *(a1 + 16);
    v27 = 0;
    p_cf = &v31;
    v15 = BBUZipFile::copyEntireFile(v14, &v35.__r_.__value_.__l.__data_, &v27);
    v16 = *p_cf;
    if (v27)
    {
      *p_cf = v27;
      if (v16)
      {
        goto LABEL_61;
      }
    }

    else
    {
      *p_cf = 0;
      if (v16)
      {
LABEL_61:
        CFRelease(v16);
      }
    }

    if (v15)
    {
      v17 = v31;
      v31 = 0;
      if (v17)
      {
        CFRelease(v17);
      }
    }

    v18 = *(a1 + 16);
    v27 = 0;
    p_cf = &cf;
    v19 = BBUZipFile::copyEntireFile(v18, &v33.__r_.__value_.__l.__data_, &v27);
    v20 = *p_cf;
    if (v27)
    {
      *p_cf = v27;
      if (v20)
      {
        goto LABEL_69;
      }
    }

    else
    {
      *p_cf = 0;
      if (v20)
      {
LABEL_69:
        CFRelease(v20);
      }
    }

    if (v19)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v21 = &v33;
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v33.__r_.__value_.__r.__words[0];
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICC::Source", "", "File %s ret %d\n", v21, v19);
      v22 = cf;
      cf = 0;
      if (v22)
      {
        CFRelease(v22);
      }
    }

    v26 = v32;
    if (v32)
    {
      CFRetain(v32);
    }

    v25 = v31;
    if (v31)
    {
      CFRetain(v31);
    }

    v24 = v30;
    if (v30)
    {
      CFRetain(v30);
    }

    v23 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    eUICC::Firmware::CreateFromData(&v26, &v25, &v24, a3);
    if (v23)
    {
      CFRelease(v23);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    goto LABEL_43;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "eUICC::Source", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == r && infoPlist", "", "", 71);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v11 = v34.__r_.__value_.__r.__words[0];
  v12 = (v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  v13 = &v34;
LABEL_40:
  if (v12)
  {
    v13 = v11;
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICC::Source", "", "File %s ret %d\n", v13, v7);
  *a3 = 0;
  a3[1] = 0;
LABEL_43:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_53:
      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_58;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_53;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_54:
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_59:
    operator delete(v36.__r_.__value_.__l.__data_);
    return;
  }

LABEL_58:
  operator delete(v35.__r_.__value_.__l.__data_);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_59;
  }
}

void sub_1E5336E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, const void *a15, const void *a16, __int16 a17, char a18, char a19, uint64_t a20, const void *a21, const void *a22, const void *a23, const void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a15);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a21);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a22);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a23);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a24);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((*(v30 - 105) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v30 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(v30 - 105) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v30 - 128));
  if ((*(v30 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v30 - 41) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  operator delete(*(v30 - 96));
  if ((*(v30 - 41) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_5:
  operator delete(*(v30 - 64));
  goto LABEL_6;
}

void eUICC::Source::GetGoldFirmware(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
      v5 = *a2;
    }

    else
    {
      v5 = "vinyl";
    }
  }

  else if (*(a2 + 23))
  {
    v5 = a2;
  }

  else
  {
    v5 = "vinyl";
  }

  memset(__dst, 170, sizeof(__dst));
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    __dst[2] = (v9 | 0x8000000000000000);
    __dst[0] = v8;
    goto LABEL_16;
  }

  HIBYTE(__dst[2]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_16:
    memmove(v8, v5, v7);
  }

  *(v7 + v8) = 0;
  ctu::path_join_impl();
  ctu::path_join_impl();
  eUICC::Source::GetFirmwareInternal(a1, __dst, a3);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1E53370D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFData>::~TakeOwnershipProxy(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

void eUICC::Source::GetRecoveryForMac(uint64_t *__return_ptr a1@<X8>, ctu *this@<X1>, uint64_t a3@<X0>, const char *a4@<X2>)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  ctu::hex(__p, this, 8);
  if (v35 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICC::Source", "", "GetRecoveryForMac: %s\n", v7);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  *&v38 = 0xAAAAAAAAAAAAAAAALL;
  *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
  eUICC::Source::GetGoldFirmware(a3, a4, &v38);
  if (!v38)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICC::Source", "", "GetGoldFirmware did not successfully return anything valid\n");
    *a1 = 0;
    a1[1] = 0;
    v10 = *(&v38 + 1);
    if (*(&v38 + 1))
    {
LABEL_74:
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

    return;
  }

  v8 = (*(*v38 + 8))(v38);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  ctu::hex(__p, v8, 8);
  if (v35 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICC::Source", "", "Update/Gold Mac %s\n", v9);
  if ((v35 & 0x80000000) == 0)
  {
    if (*this != *v8)
    {
      goto LABEL_16;
    }

LABEL_25:
    *a1 = v38;
    v38 = 0uLL;
    return;
  }

  operator delete(__p[0]);
  if (*this == *v8)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (a4[23] < 0)
  {
    if (*(a4 + 1))
    {
      a4 = *a4;
    }

    else
    {
      a4 = "vinyl";
    }
  }

  else if (!a4[23])
  {
    a4 = "vinyl";
  }

  memset(__dst, 170, sizeof(__dst));
  v11 = strlen(a4);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    __dst[1] = v12;
    __dst[2] = (v14 | 0x8000000000000000);
    __dst[0] = v13;
  }

  else
  {
    HIBYTE(__dst[2]) = v11;
    v13 = __dst;
    if (!v11)
    {
      goto LABEL_38;
    }
  }

  memmove(v13, a4, v12);
LABEL_38:
  *(v12 + v13) = 0;
  ctu::path_join_impl();
  ctu::path_join_impl();
  v16 = 0;
  while (1)
  {
    memset(v36, 170, sizeof(v36));
    ctu::LogMessageBuffer::createWithFormat(__p, "%03d", v15, v16);
    v17 = MEMORY[0x1E69264F0](__p);
    v18 = SHIBYTE(__dst[2]) >= 0 ? __dst : __dst[0];
    v19 = SHIBYTE(__dst[2]) >= 0 ? HIBYTE(__dst[2]) : __dst[1];
    v20 = std::string::insert(v17, 0, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v36[2] = v20->__r_.__value_.__r.__words[2];
    *v36 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x1E6926520](__p);
    eUICC::Source::GetFirmwareInternal(a3, v36, __p);
    v22 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v23 = *(&v38 + 1);
    v38 = v22;
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      v24 = __p[1];
      if (!__p[1])
      {
        goto LABEL_51;
      }
    }

    else
    {
      v24 = __p[1];
      if (!__p[1])
      {
        goto LABEL_51;
      }
    }

    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

LABEL_51:
    v25 = v38;
    if (v38)
    {
      v26 = (*(*v38 + 8))(v38);
      if (!v26)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/Source/eUICCSource.cpp", 0x7Fu, "Assertion failure(fwMac.data && Corrupt FW in input!)");
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v27 = SHIBYTE(v36[2]);
      v28 = v36[0];
      ctu::hex(__p, v26, 8);
      v29 = v36;
      if (v27 < 0)
      {
        v29 = v28;
      }

      v30 = __p;
      if (v35 < 0)
      {
        v30 = __p[0];
      }

      _BBULog(22, 0xFFFFFFFFLL, "eUICC::Source", "", "Path %s -> Mac %s\n", v29, v30);
      if (v35 < 0)
      {
        operator delete(__p[0]);
        if (*this != *v26)
        {
LABEL_61:
          v31 = 1;
          if ((SHIBYTE(v36[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

LABEL_62:
          operator delete(v36[0]);
          goto LABEL_63;
        }
      }

      else if (*this != *v26)
      {
        goto LABEL_61;
      }

      v31 = 0;
      *a1 = v38;
      v38 = 0uLL;
      if (SHIBYTE(v36[2]) < 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v31 = 0;
      if (SHIBYTE(v36[2]) < 0)
      {
        goto LABEL_62;
      }
    }

LABEL_63:
    if ((v31 & 1) == 0)
    {
      break;
    }

    v16 = (v16 + 1);
    if (v16 == 1000)
    {
      goto LABEL_77;
    }
  }

  if (v25)
  {
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
LABEL_77:
    *a1 = 0;
    a1[1] = 0;
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
LABEL_73:
      v10 = *(&v38 + 1);
      if (!*(&v38 + 1))
      {
        return;
      }

      goto LABEL_74;
    }
  }

  operator delete(__dst[0]);
  v10 = *(&v38 + 1);
  if (*(&v38 + 1))
  {
    goto LABEL_74;
  }
}

void *std::shared_ptr<eUICC::Source>::shared_ptr[abi:ne200100]<eUICC::Source,0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_1F5F048D8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = a2[1];
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *a2 = a2;
        a2[1] = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_1E5337A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<eUICC::Source>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<eUICC::Source *,std::shared_ptr<eUICC::Source>::__shared_ptr_default_delete<eUICC::Source,eUICC::Source>,std::allocator<eUICC::Source>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::Source *,std::shared_ptr<eUICC::Source>::__shared_ptr_default_delete<eUICC::Source,eUICC::Source>,std::allocator<eUICC::Source>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[3];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = v1[1];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::Source *,std::shared_ptr<eUICC::Source>::__shared_ptr_default_delete<eUICC::Source,eUICC::Source>,std::allocator<eUICC::Source>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5393DA2)
  {
    if (((v2 & 0x80000001E5393DA2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5393DA2))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5393DA2 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **std::unique_ptr<eUICC::Source>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void support::misc::safe_timer::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, support::misc::safe_timer **a5@<X8>)
{
  v5 = a4;
  v25 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v10;
  v22 = v10;
  v20[1] = v10;
  v20[2] = v10;
  v20[0] = v10;
  v19.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v19.__r_.__value_.__r.__words[1] = xmmword_1E538EAF0;
  strcpy(v19.__r_.__value_.__l.__data_, "com.apple.telephony.basebandservices.support");
  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "safe-timer");
  support::log::client::client(v20, &v19, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
LABEL_3:
  *a5 = 0;
  v11 = operator new(0xD0uLL);
  *v16 = *a1;
  v17 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v12 = *(a3 + 24);
  if (v12)
  {
    if (v12 == a3)
    {
      v24 = v23;
      (*(*v12 + 24))(v12, v23);
    }

    else
    {
      v24 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  support::misc::safe_timer::safe_timer(v11, v16, a2, 0, v23, v5);
  if (v24 == v23)
  {
    (*(*v24 + 32))(v24);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v24)
    {
      (*(*v24 + 40))(v24);
    }

    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
LABEL_14:
      if (support::misc::safe_timer::init(v11))
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  operator delete(v16[0]);
  if (support::misc::safe_timer::init(v11))
  {
LABEL_15:
    *a5 = v11;
    *&v20[0] = &unk_1F5EFEF10;
    v13 = v22;
    if (!v22)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_21:
  v14 = *v21;
  if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_1E5234000, v14, OS_LOG_TYPE_ERROR, "error: failed to init safe_timer object", v15, 2u);
  }

  (*(*v11 + 8))(v11);
  *&v20[0] = &unk_1F5EFEF10;
  v13 = v22;
  if (v22)
  {
LABEL_16:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_1E5337F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::misc::safe_timer::init(support::misc::safe_timer *this)
{
  if (!*(this + 17))
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v4 = "error: invalid timeout value";
    v5 = &v9;
    goto LABEL_15;
  }

  if (!*(this + 22))
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v8 = 0;
    v4 = "error: invalid timeout callback";
    v5 = &v8;
    goto LABEL_15;
  }

  v1 = *(this + 23);
  if (!v1)
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v7 = 0;
    v4 = "error: failed to create dispatch queue";
    v5 = &v7;
LABEL_15:
    _os_log_error_impl(&dword_1E5234000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
    return 0;
  }

  if (*(this + 24))
  {
    dispatch_queue_set_specific(*(this + 23), "CurrentQueue", v1, 0);
    return 1;
  }

  v3 = **(this + 13);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v6 = 0;
    v4 = "error: failed to create dispatch safe_timer object";
    v5 = &v6;
    goto LABEL_15;
  }

  return result;
}

void support::misc::safe_timer::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, support::misc::safe_timer **a6@<X8>)
{
  v6 = a5;
  v27 = *MEMORY[0x1E69E9840];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v12;
  v24 = v12;
  v22[1] = v12;
  v22[2] = v12;
  v22[0] = v12;
  v21.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v21.__r_.__value_.__r.__words[1] = xmmword_1E538EAF0;
  strcpy(v21.__r_.__value_.__l.__data_, "com.apple.telephony.basebandservices.support");
  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "safe-timer");
  support::log::client::client(v22, &v21, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
LABEL_3:
  *a6 = 0;
  v13 = operator new(0xD0uLL);
  *v18 = *a1;
  v19 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v14 = *(a4 + 24);
  if (v14)
  {
    if (v14 == a4)
    {
      v26 = v25;
      (*(*v14 + 24))(v14, v25);
    }

    else
    {
      v26 = *(a4 + 24);
      *(a4 + 24) = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  support::misc::safe_timer::safe_timer(v13, v18, a2, a3, v25, v6);
  if (v26 == v25)
  {
    (*(*v26 + 32))(v26);
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v26)
    {
      (*(*v26 + 40))(v26);
    }

    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
LABEL_14:
      if (support::misc::safe_timer::init(v13))
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  operator delete(v18[0]);
  if (support::misc::safe_timer::init(v13))
  {
LABEL_15:
    *a6 = v13;
    *&v22[0] = &unk_1F5EFEF10;
    v15 = v24;
    if (!v24)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_21:
  v16 = *v23;
  if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_error_impl(&dword_1E5234000, v16, OS_LOG_TYPE_ERROR, "error: failed to init safe_timer object", v17, 2u);
  }

  (*(*v13 + 8))(v13);
  *&v22[0] = &unk_1F5EFEF10;
  v15 = v24;
  if (v24)
  {
LABEL_16:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }
}

void sub_1E5338460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::misc::safe_timer::safe_timer(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, uint64_t a5, dispatch_qos_class_t a6)
{
  *a1 = &unk_1F5F04928;
  v11 = a1 + 8;
  *(&v29.__r_.__value_.__s + 23) = 11;
  strcpy(&v29, "safe-timer.");
  v12 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = std::string::append(&v29, a2, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  *(v11 + 16) = *(&v14->__r_.__value_.__l + 2);
  *v11 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v29.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v29.__r_.__value_.__r.__words[1] = xmmword_1E538EBE0;
  strcpy(v29.__r_.__value_.__l.__data_, "com.apple.telephony.baseband.");
  v16 = *(a1 + 31);
  if (v16 >= 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(a1 + 8);
  }

  if (v16 >= 0)
  {
    v18 = *(a1 + 31);
  }

  else
  {
    v18 = *(a1 + 16);
  }

  v19 = std::string::append(&v29, v17, v18);
  v20 = (a1 + 32);
  v21 = *&v19->__r_.__value_.__l.__data_;
  *(a1 + 48) = *(&v19->__r_.__value_.__l + 2);
  *(a1 + 32) = v21;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v28.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v28.__r_.__value_.__r.__words[1] = xmmword_1E538EAF0;
  strcpy(v28.__r_.__value_.__l.__data_, "com.apple.telephony.basebandservices.support");
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *v11;
  }

  support::log::client::client((a1 + 56), &v28, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      *(a1 + 136) = a3;
      *(a1 + 144) = a4;
      v22 = a5 + 24;
      v23 = *(a5 + 24);
      if (v23)
      {
        goto LABEL_20;
      }

LABEL_24:
      v22 = a1 + 176;
      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  *(a1 + 136) = a3;
  *(a1 + 144) = a4;
  v22 = a5 + 24;
  v23 = *(a5 + 24);
  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (v23 != a5)
  {
    *(a1 + 176) = v23;
LABEL_25:
    *v22 = 0;
    goto LABEL_27;
  }

  *(a1 + 176) = a1 + 152;
  (*(**v22 + 24))();
LABEL_27:
  if (*(a1 + 55) < 0)
  {
    v20 = *v20;
  }

  v24 = dispatch_queue_attr_make_with_qos_class(0, a6, 0);
  v25 = dispatch_queue_create(v20, v24);
  *(a1 + 184) = v25;
  *(a1 + 192) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v25);
  *(a1 + 200) = 0;
  return a1;
}

void sub_1E5338790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v27 + 55) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v27 + 55) & 0x80000000) == 0)
  {
LABEL_6:
    if (*(v27 + 31) < 0)
    {
      operator delete(*v29);
    }

    _Unwind_Resume(exception_object);
  }

  operator delete(*v28);
  goto LABEL_6;
}

void sub_1E533882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x1E5338820);
  }

  JUMPOUT(0x1E5338824);
}

void support::misc::safe_timer::start_sync(support::misc::safe_timer *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = **(this + 13);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 200) != 1)
    {
      goto LABEL_3;
    }

LABEL_11:
    v8 = this;
    v9 = **(this + 13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = (v8 + 8);
      if (*(v8 + 31) < 0)
      {
        v10 = *v10;
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_error_impl(&dword_1E5234000, v9, OS_LOG_TYPE_ERROR, "error: '%s' already active", buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v27, "'");
    v14 = *(v8 + 1);
    v13 = v8 + 8;
    v12 = v14;
    v15 = v13[23];
    if (v15 >= 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    if (v15 >= 0)
    {
      v17 = v13[23];
    }

    else
    {
      v17 = *(v13 + 1);
    }

    v18 = std::string::append(&v27, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v25, "' already active");
    if ((v26 & 0x80u) == 0)
    {
      v20 = v25;
    }

    else
    {
      v20 = v25[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v21 = v26;
    }

    else
    {
      v21 = v25[1];
    }

    v22 = std::string::append(&v28, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v30 = v22->__r_.__value_.__r.__words[2];
    *buf = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x1E6926EB0](exception, buf);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *buf = 0;
  _os_log_debug_impl(&dword_1E5234000, v2, OS_LOG_TYPE_DEBUG, "starting...", buf, 2u);
  if (*(this + 200) == 1)
  {
    goto LABEL_11;
  }

LABEL_3:
  dispatch_assert_queue_V2(*(this + 23));
  v3 = *(this + 24);
  v4 = dispatch_time(0, 1000000 * *(this + 17));
  v5 = *(this + 18);
  if (v5)
  {
    v6 = 1000000 * v5;
  }

  else
  {
    v6 = -1;
  }

  dispatch_source_set_timer(v3, v4, v6, 0x1388uLL);
  v7 = *(this + 24);
  if (*(this + 200))
  {
    dispatch_resume(v7);
  }

  else
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___ZN7support4misc10safe_timer10start_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_9;
    handler[4] = this;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_activate(*(this + 24));
  }

  *(this + 100) = 1;
}

void sub_1E5338AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if (a26 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a27);
  if (a26 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    __cxa_free_exception(v32);
    _Unwind_Resume(a1);
  }

LABEL_10:
  if (!v33)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t ___ZN7support4misc10safe_timer10start_syncEv_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 200) != 1)
  {
    return result;
  }

  v2 = **(v1 + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1E5234000, v2, OS_LOG_TYPE_DEBUG, "fired", v5, 2u);
    *(v1 + 201) = 1;
    if (!*(v1 + 144))
    {
LABEL_4:
      dispatch_assert_queue_V2(*(v1 + 184));
      if (*(v1 + 200) == 1)
      {
        v3 = **(v1 + 104);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1E5234000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
        }

        dispatch_suspend(*(v1 + 192));
        *(v1 + 200) = 2;
      }
    }
  }

  else
  {
    *(v1 + 201) = 1;
    if (!*(v1 + 144))
    {
      goto LABEL_4;
    }
  }

  v4 = *(v1 + 176);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4);
}

void support::misc::safe_timer::stop(support::misc::safe_timer *this)
{
  v2 = *(this + 23);
  if (v2 == dispatch_get_specific("CurrentQueue"))
  {
    dispatch_assert_queue_V2(v2);
    if (*(this + 200) == 1)
    {
      v3 = **(this + 13);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1E5234000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
      }

      dispatch_suspend(*(this + 24));
      *(this + 200) = 2;
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer4stopEv_block_invoke;
    block[3] = &__block_descriptor_tmp_9_0;
    block[4] = this;
    dispatch_sync(v2, block);
  }
}

void ___ZN7support4misc10safe_timer4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 184));
  if (*(v1 + 200) == 1)
  {
    v2 = **(v1 + 104);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_1E5234000, v2, OS_LOG_TYPE_DEBUG, "stopping...", v3, 2u);
    }

    dispatch_suspend(*(v1 + 192));
    *(v1 + 200) = 2;
  }
}

void support::misc::safe_timer::~safe_timer(support::misc::safe_timer *this)
{
  *this = &unk_1F5F04928;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (*(this + 23))
  {
    support::misc::safe_timer::stop(this);
    v2 = *(this + 23);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = ___ZN7support4misc10safe_timerD2Ev_block_invoke;
    v7[3] = &__block_descriptor_tmp_18_0;
    v7[4] = &v8;
    v7[5] = this;
    dispatch_sync(v2, v7);
  }

  v3 = *(this + 24);
  if (v3)
  {
    if (*(v9 + 24))
    {
      dispatch_source_cancel(v3);
      if (*(v9 + 24) == 2)
      {
        dispatch_resume(*(this + 24));
      }
    }

    else
    {
      dispatch_activate(v3);
      dispatch_source_cancel(*(this + 24));
    }

    dispatch_release(*(this + 24));
  }

  v4 = *(this + 23);
  if (v4)
  {
    dispatch_release(v4);
  }

  _Block_object_dispose(&v8, 8);
  v5 = *(this + 22);
  if (v5 == (this + 152))
  {
    (*(*v5 + 32))(v5);
    *(this + 7) = &unk_1F5EFEF10;
    v6 = *(this + 15);
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 7) = &unk_1F5EFEF10;
    v6 = *(this + 15);
    if (!v6)
    {
LABEL_18:
      if ((*(this + 55) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if ((*(this + 55) & 0x80000000) == 0)
  {
LABEL_19:
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(*(this + 1));
    return;
  }

LABEL_22:
  operator delete(*(this + 4));
  if (*(this + 31) < 0)
  {
    goto LABEL_23;
  }
}

{
  support::misc::safe_timer::~safe_timer(this);

  operator delete(v1);
}

uint64_t __cxx_global_var_init_33()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>::~PthreadMutexGuardPolicy, &ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t DaleFirmware::getImage_BBCfgSegment(DaleFirmware *this, uint64_t a2)
{
  v73[2] = *MEMORY[0x1E69E9840];
  v4 = *(this + 24);
  Size = DaleImage::getSize(v4);
  if (Size)
  {
    DaleImage::getData(&v71.__r_.__value_.__l.__data_, v4, 0, Size);
    v6 = v71.__r_.__value_.__r.__words[0];
    v71.__r_.__value_.__r.__words[0] = 0;
    if (v6)
    {
      v7 = MEMORY[0x1E69262B0]();
LABEL_102:
      operator delete(v7);
      return *(this + 24);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 4, "%s::%s: unable to determine image size; image not loaded\n", "DaleImage", "getData");
  }

  v9 = *(this + 24);
  if (!a2)
  {
    *(&v71.__r_.__value_.__s + 23) = 14;
    strcpy(&v71, "bbcfg_prod.bin");
    v19 = *(this + 111);
    if (v19 >= 0)
    {
      v20 = this + 88;
    }

    else
    {
      v20 = *(this + 11);
    }

    if (v19 >= 0)
    {
      v21 = *(this + 111);
    }

    else
    {
      v21 = *(this + 12);
    }

    v22 = std::string::insert(&v71, 0, v20, v21);
    v23 = v22->__r_.__value_.__r.__words[0];
    *v72 = v22->__r_.__value_.__l.__size_;
    *&v72[7] = *(&v22->__r_.__value_.__r.__words[1] + 7);
    v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    *&v67[7] = *&v72[7];
    v66 = v23;
    *v67 = *v72;
    v68 = v24;
    *v72 = 0;
    *&v72[7] = 0;
    v69 = 0;
    std::optional<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>>::operator=[abi:ne200100]<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>,void>(v9 + 16, &v66);
    if (v69 != -1)
    {
      __b[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      __b[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (__b[v69])(&v61, &v66);
    }

    v69 = -1;
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = v71.__r_.__value_.__r.__words[0];
      goto LABEL_102;
    }

    return *(this + 24);
  }

  *(&v60.__r_.__value_.__s + 23) = 7;
  strcpy(&v60, "bbcfg_s");
  v10 = *(this + 111);
  if (v10 >= 0)
  {
    v11 = this + 88;
  }

  else
  {
    v11 = *(this + 11);
  }

  if (v10 >= 0)
  {
    v12 = *(this + 111);
  }

  else
  {
    v12 = *(this + 12);
  }

  v13 = std::string::insert(&v60, 0, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  memset(&v71, 170, sizeof(v71));
  std::to_string(&v71, a2);
  v15 = 0x7FFFFFFFFFFFFFF7;
  memset(__b, 170, sizeof(__b));
  v16 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v71.__r_.__value_.__l.__size_;
  }

  v17 = 3 - v16;
  if (3 - v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v17 | 7) + 1;
    }

    v18 = operator new(v25);
    __b[1] = v17;
    __b[2] = (v25 | 0x8000000000000000);
    __b[0] = v18;
    goto LABEL_32;
  }

  HIBYTE(__b[2]) = 3 - v16;
  v18 = __b;
  if (v16 != 3)
  {
LABEL_32:
    memset(v18, 48, v17);
  }

  *(v18 + v17) = 0;
  v26 = SHIBYTE(__b[2]);
  if (SHIBYTE(__b[2]) >= 0)
  {
    v27 = HIBYTE(__b[2]);
  }

  else
  {
    v27 = __b[1];
  }

  v28 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v71.__r_.__value_.__l.__size_;
  }

  v30 = v29 + v27;
  if (v29 + v27 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v30 <= 0x16)
  {
    v58 = 0;
    v59 = 0;
    __p = 0;
    p_p = &__p;
    HIBYTE(v59) = v29 + v27;
    if (!v27)
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v31 = v9;
  if ((v30 | 7) == 0x17)
  {
    v32 = 25;
  }

  else
  {
    v32 = (v30 | 7) + 1;
  }

  p_p = operator new(v32);
  v58 = v29 + v27;
  v59 = v32 | 0x8000000000000000;
  __p = p_p;
  v9 = v31;
  if (v27)
  {
LABEL_47:
    if (v26 >= 0)
    {
      v34 = __b;
    }

    else
    {
      v34 = __b[0];
    }

    memmove(p_p, v34, v27);
  }

LABEL_51:
  v35 = &p_p[v27];
  if (v29)
  {
    if (v28 >= 0)
    {
      v36 = &v71;
    }

    else
    {
      v36 = v71.__r_.__value_.__r.__words[0];
    }

    memmove(v35, v36, v29);
  }

  v35[v29] = 0;
  if (v26 < 0)
  {
    operator delete(__b[0]);
    if ((*(&v71.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_58;
    }
  }

  else if ((v28 & 0x80) == 0)
  {
    goto LABEL_58;
  }

  operator delete(v71.__r_.__value_.__l.__data_);
LABEL_58:
  if (v59 >= 0)
  {
    v37 = &__p;
  }

  else
  {
    v37 = __p;
  }

  if (v59 >= 0)
  {
    v38 = HIBYTE(v59);
  }

  else
  {
    v38 = v58;
  }

  v39 = std::string::append(&v61, v37, v38);
  v40 = *&v39->__r_.__value_.__l.__data_;
  *&v72[16] = *(&v39->__r_.__value_.__l + 2);
  *v72 = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = v72[23];
  if ((v72[23] & 0x8000000000000000) == 0)
  {
    if ((v72[23] - 19) < 4)
    {
      v42 = v9;
      v43 = v72[23] + 4;
      v44 = v72;
      v45 = 22;
LABEL_72:
      v46 = 2 * v45;
      if (v43 > 2 * v45)
      {
        v46 = v43;
      }

      if ((v46 | 7) == 0x17)
      {
        v47 = 25;
      }

      else
      {
        v47 = (v46 | 7) + 1;
      }

      if (v46 >= 0x17)
      {
        v15 = v47;
      }

      else
      {
        v15 = 23;
      }

      v48 = v45 == 22;
      goto LABEL_81;
    }

    v52 = v72;
    *&v72[v72[23]] = 1852400174;
    v53 = v41 + 4;
    if ((v72[23] & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  v41 = *&v72[8];
  v45 = (*&v72[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v45 - *&v72[8] >= 4)
  {
    v52 = *v72;
    *(*v72 + *&v72[8]) = 1852400174;
    v53 = v41 + 4;
    if ((v72[23] & 0x80000000) == 0)
    {
LABEL_87:
      v72[23] = v53 & 0x7F;
LABEL_90:
      v51 = &v52[v53];
      goto LABEL_91;
    }

LABEL_89:
    *&v72[8] = v53;
    goto LABEL_90;
  }

  v42 = v9;
  v43 = *&v72[8] + 4;
  if (0x7FFFFFFFFFFFFFF7 - (*&v72[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v72[8] + 4 - v45)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v44 = *v72;
  if (v45 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_72;
  }

  v48 = 0;
LABEL_81:
  v49 = operator new(v15);
  v50 = v49;
  if (v41)
  {
    memmove(v49, v44, v41);
  }

  *&v50[v41] = 1852400174;
  if (!v48)
  {
    operator delete(v44);
  }

  *&v72[8] = v43;
  *&v72[16] = v15 | 0x8000000000000000;
  *v72 = v50;
  v51 = &v50[v43];
  v9 = v42;
LABEL_91:
  *v51 = 0;
  v73[0] = *&v72[8];
  v54 = *v72;
  *(v73 + 7) = *&v72[15];
  v55 = v72[23];
  memset(v72, 0, sizeof(v72));
  v62 = v54;
  *v63 = v73[0];
  *&v63[7] = *(v73 + 7);
  v64 = v55;
  v73[0] = 0;
  *(v73 + 7) = 0;
  v65 = 0;
  std::optional<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>>::operator=[abi:ne200100]<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>,void>(v9 + 16, &v62);
  if (v65 != -1)
  {
    v71.__r_.__value_.__r.__words[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v71.__r_.__value_.__l.__size_ = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (*(&v71.__r_.__value_.__l.__data_ + v65))(__b, &v62);
  }

  v65 = -1;
  if ((v72[23] & 0x80000000) != 0)
  {
    operator delete(*v72);
    if ((SHIBYTE(v59) & 0x80000000) == 0)
    {
LABEL_95:
      if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_100;
    }
  }

  else if ((SHIBYTE(v59) & 0x80000000) == 0)
  {
    goto LABEL_95;
  }

  operator delete(__p);
  if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_96:
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_101;
    }

    return *(this + 24);
  }

LABEL_100:
  operator delete(v61.__r_.__value_.__l.__data_);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_101:
    v7 = v60.__r_.__value_.__r.__words[0];
    goto LABEL_102;
  }

  return *(this + 24);
}

void sub_1E5339844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>::~variant[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v5[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v5[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (v5[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void DaleFirmware::setPath_Firmware(std::string *a1, __int128 *a2)
{
  v3 = a1;
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      v5 = *(a2 + 23);
      goto LABEL_5;
    }

LABEL_8:
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: attempting to set invalid firmware path\n", "DaleFirmware", "setPath_Firmware");
    return;
  }

  v5 = *(a2 + 1);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  v6 = v5 - 1;
  if ((v4 & 0x80000000) == 0)
  {
    if (*(a2 + v6) == 47)
    {
      goto LABEL_20;
    }

LABEL_10:
    *(&v18.__r_.__value_.__s + 23) = 1;
    LOWORD(v18.__r_.__value_.__l.__data_) = 47;
    if ((v4 & 0x80000000) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if ((v4 & 0x80000000) == 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = *(a2 + 1);
    }

    a1 = std::string::insert(&v18, 0, v8, v9);
    v10 = a1->__r_.__value_.__r.__words[0];
    v19[0] = a1->__r_.__value_.__l.__size_;
    *(v19 + 7) = *(&a1->__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    *&a1->__r_.__value_.__r.__words[1] = 0uLL;
    a1->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v10;
    *(a2 + 1) = v19[0];
    *(a2 + 15) = *(v19 + 7);
    *(a2 + 23) = v11;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    goto LABEL_20;
  }

  if (*(*a2 + v6) != 47)
  {
    goto LABEL_10;
  }

LABEL_20:
  v12 = ACFULogging::getLogInstance(a1);
  v13 = a2;
  if (*(a2 + 23) < 0)
  {
    v13 = *a2;
  }

  ACFULogging::handleMessage(v12, 4, "%s::%s: setting firmware path to %s\n", "DaleFirmware", "setPath_Firmware", v13);
  v14 = a2;
  if (*(a2 + 23) < 0)
  {
    v14 = *a2;
  }

  v15 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v14, 0x8000100u);
  v18.__r_.__value_.__r.__words[0] = v15;
  v3[2].__r_.__value_.__r.__words[2] = ACFUCommon::createURLByAppendingStrings(&stru_1F5F088A0, v15, v16);
  if (v3[4].__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v3[3].__r_.__value_.__r.__words[2]);
  }

  v17 = *a2;
  v3[4].__r_.__value_.__l.__size_ = *(a2 + 2);
  *&v3[3].__r_.__value_.__r.__words[2] = v17;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (v15)
  {
    CFRelease(v15);
  }
}

void sub_1E5339BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 DaleFirmware::setPath_Dynamic(__n128 *a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      v5 = *(a2 + 23);
      goto LABEL_5;
    }

LABEL_8:
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: attempting to set invalid dynamic path\n", "DaleFirmware", "setPath_Dynamic");
    return result;
  }

  v5 = *(a2 + 8);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  v6 = v5 - 1;
  if ((v4 & 0x80000000) != 0)
  {
    if (*(*a2 + v6) == 47)
    {
      goto LABEL_19;
    }
  }

  else if (*(a2 + v6) == 47)
  {
    goto LABEL_19;
  }

  *(&v14.__r_.__value_.__s + 23) = 1;
  LOWORD(v14.__r_.__value_.__l.__data_) = 47;
  if ((v4 & 0x80000000) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = std::string::insert(&v14, 0, v9, v10);
  v12 = v11->__r_.__value_.__r.__words[0];
  v15[0] = v11->__r_.__value_.__l.__size_;
  *(v15 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
  v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v12;
  *(a2 + 8) = v15[0];
  *(a2 + 15) = *(v15 + 7);
  *(a2 + 23) = v13;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((a1[8].n128_i8[7] & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (a1[8].n128_i8[7] < 0)
  {
LABEL_20:
    operator delete(a1[7].n128_u64[0]);
  }

LABEL_21:
  result = *a2;
  a1[8].n128_u64[0] = *(a2 + 16);
  a1[7] = result;
  *(a2 + 23) = 0;
  *a2 = 0;
  return result;
}

void sub_1E5339DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 DaleFirmware::setPath_Fdr(void **a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      v5 = *(a2 + 23);
      goto LABEL_5;
    }

LABEL_8:
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: attempting to set invalid fdr path\n", "DaleFirmware", "setPath_Fdr");
    return result;
  }

  v5 = *(a2 + 8);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  v6 = v5 - 1;
  if ((v4 & 0x80000000) != 0)
  {
    if (*(*a2 + v6) == 47)
    {
      goto LABEL_19;
    }
  }

  else if (*(a2 + v6) == 47)
  {
    goto LABEL_19;
  }

  *(&v14.__r_.__value_.__s + 23) = 1;
  LOWORD(v14.__r_.__value_.__l.__data_) = 47;
  if ((v4 & 0x80000000) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = std::string::insert(&v14, 0, v9, v10);
  v12 = v11->__r_.__value_.__r.__words[0];
  v15[0] = v11->__r_.__value_.__l.__size_;
  *(v15 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
  v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v12;
  *(a2 + 8) = v15[0];
  *(a2 + 15) = *(v15 + 7);
  *(a2 + 23) = v13;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (*(a1 + 159) < 0)
  {
LABEL_20:
    operator delete(a1[17]);
  }

LABEL_21:
  result = *a2;
  a1[19] = *(a2 + 16);
  *(a1 + 17) = result;
  *(a2 + 23) = 0;
  *a2 = 0;
  return result;
}

void sub_1E5339F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL DaleFirmware::createImage_Loader(DaleFirmware *this)
{
  v15 = 1;
  v16 = 0;
  v1 = *(this + 111);
  if (v1 >= 0)
  {
    v2 = *(this + 111);
  }

  else
  {
    v2 = *(this + 12);
  }

  v3 = v2 + 13;
  if (v2 + 13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v14 = 0;
    v13 = 0uLL;
    v6 = &v13;
    HIBYTE(v14) = v2 + 13;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v13 + 1) = v2 + 13;
    v14 = v5 | 0x8000000000000000;
    *&v13 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 88;
  }

  else
  {
    v7 = *(this + 11);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "preloader.bin");
  v17 = v13;
  v18 = v14;
  v14 = 0;
  v13 = 0uLL;
  v19 = 0;
  v20 = 1;
  v8 = DaleImage::create(&v15, &v21);
  v9 = v21;
  v21 = 0;
  if (v20 == 1)
  {
    if (v19 != -1)
    {
      v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v23[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v23[v19])(&v22, &v17);
    }

    v19 = -1;
  }

  if (v9)
  {
    v10 = *(this + 20);
    *(this + 20) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create loader image\n", "DaleFirmware", "createImage_Loader");
  }

  return v9 != 0;
}

void sub_1E533A15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_DDR(DaleFirmware *this)
{
  v7 = 2;
  v8 = 1;
  v9[0] = 0;
  v11 = 0;
  v2 = DaleImage::create(&v7, &v12);
  v3 = v12;
  v12 = 0;
  if (v11 == 1)
  {
    if (v10 != -1)
    {
      v14[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v14[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v2 = (v14[v10])(&v13, v9);
    }

    v10 = -1;
  }

  if (v3)
  {
    v4 = *(this + 21);
    *(this + 21) = v3;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create ddr image\n", "DaleFirmware", "createImage_DDR");
  }

  return v3 != 0;
}

void sub_1E533A318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_BBTicket(DaleFirmware *this)
{
  v15 = 3;
  v16 = 1;
  v1 = *(this + 111);
  if (v1 >= 0)
  {
    v2 = *(this + 111);
  }

  else
  {
    v2 = *(this + 12);
  }

  v3 = v2 + 12;
  if (v2 + 12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v14 = 0;
    v13 = 0uLL;
    v6 = &v13;
    HIBYTE(v14) = v2 + 12;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v13 + 1) = v2 + 12;
    v14 = v5 | 0x8000000000000000;
    *&v13 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 88;
  }

  else
  {
    v7 = *(this + 11);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "bbticket.der");
  v18 = v14;
  v17 = v13;
  v13 = 0uLL;
  v14 = 0;
  v19 = 0;
  v20 = 1;
  v8 = DaleImage::create(&v15, &v21);
  v9 = v21;
  v21 = 0;
  if (v20 == 1)
  {
    if (v19 != -1)
    {
      v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v23[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v23[v19])(&v22, &v17);
    }

    v19 = -1;
  }

  if (v9)
  {
    v10 = *(this + 22);
    *(this + 22) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create bbticket image\n", "DaleFirmware", "createImage_BBTicket");
  }

  return v9 != 0;
}

void sub_1E533A520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_BBCfgHashTable(DaleFirmware *this)
{
  v15 = 4;
  v16 = 0;
  v1 = *(this + 111);
  if (v1 >= 0)
  {
    v2 = *(this + 111);
  }

  else
  {
    v2 = *(this + 12);
  }

  v3 = v2 + 13;
  if (v2 + 13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v14 = 0;
    v13 = 0uLL;
    v6 = &v13;
    HIBYTE(v14) = v2 + 13;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v13 + 1) = v2 + 13;
    v14 = v5 | 0x8000000000000000;
    *&v13 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 88;
  }

  else
  {
    v7 = *(this + 11);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "bbcfg_hdr.bin");
  v17 = v13;
  v18 = v14;
  v14 = 0;
  v13 = 0uLL;
  v19 = 0;
  v20 = 1;
  v8 = DaleImage::create(&v15, &v21);
  v9 = v21;
  v21 = 0;
  if (v20 == 1)
  {
    if (v19 != -1)
    {
      v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v23[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v23[v19])(&v22, &v17);
    }

    v19 = -1;
  }

  if (v9)
  {
    v10 = *(this + 23);
    *(this + 23) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create bbcfg hash table image\n", "DaleFirmware", "createImage_BBCfgHashTable");
  }

  return v9 != 0;
}

void sub_1E533A720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_BBCfgSegment(DaleFirmware *this)
{
  v7 = 5;
  v8 = 1;
  v9[0] = 0;
  v11 = 0;
  v2 = DaleImage::create(&v7, &v12);
  v3 = v12;
  v12 = 0;
  if (v11 == 1)
  {
    if (v10 != -1)
    {
      v14[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v14[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v2 = (v14[v10])(&v13, v9);
    }

    v10 = -1;
  }

  if (v3)
  {
    v4 = *(this + 24);
    *(this + 24) = v3;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create bbcfg segment image\n", "DaleFirmware", "createImage_BBCfgSegment");
  }

  return v3 != 0;
}

void sub_1E533A854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_ModemBundle(DaleFirmware *this)
{
  v15 = 6;
  v16 = 0;
  v1 = *(this + 111);
  if (v1 >= 0)
  {
    v2 = *(this + 111);
  }

  else
  {
    v2 = *(this + 12);
  }

  v3 = v2 + 16;
  if (v2 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v14 = 0;
    v13 = 0uLL;
    v6 = &v13;
    HIBYTE(v14) = v2 + 16;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v13 + 1) = v2 + 16;
    v14 = v5 | 0x8000000000000000;
    *&v13 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 88;
  }

  else
  {
    v7 = *(this + 11);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "modem-bundle.img");
  v18 = v14;
  v17 = v13;
  v13 = 0uLL;
  v14 = 0;
  v19 = 0;
  v20 = 1;
  v8 = DaleImage::create(&v15, &v21);
  v9 = v21;
  v21 = 0;
  if (v20 == 1)
  {
    if (v19 != -1)
    {
      v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v23[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v23[v19])(&v22, &v17);
    }

    v19 = -1;
  }

  if (v9)
  {
    v10 = *(this + 25);
    *(this + 25) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create modem bundle image\n", "DaleFirmware", "createImage_ModemBundle");
  }

  return v9 != 0;
}

void sub_1E533AA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_Calibration(DaleFirmware *this)
{
  v15 = 7;
  v16 = 1;
  v1 = *(this + 159);
  if (v1 >= 0)
  {
    v2 = *(this + 159);
  }

  else
  {
    v2 = *(this + 18);
  }

  v3 = v2 + 4;
  if (v2 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v14 = 0;
    v13 = 0uLL;
    v6 = &v13;
    HIBYTE(v14) = v2 + 4;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v13 + 1) = v2 + 4;
    v14 = v5 | 0x8000000000000000;
    *&v13 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 136;
  }

  else
  {
    v7 = *(this + 17);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "bbcl");
  v17 = v13;
  v18 = v14;
  v14 = 0;
  v13 = 0uLL;
  v19 = 0;
  v20 = 1;
  v8 = DaleImage::create(&v15, &v21);
  v9 = v21;
  v21 = 0;
  if (v20 == 1)
  {
    if (v19 != -1)
    {
      v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v23[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v23[v19])(&v22, &v17);
    }

    v19 = -1;
  }

  if (v9)
  {
    v10 = *(this + 26);
    *(this + 26) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create calibration image\n", "DaleFirmware", "createImage_Calibration");
  }

  return v9 != 0;
}

void sub_1E533AC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_ProvisioningManifest(DaleFirmware *this)
{
  v15 = 8;
  v16 = 1;
  v1 = *(this + 159);
  if (v1 >= 0)
  {
    v2 = *(this + 159);
  }

  else
  {
    v2 = *(this + 18);
  }

  v3 = v2 + 4;
  if (v2 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v14 = 0;
    v13 = 0uLL;
    v6 = &v13;
    HIBYTE(v14) = v2 + 4;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v13 + 1) = v2 + 4;
    v14 = v5 | 0x8000000000000000;
    *&v13 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 136;
  }

  else
  {
    v7 = *(this + 17);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "bbpv");
  v17 = v13;
  v18 = v14;
  v14 = 0;
  v13 = 0uLL;
  v19 = 0;
  v20 = 1;
  v8 = DaleImage::create(&v15, &v21);
  v9 = v21;
  v21 = 0;
  if (v20 == 1)
  {
    if (v19 != -1)
    {
      v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v23[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v23[v19])(&v22, &v17);
    }

    v19 = -1;
  }

  if (v9)
  {
    v10 = *(this + 29);
    *(this + 29) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create provisioning manifest image\n", "DaleFirmware", "createImage_ProvisioningManifest");
  }

  return v9 != 0;
}

void sub_1E533AE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_DynamicNVRAM(DaleFirmware *this)
{
  v15 = 9;
  v16 = 1;
  v1 = *(this + 135);
  if (v1 >= 0)
  {
    v2 = *(this + 135);
  }

  else
  {
    v2 = *(this + 15);
  }

  v3 = v2 + 4;
  if (v2 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v14 = 0;
    v13 = 0uLL;
    v6 = &v13;
    HIBYTE(v14) = v2 + 4;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v13 + 1) = v2 + 4;
    v14 = v5 | 0x8000000000000000;
    *&v13 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 112;
  }

  else
  {
    v7 = *(this + 14);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "nvrm");
  v17 = v13;
  v18 = v14;
  v14 = 0;
  v13 = 0uLL;
  v19 = 0;
  v20 = 1;
  v8 = DaleImage::create(&v15, &v21);
  v9 = v21;
  v21 = 0;
  if (v20 == 1)
  {
    if (v19 != -1)
    {
      v23[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v23[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v23[v19])(&v22, &v17);
    }

    v19 = -1;
  }

  if (v9)
  {
    v10 = *(this + 27);
    *(this + 27) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create dynamic nvram image\n", "DaleFirmware", "createImage_DynamicNVRAM");
  }

  return v9 != 0;
}

void sub_1E533B034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_SystemBundle(DaleFirmware *this)
{
  v1 = *(this + 111);
  if (v1 >= 0)
  {
    v2 = *(this + 111);
  }

  else
  {
    v2 = *(this + 12);
  }

  v3 = v2 + 14;
  if (v2 + 14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v25 = 0;
    __p = 0uLL;
    HIBYTE(v25) = v2 + 14;
    if (!v2)
    {
      qmemcpy(&__p, "sys-bundle.img", 14);
      v17 = 10;
      v18 = 0;
      v16 = 0xE00000000000000;
      v15 = 0uLL;
      v9 = &v15;
      goto LABEL_22;
    }

    p_p = &__p;
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    p_p = operator new(v5);
    *(&__p + 1) = v2 + 14;
    v25 = v5 | 0x8000000000000000;
    *&__p = p_p;
  }

  if (v1 >= 0)
  {
    v7 = this + 88;
  }

  else
  {
    v7 = *(this + 11);
  }

  memmove(p_p, v7, v2);
  strcpy(p_p + v2, "sys-bundle.img");
  v17 = 10;
  v18 = 0;
  if (v3 <= 0x16)
  {
    v16 = 0;
    v15 = 0uLL;
    v9 = &v15;
    HIBYTE(v16) = v2 + 14;
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v3 | 7) + 1;
    }

    v9 = operator new(v8);
    *(&v15 + 1) = v2 + 14;
    v16 = v8 | 0x8000000000000000;
    *&v15 = v9;
  }

  memmove(v9, v7, v2);
LABEL_22:
  strcpy(v9 + v2, "sys-bundle.img");
  v19 = v15;
  v20 = v16;
  v16 = 0;
  v15 = 0uLL;
  v21 = 0;
  v22 = 1;
  v10 = DaleImage::create(&v17, &v23);
  v11 = v23;
  v23 = 0;
  if (v22 == 1)
  {
    if (v21 != -1)
    {
      v27[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v27[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v10 = (v27[v21])(&v26, &v19);
    }

    v21 = -1;
  }

  if (v11)
  {
    v12 = *(this + 28);
    *(this + 28) = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create system bundle image\n", "DaleFirmware", "createImage_SystemBundle");
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  return v11 != 0;
}

void sub_1E533B2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICECommunication::setTransportCreationTimeout(BBUICECommunication *this, double a2)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
LABEL_7:
      *(this + 2) = a2;
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_7;
  }

  _BBULog(2, 0, "BBUICECommunication", "", "Transport timeout set to %f from %f\n", a2, *(this + 2));
  v4 = gBBULogMaskGet(void)::once;
  *(this + 2) = a2;
  if (v4 != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

LABEL_8:
  if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICECommunication", "", "Boot-up transport timeout set to %f from %f\n", a2, *(this + 3));
  }

  *(this + 3) = a2;
  return 0;
}

uint64_t BBUICECommunication::freeTransport(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    close(v3);
    *(a1 + 56) = -1;
  }

  return TelephonyUtilTransportFree();
}

CFErrorRef BBUpdaterExtremePrivate::makeCFError(CFIndex code, const char *a2)
{
  v2 = code;
  keys[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  if (a2 && (v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u)) != 0)
  {
    v5 = *MEMORY[0x1E695E650];
    values = v4;
    keys[0] = v5;
    v6 = v4;
    v7 = CFDictionaryCreate(v3, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v6);
    result = CFErrorCreate(v3, @"BBUpdater", v2, v7);
    if (v7)
    {
      v9 = result;
      CFRelease(v7);
      return v9;
    }
  }

  else
  {

    return CFErrorCreate(v3, @"BBUpdater", v2, 0);
  }

  return result;
}

const char *_BBUFSDebugPrint(const char *result, const char *a2, ...)
{
  va_start(va, a2);
  if (sDelegate)
  {
    return sDelegate(result, a2, va);
  }

  return result;
}

void _BBUFSDebugPrintOsLog(const char *a1, const char *a2, va_list a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    memset(__b, 170, sizeof(__b));
    vsnprintf(__b, 0x400uLL, a2, a3);
    if (qword_1ED9497A0 == -1)
    {
      v5 = _MergedGlobals_8;
      if (!os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1ED9497A0, &__block_literal_global_5);
      v5 = _MergedGlobals_8;
      if (!os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }
    }

    v6 = 136315138;
    v7 = __b;
    _os_log_impl(&dword_1E5234000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }
}

os_log_t ___ZL25_BBUFSDebugGetOsLogObjectv_block_invoke()
{
  result = os_log_create("com.apple.telephony.baseband", "bbufs");
  _MergedGlobals_8 = result;
  return result;
}

void BBUCFDataDataSource::~BBUCFDataDataSource(BBUCFDataDataSource *this)
{
  *this = &unk_1F5F04B00;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04B00;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

uint64_t BBUCFDataDataSource::copyData(CFDataRef *this, unsigned __int8 *a2, int a3, unsigned int *a4, unsigned int a5)
{
  LODWORD(v7) = a3;
  v10 = (*(*this + 3))(this);
  v11 = v10 - a5;
  if (v10 >= a5)
  {
    if (v11 >= v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v11;
    }

    v13.location = a5;
    v13.length = v7;
    CFDataGetBytes(this[1], v13, a2);
  }

  else
  {
    LODWORD(v7) = 0;
  }

  *a4 = v7;
  return 0;
}

const __CFData *BBUCFDataDataSource::getSize(BBUCFDataDataSource *this)
{
  result = *(this + 1);
  if (result)
  {
    return CFDataGetLength(result);
  }

  return result;
}

void BBUEURPersonalizationParameters::EURNonce::~EURNonce(BBUEURPersonalizationParameters::EURNonce *this)
{
  *this = &unk_1F5F04B68;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04B68;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void cfDataToCString(const __CFData *a1, const __CFData *a2)
{
  v2 = a1;
  if (!a2)
  {
    *(a1 + 23) = 0;
    *a1 = 0;
    return;
  }

  CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  v5 = operator new[]((3 * Length + 1));
  TelephonyUtilBinToHex();
  memset(v2, 170, 24);
  v6 = strlen(v5);
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

    v9 = operator new(v8);
    *(v2 + 1) = v7;
    *(v2 + 2) = v8 | 0x8000000000000000;
    *v2 = v9;
    v2 = v9;
  }

  else
  {
    *(v2 + 23) = v6;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  memcpy(v2, v5, v7);
LABEL_12:
  *(v2 + v7) = 0;

  operator delete[](v5);
}

void BBUEURPersonalizationParameters::EURSerialNumber::~EURSerialNumber(BBUEURPersonalizationParameters::EURSerialNumber *this)
{
  *this = &unk_1F5F04B98;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04B98;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

uint64_t BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(BBUEURPersonalizationParameters::EURSerialNumber *this, const unsigned __int8 *a2)
{
  v2 = a2;
  if (capabilities::radio::mav25Plus(this))
  {
    if (v2 != 64)
    {
      return 0;
    }
  }

  else if (v2 != 32)
  {
    return 0;
  }

  v5 = v2 + 7;
  v6 = (v2 + 7) >> 3;
  v7 = operator new(0x10uLL);
  *v7 = &unk_1F5F04B98;
  v7[1] = 0;
  v8 = v7;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v5 >> 3);
  if (!Mutable)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x8Cu, "Assertion failure(data)");
  }

  v10 = Mutable;
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (v5 < 0x40)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  v16 = v6 - 1;
  if (!((v6 - 1) >> 32))
  {
    v17 = (v6 - 1) + 1;
    if (MutableBytePtr >= this + v17 || this + v17 - v6 >= &MutableBytePtr[v6])
    {
      if (v5 >= 0x100)
      {
        v12 = v6 & 0x1FFFFFE0;
        v19 = (MutableBytePtr + 16);
        v20 = v12;
        do
        {
          v21 = this + v16;
          v22 = vrev64q_s8(*(v21 - 15));
          v23 = vrev64q_s8(*(v21 - 31));
          v19[-1] = vextq_s8(v22, v22, 8uLL);
          *v19 = vextq_s8(v23, v23, 8uLL);
          v19 += 2;
          v16 -= 32;
          v20 -= 32;
        }

        while (v20);
        if (v12 == v6)
        {
          goto LABEL_10;
        }

        if ((v6 & 0x18) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v12 = 0;
      }

      v24 = v12;
      v12 = v6 & 0x1FFFFFF8;
      v25 = &MutableBytePtr[v24];
      v26 = v24 - v12;
      v27 = ~v24 + v6;
      do
      {
        *v25++ = vrev64_s8(*(this + v27 - 7));
        v27 -= 8;
        v26 += 8;
      }

      while (v26);
      if (v12 == v6)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_8:
  v13 = v6 - v12;
  v14 = &MutableBytePtr[v12];
  v15 = ~v12 + v6;
  do
  {
    *v14++ = *(this + v15--);
    --v13;
  }

  while (v13);
LABEL_10:
  CFDataSetLength(v10, v5 >> 3);
  result = v8;
  *(v8 + 8) = v10;
  return result;
}

void BBUEURPersonalizationParameters::EURCertID::~EURCertID(BBUEURPersonalizationParameters::EURCertID *this)
{
  *this = &unk_1F5F04BC8;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04BC8;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

const __CFData *BBUEURPersonalizationParameters::EURCertID::createFromPublicKeyHashData(const __CFData *this, const __CFData *a2)
{
  if (this)
  {
    v2 = this;
    BytePtr = CFDataGetBytePtr(this);
    if ((CFDataGetLength(v2) & 0xFFFFFFFCLL) != 0)
    {
      v4 = operator new(0x10uLL);
      *v4 = &unk_1F5F04BC8;
      v4[1] = 0;
      valuePtr = bswap32(*BytePtr);
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      v4[1] = v5;
      if (!v5)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 97, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x104u, "Assertion failure(certID->fNumber && Failed to create certID from public key hash.)");
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

uint64_t BBUEURPersonalizationParameters::EURCertID::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v5 = -1431655766;
  if ((ctu::cf::assign(&v5, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 97, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x122u, "Assertion failure(success && Failed to create certID.)");
  }

  return v5;
}

void BBUEURPersonalizationParameters::EURChipID::~EURChipID(BBUEURPersonalizationParameters::EURChipID *this)
{
  *this = &unk_1F5F04BF8;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04BF8;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void *BBUEURPersonalizationParameters::EURChipID::createFromChipID(BBUEURPersonalizationParameters::EURChipID *this)
{
  v1 = this;
  v2 = operator new(0x10uLL);
  *v2 = &unk_1F5F04BF8;
  v2[1] = 0;
  valuePtr = v1;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  v2[1] = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 98, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x13Bu, "Assertion failure(chipID->fNumber && Failed to create certID.)");
  }

  return v2;
}

uint64_t BBUEURPersonalizationParameters::EURChipID::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v5 = -1431655766;
  if ((ctu::cf::assign(&v5, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 98, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x156u, "Assertion failure(success && Failed to create chipID.)");
  }

  return v5;
}

void BBUEURPersonalizationParameters::EURKeyStatus::~EURKeyStatus(BBUEURPersonalizationParameters::EURKeyStatus *this)
{
  *this = &unk_1F5F04C28;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04C28;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void *BBUEURPersonalizationParameters::EURKeyStatus::createFromKeyStatus(BBUEURPersonalizationParameters::EURKeyStatus *this)
{
  v1 = this;
  v2 = operator new(0x10uLL);
  *v2 = &unk_1F5F04C28;
  v2[1] = 0;
  valuePtr = v1;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  v2[1] = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 99, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x16Fu, "Assertion failure(status->fNumber && Failed to create key status.)");
  }

  return v2;
}

uint64_t BBUEURPersonalizationParameters::EURKeyStatus::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v5 = -1431655766;
  if ((ctu::cf::assign(&v5, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 99, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x184u, "Assertion failure(success && Failed to create key status.)");
  }

  return v5;
}

void BBUEURPersonalizationParameters::EURKeyHash::~EURKeyHash(BBUEURPersonalizationParameters::EURKeyHash *this)
{
  *this = &unk_1F5F04C58;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04C58;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void BBUEURPersonalizationParameters::EURPublicKeyHash::~EURPublicKeyHash(BBUEURPersonalizationParameters::EURPublicKeyHash *this)
{
  *this = &unk_1F5F04C88;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04C88;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

BOOL BBUHashData::compareHash(BBUHashData *this, BBUFeedback *a2, const unsigned __int8 *a3, const unsigned __int8 *a4, const char *a5)
{
  v10 = (*(*this + 32))(this);
  v11 = memcmp(a3, a4, v10);
  if (!v11)
  {
    return v11 == 0;
  }

  BBUFeedback::handleComment(a2, "%s Hash mismatch", a5);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_4:
      if (gBBULogVerbosity >= 1)
      {
        _BBULog(1, 1, "BBUEUR2HashData", "", "%s Hash mismatch\n", a5);
      }
    }
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  BBUFeedback::handleComment(a2, "\t %s:  %s", "File    ", &__p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v16 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "Manifest", p_p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  return v11 == 0;
}

void sub_1E533C898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *BBUProgrammer::Item::createFromImage(int a1, uint64_t *a2)
{
  if ((a1 - 16391) >= 0x26)
  {
    if ((a1 - 20480) < 8)
    {
      v4 = operator new(0x38uLL);
      BBUICE16Programmer::ICE16Item::ICE16Item(v4, a1, a2);
    }

    else if ((a1 - 16385) >= 6)
    {
      if ((a1 - 0x2000) > 1)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 85, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0xC9u, "Assertion failure(false && Unrecognized BBU programmer item.)");
      }

      v4 = operator new(0x18uLL);
      BBUEUR2Programmer::EUR2Item::EUR2Item(v4, a1, a2);
    }

    else
    {
      v4 = operator new(0x18uLL);
      BBUEUR4Programmer::EUR4Item::EUR4Item(v4, a1, a2);
    }
  }

  else
  {
    v4 = operator new(0x20uLL);
    BBUEUR10Programmer::EUR10Item::EUR10Item(v4, a1, a2);
  }

  return v4;
}

uint64_t BBUProgrammer::BBUProgrammer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_1F5F04DD0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 40) = result + 40;
  *(result + 48) = result + 40;
  *(result + 56) = 0;
  *(result + 64) = 0;
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0xD4u, "Assertion failure(transport && BBU telephony util transport error.)");
  }

  return result;
}

void sub_1E533CAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  __cxa_free_exception(v10);
  std::list<BBUProgrammer::Item *>::~list(a10);
  _Unwind_Resume(a1);
}

void BBUProgrammer::~BBUProgrammer(BBUProgrammer *this)
{
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }
}

uint64_t BBUProgrammer::addItemsFromList(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v5 = a1 + 40;
    do
    {
      v6 = *(v2 + 16);
      if (!v6)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0xE1u, "Assertion failure(item && Error: loading programmer items!)");
      }

      v7 = operator new(0x18uLL);
      v7[1] = v5;
      v7[2] = v6;
      v8 = *(a1 + 40);
      *v7 = v8;
      *(v8 + 8) = v7;
      *(a1 + 40) = v7;
      ++*(a1 + 56);
      v2 = *(v2 + 8);
    }

    while (v2 != a2);
  }

  return 0;
}

char *BBUProgrammer::create(capabilities::updater *a1, uint64_t a2, uint64_t a3)
{
  ProgrammerType = capabilities::updater::getProgrammerType(a1);
  if (ProgrammerType > 2)
  {
    if (ProgrammerType == 3)
    {
      v3 = operator new(0x198uLL);
      BBUICE18Programmer::BBUICE18Programmer(v3, a1, a2, a3);
      return v3;
    }

    if (ProgrammerType != 4)
    {
      if (ProgrammerType != 5)
      {
        return v3;
      }

      goto LABEL_13;
    }
  }

  else if (ProgrammerType != 1)
  {
    if (ProgrammerType == 2)
    {
      v3 = operator new(0x140uLL);
      BBUICEProgrammer::BBUICEProgrammer(v3, a1, a2, a3);
      *v3 = &unk_1F5F04688;
      *(v3 + 81) = 0;
      v3[111] = 0;
      v3[88] = 0;
      *(v3 + 28) = 0;
      pthread_mutex_init((v3 + 120), 0);
      *(v3 + 46) = 0;
      *(v3 + 12) = 0u;
      *(v3 + 13) = 0u;
      *(v3 + 56) = 1065353216;
      *(v3 + 30) = 0;
      *(v3 + 31) = 0;
      *(v3 + 29) = 0;
      v3[279] = 3;
      strcpy(v3 + 256, "EBL");
      *(v3 + 280) = xmmword_1E5393C80;
      *(v3 + 308) = 0;
      *(v3 + 300) = 0;
      *(v3 + 74) = 257;
      return v3;
    }

    if (ProgrammerType)
    {
      return v3;
    }

LABEL_13:
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0x10Au, "Assertion failure(false && Unrecognized radio type.)");
  }

  v9 = operator new(0x1108uLL);
  BBUEUR2Programmer::BBUEUR2Programmer(v9, a1, a2, a3);
  v9[4327] = 0;
  *(v9 + 537) = 0;
  v9[4304] = 0;
  *v9 = &unk_1F5F02F98;
  *(v9 + 541) = 0;
  *(v9 + 543) = 0;
  *(v9 + 542) = 0;
  v10 = operator new(0x400uLL);
  *(v9 + 541) = v10;
  *(v9 + 543) = v10 + 1024;
  bzero(v10, 0x400uLL);
  *(v9 + 542) = v10 + 1024;
  *(v9 + 544) = v10;
  return v9;
}

void sub_1E533CEF4(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  BBUICEProgrammer::~BBUICEProgrammer(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1E533CF58(_Unwind_Exception *a1)
{
  BBUEUR10Programmer::~BBUEUR10Programmer(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *BBUProgrammer::addProgressBarTimes(uint64_t **this, BBUFeedback *a2)
{
  result = capabilities::updater::getProgrammerProgressBarTimesType(this);
  if (result == 2)
  {
    v6 = this + 2;
    v5 = this[2];
    if (v5)
    {
      while (1)
      {
        while (1)
        {
          v7 = v5;
          v8 = *(v5 + 8);
          if (v8 < 2)
          {
            break;
          }

          v5 = *v7;
          v6 = v7;
          if (!*v7)
          {
            goto LABEL_13;
          }
        }

        if (v8 == 1)
        {
          break;
        }

        v5 = v7[1];
        if (!v5)
        {
          v6 = v7 + 1;
          goto LABEL_13;
        }
      }
    }

    else
    {
      v7 = this + 2;
LABEL_13:
      v9 = v7;
      v7 = operator new(0x30uLL);
      *(v7 + 8) = 1;
      v7[5] = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = v9;
      *v6 = v7;
      v10 = *this[1];
      if (v10)
      {
        this[1] = v10;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[2], v7);
      this[3] = (this[3] + 1);
    }

    v7[5] = 0x408F400000000000;
  }

  else
  {
    if (result != 1)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0x11Eu, "Assertion failure(false && Unrecognized radio type.)");
    }

    return BBUEUR20Programmer::addProgressBarTimes(this, v4);
  }

  return result;
}

uint64_t BBUProgrammer::connect(BBUProgrammer *this)
{
  if (*(this + 32) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 74, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0x125u, "Assertion failure(!fConnected && Cannot finish connection, since BBU programmer is already (falsely) recognized as connected!)");
  }

  *(this + 32) = 1;
  return 0;
}

uint64_t BBUProgrammer::disconnect(BBUProgrammer *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 74, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0x12Eu, "Assertion failure(fConnected && Cannot finish disconnection, since BBU programmer is already (falsely) recognized as disconnected!)");
  }

  *(this + 32) = 0;
  return 0;
}

uint64_t BBUProgrammer::cmdCopyMei(BBUProgrammer *this, const __CFDictionary **a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  memset(v11, 170, 25);
  memset(&value[1], 170, 7);
  memset(v10, 170, 15);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (ETLGSMGetIMEI() && ETLGSMMakeStringFromIMEI())
  {
    value[0] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::convert_copy(value, v11, 0x8000100, v3, v5);
    CFDictionarySetValue(Mutable, @"imei", value[0]);
    CFRelease(value[0]);
    v6 = 1;
    if (!ETLCDMAGetMEID())
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (!ETLCDMAGetMEID())
    {
      goto LABEL_8;
    }
  }

  if (ETLCDMAMakeStringFromMEID())
  {
    value[0] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::convert_copy(value, v10, 0x8000100, v3, v7);
    CFDictionarySetValue(Mutable, @"meid", value[0]);
    CFRelease(value[0]);
LABEL_9:
    result = 0;
    *a2 = Mutable;
    return result;
  }

LABEL_8:
  if (v6)
  {
    goto LABEL_9;
  }

  return 1;
}

uint64_t *std::list<BBUProgrammer::Item *>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

ACFULogging *DaleTransport_BootLogger::create@<X0>(ACFULogging *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  *a2 = 0;
  a2[1] = 0;
  if (*(result + 1) == 1)
  {
    std::allocate_shared[abi:ne200100]<DaleTransport_BootLogger_PCIE,std::allocator<DaleTransport_BootLogger_PCIE>,DaleTransport_BootLogger::Parameters &,0>(result, &v9);
    *a2 = v9;
    LogInstance = ACFULogging::getLogInstance(v5);
    return ACFULogging::handleMessage(LogInstance, 0, "%s::%s: [Boot Logger] PCIE is created\n");
  }

  if (*(result + 1))
  {
    return result;
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
LABEL_5:
      if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
  {
LABEL_6:
    if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
    {
      v4 = ACFULogging::getLogInstance(result);
      return ACFULogging::handleMessage(v4, 2, "%s::%s: UART can only be open in restored environment. If you wish to open UART in OS mode, please open through nanokdp\n");
    }
  }

LABEL_11:
  std::allocate_shared[abi:ne200100]<DaleTransport_BootLogger_UART,std::allocator<DaleTransport_BootLogger_UART>,DaleTransport_BootLogger::Parameters &,0>(v2, &v9);
  *a2 = v9;
  v8 = ACFULogging::getLogInstance(v7);
  return ACFULogging::handleMessage(v8, 0, "%s::%s: [Boot Logger] UART created\n");
}

uint64_t DaleTransport_BootLogger::DaleTransport_BootLogger(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5F04E68;
  *(a1 + 8) = *a2;
  v3 = *(a2 + 8);
  *(a1 + 16) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
  *&v6.__r_.__value_.__r.__words[1] = xmmword_1E538EA40;
  strcpy(v6.__r_.__value_.__l.__data_, "com.apple.telephony.basebandservices");
  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "dale.transport");
  support::log::client::client((a1 + 64), &v6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v6.__r_.__value_.__l.__data_);
  return a1;
}

void sub_1E533D6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      v22 = *(v20 + 56);
      if (!v22)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  v22 = *(v20 + 56);
  if (!v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  dispatch_group_leave(v22);
  v23 = *(v20 + 56);
  if (v23)
  {
    dispatch_release(v23);
  }

LABEL_9:
  std::function<void ()(unsigned char const*,long)>::~function(v20 + 24);
  v24 = *(v20 + 16);
  if (v24)
  {
    dispatch_release(v24);
  }

  _Unwind_Resume(a1);
}

void DaleTransport_BootLogger::~DaleTransport_BootLogger(DaleTransport_BootLogger *this)
{
  *this = &unk_1F5F04E68;
  *(this + 8) = &unk_1F5EFEF10;
  v2 = *(this + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(this + 7);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = *(this + 6);
  if (v5 == (this + 24))
  {
    (*(*v5 + 32))(v5);
    v6 = *(this + 2);
    if (!v6)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
LABEL_11:
    dispatch_release(v6);
  }
}

void std::allocate_shared[abi:ne200100]<DaleTransport_BootLogger_UART,std::allocator<DaleTransport_BootLogger_UART>,DaleTransport_BootLogger::Parameters &,0>(__int16 *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = operator new(0xB8uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = &unk_1F5F04EA8;
  v5 = (v4 + 3);
  v6 = *a1;
  v7 = *(a1 + 1);
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_retain(v7);
  }

  v8 = v6;
  v9 = v7;
  DaleTransport_BootLogger::DaleTransport_BootLogger(v5, &v8);
  if (v7)
  {
    dispatch_release(v7);
    v4[3] = &unk_1F5F00DE0;
    v4[21] = 0;
    v4[22] = 0;
    dispatch_release(v7);
  }

  else
  {
    v4[3] = &unk_1F5F00DE0;
    v4[21] = 0;
    v4[22] = 0;
  }

  *a2 = v5;
  a2[1] = v4;
}

void sub_1E533D950(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
    dispatch_release(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<DaleTransport_BootLogger_UART>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F04EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocate_shared[abi:ne200100]<DaleTransport_BootLogger_PCIE,std::allocator<DaleTransport_BootLogger_PCIE>,DaleTransport_BootLogger::Parameters &,0>(__int16 *a1@<X1>, std::__shared_weak_count_vtbl **a2@<X8>)
{
  v4 = operator new(0x148uLL);
  *(v4 + 1) = 0;
  v5 = (v4 + 8);
  *(v4 + 2) = 0;
  *v4 = &unk_1F5F04EF8;
  v6 = (v4 + 24);
  v9 = *a1;
  v7 = *(a1 + 1);
  v10 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  DaleTransport_BootLogger_PCIE::DaleTransport_BootLogger_PCIE(v6, &v9);
  if (v7)
  {
    dispatch_release(v7);
  }

  *a2 = v6;
  a2[1] = v4;
  v8 = *(v4 + 22);
  if (v8)
  {
    if (v8->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 21) = v6;
    *(v4 + 22) = v4;
    std::__shared_weak_count::__release_weak(v8);
    if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 21) = v6;
    *(v4 + 22) = v4;
    if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (*(*v4 + 16))(v4);

  std::__shared_weak_count::__release_weak(v4);
}

void sub_1E533DB68(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<DaleTransport_BootLogger_PCIE>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F04EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t __cxx_global_var_init_34()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUEURMIImage::BBUEURMIImage(BBUEURMIImage *this, BBUDataSource *a2, uint64_t a3)
{
  *this = &unk_1F5F04F58;
  *(this + 1) = a2;
  *(this + 14) = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v3 = (this + 16);
  v12 = -1431655766;
  *(this + 6) = 0;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0xCu, "Assertion failure(fDataSource)");
    goto LABEL_39;
  }

  if ((*(*a2 + 16))(a2, v3, 40, &v12, a3))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 79, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0xEu, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy MI Image data.)");
    goto LABEL_39;
  }

  if (v12 != 40)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 79, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0xFu, "Assertion failure(( amountCopied == sizeof( MIBootImageHeader)) && Copied data size mismatch: Failed to copy MI Image data.)");
LABEL_39:
  }

  if (*v3 <= 0xBu && ((1 << *v3) & 0xC04) != 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_9;
    }

LABEL_26:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  *(this + 8) = (*(**(this + 1) + 24))(*(this + 1)) - 40;
  if (gBBULogMaskGet(void)::once != -1)
  {
    goto LABEL_26;
  }

LABEL_9:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (gBBULogVerbosity >= 7)
  {
    v6 = (*(*this + 16))(this);
    _BBULog(16, 7, v6, "", "Image ID: %u, Header version: %u\n", *(this + 4), *(this + 5));
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

LABEL_12:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (gBBULogVerbosity >= 7)
  {
    v7 = (*(*this + 16))(this);
    _BBULog(16, 7, v7, "", "Image Flash Address: %u, Image RAM Address: %u\n", *(this + 6), *(this + 7));
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

LABEL_15:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (gBBULogVerbosity >= 7)
  {
    v8 = (*(*this + 16))(this);
    _BBULog(16, 7, v8, "", "Image Size: %u, Code Size: %u\n", *(this + 8), *(this + 9));
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

LABEL_18:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (gBBULogVerbosity >= 7)
  {
    v9 = (*(*this + 16))(this);
    _BBULog(16, 7, v9, "", "Signature Address: %u, Signature Size: %u\n", *(this + 10), *(this + 11));
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
      {
        return;
      }

      goto LABEL_22;
    }
  }

LABEL_21:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
  {
    return;
  }

LABEL_22:
  if (gBBULogVerbosity >= 7)
  {
    v10 = (*(*this + 16))(this);
    _BBULog(16, 7, v10, "", "Cert Chain Address: %u, Cert Chain Size: %up\n", *(this + 12), *(this + 13));
  }
}

void BBUEURMIImage::~BBUEURMIImage(BBUEURMIImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

uint64_t BBUEURMIImage::getWritePayloadData(BBUEURMIImage *this, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v9 = -1431655766;
  v5 = *(this + 1);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0x35u, "Assertion failure(fDataSource)");
    goto LABEL_8;
  }

  v6 = a3;
  result = (*(*v5 + 16))(v5, a2, a3, &v9, (*(this + 14) + a4));
  if (result)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 79, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0x37u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy MI Image data.)");
    goto LABEL_8;
  }

  if (v9 != v6)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 79, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0x38u, "Assertion failure(( amountCopied == amount) && Copied data size mismatch: Failed to copy MI Image data.)");
LABEL_8:
  }

  return result;
}

FILE *fopen_file_func(int a1, char *__filename, char a3)
{
  v3 = a3 & 3;
  v4 = "r+b";
  v5 = "wb";
  if ((a3 & 8) == 0)
  {
    v5 = 0;
  }

  if ((a3 & 4) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = (a3 & 8) >> 3;
  }

  if ((a3 & 4) == 0)
  {
    v4 = v5;
  }

  if (v3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v3 == 1)
  {
    v8 = "rb";
  }

  else
  {
    v8 = v4;
  }

  if (__filename && (v7 & 1) != 0)
  {
    return fopen(__filename, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t fseek_file_func(int a1, FILE *a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 2)
  {
    return -1;
  }

  fseek(a2, a3, a4);
  return 0;
}

FILE *(**fill_fopen_filefunc(FILE *(**result)(int a1, char *__filename, char a3)))(int a1, char *__filename, char a3)
{
  *result = fopen_file_func;
  result[1] = fread_file_func;
  result[2] = fwrite_file_func;
  result[3] = ftell_file_func;
  result[4] = fseek_file_func;
  result[5] = fclose_file_func;
  result[6] = ferror_file_func;
  result[7] = 0;
  return result;
}

void BBUProfiler::BBUProfiler(BBUProfiler *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = *this;
    *this = Mutable;
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v4 = *(this + 3);
  v5 = *(this + 2);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = *(this + 6);
  v8 = v7 + *(this + 5);
  if (v6 == v8)
  {
    std::deque<ctu::cf::CFSharedRef<__CFDictionary>>::__add_back_capacity(this + 8);
    v5 = *(this + 2);
    v7 = *(this + 6);
    v8 = v7 + *(this + 5);
  }

  v9 = *this;
  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *this;
  if (v9)
  {
    CFRetain(v9);
    v7 = *(this + 6);
  }

  *(this + 6) = v7 + 1;
}

void sub_1E533E600(_Unwind_Exception *a1)
{
  std::stack<ctu::cf::CFSharedRef<__CFDictionary>>::~stack((v1 + 1));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(v1);
  _Unwind_Resume(a1);
}

void BBUProfiler::startStage(void *a1, uint64_t a2)
{
  v4 = a1[6] + a1[5] - 1;
  v5 = *(*(a1[2] + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
  if (v5)
  {
    CFRetain(v5);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  cf = 0;
  ctu::cf::convert_copy();
  v7 = cf;
  v14 = cf;
  cf = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
    if (v7)
    {
      CFDictionaryAddValue(v5, v7, Mutable);
    }

    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v8 = a1[3];
  v9 = a1[2];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v8 - v9) << 6) - 1;
  }

  v11 = a1[6];
  v12 = v11 + a1[5];
  if (v10 == v12)
  {
    std::deque<ctu::cf::CFSharedRef<__CFDictionary>>::__add_back_capacity((a1 + 1));
    v9 = a1[2];
    v11 = a1[6];
    v12 = v11 + a1[5];
  }

  *(*(v9 + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v12 & 0x1FF)) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
    v11 = a1[6];
  }

  a1[6] = v11 + 1;
  *(&v13.__r_.__value_.__s + 23) = 5;
  strcpy(&v13, "start");
  BBUProfiler::markEvent(a1, &v13);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1E533E804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void BBUProfiler::markEvent(void *a1, uint64_t a2)
{
  v3 = a1[6] + a1[5] - 1;
  v4 = *(*(a1[2] + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v3 & 0x1FF));
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = TelephonyUtilSystemMachTime();
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  v6 = *MEMORY[0x1E695E480];
  v12 = 0;
  ctu::cf::convert_copy();
  v7 = v12;
  v11 = v12;
  valuePtr = v5;
  v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
  v9 = v8;
  v12 = v8;
  if (v7 && v8)
  {
    CFDictionaryAddValue(v4, v7, v8);
  }

  else if (!v8)
  {
    goto LABEL_11;
  }

  CFRelease(v9);
LABEL_11:
  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
    if (!v4)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v4)
  {
LABEL_17:
    CFRelease(v4);
  }
}

void sub_1E533E9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a18);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t BBUProfiler::endStage(BBUProfiler *this)
{
  v36 = 4;
  strcpy(v35, "stop");
  BBUProfiler::markEvent(this, v35);
  v2 = *(this + 2);
  v3 = *(this + 5) + *(this + 6) - 1;
  v35[0] = 0xAAAAAAAAAAAAAAAALL;
  v35[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v35, *(*(v2 + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v3 & 0x1FF)));
  v34 = 0;
  ctu::cf::MakeCFString::MakeCFString(&v38, "stop");
  v4 = (*v35[0])(v35, v38);
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      ctu::cf::assign((&v34 + 4), v5, v7);
    }

    CFRelease(v5);
  }

  MEMORY[0x1E6926590](&v38);
  ctu::cf::MakeCFString::MakeCFString(&v38, "start");
  v8 = (*v35[0])(v35, v38);
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v34, v9, v11);
    }

    CFRelease(v9);
  }

  MEMORY[0x1E6926590](&v38);
  v12 = *(this + 6) + *(this + 5) - 1;
  v14 = v34;
  v13 = HIDWORD(v34);
  v15 = *MEMORY[0x1E695E480];
  v16 = *(*(*(this + 2) + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v12 & 0x1FF));
  v38 = 0;
  ctu::cf::convert_copy(&v38, "delta", 0x8000100, v15, v17);
  v18 = v13 - v14;
  v19 = v38;
  v37 = v38;
  valuePtr = v18;
  v20 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
  v21 = v20;
  v38 = v20;
  if (v19 && v20)
  {
    CFDictionaryAddValue(v16, v19, v20);
  }

  else if (!v20)
  {
    goto LABEL_14;
  }

  CFRelease(v21);
LABEL_14:
  if (v19)
  {
    CFRelease(v19);
  }

  v23 = *(this + 5);
  v22 = *(this + 6);
  v24 = v22 - 1;
  v25 = v22 - 1 + v23;
  v26 = *(this + 2);
  v27 = *(v26 + ((v25 >> 6) & 0x3FFFFFFFFFFFFF8));
  v28 = v25 & 0x1FF;
  v29 = *(v27 + 8 * v28);
  if (v29)
  {
    CFRetain(*(v27 + 8 * v28));
    v23 = *(this + 5);
    v22 = *(this + 6);
    v26 = *(this + 2);
    v24 = v22 - 1;
    v30 = *(*(v26 + (((v22 - 1 + v23) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v22 - 1 + v23) & 0x1FF));
    if (v30)
    {
      CFRelease(v30);
      v26 = *(this + 2);
      v23 = *(this + 5);
      v22 = *(this + 6);
      v24 = v22 - 1;
    }
  }

  v31 = *(this + 3);
  *(this + 6) = v24;
  if (v31 == v26)
  {
    v32 = 0;
  }

  else
  {
    v32 = ((v31 - v26) << 6) - 1;
  }

  if ((v32 - (v23 + v22) + 1) >= 0x400)
  {
    operator delete(*(v31 - 8));
    *(this + 3) -= 8;
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return MEMORY[0x1E69265E0](v35);
}

void sub_1E533ED2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  MEMORY[0x1E69265E0](va);
  _Unwind_Resume(a1);
}

void sub_1E533ED68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x1E69265E0](va, a2, a3);
  _Unwind_Resume(a1);
}

void sub_1E533ED80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  MEMORY[0x1E6926590](va1, a2, a3);
  MEMORY[0x1E69265E0](va);
  _Unwind_Resume(a1);
}

BOOL BBUProfiler::exportToFile(CFTypeRef *a1, uint64_t a2)
{
  v3 = *a1;
  CFRetain(*a1);
  v13 = v3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = __p;
  }

  v14 = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v15;
  }

  v17 = 0;
  v4 = *MEMORY[0x1E695E480];
  if (ctu::cf::convert_copy())
  {
    v5 = v17;
  }

  else
  {
    v5 = 0;
  }

  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v12 = v5;
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    operator delete(v15.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  v12 = v5;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_16:
  v6 = CFURLCreateWithFileSystemPath(v4, v5, kCFURLPOSIXPathStyle, 0);
  v16.__r_.__value_.__r.__words[0] = v6;
  v7 = CFWriteStreamCreateWithFile(0, v6);
  v15.__r_.__value_.__r.__words[0] = v7;
  if (!CFWriteStreamOpen(v7))
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v8 = CFPropertyListWrite(v3, v7, kCFPropertyListXMLFormat_v1_0, 0, 0);
  CFWriteStreamClose(v7);
  v9 = v8 != 0;
  if (v7)
  {
LABEL_23:
    CFRelease(v7);
  }

LABEL_24:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v9;
}

void sub_1E533EF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a17);
      _Unwind_Resume(a1);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

uint64_t std::stack<ctu::cf::CFSharedRef<__CFDictionary>>::~stack(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 9];
    v6 = *v5;
    v7 = (*v5 + 8 * (v4 & 0x1FF));
    v8 = *(v2 + (((*(a1 + 40) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v4) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        if (*v7)
        {
          CFRelease(*v7);
          v6 = *v5;
        }

        if (++v7 - v6 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_17;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_17:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<ctu::cf::CFSharedRef<__CFDictionary>>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (v3)
  {
    *(a1 + 32) = v4;
    v5 = *(a1 + 8);
    v63 = *v5;
    *(a1 + 8) = v5 + 1;
LABEL_4:
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v63);
    return;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = v7 - v9;
  v11 = &v6[-*a1];
  if (v7 - v9 < v11)
  {
    v12 = operator new(0x1000uLL);
    if (v6 != v7)
    {
      *v7 = v12;
      *(a1 + 16) = v7 + 8;
      return;
    }

    if (v9 != v8)
    {
      v23 = v9;
LABEL_61:
      *(v23 - 1) = v12;
      v63 = v12;
      *(a1 + 8) = v23;
      goto LABEL_4;
    }

    v46 = (v6 - v9) >> 2;
    if (v7 == v9)
    {
      v46 = 1;
    }

    if (!(v46 >> 61))
    {
      v47 = v12;
      v48 = (v46 + 3) >> 2;
      v49 = 8 * v46;
      v50 = operator new(8 * v46);
      v23 = &v50[8 * v48];
      v51 = v23;
      v12 = v47;
      if (v7 != v9)
      {
        v51 = &v23[v10];
        v52 = v7 - v9 - 8;
        v53 = &v50[8 * v48];
        v54 = v9;
        if (v52 < 0x38)
        {
          goto LABEL_67;
        }

        v55 = &v50[8 * v48];
        v53 = v55;
        v54 = v9;
        if ((v55 - v9) < 0x20)
        {
          goto LABEL_67;
        }

        v56 = (v52 >> 3) + 1;
        v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
        v53 = &v23[v57];
        v54 = &v9[v57];
        v58 = (v9 + 16);
        v59 = v55 + 16;
        v60 = v56 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v61 = *v58;
          *(v59 - 1) = *(v58 - 1);
          *v59 = v61;
          v58 += 2;
          v59 += 2;
          v60 -= 4;
        }

        while (v60);
        if (v56 != (v56 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_67:
          do
          {
            v62 = *v54;
            v54 += 8;
            *v53 = v62;
            v53 += 8;
          }

          while (v53 != v51);
        }
      }

      *a1 = v50;
      *(a1 + 8) = v23;
      *(a1 + 16) = v51;
      *(a1 + 24) = &v50[v49];
      if (v9)
      {
        operator delete(v8);
        v12 = v47;
        v23 = *(a1 + 8);
      }

      goto LABEL_61;
    }

LABEL_63:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = v11 >> 2;
  if (v6 == v8)
  {
    v13 = 1;
  }

  if (v13 >> 61)
  {
    goto LABEL_63;
  }

  v14 = 8 * v13;
  v15 = operator new(8 * v13);
  v16 = operator new(0x1000uLL);
  v17 = v16;
  v18 = &v15[v10];
  v19 = &v15[v14];
  if (v10 != v14)
  {
    goto LABEL_14;
  }

  if (v10 < 1)
  {
    if (v7 == v9)
    {
      v24 = 1;
    }

    else
    {
      v24 = v10 >> 2;
    }

    if (v24 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = operator new(8 * v24);
    v19 = &v18[8 * v24];
    operator delete(v15);
    v25 = *(a1 + 8);
    v7 = *(a1 + 16);
    v15 = v18;
    *v18 = v17;
    v20 = v18 + 8;
    if (v7 == v25)
    {
      goto LABEL_15;
    }

LABEL_31:
    while (v18 != v15)
    {
      v26 = v18;
LABEL_30:
      v27 = *(v7 - 1);
      v7 -= 8;
      *(v26 - 1) = v27;
      v21 = v26 - 8;
      v18 = v21;
      if (v7 == *(a1 + 8))
      {
        goto LABEL_16;
      }
    }

    if (v20 < v19)
    {
      v26 = &v15[8 * ((((v19 - v20) >> 3) + 1 + ((((v19 - v20) >> 3) + 1) >> 63)) >> 1)];
      v29 = v20 - v15;
      v28 = v20 == v15;
      v20 += 8 * ((((v19 - v20) >> 3) + 1 + ((((v19 - v20) >> 3) + 1) >> 63)) >> 1);
      if (!v28)
      {
        memmove(v26, v18, v29);
      }

      goto LABEL_30;
    }

    if (v19 == v15)
    {
      v30 = 1;
    }

    else
    {
      v30 = (v19 - v15) >> 2;
    }

    if (v30 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v31 = operator new(8 * v30);
    v32 = v31;
    v33 = (v30 + 3) >> 2;
    v26 = &v31[8 * v33];
    v34 = v20 - v15;
    v28 = v20 == v15;
    v20 = v26;
    if (!v28)
    {
      v20 = &v26[v34];
      v35 = v34 - 8;
      if (v35 >= 0x18 && (v36 = 8 * v33, (&v31[8 * v33] - v18) >= 0x20))
      {
        v40 = (v35 >> 3) + 1;
        v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
        v37 = &v26[v41];
        v38 = &v18[v41];
        v42 = (v18 + 16);
        v43 = &v31[v36 + 16];
        v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v45 = *v42;
          *(v43 - 1) = *(v42 - 1);
          *v43 = v45;
          v42 += 2;
          v43 += 32;
          v44 -= 4;
        }

        while (v44);
        if (v40 == (v40 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v37 = &v31[8 * v33];
        v38 = v18;
      }

      do
      {
        v39 = *v38;
        v38 += 8;
        *v37 = v39;
        v37 += 8;
      }

      while (v37 != v20);
    }

LABEL_44:
    v19 = &v31[8 * v30];
    operator delete(v15);
    v15 = v32;
    goto LABEL_30;
  }

  v18 -= ((v10 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_14:
  *v18 = v16;
  v20 = v18 + 8;
  if (v7 != v9)
  {
    goto LABEL_31;
  }

LABEL_15:
  v21 = v18;
LABEL_16:
  v22 = *a1;
  *a1 = v15;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20;
  *(a1 + 24) = v19;
  if (v22)
  {

    operator delete(v22);
  }
}

void sub_1E533F61C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void BBULogKTLPrintDelegate(const char *a1, const char *a2, va_list a3)
{
  if (a1)
  {
    if (a2)
    {
      v6 = strnlen(a1, 0x400uLL);
      if (v6 - 1005 >= 0xFFFFFFFFFFFFFC00)
      {
        v7 = 1005 - v6;
        std::mutex::lock(&gLogLock);
        v8 = vsnprintf(gLogBuffer, v7, a2, a3);
        LogInstance = ACFULogging::getLogInstance(v8);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: %s", "BasebandUpdater", a1, gLogBuffer);

        std::mutex::unlock(&gLogLock);
      }
    }
  }
}

{
  v30 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v6;
  v29 = v6;
  v26 = v6;
  v27 = v6;
  v24 = v6;
  v25 = v6;
  v22 = v6;
  v23 = v6;
  v20 = v6;
  v21 = v6;
  v18 = v6;
  v19 = v6;
  v16 = v6;
  v17 = v6;
  *__str = v6;
  v15 = v6;
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v13, 0);
  vsnprintf(__str, 0x100uLL, a2, a3);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 1) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(8, "%u.%03u: %s: %s", v7, v8, v9, v10, v11, v12, v13.tv_sec, v13.tv_usec / 0x3E8uLL, a1, __str);
  }
}

void BBULogKTLPrintErrorDelegate(const char *a1, const char *a2, va_list a3)
{
  if (a1)
  {
    if (a2)
    {
      v6 = strnlen(a1, 0x400uLL);
      if (v6 - 1005 >= 0xFFFFFFFFFFFFFC00)
      {
        v7 = 1005 - v6;
        std::mutex::lock(&gLogLock);
        v8 = vsnprintf(gLogBuffer, v7, a2, a3);
        LogInstance = ACFULogging::getLogInstance(v8);
        ACFULogging::handleMessage(LogInstance, 2, "%s::%s: %s", "BasebandUpdater", a1, gLogBuffer);

        std::mutex::unlock(&gLogLock);
      }
    }
  }
}

{
  v30 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v6;
  v29 = v6;
  v26 = v6;
  v27 = v6;
  v24 = v6;
  v25 = v6;
  v22 = v6;
  v23 = v6;
  v20 = v6;
  v21 = v6;
  v18 = v6;
  v19 = v6;
  v16 = v6;
  v17 = v6;
  *__str = v6;
  v15 = v6;
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v13, 0);
  vsnprintf(__str, 0x100uLL, a2, a3);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(0, "%u.%03u: %s: %s", v7, v8, v9, v10, v11, v12, v13.tv_sec, v13.tv_usec / 0x3E8uLL, a1, __str);
  }
}

void BBULogKTLPrintBinaryDelegate(ACFULogging *a1, int a2, uint64_t a3, unsigned int a4)
{
  v5 = "misc";
  if (a2 == 1)
  {
    v5 = "recv";
  }

  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = "send";
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  v8 = ACFULogging::handleMessage(LogInstance, 4, "%s: (%s) length=%u bytes\n", "BasebandUpdater", v6, a4);
  ACFULogging::getLogInstance(v8);
  strcpy(__p, "BasebandUpdater:");
  ACFULogging::handleMessageBinary();
}

void sub_1E533F91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEnvironment::validate(uint64_t a1, uint64_t a2)
{
  v33 = 10;
  strcpy(__p, "CommCenter");
  __size[0] = 0;
  if (sysctl(BBUEnvironment::isProcessLoaded(std::string const&)::kNames, 3u, 0, __size, 0, 0))
  {
    v28 = *__error();
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUEnvironment.cpp", 0x24u, "first sysctl() failed with err = %d", v28);
    goto LABEL_64;
  }

  v3 = malloc(__size[0]);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUEnvironment.cpp", 0x2Au, "malloc failed for proc list");
    goto LABEL_64;
  }

  v4 = v3;
  if (sysctl(BBUEnvironment::isProcessLoaded(std::string const&)::kNames, 3u, v3, __size, 0, 0))
  {
    v30 = *__error();
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUEnvironment.cpp", 0x32u, "second sysctl() failed with err = %d", v30);
LABEL_64:
  }

  v5 = __size[0];
  v6 = ((__size[0] >> 3) * 0x329161F9ADD3C0CBuLL) >> 64;
  v7 = &unk_1ED949000;
  if (gBBULogMaskGet(void)::once == -1)
  {
    v8 = __size[0] / 0x288;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v8 = v6 >> 4;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
LABEL_6:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(3, 0, "BBUEnvironment", "", "There are %zu processes\n", v8);
      }
    }
  }

  if (v5 <= 0x287)
  {
    free(v4);
    goto LABEL_54;
  }

  v31 = a2;
  v9 = 0;
  v10 = 1;
  do
  {
    v12 = &v4[648 * v9];
    memset(__size, 170, sizeof(__size));
    v13 = strlen(v12 + 243);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      v16 = v7;
      if ((v13 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v13 | 7) + 1;
      }

      v15 = operator new(v17);
      __size[1] = v14;
      __size[2] = v17 | 0x8000000000000000;
      __size[0] = v15;
      v7 = v16;
LABEL_22:
      memcpy(v15, v12 + 243, v14);
      goto LABEL_23;
    }

    HIBYTE(__size[2]) = v13;
    v15 = __size;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_23:
    *(v15 + v14) = 0;
    if (v7[396] == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_29;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v18 = __size;
      if ((__size[2] & 0x8000000000000000) != 0)
      {
        v18 = __size[0];
      }

      _BBULog(3, 0, "BBUEnvironment", "", "Checking against process %s\n", v18);
    }

LABEL_29:
    v19 = SHIBYTE(__size[2]);
    if ((__size[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(__size[2]);
    }

    else
    {
      v20 = __size[1];
    }

    v21 = v33;
    v22 = v33;
    if (v33 < 0)
    {
      v21 = __p[1];
    }

    if (v20 != v21)
    {
      v25 = 0;
      if ((SHIBYTE(__size[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_44:
      operator delete(__size[0]);
      goto LABEL_10;
    }

    if ((__size[2] & 0x8000000000000000) == 0)
    {
      v23 = __size;
    }

    else
    {
      v23 = __size[0];
    }

    if (v33 >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    v25 = memcmp(v23, v24, v20) == 0;
    if (v19 < 0)
    {
      goto LABEL_44;
    }

LABEL_10:
    v9 = v10;
    v11 = v8 <= v10++ || v25;
  }

  while (v11 != 1);
  free(v4);
  a2 = v31;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (!v25)
    {
      goto LABEL_54;
    }

LABEL_50:
    v26 = operator new(0x30uLL);
    strcpy(v26, "Process CommCenter is loaded, please unload it");
    if (*(v31 + 23) < 0)
    {
      operator delete(*v31);
    }

    result = 0;
    *v31 = v26;
    *(v31 + 8) = 46;
    *(v31 + 16) = 0x8000000000000030;
  }

  else
  {
    if (v25)
    {
      goto LABEL_50;
    }

LABEL_54:
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    return 1;
  }

  return result;
}

void sub_1E533FE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bbufs::prepareDestination(bbufs *this, const char *a2)
{
  memset(v127, 170, 24);
  v3 = strlen(this);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v3 | 7) + 1;
    }

    p_dst = operator new(v10);
    *(&__dst + 1) = v4;
    v126 = v10 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v126) = v3;
    p_dst = &__dst;
    if (!v3)
    {
      LOBYTE(__dst) = 0;
      v6 = SHIBYTE(v126);
      if ((SHIBYTE(v126) & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, this, v4);
  *(p_dst + v4) = 0;
  v6 = SHIBYTE(v126);
  if ((SHIBYTE(v126) & 0x8000000000000000) == 0)
  {
LABEL_5:
    v7 = &__dst;
    if (v6 == 22)
    {
      v8 = 22;
      v9 = 23;
LABEL_15:
      v11 = 2 * v8;
      if (v9 > 2 * v8)
      {
        v11 = v9;
      }

      if ((v11 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (v11 | 7) + 1;
      }

      if (v11 >= 0x17)
      {
        v13 = v12;
      }

      else
      {
        v13 = 23;
      }

      v14 = v8 == 22;
      goto LABEL_24;
    }

LABEL_30:
    *(v7 + v6) = 47;
    v18 = v6 + 1;
    if (SHIBYTE(v126) < 0)
    {
      *(&__dst + 1) = v18;
    }

    else
    {
      HIBYTE(v126) = v18 & 0x7F;
    }

    v17 = v7 + v18;
    goto LABEL_34;
  }

LABEL_12:
  v6 = *(&__dst + 1);
  v9 = v126 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = (v126 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v8 != *(&__dst + 1))
  {
    v7 = __dst;
    goto LABEL_30;
  }

  if (v9 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = __dst;
  if (v8 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v14 = 0;
  v13 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v15 = operator new(v13);
  v16 = v15;
  if (v8)
  {
    memmove(v15, v7, v8);
  }

  v16[v8] = 47;
  if (!v14)
  {
    operator delete(v7);
  }

  *(&__dst + 1) = v9;
  v126 = v13 | 0x8000000000000000;
  *&__dst = v16;
  v17 = &v16[v9];
LABEL_34:
  *v17 = 0;
  v127[0] = __dst;
  *&v127[1] = v126;
  v19 = kBBUFSServerBackupName;
  v20 = strlen(kBBUFSServerBackupName);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v20 | 7) + 1;
    }

    v22 = operator new(v27);
    __p[1] = v21;
    __p[2] = (v27 | 0x8000000000000000);
    __p[0] = v22;
  }

  else
  {
    HIBYTE(__p[2]) = v20;
    v22 = __p;
    if (!v20)
    {
      LOBYTE(__p[0]) = 0;
      v23 = SHIBYTE(__p[2]);
      if ((SHIBYTE(__p[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v22, v19, v21);
  *(v21 + v22) = 0;
  v23 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) == 0)
  {
LABEL_38:
    v24 = __p;
    if (v23 == 22)
    {
      v25 = 22;
      v26 = 23;
LABEL_48:
      v28 = 2 * v25;
      if (v26 > 2 * v25)
      {
        v28 = v26;
      }

      if ((v28 | 7) == 0x17)
      {
        v29 = 25;
      }

      else
      {
        v29 = (v28 | 7) + 1;
      }

      if (v28 >= 0x17)
      {
        v30 = v29;
      }

      else
      {
        v30 = 23;
      }

      v31 = v25 == 22;
      goto LABEL_57;
    }

LABEL_63:
    *(v23 + v24) = 47;
    v35 = v23 + 1;
    if (SHIBYTE(__p[2]) < 0)
    {
      __p[1] = v35;
    }

    else
    {
      HIBYTE(__p[2]) = v35 & 0x7F;
    }

    v34 = &v35[v24];
    goto LABEL_67;
  }

LABEL_45:
  v23 = __p[1];
  v26 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
  v25 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v25 != __p[1])
  {
    v24 = __p[0];
    goto LABEL_63;
  }

  if (v26 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = __p[0];
  if (v25 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_48;
  }

  v31 = 0;
  v30 = 0x7FFFFFFFFFFFFFF7;
LABEL_57:
  v32 = operator new(v30);
  v33 = v32;
  if (v25)
  {
    memmove(v32, v24, v25);
  }

  v33[v25] = 47;
  if (!v31)
  {
    operator delete(v24);
  }

  __p[1] = v26;
  __p[2] = (v30 | 0x8000000000000000);
  __p[0] = v33;
  v34 = &v33[v26];
LABEL_67:
  *v34 = 0;
  v126 = __p[2];
  __dst = *__p;
  v36 = SBYTE7(v127[1]);
  memset(__p, 170, sizeof(__p));
  if ((SBYTE7(v127[1]) & 0x80u) == 0)
  {
    v37 = BYTE7(v127[1]);
  }

  else
  {
    v37 = *(&v127[0] + 1);
  }

  v38 = SHIBYTE(v126);
  if (v126 >= 0)
  {
    v39 = HIBYTE(v126);
  }

  else
  {
    v39 = *(&__dst + 1);
  }

  v40 = v39 + v37;
  if (v39 + v37 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v40 <= 0x16)
  {
    memset(__p, 0, sizeof(__p));
    v42 = __p;
    HIBYTE(__p[2]) = v39 + v37;
    if (!v37)
    {
      goto LABEL_85;
    }

    goto LABEL_81;
  }

  if ((v40 | 7) == 0x17)
  {
    v41 = 25;
  }

  else
  {
    v41 = (v40 | 7) + 1;
  }

  v42 = operator new(v41);
  __p[1] = (v39 + v37);
  __p[2] = (v41 | 0x8000000000000000);
  __p[0] = v42;
  if (v37)
  {
LABEL_81:
    if (v36 >= 0)
    {
      v43 = v127;
    }

    else
    {
      v43 = *&v127[0];
    }

    memmove(v42, v43, v37);
  }

LABEL_85:
  v44 = &v42[v37];
  if (v39)
  {
    if (v38 >= 0)
    {
      v45 = &__dst;
    }

    else
    {
      v45 = __dst;
    }

    memmove(v44, v45, v39);
  }

  v44[v39] = 0;
  v46 = strlen(this);
  if (v46 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v47 = v46;
  if (v46 >= 0x17)
  {
    if ((v46 | 7) == 0x17)
    {
      v55 = 25;
    }

    else
    {
      v55 = (v46 | 7) + 1;
    }

    v48 = operator new(v55);
    v122 = v47;
    v123 = v55 | 0x8000000000000000;
    v121 = v48;
  }

  else
  {
    HIBYTE(v123) = v46;
    v48 = &v121;
    if (!v46)
    {
      LOBYTE(v121) = 0;
      v49 = SHIBYTE(v123);
      if ((SHIBYTE(v123) & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_107;
    }
  }

  memcpy(v48, this, v47);
  *(v48 + v47) = 0;
  v49 = SHIBYTE(v123);
  if ((SHIBYTE(v123) & 0x80000000) == 0)
  {
LABEL_94:
    if (v49)
    {
      goto LABEL_95;
    }

LABEL_108:
    _BBUFSDebugPrint("prepareDestination", "invalid path pointer to create directory\n");
    goto LABEL_110;
  }

LABEL_107:
  v56 = v122;
  operator delete(v121);
  if (!v56)
  {
    goto LABEL_108;
  }

LABEL_95:
  if ((ctu::fs::create_directory() & 1) == 0)
  {
    _BBUFSDebugPrint("prepareDestination", "failed creating directory\n");
    goto LABEL_110;
  }

  v50 = getpwnam("_wireless");
  if (!v50)
  {
    v59 = "failed to get uid and gid information for _wireless\n";
    _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n");
LABEL_128:
    _BBUFSDebugPrint("prepareDestination", v59);
    goto LABEL_110;
  }

  pw_uid = v50->pw_uid;
  pw_gid = v50->pw_gid;
  if ((SBYTE7(v127[1]) & 0x80u) == 0)
  {
    v53 = v127;
  }

  else
  {
    v53 = *&v127[0];
  }

  if (chown(v53, pw_uid, pw_gid))
  {
    v54 = __error();
    strerror(*v54);
    _BBUFSDebugPrint("prepareDestination", "failed changing owner of bbfs directory:  %s\n");
LABEL_110:
    v57 = 0;
    goto LABEL_111;
  }

  if ((ctu::fs::create_directory() & 1) == 0)
  {
    v59 = "failed creating backup directory\n";
    goto LABEL_128;
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v60 = __p;
  }

  else
  {
    v60 = __p[0];
  }

  if (chown(v60, pw_uid, pw_gid))
  {
    v61 = __error();
    strerror(*v61);
    _BBUFSDebugPrint("prepareDestination", "failed changing owner of bbfs backup directory:  %s\n");
    goto LABEL_110;
  }

  v121 = 0;
  v122 = 0;
  v123 = 0;
  folder = ctu::fs::read_folder();
  if ((folder & 1) == 0)
  {
    _BBUFSDebugPrint("prepareDestination", "failed reading backup directory\n");
    v57 = 0;
LABEL_144:
    v70 = v121;
    if (!v121)
    {
      goto LABEL_111;
    }

LABEL_145:
    v71 = v122;
    v72 = v70;
    if (v122 != v70)
    {
      do
      {
        v73 = *(v71 - 1);
        v71 -= 3;
        if (v73 < 0)
        {
          operator delete(*v71);
        }
      }

      while (v71 != v70);
      v72 = v121;
    }

    v122 = v70;
    operator delete(v72);
    goto LABEL_111;
  }

  if (capabilities::radio::vendor(folder) != 2)
  {
    goto LABEL_165;
  }

  v63 = v121;
  if (v121 == v122)
  {
    goto LABEL_166;
  }

  v64 = v121;
  while (1)
  {
    v68 = *(v64 + 23);
    if (v68 < 0)
    {
      break;
    }

    v69 = v64;
    if (v68 == 10)
    {
      goto LABEL_133;
    }

LABEL_137:
    v64 += 3;
    if (v64 == v122)
    {
      goto LABEL_166;
    }
  }

  if (v64[1] != 10)
  {
    goto LABEL_137;
  }

  v69 = *v64;
LABEL_133:
  v65 = *v69;
  v66 = *(v69 + 4);
  if (v65 != 0x6E2E636974617473 || v66 != 28022)
  {
    goto LABEL_137;
  }

  if (v64 == v122)
  {
    goto LABEL_166;
  }

  while (2)
  {
    v77 = *(v63 + 23);
    if (v77 < 0)
    {
      if (v63[1] != 11)
      {
        goto LABEL_158;
      }

      v78 = *v63;
    }

    else
    {
      v78 = v63;
      if (v77 != 11)
      {
        goto LABEL_158;
      }
    }

    v74 = *v78;
    v75 = *(v78 + 3);
    if (v74 != 0x2E63696D616E7964 || v75 != 0x6D766E2E63696D61)
    {
LABEL_158:
      v63 += 3;
      if (v63 == v122)
      {
        goto LABEL_166;
      }

      continue;
    }

    break;
  }

  if (v63 != v122)
  {
LABEL_165:
    v79 = 1;
    goto LABEL_167;
  }

LABEL_166:
  _BBUFSDebugPrint("prepareDestination", "both files not present in backup, removing backup files\n");
  v79 = 0;
LABEL_167:
  _BBUFSDebugPrint("prepareDestination", "FSInit: restore_files=%d\n", v79);
  v70 = v121;
  v117 = v122;
  if (v121 != v122)
  {
    v80 = (v121 + 24);
    v57 = 1;
    v116 = v79;
    while (1)
    {
      memset(&v120, 170, sizeof(v120));
      if (*(v80 - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v120, *(v80 - 3), *(v80 - 2));
      }

      else
      {
        v82 = *(v80 - 3);
        v120.__r_.__value_.__r.__words[2] = *(v80 - 1);
        *&v120.__r_.__value_.__l.__data_ = v82;
      }

      memset(v119, 170, sizeof(v119));
      v83 = SHIBYTE(__p[2]);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v84 = HIBYTE(__p[2]);
      }

      else
      {
        v84 = __p[1];
      }

      v85 = SHIBYTE(v120.__r_.__value_.__r.__words[2]);
      if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v120.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v120.__r_.__value_.__l.__size_;
      }

      v87 = size + v84;
      if (size + v84 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v87 <= 0x16)
      {
        break;
      }

      if ((v87 | 7) == 0x17)
      {
        v88 = 25;
      }

      else
      {
        v88 = (v87 | 7) + 1;
      }

      v89 = operator new(v88);
      v119[1] = (size + v84);
      v119[2] = (v88 | 0x8000000000000000);
      v119[0] = v89;
      v79 = v116;
      if (v84)
      {
        goto LABEL_191;
      }

LABEL_195:
      v91 = &v89[v84];
      if (size)
      {
        if (v85 >= 0)
        {
          v92 = &v120;
        }

        else
        {
          v92 = v120.__r_.__value_.__r.__words[0];
        }

        memmove(v91, v92, size);
      }

      v91[size] = 0;
      memset(v118, 170, sizeof(v118));
      v93 = SBYTE7(v127[1]);
      if ((SBYTE7(v127[1]) & 0x80u) == 0)
      {
        v94 = BYTE7(v127[1]);
      }

      else
      {
        v94 = *(&v127[0] + 1);
      }

      v95 = v94 + size;
      if (v94 + size > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v95 <= 0x16)
      {
        memset(v118, 0, sizeof(v118));
        v97 = v118;
        HIBYTE(v118[2]) = v94 + size;
        if (!v94)
        {
          goto LABEL_215;
        }

LABEL_211:
        if (v93 >= 0)
        {
          v98 = v127;
        }

        else
        {
          v98 = *&v127[0];
        }

        memmove(v97, v98, v94);
        goto LABEL_215;
      }

      if ((v95 | 7) == 0x17)
      {
        v96 = 25;
      }

      else
      {
        v96 = (v95 | 7) + 1;
      }

      v97 = operator new(v96);
      v118[1] = (v94 + size);
      v118[2] = (v96 | 0x8000000000000000);
      v118[0] = v97;
      v79 = v116;
      if (v94)
      {
        goto LABEL_211;
      }

LABEL_215:
      v99 = &v97[v94];
      if (v85 >= 0)
      {
        v100 = &v120;
      }

      else
      {
        v100 = v120.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        memmove(v99, v100, size);
      }

      v99[size] = 0;
      if (v79)
      {
        _BBUFSDebugPrint("prepareDestination", "%s backup present, restoring\n", v100);
        v102 = v119;
        v103 = v118;
        if (SHIBYTE(v119[2]) >= 0)
        {
          v104 = v119;
        }

        else
        {
          v104 = v119[0];
        }

        if (SHIBYTE(v118[2]) >= 0)
        {
          v105 = v118;
        }

        else
        {
          v105 = v118[0];
        }

        rename(v104, v105, v101);
        if (v106 < 0)
        {
          if (SHIBYTE(v119[2]) < 0)
          {
            v102 = v119[0];
          }

          if (SHIBYTE(v118[2]) < 0)
          {
            v103 = v118[0];
          }

          v107 = __error();
          v108 = strerror(*v107);
          _BBUFSDebugPrint("prepareDestination", "failed restoring %s to %s:  %s\n", v102, v103, v108);
          goto LABEL_249;
        }
      }

      else
      {
        _BBUFSDebugPrint("prepareDestination", "%s backup present, but rule is to delete it\n", v100);
        v110 = v119;
        if (SHIBYTE(v119[2]) >= 0)
        {
          v111 = v119;
        }

        else
        {
          v111 = v119[0];
        }

        if (remove(v111, v109) < 0)
        {
          if (SHIBYTE(v119[2]) < 0)
          {
            v110 = v119[0];
          }

          v114 = __error();
          v115 = strerror(*v114);
          _BBUFSDebugPrint("prepareDestination", "failed removing %s:  %s\n", v110, v115);
LABEL_249:
          v57 = 0;
          v112 = 1;
          if ((SHIBYTE(v118[2]) & 0x80000000) == 0)
          {
            goto LABEL_239;
          }

LABEL_238:
          operator delete(v118[0]);
          goto LABEL_239;
        }
      }

      v112 = 0;
      if (SHIBYTE(v118[2]) < 0)
      {
        goto LABEL_238;
      }

LABEL_239:
      if (SHIBYTE(v119[2]) < 0)
      {
        operator delete(v119[0]);
        if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

LABEL_241:
        operator delete(v120.__r_.__value_.__l.__data_);
        if (v80 == v117)
        {
          v113 = 1;
        }

        else
        {
          v113 = v112;
        }

        v80 += 3;
        if (v113)
        {
          goto LABEL_144;
        }
      }

      else
      {
        if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_241;
        }

LABEL_170:
        if (v80 == v117)
        {
          v81 = 1;
        }

        else
        {
          v81 = v112;
        }

        v80 += 3;
        if (v81)
        {
          goto LABEL_144;
        }
      }
    }

    memset(v119, 0, sizeof(v119));
    v89 = v119;
    HIBYTE(v119[2]) = size + v84;
    if (!v84)
    {
      goto LABEL_195;
    }

LABEL_191:
    if (v83 >= 0)
    {
      v90 = __p;
    }

    else
    {
      v90 = __p[0];
    }

    memmove(v89, v90, v84);
    goto LABEL_195;
  }

  v57 = 1;
  if (v121)
  {
    goto LABEL_145;
  }

LABEL_111:
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v126) & 0x80000000) == 0)
    {
      goto LABEL_113;
    }

LABEL_116:
    operator delete(__dst);
    if ((SBYTE7(v127[1]) & 0x80000000) == 0)
    {
      return v57 & 1;
    }

LABEL_117:
    operator delete(*&v127[0]);
    return v57 & 1;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v126) < 0)
  {
    goto LABEL_116;
  }

LABEL_113:
  if (SBYTE7(v127[1]) < 0)
  {
    goto LABEL_117;
  }

  return v57 & 1;
}

void sub_1E5340A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void **a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  std::vector<std::string>::~vector[abi:ne200100](&a34);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
  }

  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  _Unwind_Resume(a1);
}

void bbufs::createDirectoryWithTimestamp(const void **a1@<X0>, std::string *a2@<X8>)
{
  v98 = *MEMORY[0x1E69E9840];
  v97 = -21846;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v95 = v4;
  v96 = v4;
  *__s = v4;
  v93 = time(0);
  v5 = localtime(&v93);
  strftime(__s, 0x32uLL, "%Y-%m-%d-%H-%M-%S", v5);
  memset(a2, 170, sizeof(std::string));
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  if (!v7)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_59;
  }

  v8 = v7 + 7;
  if (v7 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 <= 0x16)
  {
    memset(&v91, 0, sizeof(v91));
    v10 = &v91;
    *(&v91.__r_.__value_.__s + 23) = v7 + 7;
  }

  else
  {
    if ((v8 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v8 | 7) + 1;
    }

    v10 = operator new(v9);
    v91.__r_.__value_.__l.__size_ = v7 + 7;
    v91.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v91.__r_.__value_.__r.__words[0] = v10;
  }

  if (v6 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  memmove(v10, v14, v7);
  strcpy(v10 + v7, "bbulog-");
  v15 = strlen(__s);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    p_dst = operator new(v18);
    v89 = v16;
    v90 = v18 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_24;
  }

  HIBYTE(v90) = v15;
  p_dst = &__dst;
  if (v15)
  {
LABEL_24:
    memcpy(p_dst, __s, v16);
  }

  *(p_dst + v16) = 0;
  if (v90 >= 0)
  {
    v19 = &__dst;
  }

  else
  {
    v19 = __dst;
  }

  if (v90 >= 0)
  {
    v20 = HIBYTE(v90);
  }

  else
  {
    v20 = v89;
  }

  v21 = std::string::append(&v91, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v92.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v92.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v24 = &v92;
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) == 22)
    {
      v25 = 22;
      v26 = 23;
LABEL_37:
      v27 = 2 * v25;
      if (v26 > 2 * v25)
      {
        v27 = v26;
      }

      if ((v27 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v27 | 7) + 1;
      }

      if (v27 >= 0x17)
      {
        v29 = v28;
      }

      else
      {
        v29 = 23;
      }

      v30 = v25 == 22;
      goto LABEL_46;
    }

LABEL_52:
    v24->__r_.__value_.__s.__data_[size] = 47;
    v34 = size + 1;
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      v92.__r_.__value_.__l.__size_ = v34;
    }

    else
    {
      *(&v92.__r_.__value_.__s + 23) = v34 & 0x7F;
    }

    v33 = v24 + v34;
    goto LABEL_56;
  }

  size = v92.__r_.__value_.__l.__size_;
  v26 = v92.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v25 = (v92.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v25 != v92.__r_.__value_.__l.__size_)
  {
    v24 = v92.__r_.__value_.__r.__words[0];
    goto LABEL_52;
  }

  if (v26 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v92.__r_.__value_.__r.__words[0];
  if (v25 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_37;
  }

  v30 = 0;
  v29 = 0x7FFFFFFFFFFFFFF7;
LABEL_46:
  v31 = operator new(v29);
  v32 = v31;
  if (v25)
  {
    memmove(v31, v24, v25);
  }

  *(v32 + v25) = 47;
  if (!v30)
  {
    operator delete(v24);
  }

  v92.__r_.__value_.__l.__size_ = v26;
  v92.__r_.__value_.__r.__words[2] = v29 | 0x8000000000000000;
  v92.__r_.__value_.__r.__words[0] = v32;
  v33 = (v32 + v26);
LABEL_56:
  *v33 = 0;
  *a2 = v92;
  memset(&v92, 0, sizeof(v92));
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_169:
    operator delete(v91.__r_.__value_.__l.__data_);
    goto LABEL_58;
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_169;
  }

LABEL_58:
  v13 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v12 = a2->__r_.__value_.__r.__words[0];
  v11 = a2->__r_.__value_.__l.__size_;
LABEL_59:
  memset(&v92, 0, sizeof(v92));
  memset(&v91, 0, sizeof(v91));
  if ((v13 & 0x80u) == 0)
  {
    v35 = a2;
  }

  else
  {
    v35 = v12;
  }

  if ((v13 & 0x80u) == 0)
  {
    v36 = v13;
  }

  else
  {
    v36 = v11;
  }

  v37 = v35 + v36;
  if (v36 >= 9)
  {
    v38 = v36;
    v39 = v35;
    do
    {
      v40 = memchr(v39, 47, v38 - 8);
      if (!v40)
      {
        break;
      }

      if (*v40 == 0x73656C657269772FLL && v40[8] == 115)
      {
        goto LABEL_74;
      }

      v39 = (v40 + 1);
      v38 = v37 - v39;
    }

    while (v37 - v39 > 8);
  }

  v40 = v35 + v36;
LABEL_74:
  if (v40 == v37)
  {
    v42 = -1;
  }

  else
  {
    v42 = v40 - v35;
  }

  v89 = 0xAAAAAAAAAAAAAAAALL;
  v90 = 0xAAAAAAAAAAAAAAAALL;
  if (v36 >= v42)
  {
    v36 = v42;
  }

  __dst = 0xAAAAAAAAAAAAAAAALL;
  if (v36 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v36 >= 0x17)
  {
    if ((v36 | 7) == 0x17)
    {
      v48 = 25;
    }

    else
    {
      v48 = (v36 | 7) + 1;
    }

    v43 = operator new(v48);
    v89 = v36;
    v90 = v48 | 0x8000000000000000;
    __dst = v43;
  }

  else
  {
    HIBYTE(v90) = v36;
    v43 = &__dst;
    if (!v36)
    {
      LOBYTE(__dst) = 0;
      memset(v87, 170, sizeof(v87));
      v44 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v44 & 0x8000000000000000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_93;
    }
  }

  memmove(v43, v35, v36);
  *(v43 + v36) = 0;
  memset(v87, 170, sizeof(v87));
  v44 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v44 & 0x8000000000000000) == 0)
  {
LABEL_83:
    v45 = a2;
    if (v42 <= v44)
    {
      v46 = v44 - v42;
      if (v44 - v42 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_85;
      }

LABEL_95:
      std::string::__throw_length_error[abi:ne200100]();
    }

LABEL_196:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_93:
  v44 = a2->__r_.__value_.__l.__size_;
  if (v44 < v42)
  {
    goto LABEL_196;
  }

  v45 = a2->__r_.__value_.__r.__words[0];
  v46 = v44 - v42;
  if (v44 - v42 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_95;
  }

LABEL_85:
  if (v46 >= 0x17)
  {
    if ((v46 | 7) == 0x17)
    {
      v49 = 25;
    }

    else
    {
      v49 = (v46 | 7) + 1;
    }

    v47 = operator new(v49);
    v87[1] = v46;
    v87[2] = (v49 | 0x8000000000000000);
    v87[0] = v47;
    goto LABEL_100;
  }

  HIBYTE(v87[2]) = v46;
  v47 = v87;
  if (v44 != v42)
  {
LABEL_100:
    memmove(v47, v45 + v42, v46);
  }

  *(v47 + v46) = 0;
  memset(&__p[1], 170, sizeof(std::string));
  ctu::tokenize();
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = a2->__r_.__value_.__l.__size_;
  }

  if (!v50)
  {
    _BBUFSDebugPrint("createDirectoryWithTimestamp", "Invalid directory path\n");
    goto LABEL_174;
  }

  if ((ctu::fs::create_directory() & 1) == 0)
  {
    _BBUFSDebugPrint("createDirectoryWithTimestamp", "Failed to create the directory\n");
    goto LABEL_171;
  }

  v51 = getpwnam("_wireless");
  if (!v51)
  {
    _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n");
    _BBUFSDebugPrint("createDirectoryWithTimestamp", "Failed to get directory ownership information for _wireless\n");
LABEL_171:
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      *a2->__r_.__value_.__l.__data_ = 0;
      a2->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      a2->__r_.__value_.__s.__data_[0] = 0;
      *(&a2->__r_.__value_.__s + 23) = 0;
    }

    goto LABEL_174;
  }

  data = __p[1].__r_.__value_.__l.__data_;
  if (__p[1].__r_.__value_.__l.__size_ == __p[1].__r_.__value_.__r.__words[0])
  {
    goto LABEL_175;
  }

  v53 = 0;
  if (v90 >= 0)
  {
    v54 = HIBYTE(v90);
  }

  else
  {
    v54 = v89;
  }

  if (v90 >= 0)
  {
    v55 = &__dst;
  }

  else
  {
    v55 = __dst;
  }

  v84 = &__p[0].__r_.__value_.__s.__data_[1];
  __src = v55;
  v56 = 1;
  pw_uid = v51->pw_uid;
  pw_gid = v51->pw_gid;
  v83 = pw_uid;
  while (1)
  {
    v58 = &data[24 * v53];
    v59 = v58[23];
    if (v59 >= 0)
    {
      v60 = v58[23];
    }

    else
    {
      v60 = *(v58 + 1);
    }

    v61 = v60 + 1;
    if (v60 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v61 < 0x17)
    {
      __p[0].__r_.__value_.__r.__words[2] = 0;
      *(&__p[0].__r_.__value_.__s + 23) = v60 + 1;
      v64 = v84;
      *&__p[0].__r_.__value_.__l.__data_ = 0x2FuLL;
      if (!v60)
      {
        goto LABEL_130;
      }
    }

    else
    {
      v62 = (v61 | 7) == 0x17 ? 25 : (v61 | 7) + 1;
      v63 = operator new(v62);
      __p[0].__r_.__value_.__l.__size_ = v60 + 1;
      __p[0].__r_.__value_.__r.__words[2] = v62 | 0x8000000000000000;
      __p[0].__r_.__value_.__r.__words[0] = v63;
      *v63 = 47;
      v64 = v63 + 1;
    }

    v65 = v59 >= 0 ? v58 : *v58;
    memmove(v64, v65, v60);
LABEL_130:
    v64[v60] = 0;
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = __p;
    }

    else
    {
      v66 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = __p[0].__r_.__value_.__l.__size_;
    }

    std::string::append(&v92, v66, v67);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v68 = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v69 = v92.__r_.__value_.__l.__size_;
    }

    v70 = v69 + v54;
    if (v69 + v54 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v70 <= 0x16)
    {
      memset(__p, 0, 24);
      v72 = __p;
      *(&__p[0].__r_.__value_.__s + 23) = v69 + v54;
      if (!v54)
      {
        goto LABEL_150;
      }

LABEL_149:
      memmove(v72, __src, v54);
      goto LABEL_150;
    }

    if ((v70 | 7) == 0x17)
    {
      v71 = 25;
    }

    else
    {
      v71 = (v70 | 7) + 1;
    }

    v72 = operator new(v71);
    __p[0].__r_.__value_.__l.__size_ = v69 + v54;
    __p[0].__r_.__value_.__r.__words[2] = v71 | 0x8000000000000000;
    __p[0].__r_.__value_.__r.__words[0] = v72;
    if (v54)
    {
      goto LABEL_149;
    }

LABEL_150:
    v73 = v72 + v54;
    if (v69)
    {
      if (v68 >= 0)
      {
        v74 = &v92;
      }

      else
      {
        v74 = v92.__r_.__value_.__r.__words[0];
      }

      memmove(v73, v74, v69);
    }

    v73[v69] = 0;
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    v91 = __p[0];
    if (ctu::fs::is_directory())
    {
      v75 = (v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v91 : v91.__r_.__value_.__r.__words[0];
      if (chown(v75, v83, pw_gid))
      {
        break;
      }
    }

    v53 = v56;
    data = __p[1].__r_.__value_.__l.__data_;
    ++v56;
    if (0xAAAAAAAAAAAAAAABLL * ((__p[1].__r_.__value_.__l.__size_ - __p[1].__r_.__value_.__r.__words[0]) >> 3) <= v53)
    {
      goto LABEL_174;
    }
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v76 = &v91;
  }

  else
  {
    v76 = v91.__r_.__value_.__r.__words[0];
  }

  v77 = __error();
  v78 = strerror(*v77);
  _BBUFSDebugPrint("createDirectoryWithTimestamp", "Failed changing owner of coredump directory:  %s: %s\n", v76, v78);
LABEL_174:
  data = __p[1].__r_.__value_.__l.__data_;
LABEL_175:
  if (data)
  {
    v79 = __p[1].__r_.__value_.__l.__size_;
    v80 = data;
    if (__p[1].__r_.__value_.__l.__size_ != data)
    {
      do
      {
        v81 = *(v79 - 1);
        v79 -= 3;
        if (v81 < 0)
        {
          operator delete(*v79);
        }
      }

      while (v79 != data);
      v80 = __p[1].__r_.__value_.__l.__data_;
    }

    __p[1].__r_.__value_.__l.__size_ = data;
    operator delete(v80);
  }

  if ((SHIBYTE(v87[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v90) & 0x80000000) == 0)
    {
      goto LABEL_185;
    }

LABEL_189:
    operator delete(__dst);
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_190;
    }

LABEL_186:
    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_191:
    operator delete(v92.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v87[0]);
  if (SHIBYTE(v90) < 0)
  {
    goto LABEL_189;
  }

LABEL_185:
  if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_186;
  }

LABEL_190:
  operator delete(v91.__r_.__value_.__l.__data_);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_191;
  }
}

void sub_1E53414F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void **a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  std::vector<std::string>::~vector[abi:ne200100](&a21);
  if (a29 < 0)
  {
    operator delete(__p);
    if ((a35 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a35 & 0x80000000) == 0)
  {
LABEL_3:
    if (a41 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(a30);
  if (a41 < 0)
  {
LABEL_4:
    operator delete(a36);
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  if ((a48 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v48 + 23) & 0x80000000) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    operator delete(*v48);
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(a43);
  if ((*(v48 + 23) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t bbufs::chownToWireless(uint64_t *a1, int a2)
{
  v2 = a2;
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
      goto LABEL_11;
    }

    a1 = *a1;
  }

  else if (!*(a1 + 23))
  {
LABEL_11:
    v3 = 1;
    if (a2 < 0)
    {
      goto LABEL_12;
    }

LABEL_7:
    v4 = getpwnam("_wireless");
    if (v4)
    {
      pw_uid = v4->pw_uid;
      pw_gid = v4->pw_gid;
      if (fchown(v2, pw_uid, pw_gid))
      {
        _BBUFSDebugPrint("chownToWireless", "Failed changing file ownership (%u, %u)\n", pw_uid, pw_gid);
        v7 = 0;
        if (v3)
        {
          return v7;
        }
      }

      else
      {
        v7 = 1;
        _BBUFSDebugPrint("chownToWireless", "chown'd to _wireless(%u, %u) : ret %d \n", pw_uid, pw_gid, 1);
        if (v3)
        {
          return v7;
        }
      }
    }

    else
    {
      _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n");
      v7 = 0;
      if (v3)
      {
        return v7;
      }
    }

    close(v2);
    return v7;
  }

  v2 = open(a1, 1, 420);
  v3 = 0;
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  _BBUFSDebugPrint("chownToWireless", "Failed to open file to chown\n");
  return 0;
}

char *bbufs::copyFSPath(bbufs *this)
{
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v1 = off_1ED944170;
  if (!off_1ED944170)
  {
    v2 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v2);
    v11 = v2;
    v3 = operator new(0x20uLL);
    *v3 = &unk_1F5F05A00;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = v2;
    v4 = off_1ED944178;
    off_1ED944170 = v2;
    off_1ED944178 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_1ED944170;
  }

  v5 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v1, &__s1);
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = __s1.__r_.__value_.__r.__words[0];
    v8 = strdup(__s1.__r_.__value_.__l.__data_);
    operator delete(v7);
    result = v8;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    result = strdup(&__s1);
    if (!v5)
    {
      return result;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = result;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return v9;
  }

  return result;
}

void sub_1E5341914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100](va);
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t bbufs::backupFile(uint64_t a1, uint64_t *a2)
{
  memset(&v12, 170, sizeof(v12));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a1, *(a1 + 8));
  }

  else
  {
    v12 = *a1;
  }

  ctu::path_join_impl();
  if (!ctu::fs::file_exists())
  {
    v3 = &v12;
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v3 = v12.__r_.__value_.__r.__words[0];
    }

    _BBUFSDebugPrint("backupFile", "Nothing to backup: file (%s) does not exist\n", v3);
    goto LABEL_23;
  }

  memset(&v11, 170, sizeof(v11));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a1, *(a1 + 8));
  }

  else
  {
    v11 = *a1;
  }

  ctu::path_join_impl();
  memset(&v10, 170, sizeof(v10));
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = v11;
  }

  ctu::path_join_impl();
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v12;
  }

  else
  {
    v4 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  _BBUFSDebugPrint("backupFile", "Backing-up file from (%s) to (%s)\n", v4, v5);
  if (ctu::fs::rename())
  {
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }

    operator delete(v10.__r_.__value_.__l.__data_);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_34:
      operator delete(v11.__r_.__value_.__l.__data_);
      result = 1;
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }

      return result;
    }

LABEL_23:
    result = 1;
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_38:
    v9 = result;
    operator delete(v12.__r_.__value_.__l.__data_);
    return v9;
  }

  v7 = &v12;
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  v8 = &v10;
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v10.__r_.__value_.__r.__words[0];
  }

  _BBUFSDebugPrint("backupFile", "Failed to backup file from (%s) to (%s)\n", v7, v8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_31:
      result = 0;
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }

      return result;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  result = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_38;
  }

  return result;
}

void sub_1E5341C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(v23 - 41) & 0x80000000) == 0)
    {
LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v23 - 41) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(v23 - 64));
  goto LABEL_4;
}

uint64_t bbufs::createBackupDir(uint64_t a1)
{
  memset(&v6, 170, sizeof(v6));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a1, *(a1 + 8));
  }

  else
  {
    v6 = *a1;
  }

  ctu::path_join_impl();
  v1 = ctu::fs::file_exists();
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v6;
  }

  else
  {
    v2 = v6.__r_.__value_.__r.__words[0];
  }

  if (v1)
  {
    if ((ctu::fs::is_directory() & 1) == 0)
    {
      v3 = &v6;
      if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v3 = v6.__r_.__value_.__r.__words[0];
      }

      _BBUFSDebugPrint("createBackupDir", "Backup directory path (%s) exists but is not a directory\n", v3);
LABEL_16:
      result = 0;
      if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_17;
      }

      return result;
    }
  }

  else
  {
    _BBUFSDebugPrint("createBackupDir", "Backup directory (%s) does not exist, creating it\n", v2);
    if ((ctu::fs::create_directory() & 1) == 0)
    {
      _BBUFSDebugPrint("createBackupDir", "Failed to create backup directory\n");
      goto LABEL_16;
    }
  }

  result = 1;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_17:
    v5 = result;
    operator delete(v6.__r_.__value_.__l.__data_);
    return v5;
  }

  return result;
}

void sub_1E5341E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bbufs::createFile(uint64_t a1, uint64_t *a2)
{
  memset(&v13, 170, sizeof(v13));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a1, *(a1 + 8));
  }

  else
  {
    v13 = *a1;
  }

  ctu::path_join_impl();
  v2 = ctu::fs::open_file();
  if ((v2 & 0x80000000) == 0)
  {
    v3 = getpwnam("_wireless");
    if (v3)
    {
      if (!fchown(v2, v3->pw_uid, v3->pw_gid))
      {
        v9 = 1;
LABEL_18:
        v10 = ctu::fs::close_file(v2);
        if ((v10 & 1) == 0)
        {
          v11 = &v13;
          if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v11 = v13.__r_.__value_.__r.__words[0];
          }

          _BBUFSDebugPrint("createFile", "Failed to close file (%s)\n", v11);
        }

        result = v9 & v10;
        if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return result;
        }

LABEL_24:
        v12 = result;
        operator delete(v13.__r_.__value_.__l.__data_);
        return v12;
      }

      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v4 = &v13;
      }

      else
      {
        v4 = v13.__r_.__value_.__r.__words[0];
      }

      v5 = __error();
      v6 = strerror(*v5);
      _BBUFSDebugPrint("createFile", "Failed to change file (%s) owner: %s\n", v4, v6);
    }

    else
    {
      _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n");
      _BBUFSDebugPrint("createFile", "Failed to get uid gid information for _wireless\n");
    }

    v9 = 0;
    goto LABEL_18;
  }

  v7 = &v13;
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  _BBUFSDebugPrint("createFile", "Failed to open/create file (%s)\n", v7);
  result = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }

  return result;
}

void sub_1E5342054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bbufs::restoreBackupFile(uint64_t a1, uint64_t *a2)
{
  memset(&v11, 170, sizeof(v11));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a1, *(a1 + 8));
  }

  else
  {
    v11 = *a1;
  }

  ctu::path_join_impl();
  memset(&v10, 170, sizeof(v10));
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = v11;
  }

  ctu::path_join_impl();
  if (!ctu::fs::file_exists())
  {
    goto LABEL_21;
  }

  memset(&v9, 170, sizeof(v9));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a1, *(a1 + 8));
  }

  else
  {
    v9 = *a1;
  }

  ctu::path_join_impl();
  v3 = ctu::fs::rename();
  v4 = v3;
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if (v3)
  {
    v6 = &v9;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }

    _BBUFSDebugPrint("restoreBackupFile", "Restored backup file from (%s) to (%s)\n", v5, v6);
  }

  else
  {
    _BBUFSDebugPrint("restoreBackupFile", "Failed to restore backup file (%s)\n", v5);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    if ((v4 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_21:
    v7 = 1;
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_26:
    operator delete(v10.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v7;
    }

    goto LABEL_27;
  }

  if (v4)
  {
    goto LABEL_21;
  }

LABEL_25:
  v7 = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v7;
  }

LABEL_27:
  operator delete(v11.__r_.__value_.__l.__data_);
  return v7;
}

void sub_1E53422C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(v23 - 41) & 0x80000000) == 0)
    {
LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v23 - 41) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(v23 - 64));
  goto LABEL_4;
}

uint64_t bbufs::clearBackupFile(uint64_t a1, uint64_t *a2)
{
  memset(&v7, 170, sizeof(v7));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a1, *(a1 + 8));
  }

  else
  {
    v7 = *a1;
  }

  ctu::path_join_impl();
  memset(&v6, 170, sizeof(v6));
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = v7;
  }

  ctu::path_join_impl();
  if (!ctu::fs::file_exists() || ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v2 = &v6) : (v2 = v6.__r_.__value_.__r.__words[0]), _BBUFSDebugPrint("clearBackupFile", "Deleting backup file (%s)\n", v2), (ctu::fs::remove_file() & 1) != 0))
  {
    v3 = 1;
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_18:
    operator delete(v6.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v3;
    }

    goto LABEL_19;
  }

  v5 = &v6;
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v6.__r_.__value_.__r.__words[0];
  }

  _BBUFSDebugPrint("clearBackupFile", "Failed to delete file backup (%s)\n", v5);
  v3 = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v3;
  }

LABEL_19:
  operator delete(v7.__r_.__value_.__l.__data_);
  return v3;
}

void sub_1E53424F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_35()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUStringToArgv(void **a1, void **a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = v3 + 4;
  if (v3 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 < 0x17)
  {
    v49 = 0;
    HIBYTE(v49) = v3 + 4;
    v8 = &v48 + 4;
    v48 = 0x20706167u;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v4 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v4 | 7) + 1;
    }

    v7 = operator new(v6);
    *(&v48 + 1) = v3 + 4;
    v49 = (v6 | 0x8000000000000000);
    *&v48 = v7;
    *v7 = 544235879;
    v8 = (v7 + 1);
  }

  if (v2 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  memmove(v8, v9, v3);
LABEL_15:
  v8[v3] = 0;
  if (v2 < 0)
  {
    operator delete(*a1);
  }

  *a1 = v48;
  v10 = v49;
  a1[2] = v49;
  v11 = HIBYTE(v10);
  if (v11 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = a1[1];
  }

  v13 = a2;
  if (v12)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E9830];
    do
    {
      while (1)
      {
        v16 = *(a1 + 23) >= 0 ? a1 : *a1;
        v17 = *(v16 + v14);
        v18 = (v17 & 0x80000000) != 0 ? __maskrune(v17, 0x4000uLL) : *(v15 + 4 * v17 + 60) & 0x4000;
        v19 = *(a1 + 23) >= 0 ? a1 : *a1;
        v20 = v19 + v14;
        if (v14 >= v12 || !v18)
        {
          break;
        }

        *v20 = 0;
        ++v14;
      }

      v22 = v13[1];
      v21 = v13[2];
      if (v22 >= v21)
      {
        v24 = *v13;
        v25 = v22 - *v13;
        v26 = (v25 >> 3) + 1;
        if (v26 >> 61)
        {
          goto LABEL_73;
        }

        v27 = v21 - v24;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (v28 >> 61)
          {
            goto LABEL_74;
          }

          v29 = operator new(8 * v28);
        }

        else
        {
          v29 = 0;
        }

        v30 = &v29[8 * (v25 >> 3)];
        *v30 = v20;
        v23 = v30 + 8;
        memcpy(v29, v24, v25);
        v13 = a2;
        *a2 = v29;
        a2[1] = v23;
        a2[2] = &v29[8 * v28];
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v22 = v20;
        v23 = v22 + 8;
      }

      v13[1] = v23;
      v31 = v14 + 1;
      do
      {
        v32 = v31;
        if (*(a1 + 23) >= 0)
        {
          v33 = a1;
        }

        else
        {
          v33 = *a1;
        }

        v34 = *(v33 + v32);
        if ((v34 & 0x80000000) != 0)
        {
          v35 = __maskrune(v34, 0x4000uLL);
          v31 = v32 + 1;
          if (v32 >= v12)
          {
            break;
          }
        }

        else
        {
          v35 = *(v15 + 4 * v34 + 60) & 0x4000;
          v31 = v32 + 1;
          if (v32 >= v12)
          {
            break;
          }
        }
      }

      while (!v35);
      v14 = v31 - 1;
    }

    while (v32 < v12);
  }

  v37 = v13[1];
  v36 = v13[2];
  if (v37 >= v36)
  {
    v39 = *v13;
    v40 = v37 - *v13;
    v41 = (v40 >> 3) + 1;
    if (v41 >> 61)
    {
LABEL_73:
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v42 = v36 - v39;
    if (v42 >> 2 > v41)
    {
      v41 = v42 >> 2;
    }

    if (v42 >= 0x7FFFFFFFFFFFFFF8)
    {
      v43 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      if (v43 >> 61)
      {
LABEL_74:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v44 = operator new(8 * v43);
    }

    else
    {
      v44 = 0;
    }

    v45 = &v44[8 * (v40 >> 3)];
    v46 = &v44[8 * v43];
    *v45 = 0;
    v38 = v45 + 8;
    memcpy(v44, v39, v40);
    *a2 = v44;
    a2[1] = v38;
    v13 = a2;
    a2[2] = v46;
    if (v39)
    {
      operator delete(v39);
    }
  }

  else
  {
    *v37 = 0;
    v38 = v37 + 8;
  }

  v13[1] = v38;
}