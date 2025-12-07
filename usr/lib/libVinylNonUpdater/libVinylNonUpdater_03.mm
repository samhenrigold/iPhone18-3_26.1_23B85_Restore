uint64_t _BBUException::_BBUException(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, ctu::LogMessageBuffer *a5, ...)
{
  va_start(va, a5);
  *a1 = &unk_2A1EB3AB0;
  *(a1 + 520) = a2;
  _BBUException::constructCommon(a1, a2, a3, a4, a5, va);
  return a1;
}

void _BBUException::~_BBUException(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

void _BBUException::_BBUException(_BBUException *this, const _BBUException *a2)
{
  *this = &unk_2A1EB3AB0;
  strncpy(this + 8, a2 + 8, 0x200uLL);
  *(this + 130) = *(a2 + 130);
}

ctu::llvm::StringRef *ctu::llvm::StringRef::StringRef(ctu::llvm::StringRef *this, const char *__s)
{
  *this = __s;
  if (!__s)
  {
    ctu::llvm::StringRef::StringRef();
  }

  *(this + 1) = strlen(__s);
  return this;
}

uint64_t VinyleUICCPerformOperationWithTransportAndLogSync(uint64_t a1, eUICC::Pairing *a2, const __CFDictionary *a3, int a4, uint64_t a5, uint64_t (*a6)(void, const char *, ...))
{
  v11 = VinylLogRegisterSync(a6);
  gBBULogMaskGet(v11, v12);
  _BBULog(0, 0xFFFFFFFFLL, "VinylNonUpdate", "", "Vinyl Operation: %d, lastOperation: %d\n", a1, a4);
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v13 = xmmword_2A13A8CA0;
  if (!xmmword_2A13A8CA0)
  {
    BBUCapabilities::create_default_global(&v30);
    v14 = v30;
    v30 = 0uLL;
    v15 = *(&xmmword_2A13A8CA0 + 1);
    xmmword_2A13A8CA0 = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      if (*(&v30 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
      }
    }

    v13 = xmmword_2A13A8CA0;
  }

  v16 = *(&xmmword_2A13A8CA0 + 1);
  if (*(&xmmword_2A13A8CA0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v17 = BBUCapabilities::supportsVinylRestore(v13);
  v19 = v17;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if ((v19 & 1) == 0)
  {
    gBBULogMaskGet(v17, v18);
    _BBULog(0, 0xFFFFFFFFLL, "VinylNonUpdate", "", "unsupported device\n");
    v22 = 0;
LABEL_25:
    VinylLogRegisterSync(v22);
    return 0;
  }

  if (a3)
  {
    ctu::cf::dict_adapter::dict_adapter(&v30, a3);
    Bool = ctu::cf::map_adapter::getBool(&v30, @"UpdateBaseband");
    if ((Bool & 1) == 0)
    {
      gBBULogMaskGet(Bool, v21);
      _BBULog(0, 0xFFFFFFFFLL, "VinylNonUpdate", "", "updateBaseband false\n");
      VinylLogRegisterSync(0);
      MEMORY[0x29C286020](&v30);
      return 0;
    }

    MEMORY[0x29C286020](&v30);
  }

  if (a1 < 9)
  {
    v22 = VinylController::create(a5, 1);
    if (v22)
    {
      v23 = v22;
      updated = VinylController::performNonUpdateOperation(v22, a1, a2, a3);
      v26 = updated;
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  updated = VinyleUICCPerformOperationWithTransportAndLogSync_cold_1(a1, &v31, &v30);
  v26 = v31;
  v23 = v30;
LABEL_17:
  if (a4 == 1)
  {
    updated = VinylControllerObjDestroy(v23);
  }

  if (!v26 || v26 == 9)
  {
    goto LABEL_36;
  }

  if (v26 != 107)
  {
    goto LABEL_32;
  }

  ctu::cf::dict_adapter::dict_adapter(&v30, a3);
  v27 = ctu::cf::map_adapter::getBool(&v30, @"BasebandEnableProvisioning");
  if (!ctu::cf::map_adapter::getBool(&v30, @"VinylSkipProvisioning"))
  {
    if (a5 && TelephonyRadiosGetRadioVendor() == 1)
    {
      updated = MEMORY[0x29C286020](&v30);
    }

    else
    {
      updated = MEMORY[0x29C286020](&v30);
      if ((v27 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_32:
    gBBULogMaskGet(updated, v25);
    v29 = _BBULog(0, 0xFFFFFFFFLL, "VinylNonUpdate", "", "something is wrong.. : %d\n", v26);
    if (!a5)
    {
      if (BBUpdaterCommon::inRestoreOS(v29))
      {
        BBUpdaterCommon::collectCoreDump(a2, 0, 0, v26 == 14);
      }
    }

    goto LABEL_36;
  }

  updated = MEMORY[0x29C286020](&v30);
LABEL_35:
  gBBULogMaskGet(updated, v25);
  _BBULog(0, 0xFFFFFFFFLL, "VinylNonUpdate", "", "Failed to GetEID but it is fine because BB Provisioning not enabled or it is enabled but Vinyl Provisioning Skipped\n");
  v26 = 0;
LABEL_36:
  VinylLogRegisterSync(0);
  return VinylControllerMapBBUReturnToVinylResult(v26);
}

void sub_298296F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x29C286020](va, a2, a3);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_6()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_29826A000);
  }

  return result;
}

void CFOBJ_STR(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@", *a1);
  ctu::cf::assign();
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_298297040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t VinylControllerMapBBUReturnToVinylResult(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      return result;
    case 4:
    case 12:
      goto LABEL_4;
    case 5:
      result = 4;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 6;
      break;
    case 8:
      result = 7;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 9;
      break;
    case 11:
      result = 10;
      break;
    case 13:
      result = 11;
      break;
    case 14:
      result = 12;
      break;
    case 15:
      result = 13;
      break;
    case 16:
      result = 14;
      break;
    case 17:
      result = 15;
      break;
    case 18:
      result = 16;
      break;
    case 19:
      result = 17;
      break;
    case 20:
      result = 18;
      break;
    case 21:
      result = 19;
      break;
    case 22:
      result = 20;
      break;
    case 23:
      result = 21;
      break;
    case 24:
      result = 22;
      break;
    case 25:
      result = 23;
      break;
    case 26:
      result = 24;
      break;
    case 27:
      result = 25;
      break;
    default:
      if (result == 107)
      {
        result = 26;
      }

      else
      {
LABEL_4:
        result = 1;
      }

      break;
  }

  return result;
}

uint64_t eUICC::TwoPhaseProv::ComposeGps(BBUpdaterCommon *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = bswap64(BBUpdaterCommon::getECID(a1));
  v11[0] = &v12;
  v11[1] = 8;
  length = 16;
  v2 = DEREncodeSequenceFromObject(0xE00000000000002DLL, v11, 0x10uLL, 1, &eUICC::TwoPhaseProv::getProvSessReqSpec, bytes, 0x10uLL, &length);
  if (v2)
  {
    gBBULogMaskGet(v2, v3);
    v4 = 58;
    v5 = "DR_Success == enc_ret";
LABEL_3:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v5, "", "", v4);
    return 17;
  }

  v9 = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, length);
  v7 = ctu::cf::CFSharedRef<__CFData const>::operator=(a1, &v9);
  if (!*a1)
  {
    gBBULogMaskGet(v7, v8);
    v4 = 60;
    v5 = "gps_req.get()";
    goto LABEL_3;
  }

  return 0;
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t eUICC::TwoPhaseProv::ConvertGpsToGbpp(uint64_t *a1, const void **a2)
{
  v12[9] = *MEMORY[0x29EDCA608];
  v11[1] = @"APIVersion";
  v12[0] = @"1";
  v3 = *a1;
  v12[1] = @"BPPRequestData";
  v12[2] = v3;
  v12[3] = @"Command";
  v12[4] = @"GetBpp";
  v12[5] = @"ResponseDataFlag";
  v12[6] = @"NEW_BPP";
  v12[7] = @"HardwareType";
  v12[8] = @"2";
  theDict = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 5, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (theDict)
  {
    v5 = v12;
    v6 = 5;
    do
    {
      CFDictionaryAddValue(theDict, *(v5 - 1), *v5);
      v5 += 2;
      --v6;
    }

    while (v6);
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v9, &theDict);
    if (&v9 != a2)
    {
      v11[0] = *a2;
      *a2 = v9;
      v9 = 0;
      ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v11);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v9);
    v7 = 0;
  }

  else
  {
    gBBULogMaskGet(0, v4);
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "dict", "", "", 85);
    v7 = 17;
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v7;
}

void sub_298297494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t eUICC::TwoPhaseProv::ConvertPirToHir(const void **a1, const void **this, CFTypeRef *a3)
{
  v21[10] = *MEMORY[0x29EDCA608];
  v20 = 0;
  memset(&v19[1], 0, 32);
  if (a1 && *a1 && (DataFromPir = eUICC::TwoPhaseProv::SessionData::extractDataFromPir(this, a1), DataFromPir))
  {
    gBBULogMaskGet(DataFromPir, v7);
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "(kVinylResultSuccess == sessionData.extractDataFromPir(*pir))", "", "", 111);
    v8 = 27;
  }

  else
  {
    v21[0] = @"APIVersion";
    v21[1] = @"1";
    v21[2] = @"Command";
    v21[3] = @"HandleInstallationResult";
    v21[4] = @"EuiccSessionID";
    eUICC::TwoPhaseProv::SessionData::getEUICCSessionId(v19, this);
    v21[5] = v19[0];
    v21[6] = @"EID";
    eUICC::TwoPhaseProv::SessionData::getEid(&v18, this);
    v21[7] = v18;
    v21[8] = @"TransactionID";
    eUICC::TwoPhaseProv::SessionData::getTransactionId(&cf, this);
    v21[9] = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v19[0])
    {
      CFRelease(v19[0]);
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 5, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v11 = v20;
    v20 = Mutable;
    if (v11)
    {
      CFRelease(v11);
      Mutable = v20;
    }

    if (Mutable)
    {
      for (i = 0; i != 10; i += 2)
      {
        v13 = v21[i + 1];
        if (v13)
        {
          CFDictionaryAddValue(v20, v21[i], v13);
        }
      }

      eUICC::TwoPhaseProv::SessionData::getError(v19, this);
      if (v19[0])
      {
        eUICC::TwoPhaseProv::SessionData::getError(&v18, this);
        v14 = v18;
        if (v18)
        {
          CFRelease(v18);
        }

        if (v19[0])
        {
          CFRelease(v19[0]);
        }

        if (v14)
        {
          v15 = v20;
          eUICC::TwoPhaseProv::SessionData::getError(v19, this);
          CFDictionaryAddValue(v15, @"ErrorCode", v19[0]);
          if (v19[0])
          {
            CFRelease(v19[0]);
          }
        }
      }

      if (a1 && *a1)
      {
        CFDictionaryAddValue(v20, @"ProfileInstallationResult", *a1);
      }

      ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(v19, &v20);
      if (v19 != a3)
      {
        v21[0] = *a3;
        *a3 = v19[0];
        v19[0] = 0;
        ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v21);
      }

      ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v19);
      v8 = 0;
    }

    else
    {
      gBBULogMaskGet(0, v10);
      _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "dict", "", "", 126);
      v8 = 17;
    }
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v8;
}

void sub_29829781C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t eUICC::TwoPhaseProv::ExtractNotificationListSeqNumbers(CFDataRef *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a1);
  MutableCopy = CFDataCreateMutableCopy(v4, Length, *a1);
  v33[2] = MutableCopy;
  v33[0] = CFDataGetMutableBytePtr(MutableCopy);
  v33[1] = CFDataGetLength(MutableCopy);
  v7 = DERDecodeSeqContentInit(v33, v36);
  if (v7)
  {
    gBBULogMaskGet(v7, v8);
    v9 = 170;
LABEL_3:
    v10 = "DR_Success == der_ret";
    goto LABEL_4;
  }

  v13 = DERDecodeSeqNext(v36, &v34);
  if (v13 || v34 != 0xA000000000000028)
  {
    gBBULogMaskGet(v13, v14);
    v9 = 173;
    v10 = "DR_Success == der_ret && TAG_LN == dec.tag";
    goto LABEL_4;
  }

  v15 = DERDecodeSeqContentInit(v35, v36);
  if (v15)
  {
    gBBULogMaskGet(v15, v16);
    v9 = 176;
    goto LABEL_3;
  }

  v17 = DERDecodeSeqNext(v36, &v34);
  if (v17 || v34 != 0xA000000000000000)
  {
    gBBULogMaskGet(v17, v18);
    v9 = 179;
    v10 = "DR_Success == der_ret && TAG_NML == dec.tag";
    goto LABEL_4;
  }

  v19 = DERDecodeSeqContentInit(v35, v36);
  if (v19)
  {
    gBBULogMaskGet(v19, v20);
    v9 = 182;
    goto LABEL_3;
  }

  v11 = 0;
  while (1)
  {
    v21 = DERDecodeSeqNext(v36, &v34);
    if (v21)
    {
      break;
    }

    cf = 0;
    if (v34 == 0xA00000000000002FLL)
    {
      v23 = DERDecodeSeqContentInit(v35, v32);
      if (v23)
      {
        gBBULogMaskGet(v23, v24);
        v25 = 190;
        v26 = "DR_Success == der_ret";
      }

      else
      {
        v28 = DERDecodeSeqNext(v32, &v34);
        if (!v28 && v34 == 0x8000000000000000)
        {
          v30 = CFDataCreate(v4, v35[0], v35[1]);
          ctu::cf::CFSharedRef<__CFData const>::operator=(&cf, &v30);
          std::vector<ctu::cf::CFSharedRef<__CFData const>>::emplace_back<ctu::cf::CFSharedRef<__CFData const> const&>(a2, &cf);
          v27 = 1;
          goto LABEL_25;
        }

        gBBULogMaskGet(v28, v29);
        v25 = 192;
        v26 = "DR_Success == der_ret && TAG_SEQN == dec.tag";
      }
    }

    else
    {
      gBBULogMaskGet(v21, v22);
      v25 = 187;
      v26 = "TAG_NM == dec.tag";
    }

    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v26, "", "", v25);
    v27 = 0;
    v11 = 27;
LABEL_25:
    if (cf)
    {
      CFRelease(cf);
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if (v21 != 1)
  {
    gBBULogMaskGet(v21, v22);
    v9 = 197;
    v10 = "DR_EndOfSequence == der_ret";
LABEL_4:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v10, "", "", v9);
    v11 = 27;
  }

LABEL_5:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v11;
}

void sub_298297BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, const void *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::ExtractProfileInfo(CFDataRef *a1, uint64_t ***a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a1);
  MutableCopy = CFDataCreateMutableCopy(v4, Length, *a1);
  v48[2] = MutableCopy;
  v48[0] = CFDataGetMutableBytePtr(MutableCopy);
  v48[1] = CFDataGetLength(MutableCopy);
  v7 = DERDecodeSeqContentInit(v48, v51);
  if (!v7)
  {
    v13 = DERDecodeSeqNext(v51, &v49);
    if (v13 || v49 != 0xA00000000000002DLL)
    {
      gBBULogMaskGet(v13, v14);
      v9 = 225;
      v10 = "DR_Success == der_ret && TAG_PILR == dec.tag";
      goto LABEL_4;
    }

    v15 = DERDecodeSeqContentInit(v50, v51);
    if (v15)
    {
      gBBULogMaskGet(v15, v16);
      v9 = 228;
      goto LABEL_3;
    }

    v17 = DERDecodeSeqNext(v51, &v49);
    if (v17 || v49 != 0xA000000000000000)
    {
      gBBULogMaskGet(v17, v18);
      v9 = 231;
      v10 = "DR_Success == der_ret && TAG_PILR_OK == dec.tag";
      goto LABEL_4;
    }

    v19 = DERDecodeSeqContentInit(v50, v51);
    if (v19)
    {
      gBBULogMaskGet(v19, v20);
      v9 = 234;
      goto LABEL_3;
    }

    v11 = 0;
    v33 = *MEMORY[0x29EDB8F00];
    v32 = *MEMORY[0x29EDB8EF8];
    while (1)
    {
      if (DERDecodeSeqNext(v51, &v49) == 1)
      {
        goto LABEL_5;
      }

      v46 = 0;
      v45[0] = 0;
      v45[1] = 0;
      v44 = v45;
      v38 = 0;
      cf = 0;
      __p[0] = 0;
      __p[1] = 0;
      v37 = 0;
      v21 = DERDecodeSeqContentInit(v50, v47);
      if (v21)
      {
        gBBULogMaskGet(v21, v22);
        v23 = 245;
      }

      else
      {
        if (v49 != 0xE000000000000003)
        {
          gBBULogMaskGet(v21, v22);
          v23 = 247;
          v24 = "DR_Success == der_ret && TAG_PI == dec.tag";
          goto LABEL_23;
        }

        v26 = DERParseSequenceContent(v50, 3u, &eUICC::TwoPhaseProv::profileInfoSpec, v40, 0x30uLL);
        if (v26)
        {
          gBBULogMaskGet(v26, v27);
          v23 = 255;
        }

        else
        {
          v25 = 0;
          if (!*v42 || !__sz)
          {
            goto LABEL_24;
          }

          v34 = 0uLL;
          v35 = 0;
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v34, *v42, *v42 + __sz, __sz);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v34;
          v37 = v35;
          *&v34 = CFDataCreate(v4, v40[0], v40[1]);
          ctu::cf::CFSharedRef<__CFData const>::operator=(&v38, &v34);
          v28 = DERParseInteger(&v41, &v46);
          if (!v28)
          {
            v30 = v33;
            if (v46 != 1)
            {
              v30 = v32;
            }

            v31 = cf;
            cf = v30;
            *&v34 = v31;
            ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(&v34);
            std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::__emplace_unique_key_args<std::vector<unsigned char>,std::vector<unsigned char>&,eUICC::TwoPhaseProv::ProfileProperties&>(a2, __p, __p, &v38);
            v25 = 0;
            goto LABEL_24;
          }

          gBBULogMaskGet(v28, v29);
          v23 = 268;
        }
      }

      v24 = "DR_Success == der_ret";
LABEL_23:
      _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v24, "", "", v23);
      v11 = 27;
      v25 = 1;
LABEL_24:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v38)
      {
        CFRelease(v38);
      }

      std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(&v44, v45[0]);
      if (v25)
      {
        goto LABEL_5;
      }
    }
  }

  gBBULogMaskGet(v7, v8);
  v9 = 222;
LABEL_3:
  v10 = "DR_Success == der_ret";
LABEL_4:
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v10, "", "", v9);
  v11 = 27;
LABEL_5:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v11;
}

