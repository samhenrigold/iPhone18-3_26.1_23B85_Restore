void sub_1E5351DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURInitializer::pingAndCheckForResponse(void *a1, uint64_t a2)
{
  v8 = 0;
  v3 = TelephonyUtilSystemMachTime();
  do
  {
    (*(*a1 + 192))(a1);
    if ((ETLMaverickGetBasebandInitStatusEx() & 1) == 0)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        result = 3;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
        {
          return result;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = 3;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
        {
          return result;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v6 = (**a1)(a1);
        _BBULog(4, 0, v6, "", "Fail to read BB Init Status: I/O error\n");
        return 3;
      }

      return result;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        goto LABEL_2;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        goto LABEL_2;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v4 = (**a1)(a1);
      _BBULog(4, 0, v4, "", "BB Init status: not ready\n");
    }

LABEL_2:
    usleep(0x186A0u);
  }

  while ((TelephonyUtilSystemMachTime() - v3) <= 0x1388);
  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 40;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 40;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v7 = (**a1)(a1);
    _BBULog(4, 0, v7, "", "Timeout on waiting for BB Init status\n");
    return 40;
  }

  return result;
}

void sub_1E535216C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURInitializer::fusingCheck(void (***a1)(BBUFeedback **), uint64_t a2)
{
  BBUFeedback::handleBeginQuickStep(a1[1], "Fusing check");
  (*a1)[25](a1);
  FusingStatus = ETLMaverickGetFusingStatus();
  if (FusingStatus)
  {
    capabilities::updater::shouldAllowUnfused(FusingStatus);
  }

  (*(*a1[1] + 3))(a1[1], 24);
  return 24;
}

uint64_t BBUEURInitializer::getIMEI(capabilities::updater *a1, uint64_t a2, std::string **a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if ((capabilities::updater::supportsDualIMEIProvision(a1) & 1) == 0)
  {
    v39 = 0xAAAAAAAAAAAAAAAALL;
    v40 = -86;
    (*(*a1 + 200))(a1);
    if (!ETLGSMGetIMEI())
    {
      return 30;
    }

    if (!ETLGSMIsValidIMEI())
    {
      return 0;
    }

    memset(__s, 170, sizeof(__s));
    if (!ETLGSMMakeStringFromIMEI())
    {
      return 11;
    }

    v9 = operator new(0x18uLL);
    v10 = strlen(__s);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      if ((v10 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v10 | 7) + 1;
      }

      v12 = operator new(v15);
      *(&v30 + 1) = v11;
      v31 = v15 | 0x8000000000000000;
      *&v30 = v12;
    }

    else
    {
      HIBYTE(v31) = v10;
      v12 = &v30;
      if (!v10)
      {
LABEL_29:
        *(v12 + v11) = 0;
        if (SHIBYTE(v31) < 0)
        {
          v24 = v30;
          std::string::__init_copy_ctor_external(v9, v30, *(&v30 + 1));
          operator delete(v24);
          v16 = *a3;
          if (!*a3)
          {
LABEL_50:
            *a3 = v9;
            return 0;
          }
        }

        else
        {
          *&v9->__r_.__value_.__l.__data_ = v30;
          v9->__r_.__value_.__r.__words[2] = v31;
          v16 = *a3;
          if (!*a3)
          {
            goto LABEL_50;
          }
        }

        if (*(v16 + 23) < 0)
        {
          v25 = v16;
          operator delete(*v16);
          v16 = v25;
        }

        operator delete(v16);
        goto LABEL_50;
      }
    }

    memcpy(v12, __s, v11);
    goto LABEL_29;
  }

  v39 = 0xAAAAAAAAAAAAAAAALL;
  v40 = -86;
  v35 = -86;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v33 = -86;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 200))(a1);
  if (!ETLMaverickGetIMEI())
  {
    return 30;
  }

  v39 = v34;
  v40 = v35;
  if (!ETLGSMIsValidIMEI())
  {
    goto LABEL_37;
  }

  memset(__s, 170, sizeof(__s));
  if (!ETLGSMMakeStringFromIMEI())
  {
    return 11;
  }

  v5 = operator new(0x18uLL);
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v6 | 7) + 1;
    }

    v8 = operator new(v13);
    *(&v30 + 1) = v7;
    v31 = v13 | 0x8000000000000000;
    *&v30 = v8;
    goto LABEL_20;
  }

  HIBYTE(v31) = v6;
  v8 = &v30;
  if (v6)
  {
LABEL_20:
    memcpy(v8, __s, v7);
  }

  *(v8 + v7) = 0;
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    *&v5->__r_.__value_.__l.__data_ = v30;
    v5->__r_.__value_.__r.__words[2] = v31;
    v14 = *a3;
    if (!*a3)
    {
      goto LABEL_36;
    }

LABEL_33:
    if (*(v14 + 23) < 0)
    {
      v18 = v14;
      operator delete(*v14);
      v14 = v18;
    }

    operator delete(v14);
    goto LABEL_36;
  }

  v17 = v30;
  std::string::__init_copy_ctor_external(v5, v30, *(&v30 + 1));
  operator delete(v17);
  v14 = *a3;
  if (*a3)
  {
    goto LABEL_33;
  }

LABEL_36:
  *a3 = v5;
LABEL_37:
  (*(*a1 + 200))(a1);
  if (!ETLMaverickGetIMEI())
  {
    return 30;
  }

  v36 = v32;
  v37 = v33;
  if (ETLGSMIsValidIMEI())
  {
    memset(__s, 170, sizeof(__s));
    if (ETLGSMMakeStringFromIMEI())
    {
      v19 = operator new(0x18uLL);
      v20 = strlen(__s);
      if (v20 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v21 = v20;
      if (v20 >= 0x17)
      {
        if ((v20 | 7) == 0x17)
        {
          v26 = 25;
        }

        else
        {
          v26 = (v20 | 7) + 1;
        }

        v22 = operator new(v26);
        *(&v30 + 1) = v21;
        v31 = v26 | 0x8000000000000000;
        *&v30 = v22;
      }

      else
      {
        HIBYTE(v31) = v20;
        v22 = &v30;
        if (!v20)
        {
          goto LABEL_56;
        }
      }

      memcpy(v22, __s, v21);
LABEL_56:
      *(v22 + v21) = 0;
      if (SHIBYTE(v31) < 0)
      {
        v27 = v30;
        std::string::__init_copy_ctor_external(v19, v30, *(&v30 + 1));
        operator delete(v27);
      }

      else
      {
        *&v19->__r_.__value_.__l.__data_ = v30;
        v19->__r_.__value_.__r.__words[2] = v31;
      }

      v28 = a3[1];
      if (v28)
      {
        if (SHIBYTE(v28->__r_.__value_.__r.__words[2]) < 0)
        {
          v29 = a3[1];
          operator delete(v28->__r_.__value_.__l.__data_);
          v28 = v29;
        }

        operator delete(v28);
      }

      a3[1] = v19;
      return 0;
    }

    return 11;
  }

  return 0;
}

void sub_1E5352734(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1E5352754(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t BBUEURInitializer::getMEID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v15, 170, sizeof(v15));
  (*(*a1 + 200))(a1);
  if (!ETLCDMAGetMEID())
  {
    return 29;
  }

  result = ETLCDMAIsValidMEID();
  if (result)
  {
    memset(__s, 170, 15);
    if (!ETLCDMAMakeStringFromMEID())
    {
      return 11;
    }

    v5 = operator new(0x18uLL);
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
        v9 = 25;
      }

      else
      {
        v9 = (v6 | 7) + 1;
      }

      p_dst = operator new(v9);
      *(&__dst + 1) = v7;
      v14 = v9 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v14) = v6;
      p_dst = &__dst;
      if (!v6)
      {
LABEL_16:
        *(p_dst + v7) = 0;
        if (SHIBYTE(v14) < 0)
        {
          v11 = __dst;
          std::string::__init_copy_ctor_external(v5, __dst, *(&__dst + 1));
          operator delete(v11);
          v10 = *(a3 + 16);
          if (!v10)
          {
LABEL_23:
            result = 0;
            *(a3 + 16) = v5;
            return result;
          }
        }

        else
        {
          *&v5->__r_.__value_.__l.__data_ = __dst;
          v5->__r_.__value_.__r.__words[2] = v14;
          v10 = *(a3 + 16);
          if (!v10)
          {
            goto LABEL_23;
          }
        }

        if (*(v10 + 23) < 0)
        {
          v12 = v10;
          operator delete(*v10);
          v10 = v12;
        }

        operator delete(v10);
        goto LABEL_23;
      }
    }

    memcpy(p_dst, __s, v7);
    goto LABEL_16;
  }

  return result;
}

void sub_1E5352984(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t BBUEURInitializer::getCarrierID(void (***a1)(BBUFeedback **), uint64_t a2, uint64_t a3)
{
  *__s = 0xAAAAAAAAAAAAAAAALL;
  (*a1)[25](a1);
  if (!ETLMaverickGetCarrierID())
  {
    return 32;
  }

  if (__s[7] != 1)
  {
    BBUFeedback::handleComment(a1[1], "carrier ID not present\n");
    return 0;
  }

  v5 = operator new(0x18uLL);
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
      v11 = 25;
    }

    else
    {
      v11 = (v6 | 7) + 1;
    }

    v8 = operator new(v11);
    *(&v13 + 1) = v7;
    v14 = v11 | 0x8000000000000000;
    *&v13 = v8;
  }

  else
  {
    HIBYTE(v14) = v6;
    v8 = &v13;
    if (!v6)
    {
      LOBYTE(v13) = 0;
      if ((SHIBYTE(v14) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  memcpy(v8, __s, v7);
  *(v8 + v7) = 0;
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_7:
    *&v5->__r_.__value_.__l.__data_ = v13;
    v5->__r_.__value_.__r.__words[2] = v14;
    v9 = *(a3 + 48);
    if (!v9)
    {
      goto LABEL_20;
    }

LABEL_17:
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete(v9);
    goto LABEL_20;
  }

LABEL_16:
  v12 = v13;
  std::string::__init_copy_ctor_external(v5, v13, *(&v13 + 1));
  operator delete(v12);
  v9 = *(a3 + 48);
  if (v9)
  {
    goto LABEL_17;
  }

LABEL_20:
  result = 0;
  *(a3 + 48) = v5;
  return result;
}

void sub_1E5352B78(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t BBUEURInitializer::queryChipInfoBooted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  memset(v47, 0, 128);
  v35 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v40 = 0u;
  v41 = 0u;
  v34 = 0;
  v36 = xmmword_1E5394720;
  v37 = xmmword_1E5394730;
  v38 = xmmword_1E5394740;
  *bytes = 0u;
  BBUFeedback::handleComment(*(a1 + 8), "Querying chip info from booted baseband");
  if (!a2 || !a3)
  {
    BBUFeedback::handleComment(*(a1 + 8), "missing parameter");
    return 2;
  }

  capabilities::updater::personalizationCommandTimeout(v6);
  SerialNumberAndChipID = ETLMaverickReadSerialNumberAndChipID();
  if ((SerialNumberAndChipID & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "failed reading snum and/or chipID from booted baseband over ETL");
    return 18;
  }

  capabilities::updater::personalizationCommandTimeout(SerialNumberAndChipID);
  if ((ETLMaverickReadPublicKeyHash() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "failed reading PKHash from booted baseband over ETL");
    return 18;
  }

  v8 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(v47, HIDWORD(v35));
  (*(*a3 + 16))(a3, v8);
  v9 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(v35);
  v10 = *(a3 + 16);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(a3 + 16) = v9;
  v11 = v34;
  v12 = operator new(0x10uLL);
  *v12 = &unk_1F5F04C88;
  v12[1] = 0;
  v12[1] = CFDataCreate(*MEMORY[0x1E695E480], bytes, v11);
  (*(*a3 + 24))(a3, v12);
  if (!v8 || !v9)
  {
    goto LABEL_19;
  }

  v13 = *(a1 + 8);
  (*(*v8 + 24))(__p, v8);
  if (v33 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_14;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_14:
  v15 = BBUpdaterCommon::inRestoreOS(void)::restoreOS;
  v16 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
  v17 = (*(*v9 + 24))(v9);
  if ((v15 | v16))
  {
    v18 = v14;
  }

  else
  {
    v18 = "<< SNUM >>";
  }

  BBUFeedback::handleComment(v13, "   SNUM: 0x%s / CHIPID: 0x%08x", v18, v17);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_19:
  v19 = *(a1 + 8);
  (*(*v12 + 24))(__p, v12);
  if (v33 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  BBUFeedback::handleComment(v19, "   PUBLIC_KEY_HASH: 0x%s", v20);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *(a1 + 8);
  v21 = (a1 + 8);
  v23 = (*(**(a3 + 24) + 24))(*(a3 + 24));
  BBUFeedback::handleComment(v22, "   CertID: %u", v23);
  v28 = v36 == *bytes && *(&v36 + 1) == *&bytes[8] && v37 == v40 && *(&v37 + 1) == *(&v40 + 1) && v38 == v41 && *(&v38 + 1) == *(&v41 + 1);
  v29 = *v21;
  if (v28)
  {
    BBUFeedback::handleComment(v29, "   Detected as unfused BB\n");
    result = 0;
    v31 = 1;
  }

  else
  {
    BBUFeedback::handleComment(v29, "   Detected as fused BB\n");
    result = 0;
    v31 = 3;
  }

  *(a3 + 88) = v31;
  return result;
}

void sub_1E535305C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_38()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUICEEBLImage::~BBUICEEBLImage(BBUICEEBLImage *this)
{
  *this = &unk_1F5F05658;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 2));
  }
}

{
  *this = &unk_1F5F05658;
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

uint64_t BBUICEEBLImage::getWritePayloadData(BBUICEEBLImage *this, unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  if ((*(*this + 32))(this) <= a4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEEBLImage.cpp", 0x20u, "Assertion failure(( offset < getWritePayloadLength()) && Error: Chunk size is not sufficient to write payload data of the EBL image.)");
    goto LABEL_8;
  }

  v10 = -1431655766;
  result = (*(**(this + 2) + 16))(*(this + 2), a2, a3, &v10, *(this + 2) + a4);
  if (result)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEEBLImage.cpp", 0x23u, "Assertion failure((ret == kBBUReturnSuccess) && Failed to copy EBL image payload data to buffer!)");
    goto LABEL_8;
  }

  if (v10 != a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 82, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICEEBLImage.cpp", 0x24u, "Assertion failure((amountCopied == amount) && Copied data size mismatch: Failed to copy EBL image payload data to buffer!)");
LABEL_8:
  }

  return result;
}

uint64_t BBUICEEBLImage::getWritePayloadLength(BBUICEEBLImage *this)
{
  result = *(this + 2);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void BBUICEEBLImage::generateHash(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(result + 16);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

void DaleTransport_BootLogger_PCIE::start_pl_log(uint64_t a1, NSObject **a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 216);
  if (v6 && v6(a1 + 160))
  {
    DaleTransport_BootLogger_PCIE::close_transport(a1);
  }

  v7 = *(a3 + 24);
  if (v7)
  {
    if (v7 == a3)
    {
      *(&v24 + 1) = buf;
      (*(*v7 + 24))(v7, buf);
    }

    else
    {
      *(&v24 + 1) = (*(*v7 + 16))(v7);
    }
  }

  else
  {
    *(&v24 + 1) = 0;
  }

  std::__function::__value_func<void ()(unsigned char const*,long)>::swap[abi:ne200100](buf, (a1 + 24));
  if (*(&v24 + 1) == buf)
  {
    (*(**(&v24 + 1) + 32))(*(&v24 + 1));
    v8 = *a2;
    if (v8)
    {
LABEL_13:
      dispatch_retain(v8);
      dispatch_group_enter(v8);
    }
  }

  else
  {
    if (*(&v24 + 1))
    {
      (*(**(&v24 + 1) + 40))();
    }

    v8 = *a2;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  v9 = *(a1 + 56);
  *(a1 + 56) = v8;
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  v10 = **(a1 + 112);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1E5234000, v10, OS_LOG_TYPE_DEBUG, "Opening pl_log", buf, 2u);
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v26 = v11;
  *&v26[16] = v11;
  v24 = v11;
  v25 = v11;
  *buf = v11;
  TelephonyBasebandPCITransportInitParameters();
  *&buf[8] = *(a1 + 16);
  *&v26[8] = 0u;
  *(&v24 + 1) = 0x100002710;
  *(&v25 + 4) = 0xE000000007FLL;
  *buf = 24;
  LODWORD(v27) = 25;
  LODWORD(v25) = v25 | 4;
  v12 = *(a1 + 144);
  v13 = *(a1 + 152);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1174405120;
  v21[2] = ___ZN29DaleTransport_BootLogger_PCIE21open_transport_pl_logENS_10ParametersE_block_invoke;
  v21[3] = &__block_descriptor_tmp_20;
  v21[4] = a1;
  v21[5] = v12;
  v22 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *v26 = v21;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1174405120;
  v19[2] = ___ZN29DaleTransport_BootLogger_PCIE21open_transport_pl_logENS_10ParametersE_block_invoke_1;
  v19[3] = &__block_descriptor_tmp_3_0;
  v19[4] = v12;
  v20 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *&v24 = v19;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  v14 = TelephonyBasebandPCITransportCreate();
  v15 = *(a1 + 112);
  v16 = *v15;
  if (!v14)
  {
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_1E5234000, v16, OS_LOG_TYPE_ERROR, "error: Failed to open pl_log", &v18, 2u);
      v17 = v20;
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v17 = v20;
      if (!v20)
      {
        goto LABEL_32;
      }
    }

LABEL_31:
    std::__shared_weak_count::__release_weak(v17);
    goto LABEL_32;
  }

  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    _os_log_debug_impl(&dword_1E5234000, v16, OS_LOG_TYPE_DEBUG, "Changing pl_log's interface status from off to started", &v18, 2u);
  }

  v18 = 24;
  *(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>((a1 + 248), 0x18u, &v18) + 20) = 0;
  v17 = v20;
  if (v20)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

void sub_1E53537CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    v24 = a22;
    if (!a22)
    {
LABEL_3:
      if (!v22)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v22);
      _Unwind_Resume(exception_object);
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
  if (!v22)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL DaleTransport_BootLogger_PCIE::close_transport(DaleTransport_BootLogger_PCIE *this)
{
  v2 = **(this + 14);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1E5234000, v2, OS_LOG_TYPE_DEBUG, "Closing transport", buf, 2u);
    v3 = *(this + 27);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(this + 27);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3(this + 160))
  {
    if (TelephonyUtilTransportFree())
    {
      v4 = **(this + 14);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1E5234000, v4, OS_LOG_TYPE_INFO, "Transport closed successfully", v7, 2u);
      }
    }

    *(this + 30) = 0;
    *(this + 13) = 0u;
    *(this + 14) = 0u;
    *(this + 11) = 0u;
    *(this + 12) = 0u;
    *(this + 10) = 0u;
    return 1;
  }

LABEL_10:
  v6 = **(this + 14);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (result)
  {
    *v8 = 0;
    _os_log_impl(&dword_1E5234000, v6, OS_LOG_TYPE_INFO, "Invalid transport", v8, 2u);
    return 0;
  }

  return result;
}

void DaleTransport_BootLogger_PCIE::stop_pl_log(DaleTransport_BootLogger_PCIE *a1)
{
  v1 = *(a1 + 27);
  if (v1)
  {
    if (v1(a1 + 160))
    {
      DaleTransport_BootLogger_PCIE::close_transport(a1);
      v3 = *(a1 + 7);
      *(a1 + 7) = 0;
      if (v3)
      {
        dispatch_group_leave(v3);

        dispatch_release(v3);
      }
    }
  }
}

