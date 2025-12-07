uint64_t TelephonyBasebandControllerRemoveFreqListExt(unsigned int *a1, unsigned int a2, char *a3, uint64_t a4)
{
  input[2] = *MEMORY[0x29EDCA608];
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerRemoveFreqListExt", "Remove Frequency list\n");
  input[1] = a4;
  if (!a2)
  {
    return 0;
  }

  v8 = a2;
  if (a2 < 9)
  {
    v9 = 1;
  }

  else
  {
    v9 = 1;
    do
    {
      v8 -= 8;
      input[0] = 8;
      v9 &= _TelephonyBasebandControllerCallMethodGeneric(a1, 0x22u, "Remove frequency list", input, 2u, a3, 0x80uLL, 0, 0, 0, 0, 1);
      a3 += 128;
    }

    while (v8 > 8);
  }

  input[0] = v8;
  return _TelephonyBasebandControllerCallMethodGeneric(a1, 0x22u, "Remove frequency list", input, 2u, a3, 16 * v8, 0, 0, 0, 0, 1) & v9;
}

uint64_t TelephonyBasebandControllerAddFreqListExt(mach_port_t *a1, unsigned int a2, char *a3, uint64_t a4)
{
  input[2] = *MEMORY[0x29EDCA608];
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerAddFreqListExt", "Add Frequency list\n");
  input[1] = a4;
  if (!a2)
  {
    return 0;
  }

  v8 = a2;
  if (a2 < 9)
  {
    v9 = 1;
  }

  else
  {
    v9 = 1;
    do
    {
      input[0] = 8;
      if (*a1)
      {
        v9 &= IOConnectCallMethod(*a1, 0x21u, input, 2u, a3, 0x80uLL, 0, 0, 0, 0) == 0;
      }

      else
      {
        v9 = 0;
      }

      v8 -= 8;
      a3 += 128;
    }

    while (v8 > 8);
  }

  input[0] = v8;
  result = *a1;
  if (result)
  {
    return (IOConnectCallMethod(result, 0x21u, input, 2u, a3, 16 * v8, 0, 0, 0, 0) == 0) & v9;
  }

  return result;
}

uint64_t _TelephonyBasebandControllerCallMethodGeneric(unsigned int *a1, uint32_t a2, const char *a3, uint64_t *input, uint32_t inputCnt, void *inputStruct, size_t inputStructCnt, uint64_t *output, uint32_t *outputCnt, void *outputStruct, size_t *a11, char a12)
{
  result = *a1;
  if (result)
  {
    v14 = IOConnectCallMethod(result, a2, input, inputCnt, inputStruct, inputStructCnt, output, outputCnt, outputStruct, a11);
    result = v14 == 0;
    if (v14)
    {
      v15 = a12 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerCallMethodGeneric", "%s: operation '%s' failed: 0x%08x\n", "TelephonyBasebandController", a3, v14);
      return 0;
    }
  }

  return result;
}

uint64_t _TelephonyBasebandResetCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a3 == -469794803)
    {
      _TelephonyUtilDebugPrint("_TelephonyBasebandResetCallback", "received coredump ready message\n");
      v9 = *(a1 + 72);
      block = MEMORY[0x29EDCA5F8];
      v14 = 0x40000000;
      v10 = ___TelephonyBasebandControllerRemoveAllFromCoredumpReadyQueue_block_invoke;
      v11 = &__block_descriptor_tmp_253;
    }

    else
    {
      if (a3 != -469794809)
      {
        goto LABEL_10;
      }

      _TelephonyUtilDebugPrint("_TelephonyBasebandResetCallback", "received wake-asserted message\n");
      v9 = *(a1 + 72);
      block = MEMORY[0x29EDCA5F8];
      v14 = 0x40000000;
      v10 = ___TelephonyBasebandControllerRemoveAllFromWakeQueue_block_invoke;
      v11 = &__block_descriptor_tmp_252;
    }

    v15 = v10;
    v16 = v11;
    v17 = a1;
    dispatch_sync(v9, &block);
LABEL_10:
    result = *(a1 + 80);
    if (result)
    {
      return (*(result + 16))(result, a2, a3, a4);
    }

    return result;
  }

  return _TelephonyUtilDebugPrintError("_TelephonyBasebandResetCallback", "invalid baseband controller context\n", a3, a4);
}

BOOL TelephonyBasebandSetPowerDebugOptionsInternal(unsigned int *a1)
{
  if (a1)
  {
    if (*a1 >= 0x80)
    {
      _TelephonyUtilDebugPrintError("_TelephonyBasebandPowerDebugOptionsAreValid", "power debug command mask value (%u) falls outside acceptable range");
LABEL_7:
      _TelephonyUtilDebugPrintError("TelephonyBasebandSetPowerDebugOptionsInternal", "not setting power debug options because they are invalid");
      return 0;
    }

    if (a1[1] >= 4)
    {
      _TelephonyUtilDebugPrintError("_TelephonyBasebandPowerDebugOptionsAreValid", "power debug intervention value (%u) falls outside acceptable range");
      goto LABEL_7;
    }

    os_unfair_lock_lock(&sPowerDebugOptionsLock);
    std::string::basic_string[abi:ne200100]<0>(__p, "CommandMask");
    if (v11 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = ctu::cf::plist_adapter::set<unsigned int>(*a1, v4);
    v2 = v5;
    if (v11 < 0)
    {
      operator delete(__p[0]);
      if (!v2)
      {
LABEL_40:
        sPowerDebugOptions = *a1;
        os_unfair_lock_unlock(&sPowerDebugOptionsLock);
        return v2;
      }
    }

    else if (!v5)
    {
      goto LABEL_40;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Intervention");
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v2 = ctu::cf::plist_adapter::set<unsigned int>(a1[1], v6);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v2)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "TimeoutMilliseconds");
      if (v11 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v2 = ctu::cf::plist_adapter::set<unsigned int>(a1[2], v7);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v2)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ShouldOnlyInterveneOnce");
        if (v11 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        v2 = ctu::cf::plist_adapter::set<BOOL>(*(a1 + 12), v8, 0);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        if (v2)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "DidInterveneOnce");
          if (v11 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          v2 = ctu::cf::plist_adapter::set<BOOL>(*(a1 + 13), v9, 1);
          if (v11 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    goto LABEL_40;
  }

  _TelephonyUtilDebugPrintError("TelephonyBasebandSetPowerDebugOptionsInternal", "null power debug options arg");
  return 0;
}

void sub_2982391B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(&sPowerDebugOptionsLock);
  _Unwind_Resume(a1);
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

BOOL TelephonyBasebandGetPowerDebugOptionsInternal(_OWORD *a1)
{
  if (TelephonyBasebandGetPowerDebugOptionsInternal::sOnce != -1)
  {
    dispatch_once(&TelephonyBasebandGetPowerDebugOptionsInternal::sOnce, &__block_literal_global);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    _TelephonyUtilDebugPrintError("TelephonyBasebandGetPowerDebugOptionsInternal", "null power debug options arg");
    return a1 != 0;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  *a1 = sPowerDebugOptions;
  return a1 != 0;
}

void __TelephonyBasebandGetPowerDebugOptionsInternal_block_invoke()
{
  os_unfair_lock_lock(&sPowerDebugOptionsLock);
  v3 = 0;
  v2 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "CommandMask");
  TelephonyUtilPrefs::getPreference<unsigned int>(__p, &v3);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Intervention");
  TelephonyUtilPrefs::getPreference<unsigned int>(__p, &v2);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "TimeoutMilliseconds");
  TelephonyUtilPrefs::getPreference<unsigned int>(__p, (&sPowerDebugOptions + 8));
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ShouldOnlyInterveneOnce");
  if ((TelephonyUtilPrefs::getPreference<BOOL>(__p, (&sPowerDebugOptions + 12)) & 1) == 0)
  {
    BYTE12(sPowerDebugOptions) = 0;
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "DidInterveneOnce");
  if ((TelephonyUtilPrefs::getPreference<BOOL>(__p, (&sPowerDebugOptions + 13)) & 1) == 0)
  {
    BYTE13(sPowerDebugOptions) = 0;
  }

  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(sPowerDebugOptions) = v3;
  DWORD1(sPowerDebugOptions) = v2;
  os_unfair_lock_unlock(&sPowerDebugOptionsLock);
}

void sub_298239480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(&sPowerDebugOptionsLock);
  _Unwind_Resume(a1);
}

uint64_t TelephonyUtilPrefs::getPreference<unsigned int>(uint64_t a1, ctu::cf *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  ctu::cf::MakeCFString::MakeCFString(&v9, v3);
  v4 = (*optionsAdapter)();
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      ctu::cf::assign(a2, v5, v7);
    }

    CFRelease(v5);
  }

  return MEMORY[0x29C284010](&v9);
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_29EE8DD60, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

BOOL ctu::cf::plist_adapter::set<unsigned int>(unsigned int a1, const char *a2)
{
  ctu::cf::MakeCFString::MakeCFString(&v7, a2);
  v3 = v7;
  v4 = *MEMORY[0x29EDB8ED8];
  valuePtr = a1;
  v5 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v8 = v5;
  if (v5)
  {
    CFPreferencesSetValue(v3, v5, qword_2A1899000, *algn_2A1899008, *MEMORY[0x29EDB8FA8]);
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v8);
  MEMORY[0x29C284010](&v7);
  return v5 != 0;
}

void sub_298239700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  MEMORY[0x29C284010](va);
  _Unwind_Resume(a1);
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL ctu::cf::plist_adapter::set<BOOL>(int a1, const char *a2, int a3)
{
  ctu::cf::MakeCFString::MakeCFString(&key, a2);
  v5 = MEMORY[0x29EDB8F00];
  if (!a1)
  {
    v5 = MEMORY[0x29EDB8EF8];
  }

  v6 = *v5;
  v11 = v6;
  if (v6)
  {
    v7 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(key, v6, qword_2A1899000, *algn_2A1899008, *MEMORY[0x29EDB8FA8]);
    if (a3)
    {
      v8 = CFPreferencesSynchronize(qword_2A1899000, *algn_2A1899008, v7) != 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v11);
  MEMORY[0x29C284010](&key);
  return v8;
}

void sub_298239818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  MEMORY[0x29C284010](&a9);
  _Unwind_Resume(a1);
}

uint64_t TelephonyUtilPrefs::getPreference<BOOL>(uint64_t a1, ctu::cf *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  ctu::cf::MakeCFString::MakeCFString(&v10, v3);
  v4 = (*optionsAdapter)();
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      v8 = ctu::cf::assign(a2, v5, v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x29C284010](&v10);
  return v8;
}