void sub_298297FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  eUICC::TwoPhaseProv::ProfileProperties::~ProfileProperties(&a22);
  std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(&a30, a31);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v31 - 136));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::ExtractResult(CFDataRef *a1, BOOL *a2, uint64_t a3)
{
  v24 = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a1);
  MutableCopy = CFDataCreateMutableCopy(v6, Length, *a1);
  v23[2] = MutableCopy;
  v23[0] = CFDataGetMutableBytePtr(MutableCopy);
  v23[1] = CFDataGetLength(MutableCopy);
  *a2 = 0;
  v9 = DERDecodeSeqContentInit(v23, v27);
  if (v9)
  {
    gBBULogMaskGet(v9, v10);
    v11 = 306;
LABEL_3:
    v12 = "DR_Success == der_ret";
    goto LABEL_4;
  }

  v15 = DERDecodeSeqNext(v27, &v25);
  if (v15 || v25 != a3)
  {
    gBBULogMaskGet(v15, v16);
    v11 = 309;
    v12 = "DR_Success == der_ret && top_level_tag == dec.tag";
  }

  else
  {
    v17 = DERDecodeSeqContentInit(v26, v27);
    if (v17)
    {
      gBBULogMaskGet(v17, v18);
      v11 = 312;
      goto LABEL_3;
    }

    v19 = DERDecodeSeqNext(v27, &v25);
    if (!v19 && v25 == 0x8000000000000000)
    {
      v21 = DERParseInteger(v26, &v24);
      if (!v21)
      {
        v13 = 0;
        *a2 = v24 == 0;
        if (!MutableCopy)
        {
          return v13;
        }

        goto LABEL_5;
      }

      gBBULogMaskGet(v21, v22);
      v11 = 318;
      goto LABEL_3;
    }

    gBBULogMaskGet(v19, v20);
    v11 = 315;
    v12 = "DR_Success == der_ret && TAG_DP_RESULT == dec.tag";
  }

LABEL_4:
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v12, "", "", v11);
  v13 = 27;
  if (MutableCopy)
  {
LABEL_5:
    CFRelease(MutableCopy);
  }

  return v13;
}

void sub_2982981C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::SerializeDictIntoPlistData(const void **a1, uint64_t a2)
{
  v26 = 0;
  v25 = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = *a1;
  error[0] = 0;
  error[1] = &v26;
  Data = CFPropertyListCreateData(v3, v4, kCFPropertyListXMLFormat_v1_0, 0, error);
  v25 = Data;
  v6 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (Data)
  {
    v8 = ctu::cf::assign();
    if (v8)
    {
      v10 = 0;
    }

    else
    {
      gBBULogMaskGet(v8, v9);
      v16 = _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 364);
      gBBULogMaskGet(v16, v17);
      _BBULog(22, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Failed to assign output data\n");
      v10 = 10;
    }

    CFRelease(Data);
  }

  else
  {
    gBBULogMaskGet(v6, v7);
    v11 = _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "outData", "", "", 362);
    gBBULogMaskGet(v11, v12);
    v13 = *a1;
    v22 = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    v14 = error;
    CFOBJ_STR(&v22, error);
    if (v24 < 0)
    {
      v14 = error[0];
    }

    cf = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    CFOBJ_STR(&cf, __p);
    if (v21 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Failed to serialize dictionary %s error %s\n", v14, v15);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v24 < 0)
    {
      operator delete(error[0]);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    v10 = 10;
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v26);
  return v10;
}

void sub_29829840C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a13);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a20);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v26 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v26 - 40));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::CreateDictionaryFromPlistData(const __CFData **a1, __CFError **a2)
{
  v33 = 0;
  v34 = 0;
  v3 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet(a1, 0);
    v15 = _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "inData", "", "", 380);
    gBBULogMaskGet(v15, v16);
    _BBULog(22, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Failed to create data\n");
LABEL_23:
    v14 = 10;
    goto LABEL_33;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  error[0] = 0;
  error[1] = &v34;
  v6 = CFPropertyListCreateWithData(v5, v3, 0, 0, error);
  v33 = v6;
  v7 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!v6)
  {
    gBBULogMaskGet(v7, v8);
    v17 = _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "outPlist", "", "", 383);
    gBBULogMaskGet(v17, v18);
    v19 = *a1;
    v30 = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    v20 = error;
    CFOBJ_STR(&v30, error);
    if (v32 < 0)
    {
      v20 = error[0];
    }

    cf = v34;
    if (v34)
    {
      CFRetain(v34);
    }

    CFOBJ_STR(&cf, __p);
    if (v29 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Failed to deserialize dictionary %s error %s\n", v20, v21);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v32 < 0)
    {
      operator delete(error[0]);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_23;
  }

  v9 = CFGetTypeID(v6);
  TypeID = CFDictionaryGetTypeID();
  if (v9 == TypeID)
  {
    __p[0] = v6;
    v12 = ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(error, __p);
    v13 = *a2;
    *a2 = error[0];
    error[0] = v13;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v12);
    v14 = 0;
  }

  else
  {
    gBBULogMaskGet(TypeID, v11);
    v22 = _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "CFGetTypeID(outPlist.get()) == CFDictionaryGetTypeID()", "", "", 386);
    gBBULogMaskGet(v22, v23);
    v26 = v6;
    CFRetain(v6);
    CFOBJ_STR(&v26, error);
    if (v32 >= 0)
    {
      v24 = error;
    }

    else
    {
      v24 = error[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Deserialized plist data is not a dictionary: %s\n", v24);
    if (v32 < 0)
    {
      operator delete(error[0]);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    v14 = 10;
  }

  CFRelease(v6);
LABEL_33:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v34);
  return v14;
}

void sub_29829878C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (*(v24 - 49) < 0)
  {
    operator delete(*(v24 - 72));
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v24 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v24 - 40));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::IsNotificationForTwoPhase(CFDataRef *a1, const void **a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a1);
  MutableCopy = CFDataCreateMutableCopy(v4, Length, *a1);
  v34[2] = MutableCopy;
  v34[0] = CFDataGetMutableBytePtr(MutableCopy);
  v34[1] = CFDataGetLength(MutableCopy);
  v7 = DERDecodeSeqContentInit(v34, v37);
  if (v7)
  {
    gBBULogMaskGet(v7, v8);
    v9 = 417;
LABEL_3:
    v10 = "DR_Success == der_ret";
LABEL_4:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v10, "", "", v9);
    goto LABEL_5;
  }

  v13 = DERDecodeSeqNext(v37, &v35);
  if (v13 || v35 != 0xA00000000000002BLL)
  {
    gBBULogMaskGet(v13, v14);
    v9 = 419;
    v10 = "DR_Success == der_ret && TAG_RNLR == dec.tag";
    goto LABEL_4;
  }

  v15 = DERDecodeSeqContentInit(v36, v37);
  if (v15)
  {
    gBBULogMaskGet(v15, v16);
    v9 = 423;
    goto LABEL_3;
  }

  v17 = DERDecodeSeqNext(v37, &v35);
  if (v17 || v35 != 0xA000000000000000)
  {
    gBBULogMaskGet(v17, v18);
    v9 = 425;
    v10 = "DR_Success == der_ret && TAG_RNLR_NL == dec.tag";
    goto LABEL_4;
  }

  v19 = v36[0];
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  v21 = DERDecodeSeqContentInit(v36, v37);
  if (v21)
  {
    gBBULogMaskGet(v21, v22);
    v9 = 432;
    goto LABEL_3;
  }

  v23 = DERDecodeSeqNext(v37, &v35);
  if (v23 || v35 != 0xA000000000000037)
  {
    gBBULogMaskGet(v23, v24);
    v9 = 434;
    v10 = "DR_Success == der_ret && TAG_PIR == dec.tag";
    goto LABEL_4;
  }

  v25 = DERParseSequenceContent(v36, 3u, &eUICC::TwoPhaseProv::profileInstallationResultSpec, v32, 0x20uLL);
  if (v25)
  {
    gBBULogMaskGet(v25, v26);
    v9 = 438;
    goto LABEL_3;
  }

  if (v33)
  {
    BytePtr = CFDataGetBytePtr(*a1);
    v28 = CFDataGetLength(*a1);
    v31 = CFDataCreate(v4, &BytePtr[v19 - MutableBytePtr], v28 - (v19 - MutableBytePtr));
    v29 = ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v31);
    if (*a2)
    {
      v11 = 1;
      if (!MutableCopy)
      {
        return v11;
      }

      goto LABEL_6;
    }

    gBBULogMaskGet(v29, v30);
    v9 = 448;
    v10 = "ntf";
    goto LABEL_4;
  }

LABEL_5:
  v11 = 0;
  if (MutableCopy)
  {
LABEL_6:
    CFRelease(MutableCopy);
  }

  return v11;
}

void sub_298298A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

BOOL eUICC::TwoPhaseProv::IsProvTxIdAvailable(CFDataRef *a1)
{
  v2 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a1);
  MutableCopy = CFDataCreateMutableCopy(v2, Length, *a1);
  v21[2] = MutableCopy;
  v21[0] = CFDataGetMutableBytePtr(MutableCopy);
  v21[1] = CFDataGetLength(MutableCopy);
  v5 = DERDecodeSeqContentInit(v21, v24);
  if (v5)
  {
    gBBULogMaskGet(v5, v6);
    v7 = 469;
    v8 = "DR_Success == DERDecodeSeqContentInit(&gps_der, &seq)";
LABEL_11:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v8, "", "", v7);
    v13 = 0;
    goto LABEL_12;
  }

  v9 = DERDecodeSeqNext(v24, &v22);
  if (v9)
  {
    gBBULogMaskGet(v9, v10);
    v7 = 470;
LABEL_5:
    v8 = "DR_Success == DERDecodeSeqNext(&seq, &dec)";
    goto LABEL_11;
  }

  if (v22 != 0xE00000000000002DLL)
  {
    gBBULogMaskGet(v9, v10);
    v7 = 471;
    v8 = "TAG_GPS == dec.tag";
    goto LABEL_11;
  }

  v11 = DERDecodeSeqContentInit(v23, v24);
  if (v11)
  {
    gBBULogMaskGet(v11, v12);
    v7 = 472;
LABEL_9:
    v8 = "DR_Success == DERDecodeSeqContentInit(&dec.content, &seq)";
    goto LABEL_11;
  }

  v15 = DERDecodeSeqNext(v24, &v22);
  if (v15)
  {
    gBBULogMaskGet(v15, v16);
    v7 = 473;
    goto LABEL_5;
  }

  if (v22 != 0xA000000000000000)
  {
    gBBULogMaskGet(v15, v16);
    v7 = 474;
    v8 = "TAG_GPS_PS == dec.tag";
    goto LABEL_11;
  }

  v17 = DERDecodeSeqContentInit(v23, v24);
  if (v17)
  {
    gBBULogMaskGet(v17, v18);
    v7 = 475;
    goto LABEL_9;
  }

  do
  {
    v19 = DERDecodeSeqNext(v24, &v22);
    v13 = v19 != 1;
    if (v19 == 1)
    {
      break;
    }
  }

  while (v22 != 0xA000000000000003 || v23[1] == 0);
LABEL_12:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v13;
}

void sub_298298C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::ComposeNsr(CFDataRef *a1, const void **a2)
{
  v20[2] = *MEMORY[0x29EDCA608];
  v4 = CFDataGetLength(*a1) + 7;
  v5 = MEMORY[0x2A1C7C4A8]();
  v6 = &v17 - ((v5 + 22) & 0xFFFFFFFFFFFFFFF0);
  v7 = v5 + 14;
  v8 = &v17 - ((MEMORY[0x2A1C7C4A8]() + 29) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4;
  v20[1] = CFDataGetLength(*a1);
  v20[0] = CFDataGetBytePtr(*a1);
  v9 = DEREncodeSequenceFromObject(0xA000000000000000, v20, 0x10uLL, 1, &eUICC::TwoPhaseProv::retrieveNtfListSearchCriteriaSpec, v6, v4, &v19);
  if (v9)
  {
    gBBULogMaskGet(v9, v10);
    v11 = 513;
LABEL_5:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == enc_ret", "", "", v11);
    return 10;
  }

  v19 = v7;
  v12 = DEREncodeSequenceFromObject(0xA000000000000030, v20, 0x10uLL, 1, &eUICC::TwoPhaseProv::notificationSentSpec, v8, v7, &v19);
  if (v12)
  {
    gBBULogMaskGet(v12, v13);
    v11 = 524;
    goto LABEL_5;
  }

  v18 = CFDataCreate(*MEMORY[0x29EDB8ED8], v8, v19);
  v15 = ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v18);
  if (*a2)
  {
    return 0;
  }

  gBBULogMaskGet(v15, v16);
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "nsr_req.get()", "", "", 527);
  return 17;
}

uint64_t eUICC::TwoPhaseProv::ComposeDisableReq(CFDataRef *a1, const void **a2)
{
  v15[4] = *MEMORY[0x29EDCA608];
  v14 = 0;
  v4 = CFDataGetLength(*a1) + 22;
  v5 = &v12 - ((MEMORY[0x2A1C7C4A8]() + 37) & 0xFFFFFFFFFFFFFFF0);
  v13 = v4;
  v15[1] = CFDataGetLength(*a1);
  BytePtr = CFDataGetBytePtr(*a1);
  v15[3] = 1;
  v15[0] = BytePtr;
  v15[2] = &v14;
  v7 = DEREncodeSequenceFromObject(0xA000000000000032, v15, 0x20uLL, 2, &eUICC::TwoPhaseProv::profileOperationSpec, v5, v4, &v13);
  if (v7)
  {
    gBBULogMaskGet(v7, v8);
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == enc_ret", "", "", 558);
    return 10;
  }

  else
  {
    v12 = CFDataCreate(*MEMORY[0x29EDB8ED8], v5, v13);
    v10 = ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v12);
    if (*a2)
    {
      return 0;
    }

    else
    {
      gBBULogMaskGet(v10, v11);
      _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "disable_req.get()", "", "", 561);
      return 17;
    }
  }
}

uint64_t eUICC::TwoPhaseProv::ComposeDeleteReq(CFDataRef *a1, const void **a2)
{
  v14[4] = *MEMORY[0x29EDCA608];
  v4 = CFDataGetLength(*a1) + 14;
  v5 = &v11 - ((MEMORY[0x2A1C7C4A8]() + 29) & 0xFFFFFFFFFFFFFFF0);
  v13 = v4;
  v14[1] = CFDataGetLength(*a1);
  v14[0] = CFDataGetBytePtr(*a1);
  v6 = DEREncodeSequenceFromObject(0xA000000000000033, v14, 0x20uLL, 1, &eUICC::TwoPhaseProv::deleteProfileSpec, v5, v4, &v13);
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == enc_ret", "", "", 588);
    return 10;
  }

  else
  {
    v12 = CFDataCreate(*MEMORY[0x29EDB8ED8], v5, v13);
    v9 = ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v12);
    if (*a2)
    {
      return 0;
    }

    else
    {
      gBBULogMaskGet(v9, v10);
      _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "delete_req.get()", "", "", 591);
      return 17;
    }
  }
}

uint64_t eUICC::TwoPhaseProv::ComposeRnl(CFDataRef *a1, const void **a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = CFDataGetLength(*a1) + 7;
  v5 = MEMORY[0x2A1C7C4A8]();
  v6 = &v17 - ((v5 + 22) & 0xFFFFFFFFFFFFFFF0);
  v7 = v5 + 14;
  v8 = &v17 - ((MEMORY[0x2A1C7C4A8]() + 29) & 0xFFFFFFFFFFFFFFF0);
  v20 = v6;
  v21 = 0;
  v19 = v4;
  Length = CFDataGetLength(*a1);
  BytePtr = CFDataGetBytePtr(*a1);
  v9 = DEREncodeSequenceFromObject(0xA000000000000000, &v20, 0x20uLL, 1, &eUICC::TwoPhaseProv::retrieveNtfListSeqNumSpec, v6, v4, &v19);
  if (v9)
  {
    gBBULogMaskGet(v9, v10);
    v11 = 623;
LABEL_5:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == enc_ret", "", "", v11);
    return 10;
  }

  v21 = v19;
  v19 = v7;
  v12 = DEREncodeSequenceFromObject(0xA00000000000002BLL, &v20, 0x20uLL, 1, &eUICC::TwoPhaseProv::retrieveNtfListSearchCriteriaSpec, v8, v7, &v19);
  if (v12)
  {
    gBBULogMaskGet(v12, v13);
    v11 = 634;
    goto LABEL_5;
  }

  v18 = CFDataCreate(*MEMORY[0x29EDB8ED8], v8, v19);
  v15 = ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v18);
  if (*a2)
  {
    return 0;
  }

  gBBULogMaskGet(v15, v16);
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "rnl_req.get()", "", "", 637);
  return 17;
}

uint64_t eUICC::TwoPhaseProv::GetNextBppSegment(_DWORD *a1, CFDataRef *a2, void *a3, unint64_t *a4)
{
  __dst[35] = *MEMORY[0x29EDCA608];
  v32[0] = &CFDataGetBytePtr(*a2)[*a3];
  v32[1] = CFDataGetLength(*a2) - *a3;
  *a4 = 0;
  memcpy(__dst, &unk_2982C4020, 0x118uLL);
  std::map<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>::map[abi:ne200100](v31, __dst, 7);
  v8 = DERDecodeSeqContentInit(v32, v36);
  if (!v8)
  {
    v12 = DERDecodeSeqNext(v36, &v33);
    if (v12)
    {
      gBBULogMaskGet(v12, v13);
      v10 = 670;
LABEL_5:
      v11 = "DR_Success == DERDecodeSeqNext(&seq, &decoded)";
      goto LABEL_6;
    }

    __dst[0] = a1;
    v16 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v31, a1, &std::piecewise_construct, __dst);
    if ((v16[5] & 1) == 0)
    {
      __dst[0] = a1;
      v16 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v31, a1, &std::piecewise_construct, __dst);
      if (v16[6] != v33)
      {
        gBBULogMaskGet(v16, v17);
        v10 = 671;
        v11 = "tag_props[seg].optional || tag_props[seg].topLevelTag == decoded.tag";
        goto LABEL_6;
      }
    }

    if (*a1 > 6u)
    {
      goto LABEL_21;
    }

    v18 = 1 << *a1;
    if ((v18 & 0x13) != 0)
    {
      __dst[0] = a1;
      v22 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v31, a1, &std::piecewise_construct, __dst);
      if (v22[6] == v33)
      {
        v23 = DERDecodeSeqContentInit(&v34, v36);
        if (v23)
        {
          gBBULogMaskGet(v23, v24);
          v10 = 680;
          v11 = "DR_Success == DERDecodeSeqContentInit(&decoded.content, &seq)";
          goto LABEL_6;
        }

        v27 = DERDecodeSeqNext(v36, &v33);
        if (v27)
        {
          gBBULogMaskGet(v27, v28);
          v10 = 681;
          goto LABEL_5;
        }

        __dst[0] = a1;
        if ((std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v31, a1, &std::piecewise_construct, __dst)[5] & 1) == 0)
        {
          __dst[0] = a1;
          v29 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v31, a1, &std::piecewise_construct, __dst);
          if (v29[7] != v33)
          {
            gBBULogMaskGet(v29, v30);
            v10 = 682;
            v11 = "tag_props[seg].optional || (tag_props[seg].innerTag == decoded.tag)";
            goto LABEL_6;
          }
        }

        *a4 = v34 + v35 - v32[0];
      }
    }

    else
    {
      if ((v18 & 0x24) != 0)
      {
        v19 = v35;
        v20 = v34 - v32[0];
        *a4 = v34 - v32[0];
        eUICC::TwoPhaseProv::GetNextBppSegment(eUICC::TwoPhaseProv::eBppSegment &,ctu::cf::CFSharedRef<__CFData const> &,unsigned long &,unsigned long &)::offset_seq_end = v20 + *a3 + v19;
        __dst[0] = a1;
        v21 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v31, a1, &std::piecewise_construct, __dst);
LABEL_28:
        v14 = 0;
        *a1 = *(v21 + 16);
        goto LABEL_7;
      }

      v25 = v34 + v35 - v32[0];
      *a4 = v25;
      v26 = *a3 + v25;
      if (v26 > eUICC::TwoPhaseProv::GetNextBppSegment(eUICC::TwoPhaseProv::eBppSegment &,ctu::cf::CFSharedRef<__CFData const> &,unsigned long &,unsigned long &)::offset_seq_end)
      {
        gBBULogMaskGet(v16, v17);
        v10 = 698;
        v11 = "offset + length <= offset_seq_end";
        goto LABEL_6;
      }

      if (v26 != eUICC::TwoPhaseProv::GetNextBppSegment(eUICC::TwoPhaseProv::eBppSegment &,ctu::cf::CFSharedRef<__CFData const> &,unsigned long &,unsigned long &)::offset_seq_end)
      {
LABEL_21:
        v14 = 0;
        goto LABEL_7;
      }
    }

    __dst[0] = a1;
    v21 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(v31, a1, &std::piecewise_construct, __dst);
    goto LABEL_28;
  }

  gBBULogMaskGet(v8, v9);
  v10 = 669;
  v11 = "DR_Success == DERDecodeSeqContentInit(&content, &seq)";