void DaleTransport_BootLogger_PCIE::start_rom_log(uint64_t a1, NSObject **a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v20 = 0;
  v21 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v7;
  v22[1] = v7;
  LODWORD(v22[0]) = 64;
  v8 = *(a3 + 24);
  if (!v8)
  {
    goto LABEL_6;
  }

  if (v8 != a3)
  {
    v8 = (*(*v8 + 16))(v8);
LABEL_6:
    v23 = v8;
    goto LABEL_8;
  }

  v23 = (v22 + 8);
  (*(*v8 + 24))(v8, v22 + 8);
LABEL_8:
  v9 = operator new(0x100uLL);
  v9->__shared_owners_ = 0;
  p_shared_owners = &v9->__shared_owners_;
  v9->__shared_weak_owners_ = 0;
  v9->__vftable = &unk_1F5F05808;
  *buf = v20;
  object = v21;
  if (v21)
  {
    dispatch_retain(v21);
  }

  v26 = v22[0];
  v11 = v23;
  if (!v23)
  {
    goto LABEL_13;
  }

  if (v23 != (v22 + 8))
  {
    v11 = (*(*v23 + 16))();
LABEL_13:
    v28 = v11;
    goto LABEL_15;
  }

  v28 = v27;
  (*(*v23 + 24))();
LABEL_15:
  v12 = &v9[1];
  KernelPCIRestoreTrace::KernelPCIRestoreTrace(&v9[1], buf);
  if (v28 == v27)
  {
    (*(*v28 + 32))(v28);
    v13 = object;
    if (object)
    {
LABEL_19:
      dispatch_release(v13);
    }
  }

  else
  {
    if (v28)
    {
      (*(*v28 + 40))();
    }

    v13 = object;
    if (object)
    {
      goto LABEL_19;
    }
  }

  shared_owners = v9[1].__shared_owners_;
  if (shared_owners)
  {
    if (shared_owners->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9[1].__vftable = &v9[1];
      v9[1].__shared_owners_ = v9;
      std::__shared_weak_count::__release_weak(shared_owners);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_34:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v15 = *(a1 + 296);
        *(a1 + 288) = v12;
        *(a1 + 296) = v9;
        if (!v15)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v9[1].__vftable = &v9[1];
    v9[1].__shared_owners_ = v9;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_34;
    }
  }

  v15 = *(a1 + 296);
  *(a1 + 288) = v12;
  *(a1 + 296) = v9;
  if (!v15)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    v12 = *(a1 + 288);
    if (!v12)
    {
      goto LABEL_32;
    }

LABEL_35:
    v17 = *a2;
    group = v17;
    if (v17)
    {
      dispatch_retain(v17);
      dispatch_group_enter(v17);
    }

    KernelPCIRestoreTrace::start(v12, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    goto LABEL_40;
  }

  v12 = *(a1 + 288);
  if (v12)
  {
    goto LABEL_35;
  }

LABEL_32:
  v16 = **(a1 + 112);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E5234000, v16, OS_LOG_TYPE_ERROR, "error: Failed to create PCI kernel trace to collect rom", buf, 2u);
  }

LABEL_40:
  if (v23 == (v22 + 8))
  {
    (*(*v23 + 32))(v23);
    v18 = v21;
    if (!v21)
    {
      return;
    }

    goto LABEL_44;
  }

  if (v23)
  {
    (*(*v23 + 40))();
  }

  v18 = v21;
  if (v21)
  {
LABEL_44:
    dispatch_release(v18);
  }
}

void sub_1E5353E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, uint64_t a10, dispatch_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v20);
  KernelPCIRestoreTrace::Config::~Config(&a10);
  _Unwind_Resume(a1);
}

void KernelPCIRestoreTrace::Config::~Config(KernelPCIRestoreTrace::Config *this)
{
  v2 = this + 24;
  v3 = *(this + 6);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 1);
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
LABEL_5:
    dispatch_release(v4);
  }
}

void DaleTransport_BootLogger_PCIE::stop_rom_log(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v3 = *a2;
    group = v3;
    if (v3)
    {
      dispatch_retain(v3);
      dispatch_group_enter(v3);
    }

    KernelPCIRestoreTrace::stop(v2, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }
}

void sub_1E5353F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DaleTransport_BootLogger_PCIE::DaleTransport_BootLogger_PCIE(uint64_t a1, __int16 *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v3 = *(a2 + 1);
  v6 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  DaleTransport_BootLogger::DaleTransport_BootLogger(a1, &v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *a1 = &unk_1F5F056C0;
  *(a1 + 248) = 0u;
  v7 = constinit;
  v8[0] = 0x10000001ALL;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,DaleTransport_BootLogger_PCIE::State> const&>((a1 + 248), &v7, &v7);
  std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,DaleTransport_BootLogger_PCIE::State> const&>((a1 + 248), &v7 + 2, &v7 + 1);
  std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,DaleTransport_BootLogger_PCIE::State> const&>((a1 + 248), v8, v8);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  return a1;
}

void sub_1E53540D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DaleTransport_BootLogger_PCIE::~DaleTransport_BootLogger_PCIE(std::__shared_weak_count **this)
{
  *this = &unk_1F5F056C0;
  DaleTransport_BootLogger_PCIE::close_transport(this);
  v2 = this[37];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[33];
  if (v3)
  {
    do
    {
      v4 = v3->__vftable;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = this[31];
  this[31] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = this[19];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  DaleTransport_BootLogger::~DaleTransport_BootLogger(this);
}

{
  DaleTransport_BootLogger_PCIE::~DaleTransport_BootLogger_PCIE(this);

  operator delete(v1);
}

void ___ZN29DaleTransport_BootLogger_PCIE21open_transport_pl_logENS_10ParametersE_block_invoke(void *a1, int a2, uint64_t a3, unsigned int a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (!a1[5])
      {
        goto LABEL_26;
      }

      v12 = **(v9 + 112);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *&buf[4] = a2;
        *&buf[8] = 1024;
        *&buf[10] = a4;
        _os_log_debug_impl(&dword_1E5234000, v12, OS_LOG_TYPE_DEBUG, "[pl_log] callback get triggered %x, %u", buf, 0xEu);
        if (a2)
        {
LABEL_6:
          *buf = 24;
          if (!*(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>((v9 + 248), 0x18u, buf) + 20))
          {
            v13 = DaleTransport_BootLogger_PCIE::close_transport(v9);
            v14 = *(v9 + 112);
            v15 = *v14;
            if (!v13)
            {
              if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1E5234000, v15, OS_LOG_TYPE_ERROR, "error: Failed to close interface pl_log", buf, 2u);
              }

              goto LABEL_26;
            }

            if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_1E5234000, v15, OS_LOG_TYPE_DEBUG, "Changing pl_log's interface status from started to off", buf, 2u);
            }

            *buf = 24;
            *(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>((v9 + 248), 0x18u, buf) + 20) = 1;
            v34 = 0xAAAAAAAAAAAAAAAALL;
            *&v16 = 0xAAAAAAAAAAAAAAAALL;
            *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v32 = v16;
            v33 = v16;
            v30 = v16;
            v31 = v16;
            *buf = v16;
            TelephonyBasebandPCITransportInitParameters();
            *&buf[8] = *(v9 + 16);
            LODWORD(v34) = 25;
            *(&v32 + 1) = 0;
            *&v33 = 0;
            *(&v30 + 1) = 0x100002710;
            *(&v31 + 4) = 0xE000000001FLL;
            *buf = 26;
            LODWORD(v31) = v31 | 4;
            v17 = *(v9 + 144);
            v18 = *(v9 + 152);
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 1174405120;
            v27[2] = ___ZN29DaleTransport_BootLogger_PCIE21open_transport_lk_logENS_10ParametersE_block_invoke;
            v27[3] = &__block_descriptor_tmp_6_0;
            v27[4] = v9;
            v27[5] = v17;
            v28 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            *&v32 = v27;
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 1174405120;
            v25[2] = ___ZN29DaleTransport_BootLogger_PCIE21open_transport_lk_logENS_10ParametersE_block_invoke_7;
            v25[3] = &__block_descriptor_tmp_10;
            v25[4] = v17;
            v26 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            *(v9 + 160) = 0u;
            *(v9 + 176) = 0u;
            *&v30 = v25;
            *(v9 + 192) = 0u;
            *(v9 + 208) = 0u;
            *(v9 + 224) = 0u;
            *(v9 + 240) = 0;
            v19 = TelephonyBasebandPCITransportCreate();
            v20 = *(v9 + 112);
            v21 = *v20;
            if (v19)
            {
              if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
              {
                *v24 = 0;
                _os_log_debug_impl(&dword_1E5234000, v21, OS_LOG_TYPE_DEBUG, "Changing lk_log's interface status from off to started", v24, 2u);
              }

              *v24 = 26;
              *(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>((v9 + 248), 0x1Au, v24) + 20) = 0;
              v22 = v26;
              if (!v26)
              {
                goto LABEL_32;
              }
            }

            else if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              *v24 = 0;
              _os_log_error_impl(&dword_1E5234000, v21, OS_LOG_TYPE_ERROR, "error: Failed to open lk_log", v24, 2u);
              v22 = v26;
              if (!v26)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v22 = v26;
              if (!v26)
              {
LABEL_32:
                if (v28)
                {
                  std::__shared_weak_count::__release_weak(v28);
                }

                if (v18)
                {
                  std::__shared_weak_count::__release_weak(v18);
                }

                goto LABEL_26;
              }
            }

            std::__shared_weak_count::__release_weak(v22);
            goto LABEL_32;
          }

LABEL_26:
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }

          return;
        }
      }

      else if (a2)
      {
        goto LABEL_6;
      }

      *buf = a3;
      v27[0] = a4;
      v23 = *(v9 + 48);
      if (!v23)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v23 + 48))(v23, buf, v27);
      goto LABEL_26;
    }
  }
}

void sub_1E5354690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
    v26 = a24;
    if (!a24)
    {
LABEL_3:
      if (!v24)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v26 = a24;
    if (!a24)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v26);
  if (!v24)
  {
LABEL_4:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

LABEL_7:
  std::__shared_weak_count::__release_weak(v24);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrI29DaleTransport_BootLogger_PCIEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrI29DaleTransport_BootLogger_PCIEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN29DaleTransport_BootLogger_PCIE21open_transport_pl_logENS_10ParametersE_block_invoke_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v3 = v2;
        (v2->__on_zero_shared)();

        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_32c54_ZTSNSt3__18weak_ptrI29DaleTransport_BootLogger_PCIEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c54_ZTSNSt3__18weak_ptrI29DaleTransport_BootLogger_PCIEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN29DaleTransport_BootLogger_PCIE21open_transport_lk_logENS_10ParametersE_block_invoke(void *a1, int a2, uint64_t a3, unsigned int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (!a1[5])
      {
        goto LABEL_15;
      }

      v12 = **(v9 + 112);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *&buf[4] = a2;
        v21 = 1024;
        v22 = a4;
        _os_log_debug_impl(&dword_1E5234000, v12, OS_LOG_TYPE_DEBUG, "[Debug lk_log] callback triggered: status = 0x%x, size = %u", buf, 0xEu);
        if (a2)
        {
LABEL_6:
          *buf = 26;
          if (!*(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>((v9 + 248), 0x1Au, buf) + 20))
          {
            v13 = DaleTransport_BootLogger_PCIE::close_transport(v9);
            v14 = *(v9 + 112);
            if (!v13 && (v15 = *v14, os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR)))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E5234000, v15, OS_LOG_TYPE_ERROR, "error: Failed to close interface lk_log", buf, 2u);
              v16 = **(v9 + 112);
              if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_10;
              }
            }

            else
            {
              v16 = *v14;
              if (!os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_10;
              }
            }

            *buf = 0;
            _os_log_debug_impl(&dword_1E5234000, v16, OS_LOG_TYPE_DEBUG, "Changing lk_log's interface status from started to off", buf, 2u);
LABEL_10:
            *buf = 26;
            *(std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>((v9 + 248), 0x1Au, buf) + 20) = 1;
            v17 = *(v9 + 56);
            *(v9 + 56) = 0;
            if (v17)
            {
              dispatch_group_leave(v17);
              dispatch_release(v17);
            }
          }

LABEL_15:
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }

          return;
        }
      }

      else if (a2)
      {
        goto LABEL_6;
      }

      v19 = a4;
      *buf = a3;
      v18 = *(v9 + 48);
      if (!v18)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v18 + 48))(v18, buf, &v19);
      goto LABEL_15;
    }
  }
}

void sub_1E5354AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5354ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5354AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5354AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN29DaleTransport_BootLogger_PCIE21open_transport_lk_logENS_10ParametersE_block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v3 = v2;
        (v2->__on_zero_shared)();

        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

void std::__shared_ptr_emplace<KernelPCIRestoreTrace>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F05808;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,DaleTransport_BootLogger_PCIE::State> const&>(float *a1, unsigned int *a2, void *a3)
{
  v5 = *a2;
  v6 = *(a1 + 1);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *a2;
      if (v6 <= v5)
      {
        v8 = v5 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v12 = v10[1];
            if (v12 == v5)
            {
              if (*(v10 + 4) == v5)
              {
                return v10;
              }
            }

            else if ((v12 & (v6 - 1)) != v8)
            {
              goto LABEL_23;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_23;
            }
          }
        }

        do
        {
          v11 = v10[1];
          if (v11 == v5)
          {
            if (*(v10 + 4) == v5)
            {
              return v10;
            }
          }

          else
          {
            if (v11 >= v6)
            {
              v11 %= v6;
            }

            if (v11 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_23:
  v14 = operator new(0x18uLL);
  *v14 = 0;
  v14[1] = v5;
  v14[2] = *a3;
  v15 = (*(a1 + 3) + 1);
  v16 = a1[8];
  if (v6 && (v16 * v6) >= v15)
  {
    v5 = v8;
  }

  else
  {
    v17 = 1;
    if (v6 >= 3)
    {
      v17 = (v6 & (v6 - 1)) != 0;
    }

    v18 = v17 | (2 * v6);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      prime = v19;
    }

    else
    {
      prime = v18;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 1);
    }

    if (prime > v6)
    {
      goto LABEL_36;
    }

    if (prime < v6)
    {
      v21 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (v6 < 3 || (v22 = vcnt_s8(v6), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
      {
        v21 = std::__next_prime(v21);
      }

      else
      {
        v23 = 1 << -__clz(v21 - 1);
        if (v21 >= 2)
        {
          v21 = v23;
        }
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime < v6)
      {
LABEL_36:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v6 = *(a1 + 1);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v6 <= v5)
      {
        v5 %= v6;
      }
    }

    else
    {
      v5 = (v6 - 1) & v5;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v5);
  if (v25)
  {
    *v14 = *v25;
  }

  else
  {
    *v14 = *(a1 + 2);
    *(a1 + 2) = v14;
    *(v24 + 8 * v5) = a1 + 4;
    if (!*v14)
    {
      goto LABEL_54;
    }

    v26 = *(*v14 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v26 >= v6)
      {
        v26 %= v6;
      }

      v25 = (v24 + 8 * v26);
    }

    else
    {
      v25 = (v24 + 8 * (v26 & (v6 - 1)));
    }
  }

  *v25 = v14;
LABEL_54:
  ++*(a1 + 3);
  return v14;
}

uint64_t std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::__unordered_map_hasher<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::hash<PCITransportInterface>,std::equal_to<PCITransportInterface>,true>,std::__unordered_map_equal<PCITransportInterface,std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>,std::equal_to<PCITransportInterface>,std::hash<PCITransportInterface>,true>,std::allocator<std::__hash_value_type<PCITransportInterface,DaleTransport_BootLogger_PCIE::State>>>::__emplace_unique_key_args<PCITransportInterface,std::piecewise_construct_t const&,std::tuple<PCITransportInterface&&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD *a3)
{
  v5 = a2;
  v6 = *(a1 + 1);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a2;
      if (v6 <= a2)
      {
        v8 = a2 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v11 = v10[1];
            if (v11 == a2)
            {
              if (*(v10 + 4) == a2)
              {
                return v10;
              }
            }

            else if ((v11 & (v6 - 1)) != v8)
            {
              goto LABEL_22;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v12 = v10[1];
          if (v12 == a2)
          {
            if (*(v10 + 4) == a2)
            {
              return v10;
            }
          }

          else
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }

            if (v12 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_22:
  v10 = operator new(0x18uLL);
  *v10 = 0;
  v10[1] = v5;
  *(v10 + 4) = *a3;
  *(v10 + 20) = 0;
  v13 = (*(a1 + 3) + 1);
  v14 = a1[8];
  if (v6 && (v14 * v6) >= v13)
  {
    v5 = v8;
  }

  else
  {
    v15 = 1;
    if (v6 >= 3)
    {
      v15 = (v6 & (v6 - 1)) != 0;
    }

    v16 = v15 | (2 * v6);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      prime = v17;
    }

    else
    {
      prime = v16;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 1);
    }

    if (prime > v6)
    {
      goto LABEL_35;
    }

    if (prime < v6)
    {
      v19 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (v6 < 3 || (v20 = vcnt_s8(v6), v20.i16[0] = vaddlv_u8(v20), v20.u32[0] > 1uLL))
      {
        v19 = std::__next_prime(v19);
      }

      else
      {
        v21 = 1 << -__clz(v19 - 1);
        if (v19 >= 2)
        {
          v19 = v21;
        }
      }

      if (prime <= v19)
      {
        prime = v19;
      }

      if (prime < v6)
      {
LABEL_35:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v6 = *(a1 + 1);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v6 <= v5)
      {
        v5 %= v6;
      }
    }

    else
    {
      v5 = (v6 - 1) & v5;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v5);
  if (v23)
  {
    *v10 = *v23;
  }

  else
  {
    *v10 = *(a1 + 2);
    *(a1 + 2) = v10;
    *(v22 + 8 * v5) = a1 + 4;
    if (!*v10)
    {
      goto LABEL_53;
    }

    v25 = *(*v10 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v25 >= v6)
      {
        v25 %= v6;
      }

      v23 = (v22 + 8 * v25);
    }

    else
    {
      v23 = (v22 + 8 * (v25 & (v6 - 1)));
    }
  }

  *v23 = v10;
LABEL_53:
  ++*(a1 + 3);
  return v10;
}

uint64_t __cxx_global_var_init_39()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUUpdateSource::~BBUUpdateSource(BBUUpdateSource *this)
{
  *this = &unk_1F5F05858;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    CFRelease(v6);
  }
}

char *BBUUpdateSource::createFromZipFile(BBUUpdateSource *this, BBUZipFile *a2, BBUFeedback *a3)
{
  v3 = a3;
  UpdateSourceType = capabilities::updater::getUpdateSourceType(this);
  switch(UpdateSourceType)
  {
    case 5:

      return BBUICE16UpdateSource::createFromZipFile(this, a2, v7);
    case 4:
      v10 = operator new(0x1A8uLL);
      BBUEUR20UpdateSource::BBUEUR20UpdateSource(v10, this, a2, v3);
      *v10 = &unk_1F5EFFC18;
      *(v10 + 52) = 0;
      BBUEUR25UpdateSource::init(v10);
      return v10;
    case 3:
      v8 = operator new(0x1A0uLL);
      BBUEUR20UpdateSource::BBUEUR20UpdateSource(v8, this, a2, v3);
      (*(*v8 + 216))(v8);
      return v8;
    default:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x46u, "Assertion failure(false && Unrecognized radio type.)");
  }
}