uint64_t _GLOBAL__sub_I_TelephonyBasebandPowerDebugOptionsInternal_cpp()
{
  MEMORY[0x29C284020](&optionsAdapter, @"com.apple.telephony.powerdebugoptions", *MEMORY[0x29EDB8FB0]);

  return __cxa_atexit(TelephonyUtilPrefs::~TelephonyUtilPrefs, &optionsAdapter, &dword_298238000);
}

const char *TelephonyBasebandPMUTraceToString(int a1)
{
  if ((a1 - 1) > 0xC)
  {
    return "kTelephonyBasebandPMUTrace_Invalid";
  }

  else
  {
    return off_29EE8DD88[a1 - 1];
  }
}

const void *TelephonyBasebandCreateController(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!TelephonyRadiosGetRadio())
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandCreateController", "Device not supported\n");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_298238000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Device not supported", buf, 2u);
    }

    return 0;
  }

  pthread_once(&_TelephonyBasebandControllerRegisterOnce, _TelephonyBasebandControllerRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerAllocate", "Failed to create %s instance\n", "TelephonyUtilBasebandController");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "TelephonyUtilBasebandController";
      _os_log_error_impl(&dword_298238000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to create %s instance", buf, 0xCu);
    }

    _TelephonyUtilDebugPrintError("TelephonyBasebandCreateController", "Failed to allocate baseband controller.\n");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_298238000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to allocate baseband controller.", buf, 2u);
    }

    goto LABEL_11;
  }

  v2 = Instance;
  *(Instance + 16) = 0u;
  v3 = (Instance + 16);
  v3[5] = 0u;
  v3[6] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  if ((TelephonyBasebandControllerInitContext(v3) & 1) == 0)
  {
    CFRelease(v2);
LABEL_11:
    _TelephonyUtilDebugPrintError("TelephonyBasebandCreateController", "Unable to communicate with AppleBaseband driver\n");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_298238000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Unable to communicate with AppleBaseband driver", buf, 2u);
    }

    __TUAssertTrigger();
    return 0;
  }

  return v2;
}

uint64_t TelephonyBasebandPowerDebugUnblock(uint64_t a1)
{
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerPowerDebugUnblock", "Power Debug Unblock\n");

  return _TelephonyBasebandControllerCallMethod((a1 + 16), 0x2Eu, "unblock command", 0, 0, 0, 0);
}

BOOL TelephonyBasebandSetPowerDebugOptions(__int128 *a1)
{
  if (a1)
  {
    v2 = *a1;
    BYTE13(v2) = 0;
    return TelephonyBasebandSetPowerDebugOptionsInternal(&v2);
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandSetPowerDebugOptions", "null power debug options arg");
    return 0;
  }
}

uint64_t TelephonyBasebandNoOp()
{
  v2 = 0;
  _TelephonyBasebandHandlePowerDebugIntervention(1, &v2);
  if (v2)
  {
    v0 = "true";
  }

  else
  {
    v0 = "false";
  }

  _TelephonyUtilDebugPrint("TelephonyBasebandControllerNoOp", "No Op (should skip = %s)\n", v0);
  return 1;
}

uint64_t TelephonyBasebandDebugCommand(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return TelephonyBasebandControllerDebugCommand((a1 + 16), v4);
}

uint64_t TelephonyBasebandGetPMUExtOn(uint64_t a1, _BYTE *a2)
{
  output = 0xAAAAAAAAAAAAAAAALL;
  outputCnt = 1;
  result = _TelephonyBasebandControllerCallMethod((a1 + 16), 0xBu, "get pmuext on", 0, 0, &output, &outputCnt);
  if (output)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL TelephonyBasebandSupportsRadio()
{
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceMatching("AppleBaseband");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  v3 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v3 != 0;
}

uint64_t TelephonyBasebandGetResetReq(uint64_t a1, _BYTE *a2)
{
  output = 0xAAAAAAAAAAAAAAAALL;
  outputCnt = 1;
  result = _TelephonyBasebandControllerCallMethod((a1 + 16), 0x12u, "get reset request", 0, 0, &output, &outputCnt);
  if (output)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t TelephonyBasebandReportThermalData(char *a1, const void *a2, uint64_t a3, _DWORD *a4)
{
  if (a1 && a2 && a4)
  {
    v5 = (a1 + 16);

    return TelephonyBasebandControllerReportThermalData(v5, a2, a3, a4);
  }

  else
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandReportThermalData", "A required input parameter is NULL: ref: %p, data: %p, result: %p\n", a1, a2, a4);
    return 0;
  }
}

uint64_t TelephonyBasebandGetCPMSBudgetPolicy(uint64_t a1, _DWORD *a2)
{
  output = 0;
  outputCnt = 1;
  result = _TelephonyBasebandControllerCallMethod((a1 + 16), 0x32u, "Get budget policy", 0, 0, &output, &outputCnt);
  *a2 = output;
  return result;
}

uint64_t _TelephonyBasebandControllerRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  _TelephonyBasebandControllerTypeID = result;
  return result;
}

uint64_t TelephonyBasebandControllerInitContext(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_0);
  }

  v2 = qword_2A1898FB0;
  if (!qword_2A1898FB0)
  {
    __TUAssertTrigger();
    v2 = qword_2A1898FB0;
  }

  *(a1 + 72) = v2;
  dispatch_retain(v2);
  v3 = *(a1 + 72);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1107296256;
  block[2] = __TelephonyBasebandControllerInitContext_block_invoke_2;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = &v16;
  block[5] = a1;
  dispatch_sync(v3, block);
  if (*(a1 + 24) && !*(a1 + 4))
  {
    v4 = dispatch_group_create();
    *(a1 + 16) = v4;
    dispatch_group_enter(v4);
    v5 = *(a1 + 72);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1107296256;
    v14[2] = __TelephonyBasebandControllerInitContext_block_invoke_6;
    v14[3] = &__block_descriptor_tmp_10;
    v14[4] = &v16;
    v14[5] = a1;
    dispatch_async(v5, v14);
    v6 = *(a1 + 16);
    v7 = dispatch_time(0, 15000000000);
    if (dispatch_group_wait(v6, v7))
    {
      _TelephonyUtilDebugPrintError("TelephonyBasebandControllerInitContext", "%s: Timeout for waiting for the driver!\n", "TelephonyBasebandController");
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v21 = "TelephonyBasebandController";
        _os_log_error_impl(&dword_298238000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s: Timeout for waiting for the driver!", buf, 0xCu);
      }

      *(v17 + 24) = 0;
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      IOObjectRelease(v8);
      *(a1 + 8) = 0;
    }

    v9 = *(a1 + 16);
    if (v9)
    {
      dispatch_release(v9);
      *(a1 + 16) = 0;
    }
  }

  if (v17[3])
  {
    v10 = *(a1 + 72);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 1107296256;
    v13[2] = __TelephonyBasebandControllerInitContext_block_invoke_12;
    v13[3] = &__block_descriptor_tmp_15;
    v13[4] = &v16;
    v13[5] = a1;
    dispatch_sync(v10, v13);
  }

  else
  {
    TelephonyBasebandControllerFreeContext(a1);
  }

  v11 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v11;
}

dispatch_queue_t __TelephonyBasebandControllerInitContext_block_invoke()
{
  result = dispatch_queue_create("com.apple.libTelephonyUtil", 0);
  qword_2A1898FB0 = result;
  qword_2A1898FC8 = 0;
  qword_2A1898FD8 = 0;
  qword_2A1898FD0 = &qword_2A1898FC8;
  qword_2A1898FE0 = &qword_2A1898FD8;
  qword_2A1898FE8 = 0;
  qword_2A1898FF0 = &qword_2A1898FE8;
  return result;
}

void __TelephonyBasebandControllerInitContext_block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBB110];
  *(*(a1 + 40) + 24) = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
  v3 = *(a1 + 40);
  v4 = *(v3 + 24);
  if (v4)
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 4) = 0;
    *(v3 + 32) = 0;
    RunLoopSource = IONotificationPortGetRunLoopSource(v4);
    *(v3 + 40) = RunLoopSource;
    if (RunLoopSource)
    {
      v6 = IOServiceMatching("AppleBaseband");
      MatchingService = IOServiceGetMatchingService(v2, v6);
      *(v3 + 4) = MatchingService;
      if (MatchingService)
      {
        v8 = 1;
LABEL_11:
        *(*(*(a1 + 32) + 8) + 24) = v8;
        return;
      }

      _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerInitContext_sync", "%s: Failed to find %s service, registering for matching notification\n", "TelephonyBasebandController", "AppleBaseband");
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        v8 = 0;
        goto LABEL_11;
      }

      *buf = 136315394;
      v13 = "TelephonyBasebandController";
      v14 = 2080;
      v15 = "AppleBaseband";
      v9 = MEMORY[0x29EDCA988];
      v10 = "%s: Failed to find %s service, registering for matching notification";
      v11 = 22;
    }

    else
    {
      _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerInitContext_sync", "%s: Could not create run loop source\n", "TelephonyBasebandController");
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 136315138;
      v13 = "TelephonyBasebandController";
      v9 = MEMORY[0x29EDCA988];
      v10 = "%s: Could not create run loop source";
      v11 = 12;
    }

    _os_log_error_impl(&dword_298238000, v9, OS_LOG_TYPE_ERROR, v10, buf, v11);
    goto LABEL_10;
  }

  _TelephonyUtilDebugPrintError("TelephonyBasebandControllerInitContext_block_invoke_2", "%s: Could not create notification port\n", "TelephonyBasebandController");
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = "TelephonyBasebandController";
    _os_log_error_impl(&dword_298238000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s: Could not create notification port", buf, 0xCu);
  }
}

