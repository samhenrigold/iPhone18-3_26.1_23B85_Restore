BOOL sub_236E29C3C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_236E29C6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_236E29C98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_236E29DA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_236E29E18()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_236E29E98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BackgroundDownloaderExtensionConfiguration(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_236E29EE0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_236E29F38()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_236E29F70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E29FA8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87F10, &unk_236E84E80);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_236E2A074()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E2A0F8()
{
  v1 = type metadata accessor for AssetPack(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 40);
  if (v6 >> 60 != 15)
  {
    sub_236E38C74(*(v5 + 32), v6);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[8];
  v9 = sub_236E81AD4();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[9];
  v11 = sub_236E819F4();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  v12 = v1[12];
  v13 = sub_236E81C64();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_236E2A2A8()
{
  v1 = type metadata accessor for AssetPack(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 40);
  if (v6 >> 60 != 15)
  {
    sub_236E38C74(*(v5 + 32), v6);
  }

  v7 = v1[8];
  v8 = sub_236E81AD4();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[9];
  v10 = sub_236E819F4();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  v11 = v1[12];
  v12 = sub_236E81C64();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_236E2A444()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E2A47C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_236E2A4CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E2A514()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E2A570()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E2A5E4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_236E81AD4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_236E819F4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_236E81C64();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_236E2A750(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_236E81AD4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_236E819F4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_236E81C64();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_236E2A8D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E2A914()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_236E2A968()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236E2A9A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_236E2B75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_236E2B8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__119(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_236E2C5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_236E2C8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_236E2CB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_236E2D054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_236E2D328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_236E2D6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 120), 8);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_5(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 8, 1);
}

id BASystemLogObject(uint64_t a1)
{
  if (BASystemLogObject_onceToken != -1)
  {
    BASystemLogObject_cold_1();
  }

  v2 = BASystemLogObject_obj;

  return v2;
}

uint64_t __BASystemLogObject_block_invoke()
{
  BASystemLogObject_obj = os_log_create("com.apple.backgroundassets", "system");

  return MEMORY[0x2821F96F8]();
}

id BAClientLogObject(uint64_t a1)
{
  if (BAClientLogObject_onceToken != -1)
  {
    BAClientLogObject_cold_1();
  }

  v2 = BAClientLogObject_obj;

  return v2;
}

uint64_t __BAClientLogObject_block_invoke()
{
  BAClientLogObject_obj = os_log_create("com.apple.backgroundassets", "client");

  return MEMORY[0x2821F96F8]();
}

id BAClientConnectionLogObject(uint64_t a1)
{
  if (BAClientConnectionLogObject_onceToken != -1)
  {
    BAClientConnectionLogObject_cold_1();
  }

  v2 = BAClientConnectionLogObject_obj;

  return v2;
}

uint64_t __BAClientConnectionLogObject_block_invoke()
{
  BAClientConnectionLogObject_obj = os_log_create("com.apple.backgroundassets", "client_connection");

  return MEMORY[0x2821F96F8]();
}

__CFString *BADownloadNecessityToString(uint64_t a1)
{
  v1 = @"<Unknown>";
  if (a1 == 1)
  {
    v1 = @"Essential";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Optional";
  }
}

__CFString *BAContentRequestToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"<Unknown>";
  }

  else
  {
    return off_278A0D128[a1 - 1];
  }
}

id NSErrorWithBAErrorDomainCodeUnderlying(void *a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (a3)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11[0] = a3;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a3;
    a3 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  v8 = NSErrorWithBAErrorDomainCodeUserInfo(v5, a2, a3);

  return v8;
}

void NSErrorWithBAErrorDomainCodeUserInfo(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a2];
  if ([v5 isEqualToString:@"BAErrorDomain"])
  {
    v9 = @"BAError";
LABEL_5:
    v10 = [v7 localizedStringForKey:v8 value:0 table:v9];
    if (v6)
    {
      v11 = [v6 mutableCopy];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB38] dictionary];
    }

    v12 = v11;
    [v11 setObject:v10 forKey:*MEMORY[0x277CCA470]];
    v13 = MEMORY[0x277CCA9B8];
    v14 = [v12 copy];
    v15 = [v13 errorWithDomain:v5 code:a2 userInfo:v14];

    v16 = v15;
    return;
  }

  if ([v5 isEqualToString:@"BAURLDownloadErrorDomain"])
  {
    v9 = @"BAURLDownloadError";
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    NSErrorWithBAErrorDomainCodeUserInfo_cold_1();
  }

  qword_27DE88540 = "BUG IN BackgroundAssets: NSErrorWithBAErrorDomainCodeUserInfo() called with unsupported NSErrorDomain.";
  qword_27DE88570 = 6;
  __break(0xB001u);
}

__CFString *BAAppStoreProgressObserverStateString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unrecognized App";
  }

  else
  {
    return off_278A0D180[a1 - 1];
  }
}

void sub_236E32CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_0(double a1)
{
  *(v1 - 80) = a1;
  *(v1 - 72) = __Block_byref_object_copy__1;
  *(v1 - 64) = __Block_byref_object_dispose__1;
  *(v1 - 56) = 0;
}

void OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
}

void OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
}

id OUTLINED_FUNCTION_7_0(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 16, 1);
}

id OUTLINED_FUNCTION_8_0(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 24, 1);
}

void OUTLINED_FUNCTION_11_0()
{

  _Block_object_dispose((v0 - 96), 8);
}

void OUTLINED_FUNCTION_12_0()
{

  _Block_object_dispose((v0 - 112), 8);
}

id OUTLINED_FUNCTION_5_1(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 40, 1);
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t result, float a2)
{
  *(v3 - 128) = a2;
  v4 = v3 - 128;
  *(v4 + 4) = v2;
  *(v3 - 116) = 2114;
  *(v4 + 14) = result;
  return result;
}

id OUTLINED_FUNCTION_13(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 56, 1);
}

id OUTLINED_FUNCTION_14(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 48, 1);
}

id OUTLINED_FUNCTION_15(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 64, 1);
}

void OUTLINED_FUNCTION_18(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_INFO, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_19(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t block, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;

  dispatch_sync(v14, &block);
}

void OUTLINED_FUNCTION_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, (v5 - 128), 2u);
}

void OUTLINED_FUNCTION_21(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _os_log_impl(a1, v16, OS_LOG_TYPE_INFO, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_22(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

id ManagedDownloaderExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_236E3A334(v4, a1, *(a2 + 8), a4);
  *a3 = result;
  a3[1] = v7;
  return result;
}

void ManagedDownloaderExtension.downloads(for:manifestURL:extensionInfo:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v188 = a5;
  v189 = a4;
  *&v191 = sub_236E81AB4();
  v190 = *(v191 - 8);
  v8 = MEMORY[0x28223BE20](v191);
  v184 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v182 = &v175 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v185 = &v175 - v13;
  MEMORY[0x28223BE20](v12);
  v192 = &v175 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B00, &unk_236E84540);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v187 = (&v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v175 - v19;
  MEMORY[0x28223BE20](v18);
  v195 = &v175 - v21;
  v22 = sub_236E819F4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87A90 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v193 = sub_236E81DA4();
    v26 = __swift_project_value_buffer(v193, qword_27DE87A98);
    v27 = sub_236E820E4();
    v28 = *(v23 + 16);
    v196 = a2;
    v28(v25, a2, v22);
    v29 = a3;
    v30 = sub_236E81D84();

    v31 = os_log_type_enabled(v30, v27);
    v186 = a1;
    v194 = v20;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v197 = v26;
      v34 = v33;
      v181 = swift_slowAlloc();
      v200 = v181;
      *v32 = 136446722;
      v206 = a1;
      type metadata accessor for BAContentRequest(0);
      v35 = sub_236E81ED4();
      v37 = sub_236E381CC(v35, v36, &v200);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      sub_236E38F84(&unk_27DE87B30, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v38 = sub_236E82484();
      v40 = v39;
      (*(v23 + 8))(v25, v22);
      v41 = sub_236E381CC(v38, v40, &v200);

      *(v32 + 14) = v41;
      *(v32 + 22) = 2114;
      *(v32 + 24) = v29;
      *v34 = v29;
      v42 = v29;
      _os_log_impl(&dword_236E28000, v30, v27, "Downloads for: %{public}s manifest URL: %{public}s extension info: %{public}@", v32, 0x20u);
      sub_236E38DBC(v34, &qword_27DE88170, &qword_236E853C0);
      v43 = v34;
      v26 = v197;
      MEMORY[0x2383C0E50](v43, -1, -1);
      v44 = v181;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v44, -1, -1);
      MEMORY[0x2383C0E50](v32, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v25, v22);
    }

    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (!v45)
    {
      v76 = sub_236E82104();
      v77 = v29;
      v78 = sub_236E81D84();

      if (os_log_type_enabled(v78, v76))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138543362;
        *(v79 + 4) = v77;
        *v80 = v77;
        v81 = v77;
        _os_log_impl(&dword_236E28000, v78, v76, "The extension info “%{public}@” isn’t managed-downloader-extension info.", v79, 0xCu);
        sub_236E38DBC(v80, &qword_27DE88170, &qword_236E853C0);
        MEMORY[0x2383C0E50](v80, -1, -1);
        MEMORY[0x2383C0E50](v79, -1, -1);
      }

      if (MEMORY[0x277D84F90] >> 62 && sub_236E821E4())
      {
        sub_236E38944(MEMORY[0x277D84F90]);
      }

      return;
    }

    v46 = v45;
    v47 = v29;
    v48 = sub_236E81D84();
    v49 = sub_236E82114();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v200 = v51;
      *v50 = 136315138;
      [v46 manifestDataSource];
      v52 = sub_236E82124();
      v54 = sub_236E381CC(v52, v53, &v200);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_236E28000, v48, v49, "The managed downloader extension was launched with a manifest from “%s”.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x2383C0E50](v51, -1, -1);
      MEMORY[0x2383C0E50](v50, -1, -1);
    }

    v196 = sub_236E81A04();
    v181 = v55;
    v178 = v47;
    sub_236E818E4();
    swift_allocObject();
    v180 = sub_236E818D4();
    sub_236E818B4();
    if (qword_27DE87AB0 != -1)
    {
      swift_once();
    }

    v197 = v26;
    v56 = qword_27DE87DC0;
    v57 = sub_236E3BA24();
    v59 = v58;
    v179 = [v46 manifestDataSource];
    v60 = qword_27DE87AE8;

    if (v60 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v193, qword_27DE88410);
    v61 = sub_236E820E4();

    v62 = sub_236E81D84();

    if (os_log_type_enabled(v62, v61))
    {
      v63 = swift_slowAlloc();
      v177 = v56;
      v64 = v63;
      v193 = swift_slowAlloc();
      v200 = v193;
      *v64 = 136446722;
      v65 = v57;
      v66 = sub_236E381CC(v57, v59, &v200);

      *(v64 + 4) = v66;
      *(v64 + 12) = 2082;
      v67 = v179;
      v68 = sub_236E82124();
      v70 = sub_236E381CC(v68, v69, &v200);

      *(v64 + 14) = v70;
      v57 = v65;
      *(v64 + 22) = 1024;
      *(v64 + 24) = 1;
      _os_log_impl(&dword_236E28000, v62, v61, "Init app group ID: %{public}s source: %{public}s managed: %{BOOL}d", v64, 0x1Cu);
      v71 = v193;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v71, -1, -1);
      v72 = v64;
      v56 = v177;
      MEMORY[0x2383C0E50](v72, -1, -1);

      v20 = v194;
    }

    else
    {

      v20 = v194;
      v67 = v179;
    }

    v200 = v57;
    v201 = v59;
    LOBYTE(v202) = 1;
    v203 = v67;
    sub_236E38C10(v73, v74, v75);
    v204 = 0;
    v205 = 0;
    v82 = v196;
    v83 = v181;
    sub_236E818C4();
    v84 = v204;
    v85 = v205;

    sub_236E38C64(v84, v85);

    sub_236E38C74(v82, v83);
    v86 = v206;
    LODWORD(v196) = v207;
    v87 = v208;
    v88 = v209;
    v89 = sub_236E81D84();
    v90 = sub_236E82114();
    if (os_log_type_enabled(v89, v90))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_236E28000, v89, v90, "Installing the manifest that Background Assets provided to the managed downloader extension…", v92, 2u);
      MEMORY[0x2383C0E50](v92, -1, -1);
    }

    v200 = v86;
    LOBYTE(v201) = v196;
    v181 = v87;
    v202 = v87;
    v203 = v88;

    sub_236E3E794(&v200);
    v93 = v190;

    v94 = MEMORY[0x277D25B70];
    v95 = v191;
    v96 = v187;
    v177 = v56;
    if (v186 == 1)
    {
      v23 = 1;
      v98 = MEMORY[0x277D25B70];
    }

    else
    {
      if (v186 == 3)
      {
        v23 = 3;
        v97 = 1;
        goto LABEL_31;
      }

      v23 = v186;
      if (v186 != 2)
      {
        v200 = 0;
        v201 = 0xE000000000000000;
        sub_236E82264();
        MEMORY[0x2383BFD30](0x1000000000000017, 0x8000000236E89DF0);
        v206 = v23;
        type metadata accessor for BAContentRequest(0);
        sub_236E82304();
        MEMORY[0x2383BFD30](0x75207369209D80E2, 0xAF2E6E776F6E6B6ELL);
        v174 = 0;
        v173 = 87;
        sub_236E82344();
        __break(1u);
        return;
      }

      v98 = MEMORY[0x277D25B78];
    }

    (*(v93 + 104))(v20, *v98, v191);
    v97 = 0;
LABEL_31:
    (*(v93 + 56))(v20, v97, 1, v95);
    sub_236E38CDC(v20, v195);
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_236E821E4())
      {
        sub_236E38944(MEMORY[0x277D84F90]);
      }

      else
      {
        v99 = MEMORY[0x277D84FA0];
      }

      v95 = v191;
      v93 = v190;
      v96 = v187;
    }

    else
    {
      v99 = MEMORY[0x277D84FA0];
    }

    v206 = v99;
    sub_236E38D4C(v195, v96);
    if ((*(v93 + 48))(v96, 1, v95) == 1)
    {
      sub_236E38DBC(v96, &unk_27DE87B00, &unk_236E84540);
      v200 = v86;
      LOBYTE(v201) = v196;
      v202 = v181;
      v203 = v88;
      sub_236E36BE8(&v206, &v200, v23);
      v193 = 0;

      goto LABEL_57;
    }

    v194 = v86;
    v100 = v96;
    v101 = v192;
    (*(v93 + 32))(v192, v100, v95);
    v20 = (v93 + 16);
    v102 = v185;
    v187 = *(v93 + 16);
    v187(v185, v101, v95);
    v180 = *(v93 + 88);
    v103 = v180(v102, v95);
    if (v103 == *v94)
    {
      v104 = sub_236E81D84();
      v105 = sub_236E82114();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_236E28000, v104, v105, "Scheduling essential and prefetch asset packs for a first installation to be downloaded…", v106, 2u);
        MEMORY[0x2383C0E50](v106, -1, -1);
      }

      v108 = v183;
    }

    else
    {
      if (v103 == *MEMORY[0x277D25B78])
      {
        v109 = sub_236E81D84();
        v110 = sub_236E82114();
        v111 = os_log_type_enabled(v109, v110);
        v112 = v194;
        if (v111)
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_236E28000, v109, v110, "Scheduling essential and prefetch asset packs for a subsequent update to be downloaded…", v113, 2u);
          MEMORY[0x2383C0E50](v113, -1, -1);
        }

        v108 = v183;
        goto LABEL_48;
      }

      v114 = sub_236E82104();
      v115 = v182;
      v187(v182, v192, v95);
      v116 = v95;
      v117 = sub_236E81D84();
      LODWORD(v193) = v114;
      v118 = v114;
      v119 = v117;
      if (os_log_type_enabled(v117, v118))
      {
        v120 = swift_slowAlloc();
        v179 = v120;
        v176 = swift_slowAlloc();
        v200 = v176;
        *v120 = 136446210;
        sub_236E38F84(&unk_27DE88520, MEMORY[0x277D25B80], MEMORY[0x277D25B88]);
        v121 = sub_236E82484();
        v123 = v122;
        v124 = v115;
        v125 = *(v190 + 8);
        v125(v124, v116);
        v126 = sub_236E381CC(v121, v123, &v200);

        v127 = v179;
        *(v179 + 4) = v126;
        _os_log_impl(&dword_236E28000, v119, v193, "The installation event type “%{public}s” is unknown.", v127, 0xCu);
        v128 = v176;
        __swift_destroy_boxed_opaque_existential_0(v176);
        MEMORY[0x2383C0E50](v128, -1, -1);
        MEMORY[0x2383C0E50](v179, -1, -1);

        v129 = v191;
      }

      else
      {

        v130 = v115;
        v125 = *(v190 + 8);
        v125(v130, v95);
        v129 = v95;
      }

      v108 = v183;
      v107 = (v125)(v185, v129);
    }

    v112 = v194;
LABEL_48:
    MEMORY[0x28223BE20](v107);
    v131 = v188;
    *(&v175 - 10) = v189;
    *(&v175 - 9) = v131;
    *(&v175 - 8) = v112;
    *(&v175 - 56) = v196;
    *(&v175 - 6) = v181;
    *(&v175 - 5) = v88;
    *(&v175 - 4) = v192;
    *(&v175 - 3) = v108;
    v173 = v23;
    v132 = sub_236E37CD0(sub_236E38E70, (&v175 - 12));
    v193 = 0;
    sub_236E38EAC(v132);

    v133 = v191;
    v134 = v184;
    v135 = v180;
    v187(v184, v192, v191);
    if (v135(v134, v133) == *MEMORY[0x277D25B78])
    {
      v136 = *(v190 + 8);
      v136(v134, v133);
      v200 = v112;
      LOBYTE(v201) = v196;
      v202 = v181;
      v203 = v88;
      v137 = v193;
      sub_236E36BE8(&v206, &v200, v23);
      v193 = v137;
      if (v137)
      {

        v138 = sub_236E820F4();
        v139 = v193;
        v140 = v193;
        v141 = sub_236E81D84();

        if (os_log_type_enabled(v141, v138))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          *v142 = 138543362;
          v144 = v193;
          v145 = v193;
          v146 = _swift_stdlib_bridgeErrorToNSError();
          *(v142 + 4) = v146;
          *v143 = v146;
          _os_log_impl(&dword_236E28000, v141, v138, "Update downloads couldn’t be added: %{public}@", v142, 0xCu);
          sub_236E38DBC(v143, &qword_27DE88170, &qword_236E853C0);
          MEMORY[0x2383C0E50](v143, -1, -1);
          MEMORY[0x2383C0E50](v142, -1, -1);
        }

        else
        {
        }

        v193 = 0;
      }

      else
      {
      }

      v136(v192, v191);
    }

    else
    {

      v147 = *(v190 + 8);
      v147(v134, v133);
      v147(v192, v133);
    }

LABEL_57:
    v190 = v206;
    if ((v206 & 0xC000000000000001) != 0)
    {

      sub_236E821D4();
      sub_236E38E1C();
      sub_236E38F84(&qword_27DE87B20, sub_236E38E1C, MEMORY[0x277D85378]);
      sub_236E820C4();
      v149 = v200;
      a3 = v201;
      a2 = v202;
      a1 = v203;
      v25 = v204;
    }

    else
    {
      v150 = -1 << *(v206 + 32);
      a3 = (v206 + 56);
      a2 = ~v150;
      v151 = -v150;
      v152 = v151 < 64 ? ~(-1 << v151) : -1;
      v25 = (v152 & *(v206 + 56));
      a1 = 0;
    }

    v189 = a2;
    v22 = (a2 + 64) >> 6;
    *&v148 = 136446466;
    v191 = v148;
    v192 = a3;
    if (v149 < 0)
    {
      break;
    }

    while (1)
    {
      v156 = a1;
      v157 = v25;
      v155 = a1;
      if (!v25)
      {
        break;
      }

LABEL_70:
      v23 = (v157 - 1) & v157;
      v154 = *(*(v149 + 48) + ((v155 << 9) | (8 * __clz(__rbit64(v157)))));
LABEL_71:
      if (!v154)
      {
        goto LABEL_83;
      }

      v158 = v154;
      a2 = sub_236E81D84();
      v20 = sub_236E82114();

      if (os_log_type_enabled(a2, v20))
      {
        v159 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        v199 = v194;
        *v159 = v191;
        v160 = [v158 isEssential];
        v161 = v160 == 0;
        if (v160)
        {
          v162 = 0x6169746E65737365;
        }

        else
        {
          v162 = 0x6863746566657270;
        }

        v196 = v23;
        if (v161)
        {
          v163 = 0xE800000000000000;
        }

        else
        {
          v163 = 0xE90000000000006CLL;
        }

        v164 = sub_236E381CC(v162, v163, &v199);

        *(v159 + 4) = v164;
        *(v159 + 12) = 2082;
        v165 = [v158 identifier];
        v23 = sub_236E81E94();
        v166 = v22;
        v167 = v149;
        v169 = v168;

        v170 = sub_236E381CC(v23, v169, &v199);
        v149 = v167;
        v22 = v166;

        *(v159 + 14) = v170;
        _os_log_impl(&dword_236E28000, a2, v20, "Scheduling the %{public}s asset pack with the ID “%{public}s” to be downloaded…", v159, 0x16u);
        v171 = v194;
        swift_arrayDestroy();
        MEMORY[0x2383C0E50](v171, -1, -1);
        v172 = v159;
        a3 = v192;
        MEMORY[0x2383C0E50](v172, -1, -1);

        a1 = v155;
        v25 = v196;
        if (v149 < 0)
        {
          goto LABEL_64;
        }
      }

      else
      {

        a1 = v155;
        v25 = v23;
        if (v149 < 0)
        {
          goto LABEL_64;
        }
      }
    }

    while (1)
    {
      v155 = v156 + 1;
      if (__OFADD__(v156, 1))
      {
        break;
      }

      if (v155 >= v22)
      {
        goto LABEL_83;
      }

      v157 = *&a3[8 * v155];
      ++v156;
      if (v157)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
  }

LABEL_64:
  v153 = sub_236E82204();
  if (v153)
  {
    v198 = v153;
    sub_236E38E1C();
    swift_dynamicCast();
    v154 = v199;
    v155 = a1;
    v23 = v25;
    goto LABEL_71;
  }

LABEL_83:
  sub_236E38DBC(v195, &unk_27DE87B00, &unk_236E84540);

  sub_236E38E68(v149);
}