char *BBUUpdateSource::createFromFolder(__int128 *a1, uint64_t a2, char a3)
{
  v6 = ctu::fs::file_exists();
  if (!v6)
  {
    return 0;
  }

  UpdateSourceType = capabilities::updater::getUpdateSourceType(v6);
  switch(UpdateSourceType)
  {
    case 5:

      return BBUICE16UpdateSource::createFromFolder(a1, a2);
    case 4:
      v10 = operator new(0x1A8uLL);
      BBUEUR20UpdateSource::BBUEUR20UpdateSource(v10, a1, a2, a3);
      *v10 = &unk_1F5EFFC18;
      *(v10 + 52) = 0;
      BBUEUR25UpdateSource::init(v10);
      return v10;
    case 3:
      v8 = operator new(0x1A0uLL);
      BBUEUR20UpdateSource::BBUEUR20UpdateSource(v8, a1, a2, a3);
      (*(*v8 + 216))(v8);
      return v8;
    default:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x69u, "Assertion failure(false && Unrecognized radio type.)");
  }
}

void BBUUpdateSource::loadOptions(uint64_t a1, CFDataRef *a2)
{
  if (!*(a1 + 16))
  {
    v3 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], *a2, 0, 0, 0);
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      if (v5 != CFDictionaryGetTypeID())
      {
        v4 = 0;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
LABEL_8:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v6 = (**a1)(a1);
            _BBULog(3, 0, v6, "", "Loaded Options\n");
          }
        }
      }

      v7 = *(a1 + 16);
      *(a1 + 16) = v4;
      if (v7)
      {
        CFRelease(v7);
      }
    }
  }
}

uint64_t BBUUpdateSource::prepareRemoteData(uint64_t a1, uint64_t a2, uint64_t a3, char a4, const void *a5, int a6)
{
  v108 = 0;
  v109 = 0;
  v107 = 0;
  if ((capabilities::updater::shouldStripFDRDataOnAP(a1) & 1) == 0)
  {
    v85 = 0;
    value = 0;
    bytes = 0;
    v13 = 0;
    v8 = 0;
    v15 = *MEMORY[0x1E695E480];
    goto LABEL_7;
  }

  BBUFeedback::handleComment(*(a1 + 8), "libFDR options setup for the new FDR flow. Note that this setup will be ignored in legacy FDR flow");
  v8 = calloc(1uLL, 0x400uLL);
  if (!v8)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Calloc for datadir path failed");
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v8 = 0;
LABEL_49:
    v14 = 19;
    goto LABEL_50;
  }

  v9 = lookupPathForPersistentData();
  v10 = *(a1 + 8);
  if (v9)
  {
    BBUFeedback::handleComment(v10, "Failed to get datadir path; error = %ld", v9);
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_5:
    v14 = 15;
LABEL_50:
    v33 = a5;
    goto LABEL_189;
  }

  BBUFeedback::handleComment(v10, "FDR factory data directory: %s ", v8);
  v15 = *MEMORY[0x1E695E480];
  v109 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v8, 0x8000100u);
  value = CFURLCreateWithFileSystemPath(v15, v109, kCFURLPOSIXPathStyle, 1u);
  v108 = value;
  v13 = calloc(1uLL, 0x400uLL);
  if (!v13)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Calloc for apticket path failed");
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_49;
  }

  v72 = lookupPathForPersonalizedData();
  if (v72)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed to get apticket path; error = %ld", v72);
    v11 = 0;
    v12 = 0;
    goto LABEL_5;
  }

  if (!a5)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Using the APTicket in the FS to create the FDR option");
    v85 = operator new(0x30uLL);
    *v85 = &unk_1F5F00F28;
    *(v85 + 8) = 0u;
    *(v85 + 24) = 0u;
    std::string::basic_string[abi:ne200100]<0>(&v105, v13);
    v75 = BBUFileDataSource::init(v85, &v105, 0);
    if (v106 < 0)
    {
      v76 = v75;
      operator delete(v105);
      v75 = v76;
    }

    if (v75)
    {
      BBUFeedback::handleComment(*(a1 + 8), "APTicket FileDataSource class init failed...");
      v11 = 0;
      v14 = 110;
      v12 = v85;
    }

    else
    {
      v77 = (*(*v85 + 24))(v85);
      v78 = malloc(v77);
      if (v78)
      {
        LODWORD(__p[0]) = -1431655766;
        bytes = v78;
        (*(*v85 + 16))(v85);
        if (v77 == -1431655766)
        {
          v79 = CFDataCreateWithBytesNoCopy(v15, bytes, 2863311530, *MEMORY[0x1E695E498]);
          v80 = v107;
          v107 = v79;
          *&v105 = v80;
          ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&v105);
          BBUFeedback::handleComment(*(a1 + 8), "MSU based APTicket Raw Path: %s", v13);
          goto LABEL_207;
        }

        BBUFeedback::handleComment(*(a1 + 8), "Reading of APTicket content failed.");
        v14 = 112;
        v11 = bytes;
        v12 = v85;
      }

      else
      {
        BBUFeedback::handleComment(*(a1 + 8), "Malloc failed for APTicket content.");
        v11 = 0;
        v14 = 111;
        v12 = v85;
      }
    }

LABEL_191:
    (*(*v12 + 8))(v12);
    goto LABEL_192;
  }

  ctu::cf::CFSharedRef<__CFData const>::operator=(&v107, a5);
  BBUFeedback::handleComment(*(a1 + 8), "Using the APTicket that is passed in as an input to the BBU for the FDR option");
  bytes = 0;
  v85 = 0;
LABEL_207:
  BBUFeedback::handleComment(*(a1 + 8), "Is performManFlow?: Bool = %d", a6);
  BBUFeedback::handleComment(*(a1 + 8), "Now, set the options for the libFDR API (either legacy or new API function)");
LABEL_7:
  Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = Mutable;
  v104 = Mutable;
  if (Mutable)
  {
    if (capabilities::updater::shouldStripFDRDataOnAP(Mutable))
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_14;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v18 = (**a1)(a1);
        _BBULog(3, 0, v18, "", "Stripping and verifying Cal FDR Data on AP\n");
      }

LABEL_14:
      if (a6)
      {
        goto LABEL_20;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
LABEL_17:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v19 = (**a1)(a1);
            _BBULog(3, 0, v19, "", "Not performManifestCheckif (set kAMFDROptionCopyAllowUnsealed = True\n");
          }
        }
      }

      CFDictionaryAddValue(v17, @"CopyAllowUnsealed", *MEMORY[0x1E695E4D0]);
LABEL_20:
      CFDictionaryAddValue(v17, @"DataDirectory", value);
      CFDictionaryAddValue(v17, @"APTicket", v107);
      if (gBBULogMaskGet(void)::once == -1)
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
        v20 = (**a1)(a1);
        v21 = CFDictionaryGetValue(v17, @"CopyAllowUnsealed");
        ctu::cf::show(&v105, v21, v22);
        if (v106 >= 0)
        {
          v23 = &v105;
        }

        else
        {
          v23 = v105;
        }

        _BBULog(3, 0, v20, "", "CAL: Set kAMFDROptionCopyAllowUnsealed: %s\n", v23);
        if (v106 < 0)
        {
          operator delete(v105);
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_30;
        }
      }

LABEL_29:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_37;
      }

LABEL_30:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v24 = (**a1)(a1);
        v25 = CFDictionaryGetValue(v17, @"APTicket");
        ctu::cf::show(&v105, v25, v26);
        if (v106 >= 0)
        {
          v27 = &v105;
        }

        else
        {
          v27 = v105;
        }

        _BBULog(3, 0, v24, "", "CAL: Set kAMFDROptionApTicket: %s\n", v27);
        if (v106 < 0)
        {
          operator delete(v105);
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_38;
        }
      }

LABEL_37:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_57;
      }

LABEL_38:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v28 = (**a1)(a1);
        v29 = CFDictionaryGetValue(v17, @"DataDirectory");
        ctu::cf::show(&v105, v29, v30);
        v31 = v106 >= 0 ? &v105 : v105;
        _BBULog(3, 0, v28, "", "CAL: Set kAMFDROptionDataDirectory: %s\n", v31);
        if (v106 < 0)
        {
          operator delete(v105);
        }
      }

      goto LABEL_57;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
LABEL_56:
        CFDictionaryAddValue(v17, @"GetCombined", *MEMORY[0x1E695E4D0]);
        CFDictionaryAddValue(v17, @"VerifyData", *MEMORY[0x1E695E4C0]);
        goto LABEL_57;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_56;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v34 = (**a1)(a1);
      _BBULog(3, 0, v34, "", "Not stripping Cal FDR Data on AP\n");
    }

    goto LABEL_56;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_57;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v32 = (**a1)(a1);
    _BBULog(3, 0, v32, "", "Failed to create dictionary for CAL FDR options\n");
  }

LABEL_57:
  v35 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v36 = v35;
  v103 = v35;
  if (v35)
  {
    if (!capabilities::updater::shouldStripFDRDataOnAP(v35))
    {
      v52 = *MEMORY[0x1E695E4C0];
      CFDictionaryAddValue(v36, @"GetCombined", *MEMORY[0x1E695E4C0]);
      CFDictionaryAddValue(v36, @"VerifyData", v52);
      CFDictionaryAddValue(v36, @"StripImg4", *MEMORY[0x1E695E4D0]);
      goto LABEL_98;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_63;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v37 = (**a1)(a1);
      _BBULog(3, 0, v37, "", "Stripping and verifying PROV FDR Data on AP\n");
    }

LABEL_63:
    if (a6)
    {
      goto LABEL_69;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_66:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v38 = (**a1)(a1);
          _BBULog(3, 0, v38, "", "Not performManifestCheckif (set kAMFDROptionCopyAllowUnsealed = True\n");
        }
      }
    }

    CFDictionaryAddValue(v36, @"CopyAllowUnsealed", *MEMORY[0x1E695E4D0]);
LABEL_69:
    CFDictionaryAddValue(v36, @"DataDirectory", value);
    CFDictionaryAddValue(v36, @"APTicket", v107);
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_78;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v39 = (**a1)(a1);
      v40 = CFDictionaryGetValue(v36, @"CopyAllowUnsealed");
      ctu::cf::show(&v105, v40, v41);
      if (v106 >= 0)
      {
        v42 = &v105;
      }

      else
      {
        v42 = v105;
      }

      _BBULog(3, 0, v39, "", "PROV: Set kAMFDROptionCopyAllowUnsealed: %s\n", v42);
      if (v106 < 0)
      {
        operator delete(v105);
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_79;
      }
    }

LABEL_78:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_86;
    }

LABEL_79:
    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v43 = (**a1)(a1);
      v44 = CFDictionaryGetValue(v36, @"APTicket");
      ctu::cf::show(&v105, v44, v45);
      if (v106 >= 0)
      {
        v46 = &v105;
      }

      else
      {
        v46 = v105;
      }

      _BBULog(3, 0, v43, "", "PROV: Set kAMFDROptionApTicket: %s\n", v46);
      if (v106 < 0)
      {
        operator delete(v105);
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_98;
        }

        goto LABEL_87;
      }
    }

LABEL_86:
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_98;
    }

LABEL_87:
    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v47 = (**a1)(a1);
      v48 = CFDictionaryGetValue(v36, @"DataDirectory");
      ctu::cf::show(&v105, v48, v49);
      v50 = v106 >= 0 ? &v105 : v105;
      _BBULog(3, 0, v47, "", "PROV: Set kAMFDROptionDataDirectory: %s\n", v50);
      if (v106 < 0)
      {
        operator delete(v105);
      }
    }

    goto LABEL_98;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_98;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_98;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v51 = (**a1)(a1);
    _BBULog(3, 0, v51, "", "Failed to create dictionary for PROV FDR options\n");
  }

LABEL_98:
  v53 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v54 = v53;
  v102 = v53;
  if (v53)
  {
    if (capabilities::updater::shouldStripFDRDataOnAP(v53))
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_105;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v55 = (**a1)(a1);
        _BBULog(3, 0, v55, "", "Stripping and verifying Pac FDR Data on AP\n");
      }

LABEL_105:
      if (a6)
      {
        goto LABEL_111;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
          goto LABEL_108;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
        {
LABEL_108:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v56 = (**a1)(a1);
            _BBULog(3, 0, v56, "", "Not performManifestCheckif (set kAMFDROptionCopyAllowUnsealed = True\n");
          }
        }
      }

      CFDictionaryAddValue(v54, @"CopyAllowUnsealed", *MEMORY[0x1E695E4D0]);
LABEL_111:
      CFDictionaryAddValue(v54, @"DataDirectory", value);
      CFDictionaryAddValue(v54, @"APTicket", v107);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_120;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_120;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v57 = (**a1)(a1);
        v58 = CFDictionaryGetValue(v54, @"CopyAllowUnsealed");
        ctu::cf::show(&v105, v58, v59);
        if (v106 >= 0)
        {
          v60 = &v105;
        }

        else
        {
          v60 = v105;
        }

        v53 = _BBULog(3, 0, v57, "", "PAC: Set kAMFDROptionCopyAllowUnsealed: %s\n", v60);
        if (v106 < 0)
        {
          operator delete(v105);
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
          {
            goto LABEL_128;
          }

          goto LABEL_121;
        }
      }

LABEL_120:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_128;
      }

LABEL_121:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v61 = (**a1)(a1);
        v62 = CFDictionaryGetValue(v54, @"APTicket");
        ctu::cf::show(&v105, v62, v63);
        if (v106 >= 0)
        {
          v64 = &v105;
        }

        else
        {
          v64 = v105;
        }

        v53 = _BBULog(3, 0, v61, "", "PAC: Set kAMFDROptionApTicket: %s\n", v64);
        if (v106 < 0)
        {
          operator delete(v105);
        }

        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
          {
            goto LABEL_145;
          }

          goto LABEL_129;
        }
      }

LABEL_128:
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_145;
      }

LABEL_129:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v65 = (**a1)(a1);
        v66 = CFDictionaryGetValue(v54, @"DataDirectory");
        ctu::cf::show(&v105, v66, v67);
        v68 = v106 >= 0 ? &v105 : v105;
        v53 = _BBULog(3, 0, v65, "", "PAC: Set kAMFDROptionDataDirectory: %s\n", v68);
        if (v106 < 0)
        {
          operator delete(v105);
        }
      }

      goto LABEL_145;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
LABEL_144:
        CFDictionaryAddValue(v54, @"GetCombined", *MEMORY[0x1E695E4D0]);
        CFDictionaryAddValue(v54, @"VerifyData", *MEMORY[0x1E695E4C0]);
        goto LABEL_145;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_144;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v70 = (**a1)(a1);
      _BBULog(3, 0, v70, "", "Not stripping FDR Pac Data on AP\n");
    }

    goto LABEL_144;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_145;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_145;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v69 = (**a1)(a1);
    v53 = _BBULog(3, 0, v69, "", "Failed to create dictionary for PAC FDR options\n");
  }

LABEL_145:
  if (*(a1 + 32))
  {
    v14 = 0;
    v33 = a5;
    v11 = bytes;
    v12 = v85;
    if (!v54)
    {
      goto LABEL_185;
    }

    goto LABEL_184;
  }

  v100 = (*"bbcl" | 0xAAAAAA0000000000);
  v101 = xmmword_1E5394920;
  v106 = 3;
  LODWORD(v105) = 4997443;
  capabilities::updater::CALFileName(__p, v53);
  cf = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  BYTE1(v81) = a6;
  LOBYTE(v81) = a4;
  v14 = (*(*a1 + 224))(a1, a1 + 40, a2, &v100, &v105, __p, &cf, a3, v81);
  v71 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v99 < 0)
  {
    operator delete(__p[0]);
    if ((v106 & 0x80000000) == 0)
    {
LABEL_154:
      if ((SHIBYTE(v101) & 0x80000000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_162;
    }
  }

  else if ((v106 & 0x80000000) == 0)
  {
    goto LABEL_154;
  }

  operator delete(v105);
  if ((SHIBYTE(v101) & 0x80000000) == 0)
  {
LABEL_155:
    if (v14)
    {
      goto LABEL_183;
    }

    goto LABEL_163;
  }

LABEL_162:
  operator delete(v100);
  if (v14)
  {
    goto LABEL_183;
  }

LABEL_163:
  v95 = (*"bbpv" | 0xAAAAAA0000000000);
  v96 = xmmword_1E5394920;
  v106 = 4;
  strcpy(&v105, "PROV");
  capabilities::updater::PROVFileName(__p, v71);
  v94 = v36;
  if (v36)
  {
    CFRetain(v36);
  }

  BYTE1(v82) = a6;
  LOBYTE(v82) = a4;
  v14 = (*(*a1 + 224))(a1, a1 + 48, a2, &v95, &v105, __p, &v94, a3, v82);
  v73 = v94;
  if (v94)
  {
    CFRelease(v94);
  }

  if (v99 < 0)
  {
    operator delete(__p[0]);
    if ((v106 & 0x80000000) == 0)
    {
LABEL_169:
      if ((SHIBYTE(v96) & 0x80000000) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_175;
    }
  }

  else if ((v106 & 0x80000000) == 0)
  {
    goto LABEL_169;
  }

  operator delete(v105);
  if ((SHIBYTE(v96) & 0x80000000) == 0)
  {
LABEL_170:
    if (v14)
    {
      goto LABEL_183;
    }

    goto LABEL_176;
  }

LABEL_175:
  operator delete(v95);
  if (v14)
  {
    goto LABEL_183;
  }

LABEL_176:
  v92 = (*"bbpc" | 0xAAAAAA0000000000);
  v93 = xmmword_1E5394920;
  v106 = 3;
  LODWORD(v105) = 4407632;
  capabilities::updater::PACFileName(__p, v73);
  v91 = v54;
  if (v54)
  {
    CFRetain(v54);
  }

  BYTE1(v83) = a6;
  LOBYTE(v83) = a4;
  v14 = (*(*a1 + 224))(a1, a1 + 56, a2, &v92, &v105, __p, &v91, a3, v83);
  if (v91)
  {
    CFRelease(v91);
  }

  if (v99 < 0)
  {
    operator delete(__p[0]);
    if ((v106 & 0x80000000) == 0)
    {
LABEL_182:
      if ((SHIBYTE(v93) & 0x80000000) == 0)
      {
        goto LABEL_183;
      }

LABEL_210:
      operator delete(v92);
      *(a1 + 32) = 1;
      v33 = a5;
      v11 = bytes;
      v12 = v85;
      if (!v54)
      {
        goto LABEL_185;
      }

      goto LABEL_184;
    }
  }

  else if ((v106 & 0x80000000) == 0)
  {
    goto LABEL_182;
  }

  operator delete(v105);
  if (SHIBYTE(v93) < 0)
  {
    goto LABEL_210;
  }

LABEL_183:
  *(a1 + 32) = 1;
  v33 = a5;
  v11 = bytes;
  v12 = v85;
  if (v54)
  {
LABEL_184:
    CFRelease(v54);
  }

LABEL_185:
  if (v36)
  {
    CFRelease(v36);
  }

  if (v104)
  {
    CFRelease(v104);
  }

LABEL_189:
  if (v33)
  {
    goto LABEL_194;
  }

  if (v12)
  {
    goto LABEL_191;
  }

LABEL_192:
  if (v11)
  {
    free(v11);
  }

LABEL_194:
  if (v8)
  {
    free(v8);
  }

  if (v13)
  {
    free(v13);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (v109)
  {
    CFRelease(v109);
  }

  return v14;
}

void sub_1E5357008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v46 - 112));
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef((v46 - 104));
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v46 - 96));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=(const void **a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *a1;
  *a1 = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

uint64_t BBUUpdateSource::findRemoteData(BBUFeedback **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void **a7, uint64_t a8, unsigned __int8 a9, char a10)
{
  memset(__p, 170, 24);
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v16 = off_1ED944170;
  if (!off_1ED944170)
  {
    v17 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v17);
    v18 = a8;
    __p[3] = v17;
    v19 = operator new(0x20uLL);
    *v19 = &unk_1F5F05A00;
    v19[1] = 0;
    v19[2] = 0;
    v19[3] = v17;
    v20 = off_1ED944178;
    off_1ED944170 = v17;
    off_1ED944178 = v19;
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    v16 = off_1ED944170;
    a8 = v18;
  }

  v21 = off_1ED944178;
  v47 = v16;
  v48 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v16, &v49);
  v22 = *(a6 + 23);
  if (v22 >= 0)
  {
    v23 = a6;
  }

  else
  {
    v23 = *a6;
  }

  if (v22 >= 0)
  {
    v24 = *(a6 + 23);
  }

  else
  {
    v24 = *(a6 + 8);
  }

  v25 = std::string::append(&v49, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  __p[2] = v25->__r_.__value_.__r.__words[2];
  *__p = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v27 = (*(*a1 + 29))(a1, a2, __p, a5);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v28 = (**a1)(a1);
    if (*(a6 + 23) >= 0)
    {
      v29 = a6;
    }

    else
    {
      v29 = *a6;
    }

    v30 = "not found";
    if (!v27)
    {
      v30 = "located";
    }

    v31 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v31 = __p[0];
    }

    _BBULog(3, 0, v28, "", "%s:  %s at %s", v29, v30, v31);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

