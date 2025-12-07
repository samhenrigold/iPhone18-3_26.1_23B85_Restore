uint64_t sub_251146B48()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251146B8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251146BC4()
{
  v1 = sub_251210EBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251146C54()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146C8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146CF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25121179C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_251146D1C()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146D64()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146D9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251146DE4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_251146DF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So8NSNumberCIego_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_251146E1C()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146E54()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146E8C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251146ECC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251146F10()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146F48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251146F88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146FC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251146FF8()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251147030()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251147070()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2511470B0()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2511470E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251147108(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_251147130()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251147168()
{
  MEMORY[0x25306E9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2511471A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2511471E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251147218()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251147250()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251147290()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2511472F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_2511615A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_251161968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251163B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2511711B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251173C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getHearingModeUIServiceClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!HearingModeSettingsUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __HearingModeSettingsUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2796AD900;
    v5 = 0;
    HearingModeSettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HearingModeSettingsUILibraryCore_frameworkLibrary)
  {
    __getHearingModeUIServiceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("HearingModeUIService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHearingModeUIServiceClass_block_invoke_cold_1();
  }

  getHearingModeUIServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HearingModeSettingsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HearingModeSettingsUILibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t isPreferredLanguageEnglish()
{
  v0 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v1 = [v0 firstObject];
  if ([v1 isEqualToString:@"en"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:@"en-"];
  }

  return v2;
}

void sub_2511816E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak((v37 - 168));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sharedBluetoothSettingsLogComponent(uint64_t a1)
{
  if (sharedBluetoothSettingsLogComponent_onceToken[0] != -1)
  {
    sharedBluetoothSettingsLogComponent_cold_1();
  }

  v2 = sharedBluetoothSettingsLogComponent_sharedBTSLog;

  return v2;
}

uint64_t __sharedBluetoothSettingsLogComponent_block_invoke()
{
  v0 = os_log_create("com.apple.bluetooth", "BluetoothSettings");
  v1 = sharedBluetoothSettingsLogComponent_sharedBTSLog;
  sharedBluetoothSettingsLogComponent_sharedBTSLog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25118C960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id createWarningCellTitle()
{
  v0 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setEditable:0];
  [v0 setSelectable:1];
  [v0 setUserInteractionEnabled:1];
  [v0 setScrollEnabled:0];
  [v0 setTextContainerInset:{0.0, 0.0, 0.0, 0.0}];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v0 setFont:v1];

  v2 = [MEMORY[0x277D3FA48] appearance];
  v3 = [v2 textColor];
  if (v3)
  {
    [v0 setTextColor:v3];
  }

  else
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    [v0 setTextColor:v4];
  }

  v5 = [MEMORY[0x277D75348] clearColor];
  [v0 setBackgroundColor:v5];

  LODWORD(v6) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1144750080;
  [v0 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1144750080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [v0 setContentHuggingPriority:1 forAxis:v9];
  [v0 sizeToFit];

  return v0;
}

id createWarningCellBody()
{
  v0 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setEditable:0];
  [v0 setSelectable:1];
  [v0 setUserInteractionEnabled:1];
  [v0 setScrollEnabled:0];
  [v0 _setInteractiveTextSelectionDisabled:0];
  [v0 setShowsVerticalScrollIndicator:0];
  [v0 setTextContainerInset:{0.0, 0.0, 0.0, 0.0}];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v0 setFont:v1];

  v2 = [MEMORY[0x277D3FA48] appearance];
  v3 = [v2 textColor];
  if (v3)
  {
    [v0 setTextColor:v3];
  }

  else
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    [v0 setTextColor:v4];
  }

  v5 = [MEMORY[0x277D75348] clearColor];
  [v0 setBackgroundColor:v5];

  LODWORD(v6) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1144750080;
  [v0 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1144750080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [v0 setContentHuggingPriority:1 forAxis:v9];
  [v0 sizeToFit];

  return v0;
}

void sub_251190EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2511917D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251192CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t cbTapActionForBT(int a1)
{
  v1 = a1 != 0xFFFF;
  if (a1 == 15)
  {
    v1 = 0;
  }

  if (a1 == 4)
  {
    v2 = 5;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  if (a1 == 2)
  {
    v3 = 3;
  }

  if (a1 == 1)
  {
    v3 = 2;
  }

  if (a1 <= 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void sub_25119B584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t static HPSCaseEngravingView.getEngravedCaseImage(_:productID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2511C1CA8;

  return sub_2511C2AF8(a1, a2, v4);
}

uint64_t sub_2511C1CA8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2511C1DA4()
{
  v0 = sub_251210E9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D426B8], v0);
  v4 = sub_251210EAC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_2511C1E98(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_2511C207C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v4 = a2;
  v3[2] = _Block_copy(aBlock);
  v5 = sub_25121179C();
  v7 = v6;
  v3[3] = v6;
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_2511C2158;

  return sub_2511C2AF8(v5, v7, v4);
}

uint64_t sub_2511C2158(const void *a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);
  _Block_release(a1);
  v4 = *(v6 + 8);

  return v4();
}

id HPSCaseEngravingView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HPSCaseEngravingView.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPSCaseEngravingView();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HPSCaseEngravingView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HPSCaseEngravingView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2511C2388(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2511C3D54;

  return v6();
}

uint64_t sub_2511C2470(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2511C2558;

  return v7();
}

uint64_t sub_2511C2558()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2511C264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226D0, &qword_251217DE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2511C3948(a3, v23 - v10);
  v12 = sub_2512118FC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2511C39B8(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2512118EC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2512118DC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2512117EC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2511C39B8(a3);

    return v21;
  }

LABEL_8:
  sub_2511C39B8(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2511C2908(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2511C2A00;

  return v6(a1);
}

uint64_t sub_2511C2A00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2511C2AF8(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 + 344) = a3;
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  v4 = sub_251210EBC();
  *(v3 + 192) = v4;
  v5 = *(v4 - 8);
  *(v3 + 200) = v5;
  *(v3 + 208) = *(v5 + 64);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226D8, &qword_251217E38);
  *(v3 + 232) = swift_task_alloc();
  v6 = sub_251210E8C();
  *(v3 + 240) = v6;
  *(v3 + 248) = *(v6 - 8);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v7 = sub_251210EEC();
  *(v3 + 272) = v7;
  *(v3 + 280) = *(v7 - 8);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2511C2CD8, 0, 0);
}

uint64_t sub_2511C2CD8()
{
  *(v0 + 304) = sub_2511C3B90();
  v1 = sub_251211ADC();
  *(v0 + 312) = v1;
  sub_251210EDC();
  v21 = *(v0 + 288);
  v2 = *(v0 + 280);
  v22 = *(v0 + 272);
  v23 = *(v0 + 296);
  v24 = *(v0 + 264);
  v25 = *(v0 + 248);
  v26 = *(v0 + 256);
  v27 = *(v0 + 240);
  v3 = *(v0 + 232);
  v20 = *(v0 + 344);
  *(v0 + 128) = sub_2512117DC();
  *(v0 + 136) = v4;
  *(v0 + 144) = 58;
  *(v0 + 152) = 0xE100000000000000;
  *(v0 + 160) = 45;
  *(v0 + 168) = 0xE100000000000000;
  sub_2511C3BF4();
  v18 = sub_2511C3C48();
  v19 = MEMORY[0x277D835C8];
  v5 = MEMORY[0x277D837D0];
  sub_25121193C();

  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = sub_25121197C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226F8, &unk_251217E40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_251217D90;
  *(v9 + 56) = v5;
  *(v9 + 64) = sub_2511C3C9C();
  v10 = MEMORY[0x277D84CC0];
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  v11 = MEMORY[0x277D84D30];
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v20;

  sub_2512113DC(v8, &dword_251143000, v1, "Headphone Engraving: BluetoothAddress: %@ pro%d", 47, 2, v9, v18, v19);

  (*(v2 + 16))(v21, v23, v22);
  sub_251210EFC();
  sub_251210E6C();
  sub_251210F0C();
  v12 = *MEMORY[0x277D426C0];
  v13 = sub_251210F1C();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v3, v12, v13);
  (*(v14 + 56))(v3, 0, 1, v13);
  sub_251210E7C();
  sub_251210E5C();
  (*(v25 + 16))(v26, v24, v27);
  *(v0 + 320) = sub_251210ECC();
  v15 = swift_task_alloc();
  *(v0 + 328) = v15;
  *v15 = v0;
  v15[1] = sub_2511C319C;
  v16 = *(v0 + 224);

  return MEMORY[0x2821A3420](v16);
}

uint64_t sub_2511C319C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_2511C3498;
  }

  else
  {
    v2 = sub_2511C32B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2511C32B0()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[27];
  v16 = v0[37];
  v17 = v0[28];
  v8 = v0[25];
  v9 = v0[24];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v16, v2);
  v10 = *(v8 + 32);
  v10(v7, v17, v9);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v10(v12 + v11, v7, v9);
  v0[12] = sub_2511C3CF0;
  v0[13] = v12;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_2511C1E98;
  v0[11] = &block_descriptor_31;
  v13 = _Block_copy(v0 + 8);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_2511C3498()
{
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[31];

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);
  v8 = v0[42];
  v9 = sub_251211ACC();
  sub_25121197C();
  sub_2512113CC();

  v0[6] = sub_2511C1EE8;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2511C1E98;
  v0[5] = &block_descriptor;
  v10 = _Block_copy(v0 + 2);

  v11 = v0[1];

  return v11(v10);
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

uint64_t sub_2511C36B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2511C2558;

  return sub_2511C207C(v2, v3, v4);
}

uint64_t sub_2511C377C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2511C3D54;

  return sub_2511C2388(v2, v3, v4);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2511C387C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2511C3D54;

  return sub_2511C2470(a1, v4, v5, v6);
}

uint64_t sub_2511C3948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226D0, &qword_251217DE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2511C39B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226D0, &qword_251217DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2511C3A20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2511C3D54;

  return sub_2511C2908(a1, v4);
}

uint64_t sub_2511C3AD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2511C2558;

  return sub_2511C2908(a1, v4);
}

unint64_t sub_2511C3B90()
{
  result = qword_27F4226E0;
  if (!qword_27F4226E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4226E0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2511C3BF4()
{
  result = qword_27F4226E8;
  if (!qword_27F4226E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4226E8);
  }

  return result;
}

unint64_t sub_2511C3C48()
{
  result = qword_27F4226F0;
  if (!qword_27F4226F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4226F0);
  }

  return result;
}

unint64_t sub_2511C3C9C()
{
  result = qword_27F422700;
  if (!qword_27F422700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422700);
  }

  return result;
}

uint64_t sub_2511C3CF0()
{
  sub_251210EBC();

  return sub_2511C1DA4();
}

uint64_t sub_2511C3D5C()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F425638);
  __swift_project_value_buffer(v0, qword_27F425638);
  sub_2512113FC();
  return sub_25121143C();
}

uint64_t sub_2511C3DC8()
{
  if (qword_27F423110 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F425638);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2511C3E64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F423110 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F425638);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_2511C3F58()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2511C4020(void *a1)
{
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_2511C4088();
}

void sub_2511C4088()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422788, &qword_251217F40);
  v76 = *(v1 - 8);
  v77 = v1;
  MEMORY[0x28223BE20](v1);
  v75 = v57 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422790, &qword_251217F48);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422798, &qword_251217F50);
  v82 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v81 = v57 - v6;
  v73 = sub_2512119FC();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422720, &qword_251217EB8);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227A0, &qword_251217F58);
  v62 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422718, &qword_251217EB0);
  v61 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v57 - v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227A8, &qword_251217F60);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v20 = v57 - v19;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227B0, &qword_251217F68);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = v57 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227B8, &qword_251217F70);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = v57 - v22;
  v23 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice;
  swift_beginAccess();
  if (*(v0 + v23))
  {
    v24 = *(v0 + v23);
    v60 = v5;
    v25 = (v0 + OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_listeners);
    swift_beginAccess();
    v59 = v25;
    v26 = *v25;
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = v24;

      v28 = sub_251211B8C();

      if (v28)
      {
LABEL_4:

        return;
      }
    }

    else
    {
      v29 = *(v26 + 16);
      v30 = v24;
      if (v29)
      {
        goto LABEL_4;
      }
    }

    v57[2] = v0;
    sub_251210FDC();
    v31 = sub_2511D0070(v13);
    v32 = *(v61 + 8);
    v32(v18, v13);
    v83 = v31;
    v58 = v24;
    sub_251210F9C();
    v33 = sub_2511D0070(v10);
    (*(v62 + 8))(v12, v10);
    v85 = v33;
    sub_251210FBC();
    v34 = sub_2511D0070(v13);
    v32(v16, v13);
    v84 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422750, qword_251217ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227C0, &qword_251217F78);
    v35 = MEMORY[0x277CBCD90];
    sub_2511C6790(&qword_27F422758, &qword_27F422750, qword_251217ED0, MEMORY[0x277CBCD90]);
    v62 = v35;
    sub_2511C6790(&qword_27F4227C8, &qword_27F4227C0, &qword_251217F78, v35);
    sub_25121153C();
    sub_2511C6790(&qword_27F4227D0, &qword_27F4227A8, &qword_251217F60, MEMORY[0x277CBCAF8]);
    v36 = v64;
    v37 = sub_25121160C();
    (*(v63 + 8))(v20, v36);
    v83 = v37;
    v57[0] = sub_2511C5FD0();
    v38 = sub_251211A0C();
    v85 = v38;
    v39 = sub_2512119DC();
    v40 = *(v39 - 8);
    v41 = *(v40 + 56);
    v64 = v40 + 56;
    v42 = v74;
    v61 = v39;
    v41(v74, 1, 1, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227D8, &qword_251217F80);
    sub_2511C6790(&qword_27F4227E0, &qword_27F4227D8, &qword_251217F80, v35);
    v57[1] = sub_2511C601C();
    v43 = v65;
    sub_25121163C();
    sub_2511C6074(v42);

    v44 = v71;
    sub_2512119EC();
    v45 = sub_251211A0C();
    v83 = v45;
    v41(v42, 1, 1, v39);
    v63 = MEMORY[0x277CBCD60];
    sub_2511C6790(&qword_27F4227E8, &qword_27F4227B0, &qword_251217F68, MEMORY[0x277CBCD60]);
    v46 = v68;
    v47 = v67;
    sub_25121164C();
    sub_2511C6074(v42);

    (*(v72 + 8))(v44, v73);
    (*(v66 + 8))(v43, v47);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2511C6790(&qword_27F4227F0, &qword_27F4227B8, &qword_251217F70, MEMORY[0x277CBCCF8]);
    v48 = v70;
    sub_25121167C();

    (*(v69 + 8))(v46, v48);
    swift_beginAccess();
    sub_25121155C();
    swift_endAccess();

    sub_251210F4C();
    v49 = v75;
    sub_25121123C();

    v50 = v77;
    v51 = sub_251210F3C();
    (*(v76 + 8))(v49, v50);
    v83 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4227F8, &qword_251217F88);
    sub_2511C6790(&qword_27F422800, &qword_27F4227F8, &qword_251217F88, v62);
    v52 = v78;
    sub_25121165C();

    v53 = sub_251211A0C();
    v83 = v53;
    v41(v42, 1, 1, v61);
    sub_2511C6790(&qword_27F422808, &qword_27F422790, &qword_251217F48, MEMORY[0x277CBCC18]);
    v55 = v80;
    v54 = v81;
    sub_25121163C();
    sub_2511C6074(v42);

    (*(v79 + 8))(v52, v55);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2511C6790(&qword_27F422810, &qword_27F422798, &qword_251217F50, v63);
    v56 = v60;
    sub_25121167C();

    (*(v82 + 8))(v54, v56);
    swift_beginAccess();
    sub_25121155C();
    swift_endAccess();
  }
}

void (*sub_2511C4DE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2511C4E44;
}

void sub_2511C4E44(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2511C4088();
  }
}

uint64_t sub_2511C4F34(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2512115EC();

  return v3;
}

uint64_t sub_2511C5018(char a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_2512115FC();
}

uint64_t sub_2511C5084@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_2511C513C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2512115DC();
  return sub_2511C51E0;
}

void sub_2511C51E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2511C5250()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422710, &qword_251217EA8);
  sub_2512115BC();
  return swift_endAccess();
}

uint64_t sub_2511C52C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422718, &qword_251217EB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422710, &qword_251217EA8);
  sub_2512115CC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2511C53FC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422718, &qword_251217EB0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver__reloadTriggered;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422710, &qword_251217EA8);
  sub_2512115BC();
  swift_endAccess();
  return sub_2511C556C;
}