uint64_t sub_236E3660C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t *a5@<X8>, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B90, &unk_236E848C0);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88530, &qword_236E86200) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_236E84530;
  v12 = v11 + v10;
  v13 = sub_236E81AB4();
  v26 = *(*(v13 - 8) + 16);
  v26(v12, a2, v13);
  v14 = *MEMORY[0x277D25B98];
  v15 = sub_236E81AC4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 104);
  v17(v12, v14, v15);
  v18 = *(v16 + 56);
  v18(v12, 0, 1, v15);
  v26(v12 + v9, a2, v13);
  v17(v12 + v9, *MEMORY[0x277D25B90], v15);
  v18(v12 + v9, 0, 1, v15);
  v19 = sub_236E6FE9C(v11);

  v20 = sub_236E7B708(v19, a1);

  v21 = sub_236E368D8(a3, a6, a7);
  v23 = sub_236E7A938(v21, v22, v20);

  v24 = sub_236E7871C(v23, a4);

  *a5 = v24;
  return result;
}

uint64_t (*sub_236E368D8(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_236E392DC;
}

void sub_236E369F8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_236E821D4();
    sub_236E38E1C();
    sub_236E38F84(&qword_27DE87B20, sub_236E38E1C, MEMORY[0x277D85378]);
    sub_236E820C4();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_236E38E68(v1);
      return;
    }

    while (1)
    {
      sub_236E53944(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_236E82204())
      {
        sub_236E38E1C();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_236E36BE8(uint64_t *a1, NSObject **a2, NSObject *a3)
{
  v3 = *a2;
  v27 = *(a2 + 8);
  v4 = a2[3];
  v26 = a2[2];
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v5 = sub_236E81DA4();
  __swift_project_value_buffer(v5, qword_27DE87A98);
  v6 = sub_236E820E4();

  v7 = sub_236E81D84();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136446722;
    sub_236E38E1C();
    sub_236E38F84(&qword_27DE87B20, sub_236E38E1C, MEMORY[0x277D85378]);
    v10 = sub_236E820A4();
    v12 = sub_236E381CC(v10, v11, &v34);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;

    sub_236E82264();

    v31 = 0x8000000236E89E50;
    type metadata accessor for AssetPack(0);
    sub_236E38F84(&qword_27DE88020, type metadata accessor for AssetPack, &protocol conformance descriptor for AssetPack);
    v13 = sub_236E820A4();
    MEMORY[0x2383BFD30](v13);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);

    v14 = sub_236E381CC(0xD000000000000024, 0x8000000236E89E50, &v34);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2082;
    v30 = a3;
    type metadata accessor for BAContentRequest(0);
    v15 = sub_236E81ED4();
    v17 = sub_236E381CC(v15, v16, &v34);

    *(v8 + 24) = v17;
    _os_log_impl(&dword_236E28000, v7, v6, "Add update downloads to: %{public}s for: %{public}s content request: %{public}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v9, -1, -1);
    MEMORY[0x2383C0E50](v8, -1, -1);
  }

  v18 = sub_236E81D84();
  v19 = sub_236E82114();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_236E28000, v18, v19, "Checking for asset-pack updates…", v20, 2u);
    MEMORY[0x2383C0E50](v20, -1, -1);
  }

  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v30 = v3;
  LOBYTE(v31) = v27;
  v32 = v26;
  v33 = v4;
  v21 = sub_236E4741C(&v30, a3);
  if (!v28)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = v21;
      if (!sub_236E821E4())
      {
        goto LABEL_14;
      }
    }

    else
    {
      v22 = v21;
      if (!*(v21 + 16))
      {
LABEL_14:
        v23 = sub_236E81D84();
        v24 = sub_236E82114();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_236E28000, v23, v24, "All asset packs are up to date.", v25, 2u);
          MEMORY[0x2383C0E50](v25, -1, -1);
        }
      }
    }

    sub_236E369F8(v22);
  }
}

uint64_t ManagedDownloaderExtension.backgroundDownload(_:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE88500, qword_236E866C0);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E37164, 0, 0);
}

uint64_t sub_236E37164()
{
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[21];
  v3 = sub_236E81DA4();
  __swift_project_value_buffer(v3, qword_27DE87A98);
  v4 = sub_236E820E4();
  v5 = v1;
  v6 = v2;
  v7 = sub_236E81D84();

  if (os_log_type_enabled(v7, v4))
  {
    v9 = v0[20];
    v8 = v0[21];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2114;
    *(v10 + 14) = v8;
    *v11 = v9;
    v11[1] = v8;
    v12 = v9;
    v13 = v8;
    _os_log_impl(&dword_236E28000, v7, v4, "Background download: %{public}@ did receive: %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88170, &qword_236E853C0);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v10, -1, -1);
  }

  v14 = v0[25];
  v15 = v0[26];
  v16 = v0[24];
  v22 = v0[20];
  v23 = v0[21];

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v0[27] = v19;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236E374C4;
  swift_continuation_init();
  v0[17] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87B40, &qword_236E84560);
  sub_236E81FD4();
  (*(v14 + 32))(boxed_opaque_existential_0, v15, v16);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236E37620;
  v0[13] = &block_descriptor;
  [v19 download:v22 didReceiveChallenge:v23 completionHandler:v0 + 10];
  (*(v14 + 8))(boxed_opaque_existential_0, v16);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236E374C4()
{

  return MEMORY[0x2822009F8](sub_236E375A4, 0, 0);
}

uint64_t sub_236E375A4()
{
  v1 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_236E37620(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE88500, qword_236E866C0);
  return sub_236E81FE4();
}

void ManagedDownloaderExtension.backgroundDownload(_:failedWithError:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v6 = sub_236E81DA4();
  __swift_project_value_buffer(v6, qword_27DE87A98);
  v7 = sub_236E820E4();
  v8 = a1;
  v9 = a2;
  v10 = sub_236E81D84();

  if (os_log_type_enabled(v10, v7))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543618;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2114;
    v13 = v8;
    v14 = a2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    v12[1] = v15;
    _os_log_impl(&dword_236E28000, v10, v7, "Background download: %{public}@ failed with error: %{public}@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88170, &qword_236E853C0);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v12, -1, -1);
    MEMORY[0x2383C0E50](v11, -1, -1);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = sub_236E81984();
  [v18 download:v8 failedWithError:v19];
  swift_unknownObjectRelease();
}

void ManagedDownloaderExtension.backgroundDownload(_:finishedWithFileURL:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v7 = sub_236E819F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v11 = sub_236E81DA4();
  __swift_project_value_buffer(v11, qword_27DE87A98);
  v12 = sub_236E820E4();
  (*(v8 + 16))(v10, a2, v7);
  v13 = a1;
  v14 = sub_236E81D84();

  v30 = v12;
  if (os_log_type_enabled(v14, v12))
  {
    v15 = swift_slowAlloc();
    v29[1] = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29[2] = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = v19;
    *v16 = 138543618;
    *(v16 + 4) = v13;
    *v18 = v13;
    *(v16 + 12) = 2082;
    sub_236E38F84(&unk_27DE87B30, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v20 = v13;
    v21 = sub_236E82484();
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    v24 = sub_236E381CC(v21, v23, &v32);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_236E28000, v14, v30, "Background download: %{public}@ finished with file URL: %{public}s", v16, 0x16u);
    sub_236E38DBC(v18, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x2383C0E50](v19, -1, -1);
    MEMORY[0x2383C0E50](v16, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v28 = sub_236E819B4();
  [v27 download:v13 finishedWithFileURL:v28];
  swift_unknownObjectRelease();
}

uint64_t sub_236E37C50()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE87A98);
  __swift_project_value_buffer(v0, qword_27DE87A98);
  return sub_236E81D94();
}

uint64_t sub_236E37CD0(void (*a1)(void *__return_ptr, void), uint64_t a2)
{
  v43 = sub_236E81CF4();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_236E81C94();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v8 = sub_236E81DA4();
  __swift_project_value_buffer(v8, qword_27DE87DC8);
  v9 = sub_236E820E4();
  v10 = sub_236E81D84();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = v5;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_236E381CC(0x6F6974636E754628, 0xEA0000000000296ELL, &v46);
    _os_log_impl(&dword_236E28000, v10, v9, "With versions of all downloaded asset packs: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2383C0E50](v13, -1, -1);
    v14 = v12;
    v5 = v11;
    MEMORY[0x2383C0E50](v14, -1, -1);
  }

  result = sub_236E81BB4();
  if (!v2)
  {
    v35 = 0;
    v16 = *(result + 16);
    if (v16)
    {
      v33[2] = a2;
      v34 = a1;
      v46 = MEMORY[0x277D84F90];
      v17 = result;
      sub_236E56828(0, v16, 0);
      v18 = v46;
      v19 = *(v44 + 16);
      v20 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v33[1] = v17;
      v21 = v17 + v20;
      v38 = *(v44 + 72);
      v39 = v19;
      v44 += 16;
      v36 = (v44 - 8);
      v37 = (v5 + 8);
      do
      {
        v22 = v40;
        v23 = v41;
        v39(v40, v21, v41);
        v24 = v42;
        sub_236E81C84();
        v45 = sub_236E81CA4();
        v26 = v25;
        (*v37)(v24, v43);
        v27 = sub_236E81C74();
        (*v36)(v22, v23);
        v46 = v18;
        v29 = *(v18 + 16);
        v28 = *(v18 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_236E56828((v28 > 1), v29 + 1, 1);
          v18 = v46;
        }

        *(v18 + 16) = v29 + 1;
        v30 = (v18 + 24 * v29);
        v30[4] = v45;
        v30[5] = v26;
        v30[6] = v27;
        v21 += v38;
        --v16;
      }

      while (v16);

      a1 = v34;
      if (*(v18 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_12:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88040, &qword_236E85140);
        v31 = sub_236E82384();
        goto LABEL_15;
      }
    }

    v31 = MEMORY[0x277D84F98];
LABEL_15:
    v46 = v31;
    v32 = v35;
    sub_236E56ABC(v18, 1, &v46);
    if (v32)
    {

      __break(1u);
    }

    else
    {

      a1(&v47, v46);

      return v47;
    }
  }

  return result;
}

uint64_t sub_236E3818C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_236E39260(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_236E381CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_236E38298(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_236E3908C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_236E38298(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_236E383A4(a5, a6);
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
    result = sub_236E822A4();
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

void *sub_236E383A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_236E383F0(a1, a2);
  sub_236E38520(&unk_2849D8740);
  return v3;
}

void *sub_236E383F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_236E6D748(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_236E822A4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_236E81F34();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_236E6D748(v10, 0);
        result = sub_236E82254();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_236E38520(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_236E3860C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_236E3860C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87BA0, &unk_236E848D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t _s16BackgroundAssets26ManagedDownloaderExtensionPAAE14shouldDownloadySbAA9AssetPackVF_0(uint64_t a1)
{
  v2 = type metadata accessor for AssetPack(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v5 = sub_236E81DA4();
  __swift_project_value_buffer(v5, qword_27DE87A98);
  v6 = sub_236E820E4();
  sub_236E393B0(a1, v4);
  v7 = sub_236E81D84();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = AssetPack.description.getter();
    v12 = v11;
    sub_236E39414(v4);
    v13 = sub_236E381CC(v10, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_236E28000, v7, v6, "Should download: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2383C0E50](v9, -1, -1);
    MEMORY[0x2383C0E50](v8, -1, -1);
  }

  else
  {

    sub_236E39414(v4);
  }

  return 1;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_236E38944(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_236E821E4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87BB0, &qword_236E85020);
      v3 = sub_236E82244();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_236E821E4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x2383C0080](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_236E82134();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_236E38E1C();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_236E82144();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_236E82134();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_236E38E1C();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_236E82144();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_236E38C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE87B10;
  if (!qword_27DE87B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE87B10);
  }

  return result;
}

uint64_t sub_236E38C64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_236E38C74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_236E38CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B00, &unk_236E84540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E38D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B00, &unk_236E84540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E38DBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_236E38E1C()
{
  result = qword_27DE88510;
  if (!qword_27DE88510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE88510);
  }

  return result;
}

void sub_236E38EAC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_236E821E4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2383C0080](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_236E53944(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_236E38F84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_236E3908C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_236E39260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_236E393B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPack(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236E39414(uint64_t a1)
{
  v2 = type metadata accessor for AssetPack(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_236E39498(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id BADownloaderExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_236E3A334(v4, a1, a2, a4);
  *a3 = result;
  a3[1] = v7;
  return result;
}

id sub_236E397A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_236E819F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E819C4();
  v12 = a5;
  v13 = a1;
  sub_236E39720(a3, v11, v12);

  (*(v9 + 8))(v11, v8);
  sub_236E38E1C();
  sub_236E3AA4C();
  v14 = sub_236E82094();

  return v14;
}

uint64_t sub_236E398F0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_236E82034();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;
  v15 = a1;
  v16 = a2;

  sub_236E5B828(0, 0, v11, &unk_236E84C60, v13);
}

uint64_t sub_236E39A2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v12 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v15 = (*(v11 + 24) + **(v11 + 24));
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_236E39BB4;

  return v15(a5, a6, v12, v11);
}

uint64_t sub_236E39BB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return MEMORY[0x2822009F8](sub_236E39CB4, 0, 0);
}

uint64_t sub_236E39CB4()
{
  v1 = *(v0 + 48);
  (*(v0 + 16))(*(v0 + 40), v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_236E39D24(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  sub_236E398F0(v10, v11, sub_236E3AA34, v9);
}

void sub_236E39E60(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a4;
  v7 = a1;
  sub_236E39DE0(v6, v8);
}

uint64_t sub_236E39F54(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_236E819F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E819C4();
  v10 = a3;
  v11 = a1;
  sub_236E39ED4(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_236E3A0D0(void *a1)
{
  v1 = a1;
  sub_236E3A050();
}

id sub_236E3A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _BackgroundDownloadHandler(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_236E3A22C(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  (*(*(v4 - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, v4);
  v6 = type metadata accessor for _BackgroundDownloadHandler(0, v4, *((v3 & v2) + 0x58), v5);
  v8.receiver = v1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_236E3A334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BackgroundDownloadHandler(0, a2, a3, a4);
  v12 = sub_236E3A2F8(a1, v5, v6, v7);
  v8 = objc_allocWithZone(BADownloaderExtensionConnection);
  v9 = v12;
  v10 = [v8 initWithPrincipalObject_];

  swift_unknownObjectRelease();
  return v10;
}

uint64_t dispatch thunk of BADownloaderExtension.backgroundDownload(_:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_236E3A518;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_236E3A518(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_236E3A65C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_236E3A720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_236E3A774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_236E3A7BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_236E3A7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_236E3A834(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_236E3A910;

  return sub_236E39A2C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_236E3A910()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_236E3AA4C()
{
  result = qword_27DE87B20;
  if (!qword_27DE87B20)
  {
    sub_236E38E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE87B20);
  }

  return result;
}

unint64_t AssetPackManager.DownloadStatusUpdate.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AssetPack(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E57598(v1, v7, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_236E57708(v7, v4, type metadata accessor for AssetPack);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_236E82264();

      v9 = 0x8000000236E89FE0;
      v10 = 0xD000000000000022;
    }

    else
    {
      sub_236E57708(v7, v4, type metadata accessor for AssetPack);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_236E82264();

      v9 = 0x8000000236E8A010;
      v10 = 0xD000000000000021;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v11 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE881A0, &qword_236E85480) + 48)];
    sub_236E57708(v7, v4, type metadata accessor for AssetPack);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_236E82264();

    v23 = 0xD000000000000027;
    v24 = 0x8000000236E89FB0;
    v12 = AssetPack.description.getter();
    MEMORY[0x2383BFD30](v12);

    MEMORY[0x2383BFD30](32, 0xE100000000000000);
    v13 = [v11 description];
    v14 = sub_236E81E94();
    v16 = v15;

    MEMORY[0x2383BFD30](v14, v16);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_236E57708(v7, v4, type metadata accessor for AssetPack);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_236E82264();

      v9 = 0x8000000236E89F80;
      v10 = 0xD000000000000024;
LABEL_10:
      v23 = v10;
      v24 = v9;
      v19 = AssetPack.description.getter();
      MEMORY[0x2383BFD30](v19);

      MEMORY[0x2383BFD30](62, 0xE100000000000000);
      goto LABEL_11;
    }

    v17 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DE0, &unk_236E84C80) + 48)];
    sub_236E57708(v7, v4, type metadata accessor for AssetPack);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_236E82264();
    MEMORY[0x2383BFD30](0xD000000000000022, 0x8000000236E89F50);
    v18 = AssetPack.description.getter();
    MEMORY[0x2383BFD30](v18);

    MEMORY[0x2383BFD30](32, 0xE100000000000000);
    swift_getErrorValue();
    sub_236E824C4();
    MEMORY[0x2383BFD30](62, 0xE100000000000000);
  }

LABEL_11:
  v20 = v23;
  sub_236E56DCC(v4, type metadata accessor for AssetPack);
  return v20;
}

NSObject *sub_236E3AF30()
{
  type metadata accessor for AssetPackManager(0);
  swift_allocObject();
  result = sub_236E3BE54();
  qword_27DE87DC0 = result;
  return result;
}

uint64_t static AssetPackManager.shared.getter()
{
  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_236E3B000()
{
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  __swift_project_value_buffer(v1, qword_27DE87DC8);
  v2 = sub_236E820E4();
  v3 = sub_236E81D84();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236E28000, v3, v2, "All asset packs", v4, 2u);
    MEMORY[0x2383C0E50](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_236E3B15C;

  return sub_236E599E0(v0 + 16);
}

uint64_t sub_236E3B15C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_236E3B2F4;
  }

  else
  {
    v4 = sub_236E3B288;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_236E3B288()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_236E3B32C()
{
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  __swift_project_value_buffer(v1, qword_27DE87DC8);
  v2 = sub_236E820E4();
  v3 = sub_236E81D84();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236E28000, v3, v2, "All asset pack records", v4, 2u);
    MEMORY[0x2383C0E50](v4, -1, -1);
  }

  v5 = sub_236E820D4();
  v6 = sub_236E81D84();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_236E28000, v6, v5, "Retrieving all asset-pack records…", v7, 2u);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  v8 = *(v0 + 16);

  v9 = *(v8 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  v10 = *(v8 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID + 8);
  v11 = v8 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID;
  v12 = *(v8 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  v13 = *(v11 + 8);
  v14 = swift_task_alloc();
  *(v0 + 24) = v14;
  *v14 = v0;
  v14[1] = sub_236E3B528;

  return MEMORY[0x282184AE0](v9, v10, v12, v13, 0);
}

uint64_t sub_236E3B528(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

NSObject *sub_236E3B628()
{
  v39 = sub_236E81CF4();
  v1 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_236E81C94();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v5 = sub_236E81DA4();
  __swift_project_value_buffer(v5, qword_27DE87DC8);
  v6 = sub_236E820E4();
  v7 = sub_236E81D84();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_236E28000, v7, v6, "IDs of downloaded asset packs", v8, 2u);
    MEMORY[0x2383C0E50](v8, -1, -1);
  }

  v9 = sub_236E820D4();
  v10 = sub_236E81D84();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_236E28000, v10, v9, "Retrieving all asset-pack records…", v11, 2u);
    MEMORY[0x2383C0E50](v11, -1, -1);
  }

  v12 = sub_236E81BB4();
  if (!v0)
  {
    v30[2] = 0;
    v13 = *(v12 + 16);
    if (v13)
    {
      v40 = MEMORY[0x277D84F90];
      v14 = v12;
      sub_236E56848(0, v13, 0);
      v15 = v40;
      v17 = *(v3 + 16);
      v16 = v3 + 16;
      v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
      v30[1] = v14;
      v19 = v14 + v18;
      v33 = *(v16 + 56);
      v34 = v17;
      v35 = v16;
      v31 = (v16 - 8);
      v32 = (v1 + 8);
      do
      {
        v21 = v36;
        v20 = v37;
        v34(v36, v19, v37);
        v22 = v38;
        sub_236E81C84();
        v23 = sub_236E81CA4();
        v25 = v24;
        (*v32)(v22, v39);
        (*v31)(v21, v20);
        v40 = v15;
        v27 = *(v15 + 16);
        v26 = *(v15 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_236E56848((v26 > 1), v27 + 1, 1);
          v15 = v40;
        }

        *(v15 + 16) = v27 + 1;
        v28 = v15 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v19 += v33;
        --v13;
      }

      while (v13);
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    v10 = sub_236E56D34(v15);
  }

  return v10;
}

uint64_t sub_236E3BA24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87EC8, &qword_236E84D48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3];
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v5 = sub_236E81DA4();
  __swift_project_value_buffer(v5, qword_27DE87DC8);
  v6 = sub_236E820E4();
  v7 = sub_236E81D84();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_236E28000, v7, v6, "App group ID", v8, 2u);
    MEMORY[0x2383C0E50](v8, -1, -1);
  }

  sub_236E593A8(v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo, v4, &unk_27DE87EC8, &qword_236E84D48);
  v9 = sub_236E81D74();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    goto LABEL_15;
  }

  sub_236E38DBC(v4, &unk_27DE87EC8, &qword_236E84D48);
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 infoDictionary];

  if (!v12)
  {
    goto LABEL_12;
  }

  v9 = MEMORY[0x277D84F70];
  v13 = sub_236E81E64();

  if (!*(v13 + 16))
  {
    goto LABEL_11;
  }

  v14 = sub_236E7B334(0x6F72477070414142, 0xEC00000044497075);
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_236E3908C(*(v13 + 56) + 32 * v14, v21);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v4 = sub_236E82104();
    v17 = sub_236E81D84();
    if (os_log_type_enabled(v17, v4))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_236E28000, v17, v4, "The main bundle’s info dictionary lacks a string value for the key “BAAppGroupID”.", v18, 2u);
      MEMORY[0x2383C0E50](v18, -1, -1);
    }

    sub_236E82344();
    __break(1u);
LABEL_15:
    v16 = sub_236E81D04();
    (*(v10 + 8))(v4, v9);
    return v16;
  }

  v16 = v20;
  if ((os_variant_allows_internal_security_policies() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  return v16;
}

uint64_t sub_236E3BDD4()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE87DC8);
  __swift_project_value_buffer(v0, qword_27DE87DC8);
  return sub_236E81D94();
}