LABEL_30:
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v32 = (**a1)(a1);
    _BBULog(3, 0, v32, "", "\n");
  }

LABEL_33:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v33 = gBBULogMaskGet(void)::once;
    if (v27)
    {
LABEL_35:
      if (v33 == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_42;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v34 = (**a1)(a1);
        if (*(a5 + 23) >= 0)
        {
          v35 = a5;
        }

        else
        {
          v35 = *a5;
        }

        _BBULog(3, 0, v34, "", "%s:  searching in FDR\n", v35);
      }

LABEL_42:
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v46, *a4, *(a4 + 8));
        v36 = *a7;
        cf = v36;
        if (!v36)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v46 = *a4;
        v36 = *a7;
        cf = v36;
        if (!v36)
        {
LABEL_55:
          LOBYTE(v42) = a10;
          v37 = (*(*a1 + 30))(a1, a2, a3, &v46, a5, &cf, a8, a9, v42);
          if (cf)
          {
            CFRelease(cf);
          }

          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
            if (v37)
            {
              goto LABEL_59;
            }
          }

          else if (v37)
          {
LABEL_59:
            if (*(a5 + 23) >= 0)
            {
              v40 = a5;
            }

            else
            {
              v40 = *a5;
            }

            BBUFeedback::handleComment(a1[1], "%s:  not found in FDR\n", v40);
            return v37;
          }

          if (gBBULogMaskGet(void)::once != -1)
          {
            goto LABEL_66;
          }

LABEL_47:
          v37 = 0;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
          {
            return v37;
          }

          goto LABEL_48;
        }
      }

      CFRetain(v36);
      goto LABEL_55;
    }
  }

  else
  {
    v33 = gBBULogMaskGet(void)::once;
    if (v27)
    {
      goto LABEL_35;
    }
  }

  if (v33 == -1)
  {
    goto LABEL_47;
  }

LABEL_66:
  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v37 = 0;
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
  {
    return v37;
  }

LABEL_48:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v38 = (**a1)(a1);
    if (*(a6 + 23) >= 0)
    {
      v39 = a6;
    }

    else
    {
      v39 = *a6;
    }

    _BBULog(3, 0, v38, "", "Loaded %s (%p)\n", v39, *a2);
    return 0;
  }

  return v37;
}

void sub_1E53578A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v34 - 88));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t BBUUpdateSource::createImageFromFDR(BBUFeedback **a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, const void **a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v82 = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, *a3, *(a3 + 8));
  }

  else
  {
    v80 = *a3;
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v84, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    v84 = v80;
  }

  v83 = 0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v84;
  }

  v70 = a2;
  *v86 = 0;
  if (ctu::cf::convert_copy())
  {
    v16 = *v86;
  }

  else
  {
    v16 = 0;
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
    v81 = v16;
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((a4[23] & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v81 = v16;
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  operator delete(v84.__r_.__value_.__l.__data_);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((a4[23] & 0x80000000) == 0)
  {
LABEL_17:
    v78 = *a4;
    goto LABEL_22;
  }

LABEL_21:
  std::string::__init_copy_ctor_external(&v78, *a4, *(a4 + 1));
LABEL_22:
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v84, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v84 = v78;
  }

  v83 = 0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v84;
  }

  *v86 = 0;
  if (ctu::cf::convert_copy())
  {
    v17 = *v86;
  }

  else
  {
    v17 = 0;
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
    v79 = v17;
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_33:
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_116;
    }
  }

  else
  {
    v79 = v17;
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  operator delete(v84.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_34:
    v84.__r_.__value_.__r.__words[0] = 0;
    v18 = a1[1];
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      goto LABEL_35;
    }

LABEL_117:
    v61 = v18;
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    v18 = v61;
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_118;
  }

LABEL_116:
  operator delete(v78.__r_.__value_.__l.__data_);
  v84.__r_.__value_.__r.__words[0] = 0;
  v18 = a1[1];
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
  {
    goto LABEL_117;
  }

LABEL_35:
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
  {
    goto LABEL_36;
  }

LABEL_118:
  v62 = v18;
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
  v18 = v62;
LABEL_36:
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
    v19 = 1;
  }

  else
  {
    v19 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
  }

  BBUFeedback::handleComment(v18, "In restoreOS?: Bool = %d", v19);
  BBUFeedback::handleComment(a1[1], "Is performManCheckFlow?: Bool = %d", a9);
  BBUFeedback::handleComment(a1[1], "IsBBFused? Bool = %d", a8);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_45;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v21 = (**a1)(a1);
    v22 = a4;
    if (a4[23] < 0)
    {
      v22 = *a4;
    }

    _BBULog(3, 0, v21, "", "Identifier: %s\n", v22);
  }

LABEL_45:
  v23 = a7;
  v24 = a1[1];
  ctu::cf::show(&v85, v17, v20);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v85;
  }

  else
  {
    v25 = v85.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(v24, "ClassIdentifier with show(): %s\n", v25);
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (capabilities::updater::shouldStripFDRDataOnAP(v26))
  {
    BBUFeedback::handleComment(a1[1], "Using the new FDR flow");
    v77 = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    v76 = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    v27 = *a6;
    cf = v27;
    if (v27)
    {
      CFRetain(v27);
    }

    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_59;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_59:
    v28 = BBUFDRUtilities::validateAndCopy(&v77, &v76, &v82, &cf, &v84, (BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v76)
    {
      CFRelease(v76);
    }

    if (v77)
    {
      CFRelease(v77);
    }

    v29 = a1[1];
    if (!v28)
    {
      BBUFeedback::handleComment(v29, "FDR data pull and validation is successful for %s");
      goto LABEL_126;
    }

    if (*(a5 + 23) >= 0)
    {
      v30 = a5;
    }

    else
    {
      v30 = *a5;
    }

    BBUFeedback::handleComment(v29, "Analyze the FDR failure for %s", v30);
    v31 = a1[1];
    ctu::cf::show(&v85, v84.__r_.__value_.__l.__data_, v32);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v85;
    }

    else
    {
      v33 = v85.__r_.__value_.__r.__words[0];
    }

    BBUFeedback::handleComment(v31, "FDR failure we hit is: %s \n", v33);
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
      v34 = a1[1];
      v35 = a4;
      if ((a4[23] & 0x80000000) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v34 = a1[1];
      v35 = a4;
      if ((a4[23] & 0x80000000) == 0)
      {
        goto LABEL_74;
      }
    }

    v35 = *a4;
LABEL_74:
    BBUFeedback::handleComment(v34, "Identifier: %s\n", v35);
    v86[0] = 0;
    LOBYTE(v83) = 0;
    v36 = (*(*a1 + 32))(a1, v23, v86, &v83);
    BBUFeedback::handleComment(a1[1], "Return code for the root manifest CAL/FATP_CAL entitlements check is: %d", v36);
    v37 = a1[1];
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v68 = a1[1];
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      v37 = v68;
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_76;
      }
    }

    v69 = v37;
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    v37 = v69;
LABEL_76:
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      v38 = 1;
    }

    else
    {
      v38 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
    }

    BBUFeedback::handleComment(v37, "In restoreOS?: Bool = %d", v38);
    BBUFeedback::handleComment(a1[1], "Calibration enabled flag: %d", v86[0]);
    BBUFeedback::handleComment(a1[1], "FATPCalibration enabled flag: %d", v83);
    v39 = a1[1];
    v40 = a4;
    if (a4[23] < 0)
    {
      v40 = *a4;
    }

    v41 = strncmp(v40, "bbcl", 5uLL);
    BBUFeedback::handleComment(v39, "bbcl string check: %d", v41 == 0);
    v42 = a1[1];
    v43 = a4;
    if (a4[23] < 0)
    {
      v43 = *a4;
    }

    v44 = strncmp(v43, "bbpc", 5uLL);
    BBUFeedback::handleComment(v42, "bbpc string check: %d", v44 == 0);
    v45 = a1[1];
    ctu::cf::show(&v85, v17, v46);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v85;
    }

    else
    {
      v47 = v85.__r_.__value_.__r.__words[0];
    }

    BBUFeedback::handleComment(v45, "ClassIdentifier in error: %s\n", v47);
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    v49 = a1[1];
    ctu::cf::show(&v85, v17, v48);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v85;
    }

    else
    {
      v50 = v85.__r_.__value_.__r.__words[0];
    }

    v51 = strncmp(v50, "bbcl", 5uLL);
    BBUFeedback::handleComment(v49, "ClassIdentifier bbcl string check: %d", v51 == 0);
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    v53 = a1[1];
    ctu::cf::show(&v85, v17, v52);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v85;
    }

    else
    {
      v54 = v85.__r_.__value_.__r.__words[0];
    }

    v55 = strncmp(v54, "bbpc", 5uLL);
    BBUFeedback::handleComment(v53, "ClassIdentifier bbpc string check: %d", v55 == 0);
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
      if (a8)
      {
LABEL_98:
        if (BBUFDRUtilities::isErrorImageNotFound(v84.__r_.__value_.__l.__data_, v56))
        {
          v58 = "Image NOT found in FDR, so ignore all errors coming from the AMFDR and depend on BB to fail if necassary";
LABEL_124:
          v63 = a1[1];
LABEL_125:
          BBUFeedback::handleComment(v63, v58);
          goto LABEL_126;
        }

        if (a9)
        {
          if (v84.__r_.__value_.__r.__words[0])
          {
            BBUFeedback::handleComment(a1[1], "Fatal error 1 in FDR data validation/decode");
            goto LABEL_168;
          }
        }

        else
        {
          if (v86[0] == 1)
          {
            v67 = a4;
            if (a4[23] < 0)
            {
              v67 = *a4;
            }

            if (!strncmp(v67, "bbcl", 5uLL))
            {
              goto LABEL_166;
            }
          }

          if (v83 == 1)
          {
            if (a4[23] < 0)
            {
              a4 = *a4;
            }

            if (!strncmp(a4, "bbpc", 5uLL))
            {
LABEL_166:
              v58 = "CALIB enabled for CAL file, so ignore all errors coming from the AMFDR";
              goto LABEL_124;
            }
          }
        }

        if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
        {
          if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
          {
            goto LABEL_157;
          }
        }

        else
        {
          dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
          if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
          {
LABEL_157:
            if (((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1) == 0)
            {
              goto LABEL_160;
            }

LABEL_158:
            if ((a9 & 1) == 0 && !BBUFDRUtilities::isTrustErrorAcceptable(v84.__r_.__value_.__l.__data_, v57))
            {
              BBUFeedback::handleComment(a1[1], "Fatal error 2 in FDR data validation/decode");
              goto LABEL_168;
            }

LABEL_160:
            if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
            {
              if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
              {
                goto LABEL_162;
              }
            }

            else
            {
              dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
              if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
              {
LABEL_162:
                v63 = a1[1];
                v58 = "libFDR errors (if any) coming from the API can be ignored";
                if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
                {
                  goto LABEL_125;
                }

                goto LABEL_163;
              }
            }

            dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
            v63 = a1[1];
            v58 = "libFDR errors (if any) coming from the API can be ignored";
            if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
            {
              goto LABEL_125;
            }

LABEL_163:
            if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) != 0 || !v84.__r_.__value_.__r.__words[0])
            {
              goto LABEL_125;
            }

            BBUFeedback::handleComment(v63, "Fatal error 3 in FDR data validation/decode");
LABEL_168:
            v64 = 119;
            goto LABEL_135;
          }
        }

        dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
        if (((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1) == 0)
        {
          goto LABEL_160;
        }

        goto LABEL_158;
      }
    }

    else if (a8)
    {
      goto LABEL_98;
    }

    v58 = "BB is NOT fused, so ignore all errors coming from the AMFDR";
    goto LABEL_124;
  }

  v74 = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  v73 = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  v59 = *a6;
  v72 = v59;
  if (v59)
  {
    CFRetain(v59);
  }

  v60 = BBUFDRUtilities::copy(&v74, &v73, &v82, &v72);
  if (v72)
  {
    CFRelease(v72);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v60)
  {
    BBUFeedback::handleComment(a1[1], "first pass - could not find data in FDR for %s");
  }

LABEL_126:
  v71 = v82;
  if (v82)
  {
    CFRetain(v82);
  }

  v64 = (*(*a1 + 31))(a1, v70, a5, &v71);
  if (v71)
  {
    CFRelease(v71);
  }

  if (v64)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_135;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_135;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v65 = (**a1)(a1);
      _BBULog(3, 0, v65, "", "failed creating image from fdr data\n");
    }
  }

LABEL_135:
  if (v84.__r_.__value_.__r.__words[0])
  {
    CFRelease(v84.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  return v64;
}

void sub_1E53585FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, const void *a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, const void *a52, const void *a53, __int16 a54, char a55, char a56)
{
  if (*(v56 - 105) < 0)
  {
    operator delete(*(v56 - 128));
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a45);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a52);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a53);
  _Unwind_Resume(a1);
}

uint64_t BBUUpdateSource::createImageFromFile(uint64_t (***a1)(void), BBUICENVMImage **a2, uint64_t a3, char *a4)
{
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.st_blksize = v8;
  *__dst.st_qspare = v8;
  __dst.st_birthtimespec = v8;
  *&__dst.st_size = v8;
  __dst.st_mtimespec = v8;
  __dst.st_ctimespec = v8;
  *&__dst.st_uid = v8;
  __dst.st_atimespec = v8;
  *&__dst.st_dev = v8;
  if (*(a3 + 23) >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  v10 = stat(v9, &__dst);
  if (!v10)
  {
    v14 = capabilities::radio::vendor(v10);
    if (v14 == 2)
    {
      v20 = operator new(0x30uLL);
      *v20 = &unk_1F5F00F28;
      *(v20 + 8) = 0u;
      *(v20 + 24) = 0u;
      v21 = BBUFileDataSource::init(v20, a3, 0);
      if (!v21)
      {
LABEL_30:
        v23 = capabilities::radio::vendor(v21);
        if (v23 == 2)
        {
          memset(&__dst, 0, 24);
          v29 = a4[23];
          if (v29 >= 0)
          {
            v30 = a4[23];
          }

          else
          {
            v30 = *(a4 + 1);
          }

          if (v29 < 0)
          {
            a4 = *a4;
          }

          if (v30 >= 3)
          {
            v31 = 3;
          }

          else
          {
            v31 = v30;
          }

          v32 = memcmp(a4, "CAL", v31);
          if (v30 != 3 || v32)
          {
            if (v30 >= 4)
            {
              v34 = 4;
            }

            else
            {
              v34 = v30;
            }

            v35 = memcmp(a4, "PROV", v34);
            if (v30 != 4 || v35)
            {
              v39 = memcmp(a4, "PAC", v31);
              if (v30 != 3 || v39)
              {
                exception = __cxa_allocate_exception(0x210uLL);
                _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x33Au, "Assertion failure(false && Unrecognized BBUEUR Remote Data fileName.)");
              }

              capabilities::updater::PACFileName(&v48, v39);
            }

            else
            {
              capabilities::updater::PROVFileName(&v48, v35);
            }
          }

          else
          {
            capabilities::updater::CALFileName(&v48, v32);
          }

          *&__dst.st_dev = v48;
          *&__dst.st_uid = v49;
          v40 = operator new(0x38uLL);
          v41 = v40;
          st_gid_high = SHIBYTE(__dst.st_gid);
          v43 = *&__dst.st_dev;
          if ((__dst.st_gid & 0x80000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = *&__dst.st_dev;
          }

          BBUICENVMImage::BBUICENVMImage(v40, v20, p_dst, 0);
          *a2 = v41;
          if ((st_gid_high & 0x80000000) == 0)
          {
LABEL_78:
            if (*a2)
            {
              return 0;
            }

            if (gBBULogMaskGet(void)::once == -1)
            {
              if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
              {
                goto LABEL_82;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
              {
LABEL_82:
                if ((gBBULogVerbosity & 0x80000000) == 0)
                {
                  v45 = (**a1)(a1);
                  _BBULog(3, 0, v45, "", "failed creating BBUImage from data source\n");
                }
              }
            }

            (*(*v20 + 8))(v20);
            return 19;
          }

          v38 = v43;
LABEL_77:
          operator delete(v38);
          goto LABEL_78;
        }

        if (v23 == 1)
        {
          v24 = operator new(0x58uLL);
          if (a4[23] >= 0)
          {
            v25 = a4;
          }

          else
          {
            v25 = *a4;
          }

          v26 = strlen(v25);
          if (v26 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v27 = v26;
          if (v26 >= 0x17)
          {
            if ((v26 | 7) == 0x17)
            {
              v36 = 25;
            }

            else
            {
              v36 = (v26 | 7) + 1;
            }

            v28 = operator new(v36);
            *(&v50 + 1) = v27;
            v51 = v36 | 0x8000000000000000;
            *&v50 = v28;
          }

          else
          {
            HIBYTE(v51) = v26;
            v28 = &v50;
            if (!v26)
            {
              goto LABEL_66;
            }
          }

          memmove(v28, v25, v27);
LABEL_66:
          *(v28 + v27) = 0;
          BBUEURMIImage::BBUEURMIImage(v24, v20, 0);
          *v24 = &unk_1F5F01A48;
          *(v24 + 8) = 0;
          *(v24 + 9) = 0;
          *(v24 + 10) = 0;
          if ((SHIBYTE(v51) & 0x80000000) == 0)
          {
            result = 0;
            *(v24 + 4) = v50;
            *(v24 + 10) = v51;
            *a2 = v24;
            return result;
          }

          v37 = v50;
          std::string::__assign_no_alias<true>(v24 + 8, v50, *(&v50 + 1));
          *a2 = v24;
          v38 = v37;
          goto LABEL_77;
        }

        v46 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v46, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x343u, "Assertion failure(false && Unrecognized radio vendor.)");
LABEL_96:
      }

      (*(*v20 + 8))(v20);
LABEL_51:
      if (gBBULogMaskGet(void)::once == -1)
      {
        result = 19;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          return result;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = 19;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          return result;
        }
      }

      if (gBBULogVerbosity < 0)
      {
        return result;
      }

      v33 = (**a1)(a1);
      _BBULog(3, 0, v33, "", "could not create data source from file\n");
      return 19;
    }

    if (v14 != 1)
    {
      v46 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v46, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x311u, "Assertion failure(false && Unrecognized radio vendor.)");
      goto LABEL_96;
    }

    ImageIDFromImageName = BBUEUR20UpdateSource::getImageIDFromImageName(a4);
    if (*(a3 + 23) >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    v17 = strlen(v16);
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      if ((v17 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v17 | 7) + 1;
      }

      v19 = operator new(v22);
      __dst.st_ino = v18;
      *&__dst.st_uid = v22 | 0x8000000000000000;
      *&__dst.st_dev = v19;
    }

    else
    {
      HIBYTE(__dst.st_gid) = v17;
      v19 = &__dst;
      if (!v17)
      {
LABEL_28:
        v19[v18] = 0;
        v21 = BBUDataSource::createFromEurekaMIFile(&__dst, 0, ImageIDFromImageName);
        v20 = v21;
        if (SHIBYTE(__dst.st_gid) < 0)
        {
          operator delete(*&__dst.st_dev);
          if (v20)
          {
            goto LABEL_30;
          }
        }

        else if (v21)
        {
          goto LABEL_30;
        }

        goto LABEL_51;
      }
    }

    memmove(v19, v16, v18);
    goto LABEL_28;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 15;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 15;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v12 = (**a1)(a1);
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    _BBULog(3, 0, v12, "", "could not locate %s\n", v13);
    return 15;
  }

  return result;
}