void sub_2511C556C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_2512115CC();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_2512115CC();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_2511C571C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_reloadListener;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_2511C583C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v53 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422720, &qword_251217EB8);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v48 - v7;
  v8 = sub_2512119FC();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422718, &qword_251217EB0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422728, &qword_251217EC0);
  v15 = *(v14 - 8);
  v55 = v14;
  v56 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422730, &qword_251217EC8);
  v19 = *(v18 - 8);
  v58 = v18;
  v59 = v19;
  MEMORY[0x28223BE20](v18);
  v52 = &v48 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422710, &qword_251217EA8);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  v25 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice;
  *&v5[OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice] = 0;
  *&v5[OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_listeners] = MEMORY[0x277D84FA0];
  v26 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver__reloadTriggered;
  v65 = 1;
  sub_2512115AC();
  (*(v22 + 32))(&v5[v26], v24, v21);
  *&v5[OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_reloadListener] = 0;
  swift_beginAccess();
  v27 = *&v5[v25];
  v28 = v53;
  *&v5[v25] = v53;
  v53 = v28;

  v29 = &v5[OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_action];
  v30 = v50;
  *v29 = v49;
  v29[1] = v30;
  v31 = &v5[OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_reloadAllAction];
  v32 = v62;
  *v31 = v51;
  v31[1] = v32;
  v33 = type metadata accessor for BTSHeadphoneDevicePropertyObserver(0);
  v64.receiver = v5;
  v64.super_class = v33;

  v34 = objc_msgSendSuper2(&v64, sel_init);
  v35 = *((*MEMORY[0x277D85000] & *v34) + 0xC8);
  v36 = v34;
  v35();
  v37 = sub_2511D0070(v10);
  (*(v11 + 8))(v13, v10);
  v63 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422750, qword_251217ED0);
  sub_2511C6790(&qword_27F422758, &qword_27F422750, qword_251217ED0, MEMORY[0x277CBCD90]);
  sub_25121165C();

  v38 = v54;
  sub_2512119EC();
  sub_2511C5FD0();
  v39 = sub_251211A0C();
  v63 = v39;
  v40 = sub_2512119DC();
  v41 = v57;
  (*(*(v40 - 8) + 56))(v57, 1, 1, v40);
  sub_2511C6790(&qword_27F422768, &qword_27F422728, &qword_251217EC0, MEMORY[0x277CBCC18]);
  sub_2511C601C();
  v42 = v52;
  v43 = v55;
  sub_25121164C();
  sub_2511C6074(v41);

  (*(v60 + 8))(v38, v61);
  (*(v56 + 8))(v17, v43);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2511C6790(&qword_27F422778, &qword_27F422730, &qword_251217EC8, MEMORY[0x277CBCCF8]);
  v44 = v58;
  v45 = sub_25121167C();

  (*(v59 + 8))(v42, v44);
  v46 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_reloadListener;
  swift_beginAccess();
  *(v36 + v46) = v45;

  return v36;
}

uint64_t type metadata accessor for BTSHeadphoneDevicePropertyObserver(uint64_t a1)
{
  result = qword_27F423130;
  if (!qword_27F423130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2511C5FD0()
{
  result = qword_27F422760;
  if (!qword_27F422760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F422760);
  }

  return result;
}

unint64_t sub_2511C601C()
{
  result = qword_27F422770;
  if (!qword_27F422770)
  {
    sub_2511C5FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422770);
  }

  return result;
}

uint64_t sub_2511C6074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422720, &qword_251217EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2511C6270()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_listeners;
  swift_beginAccess();
  *&v0[v1] = MEMORY[0x277D84FA0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BTSHeadphoneDevicePropertyObserver(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2511C6438()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2511C64D4(uint64_t a1)
{
  sub_2511C688C(319, &qword_27F422780, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_2511C65CC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *&result[*a2];
    v5 = result;

    v4();
  }

  return result;
}

void sub_2511C6648()
{
  if (qword_27F423110 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();
  __swift_project_value_buffer(v0, qword_27F425638);
  v1 = sub_25121142C();
  v2 = sub_25121197C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_251143000, v1, v2, "btsPropertyObserver: $bobbleCapability changed trigger reload", v3, 2u);
    MEMORY[0x25306E960](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x100))();
  }
}

uint64_t sub_2511C6790(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

void sub_2511C688C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_2511C68F4()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2511C69A4()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___titleView;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___titleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___titleView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    v5 = [objc_opt_self() _preferredFontForTextStyle_weight_];
    [v4 setFont_];

    v6 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = sub_25121176C();
    [v4 setText_];

    [v4 setNumberOfLines_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_2511C6B58(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView] = 0;
  *&v2[OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___titleView] = 0;
  v3 = &v2[OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView_listTitle];
  *v3 = a1;
  *(v3 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for NumberedBulletListContentView();
  v4 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = sub_2511C68F4();
  [v4 addSubview_];

  v6 = OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView;
  [*&v4[OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView] pinToOther_];
  v7 = *&v4[v6];
  v8 = sub_2511C69A4();
  [v7 addArrangedSubview_];

  return v4;
}

void sub_2511C6C74()
{
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs29NumberedBulletListContentView____lazy_storage___titleView) = 0;
  sub_251211C4C();
  __break(1u);
}

void sub_2511C6D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setNumberOfLines_];
  v16 = (*((*MEMORY[0x277D85000] & *v7) + 0xA8))(a1, a2, a3, a4, a5, a6, a7);
  [v15 setAttributedText_];

  v17 = sub_2511C68F4();
  [v17 addArrangedSubview_];
}

void sub_2511C6EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422F70, &qword_251218000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251217D90;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = sub_2511C8A48(0, &qword_27F422840, 0x277D74300);
  *(inited + 40) = a5;
  v13 = *MEMORY[0x277D740C0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  *(inited + 104) = sub_2511C8A48(0, &qword_27F422848, 0x277D75348);
  *(inited + 80) = a6;
  v14 = v11;
  v15 = a5;
  v16 = v13;
  v17 = a6;
  sub_2511C87F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422850, &qword_251218008);
  swift_arrayDestroy();
  v18 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251217FD0;
  v20 = objc_allocWithZone(MEMORY[0x277D742E0]);
  type metadata accessor for OptionKey(0);
  sub_2511C89DC(&qword_27F422858, type metadata accessor for OptionKey, &unk_251218364);
  v21 = sub_25121171C();
  v22 = [v20 initWithTextAlignment:4 location:v21 options:a7];

  *(v19 + 32) = v22;
  sub_2511C8A48(0, &qword_27F422860, 0x277D742E0);
  v23 = sub_25121186C();

  [v18 setTabStops_];

  [v18 setDefaultTabInterval_];
  [v18 setHeadIndent_];

  MEMORY[0x25306D820](9, 0xE100000000000000);
  MEMORY[0x25306D820](a1, a2);
  MEMORY[0x25306D820](10, 0xE100000000000000);
  v24 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v25 = sub_25121176C();
  v26 = [v24 initWithString_];

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_251217FE0;
  v28 = *MEMORY[0x277D74118];
  *(v27 + 32) = *MEMORY[0x277D74118];
  *(v27 + 64) = sub_2511C8A48(0, &qword_27F422868, 0x277D74240);
  *(v27 + 40) = v18;
  v29 = v28;
  v53 = v18;
  sub_2511C87F8(v27);
  swift_setDeallocating();
  sub_2511C8914(v27 + 32);
  type metadata accessor for Key(0);
  sub_2511C89DC(&qword_27F422F90, type metadata accessor for Key, &unk_251218320);
  v30 = sub_25121171C();

  v31 = v26;
  [v31 addAttributes:v30 range:{0, objc_msgSend(v31, sel_length)}];

  v32 = sub_25121171C();
  [v31 addAttributes:v32 range:{0, objc_msgSend(v31, sel_length)}];

  v33 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v34 = sub_25121176C();

  v35 = [v33 initWithString_];

  v36 = sub_25121176C();
  v37 = [v35 rangeOfString_];
  v39 = v38;

  v40 = sub_25121171C();

  [v31 &off_2796AE980 + 5];

  v41 = [v31 string];
  v42 = sub_25121179C();
  v44 = v43;

  v45 = sub_2511C74C4(v42, v44);
  v47 = v46;

  if (!v47)
  {
    goto LABEL_9;
  }

  if (v45 == 10 && v47 == 0xE100000000000000)
  {

    goto LABEL_7;
  }

  v48 = sub_251211CCC();

  if ((v48 & 1) == 0)
  {
LABEL_9:

    v50 = v31;
    goto LABEL_10;
  }

LABEL_7:
  v49 = [v31 length];

  if (!__OFSUB__(v49, 1))
  {
    [v31 deleteCharactersInRange_];
    v50 = v53;
LABEL_10:

    return;
  }

  __break(1u);
}

uint64_t sub_2511C74C4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_25121180C();
  return sub_25121184C();
}

id sub_2511C761C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

char *sub_2511C7668()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_listTitle);
    v5 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_listTitle + 8);
    objc_allocWithZone(type metadata accessor for NumberedBulletListContentView());

    v6 = v5;
    v7 = v0;
    v8 = sub_2511C6B58(v4, v6);
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_2511C7718()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView);
  }

  else
  {
    v4 = [objc_opt_self() configurationWithPointSize:4 weight:39.0];
    v5 = sub_25121176C();
    v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

    v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    v8 = [objc_opt_self() systemGray2Color];
    [v7 setTintColor_];

    v9 = v7;
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v10) = 1148846080;
    [v9 setContentHuggingPriority:1 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [v9 setContentHuggingPriority:0 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [v9 setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [v9 setContentCompressionResistancePriority:1 forAxis:v13];

    v14 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

char *sub_2511C794C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_containerView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList] = 0;
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView] = 0;
  v11 = &v4[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_listTitle];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v4[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_symbol];
  *v12 = a3;
  *(v12 + 1) = a4;
  v45.receiver = v4;
  v45.super_class = type metadata accessor for IconWithNumberedBulletList();
  v13 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_containerView;
  v15 = *&v13[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_containerView];
  v16 = v13;
  v17 = v15;
  v18 = sub_2511C7718();
  [v17 addSubview_];

  v19 = *&v13[v14];
  v20 = sub_2511C7668();
  [v19 &selRef:v20 colorWithAlphaComponent:?];

  v44 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251217FF0;
  v22 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView;
  v23 = [*&v16[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView] leadingAnchor];
  v24 = [*&v13[v14] &selRef_needsResetUI_ + 1];
  v25 = [v23 constraintEqualToAnchor:v24 constant:15.0];

  *(v21 + 32) = v25;
  v26 = [*&v16[v22] topAnchor];
  v27 = [*&v13[v14] topAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v21 + 40) = v28;
  v29 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList;
  v30 = [*&v16[OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList] leadingAnchor];
  v31 = [*&v16[v22] trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:24.0];

  *(v21 + 48) = v32;
  v33 = [*&v16[v29] topAnchor];
  v34 = [*&v13[v14] topAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v21 + 56) = v35;
  v36 = [*&v16[v29] trailingAnchor];
  v37 = [*&v13[v14] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:10.0];

  *(v21 + 64) = v38;
  v39 = [*&v16[v29] bottomAnchor];
  v40 = [*&v13[v14] bottomAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v21 + 72) = v41;
  sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
  v42 = sub_25121186C();

  [v44 activateConstraints_];

  [v16 addSubview_];
  [*&v13[v14] pinToOther_];

  return v16;
}

id sub_2511C7DB8(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_2511C7DFC()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList_containerView;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___numberedBulletedList) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs26IconWithNumberedBulletList____lazy_storage___iconView) = 0;
  sub_251211C4C();
  __break(1u);
}

void sub_2511C7F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v14 = sub_2511C7668();
  (*((*MEMORY[0x277D85000] & *v14) + 0xA0))(a1, a2, a3, a4, a5, a6, a7);
}

id sub_2511C8040(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_2511C811C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2511C81D8()
{
  v0 = sub_25121179C();
  v1 = MEMORY[0x25306D840](v0);

  return v1;
}

uint64_t sub_2511C8214(uint64_t a1)
{
  sub_25121179C();
  sub_2512117FC();
}

uint64_t sub_2511C8268(uint64_t a1)
{
  sub_25121179C();
  sub_251211D1C();
  sub_2512117FC();
  v1 = sub_251211D3C();

  return v1;
}

uint64_t sub_2511C82DC(uint64_t a1, id *a2)
{
  result = sub_25121177C();
  *a2 = 0;
  return result;
}

uint64_t sub_2511C8354(uint64_t a1, id *a2)
{
  v3 = sub_25121178C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2511C83D4@<X0>(uint64_t *a2@<X8>)
{
  sub_25121179C();
  v3 = sub_25121176C();

  *a2 = v3;
  return result;
}

uint64_t sub_2511C8418(void *a1, uint64_t *a2)
{
  v2 = sub_25121179C();
  v4 = v3;
  if (v2 == sub_25121179C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_251211CCC();
  }

  return v7 & 1;
}

uint64_t sub_2511C84A0(uint64_t a1)
{
  v2 = sub_2511C89DC(&qword_27F422F90, type metadata accessor for Key, &unk_251218320);
  v3 = sub_2511C89DC(&qword_27F4228D8, type metadata accessor for Key, &unk_251218174);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2511C855C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25121176C();

  *a2 = v3;
  return result;
}

uint64_t sub_2511C85A4(uint64_t a1)
{
  v2 = sub_2511C89DC(&qword_27F422858, type metadata accessor for OptionKey, &unk_251218364);
  v3 = sub_2511C89DC(&qword_27F4228D0, type metadata accessor for OptionKey, &unk_251218280);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_2511C8660(uint64_t a1)
{
  sub_25121179C();
  sub_251211D1C();
  sub_2512117FC();
  v2 = sub_251211D3C();

  return sub_2511C86F4(a1, v2);
}

unint64_t sub_2511C86F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_25121179C();
      v8 = v7;
      if (v6 == sub_25121179C() && v8 == v9)
      {
        break;
      }

      v11 = sub_251211CCC();

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

unint64_t sub_2511C87F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4228E0, &qword_2512183A8);
    v3 = sub_251211C8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2511C8C40(v4, &v11);
      v5 = v11;
      result = sub_2511C8660(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2511C8CB0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2511C8914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422850, &qword_251218008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2511C8990(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2511C89DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2511C8A48(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2511C8C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422850, &qword_251218008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2511C8CB0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2511C8CF0()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F425658);
  __swift_project_value_buffer(v0, qword_27F425658);
  return sub_25121143C();
}

uint64_t sub_2511C8D68()
{
  if (qword_27F423740 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F425658);
}

uint64_t sub_2511C8DCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F423740 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F425658);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2511C8E74(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HPSAdaptiveVolumeSliderCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_251210D1C();

  return v4;
}

uint64_t AAAutoANCStrength.description.getter(int a1)
{
  if (a1 > 1049)
  {
    if (a1 == 1100)
    {
      return 1751607624;
    }

    if (a1 == 1050)
    {
      return 0x6D756964656DLL;
    }
  }

  else
  {
    if (!a1)
    {
      return 1061109567;
    }

    if (a1 == 1000)
    {
      return 7827308;
    }
  }

  type metadata accessor for AAAutoANCStrength();
  result = sub_251211CDC();
  __break(1u);
  return result;
}

void type metadata accessor for AAAutoANCStrength()
{
  if (!qword_280B19800)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280B19800);
    }
  }
}

uint64_t sub_2511C9044(int a1)
{
  v1 = 0;
  if (a1 <= 1049)
  {
    if (a1)
    {
      if (a1 == 1000)
      {
        return 2;
      }

      goto LABEL_9;
    }

    return v1;
  }

  if (a1 == 1100)
  {
    return v1;
  }

  if (a1 == 1050)
  {
    return 1;
  }

LABEL_9:
  type metadata accessor for AAAutoANCStrength();
  result = sub_251211CDC();
  __break(1u);
  return result;
}

uint64_t sub_2511C90C0(uint64_t a1)
{
  v2 = 0;
  v3 = *v1;
  if (*v1 > 1049)
  {
    if (v3 == 1100)
    {
      return v2;
    }

    if (v3 == 1050)
    {
      return 1;
    }
  }

  else
  {
    if (!v3)
    {
      return v2;
    }

    if (v3 == 1000)
    {
      return 2;
    }
  }

  result = sub_251211CDC();
  __break(1u);
  return result;
}

char **sub_2511C9134()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider);
  }

  else
  {
    v3 = v0;
    v27 = OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229C8, &qword_251218500);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229D0, &qword_251219310);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2512183C0;
    type metadata accessor for HPSAdaptiveVolumeSliderCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = objc_opt_self();
    v7 = [v6 bundleForClass_];
    v8 = sub_251210D1C();
    v10 = v9;

    *(v4 + 32) = v8;
    *(v4 + 40) = v10;
    v11 = [v6 bundleForClass_];
    v12 = sub_251210D1C();
    v14 = v13;

    *(v4 + 48) = v12;
    *(v4 + 56) = v14;
    v15 = [v6 bundleForClass_];
    v16 = sub_251210D1C();
    v18 = v17;

    *(v4 + 64) = v16;
    *(v4 + 72) = v18;
    v19 = sub_2511EEC0C(v4, &unk_286338320);
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_2511C6790(&qword_27F4229D8, &qword_27F4229C8, &qword_251218500, &unk_251219240);
    v28[0] = sub_25121157C();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    sub_25121159C();
    sub_25121167C();

    v23 = (*((*MEMORY[0x277D85000] & *v3) + 0x90))(v28);
    sub_25121155C();

    v23(v28, 0);
    v24 = *(v3 + v27);
    *(v3 + v27) = v19;
    v2 = v19;

    v1 = 0;
  }

  v25 = v1;
  return v2;
}