LABEL_6:
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v11, "", "", v10);
  v14 = 27;
LABEL_7:
  std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::destroy(v31, v31[1]);
  return v14;
}

uint64_t eUICC::TwoPhaseProv::StringifyDataBuffer@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      if (a2)
      {
        v7 = v21;
        v8 = v21;
        *(&v22 + *(v21 - 24)) = *(&v22 + *(v21 - 24)) & 0xFFFFFFB5 | 8;
        v9 = (&v21 + *(v8 - 24));
        if (v9[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v9);
          v10 = std::locale::use_facet(&v31, MEMORY[0x29EDC93D0]);
          (v10->__vftable[2].~facet_0)(v10, 32);
          std::locale::~locale(&v31);
          v7 = v21;
          v5 = *a1;
        }

        v9[1].__fmtflags_ = 48;
        *(v24 + *(v7 - 24)) = 2;
        MEMORY[0x29C286A60](&v21, *(v5 + v6));
      }

      else
      {
        LOBYTE(v31.__locale_) = *(v5 + v6);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, &v31, 1);
      }

      ++v6;
      v5 = *a1;
    }

    while (a1[1] - *a1 > v6);
  }

  if ((v29 & 0x10) != 0)
  {
    v13 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v13 = v25;
    }

    v14 = v24[3];
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v11 = 0;
      v12 = a3;
      *(a3 + 23) = 0;
      goto LABEL_25;
    }

    v14 = v24[0];
    v13 = v24[2];
  }

  v12 = a3;
  v11 = v13 - v14;
  if (v13 - v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v11 | 7) + 1;
    }

    v16 = operator new(v15);
    a3[1] = v11;
    a3[2] = v15 | 0x8000000000000000;
    *a3 = v16;
    v12 = v16;
    goto LABEL_24;
  }

  *(a3 + 23) = v11;
  if (v11)
  {
LABEL_24:
    memmove(v12, v14, v11);
  }

LABEL_25:
  *(v12 + v11) = 0;
  v20[0] = *MEMORY[0x29EDC9528];
  v17 = *(MEMORY[0x29EDC9528] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v21 = v17;
  v22 = MEMORY[0x29EDC9570] + 16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  v22 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C286CA0](&v30);
}

void sub_298299BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x29EDC9528]);
  MEMORY[0x29C286CA0](&a26);
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

void sub_298299E94(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C286CA0](v1);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::LogOversizedPlain(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 23);
  v4 = v3;
  if (*(result + 23) < 0)
  {
    v4 = *(result + 8);
  }

  if (v4)
  {
    v5 = 0;
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v3 = *(v2 + 8);
LABEL_6:
    while (v3 > v5)
    {
      gBBULogMaskGet(result, a2);
      v6 = v2;
      if (*(v2 + 23) < 0)
      {
        v6 = *v2;
      }

      result = _BBULogPlain(0, "%s\n", (v6 + v5));
      v5 += 1023;
      v3 = *(v2 + 23);
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t eUICC::TwoPhaseProv::IsNotificationSentRspSuccess(CFDataRef *a1)
{
  v20 = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a1);
  MutableCopy = CFDataCreateMutableCopy(v2, Length, *a1);
  v19[2] = MutableCopy;
  v19[0] = CFDataGetMutableBytePtr(MutableCopy);
  v19[1] = CFDataGetLength(MutableCopy);
  v5 = DERDecodeSeqContentInit(v19, v23);
  if (v5)
  {
    gBBULogMaskGet(v5, v6);
    v7 = 767;
LABEL_3:
    v8 = "DR_Success == der_ret";
    goto LABEL_4;
  }

  v11 = DERDecodeSeqNext(v23, &v21);
  if (v11 || v21 != 0xA000000000000030)
  {
    gBBULogMaskGet(v11, v12);
    v7 = 769;
    v8 = "DR_Success == der_ret && TAG_NS == dec.tag";
  }

  else
  {
    v13 = DERDecodeSeqContentInit(v22, v23);
    if (v13)
    {
      gBBULogMaskGet(v13, v14);
      v7 = 773;
      goto LABEL_3;
    }

    v15 = DERDecodeSeqNext(v23, &v21);
    if (v15)
    {
      gBBULogMaskGet(v15, v16);
      v7 = 775;
      goto LABEL_3;
    }

    if (v21 == 0x8000000000000000)
    {
      v17 = DERParseInteger(v22, &v20);
      if (v17)
      {
        gBBULogMaskGet(v17, v18);
        v7 = 779;
        goto LABEL_3;
      }

      if (!v20)
      {
        v9 = 1;
        if (!MutableCopy)
        {
          return v9;
        }

        goto LABEL_5;
      }

      gBBULogMaskGet(v17, v18);
      v7 = 780;
      v8 = "DELETE_NOTIFICATION_STATUS_OK == del_status";
    }

    else
    {
      gBBULogMaskGet(v15, v16);
      v7 = 776;
      v8 = "TAG_SEQN == dec.tag";
    }
  }

LABEL_4:
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v8, "", "", v7);
  v9 = 0;
  if (MutableCopy)
  {
LABEL_5:
    CFRelease(MutableCopy);
  }

  return v9;
}

void sub_29829A104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::ExtractDataFromPbiRsp(CFDataRef *a1, const void **a2, CFNumberRef *a3)
{
  v6 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a1);
  MutableCopy = CFDataCreateMutableCopy(v6, Length, *a1);
  v30[2] = MutableCopy;
  v30[0] = CFDataGetMutableBytePtr(MutableCopy);
  v9 = CFDataGetLength(MutableCopy);
  v30[1] = v9;
  if (!a2 || !a3)
  {
    gBBULogMaskGet(v9, v10);
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "(nullptr != pir) && (nullptr != err)", "", "", 837);
    v15 = 10;
    if (!MutableCopy)
    {
      return v15;
    }

    goto LABEL_15;
  }

  v11 = DERDecodeSeqContentInit(v30, v35);
  if (v11)
  {
    gBBULogMaskGet(v11, v12);
    v13 = 838;
    v14 = "DR_Success == DERDecodeSeqContentInit(&pbi_der, &seq)";
LABEL_13:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", v14, "", "", v13);
    goto LABEL_14;
  }

  v16 = DERDecodeSeqNext(v35, &v33);
  if (v16)
  {
    gBBULogMaskGet(v16, v17);
    v13 = 839;
    v14 = "DR_Success == DERDecodeSeqNext(&seq, &dec)";
    goto LABEL_13;
  }

  if (v33 != 0xE00000000000002ELL)
  {
    gBBULogMaskGet(v16, v17);
    v13 = 840;
    v14 = "TAG_PBI == dec.tag";
    goto LABEL_13;
  }

  v18 = DERDecodeSeqContentInit(v34, v35);
  if (v18)
  {
    gBBULogMaskGet(v18, v19);
    v13 = 842;
    v14 = "DR_Success == DERDecodeSeqContentInit(&dec.content, &seq)";
    goto LABEL_13;
  }

  v21 = DERDecodeSeqNext(v35, &v31);
  if (v21)
  {
    gBBULogMaskGet(v21, v22);
    v13 = 843;
    v14 = "DR_Success == DERDecodeSeqNext(&seq, &dec_nested)";
    goto LABEL_13;
  }

  switch(v31)
  {
    case 0x2000000000000010uLL:
      goto LABEL_28;
    case 2uLL:
      v29 = 0;
      v23 = DERParseInteger(&v32, &v29);
      if (v23)
      {
        gBBULogMaskGet(v23, v24);
        _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvUtil", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == DERParseInteger(&dec_nested.content, &err_val)", "", "", 857);
        break;
      }

      v25 = -127 - v29;
      if ((v29 - 1) >= 5)
      {
        v25 = -254;
      }

      valuePtr = v25;
      v26 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
      v27 = *a3;
      *a3 = v26;
      v36 = v27;
      ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&v36);
LABEL_28:
      v15 = 0;
      if (!MutableCopy)
      {
        return v15;
      }

      goto LABEL_15;
    case 0xA000000000000037:
      v36 = CFDataCreate(v6, v34[0], v34[1]);
      ctu::cf::CFSharedRef<__CFData const>::operator=(a2, &v36);
      goto LABEL_28;
  }

LABEL_14:
  v15 = 27;
  if (MutableCopy)
  {
LABEL_15:
    CFRelease(MutableCopy);
  }

  return v15;
}

void sub_29829A3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

BOOL eUICC::TwoPhaseProv::LdrVerSupportsTwoPhaseInstall(eUICC::TwoPhaseProv *this)
{
  v1 = this;
  v11 = *MEMORY[0x29EDCA608];
  v8 = 0x8710870387028700;
  v9 = -30944;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v8, &v10, 5);
  if ((v1 & 0x8000) == 0)
  {
    v2 = v1 > 0x70F;
    if (!__p)
    {
      return v2;
    }

    goto LABEL_13;
  }

  if (v1 >> 8 < 0x87)
  {
    v2 = 0;
    if (!__p)
    {
      return v2;
    }

LABEL_13:
    v6 = __p;
    operator delete(__p);
    return v2;
  }

  v3 = __p;
  if (__p != v6)
  {
    v3 = __p;
    while (*v3 != v1)
    {
      if (++v3 == v6)
      {
        v3 = v6;
        break;
      }
    }
  }

  v2 = v6 == v3;
  if (__p)
  {
    goto LABEL_13;
  }

  return v2;
}

const void **std::vector<ctu::cf::CFSharedRef<__CFData const>>::emplace_back<ctu::cf::CFSharedRef<__CFData const> const&>(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v4 = std::vector<ctu::cf::CFSharedRef<__CFData const>>::__emplace_back_slow_path<ctu::cf::CFSharedRef<__CFData const> const&>(a1, a2);
  }

  else
  {
    v4 = ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(v3, a2) + 1;
  }

  *(a1 + 8) = v4;
  return v4 - 1;
}

const void **std::vector<ctu::cf::CFSharedRef<__CFData const>>::__emplace_back_slow_path<ctu::cf::CFSharedRef<__CFData const> const&>(const void ***a1, const void **a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    v8 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v12 = &v8[8 * v2];
  v14 = &v8[8 * v7];
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(v12, a2);
  v13 = v12 + 1;
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::__swap_out_circular_buffer(a1, &v11);
  v9 = a1[1];
  std::__split_buffer<ctu::cf::CFSharedRef<__CFData const>>::~__split_buffer(&v11);
  return v9;
}