NSObject *sub_236E3BE54()
{
  v1 = v0;
  v140 = *MEMORY[0x277D85DE8];
  v2.isa = v0->isa;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v117 - v4;
  v129 = sub_236E81E34();
  v128 = *(v129 - 1);
  MEMORY[0x28223BE20](v129);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87EC8, &qword_236E84D48);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v126 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v133 = &v117 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v130 = &v117 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v125 = &v117 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v120 = (&v117 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v121 = (&v117 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v124 = (&v117 - v22);
  MEMORY[0x28223BE20](v21);
  v24 = &v117 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87EF0, &qword_236E84E30);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v117 - v27;
  swift_defaultActor_initialize();
  v29 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_statusUpdates;
  if (qword_27DE87AC0 != -1)
  {
    swift_once();
  }

  v127 = v7;
  v30 = *(v26 + 16);
  v132 = qword_27DE8B0F0;
  v30(v28, qword_27DE8B0F0 + OBJC_IVAR____TtC16BackgroundAssets29SystemDownloadManagerDelegate_stream, v25);
  sub_236E58664(&qword_27DE87EF8, &qword_27DE87EF0, &qword_236E84E30, MEMORY[0x277D857C0]);
  v31 = sub_236E82084();
  (*(v26 + 8))(v28, v25);
  *(&v1->isa + v29) = v31;
  v32 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference;
  v33 = v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference;
  v34 = swift_unknownObjectWeakInit();
  *(&v1->isa + v32) = 0;
  *(v33 + 1) = 0;
  sub_236E59410(v34, (v33 + 8));
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v35 = sub_236E81DA4();
  v36 = __swift_project_value_buffer(v35, qword_27DE87DC8);
  v37 = sub_236E820E4();
  v38 = sub_236E81D84();
  if (os_log_type_enabled(v38, v37))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_236E28000, v38, v37, "Init", v31, 2u);
    MEMORY[0x2383C0E50](v31, -1, -1);
  }

  v39 = sub_236E81D84();
  v40 = sub_236E82114();
  if (os_log_type_enabled(v39, v40))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_236E28000, v39, v40, "Initializing the asset-pack manager…", v31, 2u);
    MEMORY[0x2383C0E50](v31, -1, -1);
  }

  v41 = [objc_opt_self() mainBundle];
  v42 = [v41 bundleIdentifier];

  if (!v42)
  {
    goto LABEL_60;
  }

  v43 = sub_236E81E94();
  v45 = v44;

  v46 = SecTaskCreateFromSelf(0);
  if (!v46)
  {
    v102 = sub_236E82104();
    v1 = sub_236E81D84();
    if (os_log_type_enabled(v1, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_236E28000, v1, v102, "A security task couldn’t be created.", v103, 2u);
      MEMORY[0x2383C0E50](v103, -1, -1);
    }

    goto LABEL_59;
  }

  v47 = v46;
  v139 = 0;
  v48 = SecTaskCopyTeamIdentifier();
  v135 = v36;
  v122 = v5;
  if (v48)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v137 = 0;
      v138 = 0;
      sub_236E81E84();

      v48 = v138;
      if (v138)
      {
        v49 = v137;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v49 = 0;
    v48 = 0;
  }

  else
  {
    v49 = 0;
  }

LABEL_18:
  if (v139)
  {
    v104 = v139;
    v105 = sub_236E820F4();
    v1 = v104;
    v106 = sub_236E81D84();

    if (os_log_type_enabled(v106, v105))
    {
      v107 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v107 = 138543362;
      type metadata accessor for CFError(0);
      sub_236E57620(&qword_27DE88068, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      swift_allocError();
      *v108 = v1;
      v109 = v1;
      v110 = _swift_stdlib_bridgeErrorToNSError();
      *(v107 + 4) = v110;
      *v31 = v110;
      _os_log_impl(&dword_236E28000, v106, v105, "The team ID couldn’t be copied: %{public}@", v107, 0xCu);
      sub_236E38DBC(v31, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v31, -1, -1);
      MEMORY[0x2383C0E50](v107, -1, -1);
    }

    v137 = 0;
    v138 = 0xE000000000000000;
    sub_236E82264();
    MEMORY[0x2383BFD30](0x1000000000000022, 0x8000000236E8A6D0);
    v136 = v1;
    type metadata accessor for CFError(0);
    sub_236E82304();
    goto LABEL_60;
  }

  v131 = v47;
  if (!v48)
  {
    if (os_variant_allows_internal_security_policies())
    {
      v50 = sub_236E81D84();
      v51 = sub_236E82114();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_236E28000, v50, v51, "The executable lacks a team ID, but internal security policies are allowed.", v52, 2u);
        MEMORY[0x2383C0E50](v52, -1, -1);
      }

      goto LABEL_24;
    }

    v111 = sub_236E82104();
    v1 = sub_236E81D84();
    if (os_log_type_enabled(v1, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_236E28000, v1, v111, "The process lacks a team ID.", v112, 2u);
      MEMORY[0x2383C0E50](v112, -1, -1);
    }

LABEL_59:

    goto LABEL_60;
  }

LABEL_24:
  isa = v2.isa;
  v53 = (v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_teamID);
  *v53 = v49;
  v53[1] = v48;
  sub_236E81C54();
  v54 = sub_236E81C44();
  v134 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper;
  *(&v1->isa + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper) = v54;

  sub_236E81C24();
  v117 = v43;
  v119 = v45;

  v31 = sub_236E81D74();
  v55 = *(v31 - 1);
  (*(v55 + 56))(v24, 0, 1, v31);
  v56 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo;
  sub_236E59508(v24, v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo, &unk_27DE87EC8, &qword_236E84D48);
  v57 = v124;
  sub_236E593A8(v1 + v56, v124, &unk_27DE87EC8, &qword_236E84D48);
  v24 = *(v55 + 48);
  v58 = (v24)(v57, 1, v31);
  v118 = v55;
  if (v58 == 1)
  {
LABEL_25:
    sub_236E38DBC(v57, &unk_27DE87EC8, &qword_236E84D48);
    goto LABEL_29;
  }

  v59 = sub_236E81D44();
  v60 = v55;
  v61 = v59;
  v62 = *(v60 + 8);
  (v62)(v57, v31);
  if (v61)
  {
    v124 = v62;
    v57 = v121;
    sub_236E593A8(v1 + v56, v121, &unk_27DE87EC8, &qword_236E84D48);
    if ((v24)(v57, 1, v31) == 1)
    {
      goto LABEL_25;
    }

    v63 = sub_236E81D54();
    (v124)(v57, v31);
    if (v63)
    {
      while (1)
      {
        v113 = v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo;
        v1 = v120;
        sub_236E593A8(v113, v120, &unk_27DE87EC8, &qword_236E84D48);
        if ((v24)(v1, 1, v31) == 1)
        {
          sub_236E38DBC(v120, &unk_27DE87EC8, &qword_236E84D48);
        }

        else
        {
          v114 = v120;
          v1 = sub_236E81D64();
          v116 = v115;
          (v124)(v114, v31);
          if (v116)
          {
            v137 = 0;
            v138 = 0xE000000000000000;
            sub_236E82264();
            MEMORY[0x2383BFD30](0x1000000000000013, 0x8000000236E8A800);
            MEMORY[0x2383BFD30](v1, v116);
            MEMORY[0x2383BFD30](0x100000000000002BLL, 0x8000000236E8A820);
          }
        }

LABEL_60:
        sub_236E82344();
        __break(1u);
      }
    }
  }

LABEL_29:
  v64 = v125;
  sub_236E593A8(v1 + v56, v125, &unk_27DE87EC8, &qword_236E84D48);
  if ((v24)(v64, 1, v31) == 1)
  {
    sub_236E38DBC(v64, &unk_27DE87EC8, &qword_236E84D48);
    v65 = v119;

    v66 = v65;
    v67 = v117;
  }

  else
  {
    v67 = sub_236E81D14();
    v66 = v68;
    (*(v118 + 8))(v64, v31);
  }

  v69 = (v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_bundleID);
  *v69 = v67;
  v69[1] = v66;

  v70 = v127;
  sub_236E81BF4();

  (*(v128 + 32))(v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_stagingDirectoryPath, v70, v129);
  v72 = *v53;
  v71 = v53[1];
  v73 = v130;
  sub_236E593A8(v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo, v130, &unk_27DE87EC8, &qword_236E84D48);
  v74 = sub_236E81D74();
  v75 = *(v74 - 8);
  v129 = *(v75 + 48);
  v76 = v129(v73, 1, v74);

  if (v76 == 1)
  {
    sub_236E38DBC(v73, &unk_27DE87EC8, &qword_236E84D48);
    v77 = 0;
    v78 = 0;
  }

  else
  {
    v77 = sub_236E81D04();
    v78 = v79;
    (*(v75 + 8))(v73, v74);
  }

  v80 = *(&v1->isa + v134);
  type metadata accessor for ManifestCache();
  v81 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v81 + 112) = 0u;
  *(v81 + 128) = 0u;
  *(v81 + 144) = v72;
  *(v81 + 152) = v71;
  *(v81 + 160) = v77;
  *(v81 + 168) = v78;
  *(v81 + 176) = v80;
  *(&v1->isa + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_manifestCache) = v81;
  v82 = sub_236E81D84();
  v83 = sub_236E82114();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_236E28000, v82, v83, "The asset-pack manager has been initialized.", v84, 2u);
    MEMORY[0x2383C0E50](v84, -1, -1);
  }

  v85 = [objc_opt_self() sharedManager];
  [v85 setDelegate_];

  v86 = sub_236E81D84();
  v87 = sub_236E82114();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_236E28000, v86, v87, "The system download-manager delegate has been assigned to the download manager.", v88, 2u);
    MEMORY[0x2383C0E50](v88, -1, -1);
  }

  v89 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo;
  v90 = v133;
  sub_236E593A8(v1 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_appInfo, v133, &unk_27DE87EC8, &qword_236E84D48);
  v91 = v129;
  if (v129(v90, 1, v74) == 1)
  {
    sub_236E38DBC(v90, &unk_27DE87EC8, &qword_236E84D48);
  }

  else
  {
    sub_236E81D34();
    v93 = v92;
    (*(v75 + 8))(v90, v74);
    if (v93)
    {

      goto LABEL_47;
    }
  }

  v94 = v1 + v89;
  v95 = v126;
  sub_236E593A8(v94, v126, &unk_27DE87EC8, &qword_236E84D48);
  if (v91(v95, 1, v74) == 1)
  {
    sub_236E38DBC(v95, &unk_27DE87EC8, &qword_236E84D48);
  }

  else
  {
    v96 = sub_236E81D24();
    (*(v75 + 8))(v95, v74);
    if (v96 == 1)
    {
      v97 = sub_236E82034();
      v98 = v122;
      (*(*(v97 - 8) + 56))(v122, 1, 1, v97);
      v99 = swift_allocObject();
      v99[2] = 0;
      v99[3] = 0;
      v100 = isa;
      v99[4] = v1;
      v99[5] = v100;

      sub_236E5BB28(0, 0, v98, &unk_236E85168, v99);
    }
  }

LABEL_47:
  if (v139)
  {
  }

  return v1;
}

uint64_t sub_236E3D62C()
{
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  __swift_project_value_buffer(v1, qword_27DE87DC8);
  v2 = sub_236E81D84();
  v3 = sub_236E82114();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236E28000, v2, v3, "The app was installed for internal beta testing; checking for updates automatically…", v4, 2u);
    MEMORY[0x2383C0E50](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_236E3D778;

  return sub_236E444A4();
}

uint64_t sub_236E3D778(uint64_t a1, uint64_t a2)
{
  v4 = *v3;

  if (!v2)
  {
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_236E3D890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E3D930, v3, 0);
}

uint64_t sub_236E3D930()
{
  v11 = v0;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  v0[11] = __swift_project_value_buffer(v1, qword_27DE87DC8);
  v2 = sub_236E820E4();

  v3 = sub_236E81D84();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_236E381CC(v5, v4, &v10);
    _os_log_impl(&dword_236E28000, v3, v2, "Asset pack with ID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2383C0E50](v7, -1, -1);
    MEMORY[0x2383C0E50](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_236E3DB04;

  return sub_236E599E0((v0 + 2));
}

uint64_t sub_236E3DB04()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_236E3DF50;
  }

  else
  {
    v4 = sub_236E3DC30;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_236E3DC30()
{
  v27 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v24 = *(v0 + 16);
  v25 = v4;
  v26 = *(v0 + 32);
  sub_236E70DE0(v2, v3, v1);

  v5 = type metadata accessor for AssetPack(0);
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  v7 = *(v0 + 80);
  if (v6 == 1)
  {
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    sub_236E38DBC(v7, &unk_27DE87E00, &unk_236E84CA0);
    type metadata accessor for ManagedBackgroundAssetsError(0);
    sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError, &protocol conformance descriptor for ManagedBackgroundAssetsError);
    v10 = swift_allocError();
    *v11 = v8;
    v11[1] = v9;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v12 = sub_236E820F4();

    v13 = v10;
    v14 = sub_236E81D84();

    if (os_log_type_enabled(v14, v12))
    {
      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v17 = 136446466;
      *(v17 + 4) = sub_236E381CC(v16, v15, &v24);
      *(v17 + 12) = 2114;
      v20 = v10;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_236E28000, v14, v12, "The asset pack with the ID “%{public}s” couldn’t be looked up: %{public}@", v17, 0x16u);
      sub_236E38DBC(v18, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x2383C0E50](v19, -1, -1);
      MEMORY[0x2383C0E50](v17, -1, -1);
    }

    swift_willThrow();

    v22 = *(v0 + 8);
  }

  else
  {
    sub_236E57708(v7, *(v0 + 48), type metadata accessor for AssetPack);

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_236E3DF50(uint64_t a1)
{
  v16 = v1;
  v2 = v1[13];
  v3 = sub_236E820F4();

  v4 = v2;
  v5 = sub_236E81D84();

  if (os_log_type_enabled(v5, v3))
  {
    v7 = v1[7];
    v6 = v1[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_236E381CC(v7, v6, &v15);
    *(v8 + 12) = 2114;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_236E28000, v5, v3, "The asset pack with the ID “%{public}s” couldn’t be looked up: %{public}@", v8, 0x16u);
    sub_236E38DBC(v9, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2383C0E50](v10, -1, -1);
    MEMORY[0x2383C0E50](v8, -1, -1);
  }

  swift_willThrow();

  v13 = v1[1];

  return v13();
}

uint64_t sub_236E3E11C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v8 = sub_236E81DA4();
  __swift_project_value_buffer(v8, qword_27DE87DC8);
  v9 = sub_236E820E4();

  v10 = sub_236E81D84();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v50 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_236E381CC(v60, a2, &v50);
    _os_log_impl(&dword_236E28000, v10, v9, "Asset pack from local manifest cache with ID: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2383C0E50](v12, -1, -1);
    MEMORY[0x2383C0E50](v11, -1, -1);
  }

  result = sub_236E81B04();
  if (!v3)
  {
    v15 = v14;
    if (v14 >> 60 == 15)
    {
      type metadata accessor for AssetPackManagerError(0);
      sub_236E57620(&qword_27DE87E48, type metadata accessor for AssetPackManagerError, &unk_236E84FE0);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    else
    {
      v16 = result;
      v47 = 0;
      sub_236E818E4();
      swift_allocObject();
      sub_236E59298(v16, v15);
      v48 = sub_236E818D4();
      sub_236E818B4();
      v17 = sub_236E3BA24();
      v19 = v18;
      v20 = qword_27DE87AE8;

      if (v20 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_27DE88410);
      v21 = sub_236E820E4();

      v22 = sub_236E81D84();

      v46 = v22;
      if (os_log_type_enabled(v22, v21))
      {
        v23 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v50 = v44;
        *v23 = 136446722;
        v24 = sub_236E381CC(v17, v19, &v50);
        v45 = v17;
        v25 = v24;

        *(v23 + 4) = v25;
        *(v23 + 12) = 2082;
        v26 = sub_236E82124();
        v28 = v7;
        v29 = v16;
        v30 = v21;
        v31 = sub_236E381CC(v26, v27, &v50);
        v17 = v45;

        *(v23 + 14) = v31;
        *(v23 + 22) = 1024;
        *(v23 + 24) = 1;
        v32 = v30;
        v16 = v29;
        v7 = v28;
        v33 = v46;
        _os_log_impl(&dword_236E28000, v46, v32, "Init app group ID: %{public}s source: %{public}s managed: %{BOOL}d", v23, 0x1Cu);
        v34 = v44;
        swift_arrayDestroy();
        MEMORY[0x2383C0E50](v34, -1, -1);
        MEMORY[0x2383C0E50](v23, -1, -1);
      }

      else
      {
      }

      v50 = v17;
      v51 = v19;
      LOBYTE(v52) = 1;
      v53 = 2;
      sub_236E38C10(v35, v36, v37);
      v54 = 0;
      v55 = 0;
      v38 = v47;
      sub_236E818C4();
      v39 = v54;
      v40 = v55;

      sub_236E38C64(v39, v40);
      if (v38)
      {

        sub_236E592EC(v16, v15);
        return sub_236E592EC(v16, v15);
      }

      else
      {
        v50 = v56;
        LOBYTE(v51) = v57;
        v52 = v58;
        v53 = v59;
        v41 = v60;
        sub_236E70DE0(v60, a2, v7);

        v42 = type metadata accessor for AssetPack(0);
        if ((*(*(v42 - 8) + 48))(v7, 1, v42) == 1)
        {
          sub_236E38DBC(v7, &unk_27DE87E00, &unk_236E84CA0);
          type metadata accessor for ManagedBackgroundAssetsError(0);
          sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError, &protocol conformance descriptor for ManagedBackgroundAssetsError);
          swift_allocError();
          *v43 = v41;
          v43[1] = a2;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_236E592EC(v16, v15);
          return sub_236E592EC(v16, v15);
        }

        else
        {
          sub_236E592EC(v16, v15);

          sub_236E592EC(v16, v15);
          return sub_236E57708(v7, v49, type metadata accessor for AssetPack);
        }
      }
    }
  }

  return result;
}

uint64_t sub_236E3E794(uint64_t a1)
{
  v2 = v1;
  v3 = sub_236E81904();
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v4 = sub_236E81DA4();
  __swift_project_value_buffer(v4, qword_27DE87DC8);
  v5 = sub_236E820E4();

  v6 = sub_236E81D84();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v7 = 136446210;

    sub_236E82264();

    type metadata accessor for AssetPack(0);
    sub_236E57620(&qword_27DE88020, type metadata accessor for AssetPack, &protocol conformance descriptor for AssetPack);
    v8 = sub_236E820A4();
    MEMORY[0x2383BFD30](v8);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);

    v9 = sub_236E381CC(0xD000000000000024, 0x8000000236E89E50, &v25);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_236E28000, v6, v5, "Install manifest: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v2 = v1;
    MEMORY[0x2383C0E50](v22, -1, -1);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  sub_236E81944();
  swift_allocObject();
  sub_236E81934();
  sub_236E818F4();
  v10 = sub_236E81914();
  sub_236E59354(v10, v11, v12);
  v13 = sub_236E81924();
  if (!v2)
  {
    v15 = v13;
    v16 = v14;

    v17 = sub_236E81D84();
    v18 = sub_236E82114();

    if (os_log_type_enabled(v17, v18))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v23 = 136446210;

      sub_236E82264();

      type metadata accessor for AssetPack(0);
      sub_236E57620(&qword_27DE88020, type metadata accessor for AssetPack, &protocol conformance descriptor for AssetPack);
      v19 = sub_236E820A4();
      MEMORY[0x2383BFD30](v19);

      MEMORY[0x2383BFD30](62, 0xE100000000000000);

      v20 = sub_236E381CC(0xD000000000000024, 0x8000000236E89E50, &v25);

      *(v23 + 4) = v20;
      _os_log_impl(&dword_236E28000, v17, v18, "Installing the manifest “%{public}s”…", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x2383C0E50](v24, -1, -1);
      MEMORY[0x2383C0E50](v23, -1, -1);
    }

    sub_236E81B34();
    sub_236E38C74(v15, v16);
  }
}

uint64_t sub_236E3ECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = type metadata accessor for ManagedBackgroundAssetsError(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for AssetPack(0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v5 = sub_236E81CF4();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_236E81C94();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E18, &qword_236E84CB8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E3EEE0, v3, 0);
}

uint64_t sub_236E3EEE0()
{
  v11 = v0;
  v10[1] = *MEMORY[0x277D85DE8];
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  v0[21] = __swift_project_value_buffer(v1, qword_27DE87DC8);
  v2 = sub_236E820E4();

  v3 = sub_236E81D84();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_236E381CC(v5, v4, v10);
    _os_log_impl(&dword_236E28000, v3, v2, "Status of asset pack with ID: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2383C0E50](v7, -1, -1);
    MEMORY[0x2383C0E50](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_236E3F0D8;

  return sub_236E5A46C();
}

uint64_t sub_236E3F0D8()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_236E3FD04, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[24] = v4;
    *v4 = v2;
    v4[1] = sub_236E3F294;

    return sub_236E3B30C();
  }
}

uint64_t sub_236E3F294(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 56);
  if (v1)
  {
    v6 = sub_236E3FEC8;
  }

  else
  {
    v6 = sub_236E3F3F4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_236E3F3F4()
{
  v1 = v0[25];
  v19 = *(v1 + 16);
  if (v19)
  {
    v2 = 0;
    v3 = v0[16];
    v20 = (v0[13] + 8);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
      }

      v4 = v0[14];
      v5 = v0[12];
      v7 = v0[5];
      v6 = v0[6];
      (*(v3 + 16))(v0[18], v0[25] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2, v0[15]);
      sub_236E81C84();
      v8 = sub_236E81CA4();
      v10 = v9;
      (*v20)(v4, v5);
      if (v8 == v7 && v10 == v6)
      {
        break;
      }

      v12 = sub_236E824E4();

      if (v12)
      {
        goto LABEL_12;
      }

      ++v2;
      (*(v3 + 8))(v0[18], v0[15]);
      if (v19 == v2)
      {
        goto LABEL_10;
      }
    }

LABEL_12:

    (*(v0[16] + 32))(v0[20], v0[18], v0[15]);
    v13 = 0;
  }

  else
  {
LABEL_10:

    v13 = 1;
  }

  (*(v0[16] + 56))(v0[20], v13, 1, v0[15]);
  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_236E3F65C;
  v15 = v0[10];
  v16 = v0[6];
  v17 = v0[5];

  return sub_236E3D890(v15, v17, v16);
}

