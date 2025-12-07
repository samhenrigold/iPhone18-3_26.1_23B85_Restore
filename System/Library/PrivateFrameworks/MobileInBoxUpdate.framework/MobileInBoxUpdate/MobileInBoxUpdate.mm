uint64_t sub_259AC0758()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void authInstalllogHandler(unsigned int a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 < 4)
  {
    if (MIBUOnceToken != -1)
    {
      authInstalllogHandler_cold_4();
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      authInstalllogHandler_cold_5();
    }
  }

  else if (a1 - 4 >= 3)
  {
    if (a1 == 7)
    {
      if (MIBUOnceToken != -1)
      {
        authInstalllogHandler_cold_1();
      }

      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEBUG))
      {
        authInstalllogHandler_cold_2();
      }
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        authInstalllogHandler_cold_6();
      }

      v3 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136446210;
        v5 = a2;
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      authInstalllogHandler_cold_3();
    }

    v3 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446210;
      v5 = a2;
LABEL_20:
      _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "AMAuthInstall: %{public}s", &v4, 0xCu);
    }
  }
}

void __authInstalllogHandler_block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __authInstalllogHandler_block_invoke_3()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __authInstalllogHandler_block_invoke_6()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __authInstalllogHandler_block_invoke_9()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  safeAssignError(v9, 100663296, 0, a4, a5, a6, a7, a8, a9);
}

