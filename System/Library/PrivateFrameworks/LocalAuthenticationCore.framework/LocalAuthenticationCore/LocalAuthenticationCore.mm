uint64_t ACMContextGetTrackingNumber(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

id LACLogContext(uint64_t a1)
{
  if (LACLogContext_onceToken != -1)
  {
    LACLogContext_cold_1();
  }

  v2 = LACLogContext___logObj;

  return v2;
}

uint64_t LibCall_ACMGetEnvironmentVariable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_35();
  v16 = v10;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetEnvironmentVariable");
  }

  OUTLINED_FUNCTION_23_0();
  if (v5 && a4 && a5)
  {
    v6 = v5(v7, 25, 0, &v16, 4, a4, a5);
    if (v6)
    {
      v11 = 70;
    }

    else
    {
      v11 = 10;
    }
  }

  if (v11 >= gACMLoggingLevel)
  {
    OUTLINED_FUNCTION_36();
    printf("%s: %s: returning, err = %ld.\n", v13, v14, v15);
  }

  return v6;
}

void sub_1B0236584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ACMGetEnvironmentVariable(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v7 = 0;
  v4 = LibCall_ACMGetEnvironmentVariable_Block(ioKitTransport, &v7, a1, a2);
  if (v4)
  {
    v5 = 70;
  }

  else
  {
    v5 = 10;
  }

  if (v5 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    v12 = 2048;
    v13 = v4;
    v14 = 1024;
    v15 = a1;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v4;
}

uint64_t LibCall_ACMGetEnvironmentVariable_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetEnvironmentVariable_Block");
  }

  memset(v17, 0, sizeof(v17));
  v16 = 128;
  if (!a4)
  {
    v14 = 70;
    v9 = 4294967293;
    goto LABEL_11;
  }

  if (a3 == 36)
  {
    v8 = acm_mem_alloc_data(0x800uLL);
    acm_mem_alloc_info("<data>", v8, 2048, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 162, "LibCall_ACMGetEnvironmentVariable_Block");
    if (!v8)
    {
      v14 = 70;
      v9 = 4294967292;
      goto LABEL_11;
    }

    v16 = 2048;
    v9 = LibCall_ACMGetEnvironmentVariable(a1, a2, 36, v8, &v16);
    if (!v9)
    {
      v10 = OUTLINED_FUNCTION_0_11();
      v11(v10);
      acm_mem_free_info("<data>", v8, 0x800uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 176, "LibCall_ACMGetEnvironmentVariable_Block");
      acm_mem_free_data(v8, 0x800uLL);
LABEL_10:
      v14 = 10;
      goto LABEL_11;
    }

    acm_mem_free_info("<data>", v8, 0x800uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 176, "LibCall_ACMGetEnvironmentVariable_Block");
    acm_mem_free_data(v8, 0x800uLL);
  }

  else
  {
    v9 = LibCall_ACMGetEnvironmentVariable(a1, a2, a3, v17, &v16);
    if (!v9)
    {
      v12 = OUTLINED_FUNCTION_0_11();
      v13(v12);
      goto LABEL_10;
    }
  }

  v14 = 70;
LABEL_11:
  if (v14 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMGetEnvironmentVariable_Block", v9);
  }

  return v9;
}

uint64_t ioKitTransport(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = init();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = performCommand(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t OUTLINED_FUNCTION_23_1(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

void *OUTLINED_FUNCTION_27_1(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return generate_unwrap_shared_key_curve25519(v4, v5 + 8, (v5 + 40), va);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = *v9 - v12;
  v16 = *(v14 + 8 * v13);

  return SerializeRequirement(v11, v16, v10 + v12, &a9);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;

  return crypto_generateKeyFromSharedInfo(v14, a4, a5, a2, a3, a8, &a13);
}

void *acm_mem_alloc_data(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0x7F43DDCBuLL);
  if (result)
  {
    _allocatedMem_2 += size;
  }

  return result;
}

uint64_t init()
{
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (_MergedGlobals)
  {
    v5 = 0;
  }

  else
  {
    v6 = *MEMORY[0x1E696CD68];
    v7 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(v6, v7);
    if (!MatchingService)
    {
      v10 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v9 = MatchingService;
    v5 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &dword_1EB6D62A4);
    if (v5)
    {
      v10 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v9);
    _MergedGlobals = 1;
  }

  v10 = 10;
LABEL_10:
  if (v10 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
  }

  return v5;
}

uint64_t OUTLINED_FUNCTION_35_0(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t performCommand(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v11 = a3;
  v12 = a2;
  v50 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_4_2();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
  }

  inputStructCnt = 0;
  v18 = LibCall_BuildCommand(v12, 0, v11, a4, a5, &inputStructCnt);
  if (v18)
  {
    v19 = v18;
    if (!a6 && a7)
    {
      v21 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v20 = *a7;
      }

      else
      {
        v20 = 0;
      }

      v41 = v20;
      v21 = IOConnectCallStructMethod(dword_1EB6D62A4, 0, v18, inputStructCnt, a6, &v41);
      if (v21)
      {
        if (_logLevel <= 0x46u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_27();
          v46 = v22;
          v47 = v21;
          v48 = v22;
          v49 = v21;
          OUTLINED_FUNCTION_4_2();
          _os_log_impl(v23, v24, v25, v26, v27, 0x2Eu);
        }
      }

      else
      {
        if (_logLevel <= 0x28u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_4_2();
          _os_log_impl(v28, v29, v30, v31, v32, 0x22u);
        }

        v21 = 0;
        if (a7)
        {
          *a7 = v41;
        }
      }
    }

    v33 = inputStructCnt;
    acm_mem_free_info("<data>", v19, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v19, v33);
    if (v21)
    {
      v34 = 70;
    }

    else
    {
      v34 = 10;
    }
  }

  else
  {
    v34 = 70;
    v21 = 4294967291;
  }

  if (v34 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v43 = 136315650;
    v44 = "ACMLib";
    OUTLINED_FUNCTION_13_1();
    v45 = "performCommand";
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_4_2();
    _os_log_impl(v35, v36, v37, v38, v39, 0x20u);
  }

  return v21;
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    _allocatedMem_0 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v8, a5, v6);
  }

  return result;
}

_BYTE *LibCall_BuildCommand(char a1, char a2, char a3, const void *a4, size_t a5, void *a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_BuildCommand");
  }

  v12 = 0;
  if (a5)
  {
    v13 = a4 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 && a6)
  {
    if (a5 >= 0xFFFFFFFFFFFFFFF8)
    {
      v12 = 0;
    }

    else
    {
      v12 = acm_mem_alloc_data(a5 + 8);
      acm_mem_alloc_info("<data>", v12, a5 + 8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 22, "LibCall_BuildCommand");
      if (v12)
      {
        *a6 = a5 + 8;
        *v12 = 1396920900;
        v12[4] = a1;
        v12[5] = a2;
        v12[6] = a3;
        v12[7] = 2;
        if (a5)
        {
          memcpy(v12 + 8, a4, a5);
        }
      }
    }
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: returning.\n", "ACM", "LibCall_BuildCommand");
  }

  return v12;
}

id @objc LACGlobalDomain.isDTOStrictModeEnabled.getter(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 *a3];

  return v5;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t OUTLINED_FUNCTION_0_8(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t OUTLINED_FUNCTION_0_9@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return serializeParameters(v4, v3, v2, &a2);
}

uint64_t OUTLINED_FUNCTION_0_15(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t OUTLINED_FUNCTION_0_17(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return memset_s(va, 0x20uLL, 0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return cchkdf();
}

id LACLogACM(uint64_t a1)
{
  if (LACLogACM_onceToken != -1)
  {
    LACLogACM_cold_1();
  }

  v2 = LACLogACM___logObj;

  return v2;
}

void acm_mem_free_data(void *a1, rsize_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2);
    free(v3);
    v4 = _allocatedMem_2 - v2;
    if (_allocatedMem_2 < v2)
    {
      v4 = 0;
    }

    _allocatedMem_2 = v4;
  }
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = _allocatedMem_0 - a3;
    if (_allocatedMem_0 < a3)
    {
      v6 = 0;
    }

    _allocatedMem_0 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v9, a5, v7);
  }

  return result;
}

id LACLogTask(uint64_t a1)
{
  if (LACLogTask_onceToken != -1)
  {
    LACLogTask_cold_1();
  }

  v2 = LACLogTask___logObj;

  return v2;
}

id getTUCallCenterClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getTUCallCenterClass_softClass;
  v6 = getTUCallCenterClass_softClass;
  if (!getTUCallCenterClass_softClass)
  {
    TelephonyUtilitiesLibraryCore();
    v4[3] = objc_getClass("TUCallCenter");
    getTUCallCenterClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B0238ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUUIXPCClientConnectionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getTUUIXPCClientConnectionClass_softClass;
  v6 = getTUUIXPCClientConnectionClass_softClass;
  if (!getTUUIXPCClientConnectionClass_softClass)
  {
    TelephonyUtilitiesLibraryCore();
    v4[3] = objc_getClass("TUUIXPCClientConnection");
    getTUUIXPCClientConnectionClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B0238BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id LACLogSharedMode(uint64_t a1)
{
  if (LACLogSharedMode_onceToken != -1)
  {
    LACLogSharedMode_cold_1();
  }

  v2 = LACLogSharedMode___logObj;

  return v2;
}

id LACLogBiometry(uint64_t a1)
{
  if (LACLogBiometry_onceToken != -1)
  {
    LACLogBiometry_cold_1();
  }

  v2 = LACLogBiometry___logObj;

  return v2;
}

uint64_t static LACLocalization.localizedString(key:value:tableSuffix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v10 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    MEMORY[0x1B2722A80](a5, a6);
    v12 = 45;
    v11 = 0xE100000000000000;
  }

  else
  {
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = MEMORY[0x1B27229A0](a1, a2);
  v15 = MEMORY[0x1B27229A0](a3, a4);
  MEMORY[0x1B2722A80](v12, v11);

  v16 = MEMORY[0x1B27229A0](0x617A696C61636F4CLL, 0xEB00000000656C62);

  v17 = [ObjCClassFromMetadata localizedStringWithKey:v14 value:v15 table:v16];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v18;
}

uint64_t outlined init with take of LACPreboardUseCaseProviding(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *LACCompanionAuthenticationSessionMonitor.sessionProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LACCompanionAuthenticationSessionMonitor.mockedSessionProvider.getter(v22);
  v8 = v23;
  v9 = v24;
  __swift_project_boxed_opaque_existential_0(v22, v23);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = __swift_destroy_boxed_opaque_existential_0(v22);
  if (v10)
  {
    v12 = LACLogABM(v11);
    Logger.init(_:)();
    v13 = v2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_1B0233000, v14, v15, "%{public}@ Using mocked session provider", v16, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v17, -1, -1);
      MEMORY[0x1B27246A0](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return LACCompanionAuthenticationSessionMonitor.mockedSessionProvider.getter(a1);
  }

  else
  {
    v20 = OBJC_IVAR___LACCompanionAuthenticationSessionMonitor__sessionProvider;
    swift_beginAccess();
    return outlined init with copy of LACCompanionAuthenticationSessionProviding(v2 + v20, a1);
  }
}

uint64_t outlined init with copy of LACCompanionAuthenticationSessionProviding?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23LocalAuthenticationCore012LACCompanionB16SessionProviding_pSgMd, _s23LocalAuthenticationCore012LACCompanionB16SessionProviding_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of LACCompanionAuthenticationSessionProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id LACLogService(uint64_t a1)
{
  if (LACLogService_onceToken != -1)
  {
    LACLogService_cold_1();
  }

  v2 = LACLogService___logObj;

  return v2;
}

uint64_t LACOnenessSessionProvider.isActive.getter()
{

  CurrentValueSubject.value.getter();

  return v1 & 1;
}

uint64_t LACPhoneIntegrationSessionProvider.isActive.getter()
{

  CurrentValueSubject.value.getter();

  return v1 & 1;
}

uint64_t LACCompanionAuthenticationSessionMonitor.isSessionActive.getter(uint64_t a1)
{
  LACCompanionAuthenticationSessionMonitor.mockedSessionProvider.getter(v11);
  v1 = v12;
  v2 = v13;
  __swift_project_boxed_opaque_existential_0(v11, v12);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v3)
  {
    LACCompanionAuthenticationSessionMonitor.mockedSessionProvider.getter(v11);
  }

  else
  {
    LACCompanionAuthenticationSessionMonitor.sessionProvider.getter(v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    v6 = (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v11);
    if ((v6 & 1) == 0)
    {
      v9 = 0;
      return v9 & 1;
    }

    LACCompanionAuthenticationSessionMonitor.sessionProvider.getter(v11);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0(v11, v12);
  v9 = (*(v8 + 16))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v9 & 1;
}

uint64_t LACCompanionAuthenticationSessionMonitor.mockedSessionProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___LACCompanionAuthenticationSessionMonitor____lazy_storage___mockedSessionProvider;
  swift_beginAccess();
  outlined init with copy of LACCompanionAuthenticationSessionProviding?(v1 + v3, &v10);
  if (v11)
  {
    return outlined init with take of LACPreboardUseCaseProviding(&v10, a1);
  }

  outlined destroy of AsyncStream<()>.Continuation?(&v10, &_s23LocalAuthenticationCore012LACCompanionB16SessionProviding_pSgMd, _s23LocalAuthenticationCore012LACCompanionB16SessionProviding_pSgMR);
  v5 = [v1 companion];
  v6 = [v1 replyQueue];
  v7 = type metadata accessor for LACCompanionAuthenticationSessionProviderDummy();
  v8 = objc_allocWithZone(v7);
  v9 = LACCompanionAuthenticationSessionProviderDummy.init(companion:replyQueue:)(v5, v6);
  a1[3] = v7;
  a1[4] = &protocol witness table for LACCompanionAuthenticationSessionProviderDummy;
  *a1 = v9;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a1, &v10);
  swift_beginAccess();
  outlined assign with take of LACCompanionAuthenticationSessionProviding?(&v10, v1 + v3);
  return swift_endAccess();
}

uint64_t LACCompanionAuthenticationSessionProviderDummy.mockedValue.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_companion);
  if (v1 != 2)
  {
    if (v1 != 4)
    {
      return 2;
    }

    v2 = [objc_opt_self() isVisionCompanionSessionActive];
    if (!v2)
    {
      return 2;
    }

LABEL_6:
    v3 = v2;
    v4 = [v2 BOOLValue];

    return v4;
  }

  v2 = [objc_opt_self() isMacCompanionSessionActive];
  if (v2)
  {
    goto LABEL_6;
  }

  return 2;
}

__CFString *NSLocalizedStringFromLACBiometryType(uint64_t a1)
{
  switch(a1)
  {
    case 4:
      v1 = +[LACLocalization opticID];
      break;
    case 2:
      v1 = +[LACLocalization faceID];
      break;
    case 1:
      v1 = +[LACLocalization touchID];
      break;
    default:
      v1 = &stru_1F2652748;
      break;
  }

  return v1;
}

id @objc static LACLocalization.faceID()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1B27229A0](a3, a4);
  v6 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v7 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v8 = [a1 localizedStringWithKey:v5 value:v6 tableSuffix:v7];

  return v8;
}