uint64_t sub_236E3F65C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_236E4010C;
  }

  else
  {
    v4 = sub_236E3F7B4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_236E3F7B4()
{
  v46 = v0;
  v45[1] = *MEMORY[0x277D85DE8];
  sub_236E57708(v0[10], v0[11], type metadata accessor for AssetPack);
  v1 = [objc_opt_self() sharedManager];
  v0[3] = 0;
  v2 = [v1 fetchCurrentDownloads_];

  v3 = v0[3];
  if (v2)
  {
    v4 = v0 + 20;
    v42 = v0[23];
    v43 = v0[20];
    v5 = v0[19];
    v6 = v0[16];
    v44 = v0[15];
    v7 = v0[11];
    sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
    v8 = sub_236E81FA4();
    v9 = v3;

    v10 = swift_task_alloc();
    *(v10 + 16) = v7;
    v11 = sub_236E40638(sub_236E5957C, v10, v8);

    if (v42)
    {
      v12 = 32;
    }

    else
    {
      v12 = 33;
    }

    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v42 == 0;
    }

    sub_236E593A8(v43, v5, &qword_27DE87E18, &qword_236E84CB8);
    if ((*(v6 + 48))(v5, 1, v44) == 1)
    {
      sub_236E38DBC(*v4, &qword_27DE87E18, &qword_236E84CB8);
      v4 = v0 + 19;
    }

    else
    {
      v29 = v0[23];
      v31 = v0[16];
      v30 = v0[17];
      v32 = v0[15];
      v33 = v0[11];
      (*(v31 + 32))(v30, v0[19], v32);
      v34 = sub_236E81C74();
      (*(v31 + 8))(v30, v32);
      v35 = *(v33 + 24);
      v36 = 72;
      if (!v29)
      {
        v36 = 74;
      }

      v37 = v34 != v35 || v35 <= -1;
      v38 = 68;
      if (v37)
      {
        v38 = v36;
      }

      v13 |= v38;
    }

    v39 = v0[11];
    v40 = v0[4];
    sub_236E38DBC(*v4, &qword_27DE87E18, &qword_236E84CB8);
    *v40 = v13;
    sub_236E56DCC(v39, type metadata accessor for AssetPack);

    v28 = v0[1];
  }

  else
  {
    v14 = v0[20];
    v15 = v0[11];
    v16 = v3;
    v17 = sub_236E81994();

    swift_willThrow();
    sub_236E38DBC(v14, &qword_27DE87E18, &qword_236E84CB8);
    sub_236E56DCC(v15, type metadata accessor for AssetPack);
    v18 = sub_236E820F4();

    v19 = v17;
    v20 = sub_236E81D84();

    if (os_log_type_enabled(v20, v18))
    {
      v22 = v0[5];
      v21 = v0[6];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[0] = v25;
      *v23 = 136446466;
      *(v23 + 4) = sub_236E381CC(v22, v21, v45);
      *(v23 + 12) = 2114;
      v26 = v17;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v27;
      *v24 = v27;
      _os_log_impl(&dword_236E28000, v20, v18, "The status of the asset pack with the ID “%{public}s” couldn’t be looked up: %{public}@", v23, 0x16u);
      sub_236E38DBC(v24, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x2383C0E50](v25, -1, -1);
      MEMORY[0x2383C0E50](v23, -1, -1);
    }

    swift_willThrow();

    v28 = v0[1];
  }

  return v28();
}

uint64_t sub_236E3FD04(uint64_t a1)
{
  v2 = *(v1 + 184);
  v3 = sub_236E820F4();
  v4 = v2;
  v5 = sub_236E81D84();

  v6 = os_log_type_enabled(v5, v3);
  v7 = *(v1 + 184);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_236E28000, v5, v3, "The manifest couldn’t be refreshed: %{public}@", v8, 0xCu);
    sub_236E38DBC(v9, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v9, -1, -1);
    MEMORY[0x2383C0E50](v8, -1, -1);
  }

  else
  {
  }

  v12 = swift_task_alloc();
  *(v1 + 192) = v12;
  *v12 = v1;
  v12[1] = sub_236E3F294;

  return sub_236E3B30C();
}

uint64_t sub_236E3FEC8(uint64_t a1)
{
  v16 = v1;
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = v1[26];
  v3 = sub_236E820F4();

  v4 = v2;
  v5 = sub_236E81D84();

  if (os_log_type_enabled(v5, v3))
  {
    v7 = v1[5];
    v6 = v1[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_236E381CC(v7, v6, v15);
    *(v8 + 12) = 2114;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_236E28000, v5, v3, "The status of the asset pack with the ID “%{public}s” couldn’t be looked up: %{public}@", v8, 0x16u);
    sub_236E38DBC(v9, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2383C0E50](v10, -1, -1);
    MEMORY[0x2383C0E50](v8, -1, -1);
  }

  swift_willThrow();

  v13 = v1[1];

  return v13();
}

uint64_t sub_236E4010C()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 72);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v4 = *v3;
    v5 = v3[1];
    if (v4 == *(v0 + 40) && v5 == *(v0 + 48))
    {
    }

    else
    {
      v7 = sub_236E824E4();

      if ((v7 & 1) == 0)
      {
LABEL_9:
        v8 = *(v0 + 160);
LABEL_10:
        sub_236E38DBC(v8, &qword_27DE87E18, &qword_236E84CB8);
        goto LABEL_11;
      }
    }

    v22 = *(v0 + 160);
    if ((*(*(v0 + 128) + 48))(v22, 1, *(v0 + 120)) != 1)
    {
      v23 = *(v0 + 32);

      sub_236E38DBC(v22, &qword_27DE87E18, &qword_236E84CB8);
      *v23 = 16;

      v20 = *(v0 + 8);
      goto LABEL_14;
    }

    v8 = v22;
    goto LABEL_10;
  }

  sub_236E38DBC(*(v0 + 160), &qword_27DE87E18, &qword_236E84CB8);
  sub_236E56DCC(v3, type metadata accessor for ManagedBackgroundAssetsError);
LABEL_11:

  v9 = *(v0 + 224);
  v10 = sub_236E820F4();

  v11 = v9;
  v12 = sub_236E81D84();

  if (os_log_type_enabled(v12, v10))
  {
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_236E381CC(v14, v13, v24);
    *(v15 + 12) = 2114;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_236E28000, v12, v10, "The status of the asset pack with the ID “%{public}s” couldn’t be looked up: %{public}@", v15, 0x16u);
    sub_236E38DBC(v16, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2383C0E50](v17, -1, -1);
    MEMORY[0x2383C0E50](v15, -1, -1);
  }

  swift_willThrow();

  v20 = *(v0 + 8);
LABEL_14:

  return v20();
}

void *sub_236E40524(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_236E821E4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383C0080](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_236E40638(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x2383C0080](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_236E821E4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_236E40760(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v7 = sub_236E81DA4();
  __swift_project_value_buffer(v7, qword_27DE87DC8);
  v8 = sub_236E820E4();

  v9 = sub_236E81D84();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_236E381CC(a1, a2, &v17);
    _os_log_impl(&dword_236E28000, v9, v8, "Downloaded version of asset pack with ID: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v10, -1, -1);
  }

  v12 = sub_236E570CC(v4, a1, a2);
  v14 = v13;

  if (!v3 && (v14 & 1) != 0)
  {
    type metadata accessor for ManagedBackgroundAssetsError(0);
    sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError, &protocol conformance descriptor for ManagedBackgroundAssetsError);
    swift_allocError();
    *v15 = a1;
    v15[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_236E40974(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E30, &qword_236E84CD8);
  v2[13] = swift_task_alloc();
  v2[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E38, &qword_236E84CE0);
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E40, &qword_236E84CE8);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = sub_236E81CF4();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  type metadata accessor for AssetPack(0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E40C80, v1, 0);
}

uint64_t sub_236E40C80()
{
  v20 = v0;
  v19[1] = *MEMORY[0x277D85DE8];
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[6];
  v3 = sub_236E81DA4();
  v0[36] = __swift_project_value_buffer(v3, qword_27DE87DC8);
  v4 = sub_236E820E4();
  sub_236E57598(v2, v1, type metadata accessor for AssetPack);
  v5 = sub_236E81D84();
  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[35];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136446210;
    v10 = AssetPack.description.getter();
    v12 = v11;
    sub_236E56DCC(v7, type metadata accessor for AssetPack);
    v13 = sub_236E381CC(v10, v12, v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_236E28000, v5, v4, "Ensure local availability of: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2383C0E50](v9, -1, -1);
    MEMORY[0x2383C0E50](v8, -1, -1);
  }

  else
  {

    sub_236E56DCC(v7, type metadata accessor for AssetPack);
  }

  v14 = v0[6];
  v15 = v0[7];
  v0[37] = *v14;
  v0[38] = v14[1];

  sub_236E81CD4();
  v0[39] = *(v15 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper);
  v16 = swift_task_alloc();
  v0[40] = v16;
  *v16 = v0;
  v16[1] = sub_236E40F68;
  v17 = v0[21];

  return MEMORY[0x282184B00](v17);
}

uint64_t sub_236E40F68(char a1)
{
  v4 = *v2;
  *(v4 + 328) = v1;

  v5 = *(v4 + 56);
  if (v1)
  {
    v6 = sub_236E439C4;
  }

  else
  {
    *(v4 + 384) = a1 & 1;
    v6 = sub_236E410D4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_236E410D4()
{
  v17 = v0;
  v16[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 384) == 1)
  {
    sub_236E57598(*(v0 + 48), *(v0 + 272), type metadata accessor for AssetPack);
    v1 = sub_236E81D84();
    v2 = sub_236E82114();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 272);
    if (v3)
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16[0] = v6;
      *v5 = 136446210;
      v7 = *v4;
      v8 = v4[1];

      sub_236E56DCC(v4, type metadata accessor for AssetPack);
      v9 = sub_236E381CC(v7, v8, v16);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_236E28000, v1, v2, "Making the unavailable, already downloaded asset pack with the ID “%{public}s” available instead of redownloading it…", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x2383C0E50](v6, -1, -1);
      MEMORY[0x2383C0E50](v5, -1, -1);
    }

    else
    {

      sub_236E56DCC(v4, type metadata accessor for AssetPack);
    }

    if (qword_27DE87AC0 != -1)
    {
      swift_once();
    }

    sub_236E5BDD4(*(v0 + 48));
    v14 = swift_task_alloc();
    *(v0 + 336) = v14;
    *v14 = v0;
    v14[1] = sub_236E413CC;
    v15 = *(v0 + 168);

    return MEMORY[0x282184AA0](1, v15);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 352) = v10;
    *v10 = v0;
    v10[1] = sub_236E416D0;
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);

    return sub_236E3ECD4(v0 + 16, v11, v12);
  }
}

uint64_t sub_236E413CC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_236E43D30;
  }

  else
  {
    v4 = sub_236E41524;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_236E41524()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_236E416D0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_236E4409C;
  }

  else
  {
    v4 = sub_236E41828;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_236E41828()
{
  v169 = v0;
  v168[1] = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  if ((v1 & 0x40) != 0)
  {
    sub_236E57598(v0[6], v0[33], type metadata accessor for AssetPack);
    v12 = sub_236E81D84();
    v13 = sub_236E82114();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[33];
    v16 = v0[20];
    v17 = v0[21];
    v18 = v0[19];
    if (v14)
    {
      v166 = v0[21];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v168[0] = v20;
      *v19 = 136446210;
      v21 = *v15;
      v22 = v15[1];

      sub_236E56DCC(v15, type metadata accessor for AssetPack);
      v23 = sub_236E381CC(v21, v22, v168);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_236E28000, v12, v13, "The asset pack with the ID “%{public}s” is already downloaded.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x2383C0E50](v20, -1, -1);
      MEMORY[0x2383C0E50](v19, -1, -1);

      (*(v16 + 8))(v166, v18);
    }

    else
    {

      sub_236E56DCC(v15, type metadata accessor for AssetPack);
      (*(v16 + 8))(v17, v18);
    }

    v33 = v0[1];
    goto LABEL_62;
  }

  v2 = v0[6];
  if ((v1 & 0x20) == 0)
  {
    if ((v1 & 1) == 0)
    {
      sub_236E57598(v2, v0[27], type metadata accessor for AssetPack);
      v3 = sub_236E81D84();
      v4 = sub_236E82114();
      v5 = os_log_type_enabled(v3, v4);
      v6 = v0[27];
      if (v5)
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v168[0] = v8;
        *v7 = 136446210;
        v9 = *v6;
        v10 = v6[1];

        sub_236E56DCC(v6, type metadata accessor for AssetPack);
        v11 = sub_236E381CC(v9, v10, v168);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_236E28000, v3, v4, "The asset pack with the ID “%{public}s” can’t be downloaded.", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x2383C0E50](v8, -1, -1);
        MEMORY[0x2383C0E50](v7, -1, -1);
      }

      else
      {

        sub_236E56DCC(v6, type metadata accessor for AssetPack);
      }

      v70 = v0[20];
      v69 = v0[21];
      v71 = v0[19];
      v72 = v0[6];
      type metadata accessor for AssetPackManagerError(0);
      sub_236E57620(&qword_27DE87E48, type metadata accessor for AssetPackManagerError, &unk_236E84FE0);
      v68 = swift_allocError();
      sub_236E57598(v72, v73, type metadata accessor for AssetPack);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_40;
    }

    sub_236E57598(v2, v0[28], type metadata accessor for AssetPack);
    v34 = sub_236E81D84();
    v35 = sub_236E82114();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[28];
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v168[0] = v39;
      *v38 = 136446210;
      v40 = *v37;
      v41 = v37[1];

      sub_236E56DCC(v37, type metadata accessor for AssetPack);
      v42 = sub_236E381CC(v40, v41, v168);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_236E28000, v34, v35, "Scheduling the asset pack with the ID “%{public}s” to be downloaded…", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x2383C0E50](v39, -1, -1);
      MEMORY[0x2383C0E50](v38, -1, -1);
    }

    else
    {

      sub_236E56DCC(v37, type metadata accessor for AssetPack);
    }

    v74 = AssetPack.download(for:)(0, 1);
    v75 = [objc_opt_self() sharedManager];
    v0[3] = 0;
    v76 = [v75 startForegroundDownload:v74 error:v0 + 3];

    v77 = v0[3];
    if ((v76 & 1) == 0)
    {
      v70 = v0[20];
      v69 = v0[21];
      v71 = v0[19];
      v88 = v77;
      v68 = sub_236E81994();

      swift_willThrow();
LABEL_40:
      (*(v70 + 8))(v69, v71);
      goto LABEL_58;
    }

    sub_236E57598(v0[6], v0[26], type metadata accessor for AssetPack);
    v78 = v77;
    v79 = sub_236E81D84();
    v80 = sub_236E82114();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v0[26];
    if (v81)
    {
      goto LABEL_38;
    }

    goto LABEL_66;
  }

  sub_236E57598(v2, v0[32], type metadata accessor for AssetPack);
  v24 = sub_236E81D84();
  v25 = sub_236E82114();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[32];
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v168[0] = v29;
    *v28 = 136446210;
    v30 = *v27;
    v31 = v27[1];

    sub_236E56DCC(v27, type metadata accessor for AssetPack);
    v32 = sub_236E381CC(v30, v31, v168);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_236E28000, v24, v25, "The asset pack with the ID “%{public}s” is currently being downloaded.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x2383C0E50](v29, -1, -1);
    MEMORY[0x2383C0E50](v28, -1, -1);
  }

  else
  {

    sub_236E56DCC(v27, type metadata accessor for AssetPack);
  }

  sub_236E57598(v0[6], v0[31], type metadata accessor for AssetPack);
  v43 = sub_236E81D84();
  v44 = sub_236E82114();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v0[31];
  if (v45)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v168[0] = v48;
    *v47 = 136446210;
    v49 = *v46;
    v50 = v46[1];

    sub_236E56DCC(v46, type metadata accessor for AssetPack);
    v51 = sub_236E381CC(v49, v50, v168);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_236E28000, v43, v44, "Fetching the current download with the ID “%{public}s”…", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x2383C0E50](v48, -1, -1);
    MEMORY[0x2383C0E50](v47, -1, -1);
  }

  else
  {

    sub_236E56DCC(v46, type metadata accessor for AssetPack);
  }

  v52 = objc_opt_self();
  v53 = [v52 sharedManager];
  v0[4] = 0;
  v54 = [v53 fetchCurrentDownloads_];

  v55 = v0[4];
  if (!v54)
  {
    v65 = v0[20];
    v64 = v0[21];
    v66 = v0[19];
    v67 = v55;
    v68 = sub_236E81994();

    swift_willThrow();
    (*(v65 + 8))(v64, v66);
LABEL_58:
    v134 = v0[22];
    v135 = v0[6];
    v136 = sub_236E820F4();
    sub_236E57598(v135, v134, type metadata accessor for AssetPack);
    v137 = v68;
    v138 = sub_236E81D84();

    v139 = os_log_type_enabled(v138, v136);
    v140 = v0[22];
    if (v139)
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v168[0] = v143;
      *v141 = 136446466;
      v144 = AssetPack.description.getter();
      v146 = v145;
      sub_236E56DCC(v140, type metadata accessor for AssetPack);
      v147 = sub_236E381CC(v144, v146, v168);

      *(v141 + 4) = v147;
      *(v141 + 12) = 2114;
      v148 = v68;
      v149 = _swift_stdlib_bridgeErrorToNSError();
      *(v141 + 14) = v149;
      *v142 = v149;
      _os_log_impl(&dword_236E28000, v138, v136, "Local availability of the asset pack “%{public}s” couldn’t be ensured: %{public}@", v141, 0x16u);
      sub_236E38DBC(v142, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v142, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v143);
      MEMORY[0x2383C0E50](v143, -1, -1);
      MEMORY[0x2383C0E50](v141, -1, -1);
    }

    else
    {

      sub_236E56DCC(v140, type metadata accessor for AssetPack);
    }

    swift_willThrow();

    v33 = v0[1];
LABEL_62:

    return v33();
  }

  sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
  v56 = sub_236E81FA4();
  v57 = v55;

  v168[0] = MEMORY[0x277D84F90];
  if (v56 >> 62)
  {
    goto LABEL_43;
  }

  v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v52; v58; i = v52)
  {
    v59 = 0;
    v52 = (v56 & 0xC000000000000001);
    while (1)
    {
      if (v52)
      {
        v60 = MEMORY[0x2383C0080](v59, v56);
      }

      else
      {
        if (v59 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v60 = *(v56 + 8 * v59 + 32);
      }

      v61 = v60;
      v62 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (([(BADownload *)v60 isForManagedAssetPack]& 1) != 0)
      {
        sub_236E822B4();
        sub_236E822E4();
        sub_236E822F4();
        sub_236E822C4();
      }

      else
      {
      }

      ++v59;
      if (v62 == v58)
      {
        v63 = v168[0];
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v58 = sub_236E821E4();
  }

  v63 = MEMORY[0x277D84F90];
LABEL_45:
  v89 = v0[6];

  v90 = swift_task_alloc();
  *(v90 + 16) = v89;
  v91 = sub_236E40524(sub_236E57770, v90, v63);

  if (v91)
  {
    v92 = v91;
    v93 = sub_236E81D84();
    v94 = sub_236E82114();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v168[0] = v96;
      *v95 = 136446210;
      v97 = [v92 identifier];
      v98 = sub_236E81E94();
      v100 = v99;

      v101 = sub_236E381CC(v98, v100, v168);

      *(v95 + 4) = v101;
      _os_log_impl(&dword_236E28000, v93, v94, "Promoting the download with the ID “%{public}s” to the foreground…", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x2383C0E50](v96, -1, -1);
      MEMORY[0x2383C0E50](v95, -1, -1);
    }

    v74 = v92;
    v102 = i;
    v103 = BAApplicationGroupIdentifier;
  }

  else
  {
    v104 = v0[30];
    v105 = v0[6];
    v106 = sub_236E82104();
    sub_236E57598(v105, v104, type metadata accessor for AssetPack);
    v107 = sub_236E81D84();
    v108 = os_log_type_enabled(v107, v106);
    v109 = v0[30];
    if (v108)
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v168[0] = v111;
      *v110 = 136446210;
      v112 = *v109;
      v113 = v109[1];

      sub_236E56DCC(v109, type metadata accessor for AssetPack);
      v114 = sub_236E381CC(v112, v113, v168);

      *(v110 + 4) = v114;
      _os_log_impl(&dword_236E28000, v107, v106, "There’s no current download with the ID “%{public}s”; scheduling a new download…", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v111);
      MEMORY[0x2383C0E50](v111, -1, -1);
      MEMORY[0x2383C0E50](v110, -1, -1);
    }

    else
    {

      sub_236E56DCC(v109, type metadata accessor for AssetPack);
    }

    v102 = i;
    v103 = BAApplicationGroupIdentifier;
    v74 = AssetPack.download(for:)(0, 1);
    v92 = 0;
  }

  v115 = v92;
  v116 = [v102 v103[411]];
  v0[5] = 0;
  v117 = [v116 startForegroundDownload:v74 error:v0 + 5];

  v118 = v0[5];
  if (!v117)
  {
    v131 = v0[20];
    v130 = v0[21];
    v132 = v0[19];
    v133 = v118;
    v68 = sub_236E81994();

    swift_willThrow();
    (*(v131 + 8))(v130, v132);
    goto LABEL_58;
  }

  if (!v91)
  {
    sub_236E57598(v0[6], v0[29], type metadata accessor for AssetPack);
    v151 = v118;
    v79 = sub_236E81D84();
    v80 = sub_236E82114();
    v152 = os_log_type_enabled(v79, v80);
    v82 = v0[29];
    if (v152)
    {
LABEL_38:
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v168[0] = v84;
      *v83 = 136446210;
      v85 = *v82;
      v86 = v82[1];

      sub_236E56DCC(v82, type metadata accessor for AssetPack);
      v87 = sub_236E381CC(v85, v86, v168);

      *(v83 + 4) = v87;
      _os_log_impl(&dword_236E28000, v79, v80, "The asset pack with the ID “%{public}s” was scheduled to be downloaded.", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x2383C0E50](v84, -1, -1);
      MEMORY[0x2383C0E50](v83, -1, -1);

      goto LABEL_68;
    }

LABEL_66:

    sub_236E56DCC(v82, type metadata accessor for AssetPack);
    goto LABEL_68;
  }

  v119 = v118;
  v120 = v74;
  v121 = sub_236E81D84();
  v122 = sub_236E82114();

  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v168[0] = v124;
    *v123 = 136315138;
    v125 = [v120 identifier];
    v126 = sub_236E81E94();
    v128 = v127;

    v129 = sub_236E381CC(v126, v128, v168);

    *(v123 + 4) = v129;
    _os_log_impl(&dword_236E28000, v121, v122, "The download with the ID “%s” was promoted to the foreground.", v123, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v124);
    MEMORY[0x2383C0E50](v124, -1, -1);
    MEMORY[0x2383C0E50](v123, -1, -1);
  }

  else
  {
  }