void sub_1E5358F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v26 + 87) < 0)
  {
    operator delete(*v25);
  }

  *v26 = &unk_1F5F04F58;
  v28 = v26[1];
  if (v28)
  {
    (*(*v28 + 8))(v28, a2, a3, a4, a5, a6, a7, a8);
  }

  operator delete(__p);
  operator delete(v26);
  _Unwind_Resume(a1);
}

uint64_t BBUUpdateSource::createImageFromData(capabilities::radio *a1, BBUICENVMImage **a2, const void **a3, BBUDataSource **a4)
{
  v8 = capabilities::radio::vendor(a1);
  if (v8 != 1)
  {
    if (v8 != 2)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x370u, "Assertion failure(false && Unrecognized radio vendor.)");
      goto LABEL_71;
    }

    v9 = *a4;
    v10 = operator new(0x18uLL);
    v11 = v10;
    *(v10 + 4) = 0;
    *v10 = &unk_1F5F04B00;
    *(v10 + 1) = v9;
    if (v9)
    {
      v10 = CFRetain(v9);
    }

LABEL_6:
    v13 = capabilities::radio::vendor(v10);
    if (v13 == 2)
    {
      v43 = 0uLL;
      v44 = 0;
      v19 = *(a3 + 23);
      if (v19 >= 0)
      {
        v20 = *(a3 + 23);
      }

      else
      {
        v20 = a3[1];
      }

      if (v19 >= 0)
      {
        v21 = a3;
      }

      else
      {
        v21 = *a3;
      }

      if (v20 >= 3)
      {
        v22 = 3;
      }

      else
      {
        v22 = v20;
      }

      v23 = memcmp(v21, "CAL", v22);
      if (v20 == 3 && v23 == 0)
      {
        capabilities::updater::CALFileName(&v41, v23);
      }

      else
      {
        if (v20 >= 4)
        {
          v25 = 4;
        }

        else
        {
          v25 = v20;
        }

        v26 = memcmp(v21, "PROV", v25);
        if (v20 != 4 || v26)
        {
          v32 = memcmp(v21, "PAC", v22);
          if (v20 != 3 || v32)
          {
            v40 = __cxa_allocate_exception(0x210uLL);
            _BBUException::_BBUException(v40, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x398u, "Assertion failure(false && Unrecognized BBUICE Remote Data fileName.)");
          }

          capabilities::updater::PACFileName(&v41, v32);
        }

        else
        {
          capabilities::updater::PROVFileName(&v41, v26);
        }
      }

      v43 = v41;
      v44 = v42;
      v33 = operator new(0x38uLL);
      v34 = v33;
      v35 = SHIBYTE(v44);
      v36 = v43;
      if (v44 >= 0)
      {
        v37 = &v43;
      }

      else
      {
        v37 = v43;
      }

      BBUICENVMImage::BBUICENVMImage(v33, v11, v37, 0);
      *a2 = v34;
      if ((v35 & 0x80000000) == 0)
      {
        if (!*a2)
        {
          goto LABEL_58;
        }

        return 0;
      }

      v31 = v36;
LABEL_57:
      operator delete(v31);
      if (!*a2)
      {
LABEL_58:
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
LABEL_60:
            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              v38 = (**a1)(a1);
              _BBULog(3, 0, v38, "", "failed creating BBUImage from data source\n");
            }
          }
        }

        (*(*v11 + 8))(v11);
        return 19;
      }

      return 0;
    }

    if (v13 == 1)
    {
      v14 = operator new(0x58uLL);
      if (*(a3 + 23) >= 0)
      {
        v15 = a3;
      }

      else
      {
        v15 = *a3;
      }

      v16 = strlen(v15);
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v17 = v16;
      if (v16 >= 0x17)
      {
        if ((v16 | 7) == 0x17)
        {
          v27 = 25;
        }

        else
        {
          v27 = (v16 | 7) + 1;
        }

        p_dst = operator new(v27);
        *(&__dst + 1) = v17;
        v46 = v27 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v46) = v16;
        p_dst = &__dst;
        if (!v16)
        {
          goto LABEL_40;
        }
      }

      memmove(p_dst, v15, v17);
LABEL_40:
      *(p_dst + v17) = 0;
      BBUEURMIImage::BBUEURMIImage(v14, v11, 0);
      *v14 = &unk_1F5F01A48;
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      *(v14 + 10) = 0;
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
        result = 0;
        *(v14 + 4) = __dst;
        *(v14 + 10) = v46;
        *a2 = v14;
        return result;
      }

      v30 = __dst;
      std::string::__assign_no_alias<true>(v14 + 8, __dst, *(&__dst + 1));
      *a2 = v14;
      v31 = v30;
      goto LABEL_57;
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUUpdateSource.cpp", 0x3A1u, "Assertion failure(false && Unrecognized radio vendor.)");
LABEL_71:
  }

  ImageIDFromImageName = BBUEUR20UpdateSource::getImageIDFromImageName(a3);
  v10 = BBUDataSource::createFromEurekaMIData(*a4, 0, ImageIDFromImageName);
  v11 = v10;
  if (v10)
  {
    goto LABEL_6;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 19;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      return result;
    }

    goto LABEL_44;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  result = 19;
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_44:
    if (gBBULogVerbosity < 0)
    {
      return result;
    }

    v29 = (**a1)(a1);
    _BBULog(3, 0, v29, "", "failed creating data source from FDR data\n");
    return 19;
  }

  return result;
}

void sub_1E53595A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 87) < 0)
  {
    operator delete(*v25);
  }

  *v24 = &unk_1F5F04F58;
  v27 = v24[1];
  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  operator delete(__p);
  operator delete(v24);
  _Unwind_Resume(a1);
}

uint64_t BBUUpdateSource::getCalibrationEntitlements(BBUFeedback **this, BBUDataSource *a2, BOOL *a3, BOOL *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (!a2)
  {
    return 118;
  }

  v8 = (*(*a2 + 24))(a2);
  v9 = malloc(v8);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v10 = (gBBULogVerbosity >= 0) & (*gBBULogMaskGet(void)::sBBULogMask >> 3);
  if (!v9)
  {
    if (v10)
    {
      v19 = (**this)(this);
      _BBULog(3, 0, v19, "", "BBTicket malloc for DER decode failed \n");
    }

    v17 = 0;
    v15 = 0;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v20;
    v41 = v20;
    v38 = v20;
    v39 = v20;
    v36 = v20;
    v37 = v20;
    v16 = 113;
    goto LABEL_30;
  }

  if (v10 && (v11 = (**this)(this), _BBULog(3, 0, v11, "", "Get root manifest content from file into memory\n"), gBBULogMaskGet(void)::once != -1))
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
  {
    goto LABEL_10;
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v12 = (**this)(this);
    _BBULog(3, 0, v12, "", "Root manifest size: %d \n", v8);
  }

LABEL_10:
  LODWORD(v34) = -1431655766;
  (*(*a2 + 16))(a2, v9, v8, &v34, 0);
  if (v34 != v8)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_27:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v21 = (**this)(this);
          _BBULog(3, 0, v21, "", "BBTicket read content failed\n");
        }
      }
    }

    v17 = 0;
    v15 = 0;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v20;
    v41 = v20;
    v38 = v20;
    v39 = v20;
    v36 = v20;
    v37 = v20;
    v16 = 114;
LABEL_30:
    v34 = v20;
    v35 = v20;
    goto LABEL_31;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v13;
  v41 = v13;
  v38 = v13;
  v39 = v13;
  v36 = v13;
  v37 = v13;
  v34 = v13;
  v35 = v13;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_15;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v14 = (**this)(this);
    _BBULog(3, 0, v14, "", "Now DERDecode the root manifest to get the calibration enabled flag\n");
  }

LABEL_15:
  if (DERDecodeBBTicket(v9, v8, &v34))
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v15 = 0;
    v16 = 115;
    v17 = 1;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v18 = (**this)(this);
      _BBULog(3, 0, v18, "", "RootManifest decode error during FDR data parsing\n");
LABEL_71:
      v15 = 0;
    }
  }

  else
  {
    memset(v44, 170, 32);
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v43 = 0xAAAAAAAAAAAAAAAALL;
    v17 = DERDecodeSeqInit(&v37, &v44[1], &v44[2]);
    if (v17)
    {
LABEL_67:
      *a3 = 0;
      if (gBBULogMaskGet(void)::once == -1)
      {
        v15 = 0;
        v16 = 116;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v15 = 0;
        v16 = 116;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
        {
          goto LABEL_31;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v32 = (**this)(this);
        _BBULog(3, 0, v32, "", "RootManifest decode error during CalibEnable FDR data parsing\n");
        goto LABEL_71;
      }
    }

    else
    {
      v30 = 0;
      while (1)
      {
        v31 = DERDecodeSeqNext(&v44[2], &v42);
        if (v31)
        {
          break;
        }

        if (v42 == 0x80000000000000D4)
        {
          if (v44[0] != 4)
          {
            goto LABEL_66;
          }

          v30 = 0;
          if (*v43)
          {
            if (*v43 != 1)
            {
LABEL_66:
              v17 = 3;
              goto LABEL_67;
            }

            v30 = 1;
          }
        }
      }

      v17 = v31;
      if (v31 != 1)
      {
        goto LABEL_67;
      }

      v17 = 0;
      v16 = 0;
      *a3 = v30 & 1;
      v15 = 1;
    }
  }

LABEL_31:
  if (*a3)
  {
    v22 = "TRUE";
  }

  else
  {
    v22 = "FALSE";
  }

  BBUFeedback::handleComment(this[1], "Calibration enabled flag: %s", v22);
  if (!v15)
  {
    goto LABEL_51;
  }

  memset(v44, 170, 32);
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  if (DERDecodeSeqInit(&v37, &v44[1], &v44[2]))
  {
    goto LABEL_46;
  }

  v23 = 0;
  while (1)
  {
    v24 = DERDecodeSeqNext(&v44[2], &v42);
    if (v24)
    {
      break;
    }

    if (v42 == 0x80000000000001C2)
    {
      if (v44[0] != 4)
      {
        goto LABEL_46;
      }

      v23 = 0;
      if (*v43)
      {
        if (*v43 != 1)
        {
          goto LABEL_46;
        }

        v23 = 1;
      }
    }
  }

  if (v24 != 1)
  {
LABEL_46:
    *a4 = 0;
    v25 = &unk_1ED949000;
LABEL_47:
    if (gBBULogMaskGet(void)::once == -1)
    {
      v26 = v25[397];
      v16 = 117;
      if ((*v26 & 8) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v33 = v25[397];
      v16 = 117;
      if ((*v33 & 8) == 0)
      {
        goto LABEL_51;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v27 = (**this)(this);
      _BBULog(3, 0, v27, "", "RootManifest decode error during FATPCalibEnable FDR data parsing\n");
    }

    goto LABEL_51;
  }

  *a4 = v23 & 1;
  v25 = &unk_1ED949000;
  if (v17)
  {
    goto LABEL_47;
  }

  v16 = 0;
LABEL_51:
  if (*a4)
  {
    v28 = "TRUE";
  }

  else
  {
    v28 = "FALSE";
  }

  BBUFeedback::handleComment(this[1], "FATPCalibration enabled flag: %s", v28);
  free(v9);
  return v16;
}

uint64_t __cxx_global_var_init_40()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

int8x16_t *unzOpen2(uint64_t a1, _OWORD *a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[19] = v3;
  __src[20] = v3;
  __src[17] = v3;
  __src[18] = v3;
  __src[15] = v3;
  __src[16] = v3;
  __src[13] = v3;
  __src[14] = v3;
  __src[11] = v3;
  __src[12] = v3;
  __src[9] = v3;
  __src[10] = v3;
  __src[7] = v3;
  __src[8] = v3;
  __src[5] = v3;
  __src[6] = v3;
  __src[3] = v3;
  __src[4] = v3;
  __src[1] = v3;
  __src[2] = v3;
  __src[0] = v3;
  if (a2)
  {
    v4 = a2[1];
    __src[0] = *a2;
    __src[1] = v4;
    v5 = a2[3];
    __src[2] = a2[2];
    __src[3] = v5;
    result = (*&__src[0])(*(&v5 + 1), a1, 5);
  }

  else
  {
    fill_fopen_filefunc(__src);
    result = (*&__src[0])(*(&__src[3] + 1), a1, 5);
  }

  *&__src[4] = result;
  if (result)
  {
    v7 = result;
    if ((*&__src[2])(*(&__src[3] + 1), result, 0, 2) || ((v10 = (*(&__src[1] + 1))(*(&__src[3] + 1), v7), v11 = v10, v10 >= 0xFFFF) ? (v12 = 0xFFFFLL) : (v12 = v10), (v13 = malloc(0x404uLL)) == 0))
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v14 = v13;
      if (v11 >= 5)
      {
        v15 = 4;
        do
        {
          v16 = v15 + 1024;
          if (v15 + 1024 >= v12)
          {
            v15 = v12;
          }

          else
          {
            v15 += 1024;
          }

          v17 = v15 >= 0x404 ? 1028 : v15;
          if ((*&__src[2])(*(&__src[3] + 1), v7, v11 - v15, 0) || (*(&__src[0] + 1))(*(&__src[3] + 1), v7, v14, v17) != v17)
          {
            break;
          }

          v18 = (v17 - 4);
          v19 = v15 - v11 - v18;
          v20 = v17 - 3;
          v21 = &v14[v18 + 1];
          while (*(v21 - 1) != 80 || *v21 != 75 || v21[1] != 5 || v21[2] != 6)
          {
            ++v19;
            --v21;
            v22 = __OFSUB__(v20--, 1);
            if ((v20 < 0) ^ v22 | (v20 == 0))
            {
              goto LABEL_13;
            }
          }

          if (v19)
          {
            v8 = -v19;
            v9 = 1;
            goto LABEL_31;
          }

LABEL_13:
          ;
        }

        while (v16 < v12);
      }

      v8 = 0;
      v9 = 0;
LABEL_31:
      free(v14);
    }

    v23 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v8, 0);
    v24 = *&__src[4];
    v71[0] = -86;
    if (((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1 || !(*&__src[3])(*(&__src[3] + 1), v24)) && ((v71[0] = -86, (*(&__src[0] + 1))(*(&__src[3] + 1), v24, v71, 1) == 1) || !(*&__src[3])(*(&__src[3] + 1), v24)) && ((v71[0] = -86, (*(&__src[0] + 1))(*(&__src[3] + 1), v24, v71, 1) == 1) || !(*&__src[3])(*(&__src[3] + 1), v24)) && ((v71[0] = -86, (*(&__src[0] + 1))(*(&__src[3] + 1), v24, v71, 1) == 1) || !(*&__src[3])(*(&__src[3] + 1), v24)))
    {
      if (v23)
      {
        v25 = 0;
      }

      else
      {
        v25 = v9;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = -1431655766;
    v27 = 0xFFFFFFAAAAAAAA00;
    v28 = *&__src[4];
    v71[0] = -86;
    if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
    {
      v29 = v71[0];
      v30 = v71[0] << 8;
    }

    else
    {
      v29 = -1431655766;
      v30 = 0xFFFFFFAAAAAAAA00;
      if ((*&__src[3])(*(&__src[3] + 1), v28))
      {
        goto LABEL_50;
      }
    }

    v71[0] = -86;
    if ((*(&__src[0] + 1))(*(&__src[3] + 1), v28, v71, 1) == 1)
    {
      v30 = v71[0] << 8;
LABEL_51:
      v69 = v30 + v29 != 0;
LABEL_52:
      v31 = *&__src[4];
      v71[0] = -86;
      if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
      {
        v32 = v71[0];
        v33 = v71[0] << 8;
      }

      else
      {
        v32 = -1431655766;
        v33 = 0xFFFFFFAAAAAAAA00;
        if ((*&__src[3])(*(&__src[3] + 1), v31))
        {
          goto LABEL_58;
        }
      }

      v71[0] = -86;
      if ((*(&__src[0] + 1))(*(&__src[3] + 1), v31, v71, 1) == 1)
      {
        v33 = v71[0] << 8;
LABEL_59:
        v34 = v33 + v32 != 0;
LABEL_60:
        v35 = *&__src[4];
        v71[0] = -86;
        if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
        {
          v36 = v71[0];
          v37 = v71[0] << 8;
        }

        else
        {
          v36 = -1431655766;
          v37 = 0xFFFFFFAAAAAAAA00;
          if ((*&__src[3])(*(&__src[3] + 1), v35))
          {
            goto LABEL_66;
          }
        }

        v71[0] = -86;
        if ((*(&__src[0] + 1))(*(&__src[3] + 1), v35, v71, 1) == 1)
        {
          v37 = v71[0] << 8;
LABEL_67:
          v38 = v37 + v36;
LABEL_68:
          *(&__src[4] + 1) = v38;
          v39 = *&__src[4];
          v71[0] = -86;
          if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
          {
            v40 = v71[0];
            v41 = v71[0] << 8;
          }

          else
          {
            v40 = -1431655766;
            v41 = 0xFFFFFFAAAAAAAA00;
            if ((*&__src[3])(*(&__src[3] + 1), v39))
            {
              goto LABEL_74;
            }
          }

          v71[0] = -86;
          if ((*(&__src[0] + 1))(*(&__src[3] + 1), v39, v71, 1) == 1)
          {
            v41 = v71[0] << 8;
LABEL_75:
            v42 = v41 + v40;
LABEL_76:
            v43 = -1431655766;
            v44 = *&__src[4];
            v45 = v42 != *(&__src[4] + 1);
            v71[0] = -86;
            if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
            {
              v46 = v71[0];
            }

            else
            {
              v46 = -1431655766;
              if ((*&__src[3])(*(&__src[3] + 1), v44))
              {
                goto LABEL_85;
              }
            }

            v71[0] = -86;
            if ((*(&__src[0] + 1))(*(&__src[3] + 1), v44, v71, 1) == 1)
            {
              v47 = v71[0];
            }

            else
            {
              v47 = v46;
              if ((*&__src[3])(*(&__src[3] + 1), v44))
              {
                goto LABEL_85;
              }
            }

            v71[0] = -86;
            if ((*(&__src[0] + 1))(*(&__src[3] + 1), v44, v71, 1) == 1)
            {
              v48 = v71[0];
              goto LABEL_86;
            }

            v49 = (*&__src[3])(*(&__src[3] + 1), v44);
            v48 = v47;
            if (!v49)
            {
LABEL_86:
              v51 = v8;
              v52 = v48;
              v53 = (v47 << 8) + v46 + (v48 << 16);
              v71[0] = -86;
              if ((*(&__src[0] + 1))(*(&__src[3] + 1), v44, v71, 1) == 1)
              {
                *&__src[8] = v53 + (v71[0] << 24);
                v8 = v51;
              }

              else
              {
                v54 = (*&__src[3])(*(&__src[3] + 1), v44);
                v55 = v53 + (v52 << 24);
                if (v54)
                {
                  v55 = 0;
                }

                *&__src[8] = v55;
                v8 = v51;
                if (v54)
                {
                  v50 = 0;
LABEL_93:
                  v26 = -1431655766;
LABEL_94:
                  v56 = *&__src[4];
                  v71[0] = -86;
                  if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
                  {
                    v43 = v71[0];
                  }

                  else if ((*&__src[3])(*(&__src[3] + 1), v56))
                  {
                    goto LABEL_103;
                  }

                  v71[0] = -86;
                  if ((*(&__src[0] + 1))(*(&__src[3] + 1), v56, v71, 1) == 1)
                  {
                    v57 = v71[0];
                  }

                  else
                  {
                    v57 = v43;
                    if ((*&__src[3])(*(&__src[3] + 1), v56))
                    {
                      goto LABEL_103;
                    }
                  }

                  v71[0] = -86;
                  if ((*(&__src[0] + 1))(*(&__src[3] + 1), v56, v71, 1) == 1)
                  {
                    v58 = v71[0];
LABEL_104:
                    v60 = v8;
                    v61 = v58;
                    v62 = (v57 << 8) + v43 + (v58 << 16);
                    v71[0] = -86;
                    if ((*(&__src[0] + 1))(*(&__src[3] + 1), v56, v71, 1) == 1)
                    {
                      *(&__src[8] + 1) = v62 + (v71[0] << 24);
                      v8 = v60;
                    }

                    else
                    {
                      v63 = (*&__src[3])(*(&__src[3] + 1), v56);
                      v64 = v62 + (v61 << 24);
                      if (v63)
                      {
                        v64 = 0;
                      }

                      *(&__src[8] + 1) = v64;
                      v8 = v60;
                      if (v63)
                      {
                        v50 = 0;
                      }
                    }

                    v26 = -1431655766;
LABEL_111:
                    v65 = *&__src[4];
                    v71[0] = -86;
                    if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v71, 1) == 1)
                    {
                      v26 = v71[0];
                      v27 = v71[0] << 8;
                    }

                    else if ((*&__src[3])(*(&__src[3] + 1), v65))
                    {
                      goto LABEL_117;
                    }

                    v71[0] = -86;
                    if ((*(&__src[0] + 1))(*(&__src[3] + 1), v65, v71, 1) == 1)
                    {
                      v27 = v71[0] << 8;
                      goto LABEL_118;
                    }

                    if (!(*&__src[3])(*(&__src[3] + 1), v65))
                    {
LABEL_118:
                      *&__src[5] = v27 + v26;
                      if (((v8 >= *&__src[8] + *(&__src[8] + 1)) & v50) != 0)
                      {
                        *(&__src[5] + 1) = v8 - (*&__src[8] + *(&__src[8] + 1));
                        *(&__src[7] + 1) = v8;
                        *&__src[18] = 0;
                        DWORD2(__src[18]) = 0;
                        v66 = malloc(0x150uLL);
                        memcpy(v66, __src, 0x150uLL);
                        v67 = v66[8].i64[1];
                        v66[6].i64[0] = 0;
                        v66[6].i64[1] = v67;
                        CurrentFileInfoInternal = unzlocal_GetCurrentFileInfoInternal(v66, v66 + 9, &v66[17].i64[1], 0, 0, 0, 0, 0, 0);
                        result = v66;
                        v66[7].i64[0] = CurrentFileInfoInternal == 0;
                        return result;
                      }

                      goto LABEL_120;
                    }

LABEL_117:
                    *&__src[5] = 0;
LABEL_120:
                    (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
                    return 0;
                  }

                  v59 = (*&__src[3])(*(&__src[3] + 1), v56);
                  v58 = v57;
                  if (!v59)
                  {
                    goto LABEL_104;
                  }

LABEL_103:
                  v50 = 0;
                  *(&__src[8] + 1) = 0;
                  goto LABEL_111;
                }
              }

              v50 = (!v45 && !v34 && !v69) & v25;
              goto LABEL_93;
            }

LABEL_85:
            v50 = 0;
            *&__src[8] = 0;
            goto LABEL_94;
          }

          if (!(*&__src[3])(*(&__src[3] + 1), v39))
          {
            goto LABEL_75;
          }

LABEL_74:
          v42 = 0;
          v25 = 0;
          goto LABEL_76;
        }

        if (!(*&__src[3])(*(&__src[3] + 1), v35))
        {
          goto LABEL_67;
        }

LABEL_66:
        v38 = 0;
        v25 = 0;
        goto LABEL_68;
      }

      if (!(*&__src[3])(*(&__src[3] + 1), v31))
      {
        goto LABEL_59;
      }

LABEL_58:
      v34 = 0;
      v25 = 0;
      goto LABEL_60;
    }

    if (!(*&__src[3])(*(&__src[3] + 1), v28))
    {
      goto LABEL_51;
    }

LABEL_50:
    v69 = 0;
    v25 = 0;
    goto LABEL_52;
  }

  return result;
}

uint64_t unzlocal_GetCurrentFileInfoInternal(uint64_t a1, int8x16_t *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  if (!a1)
  {
    return 4294967194;
  }

  v127 = -1431655766;
  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 104), 0))
  {
    goto LABEL_3;
  }

  v130[0] = -86;
  v17 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v17, v130, 1) == 1)
  {
    v18 = v130[0];
  }

  else
  {
    v18 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v17))
    {
      goto LABEL_3;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v17, v130, 1) == 1)
  {
    v36 = v130[0];
  }

  else
  {
    v36 = v18;
    if ((*(a1 + 48))(*(a1 + 56), v17))
    {
      goto LABEL_3;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v17, v130, 1) == 1)
  {
    v37 = v130[0];
  }

  else
  {
    v37 = v36;
    if ((*(a1 + 48))(*(a1 + 56), v17))
    {
      goto LABEL_3;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v17, v130, 1) == 1)
  {
    v38 = v130[0];
    goto LABEL_77;
  }

  v47 = (*(a1 + 48))(*(a1 + 56), v17);
  v38 = v37;
  if (v47)
  {
LABEL_3:
    v11 = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

LABEL_77:
  if ((v36 << 8) + v18 + (v37 << 16) + (v38 << 24) == 33639248)
  {
    v11 = 0;
  }

  else
  {
    v11 = 4294967193;
  }

LABEL_4:
  v12 = -1431655766;
  v13 = 0xFFFFFFAAAAAAAA00;
  v130[0] = -86;
  v14 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v14, v130, 1) == 1)
  {
    v15 = v130[0];
    v16 = v130[0] << 8;
  }

  else
  {
    v15 = -1431655766;
    v16 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v14))
    {
      goto LABEL_13;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v14, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v14))
    {
      goto LABEL_14;
    }