BOOL OUTLINED_FUNCTION_8()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_2_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_error_impl(a1, v12, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _os_log_error_impl(a1, v20, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

BOOL OUTLINED_FUNCTION_5_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = 0;

  return [v9 getBytes:&a9 range:{0, v10, a6, a7, a8}];
}

BOOL OUTLINED_FUNCTION_5_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_6_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_7_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _os_log_error_impl(a1, v16, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_259AC7A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_0_2(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_3_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return [v0 charValue];
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_259ACF1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void safeAssignError(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v12 = MEMORY[0x277CCAB68];
    v13 = a4;
    v14 = a3;
    v15 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

    v16 = _createError(a2, v14, v15);

    v17 = v16;
    *a1 = v16;
  }
}

id _createError(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v5)
  {
    [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.MobileInBoxUpdater.ErrorDomain" code:a1 userInfo:v8];

  return v9;
}

id safeCreateError(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = MEMORY[0x277CCAB68];
  v12 = a3;
  v13 = a2;
  v14 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v15 = _createError(a1, v13, v14);

  return v15;
}

void OUTLINED_FUNCTION_1_5(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_259AD3368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259AD3C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_259AD4230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259AD4674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259AD509C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

BOOL OUTLINED_FUNCTION_5_3()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_4_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0x16u);
}

id sub_259AD74BC()
{
  result = [objc_allocWithZone(type metadata accessor for MIBULoopbackServerClient()) init];
  qword_27F9E3DA0 = result;
  return result;
}

id MIBULoopbackServerClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_259AD7520()
{
  if (qword_27F9E3D98 != -1)
  {
    swift_once();
  }

  return &qword_27F9E3DA0;
}

id static MIBULoopbackServerClient.sharedInstance.getter()
{
  if (qword_27F9E3D98 != -1)
  {
    swift_once();
  }

  v1 = qword_27F9E3DA0;

  return v1;
}

void sub_259AD7640(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_259AD76AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id MIBULoopbackServerClient.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MIBULoopbackServerClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_259AD78E4(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v7 = sub_259AEBF04();
  v8 = [v6 initWithServiceName_];

  v9 = [objc_opt_self() interfaceWithProtocol_];
  [v8 setRemoteObjectInterface_];

  [v8 resume];
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = (v10 + 16);
  v24 = sub_259AD7F44;
  v25 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_259AD7640;
  v23 = &block_descriptor_5;
  v12 = _Block_copy(&aBlock);

  v13 = [v8 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_259AEBF24();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E3D50, &qword_259AEDEE8);
  if (swift_dynamicCast())
  {
    v14 = sub_259AEBF04();
    v24 = nullsub_1;
    v25 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_259AD76AC;
    v23 = &block_descriptor_8;
    v15 = _Block_copy(&aBlock);
    [v19 startServerWithWebPort:a1 webRoot:v14 waitTillDone:a4 & 1 with:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  [v8 invalidate];
  swift_beginAccess();
  v16 = *v11;
  if (*v11)
  {
    swift_willThrow();
    v17 = v16;
  }
}

uint64_t sub_259AD7BF8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_259AEBF04();
  v2 = [v0 initWithServiceName_];

  v3 = [objc_opt_self() interfaceWithProtocol_];
  [v2 setRemoteObjectInterface_];

  [v2 resume];
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  aBlock[4] = sub_259AD7E80;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_259AD7640;
  aBlock[3] = &block_descriptor;
  v6 = _Block_copy(aBlock);

  v7 = [v2 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  sub_259AEBF24();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E3D50, &qword_259AEDEE8);
  if (swift_dynamicCast())
  {
    [v11 stopServer];
    swift_unknownObjectRelease();
  }

  [v2 invalidate];
  swift_beginAccess();
  v8 = *v5;
  if (v8)
  {
    swift_willThrow();
    v9 = v8;
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_259AD7EE4(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;

  return a1;
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 104);
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v5);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v5);
    if (result)
    {
      result = compare_octet_string(&CodeSigningCAName, v5);
      if (result)
      {
        result = compare_octet_string_partial(&MFi4AccessoryCAName, v5);
        if (result)
        {
          result = compare_octet_string_partial(&MFi4AttestationCAName, v5);
          if (result)
          {
            result = compare_octet_string_partial(&MFi4ProvisioningCAName, v5);
            if (result)
            {
              return result;
            }

            v4 = 0x1000000000;
          }

          else
          {
            v4 = 0x800000000;
          }
        }

        else
        {
          v4 = 0x400000000;
        }
      }

      else
      {
        v4 = 0x800000000008;
      }
    }

    else
    {
      v4 = 3840;
    }

    *(a1 + 240) |= v4;
  }

  return result;
}

double X509PolicySetFlagsForMFI(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 104);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v7))
  {
    if (compare_octet_string_partial(&MFICommonNamePrefix, v7))
    {
      goto LABEL_4;
    }

    v6 = 0;
    if (!X509CertificateGetNotBefore(a1, &v6))
    {
      memset(&v5, 0, sizeof(v5));
      strptime("2006-05-31", "%F", &v5);
      v4 = timegm(&v5);
      result = difftime(v4, v6);
      if (result < 0.0)
      {
        *(a1 + 240) |= 0x8000000uLL;
LABEL_4:
        if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v7))
        {
          *(a1 + 240) |= 0x1000000000uLL;
        }
      }
    }
  }

  return result;
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > &rsaEncryption;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = X509PolicySetFlagsForTestAnchor(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > &rsaEncryption;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509PolicySetFlagsForTestAnchor(void *a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v6, 0, v5);
  if (!result)
  {
    result = compare_octet_string(a1[4], v6);
    if (!result)
    {
      result = compare_octet_string(a1[3], v5);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

int *find_digest(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = &digests[v2 / 4 + 2];
    if (result > &digests[v2 / 4 + 6])
    {
      __break(0x5519u);
      goto LABEL_9;
    }

    result = compare_octet_string_raw(result, *a1, *(a1 + 8));
    if (!result)
    {
      break;
    }

    v2 += 32;
    if (v2 == 160)
    {
      return 0;
    }
  }

  if (v2 <= ~digests)
  {
    return &digests[v2 / 4];
  }

LABEL_9:
  __break(0x5513u);
  return result;
}

int *find_digest_by_type(int *result)
{
  v1 = 0;
  while (digests[v1 / 4] != result)
  {
    v1 += 32;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (v1 <= ~digests)
  {
    return &digests[v1 / 4];
  }

  __break(0x5513u);
  return result;
}

uint64_t find_digestOID_for_signingOID(uint64_t a1, void *a2)
{
  if (!compare_octet_string_raw(a1, &sha1WithRSA_oid, 9uLL) || !compare_octet_string_raw(a1, &sha1WithECDSA_oid, 7uLL))
  {
    v6 = &CTOidSha1;
    v4 = 5;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha256WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha256;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha256WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha256;
LABEL_18:
    v4 = 9;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha384WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha384WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_18;
  }

  v4 = 9;
  if (compare_octet_string_raw(a1, &sha512WithRSA_oid, 9uLL))
  {
    if (compare_octet_string_raw(a1, &sha512WithECDSA_oid, 8uLL))
    {
      return 0;
    }

    v6 = &CTOidSha512;
    goto LABEL_18;
  }

  v6 = &CTOidSha512;
LABEL_11:
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

unint64_t validateSignatureRSA(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  if (!result)
  {
    return v5 & 1;
  }

  if (!a2)
  {
    return v5 & 1;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return v5 & 1;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_34;
  }

  v8 = result;
  result = compare_octet_string(&rsaEncryption, (a5 + 7));
  if (result)
  {
    result = validateOIDs(&rsaAlgs, (a5 + 3), (a5 + 7));
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v10 = a5[9];
  v9 = a5[10];
  if (__CFADD__(v10, v9))
  {
    goto LABEL_35;
  }

  if (v10 > v10 + v9)
  {
    goto LABEL_34;
  }

  v21 = a5[9];
  v22 = v10 + v9;
  if (v9)
  {
    result = ccder_blob_check_null(&v21);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (__CFADD__(v8, a2))
  {
    goto LABEL_35;
  }

  if (v8 + a2 < v8)
  {
    goto LABEL_34;
  }

  result = ccder_decode_rsa_pub_n();
  if (!result)
  {
LABEL_23:
    v5 = 0;
    return v5 & 1;
  }

  v11 = result;
  if (!(result >> 58))
  {
    v12 = result << 6;
    if (result << 6 >= 0x400)
    {
      v25 = 0xAAAAAAAAAAAAAAAALL;
      v26 = -21846;
      v24 = 6;
      if (&vars0 == 82)
      {
        goto LABEL_35;
      }

      v13 = a5[4];
      LOBYTE(v25) = v13;
      if (&v24 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      if (v13 < 0xA)
      {
        result = __memcpy_chk();
        if (result <= result + v13)
        {
          if (v12 > 0x1068)
          {
            goto LABEL_23;
          }

          result = MEMORY[0x28223BE20]();
          v16 = (&v20 - 4 * v15);
          v17 = 0;
          *&v18 = 0xAAAAAAAAAAAAAAAALL;
          *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
          do
          {
            v19 = &v16[v17 / 8];
            *v19 = v18;
            *(v19 + 1) = v18;
            v17 += 32;
          }

          while ((v14 & 0x7FFFFFFFFFFFFFE0) != v17);
          if (v16 + 4 <= &v20 && v16 <= v16 + 4)
          {
            *v16 = v11;
            if (ccrsa_import_pub())
            {
              v5 = 0;
            }

            else if (ccrsa_verify_pkcs1v15_allowshortsigs())
            {
              v5 = 0;
              v23 = 0;
            }

            else
            {
              v5 = v23;
            }

            return v5 & 1;
          }
        }
      }

LABEL_34:
      __break(0x5519u);
LABEL_35:
      __break(0x5513u);
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  __break(0x550Cu);
  return result;
}

unint64_t validateOIDs(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

_UNKNOWN **oidForPubKeyLength()
{
  v0 = ccec_x963_import_pub_size();
  is_supported = ccec_keysize_is_supported();
  v2 = &CTOidSECP256r1;
  v3 = &CTOidSECP521r1;
  v4 = &CTOidSECP384r1;
  if (v0 != 384)
  {
    v4 = 0;
  }

  if (v0 != 521)
  {
    v3 = v4;
  }

  if (v0 != 256)
  {
    v2 = v3;
  }

  if (is_supported)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  if (!result)
  {
    return (v5 & 1);
  }

  if (!a2)
  {
    return (v5 & 1);
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return (v5 & 1);
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey, a5 + 56);
  if (result)
  {
    result = validateOIDs(&ecAlgs, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = ccec_cp_for_oid((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v8 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_33;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = MEMORY[0x28223BE20]();
  v14 = &v17[-16 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 < 0x10)
  {
    goto LABEL_35;
  }

  *v14 = result;
  if (v14 + 2 > v17 || v14 > v14 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (MEMORY[0x259CAD500]())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    if (ccec_verify())
    {
LABEL_29:
      v18 = 0;
    }

LABEL_30:
    v5 = v18;
    return (v5 & 1);
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t ccec_cp_for_oid(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      JUMPOUT(0x259CAD4C0);
    }

    return 0;
  }

  v3 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    JUMPOUT(0x259CAD4D0);
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  if (v5 != -2127887098 || v6 != 587203713)
  {
    return 0;
  }

  return MEMORY[0x282201600]();
}

uint64_t compressECPublicKey(void *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    return 655366;
  }

  v8 = v7;
  if (v7 >= v7 + 4)
  {
    goto LABEL_20;
  }

  v9 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v9, 3uLL))
  {
    goto LABEL_21;
  }

  v10 = 24 * v9;
  v11 = __CFADD__(v10, 16);
  v12 = v10 + 16;
  if (v11 || v12 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = MEMORY[0x28223BE20]();
  v16 = &v19[-2 * v15];
  v17 = 0;
  do
  {
    v18 = &v16[v17 / 8];
    *v18 = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = 0xAAAAAAAAAAAAAAAALL;
    v17 += 16;
  }

  while ((v14 & 0xFFFFFFFFFFFFFFF0) != v17);
  if (v14 < 0x10)
  {
    __break(1u);
    return result;
  }

  *v16 = v8;
  if (v16 + 2 > v19 || v16 > v16 + 2)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  result = MEMORY[0x259CAD500](v8, a1[1], *a1, v16);
  if (!result)
  {
    if (ccec_compressed_x962_export_pub_size() == a4)
    {
      if (!a3 || a4)
      {
        return ccec_compressed_x962_export_pub();
      }

      goto LABEL_20;
    }

    return 393220;
  }

  return result;
}

uint64_t decompressECPublicKey(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = ccec_cp_for_oid(a2);
  if (!v6)
  {
    return 655366;
  }

  if (v6 >= v6 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v7 = *v6;
  if (*v6 >> 61 || !is_mul_ok(8 * v7, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v8 = 24 * v7;
  v9 = __CFADD__(v8, 16);
  v10 = v8 + 16;
  if (v9 || v10 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = MEMORY[0x28223BE20]();
  v14 = &v19[-2 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 >= 0x10)
  {
    *v14 = result;
    if (v14 + 2 <= v19 && v14 <= v14 + 2)
    {
      v17 = ccec_compressed_x962_import_pub();
      if (!v17)
      {
        v18 = cczp_bitlen();
        if (v18 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v18 + 7) >> 2) | 1) == a4)
            {
              v17 = 0;
            }

            else
            {
              v17 = 393220;
            }

            ccec_export_pub();
            return v17;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

      return v17;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t CMSParseContentInfoSignedDataWithOptions(char *a1, uint64_t a2, unint64_t *a3, char a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_110;
  }

  if (&a1[a2] < a1)
  {
    goto LABEL_108;
  }

  v4 = 65537;
  v27 = a1;
  v28 = &a1[a2];
  v26 = 0;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v7 = ccder_blob_decode_ber_tl(&v27, 0x2000000000000010, &v26 + 1, &v25);
  result = 65537;
  if (v7)
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v27, v25))
    {
      goto LABEL_110;
    }

    if (v27 > &v27[v25] || &v27[v25] > v28)
    {
      goto LABEL_108;
    }

    v23 = v27;
    v24 = &v27[v25];
    if (ccder_blob_decode_tl())
    {
      if (v24 < v23 || v25 > v24 - v23)
      {
        goto LABEL_108;
      }

      if (compare_octet_string_raw(&pkcs7_signedData_oid, v23, v25))
      {
        return 65539;
      }

      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v23 += v25;
      if (!ccder_blob_decode_ber_tl(&v23, 0xA000000000000000, &v26, &v25))
      {
        return 65540;
      }

      v21 = 0xAAAAAAAAAAAAAAAALL;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v21 = v23;
      v22 = &v23[v25];
      v30 = 0;
      memset(v29, 170, sizeof(v29));
      if ((ccder_blob_decode_ber_tl(&v21, 0x2000000000000010, &v30 + 1, v29) & 1) == 0)
      {
        return 131073;
      }

      if (__CFADD__(v21, v29[0]))
      {
        goto LABEL_110;
      }

      v9 = 131080;
      if (&v21[v29[0]] != v22)
      {
        return 131082;
      }

      if (!ccder_blob_decode_uint64())
      {
        return 131074;
      }

      v10 = a3[11];
      result = 131092;
      if (v10 <= 4 && ((1 << v10) & 0x1A) != 0)
      {
        if (!ccder_blob_eat_ber_inner(&v21, 0x2000000000000011, 0, 125))
        {
          return 131075;
        }

        v34 = 0;
        v33 = 0;
        if ((ccder_blob_decode_ber_tl(&v21, 0x2000000000000010, &v34, &v33) & 1) == 0)
        {
          return 131076;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (__CFADD__(v21, v33))
        {
          goto LABEL_110;
        }

        if (v21 > &v21[v33] || &v21[v33] > v22)
        {
          goto LABEL_108;
        }

        v31 = v21;
        v32 = &v21[v33];
        if (!ccder_blob_decode_tl())
        {
          return 131077;
        }

        if (v32 < v31 || v33 > v32 - v31)
        {
          goto LABEL_108;
        }

        if (compare_octet_string_raw(&pkcs7_data_oid, v31, v33))
        {
          return 131078;
        }

        if (__CFADD__(v31, v33))
        {
          goto LABEL_110;
        }

        v11 = &v31[v33];
        if (v31 > &v31[v33] || v11 > v32)
        {
          goto LABEL_108;
        }

        v31 += v33;
        v12 = v34;
        if (v11 != v32 || (v34 & 1) != 0)
        {
          v39 = 0;
          v37 = v32;
          v38 = 0;
          v36 = v11;
          if (ccder_blob_decode_ber_tl(&v36, 0xA000000000000000, &v39, &v38))
          {
            if ((v12 & 1) == 0)
            {
              if (__CFADD__(v36, v38))
              {
                goto LABEL_110;
              }

              if (&v36[v38] != v32)
              {
                return v9;
              }
            }

            if (v36 > v37)
            {
              goto LABEL_108;
            }

            v31 = v36;
            v32 = v37;
            v35 = 0;
            v15 = v39;
            if (v39 == 1 && !ccder_blob_decode_ber_tl(&v31, 0x2000000000000004, &v35, &v38))
            {
              return 131079;
            }

            v40 = 0;
            if (!ccder_blob_decode_tl())
            {
              return 131090;
            }

            v16 = v31;
            v17 = v32;
            if (v32 < v31)
            {
              goto LABEL_108;
            }

            v18 = v40;
            if (v40 > v32 - v31)
            {
              goto LABEL_108;
            }

            a3[9] = v31;
            a3[10] = v18;
            if (__CFADD__(v16, v18))
            {
LABEL_110:
              __break(0x5513u);
              return 0;
            }

            v19 = &v16[v18];
            if (v19 > v17 || v16 > v19)
            {
              goto LABEL_108;
            }

            v31 = v19;
            if ((ccder_blob_decode_eoc(&v31, v35) & 1) == 0)
            {
              return 131089;
            }
          }

          else
          {
            if (!v12)
            {
              return v9;
            }

            v15 = v39;
          }

          if ((ccder_blob_decode_eoc(&v31, v15 & 1) & 1) == 0)
          {
            return 131088;
          }

          v11 = v31;
        }

        if (v11 > v22 || v21 > v11)
        {
          goto LABEL_108;
        }

        v21 = v11;
        if ((ccder_blob_decode_eoc(&v21, v12) & 1) == 0)
        {
          return 131081;
        }

        v36 = 0xAAAAAAAAAAAAAAAALL;
        v37 = 0xAAAAAAAAAAAAAAAALL;
        if (v21 > v22)
        {
          goto LABEL_108;
        }

        v36 = v21;
        v37 = v22;
        if ((ccder_blob_decode_ber_tl(&v36, 0xA000000000000000, &v30, v29) & 1) == 0)
        {
          v13 = v21;
          v14 = v22;
          goto LABEL_85;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (!__CFADD__(v36, v29[0]))
        {
          if (v36 > &v36[v29[0]] || &v36[v29[0]] > v37)
          {
            goto LABEL_108;
          }

          v31 = v36;
          v32 = &v36[v29[0]];
          if (!CMSParseImplicitCertificateSet(&v31, a3[1], *a3, a3 + 3, a3 + 2))
          {
            return 131085;
          }

          if (!ccder_blob_decode_eoc(&v31, v30))
          {
            return 131086;
          }

          v13 = v31;
          if (v31 >= v36 != v31 - v36 < 0)
          {
            if (v36 > v31)
            {
              goto LABEL_108;
            }

            v14 = v37;
            if (v31 > v37)
            {
              goto LABEL_108;
            }

            v21 = v31;
            v22 = v37;
LABEL_85:
            if (v13 <= v14)
            {
              v36 = v13;
              v37 = v14;
              if (ccder_blob_eat_ber_inner(&v36, 0xA000000000000001, 0, 125))
              {
                if (v36 > v37)
                {
                  goto LABEL_108;
                }

                v21 = v36;
                v22 = v37;
              }

              if (!ccder_blob_eat_ber_inner(&v21, 0x2000000000000011, &v29[1], 125))
              {
                return 131083;
              }

              if (v29[2] >= v29[1])
              {
                v20 = &v21[-v29[1]];
                if (&v21[-v29[1]] <= v29[2] - v29[1])
                {
                  a3[5] = v29[1];
                  a3[6] = v20;
                  if ((ccder_blob_decode_eoc(&v21, HIBYTE(v30)) & 1) == 0)
                  {
                    return 131084;
                  }

                  if (!ccder_blob_decode_eoc(&v21, v26))
                  {
                    return 65541;
                  }

                  if (v21 <= v24 && v23 <= v21)
                  {
                    v23 = v21;
                    if (ccder_blob_decode_eoc(&v23, HIBYTE(v26)))
                    {
                      if ((a4 & 1) == 0 && v23 != v28)
                      {
                        return 65543;
                      }

                      return 0;
                    }

                    return (v4 + 5);
                  }
                }
              }
            }

LABEL_108:
            __break(0x5519u);
            return (v4 + 5);
          }
        }

        goto LABEL_110;
      }
    }

    else
    {
      return 65538;
    }
  }

  return result;
}

uint64_t ccder_blob_decode_ber_tl(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8)
  {
    if (a2 == 0xAAAAAAAAAAAAAAAALL)
    {
      return ccder_blob_decode_ber_len(a1, a3, a4);
    }
  }

  return result;
}

uint64_t ccder_blob_decode_eoc(unint64_t *a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_12:
    __break(0x5519u);
    return result;
  }

  v5 = v4 - 0x5555555555555556;
  if (v4 > v4 - 0x5555555555555556 || v5 > a1[1])
  {
    goto LABEL_12;
  }

  *a1 = v5;
  return 1;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v83 = *MEMORY[0x277D85DE8];
  v81 = 0xAAAAAAAAAAAAAAAALL;
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
    goto LABEL_93;
  }

  v81 = *(a1 + 40);
  v82 = v4 + v3;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (v3)
    {
      return (v48 << 8) + 196616;
    }

    return result;
  }

  v8 = 0;
  v59 = 0;
  v9 = 196871;
  v10 = 256;
  do
  {
    v68 = 0;
    v79 = 0u;
    v80 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    DWORD2(v80) = 327681;
    LOBYTE(v79) = v8 + 1;
    if ((ccder_blob_decode_ber_tl(&v81, 0x2000000000000010, &v68, &v69) & 1) == 0)
    {
      return (v9 - 6);
    }

    v66 = 0xAAAAAAAAAAAAAAAALL;
    v67 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v81, v69))
    {
      goto LABEL_94;
    }

    if (v81 > v81 + v69 || v81 + v69 > v82)
    {
      goto LABEL_93;
    }

    v66 = v81;
    v67 = v81 + v69;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      return (v9 - 5);
    }

    v11 = v66;
    v12 = v67;
    v64 = 0xAAAAAAAAAAAAAAAALL;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v64 = v66;
    v65 = v67;
    v62 = v66;
    v63 = v67;
    if (ccder_blob_decode_tl())
    {
      v13 = v66;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v64;
        v14 = v65;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v58 = 196611;
          return (v58 + v10);
        }

        v13 = v62;
        v14 = v63;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v66 = v13;
      v67 = v14;
    }

    if (__CFADD__(v69, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v69 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v70 + 1) = v11;
    *&v71 = v69 + v13 - v11;
    if (__CFADD__(v13, v69))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v69 || v13 + v69 > v67)
    {
      goto LABEL_93;
    }

    v66 = v13 + v69;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v71 + 1))
    {
      v58 = 196612;
      return (v58 + v10);
    }

    v60 = 0xAAAAAAAAAAAAAAAALL;
    v61 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v60 = v66;
    v61 = v67;
    if (ccder_blob_decode_tl())
    {
      if (v61 < v60 || v69 > v61 - v60)
      {
        goto LABEL_93;
      }

      *(&v72 + 1) = v60;
      *&v73 = v69;
      if (__CFADD__(v60, v69))
      {
        goto LABEL_94;
      }

      if (v60 + v69 > v61 || v60 > v60 + v69)
      {
        goto LABEL_93;
      }

      v66 = v60 + v69;
      v67 = v61;
    }

    else
    {
      *(&v72 + 1) = 0;
      *&v73 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v73 + 1) & 1) == 0)
    {
      return (v9 - 2);
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      return (v9 - 1);
    }

    if (v67 < v66 || v69 > v67 - v66)
    {
      goto LABEL_93;
    }

    *(&v75 + 1) = v66;
    *&v76 = v69;
    if (__CFADD__(v66, v69))
    {
      goto LABEL_94;
    }

    v15 = v66 + v69;
    if (v66 + v69 > v67 || v66 > v15)
    {
      goto LABEL_93;
    }

    v66 += v69;
    v60 = v15;
    v61 = v67;
    if (ccder_blob_eat_ber_inner(&v60, 0xA000000000000001, 0, 125))
    {
      if (v60 > v61)
      {
        goto LABEL_93;
      }

      v66 = v60;
      v67 = v61;
    }

    if (!ccder_blob_decode_eoc(&v66, v68))
    {
      return v9;
    }

    digest = find_digest(&v71 + 8);
    if (digest)
    {
      v17 = digest;
      v18 = *(a1 + 96);
      if (!v18 || *digest <= v18)
      {
        result = a3(a2, a1, &v70);
        if (result != 327710)
        {
          if (result)
          {
            return result;
          }

          v20 = *(a1 + 64);
          if (v20 <= v59)
          {
            if (v20)
            {
              v32 = *(a1 + 56);
              v33 = 176 * v59 - 176;
              if (__CFADD__(v32, v33))
              {
                goto LABEL_94;
              }

              v34 = v32 + v33;
              if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
              {
                goto LABEL_93;
              }

              v35 = find_digest(v34 + 24);
              if (v35)
              {
                if (*v17 > *v35)
                {
                  v36 = *(a1 + 96);
                  if (!v36 || *v17 <= v36)
                  {
                    v37 = *(a1 + 56);
                    if (__CFADD__(v37, v33))
                    {
                      goto LABEL_94;
                    }

                    v38 = 176 * *(a1 + 64);
                    if ((v38 - v33) < 0xB0)
                    {
                      goto LABEL_93;
                    }

                    v39 = (v37 + v33);
                    if (v37 + v33 > v37 + v38)
                    {
                      goto LABEL_93;
                    }

                    if (v37 > v39)
                    {
                      goto LABEL_93;
                    }

                    v40 = v70;
                    v41 = v72;
                    v39[1] = v71;
                    v39[2] = v41;
                    *v39 = v40;
                    v42 = v73;
                    v43 = v74;
                    v44 = v76;
                    v39[5] = v75;
                    v39[6] = v44;
                    v39[3] = v42;
                    v39[4] = v43;
                    v45 = v77;
                    v46 = v78;
                    v47 = v80;
                    v39[9] = v79;
                    v39[10] = v47;
                    v39[7] = v45;
                    v39[8] = v46;
                    if (v39 >= v39 + 11)
                    {
                      goto LABEL_93;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v21 = *(a1 + 96);
            if (!v21 || *v17 <= v21)
            {
              v22 = *(a1 + 56);
              if (__CFADD__(v22, 176 * v59))
              {
                goto LABEL_94;
              }

              if (176 * (v20 - v59) < 0xB0)
              {
                goto LABEL_93;
              }

              v23 = (v22 + 176 * v59);
              v24 = v70;
              v25 = v72;
              v23[1] = v71;
              v23[2] = v25;
              *v23 = v24;
              v26 = v73;
              v27 = v74;
              v28 = v76;
              v23[5] = v75;
              v23[6] = v28;
              v23[3] = v26;
              v23[4] = v27;
              v29 = v77;
              v30 = v78;
              v31 = v80;
              v23[9] = v79;
              v23[10] = v31;
              v23[7] = v29;
              v23[8] = v30;
              if (v23 >= v23 + 11)
              {
                goto LABEL_93;
              }

              if (v59 == 0xFF)
              {
                __break(0x5507u);
                return result;
              }

              ++v59;
            }
          }
        }
      }
    }

    if (v66 > v82 || v81 > v66)
    {
      goto LABEL_93;
    }

    v81 = v66;
    v48 = v8 + 1;
    if (v8 > 6)
    {
      break;
    }

    v10 += 256;
    v9 = (v9 + 256);
    ++v8;
  }

  while (v66 < v82);
  if (v66 == v82)
  {
    if (v59)
    {
      return 0;
    }

    if (!*(a1 + 64))
    {
      return 0;
    }

    v49 = *(a1 + 56);
    v50 = v70;
    v51 = v72;
    v49[1] = v71;
    v49[2] = v51;
    *v49 = v50;
    v52 = v73;
    v53 = v74;
    v54 = v76;
    v49[5] = v75;
    v49[6] = v54;
    v49[3] = v52;
    v49[4] = v53;
    v55 = v77;
    v56 = v78;
    v57 = v80;
    v49[9] = v79;
    v49[10] = v57;
    v49[7] = v55;
    v49[8] = v56;
    if (v49 < v49 + 11)
    {
      return 0;
    }

LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  return (v48 << 8) + 196616;
}

uint64_t CMSBuildPath(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a3[1];
  v4 = a3[2];
  if (__CFADD__(v3, v4))
  {
LABEL_55:
    __break(0x5513u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_54;
  }

  v19 = a3[1];
  v20 = v5;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (*a3 == 3)
  {
    if (*(a2 + 88) == 1)
    {
      return 524298;
    }

    v17[2] = 0xAAAAAAAAAAAAAAAALL;
    v17[3] = 0xAAAAAAAAAAAAAAAALL;
    v17[0] = v3;
    v17[1] = v5;
    if (ccder_blob_decode_tl())
    {
      v11 = v19;
      v12 = v20;
    }

    else
    {
      if (!ccder_blob_decode_tl() || !ccder_blob_decode_tl())
      {
        return 524294;
      }

      v11 = v17[0];
      v12 = v17[1];
      if (v17[0] > v17[1])
      {
        goto LABEL_54;
      }

      v19 = v17[0];
      v20 = v17[1];
    }

    if (v12 < v11 || v18 > v12 - v11)
    {
      goto LABEL_54;
    }

    v17[2] = v11;
    v17[3] = v18;
    if (__CFADD__(v11, v18))
    {
      goto LABEL_55;
    }

    if (v11 + v18 > v12 || v11 > v11 + v18)
    {
      goto LABEL_54;
    }

    v19 = v11 + v18;
    CertificateUsingKeyIdentifier = X509ChainGetCertificateUsingKeyIdentifier((a2 + 24), &v17[2]);
    if (!CertificateUsingKeyIdentifier)
    {
      return 524295;
    }

LABEL_38:
    if (v19 != v20)
    {
      return 524543;
    }

    if (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && a2 + 24 <= (a2 + 40))
    {
      v13 = a3 + 19;
      v14 = a3 + 21;
      if (v13 <= v14)
      {
        v15 = X509ChainBuildPath(CertificateUsingKeyIdentifier, (a2 + 24), v13);
        v8 = v15;
        if (*v14 == 327681)
        {
          *v14 = v15;
        }

        return v8;
      }
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

  if (*a3 != 1)
  {
    return 524289;
  }

  v8 = 524290;
  memset(v17, 170, sizeof(v17));
  if (ccder_blob_decode_tl())
  {
    if (ccder_blob_decode_tl())
    {
      if (v20 < v19 || v18 > v20 - v19)
      {
        goto LABEL_54;
      }

      v17[0] = v19;
      v17[1] = v18;
      if (__CFADD__(v19, v18))
      {
        goto LABEL_55;
      }

      if (v19 + v18 > v20 || v19 > v19 + v18)
      {
        goto LABEL_54;
      }

      v19 += v18;
      if (ccder_blob_decode_tl())
      {
        if (v20 < v19 || v18 > v20 - v19)
        {
          goto LABEL_54;
        }

        v17[2] = v19;
        v17[3] = v18;
        if (__CFADD__(v19, v18))
        {
          goto LABEL_55;
        }

        if (v19 + v18 > v20)
        {
          goto LABEL_54;
        }

        if (v19 > v19 + v18)
        {
          goto LABEL_54;
        }

        v19 += v18;
        v9 = (a2 + 24);
        if (a2 + 24 > (a2 + 40))
        {
          goto LABEL_54;
        }

        CertificateUsingKeyIdentifier = *v9;
        if (*v9)
        {
          while (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && CertificateUsingKeyIdentifier + 15 <= CertificateUsingKeyIdentifier + 17)
          {
            if (!compare_octet_string(v17, (CertificateUsingKeyIdentifier + 15)))
            {
              if (CertificateUsingKeyIdentifier + 17 > CertificateUsingKeyIdentifier + 19)
              {
                goto LABEL_54;
              }

              if (!compare_octet_string(&v17[2], (CertificateUsingKeyIdentifier + 17)))
              {
                goto LABEL_38;
              }
            }

            CertificateUsingKeyIdentifier = CertificateUsingKeyIdentifier[34];
            if (!CertificateUsingKeyIdentifier)
            {
              return 524293;
            }
          }

          goto LABEL_54;
        }

        return 524293;
      }

      else
      {
        return 524292;
      }
    }

    else
    {
      return 524291;
    }
  }

  return v8;
}

uint64_t validateSignerInfo(unint64_t a1, void *a2, uint64_t a3)
{
  v90 = *MEMORY[0x277D85DE8];
  v3 = a3 + 24;
  v4 = (a3 + 40);
  if (a3 + 24 > (a3 + 40))
  {
    goto LABEL_183;
  }

  digest = find_digest(a3 + 24);
  if (!digest)
  {
    return 327682;
  }

  v9 = (*(digest + 3))();
  v10 = v9;
  memset(v89, 0, sizeof(v89));
  v11 = a2[13];
  v12 = a2[14];
  if (!v11 || !v12)
  {
    if (a2[9] && a2[10])
    {
      v11 = v89;
      v13 = ccdigest();
      v12 = *v10;
      if (*v10 >= 0x41)
      {
        goto LABEL_183;
      }

      goto LABEL_14;
    }

    if (!v11)
    {
      goto LABEL_144;
    }
  }

  if (*v9 != v12)
  {
LABEL_144:
    *(a3 + 168) = 327710;
    return 327710;
  }

  if (v12 >= 0x41)
  {
    goto LABEL_183;
  }

  v13 = __memcpy_chk();
  if (v13 > v13 + v12)
  {
    goto LABEL_183;
  }

LABEL_14:
  v15 = a1 + 16;
  *(a3 + 128) = v11;
  *(a3 + 136) = v12;
  v16 = (a3 + 128);
  v17 = *(a3 + 48);
  if (!v17)
  {
    goto LABEL_157;
  }

  if (v15 < a1)
  {
    goto LABEL_183;
  }

  v74 = a1 + 16;
  v75 = v10;
  v83 = 0xAAAAAAAAAAAAAAAALL;
  v84 = 0xAAAAAAAAAAAAAAAALL;
  v18 = *v4;
  if (__CFADD__(*v4, v17))
  {
    goto LABEL_184;
  }

  v19 = v18 + v17;
  if (v18 > v19)
  {
    goto LABEL_183;
  }

  v83 = *v4;
  v84 = v19;
  v82 = 0xAAAAAAAAAAAAAAAALL;
  if (v18 >= v19)
  {
LABEL_145:
    result = 262156;
    goto LABEL_179;
  }

  v20 = 0;
  v21 = 0x96463F78648862ALL;
  v78 = 0x2000000000000010;
  v73 = 262146;
  v77 = 262147;
  v76 = 262148;
  do
  {
    if (!ccder_blob_decode_tl())
    {
      result = 262145;
      goto LABEL_179;
    }

    if (__CFADD__(v83, v82))
    {
      goto LABEL_184;
    }

    v22 = &v83[v82];
    v81 = 0xAAAAAAAAAAAAAAAALL;
    v80 = 0xAAAAAAAAAAAAAAAALL;
    if (v83 > &v83[v82] || v22 > v84)
    {
      goto LABEL_183;
    }

    v80 = v83;
    v81 = &v83[v82];
    if (!ccder_blob_decode_tl())
    {
      result = v73;
      goto LABEL_179;
    }

    v24 = v80;
    if (__CFADD__(v80, v82))
    {
      goto LABEL_184;
    }

    if (&v80[v82] > v81 || v80 > &v80[v82])
    {
      goto LABEL_183;
    }

    v80 += v82;
    if (v82 != 9)
    {
      goto LABEL_147;
    }

    if (v81 - v24 < 9)
    {
      goto LABEL_183;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 3)
    {
      if (v20)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v35 = ccder_blob_decode_tl();
      result = v77;
      if (v35)
      {
        if (CMSAttributeParseContentType(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 1u;
      goto LABEL_134;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 4)
    {
      if ((v20 & 2) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v38 = ccder_blob_decode_tl();
      result = v77;
      if (v38)
      {
        if (CMSAttributeParseMessageDigest(&v80, v36, v37, a3))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 2u;
      goto LABEL_134;
    }

    if (*v24 == v21 && v24[8] == 2)
    {
      if ((v20 & 0x10) != 0)
      {
        goto LABEL_149;
      }

      v87 = 0xAAAAAAAAAAAAAAAALL;
      v39 = ccder_blob_decode_tl();
      result = v77;
      if (v39)
      {
        v40 = v80;
        v41 = v81;
        if (v80 >= v81)
        {
LABEL_110:
          if (v40 == v41)
          {
            result = 0;
          }

          else
          {
            result = 262155;
          }
        }

        else
        {
          v72 = a1;
          while (1)
          {
            if (!ccder_blob_decode_tl())
            {
              result = 262157;
              goto LABEL_132;
            }

            v88[0] = 0xAAAAAAAAAAAAAAAALL;
            v88[1] = 0xAAAAAAAAAAAAAAAALL;
            if (__CFADD__(v80, v87))
            {
              goto LABEL_184;
            }

            if (v80 > &v80[v87] || &v80[v87] > v81)
            {
              goto LABEL_183;
            }

            v43 = v21;
            v88[0] = v80;
            v88[1] = &v80[v87];
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              result = 262151;
              goto LABEL_131;
            }

            v85 = 0xAAAAAAAAAAAAAAAALL;
            v86 = 0xAAAAAAAAAAAAAAAALL;
            if (v88[1] < v88[0] || v87 > v88[1] - v88[0])
            {
              goto LABEL_183;
            }

            v85 = v88[0];
            v86 = v87;
            if (__CFADD__(v88[0], v87))
            {
              goto LABEL_184;
            }

            if (v88[0] + v87 > v88[1] || v88[0] > v88[0] + v87)
            {
              goto LABEL_183;
            }

            v88[0] += v87;
            if (!ccder_blob_decode_tl())
            {
              result = 262152;
              goto LABEL_131;
            }

            v44 = v88[0];
            if (__CFADD__(v88[0], v87))
            {
              goto LABEL_184;
            }

            v45 = v88[1];
            v46 = v88[0] + v87;
            if (v88[0] + v87 > v88[1] || v88[0] > v46)
            {
              goto LABEL_183;
            }

            v88[0] += v87;
            if (v46 != v88[1])
            {
              break;
            }

            v47 = find_digest(&v85);
            if (v47)
            {
              v48 = *v47;
              if (*v47 > *(a3 + 104))
              {
                v49 = *(v72 + 8);
                if (!v49 || v48 <= v49)
                {
                  *(a3 + 104) = v48;
                  v50 = v87;
                  if (v87 > v45 - v44)
                  {
                    goto LABEL_183;
                  }

                  *(a3 + 112) = v44;
                  *(a3 + 120) = v50;
                }
              }
            }

            v40 = v88[0];
            v41 = v81;
            if (v88[0] > v81 || v80 > v88[0])
            {
              goto LABEL_183;
            }

            v80 = v88[0];
            v21 = v43;
            if (v88[0] >= v81)
            {
              a1 = v72;
              goto LABEL_110;
            }
          }

          result = 262153;
LABEL_131:
          v21 = v43;
LABEL_132:
          a1 = v72;
        }
      }

      v20 |= 0x10u;
      goto LABEL_134;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 5)
    {
      if ((v20 & 4) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v51 = ccder_blob_decode_tl();
      result = v77;
      if (v51)
      {
        if (CMSAttributeParseSigningTime(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 4u;
      goto LABEL_134;
    }

    if (*v24 == v21 && v24[8] == 1)
    {
      if ((v20 & 8) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v54 = ccder_blob_decode_tl();
      result = v77;
      if (v54)
      {
        if (CMSAttributeParseAppleHashAgility(&v80, v52, v53, a3))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 8u;
LABEL_134:
      if (result)
      {
        goto LABEL_179;
      }

      goto LABEL_135;
    }

    if (*v24 != 0x9010DF78648862ALL || v24[8] != 52)
    {
      v31 = *v24;
      v32 = v24[8];
      if (v31 != 0x9010DF78648862ALL || v32 != 15)
      {
LABEL_147:
        result = 262150;
        goto LABEL_179;
      }

      if ((v20 & 0x40) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v34 = ccder_blob_decode_tl();
      result = v77;
      if (v34)
      {
        if (CMSAttributeParseSMIMECapabilities(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 0x40u;
      goto LABEL_134;
    }

    if ((v20 & 0x20) != 0)
    {
LABEL_149:
      result = 262149;
      goto LABEL_179;
    }

    v20 |= 0x20u;
LABEL_135:
    if (v22 > v84 || v83 > v22)
    {
      goto LABEL_183;
    }

    v83 = v22;
  }

  while (v22 < v84);
  if ((~v20 & 3) != 0)
  {
    goto LABEL_145;
  }

  v56 = ccder_sizeof_tag();
  result = ccder_sizeof_len();
  v57 = __CFADD__(v56, result);
  v58 = v56 + result;
  v10 = v75;
  if (v57)
  {
    goto LABEL_185;
  }

  if (v58 > 0x14)
  {
    result = 327689;
    goto LABEL_179;
  }

  memset(v88, 170, 20);
  if (__CFADD__(v88, v58))
  {
LABEL_184:
    __break(0x5513u);
  }

  v85 = v88;
  v86 = v88 + v58;
  result = ccder_blob_encode_tl();
  if (!result)
  {
    result = 327688;
    goto LABEL_179;
  }

  v59 = v75[1];
  v57 = __CFADD__(v59, 8);
  v60 = v59 + 8;
  if (v57 || (v61 = v75[2], v57 = __CFADD__(v60, v61), v62 = v60 + v61, v57) || (v57 = __CFADD__(v62, 4), v63 = v62 + 4, v57) || v63 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_185:
    __break(0x5500u);
    return result;
  }

  MEMORY[0x28223BE20]();
  v65 = &v71 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v65, 170, ((v66 - 9) & 0xFFFFFFFFFFFFFFF8) + 8);
  ccdigest_init();
  ccdigest_update();
  ccdigest_update();
  v13 = (v10[7])(v10, v65, v89);
  v15 = v74;
LABEL_157:
  if (v15 <= a1)
  {
LABEL_183:
    __break(0x5519u);
    goto LABEL_184;
  }

  result = CMSBuildPath(v13, a2, a3);
  if (result <= 524294)
  {
    if (!result)
    {
      goto LABEL_169;
    }

    if (result != 524293)
    {
      goto LABEL_179;
    }

    goto LABEL_166;
  }

  switch(result)
  {
    case 0x80007:
LABEL_166:
      *(a3 + 168) = result;
      return 0;
    case 0x80009:
      v67 = 524297;
LABEL_168:
      *(a3 + 168) = v67;
      break;
    case 0x80008:
      if (*(a3 + 168) == 458753)
      {
        v67 = 524296;
        goto LABEL_168;
      }

      break;
    default:
      goto LABEL_179;
  }

LABEL_169:
  v68 = *v10;
  if (*v10 > 0x40)
  {
    goto LABEL_183;
  }

  v79[0] = v89;
  v79[1] = v68;
  v69 = *(a3 + 152);
  if (v69 >= v69 + 304)
  {
    goto LABEL_183;
  }

  result = X509CertificateCheckSignatureDigest(29, v69, v79, v3);
  if (!result || result == 655648 || result == 655632)
  {
    v70 = *(a3 + 168);
    if (!v70 || v70 == 458753 || v70 == 327681)
    {
      *(a3 + 168) = result;
    }

    result = 0;
  }

LABEL_179:
  if (*v16 == v89)
  {
    *v16 = 0;
    *(a3 + 136) = 0;
  }

  return result;
}

uint64_t validateSignerInfoAndChain(uint64_t *a1, void *a2, uint64_t a3)
{
  result = validateSignerInfo(a1, a2, a3);
  v6 = result;
  if (result)
  {
    return v6;
  }

  v7 = (a3 + 152);
  v8 = (a3 + 168);
  if (v7 <= v8)
  {
    v9 = X509ChainCheckPath(29, v7, *a1);
    if (v9)
    {
      if (!*v8)
      {
        *v8 = v9;
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSVerify(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30[0] = 0;
  memset(v28, 0, sizeof(v28));
  v26 = 0;
  v25 = 0;
  v23 = 0u;
  v24 = &v23 + 8;
  v30[1] = 0;
  memset(__b, 170, sizeof(__b));
  v22[0] = 4;
  v22[1] = __b;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v27 = v19;
  *&v28[0] = 1;
  DWORD2(v21) = 327681;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

  result = CMSParseContentInfoSignedDataWithOptions(a1, a2, v22, 0);
  if (result)
  {
    return result;
  }

  if (a4)
  {
    result = 131091;
    if (*(v28 + 8) != 0)
    {
      return result;
    }

    if (a4 < 0)
    {
      goto LABEL_20;
    }

    *(&v28[0] + 1) = a3;
    *&v28[1] = a4;
  }

  v30[0] = a5;
  DWORD2(v21) = 458753;
  result = CMSParseSignerInfos(v22, v30, validateSignerInfoAndChain);
  if (result)
  {
    return result;
  }

  result = DWORD2(v21);
  if (DWORD2(v21))
  {
    return result;
  }

  if (a6 && a7)
  {
    if (*(&v20 + 1) < (*(&v20 + 1) + 304))
    {
      result = X509CertificateParseKey(*(&v20 + 1), a6, a7);
      goto LABEL_14;
    }

LABEL_20:
    __break(0x5519u);
  }

LABEL_14:
  if (!a4)
  {
    if (a8)
    {
      if (a9)
      {
        v18 = *&v28[1];
        if (*&v28[1])
        {
          if (*(&v28[0] + 1))
          {
            *a8 = *(&v28[0] + 1);
            *a9 = v18;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMSVerifySignedData(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  return CMSVerify(a1, a2, a3, a4, a5, &v6, &v7, &v8, v9);
}

uint64_t CMSVerifyAndReturnSignedData(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7[0] = 0;
  return CMSVerify(a1, a2, 0, 0, a5, &v6, v7, a3, a4);
}

uint64_t ccder_blob_decode_ber_len(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  *a2 = 0;
  v3 = *result;
  if (!*result)
  {
    return 0;
  }

  v4 = *(result + 8);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v3 == -1)
  {
    goto LABEL_48;
  }

  v5 = v3 + 1;
  if (v3 >= v3 + 1 || v5 > v4)
  {
    goto LABEL_47;
  }

  *result = v5;
  v7 = *v3;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *v3;
  if (v9 > 0x81)
  {
    if (v9 == 130)
    {
      if ((v4 - v5) < 2)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          v10 = v3 + 3;
          if (v5 <= v3 + 3 && v10 <= v4)
          {
            v11 = v3[1] << 8;
            v12 = v3[2];
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      if (v9 != 131)
      {
        return v8;
      }

      if ((v4 - v5) < 3)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          if (v3 + 3 >= v5 && (v3 + 3) < v4)
          {
            if (v5 > 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_48;
            }

            v10 = v3 + 4;
            if (v5 <= v3 + 4 && v10 <= v4)
            {
              v11 = (v3[1] << 16) | (v3[2] << 8);
              v12 = v3[3];
LABEL_45:
              v7 = v11 | v12;
              *result = v10;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_47:
    __break(0x5519u);
    goto LABEL_48;
  }

  if (v9 == 128)
  {
    v7 = v4 - v5;
    *a2 = 1;
    goto LABEL_9;
  }

  if (v9 != 129)
  {
    return v8;
  }

  if ((v4 - v5) < 1)
  {
    return 0;
  }

  if (v3 != -2)
  {
    v10 = v3 + 2;
    if (v5 <= v3 + 2 && v10 <= v4)
    {
      *result = v10;
      v7 = *v5;
LABEL_46:
      v5 = v10;
LABEL_9:
      if (v4 - v5 >= v7)
      {
        *a3 = v7;
        return 1;
      }

      return 0;
    }

    goto LABEL_47;
  }

LABEL_48:
  __break(0x5513u);
  return result;
}

uint64_t CMSParseImplicitCertificateSet(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v31[3] = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4 || (memset(v31, 170, 24), v6 = *a1, v7 = a1[1], *a1 > v7))
  {
LABEL_47:
    __break(0x5519u);
LABEL_48:
    __break(0x5513u);
  }

  v31[0] = *a1;
  v31[1] = v7;
  if (v6 < v7 && a3 != 0)
  {
    v11 = 0;
    v12 = 304 * a3;
    v13 = a2 + 304 * a3;
    v26 = ~a2;
    v14 = a4 + 1;
    v15 = a2 + 304;
    while (1)
    {
      v30 = 0;
      if (!ccder_blob_decode_tag())
      {
        return 0;
      }

      if (!v31[2])
      {
        goto LABEL_9;
      }

      if (!ccder_blob_decode_ber_len(v31, &v30, &v29) || (v30 & 1) != 0 || v31[2] != 0x2000000000000010)
      {
        return 0;
      }

      if ((v11 * 304) >> 64 != (304 * v11) >> 63 || 304 * v11 > v26)
      {
        goto LABEL_48;
      }

      v16 = (v15 - 304);
      if (v15 - 304 > v13)
      {
        goto LABEL_47;
      }

      if (v16 < a2)
      {
        goto LABEL_47;
      }

      v17 = v12 >= 0x130;
      v12 -= 304;
      if (!v17)
      {
        goto LABEL_47;
      }

      *(v15 - 32) = 0u;
      *(v15 - 16) = 0u;
      *(v15 - 64) = 0u;
      *(v15 - 48) = 0u;
      *(v15 - 96) = 0u;
      *(v15 - 80) = 0u;
      *(v15 - 128) = 0u;
      *(v15 - 112) = 0u;
      *(v15 - 160) = 0u;
      *(v15 - 144) = 0u;
      *(v15 - 192) = 0u;
      *(v15 - 176) = 0u;
      *(v15 - 224) = 0u;
      *(v15 - 208) = 0u;
      *(v15 - 256) = 0u;
      *(v15 - 240) = 0u;
      *(v15 - 288) = 0u;
      *(v15 - 272) = 0u;
      *v16 = 0u;
      if (v16 > v15)
      {
        goto LABEL_47;
      }

      if (v11)
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        *(v15 - 32) = 0;
        v18 = *v14;
        *(v15 - 24) = *v14;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *v18 = v16;
        *v14 = v15 - 32;
        if (v15 != 304)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        v19 = *a4;
        *(v15 - 32) = *a4;
        v20 = v15 - 32;
        v21 = (v15 - 24);
        if (v19)
        {
          if (v20 > v21)
          {
            goto LABEL_47;
          }

          v22 = (v19 + 280);
        }

        else
        {
          v22 = v14;
          if (v20 > v21)
          {
            goto LABEL_47;
          }
        }

        *v22 = v20;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *a4 = v16;
        if (v14 < a4)
        {
          goto LABEL_47;
        }

        *v21 = a4;
        if (v15 != 304)
        {
LABEL_37:
          if (v15 > v13 || v16 > v15)
          {
            goto LABEL_47;
          }
        }
      }

      if (X509CertificateParseImplicit(v15 - 304, v31, 0, 0))
      {
        return 0;
      }

      v23 = v31[0];
      v24 = v31[0] - v6;
      if (v31[0] - v6 > v7 - v6)
      {
        goto LABEL_47;
      }

      if (v15 > v13)
      {
        goto LABEL_47;
      }

      *v16 = v6;
      *(v15 - 296) = v24;
      v7 = v31[1];
      if (v23 > v31[1])
      {
        goto LABEL_47;
      }

      *a1 = v23;
      a1[1] = v7;
      ++v11;
      if (v23 < v7)
      {
        v15 += 304;
        v6 = v23;
        if (v11 < a3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:
  if (a5)
  {
    *a5 = v11;
  }

  return 1;
}

uint64_t ccder_blob_eat_ber_inner(unint64_t *a1, uint64_t a2, unint64_t *a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8 && v14 == a2)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    result = ccder_blob_decode_ber_len(a1, &v15, &v13);
    if ((result & 1) == 0)
    {
      return 0;
    }

    if (a3)
    {
      v10 = a1[1];
      if (*a1 > v10)
      {
        goto LABEL_18;
      }

      *a3 = *a1;
      a3[1] = v10;
    }

    if (v15 == 1)
    {
      if (a4 >= 1)
      {
        result = ccder_blob_eat_ber_inner(a1, 0, 0, (a4 - 1));
        if (!result)
        {
          return result;
        }

        return (ccder_blob_decode_eoc(a1, 1) & 1) != 0;
      }

      return 0;
    }

    v11 = *a1;
    if (__CFADD__(*a1, v13))
    {
LABEL_19:
      __break(0x5513u);
      return result;
    }

    v12 = v11 + v13;
    if (v11 <= v11 + v13 && v12 <= a1[1])
    {
      *a1 = v12;
      return 1;
    }

LABEL_18:
    __break(0x5519u);
    goto LABEL_19;
  }

  return result;
}

uint64_t CMSAttributeParseContentType(const void **a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (v3 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      if (v3 <= v3 - 0x5555555555555556)
      {
        return compare_octet_string_raw(&pkcs7_data_oid, v3, 0xAAAAAAAAAAAAAAAALL) == 0;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t CMSAttributeParseMessageDigest(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (*a1 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      result = a4 + 24;
      if (a4 + 24 <= (a4 + 40))
      {
        result = find_digest(result);
        if (!result)
        {
          return result;
        }

        if (*(a4 + 136) != 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_14;
        }

        result = (*(result + 24))();
        if (*result != 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_14;
        }

        v7 = a1[1];
        v8 = v7 >= *a1;
        v9 = v7 - *a1;
        if (v8 && *(a4 + 136) >= 0xAAAAAAAAAAAAAAAALL && v9 >= 0xAAAAAAAAAAAAAAAALL)
        {
          if (!memcmp(*(a4 + 128), *a1, 0xAAAAAAAAAAAAAAAALL))
          {
            return 1;
          }

LABEL_14:
          *(a4 + 168) = 458754;
          return 1;
        }
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t CMSAttributeParseSigningTime(unint64_t *a1)
{
  if (*a1 > a1[1])
  {
    goto LABEL_10;
  }

  v4 = *a1;
  v5 = a1[1];
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    goto LABEL_7;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v3 = v4;
  if (v4 > v5)
  {
LABEL_10:
    __break(0x5519u);
  }

  *a1 = v4;
  a1[1] = v5;
LABEL_7:
  if (v3 < 0x5555555555555556)
  {
    return v3 - 0x5555555555555556 == a1[1];
  }

  __break(0x5513u);
  return result;
}

uint64_t CMSAttributeParseAppleHashAgility(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (v7 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      if (*(a4 + 104))
      {
        return 1;
      }

      if (v7 <= v7 - 0x5555555555555556)
      {
        *(a4 + 112) = v7;
        *(a4 + 120) = 0xAAAAAAAAAAAAAAAALL;
        return 1;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t CMSAttributeParseSMIMECapabilities(void *a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 >= 0x5555555555555556uLL)
    {
      __break(0x5513u);
    }

    else
    {
      return *a1 - 0x5555555555555556 == a1[1];
    }
  }

  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v5 = *a1;
    v6 = *a1;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (a2)
    {
      if (v6 < v5)
      {
        goto LABEL_20;
      }

      *a2 = v5;
      a2[1] = 0;
    }

    if (v5 == v6)
    {
      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

    else if (v5 <= v6)
    {
      result = ccder_blob_decode_tl();
      if (!result)
      {
        return result;
      }

      if (v5 != v6)
      {
        return 0;
      }

      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

LABEL_20:
    __break(0x5519u);
  }

  return result;
}

uint64_t ccder_blob_decode_Time(unint64_t *a1, unint64_t *a2)
{
  if (*a1 > a1[1])
  {
    goto LABEL_6;
  }

  if (ccder_blob_decode_tl())
  {
    return 0;
  }

  if (*a1 > a1[1])
  {
LABEL_6:
    __break(0x5519u);
  }

  ccder_blob_decode_tl();
  return 0;
}

uint64_t ccder_blob_decode_GeneralName(unint64_t *a1, int *a2, unint64_t *a3)
{
  result = 0;
  if (a2 && a3)
  {
    *a3 = 0;
    a3[1] = 0;
    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      *a2 = 0;
LABEL_6:
      v7 = v10;
LABEL_16:
      if (v7 <= a1[1] && *a1 <= v7)
      {
        *a1 = v7;
        return 1;
      }

LABEL_42:
      __break(0x5519u);
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v11 = *a1;
    v16 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v11;
      if (v16 < v11)
      {
        goto LABEL_42;
      }

      *a3 = v11;
      a3[1] = 0;
      v8 = 1;
LABEL_15:
      *a2 = v8;
      goto LABEL_16;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v12 = *a1;
    v17 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v12;
      if (v17 < v12)
      {
        goto LABEL_42;
      }

      *a3 = v12;
      a3[1] = 0;
      v8 = 2;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      v9 = 3;
LABEL_23:
      *a2 = v9;
      goto LABEL_6;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v13 = *a1;
    v18 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v13;
      if (v18 < v13)
      {
        goto LABEL_42;
      }

      *a3 = v13;
      a3[1] = 0;
      v8 = 4;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      v9 = 5;
      goto LABEL_23;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v14 = *a1;
    v19 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v14;
      if (v19 < v14)
      {
        goto LABEL_42;
      }

      *a3 = v14;
      a3[1] = 0;
      v8 = 6;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v15 = *a1;
    v20 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v15;
      if (v20 < v15)
      {
        goto LABEL_42;
      }

      *a3 = v15;
      a3[1] = 0;
      v8 = 7;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    result = ccder_blob_decode_tl();
    if (result)
    {
      v9 = 8;
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v18 = *MEMORY[0x277D85DE8];
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17[17] = v12;
      v17[18] = v12;
      v17[15] = v12;
      v17[16] = v12;
      v17[13] = v12;
      v17[14] = v12;
      v17[11] = v12;
      v17[12] = v12;
      v17[9] = v12;
      v17[10] = v12;
      v17[7] = v12;
      v17[8] = v12;
      v17[5] = v12;
      v17[6] = v12;
      v17[3] = v12;
      v17[4] = v12;
      v17[1] = v12;
      v17[2] = v12;
      v17[0] = v12;
      v15 = a1;
      v16 = a2;
      result = X509CertificateParse(v17, &v15);
      if (result)
      {
        break;
      }

      a1 = v15;
      a2 = v16;
      if (v15 > v16 || v10 < a3 || v10 + 1 > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v17[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  return result;
}

uint64_t CTParseExtensionValue(unint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, void *a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_11;
  }

  v10[0] = a1;
  v10[1] = a1 + a2;
  result = X509CertificateParseWithExtension(v11, v10, a3, a4);
  if (!result)
  {
    result = 720914;
    if (*(&v12 + 1))
    {
      v9 = v13;
      if (v13)
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            result = 0;
            *a5 = *(&v12 + 1);
            *a6 = v9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CTParseKey(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_7:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_7;
  }

  v7[0] = a1;
  v7[1] = a1 + a2;
  result = X509CertificateParse(v8, v7);
  if (!result)
  {
    return X509CertificateParseKey(v8, a3, a4);
  }

  return result;
}

uint64_t CTEvaluateCertifiedChip(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, _BYTE *a7, uint64_t a8, const void *a9, size_t a10, BOOL *a11, uint64_t a12, uint64_t a13)
{
  __b[152] = *MEMORY[0x277D85DE8];
  memset(__b, 170, 0x4C0uLL);
  memset(v35, 170, sizeof(v35));
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_42;
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_41;
  }

  v32 = a1;
  v33 = a1 + a2;
  CommonName = X509ChainParseCertificateSet(&v32, __b, 4, &v35[2], &v34);
  if (CommonName)
  {
    return CommonName;
  }

  v22 = 327690;
  if (v32 != v33)
  {
    return v22;
  }

  if (v34 != 2)
  {
    return 327692;
  }

  X509ChainResetChain(v35, &v35[2]);
  __b[74] = v35[0];
  v23 = v35[0] ? (v35[0] + 296) : &v35[1];
  *v23 = &__b[74];
  if ((&__b[38] + 1) != 0 && __b >= 0xFFFFFFFFFFFFFECFLL)
  {
LABEL_42:
    __break(0x5513u);
  }

  v35[0] = &__b[38];
  __b[75] = v35;
  __b[36] = 0;
  __b[37] = v35[1];
  *v35[1] = __b;
  v35[1] = &__b[36];
  CommonName = X509ChainCheckPathWithOptions(12, v35, a12, 0);
  if (CommonName)
  {
    return CommonName;
  }

  v24 = **(v35[1] + 8);
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v30 = a3;
  v31 = a4;
  v25 = oidForPubKeyLength();
  if (v24 > v24 + 304 || v24 + 16 > v24 + 32 || v24 + 40 > v24 + 56 || v24 + 56 > v24 + 72)
  {
    goto LABEL_41;
  }

  CommonName = X509CertificateCheckSignatureWithPublicKey(&v30, &ecPublicKey, v25, v24 + 16, v24 + 40);
  if (CommonName)
  {
    return CommonName;
  }

  if (a9 && a10)
  {
    if ((a10 & 0x8000000000000000) != 0 || v24 + 248 > v24 + 264)
    {
      goto LABEL_41;
    }

    if (compare_octet_string_raw(v24 + 248, a9, a10))
    {
      return 590085;
    }
  }

  v27 = v35[0];
  if (v35[0] >= v35[0] + 304)
  {
LABEL_41:
    __break(0x5519u);
    goto LABEL_42;
  }

  v28 = X509CertificateParseKey(v35[0], a5, a6);
  if (v28)
  {
    v22 = v28;
  }

  else
  {
    v22 = 327691;
  }

  if (v27 && !v28)
  {
    if (a11)
    {
      *a11 = (*(v27 + 240) & a13) != 0;
    }

    if (!a7 || !a8)
    {
      return 0;
    }

    v29[0] = 0;
    v29[1] = 0;
    if (v27 + 104 <= v27 + 120)
    {
      CommonName = X509CertificateSubjectNameGetCommonName((v27 + 104), v29);
      if (CommonName)
      {
        return CommonName;
      }

      if ((a8 & 0x8000000000000000) == 0)
      {
        CommonName = CTCopyUID(v29, a7, a8);
        if (CommonName)
        {
          return CommonName;
        }

        return 0;
      }
    }

    goto LABEL_41;
  }

  return v22;
}

uint64_t CTEvaluateCertsForPolicy(unint64_t a1, uint64_t a2, char a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  v45 = *MEMORY[0x277D85DE8];
  memset(v41, 170, sizeof(v41));
  bzero(v42, 0x4C0uLL);
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_47:
    __break(0x5513u);
  }

  v40 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 + a2 < a1)
  {
    goto LABEL_46;
  }

  v38 = a1;
  v39 = a1 + a2;
  result = X509ChainParseCertificateSet(&v38, v42, 4, &v41[2], &v40);
  if (result)
  {
    return result;
  }

  if (v38 != v39)
  {
    return 327690;
  }

  if ((a4 & 1) == 0 && !v43)
  {
    X509ChainResetChain(v41, &v41[2]);
    v20 = v41[0];
    v21 = (v41[0] + 296);
    if (!v41[0])
    {
      v21 = &v41[1];
    }

    *v21 = v44;
    v41[0] = v42;
    v44[0] = v20;
    v44[1] = v41;
LABEL_23:
    v37[0] = a7;
    v37[1] = a8;
    if (a7)
    {
      v24 = a8 == 0;
    }

    else
    {
      v24 = 1;
    }

    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = 0xAAAAAAAAAAAAAAAALL;
    v34 = v25;
    v35 = v25;
    v33 = *a11;
    LOBYTE(v34) = *(a11 + 16);
    if (v24)
    {
      v26 = a3;
    }

    else
    {
      v26 = 1;
    }

    BYTE1(v34) = v26;
    WORD1(v34) = *(a11 + 9);
    if (!v24)
    {
      v27 = *(a11 + 4);
      *(&v34 + 1) = v37;
      *&v35 = v27;
      v28 = oidForPubKeyLength();
LABEL_33:
      v30 = *(a11 + 6);
      *(&v35 + 1) = v28;
      v36 = v30;
      result = X509ChainCheckPathWithOptions(12, v41, &v33, 0);
      if (result)
      {
        return result;
      }

      v31 = v41[0];
      if (!a5 || !a6 || !v41[0])
      {
LABEL_40:
        if (a10 && v31)
        {
          v32 = v31[32];
          *a10 = v31[31];
          a10[1] = v32;
        }

        result = 0;
        if (a9)
        {
          if (v31)
          {
            result = 0;
            *a9 = v31[30];
          }
        }

        return result;
      }

      if (v41[0] < v41[0] + 304)
      {
        result = X509CertificateParseKey(v41[0], a5, a6);
        if (result)
        {
          return result;
        }

        goto LABEL_40;
      }

      goto LABEL_46;
    }

    if (*(a11 + 3) < (*(a11 + 3) + 16))
    {
      v29 = *(a11 + 4);
      v28 = *(a11 + 5);
      *(&v34 + 1) = *(a11 + 3);
      *&v35 = v29;
      goto LABEL_33;
    }

LABEL_46:
    __break(0x5519u);
    goto LABEL_47;
  }

  if (v42[265] != 1)
  {
    v23 = &v45;
    v22 = v42;
    goto LABEL_20;
  }

  if (!v41[2])
  {
    v22 = 0;
    goto LABEL_22;
  }

  v22 = v41[2];
  do
  {
    if ((v22[265] & 1) == 0)
    {
      v23 = (v22 + 304);
      if (v22 < v22 + 304)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

    v22 = *(v22 + 34);
  }

  while (v22);
  v23 = (v41[2] + 304);
  v22 = v41[2];
LABEL_20:
  if (v22 + 304 > v23 || v22 > v22 + 304)
  {
    goto LABEL_46;
  }

LABEL_22:
  result = X509ChainBuildPathPartial(v22, &v41[2], v41, a4 ^ 1u);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t CTEvaluatePragueSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0xAAAAAAAA0000AA01;
  v8 = xmmword_259AF3050;
  BYTE1(v9) = a5;
  v10 = 0u;
  v11 = 0u;
  return CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v8, a6, a7);
}

uint64_t CTEvaluateKDLSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0xAAAAAAAA0000AA01;
  v8 = xmmword_259AF3060;
  BYTE1(v9) = a5;
  v10 = 0u;
  v11 = 0u;
  return CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v8, a6, a7);
}

uint64_t CTVerifyAppleMarkerExtension(void *a1, uint64_t a2)
{
  result = 327700;
  v4 = a1[31];
  v5 = a1[32];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 327707;
  }

  v7 = a1[30];
  if ((v7 & 0x100000000) == 0)
  {
    if ((v7 & 0x200000000) == 0)
    {
      return result;
    }

    if (!__CFADD__(v4, v5))
    {
      v11 = v4 + v5;
      if (v4 + v5 != -1)
      {
        if (v5 > 0x13)
        {
          return 327704;
        }

        v15 = (v11 - 1);
        if (v11 - 1 >= v4)
        {
          v16 = 0;
          v10 = 0;
          v17 = 0;
          while (v15 < v11)
          {
            v18 = *v15;
            if ((v18 - 58) < 0xFFFFFFF6)
            {
              return 327705;
            }

            v19 = (&powersOfTen + v16);
            if ((&powersOfTen + v16) < &powersOfTen || v19 + 1 > &CTOidCommonName || v19 > v19 + 1)
            {
              break;
            }

            if (v16 == 160 || (v17 & 0x1FFFFFFFFFFFFFFFLL) == 0x14)
            {
              goto LABEL_42;
            }

            v20 = v18 & 0xF;
            v21 = *v19;
            if (!is_mul_ok(v20, v21))
            {
              goto LABEL_43;
            }

            v22 = v20 * v21;
            v14 = __CFADD__(v10, v22);
            v10 += v22;
            if (v14)
            {
              goto LABEL_41;
            }

            ++v17;
            --v15;
            v16 += 8;
            if (v15 < v4)
            {
              goto LABEL_23;
            }
          }

LABEL_40:
          __break(0x5519u);
LABEL_41:
          __break(0x5500u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(0x550Cu);
          goto LABEL_44;
        }

        goto LABEL_13;
      }
    }

LABEL_44:
    __break(0x5513u);
    return result;
  }

  if (__CFADD__(v4, v5))
  {
    goto LABEL_44;
  }

  v8 = v4 + v5;
  if (v4 + v5 == -1)
  {
    goto LABEL_44;
  }

  v9 = (v8 - 1);
  if (v8 - 1 >= v4)
  {
    LOBYTE(v12) = 0;
    v10 = 0;
    while (v9 < v8)
    {
      v13 = (*v9 & 0x7F) << (7 * v12);
      v14 = __CFADD__(v10, v13);
      v10 += v13;
      if (v14)
      {
        goto LABEL_41;
      }

      if (--v9 >= v4)
      {
        v12 = (v12 + 1);
        if (v12 < 9)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_13:
  v10 = 0;
LABEL_23:
  if (v10 == a2)
  {
    return 0;
  }

  else
  {
    return 589829;
  }
}

uint64_t CTVerifyHostname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 327702;
  if (*(a1 + 232) && *(a1 + 224))
  {
    v7[1] = a3;
    v8 = 0xAAAAAAAAAAAAAA00;
    v7[0] = a2;
    v4 = X509CertificateParseGeneralNamesContent(a1, CTCompareGeneralNameToHostname, v7);
    if (v8)
    {
      v5 = 0;
    }

    else
    {
      v5 = 327706;
    }

    if (v4)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  return v3;
}

uint64_t CTCompareGeneralNameToHostname(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != 2)
  {
    return 1;
  }

  v3 = *a3;
  v4 = a3[1];
  v5 = ~*a3;
  if (v4 > v5)
  {
    goto LABEL_55;
  }

  v6 = &v3[v4];
  if (&v3[v4] == -1)
  {
    goto LABEL_55;
  }

  v7 = v6 - 1;
  if (v6)
  {
    v8 = v7 >= v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  if (a3 + 3 < a3)
  {
    goto LABEL_54;
  }

  v9 = a3 + 2;
  if (a3 + 2 < a3)
  {
    goto LABEL_54;
  }

  v11 = *v7;
  result = compare_octet_string(a2, a3);
  if (!result)
  {
    goto LABEL_53;
  }

  if (v11 != 46)
  {
    goto LABEL_16;
  }

  v12 = v4 - 1;
  if (v4)
  {
    if (v12 <= v4)
    {
      result = compare_octet_string_raw(a2, v3, v12);
      if (result)
      {
LABEL_16:
        v13 = a2[1];
        if (v13 < 3)
        {
          return 1;
        }

        v14 = *a2;
        if (**a2 != 42)
        {
          return 1;
        }

        if (v14 != -1)
        {
          if (v14[1] == 46)
          {
            v15 = -2;
            if (v14 < 0xFFFFFFFFFFFFFFFELL)
            {
              v15 = *a2;
            }

            v16 = -v15;
            v17 = 2;
            result = 1;
            while (v16 != v17)
            {
              if (v14[v17] == 46)
              {
                if (v13 == v17)
                {
                  return 1;
                }

                v18 = 0;
                if (v4)
                {
                  while (1)
                  {
                    v19 = &v3[v18];
                    if (&v3[v18] >= v6 || v19 < v3)
                    {
                      goto LABEL_54;
                    }

                    if (*v19 == 46)
                    {
                      break;
                    }

                    if (v4 == ++v18)
                    {
                      v18 = v4;
                      break;
                    }
                  }
                }

                v21 = v13 - 1;
                v8 = v4 >= v18;
                v22 = v4 - v18;
                if (!v8)
                {
                  goto LABEL_56;
                }

                if (v21 == v22)
                {
                  if (v18 > v5)
                  {
                    goto LABEL_55;
                  }

                  v23 = &v3[v18];
                  if (&v3[v18] > v6 || v3 > v23)
                  {
                    goto LABEL_54;
                  }

                  result = memcmp(v14 + 1, v23, v13 - 1);
                  if (!result)
                  {
                    goto LABEL_53;
                  }
                }

                if (v11 != 46)
                {
                  return 1;
                }

                if (!v22)
                {
                  goto LABEL_56;
                }

                if (v21 != v22 - 1)
                {
                  return 1;
                }

                if (v18 > v5)
                {
                  goto LABEL_55;
                }

                v24 = &v3[v18];
                if (&v3[v18] > v6 || v3 > v24 || v21 > v22)
                {
                  goto LABEL_54;
                }

                if (!memcmp(v14 + 1, v24, v21))
                {
                  goto LABEL_53;
                }

                return 1;
              }

              if (v13 == ++v17)
              {
                return result;
              }
            }

            goto LABEL_55;
          }

          return 1;
        }

LABEL_55:
        __break(0x5513u);
        goto LABEL_56;
      }

LABEL_53:
      result = 0;
      *v9 = 1;
      return result;
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

LABEL_56:
  __break(0x5515u);
  return result;
}

uint64_t CTEvaluateAppleSSLWithOptionalTemporalCheck(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0xAAAAAAAA00AAAA01;
  v21 = &null_octet;
  v19 = xmmword_259AF3070;
  BYTE1(v20) = a6;
  BYTE2(v20) = a7;
  v22 = &null_octet;
  v23 = &null_octet;
  v24 = &CTOctetServerAuthEKU;
  v17 = 0;
  v18 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, a6, 1, &v17, &v18, 0, 0, 0, 0, &v19);
  if (!result)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16[17] = v13;
    v16[18] = v13;
    v16[15] = v13;
    v16[16] = v13;
    v16[13] = v13;
    v16[14] = v13;
    v16[11] = v13;
    v16[12] = v13;
    v16[9] = v13;
    v16[10] = v13;
    v16[7] = v13;
    v16[8] = v13;
    v16[6] = v13;
    v16[4] = v13;
    v16[5] = v13;
    v16[2] = v13;
    v16[3] = v13;
    v16[0] = v13;
    v16[1] = v13;
    memset(v15, 170, sizeof(v15));
    if (__CFADD__(a1, a2))
    {
      __break(0x5513u);
    }

    else
    {
      v14[0] = a1;
      v14[1] = a1 + a2;
      result = X509ChainParseCertificateSet(v14, v16, 1, &v15[1], v15);
      if (!result)
      {
        result = CTVerifyAppleMarkerExtension(v16, a5);
        if (!result)
        {
          return CTVerifyHostname(v16, a3, a4);
        }
      }
    }
  }

  return result;
}

uint64_t CTGetSEKType(unint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_10:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_10;
  }

  v3[0] = a1;
  v3[1] = a1 + a2;
  if (X509CertificateParse(v4, v3))
  {
    return 0;
  }

  if (compare_octet_string(&v4[10] + 8, &SEKTestRootSKID))
  {
    return compare_octet_string(&v4[10] + 8, &SEKProdRootSKID) == 0;
  }

  return 2;
}

uint64_t CTEvaluateSEK(char a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = 327712;
  if ((a1 & 3) != 0)
  {
    if ((a1 & 1) == 0 || (result = CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, 0, 0, 0, 0, X509PolicySEK), result))
    {
      if ((a1 & 2) != 0)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, &SEKTestRoot_public_key, 97, 0, 0, X509PolicySEK);
      }
    }
  }

  return result;
}

uint64_t CTGetICDPFederationType(unint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_19:
    __break(0x5513u);
  }

  if (a1 + a2 < a1)
  {
LABEL_18:
    __break(0x5519u);
    goto LABEL_19;
  }

  v8 = a1;
  v9 = a1 + a2;
  if (X509CertificateParse(v10, &v8))
  {
    return 0;
  }

  v3 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 0;
  }

  for (i = icdpFederationAnchors; ; i += 3)
  {
    v5 = i + 3;
    if (i < icdpFederationAnchors || v5 > &off_2798EA168 || i >= v5)
    {
      goto LABEL_18;
    }

    if (!compare_octet_string(&v10[10] + 8, *i))
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return i[2];
}

uint64_t CTEvaluateICDPFederation(uint64_t result, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if ((result & 0x7F) == 0)
  {
    return 327712;
  }

  v5 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 327712;
  }

  v6 = 0;
  v7 = 0;
  v8 = off_2798EA0D8;
  while (1)
  {
    v9 = v8 - 3 < icdpFederationAnchors || v8 > &off_2798EA168;
    if (v9 || v8 - 3 >= v8)
    {
      break;
    }

    if (*(v8 - 1) == result)
    {
      v6 = *(v8 - 2);
      v7 = (v6 + 2);
    }

    v8 += 3;
    if (!--v5)
    {
      if (!v6)
      {
        return 327712;
      }

      if ((v6 + 2) <= v7)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, *v6, v6[1], 0, 0, X509PolicyICDPFederation);
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CTCopyUID(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = *result;
  v4 = *(result + 8);
  if (__CFADD__(*result, v4))
  {
    goto LABEL_31;
  }

  v6 = v5 + v4;
  v7 = *result;
  if (v5 < v6)
  {
    while (v7 >= v5)
    {
      v3 = *v7;
      if (v3 != 45 && ++v7 < v6)
      {
        continue;
      }

      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_6:
  if (v7 == -1)
  {
    goto LABEL_31;
  }

  v8 = v7 + 1;
  v3 = 327693;
  result = 327693;
  if ((v7 + 1) >= v6)
  {
    return result;
  }

  if (a3 < 0 || v5 > v8)
  {
LABEL_34:
    __break(0x5519u);
    return result;
  }

  if (__CFADD__(v8, v6 - v8))
  {
    goto LABEL_31;
  }

  if (v6 - v8 != 2 * a3)
  {
    return (v3 + 1);
  }

  if (__CFADD__(a2, a3) || v7 == -2)
  {
LABEL_31:
    __break(0x5513u);
    return (v3 + 1);
  }

  v9 = v7 + 2;
  v10 = a2;
  while (1)
  {
    result = 0;
    if (v9 >= v6 || v10 >= &a2[a3])
    {
      return result;
    }

    v11 = v9 - 1;
    if ((v9 - 1) >= v6 || v11 < v8)
    {
      goto LABEL_34;
    }

    v12 = &asciiNibbleToByte[*v11];
    result = &CTOidAppleImg4Manifest;
    if (v12 >= &CTOidAppleImg4Manifest || v12 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    if (v11 < v7)
    {
      goto LABEL_34;
    }

    v14 = &asciiNibbleToByte[*v9];
    result = &CTOidAppleImg4Manifest;
    if (v14 >= &CTOidAppleImg4Manifest || v14 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    v15 = *v12;
    result = 327695;
    if (v15 > 0xF)
    {
      return result;
    }

    v16 = *v14;
    if (v16 > 0xF)
    {
      return result;
    }

    if (v10 < a2)
    {
      goto LABEL_34;
    }

    *v10++ = v16 | (16 * v15);
    v9 += 2;
    if (!v9)
    {
      goto LABEL_31;
    }
  }
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v68 = 0;
  v69 = 0;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v66 = *a2;
  v67 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return v10;
  }

  v12 = v69;
  v13 = v66;
  v14 = v69 + v66 - v4;
  if (__CFADD__(v69, v66 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v67)
  {
    goto LABEL_189;
  }

  v64 = v13;
  v65 = v15;
  v62 = v13;
  v63 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v62, v68))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v62 != v62 + v68)
    {
      return 720916;
    }

    if (v62 + v68 > v63)
    {
      goto LABEL_189;
    }

    v64 = v62;
    v65 = v63;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720917;
  }

  v16 = v64;
  v17 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v18 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v64;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v64 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v64, (a1 + 152)))
  {
    return 720918;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720919;
  }

  v20 = v64;
  v21 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v22 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v64;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v64 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720920;
  }

  v24 = v64;
  v25 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v26 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v64;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v64 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720921;
  }

  v28 = v64;
  v29 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v30 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v64;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v64 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720922;
  }

  v32 = v64;
  v33 = v68;
  v34 = v64 - v31 + v68;
  if (__CFADD__(v64 - v31, v68))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v65)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v35;
  v62 = v35;
  if (ccder_blob_decode_tl())
  {
    return 720923;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  if (ccder_blob_decode_tl())
  {
    return 720924;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v64 != v65)
      {
        return v10;
      }
    }

    else
    {
      if (v65 > a2[1] || *a2 > v65)
      {
        goto LABEL_189;
      }

      *a2 = v65;
    }

    if (!__CFADD__(v66, v69))
    {
      if (v66 > v66 + v69 || v66 + v69 > v67)
      {
        goto LABEL_189;
      }

      v66 += v69;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, (a1 + 40)))
      {
        return 720937;
      }

      *&v70[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v70[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v60 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        return 720938;
      }

      if (v60 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v70[0] + 1) >= *&v70[0])
        {
          v51 = (v60 + 7) >> 3;
          if (v51 <= *(&v70[0] + 1) - *&v70[0])
          {
            *(a1 + 56) = *&v70[0];
            *(a1 + 64) = v51;
            v52 = v67;
            if (v66 <= v67)
            {
              v10 = 0;
              *a2 = v66;
              a2[1] = v52;
              return v10;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v62, v68))
  {
    goto LABEL_190;
  }

  if (v62 > v62 + v68 || v62 + v68 > v63)
  {
    goto LABEL_189;
  }

  v60 = v62;
  v61 = v62 + v68;
  result = ccder_blob_decode_tl();
  if (!result || !v68)
  {
    return 720925;
  }

  v36 = v60;
  if (__CFADD__(v60, v68))
  {
    goto LABEL_190;
  }

  v37 = v60 + v68;
  if (v60 > v60 + v68 || v37 > v61)
  {
    goto LABEL_189;
  }

  v61 = v60 + v68;
  *(a1 + 266) = 0;
  memset(&v70[2], 0, 128);
  if (a3)
  {
    v38 = a4 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  memset(v70, 0, 32);
  if (v36 >= v37)
  {
LABEL_162:
    if (v36 != v37)
    {
      return 720925;
    }

    if (v36 > v65 || v64 > v36)
    {
LABEL_189:
      __break(0x5519u);
    }

    v64 = v37;
    goto LABEL_167;
  }

  v53 = 0;
  v40 = 0;
  while (1)
  {
    v58 = 0xAAAAAAAAAAAAAAAALL;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v57 = 0;
    v56 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
      return 720926;
    }

    v54 = 0xAAAAAAAAAAAAAAAALL;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    if (v60 > v60 + v56 || v60 + v56 > v61)
    {
      goto LABEL_189;
    }

    v54 = v60;
    v55 = v60 + v56;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720927;
    }

    if (v55 < v54 || v68 > v55 - v54)
    {
      goto LABEL_189;
    }

    v58 = v54;
    v59 = v68;
    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v54 + v68 > v55 || v54 > v54 + v68)
    {
      goto LABEL_189;
    }

    v54 += v68;
    if (!der_get_BOOLean(&v54, 1, &v57))
    {
      return 720928;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720929;
    }

    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v55 != v54 + v68)
    {
      return 720929;
    }

    if (v39)
    {
      result = compare_octet_string_raw(&v58, a3, a4);
      if (!result)
      {
        if (v55 < v54)
        {
          goto LABEL_189;
        }

        v42 = v68;
        if (v68 > v55 - v54)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v54;
        *(a1 + 256) = v42;
      }
    }

    if (v59 == 3)
    {
      if (*v58 == 7509 && *(v58 + 2) == 15)
      {
        v49 = 720930;
        if (v40)
        {
          return v49;
        }

        result = X509ExtensionParseKeyUsage(&v54, (a1 + 264));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 1u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 19)
      {
        v49 = 720931;
        if ((v40 & 2) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseBasicConstraints(&v54, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 2u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 35)
      {
        v49 = 720932;
        if ((v40 & 4) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseAuthorityKeyIdentifier(&v54, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 4u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 14)
      {
        v49 = 720933;
        if ((v40 & 8) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseSubjectKeyIdentifier(&v54, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 8u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 37)
      {
        v49 = 720934;
        if ((v40 & 0x10) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseExtendedKeyUsage(&v54, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x10u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 17)
      {
        v49 = 720935;
        if ((v40 & 0x20) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseSubjectAltName(&v54, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v54, v68))
      {
        goto LABEL_190;
      }

      if (v54 > v54 + v68 || v54 + v68 > v55)
      {
        goto LABEL_189;
      }

      v54 += v68;
      if (v57)
      {
        *(a1 + 266) = v57;
      }

      goto LABEL_157;
    }

    if (v59 < 8)
    {
      goto LABEL_133;
    }

    if (*v58 != -2042067414 || *(v58 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v49 = 720936;
    if (!X509CertificateVerifyOnlyOneAppleExtension(&v58, v70, v53))
    {
      return v49;
    }

    result = X509ExtensionParseAppleExtension(&v54, v58, v59, (a1 + 240), (a1 + 248), v39);
    if (!result)
    {
      return v49;
    }

    if (v53 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v53;
LABEL_157:
    if (v54 != v55)
    {
      return 720926;
    }

    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    v36 = v60 + v56;
    if (v60 > v60 + v56)
    {
      goto LABEL_189;
    }

    v37 = v61;
    if (v36 > v61)
    {
      goto LABEL_189;
    }

    v60 += v56;
    if (v36 >= v61)
    {
      goto LABEL_162;
    }
  }
}

uint64_t der_get_BOOLean(unint64_t *a1, int a2, BOOL *a3)
{
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t X509ExtensionParseKeyUsage(uint64_t a1, _BYTE *a2)
{
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    return 0;
  }

  return result;
}

uint64_t X509ExtensionParseBasicConstraints(unint64_t *a1, unint64_t *a2, BOOL *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = der_get_BOOLean(a1, 1, a3);
    if (result)
    {
      if (!ccder_blob_decode_uint64())
      {
        return 1;
      }

      if (*a3)
      {
        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t X509ExtensionParseAuthorityKeyIdentifier(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      goto LABEL_15;
    }

    if (v7 - 0x5555555555555556 != a1[1])
    {
      return 0;
    }

    if (v7 > v7 - 0x5555555555555556)
    {
      goto LABEL_16;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v10;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
LABEL_15:
      __break(0x5513u);
    }

    else
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        return 1;
      }
    }

LABEL_16:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseSubjectKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = a1[1];
    v8 = v7 >= *a1;
    v9 = v7 - *a1;
    if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    *a2 = *a1;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v11 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v12 = v11 - 0x5555555555555556;
    if (v11 > v11 - 0x5555555555555556 || v12 > a1[1])
    {
LABEL_13:
      __break(0x5519u);
    }

    *a1 = v12;
  }

  return result;
}

uint64_t X509ExtensionParseExtendedKeyUsage(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v6 = ccder_blob_decode_tl();
  result = 0;
  if (v6)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_11;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_11;
    }

    *a2 = v10;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v8 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v9 = v8 - 0x5555555555555556;
    if (v8 > v8 - 0x5555555555555556 || v9 > a1[1])
    {
LABEL_11:
      __break(0x5519u);
    }

    *a1 = v9;
  }

  return result;
}

uint64_t X509ExtensionParseSubjectAltName(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result == 1)
  {
    v7 = a1[1];
    v8 = v7 >= *a1;
    v9 = v7 - *a1;
    if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    *a2 = *a1;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v11 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v12 = v11 - 0x5555555555555556;
    if (v11 > v11 - 0x5555555555555556 || v12 > a1[1])
    {
LABEL_13:
      __break(0x5519u);
    }

    *a1 = v12;
  }

  return result;
}

uint64_t X509CertificateVerifyOnlyOneAppleExtension(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseAppleExtension(uint64_t result, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, int a6)
{
  v58 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    a5 = 0;
  }

  switch(a3)
  {
    case 9uLL:
      if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
      {

        return X509ExtensionParseComponentAuth(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
      {
        v57 = 0;
        result = der_get_BOOLean(result, 0, &v57);
        if (result)
        {
          v56 = 0x20000040001;
          if (v57)
          {
            v56 = 0x10000080002;
          }

          *a4 |= v56;
        }

        return result;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
      {

        return X509ExtensionParseCertifiedChipIntermediate(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
      {

        return X509ExtensionParseMFIAuthv3Leaf(result, a4, a5);
      }

      if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
      {
        if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
        {
          result = ccder_blob_check_null(result);
          if (!result)
          {
            return result;
          }

          v14 = *a4 | 0x8000000000;
        }

        else
        {
          if (*a2 == 0xA6463F78648862ALL && *(a2 + 8) == 1)
          {
            *a4 |= 0x1000000uLL;
            goto LABEL_249;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000;
          }

          else
          {
            if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
            {
              if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
              {
                goto LABEL_249;
              }

              return X509ExtensionParseDeviceAttestationIdentity(result, a4, a5);
            }

            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000;
          }
        }

LABEL_282:
        *a4 = v14;
        return 1;
      }

      result = ccder_blob_check_null(result);
      if (!result)
      {
        return result;
      }

      v54 = *a4;
      v55 = 1048584;
      goto LABEL_204;
    case 0xAuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x800000100000;
      }

      else
      {
        if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 258)
        {
          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
          {
            goto LABEL_214;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0xF00;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x800000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
          {
LABEL_214:
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x40;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x100;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x400;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x1000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
          {

            return X509ExtensionParseMFISWAuth(result, a4, a5);
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x300000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
          {

            return X509ExtensionParseGenericSSLMarker(result, a4, a5);
          }

          v35 = 1;
          goto LABEL_165;
        }

        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x58600003F0D0;
      }

LABEL_204:
      v14 = v54 | v55;
      goto LABEL_282;
    case 0xBuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x400000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x200;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x800;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x2000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x100000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x4000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x21901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x8000;
        goto LABEL_282;
      }

      break;
    default:
      if (a3 < 0xA)
      {
        goto LABEL_249;
      }

      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_288;
      }

      break;
  }

  v35 = 0;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {

    return X509ExtensionParseServerAuthMarker(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v14 = *a4 | 0x400000;
    goto LABEL_282;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 0x8004000000;
    goto LABEL_204;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3841)
    {
      v53 = *result;
      v52 = *(result + 8);
      if (a5)
      {
        if (v53 > v52)
        {
          goto LABEL_288;
        }

        *a5 = v53;
        a5[1] = v52 - v53;
      }

      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

LABEL_249:
    v53 = *result;
    v52 = *(result + 8);
LABEL_250:
    if (v53 <= v52)
    {
      *result = v52;
      return 1;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  return X509ExtensionParseMFI4Properties(result, a4, a5);
}

uint64_t X509CertificateParseWithExtension(unint64_t *a1, unint64_t *a2, const void *a3, size_t a4)
{
  v8 = 720939;
  v9 = *a2;
  v10 = a2[1];
  if (!ccder_blob_decode_tl())
  {
    return v8;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    return v8;
  }

  if (v11 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != v11 - 0x5555555555555556)
  {
    return v8;
  }

  v13 = v11 - v9 - 0x5555555555555556;
  if (v11 - v9 >= 0x5555555555555556)
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    return 0;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseSPKI(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (__CFADD__(*a1, v5))
  {
    goto LABEL_31;
  }

  v6 = v4 + v5;
  if (v4 > v6)
  {
    goto LABEL_30;
  }

  v10 = 655361;
  v14 = *a1;
  v15 = v6;
  if (!ccder_blob_decode_tl())
  {
    return v10;
  }

  if (!ccder_blob_decode_tl())
  {
    return 655363;
  }

  if (v14 >= 0x5555555555555556)
  {
LABEL_31:
    __break(0x5513u);
  }

  if (v14 > v14 - 0x5555555555555556 || v14 - 0x5555555555555556 > v15)
  {
    goto LABEL_30;
  }

  v13 = v14 - 0x5555555555555556;
  if (!ccder_blob_decode_tl())
  {
    return 655362;
  }

  if (a2)
  {
    if (v13 >= v14)
    {
      *a2 = v14;
      a2[1] = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_12;
    }

LABEL_30:
    __break(0x5519u);
    goto LABEL_31;
  }

LABEL_12:
  v11 = v14 - 0x5555555555555556;
  if (v14 > v14 - 0x5555555555555556 || v11 > v13)
  {
    goto LABEL_30;
  }

  if (v11 == v13)
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  else if (a3)
  {
    *a3 = v11;
    a3[1] = v13 - v11;
  }

  if (v13 > v15 || v14 > v13)
  {
    goto LABEL_30;
  }

  if (!ccder_blob_decode_bitstring())
  {
    return 655364;
  }

  *a4 = 0;
  a4[1] = 0;
  if (v13 == v15)
  {
    return 0;
  }

  else
  {
    return 655365;
  }
}

uint64_t X509CertificateParseKey(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  result = 327691;
  if (a1 && *(a1 + 96))
  {
    result = a1 + 88;
    v8 = 0;
    v9 = 0;
    if (a1 + 88 > (a1 + 104))
    {
      __break(0x5519u);
    }

    else
    {
      result = X509CertificateParseSPKI(result, 0, 0, &v8);
      if (!result && a2)
      {
        if (a3)
        {
          v7 = v9;
          *a2 = v8;
          *a3 = v7;
        }
      }
    }
  }

  return result;
}

uint64_t X509CertificateCheckSignatureDigest(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0uLL;
  v15 = 0uLL;
  v13 = 0;
  v14 = 0;
  if (a2 + 88 > (a2 + 104))
  {
    goto LABEL_22;
  }

  v7 = X509CertificateParseSPKI((a2 + 88), &v16, &v15, &v13);
  if (!v7)
  {
    v7 = 655632;
    v9 = compare_octet_string(&v16, &rsaEncryption);
    v10 = validateSignatureRSA;
    if (v9)
    {
      v11 = compare_octet_string(&v16, &ecPublicKey);
      v10 = validateSignatureEC;
      if (v11)
      {
        return 655617;
      }
    }

    if (v12 = v10, (a1) && !compare_octet_string_raw(a4, &CTOidSha1, 5uLL) || (a1 & 4) != 0 && !compare_octet_string_raw(a4, &CTOidSha256, 9uLL) || (a1 & 8) != 0 && !compare_octet_string_raw(a4, &CTOidSha384, 9uLL) || (a1 & 0x10) != 0 && !compare_octet_string_raw(a4, &CTOidSha512, 9uLL))
    {
      if ((v14 || !v13) && (a3[1] || !*a3))
      {
        if (v12(v13))
        {
          return 0;
        }

        else
        {
          return 655648;
        }
      }

LABEL_22:
      __break(0x5519u);
    }
  }

  return v7;
}

uint64_t X509CertificateCheckSignature(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[2] = v6;
  v10[3] = v6;
  v10[0] = v6;
  v10[1] = v6;
  v9[0] = v10;
  v9[1] = 64;
  v8[0] = 0;
  v8[1] = 0;
  result = X509MatchSignatureAlgorithm(a3, a4, v9, v8);
  if (!result)
  {
    return X509CertificateCheckSignatureDigest(a1, a2, v9, v8);
  }

  return result;
}

uint64_t X509MatchSignatureAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = compare_octet_string_raw(a2, &sha1WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_8;
  }

  result = compare_octet_string_raw(a2, &sha256WithRSA_oid, 9uLL);
  if (!result)
  {
LABEL_10:
    *a4 = &CTOidSha256;
    a4[1] = 9;
    if (*(a3 + 8) < 0x20uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 32;
    ccsha256_di();
    goto LABEL_14;
  }

  result = compare_octet_string_raw(a2, &sha384WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_12;
  }

  result = compare_octet_string_raw(a2, &sha1WithECDSA_oid, 7uLL);
  if (!result)
  {
LABEL_8:
    *a4 = &CTOidSha1;
    a4[1] = 5;
    if (*(a3 + 8) < 0x14uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 20;
    ccsha1_di();
LABEL_14:
    ccdigest();
    return 0;
  }

  result = compare_octet_string_raw(a2, &sha256WithECDSA_oid, 8uLL);
  if (!result)
  {
    goto LABEL_10;
  }

  result = compare_octet_string_raw(a2, &sha384WithECDSA_oid, 8uLL);
  if (result)
  {
    return 656640;
  }

LABEL_12:
  *a4 = &CTOidSha384;
  a4[1] = 9;
  if (*(a3 + 8) >= 0x30uLL)
  {
    *(a3 + 8) = 48;
    ccsha384_di();
    goto LABEL_14;
  }

LABEL_15:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateCheckSignatureWithPublicKey(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[2] = v7;
  v16[3] = v7;
  v16[0] = v7;
  v16[1] = v7;
  v14 = v16;
  v15 = 64;
  v13 = 0uLL;
  matched = X509MatchSignatureAlgorithm(a4, a5, &v14, &v13);
  if (matched)
  {
    return matched;
  }

  matched = 655617;
  v9 = compare_octet_string(a2, &rsaEncryption);
  v10 = validateSignatureRSA;
  if (v9)
  {
    v11 = compare_octet_string(a2, &ecPublicKey);
    v10 = validateSignatureEC;
    if (v11)
    {
      return matched;
    }
  }

  result = *a1;
  if ((a1[1] || !result) && (!v14 || v15))
  {
    if (v10(result))
    {
      return 0;
    }

    else
    {
      return 655648;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseGeneralNamesContent(uint64_t a1, uint64_t (*a2)(void, int *, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (__CFADD__(v3, v4))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_11;
  }

  v10 = *(a1 + 224);
  v11 = v5;
  while (1)
  {
    if (v10 >= v11)
    {
      return 0;
    }

    memset(v9, 170, sizeof(v9));
    if ((ccder_blob_decode_GeneralName(&v10, v9, &v9[1]) & 1) == 0)
    {
      break;
    }

    if ((a2(v9[0], &v9[1], a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 720912;
}

uint64_t X509CertificateSubjectNameGetCommonName(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v20 = v3;
  if (__CFADD__(*a1, v3))
  {
    goto LABEL_61;
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_60;
  }

  v18 = *a1;
  v19 = v4;
  *a2 = 0;
  a2[1] = 0;
  if (a2 + 2 < a2)
  {
    goto LABEL_60;
  }

  v6 = 720901;
  if (v2 < v4)
  {
    while (1)
    {
      if (!ccder_blob_decode_tl() || !v20)
      {
        return 720898;
      }

      v2 = v18;
      if (__CFADD__(v18, v20))
      {
        break;
      }

      v7 = v18 + v20;
      if (v18 > v18 + v20 || v7 > v19)
      {
        goto LABEL_60;
      }

      v16 = v18;
      v17 = v18 + v20;
      while (v2 < v7)
      {
        if (!ccder_blob_decode_tl())
        {
          return 720899;
        }

        if (__CFADD__(v16, v20))
        {
          goto LABEL_61;
        }

        if (v16 > v16 + v20 || v16 + v20 > v17)
        {
          goto LABEL_60;
        }

        v15 = v16 + v20;
        if (!ccder_blob_decode_tl())
        {
          return 720900;
        }

        v2 = v16 + v20;
        if (v16 > v15)
        {
          goto LABEL_60;
        }

        if (__CFADD__(v16, v20))
        {
          goto LABEL_61;
        }

        if (v16 > v16 + v20)
        {
          goto LABEL_60;
        }

        v14 = v16 + v20;
        if (v20 == 3 && *v16 == 1109 && *(v16 + 2) == 3)
        {
          v12 = v16 + v20;
          v13 = v16 + v20;
          if ((ccder_blob_decode_tl() & 1) == 0)
          {
            if (v14 > v15)
            {
              goto LABEL_60;
            }

            v12 = v16 + v20;
            v13 = v16 + v20;
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              if (v14 > v15)
              {
                goto LABEL_60;
              }

              v12 = v16 + v20;
              v13 = v16 + v20;
              if (!ccder_blob_decode_tl())
              {
                return v6;
              }
            }
          }

          if (__CFADD__(v12, v20))
          {
            goto LABEL_61;
          }

          v2 = v16 + v20;
          if (v15 != v12 + v20)
          {
            return 720902;
          }

          if (v13 < v12 || v20 > v13 - v12)
          {
            goto LABEL_60;
          }

          *a2 = v12;
          a2[1] = v20;
        }

        v7 = v18 + v20;
        if (v2 > v17 || v16 > v2)
        {
          goto LABEL_60;
        }

        v16 = v2;
      }

      if (v2 != v7)
      {
        return 720903;
      }

      v4 = v19;
      if (v2 > v19 || v18 > v2)
      {
        goto LABEL_60;
      }

      v18 = v2;
      if (v2 >= v19)
      {
        goto LABEL_47;
      }
    }

LABEL_61:
    __break(0x5513u);
  }

LABEL_47:
  if (v2 == v4)
  {
    if (a2[1] && *a2)
    {
      return 0;
    }

    *a2 = 0;
    a2[1] = 0;
    if (a2 + 2 >= a2)
    {
      return 720905;
    }

LABEL_60:
    __break(0x5519u);
    goto LABEL_61;
  }

  return 720904;
}

BOOL X509CertificateValidAtTime(uint64_t a1, time_t a2)
{
  result = 0;
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6[0] = 0;
  if (a1 && a2 != -1)
  {
    return !X509CertificateGetNotBefore(a1, v6) && !X509CertificateGetNotAfter(a1, &v5) && difftime(a2, v6[0]) >= 0.0 && difftime(a2, v5) <= 0.0;
  }

  return result;
}

unint64_t X509CertificateGetNotBefore(uint64_t a1, time_t *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1, v4, 0);
  if (!result)
  {
    return X509TimeConvert(v4, a2);
  }

  return result;
}

unint64_t X509CertificateGetNotAfter(uint64_t a1, time_t *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1, 0, v4);
  if (!result)
  {
    return X509TimeConvert(v4, a2);
  }

  return result;
}

BOOL X509CertificateIsValid(uint64_t a1)
{
  v2 = time(0);

  return X509CertificateValidAtTime(a1, v2);
}

uint64_t X509CertificateParseValidity(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = 720906;
  if (!result)
  {
    return v3;
  }

  v4 = *(result + 72);
  v5 = *(result + 80);
  if (!v4 || v5 == 0)
  {
    return v3;
  }

  if (__CFADD__(v4, v5))
  {
    __break(0x5513u);
  }

  else
  {
    v7 = v4 + v5;
    if (v4 <= v7)
    {
      v9[0] = *(result + 72);
      v9[1] = v7;
      if (!ccder_blob_decode_Time(v9, a2))
      {
        return 720907;
      }

      if (ccder_blob_decode_Time(v9, a3))
      {
        return 0;
      }

      return 720908;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t X509TimeConvert(void *a1, time_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = 720909;
  if (!a1)
  {
    return v2;
  }

  v4 = a1[1];
  if ((v4 | 2) != 0xF)
  {
    return v2;
  }

  v11.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v12 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v11.tm_mon = v6;
  *&v11.tm_isdst = v6;
  *&v11.tm_sec = v6;
  v13 = 0;
  result = __memcpy_chk();
  if (result > result + v4)
  {
    goto LABEL_24;
  }

  v8 = &v12[v4];
  if (&v12[v4] >= &v14 || &v12[v4] < v12)
  {
    goto LABEL_24;
  }

  if (v4 > 0xF)
  {
    __break(1u);
    goto LABEL_26;
  }

  v12[v4] = 0;
  if (v4 != 13)
  {
    if (v8 + 1 >= v8 && v8 + 1 <= &v14)
    {
      result = strptime(v12, "%Y%m%d%H%M%SZ", &v11);
      goto LABEL_15;
    }

LABEL_24:
    __break(0x5519u);
  }

  if (BYTE5(v13))
  {
    goto LABEL_24;
  }

  result = strptime(v12, "%y%m%d%H%M%SZ", &v11);
  if (result && v11.tm_year >= 150)
  {
    v11.tm_year -= 100;
  }

LABEL_15:
  v9 = a1[1];
  if (v9 >= 0x11)
  {
LABEL_26:
    __break(0x5512u);
    goto LABEL_27;
  }

  if (!__CFADD__(v12, v9))
  {
    if (result != &v12[v9])
    {
      return 720910;
    }

    v10 = timegm(&v11);
    if (v10 == -1)
    {
      return 720911;
    }

    v2 = 0;
    if (a2)
    {
      *a2 = v10;
    }

    return v2;
  }

LABEL_27:
  __break(0x5513u);
  return result;
}

BOOL X509ExtensionParseComponentAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  v3 = a1[1];
  if (*a1 > v3)
  {
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  v12 = v3 - *a1;
  if (ccder_blob_decode_tl())
  {
    goto LABEL_5;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  if (ccder_blob_decode_tl())
  {
LABEL_5:
    v8 = v13;
    v7 = v14;
    if (v13 > v14)
    {
      goto LABEL_19;
    }

    *a1 = v13;
    a1[1] = v14;
    v9 = v12;
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = v7 - *a1;
  }

  if (__CFADD__(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      *a2 |= 0x40000000uLL;
LABEL_16:
      if (v8 <= v7)
      {
        *a1 = v10;
        return v7 == v10;
      }

      goto LABEL_19;
    }

    if (v8 <= v7 && v9 <= v7 - v8)
    {
      *a3 = v8;
      a3[1] = v9;
      goto LABEL_15;
    }

LABEL_19:
    __break(0x5519u);
LABEL_20:
    __break(0x5513u);
  }

  return v7 == v10;
}

uint64_t X509ExtensionParseCertifiedChipIntermediate(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      goto LABEL_12;
    }

    v8 = v7 - 0x5555555555555556;
    if (a1[1] != v7 - 0x5555555555555556)
    {
      return 0;
    }

    *a2 |= 0x30000000000uLL;
    if (a3)
    {
      if (v7 > v8)
      {
        goto LABEL_12;
      }

      *a3 = v7;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    if (v7 <= v8)
    {
      *a1 = v8;
      return 1;
    }

LABEL_12:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseMFIAuthv3Leaf(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v5 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      v6 = a1[1];
      if (v6 != v5 - 0x5555555555555556)
      {
        return 0;
      }

      if (v5 <= v6)
      {
        *a1 = v5 - 0x5555555555555556;
        return 1;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseMFISWAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      v8 = a1[1];
      if (v8 != v7 - 0x5555555555555556)
      {
        return 0;
      }

      if (a3)
      {
        if (v8 < v7 || v8 - v7 < 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_13;
        }

        *a3 = v7;
        a3[1] = 0xAAAAAAAAAAAAAAAALL;
      }

      *a2 |= 0x30000000uLL;
      if (v7 <= v8)
      {
        *a1 = v7 - 0x5555555555555556;
        return 1;
      }
    }

LABEL_13:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseServerAuthMarker(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  result = ccder_blob_check_null(a1);
  if (result)
  {
    if (a2 > 0xFFFFFFFFFFFFFFF6)
    {
      goto LABEL_26;
    }

    if (__CFADD__(a2, a3))
    {
      goto LABEL_26;
    }

    v10 = a2 + a3;
    if (a2 + a3 == -1)
    {
      goto LABEL_26;
    }

    v11 = a2 + 9;
    v12 = (a2 + 9);
    while (1)
    {
      v13 = v12 < v10 && v12 >= a2;
      v14 = v13;
      if (v12 >= v10 - 1)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = *v12++;
      if ((v15 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    if (!v14)
    {
LABEL_25:
      __break(0x5519u);
LABEL_26:
      __break(0x5513u);
      return result;
    }

    if ((*v12 & 0x80000000) == 0)
    {
      if (!a5)
      {
LABEL_22:
        *a4 |= 0x100000000uLL;
        return 1;
      }

      if (v11 >= a2 && v11 <= v10)
      {
        *a5 = v11;
        a5[1] = a3 - 9;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    return 0;
  }

  return result;
}

uint64_t X509ExtensionParseDeviceAttestationIdentity(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      goto LABEL_17;
    }

    if (a1[1] != v7 - 0x5555555555555556)
    {
      return 0;
    }

    if (v7 > v7 - 0x5555555555555556)
    {
      goto LABEL_18;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      result = ccder_blob_decode_tl();
      if (result)
      {
        if (a3)
        {
          if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
          {
            goto LABEL_18;
          }

          *a3 = v10;
          a3[1] = 0xAAAAAAAAAAAAAAAALL;
        }

        *a2 |= 0x240000800000uLL;
        v8 = *a1;
        if (*a1 < 0x5555555555555556)
        {
          v9 = v8 - 0x5555555555555556;
          if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
          {
            *a1 = v9;
            return 1;
          }

LABEL_18:
          __break(0x5519u);
          return result;
        }

LABEL_17:
        __break(0x5513u);
        goto LABEL_18;
      }
    }
  }

  return result;
}

unint64_t *X509ExtensionParseMFI4Properties(unint64_t *result, void *a2, unint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  if (v5 != 32)
  {
    return (v5 == 32);
  }

  if (a3)
  {
    if (v4 > v3)
    {
LABEL_12:
      __break(0x5519u);
      goto LABEL_13;
    }

    *a3 = v4;
    a3[1] = 32;
  }

  *a2 |= 0xC00000000uLL;
  if (v4 < 0xFFFFFFFFFFFFFFE0)
  {
    v6 = v4 + 32;
    if (v4 + 32 <= v3 && v4 <= v6)
    {
      *result = v6;
      return (v5 == 32);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x5513u);
  return result;
}

unint64_t *X509ChainParseCertificateSet(unint64_t *result, unint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4)
  {
LABEL_33:
    __break(0x5519u);
LABEL_34:
    __break(0x5513u);
    return result;
  }

  v5 = result;
  v6 = *result >= result[1] || a3 == 0;
  if (!v6)
  {
    v10 = 0;
    v11 = a2 + 304 * a3;
    v12 = ~a2;
    v13 = a4 + 1;
    v14 = a3 - 1;
    v15 = (a2 + 272);
    while ((v10 * 304) >> 64 == (304 * v10) >> 63 && 304 * v10 <= v12)
    {
      v16 = (v15 - 34);
      if (v15 != 272 && (v16 < a2 || (v15 + 4) > v11 || v16 > (v15 + 4)))
      {
        goto LABEL_33;
      }

      result = X509CertificateParse(v15 - 34, v5);
      if (result)
      {
        return result;
      }

      if (v10)
      {
        if (v16 < a2)
        {
          goto LABEL_33;
        }

        if ((v15 + 4) > v11)
        {
          goto LABEL_33;
        }

        v17 = *v13;
        *v15 = 0;
        v15[1] = v17;
        if (v16 > (v15 + 4))
        {
          goto LABEL_33;
        }

        *v17 = v16;
        *v13 = v15;
      }

      else
      {
        v18 = *a4;
        *v15 = *a4;
        if (v18)
        {
          v19 = (v18 + 280);
        }

        else
        {
          v19 = v13;
        }

        *v19 = v15;
        *a4 = v16;
        if (v13 < a4)
        {
          goto LABEL_33;
        }

        v15[1] = a4;
      }

      v7 = v10 + 1;
      if (*v5 < v5[1])
      {
        v15 += 38;
        v6 = v14 == v10++;
        if (!v6)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v7 = 0;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  result = 0;
  *a5 = v7;
  return result;
}

unint64_t *X509ChainGetCertificateUsingKeyIdentifier(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return v2;
  }

  while (!*(v2 + 192))
  {
LABEL_6:
    v2 = *(v2 + 272);
    if (!v2)
    {
      return v2;
    }
  }

  if (v2 < v2 + 304 && v2 + 184 <= v2 + 200)
  {
    result = compare_octet_string(a2, v2 + 184);
    if (!result)
    {
      return v2;
    }

    goto LABEL_6;
  }

  __break(0x5519u);
  return result;
}

void *X509ChainResetChain(void *result, void *a2)
{
  *result = 0;
  if (result + 1 < result)
  {
LABEL_7:
    __break(0x5519u);
    return result;
  }

  result[1] = result;
  v2 = *a2;
  if (*a2)
  {
    while (v2 < v2 + 38)
    {
      v2[36] = 0;
      v2[37] = 0;
      if (v2 + 36 > v2 + 38)
      {
        break;
      }

      v2 = v2[34];
      if (!v2)
      {
        return result;
      }
    }

    goto LABEL_7;
  }

  return result;
}

unint64_t X509ChainBuildPathPartial(unint64_t result, unint64_t *a2, unint64_t *a3, int a4)
{
  if (!result)
  {
    return 327691;
  }

  *a3 = 0;
  v5 = a3 + 1;
  if (a3 + 1 < a3 || (v6 = result, a3[1] = a3, *(result + 288) = 0, result + 288 > result + 296) || (*a3 = result, a3[1] = result + 288, *(result + 296) = a3, result + 304 < result) || (v7 = result + 120, result + 120 > result + 136))
  {
LABEL_38:
    __break(0x5519u);
  }

  else
  {
    while (1)
    {
      result = compare_octet_string(v7, v6 + 104);
      if (!result)
      {
        break;
      }

      v10 = v6 + 168;
      if (!*(v6 + 176))
      {
        goto LABEL_13;
      }

      if (v10 > v6 + 184)
      {
        goto LABEL_38;
      }

      result = X509ChainGetCertificateUsingKeyIdentifier(a2, v6 + 168);
      if (!result)
      {
        goto LABEL_13;
      }

      v11 = result;
      v12 = result + 304;
      if (result >= result + 304)
      {
        goto LABEL_38;
      }

      result += 104;
      if (v11 + 13 > v11 + 15)
      {
        goto LABEL_38;
      }

      result = compare_octet_string(result, v7);
      if (result)
      {
LABEL_13:
        v11 = *a2;
        if (*a2)
        {
          do
          {
            v12 = (v11 + 38);
            if (v11 >= v11 + 38 || v11 + 13 > v11 + 15)
            {
              goto LABEL_38;
            }

            result = compare_octet_string(v7, (v11 + 13));
            if (!result)
            {
              goto LABEL_19;
            }

            v11 = v11[34];
          }

          while (v11);
        }

        if (v10 > v6 + 184)
        {
          goto LABEL_38;
        }

        if (X509ChainGetAppleRootUsingKeyIdentifier(v6 + 168, 1))
        {
          return 0;
        }

        BAARootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier(v6 + 168);
        if (a4)
        {
          v16 = 0;
        }

        else
        {
          v16 = 524296;
        }

        if (BAARootUsingKeyIdentifier)
        {
          return 0;
        }

        else
        {
          return v16;
        }
      }

LABEL_19:
      v6 = v11;
      v13 = *a3;
      if (*a3)
      {
        while (v13 != v11)
        {
          v13 = v13[36];
          if (!v13)
          {
            goto LABEL_22;
          }
        }

        return 524297;
      }

LABEL_22:
      if ((v11 + 38) <= v12)
      {
        v14 = *v5;
        v11[36] = 0;
        v11[37] = v14;
        if (v11 <= v11 + 38)
        {
          *v14 = v11;
          *v5 = (v11 + 36);
          v7 = (v11 + 15);
          if (v11 + 15 <= v11 + 17)
          {
            continue;
          }
        }
      }

      goto LABEL_38;
    }
  }

  return result;
}

unint64_t X509ChainGetAppleRootUsingKeyIdentifier(unint64_t result, int a2)
{
  v2 = &numAppleRoots;
  if (!a2)
  {
    v2 = &numAppleProdRoots;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    for (i = &AppleRoots; ; ++i)
    {
      v6 = i + 1;
      v7 = i < &AppleRoots || v6 > AppleRootSPKIs;
      if (v7 || i > v6)
      {
        break;
      }

      v9 = *i;
      v10 = *i + 184;
      if (v10 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v4, v10);
      if (!result)
      {
        if (v9 < v9 + 304)
        {
          return v9;
        }

        break;
      }

      if (!--v3)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t X509ChainGetBAARootUsingKeyIdentifier(unint64_t result)
{
  v1 = numBAARoots;
  if (numBAARoots)
  {
    v2 = result;
    for (i = &BAARoots; ; ++i)
    {
      v4 = i + 1;
      v5 = i < &BAARoots || v4 > &SEKTestRootPublicKey;
      if (v5 || i > v4)
      {
        break;
      }

      v7 = *i;
      v8 = *i + 184;
      if (v8 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v2, v8);
      if (!result)
      {
        if (v7 < v7 + 304)
        {
          return v7;
        }

        break;
      }

      if (!--v1)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t X509ChainCheckPathWithOptions(char a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v54[4] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (a3)
  {
    v9 = *(a3 + 48);
    if (v9)
    {
      if (*(v9 + 8))
      {
        if (v8 + 208 > v8 + 224)
        {
          goto LABEL_133;
        }

        if (compare_octet_string(v9, v8 + 208))
        {
          return 327701;
        }

        v8 = *v6;
      }
    }
  }

  if (!v8)
  {
    v23 = 0;
    v21 = 0;
    v13 = -1;
    if (a3)
    {
      goto LABEL_67;
    }

    goto LABEL_120;
  }

  v50 = v6;
  v51 = a4;
  v11 = 0;
  v12 = 0;
  v52 = 0;
  v13 = -1;
  do
  {
    v14 = v8 + 304;
    v15 = *(v8 + 288);
    v16 = v15 + 304;
    if (v15)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }

    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v8 + 120, v8 + 104))
    {
      v17 = 0;
      v15 = v8;
      v16 = v8 + 304;
      goto LABEL_12;
    }

    if (!a3)
    {
      return v12 | 0x9000Du;
    }

    if (*(a3 + 16) == 1)
    {
      AppleRootUsingKeyIdentifier = X509ChainGetAppleRootUsingKeyIdentifier(v8 + 168, *(a3 + 17));
      goto LABEL_63;
    }

    if (*(a3 + 24))
    {
      AppleRootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier(v8 + 168);
LABEL_63:
      v15 = AppleRootUsingKeyIdentifier;
      v52 |= AppleRootUsingKeyIdentifier != 0;
      v16 = AppleRootUsingKeyIdentifier + 304;
      if (AppleRootUsingKeyIdentifier)
      {
        goto LABEL_11;
      }
    }

    if ((*(a3 + 19) & 1) == 0)
    {
      return v12 | 0x9000Du;
    }

    v15 = 0;
    v17 = 1;
LABEL_12:
    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (v11 && *(v8 + 32) >= 2uLL)
    {
      if ((*(v8 + 265) & 1) == 0)
      {
        v49 = 589825;
        return v12 | v49;
      }

      if ((*(v8 + 264) & 4) == 0)
      {
        v49 = 589826;
        return v12 | v49;
      }
    }

    v18 = *(v8 + 200);
    if (v18 && v18 < v11)
    {
      v49 = 589827;
      return v12 | v49;
    }

    if (*(v8 + 266) == 1)
    {
      v49 = 589831;
      return v12 | v49;
    }

    if (compare_octet_string(v8 + 40, v8 + 152))
    {
      v49 = 589828;
      return v12 | v49;
    }

    if ((v17 & 1) == 0 && *(v8 + 168) && *(v8 + 176))
    {
      if (v15 + 304 > v16 || v15 > v15 + 304 || v15 + 184 > v15 + 200)
      {
        goto LABEL_133;
      }

      if (compare_octet_string(v8 + 168, v15 + 184))
      {
        return v12 | 0x9000Au;
      }
    }

    if (a3 && v11 && (*(v8 + 240) & *(a3 + 8)) == 0)
    {
      X509PolicySetFlagsForCommonNames(v8);
    }

    if (v15 == v8 && !*(v8 + 240))
    {
      X509PolicySetFlagsForRoots(a3, v8);
      if (!a3)
      {
        goto LABEL_38;
      }
    }

    else if (!a3)
    {
      goto LABEL_38;
    }

    if (v15 != v8 && *(a3 + 18) == 1 && !X509CertificateIsValid(v8))
    {
      return v12 | 0x90009u;
    }

LABEL_38:
    if (!a3 || v11)
    {
      v13 &= *(v8 + 240);
      if (!a3)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = *(v8 + 240);
      if ((v19 & *(a3 + 8)) == 0)
      {
        X509PolicySetFlagsForMFI(v8);
        v19 = *(v8 + 240);
      }

      v13 &= v19;
    }

    v20 = *(a3 + 8);
    if (v20 && (v20 & v13) == 0)
    {
      v49 = 589829;
      return v12 | v49;
    }

LABEL_46:
    a1 |= v15 == v8;
    if ((v17 & 1) == 0)
    {
      if (v15 + 304 > v16 || v15 > v15 + 304)
      {
        goto LABEL_133;
      }

      result = X509CertificateCheckSignature(a1, v15, v8 + 16, v8 + 40);
      if (result)
      {
        return result;
      }
    }

    v21 = v11 + 1;
    if (v11 == -1)
    {
      goto LABEL_134;
    }

    v8 = *(v8 + 288);
    v12 += 256;
    ++v11;
  }

  while (v8);
  v6 = v50;
  a4 = v51;
  v23 = v52;
  if (!a3)
  {
    goto LABEL_120;
  }

LABEL_67:
  if (*a3)
  {
    v24 = v21;
    if ((v23 & 1) == 0 || (v24 = v21 + 1, v21 != -1))
    {
      if (*a3 != v24)
      {
        return (v24 << 8) | 0x90006u;
      }

      goto LABEL_71;
    }

LABEL_134:
    __break(0x5500u);
  }

LABEL_71:
  v25 = *(a3 + 24);
  if (v25 && *(v25 + 8))
  {
    v26 = v21 << 8;
    v27 = **(v6[1] + 8);
    v28 = v27 + 304;
    if ((*(a3 + 16) & 1) == 0)
    {
      memset(v54, 170, 32);
      v29 = (v27 + 88);
      v30 = v27 >= v28 || v29 > v27 + 104;
      v53[0] = 0xAAAAAAAAAAAAAAAALL;
      v53[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!v30)
      {
        if (X509CertificateParseSPKI(v29, &v54[2], v53, v54))
        {
          goto LABEL_82;
        }

        if (compare_octet_string(&v54[2], *(a3 + 32)) || compare_octet_string(v54, *(a3 + 24)))
        {
          if (X509CertificateCheckSignatureWithPublicKey(*(a3 + 24), *(a3 + 32), *(a3 + 40), v27 + 16, v27 + 40))
          {
LABEL_82:
            v31 = 589832;
            return v26 | v31;
          }
        }

        else if (!compare_octet_string(*(a3 + 32), &ecPublicKey))
        {
          compare_octet_string(v53, *(a3 + 40));
        }

        goto LABEL_120;
      }

      goto LABEL_133;
    }
  }

  else
  {
    if (*(a3 + 16) != 1)
    {
      goto LABEL_120;
    }

    v26 = v21 << 8;
    v27 = **(v6[1] + 8);
    v28 = v27 + 304;
  }

  if (v27 > v28)
  {
    goto LABEL_133;
  }

  v32 = 200;
  v33 = 184;
  if (v23)
  {
    v32 = 184;
    v33 = 168;
  }

  v34 = v27 + v33;
  v35 = v27 + v33 + 16;
  if (v35 > v27 + v32 || v34 > v35)
  {
    goto LABEL_133;
  }

  v37 = X509ChainGetAppleRootUsingKeyIdentifier(v34, *(a3 + 17));
  if (!v37)
  {
    return v26 | 0x9000Bu;
  }

  v38 = v37;
  v39 = v37 + 304;
  if ((v23 & 1) == 0)
  {
    v40 = v27 + 88 > v27 + 104 || v37 >= v39;
    v41 = v37 + 88;
    if (v40 || v41 > v37 + 104)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v27 + 88, v41))
    {
      goto LABEL_120;
    }
  }

  v43 = v27 + 16;
  v44 = v38 > v39 || v43 > v27 + 32;
  v45 = v27 + 40;
  v46 = v27 + 56;
  if (v44 || v45 > v46 || v46 > v27 + 72)
  {
LABEL_133:
    __break(0x5519u);
    goto LABEL_134;
  }

  if (X509CertificateCheckSignature(29, v38, v43, v45))
  {
    v31 = 589836;
    return v26 | v31;
  }

LABEL_120:
  result = 0;
  if (a4)
  {
    *a4 = v13;
  }

  return result;
}

void authInstalllogHandler_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_259ABF000, v0, OS_LOG_TYPE_DEBUG, "AMAuthInstall: %{public}s", v1, 0xCu);
}

void authInstalllogHandler_cold_5()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_259ABF000, v0, OS_LOG_TYPE_ERROR, "AMAuthInstall: %{public}s", v1, 0xCu);
}