uint64_t sub_2511C9504(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider) = a1;
  return MEMORY[0x2821F96F8](a1, v2);
}

void (*sub_2511C9518(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2511C9134();
  return sub_2511C9560;
}

void sub_2511C9560(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider);
  *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider) = v2;
}

void sub_2511C95F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4228F8, &qword_2512183E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v76 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422900, &qword_2512183E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v76 - v7;
  v9 = sub_251211ABC();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422908, &qword_2512183F0);
  v83 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422910, &qword_2512183F8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v76 - v17;
  if (!a1)
  {
    __break(1u);
    return;
  }

  if ([a1 userInfo])
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v87 = 0u;
    v88 = 0u;
  }

  v89 = v87;
  v90 = v88;
  if (!*(&v88 + 1))
  {
    goto LABEL_15;
  }

  v82 = v16;
  sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v80 = v15;
  v19 = v86;
  v20 = sub_25121176C();
  v81 = v19;
  v21 = [v19 objectForKey_];

  if (v21)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v87 = 0u;
    v88 = 0u;
  }

  v89 = v87;
  v90 = v88;
  if (!*(&v88 + 1))
  {

LABEL_15:
    sub_2511CCD34(&v89, &unk_27F422EB0, &unk_251218400);
    goto LABEL_16;
  }

  sub_25121102C();
  if (swift_dynamicCast())
  {
    v22 = v86;
    v78 = OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice;
    v23 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice);
    *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice) = v86;
    v24 = v22;

    v25 = v1;
    sub_251210F4C();
    v79 = v24;

    sub_25121120C();

    sub_251211AAC();
    v26 = v84;
    (*(v84 + 56))(v8, 1, 1, v85);
    v77 = [objc_opt_self() mainRunLoop];
    *&v89 = v77;
    v27 = sub_251211A9C();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    sub_2511C8A48(0, &qword_27F422928, 0x277CBEB88);
    sub_2511C6790(&qword_27F422930, &qword_27F422908, &qword_2512183F0, MEMORY[0x277D0FBA0]);
    sub_2511CC440();
    sub_25121162C();
    sub_2511CCD34(v5, &qword_27F4228F8, &qword_2512183E0);

    sub_2511CCD34(v8, &qword_27F422900, &qword_2512183E8);
    (*(v26 + 8))(v11, v85);
    (*(v83 + 8))(v14, v12);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    sub_2511C6790(&qword_27F422940, &qword_27F422910, &qword_2512183F8, MEMORY[0x277CBCC48]);
    v31 = v80;
    sub_25121167C();

    (*(v82 + 8))(v18, v31);
    v32 = MEMORY[0x277D85000];
    v33 = (*((*MEMORY[0x277D85000] & *v25) + 0x90))(&v89);
    sub_25121155C();

    v33(&v89, 0);
    v34 = [v25 contentView];
    v35 = [v34 subviews];

    sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
    v36 = sub_25121187C();

    v37 = *((*v32 & *v25) + 0x68);
    v38 = v37();
    *&v89 = v38;
    MEMORY[0x28223BE20](v38);
    *(&v76 - 2) = &v89;
    v39 = sub_2511CC5CC(sub_2511CC9DC, (&v76 - 4), v36);

    v41 = v25;
    v42 = (v37)(v40);
    v43 = v42;
    if (v39)
    {
      [v42 layoutIfNeeded];

      [v41 layoutIfNeeded];
    }

    else
    {
      sub_251210F4C();
      v49 = sub_2512111EC();

      LODWORD(v89) = v49;
      (*((*v32 & *v43) + 0xC8))(&v89);

      v50 = v41;
      v51 = [v41 contentView];
      v52 = v37();
      [v51 addSubview_];

      v53 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_2512183D0;
      v55 = v37();
      v56 = [v55 topAnchor];

      v57 = [v50 contentView];
      v58 = [v57 topAnchor];

      v59 = [v56 constraintEqualToAnchor:v58 constant:0.0];
      *(v54 + 32) = v59;
      v60 = v37();
      v61 = [v60 leadingAnchor];

      v62 = [v50 contentView];
      v63 = [v62 leadingAnchor];

      v64 = [v61 constraintEqualToAnchor:v63 constant:20.0];
      *(v54 + 40) = v64;
      v65 = v37();
      v66 = [v65 trailingAnchor];

      v67 = [v50 contentView];
      v68 = [v67 trailingAnchor];

      v69 = [v66 constraintEqualToAnchor:v68 constant:-20.0];
      *(v54 + 48) = v69;
      v70 = v37();
      v71 = [v70 bottomAnchor];

      v72 = [v50 contentView];
      v73 = [v72 bottomAnchor];

      v74 = [v71 constraintEqualToAnchor:v73 constant:0.0];
      *(v54 + 56) = v74;
      sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
      v75 = sub_25121186C();

      [v53 activateConstraints_];
    }

    return;
  }

LABEL_16:
  if (qword_27F423740 != -1)
  {
    swift_once();
  }

  v44 = sub_25121144C();
  __swift_project_value_buffer(v44, qword_27F425658);
  v45 = sub_25121142C();
  v46 = sub_25121196C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v89 = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_2511CBE4C(0xD00000000000001ALL, 0x8000000251220BA0, &v89);
    _os_log_impl(&dword_251143000, v45, v46, "%s HPSAdaptiveVolumeSliderCell Depedencies not meet, bailing out of HPSAdaptiveVolumeSliderCell refresh", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x25306E960](v48, -1, -1);
    MEMORY[0x25306E960](v47, -1, -1);
  }
}

id sub_2511CA304(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_25121176C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id sub_2511CA394(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider] = 0;
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice] = 0;
  if (a3)
  {
    v7 = sub_25121176C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for HPSAdaptiveVolumeSliderCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_2511CA4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_25121176C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id sub_2511CA554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice] = 0;
  if (a3)
  {
    v5 = sub_25121176C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HPSAdaptiveVolumeSliderCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id sub_2511CA6CC(void *a1)
{
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider] = 0;
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_listeners] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HPSAdaptiveVolumeSliderCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_2511CA858(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id sub_2511CA90C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25121176C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_2511CA984(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection] = 0;
  if (a2)
  {
    v5 = sub_25121176C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HPSAdaptiveVolumeDetailController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

void sub_2511CAA90()
{
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_listeners) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection) = 0;
  sub_251211C4C();
  __break(1u);
}

uint64_t sub_2511CABA0()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection;
  if (*&v0[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection])
  {
    v2 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection];
  }

  else
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422998, &qword_2512184D0);
    type metadata accessor for HPSAdaptiveVolumeSliderCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_251210D1C();
    v8 = v7;

    v9 = sub_2511D4478();
    v11 = sub_2511D4484(v9, v10, v6, v8);
    v12 = (*(*v11 + 144))(sub_2511CAE50, 0);

    v21 = type metadata accessor for HPSAdaptiveVolumeDetailController();
    *&v20 = v3;
    v13 = v3;
    v14 = sub_2511D3E4C();
    v15 = sub_2511D4428(0, 0, 0, 0, &v20, 0, 0, -1, v22, 0, v14 & 1, 0, 0, 0, 0);
    v16 = (*(*v12 + 160))(v22, v15);

    sub_2511CCA6C(v22);
    v23 = v13;
    v17 = (*(*v16 + 168))(sub_2511CCAC0, v22);

    v2 = (*(*v17 + 176))(v18);

    *&v3[v1] = v2;
  }

  return v2;
}

void sub_2511CAE50(void *a1)
{
  type metadata accessor for HPSAdaptiveVolumeSliderCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_251210D1C();

  v4 = sub_25121176C();

  [a1 setProperty:v4 forKey:{*MEMORY[0x277D3FF88], 0xE000000000000000}];
}

uint64_t (*sub_2511CAF74(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2511CABA0();
  return sub_2511CAFBC;
}

void sub_2511CAFD4()
{
  v1 = [v0 specifier];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 userInfo];

  if (v3)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
LABEL_15:
    sub_2511CCD34(&v29, &unk_27F422EB0, &unk_251218400);
    goto LABEL_16;
  }

  sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
  if (swift_dynamicCast())
  {
    v4 = v26;
    v5 = sub_25121176C();
    v6 = [v26 objectForKey_];

    if (v6)
    {
      sub_251211B5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      sub_2511C8A48(0, &qword_27F422968, off_2796ACA80);
      if (swift_dynamicCast())
      {
        v7 = v26;
        v8 = [v26 headphoneDevice];
        if (v8)
        {
          v9 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice];
          *&v0[OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice] = v8;
          v10 = v8;

          v25.receiver = v0;
          v25.super_class = type metadata accessor for HPSAdaptiveVolumeDetailController();
          objc_msgSendSuper2(&v25, sel_viewDidLoad);
          v11 = [v0 navigationItem];
          type metadata accessor for HPSAdaptiveVolumeSliderCell();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v13 = [objc_opt_self() bundleForClass_];
          sub_251210D1C();

          v14 = sub_25121176C();

          [v11 setTitle_];

          return;
        }
      }

      else
      {
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:
  if (qword_27F423740 != -1)
  {
    swift_once();
  }

  v15 = sub_25121144C();
  __swift_project_value_buffer(v15, qword_27F425658);
  v16 = sub_25121142C();
  v17 = sub_25121196C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v29 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2511CBE4C(0x4C64694477656976, 0xED0000292864616FLL, &v29);
    *(v18 + 12) = 2080;
    sub_25121108C();
    v20 = sub_25121107C();
    sub_25121106C();

    sub_25121102C();
    v21 = sub_25121174C();
    v23 = v22;

    v24 = sub_2511CBE4C(v21, v23, &v29);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_251143000, v16, v17, "%s: HPSAdaptiveVolumeDetailController Depedencies not meet! %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v19, -1, -1);
    MEMORY[0x25306E960](v18, -1, -1);
  }
}

char *sub_2511CB4CC()
{
  if (*(v0 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422978, qword_251218410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251217FE0;
    *(inited + 32) = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
    v2 = sub_2511CB83C(inited);
    swift_setDeallocating();
    sub_2511CCD34(inited + 32, &qword_27F422980, &qword_251219A90);
    sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
    v3 = sub_25121186C();
    v4 = sub_25121176C();
    [v0 setValue:v3 forKey:v4];

    v5 = sub_2511CBB34(v2);
  }

  else
  {
    sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
    v6 = sub_25121186C();
    v7 = sub_25121176C();
    [v0 setValue:v6 forKey:v7];

    if (qword_27F423740 != -1)
    {
      swift_once();
    }

    v8 = sub_25121144C();
    __swift_project_value_buffer(v8, qword_27F425658);
    v9 = sub_25121142C();
    v10 = sub_25121196C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_2511CBE4C(0x6569666963657073, 0xEC00000029287372, &v19);
      *(v11 + 12) = 2080;
      sub_25121108C();
      v13 = sub_25121107C();
      sub_25121106C();

      sub_25121102C();
      v14 = sub_25121174C();
      v16 = v15;

      v17 = sub_2511CBE4C(v14, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_251143000, v9, v10, "%s: HPSAdaptiveVolumeDetailController Depedencies not meet! %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306E960](v12, -1, -1);
      MEMORY[0x25306E960](v11, -1, -1);
    }

    return 0;
  }

  return v5;
}

uint64_t sub_2511CB83C(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v27 = a1 + 32;
  v3 = &qword_27F422980;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_251211B8C();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_251211B8C();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_251211B8C();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_251211BDC();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_2511C6790(&qword_27F422990, v3, &qword_251219A90, MEMORY[0x277D83988]);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_251219A90);
        v18 = v3;
        v19 = sub_2511CC954(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_251211B8C();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

char *sub_2511CBB34(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_251211B8C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2511CC824(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x25306DBD0](i, a1);
        sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2511CC824((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2511C8CB0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2511CC824((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2511C8CB0(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_2511CBDB8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2511CBE4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2511CBF18(v11, 0, 0, 1, a1, a2);
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
    sub_2511CCD94(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2511CBF18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2511CC024(a5, a6);
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
    result = sub_251211BEC();
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

void *sub_2511CC024(uint64_t a1, unint64_t a2)
{
  v3 = sub_2511CC070(a1, a2);
  sub_2511CC1A0(&unk_286338350);
  return v3;
}

void *sub_2511CC070(uint64_t a1, unint64_t a2)
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

  v6 = sub_2511CC28C(v5, 0);
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

  result = sub_251211BEC();
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
        v10 = sub_25121182C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2511CC28C(v10, 0);
        result = sub_251211BAC();
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

uint64_t sub_2511CC1A0(uint64_t result)
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

  result = sub_2511CC300(result, v11, 1, v3);
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

void *sub_2511CC28C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229C0, &unk_251218950);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2511CC300(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229C0, &unk_251218950);
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

unint64_t sub_2511CC440()
{
  result = qword_27F422938;
  if (!qword_27F422938)
  {
    sub_2511C8A48(255, &qword_27F422928, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422938);
  }

  return result;
}

void sub_2511CC4A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = MEMORY[0x277D85000];
      v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x68))();
      sub_251210F4C();
      v6 = sub_2512111EC();

      v7 = v6;
      (*((*v4 & *v5) + 0xC8))(&v7);
    }

    else
    {
    }
  }
}

uint64_t sub_2511CC5CC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x25306DBD0](v5, a3);
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
      v13 = sub_251211B8C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_2511CC6F4(uint64_t a1, uint64_t a2)
{
  sub_251211D1C();
  sub_2512117FC();
  v4 = sub_251211D3C();

  return sub_2511CC76C(a1, a2, v4);
}

unint64_t sub_2511CC76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_251211CCC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_2511CC824(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2511CC844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2511CC844(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422988, &unk_251219200);
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
    v10 = MEMORY[0x277D84F90];
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

void (*sub_2511CC954(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25306DBD0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2511CC9D4;
  }

  __break(1u);
  return result;
}

void sub_2511CCAC0(void *a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for HPSAdaptiveVolumeSliderCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229A0, &qword_2512184D8);
  [a1 setProperty:sub_251211CEC() forKey:*MEMORY[0x277D3FE58]];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229A8, &qword_2512184E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251217FE0;
  *(inited + 32) = 0x6E6F687064616568;
  v5 = inited + 32;
  *(inited + 40) = 0xEF65636976654465;
  v6 = *(v3 + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice);
  if (v6)
  {
    *(inited + 48) = v6;
    v7 = inited;
    v8 = v6;
    sub_2511CCC30(v7);
    swift_setDeallocating();
    sub_2511CCD34(v5, &qword_27F4229B0, &qword_2512184E8);
    sub_25121102C();
    v9 = sub_25121171C();

    [a1 setUserInfo_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2511CCC30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229B8, &unk_2512184F0);
    v3 = sub_251211C8C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2511CC6F4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2511CCD34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2511CCD94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2511CCE30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice);
    if (v2 && (swift_beginAccess(), (v3 = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v4 = v3;
      v5 = qword_27F423740;
      v6 = v2;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = sub_25121144C();
      __swift_project_value_buffer(v7, qword_27F425658);
      v8 = v4;
      v9 = sub_25121142C();
      v10 = sub_25121197C();

      v11 = os_log_type_enabled(v9, v10);
      v12 = MEMORY[0x277D85000];
      if (v11)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v19 = v14;
        *v13 = 136315394;
        *(v13 + 4) = sub_2511CBE4C(0x726564696C73, 0xE600000000000000, &v19);
        *(v13 + 12) = 2080;
        (*((*v12 & *v8) + 0xC0))(&v18);
        v15 = sub_2512119CC();
        v17 = sub_2511CBE4C(v15, v16, &v19);

        *(v13 + 14) = v17;
        v12 = MEMORY[0x277D85000];
        _os_log_impl(&dword_251143000, v9, v10, "%s: HPSAdaptiveVolumeSliderCell %s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25306E960](v14, -1, -1);
        MEMORY[0x25306E960](v13, -1, -1);
      }

      sub_251210F4C();
      (*((*v12 & *v8) + 0xC0))(&v19);
      sub_2512111FC();
    }

    else
    {
    }
  }
}

uint64_t sub_2511CD0D4()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F425670);
  __swift_project_value_buffer(v0, qword_27F425670);
  return sub_25121143C();
}

uint64_t sub_2511CD154()
{
  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F425670);
}