void __TelephonyBasebandControllerInitContext_block_invoke_6(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerInitContext_block_invoke", "%s: AppleBaseband IOService is not found. Finding it via matching service\n", "TelephonyBasebandController");
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "TelephonyBasebandController";
    _os_log_impl(&dword_298238000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s: AppleBaseband IOService is not found. Finding it via matching service", buf, 0xCu);
  }

  v2 = *(a1 + 40);
  v3 = *(v2 + 24);
  if (!v3)
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerFindMatchingService_sync", "%s: Invalid notification port\n", "TelephonyBasebandController");
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    v14 = "TelephonyBasebandController";
    v9 = MEMORY[0x29EDCA988];
    v10 = "%s: Invalid notification port";
LABEL_15:
    v11 = 12;
    goto LABEL_16;
  }

  v4 = *(v2 + 72);
  if (!v4)
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerFindMatchingService_sync", "%s: Invalid queue\n", "TelephonyBasebandController");
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    v14 = "TelephonyBasebandController";
    v9 = MEMORY[0x29EDCA988];
    v10 = "%s: Invalid queue";
    goto LABEL_15;
  }

  IONotificationPortSetDispatchQueue(v3, v4);
  v5 = *(v2 + 24);
  v6 = IOServiceMatching("AppleBaseband");
  v7 = IOServiceAddMatchingNotification(v5, "IOServiceMatched", v6, _TelephonyBasebandControllerServiceNotifyCallback, v2, (v2 + 8));
  if (!v7)
  {
    _TelephonyBasebandControllerServiceNotifyCallback(v2, *(v2 + 8));
    v12 = 1;
    goto LABEL_12;
  }

  v8 = v7;
  _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerFindMatchingService_sync", "%s: Failed to add IOService notification, err: 0x%x\n", "TelephonyBasebandController", v7);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "TelephonyBasebandController";
    v15 = 1024;
    v16 = v8;
    v9 = MEMORY[0x29EDCA988];
    v10 = "%s: Failed to add IOService notification, err: 0x%x";
    v11 = 18;
LABEL_16:
    _os_log_error_impl(&dword_298238000, v9, OS_LOG_TYPE_ERROR, v10, buf, v11);
  }

LABEL_11:
  v12 = 0;
LABEL_12:
  *(*(*(a1 + 32) + 8) + 24) = v12;
}

uint64_t TelephonyBasebandControllerFreeContext(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v2 = 1;
  v20 = 1;
  v3 = *(a1 + 72);
  if (v3)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1107296256;
    block[2] = __TelephonyBasebandControllerFreeContext_block_invoke;
    block[3] = &__block_descriptor_tmp_18;
    block[4] = &v17;
    block[5] = a1;
    dispatch_sync(v3, block);
    if (*(a1 + 48))
    {
      Current = CFRunLoopGetCurrent();
      v5 = *(a1 + 48);
      if (Current != v5)
      {
        v6 = CFRunLoopCopyCurrentMode(v5);
        if (v6)
        {
          v7 = v6;
          v8 = dispatch_semaphore_create(0);
          v9 = *(a1 + 48);
          v10 = *MEMORY[0x29EDB8FC0];
          v15[0] = MEMORY[0x29EDCA5F8];
          v15[1] = 0x40000000;
          v15[2] = __TelephonyBasebandControllerFreeContext_block_invoke_19;
          v15[3] = &__block_descriptor_tmp_20;
          v15[4] = v8;
          CFRunLoopPerformBlock(v9, v10, v15);
          CFRunLoopWakeUp(*(a1 + 48));
          dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
          dispatch_release(v8);
          CFRelease(v7);
        }
      }

      *(a1 + 48) = 0;
    }

    v11 = *(a1 + 16);
    if (v11)
    {
      dispatch_release(v11);
      *(a1 + 16) = 0;
    }

    v12 = *(a1 + 72);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 0x40000000;
    v14[2] = __TelephonyBasebandControllerFreeContext_block_invoke_2;
    v14[3] = &__block_descriptor_tmp_21;
    v14[4] = a1;
    dispatch_sync(v12, v14);
    dispatch_release(*(a1 + 72));
    *(a1 + 72) = 0;
    v2 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  return v2 & 1;
}

void __TelephonyBasebandControllerInitContext_block_invoke_12(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  *(*(a1 + 40) + 88) = &qword_2A1898FC8;
  *(*(a1 + 40) + 96) = &qword_2A1898FD8;
  *(*(a1 + 40) + 104) = &qword_2A1898FE8;
  v2 = *(a1 + 40);
  if (*v2)
  {
LABEL_2:
    v3 = 1;
    goto LABEL_7;
  }

  v4 = IOServiceOpen(v2[1], *MEMORY[0x29EDCA6B0], 0, v2);
  if (!v4)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10 = v6;
    v11 = v6;
    *__str = v6;
    *&__str[16] = v6;
    v7 = getprogname();
    snprintf(__str, 0x40uLL, "%s: TelephonyBaseband", v7);
    if (IOConnectCallMethod(*v2, 0xFu, 0, 0, __str, 0x40uLL, 0, 0, 0, 0))
    {
      _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerOpen_sync", "Failed to self-identify with AppleBaseband\n");
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_298238000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to self-identify with AppleBaseband", buf, 2u);
      }
    }

    goto LABEL_2;
  }

  v5 = v4;
  _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerOpen_sync", "%s: could not open service, ret = 0x%08x\n", "TelephonyBasebandController", v4);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *__str = 136315394;
    *&__str[4] = "TelephonyBasebandController";
    *&__str[12] = 1024;
    *&__str[14] = v5;
    _os_log_error_impl(&dword_298238000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s: could not open service, ret = 0x%08x", __str, 0x12u);
  }

  v3 = 0;
LABEL_7:
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

uint64_t __TelephonyBasebandControllerFreeContext_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*v2 && (v3 = IOServiceClose(*v2), *v2 = 0, v3))
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerClose", "%s: could not close service, ret = 0x%08x\n", "TelephonyBasebandController", v3);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(v2 + 4);
  if (v5)
  {
    IOObjectRelease(v5);
    *(v2 + 4) = 0;
  }

  v6 = *(v2 + 40);
  if (v6)
  {
    v7 = *(v2 + 48);
    if (v7)
    {
      v8 = *(v2 + 96);
      v9 = *v8;
      if (*v8)
      {
        while (1)
        {
          v10 = v9[1];
          if (*v9 == v7)
          {
            break;
          }

          v9 = v9[1];
          if (!v10)
          {
            goto LABEL_16;
          }
        }

        v11 = v9[2];
        v12 = (v8 + 1);
        if (v10)
        {
          v12 = (v10 + 16);
        }

        *v12 = v11;
        *v11 = v10;
        free(v9);
        v6 = *(v2 + 40);
        v7 = *(v2 + 48);
      }

LABEL_16:
      v13 = *MEMORY[0x29EDB8FB8];
      if (CFRunLoopContainsSource(v7, v6, *MEMORY[0x29EDB8FB8]))
      {
        CFRunLoopRemoveSource(*(v2 + 48), *(v2 + 40), v13);
      }
    }

    *(v2 + 40) = 0;
  }

  v14 = *(v2 + 24);
  if (v14)
  {
    IONotificationPortDestroy(v14);
    *(v2 + 24) = 0;
  }

  v15 = *(v2 + 32);
  if (v15)
  {
    IOObjectRelease(v15);
    *(v2 + 32) = 0;
  }

  result = *(v2 + 8);
  if (result)
  {
    result = IOObjectRelease(result);
    *(v2 + 8) = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

void __TelephonyBasebandControllerFreeContext_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (v3)
  {
    _Block_release(v3);
    v2 = *(a1 + 32);
    *(v2 + 80) = 0;
  }

  *(v2 + 88) = 0;
  *(*(a1 + 32) + 96) = 0;
  *(*(a1 + 32) + 104) = 0;
}