void sub_29829A60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ctu::cf::CFSharedRef<__CFData const>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void std::vector<ctu::cf::CFSharedRef<__CFData const>>::__swap_out_circular_buffer(const void ***result, void *a2)
{
  v4 = *result;
  v5 = result[1];
  v6 = *result + a2[1] - v5;
  if (v5 != *result)
  {
    v7 = *result;
    v8 = (*result + a2[1] - v5);
    do
    {
      *v8 = 0;
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<ctu::cf::CFSharedRef<__CFData const>,0>(v4++);
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v9 = *result;
  *result = v6;
  result[1] = v9;
  a2[1] = v9;
  v10 = result[1];
  result[1] = a2[2];
  a2[2] = v10;
  v11 = result[2];
  result[2] = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

void std::__destroy_at[abi:ne200100]<ctu::cf::CFSharedRef<__CFData const>,0>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__split_buffer<ctu::cf::CFSharedRef<__CFData const>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<ctu::cf::CFSharedRef<__CFData const>,0>((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void eUICC::TwoPhaseProv::ProfileProperties::~ProfileProperties(eUICC::TwoPhaseProv::ProfileProperties *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

const void **ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(const void **a1)
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

uint64_t *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(uint64_t *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
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

void sub_29829A9DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 2 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(2 * a2);
}

void std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(a1, a2[1]);
    v4 = a2[8];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a2[7];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a2[4];
    if (v6)
    {
      a2[5] = v6;
      operator delete(v6);
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::__emplace_unique_key_args<std::vector<unsigned char>,std::vector<unsigned char>&,eUICC::TwoPhaseProv::ProfileProperties&>(uint64_t ***a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4)
{
  v7 = std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::__find_equal<std::vector<unsigned char>>(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::__construct_node<std::vector<unsigned char>&,eUICC::TwoPhaseProv::ProfileProperties&>(a1, a3, a4, &v9);
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__insert_node_at(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::__find_equal<std::vector<unsigned char>>(uint64_t a1, unsigned __int8 ***a2, unsigned __int8 **a3)
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
        if ((std::operator<=>[abi:ne200100]<unsigned char,std::allocator<unsigned char>>(a3, v4 + 4) & 0x80) == 0)
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

      if ((std::operator<=>[abi:ne200100]<unsigned char,std::allocator<unsigned char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
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

CFTypeRef std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::__construct_node<std::vector<unsigned char>&,eUICC::TwoPhaseProv::ProfileProperties&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8 + 4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef(v8 + 7, a3);
  result = *(a3 + 8);
  *(v8 + 8) = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *(a4 + 16) = 1;
  return result;
}

void sub_29829AC94(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::operator<=>[abi:ne200100]<unsigned char,std::allocator<unsigned char>>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a1[1] - *a1;
  v5 = a2[1] - *a2;
  if (v5 >= v4)
  {
    v6 = a1[1] - *a1;
  }

  else
  {
    v6 = a2[1] - *a2;
  }

  if (v6 < 1)
  {
LABEL_7:
    if (v4 < v5)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    while (1)
    {
      v7 = *v2;
      v8 = *v3;
      if (v7 != v8)
      {
        break;
      }

      ++v2;
      ++v3;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 < v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[8];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = __p[7];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = __p[4];
    if (v5)
    {
      __p[5] = v5;
      operator delete(v5);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **std::map<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_hint_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::pair<eUICC::TwoPhaseProv::eBppSegment const,eUICC::TwoPhaseProv::BppTagProperties> const&>(a1, v4, a2, a2);
      a2 += 10;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

_OWORD *std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_hint_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::pair<eUICC::TwoPhaseProv::eBppSegment const,eUICC::TwoPhaseProv::BppTagProperties> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__find_equal<eUICC::TwoPhaseProv::eBppSegment>(a1, a2, &v12, &v11, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x48uLL);
    v9 = *(a4 + 16);
    v7[2] = *a4;
    v7[3] = v9;
    *(v7 + 8) = *(a4 + 32);
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__insert_node_at(a1, v12, v8, v7);
  }

  return v7;
}

uint64_t *std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__find_equal<eUICC::TwoPhaseProv::eBppSegment>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

void std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::__map_value_compare<eUICC::TwoPhaseProv::eBppSegment,std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>,std::less<eUICC::TwoPhaseProv::eBppSegment>,true>,std::allocator<std::__value_type<eUICC::TwoPhaseProv::eBppSegment,eUICC::TwoPhaseProv::BppTagProperties>>>::__emplace_unique_key_args<eUICC::TwoPhaseProv::eBppSegment,std::piecewise_construct_t const&,std::tuple<eUICC::TwoPhaseProv::eBppSegment const&>,std::tuple<>>(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = (a1 + 8);
LABEL_10:
    v11 = operator new(0x48uLL);
    *(v11 + 8) = **a4;
    *(v11 + 56) = 0u;
    *(v11 + 40) = 0u;
    std::__tree<std::__value_type<std::string,VinylRefurbAction>,std::__map_value_compare<std::string,std::__value_type<std::string,VinylRefurbAction>,BBUpdaterCommon::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,VinylRefurbAction>>>::__insert_node_at(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::Perform(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v129 = *MEMORY[0x29EDCA608];
  gBBULogMaskGet(a1, a2);
  v6 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "TwoPhaseProvImpl::Perform\n");
  *(a1 + 376) = a2;
  if (*(a2 + 136) == 1)
  {
    gBBULogMaskGet(v6, v7);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Skip Vinyl provisioning\n");
    return 0;
  }

  v9 = dispatch_queue_create("VinylControllerTwoPhaseProvisioning", 0);
  v10 = *(a1 + 64);
  *(a1 + 64) = v9;
  if (v10)
  {
    dispatch_release(v10);
  }

  __p = 0;
  v126 = 0;
  v127 = 0;
  v123 = 0;
  v124 = 0;
  v121 = 0;
  v122 = 0;
  cf = 0;
  v119 = 0;
  (*(**a3 + 8))(__src);
  v11 = memcpy((a1 + 88), __src, 0x11BuLL);
  if (*(a1 + 367) == 1)
  {
    gBBULogMaskGet(v11, v12);
    v13 = 105;
    v14 = "!getDataRsp.contents.isAbsentOk";
LABEL_7:
    v15 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v14, "", "", v13);
LABEL_8:
    v8 = 0;
    v16 = 0;
    goto LABEL_9;
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (*(a1 + 88) != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v22);
    v15 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "getDataRsp.Valid()", "", "", 106);
    v8 = 10;
    goto LABEL_26;
  }

  v23 = __rev16(*(a1 + 328));
  v24 = eUICC::TwoPhaseProv::LdrVerSupportsTwoPhaseInstall(v23);
  if (!v24)
  {
    gBBULogMaskGet(v24, v25);
    v30 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "LdrVerSupportsTwoPhaseInstall(ldr_ver)", "", "", 114);
    gBBULogMaskGet(v30, v31);
    v15 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "ldr ver %04X not eligible, skipping\n", v23);
    goto LABEL_8;
  }

  if (!*(a1 + 92))
  {
    v118 = CFDataCreate(*MEMORY[0x29EDB8ED8], (a1 + 95), 16);
    eUICC::TwoPhaseProv::SessionData::setEid(a1, &v118);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v118);
    isEidEligible = eUICC::TwoPhaseProv::SessionData::isEidEligible(a1, a2);
    if ((isEidEligible & 1) == 0)
    {
      gBBULogMaskGet(isEidEligible, v36);
      v41 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "sessionData.isEidEligible( performOptions)", "", "", 127);
      gBBULogMaskGet(v41, v42);
      v15 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "EID not eligible, skipping\n");
      goto LABEL_8;
    }

    v37 = eUICC::TwoPhaseProv::TwoPhaseProvImpl::HandleRefurbishProfileReference(a1, a3);
    v8 = v37;
    if (v37)
    {
      gBBULogMaskGet(v37, v38);
      v15 = 0;
      v16 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 130);
      goto LABEL_42;
    }

    v46 = *(a2 + 79);
    if ((v46 & 0x80u) != 0)
    {
      v46 = *(a2 + 64);
    }

    if (!v46)
    {
      gBBULogMaskGet(v37, v38);
      v13 = 135;
      v14 = "!performOptions.twoPhaseUrl.empty()";
      goto LABEL_7;
    }

    ReverseProxyGetSettings(a2 + 56, &v117);
    v47 = (a1 + 72);
    if ((a1 + 72) != &v117)
    {
      *&__src[0] = *v47;
      *v47 = v117;
      v117 = 0;
      ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(__src);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v117);
    v48 = eUICC::TwoPhaseProv::TwoPhaseProvImpl::HandleNotifications(a1, a3);
    v8 = v48;
    if (v48)
    {
      gBBULogMaskGet(v48, v49);
      v15 = 0;
      v16 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 143);
      goto LABEL_42;
    }

    v50 = eUICC::TwoPhaseProv::ComposeGps(&v124);
    v8 = v50;
    if (v50)
    {
      gBBULogMaskGet(v50, v51);
      v15 = 0;
      v16 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 147);
      goto LABEL_42;
    }

    ProvisioningSessions = eUICC::TwoPhaseProv::TwoPhaseProvImpl::GetProvisioningSessions(v50, &v124, &v123, &v119, a3);
    v8 = ProvisioningSessions;
    if (ProvisioningSessions)
    {
      gBBULogMaskGet(ProvisioningSessions, v53);
      v15 = 0;
      v16 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 149);
      goto LABEL_42;
    }

    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v116, &v123);
    IsProvTxIdAvailable = eUICC::TwoPhaseProv::IsProvTxIdAvailable(&v116);
    v55 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v116);
    if (!IsProvTxIdAvailable)
    {
      gBBULogMaskGet(v55, v56);
      v15 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "IsProvTxIdAvailable( euicc_rsp)", "", "", 152);
      v8 = 26;
      goto LABEL_26;
    }

    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v115, &v123);
    v8 = eUICC::TwoPhaseProv::ConvertGpsToGbpp(&v115, &v121);
    v57 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v115);
    if (v8)
    {
      gBBULogMaskGet(v57, v58);
      v15 = 0;
      v16 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 156);
      goto LABEL_42;
    }

    v59 = eUICC::TwoPhaseProv::SerializeDictIntoPlistData(&v121, &__p);
    v8 = v59;
    if (v59)
    {
      gBBULogMaskGet(v59, v60);
      v15 = 0;
      v16 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 158);
      goto LABEL_42;
    }

    eUICC::TwoPhaseProv::TwoPhaseProvImpl::PostDataSync(a1, &__p, __src);
    v15 = *(&__src[0] + 1);
    v61 = *&__src[0];
    v62 = *(**&__src[0] + 24);
    if (*(*(a1 + 376) + 80))
    {
      v63 = v62(*&__src[0]);
      if (v63 == 204)
      {
        gBBULogMaskGet(v63, v64);
        v65 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kHttpStatusNoContent != getbpp_rsp->getHttpResponseCode()", "", "", 166);
        gBBULogMaskGet(v65, v66);
        v16 = 0;
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "no profile returned with presence check on, failing\n");
LABEL_35:
        v8 = 28;
        goto LABEL_9;
      }

      v72 = (*(*v61 + 24))(v61);
      if (v72 == 200)
      {
        gBBULogMaskGet(v72, v73);
        v74 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kHttpStatusSuccess != getbpp_rsp->getHttpResponseCode()", "", "", 169);
        gBBULogMaskGet(v74, v75);
        v71 = "profile returned with presence check on, returning success\n";
        goto LABEL_79;
      }
    }

    else
    {
      v67 = v62(*&__src[0]);
      if (v67 == 204)
      {
        gBBULogMaskGet(v67, v68);
        v69 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kHttpStatusNoContent != getbpp_rsp->getHttpResponseCode()", "", "", 176);
        gBBULogMaskGet(v69, v70);
        v71 = "no profile returned, skipping\n";
LABEL_79:
        v16 = 0;
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", v71);
LABEL_80:
        v8 = 0;
        goto LABEL_9;
      }
    }

    v76 = (*(*v61 + 24))(v61);
    if (v76 != 200)
    {
      gBBULogMaskGet(v76, v77);
      v16 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kHttpStatusSuccess == getbpp_rsp->getHttpResponseCode()", "", "", 180);
      goto LABEL_35;
    }

    (*(*v61 + 40))(&v114, v61);
    v8 = eUICC::TwoPhaseProv::CreateDictionaryFromPlistData(&v114, &v121);
    v78 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v114);
    if (v8)
    {
      gBBULogMaskGet(v78, v79);
      v16 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 183);
      goto LABEL_42;
    }

    v80 = eUICC::TwoPhaseProv::SessionData::processAlderResponse(a1, &v121);
    v8 = v80;
    if (v80)
    {
      gBBULogMaskGet(v80, v81);
      v16 = 0;
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 186);
      goto LABEL_42;
    }

    eUICC::TwoPhaseProv::SessionData::getPbiReq(__src, a1);
    if (*&__src[0])
    {
      eUICC::TwoPhaseProv::SessionData::getBpp(&v117, a1);
      v82 = v117;
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v117);
      v83 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(__src);
      if (v82)
      {
        PbiReq = eUICC::TwoPhaseProv::SessionData::getPbiReq(&v113, a1);
        v8 = eUICC::TwoPhaseProv::TwoPhaseProvImpl::PrepareBPPInstallation(PbiReq, &v113, &v123, &v119, a3);
        v86 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v113);
        if (v8)
        {
          gBBULogMaskGet(v86, v87);
          v16 = 0;
          _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 193);
        }

        else
        {
          DataFromPbiRsp = eUICC::TwoPhaseProv::SessionData::extractDataFromPbiRsp(a1, &v123);
          v8 = DataFromPbiRsp;
          if (DataFromPbiRsp)
          {
            gBBULogMaskGet(DataFromPbiRsp, v89);
            v16 = 0;
            _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 196);
          }

          else
          {
            Bpp = eUICC::TwoPhaseProv::SessionData::getBpp(&v112, a1);
            v8 = eUICC::TwoPhaseProv::TwoPhaseProvImpl::LoadBPP(Bpp, &v112, &v123, &v119, a3);
            v91 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v112);
            if (v8)
            {
              gBBULogMaskGet(v91, v92);
              v16 = 0;
              _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 200);
            }

            else
            {
              v93 = eUICC::TwoPhaseProv::ConvertPirToHir(&v123, a1, &v121);
              v8 = v93;
              if (v93)
              {
                gBBULogMaskGet(v93, v94);
                v16 = 0;
                _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 204);
              }

              else
              {
                v95 = eUICC::TwoPhaseProv::SerializeDictIntoPlistData(&v121, &__p);
                v8 = v95;
                if (v95)
                {
                  gBBULogMaskGet(v95, v96);
                  v16 = 0;
                  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 207);
                }

                else
                {
                  eUICC::TwoPhaseProv::TwoPhaseProvImpl::PostDataSync(a1, &__p, __src);
                  v16 = *(&__src[0] + 1);
                  v97 = (*(**&__src[0] + 24))(*&__src[0]);
                  if (v97 != 200)
                  {
                    gBBULogMaskGet(v97, v98);
                    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kHttpStatusSuccess == handlenotification_rsp->getHttpResponseCode()", "", "", 211);
                    goto LABEL_35;
                  }

                  eUICC::TwoPhaseProv::SessionData::getPirSeqNum(__src, a1);
                  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::operator=(&v122, __src);
                  v99 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(__src);
                  v100 = eUICC::TwoPhaseProv::TwoPhaseProvImpl::NotificationSent(v99, &v122, &v123, a3);
                  v8 = v100;
                  if (v100)
                  {
                    gBBULogMaskGet(v100, v101);
                    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 216);
                  }

                  else
                  {
                    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v111, &v123);
                    IsNotificationSentRspSuccess = eUICC::TwoPhaseProv::IsNotificationSentRspSuccess(&v111);
                    v103 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v111);
                    if ((IsNotificationSentRspSuccess & 1) == 0)
                    {
                      gBBULogMaskGet(v103, v104);
                      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "IsNotificationSentRspSuccess( euicc_rsp)", "", "", 217);
                      v8 = 27;
                      goto LABEL_27;
                    }

                    eUICC::TwoPhaseProv::SessionData::getError(__src, a1);
                    v105 = *&__src[0];
                    v106 = ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(__src);
                    if (v105)
                    {
                      gBBULogMaskGet(v106, v107);
                      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "nullptr == sessionData.getError().get()", "", "", 221);
                      eUICC::TwoPhaseProv::SessionData::clearTransientData(a1);
                      v8 = 29;
                      goto LABEL_27;
                    }

                    eUICC::TwoPhaseProv::SessionData::clearTransientData(a1);
                    v108 = eUICC::TwoPhaseProv::TwoPhaseProvImpl::HandleNotifications(a1, a3);
                    v8 = v108;
                    if (!v108)
                    {
                      goto LABEL_9;
                    }

                    gBBULogMaskGet(v108, v109);
                    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret", "", "", 225);
                  }
                }
              }
            }
          }
        }

LABEL_42:
        if (v8 == 28)
        {
          goto LABEL_9;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v83 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(__src);
    }

    gBBULogMaskGet(v83, v84);
    v16 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == vinyl_ret && sessionData.getPbiReq().get() && sessionData.getBpp().get()", "", "", 191);
    goto LABEL_80;
  }

  gBBULogMaskGet(v24, v25);
  v26 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "0 == getDataRsp.contents.perso", "", "", 118);
  gBBULogMaskGet(v26, v27);
  v15 = 0;
  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "two-phase flow unsupported with perso incomplete\n");
  v8 = 29;
LABEL_26:
  v16 = 0;
LABEL_27:
  eUICC::TwoPhaseProv::SessionData::getEUICCSessionId(&v117, a1);
  if (v117)
  {
    eUICC::TwoPhaseProv::SessionData::getError(__src, a1);
    v28 = *&__src[0];
    if (*&__src[0])
    {
      v29 = 1;
    }

    else
    {
      eUICC::TwoPhaseProv::SessionData::getPir(&v110, a1);
      v29 = v110 != 0;
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v110);
      v28 = *&__src[0];
      if (!*&__src[0])
      {
        goto LABEL_36;
      }
    }

    CFRelease(v28);
LABEL_36:
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v117);
    if (v29)
    {
      eUICC::TwoPhaseProv::SessionData::getPir(&v110, a1);
      v32 = eUICC::TwoPhaseProv::ConvertPirToHir(&v110, a1, &v121);
      v34 = v32;
      if (v32)
      {
        gBBULogMaskGet(v32, v33);
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == handle_result_ret", "", "", 239);
      }

      else
      {
        v39 = eUICC::TwoPhaseProv::SerializeDictIntoPlistData(&v121, &__p);
        v34 = v39;
        if (v39)
        {
          gBBULogMaskGet(v39, v40);
          _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == handle_result_ret", "", "", 242);
        }

        else
        {
          eUICC::TwoPhaseProv::TwoPhaseProvImpl::PostDataSync(a1, &__p, __src);
          v43 = __src[0];
          __src[0] = 0uLL;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            if (*(&__src[0] + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&__src[0] + 1));
            }
          }

          v44 = (*(*v43 + 24))(v43);
          if (v44 == 200)
          {
            v16 = *(&v43 + 1);
            v34 = v8;
          }

          else
          {
            gBBULogMaskGet(v44, v45);
            _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kHttpStatusSuccess == handlenotification_rsp->getHttpResponseCode()", "", "", 246);
            v34 = 28;
            v16 = *(&v43 + 1);
          }
        }
      }

      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v110);
      v8 = v34;
    }

    goto LABEL_9;
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v117);
LABEL_9:
  eUICC::TwoPhaseProv::SessionData::clear(a1);
  if (v8 && v119 == 28581)
  {
    gBBULogMaskGet(v17, v18);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Delaying for 6FA5 handling\n");
    v19 = *a3;
    *(v19 + 8) = 0u;
    v19 += 8;
    *(v19 + 240) = 0u;
    *(v19 + 256) = 0u;
    *(v19 + 208) = 0u;
    *(v19 + 224) = 0u;
    *(v19 + 176) = 0u;
    *(v19 + 192) = 0u;
    *(v19 + 144) = 0u;
    *(v19 + 160) = 0u;
    *(v19 + 112) = 0u;
    *(v19 + 128) = 0u;
    *(v19 + 80) = 0u;
    *(v19 + 96) = 0u;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 267) = 0u;
    *v19 = TelephonyRadiosGetRadioVendor() - 2 < 3;
    (*(**a3 + 8))(__src);
    *&__src[0] = 3000000000;
    std::this_thread::sleep_for (__src);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v121);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v122);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v123);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v124);
  if (__p)
  {
    v126 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_29829C42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, const void *a25, const void *a26, const void *a28, const void *a30, void *__p, uint64_t a32)
{
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&a24);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a25);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a26);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a28);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a30);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::HandleRefurbishProfileReference(uint64_t a1, void *a2)
{
  memset(&v66, 0, sizeof(v66));
  v4 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v61);
  v59[1] = 0;
  v60 = 0;
  v58 = v59;
  v59[0] = 0;
  v6 = *(a1 + 376);
  v7 = MEMORY[0x29EDC9528];
  if (!v6)
  {
    goto LABEL_28;
  }

  if ((*(v6 + 135) & 0x8000000000000000) != 0)
  {
    if (*(v6 + 120))
    {
      goto LABEL_4;
    }

LABEL_28:
    gBBULogMaskGet(v4, v5);
    v13 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "options && !options->twoPhaseRefurbRef.empty()", "", "", 378);
    v25 = 0;
    goto LABEL_29;
  }

  if (!*(v6 + 135))
  {
    goto LABEL_28;
  }

LABEL_4:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v45, (v6 + 112), 24);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::operator=();
  v40 = a2;
  v45 = *v7;
  v8 = v45;
  v9 = *(v7 + 72);
  v10 = *(v7 + 64);
  *(&v45 + *(v45 - 3)) = v10;
  v43 = v9;
  v47 = v9;
  v48 = MEMORY[0x29EDC9570] + 16;
  if (v51 < 0)
  {
    operator delete(__p);
  }

  v48 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v49);
  std::iostream::~basic_iostream();
  MEMORY[0x29C286CA0](v52);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    *(&v63[-1].__locale_ + *(v61[0] - 24)) = 2;
    v14 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v61, &v66);
    if ((*(v14 + *(*v14 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v44 = 0;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v45, &v66, 24);
    *(&v46 + *(v45 - 3)) = *(&v46 + *(v45 - 3)) & 0xFFFFFFB5 | 8;
    MEMORY[0x29C2869F0](&v45, &v44);
    v45 = v8;
    *(&v45 + *(v8 - 3)) = v10;
    v47 = v43;
    v48 = MEMORY[0x29EDC9570] + 16;
    if (v51 < 0)
    {
      operator delete(__p);
    }

    v48 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v49);
    std::iostream::~basic_iostream();
    MEMORY[0x29C286CA0](v52);
    v15 = v44;
    if (v12 >= v11)
    {
      v16 = v10;
      v17 = v8;
      v18 = v12 - v13;
      v19 = v12 - v13 + 1;
      __src = v13;
      if (v19 < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      if (2 * (v11 - v13) > v19)
      {
        v19 = 2 * (v11 - v13);
      }

      if ((v11 - v13) >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        v13 = operator new(v20);
      }

      else
      {
        v13 = 0;
      }

      v11 = &v13[v20];
      v13[v18] = v15;
      v12 = &v13[v18 + 1];
      memcpy(v13, __src, v18);
      if (__src)
      {
        operator delete(__src);
      }

      v8 = v17;
      v10 = v16;
    }

    else
    {
      *v12++ = v44;
    }
  }

  v56[0] = v13;
  v56[1] = (v12 - v13);
  v21 = DERDecodeSeqContentInit(v56, v57);
  v7 = MEMORY[0x29EDC9528];
  if (v21)
  {
    gBBULogMaskGet(v21, v22);
    v23 = 391;
    v24 = "DR_Success == der_ret";
    goto LABEL_26;
  }

  ProfilesInfoList = eUICC::TwoPhaseProv::TwoPhaseProvImpl::GetProfilesInfoList(v21, &v60, a2);
  v25 = ProfilesInfoList;
  if (ProfilesInfoList)
  {
    gBBULogMaskGet(ProfilesInfoList, v29);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 394);
    goto LABEL_29;
  }

  v30 = eUICC::TwoPhaseProv::ExtractProfileInfo(&v60, &v58);
  v25 = v30;
  if (v30)
  {
    gBBULogMaskGet(v30, v31);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 397);
    goto LABEL_29;
  }

  __srca = v13;
  while (1)
  {
    v32 = DERDecodeSeqNext(v57, v53);
    if (v32)
    {
      break;
    }

    v46 = 0;
    v47 = 0;
    v45 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v45, v56[0], v54 + v55, v54 + v55 - v56[0]);
    v34 = std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::find<std::vector<unsigned char>>(&v58, &v45);
    v36 = v34;
    if (v59 == v34)
    {
      goto LABEL_49;
    }

    gBBULogMaskGet(v34, v35);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "matched refurb profileReference\n");
    Value = CFBooleanGetValue(v36[8]);
    if (Value && (Value = eUICC::TwoPhaseProv::TwoPhaseProvImpl::DisableProfile(Value, v36 + 7, v40), v25 = Value, Value))
    {
      gBBULogMaskGet(Value, v38);
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 410);
    }

    else
    {
      v34 = eUICC::TwoPhaseProv::TwoPhaseProvImpl::DeleteProfile(Value, v36 + 7, v40);
      v25 = v34;
      if (!v34)
      {
LABEL_49:
        v56[0] = (v54 + v55);
        if (v54 + v55 <= v12)
        {
          v39 = 1;
        }

        else
        {
          gBBULogMaskGet(v34, v35);
          _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "der_item.data <= (profile_ref_input.data() + profile_ref_input.size())", "", "", 419);
          v39 = 0;
          v25 = 27;
        }

        goto LABEL_52;
      }

      gBBULogMaskGet(v34, v35);
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 414);
    }

    v39 = 0;
