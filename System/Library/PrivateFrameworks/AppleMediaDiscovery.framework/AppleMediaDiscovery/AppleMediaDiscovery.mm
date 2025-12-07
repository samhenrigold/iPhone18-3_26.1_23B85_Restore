uint64_t sub_240CBB184()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  _Block_release(*(v0 + 40));
  MEMORY[0x277D82BD8](*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_240CBB204()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_240CBB24C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_240CBB314()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_240CBB374()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_240CBB3D4()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_240CBB434()
{
  _Block_release(*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_240CBB484()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_240CBB800()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_240CBB860()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_240CBBCF8()
{
  v2 = *(sub_240DAD674() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_0_1_4_0(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_64_4_0_4_0_8_64_8_64_4_0(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 64;
  *(result + 25) = 8;
  *(result + 26) = a5;
  *(result + 34) = 64;
  *(result + 35) = 8;
  *(result + 36) = a6;
  *(result + 44) = 0;
  *(result + 45) = 4;
  *(result + 46) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_64_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_64_8_64_8_0_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

id getGDViewServiceClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getGDViewServiceClass_softClass;
  v13 = getGDViewServiceClass_softClass;
  if (!getGDViewServiceClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getGDViewServiceClass_block_invoke;
    v6 = &unk_278CB5928;
    v7 = &v9;
    __getGDViewServiceClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getGDRemoteViewAccessRequesterClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getGDRemoteViewAccessRequesterClass_softClass;
  v13 = getGDRemoteViewAccessRequesterClass_softClass;
  if (!getGDRemoteViewAccessRequesterClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getGDRemoteViewAccessRequesterClass_block_invoke;
    v6 = &unk_278CB5928;
    v7 = &v9;
    __getGDRemoteViewAccessRequesterClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getGDViewServiceClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibrary();
  Class = objc_getClass("GDViewService");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np("Unable to find class %s", "GDViewService");
  }

  getGDViewServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IntelligencePlatformLibrary()
{
  v2 = 0;
  v1 = IntelligencePlatformLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np("%s", v2);
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t IntelligencePlatformLibraryCore(uint64_t a1)
{
  v10 = a1;
  v8 = IntelligencePlatformLibraryCore_frameworkLibrary;
  v9 = IntelligencePlatformLibraryCore_frameworkLibrary;
  if (!IntelligencePlatformLibraryCore_frameworkLibrary)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __IntelligencePlatformLibraryCore_block_invoke;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __IntelligencePlatformLibraryCore_block_invoke(&v2);
  }

  return IntelligencePlatformLibraryCore_frameworkLibrary;
}

uint64_t __IntelligencePlatformLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IntelligencePlatformLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __getGDRemoteViewAccessRequesterClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibrary();
  Class = objc_getClass("GDRemoteViewAccessRequester");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np("Unable to find class %s", "GDRemoteViewAccessRequester");
  }

  getGDRemoteViewAccessRequesterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_0_1_8_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_0_2_4_0_4_0(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_64_8_32(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_2_4_0_8_64(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t __os_log_helper_16_0_2_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_64_4_0_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_64_4_0_4_0_8_64(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 64;
  *(result + 25) = 8;
  *(result + 26) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_3_4_0_4_0_4_0(uint64_t result, int a2, int a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_3_4_0_4_0_8_64(uint64_t result, int a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 64;
  *(result + 15) = 8;
  *(result + 16) = a4;
  return result;
}

void __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_0_2_4_0_8_0(uint64_t result, int a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t __os_log_helper_16_0_3_4_0_4_0_8_0(uint64_t result, int a2, int a3, uint64_t a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 8;
  *(result + 16) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_64_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void sub_240D07574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, _Unwind_Exception *exception_object)
{
  _Block_object_dispose((v24 - 128), 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t GetDeviceSpace(void *a1, void *a2, _DWORD *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  memset(v4, 0, 20);
  v5[2] = 0;
  v5[0] = 5;
  v5[1] = 2147483668;
  result = getattrlist("/", v5, v4, 0x14uLL, 0);
  *v6 = result;
  if (!*v6)
  {
    *v8 = *(v4 + 4);
    *v7 = *(&v4[1] + 4);
  }

  return result;
}

void __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_2_8_64_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_240D29BC0(uint64_t a1, int a2)
{
  *(v2 - 168) = a1;
  *(v2 - 172) = a2;
  objc_end_catch();
  JUMPOUT(0x240D29C44);
}

void __Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

id getGDViewServiceClass_0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getGDViewServiceClass_softClass_0;
  v13 = getGDViewServiceClass_softClass_0;
  if (!getGDViewServiceClass_softClass_0)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getGDViewServiceClass_block_invoke_0;
    v6 = &unk_278CB5928;
    v7 = &v9;
    __getGDViewServiceClass_block_invoke_0(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getGDViewServiceClass_block_invoke_0(uint64_t a1)
{
  IntelligencePlatformLibrary_0();
  Class = objc_getClass("GDViewService");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np("Unable to find class %s", "GDViewService");
  }

  getGDViewServiceClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IntelligencePlatformLibrary_0()
{
  v2 = 0;
  v1 = IntelligencePlatformLibraryCore_0(&v2);
  if (!v1)
  {
    abort_report_np("%s", v2);
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t IntelligencePlatformLibraryCore_0(uint64_t a1)
{
  v10 = a1;
  v8 = IntelligencePlatformLibraryCore_frameworkLibrary_0;
  v9 = IntelligencePlatformLibraryCore_frameworkLibrary_0;
  if (!IntelligencePlatformLibraryCore_frameworkLibrary_0)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __IntelligencePlatformLibraryCore_block_invoke_0;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __IntelligencePlatformLibraryCore_block_invoke_0(&v2);
  }

  return IntelligencePlatformLibraryCore_frameworkLibrary_0;
}

uint64_t __IntelligencePlatformLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  IntelligencePlatformLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __Block_byref_object_copy__8(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_3_8_64_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_2_8_0_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void __Block_byref_object_copy__9(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_4_8_64_8_64_4_0_8_64(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 64;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

void SparseConvertFromCoordinate(int a1@<W4>, int *a2@<X5>, int *a3@<X6>, float *a4@<X7>, int a5@<W0>, int a6@<W1>, uint64_t a7@<X2>, uint8_t a8@<W3>, uint64_t a9@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  v38 = a1;
  m = a5;
  n = a6;
  nBlock = a7;
  blockSize = a8;
  row = a2;
  col = a3;
  val = a4;
  memcpy(__dst, &unk_2852A5A10, sizeof(__dst));
  if (m < 0)
  {
    if (__dst[5])
    {
      memset(__b, 0, sizeof(__b));
      __snprintf_chk(__b, 0x100uLL, 0, 0x100uLL, "rowCount (%d) must be non-negative.\n", m);
      (__dst[5])(__b);
    }

    else
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v47, m);
        _os_log_error_impl(&dword_240CB9000, oslog, type, "rowCount (%d) must be non-negative.\n", v47, 8u);
      }

      objc_storeStrong(&oslog, 0);
      _SparseTrap();
    }

    memcpy(a9, &_SparseNullMatrix_Float, 0x28uLL);
  }

  else if (n < 0)
  {
    if (__dst[5])
    {
      memset(v46, 0, sizeof(v46));
      __snprintf_chk(v46, 0x100uLL, 0, 0x100uLL, "columnCount (%d) must be non-negative.\n", n);
      (__dst[5])(v46);
    }

    else
    {
      v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v26 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v45, n);
        _os_log_error_impl(&dword_240CB9000, v27, v26, "columnCount (%d) must be non-negative.\n", v45, 8u);
      }

      objc_storeStrong(&v27, 0);
      _SparseTrap();
    }

    memcpy(a9, &_SparseNullMatrix_Float, 0x28uLL);
  }

  else if (nBlock < 0)
  {
    if (__dst[5])
    {
      memset(v44, 0, sizeof(v44));
      __snprintf_chk(v44, 0x100uLL, 0, 0x100uLL, "blockCount (%ld) must be non-negative.\n", nBlock);
      (__dst[5])(v44);
    }

    else
    {
      v25 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_8_0(v43, nBlock);
        _os_log_error_impl(&dword_240CB9000, v25, v24, "blockCount (%ld) must be non-negative.\n", v43, 0xCu);
      }

      objc_storeStrong(&v25, 0);
      _SparseTrap();
    }

    memcpy(a9, &_SparseNullMatrix_Float, 0x28uLL);
  }

  else if (((v38 >> 2) & 3) == 0 || m == n)
  {
    storage = malloc_type_malloc(8 * (n + 1) + 28 + 4 * nBlock + 4 * nBlock * blockSize * blockSize, 0x100004000313F17uLL);
    if (storage)
    {
      workspace = malloc_type_malloc(4 * m, 0x100004052888210uLL);
      if (workspace)
      {
        memset(a9, 0, 0x28uLL);
        v9 = v38;
        _SparseConvertFromCoordinate_Float(a9, m, n, nBlock, blockSize, v9, row, col, val, storage, workspace);
        *(a9 + 8) = storage;
        free(workspace);
        *(a9 + 24) = *(a9 + 24) & 0x7FFF | 0x8000;
      }

      else
      {
        free(storage);
        if (__dst[5])
        {
          memset(v40, 0, sizeof(v40));
          __snprintf_chk(v40, 0x100uLL, 0, 0x100uLL, "Failed to allocate workspace of size %ld.\n", 4 * m);
          (__dst[5])(v40);
        }

        else
        {
          v15 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_1_8_0(v39, 4 * m);
            _os_log_error_impl(&dword_240CB9000, v15, OS_LOG_TYPE_ERROR, "Failed to allocate workspace of size %ld.\n", v39, 0xCu);
          }

          objc_storeStrong(&v15, 0);
          _SparseTrap();
        }

        memcpy(a9, &_SparseNullMatrix_Float, 0x28uLL);
      }
    }

    else
    {
      if (__dst[5])
      {
        memset(v41, 0, sizeof(v41));
        __snprintf_chk(v41, 0x100uLL, 0, 0x100uLL, "Failed to allocate storage for result.\n");
        (__dst[5])(v41);
      }

      else
      {
        v19 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v18 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v10 = v19;
          v11 = v18;
          __os_log_helper_16_0_0(v17);
          _os_log_error_impl(&dword_240CB9000, v10, v11, "Failed to allocate storage for result.\n", v17, 2u);
        }

        objc_storeStrong(&v19, 0);
        _SparseTrap();
      }

      memcpy(a9, &_SparseNullMatrix_Float, 0x28uLL);
    }
  }

  else
  {
    if (__dst[5])
    {
      memset(v42, 0, sizeof(v42));
      __snprintf_chk(v42, 0x100uLL, 0, 0x100uLL, "attributes.kind must be SparseOrdinary if matrix is not square.\n");
      (__dst[5])(v42);
    }

    else
    {
      v23 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v22 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v12 = v23;
        v13 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_error_impl(&dword_240CB9000, v12, v13, "attributes.kind must be SparseOrdinary if matrix is not square.\n", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      _SparseTrap();
    }

    memcpy(a9, &_SparseNullMatrix_Float, 0x28uLL);
  }
}

void SparseMultiply(SparseMatrix_Float *a1, DenseVector_Float a2, DenseVector_Float a3)
{
  v6 = a2;
  v5 = a3;
  v4 = a1;
  memcpy(&__dst, a1, sizeof(__dst));
  SparseMultiply(1.0, &__dst, v6, v5);
}

void SparseMultiply(float a1, SparseMatrix_Float *a2, DenseVector_Float a3, DenseVector_Float a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v20 = a4;
  v19 = a1;
  __dst[6] = a2;
  memcpy(__dst, &unk_2852A5A40, 0x30uLL);
  if (*&a2->structure.attributes)
  {
    columnCount = a2->structure.columnCount;
  }

  else
  {
    columnCount = a2->structure.rowCount;
  }

  v17 = *(&a2->structure.blockSize + 2) * columnCount;
  v6 = *(&a2->structure.blockSize + 2);
  if (*&a2->structure.attributes)
  {
    rowCount = a2->structure.rowCount;
  }

  else
  {
    rowCount = a2->structure.columnCount;
  }

  v16 = v6 * rowCount;
  if (v6 * rowCount == v21.count)
  {
    if (v17 == v20.count)
    {
      alpha = v19;
      _DenseMatrixFromVector_Float(*&v21.count, v21.data, &v11);
      _DenseMatrixFromVector_Float(*&v20.count, v20.data, &v10);
      memcpy(&v9, a2, sizeof(v9));
      _SparseSpMV_Float(alpha, &v9, &v11, 0, &v10);
    }

    else if (__dst[5])
    {
      memset(v23, 0, sizeof(v23));
      __snprintf_chk(v23, 0x100uLL, 0, 0x100uLL, "Matrix dimensions (%dx%d) do not match y vector dimensions %dx%d\n", v17, v16, v20.count, 1);
      (__dst[5])(v23);
    }

    else
    {
      v13 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v12 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v22, v17, v16, v20.count, 1);
        _os_log_error_impl(&dword_240CB9000, v13, v12, "Matrix dimensions (%dx%d) do not match y vector dimensions %dx%d\n", v22, 0x1Au);
      }

      objc_storeStrong(&v13, 0);
      _SparseTrap();
    }
  }

  else if (__dst[5])
  {
    memset(__b, 0, sizeof(__b));
    __snprintf_chk(__b, 0x100uLL, 0, 0x100uLL, "Matrix dimensions (%dx%d) do not match x vector dimensions %dx%d\n", v17, v16, v21.count, 1);
    (__dst[5])(__b);
  }

  else
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v24, v17, v16, v21.count, 1);
      _os_log_error_impl(&dword_240CB9000, oslog, type, "Matrix dimensions (%dx%d) do not match x vector dimensions %dx%d\n", v24, 0x1Au);
    }

    objc_storeStrong(&oslog, 0);
    _SparseTrap();
  }
}

uint64_t __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(uint64_t result, int a2, int a3, int a4, int a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  *(result + 20) = 0;
  *(result + 21) = 4;
  *(result + 22) = a5;
  return result;
}

uint64_t _DenseMatrixFromVector_Float@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 4) = 1;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

void __Block_byref_object_copy__11(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__12(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_240D79A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, id a11, os_log_t log, int a13, os_log_type_t a14, uint8_t *buf, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, os_log_type_t type, os_log_t oslog, id location, id a42)
{
  if (a2)
  {
    *(v42 - 232) = a1;
    *(v42 - 236) = a2;
    if (*(v42 - 236) == 1)
    {
      v43 = objc_begin_catch(*(v42 - 232));
      a42 = MEMORY[0x277D82BE0](v43);
      location = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Predicate: %@"];
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        loga = oslog;
        __os_log_helper_16_2_1_8_64(v42 - 176, location);
        _os_log_error_impl(&dword_240CB9000, loga, OS_LOG_TYPE_ERROR, "%@", (v42 - 176), 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v46 = [AMDError allocError:21 withMessage:location];
      v44 = v46;
      **a33 = v46;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&a42, 0);
      objc_end_catch();
      JUMPOUT(0x240D799B8);
    }

    exception_objecta = *(v42 - 232);
  }

  else
  {
    exception_objecta = a1;
  }

  _Unwind_Resume(exception_objecta);
}

uint64_t __os_log_helper_16_2_4_8_64_8_64_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t sub_240D7EA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[44] = a5;
  v6[43] = a4;
  v6[42] = a3;
  v6[41] = a2;
  v6[40] = a1;
  v6[30] = v6;
  v6[31] = 0;
  v6[18] = 0;
  v6[19] = 0;
  v6[20] = 0;
  v6[21] = 0;
  v6[32] = 0;
  v6[33] = 0;
  v6[34] = 0;
  v6[35] = 0;
  v6[37] = 0;
  v6[39] = 0;
  v6[31] = a1;
  v6[18] = a2;
  v6[19] = a3;
  v6[20] = a4;
  v6[21] = a5;
  v6[32] = v5;
  return MEMORY[0x2822009F8](sub_240D7EAF0, 0);
}

uint64_t sub_240D7EAF0()
{
  v12 = *(v0 + 352);
  v11 = *(v0 + 344);
  v10 = *(v0 + 336);
  v9 = *(v0 + 328);
  v15 = *(v0 + 320);
  *(v0 + 240) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C0, &qword_240DB2888);
  sub_240DAE1D4();
  v14 = v1;
  *(v0 + 176) = sub_240DADD64();
  *(v0 + 184) = v2;
  v13 = MEMORY[0x277D837D0];
  sub_240DAE174();
  v3 = sub_240DADD64();
  v14[8] = v13;
  v14[5] = v3;
  v14[6] = v4;
  *(v0 + 192) = sub_240DADD64();
  *(v0 + 200) = v5;
  sub_240DAE174();

  v14[17] = v13;
  v14[14] = v9;
  v14[15] = v10;
  *(v0 + 208) = sub_240DADD64();
  *(v0 + 216) = v6;
  sub_240DAE174();

  v14[26] = v13;
  v14[23] = v11;
  v14[24] = v12;
  *(v0 + 224) = sub_240DADD64();
  *(v0 + 232) = v7;
  sub_240DAE174();

  v14[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
  v14[32] = v15;
  sub_240D7F8DC();
  sub_240D7F920(v0 + 224);
  sub_240D7F920(v0 + 208);
  sub_240D7F920(v0 + 192);
  sub_240D7F920(v0 + 176);
  v16 = sub_240DADCA4();
  *(v0 + 360) = v16;
  *(v0 + 264) = v16;
  sub_240D7F94C();
  v17 = sub_240D7F9B0();
  *(v0 + 368) = v17;
  *(v0 + 272) = v17;

  v18 = sub_240DADC74();

  v20 = [v17 enqueueData_];
  *(v0 + 376) = v20;
  MEMORY[0x277D82BD8](v18);
  *(v0 + 280) = v20;
  *(v0 + 16) = *(v0 + 240);
  *(v0 + 56) = v0 + 288;
  *(v0 + 24) = sub_240D7EF78;
  v19 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199D8, &qword_240DB2898);
  *(v0 + 112) = v19;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_240D7F9E0;
  *(v0 + 104) = &block_descriptor;
  [v20 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_240D7EF78()
{
  v4 = *v0;
  v4[30] = *v0;
  v1 = v4[6];
  v4[48] = v1;
  if (v1)
  {
    v2 = sub_240D7F770;
  }

  else
  {
    v2 = sub_240D7F0D0;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_240D7F0D0()
{
  v0[30] = v0;
  v21 = v0[36];
  v0[37] = v21;
  v22 = [v21 data];
  if (v22)
  {
    v18 = sub_240DADC84();
    MEMORY[0x277D82BD8](v22);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20[38] = v19;
  if (v20[38])
  {
    sub_240D7FC5C(v20 + 38);
    v17 = [v21 data];
    if (v17)
    {
      v10 = sub_240DADC84();
      MEMORY[0x277D82BD8](v17);
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      return sub_240DAE124();
    }

    v7 = v20[47];
    v8 = v20[46];
    v9 = sub_240DAE164();
    v20[39] = v9;

    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);

    v16 = v9;
  }

  else
  {
    sub_240D7FC5C(v20 + 38);
    v13 = v20[47];
    v14 = v20[46];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    sub_240DAE1D4();
    v12 = v1;
    *v1 = sub_240DADD64();
    v12[1] = v2;
    v3 = sub_240DADD64();
    v12[5] = MEMORY[0x277D837D0];
    v12[2] = v3;
    v12[3] = v4;
    sub_240D7F8DC();
    v15 = sub_240DADCA4();
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);

    v16 = v15;
  }

  v6 = *(v20[30] + 8);

  return v6(v16);
}

uint64_t sub_240D7F770()
{
  v3 = v0[47];
  v4 = v0[46];
  v0[30] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[30] + 8);

  return v1();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

unint64_t sub_240D7F94C()
{
  v2 = qword_27E5199D0;
  if (!qword_27E5199D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27E5199D0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_240D7F9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x245CD0E40]();
    v5 = sub_240D82298();
    sub_240D7FC88(v10, a3, v5);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      sub_240DAE204();
      __break(1u);
    }

    v11 = v6;
    v3 = sub_240D82298();
    sub_240D7FCEC(v10, &v11, v3);
  }

  MEMORY[0x277D82BD8](a3);
  return MEMORY[0x277D82BD8](a2);
}

uint64_t sub_240D7FB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_240D7FC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199F8, &qword_240DB2940);
  return sub_240D80A9C(v7, a1, a3, v3, MEMORY[0x277D84950]);
}

uint64_t sub_240D7FE30(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v5[7] = _Block_copy(a4);
  MEMORY[0x277D82BE0](a5);
  v19 = sub_240DADC84();
  v5[8] = v19;
  v15 = sub_240DADD04();
  v16 = v7;
  v5[9] = v7;
  v17 = sub_240DADD04();
  v18 = v8;
  v5[10] = v8;
  v9 = swift_task_alloc();
  *(v14 + 88) = v9;
  *v9 = *(v14 + 16);
  v9[1] = sub_240D7FFB8;

  return sub_240D7EA54(v19, v15, v16, v17, v18);
}

uint64_t sub_240D7FFB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v15 = (v3 + 16);
  v16 = v3 + 16;

  if (v1)
  {
    aBlock = v15[5];
    v10 = sub_240DAD604();
    aBlock[2](aBlock, 0);

    _Block_release(aBlock);
  }

  else
  {
    v13 = v15[5];
    v12 = sub_240DADC74();
    v13[2]();

    _Block_release(v13);
  }

  v9 = v15[4];
  v6 = v15[3];
  v7 = v15[2];
  v8 = v15[1];

  v4 = *(*v16 + 8);

  return v4();
}

uint64_t sub_240D80218()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v9 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_240D8031C;

  return sub_240D7FE30(v9, v5, v6, v7, v8);
}

uint64_t sub_240D8031C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D80444(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v24 = &unk_240DB2910;
  v27 = &unk_240DB2920;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E8, &unk_240DB2900);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v26 = &v17 - v17;
  v25 = 0;
  v3 = sub_240DADEE4();
  (*(*(v3 - 8) + 56))(v26, 1);
  v20 = 48;
  v21 = 7;
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v4;
  v7 = v19;
  v28 = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v7;
  v6[5] = v5;
  v22 = v6[2];
  v23 = v6[3];
  swift_unknownObjectRetain();
  v8 = swift_allocObject();
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v8;
  v15 = v28;
  v14[2] = v22;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v15;
  sub_240D813DC(v11, v11, v12, v13, v14);
}

id AMDSwiftClient.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for AMDSwiftClient();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id AMDSwiftClient.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMDSwiftClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of AMDSwiftClient.queryLLM(requestPayload:usecase:capability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = *((*v5 & *MEMORY[0x277D85000]) + 0x50);
  v15 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v10 + 24) = v8;
  *v8 = *(v10 + 16);
  v8[1] = sub_240D808BC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_240D808BC(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_240D80A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v5, a1);
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_240D80B2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v7 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_240D80C38;

  return v7();
}

uint64_t sub_240D80C38()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D80D60()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_240D80E58;

  return sub_240D80B2C(v7, v5, v6);
}