uint64_t TelephonyBasebandControllerResetModem(uint64_t a1)
{
  input = 0;
  SafeResetTime = TelephonyCapabilitiesRadioGetSafeResetTime();
  v26 = 0;
  if (_TelephonyBasebandHandlePowerDebugIntervention(16, &v26) && v26 == 1)
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerResetModem", "Skipping Reset\n");
    return 1;
  }

  _TelephonyUtilDebugPrint("TelephonyBasebandControllerResetModem", "Reset\n");
  if (!SafeResetTime)
  {
    return _TelephonyBasebandControllerCallMethod(a1, 0, "reset modem", &input, 1u, 0, 0);
  }

  *outputCnt = 0;
  v29 = outputCnt;
  v30 = 0x2000000000;
  v31 = 1;
  v4 = *(a1 + 72);
  block = MEMORY[0x29EDCA5F8];
  v35 = 1107296256;
  v36 = ___TelephonyBasebandControllerIsEmptyEventQueue_block_invoke;
  v37 = &__block_descriptor_tmp_203;
  v38 = outputCnt;
  v39 = a1;
  dispatch_sync(v4, &block);
  v5 = *(v29 + 24);
  _Block_object_dispose(outputCnt, 8);
  if (v5 != 1)
  {
    v32 = 0;
    if (TelephonyCapabilitiesRadioCoreDumpSupportsWakeReadySignal())
    {
      _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemLegacy", "safe reset %u\n", SafeResetTime);
      if (CFRunLoopGetCurrent() == *(a1 + 48))
      {
        _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemLegacy", "cannot do safe reset from this runloop context\n", v25);
        return _TelephonyBasebandControllerCallMethod(a1, 0, "reset modem", &input, 1u, 0, 0);
      }

      if (TelephonyRadiosGetRadioVendor() == 4)
      {
        v6 = 0;
        while (1)
        {
          block = 0xAAAAAAAAAAAAAAAALL;
          outputCnt[0] = 1;
          if (_TelephonyBasebandControllerCallMethod(a1, 3u, "get reset", 0, 0, &block, outputCnt))
          {
            if (block)
            {
              _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemLegacy", "modem in reset\n");
              goto LABEL_59;
            }

            _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemLegacy", "modem not in reset\n");
            sleep(1u);
          }

          else
          {
            _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemLegacy", "failed to get reset\n");
          }

          if (v6++ >= 0x27)
          {
            goto LABEL_59;
          }
        }
      }

      v33 = -86;
      if (!TelephonyBasebandControllerIsBootStageDown(&v33) || (v33 & 1) != 0)
      {
        _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemLegacy", "ret %u, boot stage down %d\n");
        return _TelephonyBasebandControllerCallMethod(a1, 0, "reset modem", &input, 1u, 0, 0);
      }

      block = 0xAAAAAAAAAAAAAAAALL;
      outputCnt[0] = 1;
      if ((_TelephonyBasebandControllerCallMethod(a1, 3u, "get reset", 0, 0, &block, outputCnt) & 1) == 0)
      {
        _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemLegacy", "failed to get reset\n", v25);
        return _TelephonyBasebandControllerCallMethod(a1, 0, "reset modem", &input, 1u, 0, 0);
      }

      if (!block)
      {
        _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemLegacy", "modem not in reset\n", v25);
        return _TelephonyBasebandControllerCallMethod(a1, 0, "reset modem", &input, 1u, 0, 0);
      }

LABEL_59:
      v16 = malloc(0x18uLL);
      if (!v16)
      {
        _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemLegacy", "failed to allocate TelephonyBasebandWakeStruct\n", v25);
        return _TelephonyBasebandControllerCallMethod(a1, 0, "reset modem", &input, 1u, 0, 0);
      }

      v17 = v16;
      v18 = dispatch_group_create();
      *v17 = v18;
      v19 = *(a1 + 72);
      block = MEMORY[0x29EDCA5F8];
      v35 = 0x40000000;
      v36 = ___TelephonyBasebandControllerInsertInWakeQueue_block_invoke;
      v37 = &__block_descriptor_tmp_239;
      v38 = v17;
      v39 = a1;
      dispatch_sync(v19, &block);
      block = 0xAAAAAAAAAAAAAAAALL;
      outputCnt[0] = 1;
      v20 = _TelephonyBasebandControllerCallMethod(a1, 0xBu, "get pmuext on", 0, 0, &block, outputCnt);
      if (!v20 || !block)
      {
        _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemLegacy", "Found wake asserted when polling, wake %u, ret %u\n", 0, v20);
        v21 = *(a1 + 72);
        block = MEMORY[0x29EDCA5F8];
        v35 = 0x40000000;
        v36 = ___TelephonyBasebandControllerRemoveFromWakeQueue_block_invoke;
        v37 = &__block_descriptor_tmp_240;
        v38 = v17;
        v39 = a1;
        dispatch_sync(v21, &block);
      }

      v22 = dispatch_time(0, 1000000 * SafeResetTime);
      if (dispatch_group_wait(v18, v22))
      {
        _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemLegacy", "timeout for wake\n");
        v23 = *(a1 + 72);
        block = MEMORY[0x29EDCA5F8];
        v35 = 0x40000000;
        v36 = ___TelephonyBasebandControllerRemoveFromWakeQueue_block_invoke;
        v37 = &__block_descriptor_tmp_240;
        v38 = v17;
        v39 = a1;
        dispatch_sync(v23, &block);
      }

      dispatch_release(v18);
      free(v17);
      v10 = "_TelephonyBasebandControllerSafeResetModemLegacy";
LABEL_66:
      _TelephonyUtilDebugPrint(v10, "safe reset %u --done\n");
      return _TelephonyBasebandControllerCallMethod(a1, 0, "reset modem", &input, 1u, 0, 0);
    }

    _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModem", "safe reset %u\n", SafeResetTime);
    if (CFRunLoopGetCurrent() == *(a1 + 48))
    {
      _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerSafeResetModem", "cannot do safe reset from this runloop context\n");
    }

    else if (TelephonyBasebandControllerIsBootStageDown(&v32))
    {
      if (v32 == 1)
      {
        _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModem", "boot Stage Down %d\n");
        return _TelephonyBasebandControllerCallMethod(a1, 0, "reset modem", &input, 1u, 0, 0);
      }

      block = 0xAAAAAAAAAAAAAAAALL;
      outputCnt[0] = 1;
      if (_TelephonyBasebandControllerCallMethod(a1, 3u, "get reset", 0, 0, &block, outputCnt))
      {
        if (!block)
        {
          _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModem", "modem not in reset, proceeding\n");
        }

        v11 = malloc(0x18uLL);
        if (v11)
        {
          v12 = v11;
          LOBYTE(outputCnt[0]) = 0;
          v13 = dispatch_group_create();
          *v12 = v13;
          v14 = *(a1 + 72);
          block = MEMORY[0x29EDCA5F8];
          v35 = 0x40000000;
          v36 = ___TelephonyBasebandControllerInsertInCoredumpReadyQueue_block_invoke;
          v37 = &__block_descriptor_tmp_241;
          v38 = v12;
          v39 = a1;
          dispatch_sync(v14, &block);
          if (TelephonyBasebandControllerGetCoredumpReadyStatus(a1, outputCnt))
          {
            if (LOBYTE(outputCnt[0]) == 1)
            {
              _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModem", "found coredump ready when polling\n");
              _TelephonyBasebandControllerRemoveFromCoredumpReadyQueue(a1, v12);
            }

            v15 = dispatch_time(0, 1000000 * SafeResetTime);
            if (dispatch_group_wait(v13, v15))
            {
              _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModem", "timeout for coredump ready\n");
              _TelephonyBasebandControllerRemoveFromCoredumpReadyQueue(a1, v12);
            }

            dispatch_release(v13);
            free(v12);
            v10 = "_TelephonyBasebandControllerSafeResetModem";
            goto LABEL_66;
          }

          _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerSafeResetModem", "failed to get coredump ready status\n");
          _TelephonyBasebandControllerRemoveFromCoredumpReadyQueue(a1, v12);
        }

        else
        {
          _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerSafeResetModem", "failed to allocate TelephonyBasebandCoredumpReadyStruct\n");
        }
      }

      else
      {
        _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerSafeResetModem", "failed to get reset\n");
      }
    }

    else
    {
      _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerSafeResetModem", "failed to get boot stage\n");
    }

    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerResetModem", "failed to safe reset\n");
    return 0;
  }

  _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemPolling", "safe reset %u, polling\n", SafeResetTime);
  v33 = -86;
  if ((TelephonyBasebandControllerIsBootStageDown(&v33) & 1) == 0)
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerSafeResetModemPolling", "failed to get BootStageDown state\n");
    goto LABEL_21;
  }

  if (v33 == 1)
  {
    _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemPolling", "boot stage down, no need to safe reset\n", v24);
    return _TelephonyBasebandControllerCallMethod(a1, 0, "reset modem", &input, 1u, 0, 0);
  }

  block = 0xAAAAAAAAAAAAAAAALL;
  outputCnt[0] = 1;
  if ((_TelephonyBasebandControllerCallMethod(a1, 3u, "get reset", 0, 0, &block, outputCnt) & 1) == 0)
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerSafeResetModemPolling", "failed to get reset\n");
    goto LABEL_21;
  }

  if (!block)
  {
    _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemPolling", "modem not in reset, proceeding\n");
  }

  ready = TelephonyCapabilitiesRadioCoreDumpSupportsWakeReadySignal();
  v9 = 0;
  while ((ready & 1) == 0)
  {
    LOBYTE(block) = 0;
    if ((TelephonyBasebandControllerGetCoredumpReadyStatus(a1, &block) & 1) == 0)
    {
      _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerSafeResetModemPolling", "failed to get coredump ready status\n");
      goto LABEL_21;
    }

    if (block)
    {
      goto LABEL_38;
    }

LABEL_36:
    usleep(0x7A120u);
    v9 += 500;
    if (v9 >= SafeResetTime)
    {
      _TelephonyUtilDebugPrint("_TelephonyBasebandControllerSafeResetModemPolling", "timeout for safe reset\n");
LABEL_38:
      v10 = "_TelephonyBasebandControllerSafeResetModemPolling";
      goto LABEL_66;
    }
  }

  block = 0xAAAAAAAAAAAAAAAALL;
  outputCnt[0] = 1;
  if (_TelephonyBasebandControllerCallMethod(a1, 0xBu, "get pmuext on", 0, 0, &block, outputCnt))
  {
    if (!block)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerSafeResetModemPolling", "failed to get PMUExtOn\n");
LABEL_21:
  _TelephonyUtilDebugPrintError("TelephonyBasebandControllerResetModem", "failed to safe reset via polling\n");
  return 0;
}

BOOL _TelephonyBasebandHandlePowerDebugIntervention(uint64_t a1, char *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandHandlePowerDebugIntervention", "null should skip arg");
    return a2 != 0;
  }

  v3 = a1;
  *a2 = 0;
  if (TelephonyBasebandGetPowerDebugOptionsInternal::sOnce != -1)
  {
    dispatch_once(&TelephonyBasebandGetPowerDebugOptionsInternal::sOnce, &__block_literal_global);
  }

  v12 = sPowerDebugOptions;
  if ((sPowerDebugOptions & v3) != 0)
  {
    if (BYTE12(v12) == 1)
    {
      if (BYTE13(v12) == 1)
      {
        _TelephonyUtilDebugPrint("_TelephonyBasebandHandlePowerDebugIntervention", "skipping intervention since power debug options indicate it should only be applied once");
        return a2 != 0;
      }

      _TelephonyUtilDebugPrint("_TelephonyBasebandHandlePowerDebugIntervention", "setting did-intervene-once flag");
      BYTE13(v12) = 1;
      if (!TelephonyBasebandSetPowerDebugOptionsInternal(&v12))
      {
        _TelephonyUtilDebugPrintError("_TelephonyBasebandHandlePowerDebugIntervention", "failed to set did-intervene-once flag");
      }
    }

    v4 = BYTE4(v12);
    switch(DWORD1(v12))
    {
      case 3:
        v13 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__attr.__sig = v7;
        *&__attr.__opaque[8] = v7;
        *&__attr.__opaque[24] = v7;
        *&__attr.__opaque[40] = v7;
        pthread_attr_init(&__attr);
        pthread_attr_set_qos_class_np(&__attr, QOS_CLASS_USER_INITIATED, 0);
        if (pthread_create(&v13, &__attr, _TelephonyBasebandPowerDebugBlockingThread, &v12))
        {
          _TelephonyUtilDebugPrintError("_TelephonyBasebandHandlePowerDebugInterventionBlock", "failed to create unblocking thread so skipping block power debug intervention");
        }

        else
        {
          LODWORD(v8) = DWORD2(v12);
          v9 = v8 / 1000.0;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          *__str = 0u;
          v17 = 0u;
          memset(v15, 0, sizeof(v15));
          v10 = _TelephonyBasebandPowerDebugCommandMaskToString(v3);
          snprintf(__str, 0x80uLL, "Telephony Baseband Command %s Detected", v10);
          if (v9 == 0.0)
          {
            strcpy(v15, "This command will be blocked until the baseband driver sends an out-of-band notification (e.g. bbutil debug power unblock)");
          }

          else
          {
            snprintf(v15, 0x100uLL, "This command will be blocked until the baseband driver sends an out-of-band notification (e.g. bbutil debug power unblock) or until after %.0f s.", v9);
          }

          TelephonyUtilDisplayAlert();
          pthread_join(v13, 0);
        }

        pthread_attr_destroy(&__attr);
        break;
      case 2:
        if (isatty(0) || isatty(1) || isatty(2))
        {
          v5 = _TelephonyBasebandPowerDebugCommandMaskToString(v3);
          printf("(power-debug) %s detected\n(power-debug) [continue] c; [skip] s\n(power-debug) ", v5);
          while (1)
          {
            v6 = getchar();
            if (v6 == -1 || v6 == 99)
            {
              break;
            }

            if (v6 == 115)
            {
              v4 = 1;
              goto LABEL_25;
            }
          }
        }

        else
        {
          _TelephonyUtilDebugPrintError("_TelephonyBasebandHandlePowerDebugInterventionAsk", "no terminal available so power debug intervention not applied");
        }

        break;
      case 1:
LABEL_25:
        *a2 = v4;
        break;
    }
  }

  else if (sPowerDebugOptions)
  {
    _TelephonyUtilDebugPrint("_TelephonyBasebandHandlePowerDebugIntervention", "power debug options are set but not for this command, proceeding normally...");
  }

  return a2 != 0;
}

