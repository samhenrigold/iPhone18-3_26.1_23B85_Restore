uint64_t BCS_LOG_CHANNEL_PREFIXBarcodeScanner(uint64_t a1, uint64_t a2)
{
  if (BCS_LOG_CHANNEL_PREFIXBarcodeScanner_onceToken != -1)
  {
    BCS_LOG_CHANNEL_PREFIXBarcodeScanner_cold_1();
  }

  return BCS_LOG_CHANNEL_PREFIXBarcodeScanner_log;
}

uint64_t BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle(uint64_t a1, uint64_t a2)
{
  if (BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle_onceToken != -1)
  {
    BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle_cold_1();
  }

  return BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle_log;
}

void sub_2419EE868(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

void sub_2419F1ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2419F1CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2419F8A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getLICreateIconFromCachedBitmapSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MobileIconsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MobileIconsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D021C8;
    v6 = 0;
    MobileIconsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MobileIconsLibraryCore_frameworkLibrary;
  if (!MobileIconsLibraryCore_frameworkLibrary)
  {
    __getLICreateIconFromCachedBitmapSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "LICreateIconFromCachedBitmap");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLICreateIconFromCachedBitmapSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileIconsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileIconsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getDDUIEventForResultsSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __DataDetectorsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D02200;
    v6 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = DataDetectorsUILibraryCore_frameworkLibrary;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    __getDDUIEventForResultsSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "DDUIEventForResults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDDUIEventForResultsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2419FB698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2419FCA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2419FCDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getISIconClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  result = objc_getClass("ISIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISIconClass_block_invoke_cold_1();
  }

  getISIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IconServicesLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __IconServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278D023A8;
    v4 = 0;
    IconServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore_frameworkLibrary;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    IconServicesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __IconServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getISImageDescriptorClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  result = objc_getClass("ISImageDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISImageDescriptorClass_block_invoke_cold_1();
  }

  getISImageDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorHomeScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorHomeScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getDDUIEventForResultsSymbolLoc_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __DataDetectorsUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D023C0;
    v6 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = DataDetectorsUILibraryCore_frameworkLibrary_0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_0)
  {
    __getDDUIEventForResultsSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "DDUIEventForResults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDDUIEventForResultsSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getFBSSystemServiceClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  result = objc_getClass("FBSSystemService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSSystemServiceClass_block_invoke_cold_1();
  }

  getFBSSystemServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FrontBoardServicesLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278D023D8;
    v4 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FrontBoardServicesLibraryCore_frameworkLibrary;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    FrontBoardServicesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileCoreServicesLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = MobileCoreServicesLibraryCore_frameworkLibrary;
  v6 = MobileCoreServicesLibraryCore_frameworkLibrary;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278D023F0;
    v8 = *off_278D02400;
    v9 = 0;
    v4[3] = _sl_dlopen();
    MobileCoreServicesLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_2419FD8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MobileCoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  MobileCoreServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileCoreServicesLibrary()
{
  v3 = 0;
  v0 = MobileCoreServicesLibraryCore(&v3);
  if (!v0)
  {
    MobileCoreServicesLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

id getLSApplicationProxyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLSApplicationProxyClass_softClass;
  v7 = getLSApplicationProxyClass_softClass;
  if (!getLSApplicationProxyClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getLSApplicationProxyClass_block_invoke;
    v3[3] = &unk_278D021A8;
    v3[4] = &v4;
    __getLSApplicationProxyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2419FDA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLSApplicationProxyClass_block_invoke(uint64_t a1)
{
  MobileCoreServicesLibrary();
  result = objc_getClass("LSApplicationProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationProxyClass_block_invoke_cold_1();
  }

  getLSApplicationProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2419FF300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void AppC3DUpdateCallbackHandler(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v14 = a1;
  v12 = [a7 objectForKey:@"orientation"];
  v13 = [v12 longValue];

  [v14 didReceiveAppC3DUpdate:a2 orientation:v13 error:a8 timestamp:a3];
}

void sub_241A00198(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

Swift::Void __swiftcall UIView.setGlassBackground()()
{
  sub_241A04370();
  MEMORY[0x28223BE20]();
  sub_241A04360();
  v0[3] = sub_241A04380();
  v0[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v0);
  sub_241A04390();
  sub_241A043E0();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_241A01AEC(void *a1)
{
  sub_241A04370();
  MEMORY[0x28223BE20]();
  v2 = a1;
  sub_241A04360();
  v3[3] = sub_241A04380();
  v3[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_241A04390();
  sub_241A043E0();
}

uint64_t static BCSSecureCaptureSession.setSession(session:)(uint64_t a1)
{
  qword_27E551F28 = a1;
}

uint64_t sub_241A01C30()
{
  v1 = qword_27E551F28;
  v0[3] = qword_27E551F28;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_241A01D14;
    v3 = v0[2];

    return MEMORY[0x282123370](v3);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_241A01D14()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_241A01E50, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_241A01E50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241A02038(void *a1, void *aBlock)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = _Block_copy(aBlock);
  v4 = a1;

  return MEMORY[0x2822009F8](sub_241A020B4, 0, 0);
}

uint64_t sub_241A020B4()
{
  v1 = qword_27E551F28;
  *(v0 + 32) = qword_27E551F28;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_241A021BC;
    v3 = *(v0 + 16);

    return MEMORY[0x282123370](v3);
  }

  else
  {
    v4 = *(v0 + 24);

    (*(v4 + 16))(v4, 0);
    _Block_release(*(v0 + 24));
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_241A021BC()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_241A0231C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 24);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 24));
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_241A0231C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  v3 = sub_241A04320();

  (*(v2 + 16))(v2, v3);
  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_241A02410(void (*a1)(void))
{
  sub_241A04340();
  sub_241A04330();
  a1();
}

uint64_t sub_241A02478(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_241A04340();
  sub_241A04330();
  a3();
}

id BCSSecureCaptureSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BCSSecureCaptureSession.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BCSSecureCaptureSession();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BCSSecureCaptureSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BCSSecureCaptureSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_241A02614()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241A02654()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_241A02708;

  return sub_241A02038(v2, v3);
}

uint64_t sub_241A02708()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_241A027FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_241A032D0;

  return v6();
}

uint64_t sub_241A028E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_241A032D0;

  return sub_241A027FC(v2, v3, v4);
}

uint64_t sub_241A029A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_241A02708;

  return v7();
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_241A02AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241A032D0;

  return sub_241A029A4(a1, v4, v5, v6);
}

uint64_t sub_241A02B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E551F30, &qword_241A06718);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_241A02E58(a3, v22 - v9);
  v11 = sub_241A043D0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_241A02EC8(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_241A043C0();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_241A043B0();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_241A043A0() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_241A02EC8(a3);

    return v20;
  }