LABEL_13:
    v125 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  v16 = v130[0] << 8;
LABEL_14:
  v125 = v16 + v15;
LABEL_15:
  v130[0] = -86;
  v19 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v19, v130, 1) == 1)
  {
    v20 = v130[0];
    v21 = v130[0] << 8;
  }

  else
  {
    v20 = -1431655766;
    v21 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v19))
    {
      goto LABEL_21;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v19, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v19))
    {
      goto LABEL_22;
    }

LABEL_21:
    v124 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v21 = v130[0] << 8;
LABEL_22:
  v124 = v21 + v20;
LABEL_23:
  v130[0] = -86;
  v22 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v22, v130, 1) == 1)
  {
    v23 = v130[0];
    v24 = v130[0] << 8;
  }

  else
  {
    v23 = -1431655766;
    v24 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v22))
    {
      goto LABEL_29;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v22, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v22))
    {
      goto LABEL_30;
    }

LABEL_29:
    v123 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_31;
  }

  v24 = v130[0] << 8;
LABEL_30:
  v123 = v24 + v23;
LABEL_31:
  v130[0] = -86;
  v25 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v25, v130, 1) == 1)
  {
    v26 = v130[0];
    v27 = v130[0] << 8;
  }

  else
  {
    v26 = -1431655766;
    v27 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v25))
    {
      goto LABEL_37;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v25, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v25))
    {
      goto LABEL_38;
    }

LABEL_37:
    v122 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v27 = v130[0] << 8;
LABEL_38:
  v122 = v27 + v26;
LABEL_39:
  v130[0] = -86;
  v28 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v28, v130, 1) == 1)
  {
    v29 = v130[0];
  }

  else
  {
    v29 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v28))
    {
      goto LABEL_54;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v28, v130, 1) == 1)
  {
    v30 = v130[0];
  }

  else
  {
    v30 = v29;
    if ((*(a1 + 48))(*(a1 + 56), v28))
    {
      goto LABEL_54;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v28, v130, 1) == 1)
  {
    v31 = v130[0];
  }

  else
  {
    v32 = (*(a1 + 48))(*(a1 + 56), v28);
    v31 = v30;
    if (v32)
    {
      goto LABEL_54;
    }
  }

  v33 = v31;
  v34 = (v30 << 8) + v29 + (v31 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v28, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v28))
    {
      v35 = v34 + (v33 << 24);
      goto LABEL_62;
    }

LABEL_54:
    v121 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_63;
  }

  v35 = v34 + (v130[0] << 24);
LABEL_62:
  v121 = v35;
LABEL_63:
  v130[0] = -86;
  v39 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v39, v130, 1) == 1)
  {
    v40 = v130[0];
  }

  else
  {
    v40 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v39))
    {
      goto LABEL_75;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v39, v130, 1) == 1)
  {
    v41 = v130[0];
  }

  else
  {
    v41 = v40;
    if ((*(a1 + 48))(*(a1 + 56), v39))
    {
      goto LABEL_75;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v39, v130, 1) == 1)
  {
    v42 = v130[0];
  }

  else
  {
    v43 = (*(a1 + 48))(*(a1 + 56), v39);
    v42 = v41;
    if (v43)
    {
      goto LABEL_75;
    }
  }

  v44 = v42;
  v45 = (v41 << 8) + v40 + (v42 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v39, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v39))
    {
      v46 = v45 + (v44 << 24);
      goto LABEL_81;
    }

LABEL_75:
    v120 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_82;
  }

  v46 = v45 + (v130[0] << 24);
LABEL_81:
  v120 = v46;
LABEL_82:
  v130[0] = -86;
  v48 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v48, v130, 1) == 1)
  {
    v49 = v130[0];
  }

  else
  {
    v49 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v48))
    {
      goto LABEL_94;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v48, v130, 1) == 1)
  {
    v50 = v130[0];
  }

  else
  {
    v50 = v49;
    if ((*(a1 + 48))(*(a1 + 56), v48))
    {
      goto LABEL_94;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v48, v130, 1) == 1)
  {
    v51 = v130[0];
  }

  else
  {
    v52 = (*(a1 + 48))(*(a1 + 56), v48);
    v51 = v50;
    if (v52)
    {
      goto LABEL_94;
    }
  }

  v53 = v51;
  v54 = (v50 << 8) + v49 + (v51 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v48, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v48))
    {
      v55 = v54 + (v53 << 24);
      goto LABEL_96;
    }

LABEL_94:
    v119 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_97;
  }

  v55 = v54 + (v130[0] << 24);
LABEL_96:
  v119 = v55;
LABEL_97:
  v130[0] = -86;
  v56 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v56, v130, 1) == 1)
  {
    v57 = v130[0];
  }

  else
  {
    v57 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v56))
    {
      goto LABEL_109;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v56, v130, 1) == 1)
  {
    v58 = v130[0];
  }

  else
  {
    v58 = v57;
    if ((*(a1 + 48))(*(a1 + 56), v56))
    {
      goto LABEL_109;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v56, v130, 1) == 1)
  {
    v59 = v130[0];
  }

  else
  {
    v60 = (*(a1 + 48))(*(a1 + 56), v56);
    v59 = v58;
    if (v60)
    {
      goto LABEL_109;
    }
  }

  v61 = v59;
  v62 = (v58 << 8) + v57 + (v59 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v56, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v56))
    {
      v63 = v62 + (v61 << 24);
      goto LABEL_111;
    }

LABEL_109:
    v118 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_112;
  }

  v63 = v62 + (v130[0] << 24);
LABEL_111:
  v118 = v63;
LABEL_112:
  v130[0] = -86;
  v64 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v64, v130, 1) == 1)
  {
    v65 = v130[0];
    v66 = v130[0] << 8;
  }

  else
  {
    v65 = -1431655766;
    v66 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v64))
    {
      goto LABEL_118;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v64, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v64))
    {
      goto LABEL_119;
    }

LABEL_118:
    v129 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_120;
  }

  v66 = v130[0] << 8;
LABEL_119:
  v129 = v66 + v65;
LABEL_120:
  v130[0] = -86;
  v67 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v67, v130, 1) == 1)
  {
    v68 = v130[0];
    v69 = v130[0] << 8;
  }

  else
  {
    v68 = -1431655766;
    v69 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v67))
    {
      goto LABEL_126;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v67, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v67))
    {
      goto LABEL_127;
    }

LABEL_126:
    v70 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_128;
  }

  v69 = v130[0] << 8;
LABEL_127:
  v70 = v69 + v68;
LABEL_128:
  v130[0] = -86;
  v71 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v71, v130, 1) == 1)
  {
    v72 = v130[0];
    v73 = v130[0] << 8;
  }

  else
  {
    v72 = -1431655766;
    v73 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v71))
    {
      goto LABEL_134;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v71, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v71))
    {
      goto LABEL_135;
    }

LABEL_134:
    v74 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_136;
  }

  v73 = v130[0] << 8;
LABEL_135:
  v74 = v73 + v72;
LABEL_136:
  v130[0] = -86;
  v75 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v75, v130, 1) == 1)
  {
    v76 = v130[0];
    v77 = v130[0] << 8;
  }

  else
  {
    v76 = -1431655766;
    v77 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v75))
    {
      goto LABEL_142;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v75, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v75))
    {
      goto LABEL_143;
    }

LABEL_142:
    v117 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_144;
  }

  v77 = v130[0] << 8;
LABEL_143:
  v117 = v77 + v76;
LABEL_144:
  v130[0] = -86;
  v78 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v78, v130, 1) == 1)
  {
    v12 = v130[0];
    v13 = v130[0] << 8;
  }

  else if ((*(a1 + 48))(*(a1 + 56), v78))
  {
    goto LABEL_150;
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v78, v130, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v78))
    {
      goto LABEL_151;
    }

LABEL_150:
    v116 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_152;
  }

  v13 = v130[0] << 8;
LABEL_151:
  v116 = v13 + v12;
LABEL_152:
  v130[0] = -86;
  v79 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v79, v130, 1) == 1)
  {
    v80 = v130[0];
  }

  else
  {
    v80 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v79))
    {
      goto LABEL_164;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v79, v130, 1) == 1)
  {
    v81 = v130[0];
  }

  else
  {
    v81 = v80;
    if ((*(a1 + 48))(*(a1 + 56), v79))
    {
      goto LABEL_164;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v79, v130, 1) == 1)
  {
    v82 = v130[0];
    goto LABEL_161;
  }

  v83 = (*(a1 + 48))(*(a1 + 56), v79);
  v82 = v81;
  if (v83)
  {
LABEL_164:
    v86 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_165;
  }

LABEL_161:
  v84 = v82;
  v85 = (v81 << 8) + v80 + (v82 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v79, v130, 1) == 1)
  {
    v86 = v85 + (v130[0] << 24);
    goto LABEL_165;
  }

  if ((*(a1 + 48))(*(a1 + 56), v79))
  {
    goto LABEL_164;
  }

  v86 = v85 + (v84 << 24);
LABEL_165:
  v130[0] = -86;
  v87 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v87, v130, 1) == 1)
  {
    v127 = v130[0];
  }

  else if ((*(a1 + 48))(*(a1 + 56), v87))
  {
    goto LABEL_200;
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v87, v130, 1) == 1)
  {
    v89 = v130[0];
  }

  else
  {
    v89 = v127;
    if ((*(a1 + 48))(*(a1 + 56), v87))
    {
      goto LABEL_200;
    }
  }

  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v87, v130, 1) == 1)
  {
    v90 = v130[0];
  }

  else
  {
    v91 = (*(a1 + 48))(*(a1 + 56), v87);
    v90 = v89;
    if (v91)
    {
      goto LABEL_200;
    }
  }

  v92 = v90;
  v93 = (v89 << 8) + v127 + (v90 << 16);
  v130[0] = -86;
  if ((*(a1 + 8))(*(a1 + 56), v87, v130, 1) == 1)
  {
    v94 = v93 + (v130[0] << 24);
    v95 = a8;
    v96 = a6;
    v98 = a5;
    v97 = a4;
    if (a4)
    {
      goto LABEL_176;
    }

LABEL_225:
    v99 = v129;
    if (v96)
    {
      goto LABEL_186;
    }

LABEL_201:
    v106 = v99 + v70;
    v105 = a3;
    if (!v95)
    {
      goto LABEL_216;
    }

LABEL_202:
    if (v11)
    {
      goto LABEL_216;
    }

    v107 = a9;
    if (v74 < a9)
    {
      *(v95 + v74) = 0;
      v107 = v74;
    }

    if (v106)
    {
      v108 = (*(a1 + 32))(*(a1 + 56), *(a1 + 64), v106, 1);
      v95 = a8;
      if (v108)
      {
        v11 = 0xFFFFFFFFLL;
      }

      else
      {
        v11 = 0;
      }

      if (!a9)
      {
        goto LABEL_216;
      }
    }

    else
    {
      v11 = 0;
      if (!a9)
      {
        goto LABEL_216;
      }
    }

    if (v74)
    {
      if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v95, v107) == v107)
      {
        v11 = v11;
      }

      else
      {
        v11 = 0xFFFFFFFFLL;
      }
    }

    goto LABEL_216;
  }

  if ((*(a1 + 48))(*(a1 + 56), v87))
  {
LABEL_200:
    v94 = 0;
    v11 = 0xFFFFFFFFLL;
    v95 = a8;
    v99 = v129;
    goto LABEL_201;
  }

  v94 = v93 + (v92 << 24);
  v95 = a8;
  v96 = a6;
  v98 = a5;
  v97 = a4;
  if (!a4)
  {
    goto LABEL_225;
  }

LABEL_176:
  v99 = v129;
  if (!v11)
  {
    v100 = v98;
    if (v129 < v98)
    {
      v100 = v129;
      *(v97 + v129) = 0;
    }

    v11 = 0;
    if (v98 && v129)
    {
      v101 = (*(a1 + 8))(*(a1 + 56), *(a1 + 64));
      v95 = a8;
      if (v101 == v100)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0xFFFFFFFFLL;
      }
    }

    v99 = v129 - v100;
  }

  if (!v96)
  {
    goto LABEL_201;
  }

LABEL_186:
  if (v11)
  {
    goto LABEL_201;
  }

  if (v70 >= a7)
  {
    v102 = a7;
  }

  else
  {
    v102 = v70;
  }

  if (v99)
  {
    v103 = (*(a1 + 32))(*(a1 + 56), *(a1 + 64), v99, 1);
    v95 = a8;
    if (v103)
    {
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
      v11 = 0;
    }

    if (v103)
    {
      v104 = v99;
    }

    else
    {
      v104 = 0;
    }

    v105 = a3;
    if (!a7)
    {
      goto LABEL_232;
    }
  }

  else
  {
    v11 = 0;
    v104 = 0;
    v105 = a3;
    if (!a7)
    {
      goto LABEL_232;
    }
  }

  if (v70)
  {
    v111 = (*(a1 + 8))(*(a1 + 56), *(a1 + 64), a6, v102);
    v95 = a8;
    if (v111 == v102)
    {
      v11 = v11;
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }
  }

LABEL_232:
  v106 = v70 - v102 + v104;
  if (v95)
  {
    goto LABEL_202;
  }