uint64_t _TelephonyBasebandControllerCallMethod(unsigned int *a1, uint32_t a2, const char *a3, uint64_t *input, uint32_t inputCnt, uint64_t *output, uint32_t *outputCnt)
{
  result = *a1;
  if (result)
  {
    v9 = IOConnectCallScalarMethod(result, a2, input, inputCnt, output, outputCnt);
    if (v9)
    {
      _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerCallMethod", "%s: operation '%s' failed: 0x%08x\n", "TelephonyBasebandController", a3, v9);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t TelephonyBasebandControllerDebugCommand(unsigned int *a1, const void *a2)
{
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerDebugCommand", "Debug Action\n");
  result = *a1;
  if (result)
  {
    return IOConnectCallMethod(result, 0x1Fu, 0, 0, a2, 0x30uLL, 0, 0, 0, 0) == 0;
  }

  return result;
}

uint64_t TelephonyBasebandControllerForceResetModem(unsigned int *a1)
{
  input = 16;
  v3 = 0;
  if (_TelephonyBasebandHandlePowerDebugIntervention(16, &v3) && v3 == 1)
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerForceResetModem", "Skipping Force Reset\n");
    return 1;
  }

  else
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerForceResetModem", "Force Reset\n");
    return _TelephonyBasebandControllerCallMethod(a1, 0, "reset modem", &input, 1u, 0, 0);
  }
}

uint64_t TelephonyBasebandControllerPowercycleModem(unsigned int *a1)
{
  v3 = 0;
  if (_TelephonyBasebandHandlePowerDebugIntervention(8, &v3) && v3 == 1)
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerPowercycleModem", "Skipping Powercycle\n");
    return 1;
  }

  else
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerPowercycleModem", "Powercycling\n");
    return _TelephonyBasebandControllerCallMethod(a1, 6u, "powercycle modem", 0, 0, 0, 0);
  }
}

uint64_t TelephonyBasebandControllerPowerOnModem(unsigned int *a1, unsigned int a2)
{
  input = a2;
  v7 = 0;
  if (a2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (_TelephonyBasebandHandlePowerDebugIntervention(v4, &v7) && v7 == 1)
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerPowerOnModem", "Skipping Radio on to %u\n", a2);
    return 1;
  }

  else
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerPowerOnModem", "Radio on to %u\n", a2);
    if (a2)
    {
      v6 = "power on";
    }

    else
    {
      v6 = "power off";
    }

    return _TelephonyBasebandControllerCallMethod(a1, 1u, v6, &input, 1u, 0, 0);
  }
}

uint64_t TelephonyBasebandControllerSetModemCoredumpGPIO(unsigned int *a1, unsigned int a2)
{
  input = a2;
  v6 = 0;
  if (_TelephonyBasebandHandlePowerDebugIntervention(64, &v6) && v6 == 1)
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerSetModemCoredumpGPIO", "Skipping Modem Coredump GPIO = %u\n", a2);
    return 1;
  }

  else
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerSetModemCoredumpGPIO", "Modem Coredump GPIO = %u\n", a2);
    if (a2)
    {
      v5 = "coredump on";
    }

    else
    {
      v5 = "coredump off";
    }

    return _TelephonyBasebandControllerCallMethod(a1, 0x13u, v5, &input, 1u, 0, 0);
  }
}

uint64_t TelephonyBasebandControllerCrashModemWithSPMI(unsigned int *a1)
{
  v3 = 0;
  if (_TelephonyBasebandHandlePowerDebugIntervention(32, &v3) && v3 == 1)
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerCrashModemWithSPMI", "Skipping Modem Crash via SPMI\n");
    return 1;
  }

  else
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerCrashModemWithSPMI", "Modem Crash via SPMI\n");
    return _TelephonyBasebandControllerCallMethod(a1, 0x2Bu, "crash modem via spmi", 0, 0, 0, 0);
  }
}

uint64_t TelephonyBasebandControllerCrashModemWithSPMIWithReason(unsigned int *a1, const void *a2)
{
  v5 = 0;
  if (_TelephonyBasebandHandlePowerDebugIntervention(32, &v5) && v5 == 1)
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerCrashModemWithSPMIWithReason", "Skipping Modem Crash via SPMI with reason\n");
    return 1;
  }

  else
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerCrashModemWithSPMIWithReason", "Modem Crash via SPMI with reason\n");
    result = *a1;
    if (result)
    {
      return IOConnectCallMethod(result, 0x2Cu, 0, 0, a2, 0x40uLL, 0, 0, 0, 0) == 0;
    }
  }

  return result;
}

uint64_t TelephonyBasebandControllerGetPMUTrace(unsigned int *a1, int *a2)
{
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerGetPMUTrace", "Get Modem PMU Trace\n");
  RadioVendor = TelephonyRadiosGetRadioVendor();
  v5 = 0;
  if (a2 && RadioVendor == 3)
  {
    v9 = 0;
    v5 = TelephonyBasebandControllerSPMIRawRead(a1, 2u, 0xD0u, 4u, &v9);
    if (v5)
    {
      v6 = v9;
      _TelephonyUtilDebugPrint("getBasebandPMUTraceINT", "output: 0x%x\n", v9);
      switch(v6)
      {
        case -2147483648:
          v7 = 12;
          goto LABEL_20;
        case -2147483647:
          v7 = 13;
          goto LABEL_20;
        case -2147483646:
          v7 = 5;
          goto LABEL_20;
        case -2147483645:
          v7 = 6;
          goto LABEL_20;
        case -2147483644:
          v7 = 8;
          goto LABEL_20;
        case -2147483643:
          v7 = 9;
          goto LABEL_20;
        case -2147483642:
          v7 = 1;
          goto LABEL_20;
        case -2147483641:
          v7 = 2;
          goto LABEL_20;
        case -2147483640:
          v7 = 3;
          goto LABEL_20;
        case -2147483639:
          v7 = 4;
          goto LABEL_20;
        case -2147483638:
          v7 = 10;
          goto LABEL_20;
        case -2147483637:
          v7 = 11;
          goto LABEL_20;
        case -2147483629:
          v7 = 7;
LABEL_20:
          *a2 = v7;
          break;
        default:
          *a2 = 0;
          break;
      }
    }

    else
    {
      _TelephonyUtilDebugPrintError("getBasebandPMUTraceINT", "Failed to read SPMI HEB\n");
    }
  }

  return v5;
}

uint64_t TelephonyBasebandControllerAPTimeSync(unsigned int *a1, _OWORD *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    return 0;
  }

  output[0] = 0;
  output[1] = 0;
  outputCnt = 2;
  result = _TelephonyBasebandControllerCallMethod(a1, 0x14u, "timesync", 0, 0, output, &outputCnt);
  *a2 = *output;
  return result;
}

uint64_t TelephonyBasebandControllerEnableModemVBUS(unsigned int *a1, unsigned int a2)
{
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerEnableModemVBUS", "VBUS on to %u\n", a2);
  input = a2;
  if (a2)
  {
    v4 = "usb on";
  }

  else
  {
    v4 = "usb off";
  }

  return _TelephonyBasebandControllerCallMethod(a1, 8u, v4, &input, 1u, 0, 0);
}

uint64_t TelephonyBasebandControllerEnableModemMux(unsigned int *a1, unsigned int a2)
{
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerEnableModemMux", "Mux to %u\n", a2);
  input = a2;
  if (a2)
  {
    v4 = "mux on";
  }

  else
  {
    v4 = "mux off";
  }

  return _TelephonyBasebandControllerCallMethod(a1, 2u, v4, &input, 1u, 0, 0);
}

uint64_t TelephonyBasebandControllerEnableModemUSBEnumerationWithAP(uint64_t a1, int a2)
{
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerEnableModemUSBEnumerationWithAP", "Enabling Enumeration to %u\n", a2);
  existing = -1431655766;
  v3 = *MEMORY[0x29EDBB110];
  v4 = IOServiceMatching("AppleS5L8930XUSBArbitrator");
  if (IOServiceGetMatchingServices(v3, v4, &existing))
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerEnableModemUSBEnumerationWithAP", "Failed to find %s service\n", "AppleS5L8930XUSBArbitrator");
    v5 = 0;
  }

  else
  {
    if (a2)
    {
      v6 = MEMORY[0x29EDB8F00];
    }

    else
    {
      v6 = MEMORY[0x29EDB8EF8];
    }

    v7 = IOIteratorNext(existing);
    if (v7)
    {
      v8 = v7;
      v5 = 0;
      v9 = *v6;
      do
      {
        v10 = IORegistryEntrySetCFProperty(v8, @"EnableBBUSB", v9);
        if (v10)
        {
          _TelephonyUtilDebugPrintError("TelephonyBasebandControllerEnableModemUSBEnumerationWithAP", "Failed to configure property, ret = 0x%08x\n", v10);
        }

        else
        {
          v5 = 1;
        }

        IOObjectRelease(v8);
        v8 = IOIteratorNext(existing);
      }

      while (v8);
    }

    else
    {
      v5 = 0;
    }

    _TelephonyUtilDebugPrint("TelephonyBasebandControllerEnableModemUSBEnumerationWithAP", "Finished scanning for %s service\n", "AppleS5L8930XUSBArbitrator");
  }

  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v5 & 1;
}

uint64_t TelephonyBasebandControllerGetReset(unsigned int *a1, char *a2)
{
  output = 0xAAAAAAAAAAAAAAAALL;
  outputCnt = 1;
  result = _TelephonyBasebandControllerCallMethod(a1, 3u, "get reset", 0, 0, &output, &outputCnt);
  v4 = result ^ 1;
  if (output)
  {
    v4 = 1;
  }

  *a2 = v4;
  return result;
}