LABEL_68:
  sub_236E57598(v0[6], v0[25], type metadata accessor for AssetPack);
  v153 = sub_236E81D84();
  v154 = sub_236E82114();
  v155 = os_log_type_enabled(v153, v154);
  v156 = v0[25];
  if (v155)
  {
    v157 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v168[0] = v158;
    *v157 = 136446210;
    v159 = *v156;
    v160 = v156[1];

    sub_236E56DCC(v156, type metadata accessor for AssetPack);
    v161 = sub_236E381CC(v159, v160, v168);

    *(v157 + 4) = v161;
    _os_log_impl(&dword_236E28000, v153, v154, "Awaiting status updates for the asset pack with the ID “%{public}s”…", v157, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v158);
    MEMORY[0x2383C0E50](v158, -1, -1);
    MEMORY[0x2383C0E50](v157, -1, -1);
  }

  else
  {

    sub_236E56DCC(v156, type metadata accessor for AssetPack);
  }

  sub_236E484E4(v0[37], v0[38]);
  sub_236E58664(&qword_27DE87E50, &qword_27DE87E38, &qword_236E84CE0, MEMORY[0x277D25BE8]);
  sub_236E82064();
  v162 = sub_236E57620(&qword_27DE87E58, type metadata accessor for AssetPackManager, &protocol conformance descriptor for AssetPackManager);
  v0[46] = v162;
  v163 = v0[7];
  sub_236E58664(&qword_27DE87E60, &qword_27DE87E40, &qword_236E84CE8, MEMORY[0x277D25BE0]);
  v164 = swift_task_alloc();
  v0[47] = v164;
  *v164 = v0;
  v164[1] = sub_236E42E68;
  v165 = v0[13];

  return MEMORY[0x282200310](v165, v163, v162);
}

uint64_t sub_236E42E68()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 56);

    return MEMORY[0x2822009F8](sub_236E42FC8, v4, 0);
  }

  return result;
}

uint64_t sub_236E42FC8()
{
  v69 = v0;
  v68[1] = *MEMORY[0x277D85DE8];
  v1 = v0[13];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    v2 = v0[23];
    v3 = v0[6];
    (*(v0[17] + 8))(v0[18], v0[16]);
    sub_236E57598(v3, v2, type metadata accessor for AssetPack);
    v4 = sub_236E81D84();
    v5 = sub_236E82114();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[23];
    v8 = v0[20];
    v9 = v0[21];
    v10 = v0[19];
    if (v6)
    {
      v67 = v0[21];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v68[0] = v12;
      *v11 = 136446210;
      v13 = *v7;
      v14 = v7[1];

      sub_236E56DCC(v7, type metadata accessor for AssetPack);
      v15 = sub_236E381CC(v13, v14, v68);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_236E28000, v4, v5, "No more status updates are available for the asset pack with the ID “%{public}s”.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x2383C0E50](v12, -1, -1);
      MEMORY[0x2383C0E50](v11, -1, -1);

      (*(v8 + 8))(v67, v10);
    }

    else
    {

      sub_236E56DCC(v7, type metadata accessor for AssetPack);
      (*(v8 + 8))(v9, v10);
    }

    v34 = v0[1];
LABEL_17:

    return v34();
  }

  v16 = v0[24];
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[6];
  sub_236E57708(v1, v17, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  v20 = sub_236E820D4();
  sub_236E57598(v17, v18, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  sub_236E57598(v19, v16, type metadata accessor for AssetPack);
  v21 = sub_236E81D84();
  v22 = os_log_type_enabled(v21, v20);
  v23 = v0[24];
  v24 = v0[11];
  if (v22)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v68[0] = v26;
    *v25 = 136446466;
    v27 = AssetPackManager.DownloadStatusUpdate.description.getter();
    v29 = v28;
    sub_236E56DCC(v24, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
    v30 = sub_236E381CC(v27, v29, v68);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    v31 = *v23;
    v32 = v23[1];

    sub_236E56DCC(v23, type metadata accessor for AssetPack);
    v33 = sub_236E381CC(v31, v32, v68);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_236E28000, v21, v20, "The asset-pack manager received the status update “%{public}s” for the asset pack with the ID “%{public}s”.", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v26, -1, -1);
    MEMORY[0x2383C0E50](v25, -1, -1);
  }

  else
  {

    sub_236E56DCC(v23, type metadata accessor for AssetPack);
    sub_236E56DCC(v24, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  }

  sub_236E57598(v0[12], v0[10], type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v35 = v0[20];
    v36 = v0[21];
    v38 = v0[18];
    v37 = v0[19];
    v39 = v0[16];
    v40 = v0[17];
    v41 = v0[12];
    v42 = v0[10];
    v43 = *(v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DE0, &unk_236E84C80) + 48));
    sub_236E56DCC(v42, type metadata accessor for AssetPack);
    swift_willThrow();
    sub_236E56DCC(v41, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
    (*(v40 + 8))(v38, v39);
    (*(v35 + 8))(v36, v37);
    v44 = v43;
    v45 = v0[22];
    v46 = v0[6];
    v47 = sub_236E820F4();
    sub_236E57598(v46, v45, type metadata accessor for AssetPack);
    v48 = v43;
    v49 = sub_236E81D84();

    v50 = os_log_type_enabled(v49, v47);
    v51 = v0[22];
    if (v50)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v68[0] = v54;
      *v52 = 136446466;
      v55 = AssetPack.description.getter();
      v57 = v56;
      sub_236E56DCC(v51, type metadata accessor for AssetPack);
      v58 = sub_236E381CC(v55, v57, v68);

      *(v52 + 4) = v58;
      *(v52 + 12) = 2114;
      v59 = v44;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 14) = v60;
      *v53 = v60;
      _os_log_impl(&dword_236E28000, v49, v47, "Local availability of the asset pack “%{public}s” couldn’t be ensured: %{public}@", v52, 0x16u);
      sub_236E38DBC(v53, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x2383C0E50](v54, -1, -1);
      MEMORY[0x2383C0E50](v52, -1, -1);
    }

    else
    {

      sub_236E56DCC(v51, type metadata accessor for AssetPack);
    }

    swift_willThrow();

    v34 = v0[1];
    goto LABEL_17;
  }

  v61 = v0[10];
  sub_236E56DCC(v0[12], type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  sub_236E56DCC(v61, type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  v62 = v0[46];
  v63 = v0[7];
  sub_236E58664(&qword_27DE87E60, &qword_27DE87E40, &qword_236E84CE8, MEMORY[0x277D25BE0]);
  v64 = swift_task_alloc();
  v0[47] = v64;
  *v64 = v0;
  v64[1] = sub_236E42E68;
  v65 = v0[13];

  return MEMORY[0x282200310](v65, v63, v62);
}

uint64_t sub_236E439C4()
{
  v21 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[41];
  v2 = v0[22];
  v3 = v0[6];
  v4 = sub_236E820F4();
  sub_236E57598(v3, v2, type metadata accessor for AssetPack);
  v5 = v1;
  v6 = sub_236E81D84();

  v7 = os_log_type_enabled(v6, v4);
  v8 = v0[22];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 136446466;
    v12 = AssetPack.description.getter();
    v14 = v13;
    sub_236E56DCC(v8, type metadata accessor for AssetPack);
    v15 = sub_236E381CC(v12, v14, v20);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2114;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_236E28000, v6, v4, "Local availability of the asset pack “%{public}s” couldn’t be ensured: %{public}@", v9, 0x16u);
    sub_236E38DBC(v10, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  else
  {

    sub_236E56DCC(v8, type metadata accessor for AssetPack);
  }

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_236E43D30()
{
  v21 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[43];
  v2 = v0[22];
  v3 = v0[6];
  v4 = sub_236E820F4();
  sub_236E57598(v3, v2, type metadata accessor for AssetPack);
  v5 = v1;
  v6 = sub_236E81D84();

  v7 = os_log_type_enabled(v6, v4);
  v8 = v0[22];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 136446466;
    v12 = AssetPack.description.getter();
    v14 = v13;
    sub_236E56DCC(v8, type metadata accessor for AssetPack);
    v15 = sub_236E381CC(v12, v14, v20);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2114;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_236E28000, v6, v4, "Local availability of the asset pack “%{public}s” couldn’t be ensured: %{public}@", v9, 0x16u);
    sub_236E38DBC(v10, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  else
  {

    sub_236E56DCC(v8, type metadata accessor for AssetPack);
  }

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_236E4409C()
{
  v21 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[45];
  v2 = v0[22];
  v3 = v0[6];
  v4 = sub_236E820F4();
  sub_236E57598(v3, v2, type metadata accessor for AssetPack);
  v5 = v1;
  v6 = sub_236E81D84();

  v7 = os_log_type_enabled(v6, v4);
  v8 = v0[22];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 136446466;
    v12 = AssetPack.description.getter();
    v14 = v13;
    sub_236E56DCC(v8, type metadata accessor for AssetPack);
    v15 = sub_236E381CC(v12, v14, v20);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2114;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_236E28000, v6, v4, "Local availability of the asset pack “%{public}s” couldn’t be ensured: %{public}@", v9, 0x16u);
    sub_236E38DBC(v10, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  else
  {

    sub_236E56DCC(v8, type metadata accessor for AssetPack);
  }

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_236E44408(id *a1, void *a2)
{
  v3 = [*a1 identifier];
  v4 = sub_236E81E94();
  v6 = v5;

  if (v4 == *a2 && v6 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_236E824E4();
  }

  return v8 & 1;
}

uint64_t sub_236E444A4()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for ManagedBackgroundAssetsError(0);
  v1[12] = swift_task_alloc();
  v2 = sub_236E81CF4();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  type metadata accessor for AssetPack(0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v3 = sub_236E81C94();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E44704, v0, 0);
}

uint64_t sub_236E44704()
{
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  *(v0 + 280) = __swift_project_value_buffer(v1, qword_27DE87DC8);
  v2 = sub_236E820E4();
  v3 = sub_236E81D84();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236E28000, v3, v2, "Check for update", v4, 2u);
    MEMORY[0x2383C0E50](v4, -1, -1);
  }

  v5 = sub_236E81D84();
  v6 = sub_236E82114();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_236E28000, v5, v6, "Refreshing the manifest…", v7, 2u);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  v8 = swift_task_alloc();
  *(v0 + 288) = v8;
  *v8 = v0;
  v8[1] = sub_236E448FC;

  return sub_236E5A46C();
}

uint64_t sub_236E448FC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_236E45D8C;
  }

  else
  {
    v4 = sub_236E44A54;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_236E44A54(uint64_t a1)
{
  v2 = sub_236E81D84();
  v3 = sub_236E82114();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_236E28000, v2, v3, "Checking for asset-pack updates…", v4, 2u);
    MEMORY[0x2383C0E50](v4, -1, -1);
  }

  v5 = MEMORY[0x277D84FA0];
  v1[6] = MEMORY[0x277D84FA0];
  v1[7] = v5;
  v6 = swift_task_alloc();
  v1[38] = v6;
  *v6 = v1;
  v6[1] = sub_236E44B94;

  return sub_236E3B30C();
}

uint64_t sub_236E44B94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 80);
  if (v1)
  {
    v6 = sub_236E45FF8;
  }

  else
  {
    v6 = sub_236E44CF4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_236E44CF4()
{
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  *(v0 + 328) = v2;
  if (v2)
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 112);
    *(v0 + 336) = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_helper;
    v5 = *(v3 + 80);
    *(v0 + 432) = v5;
    *(v0 + 344) = 0;
    if (!*(v1 + 16))
    {
      __break(1u);
    }

    v6 = *(v0 + 272);
    v7 = *(v0 + 216);
    v8 = *(v0 + 144);
    v9 = *(v0 + 104);
    v10 = *(v3 + 16);
    *(v0 + 352) = v10;
    *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v1 + ((v5 + 32) & ~v5), v7);
    sub_236E81C84();
    v11 = sub_236E81CA4();
    v13 = v12;
    *(v0 + 368) = v12;
    v14 = *(v4 + 8);
    *(v0 + 376) = v14;
    *(v0 + 384) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v8, v9);
    v15 = swift_task_alloc();
    *(v0 + 392) = v15;
    *v15 = v0;
    v15[1] = sub_236E44FD8;
    v16 = *(v0 + 208);

    return sub_236E3D890(v16, v11, v13);
  }

  else
  {

    v18 = *(v0 + 8);
    v19 = MEMORY[0x277D84FA0];
    v20 = MEMORY[0x277D84FA0];

    return v18(v19, v20);
  }
}

uint64_t sub_236E44FD8()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_236E46264;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_236E4514C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_236E4514C(uint64_t a1)
{
  v124 = v1;
  v123[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 208);
  v3 = sub_236E81C74();
  v4 = *(v2 + 24);
  if ((v4 & 0x8000000000000000) == 0 && v3 == v4)
  {
    v6 = *(v1 + 200);
    v5 = *(v1 + 208);
    v7 = sub_236E820D4();
    sub_236E57598(v5, v6, type metadata accessor for AssetPack);
    v8 = sub_236E81D84();
    v9 = os_log_type_enabled(v8, v7);
    v10 = *(v1 + 272);
    v11 = *(v1 + 216);
    v12 = *(v1 + 200);
    v13 = *(v1 + 208);
    v14 = (*(v1 + 224) + 8);
    if (v9)
    {
      logb = *(v1 + 216);
      v15 = swift_slowAlloc();
      v117 = v13;
      v16 = swift_slowAlloc();
      v123[0] = v16;
      *v15 = 136315138;
      v18 = *v12;
      v17 = v12[1];

      sub_236E56DCC(v12, type metadata accessor for AssetPack);
      v19 = sub_236E381CC(v18, v17, v123);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_236E28000, v8, v7, "The asset pack with the ID “%s” is already up to date.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x2383C0E50](v16, -1, -1);
      MEMORY[0x2383C0E50](v15, -1, -1);

      sub_236E56DCC(v117, type metadata accessor for AssetPack);
      (*v14)(v10, logb);
    }

    else
    {

      sub_236E56DCC(v12, type metadata accessor for AssetPack);
      sub_236E56DCC(v13, type metadata accessor for AssetPack);
      (*v14)(v10, v11);
    }

    goto LABEL_26;
  }

  v20 = sub_236E81C74();
  v21 = *(v1 + 352);
  v22 = *(v1 + 272);
  v23 = v4 < 1 || v20 >= v4;
  v24 = *(v1 + 208);
  v25 = *(v1 + 216);
  if (!v23)
  {
    v42 = *(v1 + 264);
    v43 = *(v1 + 184);
    sub_236E57598(*(v1 + 208), *(v1 + 192), type metadata accessor for AssetPack);
    v21(v42, v22, v25);
    sub_236E57598(v24, v43, type metadata accessor for AssetPack);
    v44 = sub_236E81D84();
    v45 = sub_236E82114();
    v46 = os_log_type_enabled(v44, v45);
    v29 = *(v1 + 264);
    v31 = *(v1 + 216);
    v30 = *(v1 + 224);
    v32 = *(v1 + 184);
    v33 = *(v1 + 192);
    if (v46)
    {
      log = v44;
      v34 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v123[0] = v118;
      *v34 = 136446722;
      v116 = v31;
      v48 = *v33;
      v47 = v33[1];

      sub_236E56DCC(v33, type metadata accessor for AssetPack);
      v49 = sub_236E381CC(v48, v47, v123);

      *(v34 + 4) = v49;
      *(v34 + 12) = 2048;
      v50 = sub_236E81C74();
      v39 = *(v30 + 8);
      v39(v29, v116);
      *(v34 + 14) = v50;
      *(v34 + 22) = 2048;
      v51 = *(v32 + 24);
      sub_236E56DCC(v32, type metadata accessor for AssetPack);
      *(v34 + 24) = v51;
      v41 = "The asset pack with the ID “%{public}s” will be updated from version %lu to %ld.";
      goto LABEL_14;
    }

LABEL_15:
    sub_236E56DCC(v32, type metadata accessor for AssetPack);
    v39 = *(v30 + 8);
    v39(v29, v31);

    sub_236E56DCC(v33, type metadata accessor for AssetPack);
    goto LABEL_16;
  }

  v26 = *(v1 + 256);
  v27 = *(v1 + 168);
  sub_236E57598(*(v1 + 208), *(v1 + 176), type metadata accessor for AssetPack);
  v21(v26, v22, v25);
  sub_236E57598(v24, v27, type metadata accessor for AssetPack);
  v44 = sub_236E81D84();
  v45 = sub_236E82114();
  v28 = os_log_type_enabled(v44, v45);
  v29 = *(v1 + 256);
  v31 = *(v1 + 216);
  v30 = *(v1 + 224);
  v32 = *(v1 + 168);
  v33 = *(v1 + 176);
  if (!v28)
  {
    goto LABEL_15;
  }

  log = v44;
  v34 = swift_slowAlloc();
  v118 = swift_slowAlloc();
  v123[0] = v118;
  *v34 = 136446722;
  v115 = v31;
  v36 = *v33;
  v35 = v33[1];

  sub_236E56DCC(v33, type metadata accessor for AssetPack);
  v37 = sub_236E381CC(v36, v35, v123);

  *(v34 + 4) = v37;
  *(v34 + 12) = 2048;
  v38 = sub_236E81C74();
  v39 = *(v30 + 8);
  v39(v29, v115);
  *(v34 + 14) = v38;
  *(v34 + 22) = 2048;
  v40 = *(v32 + 24);
  sub_236E56DCC(v32, type metadata accessor for AssetPack);
  *(v34 + 24) = v40;
  v41 = "The asset pack with the ID “%{public}s” will be rolled back from version %lu to %ld.";
LABEL_14:
  _os_log_impl(&dword_236E28000, log, v45, v41, v34, 0x20u);
  __swift_destroy_boxed_opaque_existential_0(v118);
  MEMORY[0x2383C0E50](v118, -1, -1);
  MEMORY[0x2383C0E50](v34, -1, -1);

LABEL_16:
  v52 = AssetPack.download(for:)(0, 1);
  v53 = [objc_opt_self() sharedManager];
  *(v1 + 72) = 0;
  v54 = [v53 startForegroundDownload:v52 error:v1 + 72];

  v55 = *(v1 + 72);
  v56 = *(v1 + 208);
  if (v54)
  {
    sub_236E57598(*(v1 + 208), *(v1 + 160), type metadata accessor for AssetPack);
    v57 = v55;
    v58 = sub_236E81D84();
    v59 = sub_236E82114();
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v1 + 160);
    if (v60)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v123[0] = v63;
      *v62 = 136446210;
      v64 = v52;
      v65 = *v61;
      v66 = v61[1];

      sub_236E56DCC(v61, type metadata accessor for AssetPack);
      v67 = sub_236E381CC(v65, v66, v123);
      v52 = v64;

      *(v62 + 4) = v67;
      _os_log_impl(&dword_236E28000, v58, v59, "An update to the asset pack with the ID “%{public}s” was scheduled.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x2383C0E50](v63, -1, -1);
      MEMORY[0x2383C0E50](v62, -1, -1);
    }

    else
    {

      sub_236E56DCC(v61, type metadata accessor for AssetPack);
    }

    v85 = *(v1 + 272);
    v86 = *(v1 + 216);
    v87 = *(v1 + 208);
    v88 = *v87;
    v89 = v87[1];

    sub_236E53B8C((v1 + 32), v88, v89);

    sub_236E56DCC(v87, type metadata accessor for AssetPack);
    v90 = v85;
    v91 = v86;
  }

  else
  {
    v68 = *(v1 + 152);
    v69 = v55;
    v70 = sub_236E81994();

    swift_willThrow();
    v71 = sub_236E820F4();
    sub_236E57598(v56, v68, type metadata accessor for AssetPack);
    v72 = v70;
    v73 = sub_236E81D84();

    v74 = os_log_type_enabled(v73, v71);
    v75 = *(v1 + 272);
    v119 = *(v1 + 208);
    loga = *(v1 + 216);
    v76 = *(v1 + 152);
    if (v74)
    {
      v113 = v52;
      v77 = swift_slowAlloc();
      v114 = v75;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v123[0] = v79;
      *v77 = 136446466;
      v112 = v39;
      v81 = *v76;
      v80 = v76[1];

      sub_236E56DCC(v76, type metadata accessor for AssetPack);
      v82 = sub_236E381CC(v81, v80, v123);

      *(v77 + 4) = v82;
      *(v77 + 12) = 2114;
      v83 = v70;
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 14) = v84;
      *v78 = v84;
      _os_log_impl(&dword_236E28000, v73, v71, "An update to the asset pack with the ID “%{public}s” couldn’t be scheduled: %{public}@", v77, 0x16u);
      sub_236E38DBC(v78, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v78, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x2383C0E50](v79, -1, -1);
      MEMORY[0x2383C0E50](v77, -1, -1);

      sub_236E56DCC(v119, type metadata accessor for AssetPack);
      v112(v114, loga);
      goto LABEL_26;
    }

    sub_236E56DCC(v76, type metadata accessor for AssetPack);
    sub_236E56DCC(v119, type metadata accessor for AssetPack);
    v90 = v75;
    v91 = loga;
  }

  v39(v90, v91);
LABEL_26:
  v92 = *(v1 + 344) + 1;
  if (v92 == *(v1 + 328))
  {

    v110 = *(v1 + 56);
    v111 = *(v1 + 48);

    v93 = *(v1 + 8);

    return v93(v111, v110);
  }

  else
  {
    *(v1 + 344) = v92;
    v95 = *(v1 + 312);
    if (v92 >= *(v95 + 16))
    {
      __break(1u);
    }

    v96 = *(v1 + 272);
    v97 = *(v1 + 216);
    v98 = *(v1 + 224);
    v99 = *(v1 + 144);
    v100 = *(v1 + 104);
    v101 = *(v1 + 112);
    v102 = *(v98 + 16);
    v98 += 16;
    v103 = v95 + ((*(v1 + 432) + 32) & ~*(v1 + 432)) + *(v98 + 56) * v92;
    *(v1 + 352) = v102;
    *(v1 + 360) = v98 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v102(v96, v103, v97);
    sub_236E81C84();
    v104 = sub_236E81CA4();
    v106 = v105;
    *(v1 + 368) = v105;
    v107 = *(v101 + 8);
    *(v1 + 376) = v107;
    *(v1 + 384) = (v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v107(v99, v100);
    v108 = swift_task_alloc();
    *(v1 + 392) = v108;
    *v108 = v1;
    v108[1] = sub_236E44FD8;
    v109 = *(v1 + 208);

    return sub_236E3D890(v109, v104, v106);
  }
}

uint64_t sub_236E45D8C(uint64_t a1)
{
  v2 = *(v1 + 296);
  v3 = sub_236E820F4();
  v4 = v2;
  v5 = sub_236E81D84();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_236E28000, v5, v3, "Checking for updates failed: %{public}@", v6, 0xCu);
    sub_236E38DBC(v7, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v7, -1, -1);
    MEMORY[0x2383C0E50](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_236E45FF8(uint64_t a1)
{
  v2 = *(v1 + 320);
  v3 = sub_236E820F4();
  v4 = v2;
  v5 = sub_236E81D84();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_236E28000, v5, v3, "Checking for updates failed: %{public}@", v6, 0xCu);
    sub_236E38DBC(v7, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v7, -1, -1);
    MEMORY[0x2383C0E50](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_236E46264()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 400);

  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 96);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v0 + 272);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);

    (*(v6 + 8))(v4, v5);

    sub_236E56DCC(v3, type metadata accessor for ManagedBackgroundAssetsError);