uint64_t sub_2511CD1B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F425670);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2511CD36C(void *a1)
{
  v2 = sub_25121131C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A00, &qword_251218520);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A08, &qword_251218528);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v38 = a1;
  sub_251210FAC();
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229F0, &qword_251218518);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A20, &unk_251218538);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
    }
  }

  else
  {
    sub_2511CCD34(v39, &qword_27F4229E8, &qword_251218510);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
  }

  sub_2511CFF18(&v41, v39, &qword_27F422A10, &qword_251218530);
  if (v40)
  {
    __swift_project_boxed_opaque_existential_0Tm(v39, v40);
    sub_25121132C();
    v16 = *(v3 + 56);
    v16(v15, 0, 1, v2);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    sub_2511CCD34(v39, &qword_27F422A10, &qword_251218530);
    v16 = *(v3 + 56);
    v16(v15, 1, 1, v2);
  }

  (*(v3 + 104))(v13, *MEMORY[0x277D0FC20], v2);
  v16(v13, 0, 1, v2);
  v17 = *(v5 + 48);
  sub_2511CFF18(v15, v7, &qword_27F422A08, &qword_251218528);
  sub_2511CFF18(v13, &v7[v17], &qword_27F422A08, &qword_251218528);
  v18 = *(v3 + 48);
  if (v18(v7, 1, v2) == 1)
  {
    sub_2511CCD34(v13, &qword_27F422A08, &qword_251218528);
    sub_2511CCD34(v15, &qword_27F422A08, &qword_251218528);
    if (v18(&v7[v17], 1, v2) == 1)
    {
      sub_2511CCD34(v7, &qword_27F422A08, &qword_251218528);
      v19 = 1;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v20 = v37;
  sub_2511CFF18(v7, v37, &qword_27F422A08, &qword_251218528);
  if (v18(&v7[v17], 1, v2) == 1)
  {
    sub_2511CCD34(v13, &qword_27F422A08, &qword_251218528);
    sub_2511CCD34(v15, &qword_27F422A08, &qword_251218528);
    (*(v3 + 8))(v20, v2);
LABEL_13:
    sub_2511CCD34(v7, &qword_27F422A00, &qword_251218520);
    v19 = 0;
    goto LABEL_15;
  }

  v21 = v36;
  (*(v3 + 32))(v36, &v7[v17], v2);
  sub_2511CFF80();
  v19 = sub_25121175C();
  v22 = *(v3 + 8);
  v22(v21, v2);
  sub_2511CCD34(v13, &qword_27F422A08, &qword_251218528);
  sub_2511CCD34(v15, &qword_27F422A08, &qword_251218528);
  v22(v20, v2);
  sub_2511CCD34(v7, &qword_27F422A08, &qword_251218528);
LABEL_15:
  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v23 = sub_25121144C();
  __swift_project_value_buffer(v23, qword_27F425670);
  v24 = v38;
  v25 = sub_25121142C();
  v26 = sub_25121197C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39[0] = v28;
    *v27 = 136315650;
    *(v27 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, v39);
    *(v27 + 12) = 1024;
    *(v27 + 14) = v19 & 1;
    *(v27 + 18) = 2080;
    v29 = v24;
    v30 = [v29 description];
    v31 = sub_25121179C();
    v33 = v32;

    v34 = sub_2511CBE4C(v31, v33, v39);

    *(v27 + 20) = v34;
    _os_log_impl(&dword_251143000, v25, v26, "%s isModernDevice: %{BOOL}d %s", v27, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v28, -1, -1);
    MEMORY[0x25306E960](v27, -1, -1);
  }

  sub_2511CCD34(&v41, &qword_27F422A10, &qword_251218530);
  return v19 & 1;
}

Swift::Void __swiftcall HeadphoneSettingsController.setupShowLegacyHPSButton()()
{
  v1 = v0;
  sub_25121108C();
  v2 = sub_25121107C();
  v3 = sub_25121104C();

  if ((v3 & 1) != 0 && os_variant_has_internal_ui())
  {
    v4 = [v1 navigationController];
    if (!v4)
    {
      goto LABEL_35;
    }

    v5 = v4;
    v6 = [v4 viewControllers];

    sub_2511C8A48(0, &qword_27F4229E0, 0x277D75D28);
    v7 = sub_25121187C();

    v34[0] = MEMORY[0x277D84F90];
    if (v7 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
    {
      v33 = v1;
      v1 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25306DBD0](v1, v7);
        }

        else
        {
          if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v9 = *(v7 + 8 * v1 + 32);
        }

        v10 = v9;
        v11 = (v1 + 1);
        if (__OFADD__(v1, 1))
        {
          break;
        }

        v12 = [v9 childViewControllers];
        v13 = sub_25121187C();

        if (v13 >> 62)
        {
          if (!sub_251211B8C())
          {
LABEL_7:

            goto LABEL_8;
          }
        }

        else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_7;
        }

        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x25306DBD0](0, v13);
        }

        else
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v14 = *(v13 + 32);
        }

        v15 = v14;

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          sub_251211BFC();
          sub_251211C2C();
          sub_251211C3C();
          sub_251211C0C();
        }

        else
        {
        }

LABEL_8:
        ++v1;
        if (v11 == i)
        {
          v1 = v33;
          v16 = v34[0];
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_31:

    if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
    {
      v17 = sub_251211B8C();
    }

    else
    {
      v17 = *(v16 + 16);
    }

    if (!v17)
    {
LABEL_35:
      v18 = sub_25121176C();
      CFPreferencesAppSynchronize(v18);

      v19 = sub_25121176C();
      v20 = sub_25121176C();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v19, v20, 0);

      if (AppBooleanValue)
      {
        v22 = sub_25121130C();
        v34[3] = v22;
        v34[0] = v1;
        v23 = v1;
        v24 = sub_25121176C();
        if (v22)
        {
          v25 = __swift_project_boxed_opaque_existential_0Tm(v34, v22);
          v26 = *(v22 - 8);
          MEMORY[0x28223BE20](v25);
          v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v26 + 16))(v28);
          v29 = sub_251211CBC();
          (*(v26 + 8))(v28, v22);
          __swift_destroy_boxed_opaque_existential_0(v34);
        }

        else
        {
          v29 = 0;
        }

        v30 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v24 style:2 target:v29 action:sel_showLegacyHPS];

        swift_unknownObjectRelease();
        v31 = [v23 navigationItem];
        [v31 setRightBarButtonItem_];
      }
    }
  }
}

uint64_t static HPSHeadphoneConfigController.modernHPSFFEnabled()()
{
  sub_25121108C();
  v0 = sub_25121107C();
  v1 = sub_25121104C();

  return v1 & 1;
}

Swift::Void __swiftcall HPSHeadphoneConfigController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  objc_msgSendSuper2(&v51, sel_viewWillAppear_, a1);
  v3 = sub_2511CE7BC();
  if (!v3)
  {
    goto LABEL_33;
  }

  v4 = v3;
  v5 = [v3 headphoneDevice];

  if (!v5)
  {
    goto LABEL_33;
  }

  v6 = sub_2511CE7BC();
  if (!v6 || (v7 = v6, v8 = [v6 headphoneDevice], v7, !v8))
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    goto LABEL_9;
  }

  sub_251210FAC();

  if (!*(&v54 + 1))
  {
LABEL_9:
    sub_2511CCD34(&v53, &qword_27F4229E8, &qword_251218510);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229F0, &qword_251218518);
  sub_2512111CC();
  if (!swift_dynamicCast())
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = v52;
LABEL_11:

  sub_25121108C();
  v10 = sub_25121107C();
  v11 = sub_25121104C();

  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v12 = sub_25121144C();
  __swift_project_value_buffer(v12, qword_27F425670);
  v13 = sub_25121142C();
  v14 = sub_25121197C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v53 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_2511CBE4C(0x65646F4D776F6873, 0xEC00000049556E72, &v53);
    *(v15 + 12) = 1024;
    *(v15 + 14) = v11 & 1;
    *(v15 + 18) = 1024;
    *(v15 + 20) = v9 == 0;
    _os_log_impl(&dword_251143000, v13, v14, "%s showModernUI: %{BOOL}d %{BOOL}d", v15, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25306E960](v16, -1, -1);
    MEMORY[0x25306E960](v15, -1, -1);
  }

  if ((v11 & (v9 == 0)) == 1)
  {
    sub_25121130C();
    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v18 = [v2 specifier];
    [v17 setSpecifier_];

    v19 = v5;
    sub_2512112FC();
    HeadphoneSettingsController.setupShowLegacyHPSButton()();
    if (os_variant_has_internal_ui())
    {
      v20 = sub_25121176C();
      CFPreferencesAppSynchronize(v20);

      v21 = sub_25121176C();
      v22 = sub_25121176C();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v21, v22, 0);

      if (AppBooleanValue)
      {
        v24 = v17;
        v25 = [v24 view];
        if (!v25)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v26 = v25;
        v27 = [v25 layer];

        v28 = [objc_opt_self() redColor];
        v29 = [v28 CGColor];

        [v27 setBorderColor_];
        v30 = [v24 view];

        if (!v30)
        {
LABEL_46:
          __break(1u);
          return;
        }

        v31 = [v30 layer];

        [v31 setBorderWidth_];
      }
    }

    [v17 reloadSpecifiers];
    v32 = v17;
    v33 = [v32 view];
    if (v33)
    {
      v34 = v33;
      [v33 removeFromSuperview];

      [v2 removeChildViewController_];
      v35 = [v2 navigationController];
      if (!v35)
      {

        return;
      }

      v36 = v35;
      v37 = [v35 viewControllers];

      sub_2511C8A48(0, &qword_27F4229E0, 0x277D75D28);
      v38 = sub_25121187C();

      if (v38 >> 62)
      {
        if (sub_251211B8C())
        {
          goto LABEL_25;
        }
      }

      else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_25:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v38 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v38 = sub_2511CED3C(v38);
        }

        v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v40)
        {
          v41 = v40 - 1;
          v42 = *((v38 & 0xFFFFFFFFFFFFFF8) + 8 * v41 + 0x20);
          *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) = v41;

          *&v53 = v38;
          MEMORY[0x25306D860]();
          if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_30;
          }

          goto LABEL_43;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        sub_25121189C();
LABEL_30:
        sub_2512118AC();
        v43 = [v2 navigationController];
        if (v43)
        {
          v44 = v43;
          v45 = sub_25121186C();

          [v44 setViewControllers:v45 animated:0];
        }

        else
        {
        }

        return;
      }

      __break(1u);
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_33:
  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v46 = sub_25121144C();
  __swift_project_value_buffer(v46, qword_27F425670);
  v47 = sub_25121142C();
  v48 = sub_25121197C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v53 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_2511CBE4C(0xD000000000000012, 0x8000000251220DC0, &v53);
    _os_log_impl(&dword_251143000, v47, v48, "%s Showing legacy HPS", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x25306E960](v50, -1, -1);
    MEMORY[0x25306E960](v49, -1, -1);
  }
}

uint64_t sub_2511CE7BC()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27F423748);
  swift_endAccess();
  if (v1)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_2511C8A48(0, &qword_27F422968, off_2796ACA80);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_2511CCD34(v6, &unk_27F422EB0, &unk_251218400);
  }

  return 0;
}

Swift::Void __swiftcall HPSHeadphoneConfigController.setSpecifier(_:)(PSSpecifier_optional *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  if ([(PSSpecifier_optional *)a1 userInfo])
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
LABEL_16:
    sub_2511CCD34(&v13, &unk_27F422EB0, &unk_251218400);
    goto LABEL_17;
  }

  sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
  if (swift_dynamicCast())
  {
    v3 = v9;
    v4 = [objc_opt_self() deviceKey];
    if (!v4)
    {
      sub_25121179C();
      v4 = sub_25121176C();
    }

    v5 = [v9 objectForKey_];

    if (v5)
    {
      sub_251211B5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13 = v11;
    v14 = v12;
    if (*(&v12 + 1))
    {
      sub_2511C8A48(0, &qword_27F422968, off_2796ACA80);
      if (swift_dynamicCast())
      {
        v6 = v9;
        v8.receiver = v1;
        v8.super_class = HPSHeadphoneConfigController;
        [(PSSpecifier_optional *)&v8 setSpecifier:a1];
        swift_beginAccess();
        v7 = v6;
        objc_setAssociatedObject(v1, &unk_27F423748, v7, 1);
        swift_endAccess();

        return;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  v10.receiver = v1;
  v10.super_class = HPSHeadphoneConfigController;
  [(PSSpecifier_optional *)&v10 setSpecifier:a1];
}

BOOL HeadphoneSettingsController.forceShowLegacyButton.getter()
{
  v0 = sub_25121176C();
  CFPreferencesAppSynchronize(v0);

  v1 = sub_25121176C();
  v2 = sub_25121176C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, 0);

  return AppBooleanValue != 0;
}

void sub_2511CEC64(void *a1)
{
  v2 = objc_allocWithZone(BTSDeviceConfigController);
  v7 = a1;
  v3 = [v2 init];
  v4 = [v7 specifier];
  [v3 setSpecifier_];

  v5 = [v7 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v3 animated:1];
  }
}

uint64_t sub_2511CED3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_251211B8C();
  }

  return sub_251211BDC();
}

void _sSo28HPSHeadphoneConfigControllerC16HeadphoneConfigsE23_controllerForSpecifierySo06PSViewC0CSo11PSSpecifierCFZ_0(void *a1)
{
  p_class_meths = &OBJC_PROTOCOL___NSObject.class_meths;
  if (qword_27F423750 != -1)
  {
    swift_once();
  }

  v3 = sub_25121144C();
  v4 = __swift_project_value_buffer(v3, qword_27F425670);
  v5 = a1;
  v6 = sub_25121142C();
  v7 = sub_25121197C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v4;
    v123 = v3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v126 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v126);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v5;
    *v10 = v5;
    *(v9 + 22) = 2080;
    if ([v5 userInfo])
    {
      sub_251211B5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v128 = 0u;
      v129 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EB0, &unk_251218400);
    v12 = sub_2512117CC();
    v14 = sub_2511CBE4C(v12, v13, &v126);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_251143000, v6, v7, "%s specifier: %@ %s", v9, 0x20u);
    sub_2511CCD34(v10, &qword_27F4229F8, &qword_251218D50);
    MEMORY[0x25306E960](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v11, -1, -1);
    MEMORY[0x25306E960](v9, -1, -1);

    v4 = v8;
    v3 = v123;
    p_class_meths = &OBJC_PROTOCOL___NSObject.class_meths;
  }

  else
  {
  }

  if ([v5 userInfo])
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v126 = 0u;
    v127 = 0u;
  }

  v128 = v126;
  v129 = v127;
  if (!*(&v127 + 1))
  {
    sub_2511CCD34(&v128, &unk_27F422EB0, &unk_251218400);
    goto LABEL_28;
  }

  sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    if (qword_27F423750 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_27F425670);
    v28 = sub_25121142C();
    v29 = sub_25121196C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v128 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
      _os_log_impl(&dword_251143000, v28, v29, "%s HPSDiscovery: No inputDevice! return nil for HPSDevice", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25306E960](v31, -1, -1);
      MEMORY[0x25306E960](v30, -1, -1);
    }

    v19 = 0;
    goto LABEL_33;
  }

  v15 = v4;
  v16 = v125;
  v121 = objc_opt_self();
  v17 = [v121 deviceKey];
  if (!v17)
  {
    sub_25121179C();
    v17 = sub_25121176C();
  }

  v18 = [v125 objectForKey_];

  if (v18)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v126 = 0u;
    v127 = 0u;
  }

  v128 = v126;
  v129 = v127;
  if (!*(&v127 + 1))
  {

    sub_2511CCD34(&v128, &unk_27F422EB0, &unk_251218400);
    goto LABEL_28;
  }

  sub_2511C8A48(0, &qword_27F422968, off_2796ACA80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v19 = v125;
  v20 = [v125 headphoneDevice];
  v117 = v5;
  if (!v20)
  {
    sub_25121108C();
    v44 = sub_25121103C();
    v5 = v44;
    if (v44 >> 62)
    {
      v45 = sub_251211B8C();
      if (v45)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
LABEL_39:
        v46 = 4;
        v118 = v45;
        v124 = v3;
        while (1)
        {
          v21 = (v46 - 4);
          if ((v5 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x25306DBD0](v46 - 4, v5);
            v48 = v46 - 3;
            if (__OFADD__(v21, 1))
            {
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }
          }

          else
          {
            if (v21 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_84;
            }

            v47 = *(v5 + 8 * v46);
            v48 = v46 - 3;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_51;
            }
          }

          v49 = v15;
          v50 = v47;
          v51 = sub_25121101C();
          v53 = v52;
          v54 = [v19 address];
          if (!v54)
          {
            __break(1u);
            goto LABEL_93;
          }

          v55 = v54;
          v56 = sub_25121179C();
          v58 = v57;

          *&v128 = v56;
          *(&v128 + 1) = v58;
          *&v126 = 58;
          *(&v126 + 1) = 0xE100000000000000;
          v115 = sub_2511D001C();
          v116 = v115;
          v114 = v115;
          v113 = MEMORY[0x277D837D0];
          v59 = sub_251211B3C();
          v61 = v60;

          if (v51 == v59 && v53 == v61)
          {
            break;
          }

          v62 = sub_251211CCC();

          if (v62)
          {
            goto LABEL_56;
          }

          ++v46;
          v16 = v125;
          v15 = v49;
          v19 = v125;
          v3 = v124;
          p_class_meths = (&OBJC_PROTOCOL___NSObject + 32);
          if (v48 == v118)
          {
            goto LABEL_86;
          }
        }

LABEL_56:

        v63 = v124;
        if (qword_27F423750 != -1)
        {
          swift_once();
          v63 = v124;
        }

        __swift_project_value_buffer(v63, qword_27F425670);
        v64 = sub_25121142C();
        v65 = sub_25121197C();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v128 = v67;
          *v66 = 136315138;
          *(v66 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
          _os_log_impl(&dword_251143000, v64, v65, "%s HPSDiscovery: using fetched paired device", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          MEMORY[0x25306E960](v67, -1, -1);
          MEMORY[0x25306E960](v66, -1, -1);
        }

        v68 = v50;
        v19 = [v121 headphoneDevice:v68 btsDevice:{objc_msgSend(v125, sel_bluetoothDevice, v113, v115, v115, v115)}];

        swift_unknownObjectRelease();
        v3 = v124;
        p_class_meths = &OBJC_PROTOCOL___NSObject.class_meths;
        v5 = v117;
        if (!v19)
        {
          goto LABEL_33;
        }

        goto LABEL_61;
      }
    }

LABEL_86:

    if (p_class_meths[234] != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_27F425670);
    v108 = sub_25121142C();
    v109 = sub_25121197C();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = v19;
      v112 = swift_slowAlloc();
      *&v128 = v112;
      *v110 = 136315138;
      *(v110 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
      _os_log_impl(&dword_251143000, v108, v109, "%s HPSDiscovery: did not find paired device returning nil", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x25306E960](v112, -1, -1);
      MEMORY[0x25306E960](v110, -1, -1);
    }

    else
    {
    }

    v19 = 0;
    v5 = v117;
    goto LABEL_33;
  }

  if (qword_27F423750 != -1)
  {
LABEL_84:
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_27F425670);
  v21 = sub_25121142C();
  v22 = sub_25121197C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v19;
    v24 = swift_slowAlloc();
    v25 = v16;
    v26 = swift_slowAlloc();
    *&v128 = v26;
    *v24 = 136315138;
    *(v24 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
    _os_log_impl(&dword_251143000, v21, v22, "%s HPSDiscovery: using original inputDevice", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x25306E960](v26, -1, -1);
    v27 = v24;
    v19 = v23;
    MEMORY[0x25306E960](v27, -1, -1);

    v5 = v117;
  }

  else
  {
LABEL_52:
  }

  if (!v19)
  {
    goto LABEL_33;
  }