void LACEvaluationRequestRootProcessor.process(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = *(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor);
  v10 = [objc_opt_self() defaultConfiguration];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = ObjectType;
  v14[4] = partial apply for closure #1 in LACEvaluationRequestRootProcessor.process(_:completion:);
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  v14[3] = &block_descriptor_3;
  v13 = _Block_copy(v14);
  swift_unknownObjectRetain();

  [v9 processRequest:a1 configuration:v10 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1B023A314()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B023A34C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id LACEvaluationRequestCompoundProcessor.nextProcessor(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors);
    a2 = v3 & 0xFFFFFFFFFFFFFF8;
    v5 = v3 >> 62;
    if (!(v3 >> 62))
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= v6)
      {
        goto LABEL_4;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  if (v3 < 0)
  {
    v24 = v3;
  }

  else
  {
    v24 = a2;
  }

  result = MEMORY[0x1B2722F00](v24);
  if (result < v6)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  if (MEMORY[0x1B2722F00](v24) < v6)
  {
    __break(1u);
    goto LABEL_43;
  }

LABEL_4:
  if (v6 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v5)
  {
    if (v3 < 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = MEMORY[0x1B2722F00](v9);
  }

  else
  {
    v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 < v7)
  {
    goto LABEL_45;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((v3 & 0xC000000000000001) == 0 || v6 == v7)
  {

    goto LABEL_22;
  }

  if (v6 >= v7)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v11 = v6;
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29LACEvaluationRequestProcessor_pMd, &_sSo29LACEvaluationRequestProcessor_pMR);
    _ArrayBuffer._typeCheckSlowPath(_:)(v11++);
  }

  while (v7 != v11);
LABEL_22:
  if (v5)
  {

    v3 = _CocoaArrayWrapper.subscript.getter();
    v6 = v13;
    v7 = v14;
    if (v14)
    {
      goto LABEL_27;
    }

LABEL_26:
    specialized _copyCollectionToContiguousArray<A>(_:)(v3, v12, v6, v7);
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v3 &= 0xFFFFFFFFFFFFFF8uLL;
  v12 = v3 + 32;
  v7 = (2 * v7) | 1;
  if ((v7 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  v4 = v12;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v7 >> 1, v6))
  {
    goto LABEL_48;
  }

  if (v16 != (v7 >> 1) - v6)
  {
LABEL_49:
    swift_unknownObjectRelease();
    v12 = v4;
    goto LABEL_26;
  }

  v17 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v17)
  {
    goto LABEL_32;
  }

LABEL_33:
  v18 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0343080;
    *(inited + 32) = v18;
    swift_unknownObjectRetain();
    specialized Array.append<A>(contentsOf:)(inited);
  }

  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29LACEvaluationRequestProcessor_pMd, &_sSo29LACEvaluationRequestProcessor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v20 makeProcessorWithSubprocessors_];

  return v22;
}

unint64_t specialized static LACEvaluationRequestProcessorFactory.makeRootProcessor(withSubprocessors:)(unint64_t result)
{
  if (result >> 62)
  {
    v10 = result & 0xFFFFFFFFFFFFFF8;
    if ((result & 0x8000000000000000) != 0)
    {
      v10 = result;
    }

    v11 = result;
    v1 = MEMORY[0x1B2722F00](v10);
    result = v11;
  }

  else
  {
    v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 != 1)
  {
    v3 = result;
    v4 = type metadata accessor for LACEvaluationRequestCompoundProcessor();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = 0;
    v6 = &v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex];
    *v6 = 0;
    v6[8] = 1;
    *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices] = MEMORY[0x1E69E7CC0];
    *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors] = v3;
    v13.receiver = v5;
    v13.super_class = v4;

    v7 = objc_msgSendSuper2(&v13, sel_init);
LABEL_8:
    v2 = v7;
    goto LABEL_9;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B2722E50](0, result);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(result + 32);
    swift_unknownObjectRetain();
LABEL_9:
    v8 = type metadata accessor for LACEvaluationRequestRootProcessor();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor] = v2;
    v12.receiver = v9;
    v12.super_class = v8;
    return objc_msgSendSuper2(&v12, sel_init);
  }

  __break(1u);
  return result;
}

void specialized LACEvaluationRequestCompoundProcessor.processRequest(_:subProcessorIndex:completion:)(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v9 = type metadata accessor for Logger();
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = *(a3 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors);
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v38 = *(a3 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors);
    }

    else
    {
      v38 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x1B2722F00](v38) > a2)
    {
LABEL_3:
      v14 = a3 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex;
      *v14 = a2;
      *(v14 + 8) = 0;
      if ((v13 & 0xC000000000000001) == 0)
      {
        if (a2 < 0)
        {
          __break(1u);
        }

        else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
        {
          v13 = *(v13 + 8 * a2 + 32);
          _Block_copy(a4);
          _Block_copy(a4);
          swift_unknownObjectRetain();
          goto LABEL_7;
        }

        __break(1u);
LABEL_27:
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        *(a3 + v4) = v11;
LABEL_9:
        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v11);
        }

        *(v11 + 2) = v18 + 1;
        v19 = &v11[8 * v18];
        *(v19 + 32) = a2;
        *(a3 + v4) = v11;
        v20 = [objc_allocWithZone(LACProcessingConfiguration) initWithNextProcessor_];
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> ()partial apply;
        v22[4] = v12;
        v22[5] = a2;
        aBlock[4] = partial apply for closure #1 in LACEvaluationRequestCompoundProcessor.processRequest(_:subProcessorIndex:completion:);
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
        aBlock[3] = &block_descriptor_16;
        v23 = _Block_copy(aBlock);

        [v13 processRequest:v45 configuration:v20 completion:v23];
        _Block_release(v23);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_16;
      }

      _Block_copy(a4);
      _Block_copy(a4);
      v13 = MEMORY[0x1B2722E50](a2, v13);
LABEL_7:
      v15 = [v13 canProcessRequest_];
      if (!v15)
      {
        v24 = LACLogDefault(v15);
        Logger.init(_:)();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        v44 = v26;
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v43 = v12;
          v28 = v27;
          v42 = swift_slowAlloc();
          aBlock[0] = v42;
          *v28 = 67240450;
          *(v28 + 4) = [a1 identifier];
          swift_unknownObjectRelease();
          *(v28 + 8) = 2080;
          v29 = [v13 description];
          v41 = v25;
          v30 = v29;
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = a1;
          v32 = v31;
          v34 = v33;

          v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, aBlock);

          *(v28 + 10) = v35;
          a1 = v45;
          v36 = v41;
          _os_log_impl(&dword_1B0233000, v41, v44, "Skipping processing of request rid: %{public}u by %s", v28, 0x12u);
          v37 = v42;
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x1B27246A0](v37, -1, -1);
          MEMORY[0x1B27246A0](v28, -1, -1);
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v46 + 8))(v11, v9);
        _Block_copy(a4);
        specialized LACEvaluationRequestCompoundProcessor.processRequest(_:subProcessorIndex:completion:)(a1, a2 + 1, a3, a4);
        _Block_release(a4);

        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      v4 = OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices;
      v11 = *(a3 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + v4) = v11;
      v45 = a1;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    goto LABEL_3;
  }

  v39 = objc_opt_self();
  _Block_copy(a4);
  _Block_copy(a4);
  v40 = [v39 resultWithNext_];
  (a4)[2](a4, v40);

LABEL_16:
  _Block_release(a4);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy23LocalAuthenticationCore37LACConcurrentEvaluationStashedRequest33_7BE1DBB9B1828B4CA409B089164F0707LLVGMd, &_ss23_ContiguousArrayStorageCy23LocalAuthenticationCore37LACConcurrentEvaluationStashedRequest33_7BE1DBB9B1828B4CA409B089164F0707LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id NSStringFromLACSharedModePolicyTraits(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"faceIDAuthenticationDisabled"];
  }

  if ((a1 & 2) != 0)
  {
    v4 = @"opticIDAuthenticationDisabled";
  }

  else
  {
    if (a1)
    {
      goto LABEL_8;
    }

    v4 = @"default";
  }

  [v3 addObject:v4];
LABEL_8:
  if (![v3 count])
  {
    [v3 addObject:@"invalid"];
  }

  v5 = [v3 componentsJoinedByString:{@", "}];

  return v5;
}

id LACLogStorage(uint64_t a1)
{
  if (LACLogStorage_onceToken != -1)
  {
    LACLogStorage_cold_1();
  }

  v2 = LACLogStorage___logObj;

  return v2;
}

void LibCall_ACMSetEnvironmentVariable()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0;
  v17[1] = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    v0 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMSetEnvironmentVariable");
  }

  if (!v13 || v6 != 16 * (v8 != 0))
  {
    goto LABEL_20;
  }

  v14 = v2 != 0;
  if (v4)
  {
    v14 = v2 - 129 < 0xFFFFFFFFFFFFFF80;
  }

  if (!v14)
  {
    MEMORY[0x1EEE9AC00](v0);
    v15 = (v17 - ((v2 + 59) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, v2 + 44);
    *v15 = v12;
    v15[1] = 2;
    v15[2] = v2;
    *(v15 + 3) = 0u;
    *(v15 + 7) = 0u;
    if (v10)
    {
      *(v15 + 3) = *v10;
    }

    if (v8)
    {
      *(v15 + 7) = *v8;
    }

    if (v2)
    {
      memcpy(v15 + 11, v4, v2);
    }

    OUTLINED_FUNCTION_2_3();
    LODWORD(v13) = v13();
    if (v13)
    {
      v16 = 70;
    }

    else
    {
      v16 = 10;
    }
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_7();
  }

  if (v16 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSetEnvironmentVariable", v13);
  }

  OUTLINED_FUNCTION_15();
}

uint64_t ACMSetEnvironmentVariableWithAccessPolicy(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariableWithAccessPolicy";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariableWithAccessPolicy";
    v10 = 2048;
    v11 = v3;
    v12 = 1024;
    v13 = a1;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v3;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  *a4 = 24;
  return result;
}

void specialized LACEvaluationRequestCompoundProcessor.processRequest(_:configuration:completion:)(void *a1, void *a2, char *a3, void *aBlock)
{
  if (a3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex + 8])
  {
    v7 = *&a3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors];
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v20 = *&a3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors];
      }

      else
      {
        v20 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v21 = a2;
      v22 = MEMORY[0x1B2722F00](v20);
      a2 = v21;
      if (v22)
      {
        goto LABEL_4;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v8 = a2;
      _Block_copy(aBlock);
      v9 = [v8 nextProcessor];
      *&a3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = v9;
      swift_unknownObjectRelease();
      _Block_copy(aBlock);
      specialized LACEvaluationRequestCompoundProcessor.processRequest(_:subProcessorIndex:completion:)(a1, 0, a3, aBlock);
      _Block_release(aBlock);
      goto LABEL_11;
    }

    v23 = objc_opt_self();
    _Block_copy(aBlock);
    v24 = [v23 resultWithNext_];
    (*(aBlock + 2))(aBlock, v24);
  }

  else
  {
    v10 = objc_opt_self();
    _Block_copy(aBlock);
    _StringGuts.grow(_:)(17);

    v11 = [a3 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    MEMORY[0x1B2722A80](v12, v14);

    MEMORY[0x1B2722A80](0x7973756220, 0xE500000000000000);
    v15 = MEMORY[0x1B27229A0](0x6F737365636F7250, 0xEA00000000002072);

    v16 = [v10 errorWithCode:-1000 debugDescription:v15];

    v17 = objc_opt_self();
    v18 = _convertErrorToNSError(_:)();
    v19 = [v17 resultWithFailure_];

    (*(aBlock + 2))(aBlock, v19);
  }

LABEL_11:

  _Block_release(aBlock);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29LACEvaluationRequestProcessor_pMd, &_sSo29LACEvaluationRequestProcessor_pMR);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = MEMORY[0x1B2722F00](a1);
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  else
  {
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x1B2722F00](v14);
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), v2);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x1B2722F00](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x1B2722F00](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [LACEvaluationRequestProcessor] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo29LACEvaluationRequestProcessor_pGMd, &_sSaySo29LACEvaluationRequestProcessor_pGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            swift_unknownObjectRetain();
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29LACEvaluationRequestProcessor_pMd, &_sSo29LACEvaluationRequestProcessor_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void closure #1 in LACEvaluationRequestCompoundProcessor.processRequest(_:subProcessorIndex:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    LACEvaluationResult.resultWithAssociatedValue.getter(&v23);
    v15 = v24;
    if (v24 >> 62 == 2)
    {
      if (__OFADD__(a5, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = v23;
        v17 = swift_unknownObjectRetain();
        LACEvaluationRequestCompoundProcessor.processRequest(_:subProcessorIndex:completion:)(v17, a5 + 1, a3, a4);

        outlined consume of LACEvaluationResultWithAssociatedValue(v16, v15);
        outlined consume of LACEvaluationResultWithAssociatedValue(v16, v15);
      }
    }

    else
    {
      outlined consume of LACEvaluationResultWithAssociatedValue(v23, v24);
      (a3)(a1);
    }
  }

  else
  {
    v18 = LACLogProcessor(0);
    Logger.init(_:)();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B0233000, v19, v20, "LACEValuationRequestCompoundProcessor was unexpectedly released during processing", v21, 2u);
      MEMORY[0x1B27246A0](v21, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

void LACEvaluationResult.resultWithAssociatedValue.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 rawValue];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v7 = [v1 request];
      if (v7)
      {
        v5 = v7;
        v8 = [v1 error];
        if (v8)
        {
          v6 = v8 | 0xC000000000000000;
          goto LABEL_15;
        }

        swift_unknownObjectRelease();
      }
    }

    else if (v3 == 3)
    {
      v10 = [v1 value];
      if (v10)
      {
        v11 = v10;
        v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v6 = 0;
        goto LABEL_15;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v9 = [v1 request];
      if (v9)
      {
        v5 = v9;
        v6 = 0x8000000000000000;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v4 = [v1 error];
    if (v4)
    {
      v5 = v4;
      v6 = 0x4000000000000000;
LABEL_15:
      *a1 = v5;
      a1[1] = v6;
      return;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void outlined consume of LACEvaluationResultWithAssociatedValue(void *a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {

      return;
    }

LABEL_12:

    return;
  }

  if (v3 != 2)
  {
    swift_unknownObjectRelease();
    a1 = (a2 & 0x3FFFFFFFFFFFFFFFLL);

    goto LABEL_12;
  }

  swift_unknownObjectRelease();
}

uint64_t objectdestroy_14Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1B023C888()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void LACEvaluationRequestCompoundProcessor.processRequest(_:subProcessorIndex:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v4[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors];
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      goto LABEL_3;
    }

LABEL_20:
    v48 = [objc_opt_self() resultWithNext_];
    a3();
    v42 = v48;

    return;
  }

  if (v14 < 0)
  {
    v41 = *&v4[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors];
  }

  else
  {
    v41 = v14 & 0xFFFFFFFFFFFFFF8;
  }

  if (MEMORY[0x1B2722F00](v41) <= a2)
  {
    goto LABEL_20;
  }

LABEL_3:
  v15 = &v4[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex];
  *v15 = a2;
  v15[8] = 0;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B2722E50](a2, v14);
    goto LABEL_7;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *(v14 + 8 * a2 + 32);
  swift_unknownObjectRetain();
LABEL_7:
  v16 = [v5 canProcessRequest_];
  if (v16)
  {
    v11 = OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices;
    v14 = *&v4[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v4[v11] = v14;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_9:
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v14);
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 8 * v19;
      *(v20 + 32) = a2;
      *&v4[v11] = v14;
      v21 = [objc_allocWithZone(LACProcessingConfiguration) initWithNextProcessor_];
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = a3;
      v23[4] = a4;
      v23[5] = a2;
      aBlock[4] = closure #1 in LACEvaluationRequestCompoundProcessor.processRequest(_:subProcessorIndex:completion:)partial apply;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
      aBlock[3] = &block_descriptor_41_0;
      v24 = _Block_copy(aBlock);

      [v5 processRequest:a1 configuration:v21 completion:v24];
      _Block_release(v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

LABEL_26:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
    *&v4[v11] = v14;
    goto LABEL_9;
  }

  v48 = v4;
  v25 = LACLogDefault(v16);
  Logger.init(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v47 = a3;
    v29 = v28;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v29 = 67240450;
    *(v29 + 4) = [a1 identifier];
    swift_unknownObjectRelease();
    *(v29 + 8) = 2080;
    v30 = [v5 description];
    v45 = v11;
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    HIDWORD(v43) = v27;
    v33 = v32;
    v44 = v26;
    v34 = a4;
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v36, aBlock);
    a4 = v34;

    *(v29 + 10) = v37;
    v38 = v44;
    _os_log_impl(&dword_1B0233000, v44, BYTE4(v43), "Skipping processing of request rid: %{public}u by %s", v29, 0x12u);
    v39 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x1B27246A0](v39, -1, -1);
    v40 = v29;
    a3 = v47;
    MEMORY[0x1B27246A0](v40, -1, -1);

    (*(v45 + 8))(v13, v10);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v11 + 8))(v13, v10);
  }

  LACEvaluationRequestCompoundProcessor.processRequest(_:subProcessorIndex:completion:)(a1, a2 + 1, a3, a4);
  swift_unknownObjectRelease();
}