uint64_t sub_240D80E58()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D80F80(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v8 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_240D8108C;

  return v8();
}

uint64_t sub_240D8108C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D811B4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_240D812B4;

  return sub_240D80F80(a1, v6, v7, v8);
}

uint64_t sub_240D812B4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D813DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v47 = a4;
  v48 = a5;
  v49 = &unk_240DB2938;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &unk_240DB2930;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E8, &unk_240DB2900) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v54);
  v56 = v16 - v55;
  sub_240D819FC(v5, v16 - v55);
  v57 = sub_240DADEE4();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_240D81B24(v56);
    v44 = 0;
  }

  else
  {
    v43 = sub_240DADED4();
    (*(v58 + 8))(v56, v57);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v48 + 16);
  v41 = *(v48 + 24);
  swift_unknownObjectRetain();
  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_240DADEC4();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v22 = v46;
    v23 = sub_240DADD44();

    v24 = v23 + 32;

    v7 = swift_allocObject();
    v8 = v48;
    v9 = v31;
    v10 = v30;
    v25 = v7;
    *(v7 + 16) = v47;
    *(v7 + 24) = v8;
    v26 = 0;
    if (v9 != 0 || v10 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v31;
      v63[3] = v30;
      v26 = v63;
    }

    v60 = 7;
    v61 = v26;
    v62 = v24;
    v21 = swift_task_create();

    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  v20 = v27;
  if (v27)
  {
    v16[1] = v20;
    v16[0] = v20;
    sub_240D81B24(v54);

    return v16[0];
  }

  else
  {

    sub_240D81B24(v54);
    v11 = swift_allocObject();
    v12 = v48;
    v13 = v31;
    v14 = v30;
    v18 = v11;
    *(v11 + 16) = v47;
    *(v11 + 24) = v12;
    v19 = 0;
    if (v13 != 0 || v14 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v31;
      v64[3] = v30;
      v19 = v64;
    }

    return swift_task_create();
  }
}

void *sub_240D819FC(const void *a1, void *a2)
{
  v6 = sub_240DADEE4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E8, &unk_240DB2900);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_240D81B24(uint64_t a1)
{
  v3 = sub_240DADEE4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_240D81BCC(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_240D81CE0;

  return v6(a1);
}

uint64_t sub_240D81CE0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D81E0C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_240D81EF4;

  return sub_240D81BCC(a1, v6);
}

uint64_t sub_240D81EF4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D8201C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_240D82104;

  return sub_240D81BCC(a1, v6);
}

uint64_t sub_240D82104()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

unint64_t sub_240D82298()
{
  v2 = qword_27E5199F0;
  if (!qword_27E5199F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27E5199F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_240D822FC()
{
  result = sub_240DADD64();
  qword_27E51A260 = result;
  qword_27E51A268 = v1;
  return result;
}

uint64_t *sub_240D82340()
{
  if (qword_27E519C98 != -1)
  {
    swift_once();
  }

  return &qword_27E51A260;
}

uint64_t sub_240D823A0()
{
  result = sub_240DADD64();
  qword_27E51A270 = result;
  qword_27E51A278 = v1;
  return result;
}

uint64_t *sub_240D823E4()
{
  if (qword_27E519CA0 != -1)
  {
    swift_once();
  }

  return &qword_27E51A270;
}

uint64_t sub_240D82444()
{
  result = sub_240DADD64();
  qword_27E51A280 = result;
  qword_27E51A288 = v1;
  return result;
}

uint64_t *sub_240D82488()
{
  if (qword_27E519CA8 != -1)
  {
    swift_once();
  }

  return &qword_27E51A280;
}

uint64_t sub_240D824E8()
{
  result = sub_240DADD64();
  qword_27E51A290 = result;
  qword_27E51A298 = v1;
  return result;
}

uint64_t *sub_240D8252C()
{
  if (qword_27E519CB0 != -1)
  {
    swift_once();
  }

  return &qword_27E51A290;
}

uint64_t sub_240D8262C()
{
  v2 = (v0 + OBJC_IVAR____TtC19AppleMediaDiscovery18FitCoreDQueryClass_tableUpdateSummary);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_240D8272C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19AppleMediaDiscovery18FitCoreDQueryClass_tableUpdateSummary);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_240D828E8()
{
  v2 = (v0 + OBJC_IVAR____TtC19AppleMediaDiscovery18FitCoreDQueryClass_allFitnessTables);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_240D829D4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19AppleMediaDiscovery18FitCoreDQueryClass_allFitnessTables);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_240D82B04(uint64_t a1)
{
  *(v2 + 2368) = a1;
  *(v2 + 2216) = v2;
  *(v2 + 2224) = 0;
  *(v2 + 2232) = 0;
  *(v2 + 2240) = 0;
  *(v2 + 2584) = 0;
  *(v2 + 2592) = 0;
  *(v2 + 2256) = 0;
  *(v2 + 2264) = 0;
  *(v2 + 1624) = 0;
  *(v2 + 1632) = 0;
  *(v2 + 2296) = 0;
  *(v2 + 2312) = 0;
  *(v2 + 1864) = 0;
  *(v2 + 1872) = 0;
  *(v2 + 2328) = 0;
  *(v2 + 2344) = 0;
  *(v2 + 2360) = 0;
  v3 = sub_240DAD994();
  *(v2 + 2376) = v3;
  *(v2 + 2384) = *(v3 - 8);
  *(v2 + 2392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A10, &qword_240DB2950);
  *(v2 + 2400) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A18, &qword_240DB2958);
  *(v2 + 2408) = v4;
  *(v2 + 2416) = *(v4 - 8);
  *(v2 + 2424) = swift_task_alloc();
  v5 = sub_240DAD774();
  *(v2 + 2432) = v5;
  *(v2 + 2440) = *(v5 - 8);
  *(v2 + 2448) = swift_task_alloc();
  v6 = sub_240DAD704();
  *(v2 + 2456) = v6;
  *(v2 + 2464) = *(v6 - 8);
  *(v2 + 2472) = swift_task_alloc();
  *(v2 + 2480) = sub_240DAD7A4();
  *(v2 + 2488) = swift_task_alloc();
  *(v2 + 2496) = swift_task_alloc();
  *(v2 + 2504) = swift_task_alloc();
  *(v2 + 2512) = swift_task_alloc();
  *(v2 + 2520) = swift_task_alloc();
  *(v2 + 2528) = swift_task_alloc();
  *(v2 + 2536) = swift_task_alloc();
  *(v2 + 2544) = swift_task_alloc();
  *(v2 + 2552) = swift_task_alloc();
  *(v2 + 2560) = swift_task_alloc();
  *(v2 + 2224) = a1;
  *(v2 + 2232) = v1;

  return MEMORY[0x2822009F8](sub_240D82EC8, 0);
}

uint64_t sub_240D82EC8()
{
  v0[277] = v0;
  v0[280] = sub_240DAE1D4();
  v1 = sub_240D82340();
  v75 = *v1;
  v76 = v1[1];

  v0[193] = v75;
  v0[194] = v76;
  sub_240DADCC4();
  sub_240D7F920((v0 + 193));
  if (v0[5])
  {
    sub_240D862BC(v74 + 16, v74 + 272);
    if (!*(v74 + 296))
    {
      return sub_240DAE124();
    }

    sub_240D8634C(v74 + 272, v74 + 240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
    swift_dynamicCast();
    *(v74 + 2296) = *(v74 + 2288);
    *(v74 + 1656) = sub_240DADD64();
    *(v74 + 1664) = v2;
    sub_240DADCC4();
    sub_240D7F920(v74 + 1656);
    if (*(v74 + 328))
    {
      sub_240D86770((v74 + 304));
      *(v74 + 2184) = sub_240DADD64();
      *(v74 + 2192) = v3;
      sub_240DADCC4();
      sub_240D7F920(v74 + 2184);
      if (!*(v74 + 1512))
      {
        return sub_240DAE124();
      }

      v73 = *(v74 + 2560);
      sub_240D8634C(v74 + 1488, v74 + 1456);
      swift_dynamicCast();
      v4 = *(v74 + 2208);
      *v73 = *(v74 + 2200);
      v73[1] = v4;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A20, &qword_240DB2960);
      sub_240DADE94();
    }

    else
    {
      sub_240D86770((v74 + 304));
    }

    *(v74 + 1672) = sub_240DADD64();
    *(v74 + 1680) = v5;
    sub_240DADCC4();
    sub_240D7F920(v74 + 1672);
    if (*(v74 + 360))
    {
      sub_240D86770((v74 + 336));
      *(v74 + 2152) = sub_240DADD64();
      *(v74 + 2160) = v6;
      sub_240DADCC4();
      sub_240D7F920(v74 + 2152);
      if (!*(v74 + 1448))
      {
        return sub_240DAE124();
      }

      v72 = *(v74 + 2552);
      sub_240D8634C(v74 + 1424, v74 + 1392);
      swift_dynamicCast();
      v7 = *(v74 + 2176);
      *v72 = *(v74 + 2168);
      v72[1] = v7;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A20, &qword_240DB2960);
      sub_240DADE94();
    }

    else
    {
      sub_240D86770((v74 + 336));
    }

    *(v74 + 1688) = sub_240DADD64();
    *(v74 + 1696) = v8;
    sub_240DADCC4();
    sub_240D7F920(v74 + 1688);
    if (*(v74 + 392))
    {
      sub_240D86770((v74 + 368));
      *(v74 + 2120) = sub_240DADD64();
      *(v74 + 2128) = v9;
      sub_240DADCC4();
      sub_240D7F920(v74 + 2120);
      if (!*(v74 + 1384))
      {
        return sub_240DAE124();
      }

      v71 = *(v74 + 2544);
      sub_240D8634C(v74 + 1360, v74 + 1328);
      swift_dynamicCast();
      v10 = *(v74 + 2144);
      *v71 = *(v74 + 2136);
      v71[1] = v10;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A20, &qword_240DB2960);
      sub_240DADE94();
    }

    else
    {
      sub_240D86770((v74 + 368));
    }

    *(v74 + 1704) = sub_240DADD64();
    *(v74 + 1712) = v11;
    sub_240DADCC4();
    sub_240D7F920(v74 + 1704);
    if (*(v74 + 424))
    {
      sub_240D86770((v74 + 400));
      *(v74 + 2088) = sub_240DADD64();
      *(v74 + 2096) = v12;
      sub_240DADCC4();
      sub_240D7F920(v74 + 2088);
      if (!*(v74 + 1320))
      {
        return sub_240DAE124();
      }

      v70 = *(v74 + 2536);
      sub_240D8634C(v74 + 1296, v74 + 1264);
      swift_dynamicCast();
      v13 = *(v74 + 2112);
      *v70 = *(v74 + 2104);
      v70[1] = v13;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A20, &qword_240DB2960);
      sub_240DADE94();
    }

    else
    {
      sub_240D86770((v74 + 400));
    }

    *(v74 + 1720) = sub_240DADD64();
    *(v74 + 1728) = v14;
    sub_240DADCC4();
    sub_240D7F920(v74 + 1720);
    if (*(v74 + 456))
    {
      sub_240D86770((v74 + 432));
      *(v74 + 2056) = sub_240DADD64();
      *(v74 + 2064) = v15;
      sub_240DADCC4();
      sub_240D7F920(v74 + 2056);
      if (!*(v74 + 1256))
      {
        return sub_240DAE124();
      }

      v69 = *(v74 + 2528);
      sub_240D8634C(v74 + 1232, v74 + 1200);
      swift_dynamicCast();
      v16 = *(v74 + 2080);
      *v69 = *(v74 + 2072);
      v69[1] = v16;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A20, &qword_240DB2960);
      sub_240DADE94();
    }

    else
    {
      sub_240D86770((v74 + 432));
    }

    *(v74 + 1736) = sub_240DADD64();
    *(v74 + 1744) = v17;
    sub_240DADCC4();
    sub_240D7F920(v74 + 1736);
    if (*(v74 + 488))
    {
      sub_240D86770((v74 + 464));
      *(v74 + 2024) = sub_240DADD64();
      *(v74 + 2032) = v18;
      sub_240DADCC4();
      sub_240D7F920(v74 + 2024);
      if (!*(v74 + 1192))
      {
        return sub_240DAE124();
      }

      v68 = *(v74 + 2520);
      sub_240D8634C(v74 + 1168, v74 + 1136);
      swift_dynamicCast();
      v19 = *(v74 + 2048);
      *v68 = *(v74 + 2040);
      v68[1] = v19;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A20, &qword_240DB2960);
      sub_240DADE94();
    }

    else
    {
      sub_240D86770((v74 + 464));
    }

    *(v74 + 1752) = sub_240DADD64();
    *(v74 + 1760) = v20;
    sub_240DADCC4();
    sub_240D7F920(v74 + 1752);
    if (*(v74 + 520))
    {
      sub_240D86770((v74 + 496));
      *(v74 + 1992) = sub_240DADD64();
      *(v74 + 2000) = v21;
      sub_240DADCC4();
      sub_240D7F920(v74 + 1992);
      if (!*(v74 + 1128))
      {
        return sub_240DAE124();
      }

      v67 = *(v74 + 2512);
      sub_240D8634C(v74 + 1104, v74 + 1072);
      swift_dynamicCast();
      v22 = *(v74 + 2016);
      *v67 = *(v74 + 2008);
      v67[1] = v22;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A20, &qword_240DB2960);
      sub_240DADE94();
    }

    else
    {
      sub_240D86770((v74 + 496));
    }

    *(v74 + 1768) = sub_240DADD64();
    *(v74 + 1776) = v23;
    sub_240DADCC4();
    sub_240D7F920(v74 + 1768);
    if (*(v74 + 552))
    {
      sub_240D86770((v74 + 528));
      *(v74 + 1960) = sub_240DADD64();
      *(v74 + 1968) = v24;
      sub_240DADCC4();
      sub_240D7F920(v74 + 1960);
      if (!*(v74 + 1064))
      {
        return sub_240DAE124();
      }

      v66 = *(v74 + 2504);
      sub_240D8634C(v74 + 1040, v74 + 1008);
      swift_dynamicCast();
      v25 = *(v74 + 1984);
      *v66 = *(v74 + 1976);
      v66[1] = v25;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A20, &qword_240DB2960);
      sub_240DADE94();
    }

    else
    {
      sub_240D86770((v74 + 528));
    }

    *(v74 + 1784) = sub_240DADD64();
    *(v74 + 1792) = v26;
    sub_240DADCC4();
    sub_240D7F920(v74 + 1784);
    if (*(v74 + 584))
    {
      sub_240D86770((v74 + 560));
      *(v74 + 1928) = sub_240DADD64();
      *(v74 + 1936) = v27;
      sub_240DADCC4();
      sub_240D7F920(v74 + 1928);
      if (!*(v74 + 1000))
      {
        return sub_240DAE124();
      }

      v65 = *(v74 + 2496);
      sub_240D8634C(v74 + 976, v74 + 944);
      swift_dynamicCast();
      v28 = *(v74 + 1952);
      *v65 = *(v74 + 1944);
      v65[1] = v28;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A20, &qword_240DB2960);
      sub_240DADE94();
    }

    else
    {
      sub_240D86770((v74 + 560));
    }

    *(v74 + 1800) = sub_240DADD64();
    *(v74 + 1808) = v29;
    sub_240DADCC4();
    sub_240D7F920(v74 + 1800);
    if (*(v74 + 616))
    {
      sub_240D86770((v74 + 592));
      *(v74 + 1816) = sub_240DADD64();
      *(v74 + 1824) = v30;
      sub_240DADCC4();
      sub_240D7F920(v74 + 1816);
      if (!*(v74 + 680))
      {
        return sub_240DAE124();
      }

      sub_240D8634C(v74 + 656, v74 + 624);
      swift_dynamicCast();
      *(v74 + 2312) = *(v74 + 2304);
      *(v74 + 1832) = sub_240DADD64();
      *(v74 + 1840) = v31;
      sub_240DADCC4();
      sub_240D7F920(v74 + 1832);
      if (!*(v74 + 744))
      {
        return sub_240DAE124();
      }

      sub_240D8634C(v74 + 720, v74 + 688);
      swift_dynamicCast();
      v32 = *(v74 + 1856);
      *(v74 + 1864) = *(v74 + 1848);
      *(v74 + 1872) = v32;
      *(v74 + 1880) = sub_240DADD64();
      *(v74 + 1888) = v33;
      sub_240DADCC4();
      sub_240D7F920(v74 + 1880);
      if (!*(v74 + 808))
      {
        return sub_240DAE124();
      }

      sub_240D8634C(v74 + 784, v74 + 752);
      swift_dynamicCast();
      *(v74 + 2328) = *(v74 + 2320);
      *(v74 + 1896) = sub_240DADD64();
      *(v74 + 1904) = v34;
      sub_240DADCC4();
      sub_240D7F920(v74 + 1896);
      if (!*(v74 + 872))
      {
        return sub_240DAE124();
      }

      sub_240D8634C(v74 + 848, v74 + 816);
      swift_dynamicCast();
      *(v74 + 2344) = *(v74 + 2336);
      *(v74 + 1912) = sub_240DADD64();
      *(v74 + 1920) = v35;
      sub_240DADCC4();
      sub_240D7F920(v74 + 1912);
      if (!*(v74 + 936))
      {
        return sub_240DAE124();
      }

      sub_240D8634C(v74 + 912, v74 + 880);
      swift_dynamicCast();
      *(v74 + 2360) = *(v74 + 2352);
      sub_240DADEF4();
      sub_240DADEF4();
      sub_240DADEF4();
      sub_240DAD714();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A20, &qword_240DB2960);
      sub_240DADE94();
    }

    else
    {
      sub_240D86770((v74 + 592));
    }
  }

  v37 = sub_240D823E4();
  v63 = *v37;
  v64 = v37[1];

  *(v74 + 1560) = v63;
  *(v74 + 1568) = v64;
  sub_240DADCC4();
  sub_240D7F920(v74 + 1560);
  if (*(v74 + 72))
  {
    sub_240D862BC(v74 + 48, v74 + 112);
    if (!*(v74 + 136))
    {
      return sub_240DAE124();
    }

    sub_240D8634C(v74 + 112, v74 + 80);
    swift_dynamicCast();
    v42 = sub_240DAD7B4();
    if (v42 == 2)
    {
      v59 = 1;
    }

    else
    {
      v59 = v42;
    }

    *(v74 + 2584) = v59 & 1;
    v43 = sub_240D82488();
    v57 = *v43;
    v58 = v43[1];

    *(v74 + 1592) = v57;
    *(v74 + 1600) = v58;
    sub_240DADCC4();
    sub_240D7F920(v74 + 1592);
    if (*(v74 + 168))
    {
      sub_240D862BC(v74 + 144, v74 + 208);
      if (*(v74 + 232))
      {
        sub_240D8634C(v74 + 208, v74 + 176);
        swift_dynamicCast();
        v48 = MEMORY[0x245CCFAA0](*(v74 + 1608), *(v74 + 1616));
        if (v48 == 8)
        {
          v54 = 5;
        }

        else
        {
          v54 = v48;
        }

        *(v74 + 2592) = v54;
        v53 = *(v74 + 2240);

        *(v74 + 2248) = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A20, &qword_240DB2960);
        sub_240D86368();
        sub_240D863E8();
        sub_240DADF34();
        sub_240D864E4();
        sub_240DAD6F4();
        *(v74 + 2256) = sub_240DAE1D4();
        sub_240DADB74();
        sub_240D86550();
        sub_240D86698();
        sub_240DADB64();
        sub_240DADB24();

        v49 = swift_task_alloc();
        *(v74 + 2568) = v49;
        *v49 = *(v74 + 2216);
        v49[1] = sub_240D85950;
        v50 = *(v74 + 2448);
        v51 = *(v74 + 2408);

        return MEMORY[0x2821ADCE0](v50, "AppleMediaDiscovery/AMDFitcoreDIntegration.swift", 48, 2, 89, v51);
      }

      return sub_240DAE124();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    sub_240DAE1D4();
    v55 = v44;
    *v44 = sub_240DADD64();
    v55[1] = v45;
    v46 = sub_240DADD64();
    v55[5] = MEMORY[0x277D837D0];
    v55[2] = v46;
    v55[3] = v47;
    sub_240D7F8DC();
    v56 = sub_240DADCA4();
    sub_240D86770((v74 + 144));
    sub_240D86770((v74 + 48));
    sub_240D86770((v74 + 16));
    sub_240D867AC((v74 + 2240));
    v62 = v56;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    sub_240DAE1D4();
    v60 = v38;
    *v38 = sub_240DADD64();
    v60[1] = v39;
    v40 = sub_240DADD64();
    v60[5] = MEMORY[0x277D837D0];
    v60[2] = v40;
    v60[3] = v41;
    sub_240D7F8DC();
    v61 = sub_240DADCA4();
    sub_240D86770((v74 + 48));
    sub_240D86770((v74 + 16));
    sub_240D867AC((v74 + 2240));
    v62 = v61;
  }

  v52 = *(*(v74 + 2216) + 8);

  return v52(v62);
}