LABEL_10:

    v20 = *(v0 + 400);
    v21 = sub_236E820F4();
    v22 = v20;
    v23 = sub_236E81D84();

    if (os_log_type_enabled(v23, v21))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v20;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_236E28000, v23, v21, "Checking for updates failed: %{public}@", v24, 0xCu);
      sub_236E38DBC(v25, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v25, -1, -1);
      MEMORY[0x2383C0E50](v24, -1, -1);
    }

    swift_willThrow();

    v28 = *(v0 + 8);

    return v28();
  }

  v7 = *(v0 + 376);
  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  v11 = *v3;
  v10 = v3[1];
  sub_236E81C84();
  v12 = sub_236E81CA4();
  v14 = v13;
  v7(v8, v9);
  if (v12 == v11 && v14 == v10)
  {
  }

  else
  {
    v16 = sub_236E824E4();

    if ((v16 & 1) == 0)
    {
LABEL_9:
      v17 = *(v0 + 272);
      v18 = *(v0 + 216);
      v19 = *(v0 + 224);

      (*(v19 + 8))(v17, v18);

      goto LABEL_10;
    }
  }

  v30 = *(v0 + 352);
  v31 = *(v0 + 272);
  v32 = *(v0 + 248);
  v33 = *(v0 + 216);

  v30(v32, v31, v33);
  v34 = sub_236E81D84();
  v35 = sub_236E82114();
  if (os_log_type_enabled(v34, v35))
  {
    v52 = *(v0 + 376);
    v36 = *(v0 + 248);
    v37 = *(v0 + 224);
    v53 = *(v0 + 216);
    v38 = *(v0 + 128);
    v51 = *(v0 + 104);
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v54[0] = v40;
    *v39 = 136446210;
    sub_236E81C84();
    v41 = sub_236E81CA4();
    v43 = v42;
    v52(v38, v51);
    v44 = *(v37 + 8);
    v44(v36, v53);
    v45 = sub_236E381CC(v41, v43, v54);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_236E28000, v34, v35, "There’s no asset pack with the ID “%{public}s” in the latest version of the manifest; removing the downloaded asset pack…", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x2383C0E50](v40, -1, -1);
    MEMORY[0x2383C0E50](v39, -1, -1);
  }

  else
  {
    v46 = *(v0 + 248);
    v47 = *(v0 + 216);
    v48 = *(v0 + 224);

    v44 = *(v48 + 8);
    v44(v46, v47);
  }

  *(v0 + 408) = v44;
  sub_236E81C84();
  v49 = swift_task_alloc();
  *(v0 + 416) = v49;
  *v49 = v0;
  v49[1] = sub_236E4687C;
  v50 = *(v0 + 120);

  return MEMORY[0x282184AC0](v50);
}

uint64_t sub_236E4687C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = v2[47];
  v4 = v2[15];
  v5 = v2[13];
  v6 = v2[10];
  v3(v4, v5);
  if (v0)
  {
    v7 = sub_236E46EF8;
  }

  else
  {
    v7 = sub_236E46A2C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_236E46A2C()
{
  v48 = v0;
  v47[1] = *MEMORY[0x277D85DE8];
  (*(v0 + 352))(*(v0 + 240), *(v0 + 272), *(v0 + 216));
  v1 = sub_236E81D84();
  v2 = sub_236E82114();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 408);
  if (v3)
  {
    v5 = *(v0 + 240);
    v43 = *(v0 + 376);
    v44 = *(v0 + 216);
    v6 = *(v0 + 128);
    v42 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47[0] = v8;
    *v7 = 136446210;
    sub_236E81C84();
    v9 = sub_236E81CA4();
    v11 = v10;
    v43(v6, v42);
    v4(v5, v44);
    v12 = sub_236E381CC(v9, v11, v47);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_236E28000, v1, v2, "The asset pack with the ID “%{public}s” was removed.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2383C0E50](v8, -1, -1);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  else
  {
    v13 = *(v0 + 240);
    v14 = *(v0 + 216);

    v4(v13, v14);
  }

  v15 = *(v0 + 376);
  v16 = *(v0 + 272);
  v45 = *(v0 + 216);
  v46 = *(v0 + 408);
  v17 = *(v0 + 128);
  v18 = *(v0 + 104);
  sub_236E81C84();
  v19 = sub_236E81CA4();
  v21 = v20;
  v15(v17, v18);
  sub_236E53B8C((v0 + 16), v19, v21);

  v46(v16, v45);

  v22 = *(v0 + 344) + 1;
  if (v22 == *(v0 + 328))
  {

    v40 = *(v0 + 56);
    v41 = *(v0 + 48);

    v23 = *(v0 + 8);

    return v23(v41, v40);
  }

  else
  {
    *(v0 + 344) = v22;
    v25 = *(v0 + 312);
    if (v22 >= *(v25 + 16))
    {
      __break(1u);
    }

    v26 = *(v0 + 272);
    v27 = *(v0 + 216);
    v28 = *(v0 + 224);
    v29 = *(v0 + 144);
    v30 = *(v0 + 104);
    v31 = *(v0 + 112);
    v32 = *(v28 + 16);
    v28 += 16;
    v33 = v25 + ((*(v0 + 432) + 32) & ~*(v0 + 432)) + *(v28 + 56) * v22;
    *(v0 + 352) = v32;
    *(v0 + 360) = v28 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(v26, v33, v27);
    sub_236E81C84();
    v34 = sub_236E81CA4();
    v36 = v35;
    *(v0 + 368) = v35;
    v37 = *(v31 + 8);
    *(v0 + 376) = v37;
    *(v0 + 384) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v37(v29, v30);
    v38 = swift_task_alloc();
    *(v0 + 392) = v38;
    *v38 = v0;
    v38[1] = sub_236E44FD8;
    v39 = *(v0 + 208);

    return sub_236E3D890(v39, v34, v36);
  }
}

uint64_t sub_236E46EF8(uint64_t a1)
{
  v55 = v1;
  v54[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 424);
  v3 = *(v1 + 352);
  v4 = *(v1 + 272);
  v5 = *(v1 + 232);
  v6 = *(v1 + 216);
  v7 = sub_236E820F4();
  v3(v5, v4, v6);
  v8 = v2;
  v9 = sub_236E81D84();

  v10 = os_log_type_enabled(v9, v7);
  v11 = *(v1 + 424);
  v12 = *(v1 + 408);
  if (v10)
  {
    v50 = *(v1 + 376);
    v53 = *(v1 + 272);
    v13 = *(v1 + 232);
    v14 = *(v1 + 128);
    v48 = *(v1 + 104);
    v49 = *(v1 + 216);
    v52 = *(v1 + 424);
    v15 = *(v1 + 408);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v51 = v7;
    v18 = swift_slowAlloc();
    v54[0] = v18;
    *v16 = 136446466;
    sub_236E81C84();
    v19 = sub_236E81CA4();
    v21 = v20;
    v50(v14, v48);
    v15(v13, v49);
    v22 = sub_236E381CC(v19, v21, v54);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2114;
    v23 = v52;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v24;
    *v17 = v24;
    _os_log_impl(&dword_236E28000, v9, v51, "The asset pack with the ID “%{public}s” couldn’t be removed: %{public}@", v16, 0x16u);
    sub_236E38DBC(v17, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2383C0E50](v18, -1, -1);
    MEMORY[0x2383C0E50](v16, -1, -1);

    v15(v53, v49);
  }

  else
  {
    v25 = *(v1 + 272);
    v26 = *(v1 + 232);
    v27 = *(v1 + 216);

    v12(v26, v27);
    v12(v25, v27);
  }

  v28 = *(v1 + 344) + 1;
  if (v28 == *(v1 + 328))
  {

    v46 = *(v1 + 56);
    v47 = *(v1 + 48);

    v29 = *(v1 + 8);

    return v29(v47, v46);
  }

  else
  {
    *(v1 + 344) = v28;
    v31 = *(v1 + 312);
    if (v28 >= *(v31 + 16))
    {
      __break(1u);
    }

    v32 = *(v1 + 272);
    v33 = *(v1 + 216);
    v34 = *(v1 + 224);
    v35 = *(v1 + 144);
    v36 = *(v1 + 104);
    v37 = *(v1 + 112);
    v38 = *(v34 + 16);
    v34 += 16;
    v39 = v31 + ((*(v1 + 432) + 32) & ~*(v1 + 432)) + *(v34 + 56) * v28;
    *(v1 + 352) = v38;
    *(v1 + 360) = v34 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v38(v32, v39, v33);
    sub_236E81C84();
    v40 = sub_236E81CA4();
    v42 = v41;
    *(v1 + 368) = v41;
    v43 = *(v37 + 8);
    *(v1 + 376) = v43;
    *(v1 + 384) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v35, v36);
    v44 = swift_task_alloc();
    *(v1 + 392) = v44;
    *v44 = v1;
    v44[1] = sub_236E44FD8;
    v45 = *(v1 + 208);

    return sub_236E3D890(v45, v40, v42);
  }
}

uint64_t sub_236E4741C(uint64_t a1, NSObject *a2)
{
  v156 = a2;
  v173 = sub_236E81CF4();
  v171 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v172 = v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E00, &unk_236E84CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v176 = v140 - v5;
  v170 = type metadata accessor for AssetPack(0);
  v168 = *(v170 - 8);
  v6 = MEMORY[0x28223BE20](v170);
  v145 = v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v153 = (v140 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v140 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (v140 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v150 = v140 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v149 = (v140 - v19);
  MEMORY[0x28223BE20](v18);
  v160 = v140 - v20;
  v21 = sub_236E81C94();
  v169 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v157 = v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v144 = v140 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v140 - v27;
  MEMORY[0x28223BE20](v26);
  v166 = v140 - v29;
  v30 = *a1;
  v164 = *(a1 + 8);
  v31 = *(a1 + 24);
  v163 = *(a1 + 16);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v32 = sub_236E81DA4();
  v33 = __swift_project_value_buffer(v32, qword_27DE87DC8);
  v34 = sub_236E820E4();

  v161 = v33;
  v35 = sub_236E81D84();

  v36 = os_log_type_enabled(v35, v34);
  v152 = v12;
  v151 = v15;
  v148 = v28;
  v165 = v30;
  v162 = v31;
  if (v36)
  {
    v37 = v21;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v181 = v39;
    *v38 = 136446466;
    v177 = 0;
    v178 = 0xE000000000000000;

    sub_236E82264();

    v177 = 0xD000000000000024;
    v178 = 0x8000000236E89E50;
    sub_236E57620(&qword_27DE88020, type metadata accessor for AssetPack, &protocol conformance descriptor for AssetPack);
    v40 = sub_236E820A4();
    MEMORY[0x2383BFD30](v40);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);

    v41 = sub_236E381CC(v177, v178, &v181);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2082;
    v177 = v156;
    type metadata accessor for BAContentRequest(0);
    v42 = sub_236E81ED4();
    v44 = sub_236E381CC(v42, v43, &v181);

    *(v38 + 14) = v44;
    _os_log_impl(&dword_236E28000, v35, v34, "Update downloads for: %{public}s content request: %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v39, -1, -1);
    v45 = v38;
    v21 = v37;
    MEMORY[0x2383C0E50](v45, -1, -1);
  }

  v46 = v166;
  v47 = v169;
  if (MEMORY[0x277D84F90] >> 62 && sub_236E821E4())
  {
    sub_236E38944(MEMORY[0x277D84F90]);
    v48 = v139;
  }

  else
  {
    v48 = MEMORY[0x277D84FA0];
  }

  v181 = v48;
  v49 = v175;
  v50 = sub_236E81BB4();
  v146 = v49;
  if (v49 || (v52 = *(v50 + 16)) == 0)
  {

    return v48;
  }

  v55 = *(v47 + 16);
  v54 = v47 + 16;
  v53 = v55;
  v56 = (*(v54 + 64) + 32) & ~*(v54 + 64);
  v140[1] = v50;
  v57 = v50 + v56;
  v159 = *(v54 + 56);
  ++v171;
  v158 = (v168 + 48);
  *&v51 = 136315138;
  v147 = v51;
  *&v51 = 136446722;
  v143 = v51;
  *&v51 = 136446466;
  v141 = v51;
  v168 = v55;
  v169 = v54;
  v155 = v21;
  v167 = (v54 - 8);
  do
  {
    v174 = v57;
    v175 = v52;
    v53(v46);
    v177 = v165;
    LOBYTE(v178) = v164;
    v179 = v163;
    v180 = v162;
    v59 = v172;
    sub_236E81C84();
    v60 = sub_236E81CA4();
    v61 = v46;
    v63 = v62;
    v64 = *v171;
    (*v171)(v59, v173);
    v65 = v176;
    sub_236E70DE0(v60, v63, v176);

    if ((*v158)(v65, 1, v170) == 1)
    {
      sub_236E38DBC(v176, &unk_27DE87E00, &unk_236E84CA0);
      v66 = v53;
      v67 = v157;
      v66(v157, v61, v21);
      v68 = sub_236E81D84();
      v69 = sub_236E82114();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = v67;
        v71 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v177 = v154;
        *v71 = v147;
        v72 = v172;
        sub_236E81C84();
        v73 = sub_236E81CA4();
        v75 = v74;
        v64(v72, v173);
        v76 = *v167;
        (*v167)(v70, v21);
        v77 = sub_236E381CC(v73, v75, &v177);

        *(v71 + 4) = v77;
        _os_log_impl(&dword_236E28000, v68, v69, "The asset pack with the ID “%s” is obsolete and therefore can’t be updated.", v71, 0xCu);
        v78 = v154;
        __swift_destroy_boxed_opaque_existential_0(v154);
        MEMORY[0x2383C0E50](v78, -1, -1);
        v79 = v71;
        v46 = v166;
        MEMORY[0x2383C0E50](v79, -1, -1);

        v76(v46, v21);
      }

      else
      {
        v46 = v61;

        v58 = *v167;
        (*v167)(v67, v21);
        v58(v61, v21);
      }
    }

    else
    {
      v80 = v160;
      sub_236E57708(v176, v160, type metadata accessor for AssetPack);
      v81 = sub_236E81C74();
      v82 = *(v80 + 24);
      if (v82 >= 1 && v81 < v82)
      {
        v83 = v80;
        v84 = v80;
        v85 = v149;
        sub_236E57598(v83, v149, type metadata accessor for AssetPack);
        v86 = v148;
        (v53)(v148, v61, v21);
        v87 = v150;
        sub_236E57598(v84, v150, type metadata accessor for AssetPack);
        v88 = sub_236E81D84();
        v89 = sub_236E82114();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v154 = swift_slowAlloc();
          v177 = v154;
          *v90 = v143;
          v91 = *v85;
          v92 = v85[1];

          sub_236E56DCC(v85, type metadata accessor for AssetPack);
          v93 = sub_236E381CC(v91, v92, &v177);

          *(v90 + 4) = v93;
          *(v90 + 12) = 2048;
          v94 = sub_236E81C74();
          v95 = v86;
          v96 = *v167;
          (*v167)(v95, v155);
          *(v90 + 14) = v94;
          *(v90 + 22) = 2048;
          v97 = *(v87 + 24);
          sub_236E56DCC(v87, type metadata accessor for AssetPack);
          *(v90 + 24) = v97;
          _os_log_impl(&dword_236E28000, v88, v89, "The asset pack with the ID “%{public}s” will be updated from version %lu to %ld.", v90, 0x20u);
          v98 = v154;
          __swift_destroy_boxed_opaque_existential_0(v154);
          MEMORY[0x2383C0E50](v98, -1, -1);
          v99 = v90;
          v21 = v155;
          MEMORY[0x2383C0E50](v99, -1, -1);

          v100 = v96;
        }

        else
        {
          sub_236E56DCC(v87, type metadata accessor for AssetPack);
          v136 = *v167;
          (*v167)(v86, v21);

          v100 = v136;
          sub_236E56DCC(v85, type metadata accessor for AssetPack);
        }

        v133 = v160;
        goto LABEL_27;
      }

      v101 = sub_236E81C74();
      v102 = v153;
      v103 = v152;
      v104 = v151;
      if (v82 < 0 || v82 < v101)
      {
        sub_236E57598(v80, v153, type metadata accessor for AssetPack);
        v118 = v144;
        (v168)(v144, v166, v21);
        v119 = v145;
        sub_236E57598(v80, v145, type metadata accessor for AssetPack);
        v120 = sub_236E81D84();
        v121 = sub_236E82114();
        v154 = v120;
        v122 = os_log_type_enabled(v120, v121);
        v123 = v167;
        if (v122)
        {
          v124 = v118;
          v125 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v177 = v142;
          *v125 = v143;
          v126 = *v102;
          v127 = v102[1];

          sub_236E56DCC(v102, type metadata accessor for AssetPack);
          v128 = sub_236E381CC(v126, v127, &v177);

          *(v125 + 4) = v128;
          *(v125 + 12) = 2048;
          v129 = sub_236E81C74();
          v130 = *v167;
          (*v167)(v124, v155);
          *(v125 + 14) = v129;
          *(v125 + 22) = 2048;
          v131 = *(v119 + 24);
          v132 = v119;
          v100 = v130;
          v133 = v160;
          sub_236E56DCC(v132, type metadata accessor for AssetPack);
          *(v125 + 24) = v131;
          v134 = v154;
          _os_log_impl(&dword_236E28000, v154, v121, "The asset pack with the ID “%{public}s” will be rolled back from version %lu to %ld.", v125, 0x20u);
          v135 = v142;
          __swift_destroy_boxed_opaque_existential_0(v142);
          MEMORY[0x2383C0E50](v135, -1, -1);
          MEMORY[0x2383C0E50](v125, -1, -1);

          v21 = v155;
        }

        else
        {
          sub_236E56DCC(v119, type metadata accessor for AssetPack);
          v100 = *v123;
          v21 = v155;
          (*v123)(v118, v155);

          sub_236E56DCC(v102, type metadata accessor for AssetPack);
          v133 = v160;
        }

LABEL_27:
        v137 = AssetPack.download(for:)(v156, 0);
        sub_236E53944(&v177, v137);

        sub_236E56DCC(v133, type metadata accessor for AssetPack);
        v46 = v166;
        v100(v166, v21);
        goto LABEL_11;
      }

      v105 = sub_236E820D4();
      sub_236E57598(v80, v104, type metadata accessor for AssetPack);
      sub_236E57598(v80, v103, type metadata accessor for AssetPack);
      v106 = sub_236E81D84();
      v107 = os_log_type_enabled(v106, v105);
      v108 = v167;
      if (v107)
      {
        v109 = swift_slowAlloc();
        v110 = v103;
        LODWORD(v154) = v105;
        v111 = v109;
        v112 = swift_slowAlloc();
        v177 = v112;
        *v111 = v141;
        v113 = *v104;
        v114 = v104[1];

        sub_236E56DCC(v104, type metadata accessor for AssetPack);
        v115 = sub_236E381CC(v113, v114, &v177);

        *(v111 + 4) = v115;
        *(v111 + 12) = 2048;
        v116 = *(v110 + 24);
        sub_236E56DCC(v110, type metadata accessor for AssetPack);
        *(v111 + 14) = v116;
        _os_log_impl(&dword_236E28000, v106, v154, "The asset pack with the ID “%{public}s” is already up to date with version %ld.", v111, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v112);
        MEMORY[0x2383C0E50](v112, -1, -1);
        MEMORY[0x2383C0E50](v111, -1, -1);

        v117 = v160;
        v21 = v155;
      }

      else
      {
        sub_236E56DCC(v103, type metadata accessor for AssetPack);

        sub_236E56DCC(v104, type metadata accessor for AssetPack);
        v117 = v80;
      }

      sub_236E56DCC(v117, type metadata accessor for AssetPack);
      v46 = v166;
      (*v108)(v166, v21);
    }

LABEL_11:
    v57 = v174 + v159;
    v52 = v175 - 1;
    v53 = v168;
  }

  while (v175 != 1);

  return v181;
}

uint64_t sub_236E484E4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E68, &qword_236E84CF8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v10 = sub_236E81DA4();
  __swift_project_value_buffer(v10, qword_27DE87DC8);
  v11 = sub_236E820E4();

  v12 = sub_236E81D84();

  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v19 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_236E381CC(a1, a2, &v20);
    _os_log_impl(&dword_236E28000, v12, v11, "Status updates for asset pack with ID: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2383C0E50](v15, -1, -1);
    v3 = v19;
    MEMORY[0x2383C0E50](v14, -1, -1);
  }

  v16 = *(v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_statusUpdates);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v20 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E70, &qword_236E84D10);
  sub_236E58664(&qword_27DE87E78, &qword_27DE87E70, &qword_236E84D10, MEMORY[0x277D25BD8]);
  sub_236E82394();
  sub_236E58664(&qword_27DE87E80, &qword_27DE87E68, &qword_236E84CF8, MEMORY[0x277D859A0]);
  sub_236E82074();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_236E487F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v3[6] = swift_task_alloc();
  type metadata accessor for AssetPack(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E488BC, 0, 0);
}

uint64_t sub_236E488BC()
{
  sub_236E57598(v0[2], v0[6], type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
    }
  }

  else if (EnumCaseMultiPayload >= 2)
  {
  }

  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  sub_236E57708(v0[6], v2, type metadata accessor for AssetPack);
  v5 = *v2;
  v6 = v2[1];

  sub_236E56DCC(v2, type metadata accessor for AssetPack);
  if (v5 == v4 && v6 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_236E824E4();
  }

  v9 = v0[1];

  return v9(v8 & 1);
}

uint64_t sub_236E48A4C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for AssetPackManager.DownloadStatusUpdate(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E48AE0, 0, 0);
}