uint64_t sub_1B023D060()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id LACLogEnvironment(uint64_t a1)
{
  if (LACLogEnvironment_onceToken != -1)
  {
    LACLogEnvironment_cold_1();
  }

  v2 = LACLogEnvironment___logObj;

  return v2;
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

uint64_t LibCall_ACMContextVerifyPolicyAndCopyRequirementEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, BOOL *a9, uint64_t *a10, char a11)
{
  OUTLINED_FUNCTION_8_2();
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
  }

  v44 = 0;
  size = 0;
  v42 = 0;
  v43 = 4096;
  v17 = 4294967293;
  v41 = 0;
  if (v11 && a3 && a4 && a9)
  {
    if (a6 && a7)
    {
      v18 = a7;
      v19 = (a6 + 16);
      while (*(v19 - 4) != 13)
      {
        v19 += 6;
        if (!--v18)
        {
          goto LABEL_22;
        }
      }

      v20 = *(v19 - 1);
      v21 = *v19;
      if (v20)
      {
        v22 = v21 == 1;
      }

      else
      {
        v22 = 0;
      }

      if (v22 && !a11)
      {
        v17 = 4294967293;
        goto LABEL_34;
      }
    }

    else
    {
      v17 = 4294967293;
      if (a6 || a7)
      {
        goto LABEL_34;
      }
    }

LABEL_22:
    OUTLINED_FUNCTION_22_0();
    SerializedVerifyPolicySize = GetSerializedVerifyPolicySize();
    if (SerializedVerifyPolicySize)
    {
      v17 = SerializedVerifyPolicySize;
    }

    else
    {
      v24 = acm_mem_alloc_data(size);
      acm_mem_alloc_info("<data>", v24, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 348, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
      if (v24)
      {
        v44 = size;
        v25 = OUTLINED_FUNCTION_22_0();
        v26 = SerializeVerifyPolicy(v25);
        if (v26)
        {
          v17 = v26;
          v27 = 0;
        }

        else
        {
          v27 = acm_mem_alloc_data(0x1000uLL);
          acm_mem_alloc_info("<data>", v27, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 355, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
          if (v27)
          {
            v28 = v11(v12, 3, 0, v24, v44, v27, &v43);
            if (v28)
            {
              v17 = v28;
            }

            else
            {
              v33 = v43 - 4;
              if (v43 < 4)
              {
                v17 = 4294967291;
              }

              else
              {
                *a9 = *v27 != 0;
                if (a10)
                {
                  v17 = DeserializeRequirement(v27 + 4, v33, &v42, &v41, v29, v30, v31, v32, v37, v38, v39, v40, v12, v41, v42, v43, v44, size, v46, v47, v48, v49);
                  if (!v17)
                  {
                    *a10 = v42;
                  }
                }

                else
                {
                  v17 = 0;
                }
              }
            }
          }

          else
          {
            v17 = 4294967292;
          }
        }

        v34 = size;
        acm_mem_free_info("<data>", v24, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 379, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
        acm_mem_free_data(v24, v34);
        if (v27)
        {
          acm_mem_free_info("<data>", v27, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 382, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
          acm_mem_free_data(v27, 0x1000uLL);
        }
      }

      else
      {
        v17 = 4294967292;
      }
    }
  }

LABEL_34:
  if (v17 && v42)
  {
    Util_DeallocRequirement(v42);
  }

  if (v17)
  {
    v35 = 70;
  }

  else
  {
    v35 = 10;
  }

  if (v35 >= gACMLoggingLevel)
  {
    OUTLINED_FUNCTION_5_3();
    printf("%s: %s: returning, err = %ld.\n", v37, v38, v39);
  }

  return v17;
}

uint64_t Util_AllocRequirement(uint64_t a1, int a2, void *a3)
{
  v5 = a1;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_AllocRequirement");
  }

  if (!a3)
  {
LABEL_61:
    v6 = 4294967293;
    goto LABEL_62;
  }

  v6 = 4294967293;
  v7 = 70;
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x14uLL, v35);
      OUTLINED_FUNCTION_4_1();
      v23 = 346;
      goto LABEL_57;
    case 2:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x14uLL, v34);
      OUTLINED_FUNCTION_4_1();
      v23 = 351;
      goto LABEL_57;
    case 3:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0xACuLL, v32);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataBiometryMatched", v9, 172, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 356, "Util_AllocRequirement");
      v10 = 156;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_5_1();
      if (!v12)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x64uLL, v28);
      v29 = "ACMRequirement - ACMRequirementDataOr";
      v30 = v9;
      v31 = 414;
      goto LABEL_45;
    case 5:
      OUTLINED_FUNCTION_5_1();
      if (!v12)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x64uLL, v33);
      v29 = "ACMRequirement - ACMRequirementDataAnd";
      v30 = v9;
      v31 = 406;
LABEL_45:
      acm_mem_alloc_info(v29, v30, 100, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", v31, "Util_AllocRequirement");
      v10 = 84;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 6:
    case 9:
    case 10:
    case 12:
    case 14:
    case 15:
    case 18:
    case 19:
    case 22:
    case 23:
    case 27:
    case 28:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x10uLL, v8);
      acm_mem_alloc_info("ACMRequirement", v9, 16, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 336, "Util_AllocRequirement");
      v10 = 0;
      if (v9)
      {
        goto LABEL_6;
      }

      goto LABEL_58;
    case 7:
      OUTLINED_FUNCTION_5_1();
      if (!v12)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x68uLL, v24);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKofN", v9, 104, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 399, "Util_AllocRequirement");
      v10 = 88;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 8:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x410uLL, v26);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataAccessGroups", v9, 1040, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 386, "Util_AllocRequirement");
      v10 = 1024;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 11:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x18uLL, v36);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataPushButton", v9, 24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 341, "Util_AllocRequirement");
      v10 = 8;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 13:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x30uLL, v27);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataUserOutputDisplayed", v9, 48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 371, "Util_AllocRequirement");
      v10 = 32;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 16:
    case 17:
      goto LABEL_19;
    case 20:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x14uLL, v37);
      OUTLINED_FUNCTION_4_1();
      v23 = 361;
      goto LABEL_57;
    case 21:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x14uLL, v17);
      OUTLINED_FUNCTION_4_1();
      v23 = 366;
LABEL_57:
      acm_mem_alloc_info(v18, v19, v20, v21, v23, v22);
      v10 = 4;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 24:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x434uLL, v16);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataAP", v9, 1076, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 376, "Util_AllocRequirement");
      v10 = 1060;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 25:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x3BuLL, v15);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKeyRef", v9, 59, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 381, "Util_AllocRequirement");
      v10 = 43;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 26:
      OUTLINED_FUNCTION_0_12();
      v9 = acm_mem_alloc_typed(0x2CuLL, v25);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataRatchet", v9, 44, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 392, "Util_AllocRequirement");
      v10 = 28;
      if (v9)
      {
LABEL_6:
        *v9 = v5;
        *(v9 + 1) = 0x100000001;
        v9[3] = v10;
        if ((v5 & 0xFFFFFFFE) == 4)
        {
          v11 = 4;
        }

        else if (v5 == 7)
        {
          v11 = 5;
        }

        else
        {
          if (v5 != 1000)
          {
LABEL_18:
            v6 = 0;
            *a3 = v9;
            v7 = 10;
            goto LABEL_19;
          }

          v11 = 13;
        }

        v9[v11] = a2;
        goto LABEL_18;
      }

LABEL_58:
      v6 = 4294967292;
LABEL_62:
      v7 = 70;
LABEL_19:
      if (v7 >= gACMLoggingLevel)
      {
        printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_AllocRequirement", v6);
      }

      return v6;
    default:
      switch(v5)
      {
        case 1000:
          OUTLINED_FUNCTION_5_1();
          if (!v12)
          {
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_0_12();
          v9 = acm_mem_alloc_typed(0x88uLL, v13);
          acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKofNWithAttributes", v9, 136, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 422, "Util_AllocRequirement");
          v10 = 120;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        case 1001:
          OUTLINED_FUNCTION_0_12();
          v9 = acm_mem_alloc_typed(0xB8uLL, v44);
          acm_mem_alloc_info("ACMRequirement - ACMRequirementDataBiometryMatchedWithAttributes", v9, 184, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 427, "Util_AllocRequirement");
          v10 = 168;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        case 1002:
          OUTLINED_FUNCTION_0_12();
          v9 = acm_mem_alloc_typed(0x20uLL, v42);
          v39 = "ACMRequirement - ACMRequirementDataPushButtonWithAttributes";
          v40 = v9;
          v41 = 432;
          goto LABEL_54;
        case 1003:
          OUTLINED_FUNCTION_0_12();
          v9 = acm_mem_alloc_typed(0x14uLL, v43);
          OUTLINED_FUNCTION_4_1();
          v23 = 437;
          goto LABEL_57;
        case 1004:
          OUTLINED_FUNCTION_0_12();
          v9 = acm_mem_alloc_typed(0x20uLL, v38);
          v39 = "ACMRequirement - ACMRequirementDataPasscodeValidatedWithAttributes";
          v40 = v9;
          v41 = 442;
LABEL_54:
          acm_mem_alloc_info(v39, v40, 32, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", v41, "Util_AllocRequirement");
          v10 = 16;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        default:
          goto LABEL_19;
      }
  }
}