uint64_t sub_240D85950()
{
  v5 = *v1;
  v4 = (*v1 + 16);
  *(v5 + 2216) = *v1;
  *(v5 + 2576) = v0;

  if (v0)
  {
    v2 = sub_240D85F8C;
  }

  else
  {
    (*(v4[300] + 8))(v4[301], v4[299]);
    v2 = sub_240D85AE4;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_240D85AE4()
{
  *(v0 + 2216) = v0;
  *(v0 + 2280) = sub_240DAD764();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A38, &qword_240DB2968);
  sub_240D867D8();
  sub_240DADF54();
  while (1)
  {
    v19 = v21[300];
    v20 = v21[297];
    v18 = v21[298];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A48, &qword_240DB2970);
    sub_240DAE0E4();
    if ((*(v18 + 48))(v19, 1, v20) == 1)
    {
      break;
    }

    v16 = v21[299];
    v17 = v21[297];
    v15 = v21[298];
    (*(v15 + 32))(v16, v21[300]);
    v21[205] = sub_240DAD984();
    v21[206] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A50, &unk_240DB2FD0);
    sub_240DADE94();
    (*(v15 + 8))(v16, v17);
  }

  v13 = v21[309];
  v12 = v21[307];
  v8 = v21[306];
  v7 = v21[304];
  v11 = v21[308];
  v6 = v21[305];
  sub_240D86860(v21 + 203);
  (*(v6 + 8))(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v9 = v2;
  *v2 = sub_240DADD64();
  v9[1] = v3;
  v10 = v21[282];

  v9[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A50, &unk_240DB2FD0);
  v9[2] = v10;
  sub_240D7F8DC();
  v14 = sub_240DADCA4();
  sub_240D86744(v21 + 282);
  (*(v11 + 8))(v13, v12);
  sub_240D86770(v21 + 18);
  sub_240D86770(v21 + 6);
  sub_240D86770(v21 + 2);
  sub_240D867AC(v21 + 280);

  v4 = *(v21[277] + 8);

  return v4(v14);
}

uint64_t sub_240D85F8C()
{
  v12 = v0[322];
  v15 = v0[309];
  v13 = v0[308];
  v14 = v0[307];
  v1 = v0[303];
  v2 = v0[302];
  v3 = v0[301];
  v0[277] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x245CD0E40](v12);
  v0[283] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v9 = v4;
  *v4 = sub_240DADD64();
  v9[1] = v5;
  swift_getErrorValue();
  v10 = v0[190];
  v11 = v0[191];
  v9[5] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9 + 2);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v10);
  sub_240D7F8DC();
  v16 = sub_240DADCA4();

  sub_240D86744(v0 + 282);
  (*(v13 + 8))(v15, v14);
  sub_240D86770(v0 + 18);
  sub_240D86770(v0 + 6);
  sub_240D86770(v0 + 2);
  sub_240D867AC(v0 + 280);

  v7 = *(v0[277] + 8);

  return v7(v16);
}

uint64_t sub_240D862BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

__n128 sub_240D8634C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_240D86368()
{
  v2 = qword_27E519A28;
  if (!qword_27E519A28)
  {
    sub_240DAD7A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519A28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D863E8()
{
  v2 = qword_27E519A30;
  if (!qword_27E519A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519A20, &qword_240DB2960);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519A30);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t sub_240D864E4()
{
  v3 = sub_240D9375C(0);
  if (sub_240D9384C(v3))
  {
    return sub_240D93854(v3);
  }

  v1 = MEMORY[0x277D84FA0];

  return v1;
}

uint64_t sub_240D86550()
{
  v7 = 0;
  v6 = sub_240DADBA4();
  v4 = *(v6 - 8);
  v5 = v6 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v8 = &v2 - v3;
  sub_240D94AE4();
  v10 = sub_240DADF94();
  (*(v4 + 104))(v8, *MEMORY[0x277D4F368], v6);
  v0 = sub_240DADB94();
  v9 = v11;
  v11[3] = v0;
  v11[4] = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_240DADB84();
  sub_240DADBC4();
  swift_allocObject();
  return sub_240DADBB4();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

void *sub_240D86770(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

unint64_t sub_240D867D8()
{
  v2 = qword_27E519A40;
  if (!qword_27E519A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519A38, &qword_240DB2968);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519A40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D8693C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v9 = sub_240DADC84();
  v3[6] = v9;
  v5 = swift_task_alloc();
  *(v8 + 56) = v5;
  *v5 = *(v8 + 16);
  v5[1] = sub_240D86A54;

  return sub_240D82B04(v9);
}

uint64_t sub_240D86A54(uint64_t a1)
{
  v8 = *v1;
  v7 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(v8 + 16) = *v1;

  v6 = sub_240DADC74();
  v7[2]();

  _Block_release(v7);

  v2 = *(*(v8 + 16) + 8);

  return v2();
}

uint64_t sub_240D86C4C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_240D86D38;

  return sub_240D8693C(v7, v5, v6);
}

uint64_t sub_240D86D38()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D86E60(uint64_t a1)
{
  v2[43] = a1;
  v2[31] = v2;
  v2[32] = 0;
  v2[33] = 0;
  v2[35] = 0;
  v2[37] = 0;
  v2[38] = 0;
  v2[40] = 0;
  v2[42] = 0;
  memset(v2 + 7, 0, 0x28uLL);
  v2[25] = 0;
  v2[26] = 0;
  v3 = sub_240DAD974();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A58, &qword_240DB2990);
  v2[47] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A60, &qword_240DB2998);
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v2[32] = a1;
  v2[33] = v1;

  return MEMORY[0x2822009F8](sub_240D87050, 0);
}

uint64_t sub_240D87050()
{
  v0[31] = v0;
  v1 = sub_240D8252C();
  v8 = *v1;
  v9 = v1[1];

  v0[23] = v8;
  v0[24] = v9;
  sub_240DADCC4();
  sub_240D7F920((v0 + 23));
  if (!v0[19])
  {
    return sub_240DAE124();
  }

  sub_240D8634C((v7 + 16), (v7 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A50, &unk_240DB2FD0);
  swift_dynamicCast();
  v5 = v7[34];
  v7[51] = v5;
  v7[35] = v5;

  v7[36] = v5;
  sub_240D87BE4();
  v6 = sub_240DADF34();
  v7[52] = v6;
  v7[37] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A68, &qword_240DB29A0);
  sub_240DAE1D4();
  v7[38] = sub_240DADCA4();
  sub_240DADB74();
  sub_240D86550();
  sub_240D86698();
  sub_240DADB64();
  sub_240DADB14();

  v3 = swift_task_alloc();
  v7[53] = v3;
  *v3 = v7[31];
  v3[1] = sub_240D87398;
  v4 = v7[48];

  return MEMORY[0x2821ADCE0](v7 + 39, "AppleMediaDiscovery/AMDFitcoreDIntegration.swift", 48, 2, 108, v4);
}

uint64_t sub_240D87398()
{
  v4 = *v1;
  v4[31] = *v1;
  v4[54] = v0;

  if (v0)
  {
    v2 = sub_240D8799C;
  }

  else
  {
    (*(v4[49] + 8))(v4[50], v4[48]);
    v2 = sub_240D87528;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_240D87528()
{
  v0[31] = v0;
  v0[42] = v0[39];

  sub_240D87C98();
  sub_240DADF14();
  memcpy(v0 + 7, v0 + 2, 0x28uLL);
  for (i = v0[54]; ; i = 0)
  {
    v15 = v17[47];
    v16 = v17[44];
    v14 = v17[45];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A70, &qword_240DB29A8);
    sub_240DADF24();
    if ((*(v14 + 48))(v15, 1, v16) == 1)
    {
      break;
    }

    (*(v17[45] + 32))(v17[46], v17[47]);
    sub_240D87D9C();
    v13 = sub_240DAD9A4();
    if (i)
    {

      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = v13;
      v12 = v1;
    }

    v9 = v17[46];
    v10 = v17[44];
    v8 = v17[45];
    v17[25] = v11;
    v17[26] = v12;
    v6 = sub_240DAD874();
    v7 = v2;

    v17[27] = v11;
    v17[28] = v12;
    v17[29] = v6;
    v17[30] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A80, &qword_240DB29B0);
    sub_240DADCD4();

    (*(v8 + 8))(v9, v10);
  }

  sub_240D87D18(v17 + 7);

  v5 = sub_240DAE144();

  sub_240D87C6C(v17 + 38);

  v3 = *(v17[31] + 8);

  return v3(v5);
}

uint64_t sub_240D8799C()
{
  v12 = v0[54];
  v1 = v0[50];
  v2 = v0[49];
  v3 = v0[48];
  v0[31] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x245CD0E40](v12);
  v0[40] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v9 = v4;
  *v4 = sub_240DADD64();
  v9[1] = v5;
  swift_getErrorValue();
  v10 = v0[20];
  v11 = v0[21];
  v9[5] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9 + 2);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v10);
  sub_240D7F8DC();
  v13 = sub_240DADCA4();

  sub_240D87C6C(v0 + 38);

  v7 = *(v0[31] + 8);

  return v7(v13);
}

unint64_t sub_240D87BE4()
{
  v2 = qword_2810BCF68;
  if (!qword_2810BCF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519A50, &unk_240DB2FD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCF68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D87C98()
{
  v2 = qword_2810BCF80;
  if (!qword_2810BCF80)
  {
    sub_240DAD974();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCF80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D87D9C()
{
  v2 = qword_27E519A78;
  if (!qword_27E519A78)
  {
    sub_240DAD974();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519A78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D87ECC(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v9 = sub_240DADC84();
  v3[6] = v9;
  v5 = swift_task_alloc();
  *(v8 + 56) = v5;
  *v5 = *(v8 + 16);
  v5[1] = sub_240D87FE4;

  return sub_240D86E60(v9);
}

uint64_t sub_240D87FE4(uint64_t a1)
{
  v8 = *v1;
  v7 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(v8 + 16) = *v1;

  v6 = sub_240DADC74();
  v7[2]();

  _Block_release(v7);

  v2 = *(*(v8 + 16) + 8);

  return v2();
}

uint64_t sub_240D881DC()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_240D882C8;

  return sub_240D87ECC(v7, v5, v6);
}

uint64_t sub_240D882C8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D883F0(uint64_t a1)
{
  v2[9] = v2;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v2[13] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v3 = sub_240DAD994();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A10, &qword_240DB2950);
  v2[19] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A18, &qword_240DB2958);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = sub_240DAD774();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v6 = sub_240DAD704();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v2[10] = a1;
  v2[11] = v1;

  return MEMORY[0x2822009F8](sub_240D88694, 0);
}

uint64_t sub_240D88694()
{
  *(v0 + 72) = v0;
  sub_240D864E4();
  sub_240D88FB8();
  sub_240DAD6F4();
  *(v0 + 96) = sub_240DAE1D4();
  sub_240DADB74();
  sub_240D86550();
  sub_240D86698();
  sub_240DADB64();
  sub_240DADB24();

  v1 = swift_task_alloc();
  v5[29] = v1;
  *v1 = v5[9];
  v1[1] = sub_240D88810;
  v2 = v5[25];
  v3 = v5[20];

  return MEMORY[0x2821ADCE0](v2, "AppleMediaDiscovery/AMDFitcoreDIntegration.swift", 48, 2, 130, v3);
}

uint64_t sub_240D88810()
{
  v4 = *v1;
  v4[9] = *v1;
  v4[30] = v0;

  if (v0)
  {
    v2 = sub_240D88D50;
  }

  else
  {
    (*(v4[21] + 8))(v4[22], v4[20]);
    v2 = sub_240D889A0;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_240D889A0()
{
  *(v0 + 72) = v0;
  *(v0 + 120) = sub_240DAD764();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A38, &qword_240DB2968);
  sub_240D867D8();
  sub_240DADF54();
  while (1)
  {
    v19 = v21[19];
    v20 = v21[16];
    v18 = v21[17];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A48, &qword_240DB2970);
    sub_240DAE0E4();
    if ((*(v18 + 48))(v19, 1, v20) == 1)
    {
      break;
    }

    v16 = v21[18];
    v17 = v21[16];
    v15 = v21[17];
    (*(v15 + 32))(v16, v21[19]);
    v21[7] = sub_240DAD984();
    v21[8] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A50, &unk_240DB2FD0);
    sub_240DADE94();
    (*(v15 + 8))(v16, v17);
  }

  v13 = v21[28];
  v12 = v21[26];
  v8 = v21[25];
  v7 = v21[23];
  v11 = v21[27];
  v6 = v21[24];
  sub_240D86860(v21 + 5);
  (*(v6 + 8))(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v9 = v2;
  *v2 = sub_240DADD64();
  v9[1] = v3;
  v10 = v21[12];

  v9[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A50, &unk_240DB2FD0);
  v9[2] = v10;
  sub_240D7F8DC();
  v14 = sub_240DADCA4();
  sub_240D86744(v21 + 12);
  (*(v11 + 8))(v13, v12);

  v4 = *(v21[9] + 8);

  return v4(v14);
}

uint64_t sub_240D88D50()
{
  v12 = v0[30];
  v15 = v0[28];
  v13 = v0[27];
  v14 = v0[26];
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[20];
  v0[9] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x245CD0E40](v12);
  v0[13] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v9 = v4;
  *v4 = sub_240DADD64();
  v9[1] = v5;
  swift_getErrorValue();
  v10 = v0[2];
  v11 = v0[3];
  v9[5] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9 + 2);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v10);
  sub_240D7F8DC();
  v16 = sub_240DADCA4();

  sub_240D86744(v0 + 12);
  (*(v13 + 8))(v15, v14);

  v7 = *(v0[9] + 8);

  return v7(v16);
}

uint64_t sub_240D88FB8()
{
  v3 = sub_240D9375C(0);
  if (sub_240D9384C(v3))
  {
    return sub_240D93854(v3);
  }

  v1 = MEMORY[0x277D84FA0];

  return v1;
}

uint64_t sub_240D890D4(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v9 = sub_240DADC84();
  v3[6] = v9;
  v5 = swift_task_alloc();
  *(v8 + 56) = v5;
  *v5 = *(v8 + 16);
  v5[1] = sub_240D891EC;

  return sub_240D883F0(v9);
}

uint64_t sub_240D891EC(uint64_t a1)
{
  v8 = *v1;
  v7 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(v8 + 16) = *v1;

  v6 = sub_240DADC74();
  v7[2]();

  _Block_release(v7);

  v2 = *(*(v8 + 16) + 8);

  return v2();
}

uint64_t sub_240D893E4()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_240D894D0;

  return sub_240D890D4(v7, v5, v6);
}

uint64_t sub_240D894D0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D895F8()
{
  v1[8] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[5] = 0;
  v1[7] = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A88, &qword_240DB29E8);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A90, &qword_240DB29F0);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[3] = v0;

  return MEMORY[0x2822009F8](sub_240D89770, 0);
}

uint64_t sub_240D89770()
{
  v1 = v0[8];
  v0[2] = v0;
  v4 = objc_opt_self();
  (*((*v1 & *MEMORY[0x277D85000]) + 0x78))();
  sub_240DAE0D4();
  v5 = sub_240DADE44();

  v6 = [v4 deleteEventsWithPredicate:0 forStreams:v5];
  MEMORY[0x277D82BD8](v5);
  sub_240DADC84();

  MEMORY[0x277D82BD8](v6);
  v0[15] = sub_240DADB74();
  sub_240D86550();
  sub_240D86698();
  v0[16] = sub_240DADB64();
  MEMORY[0x277D82BE0](v1);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *(v8 + 16) = v1;
  v2 = swift_task_alloc();
  *(v7 + 144) = v2;
  *v2 = *(v7 + 16);
  v2[1] = sub_240D899AC;

  return MEMORY[0x2821AE450](&unk_240DB2A00, v8);
}

uint64_t sub_240D899AC()
{
  v5 = *v1;
  v5[2] = *v1;
  v5[19] = v0;

  if (v0)
  {
    v2 = sub_240D8A3F8;
  }

  else
  {
    v4 = v5[8];

    v2 = sub_240D89B48;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_240D89B48()
{
  *(v0 + 16) = v0;
  sub_240D86550();
  sub_240D86698();
  sub_240DADB64();
  sub_240DADB34();

  v1 = swift_task_alloc();
  v4[20] = v1;
  *v1 = v4[2];
  v1[1] = sub_240D89C6C;
  v2 = v4[12];

  return MEMORY[0x2821ADCE0](v4 + 4, "AppleMediaDiscovery/AMDFitcoreDIntegration.swift", 48, 2, 152, v2);
}

uint64_t sub_240D89C6C()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[21] = v0;

  if (v0)
  {
    v2 = sub_240D8A4D4;
  }

  else
  {
    (*(v4[13] + 8))(v4[14], v4[12]);
    v2 = sub_240D89DFC;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_240D89DFC()
{
  v1 = v0[21];
  v2 = v0[8];
  v0[2] = v0;
  v8 = v0[4];
  v0[22] = v8;
  v0[5] = v8;
  (*((*v2 & *MEMORY[0x277D85000]) + 0xC0))();
  if (v1)
  {

    v5 = *(v7[2] + 8);

    return v5();
  }

  else
  {
    sub_240D86550();
    sub_240D86698();
    sub_240DADB64();
    sub_240DADB54();

    v3 = swift_task_alloc();
    v7[23] = v3;
    *v3 = v7[2];
    v3[1] = sub_240D8A030;
    v4 = v7[9];

    return MEMORY[0x2821ADCE0](v7 + 6, "AppleMediaDiscovery/AMDFitcoreDIntegration.swift", 48, 2, 156, v4);
  }
}

uint64_t sub_240D8A030()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[24] = v0;

  if (v0)
  {
    v2 = sub_240D8A5A0;
  }

  else
  {
    (*(v4[10] + 8))(v4[11], v4[9]);
    v2 = sub_240D8A1C0;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_240D8A1C0()
{
  v1 = v0[24];
  v2 = v0[8];
  v0[2] = v0;
  v0[7] = v0[6];
  v3 = (*((*v2 & *MEMORY[0x277D85000]) + 0xB8))();
  if (v1)
  {

    v4 = v7;
    v5 = *(*(v9 + 16) + 8);
  }

  else
  {
    v8 = (*((**(v9 + 64) & *MEMORY[0x277D85000]) + 0x60))(v3);

    v4 = v8;
    v5 = *(*(v9 + 16) + 8);
  }

  return v5(v4);
}

uint64_t sub_240D8A3F8()
{
  v3 = *(v0 + 64);
  *(v0 + 16) = v0;

  MEMORY[0x277D82BD8](v3);

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_240D8A4D4()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[12];
  v0[2] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[2] + 8);

  return v4();
}

uint64_t sub_240D8A5A0()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[9];
  v0[2] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[2] + 8);

  return v4();
}

uint64_t sub_240D8A680(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = a2;
  return MEMORY[0x2822009F8](sub_240D8A6D0, 0);
}

uint64_t sub_240D8A6D0()
{
  v1 = v0[6];
  v2 = v0[5];
  v0[2] = v0;
  (*((*v1 & *MEMORY[0x277D85000]) + 0xC8))(v2);
  v3 = *(*(v5 + 16) + 8);

  return v3();
}

uint64_t sub_240D8A828(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_240D8A8E8;

  return sub_240D8A680(a1, v6);
}

uint64_t sub_240D8A8E8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D8AAA0(const void *a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = v2;
  v2[4] = _Block_copy(a1);
  MEMORY[0x277D82BE0](a2);
  v4 = swift_task_alloc();
  *(v6 + 40) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_240D8AB6C;

  return sub_240D895F8();
}

uint64_t sub_240D8AB6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v11 = v3 + 16;
  v12 = v3 + 16;

  if (v1)
  {
    v7 = *(v11 + 16);
    v6 = sub_240DAD604();
    v7[2](v7, 0);

    _Block_release(v7);
  }

  else
  {
    aBlock = *(v11 + 16);
    v8 = sub_240DADC74();
    aBlock[2]();

    _Block_release(aBlock);
  }

  v4 = *(*v12 + 8);

  return v4();
}

uint64_t sub_240D8AD6C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_240D8AE4C;

  return sub_240D8AAA0(v6, v5);
}

uint64_t sub_240D8AE4C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D8AF74(uint64_t a1)
{
  v2[31] = v1;
  v2[30] = a1;
  v2[21] = v2;
  v2[22] = 0;
  v2[23] = 0;
  v2[24] = 0;
  v2[26] = 0;
  v2[28] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A60, &qword_240DB2998);
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  v2[22] = a1;
  v2[23] = v1;

  return MEMORY[0x2822009F8](sub_240D8B0A0, 0);
}

uint64_t sub_240D8B0A0()
{
  v0[21] = v0;
  v0[17] = sub_240DADD64();
  v0[18] = v1;
  sub_240DADCC4();
  sub_240D7F920((v0 + 17));
  if (v0[5])
  {
    sub_240D86770(v7 + 2);
    v7[19] = sub_240DADD64();
    v7[20] = v2;
    sub_240DADCC4();
    sub_240D7F920((v7 + 19));
    if (!v7[13])
    {
      return sub_240DAE124();
    }

    sub_240D8634C((v7 + 10), (v7 + 6));
    swift_dynamicCast();
    v6 = v7[29];
  }

  else
  {
    sub_240D86770(v7 + 2);
    v6 = 1000;
  }

  v7[24] = v6;
  sub_240DADB74();
  sub_240D86550();
  sub_240D86698();
  sub_240DADB64();
  sub_240DADB04();

  v4 = swift_task_alloc();
  v7[35] = v4;
  *v4 = v7[21];
  v4[1] = sub_240D8B430;
  v5 = v7[32];

  return MEMORY[0x2821ADCE0](v7 + 25, "AppleMediaDiscovery/AMDFitcoreDIntegration.swift", 48, 2, 170, v5);
}

uint64_t sub_240D8B430()
{
  v4 = *v1;
  v4[21] = *v1;
  v4[36] = v0;

  if (v0)
  {
    v2 = sub_240D8B8B8;
  }

  else
  {
    (*(v4[33] + 8))(v4[34], v4[32]);
    v2 = sub_240D8B5C0;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_240D8B5C0()
{
  v1 = v0[36];
  v2 = v0[31];
  v0[21] = v0;
  v0[28] = v0[25];
  (*((*v2 & *MEMORY[0x277D85000]) + 0xC8))();
  if (v1)
  {

    MEMORY[0x245CD0E40](v1);
    v16[26] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    sub_240DAE1D4();
    v10 = v7;
    v11 = v7 + 2;
    *v7 = sub_240DADD64();
    v10[1] = v8;
    swift_getErrorValue();
    v12 = v16[14];
    v13 = v16[15];
    v10[5] = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v12);
    sub_240D7F8DC();
    v14 = sub_240DADCA4();

    v15 = v14;
  }

  else
  {
    v3 = v16[31];

    v15 = (*((*v3 & *MEMORY[0x277D85000]) + 0x60))(v4);
  }

  v5 = *(v16[21] + 8);

  return v5(v15);
}

uint64_t sub_240D8B8B8()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[32];
  v0[21] = v0;
  (*(v2 + 8))(v1, v3);
  v12 = v0[36];
  MEMORY[0x245CD0E40]();
  v0[26] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v9 = v4;
  *v4 = sub_240DADD64();
  v9[1] = v5;
  swift_getErrorValue();
  v10 = v0[14];
  v11 = v0[15];
  v9[5] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9 + 2);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v10);
  sub_240D7F8DC();
  v13 = sub_240DADCA4();

  v7 = *(v0[21] + 8);

  return v7(v13);
}