LABEL_8:
  sub_241A02EC8(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_241A02E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E551F30, &qword_241A06718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241A02EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E551F30, &qword_241A06718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241A02F30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_241A03028;

  return v6(a1);
}

uint64_t sub_241A03028()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_241A03120()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241A03158(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241A032D0;

  return sub_241A02F30(a1, v4);
}

uint64_t sub_241A03210(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241A02708;

  return sub_241A02F30(a1, v4);
}

void __getLICreateIconFromCachedBitmapSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MobileIconsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BCSAlertController.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void __getDDUIEventForResultsSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DataDetectorsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DataDetectorsUISoftLink.h" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getISIconClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getISIconClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BCSActionCoordinator.m" lineNumber:50 description:{@"Unable to find class %s", "ISIcon"}];

  __break(1u);
}

void IconServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *IconServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BCSActionCoordinator.m" lineNumber:49 description:{@"%s", *a1}];

  __break(1u);
}

void __getISImageDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getISImageDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BCSActionCoordinator.m" lineNumber:52 description:{@"Unable to find class %s", "ISImageDescriptor"}];

  __break(1u);
}

void __getFBSSystemServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFBSSystemServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BCSActionCoordinator.m" lineNumber:44 description:{@"Unable to find class %s", "FBSSystemService"}];

  __break(1u);
}

void FrontBoardServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FrontBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BCSActionCoordinator.m" lineNumber:43 description:{@"%s", *a1}];

  __break(1u);
}

void MobileCoreServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MobileCoreServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MobileCoreServicesSoftLink.m" lineNumber:10 description:{@"%s", *a1}];

  __break(1u);
}

void __getLSApplicationProxyClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getLSApplicationProxyClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MobileCoreServicesSoftLink.m" lineNumber:12 description:{@"Unable to find class %s", "LSApplicationProxy"}];

  __break(1u);
  sub_241A04320();
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}