void *acm_mem_alloc_typed(size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_calloc(1uLL, size, type_id);
  if (result)
  {
    _allocatedMem_3 += size;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a10 = 0;
  a11 = 0;

  return DeserializeRequirement(v22 + v24, v23 - v24, &a11, &a10, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void *OUTLINED_FUNCTION_9_2()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, void *a2)
{
  result = 0;
  *a2 = 16;
  return result;
}

void OUTLINED_FUNCTION_3_0(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

uint64_t OUTLINED_FUNCTION_3_4(void *a1)
{

  return memset_s(a1, 0x1000uLL, 0, 0x1000uLL);
}

uint64_t OUTLINED_FUNCTION_3_5(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_3_7(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

void ACMRequirementGetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_4_2();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  OUTLINED_FUNCTION_7();
  if (v6 && v4)
  {
    v13 = OUTLINED_FUNCTION_32();
    if (LibCall_ACMRequirementGetPropertyData(v13, v14, v15, v16))
    {
      v12 = 70;
    }

    else
    {
      v17 = OUTLINED_FUNCTION_31();
      v18(v17);
      v12 = 10;
    }
  }

  if (v12 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_4_2();
    _os_log_impl(v19, v20, v21, v22, v23, 0x20u);
  }

  OUTLINED_FUNCTION_28();
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return memcmp(v1, v0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_1_11(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_13_4(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ccder_blob_encode_tl();
}

void ACMRequirementGetSubrequirements(int *a1, uint64_t a2)
{
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  if (a1 && a2)
  {
    v9 = *a1;
    if (*a1 == 4)
    {
      if (a1[4])
      {
        v16 = 0;
        do
        {
          v17 = OUTLINED_FUNCTION_20();
          v18(v17);
          ++v16;
        }

        while (v16 < a1[4]);
      }
    }

    else if (v9 == 5)
    {
      if (a1[4])
      {
        v13 = 0;
        do
        {
          v14 = OUTLINED_FUNCTION_20();
          v15(v14);
          ++v13;
        }

        while (v13 < a1[4]);
      }
    }

    else if (v9 == 7 && a1[5])
    {
      v10 = 0;
      do
      {
        v11 = OUTLINED_FUNCTION_20();
        v12(v11);
        ++v10;
      }

      while (v10 < a1[5]);
    }
  }

  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
  }
}

uint64_t OUTLINED_FUNCTION_20_2(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

void __NSDictionaryFromACMRequirement_block_invoke_3(uint64_t a1, int *a2)
{
  v2 = *(a1 + 32);
  v3 = NSDictionaryFromACMRequirement(a2);
  [v2 addObject:v3];
}

id NSDictionaryFromACMRequirement(int *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", ACMRequirementGetType(a1)];
  [v2 setObject:v3 forKeyedSubscript:@"type"];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", ACMRequirementGetState(a1)];
  [v2 setObject:v4 forKeyedSubscript:@"state"];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __NSDictionaryFromACMRequirement_block_invoke;
  v13[3] = &__block_descriptor_40_e5_i8__0l;
  v13[4] = a1;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", __NSDictionaryFromACMRequirement_block_invoke(v13)];
  [v2 setObject:v5 forKeyedSubscript:@"flags"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __NSDictionaryFromACMRequirement_block_invoke_3;
  v11[3] = &unk_1E7A976B0;
  v7 = v6;
  v12 = v7;
  ACMRequirementGetSubrequirements(a1, v11);
  if ([v7 count])
  {
    [v2 setObject:v7 forKeyedSubscript:@"subrequirements"];
    if (ACMRequirementGetType(a1) == 7)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __NSDictionaryFromACMRequirement_block_invoke_4;
      v10[3] = &__block_descriptor_40_e5_i8__0l;
      v10[4] = a1;
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", __NSDictionaryFromACMRequirement_block_invoke_4(v10)];
      [v2 setObject:v8 forKeyedSubscript:@"kofn"];
    }
  }

  return v2;
}

uint64_t __NSDictionaryFromACMRequirement_block_invoke_4(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __NSDictionaryFromACMRequirement_block_invoke_5;
  v4[3] = &unk_1E7A958D0;
  v4[4] = &v5;
  ACMRequirementGetProperty(v1, 700, v4);
  v2 = [v6[5] intValue];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1B023EBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __NSDictionaryFromACMRequirement_block_invoke_5(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (a2 && a3 == 4)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a2];
    v6 = *(*(v4 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return MEMORY[0x1EEE66BB8](v5, v7);
  }

  return result;
}

uint64_t LibCall_ACMRequirementGetPropertyData(int *a1, int a2, uint64_t *a3, unint64_t *a4)
{
  v6 = 4294967293;
  if (a1 && a3 && a4)
  {
    if (v5 || !v4)
    {
      switch(a2)
      {
        case 300:
          OUTLINED_FUNCTION_21_0();
          if (!v5)
          {
            return 4294967293;
          }

          v10 = (v9 + 20);
          goto LABEL_34;
        case 301:
          OUTLINED_FUNCTION_21_0();
          if (!v5)
          {
            return 4294967293;
          }

          v18 = (v19 + 52);
          goto LABEL_62;
        case 302:
          OUTLINED_FUNCTION_21_0();
          if (!v5)
          {
            return 4294967293;
          }

          v10 = (v13 + 36);
          goto LABEL_34;
        case 303:
          OUTLINED_FUNCTION_21_0();
          if (!v5)
          {
            return 4294967293;
          }

          v14 = 0;
          v17 = v16 + 84;
          break;
        case 304:
          OUTLINED_FUNCTION_21_0();
          if (!v5)
          {
            return 4294967293;
          }

          if (*(v12 + 12) < 0x9Cu)
          {
            return 4294967282;
          }

          v11 = (v12 + 164);
          goto LABEL_77;
        case 305:
          OUTLINED_FUNCTION_21_0();
          if (!v5)
          {
            return 4294967293;
          }

          if (*(v20 + 12) < 0x9Cu)
          {
            return 4294967282;
          }

          v11 = (v20 + 168);
          goto LABEL_77;
        case 306:
          if (*a1 != 24)
          {
            return 4294967293;
          }

          *a3 = (a1 + 5);
          v14 = a1[4];
          goto LABEL_79;
        case 307:
          if (*a1 != 24)
          {
            return 4294967293;
          }

          v18 = a1 + 261;
          goto LABEL_62;
        default:
          JUMPOUT(0);
      }

      while (!Util_isNullOrZeroMemory((v17 + v14), 16))
      {
        v4 = v14 >= 0x40;
        v14 += 16;
        if (v4)
        {
          v14 = 80;
          goto LABEL_83;
        }
      }

      if (!v14)
      {
        v17 = 0;
      }

LABEL_83:
      *a3 = v17;
      goto LABEL_79;
    }

    if (a2 != 800)
    {
      switch(a2)
      {
        case 2:
          v11 = a1 + 1;
          goto LABEL_77;
        case 3:
          v11 = a1 + 2;
          goto LABEL_77;
        case 100:
          v15 = *a1;
          if (*a1 != 21 && v15 != 3 && v15 != 11 && v15 != 20 && v15 != 1)
          {
            return 4294967293;
          }

          break;
        case 200:
          if (*a1 != 2)
          {
            return 4294967293;
          }

          break;
        case 400:
          if (*a1 == 13)
          {
            v18 = a1 + 4;
LABEL_62:
            *a3 = v18;
            v14 = 32;
            goto LABEL_79;
          }

          return 4294967293;
        case 500:
          if (*a1 != 25)
          {
            return 4294967293;
          }

          *a3 = (a1 + 4);
          v14 = 43;
LABEL_79:
          v6 = 0;
          *a4 = v14;
          return v6;
        case 600:
          if (*a1 != 26)
          {
            return 4294967293;
          }

          if (a1[3] < 0x1C)
          {
            return 4294967282;
          }

          v11 = a1 + 6;
LABEL_77:
          *a3 = v11;
          goto LABEL_78;
        default:
          switch(a2)
          {
            case 601:
              if (*a1 != 26)
              {
                return 4294967293;
              }

              if (a1[3] >= 0x1C)
              {
                v10 = a1 + 7;
LABEL_34:
                *a3 = v10;
                v14 = 16;
                goto LABEL_79;
              }

              break;
            case 602:
              if (*a1 != 26)
              {
                return 4294967293;
              }

              if (a1[3] >= 0x1C)
              {
                *a3 = (a1 + 4);
                v14 = 8;
                goto LABEL_79;
              }

              break;
            case 700:
              if (*a1 != 7)
              {
                return 4294967293;
              }

              goto LABEL_76;
            case 1:
              *a3 = a1;
LABEL_78:
              v14 = 4;
              goto LABEL_79;
            default:
              return 4294967293;
          }

          return 4294967282;
      }

LABEL_76:
      v11 = a1 + 4;
      goto LABEL_77;
    }

    if (*a1 != 11)
    {
      return 4294967293;
    }

    v11 = a1 + 5;
    goto LABEL_77;
  }

  return v6;
}

rsize_t Util_DeallocRequirement(int *a1)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_DeallocRequirement");
  }

  if (!a1)
  {
    v7 = 4294967293;
    v8 = 70;
    goto LABEL_27;
  }

  v2 = *a1;
  if (*a1 == 4)
  {
    if (a1[4])
    {
      v6 = 0;
      do
      {
        Util_DeallocRequirement(*&a1[2 * v6++ + 5]);
      }

      while (v6 < a1[4]);
    }
  }

  else
  {
    switch(v2)
    {
      case 5:
        if (a1[4])
        {
          v4 = 0;
          do
          {
            Util_DeallocRequirement(*&a1[2 * v4++ + 5]);
          }

          while (v4 < a1[4]);
        }

        break;
      case 7:
        if (a1[5])
        {
          v5 = 0;
          do
          {
            Util_DeallocRequirement(*&a1[2 * v5++ + 6]);
          }

          while (v5 < a1[5]);
        }

        break;
      case 1000:
        if (a1[13])
        {
          v3 = 0;
          do
          {
            Util_DeallocRequirement(*&a1[2 * v3++ + 14]);
          }

          while (v3 < a1[13]);
        }

        break;
      default:
        goto LABEL_24;
    }
  }

  v2 = *a1;
LABEL_24:
  v7 = 4294967293;
  v8 = 70;
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_2_1();
      v14 = 553;
      goto LABEL_26;
    case 2:
      OUTLINED_FUNCTION_2_1();
      v14 = 557;
      goto LABEL_26;
    case 3:
      v9 = "ACMRequirement - ACMRequirementDataBiometryMatched";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 172;
      v12 = a1;
      v13 = 172;
      v14 = 561;
      goto LABEL_26;
    case 4:
      v9 = "ACMRequirement - ACMRequirementDataOr";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 100;
      v12 = a1;
      v13 = 100;
      v14 = 606;
      goto LABEL_26;
    case 5:
      v9 = "ACMRequirement - ACMRequirementDataAnd";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 100;
      v12 = a1;
      v13 = 100;
      v14 = 600;
      goto LABEL_26;
    case 6:
    case 9:
    case 10:
    case 12:
    case 14:
    case 15:
    case 18:
    case 19:
    case 22:
    case 23:
    case 27:
    case 28:
      v9 = "ACMRequirement";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 16;
      v12 = a1;
      v13 = 16;
      v14 = 545;
      goto LABEL_26;
    case 7:
      v9 = "ACMRequirement - ACMRequirementDataKofN";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 104;
      v12 = a1;
      v13 = 104;
      v14 = 595;
      goto LABEL_26;
    case 8:
      v9 = "ACMRequirement - ACMRequirementDataAccessGroups";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 1040;
      v12 = a1;
      v13 = 1040;
      v14 = 585;
      goto LABEL_26;
    case 11:
      v9 = "ACMRequirement - ACMRequirementDataPushButton";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 24;
      v12 = a1;
      v13 = 24;
      v14 = 549;
      goto LABEL_26;
    case 13:
      v9 = "ACMRequirement - ACMRequirementDataUserOutputDisplayed";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 48;
      v12 = a1;
      v13 = 48;
      v14 = 573;
      goto LABEL_26;
    case 16:
    case 17:
      break;
    case 20:
      OUTLINED_FUNCTION_2_1();
      v14 = 565;
      goto LABEL_26;
    case 21:
      OUTLINED_FUNCTION_2_1();
      v14 = 569;
      goto LABEL_26;
    case 24:
      v9 = "ACMRequirement - ACMRequirementDataAP";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 1076;
      v12 = a1;
      v13 = 1076;
      v14 = 577;
      goto LABEL_26;
    case 25:
      v9 = "ACMRequirement - ACMRequirementDataKeyRef";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 59;
      v12 = a1;
      v13 = 59;
      v14 = 581;
      goto LABEL_26;
    case 26:
      v9 = "ACMRequirement - ACMRequirementDataRatchet";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 44;
      v12 = a1;
      v13 = 44;
      v14 = 590;
LABEL_26:
      acm_mem_free_info(v9, v12, v13, v10, v14, v11);
      acm_mem_free(a1, v7);
      v7 = 0;
      v8 = 10;
      break;
    default:
      switch(v2)
      {
        case 1000:
          v9 = "ACMRequirement - ACMRequirementDataKofNWithAttributes";
          v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
          v11 = "Util_DeallocRequirement";
          v7 = 136;
          v12 = a1;
          v13 = 136;
          v14 = 612;
          goto LABEL_26;
        case 1001:
          v9 = "ACMRequirement - ACMRequirementDataBiometryMatchedWithAttributes";
          v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
          v11 = "Util_DeallocRequirement";
          v7 = 184;
          v12 = a1;
          v13 = 184;
          v14 = 616;
          goto LABEL_26;
        case 1002:
          OUTLINED_FUNCTION_3_1();
          v14 = 620;
          goto LABEL_26;
        case 1003:
          OUTLINED_FUNCTION_2_1();
          v14 = 624;
          goto LABEL_26;
        case 1004:
          OUTLINED_FUNCTION_3_1();
          v14 = 628;
          goto LABEL_26;
        default:
          goto LABEL_27;
      }
  }

LABEL_27:
  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_DeallocRequirement", v7);
  }

  return v7;
}

id LACLogDefault(uint64_t a1)
{
  if (LACLogDefault_onceToken != -1)
  {
    LACLogDefault_cold_1();
  }

  v2 = LACLogDefault___logObj;

  return v2;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id LACLogGestalt(uint64_t a1)
{
  if (LACLogGestalt_onceToken != -1)
  {
    LACLogGestalt_cold_1();
  }

  v2 = LACLogGestalt___logObj;

  return v2;
}

uint64_t LACCompanionAuthenticationController.canProcessRequest(_:)(void *a1)
{
  v2 = v1;
  v48 = type metadata accessor for Logger();
  v4 = *(v48 - 8);
  v5 = MEMORY[0x1EEE9AC00](v48);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = [v2 replyQueue];
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v19 = [v2 isFeatureSupported];
    if (v19)
    {
      v20 = [objc_msgSend(v2 authenticator)];
      v21 = swift_unknownObjectRelease();
      if (v20)
      {
        v22 = [v2 isSessionActive];
        if (v22)
        {
          return 1;
        }

        v39 = LACLogABM(v22);
        Logger.init(_:)();
        swift_unknownObjectRetain_n();
        v40 = v2;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138543618;
          *(v43 + 4) = v40;
          *v44 = v40;
          *(v43 + 12) = 1026;
          v45 = v40;
          v46 = [a1 identifier];
          swift_unknownObjectRelease();
          *(v43 + 14) = v46;
          swift_unknownObjectRelease();
          _os_log_impl(&dword_1B0233000, v41, v42, "%{public}@ Not handling request rid: %{public}u - session not active", v43, 0x12u);
          outlined destroy of AsyncStream<()>.Continuation?(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B27246A0](v44, -1, -1);
          MEMORY[0x1B27246A0](v43, -1, -1);
        }

        else
        {

          swift_unknownObjectRelease_n();
        }
      }

      else
      {
        v31 = LACLogABM(v21);
        Logger.init(_:)();
        swift_unknownObjectRetain_n();
        v32 = v2;
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v35 = 138543618;
          *(v35 + 4) = v32;
          *v36 = v32;
          *(v35 + 12) = 1026;
          v37 = v32;
          v38 = [a1 identifier];
          swift_unknownObjectRelease();
          *(v35 + 14) = v38;
          swift_unknownObjectRelease();
          _os_log_impl(&dword_1B0233000, v33, v34, "%{public}@ Not handling request rid: %{public}u - authenticator not available", v35, 0x12u);
          outlined destroy of AsyncStream<()>.Continuation?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B27246A0](v36, -1, -1);
          MEMORY[0x1B27246A0](v35, -1, -1);
        }

        else
        {

          swift_unknownObjectRelease_n();
        }

        v12 = v10;
      }
    }

    else
    {
      v23 = LACLogABM(v19);
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v24 = v2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138543618;
        *(v27 + 4) = v24;
        *v28 = v24;
        *(v27 + 12) = 1026;
        v29 = v24;
        v30 = [a1 identifier];
        swift_unknownObjectRelease();
        *(v27 + 14) = v30;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v25, v26, "%{public}@ Not handling request rid: %{public}u - feature not supported", v27, 0x12u);
        outlined destroy of AsyncStream<()>.Continuation?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v28, -1, -1);
        MEMORY[0x1B27246A0](v27, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      v12 = v7;
    }

    (*(v4 + 8))(v12, v48);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *LACCompanionAuthenticationCoordinator.mockedAuthProvider.getter()
{
  v1 = OBJC_IVAR___LACCompanionAuthenticationCoordinator____lazy_storage___mockedAuthProvider;
  if (*&v0[OBJC_IVAR___LACCompanionAuthenticationCoordinator____lazy_storage___mockedAuthProvider])
  {
    v2 = *&v0[OBJC_IVAR___LACCompanionAuthenticationCoordinator____lazy_storage___mockedAuthProvider];
  }

  else
  {
    v2 = closure #1 in LACCompanionAuthenticationCoordinator.mockedAuthProvider.getter(v0);
    *&v0[v1] = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t LACCompanionAuthenticationProviderDummy.isAvailable.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore39LACCompanionAuthenticationProviderDummy_companion);
  if (v1 == 2)
  {
    result = [objc_opt_self() isMacCompanionSessionActive];
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v1 != 4)
  {
    return 0;
  }

  result = [objc_opt_self() isVisionCompanionSessionActive];
  if (result)
  {
LABEL_3:

    return 1;
  }

  return result;
}

id LACLogABM(uint64_t a1)
{
  if (LACLogABM_onceToken != -1)
  {
    LACLogABM_cold_1();
  }

  v2 = LACLogABM___logObj;

  return v2;
}

uint64_t outlined destroy of AsyncStream<()>.Continuation?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

int *LibCall_ACMContextVerifyPolicyEx_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextVerifyPolicyEx_Block");
  }

  v17 = 0;
  v18 = 0;
  v22 = 0;
  v21 = 0;
  v19 = 4294967293;
  if (a3 && a4 && a9)
  {
    v19 = LibCall_ACMContextVerifyPolicyEx(a1, a2, a3, a4, a5, a6, a7, a8, &v21, &v22);
    v18 = v22;
    v17 = v21;
  }

  (*(a9 + 16))(a9, v19, v17 & 1, v18);
  result = v22;
  if (v22)
  {
    result = Util_DeallocRequirement(v22);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMContextVerifyPolicyEx_Block");
  }

  return result;
}

void ACMContextVerifyPolicyEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v14 = a1;
  LibCall_ACMContextVerifyPolicyEx_Block(ioKitTransport, &v14, a1, a2, a3, a4, a5, a6, a7);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void *OUTLINED_FUNCTION_26_1()
{

  return calloc(0x18uLL, 1uLL);
}

void OUTLINED_FUNCTION_8_4()
{
  *(v1 - 56) = 0;
  *(v1 - 48) = v0;
  *(v1 - 60) = 1;
}

uint64_t GetSerializedVerifyPolicySize()
{
  result = OUTLINED_FUNCTION_15_0();
  if (v5)
  {
    if (v1)
    {
      v6 = v4;
      if (v4)
      {
        v7 = v3;
        v8 = v2;
        v9 = strnlen(v1, 0x81uLL);
        if (v9 > 0x80)
        {
          return 4294967293;
        }

        else
        {
          v10 = v9;
          result = getLengthOfParameters(v8, v7, &v11);
          if (!result)
          {
            *v6 = v10 + v11 + 26;
          }
        }
      }
    }
  }

  return result;
}

uint64_t serializeParameters(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "serializeParameters");
  }

  v8 = 70;
  v9 = 4294967293;
  if (a3 && a4)
  {
    v10 = *a4;
    *(a3 + v10) = v6;
    v11 = v10 + 4;
    if (v6)
    {
      v6 = v6;
      while (1)
      {
        *__src = *a1;
        __n = *(a1 + 16);
        v12 = checkParameter(__src);
        if (v12)
        {
          break;
        }

        v13 = (a3 + v11);
        v14 = __n;
        *v13 = __src[0];
        v13[1] = v14;
        v11 += 8;
        if (v14)
        {
          memcpy((a3 + v11), __src[1], v14);
          v11 += v14;
        }

        a1 += 24;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v9 = v12;
      v8 = 70;
    }

    else
    {
LABEL_11:
      v9 = 0;
      *a4 = v11;
      v8 = 10;
    }
  }

  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "serializeParameters", v9);
  }

  return v9;
}

id __NSStringFromACMRequirement_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696ACB0];
  v2 = NSDictionaryFromACMRequirement(*(a1 + 32));
  v3 = [v1 dataWithJSONObject:v2 options:1 error:0];

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];

  return v4;
}