LABEL_52:
    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if ((v39 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  if (v32 == 1)
  {
LABEL_57:
    v13 = __srca;
    goto LABEL_29;
  }

  v13 = __srca;
  gBBULogMaskGet(v32, v33);
  v23 = 421;
  v24 = "der_ret == DR_EndOfSequence";
LABEL_26:
  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", v24, "", "", v23);
  v25 = 27;
LABEL_29:
  std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(&v58, v59[0]);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v60);
  if (v13)
  {
    operator delete(v13);
  }

  v61[0] = *v7;
  v26 = *(v7 + 72);
  *(v61 + *(v61[0] - 24)) = *(v7 + 64);
  v61[2] = v26;
  v62 = MEMORY[0x29EDC9570] + 16;
  if (v64 < 0)
  {
    operator delete(v63[7].__locale_);
  }

  v62 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v63);
  std::iostream::~basic_iostream();
  MEMORY[0x29C286CA0](&v65);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  return v25;
}

void sub_29829CE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::destroy(&a64, a65);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a66);
  if (__p)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a67);
  if (*(v67 - 89) < 0)
  {
    operator delete(STACK[0x2F0]);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::HandleNotifications(eUICC::TwoPhaseProv::SessionData *a1, void *a2)
{
  v45 = 0;
  v46[0] = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  __p = 0;
  v40 = 0;
  v41 = 0;
  v4 = eUICC::TwoPhaseProv::TwoPhaseProvImpl::ListInstallationNotifications(a1, v46, a2);
  NotificationListSeqNumbers = v4;
  if (v4)
  {
    gBBULogMaskGet(v4, v5);
    v7 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 439);
LABEL_7:
    eUICC::TwoPhaseProv::SessionData::clearTransientData(a1);
    goto LABEL_8;
  }

  v38 = v46[0];
  if (v46[0])
  {
    CFRetain(v46[0]);
  }

  NotificationListSeqNumbers = eUICC::TwoPhaseProv::ExtractNotificationListSeqNumbers(&v38, &v42);
  v8 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v38);
  if (NotificationListSeqNumbers)
  {
    gBBULogMaskGet(v8, v9);
    v7 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 442);
    goto LABEL_7;
  }

  v11 = v42;
  v12 = v43;
  if (v42 == v43)
  {
    v7 = 0;
    NotificationListSeqNumbers = 0;
    goto LABEL_7;
  }

  v7 = 0;
  while (1)
  {
    v13 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v37, v11);
    v35 = 0;
    v36 = 0;
    v34 = 0;
    NotificationListForSeqNum = eUICC::TwoPhaseProv::TwoPhaseProvImpl::RetrieveNotificationListForSeqNum(v13, &v37, v46, a2);
    NotificationListSeqNumbers = NotificationListForSeqNum;
    if (NotificationListForSeqNum)
    {
      gBBULogMaskGet(NotificationListForSeqNum, v15);
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 448);
LABEL_17:
      v16 = 2;
      v17 = 1;
      goto LABEL_18;
    }

    v33 = v46[0];
    if (v46[0])
    {
      CFRetain(v46[0]);
    }

    IsNotificationForTwoPhase = eUICC::TwoPhaseProv::IsNotificationForTwoPhase(&v33, &v36);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v33);
    if (IsNotificationForTwoPhase)
    {
      v19 = eUICC::TwoPhaseProv::ConvertPirToHir(&v36, a1, &v34);
      NotificationListSeqNumbers = v19;
      if (v19)
      {
        gBBULogMaskGet(v19, v20);
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 456);
        goto LABEL_17;
      }

      v21 = eUICC::TwoPhaseProv::SerializeDictIntoPlistData(&v34, &__p);
      NotificationListSeqNumbers = v21;
      if (v21)
      {
        gBBULogMaskGet(v21, v22);
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 459);
        goto LABEL_17;
      }

      eUICC::TwoPhaseProv::TwoPhaseProvImpl::PostDataSync(a1, &__p, &v32);
      v23 = v32;
      v32 = 0uLL;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (*(&v32 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
        }
      }

      v24 = (*(*v23 + 24))(v23);
      if (v24 == 200)
      {
        v26 = eUICC::TwoPhaseProv::TwoPhaseProvImpl::NotificationSent(v24, &v37, v46, a2);
        NotificationListSeqNumbers = v26;
        if (v26)
        {
          gBBULogMaskGet(v26, v27);
          _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 466);
          v16 = 2;
          v17 = 1;
        }

        else
        {
          ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v31, v46);
          IsNotificationSentRspSuccess = eUICC::TwoPhaseProv::IsNotificationSentRspSuccess(&v31);
          v29 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v31);
          if (IsNotificationSentRspSuccess)
          {
            NotificationListSeqNumbers = 0;
            v17 = 0;
            v16 = 0;
          }

          else
          {
            gBBULogMaskGet(v29, v30);
            _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "IsNotificationSentRspSuccess( euicc_rsp)", "", "", 468);
            v16 = 2;
            v17 = 1;
            NotificationListSeqNumbers = 27;
          }
        }
      }

      else
      {
        gBBULogMaskGet(v24, v25);
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kHttpStatusSuccess == handlenotification_rsp->getHttpResponseCode()", "", "", 463);
        v16 = 2;
        v17 = 1;
        NotificationListSeqNumbers = 28;
      }

      v7 = *(&v23 + 1);
    }

    else
    {
      NotificationListSeqNumbers = 0;
      v17 = 0;
      v16 = 4;
    }

LABEL_18:
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v34);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v35);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v36);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v37);
    if ((v16 | 4) != 4)
    {
      break;
    }

    if (++v11 == v12)
    {
      goto LABEL_7;
    }
  }

  if (v17)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  __p = &v42;
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v45);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v46);
  return NotificationListSeqNumbers;
}

void sub_29829D390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, const void *a18, const void *a19, const void *a23, const void *a27, __int16 a31, char a32, char a33, char *__p, char *a35, uint64_t a36, char a37)
{
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a13);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a18);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a19);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a23);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a27);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  __p = &a37;
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v29 - 104));
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v29 - 96));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::GetProvisioningSessions(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, void *a5)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  __p = 0;
  v28 = 0;
  v29 = 0;
  v8 = ctu::cf::assign();
  if ((v8 & 1) == 0)
  {
    gBBULogMaskGet(v8, v9);
    v14 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 572);
    gBBULogMaskGet(v14, v15);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Failed to assign request data\n");
LABEL_5:
    v13 = 17;
    goto LABEL_6;
  }

  v10 = (*(**a5 + 40))(*a5, &v30, &__p, a4);
  v11 = VinylControllerMapBBUReturnToVinylResult(v10);
  v13 = v11;
  if (v11)
  {
    gBBULogMaskGet(v11, v12);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 575);
    goto LABEL_6;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v24, __p, v28, v28 - __p);
  v33 = 0;
  v17 = ctu::cf::convert_copy();
  v19 = v17;
  if (v17)
  {
    v20 = *a3;
    *a3 = v33;
    v34 = v20;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v34);
  }

  v21 = v24;
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if ((v19 & 1) == 0)
  {
    gBBULogMaskGet(v21, v18);
    v22 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 581);
    gBBULogMaskGet(v22, v23);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Failed to assign response data\n");
    goto LABEL_5;
  }

  v13 = 0;
LABEL_6:
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v13;
}

void sub_29829D658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 72);
  if (v20)
  {
    *(v18 - 64) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *eUICC::TwoPhaseProv::TwoPhaseProvImpl::PostDataSync@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = operator new(0xA0uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 850045863;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 10) = 0;
  *(v6 + 11) = 1018212795;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 124) = 0u;
  *v6 = &unk_2A1EB2B70;
  v30 = v6;
  v31 = v6;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v6);
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v25[1] = 0;
  v25[2] = 0;
  ctu::Http::HttpRequest::create();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v26, v27[0]);
  (*(*v28 + 8))(v28, a1[8]);
  v7 = v28;
  dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>(&v30, &v26);
  (*(*v7 + 16))(v7, v26);
  if (v26)
  {
    _Block_release(v26);
  }

  (*(*v28 + 96))(v28, 60.0);
  v8 = v28;
  v9 = a1[9];
  v25[0] = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  (*(*v8 + 88))(v8, v25);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v25);
  (*(*v28 + 56))(v28, a2);
  eUICC::TwoPhaseProv::StringifyDataBuffer(a2, 0, __p);
  eUICC::TwoPhaseProv::LogOversizedPlain(__p, v10);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v21[1] = 0;
  v22 = 0;
  v21[0] = 0;
  (*(*v28 + 40))(v28, v21);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(&v30, a3);
  gBBULogMaskGet(v11, v12);
  v13 = (*(**a3 + 16))();
  v14 = (*(**a3 + 24))();
  v15 = (*(**a3 + 32))();
  _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "result %d code %d raw_error %ld\n", v13, v14, v15);
  (*(**a3 + 48))(v19);
  eUICC::TwoPhaseProv::LogOversizedPlain(v19, v16);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v17 = v30;
  if (v30 && !atomic_fetch_add(v30 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v17 + 16))(v17);
  }

  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v31);
}

void sub_29829DA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v35 = *(v32 + 8);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(v33 - 56);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v37 = *(v33 - 48);
  if (v37)
  {
    if (!atomic_fetch_add(v37 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v37 + 16))(v37, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v33 - 40));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::PrepareBPPInstallation(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, void *a5)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  __p = 0;
  v28 = 0;
  v29 = 0;
  v8 = ctu::cf::assign();
  if ((v8 & 1) == 0)
  {
    gBBULogMaskGet(v8, v9);
    v14 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 601);
    gBBULogMaskGet(v14, v15);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Failed to assign request data\n");
LABEL_5:
    v13 = 17;
    goto LABEL_6;
  }

  v10 = (*(**a5 + 40))(*a5, &v30, &__p, a4);
  v11 = VinylControllerMapBBUReturnToVinylResult(v10);
  v13 = v11;
  if (v11)
  {
    gBBULogMaskGet(v11, v12);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 603);
    goto LABEL_6;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v24, __p, v28, v28 - __p);
  v33 = 0;
  v17 = ctu::cf::convert_copy();
  v19 = v17;
  if (v17)
  {
    v20 = *a3;
    *a3 = v33;
    v34 = v20;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v34);
  }

  v21 = v24;
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if ((v19 & 1) == 0)
  {
    gBBULogMaskGet(v21, v18);
    v22 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 609);
    gBBULogMaskGet(v22, v23);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Failed to assign response data\n");
    goto LABEL_5;
  }

  v13 = 0;
LABEL_6:
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v13;
}

void sub_29829DD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 72);
  if (v20)
  {
    *(v18 - 64) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::LoadBPP(uint64_t a1, CFDataRef *a2, const void **a3, uint64_t a4, void *a5)
{
  v46 = 0;
  v45 = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  v7 = *MEMORY[0x29EDB8EE8];
  do
  {
    v44 = 0;
    v42 = 0;
    v43 = 0;
    v40 = 0;
    v41 = 0;
    __p = 0;
    v38 = 0;
    v39 = 0;
    NextBppSegment = eUICC::TwoPhaseProv::GetNextBppSegment(&v45, a2, &v46, &v44);
    v10 = NextBppSegment;
    if (NextBppSegment)
    {
      gBBULogMaskGet(NextBppSegment, v9);
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 634);
LABEL_4:
      v11 = 1;
      goto LABEL_5;
    }

    if (!v44)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_5;
    }

    BytePtr = CFDataGetBytePtr(*a2);
    v14 = CFDataCreateWithBytesNoCopy(v6, &BytePtr[v46], v44, v7);
    v15 = v43;
    v43 = v14;
    v48[0] = v15;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v48);
    v16 = ctu::cf::assign();
    if ((v16 & 1) == 0)
    {
      gBBULogMaskGet(v16, v17);
      v21 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 645);
      gBBULogMaskGet(v21, v22);
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Failed to assign request data\n");
LABEL_20:
      v11 = 1;
      v10 = 17;
      goto LABEL_5;
    }

    v18 = (*(**a5 + 40))(*a5, &v40, &__p, a4);
    v19 = VinylControllerMapBBUReturnToVinylResult(v18);
    v10 = v19;
    if (v19)
    {
      gBBULogMaskGet(v19, v20);
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 647);
      goto LABEL_4;
    }

    if (v38 != __p)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v34, __p, v38, v38 - __p);
      v47 = 0;
      v23 = ctu::cf::convert_copy();
      v25 = v23;
      if (v23)
      {
        v26 = *a3;
        *a3 = v47;
        v48[0] = v26;
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v48);
      }

      v27 = v34;
      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v25)
      {
        v10 = 0;
        goto LABEL_4;
      }

      gBBULogMaskGet(v27, v24);
      v28 = _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 655);
      gBBULogMaskGet(v28, v29);
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Failed to assign response data\n");
      goto LABEL_20;
    }

    v10 = 0;
    v11 = 0;
    v46 += v44;
LABEL_5:
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v43);
    if (v45 == 7)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }
  }

  while ((v12 & 1) == 0);
  return v10;
}

void sub_29829E0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::NotificationSent(uint64_t a1, CFDataRef *a2, const void **a3, void *a4)
{
  v24 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v6 = eUICC::TwoPhaseProv::ComposeNsr(a2, &v24);
  v8 = v6;
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 489);
  }

  else
  {
    ctu::cf::assign();
    v9 = (*(**a4 + 40))(*a4, &v20, &v17, &v23);
    v10 = VinylControllerMapBBUReturnToVinylResult(v9);
    v8 = v10;
    if (v10)
    {
      gBBULogMaskGet(v10, v11);
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 493);
    }

    else
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v17, v18, v18 - v17);
      v25 = 0;
      if (ctu::cf::convert_copy())
      {
        v12 = *a3;
        *a3 = v25;
        v26 = v12;
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v26);
      }

      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      v8 = 0;
    }
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v24);
  return v8;
}

void sub_29829E2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v21 - 56));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::Perform(uint64_t a1, uint64_t *a2)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl,ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::sInstance);
  v4 = xmmword_2A13A8D98;
  if (!xmmword_2A13A8D98)
  {
    v5 = operator new(0x180uLL);
    *(v5 + 21) = 0u;
    *(v5 + 22) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 20) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 18) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 13) = 0u;
    *(v5 + 14) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *v5 = 0u;
    *(v5 + 367) = 0;
    std::shared_ptr<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::shared_ptr[abi:ne200100]<eUICC::TwoPhaseProv::TwoPhaseProvImpl,0>(&v12, v5);
    v6 = v12;
    v12 = 0uLL;
    v7 = *(&xmmword_2A13A8D98 + 1);
    xmmword_2A13A8D98 = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (*(&v12 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
      }
    }

    v4 = xmmword_2A13A8D98;
  }

  v8 = *(&xmmword_2A13A8D98 + 1);
  if (*(&xmmword_2A13A8D98 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8D98 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl,ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::sInstance);
  v9 = eUICC::TwoPhaseProv::TwoPhaseProvImpl::Perform(v4, a1, a2);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  pthread_mutex_lock(&ctu::Singleton<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl,ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::sInstance);
  v10 = *(&xmmword_2A13A8D98 + 1);
  xmmword_2A13A8D98 = 0uLL;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl,ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::sInstance);
  return v9;
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::ListInstallationNotifications(uint64_t a1, const void **a2, void *a3)
{
  LODWORD(v15) = -2130433857;
  WORD2(v15) = 1794;
  BYTE6(v15) = 0x80;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v18, &v15, &v15 + 7, 7uLL);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v5 = (*(**a3 + 40))(*a3, &v18, &v15, &v14);
  v6 = VinylControllerMapBBUReturnToVinylResult(v5);
  v8 = v6;
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 309);
  }

  else
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v15, v16, v16 - v15);
    v21 = 0;
    if (ctu::cf::convert_copy())
    {
      v9 = *a2;
      *a2 = v21;
      v22 = v9;
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v22);
    }

    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  return v8;
}

void sub_29829E600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v20 = *(v18 - 56);
  if (v20)
  {
    *(v18 - 48) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::RetrieveNotificationListForSeqNum(uint64_t a1, CFDataRef *a2, const void **a3, void *a4)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v6 = eUICC::TwoPhaseProv::ComposeRnl(a2, &v24);
  v8 = v6;
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 328);
  }

  else
  {
    ctu::cf::assign();
    v9 = (*(**a4 + 40))(*a4, &v21, &v18, &v17);
    v10 = VinylControllerMapBBUReturnToVinylResult(v9);
    v8 = v10;
    if (v10)
    {
      gBBULogMaskGet(v10, v11);
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 332);
    }

    else
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v18, v19, v19 - v18);
      v25 = 0;
      if (ctu::cf::convert_copy())
      {
        v12 = *a3;
        *a3 = v25;
        v26 = v12;
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v26);
      }

      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      v8 = 0;
    }
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v24);
  return v8;
}

void sub_29829E7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v21 = *(v19 - 80);
  if (v21)
  {
    *(v19 - 72) = v21;
    operator delete(v21);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v19 - 56));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::GetProfilesInfoList(uint64_t a1, const void **a2, void *a3)
{
  v21[2] = *MEMORY[0x29EDCA608];
  v20 = 0x709F5A045C062DBFLL;
  LOBYTE(v21[0]) = -30;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v15, &v20, v21 + 1, 9uLL);
  v20 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v14 = 0;
  v5 = (*(**a3 + 40))(*a3, &v15, &v20, &v14);
  v6 = VinylControllerMapBBUReturnToVinylResult(v5);
  v8 = v6;
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 354);
  }

  else
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v20, v21[0], v21[0] - v20);
    v18 = 0;
    if (ctu::cf::convert_copy())
    {
      v9 = *a2;
      *a2 = v18;
      v19 = v9;
      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v19);
    }

    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  if (v20)
  {
    v21[0] = v20;
    operator delete(v20);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return v8;
}

void sub_29829E9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 48);
  if (v21)
  {
    *(v19 - 40) = v21;
    operator delete(v21);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, uint64_t a3)
{
  v3 = a3;
  a1[22] = 0;
  v6 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v9 = MEMORY[0x29EDC9528];
  v10 = *(MEMORY[0x29EDC9528] + 24);
  v11 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x29EDC9590] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, v3);
  return a1;
}

void sub_29829ECA8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C286CA0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C286CA0](a1 + 128);
  return a1;
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x29C2869E0](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

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

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x29EDC93D0]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_29829F068(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x29829F028);
  }

  __cxa_rethrow();
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::DisableProfile(uint64_t a1, CFDataRef *a2, void *a3)
{
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v4 = eUICC::TwoPhaseProv::ComposeDisableReq(a2, &v26);
  v6 = v4;
  if (v4)
  {
    gBBULogMaskGet(v4, v5);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 514);
  }

  else
  {
    ctu::cf::assign();
    v7 = (*(**a3 + 40))(*a3, &v20, &v17, &v23);
    v8 = VinylControllerMapBBUReturnToVinylResult(v7);
    v6 = v8;
    if (v8)
    {
      gBBULogMaskGet(v8, v9);
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 518);
    }

    else
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v17, v18, v18 - v17);
      v27 = 0;
      if (ctu::cf::convert_copy())
      {
        v10 = v25;
        v25 = v27;
        v28 = v10;
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v28);
      }

      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      v11 = eUICC::TwoPhaseProv::ExtractDisableResult(&v25, &v24);
      if (v11)
      {
        gBBULogMaskGet(v11, v12);
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 522);
        v6 = 27;
      }

      else if (v24)
      {
        v6 = 0;
      }

      else
      {
        gBBULogMaskGet(v11, v12);
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 523);
        v6 = 29;
      }
    }
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v25);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v26);
  return v6;
}