LABEL_216:
  if (a2 && !v11)
  {
    v88.i32[0] = v121;
    v109 = vshlq_u32(vdupq_n_s32(v121), xmmword_1E5394960);
    v109.i32[0] = vshlq_u32(v88, xmmword_1E5394950).u32[0];
    a2->i64[0] = v125;
    a2->i64[1] = v124;
    a2[1].i64[0] = v123;
    a2[1].i64[1] = v122;
    a2[2].i64[0] = v121;
    a2[2].i64[1] = v120;
    a2[3].i64[0] = v119;
    a2[3].i64[1] = v118;
    a2[4].i64[0] = v129;
    a2[4].i64[1] = v70;
    a2[5].i64[0] = v74;
    a2[5].i64[1] = v117;
    a2[6].i64[0] = v116;
    a2[6].i64[1] = v86;
    a2[7] = vandq_s8(v109, xmmword_1E5394970);
    a2[8].i32[0] = ((v121 >> 21) & 0xF) - 1;
    a2[8].i32[1] = (v121 >> 25) + 1980;
  }

  if (v105 && !v11)
  {
    *v105 = v94;
  }

  return v11;
}

uint64_t unzOpenCurrentFile3(uint64_t a1, _DWORD *a2, int *a3, int a4, _BYTE *a5)
{
  v89 = *MEMORY[0x1E69E9840];
  v88 = -1431655766;
  v87 = 0xAAAAAAAAAAAAAAAALL;
  if (!a1 || !*(a1 + 112))
  {
    return 4294967194;
  }

  v8 = *(a1 + 288);
  if (v8)
  {
    if (*v8)
    {
      free(*v8);
    }

    *v8 = 0;
    if (*(v8 + 128))
    {
      inflateEnd((v8 + 8));
    }

    free(v8);
    *(a1 + 288) = 0;
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 280), 0))
  {
    return 4294967193;
  }

  v83 = -1431655766;
  v86 = -86;
  v10 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v10, &v86, 1) == 1)
  {
    v11 = v86;
  }

  else
  {
    v11 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v10))
    {
      goto LABEL_24;
    }
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v10, &v86, 1) == 1)
  {
    v12 = v86;
  }

  else
  {
    v12 = v11;
    if ((*(a1 + 48))(*(a1 + 56), v10))
    {
      goto LABEL_24;
    }
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v10, &v86, 1) == 1)
  {
    v13 = v86;
  }

  else
  {
    v13 = v12;
    if ((*(a1 + 48))(*(a1 + 56), v10))
    {
      goto LABEL_24;
    }
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v10, &v86, 1) == 1)
  {
    v14 = v86;
    goto LABEL_25;
  }

  v15 = (*(a1 + 48))(*(a1 + 56), v10);
  v14 = v13;
  if (!v15)
  {
LABEL_25:
    if ((v12 << 8) + v11 + (v13 << 16) + (v14 << 24) == 67324752)
    {
      v16 = 0;
    }

    else
    {
      v16 = -103;
    }

    goto LABEL_28;
  }

LABEL_24:
  v16 = -1;
LABEL_28:
  v86 = -86;
  v17 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v17, &v86, 1) != 1 && (*(a1 + 48))(*(a1 + 56), v17) || (v86 = -86, (*(a1 + 8))(*(a1 + 56), v17, &v86, 1) != 1) && (*(a1 + 48))(*(a1 + 56), v17))
  {
    v16 = -1;
  }

  v18 = -1431655766;
  v19 = 0xFFFFFFAAAAAAAA00;
  v86 = -86;
  v20 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v20, &v86, 1) == 1)
  {
    v21 = v86;
    v22 = v86 << 8;
  }

  else
  {
    v21 = -1431655766;
    v22 = -1431655936;
    if ((*(a1 + 48))(*(a1 + 56), v20))
    {
      goto LABEL_39;
    }
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v20, &v86, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v20))
    {
      goto LABEL_40;
    }

LABEL_39:
    LOBYTE(v82) = 0;
    v16 = -1;
    goto LABEL_41;
  }

  v22 = 0;
LABEL_40:
  v82 = ((v22 + v21) >> 3) & 1;
LABEL_41:
  v86 = -86;
  v23 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v23, &v86, 1) == 1)
  {
    v24 = v86;
    v25 = v86 << 8;
  }

  else
  {
    v24 = -1431655766;
    v25 = 0xFFFFFFAAAAAAAA00;
    if ((*(a1 + 48))(*(a1 + 56), v23))
    {
      goto LABEL_47;
    }
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v23, &v86, 1) != 1)
  {
    if (!(*(a1 + 48))(*(a1 + 56), v23))
    {
      goto LABEL_48;
    }

LABEL_47:
    v16 = -1;
    goto LABEL_53;
  }

  v25 = v86 << 8;
LABEL_48:
  if (!v16)
  {
    v16 = -103;
    if (v25 + v24 == *(a1 + 168))
    {
      if (((v25 + v24) & 0xFFFFFFFFFFFFFFF7) != 0)
      {
        v16 = -103;
      }

      else
      {
        v16 = 0;
      }
    }
  }

LABEL_53:
  v86 = -86;
  v26 = *(a1 + 64);
  if (((*(a1 + 8))(*(a1 + 56), v26, &v86, 1) == 1 || !(*(a1 + 48))(*(a1 + 56), v26)) && ((v86 = -86, (*(a1 + 8))(*(a1 + 56), v26, &v86, 1) == 1) || !(*(a1 + 48))(*(a1 + 56), v26)) && ((v86 = -86, (*(a1 + 8))(*(a1 + 56), v26, &v86, 1) == 1) || !(*(a1 + 48))(*(a1 + 56), v26)))
  {
    v86 = -86;
    if ((*(a1 + 8))(*(a1 + 56), v26, &v86, 1) != 1 && (*(a1 + 48))(*(a1 + 56), v26))
    {
      v16 = -1;
    }

    v27 = v16 == 0;
  }

  else
  {
    v27 = 0;
  }

  v86 = -86;
  v28 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v28, &v86, 1) == 1)
  {
    v29 = v86;
  }

  else
  {
    v29 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v28))
    {
      goto LABEL_76;
    }
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v28, &v86, 1) == 1)
  {
    v30 = v86;
  }

  else
  {
    v30 = v29;
    if ((*(a1 + 48))(*(a1 + 56), v28))
    {
      goto LABEL_76;
    }
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v28, &v86, 1) == 1)
  {
    v31 = v86;
  }

  else
  {
    v32 = (*(a1 + 48))(*(a1 + 56), v28);
    v31 = v30;
    if (v32)
    {
      goto LABEL_76;
    }
  }

  v33 = v31;
  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v28, &v86, 1) == 1)
  {
    v34 = v86;
    goto LABEL_136;
  }

  if ((*(a1 + 48))(*(a1 + 56), v28))
  {
LABEL_76:
    LOBYTE(v27) = 0;
    goto LABEL_77;
  }

  v34 = v33;
LABEL_136:
  if (v27)
  {
    LOBYTE(v27) = ((v30 << 8) + v29 + (v33 << 16) + (v34 << 24) == *(a1 + 184)) | v82;
  }

LABEL_77:
  v86 = -86;
  v35 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v35, &v86, 1) == 1)
  {
    v36 = v86;
  }

  else
  {
    v36 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v35))
    {
      goto LABEL_92;
    }
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v35, &v86, 1) == 1)
  {
    v37 = v86;
  }

  else
  {
    v37 = v36;
    if ((*(a1 + 48))(*(a1 + 56), v35))
    {
      goto LABEL_92;
    }
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v35, &v86, 1) == 1)
  {
    v38 = v86;
  }

  else
  {
    v39 = (*(a1 + 48))(*(a1 + 56), v35);
    v38 = v37;
    if (v39)
    {
      goto LABEL_92;
    }
  }

  v40 = v38;
  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v35, &v86, 1) == 1)
  {
    v41 = v86;
    if (v27)
    {
LABEL_91:
      v42 = ((v37 << 8) + v36 + (v40 << 16) + (v41 << 24) == *(a1 + 192)) | v82;
      goto LABEL_93;
    }
  }

  else if (!(*(a1 + 48))(*(a1 + 56), v35))
  {
    v41 = v40;
    if (v27)
    {
      goto LABEL_91;
    }
  }

LABEL_92:
  v42 = 0;
LABEL_93:
  v86 = -86;
  v43 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v43, &v86, 1) == 1)
  {
    v44 = v86;
  }

  else
  {
    v44 = -1431655766;
    if ((*(a1 + 48))(*(a1 + 56), v43))
    {
      goto LABEL_108;
    }
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v43, &v86, 1) == 1)
  {
    v45 = v86;
  }

  else
  {
    v45 = v44;
    if ((*(a1 + 48))(*(a1 + 56), v43))
    {
      goto LABEL_108;
    }
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v43, &v86, 1) == 1)
  {
    v46 = v86;
  }

  else
  {
    v47 = (*(a1 + 48))(*(a1 + 56), v43);
    v46 = v45;
    if (v47)
    {
      goto LABEL_108;
    }
  }

  v48 = v46;
  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v43, &v86, 1) == 1)
  {
    v49 = v86;
    if (v42)
    {
LABEL_107:
      v50 = ((v45 << 8) + v44 + (v48 << 16) + (v49 << 24) == *(a1 + 200)) | v82;
      goto LABEL_109;
    }
  }

  else if (!(*(a1 + 48))(*(a1 + 56), v43))
  {
    v49 = v48;
    if (v42)
    {
      goto LABEL_107;
    }
  }

LABEL_108:
  v50 = 0;
LABEL_109:
  v86 = -86;
  v51 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v51, &v86, 1) == 1)
  {
    v18 = v86;
    v19 = v86 << 8;
  }

  else if ((*(a1 + 48))(*(a1 + 56), v51))
  {
    goto LABEL_115;
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v51, &v86, 1) == 1)
  {
    v19 = v86 << 8;
    goto LABEL_116;
  }

  if ((*(a1 + 48))(*(a1 + 56), v51))
  {
LABEL_115:
    v52 = 0;
    goto LABEL_118;
  }

LABEL_116:
  v52 = v19 + v18;
  if (v50)
  {
    v53 = v52 == *(a1 + 208);
    goto LABEL_119;
  }

LABEL_118:
  v53 = 0;
LABEL_119:
  v86 = -86;
  v54 = *(a1 + 64);
  if ((*(a1 + 8))(*(a1 + 56), v54, &v86, 1) == 1)
  {
    v83 = v86;
    v55 = v86 << 8;
  }

  else
  {
    if ((*(a1 + 48))(*(a1 + 56), v54))
    {
      return 4294967193;
    }

    v55 = -1431655936;
  }

  v86 = -86;
  if ((*(a1 + 8))(*(a1 + 56), v54, &v86, 1) == 1)
  {
    v55 = v86 << 8;
    goto LABEL_126;
  }

  if ((*(a1 + 48))(*(a1 + 56), v54))
  {
    return 4294967193;
  }

LABEL_126:
  if (!v53)
  {
    return 4294967193;
  }

  v56 = *(a1 + 280);
  v57 = malloc(0x120uLL);
  if (!v57)
  {
    return 4294967192;
  }

  v58 = v57;
  v59 = malloc(0x4000uLL);
  *v58 = v59;
  *(v58 + 17) = v52 + v56 + 30;
  *(v58 + 36) = v55 + v83;
  *(v58 + 19) = 0;
  *(v58 + 70) = a4;
  if (!v59)
  {
    free(v58);
    return 4294967192;
  }

  *(v58 + 16) = 0;
  if (a2)
  {
    *a2 = *(a1 + 168);
  }

  v60 = a5;
  if (a3)
  {
    *a3 = 6;
    v61 = *(a1 + 160) & 6;
    if (v61 > 3)
    {
      if (v61 == 6)
      {
        v62 = 1;
      }

      else
      {
        v62 = 2;
      }

      goto LABEL_142;
    }

    if (v61)
    {
      v62 = 9;
LABEL_142:
      *a3 = v62;
    }
  }

  v63 = *(a1 + 184);
  *(v58 + 20) = 0;
  *(v58 + 21) = v63;
  v64 = *(a1 + 168);
  *(v58 + 32) = *(a1 + 64);
  *(v58 + 33) = v64;
  v65 = *(a1 + 16);
  *(v58 + 12) = *a1;
  *(v58 + 13) = v65;
  v66 = *(a1 + 48);
  *(v58 + 14) = *(a1 + 32);
  *(v58 + 15) = v66;
  *(v58 + 34) = *(a1 + 88);
  *(v58 + 6) = 0;
  if (!a4 && v64 == 8)
  {
    *(v58 + 1) = 0;
    *(v58 + 4) = 0;
    *(v58 + 10) = 0;
    *(v58 + 11) = 0;
    *(v58 + 9) = 0;
    v67 = inflateInit2_((v58 + 8), -15, "1.2.12", 112);
    if (v67)
    {
      v68 = v67;
      free(v58);
      return v68;
    }

    *(v58 + 16) = 1;
    v56 = *(a1 + 280);
    v60 = a5;
  }

  *(v58 + 11) = *(a1 + 192);
  *(v58 + 15) = v56 + (v55 + v83 + v52) + 30;
  *(v58 + 4) = 0;
  *(a1 + 288) = v58;
  if (!v60)
  {
    return 0;
  }

  v69 = 878082192;
  crc_table = get_crc_table();
  *(a1 + 304) = xmmword_1E5394980;
  *(a1 + 320) = 878082192;
  *(a1 + 328) = crc_table;
  v71 = *a5;
  if (*a5)
  {
    v72 = a5 + 1;
    v73 = 305419896;
    v74 = 591751049;
    do
    {
      v73 = crc_table[v71 ^ v73] ^ (v73 >> 8);
      v74 = 134775813 * (v74 + v73) + 1;
      *(a1 + 304) = v73;
      *(a1 + 312) = v74;
      v69 = crc_table[(v69 ^ BYTE3(v74))] ^ (v69 >> 8);
      *(a1 + 320) = v69;
      v75 = *v72++;
      v71 = v75;
    }

    while (v75);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(*(a1 + 288) + 272) + *(*(a1 + 288) + 120), 0) || (*(a1 + 8))(*(a1 + 56), *(a1 + 64), &v87, 12) < 0xC)
  {
    return 4294967192;
  }

  v76 = 0;
  v78 = *(a1 + 320);
  v77 = *(a1 + 328);
  v79 = *(a1 + 304);
  v80 = *(a1 + 312);
  do
  {
    v81 = *(&v87 + v76) ^ (((v78 & 0xFFFD ^ 3) * (v78 | 2)) >> 8);
    *(&v87 + v76) = v81;
    v79 = *(v77 + 8 * (v81 ^ v79)) ^ (v79 >> 8);
    v80 = 134775813 * (v80 + v79) + 1;
    *(a1 + 304) = v79;
    *(a1 + 312) = v80;
    v78 = *(v77 + 8 * (v78 ^ BYTE3(v80))) ^ (v78 >> 8);
    *(a1 + 320) = v78;
    ++v76;
  }

  while (v76 != 12);
  result = 0;
  *(*(a1 + 288) + 120) += 12;
  *(a1 + 296) = 1;
  return result;
}

uint64_t unzReadCurrentFile(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v4 = *(a1 + 288);
  if (!v4)
  {
    return 4294967194;
  }

  if (!*v4)
  {
    return 4294967196;
  }

  if (!a3)
  {
    return 0;
  }

  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v5 = a3;
  v6 = *(v4 + 184);
  if (v6 < a3 && !*(v4 + 280))
  {
    *(v4 + 40) = v6;
    a3 = v6;
  }

  v7 = *(v4 + 176);
  v8 = *(v4 + 16);
  if (v7 + v8 < v5 && *(v4 + 280))
  {
    a3 = v8 + v7;
    *(v4 + 40) = v8 + v7;
  }

  v9 = 0;
  if (a3)
  {
    do
    {
      while (1)
      {
        LODWORD(v14) = *(v4 + 16);
        if (!v14)
        {
          break;
        }

        if (*(v4 + 264))
        {
          goto LABEL_19;
        }

LABEL_20:
        if (v14 || *(v4 + 176))
        {
          v15 = *(v4 + 40);
          v14 = v15 >= v14 ? v14 : v15;
          if (v14)
          {
            for (i = 0; i != v14; ++i)
            {
              *(*(v4 + 32) + i) = *(*(v4 + 8) + i);
            }

            v11 = v14;
          }

          else
          {
            v11 = 0;
          }

          *(v4 + 160) = crc32(*(v4 + 160), *(v4 + 32), v14);
          *(v4 + 184) -= v11;
          *(v4 + 16) -= v14;
          v12 = *(v4 + 40);
          *(v4 + 32) += v11;
          *(v4 + 8) += v11;
          *(v4 + 48) += v11;
          v9 = (v14 + v9);
          v13 = v12 - v14;
          *(v4 + 40) = v13;
          if (v13)
          {
            continue;
          }
        }

        return v9;
      }

      v17 = *(v4 + 176);
      if (v17)
      {
        if (v17 >= 0x4000)
        {
          v14 = 0x4000;
        }

        else
        {
          v14 = *(v4 + 176);
        }

        if ((*(v4 + 224))(*(v4 + 248), *(v4 + 256), *(v4 + 272) + *(v4 + 120), 0) || (*(v4 + 200))(*(v4 + 248), *(v4 + 256), *v4, v14) != v14)
        {
          return 0xFFFFFFFFLL;
        }

        if (*(a1 + 296))
        {
          v18 = 0;
          do
          {
            v19 = *(a1 + 328);
            v20 = *(*v4 + v18) ^ (((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2u)) >> 8);
            *(*v4 + v18) ^= ((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2)) >> 8;
            v21 = *(v19 + 8 * (v20 ^ *(a1 + 304))) ^ (*(a1 + 304) >> 8);
            v22 = 134775813 * (*(a1 + 312) + v21) + 1;
            *(a1 + 304) = v21;
            *(a1 + 312) = v22;
            *(a1 + 320) = *(v19 + 8 * (*(a1 + 320) ^ BYTE3(v22))) ^ (*(a1 + 320) >> 8);
            *(*v4 + v18++) = v20;
          }

          while (v14 != v18);
        }

        *(v4 + 120) += v14;
        *(v4 + 176) -= v14;
        *(v4 + 8) = *v4;
        *(v4 + 16) = v14;
        if (!*(v4 + 264))
        {
          goto LABEL_20;
        }
      }

      else
      {
        LODWORD(v14) = 0;
        if (!*(v4 + 264))
        {
          goto LABEL_20;
        }
      }

LABEL_19:
      if (*(v4 + 280))
      {
        goto LABEL_20;
      }

      v23 = *(v4 + 48);
      v24 = *(v4 + 32);
      v25 = inflate((v4 + 8), 2);
      if ((v25 & 0x80000000) == 0 && *(v4 + 56))
      {
        v27 = *(v4 + 48);
        v28 = v27 - v23;
        *(v4 + 160) = crc32(*(v4 + 160), v24, v27 - v23);
        *(v4 + 184) -= v28;
        return 4294967293;
      }

      v26 = *(v4 + 48) - v23;
      *(v4 + 160) = crc32(*(v4 + 160), v24, v26);
      *(v4 + 184) -= v26;
      v9 = (v9 + v26);
      if (v25)
      {
        if (v25 == 1)
        {
          return v9;
        }

        else
        {
          return v25;
        }
      }
    }

    while (*(v4 + 40));
  }

  return v9;
}

uint64_t BBUEUR20Loader::connect(uint64_t a1)
{
  BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Connecting to Loader");
  (*(**(a1 + 8) + 24))(*(a1 + 8), 0);
  return 0;
}