LABEL_61:
  v69 = [v19 headphoneDevice];
  if (!v69)
  {
LABEL_33:
    v32 = v5;
    v33 = sub_25121142C();
    v34 = sub_25121197C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v128 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
      *(v35 + 12) = 2080;
      v37 = v19;
      v38 = [v32 debugDescription];
      v39 = sub_25121179C();
      v41 = v40;

      v42 = sub_2511CBE4C(v39, v41, &v128);

      *(v35 + 14) = v42;
      v19 = v37;
      _os_log_impl(&dword_251143000, v33, v34, "%s Showing legacy HPS %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306E960](v36, -1, -1);
      MEMORY[0x25306E960](v35, -1, -1);
    }

    v43 = [objc_allocWithZone(BTSDeviceConfigController) init];
    [v43 setSpecifier_];
    goto LABEL_36;
  }

  v70 = v69;
  if (sub_2511CD36C(v69))
  {
    goto LABEL_63;
  }

  v120 = v19;
  v85 = objc_opt_self();
  v86 = sub_251210F7C();
  v87 = [v86 productID];

  v88 = [v85 getProductIDString_];
  v89 = sub_25121179C();
  v91 = v90;

  if (p_class_meths[234] != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_27F425670);

  v92 = v70;
  v93 = sub_25121142C();
  v94 = sub_25121197C();

  v122 = v89;
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *&v128 = v119;
    *v95 = 136315650;
    *(v95 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x8000000251220E30, &v128);
    *(v95 + 12) = 2080;
    *(v95 + 14) = sub_2511CBE4C(v89, v91, &v128);
    *(v95 + 22) = 2080;
    v96 = v92;
    v97 = [v96 description];
    v98 = v92;
    v99 = sub_25121179C();
    v101 = v100;

    v102 = v99;
    v92 = v98;
    v103 = sub_2511CBE4C(v102, v101, &v128);

    *(v95 + 24) = v103;
    _os_log_impl(&dword_251143000, v93, v94, "%s showUnknownDevice: %s %s", v95, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v119, -1, -1);
    MEMORY[0x25306E960](v95, -1, -1);
  }

  v19 = v120;
  v104 = MobileGestalt_get_current_device();
  if (!v104)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v105 = v104;
  appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

  if (!appleInternalInstallCapability)
  {

    v5 = v117;
LABEL_80:

    goto LABEL_33;
  }

  if (v122 == 0x4E574F4E4B4E55 && v91 == 0xE700000000000000)
  {

    v5 = v117;
    goto LABEL_63;
  }

  v107 = sub_251211CCC();

  v5 = v117;
  if ((v107 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_63:
  sub_25121130C();
  v71 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v71 setSpecifier_];
  v72 = v70;
  sub_2512112FC();
  HeadphoneSettingsController.setupShowLegacyHPSButton()();
  if (!os_variant_has_internal_ui())
  {

    v43 = v19;
    v19 = v71;
    goto LABEL_36;
  }

  v73 = v19;
  v74 = sub_25121176C();
  CFPreferencesAppSynchronize(v74);

  v75 = sub_25121176C();
  v76 = sub_25121176C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v75, v76, 0);

  if (!AppBooleanValue)
  {
LABEL_68:

    v43 = v73;
    v19 = v71;
LABEL_36:

    return;
  }

  v71 = v71;
  v78 = [v71 view];
  if (!v78)
  {
    goto LABEL_94;
  }

  v79 = v78;
  v80 = [v78 layer];

  v81 = [objc_opt_self() blueColor];
  v82 = [v81 CGColor];

  [v80 setBorderColor_];
  v83 = [v71 view];

  if (v83)
  {
    v84 = [v83 layer];

    [v84 setBorderWidth_];
    goto LABEL_68;
  }

LABEL_95:
  __break(1u);
}

uint64_t sub_2511CFF18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2511CFF80()
{
  result = qword_27F422A18;
  if (!qword_27F422A18)
  {
    sub_25121131C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422A18);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2511D001C()
{
  result = qword_27F422A28;
  if (!qword_27F422A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422A28);
  }

  return result;
}

uint64_t sub_2511D0070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4228F8, &qword_2512183E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_2511C8A48(255, &qword_27F422928, 0x277CBEB88);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_2511D3934(&qword_27F422938, &qword_27F422928, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v16[0] = a1;
  v16[1] = v5;
  v16[2] = WitnessTable;
  v16[3] = v7;
  v8 = sub_25121154C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - v10;
  v12 = [objc_opt_self() mainRunLoop];
  v16[0] = v12;
  v13 = sub_251211A9C();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_25121163C();
  sub_2511CCD34(v4, &qword_27F4228F8, &qword_2512183E0);

  swift_getWitnessTable();
  v14 = sub_25121160C();
  (*(v9 + 8))(v11, v8);
  return v14;
}

void *sub_2511D02E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_hpDevice);
  v2 = v1;
  return v1;
}

id sub_2511D0310(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v8 = [objc_allocWithZone(v6) initWithFrame:a1 device:a2 & 1 darkMode:{a3, a4, a5, a6}];

  return v8;
}

void *sub_2511D0394(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  *&v6[OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_listeners] = MEMORY[0x277D84FA0];
  v14 = [a1 headphoneDevice];
  *&v6[OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_hpDevice] = v14;
  if (v14)
  {
    v15 = v14;
    sub_251210F4C();

    sub_2512111DC();

    v16 = sub_25121118C();

    v17 = [v16 type];

    v18 = v17 != 0;
  }

  else
  {
    v18 = 0;
  }

  v7[OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_currentBatteryLRValid] = v18;
  v25.receiver = v7;
  v25.super_class = type metadata accessor for ModernBatteryStatusView();
  v19 = objc_msgSendSuper2(&v25, sel_initWithFrame_device_darkMode_, a1, a2 & 1, a3, a4, a5, a6);
  v20 = *(v19 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_hpDevice);
  v21 = *((*MEMORY[0x277D85000] & *v19) + 0xA8);
  v22 = v20;
  v23 = v19;
  v21(v20);

  return v23;
}

uint64_t sub_2511D058C()
{
  v0 = sub_25121136C();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0FB58]);
  v3 = objc_allocWithZone(sub_25121138C());
  return sub_25121139C();
}

void sub_2511D0744(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0xA0))();
  if (*(v1 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_hpDevice))
  {
    sub_251210F4C();
    sub_2512111DC();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277CEF800]) init];
    sub_2512111BC();
    swift_allocObject();
    sub_2512111AC();
  }

  v3 = sub_25121110C();
  [v3 level];
  v5 = v4;

  v6 = v5;
  v7 = v6 * 100.0;
  if (COERCE_INT(fabs(v6 * 100.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v7 <= -1.0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v7 >= 256.0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v8 = sub_25121111C();
  [v8 level];
  v10 = v9;

  v11 = v10;
  v12 = v11 * 100.0;
  if (COERCE_INT(fabs(v11 * 100.0)) > 2139095039)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v12 <= -1.0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v12 >= 256.0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v13 = sub_25121116C();
  [v13 level];
  v15 = v14;

  v16 = v15;
  v17 = v16 * 100.0;
  if (COERCE_INT(fabs(v16 * 100.0)) > 2139095039)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v17 <= -1.0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v17 >= 256.0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v18 = sub_25121118C();
  v19 = [v18 type];

  if (v19)
  {
    v20 = sub_25121118C();
    [v20 level];
    v22 = v21;

    v23 = v22;
    v12 = v23 * 100.0;
    if (COERCE_INT(fabs(v23 * 100.0)) > 2139095039)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v12 <= -1.0)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v12 >= 256.0)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v24 = sub_25121118C();
    [v24 level];
    v26 = v25;

    v27 = v26;
    v17 = v27 * 100.0;
    if (COERCE_INT(fabs(v27 * 100.0)) > 2139095039)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v17 <= -1.0)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v17 >= 256.0)
    {
LABEL_53:
      __break(1u);
      return;
    }
  }

  v28 = sub_25121112C();
  [v28 level];
  v30 = v29;

  v31 = v30;
  v32 = v31 * 100.0;
  if ((LODWORD(v32) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_45;
  }

  if (v32 <= -1.0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v32 >= 256.0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v33 = v32;
  v34 = sub_25121110C();
  [v34 state];

  if (sub_25121198C() == 1)
  {
    v35 = -1;
  }

  else
  {
    v35 = 0;
  }

  v36 = sub_25121111C();
  [v36 state];

  if (sub_25121198C() == 1)
  {
    v37 = -1;
  }

  else
  {
    v37 = 0;
  }

  v38 = sub_25121116C();
  [v38 state];

  if (sub_25121198C() == 1)
  {
    v39 = -1;
  }

  else
  {
    v39 = 0;
  }

  v40 = sub_25121118C();
  [v40 state];

  LODWORD(v40) = sub_25121198C();

  *a1 = v33;
  if (v40 == 1)
  {
    v41 = -1;
  }

  else
  {
    v41 = 0;
  }

  *(a1 + 1) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = v41;
  *(a1 + 8) = v17;
  *(a1 + 9) = 0;
  *(a1 + 11) = 0;
  *(a1 + 12) = v39;
  *(a1 + 16) = v12;
  *(a1 + 17) = 0;
  *(a1 + 19) = 0;
  *(a1 + 20) = v37;
  *(a1 + 24) = v7;
  *(a1 + 25) = 0;
  *(a1 + 27) = 0;
  *(a1 + 28) = v35;
  *(a1 + 32) = 0;
}

void sub_2511D0BD8()
{
  v1 = sub_25121136C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_25121144C();
  v5 = *(v77 - 8);
  v6 = MEMORY[0x28223BE20](v77);
  v72 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v75 = &v71 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v74 = &v71 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v71 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v78 = v0;
  if (*&v0[OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_hpDevice])
  {
    sub_251210F4C();
    sub_2512111DC();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277CEF800]) init];
    sub_2512111BC();
    swift_allocObject();
    sub_2512111AC();
  }

  sub_25121140C();
  v19 = sub_25121142C();
  v20 = sub_25121195C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v5;
    v22 = v1;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_251143000, v19, v20, "Battery view decorateBatteryIcon called", v23, 2u);
    v24 = v23;
    v1 = v22;
    v5 = v21;
    MEMORY[0x25306E960](v24, -1, -1);
  }

  v25 = *(v5 + 8);
  v76 = v5 + 8;
  v25(v18, v77);
  v26 = (v2 + 8);
  if ([v78 untethered])
  {
    v71 = v25;
    v27 = sub_25121111C();
    sub_251211A8C();

    v28 = sub_25121135C();
    v29 = *v26;
    (*v26)(v4, v1);
    if ((v28 & 1) == 0)
    {
      v30 = [v78 deviceBatteryLevelLeftView];
      v31 = [v30 batteryIconView];

      sub_25121138C();
      if (swift_dynamicCastClass())
      {
        sub_25121140C();
        v32 = sub_25121142C();
        v33 = sub_25121195C();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v72 = v1;
          v35 = v34;
          *v34 = 0;
          _os_log_impl(&dword_251143000, v32, v33, "Battery view decorateBatteryIcon left", v34, 2u);
          v36 = v35;
          v1 = v72;
          MEMORY[0x25306E960](v36, -1, -1);
        }

        v71(v16, v77);
        v37 = sub_25121111C();
        sub_251211A8C();

        sub_25121137C();
        v29(v4, v1);
      }

      else
      {
      }
    }

    v48 = sub_25121116C();
    sub_251211A8C();

    v49 = sub_25121135C();
    v29(v4, v1);
    if ((v49 & 1) == 0)
    {
      v50 = [v78 deviceBatteryLevelRightView];
      v51 = [v50 batteryIconView];

      sub_25121138C();
      if (swift_dynamicCastClass())
      {
        sub_25121140C();
        v52 = sub_25121142C();
        v53 = sub_25121195C();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_251143000, v52, v53, "Battery view decorateBatteryIcon right", v54, 2u);
          MEMORY[0x25306E960](v54, -1, -1);
        }

        v71(v73, v77);
        v55 = sub_25121116C();
        sub_251211A8C();

        sub_25121137C();
        v29(v4, v1);
      }

      else
      {
      }
    }

    v56 = sub_25121110C();
    sub_251211A8C();

    v57 = sub_25121135C();
    v29(v4, v1);
    if ((v57 & 1) == 0)
    {
      v58 = [v78 deviceBatteryLevelCaseView];
      v59 = [v58 batteryIconView];

      sub_25121138C();
      if (swift_dynamicCastClass())
      {
        sub_25121140C();
        v60 = sub_25121142C();
        v61 = sub_25121195C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_251143000, v60, v61, "Battery view decorateBatteryIcon case", v62, 2u);
          MEMORY[0x25306E960](v62, -1, -1);
        }

        v71(v74, v77);
        v63 = sub_25121110C();
        sub_251211A8C();

        sub_25121137C();
        v29(v4, v1);
      }

      else
      {
      }
    }

    v64 = sub_25121118C();
    sub_251211A8C();

    v65 = sub_25121135C();
    v29(v4, v1);
    if (v65)
    {
      goto LABEL_31;
    }

    v66 = [v78 deviceBatteryLevelSingleView];
    v42 = [v66 batteryIconView];

    sub_25121138C();
    if (swift_dynamicCastClass())
    {
      sub_25121140C();
      v67 = sub_25121142C();
      v68 = sub_25121195C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_251143000, v67, v68, "Battery view decorateBatteryIcon combined", v69, 2u);
        MEMORY[0x25306E960](v69, -1, -1);
      }

      v71(v75, v77);
      v70 = sub_25121118C();
      sub_251211A8C();

      sub_25121137C();

      v29(v4, v1);
      return;
    }

LABEL_36:

    return;
  }

  v38 = sub_25121112C();
  sub_251211A8C();

  v39 = sub_25121135C();
  v40 = *v26;
  (*v26)(v4, v1);
  if (v39)
  {
LABEL_31:

    return;
  }

  v41 = [v78 deviceBatteryLevelSingleView];
  v42 = [v41 batteryIconView];

  sub_25121138C();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_36;
  }

  sub_25121140C();
  v43 = sub_25121142C();
  v44 = sub_25121195C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v71 = v25;
    v46 = v45;
    *v45 = 0;
    _os_log_impl(&dword_251143000, v43, v44, "Battery view decorateBatteryIcon main", v45, 2u);
    v25 = v71;
    MEMORY[0x25306E960](v46, -1, -1);
  }

  v25(v72, v77);
  v47 = sub_25121112C();
  sub_251211A8C();

  sub_25121137C();

  v40(v4, v1);
}