void sub_29829F368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v20 - 48));
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v20 - 40));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::TwoPhaseProvImpl::DeleteProfile(uint64_t a1, CFDataRef *a2, void *a3)
{
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v4 = eUICC::TwoPhaseProv::ComposeDeleteReq(a2, &v26);
  v6 = v4;
  if (v4)
  {
    gBBULogMaskGet(v4, v5);
    _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 542);
  }

  else
  {
    ctu::cf::assign();
    v7 = (*(**a3 + 40))(*a3, &v20, &v17, &v23);
    v8 = VinylControllerMapBBUReturnToVinylResult(v7);
    v6 = v8;
    if (v8)
    {
      gBBULogMaskGet(v8, v9);
      _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 546);
    }

    else
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v17, v18, v18 - v17);
      v27 = 0;
      if (ctu::cf::convert_copy())
      {
        v10 = v25;
        v25 = v27;
        v28 = v10;
        ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v28);
      }

      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      v11 = eUICC::TwoPhaseProv::ExtractDeleteResult(&v25, &v24);
      if (v11)
      {
        gBBULogMaskGet(v11, v12);
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 550);
        v6 = 27;
      }

      else if (v24)
      {
        v6 = 0;
      }

      else
      {
        gBBULogMaskGet(v11, v12);
        _BBULog(0, 0xFFFFFFFFLL, "VinylControllerTwoPhaseProvisioning", "", "Condition <<%s>> failed %s %s/%d\n", "success", "", "", 551);
        v6 = 29;
      }
    }
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v25);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v26);
  return v6;
}

void sub_29829F60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v20 - 48));
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v20 - 40));
  _Unwind_Resume(a1);
}

void *eUICC::TwoPhaseProv::TwoPhaseProvImpl::create_default_global@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x180uLL);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 367) = 0;

  return std::shared_ptr<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::shared_ptr[abi:ne200100]<eUICC::TwoPhaseProv::TwoPhaseProvImpl,0>(a1, v2);
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::operator=(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v5);
  }

  return a1;
}

void std::vector<ctu::cf::CFSharedRef<__CFData const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C286BB0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_29829F950(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,eUICC::TwoPhaseProv::ProfileProperties>>>::find<std::vector<unsigned char>>(uint64_t a1, unsigned __int8 **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<unsigned char,std::allocator<unsigned char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<unsigned char,std::allocator<unsigned char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void *std::shared_ptr<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::shared_ptr[abi:ne200100]<eUICC::TwoPhaseProv::TwoPhaseProvImpl,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB3AF0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29829FA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<eUICC::TwoPhaseProv::TwoPhaseProvImpl *,std::shared_ptr<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::__shared_ptr_default_delete<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl>,std::allocator<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<eUICC::TwoPhaseProv::TwoPhaseProvImpl *,std::shared_ptr<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::__shared_ptr_default_delete<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl>,std::allocator<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 80);
    if (v3)
    {
      CFRelease(v3);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((a2 + 72));
    v4 = *(a2 + 64);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a2 + 56);
    if (v5)
    {
      CFRelease(v5);
    }

    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 48));
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 40));
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 32));
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 24));
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 16));
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((a2 + 8));
    v6 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(a2);

    operator delete(v6);
  }
}

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>::~PthreadMutexGuardPolicy, &ctu::Singleton<eUICC::TwoPhaseProv::TwoPhaseProvImpl,eUICC::TwoPhaseProv::TwoPhaseProvImpl,ctu::PthreadMutexGuardPolicy<eUICC::TwoPhaseProv::TwoPhaseProvImpl>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t eUICC::ClearMetadata::GetListOfIccids(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1;
  gBBULogMaskGet(a1, a2);
  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Requesting Profile List\n");
  LODWORD(v40[0]) = 1543777727;
  WORD2(v40[0]) = 23042;
  BYTE6(v40[0]) = -107;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v58, v40, v40 + 7, 7uLL);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v53 = 0;
  (*(**a3 + 40))(*a3, &v58, &v55, &v53);
  __p = 0;
  v51 = 0;
  v52 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v55, v56, v56 - v55);
  v40[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v40[0];
    v54 = v40[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = __p;
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  gBBULogMaskGet(v8, v6);
  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Extracting Profile List\n");
  Length = CFDataGetLength(v7);
  v10 = *MEMORY[0x29EDB8ED8];
  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], Length, v7);
  v45 = 0;
  v46 = MutableCopy;
  MutableBytePtr = 0;
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  v45 = CFDataGetLength(MutableCopy);
  v12 = DERDecodeSeqContentInit(&MutableBytePtr, v49);
  if (v12)
  {
    gBBULogMaskGet(v12, v13);
    v14 = 90;
LABEL_8:
    v15 = "DR_Success == der_ret";
LABEL_9:
    _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "Condition <<%s>> failed %s %s/%d\n", v15, "", "", v14);
    v16 = 27;
    goto LABEL_10;
  }

  v18 = DERDecodeSeqNext(v49, &v47);
  if (v18 || v47 != 0xA00000000000002DLL)
  {
    gBBULogMaskGet(v18, v19);
    v14 = 93;
    v15 = "DR_Success == der_ret && TAG_PILR == dec.tag";
    goto LABEL_9;
  }

  v20 = DERDecodeSeqContentInit(v48, v49);
  if (v20)
  {
    gBBULogMaskGet(v20, v21);
    v14 = 96;
    goto LABEL_8;
  }

  v22 = DERDecodeSeqNext(v49, &v47);
  if (v22 || v47 != 0xA000000000000000)
  {
    gBBULogMaskGet(v22, v23);
    v14 = 99;
    v15 = "DR_Success == der_ret && TAG_PILR_OK == dec.tag";
    goto LABEL_9;
  }

  v24 = DERDecodeSeqContentInit(v48, v49);
  if (v24)
  {
    gBBULogMaskGet(v24, v25);
    v14 = 102;
    goto LABEL_8;
  }

  v16 = 0;
  while (1)
  {
    v26 = DERDecodeSeqNext(v49, &v47);
    if (v26 == 1)
    {
      break;
    }

    v42 = 0;
    cf = 0;
    v28 = DERDecodeSeqContentInit(v48, v43);
    if (v28)
    {
      gBBULogMaskGet(v28, v29);
      v30 = 112;
    }

    else
    {
      if (v47 != 0xE000000000000003)
      {
        gBBULogMaskGet(v28, v29);
        v30 = 114;
        v31 = "DR_Success == der_ret && TAG_PI == dec.tag";
        goto LABEL_34;
      }

      if (v33)
      {
        gBBULogMaskGet(v33, v34);
        v30 = 122;
      }

      else
      {
        v35 = CFDataCreate(v10, v40[0], v40[1]);
        v36 = cf;
        cf = v35;
        v61 = v36;
        ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&v61);
        v37 = DERParseInteger(&v41, &v42);
        if (!v37)
        {
          if (!v5 || v42 == 1)
          {
            std::vector<ctu::cf::CFSharedRef<__CFData const>>::emplace_back<ctu::cf::CFSharedRef<__CFData const> const&>(a2, &cf);
          }

          v32 = 0;
          goto LABEL_35;
        }

        gBBULogMaskGet(v37, v38);
        v30 = 127;
      }
    }

    v31 = "DR_Success == der_ret";
LABEL_34:
    _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "Condition <<%s>> failed %s %s/%d\n", v31, "", "", v30);
    v32 = 1;
    v16 = 27;
LABEL_35:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v32)
    {
      goto LABEL_10;
    }
  }

  gBBULogMaskGet(v26, v27);
  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::GetListOfIccids: Successfully populated ICCID list!\n");
LABEL_10:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  return v16;
}

void sub_2982A0020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a24);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v31 - 152));
  v33 = *(v31 - 144);
  if (v33)
  {
    *(v31 - 136) = v33;
    operator delete(v33);
  }

  v34 = *(v31 - 120);
  if (v34)
  {
    *(v31 - 112) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::ClearMetadata::ClearMetadataForIccids(CFDataRef **a1, void *a2)
{
  __p[3] = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      *__p = xmmword_2982C42C8;
      *(&__p[1] + 5) = 0x8002E100000000;
      v13 = 0;
      v14 = 0;
      v12 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v12, __p, &__p[2] + 5, 0x15uLL);
      BytePtr = CFDataGetBytePtr(*v2);
      v6 = v12;
      v7 = *BytePtr;
      *(v12 + 13) = *(BytePtr + 2);
      *(v6 + 5) = v7;
      memset(__p, 0, 24);
      v11 = 0;
      v8 = (*(**a2 + 40))(*a2, &v12, __p, &v11);
      gBBULogMaskGet(v8, v9);
      _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::ClearMetadataForIccids: Attempted metadata clear for ICCID\n");
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v12)
      {
        v13 = v12;
        operator delete(v12);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return 0;
}

uint64_t eUICC::ClearMetadata::Perform(uint64_t a1, void *a2)
{
  gBBULogMaskGet(a1, a2);
  _BBULog(0, 0xFFFFFFFFLL, "VinylClearMetadata", "", "VinylClearMetadata::Perform: onlyBootstrap=%d\n", a1);
  memset(v5, 0, sizeof(v5));
  eUICC::ClearMetadata::GetListOfIccids(a1, v5, a2);
  eUICC::ClearMetadata::ClearMetadataForIccids(v5, a2);
  v6 = v5;
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::__destroy_vector::operator()[abi:ne200100](&v6);
  return 0;
}

void sub_2982A02F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<ctu::cf::CFSharedRef<__CFData const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

CFTypeRef std::allocator_traits<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>::construct[abi:ne200100]<ctu::cf::CFSharedRef<__CFData const>,ctu::cf::CFSharedRef<__CFData const> const&,void,0>(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  result = *a3;
  *a2 = *a3;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t BBUpdaterCommon::BBUASCIIDigitToInt(__darwin_ct_rune_t this, unsigned int a2)
{
  result = (this - 48);
  if (result > 9)
  {
    v5 = __toupper(this);
    v6 = v5 - 55;
    if (v6 >= a2 || (v5 - 65) >= 0x1A)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

unint64_t BBUpdaterCommon::BBUStringToUInt32(const char *a1, int __base)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return strtoul(a1, 0, __base);
}

BOOL BBUpdaterCommon::BBUFileExists(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v2) == 0;
}

uint64_t BBUpdaterCommon::BBUIsDirectoryEmpty(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = opendir(a1);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  while (1)
  {
    v3 = readdir(v2);
    if (!v3)
    {
      break;
    }

    if (v3->d_name[0] != 46 || v3->d_name[1] && (v3->d_name[1] != 46 || v3->d_name[2]))
    {
      v4 = 0;
      goto LABEL_13;
    }
  }

  v4 = 1;
LABEL_13:
  closedir(v2);
  return v4;
}

DIR *BBUpdaterCommon::BBUReadDirectory(const char *a1, char **a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v9 = 25;
          }

          else
          {
            v9 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v9);
          __dst[1] = d_namlen;
          v13 = v9 | 0x8000000000000000;
          __dst[0] = v8;
        }

        else
        {
          HIBYTE(v13) = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            goto LABEL_14;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
LABEL_14:
        *(v8 + d_namlen) = 0;
        v10 = std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(a2, 0, 0, __dst);
        v11 = *a2;
        *v10 = *a2;
        *(v10 + 1) = a2;
        *(v11 + 1) = v10;
        *a2 = v10;
        ++a2[2];
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__dst[0]);
        }

        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_2982A0598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterCommon::BBUGetFileName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  ctu::tokenize();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(v6 - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v6 - 24), *(v6 - 16));
  }

  else
  {
    v3 = *(v6 - 24);
    a2->__r_.__value_.__r.__words[2] = *(v6 - 8);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }

  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_2982A0664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  *(v16 - 24) = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 24));
  _Unwind_Resume(a1);
}

void BBUpdaterCommon::BBUStripCharacters(uint64_t **a1@<X0>, const std::string *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 23);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v8 = operator new[](v7 + 1);
  v9 = v8;
  v10 = v8;
  if (v7)
  {
    v11 = 0;
    v12 = v6 >> 63;
    v13 = 1;
    v10 = v8;
    do
    {
      if (v12)
      {
        v14 = *a1;
      }

      else
      {
        v14 = a1;
      }

      if (std::string::find(a2, *(v14 + v11), 0) == -1)
      {
        if (*(a1 + 23) >= 0)
        {
          v15 = a1;
        }

        else
        {
          v15 = *a1;
        }

        *v10++ = *(v15 + v11);
      }

      v11 = v13;
      v16 = *(a1 + 23);
      v12 = v16 >> 63;
      if ((v16 & 0x80000000) != 0)
      {
        v16 = a1[1];
      }
    }

    while (v16 > v13++);
  }

  *v10 = 0;
  std::string::basic_string[abi:ne200100]<0>(a3, v9);

  operator delete[](v9);
}

void *BBUpdaterCommon::BBUCFStringToCPPString@<X0>(const __CFString *this@<X0>, void *a2@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  CFStringGetCString(this, buffer, 1024, 0x8000100u);
  return std::string::basic_string[abi:ne200100]<0>(a2, buffer);
}

void BBUpdaterCommon::BBUStringToArgv(char *a1, uint64_t a2)
{
  std::operator+<char>();
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }

  *a1 = v19;
  v4 = v20;
  *(a1 + 2) = v20;
  v5 = HIBYTE(v4);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x29EDCA600];
    do
    {
      while (1)
      {
        v9 = a1[23] >= 0 ? a1 : *a1;
        v10 = v9[v7];
        v11 = (v10 & 0x80000000) != 0 ? __maskrune(v10, 0x4000uLL) : *(v8 + 4 * v10 + 60) & 0x4000;
        if (v7 >= v6 || !v11)
        {
          break;
        }

        if (a1[23] >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        v12[v7++] = 0;
      }

      if (a1[23] >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      *&v19 = &v13[v7];
      std::vector<char *>::push_back[abi:ne200100](a2, &v19);
      v14 = v7 + 1;
      do
      {
        v15 = v14;
        if (a1[23] >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        v17 = v16[v15];
        if ((v17 & 0x80000000) != 0)
        {
          v18 = __maskrune(v17, 0x4000uLL);
        }

        else
        {
          v18 = *(v8 + 4 * v17 + 60) & 0x4000;
        }

        v14 = v15 + 1;
      }

      while (v15 < v6 && !v18);
      v7 = v15;
    }

    while (v15 < v6);
  }

  *&v19 = 0;
  std::vector<char *>::push_back[abi:ne200100](a2, &v19);
}

void std::vector<char *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<ctu::cf::CFSharedRef<__CFData const>>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

pthread_t BBUpdaterCommon::BBUThreadSpawn(BBUpdaterCommon *this, void *(__cdecl *a2)(void *), void *(*a3)(void *), void *a4)
{
  v4 = a4;
  v11 = *MEMORY[0x29EDCA608];
  v9 = 0;
  pthread_attr_init(&v10);
  if (v4)
  {
    pthread_attr_setdetachstate(&v10, 2);
  }

  v7 = pthread_create(&v9, &v10, a2, a3);
  pthread_attr_destroy(&v10);
  if (v7)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

void BBUpdaterCommon::BBUMutex::~BBUMutex(pthread_mutex_t *this)
{
  pthread_mutex_destroy(this);
}

{
  pthread_mutex_destroy(this);
}

uint64_t BBUpdaterCommon::collectCoreDump(BBUpdaterCommon *this, const __CFString *a2, const __CFString *a3, int a4)
{
  v5 = a3;
  obj = 0;
  cf = 0;
  valuePtr = 2;
  v8 = *MEMORY[0x29EDB8ED8];
  if (byte_2A18995F7 >= 0)
  {
    v9 = &BBUpdaterCommon::bbCoredumpPath;
  }

  else
  {
    v9 = BBUpdaterCommon::bbCoredumpPath;
  }

  v10 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v9, 0x8000100u);
  v12 = v10;
  if (!a2)
  {
    a2 = v10;
  }

  if (a4)
  {
    gBBULogMaskGet(v10, v11);
    _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Only attach the the existing coredump dir to output dictionary without executing coredump again.\n");
    BBUpdaterCommon::attachCoredumpPathToOutDict(this, a2, v13);
    v14 = 0;
LABEL_23:
    v33 = 1;
    goto LABEL_24;
  }

  v14 = MEMORY[0x29C2858C0](&obj);
  if (!v14)
  {
    BBUpdaterCommon::collectCoreDump(0, v15);
LABEL_40:
    v33 = 0;
    goto LABEL_24;
  }

  BBUpdaterRegisterLogSink();
  v16 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, @"Client", @"Vinyl");
  CFDictionarySetValue(Mutable, @"BootMode", v16);
  CFDictionarySetValue(Mutable, @"SystemRoot", @"/mnt5");
  CFDictionarySetValue(Mutable, @"DataRoot", @"/mnt4");
  if (TelephonyRadiosGetRadioVendor() - 3 > 1)
  {
    v19 = @"RemoteFSRoot";
    v21 = @"/mnt3/bbfs/";
    v20 = Mutable;
  }

  else
  {
    v18 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(v18, @"RemoteFSRoot", @"/mnt3");
    v19 = @"Options";
    v20 = Mutable;
    v21 = v18;
  }

  CFDictionarySetValue(v20, v19, v21);
  CFDictionarySetValue(Mutable, @"coreDumpPath", a2);
  v22 = BBUpdaterSetOptions();
  if (!v22)
  {
    BBUpdaterCommon::collectCoreDump(v22, v23);
    goto LABEL_40;
  }

  v24 = BBUpdaterExecCommand();
  v25 = v24;
  v27 = gBBULogMaskGet(v24, v26);
  if (!v25)
  {
    BBUpdaterCommon::collectCoreDump(v27, v28);
    goto LABEL_40;
  }

  _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Core dump successful \n");
  BBUpdaterCommon::attachCoredumpPathToOutDict(this, a2, v29);
  if (!v5)
  {
    goto LABEL_23;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  CFRelease(v14);
  if (obj)
  {
    CFRelease(obj);
    obj = 0;
  }

  v14 = MEMORY[0x29C2858C0](&obj);
  if (!v14)
  {
    BBUpdaterCommon::collectCoreDump(0, v30);
    goto LABEL_23;
  }

  BBUpdaterRegisterLogSink();
  v31 = BBUpdaterSetOptions();
  if (!v31)
  {
    BBUpdaterCommon::collectCoreDump(v31, v32);
    goto LABEL_40;
  }

  v33 = BBUpdaterExecCommand();
  v35 = gBBULogMaskGet(v33, v34);
  if (v33)
  {
    _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "BB reset successful\n");
    goto LABEL_23;
  }

  BBUpdaterCommon::collectCoreDump(v35, v36);
LABEL_24:
  if (obj)
  {
    CFShow(obj);
    if (obj)
    {
      CFRelease(obj);
    }

    obj = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v33;
}

CFDictionaryRef BBUpdaterCommon::attachCoredumpPathToOutDict(CFDictionaryRef this, const __CFString *a2, const __CFString *a3)
{
  if (this)
  {
    if (a2)
    {
      v3 = this;
      keys = @"LogDirectory";
      v4 = *MEMORY[0x29EDB8ED8];
      v5 = CFURLCreateWithString(*MEMORY[0x29EDB8ED8], a2, 0);
      this = CFDictionaryCreate(v4, &keys, &v5, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      *v3 = this;
    }
  }

  return this;
}

uint64_t BBUpdaterCommon::inRestoreOS(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
  {
    BBUpdaterCommon::inRestoreOS();
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    BBUpdaterCommon::inRestoreOS();
  }

  return (BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1;
}

void ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v4 = BBUpdaterCommon::BBUMGCopyAnswer(@"RestoreOSBuild", a2);
  ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(&BOOLean, &v4);
  Value = BOOLean;
  if (BOOLean)
  {
    Value = CFBooleanGetValue(BOOLean);
    BBUpdaterCommon::inRestoreOS(void)::restoreOS = Value != 0;
  }

  if ((*(gBBULogMaskGet(Value, v2) + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(24, 0, "BBUCommon", "", "inRestoreOS: %d\n", BBUpdaterCommon::inRestoreOS(void)::restoreOS);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }
}

void sub_2982A115C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::BBUMGCopyAnswer(BBUpdaterCommon *this, const __CFString *a2)
{
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    BBUpdaterCommon::BBUMGCopyAnswer();
  }

  v3 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    return 0;
  }

  return v3(this, 0);
}

uint64_t ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke_2()
{
  is_recovery = os_variant_is_recovery();
  BBUpdaterCommon::inRestoreOS(void)::recoveryOS = is_recovery;
  result = gBBULogMaskGet(is_recovery, v1);
  if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    return _BBULog(24, 0, "BBUCommon", "", "InRecoveryOS: %d\n", BBUpdaterCommon::inRestoreOS(void)::recoveryOS);
  }

  return result;
}

uint64_t BBUpdaterCommon::getECID(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::getECID(void)::sOnce != -1)
  {
    BBUpdaterCommon::getECID();
  }

  return BBUpdaterCommon::getECID(void)::ecid;
}