id NSStringFromACMRequirement(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __NSStringFromACMRequirement_block_invoke;
  v5[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v5[4] = a1;
  v2 = __NSStringFromACMRequirement_block_invoke(v5);
  v3 = [v1 stringWithFormat:@"ACMRequirement: %@", v2];

  return v3;
}

unsigned int *LibCall_ACMRequirementGetType(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t LibCall_ACMRequirementGetState(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t __NSDictionaryFromACMRequirement_block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __NSDictionaryFromACMRequirement_block_invoke_2;
  v4[3] = &unk_1E7A958D0;
  v4[4] = &v5;
  ACMRequirementGetProperty(v1, 100, v4);
  v2 = [v6[5] intValue];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1B0241268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_7_3(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return ccder_blob_encode_body();
}

uint64_t __NSDictionaryFromACMRequirement_block_invoke_2(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (a2 && a3 == 4)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a2];
    v6 = *(*(v4 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return MEMORY[0x1EEE66BB8](v5, v7);
  }

  return result;
}

uint64_t checkParameter(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  switch(*a1)
  {
    case 0:
    case 0xC:
      if (a1[4])
      {
        return 4294967293;
      }

      break;
    case 1:
    case 4:
    case 5:
    case 0xA:
      if (a1[4] != 4)
      {
        return 4294967293;
      }

      break;
    case 2:
    case 6:
    case 7:
      if (a1[4] != 16)
      {
        return 4294967293;
      }

      break;
    case 3:
      if ((a1[4] - 1001) < 0xFFFFFC18)
      {
        return 4294967293;
      }

      break;
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      if (a1[4] != 1)
      {
        return 4294967293;
      }

      break;
    case 0xB:
      if (a1[4] > 0x400u)
      {
        return 4294967293;
      }

      break;
    default:
      return 4294967293;
  }

  return 0;
}

void closure #1 in LACEvaluationRequestRootProcessor.process(_:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    LACEvaluationResult.resultWithAssociatedValue.getter(&v27);
    v16 = v27;
    v15 = v28;
    if ((v28 >> 62) < 2)
    {
LABEL_3:
      outlined consume of LACEvaluationResultWithAssociatedValue(v16, v15);
      LACEvaluationRequestRootProcessor.postProcess(_:result:completion:)(a3, a1, a4, a5);

      return;
    }

    if (v28 >> 62 == 2)
    {
      v21 = objc_opt_self();
      v22 = specialized static LACEvaluationRequestRootProcessor.noResultError(request:)(a3);
      v23 = _convertErrorToNSError(_:)();

      v24 = [v21 resultWithFailure_];
      LACEvaluationRequestRootProcessor.postProcess(_:result:completion:)(a3, v24, a4, a5);
    }

    else
    {
      if ([*&v14[OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor] respondsToSelector_])
      {
        goto LABEL_3;
      }

      swift_unknownObjectRetain();
      v25 = (v15 & 0x3FFFFFFFFFFFFFFFLL);
      LACEvaluationRequestRootProcessor.retry(request:for:completion:)(v16, (v15 & 0x3FFFFFFFFFFFFFFFLL), a4, a5);

      swift_unknownObjectRelease();
    }

    outlined consume of LACEvaluationResultWithAssociatedValue(v16, v15);
  }

  else
  {
    v17 = LACLogProcessor(0);
    Logger.init(_:)();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B0233000, v18, v19, "LACEvaluationRequestRootProcessor was deinitialized", v20, 2u);
      MEMORY[0x1B27246A0](v20, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t LACEvaluationRequestRootProcessor.postProcess(_:result:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor);
  if (([v11 respondsToSelector_] & 1) == 0)
  {
    return a3(a2);
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = ObjectType;
  v16[4] = partial apply for closure #1 in LACEvaluationRequestRootProcessor.postProcess(_:result:completion:);
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  v16[3] = &block_descriptor_16_0;
  v14 = _Block_copy(v16);

  swift_unknownObjectRetain();
  [v11 postProcessRequest:a1 result:a2 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1B0241A98()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B0241C74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *specialized LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  result = swift_allocObject();
  v15 = result;
  result[2] = a5;
  result[3] = a6;
  result[4] = a7;
  if ((a3 & 0x8000000000000000) != 0)
  {
    swift_retain_n();
    swift_retain_n();
    closure #1 in LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:completion:)(a2, a5, a6);
  }

  else
  {
    v16 = *(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors);
    if ((v16 & 0xC000000000000001) != 0)
    {
      swift_retain_n();
      swift_retain_n();
      v17 = MEMORY[0x1B2722E50](a3, v16);
    }

    else
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
      {
        __break(1u);
        return result;
      }

      v17 = *(v16 + 8 * a3 + 32);
      swift_retain_n();
      swift_retain_n();
      swift_unknownObjectRetain();
    }

    if ([v17 canProcessRequest_])
    {
LABEL_9:
      if ([v17 respondsToSelector_])
      {
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = swift_allocObject();
        v23[2] = v22;
        v23[3] = a1;
        v23[4] = a3;
        v23[5] = partial apply for closure #1 in LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:completion:);
        v23[6] = v15;
        v25[4] = partial apply for closure #1 in LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:);
        v25[5] = v23;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 1107296256;
        v25[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
        v25[3] = &block_descriptor_25_0;
        v24 = _Block_copy(v25);

        swift_unknownObjectRetain();

        [v17 postProcessRequest:a1 result:a2 completion:v24];
        swift_unknownObjectRelease();
        _Block_release(v24);
      }
    }

    else
    {
      v18 = *(a4 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices);
      v19 = *(v18 + 16);
      v20 = (v18 + 32);
      while (v19)
      {
        v21 = *v20++;
        --v19;
        if (v21 == a3)
        {
          goto LABEL_9;
        }
      }
    }

    specialized LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:)(a1, a2, a3 - 1, a4, a5, a6, a7);

    swift_unknownObjectRelease();
  }
}

void closure #1 in LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [a1 rawValue];
    if ((v20 - 2) < 2 || v20 == 0)
    {
      v22 = a4 - 1;
      if (!__OFSUB__(a4, 1))
      {
LABEL_8:
        LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:)(a3, a1, v22, a5, a6);

        return;
      }
    }

    else
    {
      v37 = a5;
      v38 = a6;
      if (v20 != 1)
      {
LABEL_19:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v27 = LACLogProcessor(1);
      Logger.init(_:)();
      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      v36 = v28;

      v39 = v29;
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        v33 = v36;
        *(v31 + 4) = v36;
        *v32 = v33;
        v34 = v33;
        _os_log_impl(&dword_1B0233000, v39, v30, "Unexpected processing result during post-processing: %@", v31, 0xCu);
        outlined destroy of NSObject?(v32);
        MEMORY[0x1B27246A0](v32, -1, -1);
        MEMORY[0x1B27246A0](v31, -1, -1);
      }

      (*(v12 + 8))(v15, v11);
      a5 = v37;
      a6 = v38;
      v22 = a4 - 1;
      if (!__OFSUB__(a4, 1))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v23 = LACLogProcessor(0);
  Logger.init(_:)();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1B0233000, v24, v25, "LACEValuationRequestCompoundProcessor was unexpectedly released during post-processing", v26, 2u);
    MEMORY[0x1B27246A0](v26, -1, -1);
  }

  (*(v12 + 8))(v17, v11);
}

uint64_t LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    return a4(a2);
  }

  v10 = result;
  v11 = *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors);
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B2722E50](a3);
  }

  else
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
    {
      __break(1u);
      return result;
    }

    v12 = *(v11 + 8 * a3 + 32);
    swift_unknownObjectRetain();
  }

  if ([v12 canProcessRequest_])
  {
LABEL_9:
    if ([v12 respondsToSelector_])
    {
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v10;
      v18[4] = a3;
      v18[5] = a4;
      v18[6] = a5;
      v20[4] = closure #1 in LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:)partial apply;
      v20[5] = v18;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 1107296256;
      v20[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
      v20[3] = &block_descriptor_33_1;
      v19 = _Block_copy(v20);

      swift_unknownObjectRetain();

      [v12 postProcessRequest:v10 result:a2 completion:v19];
      swift_unknownObjectRelease();
      _Block_release(v19);
    }
  }

  else
  {
    v13 = *(v5 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices);
    v14 = *(v13 + 16);
    v15 = (v13 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == a3)
      {
        goto LABEL_9;
      }
    }
  }

  LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:)(v10, a2, a3 - 1, a4, a5);

  return swift_unknownObjectRelease();
}

void closure #1 in LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex;
    *v10 = 0;
    *(v10 + 8) = 1;
    *(Strong + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices) = MEMORY[0x1E69E7CC0];
    v11 = Strong;

    *&v11[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = 0;
    swift_unknownObjectRelease();
    a3(a1);
  }

  else
  {
    v12 = LACLogProcessor(0);
    Logger.init(_:)();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B0233000, v13, v14, "LACEValuationRequestCompoundProcessor was unexpectedly released during post-processing", v15, 2u);
      MEMORY[0x1B27246A0](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

void closure #1 in LACEvaluationRequestRootProcessor.postProcess(_:result:completion:)(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4, void *a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    LACEvaluationResult.resultWithAssociatedValue.getter(&v27);
    v16 = v27;
    v15 = v28;
    if ((v28 >> 62) >= 2)
    {
      if (v28 >> 62 == 2)
      {
        v21 = objc_opt_self();
        v22 = specialized static LACEvaluationRequestRootProcessor.noResultError(request:)(a5);
        v23 = _convertErrorToNSError(_:)();

        v24 = [v21 resultWithFailure_];
        a3(v24);
      }

      else
      {
        swift_unknownObjectRetain();
        v25 = (v15 & 0x3FFFFFFFFFFFFFFFLL);
        LACEvaluationRequestRootProcessor.retry(request:for:completion:)(v16, (v15 & 0x3FFFFFFFFFFFFFFFLL), a3, a4);

        swift_unknownObjectRelease();
      }

      outlined consume of LACEvaluationResultWithAssociatedValue(v16, v15);
    }

    else
    {
      outlined consume of LACEvaluationResultWithAssociatedValue(v27, v28);
      a3(a1);
    }
  }

  else
  {
    v17 = LACLogProcessor(0);
    Logger.init(_:)();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B0233000, v18, v19, "LACEvaluationRequestRootProcessor was deinitialized", v20, 2u);
      MEMORY[0x1B27246A0](v20, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t objectdestroy_21Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void acm_mem_free(void *a1, rsize_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2);
    free(v3);
    v4 = _allocatedMem_3 - v2;
    if (_allocatedMem_3 < v2)
    {
      v4 = 0;
    }

    _allocatedMem_3 = v4;
  }
}

id LACLogDTOSensor(uint64_t a1)
{
  if (LACLogDTOSensor_onceToken != -1)
  {
    LACLogDTOSensor_cold_1();
  }

  v2 = LACLogDTOSensor___logObj;

  return v2;
}

void thunk for @escaping @callee_guaranteed (@unowned AKSEventType, @guaranteed CFDictionaryRef?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t closure #1 in LACOnenessSessionProvider.start()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LACOnenessSessionProvider.fetchCurrentState()();
  }

  return result;
}

uint64_t LACOnenessSessionProvider.fetchCurrentState()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v20[-v6];
  v8 = LACLogABM(v5);
  Logger.init(_:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B0233000, v9, v10, "Fetching Mac companion assertion", v11, 2u);
    MEMORY[0x1B27246A0](v11, -1, -1);
  }

  v12 = *(v1 + 8);
  v12(v7, v0);
  v13 = [objc_opt_self() isOnenessAssertionActive];
  v14 = v13;
  v15 = LACLogABM(v13);
  Logger.init(_:)();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v14;
    _os_log_impl(&dword_1B0233000, v16, v17, "Mac Companion assertion is active: %{BOOL}d", v18, 8u);
    MEMORY[0x1B27246A0](v18, -1, -1);
  }

  v12(v4, v0);
  v20[15] = v14;

  CurrentValueSubject.send(_:)();
}

uint64_t _get_device_state(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v28[1] = *MEMORY[0x1E69E9840];
  v28[0] = v1;
  v24 = 4096;
  v6 = 3758097084;
  v26 = 0;
  memset(__src, 0, sizeof(__src));
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v3)
    {
      v8 = aks_client_connection;
      bzero(v27, 0x1000uLL);
      v14 = OUTLINED_FUNCTION_3_5(v8, v5, v28, v9, v10, v11, v12, v13, v27, &v24);
      if (v14)
      {
        return v14;
      }

      else
      {
        if (!decode_extended_state(v27))
        {
          memcpy(v3, __src, 0x42uLL);
        }

        return 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 2409, "", "");
  }

  return v6;
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t decode_extended_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_2(*MEMORY[0x1E69E9840]);
  if (v4 && a1)
  {
    v5 = v3;
    if (v3)
    {
      memset_s(v3, 0x54uLL, 0, 0x54uLL);
      bzero(v7, 0x228uLL);
      v7[4] = der_key_state_lock_state;
      v7[9] = der_key_state_backoff;
      v7[14] = der_key_state_failed_attempts;
      v7[19] = der_key_state_generation_state;
      v7[24] = der_key_state_assertion_set;
      v7[29] = der_key_state_grace_period_enabled;
      v7[34] = der_key_state_recovery_countdown;
      v7[39] = der_key_state_more_state;
      v7[44] = der_key_keybag_handle;
      v7[49] = der_key_config_max_unlock_attempts;
      v7[54] = der_key_config_user_uuid;
      v8[2] = der_key_lock_time;
      v8[7] = der_key_cx_window;
      OUTLINED_FUNCTION_0_19();
      OUTLINED_FUNCTION_34_1();
      *v5 = der_get_number();
      *(v5 + 1) = der_get_number();
      *(v5 + 1) = der_get_number();
      *(v5 + 4) = der_get_number();
      *(v5 + 5) = der_get_number();
      *(v5 + 26) = der_get_number();
      *(v5 + 34) = der_get_number();
      *(v5 + 42) = der_get_number();
      *(v5 + 46) = der_get_number();
      der_utils_decode_implicit_raw_octet_string_copy(v8, 4, v5 + 50, 16);
      v5[66] = der_get_number();
      v5[67] = der_get_number();
      *(v5 + 68) = der_get_number();
      der_get_number();
      result = OUTLINED_FUNCTION_17_4();
      *(v5 + 76) = v6;
    }
  }

  return result;
}

uint64_t der_dict_iterate()
{
  OUTLINED_FUNCTION_24_0();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        OUTLINED_FUNCTION_31_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  bzero(va, 0x8000uLL);
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return der_dict_iterate();
}

uint64_t dict_find_params_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v14 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = der_equal(*(*(a5 + 24) + v10), *(*(a5 + 24) + v10) + *(*(*(a5 + 24) + v10) + 1) + 2, a1, a1 + a2);
      if (v12)
      {
        break;
      }

      ++v11;
      v10 += 40;
      if (v11 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v15 = (*(a5 + 24) + v10);
    if (v15[1])
    {
      v13 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v15[1] = a3;
      v15[2] = a3 + a4;
      v15[3] = a3;
      v15[4] = a3 + a4;
      v13 = 1;
    }

LABEL_10:
    v14 = v13 | !v12;
  }

  return v14 & 1;
}