uint64_t sub_240D8BB68(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v9 = sub_240DADC84();
  v3[6] = v9;
  v5 = swift_task_alloc();
  *(v8 + 56) = v5;
  *v5 = *(v8 + 16);
  v5[1] = sub_240D8BC80;

  return sub_240D8AF74(v9);
}

uint64_t sub_240D8BC80(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v13 = (v3 + 16);
  v14 = v3 + 16;

  if (v1)
  {
    v9 = v13[3];
    v8 = sub_240DAD604();
    v9[2](v9, 0);

    _Block_release(v9);
  }

  else
  {
    aBlock = v13[3];
    v10 = sub_240DADC74();
    aBlock[2]();

    _Block_release(aBlock);
  }

  v7 = v13[2];
  v6 = v13[1];

  v4 = *(*v14 + 8);

  return v4();
}

uint64_t sub_240D8BEA0()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_240D8BF8C;

  return sub_240D8BB68(v7, v5, v6);
}

uint64_t sub_240D8BF8C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void sub_240D8C0B4(uint64_t a1)
{
  v50 = a1;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v51 = __b;
  v53 = 40;
  memset(__b, 0, sizeof(__b));
  v57 = 0;
  v48 = 0;
  v49 = sub_240DAD754();
  v42 = *(v49 - 8);
  v43 = v49 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v45 = &v22 - v44;
  v62 = &v22 - v44;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A98, &qword_240DB2A30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v50);
  v47 = &v22 - v46;
  v61 = v2;
  v60 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
  v59 = sub_240DAE1D4();

  sub_240D8C678();
  v52 = &v63;
  sub_240DADF14();
  v3 = v54;
  memcpy(v51, v52, v53);
  for (i = v3; ; i = v40)
  {
    v40 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AA0, &qword_240DB2A38);
    sub_240DADF24();
    if ((*(v42 + 48))(v47, 1, v49) == 1)
    {
      break;
    }

    (*(v42 + 32))(v45, v47, v49);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    v36 = sub_240DAE1D4();
    v35 = v4;
    v5 = sub_240DADD64();
    v6 = v35;
    *v35 = v5;
    v6[1] = v7;
    v8 = sub_240DAD744();
    v9 = v35;
    v38 = MEMORY[0x277D837D0];
    v35[5] = MEMORY[0x277D837D0];
    v9[2] = v8;
    v9[3] = v10;
    sub_240D7F8DC();
    v11 = sub_240DADCA4();
    v39 = &v56;
    v56 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AB0, &qword_240DB2FC0);
    sub_240DADE94();
    (*(v42 + 8))(v45, v49);
  }

  v12 = v41;
  sub_240D8C6F8(__b);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AA8, &unk_240DB2A40);
  v26 = sub_240DAE1D4();
  v23 = v13;
  v24 = v13 + 2;
  v14 = sub_240DADD64();
  v15 = v23;
  v17 = v16;
  v18 = v24;
  *v23 = v14;
  v15[1] = v17;
  sub_240D8C738(&v59, v18);
  sub_240D7F8DC();
  v27 = v19;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AB0, &qword_240DB2FC0);
  v30 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837E0];
  v28 = sub_240DADCA4();
  v57 = v28;

  v20 = sub_240DAE144();
  v21 = v40;
  v32 = v20;
  (*((*v12 & *MEMORY[0x277D85000]) + 0xD8))();
  v33 = v21;
  v34 = v21;
  if (v21)
  {
    v22 = v34;
  }

  sub_240D8C770(&v59);
}

unint64_t sub_240D8C678()
{
  v2 = qword_2810BCF98;
  if (!qword_2810BCF98)
  {
    sub_240DAD754();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCF98);
    return WitnessTable;
  }

  return v2;
}

void *sub_240D8C738(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void sub_240D8C79C(uint64_t a1)
{
  v318 = a1;
  v387 = 0;
  v386 = 0;
  v385 = 0;
  v384 = 0;
  v383 = 0;
  v382 = 0;
  v381 = 0;
  v380 = 0;
  v379 = 0;
  v378 = 0;
  v377 = 0;
  v376 = 0;
  v375 = 0;
  v319 = __b;
  v321 = 40;
  memset(__b, 0, sizeof(__b));
  v373 = 0;
  v366[0] = 0;
  v366[1] = 0;
  v363[0] = 0;
  v363[1] = 0;
  v360[0] = 0;
  v360[1] = 0;
  v357[0] = 0;
  v357[1] = 0;
  v354[0] = 0;
  v354[1] = 0;
  v351[0] = 0;
  v351[1] = 0;
  v348[0] = 0;
  v348[1] = 0;
  v343 = 0;
  v344 = 0;
  v340 = 0;
  v341 = 0;
  v337 = 0;
  v338 = 0;
  v334 = 0;
  v335 = 0;
  v331 = 0;
  v332 = 0;
  v328 = 0;
  v329 = 0;
  v325 = 0;
  v326 = 0;
  v316 = 0;
  v295 = sub_240DAD5F4();
  v296 = *(v295 - 8);
  v297 = v295 - 8;
  v298 = (*(v296 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v295);
  v299 = v165 - v298;
  v300 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AB8, &qword_240DB2A50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v316);
  v301 = v165 - v300;
  v302 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v303 = v165 - v302;
  v387 = v165 - v302;
  v304 = sub_240DAD6D4();
  v305 = *(v304 - 8);
  v306 = v304 - 8;
  v307 = (*(v305 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v316);
  v308 = v165 - v307;
  v386 = v165 - v307;
  v317 = sub_240DAD864();
  v309 = *(v317 - 8);
  v310 = v317 - 8;
  v311 = (*(v309 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v317);
  v312 = v165 - v311;
  v385 = v165 - v311;
  v313 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AC0, &qword_240DB2A58) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v318);
  v314 = v165 - v313;
  v384 = v4;
  v383 = v1;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
  v382 = sub_240DAE1D4();
  v381 = sub_240DAE1D4();
  v380 = sub_240DAE1D4();
  v379 = sub_240DAE1D4();
  v378 = sub_240DAE1D4();
  v377 = sub_240DAE1D4();
  v376 = sub_240DAE1D4();
  v375 = sub_240DAE1D4();

  sub_240D8DFB8();
  v320 = &v388;
  sub_240DADF14();
  v5 = v322;
  memcpy(v319, v320, v321);
  for (i = v5; ; i = v196)
  {
    v293 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AC8, &qword_240DB2A60);
    sub_240DADF24();
    if ((*(v309 + 48))(v314, 1, v317) == 1)
    {
      break;
    }

    (*(v309 + 32))(v312, v314, v317);
    sub_240DAD6C4();
    sub_240DAD7D4();
    sub_240DAD6B4();
    (*(v296 + 8))(v299, v295);
    v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    v281 = sub_240DAE1D4();
    v288 = v6;
    v289 = 1;
    v7 = sub_240DADD64();
    v8 = v288;
    *v288 = v7;
    v8[1] = v9;
    v10 = sub_240DAD7C4();
    v12 = v11;
    v13 = v288;
    v282 = MEMORY[0x277D837D0];
    v288[5] = MEMORY[0x277D837D0];
    v13[2] = v10;
    v13[3] = v12;
    v283 = v13 + 8;
    v14 = sub_240DADD64();
    v15 = v288;
    v288[6] = v14;
    v15[7] = v16;
    v284 = sub_240DAD7E4();
    v285 = v17;
    v286 = v18;
    v370 = v284;
    v371 = v17;
    v372 = v18 & 1 & v289;
    v288[11] = v282;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AD0, &qword_240DB2A68);
    sub_240DAD6E4();
    sub_240D8E078(v284, v285, v286 & 1);
    v287 = v288 + 14;
    v19 = sub_240DADD64();
    v20 = v288;
    v21 = v19;
    v22 = v303;
    v24 = v23;
    v25 = v301;
    v288[12] = v21;
    v20[13] = v24;
    sub_240D8E0AC(v22, v25);
    v290 = sub_240DAD6A4();
    v291 = *(v290 - 8);
    v292 = v290 - 8;
    if ((*(v291 + 48))(v301, v289) == 1)
    {
      sub_240D8E1D4(v301);
      memset(v368, 0, sizeof(v368));
      v369 = 0;
    }

    else
    {
      sub_240DAD694();
      v369 = MEMORY[0x277D839F8];
      v368[0] = v26;
      (*(v291 + 8))(v301, v290);
    }

    if (v369)
    {
      sub_240D8634C(v368, v287);
    }

    else
    {
      v27 = v288;
      v288[17] = MEMORY[0x277D83B88];
      v27[14] = 0;
      if (v369)
      {
        sub_240D86770(v368);
      }
    }

    sub_240D7F8DC();
    v28 = sub_240DADCA4();
    v275 = &v367;
    v367 = v28;
    v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AB0, &qword_240DB2FC0);
    sub_240DADE94();
    v365 = sub_240DAD854();
    v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A50, &unk_240DB2FD0);
    v278 = sub_240D8E27C();
    sub_240DADF54();
    for (j = v293; ; j = v270)
    {
      v270 = j;
      v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AD8, &qword_240DB2A70);
      sub_240DAE0E4();
      v272 = v363[2];
      v273 = v364;
      v274 = v271;
      if (!v364)
      {
        break;
      }

      v268 = v272;
      v269 = v273;
      v267 = v273;
      v264 = v272;
      v325 = v272;
      v326 = v273;
      v263 = sub_240DAE1D4();
      v265 = v29;
      v262 = 1;
      v30 = sub_240DADD64();
      v31 = v265;
      *v265 = v30;
      v31[1] = v32;
      v33 = sub_240DAD7C4();
      v34 = v265;
      v266 = MEMORY[0x277D837D0];
      v265[5] = MEMORY[0x277D837D0];
      v34[2] = v33;
      v34[3] = v35;
      v36 = sub_240DADD64();
      v37 = v265;
      v265[6] = v36;
      v37[7] = v38;

      v39 = v264;
      v40 = v265;
      v41 = v267;
      v265[11] = v266;
      v40[8] = v39;
      v40[9] = v41;
      sub_240D7F8DC();
      v324 = sub_240DADCA4();
      sub_240DADE94();
    }

    v260 = v274;
    sub_240D8E304(v366);
    v362 = sub_240DAD834();
    sub_240DADF54();
    for (k = v270; ; k = v257)
    {
      v257 = k;
      sub_240DAE0E4();
      v258 = v360[2];
      v259 = v361;
      if (!v361)
      {
        break;
      }

      v255 = v258;
      v256 = v259;
      v254 = v259;
      v251 = v258;
      v328 = v258;
      v329 = v259;
      v250 = sub_240DAE1D4();
      v252 = v42;
      v249 = 1;
      v43 = sub_240DADD64();
      v44 = v252;
      *v252 = v43;
      v44[1] = v45;
      v46 = sub_240DAD7C4();
      v47 = v252;
      v253 = MEMORY[0x277D837D0];
      v252[5] = MEMORY[0x277D837D0];
      v47[2] = v46;
      v47[3] = v48;
      v49 = sub_240DADD64();
      v50 = v252;
      v252[6] = v49;
      v50[7] = v51;

      v52 = v251;
      v53 = v252;
      v54 = v254;
      v252[11] = v253;
      v53[8] = v52;
      v53[9] = v54;
      sub_240D7F8DC();
      v327 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v363);
    v359 = sub_240DAD824();
    sub_240DADF54();
    for (m = v257; ; m = v245)
    {
      v245 = m;
      sub_240DAE0E4();
      v246 = v357[2];
      v247 = v358;
      if (!v358)
      {
        break;
      }

      v243 = v246;
      v244 = v247;
      v242 = v247;
      v239 = v246;
      v331 = v246;
      v332 = v247;
      v238 = sub_240DAE1D4();
      v240 = v55;
      v237 = 1;
      v56 = sub_240DADD64();
      v57 = v240;
      *v240 = v56;
      v57[1] = v58;
      v59 = sub_240DAD7C4();
      v60 = v240;
      v241 = MEMORY[0x277D837D0];
      v240[5] = MEMORY[0x277D837D0];
      v60[2] = v59;
      v60[3] = v61;
      v62 = sub_240DADD64();
      v63 = v240;
      v240[6] = v62;
      v63[7] = v64;

      v65 = v239;
      v66 = v240;
      v67 = v242;
      v240[11] = v241;
      v66[8] = v65;
      v66[9] = v67;
      sub_240D7F8DC();
      v330 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v360);
    v356 = sub_240DAD844();
    sub_240DADF54();
    for (n = v245; ; n = v233)
    {
      v233 = n;
      sub_240DAE0E4();
      v234 = v354[2];
      v235 = v355;
      if (!v355)
      {
        break;
      }

      v231 = v234;
      v232 = v235;
      v230 = v235;
      v227 = v234;
      v334 = v234;
      v335 = v235;
      v226 = sub_240DAE1D4();
      v228 = v68;
      v225 = 1;
      v69 = sub_240DADD64();
      v70 = v228;
      *v228 = v69;
      v70[1] = v71;
      v72 = sub_240DAD7C4();
      v73 = v228;
      v229 = MEMORY[0x277D837D0];
      v228[5] = MEMORY[0x277D837D0];
      v73[2] = v72;
      v73[3] = v74;
      v75 = sub_240DADD64();
      v76 = v228;
      v228[6] = v75;
      v76[7] = v77;

      v78 = v227;
      v79 = v228;
      v80 = v230;
      v228[11] = v229;
      v79[8] = v78;
      v79[9] = v80;
      sub_240D7F8DC();
      v333 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v357);
    v353 = sub_240DAD7F4();
    sub_240DADF54();
    for (ii = v233; ; ii = v221)
    {
      v221 = ii;
      sub_240DAE0E4();
      v222 = v351[2];
      v223 = v352;
      if (!v352)
      {
        break;
      }

      v219 = v222;
      v220 = v223;
      v218 = v223;
      v215 = v222;
      v337 = v222;
      v338 = v223;
      v214 = sub_240DAE1D4();
      v216 = v81;
      v213 = 1;
      v82 = sub_240DADD64();
      v83 = v216;
      *v216 = v82;
      v83[1] = v84;
      v85 = sub_240DAD7C4();
      v86 = v216;
      v217 = MEMORY[0x277D837D0];
      v216[5] = MEMORY[0x277D837D0];
      v86[2] = v85;
      v86[3] = v87;
      v88 = sub_240DADD64();
      v89 = v216;
      v216[6] = v88;
      v89[7] = v90;

      v91 = v215;
      v92 = v216;
      v93 = v218;
      v216[11] = v217;
      v92[8] = v91;
      v92[9] = v93;
      sub_240D7F8DC();
      v336 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v354);
    v350 = sub_240DAD804();
    sub_240DADF54();
    for (jj = v221; ; jj = v209)
    {
      v209 = jj;
      sub_240DAE0E4();
      v210 = v348[2];
      v211 = v349;
      if (!v349)
      {
        break;
      }

      v207 = v210;
      v208 = v211;
      v206 = v211;
      v203 = v210;
      v340 = v210;
      v341 = v211;
      v202 = sub_240DAE1D4();
      v204 = v94;
      v201 = 17;
      v200 = 1;
      v95 = sub_240DADD64();
      v96 = v204;
      *v204 = v95;
      v96[1] = v97;
      v98 = sub_240DAD7C4();
      v99 = v204;
      v205 = MEMORY[0x277D837D0];
      v204[5] = MEMORY[0x277D837D0];
      v99[2] = v98;
      v99[3] = v100;
      v101 = sub_240DADD64();
      v102 = v204;
      v204[6] = v101;
      v102[7] = v103;

      v104 = v203;
      v105 = v204;
      v106 = v206;
      v204[11] = v205;
      v105[8] = v104;
      v105[9] = v106;
      sub_240D7F8DC();
      v339 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v351);
    v347 = sub_240DAD814();
    sub_240DADF54();
    for (kk = v209; ; kk = v196)
    {
      v196 = kk;
      sub_240DAE0E4();
      v197 = v345;
      v198 = v346;
      if (!v346)
      {
        break;
      }

      v194 = v197;
      v195 = v198;
      v193 = v198;
      v190 = v197;
      v343 = v197;
      v344 = v198;
      v189 = sub_240DAE1D4();
      v191 = v107;
      v188 = 17;
      v187 = 1;
      v108 = sub_240DADD64();
      v109 = v191;
      *v191 = v108;
      v109[1] = v110;
      v111 = sub_240DAD7C4();
      v112 = v191;
      v192 = MEMORY[0x277D837D0];
      v191[5] = MEMORY[0x277D837D0];
      v112[2] = v111;
      v112[3] = v113;
      v114 = sub_240DADD64();
      v115 = v191;
      v191[6] = v114;
      v115[7] = v116;

      v117 = v190;
      v118 = v191;
      v119 = v193;
      v191[11] = v192;
      v118[8] = v117;
      v118[9] = v119;
      sub_240D7F8DC();
      v342 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v348);
    sub_240D8E1D4(v303);
    (*(v305 + 8))(v308, v304);
    (*(v309 + 8))(v312, v317);
  }

  v120 = v294;
  sub_240D8E038(__b);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AA8, &unk_240DB2A40);
  v178 = sub_240DAE1D4();
  v175 = v121;
  v166 = v121 + 2;
  v174 = 1;
  v122 = sub_240DADD64();
  v123 = v175;
  v125 = v124;
  v126 = v166;
  *v175 = v122;
  v123[1] = v125;
  sub_240D8C738(&v382, v126);
  v167 = v175 + 5;
  v127 = sub_240DADD64();
  v128 = v175;
  v130 = v129;
  v131 = v167;
  v175[3] = v127;
  v128[4] = v130;
  sub_240D8C738(&v381, v131);
  v168 = v175 + 8;
  v132 = sub_240DADD64();
  v133 = v175;
  v135 = v134;
  v136 = v168;
  v175[6] = v132;
  v133[7] = v135;
  sub_240D8C738(&v380, v136);
  v169 = v175 + 11;
  v137 = sub_240DADD64();
  v138 = v175;
  v140 = v139;
  v141 = v169;
  v175[9] = v137;
  v138[10] = v140;
  sub_240D8C738(&v379, v141);
  v170 = v175 + 14;
  v142 = sub_240DADD64();
  v143 = v175;
  v145 = v144;
  v146 = v170;
  v175[12] = v142;
  v143[13] = v145;
  sub_240D8C738(&v378, v146);
  v171 = v175 + 17;
  v147 = sub_240DADD64();
  v148 = v175;
  v150 = v149;
  v151 = v171;
  v175[15] = v147;
  v148[16] = v150;
  sub_240D8C738(&v377, v151);
  v172 = v175 + 20;
  v173 = 21;
  v152 = sub_240DADD64();
  v153 = v175;
  v155 = v154;
  v156 = v172;
  v175[18] = v152;
  v153[19] = v155;
  sub_240D8C738(&v376, v156);
  v176 = v175 + 23;
  v157 = sub_240DADD64();
  v158 = v175;
  v160 = v159;
  v161 = v176;
  v175[21] = v157;
  v158[22] = v160;
  sub_240D8C738(&v375, v161);
  sub_240D7F8DC();
  v179 = v162;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AB0, &qword_240DB2FC0);
  v182 = MEMORY[0x277D837D0];
  v183 = MEMORY[0x277D837E0];
  v180 = sub_240DADCA4();
  v373 = v180;

  v163 = sub_240DAE144();
  v164 = v293;
  v184 = v163;
  (*((*v120 & *MEMORY[0x277D85000]) + 0xD8))();
  v185 = v164;
  v186 = v164;
  if (v164)
  {
    v165[1] = v186;
  }

  sub_240D8C770(&v375);
  sub_240D8C770(&v376);
  sub_240D8C770(&v377);
  sub_240D8C770(&v378);
  sub_240D8C770(&v379);
  sub_240D8C770(&v380);
  sub_240D8C770(&v381);
  sub_240D8C770(&v382);
}