void ___ZN15BBUpdaterCommon7getECIDEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v4 = BBUpdaterCommon::BBUMGCopyAnswer(@"UniqueChipID", a2);
  ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(&number, &v4);
  if (number)
  {
    Value = CFNumberGetValue(number, kCFNumberSInt64Type, &BBUpdaterCommon::getECID(void)::ecid);
    if ((*(gBBULogMaskGet(Value, v3) + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(24, 0, "BBUCommon", "", "ECID: 0x%llx\n", BBUpdaterCommon::getECID(void)::ecid);
    }

    if (number)
    {
      CFRelease(number);
    }
  }
}

void sub_2982A1348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::getEUICCChipID(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::getEUICCChipID(void)::sOnce != -1)
  {
    BBUpdaterCommon::getEUICCChipID();
  }

  return BBUpdaterCommon::getEUICCChipID(void)::euiccChipID;
}

void ___ZN15BBUpdaterCommon14getEUICCChipIDEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v2 = BBUpdaterCommon::BBUMGCopyAnswer(@"EUICCChipID", a2);
  ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(&number, &v2);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &BBUpdaterCommon::getEUICCChipID(void)::euiccChipID);
    if (number)
    {
      CFRelease(number);
    }
  }
}

void sub_2982A13FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef BBUpdaterCommon::BBUReadNVRAM@<X0>(BBUpdaterCommon *this@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  if ((atomic_load_explicit(byte_2A13A9840, memory_order_acquire) & 1) == 0)
  {
    BBUpdaterCommon::BBUReadNVRAM();
  }

  if (BBUpdaterCommon::BBUReadNVRAM(void)::onceToken != -1)
  {
    BBUpdaterCommon::BBUReadNVRAM();
  }

  if ((*(gBBULogMaskGet(this, a3) + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFDictionary,void>(&cf, &_MergedGlobals);
    CFOBJ_STR(&cf, __p);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    _BBULog(24, 0, "BBUCommon", "", "NVRAM: %s\n", v4);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  result = _MergedGlobals;
  *a2 = _MergedGlobals;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_2982A1510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15BBUpdaterCommon12BBUReadNVRAMEv_block_invoke()
{
  v17 = 0;
  v0 = MEMORY[0x29C285C50](*MEMORY[0x29EDCA6A0], &v17);
  if (v0)
  {
    gBBULogMaskGet(v0, v1);
    v2 = _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", "KERN_SUCCESS == kr", "", "", 503);
    result = gBBULogMaskGet(v2, v3);
    if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      return _BBULog(24, 0, "BBUCommon", "", "Could not get master port %d\n");
    }
  }

  else
  {
    v5 = IORegistryEntryFromPath(v17, "IODeviceTree:/options");
    if (v5)
    {
      v7 = v5;
      properties[0] = 0;
      properties[1] = &_MergedGlobals;
      CFProperties = IORegistryEntryCreateCFProperties(v5, properties, *MEMORY[0x29EDB8ED8], 0);
      v9 = ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(properties);
      if (CFProperties)
      {
        v11 = 1;
      }

      else
      {
        v11 = _MergedGlobals == 0;
      }

      if (v11)
      {
        gBBULogMaskGet(v9, v10);
        v12 = _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", "KERN_SUCCESS == kr && nvramInfo", "", "", 509);
        if ((*(gBBULogMaskGet(v12, v13) + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(24, 0, "BBUCommon", "", "Could not load NVRAM? %d\n", CFProperties);
        }
      }

      return IOObjectRelease(v7);
    }

    else
    {
      gBBULogMaskGet(v5, v6);
      v14 = _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", "nvramRef", "", "", 506);
      result = gBBULogMaskGet(v14, v15);
      if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
      {
        return _BBULog(24, 0, "BBUCommon", "", "Could not find NVRAM via IOKit\n");
      }
    }
  }

  return result;
}

void sub_2982A1760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(va);
  _Unwind_Resume(a1);
}

BOOL BBUpdaterCommon::isNVRAMKeyPresent(BBUpdaterCommon *this, const __CFString *a2)
{
  BBUpdaterCommon::BBUReadNVRAM(this, &theDict, a2);
  v4 = theDict;
  if (theDict)
  {
    v4 = CFDictionaryContainsKey(theDict, this);
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  if ((*(gBBULogMaskGet(v4, v3) + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    CStringPtr = CFStringGetCStringPtr(this, 0x8000100u);
    v7 = "No :-(";
    if (v5)
    {
      v7 = "Yes :-)";
    }

    _BBULog(24, 0, "BBUCommon", "", "NVRAM '%s' exists? %s\n", CStringPtr, v7);
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
  return v5;
}

void sub_2982A183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::BBUCreateCFError(CFErrorRef *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  userInfo = 0;
  if (!a1)
  {
    v18 = gBBULogMaskGet(0, a2);
    if ((eUICC::getEID(v18) & 1) == 0)
    {
      goto LABEL_16;
    }

    v15 = "error";
    v16 = 576;
LABEL_15:
    _BBULog(1, 6, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Support/BBUCommon.cpp", v16, v15);
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v14 = 0;
    if ((*gBBULogMaskGet(0, v9) & 2) == 0 || gBBULogVerbosity <= 5)
    {
      goto LABEL_17;
    }

    v15 = "ctu::cf::create( userInfo, 2)";
    v16 = 577;
    goto LABEL_15;
  }

  v10 = userInfo;
  userInfo = Mutable;
  v20 = v10;
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v20);
  v20 = 0;
  v11 = ctu::cf::convert_copy();
  if ((v11 & 1) == 0)
  {
    v14 = 0;
    if ((*gBBULogMaskGet(v11, v12) & 2) == 0 || gBBULogVerbosity < 6)
    {
      goto LABEL_17;
    }

    v15 = "ctu::cf::convert_copy( description, errorMsg)";
    v16 = 578;
    goto LABEL_15;
  }

  v13 = v20;
  ctu::cf::insert<__CFString const*,__CFString const*>(userInfo, *MEMORY[0x29EDB8F38], v20);
  if (a4)
  {
    ctu::cf::insert<__CFString const*,__CFError *>(userInfo, *MEMORY[0x29EDB8F68], a4);
  }

  *a1 = CFErrorCreate(v7, @"BBUpdater", a3, userInfo);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = 1;
LABEL_17:
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&userInfo);
  return v14;
}

void sub_2982A1A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va1);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,__CFString const*>(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v6);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&key);
  return a3;
}

void sub_2982A1ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,__CFError *>(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v6);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&key);
  return a3;
}

void sub_2982A1B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void *BBUpdaterCommon::BBUStrError@<X0>(BBUpdaterCommon *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v13 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__strerrbuf = 0u;
  v6 = 0u;
  if (strerror_r(this, __strerrbuf, 0x80uLL))
  {
    snprintf(__strerrbuf, 0x80uLL, "unknown error %d", v2);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, __strerrbuf);
}

const char *BBUpdaterCommon::redactedString(BBUpdaterCommon *this, const char *a2)
{
  if (BBUpdaterCommon::inRestoreOS(this))
  {
    return this;
  }

  else
  {
    return "0x<< SNUM >>";
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *___ZN15BBUpdaterCommonL15BBUMGCopyAnswerEPK10__CFString_block_invoke()
{
  result = dlopen("/usr/lib/libMobileGestalt.dylib", 1);
  if (result)
  {
    result = dlsym(result, "MGCopyAnswer");
    BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer = result;
  }

  return result;
}

const void **ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

char *std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = operator new(0x28uLL);
  v8 = v7;
  *v7 = a2;
  *(v7 + 1) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 16), *a4, *(a4 + 8));
  }

  else
  {
    *(v7 + 1) = *a4;
    *(v7 + 4) = *(a4 + 16);
  }

  return v8;
}

void *ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFBooleanGetTypeID()))
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

void *ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFNumberGetTypeID()))
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

const void **ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v6);
  return a1;
}

const void **ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFDictionary,void>(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5)
{

  return _BBULog(0, 0xFFFFFFFFLL, a3, a4, a5);
}

uint64_t _GLOBAL__sub_I_BBUCommon_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&BBUpdaterCommon::bbCoredumpPath, "/mnt4/wireless/Library/Logs/CrashReporter/Vinyl/Baseband/baseband_updater_logs/");
  v0 = MEMORY[0x29EDC9388];

  return __cxa_atexit(v0, &BBUpdaterCommon::bbCoredumpPath, &dword_29826A000);
}

uint64_t eUICC::TwoPhaseProv::SessionData::processAlderResponse(uint64_t a1, CFDictionaryRef *a2)
{
  Value = CFDictionaryGetValue(*a2, @"Command");
  v5 = CFGetTypeID(Value);
  TypeID = CFStringGetTypeID();
  if (v5 == TypeID)
  {
    if (CFEqual(Value, @"GetBppResp"))
    {
      v8 = *a2;
      v11 = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      v9 = eUICC::TwoPhaseProv::SessionData::convertGbppToPbiBpp(a1, &v11);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    gBBULogMaskGet(TypeID, v7);
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", "CFGetTypeID( cmd) == CFStringGetTypeID()", "", "", 74);
    return 27;
  }

  return v9;
}

void sub_2982A21A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::SessionData::convertGbppToPbiBpp(uint64_t a1, CFDictionaryRef *a2)
{
  Value = CFDictionaryGetValue(*a2, @"Command");
  if (!Value)
  {
    gBBULogMaskGet(0, v5);
    v22 = 116;
    v23 = "cmd";
LABEL_13:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v23, "", "", v22);
    return 26;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  TypeID = CFStringGetTypeID();
  if (v7 != TypeID)
  {
    gBBULogMaskGet(TypeID, v9);
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", "CFGetTypeID( cmd) == CFStringGetTypeID()", "", "", 117);
    return 27;
  }

  v10 = CFEqual(v6, @"GetBppResp");
  if (!v10)
  {
    gBBULogMaskGet(v10, v11);
    v22 = 118;
    v23 = "CFEqual(cmd, Alder::ValueCommandGetBppResp)";
    goto LABEL_13;
  }

  v12 = CFDictionaryGetValue(*a2, @"BPPMetaData");
  if (!v12)
  {
    gBBULogMaskGet(0, v13);
    v22 = 121;
LABEL_12:
    v23 = "data";
    goto LABEL_13;
  }

  v14 = *MEMORY[0x29EDB8ED8];
  Copy = CFDataCreateCopy(*MEMORY[0x29EDB8ED8], v12);
  v16 = *(a1 + 24);
  *(a1 + 24) = Copy;
  v33 = v16;
  v17 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v33);
  if (!*(a1 + 24))
  {
    gBBULogMaskGet(v17, v18);
    v25 = 123;
    v26 = "pbiReq.get()";
LABEL_16:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v26, "", "", v25);
    return 17;
  }

  DataFromPbiReq = eUICC::TwoPhaseProv::SessionData::extractDataFromPbiReq(a1, (a1 + 24));
  if (!DataFromPbiReq)
  {
    v27 = CFDictionaryGetValue(*a2, @"BPP");
    if (v27)
    {
      v29 = CFDataCreateCopy(v14, v27);
      v30 = *(a1 + 32);
      *(a1 + 32) = v29;
      v33 = v30;
      v31 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v33);
      if (*(a1 + 32))
      {
        return 0;
      }

      gBBULogMaskGet(v31, v32);
      v25 = 131;
      v26 = "bpp.get()";
      goto LABEL_16;
    }

    gBBULogMaskGet(0, v28);
    v22 = 129;
    goto LABEL_12;
  }

  v21 = DataFromPbiReq;
  gBBULogMaskGet(DataFromPbiReq, v20);
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == result", "", "", 126);
  return v21;
}

double eUICC::TwoPhaseProv::SessionData::clearTransientData(eUICC::TwoPhaseProv::SessionData *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

double eUICC::TwoPhaseProv::SessionData::clear(eUICC::TwoPhaseProv::SessionData *this)
{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t eUICC::TwoPhaseProv::SessionData::extractDataFromPbiReq(uint64_t a1, CFDataRef *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Length = CFDataGetLength(*a2);
  MutableCopy = CFDataCreateMutableCopy(v4, Length, *a2);
  v47[2] = MutableCopy;
  v47[0] = CFDataGetMutableBytePtr(MutableCopy);
  v47[1] = CFDataGetLength(MutableCopy);
  v7 = DERDecodeSeqContentInit(v47, v50);
  if (v7)
  {
    gBBULogMaskGet(v7, v8);
    v9 = 288;
LABEL_5:
    v12 = "(DR_Success == ret)";
LABEL_6:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v12, "", "", v9);
    v13 = 27;
    goto LABEL_7;
  }

  v10 = DERDecodeSeqNext(v50, &v48);
  if (v10)
  {
    gBBULogMaskGet(v10, v11);
    v9 = 290;
    goto LABEL_5;
  }

  if (v48 != 0xE00000000000002ELL)
  {
    gBBULogMaskGet(v10, v11);
    v9 = 291;
    v12 = "TAG_PBI == dec.tag";
    goto LABEL_6;
  }

  v15 = DERParseSequenceContent(&v49, 4u, &eUICC::TwoPhaseProv::prepareBppInstallationReqSpec, v46, 0x10uLL);
  if (v15)
  {
    gBBULogMaskGet(v15, v16);
    v9 = 298;
LABEL_13:
    v12 = "(ret == DR_Success)";
    goto LABEL_6;
  }

  v17 = DERParseSequenceContent(v46, 5u, &eUICC::TwoPhaseProv::serverSignedPayloadSpec, v42, 0x30uLL);
  if (v17 || !v44)
  {
    gBBULogMaskGet(v17, v18);
    v9 = 306;
    v12 = "(ret == DR_Success) && (ssp_decoded.eUICCSessionId.length > 0)";
    goto LABEL_6;
  }

  v19 = DERParseSequenceContent(&v45, 2u, &eUICC::TwoPhaseProv::smdpSignedMetadataSpec, v41, 0x10uLL);
  if (v19)
  {
    gBBULogMaskGet(v19, v20);
    v9 = 313;
    goto LABEL_13;
  }

  v21 = DERParseSequenceContent(v41, 5u, &eUICC::TwoPhaseProv::smdpMetadataSpec, &v37, 0x20uLL);
  if (v21 || !v38 || !v40)
  {
    gBBULogMaskGet(v21, v22);
    v9 = 323;
    v12 = "(ret == DR_Success) && (sm_decoded.eid.length > 0) && (sm_decoded.transactionId.length > 0)";
    goto LABEL_6;
  }

  v23 = CFDataCreate(v4, v43, v44);
  v24 = *(a1 + 16);
  *(a1 + 16) = v23;
  v51 = v24;
  v25 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v51);
  if (*(a1 + 16))
  {
    v27 = CFDataCreate(v4, v37, v38);
    v28 = *a1;
    *a1 = v27;
    v51 = v28;
    v29 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v51);
    if (*a1)
    {
      v31 = CFDataCreate(v4, v39, v40);
      v32 = *(a1 + 8);
      *(a1 + 8) = v31;
      v51 = v32;
      v33 = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v51);
      if (*(a1 + 8))
      {
        v13 = 0;
        goto LABEL_7;
      }

      gBBULogMaskGet(v33, v34);
      v35 = 338;
      v36 = "transactionId";
    }

    else
    {
      gBBULogMaskGet(v29, v30);
      v35 = 333;
      v36 = "eid";
    }
  }

  else
  {
    gBBULogMaskGet(v25, v26);
    v35 = 328;
    v36 = "euiccSessionId";
  }

  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v36, "", "", v35);
  v13 = 17;
LABEL_7:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v13;
}

uint64_t eUICC::TwoPhaseProv::SessionData::extractDataFromPbiRsp(uint64_t a1, CFDataRef *a2)
{
  v7 = 0;
  v8 = 0;
  v3 = eUICC::TwoPhaseProv::ExtractDataFromPbiRsp(a2, &v8, &v7);
  v5 = v3;
  if (v3)
  {
    gBBULogMaskGet(v3, v4);
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", "kVinylResultSuccess == ret", "", "", 152);
  }

  else
  {
    if (v8)
    {
      eUICC::TwoPhaseProv::SessionData::extractDataFromPir(a1, &v8);
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    if (v7)
    {
      ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::operator=((a1 + 56), &v7);
      v5 = 1;
    }
  }

  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v7);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v8);
  return v5;
}

void sub_2982A2864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef((v11 - 32));
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef((v11 - 24));
  _Unwind_Resume(a1);
}