uint64_t der_get_sizeof(uint64_t a1, uint64_t a2)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t der_get_number()
{
  OUTLINED_FUNCTION_28_1();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  OUTLINED_FUNCTION_18_4(a1);
  OUTLINED_FUNCTION_4_6();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_21_2(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return OUTLINED_FUNCTION_6_6(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return OUTLINED_FUNCTION_6_6(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_18_3(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

__n128 OUTLINED_FUNCTION_17@<Q0>(unsigned __int32 a1@<W1>, unsigned __int32 a2@<W2>, __n128 *a3@<X3>, void *a4@<X4>, __n128 *a5@<X8>)
{
  result = *a5;
  *a3 = *a5;
  a3[1].n128_u32[0] = a1;
  a3[1].n128_u32[1] = a2;
  *a4 = 24;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{

  return performCommand(a1, a2, 0, v5, a5, 0, 0);
}

void closure #2 in LACPhoneIntegrationEnvironmentProvider.setup()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      aBlock = 0;
      type metadata accessor for CFStringRef(0);
      type metadata accessor for CFNumberRef(0);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
      v5 = a2;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }
}

uint64_t sub_1B02442B8()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for LACStorageKey(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = MEMORY[0x1B2723090](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for CFNumberRef(0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B2722DF0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

__CFString *NSStringFromLACCompanionType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return &stru_1F2652748;
  }

  else
  {
    return off_1E7A96590[a1 - 1];
  }
}

id LACLogNotifications(uint64_t a1)
{
  if (LACLogNotifications_onceToken != -1)
  {
    LACLogNotifications_cold_1();
  }

  v2 = LACLogNotifications___logObj;

  return v2;
}

id LACLogDTOLocation(uint64_t a1)
{
  if (LACLogDTOLocation_onceToken != -1)
  {
    LACLogDTOLocation_cold_1();
  }

  v2 = LACLogDTOLocation___logObj;

  return v2;
}

id LACLogKeybag(uint64_t a1)
{
  if (LACLogKeybag_onceToken != -1)
  {
    LACLogKeybag_cold_1();
  }

  v2 = LACLogKeybag___logObj;

  return v2;
}

__CFString *NSStringFromLACKeyBagState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A965B0[a1 - 1];
  }
}

uint64_t SetupAssistantLibraryCore(uint64_t a1)
{
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SetupAssistantLibraryCore_frameworkLibrary;
}

uint64_t getBYSetupAssistantNeedsToRunSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  v6 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke;
    v2[3] = &unk_1E7A955D8;
    v2[4] = &v3;
    __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B0244F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void closure #1 in LACPhoneIntegrationEnvironmentProvider.refreshAvailability(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a1)
    {
      v14 = *(a1 + 16) != 0;
    }

    else
    {
      v14 = 0;
    }

    v15 = LACLogABM([Strong setHasPairedDevices_]);
    Logger.init(_:)();
    v16 = v13;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v23 = a5;
      v20 = v19;
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      *(v20 + 4) = v16;
      *v21 = v13;
      *(v20 + 12) = 1024;
      *(v20 + 14) = [v16 isFeatureAvailable];
      _os_log_impl(&dword_1B0233000, v17, v18, "%@ Did refresh availability isAvailable: %{BOOL}d", v20, 0x12u);
      outlined destroy of NSObject?(v21);
      MEMORY[0x1B27246A0](v21, -1, -1);
      MEMORY[0x1B27246A0](v20, -1, -1);
    }

    else
    {

      v17 = v16;
    }

    v22 = (*(v9 + 8))(v11, v8);
    if (a4)
    {
      a4(v22);
    }
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void LACDarwinNotificationCenterCallBack(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 _notifyObserversAboutNotification:a3];
  }
}

void sub_1B0245510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LACLogDTOStorage(uint64_t a1)
{
  if (LACLogDTOStorage_onceToken != -1)
  {
    LACLogDTOStorage_cold_1();
  }

  v2 = LACLogDTOStorage___logObj;

  return v2;
}

__CFString *NSStringFromLACDTOLocationPrewarmResult(uint64_t a1)
{
  if (a1)
  {
    return @"Skipped";
  }

  else
  {
    return @"Completed";
  }
}

id LACLogDTOFeature(uint64_t a1)
{
  if (LACLogDTOFeature_onceToken != -1)
  {
    LACLogDTOFeature_cold_1();
  }

  v2 = LACLogDTOFeature___logObj;

  return v2;
}

void *LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(char *a1)
{
  v2 = v1;
  v212 = a1;
  v216 = type metadata accessor for Logger();
  v204 = *(v216 - 8);
  v3 = MEMORY[0x1EEE9AC00](v216);
  v211 = (&v193 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1EEE9AC00](v3);
  v206 = &v193 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v201 = &v193 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v193 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v205 = &v193 - v12;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v202);
  v210 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  *&v203 = &v193 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v193 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v200 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v213 = &v193 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v193 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v193 - v28;
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v193 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = v2;
  *v33 = [v2 replyQueue];
  (*(v31 + 104))(v33, *MEMORY[0x1E69E8020], v30);
  v34 = _dispatchPreconditionTest(_:)();
  v36 = *(v31 + 8);
  v35 = (v31 + 8);
  v36(v33, v30);
  if (v34)
  {
    outlined init with copy of UUID?(v212, v18);
    v38 = v20[6](v18, 1, v19);
    v214 = v19;
    v208 = v20;
    if (v38 == 1)
    {
      outlined destroy of AsyncStream<()>.Continuation?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v39 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
      v40 = v215;
      swift_beginAccess();
      v41 = *&v40[v39];
      v42 = v41[2];
      if (v42)
      {
        v43 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC23LocalAuthenticationCore012LACCompanionI24ControllerPendingRequestC_Tt1g5(v41[2], 0);
        v207 = specialized Sequence._copySequenceContents(initializing:)(v219, (v43 + 32), v42, v41);
        v33 = v219[0];
        v34 = v219[1];
        v44 = v219[3];

        outlined consume of [UUID : LACCompanionAuthenticationControllerPendingRequest].Iterator._Variant(v33);
        v45 = v207;
        if (v207 != v42)
        {
          goto LABEL_73;
        }

        v33 = v43;
      }

      else
      {
        v33 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v20[4](v29, v18, v19);
      v46 = OBJC_IVAR___LACCompanionAuthenticationController_pendingRequests;
      v47 = v215;
      v48 = swift_beginAccess();
      v49 = *&v47[v46];
      MEMORY[0x1EEE9AC00](v48);
      *(&v193 - 2) = v29;

      v33 = specialized Sequence.filter(_:)(partial apply for closure #1 in LACCompanionAuthenticationController.cancelPendingRequests(contextID:), (&v193 - 4), v49);
      v50 = v20[1];

      (v50)(v29, v19);
    }

    v34 = v206;
    v35 = v205;
    v37 = v33 & 0xFFFFFFFFFFFFFF8;
    v30 = v33 >> 62;
    if (!(v33 >> 62))
    {
      v51 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  if (v33 < 0)
  {
    v190 = v33;
  }

  else
  {
    v190 = v37;
  }

  v51 = MEMORY[0x1B2722F00](v190);
LABEL_11:

  if (v51)
  {
    v53 = LACLogABM(v52);
    Logger.init(_:)();
    v54 = v203;
    outlined init with copy of UUID?(v212, v203);
    v41 = v215;

    v44 = Logger.logObject.getter();
    LODWORD(v43) = static os_log_type_t.debug.getter();

    v55 = os_log_type_enabled(v44, v43);
    v209 = v11;
    v215 = v33;
    v207 = v41;
    if (!v55)
    {

      outlined destroy of AsyncStream<()>.Continuation?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v85 = v204;
      v212 = *(v204 + 1);
      (v212)(v35, v216);
      goto LABEL_42;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    v218 = v195;
    *v56 = 138543874;
    *(v56 + 4) = v41;
    v194 = v57;
    *v57 = v41;
    v196 = v56;
    *(v56 + 12) = 2082;
    v197 = v30;
    v45 = v33 & 0xFFFFFFFFFFFFFF8;
    if (v30)
    {
      goto LABEL_74;
    }

    for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x1B2722F00](v192))
    {
      v59 = MEMORY[0x1E69E7CC0];
      v199 = v44;
      v198 = v43;
      if (i)
      {
        v217 = MEMORY[0x1E69E7CC0];
        v60 = v41;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v62 = v217;
        if ((v33 & 0xC000000000000001) != 0)
        {
          v63 = 0;
          v64 = (v208 + 16);
          v65 = v214;
          do
          {
            v66 = MEMORY[0x1B2722E50](v63, v215);
            v67 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
            swift_beginAccess();
            (*v64)(v27, v66 + v67, v65);
            swift_unknownObjectRelease();
            v217 = v62;
            v69 = *(v62 + 16);
            v68 = *(v62 + 24);
            if (v69 >= v68 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
              v62 = v217;
            }

            ++v63;
            *(v62 + 16) = v69 + 1;
            (*(v208 + 4))(v62 + ((v208[80] + 32) & ~v208[80]) + *(v208 + 9) * v69, v27, v65);
          }

          while (i != v63);
        }

        else
        {
          v88 = (v33 + 32);
          v89 = (v208 + 16);
          v90 = v214;
          v91 = v200;
          do
          {
            v92 = *v88;
            v93 = OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id;
            swift_beginAccess();
            (*v89)(v91, v92 + v93, v90);
            v217 = v62;
            v95 = *(v62 + 16);
            v94 = *(v62 + 24);
            if (v95 >= v94 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
              v91 = v200;
              v62 = v217;
            }

            *(v62 + 16) = v95 + 1;
            (*(v208 + 4))(v62 + ((v208[80] + 32) & ~v208[80]) + *(v208 + 9) * v95, v91, v90);
            ++v88;
            --i;
          }

          while (i);
        }

        v34 = v206;
        v11 = v209;
        v44 = v199;
        LODWORD(v43) = v198;
        v59 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v87 = v41;
        v62 = MEMORY[0x1E69E7CC0];
      }

      v96 = *(v62 + 16);
      v27 = v208;
      if (v96)
      {
        v217 = v59;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96, 0);
        v97 = v217;
        v98 = v27 + 16;
        v99 = *(v27 + 2);
        v27 = (v62 + ((v27[80] + 32) & ~v27[80]));
        v210 = *(v98 + 7);
        v211 = v99;
        v212 = v98;
        v100 = v98 - 8;
        do
        {
          v101 = v213;
          v102 = v214;
          v211(v213, v27, v214);
          v103 = UUID.uuidString.getter();
          v105 = v104;
          (*v100)(v101, v102);
          v217 = v97;
          v107 = *(v97 + 16);
          v106 = *(v97 + 24);
          if (v107 >= v106 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1);
            v97 = v217;
          }

          *(v97 + 16) = v107 + 1;
          v108 = v97 + 16 * v107;
          *(v108 + 32) = v103;
          *(v108 + 40) = v105;
          v27 += v210;
          --v96;
        }

        while (v96);

        v34 = v206;
        v11 = v209;
        v44 = v199;
        LODWORD(v43) = v198;
      }

      else
      {

        v97 = MEMORY[0x1E69E7CC0];
      }

      v217 = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v109 = BidirectionalCollection<>.joined(separator:)();
      v111 = v110;

      v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, &v218);

      v113 = v196;
      *(v196 + 14) = v112;
      *(v113 + 22) = 2082;
      v114 = v203;
      v115 = Optional.debugDescription.getter();
      v117 = v116;
      outlined destroy of AsyncStream<()>.Continuation?(v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v117, &v218);

      *(v113 + 24) = v118;
      _os_log_impl(&dword_1B0233000, v44, v43, "%{public}@ Cancelling requests: %{public}s for contextID: %{public}s", v113, 0x20u);
      v119 = v194;
      outlined destroy of AsyncStream<()>.Continuation?(v194, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v119, -1, -1);
      v120 = v195;
      swift_arrayDestroy();
      MEMORY[0x1B27246A0](v120, -1, -1);
      MEMORY[0x1B27246A0](v113, -1, -1);

      v85 = v204;
      v212 = *(v204 + 1);
      (v212)(v205, v216);
      v33 = v215;
      v41 = v207;
      v30 = v197;
LABEL_42:
      v45 = v33 & 0xFFFFFFFFFFFFFF8;
      if (v30)
      {
        if (v33 < 0)
        {
          v191 = v33;
        }

        else
        {
          v191 = v33 & 0xFFFFFFFFFFFFFF8;
        }

        v121 = MEMORY[0x1B2722F00](v191);
        if (!v121)
        {
        }
      }

      else
      {
        v121 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v121)
        {
        }
      }

      if (v121 >= 1)
      {
        v122 = 0;
        v210 = (v85 + 8);
        v211 = (v33 & 0xC000000000000001);
        v205 = v208 + 16;
        v204 = v208 + 8;
        v200 = -4;
        *&v86 = 138543618;
        v203 = v86;
        v123 = &unk_1EB6D8000;
        v208 = v121;
        do
        {
          if (v211)
          {
            v125 = MEMORY[0x1B2722E50](v122, v33);
          }

          else
          {
            v125 = *(v33 + 8 * v122 + 32);
          }

          v126 = (*(*v125 + 144))();
          if (v126 - 2 >= 2)
          {
            if (v126)
            {
              v165 = LACLogABM(v126);
              v166 = v201;
              Logger.init(_:)();
              v167 = v41;

              v168 = Logger.logObject.getter();
              v169 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v168, v169))
              {
                v170 = swift_slowAlloc();
                v171 = swift_slowAlloc();
                v199 = v171;
                v202 = swift_slowAlloc();
                v218 = v202;
                *v170 = v203;
                *(v170 + 4) = v167;
                v171->isa = v41;
                *(v170 + 12) = 2082;
                v172 = *v205;
                v198 = v169;
                v173 = v213;
                v174 = v214;
                v172(v213, v125 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v214);
                lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
                v175 = v167;
                v176 = dispatch thunk of CustomStringConvertible.description.getter();
                v178 = v177;
                v179 = v174;
                v33 = v215;
                (*v204)(v173, v179);
                v180 = v176;
                v41 = v207;
                v181 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v178, &v218);
                v11 = v209;

                *(v170 + 14) = v181;
                _os_log_impl(&dword_1B0233000, v168, v198, "%{public}@ Cancelling companion authentication of request: %{public}s", v170, 0x16u);
                v182 = v199;
                outlined destroy of AsyncStream<()>.Continuation?(v199, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                MEMORY[0x1B27246A0](v182, -1, -1);
                v183 = v202;
                __swift_destroy_boxed_opaque_existential_0(v202);
                MEMORY[0x1B27246A0](v183, -1, -1);
                v184 = v170;
                v34 = v206;
                MEMORY[0x1B27246A0](v184, -1, -1);
              }

              (v212)(v166, v216);
              v124 = [v167 authenticator];
              [v124 cancelAuthenticationForRequestIdentifier_];
              swift_unknownObjectRelease();

              v121 = v208;
              v123 = &unk_1EB6D8000;
            }

            else
            {
              v144 = LACLogABM(v126);
              Logger.init(_:)();
              v145 = v41;

              v146 = v145;
              v147 = Logger.logObject.getter();
              v148 = v41;
              v149 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v147, v149))
              {
                v150 = swift_slowAlloc();
                v151 = swift_slowAlloc();
                v199 = v151;
                v202 = swift_slowAlloc();
                v218 = v202;
                *v150 = v203;
                *(v150 + 4) = v146;
                v151->isa = v148;
                *(v150 + 12) = 2082;
                v152 = v146;
                v154 = v213;
                v153 = v214;
                (*v205)(v213, v125 + v123[459], v214);
                lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
                v155 = v152;
                v156 = dispatch thunk of CustomStringConvertible.description.getter();
                v158 = v157;
                (*v204)(v154, v153);
                v159 = v156;
                v123 = &unk_1EB6D8000;
                v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v158, &v218);

                *(v150 + 14) = v160;
                _os_log_impl(&dword_1B0233000, v147, v149, "%{public}@ Cancelling request: %{public}s during preprocessing", v150, 0x16u);
                v161 = v199;
                outlined destroy of AsyncStream<()>.Continuation?(v199, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v33 = v215;
                MEMORY[0x1B27246A0](v161, -1, -1);
                v162 = v202;
                __swift_destroy_boxed_opaque_existential_0(v202);
                MEMORY[0x1B27246A0](v162, -1, -1);
                v163 = v150;
                v34 = v206;
                MEMORY[0x1B27246A0](v163, -1, -1);

                v164 = v209;
              }

              else
              {

                v164 = v11;
              }

              (v212)(v164, v216);
              v185 = v123[459];
              v186 = [objc_opt_self() errorWithCode_];
              v187 = objc_opt_self();
              v188 = _convertErrorToNSError(_:)();
              v189 = [v187 resultWithFailure_];

              LACCompanionAuthenticationController.finishRequestProcessing(with:result:)(v125 + v185, v189);

              v123 = &unk_1EB6D8000;
              v121 = v208;
              v11 = v209;
              v41 = v207;
            }
          }

          else
          {
            v127 = LACLogABM(v126);
            Logger.init(_:)();
            v128 = v41;

            v129 = Logger.logObject.getter();
            v130 = v41;
            v131 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v129, v131))
            {
              v132 = swift_slowAlloc();
              v133 = swift_slowAlloc();
              v202 = swift_slowAlloc();
              v218 = v202;
              *v132 = v203;
              *(v132 + 4) = v128;
              *v133 = v130;
              *(v132 + 12) = 2082;
              v134 = v213;
              v135 = v214;
              (*v205)(v213, v125 + OBJC_IVAR____TtC23LocalAuthenticationCore50LACCompanionAuthenticationControllerPendingRequest_id, v214);
              lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
              v136 = v128;
              v137 = dispatch thunk of CustomStringConvertible.description.getter();
              v139 = v138;
              (*v204)(v134, v135);
              v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v139, &v218);
              v11 = v209;

              *(v132 + 14) = v140;
              _os_log_impl(&dword_1B0233000, v129, v131, "%{public}@ Request: %{public}s not cancelled because it is already evaluating", v132, 0x16u);
              outlined destroy of AsyncStream<()>.Continuation?(v133, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v141 = v133;
              v123 = &unk_1EB6D8000;
              MEMORY[0x1B27246A0](v141, -1, -1);
              v142 = v202;
              __swift_destroy_boxed_opaque_existential_0(v202);
              v34 = v206;
              MEMORY[0x1B27246A0](v142, -1, -1);
              v143 = v132;
              v121 = v208;
              MEMORY[0x1B27246A0](v143, -1, -1);

              (v212)(v34, v216);
              v33 = v215;
              v41 = v207;
            }

            else
            {

              (v212)(v34, v216);
              v33 = v215;
              v41 = v130;
            }
          }

          ++v122;
        }

        while (v121 != v122);
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      if (v33 < 0)
      {
        v192 = v33;
      }

      else
      {
        v192 = v45;
      }
    }
  }

  v71 = LACLogABM(v70);
  v72 = v211;
  Logger.init(_:)();
  v73 = v210;
  outlined init with copy of UUID?(v212, v210);
  v74 = v215;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v219[0] = v79;
    *v77 = 138543618;
    *(v77 + 4) = v74;
    *v78 = v74;
    *(v77 + 12) = 2082;
    v80 = v74;
    v81 = Optional.debugDescription.getter();
    v83 = v82;
    outlined destroy of AsyncStream<()>.Continuation?(v73, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v219);

    *(v77 + 14) = v84;
    _os_log_impl(&dword_1B0233000, v75, v76, "%{public}@ No requests to cancel for contextID: %{public}s", v77, 0x16u);
    outlined destroy of AsyncStream<()>.Continuation?(v78, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v78, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x1B27246A0](v79, -1, -1);
    MEMORY[0x1B27246A0](v77, -1, -1);
  }

  else
  {

    outlined destroy of AsyncStream<()>.Continuation?(v73, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  return (*(v204 + 1))(v72, v216);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized Sequence.filter(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  if (v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      JUMPOUT(0x1B0247608);
    }

    if (v11 >= v10)
    {

      return v17;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
  }

  while (!v9);
  while (1)
  {
    v16 = *(*(v4 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));

    v12 = a1(&v16);
    if (v3)
    {
      break;
    }

    v9 &= v9 - 1;
    if (v12)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v4 = a3;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 = v11;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {

      v5 = v11;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v5;
  }
}

uint64_t _sSo18LACPreboardUseCaseas21_ObjectiveCBridgeableSCsACP026_unconditionallyBridgeFromD1Cyx01_D5CTypeQzSgFZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

void *_sSo23os_eligibility_answer_taSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo20LACEligibilityDomainaSYSCSY8rawValue03RawD0QzvgTW_0@<X0>(uint64_t *a2@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B02478F0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0247928()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0247960()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B02479A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1B02479EC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t sub_1B0247A40()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0247A78()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B0247AC8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B0247B30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, _sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B0247BD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B0247C18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B0247C50()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0247C88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYacGMd, &_sScSyyyYacGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B0247D5C()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0247D98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0247DD4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B0247E8C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B0247EE8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);

  return v4(v2, v3);
}

uint64_t sub_1B0248068@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B02480CC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x108);

  return v4(v2, v3);
}