uint64_t BBUEUR20Loader::getVersion(uint64_t a1, uint64_t a2, void *a3)
{
  BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Getting Version");
  if (!a3)
  {
    v8 = 2;
    goto LABEL_22;
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[7] = v5;
  v24[8] = v5;
  v24[5] = v5;
  v24[6] = v5;
  v24[3] = v5;
  v24[4] = v5;
  v24[1] = v5;
  v24[2] = v5;
  v23 = v5;
  v24[0] = v5;
  *__p = v5;
  v22 = v5;
  v19 = v5;
  v20 = v5;
  v17 = v5;
  v18 = v5;
  v16 = v5;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v16);
  MEMORY[0x1E69270E0](&v17, *(a1 + 64));
  if ((BYTE8(v23) & 0x10) != 0)
  {
    v9 = v23;
    if (v23 < *(&v20 + 1))
    {
      *&v23 = *(&v20 + 1);
      v9 = *(&v20 + 1);
    }

    v10 = v20;
    v6 = v9 - v20;
    if ((v9 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if ((BYTE8(v23) & 8) == 0)
    {
      v6 = 0;
      HIBYTE(v15) = 0;
      v7 = __dst;
      goto LABEL_17;
    }

    v10 = *(&v18 + 1);
    v6 = *(&v19 + 1) - *(&v18 + 1);
    if (*(&v19 + 1) - *(&v18 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_24:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v6 | 7) + 1;
    }

    v7 = operator new(v11);
    __dst[1] = v6;
    v15 = v11 | 0x8000000000000000;
    __dst[0] = v7;
  }

  else
  {
    HIBYTE(v15) = v6;
    v7 = __dst;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  memmove(v7, v10, v6);
LABEL_17:
  *(v7 + v6) = 0;
  *a3 = BBULoaderVersion::createFromVersionString(__dst);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v16 = *MEMORY[0x1E69E54D8];
  v12 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v17 = v12;
  *(&v17 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v17 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  MEMORY[0x1E69273B0](v24);
  v8 = 0;
LABEL_22:
  (*(**(a1 + 8) + 24))(*(a1 + 8), v8);
  return v8;
}

void sub_1E535CCBC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a13, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E69273B0](va);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR20Loader::queryChipInfo(BBUFeedback **a1, uint64_t a2, void *a3)
{
  v6 = operator new(0x60uLL);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  v36 = 0;
  v7 = *(a2 + 40);
  if (!v7 || !v7(a2, 4, v6, 96, &v36, 0))
  {
    BBUFeedback::handleComment(a1[1], "Failed to get chip info: Failed to read pk hash");
LABEL_10:
    BBUFeedback::handleComment(a1[1], "failed to read MSMHWID");
    goto LABEL_11;
  }

  v8 = (*(*a1 + 9))(a1);
  v9 = operator new(0x10uLL);
  *v9 = &unk_1F5F04C88;
  v9[1] = 0;
  v9[1] = CFDataCreate(*MEMORY[0x1E695E480], v6, v8);
  (*(*a3 + 24))(a3, v9);
  v10 = (*(*a1 + 10))(a1);
  v11 = (*(*a1 + 9))(a1);
  if (!memcmp(v10, v6, v11))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v26 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v26, "", "Detect as unfused BB\n");
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v12 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v12 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v13 = (*(*a1 + 8))(a1);
      _BBULog(9, 1, v13, "", "Detect as fused BB\n");
    }
  }

LABEL_41:
  *(a3 + 22) = v12;
  v27 = *(a2 + 40);
  if (!v27 || !v27(a2, 3, v6, 24, &v36, 0))
  {
    goto LABEL_10;
  }

  v28 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(*(v6 + 1));
  v29 = a3[2];
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  a3[2] = v28;
  v30 = *(a2 + 40);
  if (!v30 || !v30(a2, 0, v6, 4, &v36, 0))
  {
LABEL_11:
    BBUFeedback::handleComment(a1[1], "failed to read MSMHWID");
    v14 = 98;
    v15 = -559030611;
    v16 = a1[1];
    v17 = a3[2];
    v18 = -559030611;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v31 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(v6, 0x20);
  (*(*a3 + 16))(a3, v31);
  v14 = 0;
  v15 = -559030611;
  v16 = a1[1];
  v17 = a3[2];
  v18 = -559030611;
  if (v17)
  {
LABEL_12:
    v18 = (*(*v17 + 24))(v17);
  }

LABEL_13:
  v19 = a3[4];
  if (!v19)
  {
    v21 = "failed";
    v22 = a3[5];
    if (v22)
    {
      goto LABEL_22;
    }

LABEL_27:
    v23 = "failed";
    v24 = a3[3];
    if (!v24)
    {
      goto LABEL_29;
    }

LABEL_28:
    v15 = (*(*v24 + 24))(v24);
    goto LABEL_29;
  }

  v20 = v34;
  (*(*v19 + 24))(v34, a3[4]);
  if (v35 < 0)
  {
    v20 = v34[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_18;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_18:
  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS))
  {
    v21 = v20;
  }

  else
  {
    v21 = "<< SNUM >>";
  }

  v22 = a3[5];
  if (!v22)
  {
    goto LABEL_27;
  }

LABEL_22:
  v23 = __p;
  (*(*v22 + 24))(__p, v22);
  if (v33 < 0)
  {
    v23 = __p[0];
  }

  v24 = a3[3];
  if (v24)
  {
    goto LABEL_28;
  }

LABEL_29:
  BBUFeedback::handleComment(v16, "CHIPID=0x%x SNUM=0x%s, PKHASH=0x%s CERTID=0x%x\n", v18, v21, v23, v15);
  if (v22 && v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 && v35 < 0)
  {
    operator delete(v34[0]);
  }

  operator delete(v6);
  return v14;
}

void sub_1E535D320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v26)
  {
    if (a25 < 0)
    {
      operator delete(__p);
      operator delete(v25);
      _Unwind_Resume(a1);
    }
  }

  operator delete(v25);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR20Loader::load(BBUFeedback **a1, void *a2, BBUDataSource *a3, char a4)
{
  BBUFeedback::handleComment(a1[1], "Loading second stage bootloader");
  if (a2 && a3)
  {
    v30 = -1;
    v31 = 0;
    BBUDataSource::createData(&cf, a3);
    v8 = cf;
    v9 = (*(*a3 + 32))(a3);
    v10 = operator new(0x18uLL);
    v10[4] = v9;
    *v10 = &unk_1F5F04B00;
    *(v10 + 1) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v11 = operator new(0x58uLL);
    BBUEURMIImage::BBUEURMIImage(v11, v10, 0);
    *v11 = &unk_1F5F01210;
    *(v11 + 8) = 0;
    v12 = v11 + 32;
    *(v11 + 9) = 0;
    *(v11 + 10) = 0;
    if (a4)
    {
      *(v11 + 66) = 76;
      *v12 = 16979;
      *(v11 + 87) = 3;
      v13 = *(v11 + 8);
      v14 = (v13 + 40);
      if (v13 != -40)
      {
LABEL_9:
        v15 = operator new(v14);
        bzero(v15, v14);
        goto LABEL_16;
      }
    }

    else
    {
      v11[36] = 19522;
      *v12 = *"restoreSBL";
      *(v11 + 87) = 10;
      v18 = *(v11 + 8);
      v14 = (v18 + 40);
      if (v18 != -40)
      {
        goto LABEL_9;
      }
    }

    v15 = 0;
LABEL_16:
    BBUEURMIImage::getWritePayloadData(v11, v15, v14, 0);
    (*(*v11 + 16))(v11);
    v19 = a2[4];
    if (v19)
    {
      v20 = v19(a2, v15, v14, &v31, 10000, &v30, 0);
      if (gBBULogMaskGet(void)::once == -1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v20 = 0;
      if (gBBULogMaskGet(void)::once == -1)
      {
LABEL_18:
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
        {
          goto LABEL_23;
        }

LABEL_19:
        if (gBBULogVerbosity >= 1)
        {
          v21 = (*(*a1 + 8))(a1);
          v22 = "failure";
          if (v20)
          {
            v22 = "success";
          }

          _BBULog(9, 1, v21, "", "SendImage returned %s, amountWritten = %u, errorCode = %#x\n", v22, v31, v30);
        }

LABEL_23:
        if (v20)
        {
          v23 = gBBULogMaskGet(void)::once;
          if (v31 == v14 && !v30)
          {
            if (gBBULogMaskGet(void)::once == -1)
            {
              v16 = 0;
              if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) != 0)
              {
                goto LABEL_28;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              v16 = 0;
              if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) != 0)
              {
LABEL_28:
                if (gBBULogVerbosity >= 1)
                {
                  v24 = (*(*a1 + 8))(a1);
                  v25 = (*(*v11 + 16))(v11);
                  _BBULog(9, 1, v24, "", "Sent %s successfully!\n", v25);
                  v16 = 0;
                }
              }
            }

LABEL_35:
            if (v15)
            {
              operator delete(v15);
            }

            (*(*v11 + 8))(v11);
            return v16;
          }
        }

        else
        {
          v23 = gBBULogMaskGet(void)::once;
        }

        if (v23 == -1)
        {
          v16 = 3;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v16 = 3;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
          {
            goto LABEL_35;
          }
        }

        if (gBBULogVerbosity >= 1)
        {
          v26 = (*(*a1 + 8))(a1);
          v27 = (*(*v11 + 16))(v11);
          _BBULog(9, 1, v26, "", "Fail to send %s !\n", v27);
        }

        goto LABEL_35;
      }
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v16 = 2;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      return v16;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v16 = 2;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
    {
      return v16;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    v17 = (*(*a1 + 8))(a1);
    _BBULog(9, 1, v17, "", "invalid arguments transport:  %p, updateSource: %p\n", a2, a3);
  }

  return v16;
}

void BBUPartitionManager::BBUPartitionManager(BBUPartitionManager *this)
{
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v3 = *(this + 1);
  v4 = (this + 8);
  v5 = (this + 8);
  if (v3)
  {
    while (1)
    {
      while (1)
      {
        v5 = v3;
        v6 = *(v3 + 32);
        if (v6 < 1)
        {
          break;
        }

        v3 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      v3 = v5[1];
      if (!v3)
      {
        v4 = v5 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v7 = operator new(0x40uLL);
    v7[8] = 0;
    *(v7 + 5) = 0;
    v7[14] = *v22;
    *(v7 + 59) = *&v22[3];
    *(v7 + 63) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v5;
    *v4 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
  }

  v9 = *v2;
  v10 = v2;
  v11 = v2;
  if (*v2)
  {
    while (1)
    {
      while (1)
      {
        v11 = v9;
        v12 = *(v9 + 32);
        if (v12 <= 1)
        {
          break;
        }

        v9 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_18;
        }
      }

      if (v12 == 1)
      {
        break;
      }

      v9 = v11[1];
      if (!v9)
      {
        v10 = v11 + 1;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v13 = operator new(0x40uLL);
    v13[8] = 1;
    *(v13 + 5) = 0;
    v13[14] = *v21;
    *(v13 + 59) = *&v21[3];
    *(v13 + 63) = 0;
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 2) = v11;
    *v10 = v13;
    v14 = **this;
    if (v14)
    {
      *this = v14;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v13);
    ++*(this + 2);
  }

  v15 = *v2;
  v16 = v2;
  if (*v2)
  {
    while (1)
    {
      while (1)
      {
        v16 = v15;
        v17 = *(v15 + 32);
        if (v17 <= 2)
        {
          break;
        }

        v15 = *v16;
        v2 = v16;
        if (!*v16)
        {
          goto LABEL_28;
        }
      }

      if (v17 == 2)
      {
        break;
      }

      v15 = v16[1];
      if (!v15)
      {
        v2 = v16 + 1;
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    v18 = operator new(0x40uLL);
    v18[8] = 2;
    *(v18 + 5) = 0;
    v18[14] = *v20;
    *(v18 + 59) = *&v20[3];
    *(v18 + 63) = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v16;
    *v2 = v18;
    v19 = **this;
    if (v19)
    {
      *this = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v18);
    ++*(this + 2);
  }
}

void BBUPartitionManager::getBBUFSPath(BBUPartitionManager *this@<X0>, std::string *a2@<X8>)
{
  {
    BBUPartitionManager::getPartitionRoot(this, 2, &v6);
    v3 = std::string::append(&v6, "/bbfs/", 6uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    unk_1ECFD5860 = *(&v3->__r_.__value_.__l + 2);
    BBUPartitionManager::getBBUFSPath(void)const::kBBUFSPath = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  if (byte_1ECFD5867 < 0)
  {
    std::string::__init_copy_ctor_external(a2, BBUPartitionManager::getBBUFSPath(void)const::kBBUFSPath, *(&BBUPartitionManager::getBBUFSPath(void)const::kBBUFSPath + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = BBUPartitionManager::getBBUFSPath(void)const::kBBUFSPath;
    a2->__r_.__value_.__r.__words[2] = unk_1ECFD5860;
  }
}

void sub_1E535DCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void BBUPartitionManager::getPartitionRoot(uint64_t a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_7:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v4 = *(v3 + 8);
      if (v4 <= a2)
      {
        break;
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      break;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*(v3 + 63) < 0)
  {
    v6 = v3[5];
    v7 = v3[6];

    std::string::__init_copy_ctor_external(a3, v6, v7);
  }

  else
  {
    v5 = *(v3 + 5);
    a3->__r_.__value_.__r.__words[2] = v3[7];
    *&a3->__r_.__value_.__l.__data_ = v5;
  }
}

void BBUPartitionManager::getBBUFDRCacheLocation(uint64_t *__return_ptr a1@<X8>, BBUPartitionManager *this@<X0>)
{
  memset(&v17, 0, sizeof(v17));
  ctu::cf::assign();
  v14 = 0uLL;
  LOWORD(v14) = 47;
  *__p = v14;
  v16 = 0x100000000000000;
  v4 = *(this + 1);
  memset(&v17, 170, sizeof(v17));
  if (!v4)
  {
LABEL_7:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v5 = *(v4 + 8);
      if (v5 < 1)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

    v4 = v4[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (*(v4 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v4[5], v4[6]);
  }

  else
  {
    v17 = *(v4 + 5);
  }

  v6 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  if (v16 >= 0)
  {
    v8 = HIBYTE(v16);
  }

  else
  {
    v8 = __p[1];
  }

  v9 = v8 + size;
  if (v8 + size > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 <= 0x16)
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    *(a1 + 23) = v9;
    if (!size)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if ((v9 | 7) == 0x17)
  {
    v10 = 25;
  }

  else
  {
    v10 = (v9 | 7) + 1;
  }

  v11 = operator new(v10);
  a1[1] = v9;
  a1[2] = v10 | 0x8000000000000000;
  *a1 = v11;
  a1 = v11;
  if (size)
  {
LABEL_25:
    if (v6 >= 0)
    {
      v12 = &v17;
    }

    else
    {
      v12 = v17.__r_.__value_.__r.__words[0];
    }

    memmove(a1, v12, size);
  }

LABEL_29:
  v13 = a1 + size;
  if (v8)
  {
    memmove(v13, __p, v8);
  }

  v13[v8] = 0;
  if (v6 < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1E535E0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<BBUPartitionManager *,std::shared_ptr<BBUPartitionManager>::__shared_ptr_default_delete<BBUPartitionManager,BBUPartitionManager>,std::allocator<BBUPartitionManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<BBUPartitionManager *,std::shared_ptr<BBUPartitionManager>::__shared_ptr_default_delete<BBUPartitionManager,BBUPartitionManager>,std::allocator<BBUPartitionManager>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(*(a1 + 24), v1[1]);

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<BBUPartitionManager *,std::shared_ptr<BBUPartitionManager>::__shared_ptr_default_delete<BBUPartitionManager,BBUPartitionManager>,std::allocator<BBUPartitionManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5394A55)
  {
    if (((v2 & 0x80000001E5394A55 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5394A55))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5394A55 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

char ***std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100](char ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v1, v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void BBUICENVMImage::BBUICENVMImage(BBUICENVMImage *this, BBUDataSource *a2, const char *__s, int a4)
{
  *this = &unk_1F5F05A50;
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

void sub_1E535E350(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void BBUICENVMImage::~BBUICENVMImage(BBUICENVMImage *this)
{
  *this = &unk_1F5F05A50;
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
  *this = &unk_1F5F05A50;
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

void *BBUICENVMImage::getWritePayloadData(BBUICENVMImage *this, unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  result = (*(*this + 32))(this);
  if (result + 8 <= a4)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 83, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICENVMImage.cpp", 0x1Eu, "Assertion failure((offset < (getWritePayloadLength() + kBinHeaderSize)) && Chunk size is not sufficient to write payload data of the NVM image!)");
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
      _BBUException::_BBUException(exception, 83, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICENVMImage.cpp", 0x2Eu, "Assertion failure((ret == kBBUReturnSuccess) && Failed to copy NVM image payload data to buffer!)");
    }

    else
    {
      if (v11 == a3)
      {
        return result;
      }

      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 83, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/ICE/BBUICENVMImage.cpp", 0x2Fu, "Assertion failure((amountCopied == amount) && Copied data size mismatch: Failed to copy NVM image payload data to buffer!)");
    }

LABEL_14:
  }

  return result;
}

uint64_t BBUICENVMImage::getName(BBUICENVMImage *this)
{
  result = this + 16;
  if (*(this + 39) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t BBUICENVMImage::getWritePayloadLength(BBUICENVMImage *this)
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

void BBUICENVMImage::generateHash(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(result + 48);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

uint64_t BBUICENVMImage::generateBinHeader(BBUICENVMImage *this)
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

BBUDataSource *BBUDataSource::createFromEurekaMIFile(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

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
    *&__dst[8] = v7;
    *&__dst[16] = v9 | 0x8000000000000000;
    *__dst = v8;
    goto LABEL_12;
  }

  __dst[23] = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_12:
    memmove(v8, v5, v7);
  }

  v8[v7] = 0;
  v10 = operator new(0x30uLL);
  *v10 = &unk_1F5F00F28;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  if (BBUFileDataSource::init(v10, __dst, a2))
  {
    (*(*v10 + 8))(v10);
    v10 = 0;
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if (!v10)
    {
      return v10;
    }
  }

  else if (!v10)
  {
    return v10;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v19 = Mutable;
  v18 = 0;
  memset(&__dst[4], 0, 32);
  *&__dst[20] = (*(*v10 + 24))(v10);
  *&__dst[16] = (*(*v10 + 24))(v10);
  *__dst = a3;
  CFDataAppendBytes(Mutable, __dst, 40);
  theData = 0xAAAAAAAAAAAAAAAALL;
  BBUDataSource::createData(&theData, v10);
  v12 = theData;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v12);
  CFDataAppendBytes(Mutable, BytePtr, Length);
  (*(*v10 + 8))(v10);
  v10 = operator new(0x18uLL);
  *(v10 + 4) = 0;
  *v10 = &unk_1F5F04B00;
  *(v10 + 1) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

void BBUDataSource::createData(CFDataRef *__return_ptr a1@<X8>, BBUDataSource *this@<X0>)
{
  v4 = (*(*this + 24))(this);
  if (v4)
  {
    v5 = v4;
    v6 = operator new(v4);
    v7 = &v6[v5];
    bzero(v6, v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v11 = -1431655766;
  (*(*this + 16))(this, v6, v7 - v6, &v11, 0);
  if (v11 != v7 - v6)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUDataSource.cpp", 0xD9u, "Assertion failure(copied == dataSize)");
  }

  v8 = CFDataCreate(*MEMORY[0x1E695E480], v6, (v7 - v6));
  if (!v8)
  {
    v10 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v10, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUDataSource.cpp", 0xDCu, "Assertion failure(success)");
  }

  *a1 = v8;
  if (v6)
  {
    operator delete(v6);
  }
}

void sub_1E535EBF8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}