uint64_t sub_236E48AE0()
{
  sub_236E57598(v0[2], v0[4], type metadata accessor for AssetPackManager.DownloadStatusUpdate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[4];
  v3 = type metadata accessor for AssetPackManager.DownloadStatusUpdate;
  if (EnumCaseMultiPayload == 3)
  {
    v4 = 1;
  }

  else if (EnumCaseMultiPayload == 4)
  {

    v4 = 1;
    v3 = type metadata accessor for AssetPack;
  }

  else
  {
    v4 = 0;
    v3 = type metadata accessor for AssetPackManager.DownloadStatusUpdate;
  }

  sub_236E56DCC(v2, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_236E48BF8(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v164 = a4;
  v175 = a2;
  v157 = sub_236E819A4();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v154 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E88, &unk_236E84D20);
  MEMORY[0x28223BE20](v7 - 8);
  v155 = &v151 - v8;
  v9 = sub_236E819F4();
  v159 = *(v9 - 8);
  v160 = v9;
  MEMORY[0x28223BE20](v9);
  v158 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_236E81CF4();
  v167 = *(v11 - 8);
  v168 = v11;
  MEMORY[0x28223BE20](v11);
  v166 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_236E81E34();
  v177 = *(v13 - 8);
  v178 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v161 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v173 = &v151 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v151 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v153 = &v151 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v151 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v151 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v151 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E90, &unk_236E853B0);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v162 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v151 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v165 = &v151 - v38;
  MEMORY[0x28223BE20](v37);
  v169 = &v151 - v39;
  v40 = 0x27DE87000uLL;
  v172 = a3;
  v163 = v25;
  v152 = v20;
  if (a3)
  {
    v41 = a3;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v42 = sub_236E81DA4();
    __swift_project_value_buffer(v42, qword_27DE87DC8);
    v43 = sub_236E820E4();
    v44 = a1;
    v174 = *(v177 + 16);
    v174(v30, a1, v178);

    v45 = sub_236E81D84();

    if (os_log_type_enabled(v45, v43))
    {
      v46 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v180 = v151;
      *v46 = 136446722;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v47 = v178;
      v48 = sub_236E82484();
      v49 = v41;
      v50 = v47;
      v52 = v51;
      v176 = *(v177 + 8);
      v176(v30, v50);
      v53 = sub_236E381CC(v48, v52, &v180);
      v54 = v175;
      v55 = v43;
      v56 = v164;

      *(v46 + 4) = v53;
      *(v46 + 12) = 2082;
      *(v46 + 14) = sub_236E381CC(v54, v49, &v180);
      *(v46 + 22) = 2082;
      v179 = v56;
      type metadata accessor for ReadingOptions(0);
      v57 = sub_236E81ED4();
      v59 = sub_236E381CC(v57, v58, &v180);

      *(v46 + 24) = v59;
      _os_log_impl(&dword_236E28000, v45, v55, "Contents at: %{public}s searching in asset pack with ID: %{public}s options: %{public}s", v46, 0x20u);
      v60 = v151;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v60, -1, -1);
      MEMORY[0x2383C0E50](v46, -1, -1);
    }

    else
    {

      v176 = *(v177 + 8);
      v176(v30, v178);
      v49 = v41;
    }

    v76 = v165;
    v75 = v166;
    sub_236E4EDE4(v175, v49);
    v77 = v171;
    sub_236E81C14();
    v78 = v77;
    v79 = v173;
    if (v77)
    {
      (*(v167 + 8))(v75, v168);
      v40 = v172;
      v80 = v174;
      goto LABEL_43;
    }

    (*(v167 + 8))(v75, v168);
    v80 = v174;
  }

  else
  {
    v168 = a1;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v61 = sub_236E81DA4();
    __swift_project_value_buffer(v61, qword_27DE87DC8);
    v62 = sub_236E820E4();
    v174 = *(v177 + 16);
    v174(v28, v168, v178);
    v63 = sub_236E81D84();
    if (os_log_type_enabled(v63, v62))
    {
      v64 = swift_slowAlloc();
      LODWORD(v167) = v62;
      v65 = v64;
      v66 = swift_slowAlloc();
      v180 = v66;
      *v65 = 136446466;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v67 = v178;
      v68 = sub_236E82484();
      v70 = v69;
      v176 = *(v177 + 8);
      v176(v28, v67);
      v71 = sub_236E381CC(v68, v70, &v180);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2082;
      v179 = v164;
      type metadata accessor for ReadingOptions(0);
      v72 = sub_236E81ED4();
      v74 = sub_236E381CC(v72, v73, &v180);

      *(v65 + 14) = v74;
      _os_log_impl(&dword_236E28000, v63, v167, "Contents at: %{public}s options: %{public}s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v66, -1, -1);
      MEMORY[0x2383C0E50](v65, -1, -1);
    }

    else
    {

      v176 = *(v177 + 8);
      v176(v28, v178);
    }

    v79 = v173;
    v81 = v171;
    v44 = v168;
    sub_236E81C04();
    v78 = v81;
    v80 = v174;
    if (v81)
    {
LABEL_48:
      v79 = v161;
      if (qword_27DE87AB8 != -1)
      {
        swift_once();
      }

      v138 = sub_236E81DA4();
      __swift_project_value_buffer(v138, qword_27DE87DC8);
      v139 = sub_236E820F4();
      v80(v79, v44, v178);
      v140 = v78;
      v124 = sub_236E81D84();

      if (os_log_type_enabled(v124, v139))
      {
        v40 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v180 = v175;
        *v40 = 136446466;
        sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        v142 = v178;
        v143 = sub_236E82484();
        v145 = v144;
        v176(v79, v142);
        v146 = sub_236E381CC(v143, v145, &v180);

        *(v40 + 4) = v146;
        *(v40 + 12) = 2114;
        v147 = v78;
        v148 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v148;
        *v141 = v148;
        _os_log_impl(&dword_236E28000, v124, v139, "The contents at “%{public}s” couldn’t be read: %{public}@", v40, 0x16u);
        sub_236E38DBC(v141, &qword_27DE88170, &qword_236E853C0);
        MEMORY[0x2383C0E50](v141, -1, -1);
        v149 = v175;
        __swift_destroy_boxed_opaque_existential_0(v175);
        MEMORY[0x2383C0E50](v149, -1, -1);
        v137 = v40;
        goto LABEL_52;
      }

LABEL_53:

      v176(v79, v178);
      goto LABEL_54;
    }

    v76 = v36;
  }

  v82 = v169;
  sub_236E59508(v76, v169, &qword_27DE87E90, &unk_236E853B0);
  v83 = v82;
  v84 = v162;
  sub_236E593A8(v83, v162, &qword_27DE87E90, &unk_236E853B0);
  if ((*(v177 + 48))(v84, 1, v178) == 1)
  {
    sub_236E38DBC(v84, &qword_27DE87E90, &unk_236E853B0);
    type metadata accessor for ManagedBackgroundAssetsError(0);
    sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError, &protocol conformance descriptor for ManagedBackgroundAssetsError);
    v78 = swift_allocError();
    v80(v85, v44, v178);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_42;
  }

  v168 = v44;
  v171 = 0;
  v86 = v178;
  v87 = v163;
  (*(v177 + 32))(v163, v84, v178);
  v88 = v80;
  v89 = v153;
  v80(v153, v87, v86);
  v90 = v154;
  (*(v156 + 104))(v154, *MEMORY[0x277CC91D8], v157);
  v91 = v155;
  sub_236E4A0F4(v89, v90, v155);
  v93 = v159;
  v92 = v160;
  if ((*(v159 + 48))(v91, 1, v160) != 1)
  {
    v174 = v88;
    v98 = v158;
    (*(v93 + 32))(v158, v91, v92);
    v99 = v164;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v100 = sub_236E81DA4();
    __swift_project_value_buffer(v100, qword_27DE87DC8);
    v101 = sub_236E820D4();
    v102 = v152;
    v103 = v174;
    v174(v152, v163, v178);
    v80 = v103;
    v104 = sub_236E81D84();
    LODWORD(v170) = v101;
    if (os_log_type_enabled(v104, v101))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v180 = v106;
      *v105 = 136446210;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v107 = v102;
      v108 = v178;
      v109 = sub_236E82484();
      v111 = v110;
      v176(v107, v108);
      v112 = sub_236E381CC(v109, v111, &v180);
      v98 = v158;

      *(v105 + 4) = v112;
      _os_log_impl(&dword_236E28000, v104, v170, "Reading the file at “%{public}s”…", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x2383C0E50](v106, -1, -1);
      v80 = v174;
      MEMORY[0x2383C0E50](v105, -1, -1);

      v78 = v171;
      if ((v99 & 8) != 0)
      {
LABEL_25:
        v113 = sub_236E820D4();
        v114 = sub_236E81D84();
        if (!os_log_type_enabled(v114, v113))
        {
          v98 = v158;
          v79 = v173;
          goto LABEL_34;
        }

        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_236E28000, v114, v113, "Unconditionally mapping the file into memory…", v115, 2u);
        v79 = v173;
        goto LABEL_31;
      }
    }

    else
    {

      v176(v102, v178);
      v78 = v171;
      if ((v99 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

    v79 = v173;
    if ((v99 & 1) == 0)
    {
LABEL_35:
      if ((v99 & 2) != 0)
      {
        v117 = sub_236E820D4();
        v118 = sub_236E81D84();
        if (os_log_type_enabled(v118, v117))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&dword_236E28000, v118, v117, "Bypassing file-system caches…", v119, 2u);
          MEMORY[0x2383C0E50](v119, -1, -1);
        }

        v98 = v158;
      }

      v120 = sub_236E81A04();
      if (!v78)
      {
        v40 = v120;
        (*(v159 + 8))(v98, v160);
        v176(v163, v178);
        sub_236E38DBC(v169, &qword_27DE87E90, &unk_236E853B0);
        return v40;
      }

      (*(v159 + 8))(v98, v160);
      v176(v163, v178);
      goto LABEL_41;
    }

    v116 = sub_236E820D4();
    v114 = sub_236E81D84();
    if (!os_log_type_enabled(v114, v116))
    {
      goto LABEL_32;
    }

    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&dword_236E28000, v114, v116, "Conditionally mapping the file into memory…", v115, 2u);
LABEL_31:
    MEMORY[0x2383C0E50](v115, -1, -1);
LABEL_32:
    v98 = v158;
LABEL_34:

    goto LABEL_35;
  }

  sub_236E38DBC(v91, &qword_27DE87E88, &unk_236E84D20);
  type metadata accessor for AssetPackManagerError(0);
  sub_236E57620(&qword_27DE87E48, type metadata accessor for AssetPackManagerError, &unk_236E84FE0);
  v94 = swift_allocError();
  v95 = v178;
  v88(v96, v87, v178);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v97 = v87;
  v78 = v94;
  v176(v97, v95);
  v80 = v88;
  v79 = v173;
LABEL_41:
  v44 = v168;
LABEL_42:
  sub_236E38DBC(v169, &qword_27DE87E90, &unk_236E853B0);
  v40 = v172;
  if (!v172)
  {
    v40 = 0x27DE87000uLL;
    goto LABEL_48;
  }

LABEL_43:
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v121 = sub_236E81DA4();
  __swift_project_value_buffer(v121, qword_27DE87DC8);
  v122 = sub_236E820F4();
  v80(v79, v44, v178);

  v123 = v78;
  v124 = sub_236E81D84();

  if (!os_log_type_enabled(v124, v122))
  {
    goto LABEL_53;
  }

  v125 = v79;
  v126 = swift_slowAlloc();
  v127 = swift_slowAlloc();
  v174 = swift_slowAlloc();
  v180 = v174;
  *v126 = 136446722;
  sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
  v128 = v78;
  v129 = v125;
  v130 = v178;
  v131 = sub_236E82484();
  v133 = v132;
  v176(v129, v130);
  v134 = sub_236E381CC(v131, v133, &v180);

  *(v126 + 4) = v134;
  *(v126 + 12) = 2082;
  *(v126 + 14) = sub_236E381CC(v175, v172, &v180);
  *(v126 + 22) = 2114;
  v135 = v128;
  v136 = _swift_stdlib_bridgeErrorToNSError();
  *(v126 + 24) = v136;
  *v127 = v136;
  _os_log_impl(&dword_236E28000, v124, v122, "The contents at “%{public}s” in the asset pack with the ID “%{public}s” couldn’t be read: %{public}@", v126, 0x20u);
  sub_236E38DBC(v127, &qword_27DE88170, &qword_236E853C0);
  MEMORY[0x2383C0E50](v127, -1, -1);
  v40 = v174;
  swift_arrayDestroy();
  MEMORY[0x2383C0E50](v40, -1, -1);
  v137 = v126;
LABEL_52:
  MEMORY[0x2383C0E50](v137, -1, -1);

LABEL_54:
  swift_willThrow();
  return v40;
}

uint64_t sub_236E4A0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E88, &unk_236E84D20);
  MEMORY[0x28223BE20](v5 - 8);
  v26 = v23 - v6;
  v7 = sub_236E819A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_236E81E34();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = sub_236E81F14();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = sub_236E819F4();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    sub_236E819D4();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = sub_236E819F4();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

uint64_t sub_236E4A408(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v136 = a2;
  v5 = sub_236E81CF4();
  v132 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v131 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_236E81E34();
  v7 = *(v140 - 8);
  v8 = MEMORY[0x28223BE20](v140);
  v127 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v122 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v123 = &v122 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v126 = &v122 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v122 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v122 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E90, &unk_236E853B0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v130 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v122 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v28);
  v133 = a3;
  v135 = a1;
  v128 = &v122 - v30;
  v129 = v12;
  if (a3)
  {
    v124 = v29;
    v125 = v5;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v31 = sub_236E81DA4();
    __swift_project_value_buffer(v31, qword_27DE87DC8);
    v32 = sub_236E820E4();
    v139 = *(v7 + 16);
    v139(v21, a1, v140);

    v33 = sub_236E81D84();

    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v134 = v7;
      v36 = v140;
      v37 = v35;
      v141 = v35;
      *v34 = 136446466;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v38 = sub_236E82484();
      v39 = a3;
      v41 = v40;
      v138 = *(v134 + 8);
      v138(v21, v36);
      v42 = sub_236E381CC(v38, v41, &v141);

      *(v34 + 4) = v42;
      *(v34 + 12) = 2082;
      v43 = v136;
      *(v34 + 14) = sub_236E381CC(v136, v39, &v141);
      _os_log_impl(&dword_236E28000, v33, v32, "Descriptor for: %{public}s searching in asset pack with ID: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      v7 = v134;
      MEMORY[0x2383C0E50](v37, -1, -1);
      MEMORY[0x2383C0E50](v34, -1, -1);
    }

    else
    {

      v138 = *(v7 + 8);
      v138(v21, v140);
      v39 = a3;
      v43 = v136;
    }

    v56 = v131;
    sub_236E4EDE4(v43, v39);
    v57 = v124;
    a1 = v135;
    v58 = v137;
    sub_236E81C14();
    v59 = v58;
    v60 = v139;
    if (v58)
    {
      (*(v132 + 8))(v56, v125);
      v61 = v133;
      v62 = 0x27DE87000;
LABEL_28:
      if (*(v62 + 2744) != -1)
      {
        swift_once();
      }

      v85 = sub_236E81DA4();
      __swift_project_value_buffer(v85, qword_27DE87DC8);
      v86 = sub_236E820F4();
      v87 = v129;
      v60(v129, a1, v140);

      v88 = v59;
      v89 = sub_236E81D84();

      if (os_log_type_enabled(v89, v86))
      {
        v90 = swift_slowAlloc();
        v134 = v7;
        v91 = v90;
        v92 = swift_slowAlloc();
        v93 = v140;
        LODWORD(v137) = v86;
        v94 = v92;
        v139 = swift_slowAlloc();
        v141 = v139;
        *v91 = 136446722;
        sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        v95 = v61;
        v96 = sub_236E82484();
        v98 = v97;
        v138(v87, v93);
        v99 = sub_236E381CC(v96, v98, &v141);

        *(v91 + 4) = v99;
        *(v91 + 12) = 2082;
        *(v91 + 14) = sub_236E381CC(v136, v95, &v141);
        *(v91 + 22) = 2114;
        v100 = v59;
        v101 = _swift_stdlib_bridgeErrorToNSError();
        *(v91 + 24) = v101;
        *v94 = v101;
        _os_log_impl(&dword_236E28000, v89, v137, "A file descriptor couldn’t be opened for “%{public}s” in the asset pack with the ID “%{public}s”: %{public}@", v91, 0x20u);
        sub_236E38DBC(v94, &qword_27DE88170, &qword_236E853C0);
        MEMORY[0x2383C0E50](v94, -1, -1);
        v102 = v139;
        swift_arrayDestroy();
        v103 = v102;
LABEL_38:
        MEMORY[0x2383C0E50](v103, -1, -1);
        MEMORY[0x2383C0E50](v91, -1, -1);

        return swift_willThrow();
      }

      v104 = v87;
      goto LABEL_40;
    }

    (*(v132 + 8))(v56, v125);
    v63 = v130;
    v64 = v57;
  }

  else
  {
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v44 = sub_236E81DA4();
    __swift_project_value_buffer(v44, qword_27DE87DC8);
    v45 = sub_236E820E4();
    v139 = *(v7 + 16);
    v139(v19, a1, v140);
    v46 = sub_236E81D84();
    if (os_log_type_enabled(v46, v45))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v140;
      LODWORD(v134) = v45;
      v50 = v48;
      v141 = v48;
      *v47 = 136446210;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v51 = sub_236E82484();
      v53 = v52;
      v138 = *(v7 + 8);
      v138(v19, v49);
      v54 = sub_236E381CC(v51, v53, &v141);

      *(v47 + 4) = v54;
      _os_log_impl(&dword_236E28000, v46, v134, "Descriptor for: %{public}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x2383C0E50](v50, -1, -1);
      v55 = v47;
      a1 = v135;
      MEMORY[0x2383C0E50](v55, -1, -1);
    }

    else
    {

      v138 = *(v7 + 8);
      v138(v19, v140);
    }

    v65 = v137;
    sub_236E81C04();
    v59 = v65;
    v66 = v127;
    v67 = v139;
    v63 = v130;
    if (v65)
    {
      v62 = 0x27DE87000;
      goto LABEL_34;
    }

    v64 = v27;
  }

  v68 = v128;
  sub_236E59508(v64, v128, &qword_27DE87E90, &unk_236E853B0);
  sub_236E593A8(v68, v63, &qword_27DE87E90, &unk_236E853B0);
  if ((*(v7 + 48))(v63, 1, v140) == 1)
  {
    sub_236E38DBC(v63, &qword_27DE87E90, &unk_236E853B0);
    type metadata accessor for ManagedBackgroundAssetsError(0);
    sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError, &protocol conformance descriptor for ManagedBackgroundAssetsError);
    v59 = swift_allocError();
    v139(v69, a1, v140);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_236E38DBC(v68, &qword_27DE87E90, &unk_236E853B0);
    v61 = v133;
    v62 = 0x27DE87000uLL;
    if (v133)
    {
      v60 = v139;
      goto LABEL_28;
    }

    v66 = v127;
    v67 = v139;
LABEL_34:
    if (*(v62 + 2744) != -1)
    {
      swift_once();
    }

    v105 = sub_236E81DA4();
    __swift_project_value_buffer(v105, qword_27DE87DC8);
    v106 = sub_236E820F4();
    v67(v66, a1, v140);
    v107 = v59;
    v89 = sub_236E81D84();

    if (os_log_type_enabled(v89, v106))
    {
      v108 = swift_slowAlloc();
      v134 = v7;
      v91 = v108;
      v109 = swift_slowAlloc();
      v110 = v140;
      v111 = v109;
      v112 = swift_slowAlloc();
      v141 = v112;
      *v91 = 136446466;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v113 = sub_236E82484();
      v114 = v66;
      v115 = v113;
      v117 = v116;
      v138(v114, v110);
      v118 = sub_236E381CC(v115, v117, &v141);

      *(v91 + 4) = v118;
      *(v91 + 12) = 2114;
      v119 = v59;
      v120 = _swift_stdlib_bridgeErrorToNSError();
      *(v91 + 14) = v120;
      *v111 = v120;
      _os_log_impl(&dword_236E28000, v89, v106, "A file descriptor couldn’t be opened for “%{public}s”: %{public}@", v91, 0x16u);
      sub_236E38DBC(v111, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v111, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v112);
      v103 = v112;
      goto LABEL_38;
    }

    v104 = v66;
LABEL_40:
    v138(v104, v140);
    return swift_willThrow();
  }

  v70 = v126;
  (*(v7 + 32))(v126, v63, v140);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v71 = sub_236E81DA4();
  __swift_project_value_buffer(v71, qword_27DE87DC8);
  v72 = sub_236E820D4();
  v73 = v123;
  v139(v123, v70, v140);
  v74 = sub_236E81D84();
  if (os_log_type_enabled(v74, v72))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v141 = v76;
    *v75 = 136446210;
    sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v77 = v140;
    v78 = sub_236E82484();
    v79 = v73;
    v80 = v78;
    v82 = v81;
    v138(v79, v77);
    v83 = sub_236E381CC(v80, v82, &v141);

    *(v75 + 4) = v83;
    _os_log_impl(&dword_236E28000, v74, v72, "Opening a file descriptor for “%{public}s”…", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x2383C0E50](v76, -1, -1);
    v70 = v126;
    MEMORY[0x2383C0E50](v75, -1, -1);
  }

  else
  {

    v84 = (v138)(v73, v140);
  }

  MEMORY[0x28223BE20](v84);
  *(&v122 - 2) = 0;
  *(&v122 - 2) = 16842752;
  sub_236E81DD4();
  v138(v70, v140);
  sub_236E38DBC(v128, &qword_27DE87E90, &unk_236E853B0);
  return v141;
}