void sub_2511D162C(void *a1)
{
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A48, &qword_251218548);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v99 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A50, &qword_251218550);
  v132 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v131 = &v99 - v5;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A58, &qword_251218558);
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v133 = &v99 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A60, &unk_251218560);
  v137 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v135 = &v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422720, &qword_251217EB8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v99 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4228F8, &qword_2512183E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v99 - v13;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A68, &qword_251218570);
  v144 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v16 = &v99 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A70, &qword_251218578);
  v143 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v99 - v18;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A78, &qword_251218580);
  v138 = *(v140 - 8);
  v20 = MEMORY[0x28223BE20](v140);
  v130 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v139 = &v99 - v23;
  MEMORY[0x28223BE20](v22);
  v142 = &v99 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A80, &qword_251218588);
  v26 = MEMORY[0x28223BE20](v25);
  v29 = &v99 - v28;
  if (a1)
  {
    v123 = v27;
    v124 = v26;
    v122 = v7;
    v125 = v11;
    v30 = OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_listeners;
    swift_beginAccess();
    v126 = v30;
    v31 = *&v1[v30];
    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = a1;

      v33 = sub_251211B8C();

      if (v33)
      {
LABEL_4:

        return;
      }
    }

    else
    {
      v34 = *(v31 + 16);
      v35 = a1;
      if (v34)
      {
        goto LABEL_4;
      }
    }

    v121 = v1;
    v36 = [v1 untethered];
    sub_251210F4C();
    sub_2512111DC();

    if (v36)
    {
      sub_25121119C();

      v117 = objc_opt_self();
      v37 = [v117 mainRunLoop];
      v145 = v37;
      v110 = sub_251211A9C();
      v38 = *(v110 - 8);
      v111 = *(v38 + 56);
      v116 = v38 + 56;
      v111(v14, 1, 1, v110);
      v115 = sub_2511C8A48(0, &qword_27F422928, 0x277CBEB88);
      v39 = sub_2511C6790(&qword_27F422A88, &qword_27F422A70, &qword_251218578, MEMORY[0x277CBCEC8]);
      v99 = v29;
      v113 = v39;
      v127 = sub_2511D3934(&qword_27F422938, &qword_27F422928, 0x277CBEB88, MEMORY[0x277CC9E80]);
      v100 = v17;
      sub_25121163C();
      sub_2511CCD34(v14, &qword_27F4228F8, &qword_2512183E0);

      v114 = MEMORY[0x277CBCD60];
      v120 = sub_2511C6790(&qword_27F422A90, &qword_27F422A68, &qword_251218570, MEMORY[0x277CBCD60]);
      v40 = v141;
      v41 = sub_25121160C();
      v42 = *(v144 + 8);
      v144 += 8;
      v119 = v42;
      v42(v16, v40);
      v43 = *(v143 + 8);
      v143 += 8;
      v112 = v43;
      v43(v19, v17);
      v145 = v41;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A98, &unk_251218590);
      v109 = MEMORY[0x277CBCD90];
      v129 = sub_2511C6790(&qword_27F422AA0, &qword_27F422A98, &unk_251218590, MEMORY[0x277CBCD90]);
      v128 = sub_2511D3934(&qword_27F422AA8, &qword_27F422AB0, 0x277CEF7E8, MEMORY[0x277D85380]);
      v44 = v142;
      sub_25121166C();

      v103 = sub_2511C6790(&qword_27F422AB8, &qword_27F422A78, &qword_251218580, MEMORY[0x277CBCBE0]);
      v108 = v4;
      v45 = v140;
      v46 = v44;
      v47 = sub_25121160C();
      (v138)[1](v46, v45);
      v145 = v47;
      v101 = sub_2511C8A48(0, &qword_27F422760, 0x277D85C78);
      v48 = sub_251211A0C();
      v146 = v48;
      v105 = sub_2512119DC();
      v49 = *(v105 - 8);
      v104 = *(v49 + 56);
      v106 = v49 + 56;
      v50 = v125;
      v104(v125, 1, 1, v105);
      v107 = sub_2511D3934(&qword_27F422770, &qword_27F422760, 0x277D85C78, MEMORY[0x277D85228]);
      v51 = v99;
      sub_25121163C();
      sub_2511CCD34(v50, &qword_27F422720, &qword_251217EB8);

      v52 = swift_allocObject();
      v53 = v121;
      *(v52 + 16) = a1;
      *(v52 + 24) = v53;
      sub_2511C6790(&qword_27F422AC0, &qword_27F422A80, &qword_251218588, v114);
      v138 = a1;
      v102 = v53;
      v54 = v124;
      sub_25121167C();

      (*(v123 + 8))(v51, v54);
      swift_beginAccess();
      sub_25121155C();
      swift_endAccess();

      sub_251210F4C();
      sub_2512111DC();

      sub_25121113C();

      v55 = [v117 mainRunLoop];
      v145 = v55;
      v56 = v110;
      v57 = v111;
      v111(v14, 1, 1, v110);
      v58 = v100;
      sub_25121163C();
      sub_2511CCD34(v14, &qword_27F4228F8, &qword_2512183E0);

      v59 = v16;
      v60 = v141;
      v61 = sub_25121160C();
      v119(v59, v60);
      v112(v19, v58);
      v145 = v61;
      sub_25121166C();

      sub_251210F4C();
      sub_2512111DC();

      sub_25121114C();

      v62 = [v117 mainRunLoop];
      v145 = v62;
      v57(v14, 1, 1, v56);
      sub_25121163C();
      sub_2511CCD34(v14, &qword_27F4228F8, &qword_2512183E0);

      v63 = v141;
      v64 = sub_25121160C();
      v119(v59, v63);
      v65 = v112;
      v112(v19, v58);
      v145 = v64;
      sub_25121166C();

      sub_251210F4C();
      sub_2512111DC();

      sub_25121117C();

      v66 = [v117 mainRunLoop];
      v145 = v66;
      v111(v14, 1, 1, v110);
      sub_25121163C();
      sub_2511CCD34(v14, &qword_27F4228F8, &qword_2512183E0);

      v67 = sub_25121160C();
      v119(v59, v63);
      v65(v19, v58);
      v145 = v67;
      sub_25121166C();

      v68 = v131;
      sub_25121153C();
      sub_2511C6790(&qword_27F422AD0, &qword_27F422A50, &qword_251218550, MEMORY[0x277CBCAF8]);
      v69 = v108;
      v70 = sub_25121160C();
      (*(v132 + 8))(v68, v69);
      v145 = v70;
      v71 = sub_251211A0C();
      v146 = v71;
      v72 = v125;
      v104(v125, 1, 1, v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422AD8, &qword_2512185C8);
      sub_2511C6790(&qword_27F422AE0, &qword_27F422AD8, &qword_2512185C8, v109);
      v73 = v133;
      sub_25121163C();
      sub_2511CCD34(v72, &qword_27F422720, &qword_251217EB8);

      v74 = swift_allocObject();
      v75 = v102;
      swift_unknownObjectWeakInit();
      v76 = swift_allocObject();
      *(v76 + 16) = v74;
      v77 = v138;
      *(v76 + 24) = v138;
      type metadata accessor for BTDeviceBatteryStatus();
      sub_2511C6790(&qword_27F422AE8, &qword_27F422A58, &qword_251218558, v114);
      v78 = v77;
      v80 = v135;
      v79 = v136;
      sub_25121161C();

      (*(v134 + 8))(v73, v79);
      swift_getKeyPath();
      v145 = v75;
      sub_2511C6790(&qword_27F422AF0, &qword_27F422A60, &unk_251218560, MEMORY[0x277CBCC08]);
      v81 = v122;
      sub_25121168C();

      (*(v137 + 8))(v80, v81);
      swift_beginAccess();
      sub_25121155C();
      swift_endAccess();
    }

    else
    {
      sub_25121115C();

      v82 = [objc_opt_self() mainRunLoop];
      v145 = v82;
      v83 = sub_251211A9C();
      (*(*(v83 - 8) + 56))(v14, 1, 1, v83);
      sub_2511C8A48(0, &qword_27F422928, 0x277CBEB88);
      sub_2511C6790(&qword_27F422A88, &qword_27F422A70, &qword_251218578, MEMORY[0x277CBCEC8]);
      sub_2511D3934(&qword_27F422938, &qword_27F422928, 0x277CBEB88, MEMORY[0x277CC9E80]);
      sub_25121163C();
      sub_2511CCD34(v14, &qword_27F4228F8, &qword_2512183E0);

      v139 = MEMORY[0x277CBCD60];
      sub_2511C6790(&qword_27F422A90, &qword_27F422A68, &qword_251218570, MEMORY[0x277CBCD60]);
      v84 = v141;
      v85 = sub_25121160C();
      (*(v144 + 8))(v16, v84);
      (*(v143 + 8))(v19, v17);
      v145 = v85;
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422A98, &unk_251218590);
      sub_2511C6790(&qword_27F422AA0, &qword_27F422A98, &unk_251218590, MEMORY[0x277CBCD90]);
      sub_2511D3934(&qword_27F422AA8, &qword_27F422AB0, 0x277CEF7E8, MEMORY[0x277D85380]);
      v86 = v142;
      sub_25121166C();

      sub_2511C6790(&qword_27F422AB8, &qword_27F422A78, &qword_251218580, MEMORY[0x277CBCBE0]);
      v87 = v140;
      v88 = sub_25121160C();
      (v138)[1](v86, v87);
      v145 = v88;
      sub_2511C8A48(0, &qword_27F422760, 0x277D85C78);
      v89 = sub_251211A0C();
      v146 = v89;
      v90 = sub_2512119DC();
      v91 = v125;
      (*(*(v90 - 8) + 56))(v125, 1, 1, v90);
      sub_2511D3934(&qword_27F422770, &qword_27F422760, 0x277D85C78, MEMORY[0x277D85228]);
      sub_25121163C();
      sub_2511CCD34(v91, &qword_27F422720, &qword_251217EB8);

      v92 = swift_allocObject();
      v93 = v121;
      swift_unknownObjectWeakInit();
      v94 = swift_allocObject();
      *(v94 + 16) = v92;
      *(v94 + 24) = a1;
      type metadata accessor for BTDeviceBatteryStatus();
      sub_2511C6790(&qword_27F422AC0, &qword_27F422A80, &qword_251218588, v139);
      v95 = a1;
      v96 = v127;
      v97 = v124;
      sub_25121161C();

      (*(v123 + 8))(v29, v97);
      swift_getKeyPath();
      v145 = v93;
      sub_2511C6790(&qword_27F422AC8, &qword_27F422A48, &qword_251218548, MEMORY[0x277CBCC08]);
      v98 = v129;
      sub_25121168C();

      (*(v128 + 8))(v96, v98);
      swift_beginAccess();
      sub_25121155C();
      swift_endAccess();
    }
  }
}

void sub_2511D2E64(uint64_t a1, void *a2)
{
  v4 = sub_25121144C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251210F4C();
  sub_2512111DC();

  v8 = sub_25121118C();

  v9 = [v8 type];

  if ((v9 != 0) != *(a2 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_currentBatteryLRValid))
  {
    *(a2 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_currentBatteryLRValid) = v9 != 0;
    sub_25121140C();
    v10 = sub_25121142C();
    v11 = sub_25121195C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_251143000, v10, v11, "Battery view combinedLR tearDown rebuild UI", v12, 2u);
      MEMORY[0x25306E960](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    (*((*MEMORY[0x277D85000] & *a2) + 0x98))(v14, a1);
    [a2 setStatus_];
    [a2 setupViews];
  }
}

double sub_2511D3084@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  [*a1 status];
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

id sub_2511D30D4(uint64_t a1, id *a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return [*a2 setStatus_];
}

double sub_2511D3114@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_25121144C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_25121140C();
    v11 = sub_25121142C();
    v12 = sub_25121197C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_251143000, v11, v12, "Battery view levelPublisher triggered", v13, 2u);
      MEMORY[0x25306E960](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    (*((*MEMORY[0x277D85000] & *v10) + 0x98))(v17, a2);

    result = *v17;
    v15 = v17[1];
    *a3 = v17[0];
    *(a3 + 16) = v15;
    *(a3 + 32) = v18;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2511D3360()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ModernBatteryStatusView();
  v1 = objc_msgSendSuper2(&v3, sel_setupViews);
  return (*((*MEMORY[0x277D85000] & *v0) + 0xA0))(v1);
}

void sub_2511D3450()
{
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_listeners) = MEMORY[0x277D84FA0];
  sub_251211C4C();
  __break(1u);
}

uint64_t sub_2511D3530()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs23ModernBatteryStatusView_listeners;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84FA0];
}

id sub_2511D363C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ModernBatteryStatusView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

BOOL AAFeatures.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_251211CAC();

  return v2 != 0;
}

uint64_t sub_2511D3748()
{
  sub_251211D1C();
  sub_2512117FC();
  return sub_251211D3C();
}

uint64_t sub_2511D37BC(uint64_t a1)
{
  sub_251211D1C();
  sub_2512117FC();
  return sub_251211D3C();
}