uint64_t eUICC::TwoPhaseProv::SessionData::extractDataFromPir(uint64_t a1, CFDataRef *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = CFDataGetLength(*a2);
  MutableCopy = CFDataCreateMutableCopy(v4, v5, *a2);
  v46[4] = MutableCopy;
  v32[0] = CFDataGetMutableBytePtr(MutableCopy);
  v32[1] = CFDataGetLength(MutableCopy);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::operator=((a1 + 40), a2);
  v7 = DERDecodeSeqContentInit(v32, v49);
  if (v7)
  {
    gBBULogMaskGet(v7, v8);
    v9 = 196;
LABEL_5:
    v12 = "(ret == DR_Success)";
LABEL_6:
    _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", v12, "", "", v9);
    goto LABEL_7;
  }

  v10 = DERDecodeSeqNext(v49, &v47);
  if (v10)
  {
    gBBULogMaskGet(v10, v11);
    v9 = 199;
    goto LABEL_5;
  }

  if (v47 != 0xA000000000000037)
  {
    gBBULogMaskGet(v10, v11);
    v9 = 200;
    v12 = "dec.tag == TAG_PIR";
    goto LABEL_6;
  }

  v15 = DERParseSequenceContent(&v48, 3u, &eUICC::TwoPhaseProv::profileInstallationResultSpec, v46, 0x20uLL);
  if (v15)
  {
    gBBULogMaskGet(v15, v16);
    v9 = 209;
    goto LABEL_5;
  }

  v17 = DERParseSequenceContent(v46, 4u, &eUICC::TwoPhaseProv::profileInstallationResultDataSpec, v43, 0x30uLL);
  if (v17)
  {
    gBBULogMaskGet(v17, v18);
    v9 = 217;
    goto LABEL_5;
  }

  v19 = CFDataCreate(v4, v43[0], v43[1]);
  v20 = *(a1 + 8);
  *(a1 + 8) = v19;
  v50 = v20;
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v50);
  v21 = DERParseSequenceContent(&v44, 6u, &eUICC::TwoPhaseProv::notificationMetaDataSpec, &bytes, 0x10uLL);
  if (v21)
  {
    gBBULogMaskGet(v21, v22);
    v9 = 229;
    goto LABEL_5;
  }

  if (!length)
  {
    gBBULogMaskGet(v21, v22);
    v9 = 230;
    v12 = "nm_decoded.seqNumber.length > 0";
    goto LABEL_6;
  }

  v23 = CFDataCreate(v4, bytes, length);
  v24 = *(a1 + 48);
  *(a1 + 48) = v23;
  v50 = v24;
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v50);
  v25 = DERParseSequenceContent(&v45, 2u, &eUICC::TwoPhaseProv::finalResultSpec, v39, 0x20uLL);
  if (v25)
  {
    gBBULogMaskGet(v25, v26);
    v9 = 242;
    goto LABEL_5;
  }

  if (!(v40 | v42))
  {
    gBBULogMaskGet(v25, v26);
    v9 = 245;
    v12 = "(fr_decoded.successResult.length > 0) || (fr_decoded.errorResult.length > 0)";
    goto LABEL_6;
  }

  if (!v42)
  {
LABEL_28:
    v13 = 0;
    if (!MutableCopy)
    {
      return v13;
    }

    goto LABEL_8;
  }

  v27 = DERParseSequenceContent(&v41, 3u, &eUICC::TwoPhaseProv::errorResultSpec, v35, 0x20uLL);
  if (!v27 && v36 && v38 == 1)
  {
    valuePtr = *v37;
    v29 = CFNumberCreate(v4, kCFNumberCharType, &valuePtr);
    v30 = *(a1 + 56);
    *(a1 + 56) = v29;
    v50 = v30;
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v50);
    goto LABEL_28;
  }

  gBBULogMaskGet(v27, v28);
  _BBULog(0, 0xFFFFFFFFLL, "VinylTwoPhaseProvSessionData", "", "Condition <<%s>> failed %s %s/%d\n", "(ret == DR_Success) && (er_decoded.bppCommandId.length > 0) && (er_decoded.errorReason.length == 1)", "", "", 253);
LABEL_7:
  v13 = 27;
  if (MutableCopy)
  {
LABEL_8:
    CFRelease(MutableCopy);
  }

  return v13;
}

uint64_t eUICC::TwoPhaseProv::SessionData::isEidEligible(eUICC::TwoPhaseProv::SessionData *this, const Options *a2)
{
  v21 = 0;
  v22.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v22.__r_.__value_.__r.__words[1] = xmmword_2982C42E0;
  strcpy(v22.__r_.__value_.__l.__data_, "89[0-9]{14}((5[1-9])|(8[0-46-9]))[0-9]{14}");
  v19 = 0;
  v20 = 0;
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  if (*this)
  {
    pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v4 = xmmword_2A13A8CA0;
    if (!xmmword_2A13A8CA0)
    {
      BBUCapabilities::create_default_global(__p);
      v5 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v6 = *(&xmmword_2A13A8CA0 + 1);
      xmmword_2A13A8CA0 = v5;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        if (__p[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
        }
      }

      v4 = xmmword_2A13A8CA0;
    }

    v7 = *(&xmmword_2A13A8CA0 + 1);
    if (*(&xmmword_2A13A8CA0 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v8 = BBUCapabilities::supportsEuiccViaEOS(v4);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v8)
    {
      std::string::__assign_external(&v22, "89[0-9]{14}9[34567][0-9]{14}", 0x1CuLL);
    }

    ctu::cf::assign();
    eUICC::TwoPhaseProv::StringifyDataBuffer(&v19, 1, __p);
    v9 = *(a2 + 12);
    v10 = *(a2 + 111);
    *v17 = *__p;
    v18 = v24[0];
    if ((v10 & 0x80u) == 0)
    {
      v9 = v10;
    }

    if (v9)
    {
      std::string::operator=(&v22, (a2 + 88));
    }

    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v15, &v22, 0);
    v11 = HIBYTE(v18);
    if (v18 >= 0)
    {
      v12 = v17;
    }

    else
    {
      v12 = v17[0];
    }

    if (v18 < 0)
    {
      v11 = v17[1];
    }

    v24[4] = 0;
    v24[5] = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *__p = 0u;
    memset(v24, 0, 25);
    v13 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v12, &v11[v12], __p, v15, 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    std::locale::~locale(&v15[0].__loc_);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }
  }

  else
  {
    v13 = 0;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_2982A2E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

const void **ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::operator=(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::SharedRef(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v5);
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

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::regex_traits<char> *std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(std::regex_traits<char> *a1, unsigned __int8 **a2, int a3)
{
  v6 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v6[1].__loc_.__locale_) = a3;
  *(&v6[1].__loc_.__locale_ + 4) = 0u;
  *(&v6[1].__col_ + 4) = 0u;
  HIDWORD(v6[2].__ct_) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = a2[1];
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(v6, v8, &v8[v7]) != &v8[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_2982A30F8(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x29C286BB0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x29EDC93D0]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x29EDC93E8]);
  return this;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A1EB3C28;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  std::shared_ptr<std::__empty_state<char>>::reset[abi:ne200100]<std::__empty_state<char>,0>((a1 + 40), v7);
  *(a1 + 56) = *(a1 + 40);
  v8 = *(a1 + 24) & 0x1F0;
  if (v8 > 0x3F)
  {
    switch(v8)
    {
      case 0x40u:
LABEL_12:

        return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      case 0x80u:

        return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(a1, a2, a3);
      case 0x100u:

        return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(a1, a2, a3);
      default:
        goto LABEL_24;
    }
  }

  else if (v8)
  {
    if (v8 != 16)
    {
      if (v8 != 32)
      {
LABEL_24:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
      }

      goto LABEL_12;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  else
  {

    return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 17);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::shared_ptr<std::__empty_state<char>>::reset[abi:ne200100]<std::__empty_state<char>,0>(void *a1, uint64_t a2)
{
  std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    v8 = operator new(0x10uLL);
    v9 = a1->__end_;
    first = v9->__first_;
    v8[1].__vftable = first;
    v9->__first_ = v8;
    a1->__end_ = a1->__end_->__first_;
  }

  while (v7 != a3 && *v7 == 124)
  {
    v11 = a1->__end_;
    v12 = v7 + 1;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(a1, v7 + 1, a3);
    if (v12 == v7)
    {
      v13 = operator new(0x10uLL);
      v14 = a1->__end_;
      v15 = v14->__first_;
      v13[1].__vftable = v15;
      v14->__first_ = v13;
      a1->__end_ = a1->__end_->__first_;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(this, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v6;
    }

    if (v6 != v4)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
    if (v8 + 1 == v10)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    v9 = operator new(0x10uLL);
    first = end->__first_;
    v9[1].__vftable = first;
    end->__first_ = v9;
    a1->__end_ = a1->__end_->__first_;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, __s, v8);
  }

  while (1)
  {
    v15 = v8 == a3 ? v8 : v8 + 1;
    if (v15 == a3)
    {
      break;
    }

    v11 = memchr(v15, 10, a3 - v15);
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = a3;
    }

    v12 = a1->__end_;
    if (v8 == v15)
    {
      v13 = operator new(0x10uLL);
      v14 = v12->__first_;
      v13[1].__vftable = v14;
      v12->__first_ = v13;
      a1->__end_ = a1->__end_->__first_;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v15, v8);
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v12);
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    v9 = operator new(0x10uLL);
    first = end->__first_;
    v9[1].__vftable = first;
    end->__first_ = v9;
    a1->__end_ = a1->__end_->__first_;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, __s, v8);
  }

  while (1)
  {
    v15 = v8 == a3 ? v8 : v8 + 1;
    if (v15 == a3)
    {
      break;
    }

    v11 = memchr(v15, 10, a3 - v15);
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = a3;
    }

    v12 = a1->__end_;
    if (v8 == v15)
    {
      v13 = operator new(0x10uLL);
      v14 = v12->__first_;
      v13[1].__vftable = v14;
      v12->__first_ = v13;
      a1->__end_ = a1->__end_->__first_;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v15, v8);
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v12);
  }

  return a3;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 14);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void *std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB3C80;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_2982A39A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  operator delete(this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_alternative<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  do
  {
    v5 = a2;
    a2 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_alternation(std::basic_regex<char> *this, std::__owns_one_state<char> *__sa, std::__owns_one_state<char> *__sb)
{
  v6 = operator new(0x18uLL);
  first = __sb->__first_;
  v6[1].__vftable = __sa->__first_;
  v6[2].__vftable = first;
  v6->__vftable = &unk_2A1EB4268;
  __sa->__first_ = v6;
  __sb->__first_ = 0;
  v8 = operator new(0x10uLL);
  v9 = this->__end_->__first_;
  v8[1].__vftable = v9;
  __sb->__first_ = v8;
  this->__end_->__first_ = 0;
  v10 = operator new(0x10uLL);
  v11 = __sb->__first_;
  v10->__vftable = &unk_2A1EB42B0;
  v10[1].__vftable = v11;
  this->__end_->__first_ = v10;
  this->__end_ = __sb->__first_;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      if (v6 == 40 && a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
      {
        v7 = a2[2];
        if (v7 == 33)
        {
          std::regex_traits<char>::regex_traits(&v14.__traits_);
          memset(&v14.__flags_, 0, 40);
          v14.__flags_ = this->__flags_;
          v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v14, v3 + 3, a3);
          marked_count = v14.__marked_count_;
          std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v14, 1, this->__marked_count_);
          this->__marked_count_ += marked_count;
          if (v8 == a3 || *v8 != 41)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
          }

          goto LABEL_27;
        }

        if (v7 == 61)
        {
          std::regex_traits<char>::regex_traits(&v14.__traits_);
          memset(&v14.__flags_, 0, 40);
          v14.__flags_ = this->__flags_;
          v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v14, v3 + 3, a3);
          v9 = v14.__marked_count_;
          std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v14, 0, this->__marked_count_);
          this->__marked_count_ += v9;
          if (v8 == a3 || *v8 != 41)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
          }

LABEL_27:
          v3 = v8 + 1;
          std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v14.__traits_.__loc_);
          return v3;
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v11 = a2[1];
    if (v11 == 66)
    {
      v12 = 1;
    }

    else
    {
      if (v11 != 98)
      {
        return v3;
      }

      v12 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 <= 0x3E)
    {
      if (v6 != 40)
      {
        if (v6 == 46)
        {
          v7 = operator new(0x10uLL);
          end = this->__end_;
          first = end->__first_;
          v7->__vftable = &unk_2A1EB3EC0;
          v7[1].__vftable = first;
          end->__first_ = v7;
          this->__end_ = this->__end_->__first_;
          return ++v3;
        }

        if (v6 - 42 >= 2)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(this, a2, a3);
        }

LABEL_29:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      v11 = a2 + 1;
      if (a2 + 1 != a3)
      {
        if (a2 + 2 != a3 && *v11 == 63 && a2[2] == 58)
        {
          ++this->__open_count_;
          v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(this, a2 + 3, a3);
          if (v12 != a3 && *v12 == 41)
          {
            --this->__open_count_;
            return v12 + 1;
          }
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
          marked_count = this->__marked_count_;
          ++this->__open_count_;
          v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(this, v11, a3);
          if (v14 != a3)
          {
            v3 = v14;
            if (*v14 == 41)
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
              --this->__open_count_;
              return ++v3;
            }
          }
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    if (*a2 > 0x5Bu)
    {
      if (v6 == 92)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(this, a2, a3);
      }

      if (v6 == 123)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v6 == 91)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
      }

      if (v6 == 63)
      {
        goto LABEL_29;
      }
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(this, a2, a3);
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (v13 > 0x3E)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v6 == a3;
      }

      if (!v20 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, &__max);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = __max;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v18 = __max;
LABEL_32:
              v21 = __s;
              v22 = 0;
LABEL_45:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v6;
            }

            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v18 = __max;
LABEL_44:
            v21 = __s;
            v22 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v23 == 125)
        {
          v6 = v16 + 2;
          if (!v12 && v6 != a3 && *v6 == 63)
          {
            v6 = v16 + 3;
            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            goto LABEL_25;
          }

          v14 = __max;
          a5 = v8;
          a6 = v7;
          a1 = v11;
LABEL_35:
          v18 = -1;
          goto LABEL_44;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v11, v23, a3, &v27);
        if (v23 != v25 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v6 = v25 + 1;
            v22 = 1;
            if (!v12 && v6 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v6 = v25 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v21 = __s;
            goto LABEL_45;
          }

          goto LABEL_57;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v13 == 42)
  {
    v6 = a2 + 1;
    if (v12)
    {
      v19 = 1;
    }

    else
    {
      v19 = v6 == a3;
    }

    if (!v19 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_25;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_35;
  }

  v6 = a2;
  if (v13 == 43)
  {
    v6 = a2 + 1;
    if (!v12 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_25:
      v18 = -1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_35;
  }

  return v6;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(std::basic_regex<char> *this)
{
  v2 = operator new(0x18uLL);
  v3 = (this->__flags_ & 0x5F0) == 1024;
  end = this->__end_;
  first = end->__first_;
  v2->__vftable = &unk_2A1EB3DA0;
  v2[1].__vftable = first;
  LOBYTE(v2[2].__vftable) = v3;
  end->__first_ = v2;
  this->__end_ = this->__end_->__first_;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(std::basic_regex<char> *this)
{
  v2 = operator new(0x18uLL);
  v3 = (this->__flags_ & 0x5F0) == 1024;
  end = this->__end_;
  first = end->__first_;
  v2->__vftable = &unk_2A1EB3DE8;
  v2[1].__vftable = first;
  LOBYTE(v2[2].__vftable) = v3;
  end->__first_ = v2;
  this->__end_ = this->__end_->__first_;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(std::basic_regex<char> *this, BOOL a2)
{
  v4 = operator new(0x30uLL);
  first = this->__end_->__first_;
  *v4 = &unk_2A1EB3E30;
  *(v4 + 1) = first;
  std::locale::locale(v4 + 2, &this->__traits_.__loc_);
  *(v4 + 24) = *&this->__traits_.__ct_;
  v4[40] = a2;
  this->__end_->__first_ = v4;
  this->__end_ = this->__end_->__first_;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(std::basic_regex<char> *this, const std::basic_regex<char> *a2, BOOL a3, unsigned int a4)
{
  v8 = operator new(0x58uLL);
  std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:ne200100](v8, a2, a3, this->__end_->__first_, a4);
  this->__end_->__first_ = v8;
  this->__end_ = this->__end_->__first_;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 6);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3E30;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3E30;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:ne200100](uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_2A1EB3E78;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3E78;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2A1EB3E78;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(a1);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  memset(&v22, 0, 17);
  v23 = 0;
  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v18.first = *(a2 + 24);
  v18.second = v18.first;
  v18.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v18);
  v19 = v5;
  v20 = v5;
  v21 = 0;
  v22 = v18;
  v24 = v5;
  v23 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &begin[v13];
    v15 = v11 + 24 * v10;
    *v15 = v14->std::pair<const char *, const char *>;
    *(v15 + 16) = v14->matched;
    v13 = v12;
    ++v10;
  }

  while (v9 > v12++);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_2982A4F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<char const*>::__init(std::match_results<const char *> *this, unsigned int __s, const char *__f, const char *__l, BOOL __no_update_pos)
{
  this->__unmatched_.first = __l;
  p_unmatched = &this->__unmatched_;
  this->__unmatched_.second = __l;
  this->__unmatched_.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&this->__matches_, __s, &this->__unmatched_);
  this->__prefix_.first = __f;
  this->__prefix_.second = __f;
  this->__prefix_.matched = 0;
  this->__suffix_ = *p_unmatched;
  if (!__no_update_pos)
  {
    this->__position_start_ = __f;
  }

  this->__ready_ = 1;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_2982A534C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) >= __n)
  {
    end = this->__end_;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    if (v16 >= __n)
    {
      v17 = __n;
    }

    else
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    }

    if (v17)
    {
      v18 = __u->std::pair<const char *, const char *>;
      matched = __u->matched;
      v20 = begin;
      do
      {
        v20->std::pair<const char *, const char *> = v18;
        v20->matched = matched;
        ++v20;
        --v17;
      }

      while (v17);
    }

    if (__n <= v16)
    {
      this->__end_ = &begin[__n];
    }

    else
    {
      v21 = &end[__n - v16];
      v22 = 24 * __n - 8 * ((end - begin) >> 3);
      do
      {
        v23 = __u->std::pair<const char *, const char *>;
        *&end->matched = *&__u->matched;
        end->std::pair<const char *, const char *> = v23;
        ++end;
        v22 -= 24;
      }

      while (v22);
      this->__end_ = v21;
    }
  }

  else
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= __n)
    {
      v9 = __n;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v10);
    v11 = this->__end_;
    v12 = &v11[__n];
    v13 = 24 * __n;
    do
    {
      v14 = __u->std::pair<const char *, const char *>;
      *&v11->matched = *&__u->matched;
      v11->std::pair<const char *, const char *> = v14;
      ++v11;
      v13 -= 24;
    }

    while (v13);
    this->__end_ = v12;
  }
}

void *std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 24 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

uint64_t std::vector<std::__state<char>>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v4 = __sz >= v3;
  v5 = __sz - v3;
  if (v5 != 0 && v4)
  {
    std::vector<std::sub_match<char const*>>::__append(this, v5, __x);
  }

  else if (!v4)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append(this, __sz - v2);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 12);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C286940](exception, 16);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[96 * v2];
  v17 = v7;
  v18 = v8;
  *(&v19 + 1) = &v7[96 * v6];
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  *(v8 + 2) = *(a2 + 32);
  *(v8 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 9) = 0;
  *(v8 + 56) = *(a2 + 56);
  *(v8 + 9) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v10 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 10) = v10;
  *&v19 = v8 + 96;
  v11 = a1[1];
  v12 = &v8[*a1 - v11];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v17);
  return v16;
}