unint64_t sub_240D8DFB8()
{
  v2 = qword_2810BCF88;
  if (!qword_2810BCF88)
  {
    sub_240DAD864();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCF88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D8E078(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void *sub_240D8E0AC(const void *a1, void *a2)
{
  v6 = sub_240DAD6A4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AB8, &qword_240DB2A50);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_240D8E1D4(uint64_t a1)
{
  v3 = sub_240DAD6A4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_240D8E27C()
{
  v2 = qword_2810BCF60;
  if (!qword_2810BCF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519A50, &unk_240DB2FD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCF60);
    return WitnessTable;
  }

  return v2;
}

void sub_240D8E330(uint64_t a1)
{
  v416 = a1;
  v382 = "Fatal error";
  v383 = "Unexpectedly found nil while unwrapping an Optional value";
  v384 = "Swift/FloatingPointTypes.swift";
  v506 = 0;
  v505 = 0;
  v504 = 0;
  v503 = 0;
  v502 = 0;
  v501 = 0;
  v500 = 0;
  v499 = 0;
  v498 = 0;
  v497 = 0;
  v496 = 0;
  v495 = 0;
  v494 = 0;
  v493 = 0;
  v417 = v492;
  __len = 40;
  __c = 0;
  memset(v492, 0, sizeof(v492));
  v491 = 0;
  v490 = 0;
  v480 = 0;
  v479 = 0;
  v477[0] = 0;
  v477[1] = 0;
  v474[0] = 0;
  v474[1] = 0;
  v471[0] = 0;
  v471[1] = 0;
  v468[0] = 0;
  v468[1] = 0;
  v465[0] = 0;
  v465[1] = 0;
  v462[0] = 0;
  v462[1] = 0;
  v459[0] = 0;
  v459[1] = 0;
  memset(v456, 0, 0x28uLL);
  v450 = 0;
  v451 = 0;
  v452 = 0;
  v444 = 0;
  v445 = 0;
  v441 = 0;
  v442 = 0;
  v438 = 0;
  v439 = 0;
  v435 = 0;
  v436 = 0;
  v432 = 0;
  v433 = 0;
  v429 = 0;
  v430 = 0;
  v426 = 0;
  v427 = 0;
  v414 = 0;
  v386 = sub_240DAE194();
  v387 = *(v386 - 8);
  v388 = v386 - 8;
  v389 = (*(v387 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](0);
  v390 = &v211 - v389;
  v391 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v392 = &v211 - v391;
  v393 = sub_240DAD5F4();
  v394 = *(v393 - 8);
  v395 = v393 - 8;
  v396 = (*(v394 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v393);
  v397 = &v211 - v396;
  v398 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AB8, &qword_240DB2A50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v414);
  v399 = &v211 - v398;
  v400 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v401 = &v211 - v400;
  v506 = &v211 - v400;
  v402 = sub_240DAD6D4();
  v403 = *(v402 - 8);
  v404 = v402 - 8;
  v405 = (*(v403 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v414);
  v406 = &v211 - v405;
  v505 = &v211 - v405;
  v415 = sub_240DAD974();
  v407 = *(v415 - 8);
  v408 = v415 - 8;
  v409 = (*(v407 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v415);
  v410 = &v211 - v409;
  v504 = &v211 - v409;
  v411 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A58, &qword_240DB2990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v416);
  v412 = &v211 - v411;
  v503 = v6;
  v502 = v1;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
  v501 = sub_240DAE1D4();
  v500 = sub_240DAE1D4();
  v499 = sub_240DAE1D4();
  v498 = sub_240DAE1D4();
  v497 = sub_240DAE1D4();
  v496 = sub_240DAE1D4();
  v495 = sub_240DAE1D4();
  v494 = sub_240DAE1D4();
  v493 = sub_240DAE1D4();

  sub_240D87C98();
  v418 = &v507;
  sub_240DADF14();
  v7 = v420;
  memcpy(v417, v418, __len);
  for (i = v7; ; i = v247)
  {
    v380 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A70, &qword_240DB29A8);
    sub_240DADF24();
    if ((*(v407 + 48))(v412, 1, v415) == 1)
    {
      break;
    }

    (*(v407 + 32))(v410, v412, v415);
    v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    v375 = 0;
    sub_240DAE1D4();
    v368 = MEMORY[0x277D837D0];
    v490 = sub_240DADCA4();
    sub_240DAD6C4();
    sub_240DAD884();
    sub_240DAD6B4();
    (*(v394 + 8))(v397, v393);
    v367 = sub_240DAE1D4();
    v374 = v8;
    v376 = 1;
    v9 = sub_240DADD64();
    v10 = v374;
    *v374 = v9;
    v10[1] = v11;
    v12 = sub_240DAD874();
    v14 = v13;
    v15 = v374;
    v374[5] = v368;
    v15[2] = v12;
    v15[3] = v14;
    v369 = v15 + 8;
    v16 = sub_240DADD64();
    v17 = v374;
    v374[6] = v16;
    v17[7] = v18;
    v370 = sub_240DAD894();
    v371 = v19;
    v372 = v20;
    v487 = v370;
    v488 = v19;
    v489 = v20 & 1 & v376;
    v374[11] = v368;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AD0, &qword_240DB2A68);
    sub_240DAD6E4();
    sub_240D8E078(v370, v371, v372 & 1);
    v373 = v374 + 14;
    v21 = sub_240DADD64();
    v22 = v374;
    v23 = v21;
    v24 = v401;
    v26 = v25;
    v27 = v399;
    v374[12] = v23;
    v22[13] = v26;
    sub_240D8E0AC(v24, v27);
    v377 = sub_240DAD6A4();
    v378 = *(v377 - 8);
    v379 = v377 - 8;
    if ((*(v378 + 48))(v399, v376) == 1)
    {
      sub_240D8E1D4(v399);
      memset(v485, 0, sizeof(v485));
      v486 = 0;
    }

    else
    {
      sub_240DAD694();
      v486 = MEMORY[0x277D839F8];
      v485[0] = v28;
      (*(v378 + 8))(v399, v377);
    }

    if (v486)
    {
      sub_240D8634C(v485, v373);
    }

    else
    {
      v29 = v374;
      v374[17] = MEMORY[0x277D83B88];
      v29[14] = 0;
      if (v486)
      {
        sub_240D86770(v485);
      }
    }

    v30 = sub_240DADD64();
    v31 = v374;
    v374[18] = v30;
    v31[19] = v32;
    sub_240DAD954();
    v33 = v392;
    v34 = v387;
    v35 = v386;
    v363 = v36;
    v374[23] = MEMORY[0x277D839F8];
    v364 = MEMORY[0x277D84678];
    (*(v34 + 104))(v33, *MEMORY[0x277D84678], v35);
    v484 = v363;
    (*(v387 + 16))(v390, v392, v386);
    v365 = (*(v387 + 88))(v390, v386);
    if (v365 == *v364)
    {
      v484 = round(v363);
      goto LABEL_24;
    }

    if (v365 == *MEMORY[0x277D84670])
    {
      v484 = rint(v363);
      goto LABEL_24;
    }

    if (v365 == *MEMORY[0x277D84680])
    {
      goto LABEL_22;
    }

    if (v365 != *MEMORY[0x277D84688])
    {
      if (v365 == *MEMORY[0x277D84660])
      {
        v484 = trunc(v363);
        goto LABEL_24;
      }

      if (v365 != *MEMORY[0x277D84668])
      {
        sub_240DADF04();
        (*(v387 + 8))(v390, v386);
        goto LABEL_24;
      }

      v362 = *&v363 >> 63;
      if (v363 >= 0.0)
      {
LABEL_22:
        v484 = ceil(v363);
        goto LABEL_24;
      }

      if (v362 != 1)
      {
        sub_240DAE124();
        __break(1u);
LABEL_29:
        v352 = sub_240DADD64();
        v353 = v51;
        v354 = v424;
        v424[3] = MEMORY[0x277D837D0];
        sub_240DADEB4();
        v422 = v352;
        v423 = v353;
        sub_240DADCD4();
        goto LABEL_30;
      }
    }

    v484 = floor(v363);
LABEL_24:
    v37 = v386;
    v38 = v392;
    v39 = v387;
    *(v374 + 20) = v484;
    (*(v39 + 8))(v38, v37);
    v355 = v374 + 26;
    v359 = 1;
    v40 = sub_240DADD64();
    v41 = v374;
    v374[24] = v40;
    v41[25] = v42;
    v356 = sub_240DAD964();
    v357 = v43;
    v358 = v44;
    v481 = v356;
    v482 = v43;
    v483 = v44 & 1;
    v360 = MEMORY[0x277D837D0];
    v374[29] = MEMORY[0x277D837D0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AE0, &qword_240DB2A78);
    sub_240DAD6E4();
    sub_240D9047C(v356, v357, v358 & 1);
    v45 = sub_240DADD64();
    v46 = v374;
    v374[30] = v45;
    v46[31] = v47;
    v48 = sub_240DAD8B4();
    v49 = v374;
    v374[35] = v360;
    v49[32] = v48;
    v49[33] = v50;
    sub_240D7F8DC();
    v490 = sub_240DADCA4();

    v361 = sub_240DAD8F4();
    v480 = v361;
    if (sub_240DADE84() > 0)
    {
      goto LABEL_29;
    }

LABEL_30:
    v351 = sub_240DAD8C4();
    v479 = v351;
    if (sub_240DADE84() > 0)
    {
      v348 = sub_240DADD64();
      v349 = v52;
      v350 = v425;
      v425[3] = MEMORY[0x277D837D0];
      sub_240DADEB4();
      v424[4] = v348;
      v424[5] = v349;
      sub_240DADCD4();
    }

    v342 = v490;

    v343 = &v478;
    v478 = v342;
    v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AB0, &qword_240DB2FC0);
    sub_240DADE94();
    v476 = sub_240DAD8D4();
    v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A50, &unk_240DB2FD0);
    v346 = sub_240D8E27C();
    sub_240DADF54();
    for (j = v380; ; j = v337)
    {
      v337 = j;
      v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AD8, &qword_240DB2A70);
      sub_240DAE0E4();
      v339 = v474[2];
      v340 = v475;
      v341 = v338;
      if (!v475)
      {
        break;
      }

      v335 = v339;
      v336 = v340;
      v334 = v340;
      v331 = v339;
      v426 = v339;
      v427 = v340;
      v330 = sub_240DAE1D4();
      v332 = v53;
      v329 = 1;
      v54 = sub_240DADD64();
      v55 = v332;
      *v332 = v54;
      v55[1] = v56;
      v57 = sub_240DAD874();
      v58 = v332;
      v333 = MEMORY[0x277D837D0];
      v332[5] = MEMORY[0x277D837D0];
      v58[2] = v57;
      v58[3] = v59;
      v60 = sub_240DADD64();
      v61 = v332;
      v332[6] = v60;
      v61[7] = v62;

      v63 = v331;
      v64 = v332;
      v65 = v334;
      v332[11] = v333;
      v64[8] = v63;
      v64[9] = v65;
      sub_240D7F8DC();
      v425[4] = sub_240DADCA4();
      sub_240DADE94();
    }

    v327 = v341;
    sub_240D8E304(v477);
    v473 = sub_240DAD914();
    sub_240DADF54();
    for (k = v337; ; k = v324)
    {
      v324 = k;
      sub_240DAE0E4();
      v325 = v471[2];
      v326 = v472;
      if (!v472)
      {
        break;
      }

      v322 = v325;
      v323 = v326;
      v321 = v326;
      v318 = v325;
      v429 = v325;
      v430 = v326;
      v317 = sub_240DAE1D4();
      v319 = v66;
      v316 = 1;
      v67 = sub_240DADD64();
      v68 = v319;
      *v319 = v67;
      v68[1] = v69;
      v70 = sub_240DAD874();
      v71 = v319;
      v320 = MEMORY[0x277D837D0];
      v319[5] = MEMORY[0x277D837D0];
      v71[2] = v70;
      v71[3] = v72;
      v73 = sub_240DADD64();
      v74 = v319;
      v319[6] = v73;
      v74[7] = v75;

      v76 = v318;
      v77 = v319;
      v78 = v321;
      v319[11] = v320;
      v77[8] = v76;
      v77[9] = v78;
      sub_240D7F8DC();
      v428 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v474);
    v470 = sub_240DAD8E4();
    sub_240DADF54();
    for (m = v324; ; m = v312)
    {
      v312 = m;
      sub_240DAE0E4();
      v313 = v468[2];
      v314 = v469;
      if (!v469)
      {
        break;
      }

      v310 = v313;
      v311 = v314;
      v309 = v314;
      v306 = v313;
      v432 = v313;
      v433 = v314;
      v305 = sub_240DAE1D4();
      v307 = v79;
      v304 = 1;
      v80 = sub_240DADD64();
      v81 = v307;
      *v307 = v80;
      v81[1] = v82;
      v83 = sub_240DAD874();
      v84 = v307;
      v308 = MEMORY[0x277D837D0];
      v307[5] = MEMORY[0x277D837D0];
      v84[2] = v83;
      v84[3] = v85;
      v86 = sub_240DADD64();
      v87 = v307;
      v307[6] = v86;
      v87[7] = v88;

      v89 = v306;
      v90 = v307;
      v91 = v309;
      v307[11] = v308;
      v90[8] = v89;
      v90[9] = v91;
      sub_240D7F8DC();
      v431 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v471);
    v467 = sub_240DAD8F4();
    sub_240DADF54();
    for (n = v312; ; n = v300)
    {
      v300 = n;
      sub_240DAE0E4();
      v301 = v465[2];
      v302 = v466;
      if (!v466)
      {
        break;
      }

      v298 = v301;
      v299 = v302;
      v297 = v302;
      v294 = v301;
      v435 = v301;
      v436 = v302;
      v293 = sub_240DAE1D4();
      v295 = v92;
      v292 = 1;
      v93 = sub_240DADD64();
      v94 = v295;
      *v295 = v93;
      v94[1] = v95;
      v96 = sub_240DAD874();
      v97 = v295;
      v296 = MEMORY[0x277D837D0];
      v295[5] = MEMORY[0x277D837D0];
      v97[2] = v96;
      v97[3] = v98;
      v99 = sub_240DADD64();
      v100 = v295;
      v295[6] = v99;
      v100[7] = v101;

      v102 = v294;
      v103 = v295;
      v104 = v297;
      v295[11] = v296;
      v103[8] = v102;
      v103[9] = v104;
      sub_240D7F8DC();
      v434 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v468);
    v464 = sub_240DAD904();
    sub_240DADF54();
    for (ii = v300; ; ii = v288)
    {
      v288 = ii;
      sub_240DAE0E4();
      v289 = v462[2];
      v290 = v463;
      if (!v463)
      {
        break;
      }

      v286 = v289;
      v287 = v290;
      v285 = v290;
      v282 = v289;
      v438 = v289;
      v439 = v290;
      v281 = sub_240DAE1D4();
      v283 = v105;
      v280 = 1;
      v106 = sub_240DADD64();
      v107 = v283;
      *v283 = v106;
      v107[1] = v108;
      v109 = sub_240DAD874();
      v110 = v283;
      v284 = MEMORY[0x277D837D0];
      v283[5] = MEMORY[0x277D837D0];
      v110[2] = v109;
      v110[3] = v111;
      v112 = sub_240DADD64();
      v113 = v283;
      v283[6] = v112;
      v113[7] = v114;

      v115 = v282;
      v116 = v283;
      v117 = v285;
      v283[11] = v284;
      v116[8] = v115;
      v116[9] = v117;
      sub_240D7F8DC();
      v437 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v465);
    v461 = sub_240DAD8A4();
    sub_240DADF54();
    for (jj = v288; ; jj = v276)
    {
      v276 = jj;
      sub_240DAE0E4();
      v277 = v459[2];
      v278 = v460;
      if (!v460)
      {
        break;
      }

      v274 = v277;
      v275 = v278;
      v273 = v278;
      v270 = v277;
      v441 = v277;
      v442 = v278;
      v269 = sub_240DAE1D4();
      v271 = v118;
      v268 = 1;
      v119 = sub_240DADD64();
      v120 = v271;
      *v271 = v119;
      v120[1] = v121;
      v122 = sub_240DAD874();
      v123 = v271;
      v272 = MEMORY[0x277D837D0];
      v271[5] = MEMORY[0x277D837D0];
      v123[2] = v122;
      v123[3] = v124;
      v125 = sub_240DADD64();
      v126 = v271;
      v271[6] = v125;
      v126[7] = v127;

      v128 = v270;
      v129 = v271;
      v130 = v273;
      v271[11] = v272;
      v129[8] = v128;
      v129[9] = v130;
      sub_240D7F8DC();
      v440 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v462);
    v458 = sub_240DAD8C4();
    sub_240DADF54();
    for (kk = v276; ; kk = v264)
    {
      v264 = kk;
      sub_240DAE0E4();
      v265 = v456[5];
      v266 = v457;
      if (!v457)
      {
        break;
      }

      v262 = v265;
      v263 = v266;
      v261 = v266;
      v258 = v265;
      v444 = v265;
      v445 = v266;
      v257 = sub_240DAE1D4();
      v259 = v131;
      v256 = 17;
      v255 = 1;
      v132 = sub_240DADD64();
      v133 = v259;
      *v259 = v132;
      v133[1] = v134;
      v135 = sub_240DAD874();
      v136 = v259;
      v260 = MEMORY[0x277D837D0];
      v259[5] = MEMORY[0x277D837D0];
      v136[2] = v135;
      v136[3] = v137;
      v138 = sub_240DADD64();
      v139 = v259;
      v259[6] = v138;
      v139[7] = v140;

      v141 = v258;
      v142 = v259;
      v143 = v261;
      v259[11] = v260;
      v142[8] = v141;
      v142[9] = v143;
      sub_240D7F8DC();
      v443 = sub_240DADCA4();
      sub_240DADE94();
    }

    sub_240D8E304(v459);
    v252 = sub_240DAD934();
    v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AE8, &qword_240DB2A80);
    sub_240D904B0();
    v253 = &v508;
    sub_240DADF14();
    memcpy(v456, v253, 0x28uLL);
    for (mm = v264; ; mm = v247)
    {
      v247 = mm;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AF0, &qword_240DB2A88);
      sub_240DADF24();
      v248 = v453;
      v249 = v454;
      v250 = v455;
      if (v455 == 255)
      {
        break;
      }

      v244 = v248;
      v245 = v249;
      v246 = v250;
      v243 = v250;
      v242 = v249;
      v241 = v248;
      v450 = v248;
      v451 = v249;
      v236 = 1;
      v452 = v250 & 1;
      v239 = sub_240DAE1D4();
      v238 = v144;
      v145 = sub_240DADD64();
      v146 = v238;
      *v238 = v145;
      v146[1] = v147;
      v148 = sub_240DAD874();
      v150 = v149;
      v151 = v238;
      v240 = MEMORY[0x277D837D0];
      v238[5] = MEMORY[0x277D837D0];
      v151[2] = v148;
      v151[3] = v150;
      v237 = v151 + 8;
      v152 = sub_240DADD64();
      v153 = v236;
      v154 = v240;
      v155 = v241;
      v156 = v242;
      v157 = v243;
      v159 = v158;
      v160 = v238;
      v238[6] = v152;
      v160[7] = v159;
      v447 = v155;
      v448 = v156;
      v449 = v157 & 1 & v153;
      v160[11] = v154;
      sub_240DAD6E4();
      sub_240D7F8DC();
      v446 = sub_240DADCA4();
      sub_240DADE94();
      sub_240D90638(v241, v242, v243 & 1);
    }

    sub_240D905CC(v456);

    sub_240D8E1D4(v401);
    (*(v403 + 8))(v406, v402);
    sub_240D9060C(&v490);
    (*(v407 + 8))(v410, v415);
  }

  v161 = v381;
  sub_240D87D18(v492);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AA8, &unk_240DB2A40);
  v227 = sub_240DAE1D4();
  v224 = v162;
  v212 = v162 + 2;
  v223 = 1;
  v163 = sub_240DADD64();
  v164 = v224;
  v166 = v165;
  v167 = v212;
  *v224 = v163;
  v164[1] = v166;
  sub_240D8C738(&v501, v167);
  v213 = v224 + 5;
  v215 = 23;
  v168 = sub_240DADD64();
  v169 = v224;
  v171 = v170;
  v172 = v213;
  v224[3] = v168;
  v169[4] = v171;
  sub_240D8C738(&v500, v172);
  v214 = v224 + 8;
  v173 = sub_240DADD64();
  v174 = v224;
  v176 = v175;
  v177 = v214;
  v224[6] = v173;
  v174[7] = v176;
  sub_240D8C738(&v499, v177);
  v216 = v224 + 11;
  v178 = sub_240DADD64();
  v179 = v224;
  v181 = v180;
  v182 = v216;
  v224[9] = v178;
  v179[10] = v181;
  sub_240D8C738(&v498, v182);
  v217 = v224 + 14;
  v218 = 24;
  v183 = sub_240DADD64();
  v184 = v224;
  v186 = v185;
  v187 = v217;
  v224[12] = v183;
  v184[13] = v186;
  sub_240D8C738(&v497, v187);
  v219 = v224 + 17;
  v188 = sub_240DADD64();
  v189 = v224;
  v191 = v190;
  v192 = v219;
  v224[15] = v188;
  v189[16] = v191;
  sub_240D8C738(&v496, v192);
  v220 = v224 + 20;
  v222 = 19;
  v193 = sub_240DADD64();
  v194 = v224;
  v196 = v195;
  v197 = v220;
  v224[18] = v193;
  v194[19] = v196;
  sub_240D8C738(&v495, v197);
  v221 = v224 + 23;
  v198 = sub_240DADD64();
  v199 = v224;
  v201 = v200;
  v202 = v221;
  v224[21] = v198;
  v199[22] = v201;
  sub_240D8C738(&v494, v202);
  v225 = v224 + 26;
  v203 = sub_240DADD64();
  v204 = v224;
  v206 = v205;
  v207 = v225;
  v224[24] = v203;
  v204[25] = v206;
  sub_240D8C738(&v493, v207);
  sub_240D7F8DC();
  v228 = v208;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AB0, &qword_240DB2FC0);
  v231 = MEMORY[0x277D837D0];
  v232 = MEMORY[0x277D837E0];
  v229 = sub_240DADCA4();
  v491 = v229;

  v209 = sub_240DAE144();
  v210 = v380;
  v233 = v209;
  (*((*v161 & *MEMORY[0x277D85000]) + 0xD8))();
  v234 = v210;
  v235 = v210;
  if (v210)
  {
    v211 = v235;
  }

  sub_240D8C770(&v493);
  sub_240D8C770(&v494);
  sub_240D8C770(&v495);
  sub_240D8C770(&v496);
  sub_240D8C770(&v497);
  sub_240D8C770(&v498);
  sub_240D8C770(&v499);
  sub_240D8C770(&v500);
  sub_240D8C770(&v501);
}