uint64_t TelephonyBasebandControllerRegisterForReset(uint64_t a1, __CFRunLoop *a2, uint64_t a3, uint64_t a4)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = __TelephonyBasebandControllerRegisterForReset_block_invoke;
  v8[3] = &__block_descriptor_tmp_69;
  v8[4] = a3;
  v8[5] = a4;
  v6 = *(a1 + 80);
  if (v6)
  {
    _Block_release(v6);
  }

  *(a1 + 80) = _Block_copy(v8);
  result = _TelephonyBasebandControllerRegisterForService(*(a1 + 24), (a1 + 32), *(a1 + 4), *(a1 + 40), a2, _TelephonyBasebandResetCallback, a1);
  if (result)
  {
    *(a1 + 48) = a2;
    return _TelephonyBasebandControllerInsertInEventQueue(a1, a2);
  }

  return result;
}

uint64_t _TelephonyBasebandControllerRegisterForService(IONotificationPort *a1, io_object_t *notification, io_service_t service, __CFRunLoopSource *a4, __CFRunLoop *a5, IOServiceInterestCallback callback, void *refCon)
{
  if (!a1)
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerRegisterForService", "Notification port was not successfully created\n");
    return 0;
  }

  if (!a4)
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerRegisterForService", "Could not create run loop source\n");
    return 0;
  }

  if (IOServiceAddInterestNotification(a1, service, "IOGeneralInterest", callback, refCon, notification))
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerRegisterForService", "Could not add interest notification on service: %#x\n");
    return 0;
  }

  CFRunLoopAddSource(a5, a4, *MEMORY[0x29EDB8FB8]);
  return 1;
}

BOOL _TelephonyBasebandControllerInsertInEventQueue(uint64_t a1, uint64_t a2)
{
  v4 = malloc(0x18uLL);
  if (v4)
  {
    v5 = *(a1 + 72);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___TelephonyBasebandControllerInsertInEventQueue_block_invoke;
    block[3] = &__block_descriptor_tmp_255;
    block[4] = v4;
    block[5] = a2;
    block[6] = a1;
    dispatch_sync(v5, block);
  }

  else
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerInsertInEventQueue", "failed to allocate TelephonyBasebandEventStruct\n");
  }

  return v4 != 0;
}

BOOL TelephonyBasebandControllerRegisterForEvents(uint64_t a1, __CFRunLoop *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v9 = MEMORY[0x29EDCA5F8];
    v10 = 0x40000000;
    v11 = __TelephonyBasebandControllerRegisterForEvents_block_invoke;
    v12 = &__block_descriptor_tmp_71;
    v13 = a3;
    v14 = a4;
    v6 = *(a1 + 80);
    if (v6)
    {
      _Block_release(v6);
    }

    *(a1 + 80) = _Block_copy(&v9);
    if (_TelephonyBasebandControllerRegisterForService(*(a1 + 24), (a1 + 32), *(a1 + 4), *(a1 + 40), a2, _TelephonyBasebandEventCallback, a1))
    {
      *(a1 + 48) = a2;
      v7 = _TelephonyBasebandControllerInsertInEventQueue(a1, a2);
    }

    else
    {
      v7 = 0;
    }

    _TelephonyUtilDebugPrint("TelephonyBasebandControllerRegisterForEvents", "registered for baseband events\n", v9, v10, v11, v12, v13, v14);
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerRegisterForEvents", "invalid baseband controller context\n", a3, a4);
    return 0;
  }

  return v7;
}

uint64_t _TelephonyBasebandEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    switch(a3)
    {
      case 0xE3FF8000:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received reset detected message\n");
        break;
      case 0xE3FF8001:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received baseband alive message\n");
        break;
      case 0xE3FF8002:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received powering down message\n");
        break;
      case 0xE3FF8003:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received powered on message\n");
        break;
      case 0xE3FF8004:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received baseband down message\n");
        break;
      case 0xE3FF8005:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received baseband up message\n");
        break;
      case 0xE3FF8006:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received PCI Cpl message\n");
        break;
      case 0xE3FF8007:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received wake-asserted message\n");
        v10 = *(a1 + 72);
        block = MEMORY[0x29EDCA5F8];
        v14 = 0x40000000;
        v11 = ___TelephonyBasebandControllerRemoveAllFromWakeQueue_block_invoke;
        v12 = &__block_descriptor_tmp_252;
        goto LABEL_21;
      case 0xE3FF8008:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received wake deasserted message\n");
        break;
      case 0xE3FF8009:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received PCIAER message\n");
        break;
      case 0xE3FF800A:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received PCI link down message\n");
        break;
      case 0xE3FF800B:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received PCI bad request message\n");
        break;
      case 0xE3FF800C:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received OCP read ready message\n");
        break;
      case 0xE3FF800D:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received coredump ready message\n");
        v10 = *(a1 + 72);
        block = MEMORY[0x29EDCA5F8];
        v14 = 0x40000000;
        v11 = ___TelephonyBasebandControllerRemoveAllFromCoredumpReadyQueue_block_invoke;
        v12 = &__block_descriptor_tmp_253;
LABEL_21:
        v15 = v11;
        v16 = v12;
        v17 = a1;
        dispatch_sync(v10, &block);
        break;
      case 0xE3FF800E:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received OCP write message\n");
        break;
      case 0xE3FF800F:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received billboard is ready message\n");
        break;
      case 0xE3FF8010:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received GNSS Wake ACK message\n");
        break;
      case 0xE3FF8011:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received GNSS Trap ACK message\n");
        break;
      default:
        _TelephonyUtilDebugPrint("_TelephonyBasebandEventCallback", "received unknown baseband event %u\n");
        break;
    }

    result = *(a1 + 80);
    if (result)
    {
      return (*(result + 16))(result, a2, a3, a4);
    }
  }

  else
  {

    return _TelephonyUtilDebugPrintError("_TelephonyBasebandEventCallback", "invalid baseband controller context\n", a3, a4);
  }

  return result;
}

uint64_t TelephonyBasebandControllerClearFreqListExt(unsigned int *a1, uint64_t a2)
{
  input = a2;
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerClearFreqListExt", "Clear Frequency list\n");
  return _TelephonyBasebandControllerCallMethod(a1, 0x20u, "clear frequency list", &input, 1u, 0, 0);
}