uint64_t sub_236E4B3FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v95 = a1;
  v81 = a2;
  v4 = sub_236E819A4();
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v78[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E88, &unk_236E84D20);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v78[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E90, &unk_236E853B0);
  MEMORY[0x28223BE20](v8 - 8);
  v88 = &v78[-v9];
  v96 = sub_236E81E34();
  v10 = *(v96 - 8);
  v11 = MEMORY[0x28223BE20](v96);
  v94 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v87 = &v78[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v78[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v83 = &v78[-v19];
  MEMORY[0x28223BE20](v18);
  v21 = &v78[-v20];
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v22 = sub_236E81DA4();
  v23 = __swift_project_value_buffer(v22, qword_27DE87DC8);
  v24 = sub_236E820E4();
  v91 = *(v10 + 16);
  v91(v21, v95, v96);
  v25 = sub_236E81D84();
  v26 = os_log_type_enabled(v25, v24);
  v92 = v10;
  v93 = v10 + 16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v97 = v80;
    *v27 = 136446210;
    sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v28 = v2;
    v29 = v96;
    v30 = sub_236E82484();
    v79 = v24;
    v31 = v17;
    v32 = v23;
    v34 = v33;
    v35 = v29;
    v3 = v28;
    v90 = *(v92 + 8);
    v90(v21, v35);
    v36 = sub_236E381CC(v30, v34, &v97);
    v23 = v32;
    v17 = v31;

    *(v27 + 4) = v36;
    _os_log_impl(&dword_236E28000, v25, v79, "URL for: %{public}s", v27, 0xCu);
    v37 = v80;
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x2383C0E50](v37, -1, -1);
    v38 = v27;
    v10 = v92;
    MEMORY[0x2383C0E50](v38, -1, -1);
  }

  else
  {

    v90 = *(v10 + 8);
    v90(v21, v96);
  }

  if ([objc_opt_self() isMainThread])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87EB8, &unk_236E851A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_236E84C70;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 32) = 0xD000000000000055;
    v40 = (inited + 32);
    *(inited + 40) = 0x8000000236E8A040;
    sub_236E59658(inited, 32, 0xE100000000000000, 10, 0xE100000000000000);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  v41 = v89;
  sub_236E81C34();
  v42 = v41;
  if (!v41)
  {
    v89 = v23;
    v43 = OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_stagingDirectoryPath;
    v44 = v3 + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_stagingDirectoryPath;
    v45 = v96;
    v80 = v3;
    v46 = v91;
    v91(v17, v44, v96);
    v46(v87, v95, v45);
    v47 = v17;
    v48 = v88;
    sub_236E81DE4();
    if ((*(v10 + 48))(v48, 1, v45) == 1)
    {
      sub_236E38DBC(v48, &qword_27DE87E90, &unk_236E853B0);
      v49 = sub_236E81DF4();
      sub_236E57620(&qword_27DE87EA8, MEMORY[0x277D25C80], MEMORY[0x277D25C88]);
      v42 = swift_allocError();
      v51 = v50;
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87EB0, &unk_236E84D30) + 48);
      v53 = v96;
      v46(v51, v80 + v43, v96);
      v46(&v51[v52], v95, v53);
      (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D25C78], v49);
      swift_willThrow();
    }

    else
    {
      v54 = v83;
      v55 = v96;
      (*(v10 + 32))(v83, v48, v96);
      v46(v47, v54, v55);
      v56 = v82;
      (*(v84 + 104))(v82, *MEMORY[0x277CC91E8], v85);
      v57 = v86;
      sub_236E4A0F4(v47, v56, v86);
      v58 = sub_236E819F4();
      v59 = *(v58 - 8);
      if ((*(v59 + 48))(v57, 1, v58) != 1)
      {
        v90(v54, v96);
        return (*(v59 + 32))(v81, v57, v58);
      }

      sub_236E38DBC(v57, &qword_27DE87E88, &unk_236E84D20);
      type metadata accessor for AssetPackManagerError(0);
      sub_236E57620(&qword_27DE87E48, type metadata accessor for AssetPackManagerError, &unk_236E84FE0);
      v42 = swift_allocError();
      v60 = v96;
      v46(v61, v54, v96);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v90(v54, v60);
    }
  }

  v62 = sub_236E820F4();
  v91(v94, v95, v96);
  v63 = v42;
  v64 = sub_236E81D84();

  if (os_log_type_enabled(v64, v62))
  {
    v65 = swift_slowAlloc();
    v66 = v96;
    v67 = v65;
    v68 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v97 = v95;
    *v67 = 136446466;
    sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v69 = v94;
    v70 = sub_236E82484();
    v72 = v71;
    v90(v69, v66);
    v73 = sub_236E381CC(v70, v72, &v97);

    *(v67 + 4) = v73;
    *(v67 + 12) = 2114;
    v74 = v42;
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v67 + 14) = v75;
    *v68 = v75;
    _os_log_impl(&dword_236E28000, v64, v62, "The URL for “%{public}s” couldn’t be retrieved: %{public}@", v67, 0x16u);
    sub_236E38DBC(v68, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v68, -1, -1);
    v76 = v95;
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x2383C0E50](v76, -1, -1);
    MEMORY[0x2383C0E50](v67, -1, -1);
  }

  else
  {

    v90(v94, v96);
  }

  return swift_willThrow();
}

uint64_t sub_236E4BEE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a2;
  v98 = a4;
  v6 = sub_236E81CF4();
  v104 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_236E81E34();
  v9 = *(v113 - 8);
  v10 = MEMORY[0x28223BE20](v113);
  v101 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v102 = &v97 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v97 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v97 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87E90, &unk_236E853B0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v103 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v97 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v25);
  v105 = &v97 - v27;
  v111 = a3;
  v112 = a1;
  if (a3)
  {
    v99 = v26;
    v100 = v6;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v28 = sub_236E81DA4();
    __swift_project_value_buffer(v28, qword_27DE87DC8);
    v29 = sub_236E820E4();
    v110 = *(v9 + 16);
    v110(v18, a1, v113);

    v30 = sub_236E81D84();

    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v106 = v9;
      v33 = v113;
      v34 = v32;
      v114 = v32;
      *v31 = 136446466;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v35 = sub_236E82484();
      v37 = v36;
      v107 = *(v106 + 8);
      v107(v18, v33);
      v38 = sub_236E381CC(v35, v37, &v114);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2082;
      v39 = v108;
      *(v31 + 14) = sub_236E381CC(v108, v111, &v114);
      _os_log_impl(&dword_236E28000, v30, v29, "Full path for: %{public}s searching in asset pack with ID: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      v9 = v106;
      MEMORY[0x2383C0E50](v34, -1, -1);
      v40 = v31;
      a3 = v111;
      MEMORY[0x2383C0E50](v40, -1, -1);
    }

    else
    {

      v107 = *(v9 + 8);
      v107(v18, v113);
      v39 = v108;
    }

    sub_236E4EDE4(v39, a3);
    v53 = v99;
    v54 = v109;
    sub_236E81C14();
    v55 = v54;
    v56 = v105;
    if (v54)
    {
      (*(v104 + 8))(v8, v100);
      goto LABEL_19;
    }

    (*(v104 + 8))(v8, v100);
    v57 = v103;
    v58 = v53;
  }

  else
  {
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v41 = sub_236E81DA4();
    __swift_project_value_buffer(v41, qword_27DE87DC8);
    v42 = sub_236E820E4();
    v110 = *(v9 + 16);
    v110(v16, a1, v113);
    v43 = sub_236E81D84();
    if (os_log_type_enabled(v43, v42))
    {
      v44 = swift_slowAlloc();
      v106 = v9;
      v45 = v44;
      v46 = swift_slowAlloc();
      v114 = v46;
      *v45 = 136446210;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v47 = v113;
      v48 = sub_236E82484();
      v50 = v49;
      v107 = *(v106 + 8);
      v107(v16, v47);
      v51 = sub_236E381CC(v48, v50, &v114);

      *(v45 + 4) = v51;
      a1 = v112;
      _os_log_impl(&dword_236E28000, v43, v42, "Full path for: %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x2383C0E50](v46, -1, -1);
      v52 = v45;
      v9 = v106;
      MEMORY[0x2383C0E50](v52, -1, -1);
    }

    else
    {

      v107 = *(v9 + 8);
      v107(v16, v113);
    }

    v57 = v103;
    v59 = v109;
    sub_236E81C04();
    v55 = v59;
    a3 = v111;
    if (v59)
    {
      goto LABEL_26;
    }

    v58 = v24;
    v56 = v105;
  }

  sub_236E59508(v58, v56, &qword_27DE87E90, &unk_236E853B0);
  sub_236E593A8(v56, v57, &qword_27DE87E90, &unk_236E853B0);
  if ((*(v9 + 48))(v57, 1, v113) != 1)
  {
    sub_236E38DBC(v56, &qword_27DE87E90, &unk_236E853B0);
    return (*(v9 + 32))(v98, v57, v113);
  }

  sub_236E38DBC(v57, &qword_27DE87E90, &unk_236E853B0);
  type metadata accessor for ManagedBackgroundAssetsError(0);
  sub_236E57620(&qword_27DE87E10, type metadata accessor for ManagedBackgroundAssetsError, &protocol conformance descriptor for ManagedBackgroundAssetsError);
  v55 = swift_allocError();
  v110(v60, v112, v113);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_236E38DBC(v56, &qword_27DE87E90, &unk_236E853B0);
  if (!a3)
  {
    a1 = v112;
LABEL_26:
    v80 = v101;
    if (qword_27DE87AB8 != -1)
    {
      swift_once();
    }

    v81 = sub_236E81DA4();
    __swift_project_value_buffer(v81, qword_27DE87DC8);
    v82 = sub_236E820F4();
    v110(v80, a1, v113);
    v83 = v55;
    v84 = sub_236E81D84();

    if (os_log_type_enabled(v84, v82))
    {
      v85 = swift_slowAlloc();
      v106 = v9;
      v86 = v85;
      v87 = swift_slowAlloc();
      v88 = v113;
      v89 = v87;
      v112 = swift_slowAlloc();
      v114 = v112;
      *v86 = 136446466;
      sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v90 = sub_236E82484();
      v92 = v91;
      v107(v80, v88);
      v93 = sub_236E381CC(v90, v92, &v114);

      *(v86 + 4) = v93;
      *(v86 + 12) = 2114;
      v94 = v55;
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v86 + 14) = v95;
      *v89 = v95;
      _os_log_impl(&dword_236E28000, v84, v82, "The full path for “%{public}s” couldn’t be retrieved: %{public}@", v86, 0x16u);
      sub_236E38DBC(v89, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v89, -1, -1);
      v96 = v112;
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x2383C0E50](v96, -1, -1);
      MEMORY[0x2383C0E50](v86, -1, -1);

      return swift_willThrow();
    }

    v78 = v80;
LABEL_31:
    v107(v78, v113);
    return swift_willThrow();
  }

LABEL_19:
  v61 = v112;
  v62 = v102;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v63 = sub_236E81DA4();
  __swift_project_value_buffer(v63, qword_27DE87DC8);
  v64 = sub_236E820F4();
  v110(v62, v61, v113);

  v65 = v55;
  v66 = sub_236E81D84();

  if (!os_log_type_enabled(v66, v64))
  {

    v78 = v62;
    goto LABEL_31;
  }

  v67 = swift_slowAlloc();
  v112 = swift_slowAlloc();
  v68 = swift_slowAlloc();
  v69 = v113;
  LODWORD(v110) = v64;
  v70 = v68;
  v114 = v68;
  *v67 = 136446722;
  sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
  v71 = sub_236E82484();
  v73 = v72;
  v107(v62, v69);
  v74 = sub_236E381CC(v71, v73, &v114);

  *(v67 + 4) = v74;
  *(v67 + 12) = 2082;
  *(v67 + 14) = sub_236E381CC(v108, v111, &v114);
  *(v67 + 22) = 2114;
  v75 = v55;
  v76 = _swift_stdlib_bridgeErrorToNSError();
  *(v67 + 24) = v76;
  v77 = v112;
  *v112 = v76;
  _os_log_impl(&dword_236E28000, v66, v110, "The full path for “%{public}s” in the asset pack with the ID “%{public}s” couldn’t be retrieved: %{public}@", v67, 0x20u);
  sub_236E38DBC(v77, &qword_27DE88170, &qword_236E853C0);
  MEMORY[0x2383C0E50](v77, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x2383C0E50](v70, -1, -1);
  MEMORY[0x2383C0E50](v67, -1, -1);

  return swift_willThrow();
}

uint64_t sub_236E4CC00(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v31 = a1;
  v30 = sub_236E81CF4();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v10 = sub_236E81DA4();
  v11 = __swift_project_value_buffer(v10, qword_27DE87DC8);
  v12 = sub_236E820E4();

  v29[1] = v11;
  v13 = sub_236E81D84();

  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[0] = v5;
    v16 = v15;
    v32 = v15;
    *v14 = 136315138;
    v17 = v31;
    *(v14 + 4) = sub_236E381CC(v31, a2, &v32);
    _os_log_impl(&dword_236E28000, v13, v12, "Remove asset pack with ID: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v18 = v16;
    v4 = v3;
    MEMORY[0x2383C0E50](v18, -1, -1);
    MEMORY[0x2383C0E50](v14, -1, -1);
  }

  else
  {

    v17 = v31;
  }

  sub_236E4EDE4(v17, a2);
  sub_236E81B54();
  if (!v4)
  {
    return (*(v7 + 8))(v9, v30);
  }

  v19 = v17;
  (*(v7 + 8))(v9, v30);
  v20 = sub_236E820F4();

  v21 = v4;
  v22 = sub_236E81D84();

  if (os_log_type_enabled(v22, v20))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v23 = 136446466;
    *(v23 + 4) = sub_236E381CC(v19, a2, &v32);
    *(v23 + 12) = 2114;
    v26 = v4;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v27;
    *v24 = v27;
    _os_log_impl(&dword_236E28000, v22, v20, "The asset pack with the ID “%{public}s” couldn’t be removed: %{public}@", v23, 0x16u);
    sub_236E38DBC(v24, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x2383C0E50](v25, -1, -1);
    MEMORY[0x2383C0E50](v23, -1, -1);
  }

  return swift_willThrow();
}

uint64_t sub_236E4CFAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_236E81CF4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E4D070, v2, 0);
}

uint64_t sub_236E4D070()
{
  v12 = v0;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  v0[8] = __swift_project_value_buffer(v1, qword_27DE87DC8);
  v2 = sub_236E820E4();

  v3 = sub_236E81D84();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_236E381CC(v5, v4, &v11);
    _os_log_impl(&dword_236E28000, v3, v2, "Remove asset pack with ID: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2383C0E50](v7, -1, -1);
    MEMORY[0x2383C0E50](v6, -1, -1);
  }

  sub_236E4EDE4(v0[2], v0[3]);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_236E4D258;
  v9 = v0[7];

  return MEMORY[0x282184AC0](v9);
}

uint64_t sub_236E4D258()
{
  v2 = *v1;
  v3 = *v1;
  v2[10] = v0;

  v4 = v2[6];
  if (v0)
  {
    v5 = v2[4];
    (*(v4 + 8))(v2[7], v2[5]);

    return MEMORY[0x2822009F8](sub_236E4D40C, v5, 0);
  }

  else
  {
    (*(v4 + 8))();

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_236E4D40C(uint64_t a1)
{
  v17 = v1;
  v2 = v1[10];
  v3 = sub_236E820F4();

  v4 = v2;
  v5 = sub_236E81D84();

  if (os_log_type_enabled(v5, v3))
  {
    v6 = v1[10];
    v8 = v1[2];
    v7 = v1[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_236E381CC(v8, v7, &v16);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_236E28000, v5, v3, "The asset pack with the ID “%{public}s” couldn’t be removed: %{public}@", v9, 0x16u);
    sub_236E38DBC(v10, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  swift_willThrow();

  v14 = v1[1];

  return v14();
}

void sub_236E4D5DC(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88018, &qword_236E85128);
  MEMORY[0x28223BE20](v4 - 8);
  v107 = &v93 - v5;
  v6 = sub_236E81E14();
  v7 = *(v6 - 8);
  v109 = v6;
  v110 = v7;
  MEMORY[0x28223BE20](v6);
  v111 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_236E81A64();
  v104 = *(v9 - 8);
  v105 = v9;
  MEMORY[0x28223BE20](v9);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_236E81CF4();
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x28223BE20](v11);
  v108 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_236E81E34();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for AssetPack(0);
  v17 = MEMORY[0x28223BE20](v98);
  v94 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v95 = &v93 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v106 = (&v93 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v102 = (&v93 - v24);
  MEMORY[0x28223BE20](v23);
  v26 = &v93 - v25;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v27 = sub_236E81DA4();
  v28 = __swift_project_value_buffer(v27, qword_27DE87DC8);
  v29 = sub_236E820E4();
  sub_236E57598(a1, v26, type metadata accessor for AssetPack);
  (*(v14 + 16))(v16, a2, v13);
  v112 = v28;
  v30 = sub_236E81D84();
  v31 = os_log_type_enabled(v30, v29);
  v96 = a2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v97 = a1;
    v33 = v32;
    v93 = swift_slowAlloc();
    v113 = v93;
    *v33 = 136446466;
    v34 = AssetPack.description.getter();
    v36 = v35;
    sub_236E56DCC(v26, type metadata accessor for AssetPack);
    v37 = sub_236E381CC(v34, v36, &v113);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    sub_236E57620(&qword_27DE87E98, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v38 = sub_236E82484();
    v40 = v39;
    (*(v14 + 8))(v16, v13);
    v41 = sub_236E381CC(v38, v40, &v113);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_236E28000, v30, v29, "Process: %{public}s at: %{public}s", v33, 0x16u);
    v42 = v93;
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v42, -1, -1);
    v43 = v33;
    a1 = v97;
    MEMORY[0x2383C0E50](v43, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    sub_236E56DCC(v26, type metadata accessor for AssetPack);
  }

  v44 = v102;
  sub_236E57598(a1, v102, type metadata accessor for AssetPack);
  v45 = sub_236E81D84();
  v46 = sub_236E82114();
  v47 = os_log_type_enabled(v45, v46);
  v49 = v108;
  v48 = v109;
  if (v47)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v113 = v51;
    *v50 = 136446210;
    v52 = v44;
    v53 = *v44;
    v54 = *(v52 + 8);

    sub_236E56DCC(v52, type metadata accessor for AssetPack);
    v55 = sub_236E381CC(v53, v54, &v113);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_236E28000, v45, v46, "Processing the asset pack with the ID “%{public}s”…", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x2383C0E50](v51, -1, -1);
    MEMORY[0x2383C0E50](v50, -1, -1);
  }

  else
  {

    sub_236E56DCC(v44, type metadata accessor for AssetPack);
  }

  v56 = v111;
  v58 = v106;
  v57 = v107;
  sub_236E4EDE4(*a1, a1[1]);
  v59 = v103;
  sub_236E81A54();
  v60 = sub_236E81A44();
  v62 = v61;
  (*(v104 + 8))(v59, v105);

  sub_236E81E24();
  v63 = v110;
  if ((*(v110 + 48))(v57, 1, v48) == 1)
  {
    sub_236E38DBC(v57, &qword_27DE88018, &qword_236E85128);
    type metadata accessor for AssetPackManagerError(0);
    sub_236E57620(&qword_27DE87E48, type metadata accessor for AssetPackManagerError, &unk_236E84FE0);
    swift_allocError();
    *v64 = v60;
    v64[1] = v62;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_23:
    (*(v100 + 8))(v49, v101);
    return;
  }

  (*(v63 + 32))(v56, v57, v48);
  sub_236E57598(a1, v58, type metadata accessor for AssetPack);
  v65 = sub_236E81D84();
  v66 = sub_236E82114();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v113 = v68;
    *v67 = 136446210;
    v69 = v58;
    v70 = *v58;
    v71 = v58[1];

    sub_236E56DCC(v69, type metadata accessor for AssetPack);
    v72 = sub_236E381CC(v70, v71, &v113);

    *(v67 + 4) = v72;
    v56 = v111;
    _os_log_impl(&dword_236E28000, v65, v66, "Creating a record of the asset pack with the ID “%{public}s”…", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    v73 = v68;
    v63 = v110;
    MEMORY[0x2383C0E50](v73, -1, -1);
    MEMORY[0x2383C0E50](v67, -1, -1);
  }

  else
  {

    sub_236E56DCC(v58, type metadata accessor for AssetPack);
  }

  if ((a1[3] & 0x8000000000000000) == 0)
  {
    v74 = v99;
    sub_236E81B94();
    if (v74)
    {
      (*(v63 + 8))(v56, v48);
    }

    else
    {
      v75 = v95;
      sub_236E57598(a1, v95, type metadata accessor for AssetPack);
      v76 = sub_236E81D84();
      v77 = sub_236E82114();
      v78 = os_log_type_enabled(v76, v77);
      v97 = a1;
      if (v78)
      {
        v79 = v75;
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v113 = v81;
        *v80 = 136446210;
        v82 = *v79;
        v83 = v79[1];

        sub_236E56DCC(v79, type metadata accessor for AssetPack);
        v84 = sub_236E381CC(v82, v83, &v113);
        v49 = v108;

        *(v80 + 4) = v84;
        v48 = v109;
        _os_log_impl(&dword_236E28000, v76, v77, "Moving the asset pack with the ID “%{public}s” into the system container…", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x2383C0E50](v81, -1, -1);
        MEMORY[0x2383C0E50](v80, -1, -1);
      }

      else
      {

        sub_236E56DCC(v75, type metadata accessor for AssetPack);
      }

      sub_236E81CE4();
      sub_236E81CB4();
      sub_236E81B14();

      v85 = v94;
      sub_236E57598(v97, v94, type metadata accessor for AssetPack);
      v86 = sub_236E81D84();
      v87 = sub_236E82114();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v113 = v89;
        *v88 = 136315138;
        v90 = *v85;
        v91 = v85[1];

        sub_236E56DCC(v85, type metadata accessor for AssetPack);
        v92 = sub_236E381CC(v90, v91, &v113);

        *(v88 + 4) = v92;
        _os_log_impl(&dword_236E28000, v86, v87, "The asset pack with the ID “%s” was successfully processed.", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x2383C0E50](v89, -1, -1);
        MEMORY[0x2383C0E50](v88, -1, -1);

        (*(v110 + 8))(v111, v109);
      }

      else
      {

        sub_236E56DCC(v85, type metadata accessor for AssetPack);
        (*(v110 + 8))(v111, v48);
      }
    }

    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_236E4E2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_236E81CF4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E4E3A8, 0, 0);
}

uint64_t sub_236E4E3A8()
{
  sub_236E4EDE4(v0[2], v0[3]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_236E4E460;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x282184AF8](v2, v3);
}

uint64_t sub_236E4E460()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_236E4E5EC;
  }

  else
  {
    v2 = sub_236E4E574;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_236E4E574()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_236E4E5EC()
{
  v24 = v0;
  if (qword_27DE87AB8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_236E81DA4();
  __swift_project_value_buffer(v2, qword_27DE87DC8);
  v3 = sub_236E820F4();

  v4 = v1;
  v5 = sub_236E81D84();

  v6 = os_log_type_enabled(v5, v3);
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  if (v6)
  {
    v11 = v0[4];
    v20 = v0[3];
    v22 = v0[8];
    v12 = v0[2];
    v21 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v13 = 134218498;
    *(v13 + 4) = v11;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_236E381CC(v12, v20, &v23);
    *(v13 + 22) = 2114;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v17;
    *v14 = v17;
    _os_log_impl(&dword_236E28000, v5, v3, "The fact that version %lu of the asset pack with the ID “%{public}s” finished being downloaded couldn’t be reported: %{public}@", v13, 0x20u);
    sub_236E38DBC(v14, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2383C0E50](v15, -1, -1);
    MEMORY[0x2383C0E50](v13, -1, -1);

    (*(v9 + 8))(v22, v21);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_236E4E84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_236E81CF4();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E4E914, 0, 0);
}

uint64_t sub_236E4E914()
{
  sub_236E4EDE4(v0[6], v0[7]);
  swift_getErrorValue();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_236E4E9F8;
  v5 = v0[13];
  v6 = v0[8];

  return MEMORY[0x282184AF0](v5, v6, v1, v2, v3);
}

uint64_t sub_236E4E9F8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_236E4EB84;
  }

  else
  {
    v2 = sub_236E4EB0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}