uint64_t sub_240D9047C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_240D904B0()
{
  v2 = qword_2810BCFA0;
  if (!qword_2810BCFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519AE8, &qword_240DB2A80);
    sub_240D90554();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCFA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D90554()
{
  v2 = qword_2810BCF90;
  if (!qword_2810BCF90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCF90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D90638(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_240D9066C(uint64_t a1)
{
  v114 = a1;
  v2 = v1;
  v3 = v114;
  v89 = v2;
  v79 = "Fatal error";
  v80 = "Unexpectedly found nil while unwrapping an Optional value";
  v81 = "Swift/FloatingPointTypes.swift";
  v162 = 0;
  v161 = 0;
  v109 = &v160;
  v160 = 0;
  v91 = 0;
  v82 = sub_240DAE194();
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](0);
  v86 = &v40 - v85;
  v87 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v88 = &v40 - v87;
  v122 = sub_240DAD5F4();
  v118 = *(v122 - 8);
  v119 = v122 - 8;
  v90 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122);
  v120 = &v40 - v90;
  v162 = v3;
  v161 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v97 = MEMORY[0x277D837D0];
  v160 = sub_240DADCA4();
  v108 = 20;
  v115 = 1;
  v94 = sub_240DADD64();
  v93 = v7;
  v92 = sub_240DAD8D4();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A50, &unk_240DB2FD0);
  v96 = v159;
  v159[3] = v110;
  v159[0] = v92;
  v95 = v158;
  v158[0] = v94;
  v158[1] = v93;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
  sub_240DADCD4();
  v101 = sub_240DADD64();
  v102 = v8;
  v98 = sub_240DAD894();
  v99 = v9;
  v100 = v10;
  v153 = v98;
  v154 = v9;
  v155 = v10 & 1;
  v103 = &v156;
  v157 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AD0, &qword_240DB2A68);
  sub_240DAD6E4();
  sub_240D8E078(v98, v99, v100 & 1);
  v151 = v101;
  v152 = v102;
  sub_240DADCD4();
  v104 = sub_240DADD64();
  v105 = v11;
  v12 = sub_240DAD914();
  v150 = v110;
  v149 = v12;
  v147 = v104;
  v148 = v105;
  sub_240DADCD4();
  v106 = sub_240DADD64();
  v107 = v13;
  v14 = sub_240DAD944();
  v146 = MEMORY[0x277D83E88];
  v145 = v14;
  v143 = v106;
  v144 = v107;
  sub_240DADCD4();
  v111 = sub_240DADD64();
  v112 = v15;
  v16 = sub_240DAD8E4();
  v142 = v110;
  v141 = v16;
  v139 = v111;
  v140 = v112;
  sub_240DADCD4();
  v116 = sub_240DADD64();
  v117 = v17;
  sub_240DAD884();
  v121 = sub_240DAD5E4();
  v123 = v18;
  (*(v118 + 8))(v120, v122);
  if (v123)
  {
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
  }

  else
  {
    v78 = v121;
    v138 = MEMORY[0x277D83B88];
    v135 = v121;
  }

  v134[4] = v116;
  v134[5] = v117;
  sub_240DADCD4();
  v73 = sub_240DADD64();
  v74 = v19;
  sub_240DAD954();
  v75 = v20;
  v134[3] = MEMORY[0x277D839F8];
  v76 = MEMORY[0x277D84678];
  (*(v83 + 104))(v88, *MEMORY[0x277D84678], v82);
  v133 = v75;
  (*(v83 + 16))(v86, v88, v82);
  v77 = (*(v83 + 88))(v86, v82);
  if (v77 == *v76)
  {
    v133 = round(v75);
    goto LABEL_17;
  }

  if (v77 == *MEMORY[0x277D84670])
  {
    v133 = rint(v75);
    goto LABEL_17;
  }

  if (v77 == *MEMORY[0x277D84680])
  {
    goto LABEL_15;
  }

  if (v77 != *MEMORY[0x277D84688])
  {
    if (v77 == *MEMORY[0x277D84660])
    {
      v133 = trunc(v75);
      goto LABEL_17;
    }

    if (v77 != *MEMORY[0x277D84668])
    {
      sub_240DADF04();
      (*(v83 + 8))(v86, v82);
      goto LABEL_17;
    }

    v72 = *&v75 >> 63;
    if (v75 < 0.0)
    {
      if (v72 != 1)
      {
        sub_240DAE124();
        __break(1u);
LABEL_22:
        v50 = 1;
        goto LABEL_24;
      }

      goto LABEL_16;
    }

LABEL_15:
    v133 = ceil(v75);
    goto LABEL_17;
  }

LABEL_16:
  v133 = floor(v75);
LABEL_17:
  v51 = v134;
  *v134 = v133;
  (*(v83 + 8))(v88, v82);
  v132[10] = v73;
  v132[11] = v74;
  v69 = &v160;
  sub_240DADCD4();
  v68 = 1;
  v52 = sub_240DADD64();
  v53 = v21;
  v22 = sub_240DAD874();
  v60 = MEMORY[0x277D837D0];
  v132[9] = MEMORY[0x277D837D0];
  v132[6] = v22;
  v132[7] = v23;
  v132[4] = v52;
  v132[5] = v53;
  sub_240DADCD4();
  v57 = sub_240DADD64();
  v58 = v24;
  v54 = sub_240DAD964();
  v55 = v25;
  v56 = v26;
  v130[28] = v54;
  v130[29] = v25;
  v131 = v26 & 1;
  v59 = v132;
  v132[3] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AE0, &qword_240DB2A78);
  sub_240DAD6E4();
  sub_240D9047C(v54, v55, v56 & 1);
  v130[26] = v57;
  v130[27] = v58;
  sub_240DADCD4();
  v61 = sub_240DADD64();
  v62 = v27;
  v28 = sub_240DAD8B4();
  v130[25] = v60;
  v130[22] = v28;
  v130[23] = v29;
  v130[20] = v61;
  v130[21] = v62;
  sub_240DADCD4();
  v65 = 21;
  v63 = sub_240DADD64();
  v64 = v30;
  v31 = sub_240DAD8F4();
  v130[19] = v110;
  v130[16] = v31;
  v130[14] = v63;
  v130[15] = v64;
  sub_240DADCD4();
  v66 = sub_240DADD64();
  v67 = v32;
  v33 = sub_240DAD904();
  v130[13] = v110;
  v130[10] = v33;
  v130[8] = v66;
  v130[9] = v67;
  sub_240DADCD4();
  v70 = sub_240DADD64();
  v71 = v34;
  v35 = sub_240DAD8A4();
  v130[7] = v110;
  v130[4] = v35;
  v130[2] = v70;
  v130[3] = v71;
  sub_240DADCD4();
  v130[0] = sub_240DAD924();
  v130[1] = v36;
  if (v36)
  {
    goto LABEL_22;
  }

  v50 = 0;
LABEL_24:
  v49 = v50;
  sub_240D91284(v130);
  if (v49)
  {
    v45 = sub_240DADD64();
    v46 = v37;
    v47 = sub_240DAD924();
    v48 = v38;
    if (v38)
    {
      v43 = v47;
      v44 = v48;
      v129 = MEMORY[0x277D837D0];
      v126 = v47;
      v127 = v48;
    }

    else
    {
      v126 = 0;
      v127 = 0;
      v128 = 0;
      v129 = 0;
    }

    v124 = v45;
    v125 = v46;
    sub_240DADCD4();
  }

  v41 = &v160;
  v42 = v160;

  sub_240D9060C(v41);
  return v42;
}

uint64_t *sub_240D912B0(uint64_t a1)
{
  v105 = *MEMORY[0x277D85DE8];
  memset(__b, 0, sizeof(__b));
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v63 = 0;
  v59 = 0;
  v56 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v69 = a1;
  v68 = v1;

  sub_240DADC94();
  memcpy(__b, v104, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AF8, &qword_240DB2A90);
    sub_240DADCB4();
    memcpy(v102, v101, sizeof(v102));
    if (!v102[1])
    {
      result = __b;
      sub_240D922EC(__b);
      return result;
    }

    v36 = v102[0];
    v41 = v102[1];
    v66 = v102[0];
    v67 = v102[1];
    sub_240D8634C(&v102[2], v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    sub_240DAE1D4();
    v37 = v2;
    *v2 = sub_240DADD64();
    v37[1] = v3;

    v37[5] = MEMORY[0x277D837D0];
    v37[2] = v36;
    v37[3] = v41;
    v37[6] = sub_240DADD64();
    v37[7] = v4;
    sub_240D7FB3C(v100, (v37 + 8));
    sub_240D7F8DC();
    v65 = sub_240DADCA4();
    v99 = 0;
    v38 = objc_opt_self();

    sub_240DAE144();
    v40 = sub_240DADC74();

    v64 = v99;
    v42 = [v38 saveEvents:v40 error:&v64];
    v39 = v64;
    MEMORY[0x277D82BE0](v64);
    v5 = v99;
    v99 = v39;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v40);
    if (!v42)
    {
      v28 = v99;
      sub_240DAD614();
      MEMORY[0x277D82BD8](v28);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(v100);

      result = __b;
      sub_240D922EC(__b);
      return result;
    }

    v35 = sub_240DADC84();
    v63 = v35;
    MEMORY[0x277D82BD8](v42);

    (*((*v43 & *MEMORY[0x277D85000]) + 0x60))(v6);
    v62[0] = v36;
    v62[1] = v41;
    sub_240DADCC4();
    sub_240D7F920(v62);
    v34 = v98[3] == 0;
    sub_240D86770(v98);

    if (v34)
    {

      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
      v71 = v35;
      v33 = (*((*v43 & *MEMORY[0x277D85000]) + 0x70))(v70, v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
      sub_240DADCD4();
      v33(v70, 0, v9);
      goto LABEL_29;
    }

    (*((*v43 & *MEMORY[0x277D85000]) + 0x60))(v10);
    v61[0] = v36;
    v61[1] = v41;
    sub_240DADCC4();
    sub_240D7F920(v61);
    if (!v96)
    {
      sub_240DAE124();
      __break(1u);
    }

    sub_240D8634C(v95, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
    swift_dynamicCast();
    v59 = v60;

    v58[0] = sub_240DADD64();
    v58[1] = v11;
    sub_240DADCC4();
    sub_240D7F920(v58);
    if (!v93)
    {
      sub_240DAE124();
      __break(1u);
    }

    sub_240D8634C(v92, v94);
    swift_dynamicCast();
    v56 = v57;
    v55[0] = sub_240DADD64();
    v55[1] = v12;
    sub_240DAE174();
    sub_240DADCC4();
    if (!v89)
    {
      sub_240DAE124();
      __break(1u);
    }

    sub_240D8634C(v88, v91);
    swift_dynamicCast();
    v53 = v54;
    sub_240D92370(v90);
    sub_240D7F920(v55);
    v51[0] = sub_240DADD64();
    v51[1] = v13;
    sub_240DADCC4();
    sub_240D7F920(v51);
    if (!v86)
    {
      sub_240DAE124();
      __break(1u);
    }

    sub_240D8634C(v85, v87);
    swift_dynamicCast();
    v49[0] = sub_240DADD64();
    v49[1] = v14;
    sub_240DADCC4();
    sub_240D7F920(v49);
    if (!v83)
    {
      sub_240DAE124();
      __break(1u);
    }

    sub_240D8634C(v82, v84);
    swift_dynamicCast();
    v48[0] = sub_240DADD64();
    v48[1] = v15;
    sub_240DADCC4();
    sub_240D7F920(v48);
    if (!v80)
    {
      sub_240DAE124();
      __break(1u);
    }

    sub_240D8634C(v79, v81);
    result = swift_dynamicCast();
    if (__OFADD__(v52, v47))
    {
      break;
    }

    v52 += v47;
    v46[0] = sub_240DADD64();
    v46[1] = v18;
    sub_240DADCC4();
    sub_240D7F920(v46);
    if (!v77)
    {
      sub_240DAE124();
      __break(1u);
    }

    sub_240D8634C(v76, v78);
    result = swift_dynamicCast();
    if (__OFADD__(v50, v45))
    {
      goto LABEL_33;
    }

    v50 += v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B00, &qword_240DB2A98);
    sub_240DAE1D4();
    v30 = v20;
    *v20 = sub_240DADD64();
    v30[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B08, &qword_240DB2AA0);
    sub_240DAE1D4();
    v29 = v22;
    *v22 = sub_240DADD64();
    v29[1] = v23;
    v29[2] = v52;
    v29[3] = sub_240DADD64();
    v29[4] = v24;
    v29[5] = v50;
    sub_240D7F8DC();
    v30[2] = sub_240DADCA4();
    sub_240D7F8DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B10, &qword_240DB2AA8);
    v31 = sub_240DADCA4();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B18, &qword_240DB2AB0);
    v74 = v31;
    v32 = (*((*v43 & *MEMORY[0x277D85000]) + 0x70))(v73, v25, v26);
    sub_240DADCD4();
    v32(v73, 0, v27);

LABEL_29:

    __swift_destroy_boxed_opaque_existential_0(v100);
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

char *FitCoreDQueryClass.init()()
{
  v27 = 0;
  v21 = OBJC_IVAR____TtC19AppleMediaDiscovery18FitCoreDQueryClass_tableUpdateSummary;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  *v21 = sub_240DADCA4();
  v24 = v27;
  v23 = OBJC_IVAR____TtC19AppleMediaDiscovery18FitCoreDQueryClass_allFitnessTables;
  sub_240DAE1D4();
  v22 = v0;
  *v0 = sub_240DADD64();
  v22[1] = v1;
  v22[2] = sub_240DADD64();
  v22[3] = v2;
  v22[4] = sub_240DADD64();
  v22[5] = v3;
  v22[6] = sub_240DADD64();
  v22[7] = v4;
  v22[8] = sub_240DADD64();
  v22[9] = v5;
  v22[10] = sub_240DADD64();
  v22[11] = v6;
  v22[12] = sub_240DADD64();
  v22[13] = v7;
  v22[14] = sub_240DADD64();
  v22[15] = v8;
  v22[16] = sub_240DADD64();
  v22[17] = v9;
  v22[18] = sub_240DADD64();
  v22[19] = v10;
  v22[20] = sub_240DADD64();
  v22[21] = v11;
  v22[22] = sub_240DADD64();
  v22[23] = v12;
  v22[24] = sub_240DADD64();
  v22[25] = v13;
  v22[26] = sub_240DADD64();
  v22[27] = v14;
  v22[28] = sub_240DADD64();
  v22[29] = v15;
  v22[30] = sub_240DADD64();
  v22[31] = v16;
  v22[32] = sub_240DADD64();
  v22[33] = v17;
  v22[34] = sub_240DADD64();
  v22[35] = v18;
  sub_240D7F8DC();
  *&v24[v23] = v19;
  v26.receiver = v27;
  v26.super_class = type metadata accessor for FitCoreDQueryClass();
  v25 = objc_msgSendSuper2(&v26, sel_init);
  MEMORY[0x277D82BE0](v25);
  v27 = v25;
  MEMORY[0x277D82BD8](v25);
  return v25;
}

id FitCoreDQueryClass.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitCoreDQueryClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of FitCoreDQueryClass.filterFitcoreDCatalog(catalogFilterConfig:)(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *((*v1 & *MEMORY[0x277D85000]) + 0x90);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_240D92C44;

  return v7(a1);
}

uint64_t sub_240D92C44(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t dispatch thunk of FitCoreDQueryClass.queryWorkoutReferences(workoutQueryConfig:)(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *((*v1 & *MEMORY[0x277D85000]) + 0x98);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_240D92EC0;

  return v7(a1);
}

uint64_t sub_240D92EC0(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t dispatch thunk of FitCoreDQueryClass.filterFitcoreDCatalogDebug(catalogFilterConfig:)(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *((*v1 & *MEMORY[0x277D85000]) + 0xA0);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_240D9313C;

  return v7(a1);
}

uint64_t sub_240D9313C(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t dispatch thunk of FitCoreDQueryClass.fetchCatalogMetadata()()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *((*v0 & *MEMORY[0x277D85000]) + 0xA8);
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_240D933B0;

  return v6();
}

uint64_t sub_240D933B0(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t dispatch thunk of FitCoreDQueryClass.runBootstrapCatalogSync(bootstrapCatalogSyncConfig:)(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *((*v1 & *MEMORY[0x277D85000]) + 0xB0);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_240D9362C;

  return v7(a1);
}

uint64_t sub_240D9362C(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_240D9375C(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_240DAD7A4();
      v1 = sub_240DADE74();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    sub_240DAD7A4();
    return v2;
  }

  return result;
}

uint64_t sub_240D93854(uint64_t a1)
{
  v37 = a1;
  v1 = sub_240DAD7A4();
  v38 = *(v1 - 8);
  v39 = v1 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v37);
  v41 = &v17 - v40;
  v42 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v43 = &v17 - v42;
  v44 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v17 - v44;
  if (sub_240D93CDC(v6))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B30, &unk_240DB2B20);
    v36 = sub_240DAE094();
  }

  else
  {
    v35 = MEMORY[0x277D84FA0];

    v36 = v35;
  }

  v33 = v36;
  v34 = sub_240D9384C(v37);
  if (v34)
  {
    for (i = 0; ; i = v31)
    {
      v30 = i;
      v29 = sub_240D93CF4();
      sub_240D93D00(v30, v29 & 1, v37);
      result = sub_240D93D50(v30, v29 & 1, v37, v45);
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      sub_240D93E5C(v45, v43);
      v24 = &v48;
      sub_240DAE254();
      v25 = __dst;
      memcpy(__dst, v24, sizeof(__dst));
      sub_240DAD794();
      v9 = sub_240DAE274();
      v26 = v33 + 56;
      v27 = (1 << (*(v33 + 32) & 0x3F)) - 1;
      for (j = v9 & v27; ; j = (v20 + 1) & v27)
      {
        v20 = j;
        v10 = *(v26 + 8 * (j / 0x40)) & (1 << ((j % 0x40) & 0x3F));
        v21 = j;
        v22 = j / 0x40;
        v23 = 1 << ((j % 0x40) & 0x3F);
        if (!v10)
        {
          break;
        }

        sub_240D93F24((*(v33 + 48) + v20 * *(v38 + 72)), v41);
        v19 = MEMORY[0x245CCFAF0](v41, v43);
        sub_240D9432C(v41);
        if (v19)
        {
          sub_240D9432C(v43);
          goto LABEL_20;
        }
      }

      v11 = v33;
      v12 = v43;
      v13 = v38;
      v14 = v21;
      *(v33 + 56 + 8 * v22) |= v23;
      result = sub_240D93E5C(v12, (*(v11 + 48) + v14 * *(v13 + 72)));
      v15 = *(v33 + 16);
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_24;
      }

      *(v33 + 16) = v18;
LABEL_20:
      if (v31 == v34)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    return v33;
  }

  return result;
}

uint64_t sub_240D93D00(uint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (result < *(a3 + 16))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_240D93D50@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v5 = sub_240DAD7A4();
    return sub_240D93F24((a3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + a1 * *(*(v5 - 8) + 72)), a4);
  }

  else
  {
    v6 = sub_240D944B0(a1, a3);
    result = sub_240DAD7A4();
    if (*(*(result - 8) + 64) == 8)
    {
      v10 = v6;
      sub_240D93F24(&v10, a4);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_240D93E5C(const void *a1, void *a2)
{
  v6 = sub_240DAD7A4();
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v2 = sub_240DAD724();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t sub_240D93F24(uint64_t *a1, uint64_t a2)
{
  sub_240DAD7A4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *a2 = *a1;
      v16 = a1[1];

      *(a2 + 8) = v16;
      swift_storeEnumTagMultiPayload();
      break;
    case 2u:
      *a2 = *a1;
      v15 = a1[1];

      *(a2 + 8) = v15;
      swift_storeEnumTagMultiPayload();
      break;
    case 3u:
      *a2 = *a1;
      v14 = a1[1];

      *(a2 + 8) = v14;
      swift_storeEnumTagMultiPayload();
      break;
    case 4u:
      *a2 = *a1;
      v13 = a1[1];

      *(a2 + 8) = v13;
      swift_storeEnumTagMultiPayload();
      break;
    case 5u:
      *a2 = *a1;
      v12 = a1[1];

      *(a2 + 8) = v12;
      swift_storeEnumTagMultiPayload();
      break;
    case 6u:
      v2 = sub_240DAD724();
      (*(*(v2 - 8) + 16))(a2, a1);
      swift_storeEnumTagMultiPayload();
      break;
    case 7u:
      *a2 = *a1;
      v11 = a1[1];

      *(a2 + 8) = v11;
      swift_storeEnumTagMultiPayload();
      break;
    case 8u:
      *a2 = *a1;
      v10 = a1[1];

      *(a2 + 8) = v10;
      swift_storeEnumTagMultiPayload();
      break;
    case 9u:
      *a2 = *a1;
      v9 = a1[1];

      *(a2 + 8) = v9;
      swift_storeEnumTagMultiPayload();
      break;
    case 0xAu:
      *a2 = *a1;
      v8 = a1[1];

      *(a2 + 8) = v8;
      swift_storeEnumTagMultiPayload();
      break;
    case 0xBu:
      v5 = *a1;
      v6 = a1[1];
      v7 = *(a1 + 16);
      sub_240D942F8(*a1, v6, v7 & 1);
      *a2 = v5;
      *(a2 + 8) = v6;
      *(a2 + 16) = v7 & 1;
      swift_storeEnumTagMultiPayload();
      break;
    case 0xCu:
      *a2 = *a1;
      v4 = a1[1];

      *(a2 + 8) = v4;
      swift_storeEnumTagMultiPayload();
      break;
    default:
      v17 = *a1;
      v18 = a1[1];
      v19 = *(a1 + 16);
      sub_240D942C4(*a1, v18, v19 & 1);
      *a2 = v17;
      *(a2 + 8) = v18;
      *(a2 + 16) = v19 & 1;
      swift_storeEnumTagMultiPayload();
      break;
  }

  return a2;
}

uint64_t sub_240D942C4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_240D942F8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_240D9432C(uint64_t a1)
{
  sub_240DAD7A4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_240D8E078(*a1, *(a1 + 8), *(a1 + 16) & 1);
      break;
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:

      break;
    case 6u:
      v1 = sub_240DAD724();
      (*(*(v1 - 8) + 8))(a1);
      break;
    case 0xBu:
      sub_240D90638(*a1, *(a1 + 8), *(a1 + 16) & 1);
      break;
    default:
      return a1;
  }

  return a1;
}

uint64_t sub_240D944B0(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v23 = a2;
  v24 = "Fatal error";
  v26 = sub_240DAD7A4();
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20](v25);
  v28 = v13 - v27;
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v25 >= *(v23 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v22 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * v25);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31 = v22;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v3 = sub_240D946F0(82);
    v15 = &v29;
    v29 = v3;
    v30 = v4;
    v14 = 1;
    v5 = sub_240DADD64();
    v13[0] = v6;
    MEMORY[0x245CD00F0](v5);

    v7 = sub_240DADD64();
    v13[1] = v8;
    MEMORY[0x245CD00F0](v7);

    v21 = 11;
    v9 = sub_240DADD64();
    v16 = v10;
    MEMORY[0x245CD00F0](v9);

    swift_getObjectType();
    v20 = 0;
    v11 = sub_240DAE334();
    v17 = v12;
    MEMORY[0x245CD00F0](v11);

    v18 = v29;
    v19 = v30;

    sub_240DADD54();
    sub_240DAE134();
    __break(1u);
  }

  sub_240D9432C(v28);
  return v22;
}

uint64_t sub_240D946F0(uint64_t a1)
{

  if (a1 > 15)
  {
    sub_240DAE0B4();
  }

  return 0;
}