uint64_t TelephonyBasebandControllerPollGPIO(unsigned int *a1, int a2, int a3, int a4, int a5)
{
  v24 = 0;
  time(&v24);
  if (!a4)
  {
    return 0;
  }

  v10 = a5 ? 1000 * a5 : 1000 * a4;
  if (a2 == 8)
  {
    v23 = 0;
    outputCnt = 1;
    if (_TelephonyBasebandControllerCallMethod(a1, 0x12u, "RESET_REQUEST", 0, 0, &v23, &outputCnt))
    {
      v11 = 0;
      while (1)
      {
        v12 = v23 != 0;
        v11 += v10;
        if (v12 == a3 || v11 >= 1000 * a4)
        {
          break;
        }

        usleep(v10);
        if ((_TelephonyBasebandControllerCallMethod(a1, 0x12u, "RESET_REQUEST", 0, 0, &v23, &outputCnt) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v14 = 1;
    }

    else
    {
      v12 = 0;
      v11 = 0;
LABEL_16:
      _TelephonyUtilDebugPrintError("TelephonyBasebandControllerPollGPIO", "Failed to query GPIO %s\n", "RESET_REQUEST");
      v14 = 0;
      v11 += v10;
    }

    v15 = "RESET_REQUEST";
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerPollGPIO", "invalid GPIO\n");
    v11 = 0;
    v14 = 0;
    v12 = 0;
    v15 = "UNDEFINED_PIN";
  }

  v16 = v12 == a3;
  v17 = "inactive";
  if (a3)
  {
    v17 = "active";
  }

  v18 = v14 & v16;
  v19 = (v14 & v16) != 0 ? "done" : "timed out";
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerPollGPIO", "checking %s %s %s after %u.%06u seconds\n", v15, v17, v19, v11 / 0xF4240, v11 % 0xF4240);
  if (!v18)
  {
    return 0;
  }

  v23 = 0;
  time(&v23);
  v20 = (difftime(v23, v24) * 1000.0);
  if (v20 <= 1)
  {
    return 1;
  }

  else
  {
    return v20;
  }
}

uint64_t TelephonyBasebandControllerSetManagerState(unsigned int *a1, unsigned int a2)
{
  input = a2;
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerSetManagerState", "Manager state = %llu\n", a2);
  if (a2)
  {
    v4 = "Started";
  }

  else
  {
    v4 = "Stopped";
  }

  return _TelephonyBasebandControllerCallMethod(a1, 0x16u, v4, &input, 1u, 0, 0);
}

uint64_t TelephonyBasebandControllerGetManagerState(unsigned int *a1, _DWORD *a2)
{
  outputCnt = 1;
  if (!a2)
  {
    return 0;
  }

  output = 0xAAAAAAAAAAAAAAAALL;
  result = _TelephonyBasebandControllerCallMethod(a1, 0x17u, "get manager state", 0, 0, &output, &outputCnt);
  if (result)
  {
    *a2 = output;
    return 1;
  }

  return result;
}

uint64_t TelephonyBasebandControllerGetCoredumpReadyStatus(unsigned int *a1, BOOL *a2)
{
  output = 0;
  outputCnt = 1;
  if (a2)
  {
    if (_TelephonyBasebandControllerCallMethod(a1, 0x2Au, "get coredump ready status", 0, 0, &output, &outputCnt))
    {
      v3 = output;
      *a2 = output != 0;
      _TelephonyUtilDebugPrint("TelephonyBasebandControllerGetCoredumpReadyStatus", "Coredump Ready Status = %llu\n", v3);
      return 1;
    }

    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerGetCoredumpReadyStatus", "failed to get coredump ready status\n");
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerGetCoredumpReadyStatus", "bad argument\n");
  }

  return 0;
}

uint64_t TelephonyBasebandControllerGetBasebandState(unsigned int *a1, _DWORD *a2)
{
  output = 0;
  outputCnt = 1;
  if (!a2)
  {
    return 0;
  }

  v3 = _TelephonyBasebandControllerCallMethod(a1, 0x1Au, "get baseband state", 0, 0, &output, &outputCnt);
  v4 = output;
  if (v3)
  {
    *a2 = output;
  }

  _TelephonyUtilDebugPrint("TelephonyBasebandControllerGetBasebandState", "Baseband state = %llu\n", v4);
  return v3;
}

uint64_t TelephonyBasebandControllerSetBasebandState(unsigned int *a1, unsigned int a2)
{
  input = a2;
  outputCnt = 0;
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerSetBasebandState", "Baseband state = %llu\n", a2);
  return _TelephonyBasebandControllerCallMethod(a1, 0x1Bu, "Set Baseband State", &input, 1u, 0, &outputCnt);
}

uint64_t TelephonyBasebandControllerGetBasebandProperty(unsigned int *a1, unsigned int a2, uint64_t *a3)
{
  input = a2;
  outputCnt = 1;
  if (!a3)
  {
    return 0;
  }

  output = 0xAAAAAAAAAAAAAAAALL;
  v4 = _TelephonyBasebandControllerCallMethod(a1, 0x1Cu, "get baseband property", &input, 1u, &output, &outputCnt);
  v5 = output;
  if (v4)
  {
    *a3 = output;
  }

  _TelephonyUtilDebugPrint("TelephonyBasebandControllerGetBasebandProperty", "Baseband property = %llu\n", v5);
  return v4;
}

uint64_t TelephonyBasebandControllerSetBasebandProperty(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  outputCnt = 0;
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerSetBasebandProperty", "Baseband property = %d, %llu\n", a2, a3);
  return _TelephonyBasebandControllerCallMethod(a1, 0x1Du, "set baseband property", input, 2u, 0, &outputCnt);
}

uint64_t TelephonyBasebandControllerReportThermalData(unsigned int *a1, const void *a2, unsigned int a3, _DWORD *a4)
{
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerReportThermalData", "Report Thermal Data\n");
  if (a1 && a2 && a4)
  {
    output = 0xAAAAAAAAAAAAAAAALL;
    outputCnt = 1;
    *a4 = 255;
    result = *a1;
    if (!result)
    {
      return result;
    }

    if (!IOConnectCallMethod(result, 0x1Eu, 0, 0, a2, a3, &output, &outputCnt, 0, 0))
    {
      *a4 = output;
      return 1;
    }
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerReportThermalData", "A required input parameter is NULL: context: %p, thermalData: %p, result: %p\n", a1, a2, a4);
  }

  return 0;
}

uint64_t TelephonyBasebandControllerResetSPMI(unsigned int *a1, uint64_t a2)
{
  input = a2;
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerResetSPMI", "Reset SPMI with data (0x%llx)\n", a2);
  return _TelephonyBasebandControllerCallMethod(a1, 0x23u, "Reset SPMI", &input, 1u, 0, 0);
}

uint64_t TelephonyBasebandControllerGNSSTrapTrigger(unsigned int *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerGNSSTrapTrigger", "GNSS Trap Trigger!\n");
  *input = xmmword_298241B10;
  return _TelephonyBasebandControllerCallMethodGeneric(a1, 0x2Du, "GNSS trigger trap", input, 2u, 0, 0, 0, 0, 0, 0, 1);
}

uint64_t TelephonyBasebandControllerGNSSWakeTrigger(unsigned int *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerGNSSWakeTrigger", "GNSS Wake Trigger!\n");
  *input = xmmword_298241B20;
  return _TelephonyBasebandControllerCallMethodGeneric(a1, 0x2Du, "GNSS trigger wake", input, 2u, 0, 0, 0, 0, 0, 0, 1);
}

uint64_t TelephonyBasebandControllerSetCPMSBudgetPolicy(unsigned int *a1, unsigned int a2)
{
  input = a2;
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerSetCPMSBudgetPolicy", "Budget Policy = %llu\n", a2);
  return _TelephonyBasebandControllerCallMethod(a1, 0x31u, "Set budget policy", &input, 1u, 0, 0);
}

uint64_t TelephonyBasebandControllerSPMIRawWrite(unsigned int *a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  input[3] = *MEMORY[0x29EDCA608];
  v10 = "HEB";
  if ((a2 & 2) == 0)
  {
    v10 = "Unknown";
  }

  if (a2)
  {
    v10 = "IDC";
  }

  _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIRawWrite", "SPMI Raw Write: [%s:0x%x]\n", v10, a3);
  if (!a4)
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerSPMIRawWrite", "No data is given!\n");
    return 0;
  }

  if (a5 >= 0x41)
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIRawWrite", "Data size (%u) is greater than the max size (%lu)\n", a5, 64);
    return 0;
  }

  _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIRawWrite", "Data: ");
  if (a5)
  {
    v12 = a4;
    v13 = a5;
    do
    {
      v14 = *v12++;
      _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIRawWrite", "0x%x ", v14);
      --v13;
    }

    while (v13);
  }

  _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIRawWrite", "\n");
  input[0] = a2;
  input[1] = a3;
  input[2] = a5;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  inputStruct[2] = v15;
  inputStruct[3] = v15;
  inputStruct[0] = v15;
  inputStruct[1] = v15;
  __memcpy_chk();
  return _TelephonyBasebandControllerCallMethodGeneric(a1, 0x24u, "SPMI raw-write", input, 3u, inputStruct, 0x40uLL, 0, 0, 0, 0, 1);
}

uint64_t TelephonyBasebandControllerSPMIRawRead(unsigned int *a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5)
{
  input[3] = *MEMORY[0x29EDCA608];
  v10 = "HEB";
  if ((a2 & 2) == 0)
  {
    v10 = "Unknown";
  }

  if (a2)
  {
    v10 = "IDC";
  }

  _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIRawRead", "SPMI Raw Read: [%s:0x%x]\n", v10, a3);
  if (!a5)
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerSPMIRawRead", "No data memory is given!\n");
    return 0;
  }

  if (a4 >= 0x41)
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIRawRead", "Data size (%u) is greater than the max size (%lu)\n", a4, 64);
    return 0;
  }

  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  memset(__src, 0, sizeof(__src));
  v16 = 64;
  v11 = _TelephonyBasebandControllerCallMethodGeneric(a1, 0x25u, "SPMI raw-read", input, 3u, 0, 0, 0, 0, __src, &v16, 1);
  if (v11)
  {
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIRawRead", "Data: ");
    if (a4)
    {
      v13 = __src;
      v14 = a4;
      do
      {
        v15 = *v13++;
        _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIRawRead", "0x%x ", v15);
        --v14;
      }

      while (v14);
    }

    _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIRawRead", "\n");
    memcpy(a5, __src, a4);
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerSPMIRawRead", "Failed reading data!\n");
  }

  return v11;
}

uint64_t TelephonyBasebandControllerSPMIReg0Write(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  v6 = "HEB";
  if ((a2 & 2) == 0)
  {
    v6 = "Unknown";
  }

  if (a2)
  {
    v6 = "IDC";
  }

  _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIReg0Write", "SPMI Reg0Write: [%s:0x%x]\n", v6, a3);
  input[0] = a2;
  input[1] = a3;
  return _TelephonyBasebandControllerCallMethodGeneric(a1, 0x2Du, "SPMI reg0write", input, 2u, 0, 0, 0, 0, 0, 0, 1);
}

uint64_t TelephonyBasebandControllerSPMIGetEvents(unsigned int *a1, void *a2, unsigned int *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIGetEvents", "SPMI Get Events!\n");
  if (a2 && a3)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src[8] = v6;
    __src[9] = v6;
    __src[6] = v6;
    __src[7] = v6;
    __src[4] = v6;
    __src[5] = v6;
    __src[2] = v6;
    __src[3] = v6;
    __src[0] = v6;
    __src[1] = v6;
    __n = 16 * *a3;
    v7 = _TelephonyBasebandControllerCallMethodGeneric(a1, 0x29u, "SPMI get-events", 0, 0, 0, 0, 0, 0, __src, &__n, 1);
    if (v7)
    {
      v8 = *a3;
      if (v8)
      {
        v9 = 0;
        v10 = __src + 8;
        do
        {
          if (*(v10 - 1))
          {
            v17 = *(v10 - 1);
            *&v11 = 0xAAAAAAAAAAAAAAAALL;
            *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v21 = v11;
            v22 = v11;
            *v19 = v11;
            v20 = v11;
            v12 = localtime(&v17);
            strftime(v19, 0x40uLL, "%Y-%m-%d %H:%M:%S", v12);
            _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIGetEvents", "[%u] timestamp: %s\n", v9, v19);
            if (*v10 == 2)
            {
              v13 = "HEB";
            }

            else
            {
              v13 = "IDC";
            }

            _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIGetEvents", "[%u] bus: %s\n", v9, v13);
            if (*v10 == 2 && (v14 = v10[4], v14 <= 4))
            {
              v15 = (&off_29EE8DF90)[v14];
            }

            else
            {
              v15 = "Unknown";
            }

            _TelephonyUtilDebugPrint("TelephonyBasebandControllerSPMIGetEvents", "[%u] interrupt source: %s\n", v9, v15);
            v8 = *a3;
          }

          ++v9;
          v10 += 16;
        }

        while (v9 < v8);
      }

      memcpy(a2, __src, __n);
    }

    else
    {
      _TelephonyUtilDebugPrintError("TelephonyBasebandControllerSPMIGetEvents", "Failed to receive interrupt lists\n");
    }
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerSPMIGetEvents", "events (%p) or outputStructCnt (%p) is NULL!\n", a2, a3);
    return 0;
  }

  return v7;
}

uint64_t TelephonyBasebandControllerSetPPMReportConfig(unsigned int *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3;
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerSetPPMReportConfig", "Received %u configs\n", a3);
    if (v3)
    {
      v6 = a2 + 2;
      v7 = v3;
      do
      {
        _TelephonyUtilDebugPrint("TelephonyBasebandControllerSetPPMReportConfig", "\tReport type: %u, Report Config: %u\n", *(v6 - 1), *v6);
        v6 += 4;
        --v7;
      }

      while (v7);
      v8 = 8 * v3;
    }

    else
    {
      v8 = 0;
    }

    return _TelephonyBasebandControllerCallMethodGeneric(a1, 0x2Fu, "Set PPM Report Config", 0, 0, a2, v8, 0, 0, 0, 0, 1);
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerSetPPMReportConfig", "Invalid config parameter provided\n", a3);
    return 0;
  }
}

uint64_t TelephonyBasebandControllerGetPPMReport(unsigned int *a1, int a2, uint64_t a3, void *a4)
{
  LODWORD(input) = a2;
  if (a4)
  {
    v5 = a3;
    _TelephonyUtilDebugPrint("TelephonyBasebandControllerGetPPMReport", "Received a request to read %u bytes of a report of type %u\n", a3, a2);
    v8 = v5;
    return _TelephonyBasebandControllerCallMethodGeneric(a1, 0x30u, "Get PPM Report", &input, 1u, 0, 0, 0, 0, a4, &v8, 1);
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerGetPPMReport", "Invalid report parameter provided\n", a3);
    return 0;
  }
}