uint64_t sub_2511D3810@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_251211CAC();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2511D3934(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2511C8A48(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for BTDeviceBatteryStatus()
{
  if (!qword_27F422B00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F422B00);
    }
  }
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2511D3A38(void *a1)
{
  v2 = sub_25121144C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-1] - v7;
  v26[3] = &type metadata for AAFeatures;
  v26[4] = sub_2511D3ED0();
  v9 = sub_251210F2C();
  __swift_destroy_boxed_opaque_existential_0(v26);
  if (v9)
  {
    v10 = [a1 headphoneDevice];
    if (v10)
    {
      v11 = v10;
      sub_251210F4C();
      sub_2512111DC();

      v12 = sub_25121118C();
      v13 = [v12 type];

      if (v13)
      {
        v14 = sub_25121118C();
        [v14 level];
        v16 = v15;

        v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];

        return v17;
      }
    }

    sub_25121141C();
    v22 = sub_25121142C();
    v23 = sub_25121195C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_251143000, v22, v23, "Headphone Battery: no combined value", v24, 2u);
      MEMORY[0x25306E960](v24, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_25121141C();
    v19 = sub_25121142C();
    v20 = sub_25121196C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_251143000, v19, v20, "Headphone Battery: Feature not enabled", v21, 2u);
      MEMORY[0x25306E960](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

unint64_t sub_2511D3D24()
{
  result = qword_27F422AF8;
  if (!qword_27F422AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422AF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AAFeatures(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AAFeatures(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2511D3E7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2511D3E9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

unint64_t sub_2511D3ED0()
{
  result = qword_27F422B08;
  if (!qword_27F422B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422B08);
  }

  return result;
}

uint64_t sub_2511D3F34()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2511D3F64(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2511D3FBC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2511D3FEC(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double sub_2511D4044@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_2511D405C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EB0, &unk_251218400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2511D40D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EB0, &unk_251218400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2511D4284()
{
  v1 = *(v0 + 112);
  sub_251146DE4(v1, *(v0 + 120));
  return v1;
}

uint64_t sub_2511D42B8(uint64_t a1, uint64_t a2)
{
  result = sub_251146DF4(*(v2 + 112), *(v2 + 120));
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_2511D4310()
{
  v1 = *(v0 + 128);
  sub_251146DE4(v1, *(v0 + 136));
  return v1;
}

uint64_t sub_2511D4344(uint64_t a1, uint64_t a2)
{
  result = sub_251146DF4(*(v2 + 128), *(v2 + 136));
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_2511D439C()
{
  v1 = *(v0 + 144);
  sub_251146DE4(v1, *(v0 + 152));
  return v1;
}

uint64_t sub_2511D43D0(uint64_t a1, uint64_t a2)
{
  result = sub_251146DF4(*(v2 + 144), *(v2 + 152));
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

__n128 sub_2511D4428@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15)
{
  result = a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v16 = a5[1];
  *(a9 + 32) = *a5;
  *(a9 + 48) = v16;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a10;
  *(a9 + 96) = a11;
  *(a9 + 104) = a12;
  *(a9 + 120) = a13;
  *(a9 + 136) = a14;
  *(a9 + 152) = a15;
  return result;
}

uint64_t sub_2511D4484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_2511D44EC(a1, a2, a3, a4);
  return v8;
}

void sub_2511D44EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = MEMORY[0x277D84F90];
  if (a2)
  {
    v6 = sub_25121176C();
    if (a4)
    {
LABEL_3:

      v7 = sub_25121176C();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = [objc_opt_self() groupSpecifierWithID:v6 name:v7];

  if (v8)
  {

    *(v4 + 16) = v8;
    swift_beginAccess();
    v9 = v8;
    MEMORY[0x25306D860]();
    if (*((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25121189C();
    }

    sub_2512118AC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2511D4644(void (*a1)(void))
{
  a1(*(v1 + 16));
}

void sub_2511D468C()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  (*(v2 + 16))(v3, v2);
  v5 = v4;
  v6 = (*(v2 + 88))(v3, v2);
  v8 = v7;
  v9 = (*(v2 + 80))(v3, v2);
  v11 = v10;
  v27 = (*(v2 + 72))(v3, v2);
  v28 = (*(v2 + 48))(v3, v2);
  v12 = (*(v2 + 96))(v3, v2);
  v14 = v13;
  v15 = type metadata accessor for HeadphoneSpecifier();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction];
  *v17 = v9;
  v17[1] = v11;
  v18 = &v16[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction];
  *v18 = v6;
  v18[1] = v8;
  v19 = &v16[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction];
  *v19 = v12;
  v19[1] = v14;
  v26 = v6;
  v29 = v9;
  if (v5)
  {
    sub_251146DE4(v9, v11);
    v20 = v8;
    sub_251146DE4(v6, v8);
    sub_251146DE4(v12, v14);

    v21 = sub_25121176C();

    if (v27)
    {
LABEL_3:
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      goto LABEL_6;
    }
  }

  else
  {
    sub_251146DE4(v9, v11);
    v20 = v8;
    sub_251146DE4(v6, v8);
    sub_251146DE4(v12, v14);
    v21 = 0;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  ObjCClassFromMetadata = 0;
LABEL_6:
  v32.receiver = v16;
  v32.super_class = v15;
  v23 = objc_msgSendSuper2(&v32, sel_initWithName_target_set_get_detail_cell_edit_, v21, 0, sel_setSepcifierEnabledWithEnabled_, sel_specifierEnabled, ObjCClassFromMetadata, v28, 0);

  if (v23)
  {

    v31.receiver = v23;
    v31.super_class = v15;
    v24 = v23;
    objc_msgSendSuper2(&v31, sel_setTarget_, v24);
    v30.receiver = v24;
    v30.super_class = v15;
    objc_msgSendSuper2(&v30, sel_setButtonAction_, sel_buttonTappedWithSender_);
    sub_251146DF4(v12, v14);
    sub_251146DF4(v29, v11);
    sub_251146DF4(v26, v20);
    v25 = swift_beginAccess();
    MEMORY[0x25306D860](v25);
    if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25121189C();
    }

    sub_2512118AC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void HeadphoneSpecifier.__allocating_init(name:setAction:getAction:detail:cell:edit:buttonAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t ObjCClassFromMetadata, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v19 = objc_allocWithZone(v12);
  v20 = a6;
  v21 = v19;
  v22 = &v19[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction];
  *v22 = a5;
  *(v22 + 1) = v20;
  v23 = &v19[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = &v19[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction];
  *v24 = a10;
  *(v24 + 1) = a11;
  v31 = a4;
  v30 = v20;
  if (a2)
  {
    sub_251146DE4(a5, v20);
    sub_251146DE4(a3, a4);
    sub_251146DE4(a10, a11);
    v25 = sub_25121176C();
    v26 = a9;
    if (!ObjCClassFromMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_251146DE4(a5, v20);
  sub_251146DE4(a3, a4);
  sub_251146DE4(a10, a11);
  v25 = 0;
  v26 = a9;
  if (ObjCClassFromMetadata)
  {
LABEL_3:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  if (v26)
  {
    v27 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v27 = 0;
  }

  v35.receiver = v21;
  v35.super_class = v12;
  v28 = objc_msgSendSuper2(&v35, sel_initWithName_target_set_get_detail_cell_edit_, v25, 0, sel_setSepcifierEnabledWithEnabled_, sel_specifierEnabled, ObjCClassFromMetadata, a8, v27);

  if (v28)
  {

    v34.receiver = v28;
    v34.super_class = v12;
    v29 = v28;
    objc_msgSendSuper2(&v34, sel_setTarget_, v29);
    v33.receiver = v29;
    v33.super_class = v12;
    objc_msgSendSuper2(&v33, sel_setButtonAction_, sel_buttonTappedWithSender_);
    sub_251146DF4(a10, a11);
    sub_251146DF4(a5, v30);
    sub_251146DF4(a3, v31);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2511D4BD0()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  (*(v2 + 16))(v3, v2);
  if (v4)
  {
    v5 = sub_25121176C();
  }

  else
  {
    v5 = 0;
  }

  (*(v2 + 24))(v19, v3, v2);
  v6 = v20;
  if (v20)
  {
    v7 = __swift_project_boxed_opaque_existential_0Tm(v19, v20);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_251211CBC();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(v2 + 40))(v3, v2);
  v13 = (*(v2 + 32))(v3, v2);
  if ((*(v2 + 72))(v3, v2))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v15 = objc_opt_self();
  v16 = [v15 preferenceSpecifierNamed:v5 target:v11 set:v12 get:v13 detail:ObjCClassFromMetadata cell:(*(v2 + 48))(v3 edit:{v2), 0}];

  result = swift_unknownObjectRelease();
  if (v16)
  {
    swift_beginAccess();
    v18 = v16;
    MEMORY[0x25306D860]();
    if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25121189C();
    }

    sub_2512118AC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2511D4EF0(void (*a1)(id))
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    return v1;
  }

  result = sub_251211B8C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_13:

    v6 = MEMORY[0x25306DBD0](v5, v3);

    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
LABEL_8:
    a1(v6);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2511D505C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t HeadphoneSpecifier.getAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction);
  sub_251146DE4(v1, *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction + 8));
  return v1;
}

uint64_t HeadphoneSpecifier.setAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction);
  sub_251146DE4(v1, *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction + 8));
  return v1;
}

uint64_t HeadphoneSpecifier.buttonTapAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction);
  sub_251146DE4(v1, *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction + 8));
  return v1;
}

void HeadphoneSpecifier.init(name:setAction:getAction:detail:cell:edit:buttonAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = &v11[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction];
  *v15 = a5;
  *(v15 + 1) = a6;
  v16 = &v11[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction];
  *v16 = a3;
  *(v16 + 1) = a4;
  v17 = &v11[OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction];
  *v17 = a10;
  *(v17 + 1) = a11;
  if (a2)
  {
    sub_251146DE4(a5, a6);
    sub_251146DE4(a3, a4);
    sub_251146DE4(a10, a11);
    v18 = sub_25121176C();
    v19 = a9;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_251146DE4(a5, a6);
    sub_251146DE4(a3, a4);
    sub_251146DE4(a10, a11);
    v18 = 0;
    v19 = a9;
    if (a7)
    {
LABEL_3:
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = a3;
      v27 = a4;
      if (!v19)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  ObjCClassFromMetadata = 0;
  v26 = a3;
  v27 = a4;
  if (v19)
  {
LABEL_4:
    v19 = swift_getObjCClassFromMetadata();
  }

LABEL_5:
  v21 = type metadata accessor for HeadphoneSpecifier();
  v31.receiver = v11;
  v31.super_class = v21;
  v22 = objc_msgSendSuper2(&v31, sel_initWithName_target_set_get_detail_cell_edit_, v18, 0, sel_setSepcifierEnabledWithEnabled_, sel_specifierEnabled, ObjCClassFromMetadata, a8, v19);

  if (v22)
  {

    v30.receiver = v22;
    v30.super_class = v21;
    v23 = v22;
    objc_msgSendSuper2(&v30, sel_setTarget_, v23);
    v29.receiver = v23;
    v29.super_class = v21;
    objc_msgSendSuper2(&v29, sel_setButtonAction_, sel_buttonTappedWithSender_);
    sub_251146DF4(a10, a11);
    sub_251146DF4(a5, a6);
    sub_251146DF4(v26, v27);
  }

  else
  {
    __break(1u);
  }
}

uint64_t HeadphoneSpecifier.buttonTapped(sender:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_buttonTapAction);
  if (v1)
  {
    return v1();
  }

  return result;
}

NSNumber __swiftcall HeadphoneSpecifier.specifierEnabled()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_getAction);
  if (v1)
  {
    return v1();
  }

  sub_2511D5484();
  return sub_251211A4C();
}

unint64_t sub_2511D5484()
{
  result = qword_27F422FA0;
  if (!qword_27F422FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F422FA0);
  }

  return result;
}

Swift::Void __swiftcall HeadphoneSpecifier.setSepcifierEnabled(enabled:)(NSNumber enabled)
{
  v2 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs18HeadphoneSpecifier_setAction);
  if (v2)
  {
    v2(enabled.super.super.isa);
  }
}

id HeadphoneSpecifier.__allocating_init(name:target:set:get:detail:cell:edit:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t ObjCClassFromMetadata, uint64_t a7, uint64_t a8)
{
  v24 = a5;
  v25 = a7;
  v23 = a4;
  if (a2)
  {
    v12 = sub_25121176C();

    v13 = a3[3];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    v13 = a3[3];
    if (v13)
    {
LABEL_3:
      v14 = __swift_project_boxed_opaque_existential_0Tm(a3, v13);
      v15 = *(v13 - 8);
      MEMORY[0x28223BE20](v14);
      v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v17);
      v18 = sub_251211CBC();
      (*(v15 + 8))(v17, v13);
      __swift_destroy_boxed_opaque_existential_0(a3);
      if (!ObjCClassFromMetadata)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v18 = 0;
  if (ObjCClassFromMetadata)
  {
LABEL_4:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

LABEL_5:
  if (a8)
  {
    a8 = swift_getObjCClassFromMetadata();
  }

  v19 = objc_allocWithZone(v8);
  v20 = [v19 initWithName:v12 target:v18 set:v23 get:v24 detail:ObjCClassFromMetadata cell:v25 edit:a8];

  swift_unknownObjectRelease();
  return v20;
}

id HeadphoneSpecifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeadphoneSpecifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneSpecifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_2511D59E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2511D5A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata accessor for PSTableCellType()
{
  if (!qword_27F422B28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F422B28);
    }
  }
}

uint64_t sub_2511D5C1C(char a1)
{
  result = swift_beginAccess();
  byte_27F425688 = a1;
  return result;
}

uint64_t sub_2511D5CBC(void *a1)
{
  v1 = a1;
  v2 = sub_2511D5CF0();

  return v2 & 1;
}

uint64_t sub_2511D5CF0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &byte_27F425688);
  swift_endAccess();
  if (v1)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_2511CCD34(v6, &unk_27F422EB0, &unk_251218400);
    return 0;
  }

  return result;
}

void sub_2511D5DD0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = sub_2512118CC();
  swift_beginAccess();
  objc_setAssociatedObject(v3, &byte_27F425688, v4, 1);
  swift_endAccess();
}

void sub_2511D5E54(uint64_t a1)
{
  v2 = sub_2512118CC();
  swift_beginAccess();
  objc_setAssociatedObject(v1, &byte_27F425688, v2, 1);
  swift_endAccess();
}

uint64_t *sub_2511D5ED8()
{
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  return &qword_27F425690;
}

uint64_t sub_2511D5F28()
{
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_2511D6060(uint64_t a1)
{
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F425690 = a1;
}

uint64_t (*sub_2511D6188(uint64_t a1))(uint64_t a1)
{
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t HPSHeadphoneManager.addTopLevelEntry(hpDevice:)(void *a1)
{
  v2 = v1;
  v4 = sub_251210D3C();
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25121169C();
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_25121144C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512113EC();
  v13 = v2;
  v14 = a1;
  v15 = sub_25121142C();
  LODWORD(a1) = sub_25121197C();

  v54 = a1;
  if (os_log_type_enabled(v15, a1))
  {
    v49 = v12;
    v48 = v15;
    v50 = v10;
    v51 = v9;
    v52 = v7;
    v53 = v13;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v61 = v18;
    *v16 = 136315650;
    if (qword_27F4239F0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_2511D7C84(v19);
    v21 = v20;

    v22 = MEMORY[0x25306D890](v21, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_2511CBE4C(v22, v24, &v61);

    *(v16 + 4) = v25;
    *(v16 + 12) = 2080;
    sub_25121108C();
    v26 = sub_25121107C();
    sub_25121106C();

    sub_25121102C();
    v27 = sub_25121173C();
    v29 = v28;

    v30 = sub_2511CBE4C(v27, v29, &v61);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v14;
    *v17 = v14;
    v31 = v14;
    v32 = v48;
    _os_log_impl(&dword_251143000, v48, v54, "HPMHeadphoneManager: addTopLevelEntry %s  %s %@", v16, 0x20u);
    sub_2511CCD34(v17, &qword_27F4229F8, &qword_251218D50);
    MEMORY[0x25306E960](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v18, -1, -1);
    MEMORY[0x25306E960](v16, -1, -1);

    (*(v50 + 8))(v49, v51);
    v13 = v53;
    v7 = v52;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v34 = v56;
  v33 = v57;
  sub_2511C5FD0();
  *v34 = sub_251211A0C();
  (*(v33 + 104))(v34, *MEMORY[0x277D85200], v7);
  v35 = sub_2512116AC();
  (*(v33 + 8))(v34, v7);
  if (v35)
  {
    if (qword_27F4239F0 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_8:
  v36 = sub_25121101C();
  v38 = v37;
  swift_beginAccess();
  v39 = qword_27F425690;
  if (*(qword_27F425690 + 16))
  {
    v40 = sub_2511CC6F4(v36, v38);
    v42 = v41;

    if (v42)
    {
      v43 = *(*(v39 + 56) + 8 * v40);
      v44 = v43;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v43 = 0;
LABEL_13:
  swift_endAccess();
  [v14 setHasBackend_];
  [v43 setHasBackend_];
  sub_2511D884C(v43, v14);
  sub_2511D69F0();
  v45 = [v13 weakHashTblCopy];
  v46 = [v45 objectEnumerator];

  sub_25121194C();
  sub_2511D8E8C(&qword_27F422B30, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_251211B0C();
  while (v62)
  {
    sub_2511C8CB0(&v61, v60);
    sub_2511CCD94(v60, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422B38, &unk_251218920);
    if (swift_dynamicCast())
    {
      [v58 addTopLevelEntryWithHpDevice_];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v60);
    sub_251211B0C();
  }

  return (*(v55 + 8))(v6, v4);
}

uint64_t sub_2511D6954()
{
  if (qword_27F4239F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_2511D7C84(v0);
  v2 = v1;

  return v2;
}

void sub_2511D69F0()
{
  v0 = sub_25121144C();
  v66 = *(v0 - 8);
  v67 = v0;
  MEMORY[0x28223BE20](v0);
  v72 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_25121108C();
  v3 = sub_25121107C();
  objc_sync_enter(v3);

  v4 = v2;
  v5 = sub_25121107C();
  v6 = sub_25121105C();
  v8 = v7;

  *v8 = MEMORY[0x277D84F98];
  v6(v76, 0);

  if (qword_27F4239F0 == -1)
  {
    goto LABEL_2;
  }

LABEL_41:
  swift_once();
LABEL_2:
  swift_beginAccess();
  v9 = qword_27F425690;
  v76[0] = MEMORY[0x277D84F90];
  v10 = 1 << *(qword_27F425690 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(qword_27F425690 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v15 = v4;
  if (v12)
  {
    while (2)
    {
      v16 = v14;
LABEL_11:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = *(*(v9 + 56) + ((v16 << 9) | (8 * v17)));
      if ([v18 hasBackend])
      {
        sub_251211BFC();
        sub_251211C2C();
        sub_251211C3C();
        sub_251211C0C();
        v15 = v4;
        v14 = v16;
        if (v12)
        {
          continue;
        }
      }

      else
      {

        v14 = v16;
        if (v12)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 64 + 8 * v16);
    ++v14;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  v19 = v76[0];
  if ((v76[0] & 0x8000000000000000) == 0 && (v76[0] & 0x4000000000000000) == 0)
  {
    v20 = *(v76[0] + 16);
    v4 = v72;
    if (!v20)
    {
      goto LABEL_43;
    }

LABEL_17:
    v21 = 0;
    v70 = v15;
    v71 = v19 & 0xC000000000000001;
    v68 = v20;
    v69 = v19;
    while (2)
    {
      if (v71)
      {
        v25 = MEMORY[0x25306DBD0](v21, v19);
      }

      else
      {
        if (v21 >= *(v19 + 16))
        {
          goto LABEL_38;
        }

        v25 = *(v19 + 8 * v21 + 32);
      }

      v26 = v25;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_37;
      }

      v74 = v21 + 1;
      v27 = sub_25121107C();
      v28 = sub_25121101C();
      v30 = v29;
      v4 = v26;
      v73 = sub_25121105C();
      v32 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = *v32;
      v34 = v75;
      *v32 = 0x8000000000000000;
      v36 = sub_2511CC6F4(v28, v30);
      v37 = v34[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_39;
      }

      v40 = v35;
      if (v34[3] >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_2511D85B4();
          if ((v40 & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_2511D8198(v39, isUniquelyReferenced_nonNull_native);
        v41 = sub_2511CC6F4(v28, v30);
        if ((v40 & 1) != (v42 & 1))
        {
          sub_251211CFC();
          __break(1u);
          return;
        }

        v36 = v41;
        if ((v40 & 1) == 0)
        {
LABEL_31:
          v22 = v75;
          v75[(v36 >> 6) + 8] |= 1 << v36;
          v43 = (v22[6] + 16 * v36);
          *v43 = v28;
          v43[1] = v30;
          *(v22[7] + 8 * v36) = v4;
          v44 = v22[2];
          v45 = __OFADD__(v44, 1);
          v46 = v44 + 1;
          if (v45)
          {
            goto LABEL_40;
          }

          v22[2] = v46;
          goto LABEL_19;
        }
      }

      v22 = v75;
      v23 = v75[7];
      v24 = *(v23 + 8 * v36);
      *(v23 + 8 * v36) = v4;

LABEL_19:
      *v32 = v22;

      v73(v76, 0);

      ++v21;
      v19 = v69;
      v4 = v72;
      if (v74 == v68)
      {
        goto LABEL_43;
      }

      continue;
    }
  }

  v20 = sub_251211B8C();
  v4 = v72;
  if (v20)
  {
    goto LABEL_17;
  }

LABEL_43:

  sub_2512113EC();
  v47 = v65;
  v48 = sub_25121142C();
  v49 = sub_25121197C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v76[0] = v51;
    *v50 = 136315394;

    sub_2511D7C84(v52);
    v54 = v53;

    v55 = MEMORY[0x25306D890](v54, MEMORY[0x277D837D0]);
    v57 = v56;

    v58 = sub_2511CBE4C(v55, v57, v76);

    *(v50 + 4) = v58;
    *(v50 + 12) = 2080;
    v59 = sub_25121107C();
    sub_25121106C();

    sub_25121102C();
    v60 = sub_25121173C();
    v62 = v61;

    v63 = sub_2511CBE4C(v60, v62, v76);

    *(v50 + 14) = v63;
    _os_log_impl(&dword_251143000, v48, v49, "HPMHeadphoneManager: updateConnectedForHPM %s  %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v51, -1, -1);
    MEMORY[0x25306E960](v50, -1, -1);
  }

  (*(v66 + 8))(v4, v67);
  v64 = sub_25121107C();
  objc_sync_exit(v64);
}

uint64_t HPSHeadphoneManager.updateTopLevelEntry(hpDevice:)(void *a1)
{
  v2 = v1;
  v4 = sub_251210D3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25121169C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2511C5FD0();
  *v11 = sub_251211A0C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_2512116AC();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_27F4239F0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_25121101C();
  v15 = v14;
  swift_beginAccess();
  v16 = qword_27F425690;
  v17 = *(qword_27F425690 + 16);
  v28 = v5;
  if (v17)
  {
    v18 = sub_2511CC6F4(v13, v15);
    v20 = v19;

    if (v20)
    {
      v21 = *(*(v16 + 56) + 8 * v18);
      v22 = v21;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v21 = 0;
LABEL_8:
  swift_endAccess();
  v27 = v21;
  sub_2511D884C(v21, a1);
  v23 = [v2 weakHashTblCopy];
  v24 = [v23 objectEnumerator];

  sub_25121194C();
  sub_2511D8E8C(&qword_27F422B30, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_251211B0C();
  while (v33)
  {
    sub_2511C8CB0(&v32, v31);
    sub_2511CCD94(v31, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422B38, &unk_251218920);
    if (swift_dynamicCast())
    {
      [v29 updateTopLevelEntryWithHpDevice_];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v31);
    sub_251211B0C();
  }

  return (*(v28 + 8))(v7, v4);
}

uint64_t HPSHeadphoneManager.removeTopLevelEntry(hpDevice:)(void *a1)
{
  v2 = v1;
  v4 = sub_251210D3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25121144C();
  v55 = *(v8 - 1);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25121169C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2511C5FD0();
  *v14 = sub_251211A0C();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v15 = sub_2512116AC();
  v17 = *(v12 + 8);
  v16 = (v12 + 8);
  v17(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_8;
  }

  v54 = v5;
  sub_2512113EC();
  v16 = v2;
  v2 = a1;
  v18 = sub_25121142C();
  v19 = sub_25121197C();

  p_class_meths = &OBJC_PROTOCOL___NSObject.class_meths;
  if (os_log_type_enabled(v18, v19))
  {
    v52 = v19;
    v53 = v16;
    v21 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v60[0] = v51;
    *v21 = 136315650;
    if (qword_27F4239F0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_2511D7C84(v22);
    v24 = v23;

    v25 = MEMORY[0x25306D890](v24, MEMORY[0x277D837D0]);
    v27 = v26;

    v28 = sub_2511CBE4C(v25, v27, v60);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    sub_25121108C();
    v29 = sub_25121107C();
    sub_25121106C();

    sub_25121102C();
    v30 = sub_25121173C();
    v32 = v31;

    v33 = sub_2511CBE4C(v30, v32, v60);

    *(v21 + 14) = v33;
    *(v21 + 22) = 2112;
    *(v21 + 24) = v2;
    v34 = v50;
    *v50 = v2;
    v35 = v2;
    _os_log_impl(&dword_251143000, v18, v52, "HPMHeadphoneManager: removeTopLevelEntry %s  %s %@", v21, 0x20u);
    sub_2511CCD34(v34, &qword_27F4229F8, &qword_251218D50);
    MEMORY[0x25306E960](v34, -1, -1);
    v36 = v51;
    swift_arrayDestroy();
    MEMORY[0x25306E960](v36, -1, -1);
    MEMORY[0x25306E960](v21, -1, -1);

    (*(v55 + 8))(v10, v56);
    v16 = v53;
    p_class_meths = (&OBJC_PROTOCOL___NSObject + 32);
  }

  else
  {

    (*(v55 + 8))(v10, v56);
  }

  if (p_class_meths[318] != -1)
  {
    goto LABEL_20;
  }

LABEL_8:
  v37 = sub_25121101C();
  v39 = v38;
  swift_beginAccess();
  v40 = qword_27F425690;
  if (*(qword_27F425690 + 16))
  {
    v41 = sub_2511CC6F4(v37, v39);
    v43 = v42;

    if (v43)
    {
      v56 = *(*(v40 + 56) + 8 * v41);
      v44 = v56;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v56 = 0;
LABEL_13:
  swift_endAccess();
  [v2 setHasBackend_];
  v45 = v56;
  [v56 setHasBackend_];
  sub_2511D884C(v45, v2);
  sub_2511D69F0();
  v46 = [v16 weakHashTblCopy];
  v47 = [v46 objectEnumerator];

  sub_25121194C();
  sub_2511D8E8C(&qword_27F422B30, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_251211B0C();
  while (v61)
  {
    sub_2511C8CB0(v60, v59);
    sub_2511CCD94(v59, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422B38, &unk_251218920);
    if (swift_dynamicCast())
    {
      [v57 removeTopLevelEntryWithHpDevice_];
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v59);
    sub_251211B0C();
  }

  return (*(v54 + 8))(v7, v4);
}

void sub_2511D7C84(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_2511D8720(0, v2, 0);
    v3 = v33;
    v4 = a1 + 64;
    v5 = sub_251211B6C();
    v6 = 0;
    v7 = 1;
    v29 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      v31 = v6;
      v32 = *(a1 + 36);
      v10 = *(*(a1 + 56) + 8 * v5);
      sub_251211BBC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226F8, &unk_251217E40);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_251217FE0;
      *(v11 + 56) = sub_25121102C();
      *(v11 + 64) = sub_2511D8E8C(&qword_27F422B40, MEMORY[0x277D0FBB0], MEMORY[0x277D85388]);
      *(v11 + 32) = v10;
      v7 = v10;
      v12 = sub_2512117BC();
      MEMORY[0x25306D820](v12);

      MEMORY[0x25306D820](0x6572646441746220, 0xEB000000003A7373);
      v13 = sub_25121101C();
      MEMORY[0x25306D820](v13);

      MEMORY[0x25306D820](0x6B63614273616820, 0xEC0000003A646E65);
      v14 = [v7 hasBackend];
      v15 = v14 == 0;
      if (v14)
      {
        v16 = 1702195828;
      }

      else
      {
        v16 = 0x65736C6166;
      }

      if (v15)
      {
        v17 = 0xE500000000000000;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      MEMORY[0x25306D820](v16, v17);

      MEMORY[0x25306D820](10, 0xE100000000000000);
      if (v30)
      {
        goto LABEL_32;
      }

      v18 = v3;
      v34 = v3;
      v19 = *(v3 + 16);
      v20 = *(v18 + 24);
      if (v19 >= v20 >> 1)
      {
        sub_2511D8720((v20 > 1), v19 + 1, 1);
        v18 = v34;
      }

      *(v18 + 16) = v19 + 1;
      v21 = v18 + 16 * v19;
      *(v21 + 32) = 0xD000000000000011;
      *(v21 + 40) = 0x80000002512210F0;
      v7 = 1;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_29;
      }

      v4 = a1 + 64;
      v22 = *(a1 + 64 + 8 * v9);
      if ((v22 & (1 << v5)) == 0)
      {
        goto LABEL_30;
      }

      v3 = v18;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_31;
      }

      v23 = v22 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v26 = (a1 + 72 + 8 * v9);
        while (v25 < (v8 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_2511D8E80(v5, v32, 0);
            v8 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_2511D8E80(v5, v32, 0);
      }

LABEL_4:
      v6 = v31 + 1;
      v5 = v8;
      if (v31 + 1 == v29)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:

    __break(1u);
  }
}

uint64_t sub_2511D8080()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226F8, &unk_251217E40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_251217FE0;
  *(v1 + 56) = sub_25121102C();
  *(v1 + 64) = sub_2511D8E8C(&qword_27F422B40, MEMORY[0x277D0FBB0], MEMORY[0x277D85388]);
  *(v1 + 32) = v0;
  v2 = v0;
  v8 = sub_2512117BC();
  MEMORY[0x25306D820](32, 0xE100000000000000);
  v3 = [v2 description];
  v4 = sub_25121179C();
  v6 = v5;

  MEMORY[0x25306D820](v4, v6);

  return v8;
}

uint64_t sub_2511D8198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229B8, &unk_2512184F0);
  v35 = v4;
  result = sub_251211C7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_251211D1C();
      sub_2512117FC();
      result = sub_251211D3C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2511D843C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2511CC6F4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2511D8198(v16, a4 & 1);
      v11 = sub_2511CC6F4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_251211CFC();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_2511D85B4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

id sub_2511D85B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229B8, &unk_2512184F0);
  v2 = *v0;
  v3 = sub_251211C6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_2511D8720(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2511D8740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2511D8740(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229D0, &qword_251219310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2511D884C(void *a1, void *a2)
{
  v62 = sub_25121144C();
  v4 = *(v62 - 8);
  v5 = MEMORY[0x28223BE20](v62);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v57 - v7;
  MEMORY[0x28223BE20](v6);
  v11 = &v57 - v10;
  if (a1)
  {
    v61 = v9;
    v58 = sub_2511D8080();
    v13 = v12;
    v14 = a1;
    sub_251210F4C();
    v15 = sub_25121122C();

    v16 = sub_251210F6C();
    if (v15)
    {
      sub_251210FFC();
    }

    else
    {
      sub_251210FEC();
    }

    v23 = sub_251210F8C();
    v24 = sub_2512110AC();

    v59 = v14;
    v60 = v4;
    if (v24)
    {
      v25 = sub_251210F8C();
      sub_25121109C();

      sub_2512113EC();

      v26 = v24;
      v27 = sub_25121142C();
      v28 = sub_25121197C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v64[0] = v31;
        *v29 = 136315394;
        *(v29 + 4) = sub_2511CBE4C(v58, v13, v64);
        *(v29 + 12) = 2112;
        *(v29 + 14) = v26;
        *v30 = v24;
        v32 = v26;
        _os_log_impl(&dword_251143000, v27, v28, "HPMHeadphoneManager updateHeadphoneDevice hearing record for fetched:%s with updated record %@", v29, 0x16u);
        sub_2511CCD34(v30, &qword_27F4229F8, &qword_251218D50);
        MEMORY[0x25306E960](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x25306E960](v31, -1, -1);
        MEMORY[0x25306E960](v29, -1, -1);
      }

      else
      {
      }

      v43 = *(v60 + 8);
      v44 = v11;
    }

    else
    {
      sub_2512113EC();
      v33 = a2;
      v34 = sub_25121142C();
      v35 = sub_25121197C();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = v4;
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v64[0] = v38;
        *v37 = 136315138;
        v39 = sub_2511D8080();
        v41 = sub_2511CBE4C(v39, v40, v64);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_251143000, v34, v35, "HPMHeadphoneManager no incoming record for incomingDevice:%s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x25306E960](v38, -1, -1);
        MEMORY[0x25306E960](v37, -1, -1);

        v42 = v36;
      }

      else
      {

        v42 = v4;
      }

      v43 = *(v42 + 8);
      v44 = v8;
    }

    v45 = v62;
    v43(v44, v62);
    v46 = v61;
    sub_2512113EC();

    v47 = a2;
    v48 = sub_25121142C();
    v49 = sub_25121197C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v64[0] = v51;
      *v50 = 136315394;
      v52 = sub_2511CBE4C(v58, v13, v64);

      *(v50 + 4) = v52;
      *(v50 + 12) = 2080;
      v53 = sub_2511D8080();
      v55 = sub_2511CBE4C(v53, v54, v64);

      *(v50 + 14) = v55;
      _os_log_impl(&dword_251143000, v48, v49, "HPMHeadphoneManager updateHeadphoneDevice fetchedDevice:%s ::::: incomingDevice:%s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306E960](v51, -1, -1);
      MEMORY[0x25306E960](v50, -1, -1);

      v56 = v61;
    }

    else
    {

      v56 = v46;
    }

    return (v43)(v56, v45);
  }

  else
  {
    if (qword_27F4239F0 != -1)
    {
      swift_once();
    }

    v17 = sub_25121101C();
    v19 = v18;
    swift_beginAccess();
    v20 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = qword_27F425690;
    qword_27F425690 = 0x8000000000000000;
    sub_2511D843C(v20, v17, v19, isUniquelyReferenced_nonNull_native);

    qword_27F425690 = v63;
    return swift_endAccess();
  }
}

uint64_t sub_2511D8E80(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2511D8E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2511D8ED4()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F425698);
  __swift_project_value_buffer(v0, qword_27F425698);
  return sub_25121143C();
}

uint64_t sub_2511D8F44()
{
  if (qword_27F423A00 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F425698);
}

uint64_t sub_2511D8FA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F423A00 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F425698);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2511D9050(uint64_t a1, uint64_t a2)
{
  sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_251210D1C();

  return v4;
}

void sub_2511D911C()
{
  v1 = v0;
  sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_251210D1C();

  v5 = [v3 bundleForClass_];
  sub_251210D1C();

  v6 = objc_allocWithZone(MEMORY[0x277D37698]);
  v7 = sub_25121176C();

  v8 = sub_25121176C();

  v9 = [v6 initWithTitle:v7 detailText:v8 icon:{0, 0xE000000000000000}];

  v16 = v9;
  [v16 setModalInPresentation_];
  v10 = [v16 navigationItem];
  sub_2511C8A48(0, &qword_27F422B50, 0x277D751E0);
  sub_2511C8A48(0, &qword_27F422B58, 0x277D750C8);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_251211A6C();
  v12 = sub_25121199C();
  [v10 setRightBarButtonItem_];

  v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v14 = [v1 navigationController];
  if (v14)
  {
    v15 = v14;
    [v14 presentViewController:v13 animated:1 completion:0];
  }
}

void sub_2511D9454()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t BTSDeviceConfigController.b498Specifiers.getter()
{
  if (![v0 device])
  {
    return MEMORY[0x277D84F90];
  }

  swift_getObjectType();
  v1 = sub_2511DF9D0();
  swift_unknownObjectRelease();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422998, &qword_2512184D0);
  sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_251210D1C();
  v7 = v6;

  v8 = sub_2511D4478();
  v10 = sub_2511D4484(v5, v7, v8, v9);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = (*(*v11 + 144))(sub_2511D9F50);

  v13 = [v3 &selRef_addAdaptiveVolumeSpecifier + 3];
  v14 = sub_251210D1C();
  v16 = v15;

  v39 = 0u;
  v38 = 0u;
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = v1;
  v20 = sub_2511D3E4C();
  *(&v36 + 1) = sub_2511D9FC0;
  *(&v35 + 1) = sub_2511D9F58;
  *&v36 = v17;
  *&v35 = 0;
  v21 = sub_2511D4428(0, 0, v14, v16, &v38, 0, 0, 6, v40, 0, v20 & 1, v35, v36, v18, 0);
  v22 = (*(*v12 + 152))(v40, v21);

  sub_2511CCA6C(v40);
  v23 = (*(*v22 + 168))(sub_2511DA020, 0);

  v24 = [v3 bundleForClass_];
  v25 = sub_251210D1C();
  v27 = v26;

  v39 = 0u;
  v38 = 0u;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v29 = sub_2511D3E4C();
  v37.n128_u64[1] = sub_2511DA088;
  v37.n128_u64[0] = 0;
  sub_2511D4428(0, 0, v25, v27, &v38, 0, 0, 13, v40, 0, v29 & 1, 0, 0, v37, v28);

  v30 = (*(*v23 + 152))(v40);

  sub_2511CCA6C(v40);
  v31 = (*(*v30 + 168))(sub_2511DA1C4, 0);

  v33 = (*(*v31 + 176))(v32);

  return v33;
}