uint64_t sub_240D94768()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D94890()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D949B8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_240D94AE4()
{
  v2 = qword_2810BCF58;
  if (!qword_2810BCF58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2810BCF58);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t sub_240D94BC8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19AppleMediaDiscovery20AMDPodiumIntegration_logger;
  v2 = sub_240DADC54();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

BOOL static AMDPodiumIntegration.InferenceError.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    switch(v5)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    switch(v6)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_240D95014()
{
  v2 = qword_27E519B38;
  if (!qword_27E519B38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519B38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D95154(uint64_t a1)
{
  v2[37] = v1;
  v2[36] = a1;
  v2[22] = v2;
  v2[23] = 0;
  v2[24] = 0;
  v2[16] = 0;
  v2[17] = 0;
  v2[31] = 0;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  v2[21] = 0;
  v3 = sub_240DADC54();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  sub_240DADD34();
  v2[44] = swift_task_alloc();
  v4 = sub_240DADC04();
  v2[45] = v4;
  v2[46] = *(v4 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B40, &qword_240DB2B68);
  v2[50] = swift_task_alloc();
  v5 = sub_240DADBF4();
  v2[51] = v5;
  v2[52] = *(v5 - 8);
  v2[53] = swift_task_alloc();
  v2[23] = a1;
  v2[24] = v1;

  return MEMORY[0x2822009F8](sub_240D9547C, 0);
}

uint64_t sub_240D9547C()
{
  v73 = v0;
  v72[3] = *MEMORY[0x277D85DE8];
  v0[22] = v0;
  v0[14] = sub_240DADD64();
  v0[15] = v1;
  sub_240DADCC4();
  sub_240D7F920((v0 + 14));
  if (v0[9])
  {
    sub_240D8634C(v66 + 48, v66 + 16);
    v70 = 0;
    v62 = objc_opt_self();
    sub_240D7FB3C(v66 + 16, v66 + 80);
    v60 = *(v66 + 104);
    v58 = __swift_project_boxed_opaque_existential_0((v66 + 80), v60);
    v59 = *(v60 - 8);
    v61 = swift_task_alloc();
    (*(v59 + 16))(v61, v58, v60);
    v64 = sub_240DAE1E4();
    (*(v59 + 8))(v61, v60);

    __swift_destroy_boxed_opaque_existential_0((v66 + 80));
    type metadata accessor for WritingOptions(0);
    sub_240DAE1D4();
    sub_240D988EC();
    sub_240DAE004();
    v2 = *(v66 + 232);
    *(v66 + 240) = 0;
    v65 = [v62 dataWithJSONObject:v64 options:v2 error:v66 + 240];
    v63 = *(v66 + 240);
    MEMORY[0x277D82BE0](v63);
    v3 = v70;
    v70 = v63;
    MEMORY[0x277D82BD8](v3);
    swift_unknownObjectRelease();
    if (v65)
    {
      v54 = sub_240DAD684();
      v55 = v4;
      MEMORY[0x277D82BD8](v65);
      v56 = v54;
      v57 = v55;
    }

    else
    {
      v15 = sub_240DAD614();
      MEMORY[0x277D82BD8](v70);
      swift_willThrow();

      v56 = 0;
      v57 = 0xF000000000000000;
    }

    *(v66 + 440) = v57;
    *(v66 + 432) = v56;
    if ((v57 & 0xF000000000000000) == 0xF000000000000000)
    {
      sub_240D97AB4();
      swift_allocError();
      *v11 = 2;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0((v66 + 16));
    }

    else
    {
      *(v66 + 128) = v56;
      *(v66 + 136) = v57;
      sub_240DAD5A4();
      sub_240DAD594();
      sub_240D9896C();
      sub_240DAD584();
      v53 = *(v66 + 408);
      v52 = *(v66 + 400);
      v51 = *(v66 + 416);

      (*(v51 + 56))(v52, 0, 1, v53);
      if ((*(*(v66 + 416) + 48))(*(v66 + 400), 1, *(v66 + 408)) != 1)
      {
        (*(*(v66 + 416) + 32))(*(v66 + 424), *(v66 + 400), *(v66 + 408));
        sub_240DADBE4();
        *(v66 + 448) = sub_240DADBD4();
        v49 = (MEMORY[0x277D4D3E0] + *MEMORY[0x277D4D3E0]);
        v50 = swift_task_alloc();
        *(v66 + 456) = v50;
        *v50 = *(v66 + 176);
        v50[1] = sub_240D965F8;
        v5 = *(v66 + 424);
        v6 = *(v66 + 384);

        return v49(v6, v5);
      }

      v8 = *(v66 + 336);
      v39 = *(v66 + 304);
      v37 = *(v66 + 296);
      v38 = *(v66 + 312);
      sub_240D989EC(*(v66 + 400));
      (*(v38 + 16))(v8, v37 + OBJC_IVAR____TtC19AppleMediaDiscovery20AMDPodiumIntegration_logger, v39);
      sub_240D98A94(v56, v57);
      v40 = swift_allocObject();
      *(v40 + 16) = v56;
      *(v40 + 24) = v57;

      v41 = swift_allocObject();
      *(v41 + 16) = sub_240D98B8C;
      *(v41 + 24) = v40;

      oslog = sub_240DADC24();
      v48 = sub_240DADF74();
      v43 = swift_allocObject();
      *(v43 + 16) = 32;
      v44 = swift_allocObject();
      *(v44 + 16) = 8;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_240D98C7C;
      *(v42 + 24) = v41;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_240D9ADE8;
      *(v45 + 24) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
      sub_240DAE1D4();
      v46 = v9;

      *v46 = sub_240D9ADD8;
      v46[1] = v43;

      v46[2] = sub_240D9ADE0;
      v46[3] = v44;

      v46[4] = sub_240D9ADF4;
      v46[5] = v45;
      sub_240D7F8DC();

      if (os_log_type_enabled(oslog, v48))
      {
        buf = sub_240DADFD4();
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
        v35 = sub_240D98680(0, v33, v33);
        v36 = sub_240D98680(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v67 = buf;
        v71 = v35;
        v72[0] = v36;
        sub_240D986D4(2, &v67);
        sub_240D986D4(1, &v67);
        v68 = sub_240D9ADD8;
        v69 = v43;
        sub_240D986E8(&v68, &v67, &v71, v72);
        v68 = sub_240D9ADE0;
        v69 = v44;
        sub_240D986E8(&v68, &v67, &v71, v72);
        v68 = sub_240D9ADF4;
        v69 = v45;
        sub_240D986E8(&v68, &v67, &v71, v72);
        _os_log_impl(&dword_240CB9000, oslog, v48, "Failed to decode inference request: %s", buf, 0xCu);
        sub_240D987EC(v35, 0, v33);
        sub_240D987EC(v36, 1, MEMORY[0x277D84F70] + 8);
        sub_240DADFB4();
      }

      else
      {
      }

      v31 = *(v66 + 336);
      v32 = *(v66 + 304);
      v30 = *(v66 + 312);
      MEMORY[0x277D82BD8](oslog);
      (*(v30 + 8))(v31, v32);
      sub_240D97AB4();
      swift_allocError();
      *v10 = 3;
      swift_willThrow();
      sub_240D98B10(v56, v57);
      __swift_destroy_boxed_opaque_existential_0((v66 + 16));
    }
  }

  else
  {
    v12 = *(v66 + 328);
    v26 = *(v66 + 304);
    v24 = *(v66 + 296);
    v25 = *(v66 + 312);
    sub_240D86770((v66 + 48));
    (*(v25 + 16))(v12, v24 + OBJC_IVAR____TtC19AppleMediaDiscovery20AMDPodiumIntegration_logger, v26);
    log = sub_240DADC24();
    v27 = sub_240DADF74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
    v29 = sub_240DAE1D4();
    if (os_log_type_enabled(log, v27))
    {
      v20 = sub_240DADFD4();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
      v21 = sub_240D98680(0, v19, v19);
      v22 = sub_240D98680(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v66 + 200) = v20;
      *(v66 + 208) = v21;
      *(v66 + 216) = v22;
      sub_240D986D4(0, (v66 + 200));
      sub_240D986D4(0, (v66 + 200));
      *(v66 + 224) = v29;
      v23 = swift_task_alloc();
      v23[2] = v66 + 200;
      v23[3] = v66 + 208;
      v23[4] = v66 + 216;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B60, &qword_240DB2B80);
      sub_240D98764();
      sub_240DADDF4();

      _os_log_impl(&dword_240CB9000, log, v27, "Error accessing request data", v20, 2u);
      sub_240D987EC(v21, 0, v19);
      sub_240D987EC(v22, 0, MEMORY[0x277D84F70] + 8);
      sub_240DADFB4();
    }

    v17 = *(v66 + 328);
    v18 = *(v66 + 304);
    v16 = *(v66 + 312);
    MEMORY[0x277D82BD8](log);
    (*(v16 + 8))(v17, v18);
    sub_240D97AB4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  v14 = *(*(v66 + 176) + 8);

  return v14();
}

uint64_t sub_240D965F8()
{
  v4 = *v1;
  *(v4 + 176) = *v1;
  *(v4 + 464) = v0;

  if (v0)
  {
    v2 = sub_240D97270;
  }

  else
  {

    v2 = sub_240D967D8;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_240D967D8()
{
  v1 = v0[58];
  v54 = v0[49];
  v56 = v0[47];
  v53 = v0[46];
  v55 = v0[45];
  v0[22] = v0;
  (*(v53 + 32))();
  sub_240DAD5D4();
  sub_240DAD5C4();
  (*(v53 + 16))(v56, v54, v55);
  sub_240D9AFC0();
  v57 = sub_240DAD5B4();
  v58 = v2;
  (*(*(v52 + 368) + 8))(*(v52 + 376), *(v52 + 360));

  if (v1)
  {

    v50 = 0;
    v51 = 0xF000000000000000;
  }

  else
  {
    v50 = v57;
    v51 = v58;
  }

  if ((v51 & 0xF000000000000000) == 0xF000000000000000)
  {
    (*(*(v52 + 312) + 16))(*(v52 + 344), *(v52 + 296) + OBJC_IVAR____TtC19AppleMediaDiscovery20AMDPodiumIntegration_logger, *(v52 + 304));
    oslog = sub_240DADC24();
    v28 = sub_240DADF74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
    v30 = sub_240DAE1D4();
    if (os_log_type_enabled(oslog, v28))
    {
      buf = sub_240DADFD4();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
      v25 = sub_240D98680(0, v23, v23);
      v26 = sub_240D98680(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v52 + 256) = buf;
      *(v52 + 264) = v25;
      *(v52 + 272) = v26;
      sub_240D986D4(0, (v52 + 256));
      sub_240D986D4(0, (v52 + 256));
      *(v52 + 280) = v30;
      v27 = swift_task_alloc();
      v27[2] = v52 + 256;
      v27[3] = v52 + 264;
      v27[4] = v52 + 272;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B60, &qword_240DB2B80);
      sub_240D98764();
      sub_240DADDF4();

      _os_log_impl(&dword_240CB9000, oslog, v28, "Failed to encode inference response", buf, 2u);
      sub_240D987EC(v25, 0, v23);
      sub_240D987EC(v26, 0, MEMORY[0x277D84F70] + 8);
      sub_240DADFB4();
    }

    v22 = *(v52 + 440);
    v21 = *(v52 + 432);
    v19 = *(v52 + 424);
    v20 = *(v52 + 408);
    v16 = *(v52 + 392);
    v17 = *(v52 + 360);
    v13 = *(v52 + 344);
    v14 = *(v52 + 304);
    v18 = *(v52 + 416);
    v15 = *(v52 + 368);
    v12 = *(v52 + 312);
    MEMORY[0x277D82BD8](oslog);
    (*(v12 + 8))(v13, v14);
    sub_240D97AB4();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    (*(v15 + 8))(v16, v17);
    (*(v18 + 8))(v19, v20);
    sub_240D98B10(v21, v22);
    __swift_destroy_boxed_opaque_existential_0((v52 + 16));
  }

  else
  {
    *(v52 + 144) = v50;
    *(v52 + 152) = v51;
    sub_240DADD24();
    v3 = sub_240DADD14();
    v48 = v3;
    v49 = v4;
    if (v4)
    {
      v45 = *(v52 + 440);
      v44 = *(v52 + 432);
      v46 = *(v52 + 424);
      v43 = *(v52 + 408);
      v47 = *(v52 + 392);
      v41 = *(v52 + 360);
      v42 = *(v52 + 416);
      v40 = *(v52 + 368);
      *(v52 + 160) = v3;
      *(v52 + 168) = v4;
      sub_240D98B10(v50, v51);
      (*(v40 + 8))(v47, v41);
      (*(v42 + 8))(v46, v43);
      sub_240D98B10(v44, v45);
      __swift_destroy_boxed_opaque_existential_0((v52 + 16));

      v5 = *(*(v52 + 176) + 8);
      v6 = v49;
      v7 = v48;

      return v5(v7, v6);
    }

    v39 = *(v52 + 440);
    v38 = *(v52 + 432);
    v36 = *(v52 + 424);
    v37 = *(v52 + 408);
    v33 = *(v52 + 392);
    v34 = *(v52 + 360);
    v35 = *(v52 + 416);
    v32 = *(v52 + 368);
    sub_240D97AB4();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    sub_240D98B10(v50, v51);
    (*(v32 + 8))(v33, v34);
    (*(v35 + 8))(v36, v37);
    sub_240D98B10(v38, v39);
    __swift_destroy_boxed_opaque_existential_0((v52 + 16));
  }

  v5 = *(*(v52 + 176) + 8);
  v6 = v31;
  v7 = v11;

  return v5(v7, v6);
}

uint64_t sub_240D97270()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  v22 = v0[58];
  v1 = v0[40];
  v19 = v0[39];
  v21 = v0[38];
  v20 = v0[37];
  v0[22] = v0;

  MEMORY[0x245CD0E40](v22);
  v0[31] = v22;
  (*(v19 + 16))(v1, v20 + OBJC_IVAR____TtC19AppleMediaDiscovery20AMDPodiumIntegration_logger, v21);
  MEMORY[0x245CD0E40](v22);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  sub_240D97B98();

  v30 = sub_240DADC24();
  v31 = sub_240DADF74();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_240D9AE00;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_240D9AE18;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_240D9AE24;
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
  sub_240DAE1D4();
  v29 = v2;

  *v29 = sub_240D9AE08;
  v29[1] = v26;

  v29[2] = sub_240D9AE10;
  v29[3] = v27;

  v29[4] = sub_240D9AFB4;
  v29[5] = v28;
  sub_240D7F8DC();

  if (os_log_type_enabled(v30, v31))
  {
    buf = sub_240DADFD4();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
    v16 = sub_240D98680(1, v14, v14);
    v17 = sub_240D98680(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = buf;
    v35 = v16;
    v36[0] = v17;
    sub_240D986D4(2, &v32);
    sub_240D986D4(1, &v32);
    v33 = sub_240D9AE08;
    v34 = v26;
    sub_240D986E8(&v33, &v32, &v35, v36);
    v33 = sub_240D9AE10;
    v34 = v27;
    sub_240D986E8(&v33, &v32, &v35, v36);
    v33 = sub_240D9AFB4;
    v34 = v28;
    sub_240D986E8(&v33, &v32, &v35, v36);
    _os_log_impl(&dword_240CB9000, v30, v31, "Failed during inference execution: %@", buf, 0xCu);
    sub_240D987EC(v16, 1, v14);
    sub_240D987EC(v17, 0, MEMORY[0x277D84F70] + 8);
    sub_240DADFB4();
  }

  else
  {
  }

  v8 = v18[58];
  v13 = v18[55];
  v12 = v18[54];
  v10 = v18[53];
  v11 = v18[51];
  v6 = v18[40];
  v7 = v18[38];
  v9 = v18[52];
  v5 = v18[39];
  MEMORY[0x277D82BD8](v30);
  (*(v5 + 8))(v6, v7);
  swift_willThrow();

  (*(v9 + 8))(v10, v11);
  sub_240D98B10(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(v18 + 2);

  v3 = *(v18[22] + 8);

  return v3();
}

unint64_t sub_240D97AB4()
{
  v2 = qword_27E519B50;
  if (!qword_27E519B50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519B50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D97B30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_240D98A94(a1, a2);
  result = a1;
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_240D97C74(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v9 = sub_240DADC84();
  v3[6] = v9;
  v5 = swift_task_alloc();
  *(v8 + 56) = v5;
  *v5 = *(v8 + 16);
  v5[1] = sub_240D97D8C;

  return sub_240D95154(v9);
}

uint64_t sub_240D97D8C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 16) = *v3;
  v14 = (v4 + 16);
  v15 = v4 + 16;

  if (v2)
  {
    v10 = v14[3];
    v9 = sub_240DAD604();
    v10[2](v10, 0);

    _Block_release(v10);
  }

  else
  {
    aBlock = v14[3];
    v11 = sub_240DADCF4();
    aBlock[2]();

    _Block_release(aBlock);
  }

  v8 = v14[2];
  v7 = v14[1];

  v5 = *(*v15 + 8);

  return v5();
}

id AMDPodiumIntegration.init()()
{
  v3 = 0;
  sub_240DADD64();
  sub_240DADD64();
  sub_240DADC34();
  v2.receiver = 0;
  v2.super_class = type metadata accessor for AMDPodiumIntegration(0);
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id AMDPodiumIntegration.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMDPodiumIntegration(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240D981A0(uint64_t a1)
{
  sub_240D9BCA8();
  sub_240D9BD28();
  return sub_240DAE324();
}

uint64_t sub_240D983A4(uint64_t a1, uint64_t a2)
{
  sub_240D9BCA8();
  sub_240D9BD28();
  return sub_240DAE314();
}

uint64_t sub_240D983E8(uint64_t a1, uint64_t a2)
{
  sub_240D9BCA8();
  sub_240D9BD28();
  return sub_240DAE2F4();
}

uint64_t sub_240D9842C(uint64_t a1, uint64_t a2)
{
  sub_240D9BCA8();
  sub_240D9BD28();
  return sub_240DAE304();
}

void sub_240D9860C(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 8) = 0;
}

uint64_t sub_240D98680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_240DADFD4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240D986D4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_240D98764()
{
  v2 = qword_27E519B68;
  if (!qword_27E519B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519B60, &qword_240DB2B80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519B68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D987EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_240DADFC4();
    return sub_240DADFB4();
  }

  return result;
}

unint64_t type metadata accessor for WritingOptions(uint64_t a1)
{
  v5 = qword_27E519B98;
  if (!qword_27E519B98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27E519B98);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_240D988EC()
{
  v2 = qword_27E519B70;
  if (!qword_27E519B70)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519B70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9896C()
{
  v2 = qword_27E519B78;
  if (!qword_27E519B78)
  {
    sub_240DADBF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519B78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D989EC(uint64_t a1)
{
  v3 = sub_240DADBF4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_240D98A94(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_240D98B10(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_240D98B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_240DAE184();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_240D98C7C()
{
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v1 = sub_240D98CD0();
  v2 = MEMORY[0x277CC9318];

  return sub_240D98B98(v5, v4, v2, v1);
}

unint64_t sub_240D98CD0()
{
  v2 = qword_27E519B80;
  if (!qword_27E519B80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519B80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D98D48(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_240D98DC0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D98EE8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D99010()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *sub_240D99164(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_240D99200(v4, v5, a3);
  v8 = *a1;

  sub_240DADFE4();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_240D99200(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_240D993A4(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_240D7FB3C(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_240D7FB3C(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

void *sub_240D993A4(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_240DAE124();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_240D9975C(v22, v17, v16);
        sub_240DADFF4();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_240D998D8(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_240DAE0C4();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_240DAE124();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_240D9975C(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_240DAE154();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_240DAE154();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_240D998D8(uint64_t a1, uint64_t a2)
{
  v7 = sub_240D99994(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519BC8, &qword_240DB2EA8);
  inited = swift_initStackObject();
  sub_240D9A1A4(inited, 1);
  *v3 = 0;
  sub_240D9A1F0();
  sub_240D9A224(v4);

  v8 = sub_240D9A5CC(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_240D99994(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_240DADD94();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_240D9AAEC();
  }

  v10 = sub_240D9A5E4(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_240DAE154();
    __break(1u);
    return sub_240D9AAEC();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_240D9A728(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_240DAE0C4();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_240D9A728(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_240DAE0A4();
  if (v2)
  {
LABEL_29:
    sub_240DAE124();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_240DAE124();
    __break(1u);
  }

  sub_240D9BDD4(v17);
  return v10;
}

uint64_t sub_240D9A1A4(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_240D9A224(uint64_t a1)
{
  v18 = sub_240D9A5CC(a1);
  v2 = sub_240D9A5CC(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_240D9AB28(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_240DAE154();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_240D9AC94(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_240DAE124();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_240DAE124();
    __break(1u);
    goto LABEL_21;
  }

  sub_240D9A728((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_240D9AB1C();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_240D9A5E4(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519BC8, &qword_240DB2EA8);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *sub_240D9A728(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_240DAE154();
    __break(1u);
  }

  result = sub_240DAE154();
  __break(1u);
  return result;
}

unint64_t sub_240D9A878(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x245CD0120](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_240DAE124();
    __break(1u);
  }

  v5 = sub_240DADDD4();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_240D9AAEC()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *sub_240D9AB28(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_240D9A5E4(v4, v6);
  if (v7)
  {
    sub_240D9AC9C((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_240D9A728((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_240D9AC9C(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_240DAE154();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_240D9ADC4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_240D9AE30(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v9 = a4(a1, a2, a3);
  v8 = *a1;
  MEMORY[0x277D82BE0](v9);
  sub_240DADFE4();
  if (v9)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BE0](v9);
  *v5 = v9;
  result = MEMORY[0x277D82BD8](v9);
  *a2 = v5 + 1;
  return result;
}

unint64_t sub_240D9AFC0()
{
  v2 = qword_27E519B88;
  if (!qword_27E519B88)
  {
    sub_240DADC04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519B88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D9B070()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_240D9B15C;

  return sub_240D97C74(v7, v5, v6);
}

uint64_t sub_240D9B15C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t type metadata accessor for AMDPodiumIntegration(uint64_t a1)
{
  v2 = qword_27E519E40;
  if (!qword_27E519E40)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_240D9B310()
{
  v2 = qword_27E519B90;
  if (!qword_27E519B90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519B90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D9B3A8(uint64_t a1)
{
  updated = sub_240DADC54();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t dispatch thunk of AMDPodiumIntegration.runInference(_:)(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *((*v1 & *MEMORY[0x277D85000]) + 0x58);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_240D9B5F4;

  return v7(a1);
}

uint64_t sub_240D9B5F4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t getEnumTagSinglePayload for AMDPodiumIntegration.InferenceError(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AMDPodiumIntegration.InferenceError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_240D9BAE0()
{
  v2 = qword_27E519BA0;
  if (!qword_27E519BA0)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9BB90()
{
  v2 = qword_27E519BA8;
  if (!qword_27E519BA8)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9BC28()
{
  v2 = qword_27E519BB0;
  if (!qword_27E519BB0)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9BCA8()
{
  v2 = qword_27E519BB8;
  if (!qword_27E519BB8)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9BD28()
{
  v2 = qword_27E519BC0;
  if (!qword_27E519BC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t static AMDSwiftTests.strToInt(strValue:)(uint64_t a1, uint64_t a2)
{

  sub_240D9C130();
  sub_240D9C1A8();
  sub_240DAE104();
  if (v13)
  {
    v9 = sub_240DADD64();
  }

  else
  {
    v9 = sub_240DADDE4();
  }

  v10 = v2;
  sub_240DADF84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519BD8, &unk_240DB2EC0);
  sub_240DAE1D4();
  v7 = v3;

  v5 = MEMORY[0x277D837D0];
  v7[3] = MEMORY[0x277D837D0];
  v6 = sub_240D9C220();
  v7[4] = v6;
  *v7 = a1;
  v7[1] = a2;

  v7[8] = v5;
  v7[9] = v6;
  v7[5] = v9;
  v7[6] = v10;
  sub_240D7F8DC();
  v8 = sub_240D9C298();
  sub_240DADC14();
  MEMORY[0x277D82BD8](v8);

  return v9;
}

unint64_t sub_240D9C130()
{
  v2 = qword_27E519BD0;
  if (!qword_27E519BD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9C1A8()
{
  v2 = qword_2810BCF78;
  if (!qword_2810BCF78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCF78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9C220()
{
  v2 = qword_27E519BE0;
  if (!qword_27E519BE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BE0);
    return WitnessTable;
  }

  return v2;
}

id AMDSwiftTests.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for AMDSwiftTests();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id AMDSwiftTests.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMDSwiftTests();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_240D9C4C4()
{
  v2 = qword_27E519BE8;
  if (!qword_27E519BE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27E519BE8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_240D9C528()
{
  v1 = sub_240DADC54();
  __swift_allocate_value_buffer(v1, qword_2810BD068);
  __swift_project_value_buffer(v1, qword_2810BD068);
  return sub_240DADC44();
}

uint64_t sub_240D9C574()
{
  if (qword_2810BCFF8 != -1)
  {
    swift_once();
  }

  v0 = sub_240DADC54();
  return __swift_project_value_buffer(v0, qword_2810BD068);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_240D9C638(uint64_t a1)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_240D9C678, 0);
}

uint64_t sub_240D9C678()
{
  *(v0 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v8 = v1;
  *v1 = sub_240DADD64();
  v8[1] = v2;
  v3 = sub_240DADD64();
  v8[5] = MEMORY[0x277D837D0];
  v8[2] = v3;
  v8[3] = v4;
  sub_240D7F8DC();
  v5 = sub_240DADCA4();
  v6 = *(*(v0 + 16) + 8);

  return v6(v5);
}

uint64_t sub_240D9C874(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v9 = sub_240DADC84();
  v3[6] = v9;
  v5 = swift_task_alloc();
  *(v8 + 56) = v5;
  *v5 = *(v8 + 16);
  v5[1] = sub_240D9C98C;

  return sub_240D9C638(v9);
}

uint64_t sub_240D9C98C(uint64_t a1)
{
  v8 = *v1;
  v7 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(v8 + 16) = *v1;

  v6 = sub_240DADC74();
  v7[2]();

  _Block_release(v7);

  v2 = *(*(v8 + 16) + 8);

  return v2();
}

uint64_t sub_240D9CB84()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_240D9CC70;

  return sub_240D9C874(v7, v5, v6);
}

uint64_t sub_240D9CC70()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

id SearchToolQueryHandler.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for SearchToolQueryHandler();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id SearchToolQueryHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchToolQueryHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of SearchToolQueryHandler.querySearchTool(searchtoolQueryConfig:)(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *((*v1 & *MEMORY[0x277D85000]) + 0x50);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_240D9D050;

  return v7(a1);
}

uint64_t sub_240D9D050(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_240D9D180()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D9D2A8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_240D9D3D0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

void sub_240D9D598()
{
  sub_240DAE1D4();
  v5 = v0;
  *v0 = sub_240DADD64();
  v5[1] = v1;
  v5[2] = sub_240DADD64();
  v5[3] = v2;
  v5[4] = sub_240DADD64();
  v5[5] = v3;
  sub_240D7F8DC();
  qword_2810BD080 = v4;
}

uint64_t *sub_240D9D670()
{
  if (qword_2810BD000 != -1)
  {
    swift_once();
  }

  return &qword_2810BD080;
}

void sub_240D9D6D0()
{
  sub_240DAE1D4();
  v3 = v0;
  *v0 = sub_240DADD64();
  v3[1] = v1;
  sub_240D7F8DC();
  qword_27E51A2A8 = v2;
}

uint64_t *sub_240D9D750()
{
  if (qword_27E51A0D8 != -1)
  {
    swift_once();
  }

  return &qword_27E51A2A8;
}

uint64_t sub_240D9D7B0(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0;
    case 2:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
  }

  return 4;
}

uint64_t sub_240D9D87C(char a1)
{
  switch(a1)
  {
    case 0:
      return 1;
    case 1:
      return 2;
    case 2:
      return 3;
  }

  return 4;
}

unint64_t sub_240D9D94C()
{
  v2 = qword_27E519BF0;
  if (!qword_27E519BF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D9DA98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240D9D7B0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_240D9DAC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240D9D87C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_240D9DAF8()
{
  v2 = *(v0 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

  return v2;
}

char *AMDVectorDBManager.__allocating_init(vectorDBConfig:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v7 = AMDVectorDBManager.init(vectorDBConfig:)(a1);
  if (v5)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

char *AMDVectorDBManager.init(vectorDBConfig:)(uint64_t a1)
{
  v287 = a1;
  v238 = sub_240D9FABC;
  v239 = sub_240DAC09C;
  v240 = sub_240DAC08C;
  v241 = sub_240DAC094;
  v242 = sub_240DAC0A8;
  v243 = sub_240DAC0DC;
  v244 = sub_240DAC0F8;
  v245 = sub_240DAC0E8;
  v246 = sub_240DAC0F0;
  v247 = sub_240DAC104;
  v248 = "Fatal error";
  v249 = "Unexpectedly found nil while unwrapping an Optional value";
  v250 = "AppleMediaDiscovery/AMDVectorDB.swift";
  v360[4] = *MEMORY[0x277D85DE8];
  v334 = 0;
  v333 = 0;
  v332 = 0;
  v331 = 0;
  v330 = 0;
  v329 = 0;
  v323 = 0;
  v324 = 0;
  v322 = 0;
  v319 = 0;
  v313 = 0;
  v314 = 0;
  v308 = 0;
  v309 = 0;
  v305 = 0;
  v300 = 0;
  v301 = 0;
  v272 = 0;
  v251 = sub_240DADA64();
  v252 = *(v251 - 8);
  v253 = v251 - 8;
  v254 = (*(v252 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](0);
  v255 = v91 - v254;
  v256 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v257 = v91 - v256;
  v334 = v91 - v256;
  v258 = sub_240DADAC4();
  v259 = *(v258 - 8);
  v260 = v258 - 8;
  v261 = (*(v259 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v272);
  v262 = v91 - v261;
  v263 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v264 = v91 - v263;
  v333 = v91 - v263;
  v265 = sub_240DADA84();
  v266 = *(v265 - 8);
  v267 = v265 - 8;
  v268 = (*(v266 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v272);
  v269 = v91 - v268;
  v270 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v271 = v91 - v270;
  v332 = v91 - v270;
  v273 = sub_240DAD674();
  v274 = *(v273 - 8);
  v275 = v273 - 8;
  v276 = (*(v274 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v272);
  v277 = v91 - v276;
  v278 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v279 = v91 - v278;
  v331 = v91 - v278;
  v280 = sub_240DADC54();
  v281 = *(v280 - 8);
  v282 = v280 - 8;
  v283 = (v281[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v287);
  v284 = v91 - v283;
  v285 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v10);
  v286 = v91 - v285;
  v329 = v12;
  v330 = v1;
  v13 = sub_240DADD64();
  v288 = v328;
  v328[0] = v13;
  v328[1] = v14;
  sub_240DADCC4();
  sub_240D7F920(v288);
  v236 = v360[3] == 0;
  v235 = v236;
  sub_240D86770(v360);
  if (v235)
  {
    sub_240DAC110();
    v222 = 1;
    v231 = sub_240DADD64();
    v229 = v15;
    v230 = sub_240D9D87C(0);
    v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    v224 = sub_240DAE1D4();
    v223 = v16;
    v226 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](v226);
    v17 = sub_240DADD04();
    v18 = v223;
    *v223 = v17;
    v18[1] = v19;
    v20 = sub_240DADD64();
    v21 = v223;
    v228 = MEMORY[0x277D837D0];
    v223[5] = MEMORY[0x277D837D0];
    v21[2] = v20;
    v21[3] = v22;
    sub_240D7F8DC();
    v227 = v23;
    MEMORY[0x277D82BD8](v226);
    v24 = sub_240DADCA4();
    v233 = sub_240D9FA30(v231, v229, v230, v24);
    swift_willThrow();
    v234 = v233;
LABEL_33:
    v91[1] = v234;

    v91[2] = v330;
    type metadata accessor for AMDVectorDBManager();
    swift_deallocPartialClassInstance();
    return v232;
  }

  v25 = sub_240DADD64();
  v221 = v327;
  v327[0] = v25;
  v327[1] = v26;
  sub_240DADCC4();
  sub_240D7F920(v221);
  if (!v358)
  {
    sub_240DAE124();
    __break(1u);
  }

  v215 = v359;
  sub_240D8634C(v357, v359);
  v219 = MEMORY[0x277D84F70] + 8;
  v218 = MEMORY[0x277D837D0];
  swift_dynamicCast();
  v216 = v325;
  v217 = v326;
  v323 = v325;
  v324 = v326;
  v322 = 50;
  v27 = sub_240DADD64();
  v220 = v321;
  v321[0] = v27;
  v321[1] = v28;
  sub_240DADCC4();
  sub_240D7F920(v220);
  v214 = v356[3] != 0;
  v213 = v214;
  sub_240D86770(v356);
  if (v213)
  {
    v29 = sub_240DADD64();
    v212 = v290;
    v290[0] = v29;
    v290[1] = v30;
    sub_240DADCC4();
    sub_240D7F920(v212);
    if (!v335[3])
    {
      sub_240DAE124();
      __break(1u);
    }

    v210 = v336;
    sub_240D8634C(v335, v336);
    swift_dynamicCast();
    v322 = v289;
    v211 = v289;
  }

  else
  {
    v211 = 50;
  }

  v31 = v286;
  v194 = v211;
  v32 = sub_240D9C574();
  v195 = v281[2];
  v196 = v281 + 2;
  v195(v31, v32, v280);

  v198 = 32;
  v199 = 7;
  v33 = swift_allocObject();
  v34 = v217;
  v200 = v33;
  *(v33 + 16) = v216;
  *(v33 + 24) = v34;
  v208 = sub_240DADC24();
  v209 = sub_240DADF64();
  v197 = 17;
  v202 = swift_allocObject();
  *(v202 + 16) = 32;
  v203 = swift_allocObject();
  *(v203 + 16) = 8;
  v35 = swift_allocObject();
  v36 = v200;
  v201 = v35;
  *(v35 + 16) = v238;
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v201;
  v205 = v37;
  *(v37 + 16) = v239;
  *(v37 + 24) = v38;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
  v204 = sub_240DAE1D4();
  v206 = v39;

  v40 = v202;
  v41 = v206;
  *v206 = v240;
  v41[1] = v40;

  v42 = v203;
  v43 = v206;
  v206[2] = v241;
  v43[3] = v42;

  v44 = v205;
  v45 = v206;
  v206[4] = v242;
  v45[5] = v44;
  sub_240D7F8DC();

  if (os_log_type_enabled(v208, v209))
  {
    v187 = sub_240DADFD4();
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
    v188 = sub_240D98680(0, v186, v186);
    v189 = sub_240D98680(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v190 = v293;
    v293[0] = v187;
    v191 = &v338;
    v338 = v188;
    v192 = &v337;
    v337 = v189;
    sub_240D986D4(2, v293);
    sub_240D986D4(1, v190);
    v46 = v237;
    v291 = v240;
    v292 = v202;
    sub_240D986E8(&v291, v190, v191, v192);
    v193 = v46;
    if (v46)
    {

      __break(1u);
    }

    else
    {
      v291 = v241;
      v292 = v203;
      sub_240D986E8(&v291, v293, &v338, &v337);
      v184 = 0;
      v291 = v242;
      v292 = v205;
      sub_240D986E8(&v291, v293, &v338, &v337);
      v183 = 0;
      _os_log_impl(&dword_240CB9000, v208, v209, "Fetching vectorDB config for dbName: %s", v187, 0xCu);
      sub_240D987EC(v188, 0, v186);
      sub_240D987EC(v189, 1, MEMORY[0x277D84F70] + 8);
      sub_240DADFB4();

      v185 = v183;
    }
  }

  else
  {

    v185 = v237;
  }

  v176 = v185;
  MEMORY[0x277D82BD8](v208);
  v177 = v281[1];
  v178 = v281 + 1;
  v177(v286, v280);
  v355 = 0;
  v179 = objc_opt_self();

  v181 = sub_240DADCF4();

  v320 = v355;
  v182 = [v179 fetchVectorDBConfigForDBName:v181 error:&v320];
  v180 = v320;
  MEMORY[0x277D82BE0](v320);
  v47 = v355;
  v355 = v180;
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v181);
  if (!v182)
  {
    v92 = v355;
    v93 = sub_240DAD614();
    MEMORY[0x277D82BD8](v92);
    swift_willThrow();

    v234 = v93;
    goto LABEL_33;
  }

  v175 = v182;
  v169 = v182;
  v172 = MEMORY[0x277D84030];
  v173 = MEMORY[0x277D84F70] + 8;
  v174 = MEMORY[0x277D84038];
  v171 = sub_240DADC84();
  v319 = v171;
  MEMORY[0x277D82BD8](v169);
  v318[0] = sub_240DADD64();
  v318[1] = v48;
  v170 = v354;
  sub_240DAE174();
  sub_240DADCC4();
  v168 = v353[3] == 0;
  v167 = v168;
  sub_240D86770(v353);
  sub_240D92370(v354);
  sub_240D7F920(v318);
  if (v167)
  {
    v150 = 0;
    v152 = sub_240DAC110();
    v151 = 1;
    v165 = sub_240DADD64();
    v163 = v49;
    v164 = sub_240D9D87C(v151);
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    v147 = 1;
    v158 = sub_240DAE1D4();
    v157 = v50;
    v160 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](v160);
    v51 = sub_240DADD04();
    v52 = v157;
    *v157 = v51;
    v52[1] = v53;
    v148 = 30;
    v54 = sub_240DAE1C4();
    v154 = &v294;
    v294 = v54;
    v295 = v55;
    v56 = sub_240DADD64();
    v149 = v57;
    MEMORY[0x245CD0520](v56);

    v293[1] = v216;
    v293[2] = v217;
    v162 = MEMORY[0x277D837D0];
    sub_240DAE1A4();
    v58 = sub_240DADD64();
    v153 = v59;
    MEMORY[0x245CD0520](v58);

    v156 = v294;
    v155 = v295;

    sub_240DAC174(v154);
    v60 = sub_240DADD54();
    v61 = v157;
    v157[5] = v162;
    v61[2] = v60;
    v61[3] = v62;
    sub_240D7F8DC();
    v161 = v63;
    MEMORY[0x277D82BD8](v160);
    v64 = sub_240DADCA4();
    v166 = sub_240D9FA30(v165, v163, v164, v64);
    swift_willThrow();

    v234 = v166;
    goto LABEL_33;
  }

  v65 = v284;
  v66 = sub_240D9C574();
  v195(v65, v66, v280);

  v136 = 32;
  v137 = 7;
  v67 = swift_allocObject();
  v68 = v217;
  v138 = v67;
  *(v67 + 16) = v216;
  *(v67 + 24) = v68;
  v145 = sub_240DADC24();
  v146 = sub_240DADF64();
  v135 = 17;
  v140 = swift_allocObject();
  *(v140 + 16) = 32;
  v141 = swift_allocObject();
  *(v141 + 16) = 8;
  v69 = swift_allocObject();
  v70 = v138;
  v139 = v69;
  *(v69 + 16) = v243;
  *(v69 + 24) = v70;
  v71 = swift_allocObject();
  v72 = v139;
  v143 = v71;
  *(v71 + 16) = v244;
  *(v71 + 24) = v72;
  v142 = sub_240DAE1D4();
  v144 = v73;

  v74 = v140;
  v75 = v144;
  *v144 = v245;
  v75[1] = v74;

  v76 = v141;
  v77 = v144;
  v144[2] = v246;
  v77[3] = v76;

  v78 = v143;
  v79 = v144;
  v144[4] = v247;
  v79[5] = v78;
  sub_240D7F8DC();

  if (os_log_type_enabled(v145, v146))
  {
    v128 = sub_240DADFD4();
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
    v129 = sub_240D98680(0, v127, v127);
    v130 = sub_240D98680(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v131 = &v298;
    v298 = v128;
    v132 = &v340;
    v340 = v129;
    v133 = &v339;
    v339 = v130;
    sub_240D986D4(2, &v298);
    sub_240D986D4(1, v131);
    v80 = v176;
    v296 = v245;
    v297 = v140;
    sub_240D986E8(&v296, v131, v132, v133);
    v134 = v80;
    if (v80)
    {

      __break(1u);
    }

    else
    {
      v296 = v246;
      v297 = v141;
      sub_240D986E8(&v296, &v298, &v340, &v339);
      v125 = 0;
      v296 = v247;
      v297 = v143;
      sub_240D986E8(&v296, &v298, &v340, &v339);
      v124 = 0;
      _os_log_impl(&dword_240CB9000, v145, v146, "Successfully fetched config for dbName: %s", v128, 0xCu);
      sub_240D987EC(v129, 0, v127);
      sub_240D987EC(v130, 1, MEMORY[0x277D84F70] + 8);
      sub_240DADFB4();

      v126 = v124;
    }
  }

  else
  {

    v126 = v176;
  }

  v122 = v126;
  MEMORY[0x277D82BD8](v145);
  v177(v284, v280);
  v317[0] = sub_240DADD64();
  v317[1] = v81;
  v123 = v351;
  sub_240DAE174();
  sub_240DADCC4();
  if (!v350[3])
  {
    sub_240DAE124();
    __break(1u);
  }

  v116 = v352;
  sub_240D8634C(v350, v352);
  v121 = MEMORY[0x277D84F70] + 8;
  v119 = MEMORY[0x277D837D0];
  swift_dynamicCast();
  v118 = v315;
  v117 = v316;
  v313 = v315;
  v314 = v316;
  sub_240D92370(v351);
  sub_240D7F920(v317);
  sub_240DAD634();
  v312[0] = sub_240DADD64();
  v312[1] = v82;
  v120 = v348;
  sub_240DAE174();
  sub_240DADCC4();
  if (!v347[3])
  {
    sub_240DAE124();
    __break(1u);
  }

  v109 = v349;
  sub_240D8634C(v347, v349);
  v115 = MEMORY[0x277D84F70] + 8;
  v113 = MEMORY[0x277D837D0];
  swift_dynamicCast();
  v111 = v310;
  v110 = v311;
  v308 = v310;
  v309 = v311;
  sub_240D92370(v348);
  sub_240D7F920(v312);
  v112 = type metadata accessor for AMDVectorDBManager();
  sub_240DA38C4(v111, v110, v271);
  v307[0] = sub_240DADD64();
  v307[1] = v83;
  v114 = v345;
  sub_240DAE174();
  sub_240DADCC4();
  if (!v344[3])
  {
    sub_240DAE124();
    __break(1u);
  }

  v104 = v346;
  sub_240D8634C(v344, v346);
  v106 = 8;
  v108 = MEMORY[0x277D84F70] + 8;
  swift_dynamicCast();
  v105 = v306;
  v305 = v306;
  sub_240D92370(v345);
  sub_240D7F920(v307);
  v304[0] = sub_240DADD64();
  v304[1] = v84;
  v107 = v342;
  sub_240DAE174();
  sub_240DADCC4();
  if (!v341[3])
  {
    sub_240DAE124();
    __break(1u);
  }

  v94 = v343;
  sub_240D8634C(v341, v343);
  swift_dynamicCast();
  v95 = v302;
  v102 = v303;
  v300 = v302;
  v301 = v303;
  sub_240D92370(v342);
  sub_240D7F920(v304);
  sub_240DA3A94(v264);
  (*(v274 + 16))(v277, v279, v273);
  (*(v266 + 16))(v269, v271, v265);
  v100 = 0;
  sub_240DADAD4();
  v97 = sub_240DAE1D4();
  (*(v259 + 16))(v262, v264, v258);
  v98 = sub_240D9FAFC();
  v99 = sub_240D9FB08();
  v96 = sub_240D9FB14();
  sub_240D9FB20();
  sub_240DADA54();
  v101 = v330;
  sub_240DADA44();
  (*(v252 + 16))(v255, v257, v251);
  v85 = sub_240DAD9D4();
  v86 = v252;
  v87 = v251;
  v88 = v85;
  v89 = v257;
  *&v101[OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client] = v88;
  (*(v86 + 8))(v89, v87);
  (*(v259 + 8))(v264, v258);

  (*(v266 + 8))(v271, v265);

  (*(v274 + 8))(v279, v273);

  v299.receiver = v330;
  v299.super_class = v112;
  v103 = objc_msgSendSuper2(&v299, sel_init);
  MEMORY[0x277D82BE0](v103);
  v330 = v103;

  MEMORY[0x277D82BD8](v330);
  return v103;
}