uint64_t TelephonyBasebandControllerGetPPMBudget(unsigned int *a1, void *a2)
{
  if (a2)
  {
    v3 = 30;
    return _TelephonyBasebandControllerCallMethodGeneric(a1, 0x33u, "get peak power budget and thermal budget", 0, 0, 0, 0, 0, 0, a2, &v3, 1);
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerGetPPMBudget", "Invalid report parameter provided\n");
    return 0;
  }
}

void _TelephonyBasebandControllerServiceNotifyCallback(uint64_t a1, io_iterator_t iterator)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerServiceNotifyCallback", "%s: context cannot be NULL\n", "TelephonyBasebandController");
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315138;
    v8 = "TelephonyBasebandController";
    v5 = MEMORY[0x29EDCA988];
    v6 = "%s: context cannot be NULL";
    goto LABEL_12;
  }

  v3 = IOIteratorNext(iterator);
  if (!v3)
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandControllerServiceNotifyCallback", "%s: no service is found\n", "TelephonyBasebandController");
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315138;
    v8 = "TelephonyBasebandController";
    v5 = MEMORY[0x29EDCA988];
    v6 = "%s: no service is found";
LABEL_12:
    _os_log_error_impl(&dword_298238000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
    return;
  }

  *(a1 + 4) = v3;
  v4 = *(a1 + 16);
  if (v4)
  {

    dispatch_group_leave(v4);
  }
}

const char *_TelephonyBasebandPowerDebugCommandMaskToString(int a1)
{
  if (a1 <= 7)
  {
    if (a1 == 1)
    {
      return "no-op";
    }

    if (a1 != 2)
    {
      if (a1 == 4)
      {
        return "power-on";
      }

      return "???";
    }

    return "power-off";
  }

  else if (a1 > 31)
  {
    if (a1 != 32)
    {
      if (a1 == 64)
      {
        return "coredump";
      }

      return "???";
    }

    return "crash-modem-with-spmi";
  }

  else
  {
    if (a1 != 8)
    {
      if (a1 == 16)
      {
        return "warm-reset";
      }

      return "???";
    }

    return "cold-reset";
  }
}

uint64_t _TelephonyBasebandPowerDebugBlockingThread(uint64_t a1)
{
  v2 = isatty(1);
  Current = CFRunLoopGetCurrent();
  v18 = 0;
  v19 = 0;
  atomic_store(0, &v18);
  atomic_store(0, &v18 + 1);
  v17.version = 0;
  memset(&v17.retain, 0, 24);
  v17.info = &v18;
  if (*(a1 + 8))
  {
    v4 = CFAbsoluteTimeGetCurrent();
    LODWORD(v5) = *(a1 + 8);
    v6 = v4 + v5 / 1000.0;
  }

  else
  {
    v6 = 1.79769313e308;
  }

  v7 = *MEMORY[0x29EDB8ED8];
  v8 = CFRunLoopTimerCreate(*MEMORY[0x29EDB8ED8], v6, 0.0, 0, 0, _TelephonyBasebandPowerDebugTimeoutCallback, &v17);
  if (v8)
  {
    v9 = v8;
    v19 = v8;
    v10 = *MEMORY[0x29EDB8FC0];
    CFRunLoopAddTimer(Current, v8, *MEMORY[0x29EDB8FC0]);
    Controller = TelephonyBasebandCreateController(v7);
    if (Controller)
    {
      v12 = Controller;
      if (TelephonyBasebandControllerRegisterForReset(Controller + 16, Current, _TelephonyBasebandPowerDebugUnblockCallback, &v18))
      {
        _TelephonyUtilDebugPrint("_TelephonyBasebandPowerDebugBlockingThread", "================== POWER DEBUG BLOCKING ==================", *&v17.version, *&v17.retain, v17.copyDescription);
        if (v2)
        {
          puts("================== POWER DEBUG BLOCKING ==================");
          v13 = MEMORY[0x29EDCA620];
          fflush(*MEMORY[0x29EDCA620]);
          CFRunLoopRun();
          _TelephonyUtilDebugPrint("_TelephonyBasebandPowerDebugBlockingThread", "================== POWER DEBUG UNBLOCKED =================");
          puts("================== POWER DEBUG UNBLOCKED =================");
          fflush(*v13);
        }

        else
        {
          CFRunLoopRun();
          _TelephonyUtilDebugPrint("_TelephonyBasebandPowerDebugBlockingThread", "================== POWER DEBUG UNBLOCKED =================");
        }

        v14 = atomic_load(&v18);
        if (v14)
        {
          _TelephonyUtilDebugPrint("_TelephonyBasebandPowerDebugBlockingThread", "unblocked because unblock message received");
        }

        else
        {
          v15 = atomic_load(&v18 + 1);
          if (v15)
          {
            _TelephonyUtilDebugPrint("_TelephonyBasebandPowerDebugBlockingThread", "unblocked due to timeout");
          }

          else
          {
            _TelephonyUtilDebugPrintError("_TelephonyBasebandPowerDebugBlockingThread", "somehow neither unblock message was received nor did timeout occur", *&v17.version, *&v17.retain, v17.copyDescription);
          }
        }
      }

      else
      {
        _TelephonyUtilDebugPrintError("_TelephonyBasebandPowerDebugBlockingThread", "failed to register for resets", *&v17.version, *&v17.retain, v17.copyDescription);
      }

      CFRelease(v12);
    }

    else
    {
      _TelephonyUtilDebugPrintError("_TelephonyBasebandPowerDebugBlockingThread", "failed to create baseband controller", *&v17.version, *&v17.retain, v17.copyDescription);
    }

    CFRunLoopRemoveTimer(Current, v9, v10);
    CFRelease(v9);
  }

  else
  {
    _TelephonyUtilDebugPrintError("_TelephonyBasebandPowerDebugBlockingThread", "failed to create runloop timer", *&v17.version, *&v17.retain, v17.copyDescription);
  }

  return 0;
}

void _TelephonyBasebandPowerDebugTimeoutCallback(uint64_t a1, unsigned __int8 *a2)
{
  _TelephonyUtilDebugPrint("_TelephonyBasebandPowerDebugTimeoutCallback", "power debug unblock timeout");
  v3 = atomic_load(a2);
  if ((v3 & 1) == 0)
  {
    atomic_store(1u, a2 + 1);
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

void _TelephonyBasebandPowerDebugUnblockCallback(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -469794798)
  {
    _TelephonyUtilDebugPrint("_TelephonyBasebandPowerDebugUnblockCallback", "received power debug unblock message");
    v4 = atomic_load((a1 + 1));
    if ((v4 & 1) == 0)
    {
      atomic_store(1u, a1);
      CFRunLoopTimerInvalidate(*(a1 + 8));
      Current = CFRunLoopGetCurrent();

      CFRunLoopStop(Current);
    }
  }
}

uint64_t TelephonyBasebandControllerIsBootStageDown(uint64_t a1)
{
  if (qword_2A1898FB8 != -1)
  {
    dispatch_once(&qword_2A1898FB8, &__block_literal_global_214);
  }

  if (qword_2A1898FC0)
  {
    v2 = *qword_2A1898FC0;
    v3 = *(qword_2A1898FC0 + 8);

    return v3(v2, a1);
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerIsBootStageDown", "failed to detect PCIe control driver variant\n");
    return 0;
  }
}

uint64_t __TelephonyBasebandControllerIsBootStageDown_block_invoke()
{
  v0 = *MEMORY[0x29EDBB110];
  v1 = &_block_invoke_sVariantMap;
  v2 = 3;
  while (1)
  {
    v3 = IOServiceMatching(*v1);
    result = IOServiceGetMatchingService(v0, v3);
    if (result)
    {
      break;
    }

    v1 += 2;
    if (!--v2)
    {
      return result;
    }
  }

  qword_2A1898FC0 = v1;

  return IOObjectRelease(result);
}

uint64_t TelephonyBasebandControllerIsBootStageDownABP(const char *a1, BOOL *a2)
{
  v3 = *MEMORY[0x29EDBB110];
  v4 = IOServiceMatching(a1);
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"bootstage", *MEMORY[0x29EDB8ED8], 0);
    valuePtr = -1431655766;
    if (CFProperty)
    {
      v8 = CFProperty;
      v9 = CFGetTypeID(CFProperty);
      if (v9 == CFNumberGetTypeID() && CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr))
      {
        *a2 = valuePtr < 2;
        v10 = 1;
      }

      else
      {
        _TelephonyUtilDebugPrintError("TelephonyBasebandControllerIsBootStageDownABP", "failed to retrieve ABP boot stage property\n");
        v10 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      _TelephonyUtilDebugPrintError("TelephonyBasebandControllerIsBootStageDownABP", "failed to retrieve ABP boot stage property\n");
      v10 = 0;
    }

    IOObjectRelease(v6);
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerIsBootStageDownABP", "failed to open ABP control driver\n");
    return 0;
  }

  return v10;
}

uint64_t TelephonyBasebandControllerIsBootStageDownACIPC(const char *a1, BOOL *a2)
{
  v3 = *MEMORY[0x29EDBB110];
  v4 = IOServiceMatching(a1);
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"bootstage", *MEMORY[0x29EDB8ED8], 0);
    valuePtr = -1431655766;
    if (CFProperty)
    {
      v8 = CFProperty;
      v9 = CFGetTypeID(CFProperty);
      if (v9 == CFNumberGetTypeID() && CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr))
      {
        *a2 = (valuePtr + 1) < 2;
        v10 = 1;
      }

      else
      {
        _TelephonyUtilDebugPrintError("TelephonyBasebandControllerIsBootStageDownACIPC", "failed to retrieve ACIPC boot stage property\n");
        v10 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      _TelephonyUtilDebugPrintError("TelephonyBasebandControllerIsBootStageDownACIPC", "failed to retrieve ACIPC boot stage property\n");
      v10 = 0;
    }

    IOObjectRelease(v6);
  }

  else
  {
    _TelephonyUtilDebugPrintError("TelephonyBasebandControllerIsBootStageDownACIPC", "failed to open ACIPC control driver\n");
    return 0;
  }

  return v10;
}

void _TelephonyBasebandControllerRemoveFromCoredumpReadyQueue(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___TelephonyBasebandControllerRemoveFromCoredumpReadyQueue_block_invoke;
  v3[3] = &__block_descriptor_tmp_242;
  v3[4] = a2;
  v3[5] = a1;
  dispatch_sync(v2, v3);
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