uint64_t sub_1B024814C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B0248184()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B02481BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B0248208()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0248240()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B0248290()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B02482D8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B0248328()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B0248380()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B02483B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B024847C()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B02484B4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B02484FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_1B0248534()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B024856C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B0248648()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B024871C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1B02487B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B0248848@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_1B0248894(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 200);

  return v2(v3);
}

uint64_t sub_1B0248930()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0248968()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B02489A0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B0248A74()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B0248B4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0248B84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B0248BBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B0248C04()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0248C3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B0248CB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1B0248CEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isDTOStrictModeEnabled];
  *a2 = result;
  return result;
}

id sub_1B0248D8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preboardMode];
  *a2 = result;
  return result;
}

uint64_t sub_1B0248E54()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0248E8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B0248EC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0248F00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B0248F44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0248F80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1B0248FDC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);

  return v2(v3);
}

uint64_t sub_1B0249040()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B024907C()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B02490B4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B0249104()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B024913C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1B0249188@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFallbackAvailable];
  *a2 = result;
  return result;
}

uint64_t sub_1B02491D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B024923C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B02492AC()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B02492EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0249324()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B024936C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B02493BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B0249404()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B024944C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B0249494()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B02494E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userId];
  *a2 = result;
  return result;
}

id sub_1B0249538@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 policy];
  *a2 = result;
  return result;
}

id sub_1B0249588@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 bioLockoutRecovery];
  *a2 = result;
  return result;
}

uint64_t sub_1B02495D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B024962C(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1B02496A0()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B02496DC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B0249714()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B024975C()
{
  MEMORY[0x1B2724770](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B024979C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B02497E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B0249818()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B0249F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLACBackgroundTaskError(uint64_t a1)
{
  v1 = @"Internal";
  if (a1 == 1)
  {
    v1 = @"Busy";
  }

  if (a1 == 2)
  {
    return @"Timeout";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromLACEventParam(unint64_t a1)
{
  if (a1 < 0x1A && ((0x3FFFEFFu >> a1) & 1) != 0)
  {
    v2 = off_1E7A95418[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid LACEventParam value: %d", a1];
  }

  return v2;
}

id NSDictionaryWithDescriptionFromLACEventParams(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __NSDictionaryWithDescriptionFromLACEventParams_block_invoke;
  v5[3] = &unk_1E7A953F8;
  v3 = v2;
  v6 = v3;
  [v1 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

void __NSDictionaryWithDescriptionFromLACEventParams_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v20 integerValue];
    v7 = MEMORY[0x1E696AEC0];
    v8 = NSStringFromLACEventParam(v6);
    v9 = [v7 stringWithFormat:@"%d (%@)", v6, v8];

    v10 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = NSStringFromLACEventParamValue(v10);
LABEL_13:

      [*(a1 + 32) setObject:v15 forKey:v9];
      goto LABEL_14;
    }

    v11 = v10;
    v12 = v11;
    if (v6 - 18 >= 3)
    {
      if (v6 == 6)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = [v11 intValue];
        v18 = NSStringFromLACEventSimpleStatusTouchID([v12 integerValue]);
      }

      else
      {
        if (v6 != 10)
        {
          v15 = NSStringFromLACEventParamValue(v11);
          goto LABEL_12;
        }

        v16 = MEMORY[0x1E696AEC0];
        v17 = [v11 intValue];
        v18 = NSStringFromLACEventSimpleStatusFaceID([v12 integerValue]);
      }

      v19 = v18;
      v15 = [v16 stringWithFormat:@"%d (%@)"], v17, v18);
    }

    else
    {
      v13 = [v11 intValue];
      v14 = NSStringFromLACEvent([v12 integerValue]);
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d (%@)"], v13, v14);
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_14:
}

id NSStringFromLACEventParamValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 stringValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v1 description];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v1];
    }
    v2 = ;
  }

  v3 = v2;

  return v3;
}

__CFString *NSStringFromLACEventSimpleStatusFaceID(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid LACEventSimpleStatusFaceID: %d", a1];
  }

  else
  {
    v2 = off_1E7A954E8[a1];
  }

  return v2;
}

id getBKSAlternateSystemAppClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBKSAlternateSystemAppClass_softClass;
  v7 = getBKSAlternateSystemAppClass_softClass;
  if (!getBKSAlternateSystemAppClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBKSAlternateSystemAppClass_block_invoke;
    v3[3] = &unk_1E7A955D8;
    v3[4] = &v4;
    __getBKSAlternateSystemAppClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B024CBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBKSAlternateSystemAppClass_block_invoke(uint64_t a1)
{
  if (!BackBoardServicesLibraryCore_frameworkLibrary)
  {
    BackBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("BKSAlternateSystemApp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBKSAlternateSystemAppClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BackBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BackBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *LACUserInterfaceBundleIdentifierDefault()
{
  v0 = +[LACFlags sharedInstance];
  v1 = [v0 featureFlagLaunchAngelEnabled];

  if (v1)
  {
    return @"com.apple.LocalAuthenticationUIService";
  }

  else
  {
    return @"com.apple.CoreAuthUI";
  }
}

uint64_t LACUserInterfaceSupportedOrientations()
{
  if (+[LACMobileGestalt isIdiomPhone])
  {
    return 2;
  }

  else
  {
    return 15;
  }
}

void sub_1B024D888(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B024E57C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B024F158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B024FA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B025004C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0250290(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B0250B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0252C00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1B0252FAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1B025520C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1B0256214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02564E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0256A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02575D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B0258114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0259714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getTUCallCenterClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibraryCore();
  result = objc_getClass("TUCallCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTUCallCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void TelephonyUtilitiesLibraryCore()
{
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getTUUIXPCClientConnectionClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibraryCore();
  result = objc_getClass("TUUIXPCClientConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTUUIXPCClientConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getUNMutableNotificationContentClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUNMutableNotificationContentClass_softClass;
  v6 = getUNMutableNotificationContentClass_softClass;
  if (!getUNMutableNotificationContentClass_softClass)
  {
    UserNotificationsLibraryCore();
    v4[3] = objc_getClass("UNMutableNotificationContent");
    getUNMutableNotificationContentClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B025A4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUNNotificationActionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUNNotificationActionClass_softClass;
  v6 = getUNNotificationActionClass_softClass;
  if (!getUNNotificationActionClass_softClass)
  {
    UserNotificationsLibraryCore();
    v4[3] = objc_getClass("UNNotificationAction");
    getUNNotificationActionClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B025A5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUNNotificationCategoryClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUNNotificationCategoryClass_softClass;
  v6 = getUNNotificationCategoryClass_softClass;
  if (!getUNNotificationCategoryClass_softClass)
  {
    UserNotificationsLibraryCore();
    v4[3] = objc_getClass("UNNotificationCategory");
    getUNNotificationCategoryClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B025A6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUNNotificationIconClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUNNotificationIconClass_softClass;
  v6 = getUNNotificationIconClass_softClass;
  if (!getUNNotificationIconClass_softClass)
  {
    UserNotificationsLibraryCore();
    v4[3] = objc_getClass("UNNotificationIcon");
    getUNNotificationIconClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B025A7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUNNotificationRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUNNotificationRequestClass_softClass;
  v6 = getUNNotificationRequestClass_softClass;
  if (!getUNNotificationRequestClass_softClass)
  {
    UserNotificationsLibraryCore();
    v4[3] = objc_getClass("UNNotificationRequest");
    getUNNotificationRequestClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B025A900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUNTimeIntervalNotificationTriggerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUNTimeIntervalNotificationTriggerClass_softClass;
  v6 = getUNTimeIntervalNotificationTriggerClass_softClass;
  if (!getUNTimeIntervalNotificationTriggerClass_softClass)
  {
    UserNotificationsLibraryCore();
    v4[3] = objc_getClass("UNTimeIntervalNotificationTrigger");
    getUNTimeIntervalNotificationTriggerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B025AA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUNUserNotificationCenterClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUNUserNotificationCenterClass_softClass;
  v6 = getUNUserNotificationCenterClass_softClass;
  if (!getUNUserNotificationCenterClass_softClass)
  {
    UserNotificationsLibraryCore();
    v4[3] = objc_getClass("UNUserNotificationCenter");
    getUNUserNotificationCenterClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B025AB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUNMutableNotificationContentClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibraryCore();
  result = objc_getClass("UNMutableNotificationContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUNMutableNotificationContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void UserNotificationsLibraryCore()
{
  if (!UserNotificationsLibraryCore_frameworkLibrary)
  {
    UserNotificationsLibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

uint64_t __UserNotificationsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UserNotificationsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getUNNotificationActionClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibraryCore();
  result = objc_getClass("UNNotificationAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUNNotificationActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUNNotificationCategoryClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibraryCore();
  result = objc_getClass("UNNotificationCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUNNotificationCategoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUNNotificationIconClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibraryCore();
  result = objc_getClass("UNNotificationIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUNNotificationIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUNNotificationRequestClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibraryCore();
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUNNotificationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUNTimeIntervalNotificationTriggerClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibraryCore();
  result = objc_getClass("UNTimeIntervalNotificationTrigger");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUNTimeIntervalNotificationTriggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUNUserNotificationCenterClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibraryCore();
  result = objc_getClass("UNUserNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUNUserNotificationCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B025CAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __destructor_8_s0_s8_s16(va);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

__CFString *NSStringFromLADTOEventRawValue(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"LADTOEventRawValueRatchetStateDidChange";
  }

  else
  {
    return off_1E7A95EA8[a1 - 1];
  }
}

void sub_1B025D370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B025D89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B025DBC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLACDTOKVStoreKey(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"FeatureEnabledFlag";
  }

  else
  {
    return off_1E7A95F88[a1 - 1];
  }
}

void sub_1B025E554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B025E9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B025EFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B025F434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B025F698(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B0260078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getSFAuthenticationManagerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getSFAuthenticationManagerClass_softClass;
  v6 = getSFAuthenticationManagerClass_softClass;
  if (!getSFAuthenticationManagerClass_softClass)
  {
    SharingLibraryCore(0);
    v4[3] = objc_getClass("SFAuthenticationManager");
    getSFAuthenticationManagerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B0260FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B026148C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0261F28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B026223C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B02624D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B02627FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getSFAuthenticationOptionsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getSFAuthenticationOptionsClass_softClass;
  v6 = getSFAuthenticationOptionsClass_softClass;
  if (!getSFAuthenticationOptionsClass_softClass)
  {
    SharingLibraryCore(0);
    v4[3] = objc_getClass("SFAuthenticationOptions");
    getSFAuthenticationOptionsClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B0262C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0262D74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getSFAuthenticationManagerClass_block_invoke(uint64_t a1)
{
  SharingLibraryCore(0);
  result = objc_getClass("SFAuthenticationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSFAuthenticationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SharingLibraryCore(uint64_t a1)
{
  if (!SharingLibraryCore_frameworkLibrary)
  {
    SharingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SharingLibraryCore_frameworkLibrary;
}

uint64_t __SharingLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SharingLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSFAuthenticationErrorCodeDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = SharingLibraryCore(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np("%s", v5);
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "SFAuthenticationErrorCodeDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSFAuthenticationErrorCodeDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSFAuthenticationDeviceClass_block_invoke(uint64_t a1)
{
  SharingLibraryCore(0);
  result = objc_getClass("SFAuthenticationDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSFAuthenticationDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSFAuthenticationOptionsClass_block_invoke(uint64_t a1)
{
  SharingLibraryCore(0);
  result = objc_getClass("SFAuthenticationOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSFAuthenticationOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B026374C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B0263D98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B026478C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0264C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BiometricKitNotificationCallback(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
  {
    v7 = LACLogBiometry(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "BK notification received: %{public}@", buf, 0xCu);
    }

    if ([v5 isEqualToString:@"com.apple.BiometricKit.enrollmentChanged"])
    {
      v8 = [v4 workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __BiometricKitNotificationCallback_block_invoke;
      block[3] = &unk_1E7A955B0;
      v14 = v4;
      dispatch_async(v8, block);

      v9 = v14;
    }

    else
    {
      if (![v5 isEqualToString:@"com.apple.BiometricKit.generalLockoutStateChanged"])
      {
        goto LABEL_10;
      }

      v10 = [v4 workQueue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __BiometricKitNotificationCallback_block_invoke_2;
      v11[3] = &unk_1E7A955B0;
      v12 = v4;
      dispatch_async(v10, v11);

      v9 = v12;
    }
  }

  else
  {
    v9 = LACLogBiometry(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      BiometricKitNotificationCallback_cold_1(v9);
    }
  }

LABEL_10:
}

void sub_1B02655E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0265D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromBKOperationEndReason(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A96438[a1 - 1];
  }
}

__CFString *NSStringFromBKOperationState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A96458[a1 - 1];
  }
}

__CFString *NSStringFromBKLockoutState(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A96480[a1 - 1];
  }
}

__CFString *NSStringFromBKMatchFailReason(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A964B8[a1 - 1];
  }
}

__CFString *NSStringFromBKDevice(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"BKDeviceTypeTouchID";
  }

  if (a1 == 2)
  {
    return @"BKDeviceTypePearl";
  }

  else
  {
    return v1;
  }
}

uint64_t LACEventFromBKDevice(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = &LACEventTouchID;
    return *v1;
  }

  if (a1 == 2)
  {
    v1 = &LACEventPearl;
    return *v1;
  }

  return -1;
}

uint64_t LACEventFromBiometryType(uint64_t a1)
{
  switch(a1)
  {
    case 4:
      v1 = &LACEventOyster;
      return *v1;
    case 2:
      v1 = &LACEventPearl;
      return *v1;
    case 1:
      v1 = &LACEventTouchID;
      return *v1;
  }

  return -1;
}

Class __getBKDeviceManagerClass_block_invoke(uint64_t a1)
{
  BiometricKitLibraryCore();
  result = objc_getClass("BKDeviceManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBKDeviceManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void BiometricKitLibraryCore()
{
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

uint64_t __BiometricKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BiometricKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBKDeviceClass_block_invoke(uint64_t a1)
{
  BiometricKitLibraryCore();
  result = objc_getClass("BKDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBKDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BiometricKitNotificationCallback_block_invoke(uint64_t a1)
{
  [*(a1 + 32) _refreshIdentitiesDueToAccessoryChange:0];
  v2 = *(a1 + 32);

  return [v2 _handleEnrollmentChangedNotification];
}

__CFString *NSStringFromLACDTORatchetStateRawValue(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"LACDTORatchetStateRawValueNotStarted";
  }

  else
  {
    return off_1E7A964F0[a1 - 1];
  }
}

void sub_1B02685D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B026C340(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t LACDTOLostModeFetchStrategyFromRequest(void *a1)
{
  v1 = a1;
  v2 = [v1 policy];
  v3 = [v1 options];
  v4 = [LACPolicyUtilities isDTOPolicy:v2 options:v3];

  if (v4 && [v1 isDTOEnabled] && (objc_msgSend(v1, "biometryWatchdogPack"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isBarking"), v5, v6))
  {
    v7 = [v1 options];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:1061];
    v9 = [v7 objectForKey:v8];
    v10 = [v9 BOOLValue];

    v11 = [v1 biometryWatchdogPack];
    v12 = v11;
    if (v10)
    {
      [v11 biometryWatchdogGlobal];
    }

    else
    {
      [v11 biometryWatchdogDTO];
    }
    v15 = ;
    v16 = [v15 isBarking];

    v13 = v16 ^ 1u;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

__CFString *NSStringFromLACDTOLostModeFetchStrategy(uint64_t a1)
{
  if (a1)
  {
    return @"Skip";
  }

  else
  {
    return @"BestEffort";
  }
}

void sub_1B026DB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B026F950(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B026FAF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B026FD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLACAccessControlOperationRawValue(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 999)
    {
      if (a1 == 1000)
      {
        return @"ACL";
      }

      if (a1 == 1001)
      {
        return @"AKS";
      }
    }

    else
    {
      if (a1 == 4)
      {
        return @"UseKeyDecrypt";
      }

      if (a1 == 5)
      {
        return @"UseKeyKeyExchange";
      }
    }

    return &stru_1F2652748;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return @"CreateItem";
    }

    if (a1 == 1)
    {
      return @"UseItem";
    }

    return &stru_1F2652748;
  }

  if (a1 == 2)
  {
    return @"CreateKey";
  }

  else
  {
    return @"UseKeySign";
  }
}

void sub_1B027049C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double LACDTOLostModeStateMaxAgeSeconds(uint64_t a1)
{
  v1 = __44__LACFlags_valueForFlagCompanionMockDevices__block_invoke(a1, @"LA.dto.lostModeEnabledMaxAgeSeconds", &unk_1F2693658);
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

void sub_1B02710BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0271444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0271860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0271E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getAKDeviceListRequestContextClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getAKDeviceListRequestContextClass_softClass;
  v6 = getAKDeviceListRequestContextClass_softClass;
  if (!getAKDeviceListRequestContextClass_softClass)
  {
    AuthKitLibraryCore();
    v4[3] = objc_getClass("AKDeviceListRequestContext");
    getAKDeviceListRequestContextClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B0272480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAKAccountManagerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getAKAccountManagerClass_softClass;
  v6 = getAKAccountManagerClass_softClass;
  if (!getAKAccountManagerClass_softClass)
  {
    AuthKitLibraryCore();
    v4[3] = objc_getClass("AKAccountManager");
    getAKAccountManagerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B0272584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAKAppleIDAuthenticationControllerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getAKAppleIDAuthenticationControllerClass_softClass;
  v6 = getAKAppleIDAuthenticationControllerClass_softClass;
  if (!getAKAppleIDAuthenticationControllerClass_softClass)
  {
    AuthKitLibraryCore();
    v4[3] = objc_getClass("AKAppleIDAuthenticationController");
    getAKAppleIDAuthenticationControllerClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B0272688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAKDeviceListRequestContextClass_block_invoke(uint64_t a1)
{
  AuthKitLibraryCore();
  result = objc_getClass("AKDeviceListRequestContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKDeviceListRequestContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AuthKitLibraryCore()
{
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

uint64_t __AuthKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAKAccountManagerClass_block_invoke(uint64_t a1)
{
  AuthKitLibraryCore();
  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAccountManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAKAppleIDAuthenticationControllerClass_block_invoke(uint64_t a1)
{
  AuthKitLibraryCore();
  result = objc_getClass("AKAppleIDAuthenticationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAppleIDAuthenticationControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *NSStringFromLACPasscodeType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7A96908[a1 - 1];
  }
}

uint64_t LACPasscodeTypeLength(uint64_t a1)
{
  v1 = 6;
  if (a1 != 2)
  {
    v1 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a1 == 1)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

void sub_1B02740A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromLACEvent(unint64_t a1)
{
  if (a1 >= 0xE)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid LACEvent value: %d", a1];
  }

  else
  {
    v2 = off_1E7A96AB8[a1];
  }

  return v2;
}

__CFString *NSStringFromLACPolicy(uint64_t a1)
{
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        return @"LACPolicyDeviceOwnerAuthenticationWithBiometrics";
      case 2:
        return @"LACPolicyDeviceOwnerAuthentication";
      case 3:
        return @"LACPolicyDeviceOwnerAuthenticationWithCompanion";
      default:
        return @"<UNKNOWN>";
    }
  }

  else
  {
    v1 = a1 - 1003;
    result = @"LACPolicyAccessoryAuthorization";
    switch(v1)
    {
      case 0:
        result = @"LACPolicyHumanPresence";
        break;
      case 1:
        result = @"LACPolicyStockholm";
        break;
      case 2:
        result = @"LACPolicyOslo";
        break;
      case 3:
        result = @"LACPolicyOsloWithPIN";
        break;
      case 4:
        result = @"LACPolicyDeviceOwnerAuthenticationWithPassword";
        break;
      case 5:
        result = @"LACPolicyBiometricUserIdentification";
        break;
      case 6:
        result = @"LACPolicyTokenAuthentication";
        break;
      case 7:
        result = @"LACPolicySoftwareUpdate";
        break;
      case 8:
        result = @"LACPolicyUserAuthenticationWithPasscodeRecovery";
        break;
      case 9:
        result = @"LACPolicyContinuityUnlock";
        break;
      case 10:
        result = @"LACPolicyTrustComputer";
        break;
      case 11:
        result = @"LACPolicyBoot";
        break;
      case 12:
        result = @"LACPolicyDoublePressBypass";
        break;
      case 13:
        result = @"LACPolicyPrague";
        break;
      case 14:
        result = @"LACPolicyPragueWithPIN";
        break;
      case 15:
        result = @"LACPolicyMarzipan";
        break;
      case 16:
        result = @"LACPolicyMarzipanWithPIN";
        break;
      case 17:
        result = @"LACPolicyPraguePrerequisite";
        break;
      case 18:
        return result;
      case 19:
        result = @"LACPolicyIDV";
        break;
      case 20:
        result = @"LACPolicyDeviceOwner";
        break;
      case 21:
        result = @"LACPolicyDeveloperModeControl";
        break;
      case 22:
        result = @"LACPolicyLocationBasedDeviceOwnerAuthentication";
        break;
      case 23:
        result = @"LACPolicyLocationBasedDeviceOwnerAuthenticationWithBiometricRatchet";
        break;
      case 24:
        result = @"LACPolicyDeviceAdminAuthentication";
        break;
      case 25:
        result = @"LACPolicyLocationBasedTrustComputer";
        break;
      default:
        if (@"LACPolicyAccessoryAuthorization" == 4)
        {
          result = @"LACPolicyDeviceOwnerAuthenticationWithBiometricsOrCompanion";
        }

        else
        {
          if (@"LACPolicyAccessoryAuthorization" != 5)
          {
            return @"<UNKNOWN>";
          }

          result = @"LACPolicyDeviceOwnerAuthenticationWithWristDetection";
        }

        break;
    }
  }

  return result;
}

uint64_t soft_CRIsSelfRepairedComponent(uint64_t a1)
{
  CRIsSelfRepairedComponentSymbolLoc = getCRIsSelfRepairedComponentSymbolLoc();
  if (CRIsSelfRepairedComponentSymbolLoc)
  {

    return CRIsSelfRepairedComponentSymbolLoc(a1);
  }

  else
  {
    +[LACSharingManager isSharingError:];
    return CoreRepairCoreLibraryCore(v4);
  }
}

uint64_t CoreRepairCoreLibraryCore(uint64_t a1)
{
  if (!CoreRepairCoreLibraryCore_frameworkLibrary)
  {
    CoreRepairCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return CoreRepairCoreLibraryCore_frameworkLibrary;
}

uint64_t __CoreRepairCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreRepairCoreLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t getCRIsSelfRepairedComponentSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getCRIsSelfRepairedComponentSymbolLoc_ptr;
  v6 = getCRIsSelfRepairedComponentSymbolLoc_ptr;
  if (!getCRIsSelfRepairedComponentSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getCRIsSelfRepairedComponentSymbolLoc_block_invoke;
    v2[3] = &unk_1E7A955D8;
    v2[4] = &v3;
    __getCRIsSelfRepairedComponentSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B027520C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCRIsSelfRepairedComponentSymbolLoc_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = CoreRepairCoreLibraryCore(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np("%s", v5);
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "CRIsSelfRepairedComponent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRIsSelfRepairedComponentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *NSStringFromLACEnvironmentMechanismApprovalState(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return &stru_1F2652748;
  }

  else
  {
    return off_1E7A96B90[a1 + 1];
  }
}

void sub_1B0276448(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B0276608(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B0277D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0278144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0278530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B027A968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id getAKAccountManagerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAKAccountManagerClass_softClass_0;
  v7 = getAKAccountManagerClass_softClass_0;
  if (!getAKAccountManagerClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAKAccountManagerClass_block_invoke_0;
    v3[3] = &unk_1E7A955D8;
    v3[4] = &v4;
    __getAKAccountManagerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B027AA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B027ADF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id getCLLocationManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass;
  v7 = getCLLocationManagerClass_softClass;
  if (!getCLLocationManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke;
    v3[3] = &unk_1E7A955D8;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B027AEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAKAccountManagerClass_block_invoke_0(uint64_t a1)
{
  if (!AuthKitLibraryCore_frameworkLibrary_0)
  {
    AuthKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAccountManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getCLLocationManagerClass_block_invoke(uint64_t a1)
{
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLLocationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *NSStringFromLACLightweightUIMode(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown mode: %d", a1];
  }

  else
  {
    v2 = off_1E7A96E10[a1];
  }

  return v2;
}

uint64_t LACLightweightUIModeFromOptions(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:1087];
  v3 = [v1 objectForKeyedSubscript:v2];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v5 = [v1 objectForKeyedSubscript:&unk_1F26936A0];
    v4 = [v5 BOOLValue];
  }

  return v4;
}

void sub_1B027DB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B027DC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak(va);
  objc_destroyWeak((v9 - 24));
  _Unwind_Resume(a1);
}

void sub_1B027DE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B027E620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LACLogABM_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "ABM");
  v1 = LACLogABM___logObj;
  LACLogABM___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __LACLogACM_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "ACM");
  v1 = LACLogACM___logObj;
  LACLogACM___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogAirDB(uint64_t a1)
{
  if (LACLogAirDB_onceToken != -1)
  {
    LACLogAirDB_cold_1();
  }

  v2 = LACLogAirDB___logObj;

  return v2;
}

uint64_t __LACLogAirDB_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "AirDB");
  v1 = LACLogAirDB___logObj;
  LACLogAirDB___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogAlertUI(uint64_t a1)
{
  if (LACLogAlertUI_onceToken != -1)
  {
    LACLogAlertUI_cold_1();
  }

  v2 = LACLogAlertUI___logObj;

  return v2;
}

uint64_t __LACLogAlertUI_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "AlertUI");
  v1 = LACLogAlertUI___logObj;
  LACLogAlertUI___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogAnalytics(uint64_t a1)
{
  if (LACLogAnalytics_onceToken != -1)
  {
    LACLogAnalytics_cold_1();
  }

  v2 = LACLogAnalytics___logObj;

  return v2;
}

uint64_t __LACLogAnalytics_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Analytics");
  v1 = LACLogAnalytics___logObj;
  LACLogAnalytics___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogAuthenticator(uint64_t a1)
{
  if (LACLogAuthenticator_onceToken != -1)
  {
    LACLogAuthenticator_cold_1();
  }

  v2 = LACLogAuthenticator___logObj;

  return v2;
}

uint64_t __LACLogAuthenticator_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Authenticator");
  v1 = LACLogAuthenticator___logObj;
  LACLogAuthenticator___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id LACLogBiome(uint64_t a1)
{
  if (LACLogBiome_onceToken != -1)
  {
    LACLogBiome_cold_1();
  }

  v2 = LACLogBiome___logObj;

  return v2;
}

uint64_t __LACLogBiome_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "Biome");
  v1 = LACLogBiome___logObj;
  LACLogBiome___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}