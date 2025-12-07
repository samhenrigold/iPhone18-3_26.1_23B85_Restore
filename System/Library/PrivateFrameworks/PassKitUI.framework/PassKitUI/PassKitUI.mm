uint64_t PKIsLowEndDevice()
{
  if (qword_1EBD6ABE8 != -1)
  {
    dispatch_once(&qword_1EBD6ABE8, &__block_literal_global_282);
  }

  return _MergedGlobals_591;
}

uint64_t __PKIsLowEndDevice_block_invoke()
{
  result = MGIsDeviceOneOfType();
  _MergedGlobals_591 = result;
  return result;
}

Class initCNAvatarImageRenderer()
{
  if (qword_1EBD68368 != -1)
  {
    dispatch_once(&qword_1EBD68368, &__block_literal_global_120);
  }

  result = objc_getClass("CNAvatarImageRenderer");
  _MergedGlobals_1_7 = result;
  _MergedGlobals_620 = CNAvatarImageRendererFunction;
  return result;
}

void *__LoadContactsUI_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary = result;
  return result;
}

void *__LoadContactsUI_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_0 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_1()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_1 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_2()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_2 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_3()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_3 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_4()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_4 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_5()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_5 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_6()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_6 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_7()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_7 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_8()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_8 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_9()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_9 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_10()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_10 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_11()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_11 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_12()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_12 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_13()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_13 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_14()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_14 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_15()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_15 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_16()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_16 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_17()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_17 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_18()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_18 = result;
  return result;
}

void *__LoadContactsUI_block_invoke_19()
{
  result = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
  LoadContactsUI_frameworkLibrary_19 = result;
  return result;
}

Class initCNAvatarImageRendererSettings()
{
  if (qword_1EBD68368 != -1)
  {
    dispatch_once(&qword_1EBD68368, &__block_literal_global_120);
  }

  result = objc_getClass("CNAvatarImageRendererSettings");
  qword_1EBD68370 = result;
  off_1EE98A688 = CNAvatarImageRendererSettingsFunction;
  return result;
}

Class initCNAvatarImageRenderingScope()
{
  if (qword_1EBD68368 != -1)
  {
    dispatch_once(&qword_1EBD68368, &__block_literal_global_120);
  }

  result = objc_getClass("CNAvatarImageRenderingScope");
  qword_1EBD68378 = result;
  off_1EE98A690 = CNAvatarImageRenderingScopeFunction;
  return result;
}

void __PKUIScreenScale_block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  qword_1EBD6ABF0 = v0;
}

double PKUIScreenScale()
{
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  return *&qword_1EBD6ABF0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__55(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__72(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__25(uint64_t a1)
{
}

{
}

void sub_1BD02D240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BD02D4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1BD02D8EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD126968;

  return sub_1BD02DA28(a1, v4);
}

uint64_t sub_1BD02DA28(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BD12350C;

  return v6(a1);
}

void sub_1BD02E074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _ColorLightness(void *a1, CGContext *a2, char *a3)
{
  v5 = *a3;
  CGContextSetFillColorWithColor(a2, [a1 CGColor]);
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  CGContextFillRect(a2, v8);
  LOBYTE(v6) = *a3;
  result = v6 / 255.0;
  *a3 = v5;
  return result;
}

id _NewColorByAdjustingColor(void *a1, char a2, double a3, double a4)
{
  v7 = a1;
  if (a2)
  {
    v8 = [MEMORY[0x1E69DC888] blackColor];
    v9 = kCGBlendModeDarken;
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    v9 = kCGBlendModeOverlay;
  }

  data = 0;
  v10 = PKColorSpaceStandardRGB();
  v11 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 4uLL, v10, 0x2002u);
  CGContextSetFillColorWithColor(v11, [v7 CGColor]);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = 1.0;
  v19.size.height = 1.0;
  CGContextFillRect(v11, v19);
  v12 = [v8 colorWithAlphaComponent:a3];
  CGContextSetBlendMode(v11, v9);
  CGContextSetFillColorWithColor(v11, [v12 CGColor]);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = 1.0;
  v20.size.height = 1.0;
  CGContextFillRect(v11, v20);
  v13 = [v8 colorWithAlphaComponent:a4];
  CGContextSetBlendMode(v11, kCGBlendModeNormal);
  CGContextSetFillColorWithColor(v11, [v13 CGColor]);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 1.0;
  v21.size.height = 1.0;
  CGContextFillRect(v11, v21);
  CGContextRelease(v11);
  v14 = vld1q_dup_f32(&data);
  *v14.i8 = vmovn_s32(vshlq_u32(v14, xmmword_1BE115A60));
  v15 = [objc_alloc(MEMORY[0x1E69DC888]) initWithRed:(v14.u8[4] / 255.0) green:(v14.u8[2] / 255.0) blue:(v14.u8[0] / 255.0) alpha:(v14.u8[6] / 255.0)];

  return v15;
}

id sub_1BD02F840@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v60 = a3;
  v59 = a2;
  v62 = a1;
  v61 = a4;
  v4 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1BE04A874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1BE04A884();
  MEMORY[0x1EEE9AC00](v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C740, &qword_1BE0EEE10);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  v12 = *(v6 + 16);
  v12(v8, v11, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v58 = sub_1BE048824();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C748, qword_1BE0BF350);
  sub_1BE052354();
  v12(v8, v11, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BD02FDFC();
  v57 = sub_1BE0487E4();
  sub_1BE052354();
  v12(v8, v11, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v13 = sub_1BE048824();
  v14 = v62;
  result = [v62 uniqueID];
  if (result)
  {
    v16 = result;
    v17 = sub_1BE052434();
    v19 = v18;

    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    v21 = v60;
    if (v20)
    {
      v22 = v14;
    }

    v23 = v14;
    v24 = PKSanitizedPrimaryAccountRepresentationForPass();

    v25 = v59;
    v26 = v58;
    if (v24)
    {
      v27 = sub_1BE052434();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v68 = v27;
    v69 = v29;
    sub_1BE0487D4();
    v30 = [v23 localizedDescription];
    v31 = sub_1BE052434();
    v33 = v32;

    v68 = v31;
    v69 = v33;
    sub_1BE0487D4();
    v34 = v25;
    v35 = v21;
    if (v21 >> 60 == 15)
    {
      v36 = [v23 iconImage];
      if (v36 && (v37 = v36, v38 = [v36 imageData], v37, v38))
      {
        v34 = sub_1BE04AAC4();
        v35 = v39;
      }

      else
      {
        v34 = 0;
        v35 = 0xF000000000000000;
      }
    }

    sub_1BD030394(v25, v21);
    sub_1BD030220(0, 0xF000000000000000, v40, v41, v42, v43, v44, v45);
    v46 = sub_1BD030234(v23);

    LOBYTE(v68) = v46;
    v47 = v57;
    sub_1BE0487D4();
    sub_1BD030220(v25, v21, v48, v49, v50, v51, v52, v53);
    *&v64 = v17;
    *(&v64 + 1) = v19;
    *&v65 = v23;
    *(&v65 + 1) = v34;
    *&v66 = v35;
    *(&v66 + 1) = v26;
    *&v67 = v47;
    *(&v67 + 1) = v13;
    v68 = v17;
    v69 = v19;
    v70 = v23;
    v71 = v34;
    v72 = v35;
    v73 = v26;
    v74 = v47;
    v75 = v13;
    sub_1BD0303B8(&v64, v63);
    result = sub_1BD030458(&v68);
    v54 = v65;
    v55 = v61;
    *v61 = v64;
    v55[1] = v54;
    v56 = v67;
    v55[2] = v66;
    v55[3] = v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD02FDFC()
{
  result = qword_1EBD36AF0;
  if (!qword_1EBD36AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AF0);
  }

  return result;
}

unint64_t sub_1BD02FE54()
{
  result = qword_1EBD36AE8;
  if (!qword_1EBD36AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AE8);
  }

  return result;
}

unint64_t sub_1BD02FEAC()
{
  result = qword_1EBD36AD0;
  if (!qword_1EBD36AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AD0);
  }

  return result;
}

unint64_t sub_1BD02FF0C()
{
  result = qword_1EBD36AF8;
  if (!qword_1EBD36AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AF8);
  }

  return result;
}

unint64_t sub_1BD02FF68()
{
  result = qword_1EBD36AE0;
  if (!qword_1EBD36AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AE0);
  }

  return result;
}

unint64_t sub_1BD02FFC0()
{
  result = qword_1EBD36AC8;
  if (!qword_1EBD36AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AC8);
  }

  return result;
}

unint64_t sub_1BD030018()
{
  result = qword_1EBD36AD8;
  if (!qword_1EBD36AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AD8);
  }

  return result;
}

unint64_t sub_1BD03006C()
{
  result = qword_1EBD36AC0;
  if (!qword_1EBD36AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AC0);
  }

  return result;
}

unint64_t sub_1BD0300C4()
{
  result = qword_1EBD36AA0;
  if (!qword_1EBD36AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AA0);
  }

  return result;
}

unint64_t sub_1BD03011C()
{
  result = qword_1EBD36AB8;
  if (!qword_1EBD36AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AB8);
  }

  return result;
}

unint64_t sub_1BD030174()
{
  result = qword_1EBD36AB0;
  if (!qword_1EBD36AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AB0);
  }

  return result;
}

unint64_t sub_1BD0301CC()
{
  result = qword_1EBD36AA8;
  if (!qword_1EBD36AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36AA8);
  }

  return result;
}

void sub_1BD030220(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2 >> 60 != 15)
  {
    sub_1BD1245AC(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1BD030234(void *a1)
{
  v2 = [a1 paymentPass];
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  if ([v3 isAccessPass])
  {

    return 1;
  }

  if ([v3 isTransitPass])
  {

    return 0;
  }

  if ([v3 isPeerPaymentPass])
  {

    return 3;
  }

  if ([v3 isAppleCardPass])
  {

    return 5;
  }

  if ([v3 isAppleBalancePass])
  {

    return 6;
  }

  v5 = [v3 isIdentityPass];

  if (v5)
  {
    return 2;
  }

LABEL_20:
  if ([a1 passType])
  {
    return 18;
  }

  v6 = [a1 style];
  if (v6 > 0xA)
  {
    return 18;
  }

  return byte_1BE0EAC6A[v6];
}

uint64_t sub_1BD030394(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BD041A38(a1, a2);
  }

  return a1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1BD0304AC()
{
  result = qword_1EBD36A90;
  if (!qword_1EBD36A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A90);
  }

  return result;
}

unint64_t sub_1BD030504()
{
  result = qword_1EBD36A98;
  if (!qword_1EBD36A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A98);
  }

  return result;
}

unint64_t sub_1BD03055C()
{
  result = qword_1EBD36A78;
  if (!qword_1EBD36A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A78);
  }

  return result;
}

unint64_t sub_1BD0305BC()
{
  result = qword_1EBD36A70;
  if (!qword_1EBD36A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A70);
  }

  return result;
}

unint64_t sub_1BD030618()
{
  result = qword_1EBD36A88;
  if (!qword_1EBD36A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A88);
  }

  return result;
}

unint64_t sub_1BD030670()
{
  result = qword_1EBD36A80;
  if (!qword_1EBD36A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A80);
  }

  return result;
}

unint64_t sub_1BD0306C8()
{
  result = qword_1EBD36A68;
  if (!qword_1EBD36A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A68);
  }

  return result;
}

unint64_t sub_1BD03071C()
{
  result = qword_1EBD36A60;
  if (!qword_1EBD36A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A60);
  }

  return result;
}

unint64_t sub_1BD030774()
{
  result = qword_1EBD36A58;
  if (!qword_1EBD36A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A58);
  }

  return result;
}

uint64_t sub_1BD0307C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_1BE048C84();
}

void sub_1BD030C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BD031430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BD031F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKSizeAlignedInRect(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  return PKSizeAlignedInRectWithScale();
}

uint64_t PKFloatRoundToPixel(__n128 a1, __n128 a2)
{
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  return PKFloatRoundToPixelWithScale();
}

uint64_t PKUIGetMinScreenWidthType()
{
  if (qword_1EBD6AC20 != -1)
  {
    dispatch_once(&qword_1EBD6AC20, &__block_literal_global_370);
  }

  return qword_1EBD6AC18;
}

void __LoadScreenTypes_block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 fixedCoordinateSpace];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = 0;
  v7 = 0;
  v8 = 480.0;
  v9 = 320.0;
  while (1)
  {
    v10 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
    if (v6 <= 0x13)
    {
      v10 = dbl_1BE114D10[v6];
      v11 = dbl_1BE114DB0[v6];
    }

    if (v10 == *MEMORY[0x1E695F060] && v11 == *(MEMORY[0x1E695F060] + 8))
    {
      break;
    }

    v13 = v10 < v9;
    v14 = v9 > v3;
    if (v10 > v9)
    {
      v14 = 1;
    }

    if (v10 <= v3)
    {
      v13 = v14;
    }

    v15 = v11 < v8;
    v16 = v8 > v5;
    if (v11 > v8)
    {
      v16 = 1;
    }

    if (v11 <= v5)
    {
      v15 = v16;
    }

    if (v10 != v9)
    {
      v15 = v13;
    }

    if (!v13)
    {
      v13 = v15;
    }

    if (v13)
    {
      v9 = v10;
      v8 = v11;
      v7 = v6;
    }

    ++v6;
  }

  qword_1EBD6AC10 = v7;
  if (v9 != v3 || v8 != v5)
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v25.width = v3;
      v25.height = v5;
      v21 = NSStringFromCGSize(v25);
      v22 = 138543362;
      v23 = v21;
      _os_log_error_impl(&dword_1BD026000, v18, OS_LOG_TYPE_ERROR, "Error: unrecognized screen size detected - %{public}@. Please file a radar.", &v22, 0xCu);
    }

    v7 = qword_1EBD6AC10;
  }

  v19 = v7 - 3;
  if (v19 > 0x10)
  {
    v20 = 0;
  }

  else
  {
    v20 = qword_1BE114E50[v19];
  }

  qword_1EBD6AC18 = v20;
}

unint64_t sub_1BD034F9C()
{
  result = qword_1EBD3A008;
  if (!qword_1EBD3A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A008);
  }

  return result;
}

unint64_t sub_1BD035004()
{
  result = qword_1EBD3A010;
  if (!qword_1EBD3A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A010);
  }

  return result;
}

unint64_t sub_1BD03506C()
{
  result = qword_1EBD39270;
  if (!qword_1EBD39270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39270);
  }

  return result;
}

unint64_t sub_1BD0350C4()
{
  result = qword_1EBD39278;
  if (!qword_1EBD39278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39278);
  }

  return result;
}

unint64_t sub_1BD035134()
{
  result = qword_1EBD5ABB0;
  if (!qword_1EBD5ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABB0);
  }

  return result;
}

unint64_t sub_1BD035200()
{
  result = qword_1EBD5ABB8;
  if (!qword_1EBD5ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABB8);
  }

  return result;
}

unint64_t sub_1BD035268()
{
  result = qword_1EBD45FE0;
  if (!qword_1EBD45FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45FE0);
  }

  return result;
}

unint64_t sub_1BD0352C0()
{
  result = qword_1EBD45FE8;
  if (!qword_1EBD45FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45FE8);
  }

  return result;
}

unint64_t sub_1BD035328()
{
  result = qword_1EBD4BA08;
  if (!qword_1EBD4BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BA08);
  }

  return result;
}

unint64_t sub_1BD035380()
{
  result = qword_1EBD4BA10;
  if (!qword_1EBD4BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BA10);
  }

  return result;
}

unint64_t sub_1BD0353D4()
{
  result = qword_1EBD3A4B0;
  if (!qword_1EBD3A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A4B0);
  }

  return result;
}

unint64_t sub_1BD03548C()
{
  result = qword_1EBD3A488;
  if (!qword_1EBD3A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A488);
  }

  return result;
}

uint64_t sub_1BD0354E0()
{
  v30 = sub_1BE048D74();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v27 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v26 = v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = v24 - v6;
  v7 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BE04A874();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v24[0] = sub_1BE04A884();
  v13 = *(v24[0] - 8);
  MEMORY[0x1EEE9AC00](v24[0]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v24[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298, &qword_1BE0FE830);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, qword_1EBDAB400);
  v18 = *(v9 + 16);
  v18(v11, v17, v8);
  sub_1BE04B0A4();
  v24[1] = v16;
  sub_1BE04A894();
  sub_1BE052354();
  v18(v11, v17, v8);
  sub_1BE04B0A4();
  v19 = v25;
  sub_1BE04A894();
  (*(v13 + 56))(v19, 0, 1, v24[0]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  sub_1BE052354();
  v18(v11, v17, v8);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v20 = v26;
  sub_1BE048664();
  v21 = sub_1BE048654();
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 0, 1, v21);
  v22(v27, 1, 1, v21);
  (*(v28 + 104))(v29, *MEMORY[0x1E695A500], v30);
  sub_1BD0304AC();
  return sub_1BE0488C4();
}

uint64_t sub_1BD035A98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1BD035CB4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3)
  {
  }

  else
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

unint64_t sub_1BD035D58()
{
  result = qword_1EBD3C6E0;
  if (!qword_1EBD3C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C6E0);
  }

  return result;
}

unint64_t sub_1BD035DB0()
{
  result = qword_1EBD3C6E8;
  if (!qword_1EBD3C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C6E8);
  }

  return result;
}

unint64_t sub_1BD035E08()
{
  result = qword_1EBD3C6F8;
  if (!qword_1EBD3C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C6F8);
  }

  return result;
}

unint64_t sub_1BD035E60()
{
  result = qword_1EBD3C6F0;
  if (!qword_1EBD3C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C6F0);
  }

  return result;
}

unint64_t sub_1BD035EBC()
{
  result = qword_1EBD3A468;
  if (!qword_1EBD3A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A468);
  }

  return result;
}

uint64_t sub_1BD035F10(uint64_t a1)
{
  v2 = sub_1BD035EBC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD035F7C()
{
  v0 = sub_1BE048D74();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v31 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v27 = v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = v25 - v7;
  v8 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BE04A874();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v25[0] = sub_1BE04A884();
  v14 = *(v25[0] - 8);
  MEMORY[0x1EEE9AC00](v25[0]);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  v25[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298, &qword_1BE0FE830);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_1EBDAB400);
  v19 = *(v10 + 16);
  v19(v12, v18, v9);
  sub_1BE04B0A4();
  v25[1] = v17;
  sub_1BE04A894();
  sub_1BE052354();
  v19(v12, v18, v9);
  sub_1BE04B0A4();
  v20 = v26;
  sub_1BE04A894();
  (*(v14 + 56))(v20, 0, 1, v25[0]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  sub_1BE052354();
  v19(v12, v18, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v21 = v27;
  sub_1BE048664();
  v22 = sub_1BE048654();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 0, 1, v22);
  v23(v28, 1, 1, v22);
  (*(v29 + 104))(v31, *MEMORY[0x1E695A500], v30);
  sub_1BD036534();
  sub_1BD0304AC();
  return sub_1BE0488B4();
}

unint64_t sub_1BD036534()
{
  result = qword_1EBD392A0;
  if (!qword_1EBD392A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD392A0);
  }

  return result;
}

unint64_t sub_1BD0366D4()
{
  result = qword_1EBD39258;
  if (!qword_1EBD39258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39258);
  }

  return result;
}

unint64_t sub_1BD036728()
{
  result = qword_1EBD392A8;
  if (!qword_1EBD392A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD392A8);
  }

  return result;
}

uint64_t sub_1BD03695C(uint64_t a1)
{
  v2 = sub_1BD036728();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD036998()
{
  v0 = sub_1BE048D74();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v31 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v27 = v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = v25 - v7;
  v8 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BE04A874();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v25[0] = sub_1BE04A884();
  v14 = *(v25[0] - 8);
  MEMORY[0x1EEE9AC00](v25[0]);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  v25[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39298, &qword_1BE0FE830);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_1EBDAB400);
  v19 = *(v10 + 16);
  v19(v12, v18, v9);
  sub_1BE04B0A4();
  v25[1] = v17;
  sub_1BE04A894();
  sub_1BE052354();
  v19(v12, v18, v9);
  sub_1BE04B0A4();
  v20 = v26;
  sub_1BE04A894();
  (*(v14 + 56))(v20, 0, 1, v25[0]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  sub_1BE052354();
  v19(v12, v18, v9);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v21 = v27;
  sub_1BE048664();
  v22 = sub_1BE048654();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 0, 1, v22);
  v23(v28, 1, 1, v22);
  (*(v29 + 104))(v31, *MEMORY[0x1E695A500], v30);
  sub_1BD037140();
  sub_1BD0304AC();
  return sub_1BE0488B4();
}

unint64_t sub_1BD037140()
{
  result = qword_1EBD39FF8;
  if (!qword_1EBD39FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39FF8);
  }

  return result;
}

unint64_t sub_1BD037390()
{
  result = qword_1EBD3A000;
  if (!qword_1EBD3A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A000);
  }

  return result;
}

unint64_t sub_1BD0373E4()
{
  result = qword_1EBD3A028;
  if (!qword_1EBD3A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3A028);
  }

  return result;
}

uint64_t sub_1BD037688(uint64_t a1)
{
  v2 = sub_1BD0373E4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD0376C4(uint64_t a1)
{
  v2 = sub_1BD0353D4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD037700(uint64_t a1)
{
  v2 = sub_1BD03548C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD03773C()
{
  result = qword_1EBD39260;
  if (!qword_1EBD39260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39268, qword_1BE0B82D0);
    sub_1BD030618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39260);
  }

  return result;
}

uint64_t sub_1BD0377C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD1CDC40;

  return sub_1BD037868();
}

uint64_t sub_1BD037868()
{
  v1 = sub_1BE04CFC4();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v2 = sub_1BE04CFE4();
  v0[23] = v2;
  v0[24] = *(v2 - 8);
  v0[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD03799C, 0, 0);
}

uint64_t sub_1BD03799C()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "PassEntity:suggestedEntities", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[26] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  v12 = [objc_opt_self() sharedInstance];
  v0[27] = v12;
  if (v12)
  {
    v13 = v12;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD038F54;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E10, &qword_1BE0BF320);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD038E38;
    v0[13] = &block_descriptor_19;
    v0[14] = v14;
    [v13 unexpiredPassesOrderedByGroup_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v15 = v0[26];
    sub_1BD1CC23C(v15, "PassEntity:suggestedEntities");
    v15, v16, v17, v18, v19, v20, v21, v22;

    v23 = v0[1];
    v24 = MEMORY[0x1E69E7CC0];

    return v23(v24);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_122(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_127(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_129(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_133(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_136(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_139(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_141(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_142(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_145(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_146(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_147(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_149(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_152(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_155(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_156(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_157(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_159(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_161(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_162(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_163(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_165(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_166(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_167(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_169(uint64_t a1, uint64_t a2)
{
  return sub_1BD038CD0(a2 + 32, a1 + 32);
}

{
  return sub_1BD038CD0(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_172(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_173(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_175(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_177(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_179(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_181(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_183(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_185(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_186(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_187(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_189(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_191(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_192(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_193(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_196(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_197(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_199(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_201(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_202(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_203(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_204(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_205(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_207(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_209(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_211(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_212(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_215(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_216(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_217(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_219(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_221(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_222(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_223(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_224(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_227(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_232(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_233(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_235(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_236(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_237(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_239(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_241(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_242(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_243(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_245(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_246(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_249(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t block_copy_helper_250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

uint64_t sub_1BD038CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BD038E38(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20);
    v4 = sub_1BE052744();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1BD038F54()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD0390A8, 0, 0);
}

uint64_t sub_1BD0390A8()
{
  v1 = v0[27];
  v2 = v0[18];
  v0[28] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = sub_1BD1CD51C;

    return sub_1BD0391EC(v2, 1);
  }

  else
  {
    v5 = v0[26];
    sub_1BD1CC23C(v5, "PassEntity:suggestedEntities");
    v5, v6, v7, v8, v9, v10, v11, v12;

    v13 = v0[1];
    v14 = MEMORY[0x1E69E7CC0];

    return v13(v14);
  }
}

uint64_t sub_1BD0391EC(uint64_t a1, char a2)
{
  *(v2 + 200) = a2;
  *(v2 + 144) = a1;
  v3 = sub_1BE04D214();
  *(v2 + 152) = v3;
  *(v2 + 160) = *(v3 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD0392BC, 0, 0);
}

char *sub_1BD0392BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 144);
  if (*(v8 + 200) == 1)
  {
    v10 = swift_task_alloc();
    *(v8 + 184) = v10;
    *v10 = v8;
    v10[1] = sub_1BD03EC74;

    return sub_1BD0395F8(v9, 0, 0, 0, 1, 1);
  }

  else
  {
    if (v9 >> 62)
    {
      v12 = sub_1BE053704();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v46 = MEMORY[0x1E69E7CC0];
      result = sub_1BD03EF98(0, v12 & ~(v12 >> 63), 0, a4, a5, a6, a7, a8);
      if (v12 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = 0;
      v13 = v46;
      v15 = *(v8 + 144) + 32;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFB40900](v14, *(v8 + 144));
        }

        else
        {
          v16 = *(v15 + 8 * v14);
        }

        sub_1BD02F840(v16, 0, 0xF000000000000000, (v8 + 16));
        v23 = v46[2];
        v22 = v46[3];
        if (v23 >= v22 >> 1)
        {
          sub_1BD03EF98((v22 > 1), v23 + 1, 1, v17, v18, v19, v20, v21);
        }

        ++v14;
        v46[2] = v23 + 1;
        v24 = &v46[8 * v23];
        v25 = *(v8 + 16);
        v26 = *(v8 + 32);
        v27 = *(v8 + 64);
        v24[4] = *(v8 + 48);
        v24[5] = v27;
        v24[2] = v25;
        v24[3] = v26;
      }

      while (v12 != v14);
    }

    sub_1BE04D074();
    sub_1BE048C84();
    v28 = sub_1BE04D204();
    v29 = sub_1BE052C54();
    if (os_log_type_enabled(v28, v29))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = v13[2];
      v13, v38, v39, v40, v41, v42, v43, v44;
      _os_log_impl(&dword_1BD026000, v28, v29, "PassEntityDataProvider: Returning %ld entities without snapshots", v37, 0xCu);
      MEMORY[0x1BFB45F20](v37, -1, -1);
    }

    else
    {
      v13, v30, v31, v32, v33, v34, v35, v36;
    }

    (*(*(v8 + 160) + 8))(*(v8 + 168), *(v8 + 152));

    v45 = *(v8 + 8);

    return v45(v13);
  }
}

uint64_t sub_1BD0395F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 113) = a6;
  *(v6 + 112) = a5;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = sub_1BE04D214();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD0396DC, 0, 0);
}

uint64_t sub_1BD0396DC()
{
  v68 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    sub_1BE04D074();
    sub_1BE048C84();
    v2 = sub_1BE04D204();
    v3 = sub_1BE052C54();
    v1, v4, v5, v6, v7, v8, v9, v10;
    if (os_log_type_enabled(v2, v3))
    {
      v11 = *(v0 + 88);
      v12 = *(v0 + 56);
      v13 = *(v0 + 64);
      v14 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v67 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1BD123690(v14, v1, &v67);
      _os_log_impl(&dword_1BD026000, v2, v3, "PassEntityDataProvider: Searching Spotlight for passes matching %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16, v17, v18, v19, v20, v21, v22, v23);
      MEMORY[0x1BFB45F20](v16, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);

      (*(v13 + 8))(v11, v12);
    }

    else
    {
      v45 = *(v0 + 88);
      v46 = *(v0 + 56);
      v47 = *(v0 + 64);

      (*(v47 + 8))(v45, v46);
    }

LABEL_17:
    v58 = *(v0 + 113);
    v59 = *(v0 + 112);
    v60 = *(v0 + 48);
    v66 = *(v0 + 32);
    v61 = *(v0 + 24);
    v62 = swift_task_alloc();
    *(v0 + 96) = v62;
    *(v62 + 16) = v58;
    *(v62 + 24) = v60;
    *(v62 + 32) = v59 & 1;
    *(v62 + 40) = v66;
    *(v62 + 56) = v61;
    v63 = swift_task_alloc();
    *(v0 + 104) = v63;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E28, &unk_1BE113210);
    *v63 = v0;
    v63[1] = sub_1BD03E798;

    return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000032, 0x80000001BE12DEC0, sub_1BD03B020, v62, v64);
  }

  v24 = *(v0 + 24);
  if (v24)
  {
    sub_1BE04D074();
    sub_1BE048C84();
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C54();
    if (os_log_type_enabled(v25, v26))
    {
      v34 = *(v0 + 24);
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      if (v34 >> 62)
      {
        v65 = v35;
        v43 = sub_1BE053704();
        v35 = v65;
      }

      else
      {
        v43 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v35 + 4) = v43;
      v44 = v35;
      v24, v36, v37, v38, v39, v40, v41, v42;
      _os_log_impl(&dword_1BD026000, v25, v26, "PassEntityDataProvider: Fetching %ld passes from Spotlight", v44, 0xCu);
      MEMORY[0x1BFB45F20](v44, -1, -1);
    }

    else
    {
      v24, v27, v28, v29, v30, v31, v32, v33;
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_17;
  }

  sub_1BE04D074();
  v48 = sub_1BE04D204();
  v49 = sub_1BE052C34();
  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 80);
  v52 = *(v0 + 56);
  v53 = *(v0 + 64);
  if (v50)
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_1BD026000, v48, v49, "PassEntityDataProvider: Must specify passes or search term", v54, 2u);
    MEMORY[0x1BFB45F20](v54, -1, -1);
  }

  (*(v53 + 8))(v51, v52);

  v55 = *(v0 + 8);
  v56 = MEMORY[0x1E69E7CC0];

  return v55(v56);
}

void __swift_destroy_boxed_opaque_existential_0(id *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *(a1[3] - 1);
  if ((*(v8 + 82) & 2) != 0)
  {
    *a1, a1[3], a3, a4, a5, a6, a7, a8;
  }

  else
  {
    (*(v8 + 8))();
  }
}

void block_destroy_helper_16(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 40), a2, a3, a4, a5, a6, a7, a8;
}

{
  *(a1 + 40), a2, a3, a4, a5, a6, a7, a8;
}

void block_destroy_helper_54(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 40), a2, a3, a4, a5, a6, a7, a8;
}

{
  *(a1 + 40), a2, a3, a4, a5, a6, a7, a8;
}

void block_destroy_helper_105(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 40), a2, a3, a4, a5, a6, a7, a8;
}

{
  *(a1 + 40), a2, a3, a4, a5, a6, a7, a8;
}

void sub_1BD03A3A0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v232 = a7;
  v223 = a1;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E30, &qword_1BE0E02B0);
  v224 = *(v226 - 8);
  v221 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v222 = &v219 - v12;
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v219 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x1E69E7CC0];
  v228 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
  v18 = swift_allocObject();
  v229 = xmmword_1BE0B69E0;
  *(v18 + 16) = xmmword_1BE0B69E0;
  *(v18 + 32) = 0xD000000000000012;
  *(v18 + 40) = 0x80000001BE12DF00;
  v225 = v17;
  if (a2)
  {
    v23 = sub_1BD03B038(1, 2, 1, v18, v19, v20, v21, v22);
    *(v23 + 2) = 2;
    v24 = v23;
    *(v23 + 6) = 0xD000000000000015;
    *(v23 + 7) = 0x80000001BE12DEA0;
  }

  else
  {
    v24 = v18;
  }

  v25 = sub_1BE052724();
  [v228 setFetchAttributes_];

  if ((a4 & 1) == 0)
  {
    sub_1BE04D074();
    v26 = sub_1BE04D204();
    v27 = sub_1BE052C54();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = a3;
      _os_log_impl(&dword_1BD026000, v26, v27, "PassEntityDataProvider: Spotlight will return maximum %ld results", v28, 0xCu);
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    [v228 setMaxCount_];
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v229;
  *(v36 + 32) = 0xD00000000000001FLL;
  *(v36 + 40) = 0x80000001BE12DF20;
  if (a6)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BE0B98E0;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1BE053834();
    *(&aBlock + 1), v38, v39, v40, v41, v42, v43, v44;
    *&aBlock = 0xD000000000000018;
    *(&aBlock + 1) = 0x80000001BE12DF70;
    MEMORY[0x1BFB3F610](a5, a6);
    MEMORY[0x1BFB3F610](1684218410, 0xE400000000000000);
    v45 = *(&aBlock + 1);
    *(v37 + 32) = aBlock;
    *(v37 + 40) = v45;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1BE053834();
    *(&aBlock + 1), v46, v47, v48, v49, v50, v51, v52;
    strcpy(&aBlock, "creator == *");
    HIWORD(aBlock) = -4864;
    MEMORY[0x1BFB3F610](a5, a6);
    MEMORY[0x1BFB3F610](1684218410, 0xE400000000000000);
    v53 = *(&aBlock + 1);
    *(v37 + 48) = aBlock;
    *(v37 + 56) = v53;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1BE053834();
    *(&aBlock + 1), v54, v55, v56, v57, v58, v59, v60;
    *&aBlock = 0xD00000000000001BLL;
    *(&aBlock + 1) = 0x80000001BE12DF90;
    MEMORY[0x1BFB3F610](a5, a6);
    MEMORY[0x1BFB3F610](1684218410, 0xE400000000000000);
    v61 = *(&aBlock + 1);
    *(v37 + 64) = aBlock;
    *(v37 + 72) = v61;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1BE053834();
    *(&aBlock + 1), v62, v63, v64, v65, v66, v67, v68;
    *&aBlock = 0xD000000000000018;
    *(&aBlock + 1) = 0x80000001BE12DFB0;
    MEMORY[0x1BFB3F610](a5, a6);
    MEMORY[0x1BFB3F610](0x296463222ALL, 0xE500000000000000);
    v69 = *(&aBlock + 1);
    *(v37 + 80) = aBlock;
    *(v37 + 88) = v69;
    *&aBlock = 40;
    *(&aBlock + 1) = 0xE100000000000000;
    v233 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
    sub_1BD03B274();
    v70 = sub_1BE0522E4();
    v72 = v71;
    v37, v71, v73, v74, v75, v76, v77, v78;
    MEMORY[0x1BFB3F610](v70, v72);
    v72, v79, v80, v81, v82, v83, v84, v85;
    MEMORY[0x1BFB3F610](41, 0xE100000000000000);
    v87 = *(&aBlock + 1);
    p_aBlock = aBlock;
    v89 = *(v36 + 16);
    v88 = *(v36 + 24);
    v90 = (v89 + 1);
    if (v89 >= v88 >> 1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v91 = v232;
      *(v36 + 16) = v90;
      v92 = v36 + 16 * v89;
      *(v92 + 32) = p_aBlock;
      *(v92 + 40) = v87;
      if (!v91)
      {
        break;
      }

LABEL_11:
      v93 = v91 & 0xFFFFFFFFFFFFFF8;
      if (v91 >> 62)
      {
        v123 = v91;
        v124 = sub_1BE053704();
        v91 = v123;
        v89 = v124;
        if (!v124)
        {
LABEL_31:
          v24, v29, v30, v31, v32, v33, v34, v35;
          v90 = MEMORY[0x1E69E7CC0];
          v122 = v226;
LABEL_32:
          *&aBlock = 40;
          *(&aBlock + 1) = 0xE100000000000000;
          v233 = v90;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
          sub_1BD03B274();
          v125 = sub_1BE0522E4();
          v127 = v126;
          v90, v126, v128, v129, v130, v131, v132, v133;
          MEMORY[0x1BFB3F610](v125, v127);
          v127, v134, v135, v136, v137, v138, v139, v140;
          MEMORY[0x1BFB3F610](41, 0xE100000000000000);
          v145 = aBlock;
          v147 = *(v36 + 16);
          v146 = *(v36 + 24);
          if (v147 >= v146 >> 1)
          {
            v36 = sub_1BD03B038((v146 > 1), v147 + 1, 1, v36, v141, v142, v143, v144);
          }

          *(v36 + 16) = v147 + 1;
          *(v36 + 16 * v147 + 32) = v145;
          goto LABEL_35;
        }
      }

      else
      {
        v89 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v89)
        {
          goto LABEL_31;
        }
      }

      v230 = v93;
      v87 = v91;
      v233 = MEMORY[0x1E69E7CC0];
      p_aBlock = &v233;
      sub_1BD03B254(0, v89 & ~(v89 >> 63), 0, v31, v32, v33, v34, v35);
      if (v89 < 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      v219 = v36;
      v220 = v24;
      v94 = 0;
      v90 = v233;
      v95 = v87;
      v231 = v87 & 0xC000000000000001;
      v88 = "contentType == com.apple.pkpass";
      v24 = 0x80000001BE12DF40;
      while (1)
      {
        v36 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        if (v231)
        {
          v96 = MEMORY[0x1BFB40900](v94, v95);
        }

        else
        {
          v88 = *(v230 + 16);
          if (v94 >= v88)
          {
            goto LABEL_28;
          }

          v96 = *&v95[8 * v94 + 32];
        }

        v97 = v96;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1BE053834();
        *(&aBlock + 1), v98, v99, v100, v101, v102, v103, v104;
        *&aBlock = 0xD000000000000028;
        *(&aBlock + 1) = 0x80000001BE12DF40;
        v105 = [v97 uniqueID];
        if (!v105)
        {
          goto LABEL_37;
        }

        v106 = v105;
        v107 = sub_1BE052434();
        v109 = v108;

        p_aBlock = &aBlock;
        MEMORY[0x1BFB3F610](v107, v109);
        v109, v110, v111, v112, v113, v114, v115, v116;
        MEMORY[0x1BFB3F610](39, 0xE100000000000000);

        v119 = *(&aBlock + 1);
        v87 = aBlock;
        v233 = v90;
        v121 = v90[2];
        v120 = v90[3];
        if (v121 >= v120 >> 1)
        {
          p_aBlock = &v233;
          sub_1BD03B254((v120 > 1), v121 + 1, 1, v118, v32, v33, v34, v35);
          v90 = v233;
        }

        v90[2] = v121 + 1;
        v88 = &v90[2 * v121];
        *(v88 + 32) = v87;
        *(v88 + 40) = v119;
        ++v94;
        v95 = v232;
        if (v36 == v89)
        {
          v220, v232, v117, v118, v32, v33, v34, v35;
          v122 = v226;
          v36 = v219;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v36 = sub_1BD03B038((v88 > 1), v90, 1, v36, v32, v33, v34, v35);
    }
  }

  else
  {
    v91 = v232;
    if (v232)
    {
      goto LABEL_11;
    }
  }

  v122 = v226;
  v24, v29, v30, v31, v32, v33, v34, v35;
LABEL_35:
  *&aBlock = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
  sub_1BD03B274();
  sub_1BE0522E4();
  v149 = v148;
  v36, v148, v150, v151, v152, v153, v154, v155;
  v156 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v157 = v228;
  v158 = sub_1BE052404();
  v149, v159, v160, v161, v162, v163, v164, v165;
  v166 = [v156 initWithQueryString:v158 queryContext:v157];

  v167 = swift_allocObject();
  *(v167 + 16) = v229;
  *(v167 + 32) = sub_1BE052434();
  *(v167 + 40) = v168;
  v169 = sub_1BE052724();
  v167, v170, v171, v172, v173, v174, v175, v176;
  [v166 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E40, &qword_1BE0E02B8);
  v177 = swift_allocObject();
  *(v177 + 16) = v229;
  v178 = *MEMORY[0x1E696A388];
  *(v177 + 32) = *MEMORY[0x1E696A388];
  type metadata accessor for FileProtectionType(0);
  v179 = v178;
  v180 = sub_1BE052724();
  v177, v181, v182, v183, v184, v185, v186, v187;
  [v166 setProtectionClasses_];

  v188 = v225;
  v237 = sub_1BD5426E0;
  v238 = v225;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v235 = sub_1BD5413DC;
  v236 = &block_descriptor_8;
  v189 = _Block_copy(&aBlock);
  v190 = v238;
  sub_1BE048964();
  v190, v191, v192, v193, v194, v195, v196, v197;
  [v166 setFoundItemsHandler_];
  _Block_release(v189);
  v198 = v224;
  v199 = v222;
  (*(v224 + 16))(v222, v223, v122);
  v200 = (*(v198 + 80) + 16) & ~*(v198 + 80);
  v201 = (v221 + v200 + 7) & 0xFFFFFFFFFFFFFFF8;
  v202 = swift_allocObject();
  (*(v198 + 32))(v202 + v200, v199, v122);
  *(v202 + v201) = v188;
  v237 = sub_1BD03E6C8;
  v238 = v202;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v235 = sub_1BD03E30C;
  v236 = &block_descriptor_14_1;
  v203 = _Block_copy(&aBlock);
  v204 = v238;
  sub_1BE048964();
  v204, v205, v206, v207, v208, v209, v210, v211;
  [v166 setCompletionHandler_];
  _Block_release(v203);
  [v166 start];
  v188, v212, v213, v214, v215, v216, v217, v218;
}

uint64_t sub_1BD03AF40(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1BD03AF78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E30, &qword_1BE0E02B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  *(v0 + v4), v5, v6, v7, v8, v9, v10, v11;

  return swift_deallocObject();
}

char *sub_1BD03B038(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD03B148(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD03B254(char *a1, int64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD03B148(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

unint64_t sub_1BD03B274()
{
  result = qword_1EBD55120;
  if (!qword_1EBD55120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55120);
  }

  return result;
}

void sub_1BD03B454(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t block_copy_helper_12_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

id PKPassPaymentFrontFaceValueFont(int a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD00]];
    v2 = [v1 fontDescriptorWithSymbolicTraits:65538];

    v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:16.0];
  }

  else
  {
    v3 = PKDefaultSystemFontOfSizeAndWeight(22.0, *MEMORY[0x1E69DB980]);
  }

  return v3;
}

id PKDefaultSystemFontOfSizeAndWeight(double a1, double a2)
{
  v2 = _PKSystemFontOfSizeAndWeightForDesign(*MEMORY[0x1E69658B8], @"ss04", a1, a2);

  return v2;
}

uint64_t _PKSystemFontOfSizeAndWeightForDesign(uint64_t a1, void *a2, double a3, double a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69DB878];
  v8 = a2;
  v9 = [v7 systemFontOfSize:a1 weight:a3 design:a4];
  v10 = [v9 fontDescriptor];
  v11 = *MEMORY[0x1E69657A8];
  v17 = v8;
  v18 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v14 = [v10 fontDescriptorByAddingAttributes:v13];

  v15 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:a3];

  return v15;
}

double PKUIPixelLength()
{
  if (qword_1EBD6AC08 != -1)
  {
    dispatch_once(&qword_1EBD6AC08, &__block_literal_global_300);
  }

  return *&qword_1EBD6AC00;
}

double __PKUIPixelLength_block_invoke()
{
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  result = 1.0 / *&qword_1EBD6ABF0;
  *&qword_1EBD6AC00 = 1.0 / *&qword_1EBD6ABF0;
  return result;
}

id PKUIImageFromPDF(void *a1, CGFloat a2, CGFloat a3, double a4)
{
  v7 = a1;
  v8 = v7;
  if (v7 && (v9 = CGPDFDocumentCreateWithURL(v7)) != 0)
  {
    v10 = v9;
    v16.width = a2;
    v16.height = a3;
    v11 = PKCreateCGImage(v9, v16, a4);
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v11 scale:0 orientation:a4];
      CGImageRelease(v12);
    }

    else
    {
      v13 = 0;
    }

    CGPDFDocumentRelease(v10);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t PKUserInterfaceIdiomSupportsLargeLayouts()
{
  if (qword_1EBD6ABE0 != -1)
  {
    dispatch_once(&qword_1EBD6ABE0, &__block_literal_global_50);
  }

  return (qword_1EBD6ABD8 < 7) & (0x62u >> qword_1EBD6ABD8);
}

void sub_1BD03E30C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1BE048964();
  v12 = a2;
  v4(a2);
  v3, v5, v6, v7, v8, v9, v10, v11;
}

void sub_1BD03E378(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - v10;
  if (a1)
  {
    v12 = a1;
    sub_1BE04D074();
    v13 = a1;
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C34();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1BD026000, v14, v15, "PassEntityDataProvider: Spotlight search failed with error: %@", v16, 0xCu);
      sub_1BD1E236C(v17);
      MEMORY[0x1BFB45F20](v17, -1, -1);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    v39[5] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E30, &qword_1BE0E02B0);
    sub_1BE052864();
  }

  else
  {
    sub_1BE04D074();
    sub_1BE048964();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      swift_beginAccess();
      v30 = a3[2];
      if (v30 >> 62)
      {
        v31 = sub_1BE053704();
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 4) = v31;
      a3, v23, v24, v25, v26, v27, v28, v29;
      _os_log_impl(&dword_1BD026000, v20, v21, "PassEntityDataProvider: Found %ld items in Spotlight", v22, 0xCu);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    else
    {

      a3, v32, v33, v34, v35, v36, v37, v38;
    }

    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    v39[4] = a3[2];
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E30, &qword_1BE0E02B0);
    sub_1BE052864();
  }
}

void sub_1BD03E6C8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49E30, &qword_1BE0E02B0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD03E378(a1, v1 + v4, v5);
}

uint64_t sub_1BD03E798()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD03E8B0, 0, 0);
}

uint64_t sub_1BD03E8B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

char *sub_1BD03E934()
{
  v1 = *(v0 + 144);
  v9 = sub_1BD03ED74(*(v0 + 192));
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v91 = MEMORY[0x1E69E7CC0];
    result = sub_1BD03EF98(0, i & ~(i >> 63), 0, v4, v5, v6, v7, v8);
    if (i < 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v12 = 0;
    v13 = *(v0 + 144);
    v14 = v91;
    v89 = v13 & 0xFFFFFFFFFFFFFF8;
    v90 = v13 & 0xC000000000000001;
    v88 = v13 + 32;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v90)
      {
        v16 = MEMORY[0x1BFB40900](v12, *(v0 + 144));
      }

      else
      {
        if (v12 >= *(v89 + 16))
        {
          goto LABEL_21;
        }

        v16 = *(v88 + 8 * v12);
      }

      v17 = v16;
      result = [v16 uniqueID];
      if (!result)
      {
        goto LABEL_31;
      }

      v18 = result;
      v19 = sub_1BE052434();
      v21 = v20;

      if (!v9[2])
      {
        v21, v22, v23, v24, v25, v26, v27, v28;
LABEL_15:
        v42 = 0;
        v41 = 0xF000000000000000;
        goto LABEL_16;
      }

      v29 = sub_1BD148F70(v19, v21);
      v31 = v30;
      v21, v30, v32, v33, v34, v35, v36, v37;
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      v38 = (v9[7] + 16 * v29);
      v39 = *v38;
      v40 = v38[1];
      sub_1BD041A38(*v38, v40);
      v41 = v40;
      v42 = v39;
LABEL_16:
      sub_1BD02F840(v17, v42, v41, (v0 + 80));
      v51 = v91[2];
      v50 = v91[3];
      if (v51 >= v50 >> 1)
      {
        sub_1BD03EF98((v50 > 1), v51 + 1, 1, v45, v46, v47, v48, v49);
      }

      v91[2] = v51 + 1;
      v52 = &v91[8 * v51];
      v53 = *(v0 + 80);
      v54 = *(v0 + 96);
      v55 = *(v0 + 128);
      v52[4] = *(v0 + 112);
      v52[5] = v55;
      v52[2] = v53;
      v52[3] = v54;
      ++v12;
      if (v15 == i)
      {
        *(v0 + 192), v43, v44, v45, v46, v47, v48, v49;
        v9, v56, v57, v58, v59, v60, v61, v62;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  *(v0 + 192), v2, v3, v4, v5, v6, v7, v8;
  v9, v63, v64, v65, v66, v67, v68, v69;
  v14 = MEMORY[0x1E69E7CC0];
LABEL_24:
  sub_1BE04D074();
  sub_1BE048C84();
  v70 = sub_1BE04D204();
  v71 = sub_1BE052C54();
  if (os_log_type_enabled(v70, v71))
  {
    v79 = swift_slowAlloc();
    *v79 = 134217984;
    *(v79 + 4) = v14[2];
    v14, v80, v81, v82, v83, v84, v85, v86;
    _os_log_impl(&dword_1BD026000, v70, v71, "PassEntityDataProvider: Returning %ld entities with snapshots", v79, 0xCu);
    MEMORY[0x1BFB45F20](v79, -1, -1);
  }

  else
  {
    v14, v72, v73, v74, v75, v76, v77, v78;
  }

  (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

  v87 = *(v0 + 8);

  return v87(v14);
}

uint64_t sub_1BD03EC74(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD03E934, 0, 0);
}

uint64_t sub_1BD03ED74(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFB40900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = v4;
      sub_1BD541460(&v9, &v8);

      if (v6 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return MEMORY[0x1E69E7CC8];
}

char *sub_1BD03EE8C(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD499E8, &qword_1BE0DF888);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 + 31;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 6);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[64 * v12])
    {
      memmove(v17, v18, v12 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD03EF98(char *a1, int64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD03EE8C(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PassEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PassEntityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BD03F0F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BD03F124(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BD03F124(char a1)
{
  result = 0x7469736E617274;
  switch(a1)
  {
    case 1:
      result = 0x737365636361;
      break;
    case 2:
      result = 0x797469746E656469;
      break;
    case 3:
      result = 0x6D79615072656570;
      break;
    case 4:
      result = 0x746E656D796170;
      break;
    case 5:
      result = 0x726143656C707061;
      break;
    case 6:
      result = 0x6C6142656C707061;
      break;
    case 7:
      result = 0x6E6F70756F63;
      break;
    case 8:
      result = 0x6472614374666967;
      break;
    case 9:
      result = 0x676E696472616F62;
      break;
    case 10:
      result = 0x4765646F63726162;
      break;
    case 11:
      result = 0x615068746C616568;
      break;
    case 12:
      result = 0x4165646F63726162;
      break;
    case 13:
      result = 0x5065646F63726162;
      break;
    case 14:
      result = 0x636954746E657665;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BD03F3B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v99 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v115 = &v99 - v4;
  v5 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v120 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04A874();
  v119 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04A884();
  v121 = *(v13 - 8);
  v122 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E0B0, &qword_1BE0EAC60);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEF8, &qword_1BE0BDC08);
  v17 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v117 = *(*(v16 - 8) + 72);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BE0EA9A0;
  v102 = v18;
  v118 = v16;
  v116 = v18 + v17;
  *(v18 + v17) = 1;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v112 = v7;
  v114 = __swift_project_value_buffer(v7, qword_1EBDAB400);
  v19 = *(v119 + 16);
  v119 += 16;
  v19(v9, v114, v7);
  v113 = v19;
  sub_1BE04B0A4();
  v20 = v15;
  sub_1BE04A894();
  v21 = *(v121 + 56);
  v121 += 56;
  v109 = v21;
  v22 = v115;
  v21(v115, 1, 1, v122);
  v110 = sub_1BE048BB4();
  v23 = *(v110 - 8);
  v108 = *(v23 + 56);
  v111 = v23 + 56;
  v108(v2, 1, 1, v110);
  v107 = v2;
  v24 = v116;
  v25 = v22;
  sub_1BE048BE4();
  v26 = v24;
  v103 = *(v118 + 48);
  *(v24 + v117) = 6;
  v106 = v12;
  sub_1BE052354();
  v105 = v9;
  v27 = v114;
  v28 = v112;
  v19(v9, v114, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v29 = v109;
  v109(v25, 1, 1, v122);
  v30 = v107;
  v108(v107, 1, 1, v110);
  sub_1BE048BE4();
  v103 = 2 * v117;
  v100 = (v26 + 2 * v117);
  v31 = v118;
  v101 = *(v118 + 48);
  *(v26 + v103) = 5;
  sub_1BE052354();
  v32 = v105;
  v113(v105, v27, v28);
  sub_1BE04B0A4();
  v104 = v20;
  v33 = v32;
  sub_1BE04A894();
  v29(v115, 1, 1, v122);
  v34 = v110;
  v108(v30, 1, 1, v110);
  sub_1BE048BE4();
  v35 = v116;
  v36 = v117;
  v101 = v116 + v103 + v117;
  v103 = *(v31 + 48);
  *v101 = 2;
  sub_1BE052354();
  v37 = v114;
  v113(v33, v114, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v38 = v115;
  v109(v115, 1, 1, v122);
  v39 = v34;
  v40 = v108;
  v108(v30, 1, 1, v39);
  sub_1BE048BE4();
  v103 = 4 * v36;
  v100 = (v35 + 4 * v36);
  v41 = v118;
  v101 = *(v118 + 48);
  *v100 = 4;
  sub_1BE052354();
  v42 = v37;
  v43 = v112;
  v113(v105, v42, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v109(v38, 1, 1, v122);
  v44 = v110;
  v40(v107, 1, 1, v110);
  sub_1BE048BE4();
  v45 = v117;
  v101 = v116 + v103 + v117;
  v103 = *(v41 + 48);
  *v101 = 3;
  sub_1BE052354();
  v47 = v113;
  v46 = v114;
  v113(v105, v114, v43);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v48 = v109;
  v109(v115, 1, 1, v122);
  v49 = v107;
  v108(v107, 1, 1, v44);
  sub_1BE048BE4();
  v50 = v116;
  v101 = v116 + 6 * v45;
  v103 = *(v118 + 48);
  *v101 = 0;
  sub_1BE052354();
  v51 = v105;
  v47(v105, v46, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v48(v115, 1, 1, v122);
  v52 = v108;
  v108(v49, 1, 1, v110);
  sub_1BE048BE4();
  v103 = 8 * v117;
  v100 = (v50 + 7 * v117);
  v101 = *(v118 + 48);
  *v100 = 7;
  sub_1BE052354();
  v54 = v113;
  v53 = v114;
  v55 = v112;
  v113(v51, v114, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v56 = v115;
  v109(v115, 1, 1, v122);
  v57 = v110;
  v52(v49, 1, 1, v110);
  sub_1BE048BE4();
  v58 = v116;
  v100 = (v116 + v103);
  v101 = *(v118 + 48);
  *v100 = 8;
  sub_1BE052354();
  v54(v105, v53, v55);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v59 = v56;
  v60 = v109;
  v109(v56, 1, 1, v122);
  v61 = v108;
  v108(v107, 1, 1, v57);
  sub_1BE048BE4();
  v101 = v58 + v103 + v117;
  v103 = *(v118 + 48);
  *v101 = 9;
  sub_1BE052354();
  v62 = v105;
  v63 = v113;
  v64 = v112;
  v113(v105, v114, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v65 = v122;
  v60(v59, 1, 1, v122);
  v61(v107, 1, 1, v110);
  sub_1BE048BE4();
  v66 = v116;
  v101 = v116 + 10 * v117;
  v103 = *(v118 + 48);
  *v101 = 10;
  sub_1BE052354();
  v63(v62, v114, v64);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v67 = v109;
  v109(v59, 1, 1, v65);
  v68 = v107;
  v69 = v108;
  v108(v107, 1, 1, v110);
  sub_1BE048BE4();
  v70 = v117;
  v101 = v66 + 11 * v117;
  v71 = v118;
  v103 = *(v118 + 48);
  *v101 = 12;
  sub_1BE052354();
  v113(v105, v114, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v67(v115, 1, 1, v122);
  v72 = v110;
  v69(v68, 1, 1, v110);
  sub_1BE048BE4();
  v101 = v116 + 12 * v70;
  v103 = *(v71 + 48);
  *v101 = 11;
  sub_1BE052354();
  v73 = v113;
  v74 = v114;
  v75 = v112;
  v113(v105, v114, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v76 = v115;
  v109(v115, 1, 1, v122);
  v77 = v107;
  v108(v107, 1, 1, v72);
  v78 = v76;
  sub_1BE048BE4();
  v101 = v116 + 13 * v117;
  v103 = *(v118 + 48);
  *v101 = 13;
  sub_1BE052354();
  v79 = v105;
  v73(v105, v74, v75);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v80 = v109;
  v109(v78, 1, 1, v122);
  v81 = v110;
  v82 = v108;
  v108(v77, 1, 1, v110);
  sub_1BE048BE4();
  v101 = v116 + 14 * v117;
  v83 = v118;
  v103 = *(v118 + 48);
  *v101 = 14;
  sub_1BE052354();
  v113(v79, v114, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v80(v115, 1, 1, v122);
  v82(v107, 1, 1, v81);
  sub_1BE048BE4();
  v103 = 16 * v117;
  v100 = (v116 + 15 * v117);
  v101 = *(v83 + 48);
  *v100 = 15;
  sub_1BE052354();
  v85 = v113;
  v84 = v114;
  v86 = v112;
  v113(v79, v114, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v87 = v122;
  v88 = v109;
  v109(v115, 1, 1, v122);
  v89 = v110;
  v108(v107, 1, 1, v110);
  sub_1BE048BE4();
  v100 = (v116 + v103);
  v101 = *(v118 + 48);
  *v100 = 16;
  sub_1BE052354();
  v90 = v105;
  v85(v105, v84, v86);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v88(v115, 1, 1, v87);
  v91 = v89;
  v92 = v108;
  v108(v107, 1, 1, v91);
  sub_1BE048BE4();
  v93 = v116;
  v94 = (v116 + v103 + v117);
  v103 = *(v118 + 48);
  *v94 = 17;
  sub_1BE052354();
  v113(v90, v114, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v95 = v115;
  v109(v115, 1, 1, v122);
  v96 = v107;
  v92(v107, 1, 1, v110);
  sub_1BE048BE4();
  *(v93 + 18 * v117) = 18;
  sub_1BE052354();
  v113(v90, v114, v112);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v109(v95, 1, 1, v122);
  v92(v96, 1, 1, v110);
  sub_1BE048BE4();
  v97 = sub_1BD040BE0(v102);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v97;
}

unint64_t sub_1BD040BE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BEF8, &qword_1BE0BDC08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF00, &unk_1BE0BDC10);
    v7 = sub_1BE053A04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1BE048964();
    while (1)
    {
      sub_1BD0DE19C(v9, v5, &qword_1EBD3BEF8, &qword_1BE0BDC08);
      v11 = *v5;
      result = sub_1BD040DC8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1BE048C04();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v7[2] = v26;
      v9 += v10;
      if (!--v6)
      {
        v7, v17, v18, v19, v20, v21, v22, v23;
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BD040DF4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1BE053D04();
  a2(a1);
  v6 = v5;
  sub_1BE052524();
  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = sub_1BE053D64();

  return a3(a1, v14);
}

unint64_t sub_1BD040E90(char a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v12 = ~v9;
    while (1)
    {
      v13 = 0xE700000000000000;
      v14 = 0x7469736E617274;
      switch(*(*(v8 + 48) + v10))
      {
        case 1:
          v13 = 0xE600000000000000;
          v14 = 0x737365636361;
          break;
        case 2:
          v13 = 0xE800000000000000;
          v14 = 0x797469746E656469;
          break;
        case 3:
          v13 = 0xEB00000000746E65;
          v14 = 0x6D79615072656570;
          break;
        case 4:
          v14 = 0x746E656D796170;
          break;
        case 5:
          v14 = 0x726143656C707061;
          v13 = 0xE900000000000064;
          break;
        case 6:
          v14 = 0x6C6142656C707061;
          v13 = 0xEC00000065636E61;
          break;
        case 7:
          v13 = 0xE600000000000000;
          v14 = 0x6E6F70756F63;
          break;
        case 8:
          v13 = 0xE800000000000000;
          v14 = 0x6472614374666967;
          break;
        case 9:
          v14 = 0x676E696472616F62;
          v13 = 0xEC00000073736150;
          break;
        case 0xA:
          v14 = 0x4765646F63726162;
          v13 = 0xEE00636972656E65;
          break;
        case 0xB:
          v14 = 0x615068746C616568;
          v13 = 0xEA00000000007373;
          break;
        case 0xC:
          v14 = 0x4165646F63726162;
          v13 = 0xED00007373656363;
          break;
        case 0xD:
          v14 = 0x5065646F63726162;
          v13 = 0xEE00746E656D7961;
          break;
        case 0xE:
          v14 = 0x636954746E657665;
          v13 = 0xEB0000000074656BLL;
          break;
        case 0xF:
          v14 = 0xD00000000000001DLL;
          v13 = 0x80000001BE117DB0;
          break;
        case 0x10:
          v14 = 0xD000000000000011;
          v13 = 0x80000001BE117DD0;
          break;
        case 0x11:
          v14 = 0xD000000000000014;
          v13 = 0x80000001BE117DF0;
          break;
        case 0x12:
          v13 = 0xE500000000000000;
          v14 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v15 = 0xE700000000000000;
      v16 = 0x7469736E617274;
      switch(a1)
      {
        case 1:
          v15 = 0xE600000000000000;
          v16 = 0x737365636361;
          if (v14 == 0x737365636361)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        case 2:
          v15 = 0xE800000000000000;
          v16 = 0x797469746E656469;
          if (v14 != 0x797469746E656469)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 3:
          v15 = 0xEB00000000746E65;
          v16 = 0x6D79615072656570;
          if (v14 != 0x6D79615072656570)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 4:
          v16 = 0x746E656D796170;
          if (v14 != 0x746E656D796170)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 5:
          v16 = 0x726143656C707061;
          v15 = 0xE900000000000064;
          if (v14 != 0x726143656C707061)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 6:
          v16 = 0x6C6142656C707061;
          v17 = 1701015137;
          goto LABEL_51;
        case 7:
          v15 = 0xE600000000000000;
          v16 = 0x6E6F70756F63;
          if (v14 != 0x6E6F70756F63)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 8:
          v15 = 0xE800000000000000;
          v16 = 0x6472614374666967;
          if (v14 != 0x6472614374666967)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 9:
          v16 = 0x676E696472616F62;
          v17 = 1936941392;
LABEL_51:
          v15 = (v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
          if (v14 != v16)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 10:
          v16 = 0x4765646F63726162;
          v15 = 0xEE00636972656E65;
          goto LABEL_56;
        case 11:
          v16 = 0x615068746C616568;
          v15 = 0xEA00000000007373;
          if (v14 != 0x615068746C616568)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 12:
          v16 = 0x4165646F63726162;
          v15 = 0xED00007373656363;
          if (v14 != 0x4165646F63726162)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 13:
          v16 = 0x5065646F63726162;
          v15 = 0xEE00746E656D7961;
          if (v14 != 0x5065646F63726162)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 14:
          v16 = 0x636954746E657665;
          v15 = 0xEB0000000074656BLL;
          if (v14 != 0x636954746E657665)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 15:
          v16 = 0xD00000000000001DLL;
          v15 = 0x80000001BE117DB0;
          if (v14 != 0xD00000000000001DLL)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 16:
          v16 = 0xD000000000000011;
          v15 = 0x80000001BE117DD0;
          if (v14 != 0xD000000000000011)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 17:
          v16 = 0xD000000000000014;
          v15 = 0x80000001BE117DF0;
          if (v14 != 0xD000000000000014)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 18:
          v15 = 0xE500000000000000;
          v16 = 0x726568746FLL;
          if (v14 != 0x726568746FLL)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        default:
LABEL_56:
          if (v14 != v16)
          {
            goto LABEL_58;
          }

LABEL_57:
          if (v13 == v15)
          {
            v13, a2, v16, a4, a5, a6, a7, a8;
            v15, v33, v34, v35, v36, v37, v38, v39;
            return v10;
          }

LABEL_58:
          v18 = sub_1BE053B84();
          v13, v19, v20, v21, v22, v23, v24, v25;
          v15, v26, v27, v28, v29, v30, v31, v32;
          if (v18)
          {
            return v10;
          }

          v10 = (v10 + 1) & v12;
          if (((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            return v10;
          }

          break;
      }
    }
  }

  return v10;
}

uint64_t sub_1BD0414EC(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  sub_1BD03F124(v2);
  v4 = v3;
  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

uint64_t sub_1BD04154C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BD03F124(*a1);
  v5 = v4;
  v6 = sub_1BD03F124(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1BE053B84();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

void *sub_1BD0415D4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BE04A874();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v33 = sub_1BE04A884();
  v13 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  sub_1BE0487C4();
  if (v36)
  {
    v36, v14, v15, v16, v17, v18, v19, v20;
    result = sub_1BE0487C4();
    if (!v36)
    {
      __break(1u);
      goto LABEL_15;
    }

    sub_1BE04A864();
  }

  else
  {
    sub_1BE052354();
    if (qword_1EBD36CF8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v8, qword_1EBDAB400);
    (*(v9 + 16))(v11, v22, v8);
    sub_1BE04B0A4();
    sub_1BE04A894();
  }

  sub_1BE0487C4();
  if (!v36)
  {
    sub_1BE0487C4();
    sub_1BD030018();
    sub_1BE048E14();
    goto LABEL_11;
  }

  v36, v23, v24, v25, v26, v27, v28, v29;
  result = sub_1BE0487C4();
  if (!v36)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_1BE04A864();
LABEL_11:
  v30 = 1;
  (*(v13 + 56))(v6, 0, 1, v33);
  v31 = v34;
  if (*(v1 + 32) >> 60 != 15)
  {
    sub_1BD041A38(*(v1 + 24), *(v1 + 32));
    sub_1BE048BA4();
    v30 = 0;
  }

  v32 = sub_1BE048BB4();
  (*(*(v32 - 8) + 56))(v31, v30, 1, v32);
  return sub_1BE048BD4();
}

uint64_t sub_1BD041A38(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }

    sub_1BE048964();
  }

  return sub_1BE048964();
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD041AA0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  v2, v3, v4, v5, v6, v7, v8, v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD041BC0, 0, 0);
}

uint64_t sub_1BD041BC0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_1BD041C28(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

id PKLookupAppStoreApplications(void *a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v3 = a2;
  if (v3)
  {
    v21 = v3;
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Looking up item(s) from AppleMediaServices: %@.", &buf, 0xCu);
    }

    v24 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"Wallet App Lookup"];
    v7 = [v22 pk_arrayByApplyingBlock:&__block_literal_global_44];
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = [v8 initWithObjects:{*MEMORY[0x1E698B3F0], *MEMORY[0x1E698B410], *MEMORY[0x1E698B428], *MEMORY[0x1E698B420], *MEMORY[0x1E698B418], *MEMORY[0x1E698B408], 0}];
    [v24 addOperation:&__block_literal_global_319];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__6;
    v46 = __Block_byref_object_dispose__6;
    v47 = 0;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __PKLookupAppStoreApplications_block_invoke_4;
    v38[3] = &unk_1E8012D58;
    v10 = v6;
    v39 = v10;
    v11 = v7;
    v40 = v11;
    p_buf = &buf;
    [v24 addOperation:v38];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v12)
    {
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __PKLookupAppStoreApplications_block_invoke_6;
          v29[3] = &unk_1E8014380;
          v33 = &buf;
          v29[4] = v15;
          v30 = v10;
          v31 = v9;
          v32 = v5;
          [v24 addOperation:v29];
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v12);
    }

    v16 = [MEMORY[0x1E695DFB0] null];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __PKLookupAppStoreApplications_block_invoke_8;
    v25[3] = &unk_1E80142E0;
    v28 = v21;
    v17 = v5;
    v26 = v17;
    v18 = v10;
    v27 = v18;
    v19 = [v24 evaluateWithInput:v16 completion:v25];

    _Block_object_dispose(&buf, 8);
    v3 = v21;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id _PKCreateASCLookupRequestForStoreID(void *a1, int a2)
{
  v3 = MEMORY[0x1E698B398];
  v4 = a1;
  v5 = [[v3 alloc] initWithNumberValue:v4];

  v6 = MEMORY[0x1E698B358];
  if (!a2)
  {
    v6 = MEMORY[0x1E698B350];
  }

  v7 = MEMORY[0x1E698B3C0];
  v8 = *v6;
  v9 = [v7 alloc];
  v10 = [v9 _initWithID:v5 kind:*MEMORY[0x1E698B360] context:v8 clientID:@"com.apple.Passbook" enableAppDistribution:1];

  return v10;
}

void __PKLookupAppStoreApplications_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PKLookupAppStoreApplications_block_invoke_3;
  v9[3] = &unk_1E8010E20;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __LookupInstalledApplications_block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __LookupInstalledApplications_block_invoke_5(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  v23 = *MEMORY[0x1E69D4D40];
  v21 = v1;
  if (v1)
  {
    v20 = *v34;
    v2 = *MEMORY[0x1E69D4D48];
    do
    {
      v3 = 0;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v33 + 1) + 8 * v3);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v5 = *(a1 + 40);
        v6 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v30;
          v22 = v3;
LABEL_8:
          v9 = 0;
          while (1)
          {
            if (*v30 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v29 + 1) + 8 * v9);
            v11 = [v10 valueForProperty:v2];
            if ([v11 isEqual:v4])
            {
              break;
            }

            v12 = [v10 valueForProperty:v23];
            v13 = [v12 isEqual:*(a1 + 48)];

            if (v13)
            {
              goto LABEL_17;
            }

            if (v7 == ++v9)
            {
              v7 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
              v3 = v22;
              if (v7)
              {
                goto LABEL_8;
              }

              goto LABEL_15;
            }
          }

LABEL_17:
          v14 = v10;

          v3 = v22;
          if (v14)
          {
            goto LABEL_21;
          }
        }

        else
        {
LABEL_15:
        }

        ++v3;
      }

      while (v3 != v21);
      v21 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v21);
  }

  v14 = 0;
LABEL_21:

  v15 = [v14 valueForProperty:v23];
  v16 = [v14 isPlaceholder];
  if (*(a1 + 56) && v15 && (v16 & 1) == 0 && ([*(a1 + 64) isCanceled] & 1) == 0)
  {
    v17 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v15];
    v18 = *(a1 + 56);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __LookupInstalledApplications_block_invoke_6;
    v25[3] = &unk_1E80143F8;
    v26 = v18;
    v28 = *(a1 + 72);
    v27 = v14;
    [v17 getCGImageForImageDescriptor:v26 completion:v25];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void *sub_1BD042720@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1BD042774(void *a1, uint64_t *a2)
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

void *sub_1BD0427A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1BD0427D0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_1BD042928(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BD0D7EE0(a1);
  a1, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_1BD04296C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE052434();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD0429C4(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1BE04EAA4();
  }

  else
  {
    sub_1BE04E7B4();
  }

  return sub_1BE04EBD4();
}

uint64_t sub_1BD042A2C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1BE04EAA4();
    sub_1BE04EBD4();
    sub_1BD0D722C();
  }

  else
  {
    sub_1BE04E7B4();
    sub_1BE04EBD4();
    sub_1BD0D8820(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1BD042B20(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1BE04FE94();

    return sub_1BE04EBD4();
  }

  else
  {
    sub_1BE04EE24();
    swift_getWitnessTable();
    sub_1BE04FC04();
    sub_1BE04EBD4();
    sub_1BE0534B4();
    swift_getWitnessTable();
    sub_1BE04EE24();
    swift_getWitnessTable();
    sub_1BE04FC04();
    return sub_1BE04EBD4();
  }
}

uint64_t sub_1BD042C84(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1BE04FE94();
    sub_1BE04EBD4();
  }

  else
  {
    sub_1BE04EE24();
    swift_getWitnessTable();
    sub_1BE04FC04();
    sub_1BE04EBD4();
    sub_1BE0534B4();
    swift_getWitnessTable();
    sub_1BE04EE24();
    swift_getWitnessTable();
    sub_1BE04FC04();
    sub_1BE04EBD4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for RedemptionDetailsLineLimit(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RedemptionDetailsLineLimit(uint64_t result, int a2, int a3)
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

uint64_t sub_1BD043018(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD043038(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1BD043194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BD043250(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BD04331C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1BE04AF64();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1BD043394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1BE04AF64();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1BD043410()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BD04345C()
{
  if (*(v0 + 24))
  {
    *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0434A4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  if (*(v8 + 40))
  {
    *(v8 + 48), v16, v17, v18, v19, v20, v21, v22;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0434FC()
{

  return swift_deallocObject();
}

uint64_t sub_1BD043550()
{
  v0[5], v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t sub_1BD043598()
{

  return swift_deallocObject();
}

uint64_t sub_1BD04365C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0, "\\J\r");
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[12];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388B0, &unk_1BE0B7300);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_1BD0437EC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A0, "\\J\r");
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388A8, &unk_1BE0C6320);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD388B0, &unk_1BE0B7300);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BD043990(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BD0439AC()
{
  v1 = type metadata accessor for AccountServiceSheet(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80));
  *(v2 + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 24), v10, v11, v12, v13, v14, v15, v16;
  *(v2 + 32), v17, v18, v19, v20, v21, v22, v23;

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56), v24, v25, v26, v27, v28, v29, v30);
  }

  *(v2 + 96), v24, v25, v26, v27, v28, v29, v30;
  v38 = *(v2 + 112);
  if (v38)
  {
    v38, v31, v32, v33, v34, v35, v36, v37;
    *(v2 + 128), v39, v40, v41, v42, v43, v44, v45;
    *(v2 + 144), v46, v47, v48, v49, v50, v51, v52;
  }

  *(v2 + 152), v31, v32, v33, v34, v35, v36, v37;
  *(v2 + 168), v53, v54, v55, v56, v57, v58, v59;
  *(v2 + 184), v60, v61, v62, v63, v64, v65, v66;
  v67 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = sub_1BE04C884();
    (*(*(v75 - 8) + 8))(v2 + v67, v75);
  }

  else
  {
    *(v2 + v67), v68, v69, v70, v71, v72, v73, v74;
  }

  sub_1BD0D4604(*(v2 + v1[13]), *(v2 + v1[13] + 8), v76, v77, v78, v79, v80, v81);
  v82 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v90 = sub_1BE04EB24();
    (*(*(v90 - 8) + 8))(v2 + v82, v90);
  }

  else
  {
    *(v2 + v82), v83, v84, v85, v86, v87, v88, v89;
  }

  v91 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38888, &qword_1BE0B7208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v99 = sub_1BE04FD04();
    v100 = *(v99 - 8);
    if (!(*(v100 + 48))(v2 + v91, 1, v99))
    {
      (*(v100 + 8))(v2 + v91, v99);
    }
  }

  else
  {
    *(v2 + v91), v92, v93, v94, v95, v96, v97, v98;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD043D70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD043DE8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BD043E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C38, &qword_1BE0B7C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD043EE0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocObject();
}

uint64_t sub_1BD043F38()
{
  swift_unknownObjectRelease();
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;
  v0[7], v15, v16, v17, v18, v19, v20, v21;
  v0[9], v22, v23, v24, v25, v26, v27, v28;

  return swift_deallocObject();
}

uint64_t sub_1BD043FA8()
{
  v1 = sub_1BE049184();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  *(v0 + v4), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + v4 + 8), v12, v13, v14, v15, v16, v17, v18;
  *(v0 + v4 + 24), v19, v20, v21, v22, v23, v24, v25;
  *(v0 + v4 + 40), v26, v27, v28, v29, v30, v31, v32;

  return swift_deallocObject();
}

uint64_t sub_1BD044098()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37150, &qword_1BE0B1170);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C30, &qword_1BE0B7C18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C38, &qword_1BE0B7C20);
  sub_1BD0F94D8();
  swift_getOpaqueTypeConformance2();
  sub_1BD0F9764();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BD0441B4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39028, &qword_1BE0B8048);
  sub_1BD0FE9EC();
  swift_getOpaqueTypeMetadata2();
  sub_1BE04EBD4();
  swift_getOpaqueTypeConformance2();
  sub_1BD0FEBBC();
  swift_getWitnessTable();
  sub_1BE051754();
  sub_1BE04F9B4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BD044308@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_serviceDelegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD0443F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE048894();
  *a1 = result;
  return result;
}

uint64_t sub_1BD04441C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AvailablePass(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Passes(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[9]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30, &qword_1BE0B8530);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[14];
      goto LABEL_5;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[24];
      goto LABEL_5;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v7 = v16;
      v8 = *(v16 - 8);
      v9 = a3[25];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[33];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1BD044694(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AvailablePass(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for Passes(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
    return result;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30, &qword_1BE0B8530);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[14];
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[24];
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[25];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D8, &unk_1BE0B98F0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[33];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1BD044910()
{
  v1 = type metadata accessor for PaymentPassHubView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = (v3 + v1[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v4[1], v6, v7, v8, v9, v10, v11, v12;
    v4[3], v13, v14, v15, v16, v17, v18, v19;
    v20 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v21 = sub_1BE04CF34();
    (*(*(v21 - 8) + 8))(v4 + v20, v21);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v22 = type metadata accessor for AvailablePass(0);
  v23 = (v4 + v22[6]);
  v24 = type metadata accessor for IdentityCredential(0);
  v1048 = *(*(v24 - 1) + 48);
  if (!v1048(v23, 1, v24))
  {
    v23[1], v25, v26, v27, v28, v29, v30, v31;
    v32 = v24[5];
    v33 = sub_1BE04DA84();
    (*(*(v33 - 8) + 8))(v23 + v32, v33);
    *(v23 + v24[6] + 8), v34, v35, v36, v37, v38, v39, v40;
    *(v23 + v24[7] + 8), v41, v42, v43, v44, v45, v46, v47;
    *(v23 + v24[8] + 8), v48, v49, v50, v51, v52, v53, v54;
  }

  v1052 = v24;
  v55 = (v4 + v22[7]);
  v1049 = type metadata accessor for BalanceInfo(0);
  v1047 = *(*(v1049 - 8) + 48);
  if (!v1047(v55, 1))
  {

    v56 = *(v1049 + 28);
    v57 = sub_1BE04AF64();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(v55 + v56, 1, v57))
    {
      (*(v58 + 8))(v55 + v56, v57);
    }
  }

  v59 = v4 + v22[10];
  v1050 = type metadata accessor for PassEligibleRewardsInfo(0);
  v1046 = *(*(v1050 - 8) + 48);
  v1051 = v22;
  if (!v1046(v59, 1))
  {
    v67 = *(v59 + 2);
    if (v67 != 1)
    {
      v67, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 4), v68, v69, v70, v71, v72, v73, v74;
      *(v59 + 6), v75, v76, v77, v78, v79, v80, v81;
    }

    v82 = *(v59 + 9);
    if (v82 != 1)
    {
      v82, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 11), v83, v84, v85, v86, v87, v88, v89;
      *(v59 + 13), v90, v91, v92, v93, v94, v95, v96;
    }

    v97 = *(v1050 + 28);
    v98 = sub_1BE04AF64();
    v99 = *(v98 - 8);
    v100 = *(v99 + 48);
    if (!v100(&v59[v97], 1, v98))
    {
      (*(v99 + 8))(&v59[v97], v98);
    }

    v101 = *(v1050 + 32);
    if (!v100(&v59[v101], 1, v98))
    {
      (*(v99 + 8))(&v59[v101], v98);
    }
  }

  v102 = (v4 + v22[12]);
  if (*v102)
  {

    v102[4], v103, v104, v105, v106, v107, v108, v109;
  }

  v110 = (v4 + v22[13]);
  if (*v110)
  {

    v110[2], v111, v112, v113, v114, v115, v116, v117;
  }

  *(v4 + v22[14]), v60, v61, v62, v63, v64, v65, v66;
  *(v4 + v22[15]), v118, v119, v120, v121, v122, v123, v124;

  v125 = (v3 + v1[7]);
  v1045 = *(*(v22 - 1) + 48);
  v126 = v1052;
  if (!v1045(v125, 1, v22))
  {
    v127 = swift_getEnumCaseMultiPayload();
    if (v127 == 2)
    {
      v125[1], v128, v129, v130, v131, v132, v133, v134;
      v125[3], v135, v136, v137, v138, v139, v140, v141;
      v142 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v143 = sub_1BE04CF34();
      (*(*(v143 - 8) + 8))(v125 + v142, v143);
    }

    else if (v127 <= 1)
    {
    }

    v144 = (v125 + v22[6]);
    if (!v1048(v144, 1, v1052))
    {
      v144[1], v145, v146, v147, v148, v149, v150, v151;
      v152 = v1052[5];
      v153 = sub_1BE04DA84();
      (*(*(v153 - 8) + 8))(v144 + v152, v153);
      *(v144 + v1052[6] + 8), v154, v155, v156, v157, v158, v159, v160;
      *(v144 + v1052[7] + 8), v161, v162, v163, v164, v165, v166, v167;
      *(v144 + v1052[8] + 8), v168, v169, v170, v171, v172, v173, v174;
    }

    v175 = (v125 + v22[7]);
    if (!(v1047)(v175, 1, v1049))
    {

      v176 = *(v1049 + 28);
      v177 = sub_1BE04AF64();
      v178 = *(v177 - 8);
      if (!(*(v178 + 48))(v175 + v176, 1, v177))
      {
        (*(v178 + 8))(v175 + v176, v177);
      }
    }

    v179 = v125 + v22[10];
    if (!(v1046)(v179, 1, v1050))
    {
      v187 = *(v179 + 2);
      if (v187 != 1)
      {
        v187, v180, v181, v182, v183, v184, v185, v186;
        *(v179 + 4), v188, v189, v190, v191, v192, v193, v194;
        *(v179 + 6), v195, v196, v197, v198, v199, v200, v201;
      }

      v202 = *(v179 + 9);
      if (v202 != 1)
      {
        v202, v180, v181, v182, v183, v184, v185, v186;
        *(v179 + 11), v203, v204, v205, v206, v207, v208, v209;
        *(v179 + 13), v210, v211, v212, v213, v214, v215, v216;
      }

      v217 = *(v1050 + 28);
      v218 = sub_1BE04AF64();
      v219 = *(v218 - 8);
      v220 = *(v219 + 48);
      if (!v220(&v179[v217], 1, v218))
      {
        (*(v219 + 8))(&v179[v217], v218);
      }

      v221 = *(v1050 + 32);
      if (!v220(&v179[v221], 1, v218))
      {
        (*(v219 + 8))(&v179[v221], v218);
      }
    }

    v222 = (v125 + v22[12]);
    if (*v222)
    {

      v222[4], v223, v224, v225, v226, v227, v228, v229;
    }

    v230 = (v125 + v22[13]);
    if (*v230)
    {

      v230[2], v231, v232, v233, v234, v235, v236, v237;
    }

    *(v125 + v22[14]), v180, v181, v182, v183, v184, v185, v186;
    *(v125 + v22[15]), v238, v239, v240, v241, v242, v243, v244;
    v126 = v1052;
  }

  v245 = type metadata accessor for Passes(0);

  *(v125 + v245[7]), v246, v247, v248, v249, v250, v251, v252;
  *(v125 + v245[9]), v253, v254, v255, v256, v257, v258, v259;
  *(v125 + v245[11]), v260, v261, v262, v263, v264, v265, v266;
  v274 = v3 + v1[8];
  if (*(v274 + 48))
  {
    sub_1BD0D455C(*v274, *(v274 + 8), *(v274 + 16));

    *(v274 + 48), v275, v276, v277, v278, v279, v280, v281;
    *(v274 + 64), v282, v283, v284, v285, v286, v287, v288;
  }

  *(v3 + v1[9] + 8), v267, v268, v269, v270, v271, v272, v273;
  *(v3 + v1[10] + 8), v289, v290, v291, v292, v293, v294, v295;
  *(v3 + v1[11] + 8), v296, v297, v298, v299, v300, v301, v302;
  *(v3 + v1[12] + 8), v303, v304, v305, v306, v307, v308, v309;
  *(v3 + v1[13] + 8), v310, v311, v312, v313, v314, v315, v316;
  v317 = (v3 + v1[14]);
  v318 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v318 - 1) + 48))(v317, 1, v318))
  {
    v1044 = v245;

    v317[4], v319, v320, v321, v322, v323, v324, v325;
    v317[6], v326, v327, v328, v329, v330, v331, v332;
    v333 = _s11TotalAmountVMa(0);
    v334 = (v317 + v333[10]);
    _s22SummaryItemPricingTypeOMa(0);
    v335 = swift_getEnumCaseMultiPayload();
    switch(v335)
    {
      case 2:
        v334[1], v336, v337, v338, v339, v340, v341, v342;
        break;
      case 1:
        v378 = sub_1BE04AF64();
        (*(*(v378 - 8) + 8))(v334, v378);
        break;
      case 0:
        v1041 = v318;
        v343 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v344 = v343[6];
        v345 = sub_1BE04AF64();
        v346 = *(v345 - 8);
        v347 = *(v346 + 48);
        if (!v347(v334 + v344, 1, v345))
        {
          (*(v346 + 8))(v334 + v344, v345);
        }

        v348 = v346;
        v349 = v343[7];
        if (!v347(v334 + v349, 1, v345))
        {
          (*(v348 + 8))(v334 + v349, v345);
        }

        *(v334 + v343[9] + 8), v350, v351, v352, v353, v354, v355, v356;
        *(v334 + v343[10] + 8), v357, v358, v359, v360, v361, v362, v363;
        *(v334 + v343[11] + 8), v364, v365, v366, v367, v368, v369, v370;
        *(v334 + v343[12] + 8), v371, v372, v373, v374, v375, v376, v377;
        v22 = v1051;
        v126 = v1052;
        v318 = v1041;
        break;
    }

    v379 = (v317 + v333[15]);
    v380 = v333;
    v381 = type metadata accessor for PeerPaymentModel(0);
    if (!(*(*(v381 - 1) + 48))(v379, 1, v381))
    {
      v1039 = v380;

      v382 = (v379 + v381[5]);
      v383 = swift_getEnumCaseMultiPayload();
      v1042 = v318;
      if (v383 == 2)
      {
        v382[1], v384, v385, v386, v387, v388, v389, v390;
        v382[3], v391, v392, v393, v394, v395, v396, v397;
        v398 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v399 = sub_1BE04CF34();
        (*(*(v399 - 8) + 8))(v382 + v398, v399);
      }

      else if (v383 <= 1)
      {
      }

      v400 = (v382 + v1051[6]);
      if (!v1048(v400, 1, v126))
      {
        v400[1], v401, v402, v403, v404, v405, v406, v407;
        v408 = v1052[5];
        v409 = sub_1BE04DA84();
        (*(*(v409 - 8) + 8))(v400 + v408, v409);
        *(v400 + v1052[6] + 8), v410, v411, v412, v413, v414, v415, v416;
        *(v400 + v1052[7] + 8), v417, v418, v419, v420, v421, v422, v423;
        *(v400 + v1052[8] + 8), v424, v425, v426, v427, v428, v429, v430;
      }

      v431 = (v382 + v1051[7]);
      if (!(v1047)(v431, 1, v1049))
      {

        v432 = *(v1049 + 28);
        v433 = sub_1BE04AF64();
        v434 = *(v433 - 8);
        if (!(*(v434 + 48))(v431 + v432, 1, v433))
        {
          (*(v434 + 8))(v431 + v432, v433);
        }
      }

      v435 = v382 + v1051[10];
      if (!(v1046)(v435, 1, v1050))
      {
        v443 = *(v435 + 2);
        if (v443 != 1)
        {
          v443, v436, v437, v438, v439, v440, v441, v442;
          *(v435 + 4), v444, v445, v446, v447, v448, v449, v450;
          *(v435 + 6), v451, v452, v453, v454, v455, v456, v457;
        }

        v458 = *(v435 + 9);
        if (v458 != 1)
        {
          v458, v436, v437, v438, v439, v440, v441, v442;
          *(v435 + 11), v459, v460, v461, v462, v463, v464, v465;
          *(v435 + 13), v466, v467, v468, v469, v470, v471, v472;
        }

        v473 = *(v1050 + 28);
        v474 = sub_1BE04AF64();
        v1037 = *(v474 - 8);
        v1036 = v473;
        v475 = &v435[v473];
        v476 = *(v1037 + 48);
        if (!v476(v475, 1, v474))
        {
          (*(v1037 + 8))(&v435[v1036], v474);
        }

        v477 = *(v1050 + 32);
        if (!v476(&v435[v477], 1, v474))
        {
          (*(v1037 + 8))(&v435[v477], v474);
        }
      }

      v478 = (v382 + v1051[12]);
      if (*v478)
      {

        v478[4], v479, v480, v481, v482, v483, v484, v485;
      }

      v486 = (v382 + v1051[13]);
      if (*v486)
      {

        v486[2], v487, v488, v489, v490, v491, v492, v493;
      }

      v22 = v1051;
      *(v382 + v1051[14]), v436, v437, v438, v439, v440, v441, v442;
      *(v382 + v1051[15]), v494, v495, v496, v497, v498, v499, v500;
      v501 = v379;
      v502 = (v379 + v381[6]);
      v126 = v1052;
      v318 = v1042;
      if (*v502 != 1)
      {

        v510 = v502[3];
        if (v510)
        {
          v510, v503, v504, v505, v506, v507, v508, v509;
          v502[5], v511, v512, v513, v514, v515, v516, v517;
          v502[7], v518, v519, v520, v521, v522, v523, v524;
          v502[9], v525, v526, v527, v528, v529, v530, v531;
        }

        v501 = v379;
      }

      v380 = v1039;
    }

    v532 = (v317 + v380[16]);
    v533 = v1044;
    if (!(*(*(v1044 - 1) + 48))(v532, 1, v1044))
    {
      if (!v1045(v532, 1, v22))
      {
        v541 = swift_getEnumCaseMultiPayload();
        if (v541 == 2)
        {
          v532[1], v542, v543, v544, v545, v546, v547, v548;
          v532[3], v549, v550, v551, v552, v553, v554, v555;
          v556 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v557 = sub_1BE04CF34();
          (*(*(v557 - 8) + 8))(v532 + v556, v557);
        }

        else if (v541 <= 1)
        {
        }

        v558 = (v532 + v22[6]);
        if (!v1048(v558, 1, v126))
        {
          v558[1], v559, v560, v561, v562, v563, v564, v565;
          v566 = v318;
          v567 = v1052[5];
          v568 = sub_1BE04DA84();
          v569 = v558 + v567;
          v318 = v566;
          (*(*(v568 - 8) + 8))(v569, v568);
          *(v558 + v1052[6] + 8), v570, v571, v572, v573, v574, v575, v576;
          *(v558 + v1052[7] + 8), v577, v578, v579, v580, v581, v582, v583;
          *(v558 + v1052[8] + 8), v584, v585, v586, v587, v588, v589, v590;
        }

        v1043 = v318;
        v591 = (v532 + v22[7]);
        if (!(v1047)(v591, 1, v1049))
        {

          v592 = *(v1049 + 28);
          v593 = sub_1BE04AF64();
          v594 = *(v593 - 8);
          if (!(*(v594 + 48))(v591 + v592, 1, v593))
          {
            (*(v594 + 8))(v591 + v592, v593);
          }
        }

        v595 = v532 + v1051[10];
        if (!(v1046)(v595, 1, v1050))
        {
          v603 = *(v595 + 2);
          if (v603 != 1)
          {
            v603, v596, v597, v598, v599, v600, v601, v602;
            *(v595 + 4), v604, v605, v606, v607, v608, v609, v610;
            *(v595 + 6), v611, v612, v613, v614, v615, v616, v617;
          }

          v618 = *(v595 + 9);
          if (v618 != 1)
          {
            v618, v596, v597, v598, v599, v600, v601, v602;
            *(v595 + 11), v619, v620, v621, v622, v623, v624, v625;
            *(v595 + 13), v626, v627, v628, v629, v630, v631, v632;
          }

          v633 = *(v1050 + 28);
          v634 = sub_1BE04AF64();
          v1040 = *(v634 - 8);
          v1038 = v633;
          v635 = &v595[v633];
          v636 = *(v1040 + 48);
          if (!v636(v635, 1, v634))
          {
            (*(v1040 + 8))(&v595[v1038], v634);
          }

          v637 = *(v1050 + 32);
          if (!v636(&v595[v637], 1, v634))
          {
            (*(v1040 + 8))(&v595[v637], v634);
          }
        }

        v126 = v1052;
        v638 = (v532 + v1051[12]);
        if (*v638)
        {

          v638[4], v639, v640, v641, v642, v643, v644, v645;
        }

        v646 = (v532 + v1051[13]);
        v318 = v1043;
        if (*v646)
        {

          v646[2], v647, v648, v649, v650, v651, v652, v653;
        }

        v22 = v1051;
        *(v532 + v1051[14]), v596, v597, v598, v599, v600, v601, v602;
        *(v532 + v1051[15]), v654, v655, v656, v657, v658, v659, v660;
        v533 = v1044;
      }

      *(v532 + v533[7]), v661, v662, v663, v664, v665, v666, v667;
      *(v532 + v533[9]), v668, v669, v670, v671, v672, v673, v674;
      *(v532 + v533[11]), v675, v676, v677, v678, v679, v680, v681;
    }

    *(v317 + v318[5]), v534, v535, v536, v537, v538, v539, v540;
    *(v317 + v318[6] + 8), v682, v683, v684, v685, v686, v687, v688;
    v696 = v317 + v318[7];
    v697 = *(v696 + 1);
    if (v697)
    {
      v697, v689, v690, v691, v692, v693, v694, v695;
      *(v696 + 3), v698, v699, v700, v701, v702, v703, v704;
    }

    v705 = v317 + v318[9];
    v706 = *(v705 + 1);
    if (v706)
    {
      v706, v689, v690, v691, v692, v693, v694, v695;
      *(v705 + 3), v707, v708, v709, v710, v711, v712, v713;
      *(v705 + 5), v714, v715, v716, v717, v718, v719, v720;
    }

    v721 = v317 + v318[10];
    v722 = *(v721 + 1);
    if (v722)
    {
      v722, v689, v690, v691, v692, v693, v694, v695;
      *(v721 + 3), v723, v724, v725, v726, v727, v728, v729;
      *(v721 + 5), v730, v731, v732, v733, v734, v735, v736;
    }

    v737 = (v317 + v318[11]);
    v738 = type metadata accessor for DeferredPaymentRequest(0);
    if (!(*(*(v738 - 1) + 48))(v737, 1, v738))
    {
      v746 = v318;
      v737[1], v739, v740, v741, v742, v743, v744, v745;
      v737[3], v747, v748, v749, v750, v751, v752, v753;
      v737[5], v754, v755, v756, v757, v758, v759, v760;
      v761 = v738[7];
      v762 = sub_1BE04AF64();
      v763 = *(v762 - 8);
      if (!(*(v763 + 48))(v737 + v761, 1, v762))
      {
        (*(v763 + 8))(v737 + v761, v762);
      }

      v764 = v738[8];
      v765 = sub_1BE04B3B4();
      v766 = *(v765 - 8);
      if (!(*(v766 + 48))(v737 + v764, 1, v765))
      {
        (*(v766 + 8))(v737 + v764, v765);
      }

      v22 = v1051;
      v126 = v1052;
      v318 = v746;
    }

    *(v317 + v318[12]), v739, v740, v741, v742, v743, v744, v745;
  }

  *(v3 + v1[19] + 8), v767, v768, v769, v770, v771, v772, v773;
  *(v3 + v1[20]), v774, v775, v776, v777, v778, v779, v780;
  *(v3 + v1[21]), v781, v782, v783, v784, v785, v786, v787;
  *(v3 + v1[22]), v788, v789, v790, v791, v792, v793, v794;
  v795 = (v3 + v1[23]);

  v795[1], v796, v797, v798, v799, v800, v801, v802;
  v803 = (v3 + v1[24]);
  v804 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v804 - 8) + 48))(v803, 1, v804))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v805 = v803 + 2;
    }

    else
    {
      if (!v1045(v803, 1, v22))
      {
        v806 = swift_getEnumCaseMultiPayload();
        if (v806 == 2)
        {
          v803[1], v807, v808, v809, v810, v811, v812, v813;
          v803[3], v814, v815, v816, v817, v818, v819, v820;
          v821 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v822 = sub_1BE04CF34();
          (*(*(v822 - 8) + 8))(v803 + v821, v822);
        }

        else if (v806 <= 1)
        {
        }

        v823 = (v803 + v22[6]);
        if (!v1048(v823, 1, v126))
        {
          v823[1], v824, v825, v826, v827, v828, v829, v830;
          v831 = v126[5];
          v832 = sub_1BE04DA84();
          (*(*(v832 - 8) + 8))(v823 + v831, v832);
          *(v823 + v126[6] + 8), v833, v834, v835, v836, v837, v838, v839;
          *(v823 + v126[7] + 8), v840, v841, v842, v843, v844, v845, v846;
          *(v823 + v126[8] + 8), v847, v848, v849, v850, v851, v852, v853;
        }

        v854 = (v803 + v22[7]);
        if (!(v1047)(v854, 1, v1049))
        {

          v855 = *(v1049 + 28);
          v856 = sub_1BE04AF64();
          v857 = *(v856 - 8);
          if (!(*(v857 + 48))(v854 + v855, 1, v856))
          {
            (*(v857 + 8))(v854 + v855, v856);
          }
        }

        v858 = v803 + v22[10];
        if (!(v1046)(v858, 1, v1050))
        {
          v866 = *(v858 + 2);
          if (v866 != 1)
          {
            v866, v859, v860, v861, v862, v863, v864, v865;
            *(v858 + 4), v867, v868, v869, v870, v871, v872, v873;
            *(v858 + 6), v874, v875, v876, v877, v878, v879, v880;
          }

          v881 = *(v858 + 9);
          if (v881 != 1)
          {
            v881, v859, v860, v861, v862, v863, v864, v865;
            *(v858 + 11), v882, v883, v884, v885, v886, v887, v888;
            *(v858 + 13), v889, v890, v891, v892, v893, v894, v895;
          }

          v896 = *(v1050 + 28);
          v897 = sub_1BE04AF64();
          v898 = *(v897 - 8);
          v899 = *(v898 + 48);
          if (!v899(&v858[v896], 1, v897))
          {
            (*(v898 + 8))(&v858[v896], v897);
          }

          v900 = *(v1050 + 32);
          v22 = v1051;
          if (!v899(&v858[v900], 1, v897))
          {
            (*(v898 + 8))(&v858[v900], v897);
          }
        }

        v901 = (v803 + v22[12]);
        if (*v901)
        {

          v901[4], v902, v903, v904, v905, v906, v907, v908;
        }

        v909 = (v803 + v22[13]);
        if (*v909)
        {

          v909[2], v910, v911, v912, v913, v914, v915, v916;
        }

        *(v803 + v22[14]), v859, v860, v861, v862, v863, v864, v865;
        *(v803 + v22[15]), v917, v918, v919, v920, v921, v922, v923;
      }

      v924 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

      v925 = (v803 + *(v924 + 64));
      v925[1], v926, v927, v928, v929, v930, v931, v932;
      v925[3], v933, v934, v935, v936, v937, v938, v939;
      v805 = v925 + 4;
    }
  }

  v940 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  *(v803 + *(v940 + 28)), v941, v942, v943, v944, v945, v946, v947;
  v948 = (v3 + v1[25]);
  v949 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v949 - 8) + 48))(v948, 1, v949))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v950 = sub_1BE04AA64();
      (*(*(v950 - 8) + 8))(v948, v950);
    }

    else
    {

      v948[2], v951, v952, v953, v954, v955, v956, v957;
    }
  }

  v958 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v948 + *(v958 + 28)), v959, v960, v961, v962, v963, v964, v965;
  v966 = (v3 + v1[26]);

  v966[1], v967, v968, v969, v970, v971, v972, v973;
  v974 = (v3 + v1[27]);
  *v974, v975, v976, v977, v978, v979, v980, v981;
  v974[1], v982, v983, v984, v985, v986, v987, v988;
  *(v3 + v1[28] + 8), v989, v990, v991, v992, v993, v994, v995;
  *(v3 + v1[29] + 8), v996, v997, v998, v999, v1000, v1001, v1002;
  v1003 = (v3 + v1[30]);

  v1003[1], v1004, v1005, v1006, v1007, v1008, v1009, v1010;
  *(v3 + v1[31] + 48), v1011, v1012, v1013, v1014, v1015, v1016, v1017;
  v1018 = (v3 + v1[32]);

  v1018[1], v1019, v1020, v1021, v1022, v1023, v1024, v1025;
  v1026 = v1[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1034 = sub_1BE04E354();
    (*(*(v1034 - 8) + 8))(v3 + v1026, v1034);
  }

  else
  {
    *(v3 + v1026), v1027, v1028, v1029, v1030, v1031, v1032, v1033;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0466A8()
{
  v1 = type metadata accessor for PaymentPassHubView(0);
  v2 = *(*(v1 - 1) + 80);
  v1170 = *(*(v1 - 1) + 64);
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840) - 8) + 80);
  v1171 = (v2 + 16) & ~v2;
  v1181 = v0;
  v4 = v0 + v1171;
  v5 = (v0 + v1171 + v1[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5[1], v7, v8, v9, v10, v11, v12, v13;
    v5[3], v14, v15, v16, v17, v18, v19, v20;
    v21 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v22 = sub_1BE04CF34();
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v23 = type metadata accessor for AvailablePass(0);
  v24 = (v5 + *(v23 + 24));
  v1178 = type metadata accessor for IdentityCredential(0);
  v1175 = *(*(v1178 - 1) + 48);
  if (!v1175(v24, 1))
  {
    v24[1], v25, v26, v27, v28, v29, v30, v31;
    v32 = v1178[5];
    v33 = sub_1BE04DA84();
    (*(*(v33 - 8) + 8))(v24 + v32, v33);
    *(v24 + v1178[6] + 8), v34, v35, v36, v37, v38, v39, v40;
    *(v24 + v1178[7] + 8), v41, v42, v43, v44, v45, v46, v47;
    *(v24 + v1178[8] + 8), v48, v49, v50, v51, v52, v53, v54;
  }

  v1182 = v23;
  v55 = (v5 + *(v23 + 28));
  v1179 = type metadata accessor for BalanceInfo(0);
  v1174 = *(*(v1179 - 8) + 48);
  if (!v1174(v55, 1))
  {

    v56 = *(v1179 + 28);
    v57 = sub_1BE04AF64();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(v55 + v56, 1, v57))
    {
      (*(v58 + 8))(v55 + v56, v57);
    }
  }

  v59 = v5 + v1182[10];
  v1180 = type metadata accessor for PassEligibleRewardsInfo(0);
  v1173 = *(*(v1180 - 8) + 48);
  v1176 = v3;
  if (!v1173(v59, 1))
  {
    v67 = *(v59 + 2);
    if (v67 != 1)
    {
      v67, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 4), v68, v69, v70, v71, v72, v73, v74;
      *(v59 + 6), v75, v76, v77, v78, v79, v80, v81;
    }

    v82 = *(v59 + 9);
    if (v82 != 1)
    {
      v82, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 11), v83, v84, v85, v86, v87, v88, v89;
      *(v59 + 13), v90, v91, v92, v93, v94, v95, v96;
    }

    v97 = *(v1180 + 28);
    v98 = sub_1BE04AF64();
    v99 = *(v98 - 8);
    v100 = *(v99 + 48);
    if (!v100(&v59[v97], 1, v98))
    {
      (*(v99 + 8))(&v59[v97], v98);
    }

    v101 = *(v1180 + 32);
    v102 = v100(&v59[v101], 1, v98);
    v3 = v1176;
    if (!v102)
    {
      (*(v99 + 8))(&v59[v101], v98);
    }
  }

  v103 = (v5 + v1182[12]);
  if (*v103)
  {

    v103[4], v104, v105, v106, v107, v108, v109, v110;
  }

  v111 = (v5 + v1182[13]);
  if (*v111)
  {

    v111[2], v112, v113, v114, v115, v116, v117, v118;
  }

  *(v5 + v1182[14]), v60, v61, v62, v63, v64, v65, v66;
  *(v5 + v1182[15]), v119, v120, v121, v122, v123, v124, v125;

  v126 = (v4 + v1[7]);
  v1177 = *(*(v1182 - 1) + 48);
  if (!v1177(v126, 1, v1182))
  {
    v127 = swift_getEnumCaseMultiPayload();
    if (v127 == 2)
    {
      v126[1], v128, v129, v130, v131, v132, v133, v134;
      v126[3], v135, v136, v137, v138, v139, v140, v141;
      v142 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v143 = sub_1BE04CF34();
      (*(*(v143 - 8) + 8))(v126 + v142, v143);
    }

    else if (v127 <= 1)
    {
    }

    v144 = (v126 + v1182[6]);
    if (!(v1175)(v144, 1, v1178))
    {
      v144[1], v145, v146, v147, v148, v149, v150, v151;
      v152 = v1178[5];
      v153 = sub_1BE04DA84();
      (*(*(v153 - 8) + 8))(v144 + v152, v153);
      *(v144 + v1178[6] + 8), v154, v155, v156, v157, v158, v159, v160;
      *(v144 + v1178[7] + 8), v161, v162, v163, v164, v165, v166, v167;
      *(v144 + v1178[8] + 8), v168, v169, v170, v171, v172, v173, v174;
    }

    v175 = (v126 + v1182[7]);
    if (!(v1174)(v175, 1, v1179))
    {

      v176 = *(v1179 + 28);
      v177 = sub_1BE04AF64();
      v178 = *(v177 - 8);
      if (!(*(v178 + 48))(v175 + v176, 1, v177))
      {
        (*(v178 + 8))(v175 + v176, v177);
      }
    }

    v179 = v126 + v1182[10];
    if (!(v1173)(v179, 1, v1180))
    {
      v187 = *(v179 + 2);
      if (v187 != 1)
      {
        v187, v180, v181, v182, v183, v184, v185, v186;
        *(v179 + 4), v188, v189, v190, v191, v192, v193, v194;
        *(v179 + 6), v195, v196, v197, v198, v199, v200, v201;
      }

      v202 = *(v179 + 9);
      if (v202 != 1)
      {
        v202, v180, v181, v182, v183, v184, v185, v186;
        *(v179 + 11), v203, v204, v205, v206, v207, v208, v209;
        *(v179 + 13), v210, v211, v212, v213, v214, v215, v216;
      }

      v217 = *(v1180 + 28);
      v218 = sub_1BE04AF64();
      v219 = *(v218 - 8);
      v220 = *(v219 + 48);
      if (!v220(&v179[v217], 1, v218))
      {
        (*(v219 + 8))(&v179[v217], v218);
      }

      v221 = *(v1180 + 32);
      v222 = v220(&v179[v221], 1, v218);
      v3 = v1176;
      if (!v222)
      {
        (*(v219 + 8))(&v179[v221], v218);
      }
    }

    v223 = (v126 + v1182[12]);
    if (*v223)
    {

      v223[4], v224, v225, v226, v227, v228, v229, v230;
    }

    v231 = (v126 + v1182[13]);
    if (*v231)
    {

      v231[2], v232, v233, v234, v235, v236, v237, v238;
    }

    *(v126 + v1182[14]), v180, v181, v182, v183, v184, v185, v186;
    *(v126 + v1182[15]), v239, v240, v241, v242, v243, v244, v245;
  }

  v246 = type metadata accessor for Passes(0);

  *(v126 + v246[7]), v247, v248, v249, v250, v251, v252, v253;
  *(v126 + v246[9]), v254, v255, v256, v257, v258, v259, v260;
  *(v126 + v246[11]), v261, v262, v263, v264, v265, v266, v267;
  v275 = v4 + v1[8];
  if (*(v275 + 48))
  {
    sub_1BD0D455C(*v275, *(v275 + 8), *(v275 + 16));

    *(v275 + 48), v276, v277, v278, v279, v280, v281, v282;
    *(v275 + 64), v283, v284, v285, v286, v287, v288, v289;
  }

  *(v4 + v1[9] + 8), v268, v269, v270, v271, v272, v273, v274;
  *(v4 + v1[10] + 8), v290, v291, v292, v293, v294, v295, v296;
  *(v4 + v1[11] + 8), v297, v298, v299, v300, v301, v302, v303;
  *(v4 + v1[12] + 8), v304, v305, v306, v307, v308, v309, v310;
  *(v4 + v1[13] + 8), v311, v312, v313, v314, v315, v316, v317;
  v318 = (v4 + v1[14]);
  v319 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v319 - 1) + 48))(v318, 1, v319))
  {

    v318[4], v320, v321, v322, v323, v324, v325, v326;
    v318[6], v327, v328, v329, v330, v331, v332, v333;
    v334 = _s11TotalAmountVMa(0);
    v335 = (v318 + v334[10]);
    _s22SummaryItemPricingTypeOMa(0);
    v336 = swift_getEnumCaseMultiPayload();
    switch(v336)
    {
      case 2:
        v335[1], v337, v338, v339, v340, v341, v342, v343;
        break;
      case 1:
        v379 = sub_1BE04AF64();
        (*(*(v379 - 8) + 8))(v335, v379);
        break;
      case 0:
        v1166 = v319;
        v1163 = v334;
        v1160 = v246;
        v344 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v345 = v344[6];
        v346 = sub_1BE04AF64();
        v347 = *(v346 - 8);
        v348 = *(v347 + 48);
        if (!v348(v335 + v345, 1, v346))
        {
          (*(v347 + 8))(v335 + v345, v346);
        }

        v349 = v347;
        v350 = v344[7];
        if (!v348(v335 + v350, 1, v346))
        {
          (*(v349 + 8))(v335 + v350, v346);
        }

        *(v335 + v344[9] + 8), v351, v352, v353, v354, v355, v356, v357;
        *(v335 + v344[10] + 8), v358, v359, v360, v361, v362, v363, v364;
        *(v335 + v344[11] + 8), v365, v366, v367, v368, v369, v370, v371;
        *(v335 + v344[12] + 8), v372, v373, v374, v375, v376, v377, v378;
        v3 = v1176;
        v334 = v1163;
        v319 = v1166;
        v246 = v1160;
        break;
    }

    v380 = (v318 + v334[15]);
    v381 = type metadata accessor for PeerPaymentModel(0);
    if (!(*(*(v381 - 1) + 48))(v380, 1, v381))
    {
      v1164 = v334;

      v382 = (v380 + v381[5]);
      v383 = swift_getEnumCaseMultiPayload();
      v1167 = v319;
      v1162 = v380;
      if (v383 == 2)
      {
        v382[1], v384, v385, v386, v387, v388, v389, v390;
        v382[3], v391, v392, v393, v394, v395, v396, v397;
        v398 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v399 = sub_1BE04CF34();
        (*(*(v399 - 8) + 8))(v382 + v398, v399);
      }

      else if (v383 <= 1)
      {
      }

      v400 = (v382 + v1182[6]);
      if (!(v1175)(v400, 1, v1178))
      {
        v400[1], v401, v402, v403, v404, v405, v406, v407;
        v408 = v1178[5];
        v409 = sub_1BE04DA84();
        (*(*(v409 - 8) + 8))(v400 + v408, v409);
        *(v400 + v1178[6] + 8), v410, v411, v412, v413, v414, v415, v416;
        *(v400 + v1178[7] + 8), v417, v418, v419, v420, v421, v422, v423;
        *(v400 + v1178[8] + 8), v424, v425, v426, v427, v428, v429, v430;
      }

      v431 = (v382 + v1182[7]);
      if (!(v1174)(v431, 1, v1179))
      {

        v432 = *(v1179 + 28);
        v433 = sub_1BE04AF64();
        v434 = *(v433 - 8);
        if (!(*(v434 + 48))(v431 + v432, 1, v433))
        {
          (*(v434 + 8))(v431 + v432, v433);
        }
      }

      v435 = v382 + v1182[10];
      if (!(v1173)(v435, 1, v1180))
      {
        v443 = *(v435 + 2);
        if (v443 != 1)
        {
          v443, v436, v437, v438, v439, v440, v441, v442;
          *(v435 + 4), v444, v445, v446, v447, v448, v449, v450;
          *(v435 + 6), v451, v452, v453, v454, v455, v456, v457;
        }

        v458 = *(v435 + 9);
        if (v458 != 1)
        {
          v458, v436, v437, v438, v439, v440, v441, v442;
          *(v435 + 11), v459, v460, v461, v462, v463, v464, v465;
          *(v435 + 13), v466, v467, v468, v469, v470, v471, v472;
        }

        v473 = *(v1180 + 28);
        v474 = sub_1BE04AF64();
        v1159 = *(v474 - 8);
        v1158 = v473;
        v475 = &v435[v473];
        v476 = *(v1159 + 48);
        if (!v476(v475, 1, v474))
        {
          (*(v1159 + 8))(&v435[v1158], v474);
        }

        v477 = *(v1180 + 32);
        if (!v476(&v435[v477], 1, v474))
        {
          (*(v1159 + 8))(&v435[v477], v474);
        }
      }

      v478 = (v382 + v1182[12]);
      if (*v478)
      {

        v478[4], v479, v480, v481, v482, v483, v484, v485;
      }

      v486 = (v382 + v1182[13]);
      v3 = v1176;
      v319 = v1167;
      if (*v486)
      {

        v486[2], v487, v488, v489, v490, v491, v492, v493;
      }

      *(v382 + v1182[14]), v436, v437, v438, v439, v440, v441, v442;
      *(v382 + v1182[15]), v494, v495, v496, v497, v498, v499, v500;
      v334 = v1164;
      v501 = (v1162 + v381[6]);
      if (*v501 != 1)
      {

        v509 = v501[3];
        if (v509)
        {
          v509, v502, v503, v504, v505, v506, v507, v508;
          v501[5], v510, v511, v512, v513, v514, v515, v516;
          v501[7], v517, v518, v519, v520, v521, v522, v523;
          v501[9], v524, v525, v526, v527, v528, v529, v530;
        }
      }
    }

    v531 = (v318 + v334[16]);
    if (!(*(*(v246 - 1) + 48))(v531, 1, v246))
    {
      if (!v1177(v531, 1, v1182))
      {
        v539 = swift_getEnumCaseMultiPayload();
        if (v539 == 2)
        {
          v531[1], v540, v541, v542, v543, v544, v545, v546;
          v531[3], v548, v549, v550, v551, v552, v553, v554;
          v555 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v556 = sub_1BE04CF34();
          (*(*(v556 - 8) + 8))(v531 + v555, v556);
          v547 = v1178;
        }

        else
        {
          v547 = v1178;
          if (v539 <= 1)
          {
          }
        }

        v557 = (v531 + v1182[6]);
        if (!(v1175)(v557, 1, v547))
        {
          v557[1], v558, v559, v560, v561, v562, v563, v564;
          v1161 = v246;
          v565 = v319;
          v566 = v547[5];
          v567 = sub_1BE04DA84();
          v568 = v557 + v566;
          v319 = v565;
          v246 = v1161;
          (*(*(v567 - 8) + 8))(v568, v567);
          *(v557 + v547[6] + 8), v569, v570, v571, v572, v573, v574, v575;
          *(v557 + v547[7] + 8), v576, v577, v578, v579, v580, v581, v582;
          *(v557 + v547[8] + 8), v583, v584, v585, v586, v587, v588, v589;
        }

        v1168 = v319;
        v590 = (v531 + v1182[7]);
        if (!(v1174)(v590, 1, v1179))
        {

          v591 = *(v1179 + 28);
          v592 = sub_1BE04AF64();
          v593 = *(v592 - 8);
          if (!(*(v593 + 48))(v590 + v591, 1, v592))
          {
            (*(v593 + 8))(v590 + v591, v592);
          }
        }

        v594 = v531 + v1182[10];
        if (!(v1173)(v594, 1, v1180))
        {
          v602 = *(v594 + 2);
          if (v602 != 1)
          {
            v602, v595, v596, v597, v598, v599, v600, v601;
            *(v594 + 4), v603, v604, v605, v606, v607, v608, v609;
            *(v594 + 6), v610, v611, v612, v613, v614, v615, v616;
          }

          v617 = *(v594 + 9);
          if (v617 != 1)
          {
            v617, v595, v596, v597, v598, v599, v600, v601;
            *(v594 + 11), v618, v619, v620, v621, v622, v623, v624;
            *(v594 + 13), v625, v626, v627, v628, v629, v630, v631;
          }

          v632 = *(v1180 + 28);
          v633 = sub_1BE04AF64();
          v1165 = *(v633 - 8);
          v1169 = *(v1165 + 48);
          if (!v1169(&v594[v632], 1, v633))
          {
            (*(v1165 + 8))(&v594[v632], v633);
          }

          v634 = *(v1180 + 32);
          if (!v1169(&v594[v634], 1, v633))
          {
            (*(v1165 + 8))(&v594[v634], v633);
          }
        }

        v635 = (v531 + v1182[12]);
        if (*v635)
        {

          v635[4], v636, v637, v638, v639, v640, v641, v642;
        }

        v643 = (v531 + v1182[13]);
        v3 = v1176;
        v319 = v1168;
        if (*v643)
        {

          v643[2], v644, v645, v646, v647, v648, v649, v650;
        }

        *(v531 + v1182[14]), v595, v596, v597, v598, v599, v600, v601;
        *(v531 + v1182[15]), v651, v652, v653, v654, v655, v656, v657;
      }

      *(v531 + v246[7]), v658, v659, v660, v661, v662, v663, v664;
      *(v531 + v246[9]), v665, v666, v667, v668, v669, v670, v671;
      *(v531 + v246[11]), v672, v673, v674, v675, v676, v677, v678;
    }

    *(v318 + v319[5]), v532, v533, v534, v535, v536, v537, v538;
    *(v318 + v319[6] + 8), v679, v680, v681, v682, v683, v684, v685;
    v693 = v318 + v319[7];
    v694 = *(v693 + 1);
    if (v694)
    {
      v694, v686, v687, v688, v689, v690, v691, v692;
      *(v693 + 3), v695, v696, v697, v698, v699, v700, v701;
    }

    v702 = v318 + v319[9];
    v703 = *(v702 + 1);
    if (v703)
    {
      v703, v686, v687, v688, v689, v690, v691, v692;
      *(v702 + 3), v704, v705, v706, v707, v708, v709, v710;
      *(v702 + 5), v711, v712, v713, v714, v715, v716, v717;
    }

    v718 = v318 + v319[10];
    v719 = *(v718 + 1);
    if (v719)
    {
      v719, v686, v687, v688, v689, v690, v691, v692;
      *(v718 + 3), v720, v721, v722, v723, v724, v725, v726;
      *(v718 + 5), v727, v728, v729, v730, v731, v732, v733;
    }

    v734 = (v318 + v319[11]);
    v735 = type metadata accessor for DeferredPaymentRequest(0);
    if (!(*(*(v735 - 1) + 48))(v734, 1, v735))
    {
      v743 = v319;
      v734[1], v736, v737, v738, v739, v740, v741, v742;
      v734[3], v744, v745, v746, v747, v748, v749, v750;
      v734[5], v751, v752, v753, v754, v755, v756, v757;
      v758 = v735[7];
      v759 = sub_1BE04AF64();
      v760 = *(v759 - 8);
      if (!(*(v760 + 48))(v734 + v758, 1, v759))
      {
        (*(v760 + 8))(v734 + v758, v759);
      }

      v761 = v735[8];
      v762 = sub_1BE04B3B4();
      v763 = *(v762 - 8);
      if (!(*(v763 + 48))(v734 + v761, 1, v762))
      {
        (*(v763 + 8))(v734 + v761, v762);
      }

      v3 = v1176;
      v319 = v743;
    }

    *(v318 + v319[12]), v736, v737, v738, v739, v740, v741, v742;
  }

  v764 = v1171 + v1170;

  *(v4 + v1[19] + 8), v765, v766, v767, v768, v769, v770, v771;
  *(v4 + v1[20]), v772, v773, v774, v775, v776, v777, v778;
  *(v4 + v1[21]), v779, v780, v781, v782, v783, v784, v785;
  *(v4 + v1[22]), v786, v787, v788, v789, v790, v791, v792;
  v793 = (v4 + v1[23]);

  v793[1], v794, v795, v796, v797, v798, v799, v800;
  v801 = (v4 + v1[24]);
  v802 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v802 - 8) + 48))(v801, 1, v802))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v803 = v801 + 2;
    }

    else
    {
      if (!v1177(v801, 1, v1182))
      {
        v804 = swift_getEnumCaseMultiPayload();
        if (v804 == 2)
        {
          v801[1], v805, v806, v807, v808, v809, v810, v811;
          v801[3], v813, v814, v815, v816, v817, v818, v819;
          v820 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v821 = sub_1BE04CF34();
          (*(*(v821 - 8) + 8))(v801 + v820, v821);
          v812 = v1178;
        }

        else
        {
          v812 = v1178;
          if (v804 <= 1)
          {
          }
        }

        v822 = (v801 + v1182[6]);
        if (!(v1175)(v822, 1, v812))
        {
          v822[1], v823, v824, v825, v826, v827, v828, v829;
          v830 = v812[5];
          v831 = sub_1BE04DA84();
          (*(*(v831 - 8) + 8))(v822 + v830, v831);
          *(v822 + v812[6] + 8), v832, v833, v834, v835, v836, v837, v838;
          *(v822 + v812[7] + 8), v839, v840, v841, v842, v843, v844, v845;
          *(v822 + v812[8] + 8), v846, v847, v848, v849, v850, v851, v852;
        }

        v853 = (v801 + v1182[7]);
        if (!(v1174)(v853, 1, v1179))
        {

          v854 = *(v1179 + 28);
          v855 = sub_1BE04AF64();
          v856 = *(v855 - 8);
          if (!(*(v856 + 48))(v853 + v854, 1, v855))
          {
            (*(v856 + 8))(v853 + v854, v855);
          }
        }

        v857 = v1182;

        v858 = v801 + v1182[10];
        if (!(v1173)(v858, 1, v1180))
        {
          v866 = *(v858 + 2);
          if (v866 != 1)
          {
            v866, v859, v860, v861, v862, v863, v864, v865;
            *(v858 + 4), v867, v868, v869, v870, v871, v872, v873;
            *(v858 + 6), v874, v875, v876, v877, v878, v879, v880;
          }

          v881 = *(v858 + 9);
          if (v881 != 1)
          {
            v881, v859, v860, v861, v862, v863, v864, v865;
            *(v858 + 11), v882, v883, v884, v885, v886, v887, v888;
            *(v858 + 13), v889, v890, v891, v892, v893, v894, v895;
          }

          v896 = *(v1180 + 28);
          v897 = sub_1BE04AF64();
          v1172 = *(v897 - 8);
          v898 = *(v1172 + 48);
          if (!v898(&v858[v896], 1, v897))
          {
            (*(v1172 + 8))(&v858[v896], v897);
          }

          v899 = *(v1180 + 32);
          v857 = v1182;
          if (!v898(&v858[v899], 1, v897))
          {
            (*(v1172 + 8))(&v858[v899], v897);
          }
        }

        v900 = (v801 + v857[12]);
        if (*v900)
        {

          v900[4], v901, v902, v903, v904, v905, v906, v907;
        }

        v908 = (v801 + v857[13]);
        v3 = v1176;
        if (*v908)
        {

          v908[2], v909, v910, v911, v912, v913, v914, v915;
        }

        *(v801 + v857[14]), v859, v860, v861, v862, v863, v864, v865;
        *(v801 + v857[15]), v916, v917, v918, v919, v920, v921, v922;
      }

      v923 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

      v924 = (v801 + *(v923 + 64));
      v924[1], v925, v926, v927, v928, v929, v930, v931;
      v924[3], v932, v933, v934, v935, v936, v937, v938;
      v803 = v924 + 4;
    }
  }

  v939 = v764 + v3;
  v940 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  *(v801 + *(v940 + 28)), v941, v942, v943, v944, v945, v946, v947;
  v948 = (v4 + v1[25]);
  v949 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v949 - 8) + 48))(v948, 1, v949))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v950 = sub_1BE04AA64();
      (*(*(v950 - 8) + 8))(v948, v950);
    }

    else
    {

      v948[2], v951, v952, v953, v954, v955, v956, v957;
    }
  }

  v958 = v939 & ~v3;
  v959 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v948 + *(v959 + 28)), v960, v961, v962, v963, v964, v965, v966;
  v967 = (v4 + v1[26]);

  v967[1], v968, v969, v970, v971, v972, v973, v974;
  v975 = (v4 + v1[27]);
  *v975, v976, v977, v978, v979, v980, v981, v982;
  v975[1], v983, v984, v985, v986, v987, v988, v989;
  *(v4 + v1[28] + 8), v990, v991, v992, v993, v994, v995, v996;
  *(v4 + v1[29] + 8), v997, v998, v999, v1000, v1001, v1002, v1003;
  v1004 = (v4 + v1[30]);

  v1004[1], v1005, v1006, v1007, v1008, v1009, v1010, v1011;
  *(v4 + v1[31] + 48), v1012, v1013, v1014, v1015, v1016, v1017, v1018;
  v1019 = (v4 + v1[32]);

  v1019[1], v1020, v1021, v1022, v1023, v1024, v1025, v1026;
  v1027 = v1[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  v1035 = v1182;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1036 = sub_1BE04E354();
    (*(*(v1036 - 8) + 8))(v4 + v1027, v1036);
  }

  else
  {
    *(v4 + v1027), v1028, v1029, v1030, v1031, v1032, v1033, v1034;
  }

  v1037 = (v1181 + v958);
  if (!v1177((v1181 + v958), 1, v1182))
  {
    v1038 = swift_getEnumCaseMultiPayload();
    if (v1038 == 2)
    {
      v1037[1], v1039, v1040, v1041, v1042, v1043, v1044, v1045;
      v1037[3], v1046, v1047, v1048, v1049, v1050, v1051, v1052;
      v1053 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1054 = sub_1BE04CF34();
      (*(*(v1054 - 8) + 8))(v1037 + v1053, v1054);
    }

    else if (v1038 <= 1)
    {
    }

    v1055 = (v1037 + v1182[6]);
    if (!(v1175)(v1055, 1, v1178))
    {
      v1055[1], v1056, v1057, v1058, v1059, v1060, v1061, v1062;
      v1063 = v1178[5];
      v1064 = sub_1BE04DA84();
      (*(*(v1064 - 8) + 8))(v1055 + v1063, v1064);
      *(v1055 + v1178[6] + 8), v1065, v1066, v1067, v1068, v1069, v1070, v1071;
      *(v1055 + v1178[7] + 8), v1072, v1073, v1074, v1075, v1076, v1077, v1078;
      *(v1055 + v1178[8] + 8), v1079, v1080, v1081, v1082, v1083, v1084, v1085;
    }

    v1086 = (v1037 + v1182[7]);
    if (!(v1174)(v1086, 1, v1179))
    {

      v1087 = *(v1179 + 28);
      v1088 = sub_1BE04AF64();
      v1089 = *(v1088 - 8);
      if (!(*(v1089 + 48))(v1086 + v1087, 1, v1088))
      {
        (*(v1089 + 8))(v1086 + v1087, v1088);
      }
    }

    v1090 = v1037 + v1182[10];
    if (!(v1173)(v1090, 1, v1180))
    {
      v1098 = *(v1090 + 2);
      if (v1098 != 1)
      {
        v1098, v1091, v1092, v1093, v1094, v1095, v1096, v1097;
        *(v1090 + 4), v1099, v1100, v1101, v1102, v1103, v1104, v1105;
        *(v1090 + 6), v1106, v1107, v1108, v1109, v1110, v1111, v1112;
      }

      v1113 = *(v1090 + 9);
      if (v1113 != 1)
      {
        v1113, v1091, v1092, v1093, v1094, v1095, v1096, v1097;
        *(v1090 + 11), v1114, v1115, v1116, v1117, v1118, v1119, v1120;
        *(v1090 + 13), v1121, v1122, v1123, v1124, v1125, v1126, v1127;
      }

      v1128 = *(v1180 + 28);
      v1129 = sub_1BE04AF64();
      v1130 = *(v1129 - 8);
      v1131 = *(v1130 + 48);
      if (!v1131(&v1090[v1128], 1, v1129))
      {
        (*(v1130 + 8))(&v1090[v1128], v1129);
      }

      v1132 = *(v1180 + 32);
      v1133 = v1131(&v1090[v1132], 1, v1129);
      v1035 = v1182;
      if (!v1133)
      {
        (*(v1130 + 8))(&v1090[v1132], v1129);
      }
    }

    v1134 = (v1037 + v1035[12]);
    if (*v1134)
    {

      v1134[4], v1135, v1136, v1137, v1138, v1139, v1140, v1141;
    }

    v1142 = (v1037 + v1035[13]);
    if (*v1142)
    {

      v1142[2], v1143, v1144, v1145, v1146, v1147, v1148, v1149;
    }

    *(v1037 + v1035[14]), v1091, v1092, v1093, v1094, v1095, v1096, v1097;
    *(v1037 + v1035[15]), v1150, v1151, v1152, v1153, v1154, v1155, v1156;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD0488B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39538, &qword_1BE0B8798);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD048924()
{
  v1 = type metadata accessor for PaymentPassHubView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 17) & ~v2);
  v4 = (v3 + v1[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v4[1], v6, v7, v8, v9, v10, v11, v12;
    v4[3], v13, v14, v15, v16, v17, v18, v19;
    v20 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v21 = sub_1BE04CF34();
    (*(*(v21 - 8) + 8))(v4 + v20, v21);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v22 = type metadata accessor for AvailablePass(0);
  v23 = (v4 + v22[6]);
  v24 = type metadata accessor for IdentityCredential(0);
  v1048 = *(*(v24 - 1) + 48);
  if (!v1048(v23, 1, v24))
  {
    v23[1], v25, v26, v27, v28, v29, v30, v31;
    v32 = v24[5];
    v33 = sub_1BE04DA84();
    (*(*(v33 - 8) + 8))(v23 + v32, v33);
    *(v23 + v24[6] + 8), v34, v35, v36, v37, v38, v39, v40;
    *(v23 + v24[7] + 8), v41, v42, v43, v44, v45, v46, v47;
    *(v23 + v24[8] + 8), v48, v49, v50, v51, v52, v53, v54;
  }

  v1052 = v24;
  v55 = (v4 + v22[7]);
  v1049 = type metadata accessor for BalanceInfo(0);
  v1047 = *(*(v1049 - 8) + 48);
  if (!v1047(v55, 1))
  {

    v56 = *(v1049 + 28);
    v57 = sub_1BE04AF64();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(v55 + v56, 1, v57))
    {
      (*(v58 + 8))(v55 + v56, v57);
    }
  }

  v59 = v4 + v22[10];
  v1050 = type metadata accessor for PassEligibleRewardsInfo(0);
  v1046 = *(*(v1050 - 8) + 48);
  v1051 = v22;
  if (!v1046(v59, 1))
  {
    v67 = *(v59 + 2);
    if (v67 != 1)
    {
      v67, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 4), v68, v69, v70, v71, v72, v73, v74;
      *(v59 + 6), v75, v76, v77, v78, v79, v80, v81;
    }

    v82 = *(v59 + 9);
    if (v82 != 1)
    {
      v82, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 11), v83, v84, v85, v86, v87, v88, v89;
      *(v59 + 13), v90, v91, v92, v93, v94, v95, v96;
    }

    v97 = *(v1050 + 28);
    v98 = sub_1BE04AF64();
    v99 = *(v98 - 8);
    v100 = *(v99 + 48);
    if (!v100(&v59[v97], 1, v98))
    {
      (*(v99 + 8))(&v59[v97], v98);
    }

    v101 = *(v1050 + 32);
    if (!v100(&v59[v101], 1, v98))
    {
      (*(v99 + 8))(&v59[v101], v98);
    }
  }

  v102 = (v4 + v22[12]);
  if (*v102)
  {

    v102[4], v103, v104, v105, v106, v107, v108, v109;
  }

  v110 = (v4 + v22[13]);
  if (*v110)
  {

    v110[2], v111, v112, v113, v114, v115, v116, v117;
  }

  *(v4 + v22[14]), v60, v61, v62, v63, v64, v65, v66;
  *(v4 + v22[15]), v118, v119, v120, v121, v122, v123, v124;

  v125 = (v3 + v1[7]);
  v1045 = *(*(v22 - 1) + 48);
  v126 = v1052;
  if (!v1045(v125, 1, v22))
  {
    v127 = swift_getEnumCaseMultiPayload();
    if (v127 == 2)
    {
      v125[1], v128, v129, v130, v131, v132, v133, v134;
      v125[3], v135, v136, v137, v138, v139, v140, v141;
      v142 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v143 = sub_1BE04CF34();
      (*(*(v143 - 8) + 8))(v125 + v142, v143);
    }

    else if (v127 <= 1)
    {
    }

    v144 = (v125 + v22[6]);
    if (!v1048(v144, 1, v1052))
    {
      v144[1], v145, v146, v147, v148, v149, v150, v151;
      v152 = v1052[5];
      v153 = sub_1BE04DA84();
      (*(*(v153 - 8) + 8))(v144 + v152, v153);
      *(v144 + v1052[6] + 8), v154, v155, v156, v157, v158, v159, v160;
      *(v144 + v1052[7] + 8), v161, v162, v163, v164, v165, v166, v167;
      *(v144 + v1052[8] + 8), v168, v169, v170, v171, v172, v173, v174;
    }

    v175 = (v125 + v22[7]);
    if (!(v1047)(v175, 1, v1049))
    {

      v176 = *(v1049 + 28);
      v177 = sub_1BE04AF64();
      v178 = *(v177 - 8);
      if (!(*(v178 + 48))(v175 + v176, 1, v177))
      {
        (*(v178 + 8))(v175 + v176, v177);
      }
    }

    v179 = v125 + v22[10];
    if (!(v1046)(v179, 1, v1050))
    {
      v187 = *(v179 + 2);
      if (v187 != 1)
      {
        v187, v180, v181, v182, v183, v184, v185, v186;
        *(v179 + 4), v188, v189, v190, v191, v192, v193, v194;
        *(v179 + 6), v195, v196, v197, v198, v199, v200, v201;
      }

      v202 = *(v179 + 9);
      if (v202 != 1)
      {
        v202, v180, v181, v182, v183, v184, v185, v186;
        *(v179 + 11), v203, v204, v205, v206, v207, v208, v209;
        *(v179 + 13), v210, v211, v212, v213, v214, v215, v216;
      }

      v217 = *(v1050 + 28);
      v218 = sub_1BE04AF64();
      v219 = *(v218 - 8);
      v220 = *(v219 + 48);
      if (!v220(&v179[v217], 1, v218))
      {
        (*(v219 + 8))(&v179[v217], v218);
      }

      v221 = *(v1050 + 32);
      if (!v220(&v179[v221], 1, v218))
      {
        (*(v219 + 8))(&v179[v221], v218);
      }
    }

    v222 = (v125 + v22[12]);
    if (*v222)
    {

      v222[4], v223, v224, v225, v226, v227, v228, v229;
    }

    v230 = (v125 + v22[13]);
    if (*v230)
    {

      v230[2], v231, v232, v233, v234, v235, v236, v237;
    }

    *(v125 + v22[14]), v180, v181, v182, v183, v184, v185, v186;
    *(v125 + v22[15]), v238, v239, v240, v241, v242, v243, v244;
    v126 = v1052;
  }

  v245 = type metadata accessor for Passes(0);

  *(v125 + v245[7]), v246, v247, v248, v249, v250, v251, v252;
  *(v125 + v245[9]), v253, v254, v255, v256, v257, v258, v259;
  *(v125 + v245[11]), v260, v261, v262, v263, v264, v265, v266;
  v274 = v3 + v1[8];
  if (*(v274 + 48))
  {
    sub_1BD0D455C(*v274, *(v274 + 8), *(v274 + 16));

    *(v274 + 48), v275, v276, v277, v278, v279, v280, v281;
    *(v274 + 64), v282, v283, v284, v285, v286, v287, v288;
  }

  *(v3 + v1[9] + 8), v267, v268, v269, v270, v271, v272, v273;
  *(v3 + v1[10] + 8), v289, v290, v291, v292, v293, v294, v295;
  *(v3 + v1[11] + 8), v296, v297, v298, v299, v300, v301, v302;
  *(v3 + v1[12] + 8), v303, v304, v305, v306, v307, v308, v309;
  *(v3 + v1[13] + 8), v310, v311, v312, v313, v314, v315, v316;
  v317 = (v3 + v1[14]);
  v318 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v318 - 1) + 48))(v317, 1, v318))
  {
    v1044 = v245;

    v317[4], v319, v320, v321, v322, v323, v324, v325;
    v317[6], v326, v327, v328, v329, v330, v331, v332;
    v333 = _s11TotalAmountVMa(0);
    v334 = (v317 + v333[10]);
    _s22SummaryItemPricingTypeOMa(0);
    v335 = swift_getEnumCaseMultiPayload();
    switch(v335)
    {
      case 2:
        v334[1], v336, v337, v338, v339, v340, v341, v342;
        break;
      case 1:
        v378 = sub_1BE04AF64();
        (*(*(v378 - 8) + 8))(v334, v378);
        break;
      case 0:
        v1041 = v318;
        v343 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v344 = v343[6];
        v345 = sub_1BE04AF64();
        v346 = *(v345 - 8);
        v347 = *(v346 + 48);
        if (!v347(v334 + v344, 1, v345))
        {
          (*(v346 + 8))(v334 + v344, v345);
        }

        v348 = v346;
        v349 = v343[7];
        if (!v347(v334 + v349, 1, v345))
        {
          (*(v348 + 8))(v334 + v349, v345);
        }

        *(v334 + v343[9] + 8), v350, v351, v352, v353, v354, v355, v356;
        *(v334 + v343[10] + 8), v357, v358, v359, v360, v361, v362, v363;
        *(v334 + v343[11] + 8), v364, v365, v366, v367, v368, v369, v370;
        *(v334 + v343[12] + 8), v371, v372, v373, v374, v375, v376, v377;
        v22 = v1051;
        v126 = v1052;
        v318 = v1041;
        break;
    }

    v379 = (v317 + v333[15]);
    v380 = v333;
    v381 = type metadata accessor for PeerPaymentModel(0);
    if (!(*(*(v381 - 1) + 48))(v379, 1, v381))
    {
      v1039 = v380;

      v382 = (v379 + v381[5]);
      v383 = swift_getEnumCaseMultiPayload();
      v1042 = v318;
      if (v383 == 2)
      {
        v382[1], v384, v385, v386, v387, v388, v389, v390;
        v382[3], v391, v392, v393, v394, v395, v396, v397;
        v398 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v399 = sub_1BE04CF34();
        (*(*(v399 - 8) + 8))(v382 + v398, v399);
      }

      else if (v383 <= 1)
      {
      }

      v400 = (v382 + v1051[6]);
      if (!v1048(v400, 1, v126))
      {
        v400[1], v401, v402, v403, v404, v405, v406, v407;
        v408 = v1052[5];
        v409 = sub_1BE04DA84();
        (*(*(v409 - 8) + 8))(v400 + v408, v409);
        *(v400 + v1052[6] + 8), v410, v411, v412, v413, v414, v415, v416;
        *(v400 + v1052[7] + 8), v417, v418, v419, v420, v421, v422, v423;
        *(v400 + v1052[8] + 8), v424, v425, v426, v427, v428, v429, v430;
      }

      v431 = (v382 + v1051[7]);
      if (!(v1047)(v431, 1, v1049))
      {

        v432 = *(v1049 + 28);
        v433 = sub_1BE04AF64();
        v434 = *(v433 - 8);
        if (!(*(v434 + 48))(v431 + v432, 1, v433))
        {
          (*(v434 + 8))(v431 + v432, v433);
        }
      }

      v435 = v382 + v1051[10];
      if (!(v1046)(v435, 1, v1050))
      {
        v443 = *(v435 + 2);
        if (v443 != 1)
        {
          v443, v436, v437, v438, v439, v440, v441, v442;
          *(v435 + 4), v444, v445, v446, v447, v448, v449, v450;
          *(v435 + 6), v451, v452, v453, v454, v455, v456, v457;
        }

        v458 = *(v435 + 9);
        if (v458 != 1)
        {
          v458, v436, v437, v438, v439, v440, v441, v442;
          *(v435 + 11), v459, v460, v461, v462, v463, v464, v465;
          *(v435 + 13), v466, v467, v468, v469, v470, v471, v472;
        }

        v473 = *(v1050 + 28);
        v474 = sub_1BE04AF64();
        v1037 = *(v474 - 8);
        v1036 = v473;
        v475 = &v435[v473];
        v476 = *(v1037 + 48);
        if (!v476(v475, 1, v474))
        {
          (*(v1037 + 8))(&v435[v1036], v474);
        }

        v477 = *(v1050 + 32);
        if (!v476(&v435[v477], 1, v474))
        {
          (*(v1037 + 8))(&v435[v477], v474);
        }
      }

      v478 = (v382 + v1051[12]);
      if (*v478)
      {

        v478[4], v479, v480, v481, v482, v483, v484, v485;
      }

      v486 = (v382 + v1051[13]);
      if (*v486)
      {

        v486[2], v487, v488, v489, v490, v491, v492, v493;
      }

      v22 = v1051;
      *(v382 + v1051[14]), v436, v437, v438, v439, v440, v441, v442;
      *(v382 + v1051[15]), v494, v495, v496, v497, v498, v499, v500;
      v501 = v379;
      v502 = (v379 + v381[6]);
      v126 = v1052;
      v318 = v1042;
      if (*v502 != 1)
      {

        v510 = v502[3];
        if (v510)
        {
          v510, v503, v504, v505, v506, v507, v508, v509;
          v502[5], v511, v512, v513, v514, v515, v516, v517;
          v502[7], v518, v519, v520, v521, v522, v523, v524;
          v502[9], v525, v526, v527, v528, v529, v530, v531;
        }

        v501 = v379;
      }

      v380 = v1039;
    }

    v532 = (v317 + v380[16]);
    v533 = v1044;
    if (!(*(*(v1044 - 1) + 48))(v532, 1, v1044))
    {
      if (!v1045(v532, 1, v22))
      {
        v541 = swift_getEnumCaseMultiPayload();
        if (v541 == 2)
        {
          v532[1], v542, v543, v544, v545, v546, v547, v548;
          v532[3], v549, v550, v551, v552, v553, v554, v555;
          v556 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v557 = sub_1BE04CF34();
          (*(*(v557 - 8) + 8))(v532 + v556, v557);
        }

        else if (v541 <= 1)
        {
        }

        v558 = (v532 + v22[6]);
        if (!v1048(v558, 1, v126))
        {
          v558[1], v559, v560, v561, v562, v563, v564, v565;
          v566 = v318;
          v567 = v1052[5];
          v568 = sub_1BE04DA84();
          v569 = v558 + v567;
          v318 = v566;
          (*(*(v568 - 8) + 8))(v569, v568);
          *(v558 + v1052[6] + 8), v570, v571, v572, v573, v574, v575, v576;
          *(v558 + v1052[7] + 8), v577, v578, v579, v580, v581, v582, v583;
          *(v558 + v1052[8] + 8), v584, v585, v586, v587, v588, v589, v590;
        }

        v1043 = v318;
        v591 = (v532 + v22[7]);
        if (!(v1047)(v591, 1, v1049))
        {

          v592 = *(v1049 + 28);
          v593 = sub_1BE04AF64();
          v594 = *(v593 - 8);
          if (!(*(v594 + 48))(v591 + v592, 1, v593))
          {
            (*(v594 + 8))(v591 + v592, v593);
          }
        }

        v595 = v532 + v1051[10];
        if (!(v1046)(v595, 1, v1050))
        {
          v603 = *(v595 + 2);
          if (v603 != 1)
          {
            v603, v596, v597, v598, v599, v600, v601, v602;
            *(v595 + 4), v604, v605, v606, v607, v608, v609, v610;
            *(v595 + 6), v611, v612, v613, v614, v615, v616, v617;
          }

          v618 = *(v595 + 9);
          if (v618 != 1)
          {
            v618, v596, v597, v598, v599, v600, v601, v602;
            *(v595 + 11), v619, v620, v621, v622, v623, v624, v625;
            *(v595 + 13), v626, v627, v628, v629, v630, v631, v632;
          }

          v633 = *(v1050 + 28);
          v634 = sub_1BE04AF64();
          v1040 = *(v634 - 8);
          v1038 = v633;
          v635 = &v595[v633];
          v636 = *(v1040 + 48);
          if (!v636(v635, 1, v634))
          {
            (*(v1040 + 8))(&v595[v1038], v634);
          }

          v637 = *(v1050 + 32);
          if (!v636(&v595[v637], 1, v634))
          {
            (*(v1040 + 8))(&v595[v637], v634);
          }
        }

        v126 = v1052;
        v638 = (v532 + v1051[12]);
        if (*v638)
        {

          v638[4], v639, v640, v641, v642, v643, v644, v645;
        }

        v646 = (v532 + v1051[13]);
        v318 = v1043;
        if (*v646)
        {

          v646[2], v647, v648, v649, v650, v651, v652, v653;
        }

        v22 = v1051;
        *(v532 + v1051[14]), v596, v597, v598, v599, v600, v601, v602;
        *(v532 + v1051[15]), v654, v655, v656, v657, v658, v659, v660;
        v533 = v1044;
      }

      *(v532 + v533[7]), v661, v662, v663, v664, v665, v666, v667;
      *(v532 + v533[9]), v668, v669, v670, v671, v672, v673, v674;
      *(v532 + v533[11]), v675, v676, v677, v678, v679, v680, v681;
    }

    *(v317 + v318[5]), v534, v535, v536, v537, v538, v539, v540;
    *(v317 + v318[6] + 8), v682, v683, v684, v685, v686, v687, v688;
    v696 = v317 + v318[7];
    v697 = *(v696 + 1);
    if (v697)
    {
      v697, v689, v690, v691, v692, v693, v694, v695;
      *(v696 + 3), v698, v699, v700, v701, v702, v703, v704;
    }

    v705 = v317 + v318[9];
    v706 = *(v705 + 1);
    if (v706)
    {
      v706, v689, v690, v691, v692, v693, v694, v695;
      *(v705 + 3), v707, v708, v709, v710, v711, v712, v713;
      *(v705 + 5), v714, v715, v716, v717, v718, v719, v720;
    }

    v721 = v317 + v318[10];
    v722 = *(v721 + 1);
    if (v722)
    {
      v722, v689, v690, v691, v692, v693, v694, v695;
      *(v721 + 3), v723, v724, v725, v726, v727, v728, v729;
      *(v721 + 5), v730, v731, v732, v733, v734, v735, v736;
    }

    v737 = (v317 + v318[11]);
    v738 = type metadata accessor for DeferredPaymentRequest(0);
    if (!(*(*(v738 - 1) + 48))(v737, 1, v738))
    {
      v746 = v318;
      v737[1], v739, v740, v741, v742, v743, v744, v745;
      v737[3], v747, v748, v749, v750, v751, v752, v753;
      v737[5], v754, v755, v756, v757, v758, v759, v760;
      v761 = v738[7];
      v762 = sub_1BE04AF64();
      v763 = *(v762 - 8);
      if (!(*(v763 + 48))(v737 + v761, 1, v762))
      {
        (*(v763 + 8))(v737 + v761, v762);
      }

      v764 = v738[8];
      v765 = sub_1BE04B3B4();
      v766 = *(v765 - 8);
      if (!(*(v766 + 48))(v737 + v764, 1, v765))
      {
        (*(v766 + 8))(v737 + v764, v765);
      }

      v22 = v1051;
      v126 = v1052;
      v318 = v746;
    }

    *(v317 + v318[12]), v739, v740, v741, v742, v743, v744, v745;
  }

  *(v3 + v1[19] + 8), v767, v768, v769, v770, v771, v772, v773;
  *(v3 + v1[20]), v774, v775, v776, v777, v778, v779, v780;
  *(v3 + v1[21]), v781, v782, v783, v784, v785, v786, v787;
  *(v3 + v1[22]), v788, v789, v790, v791, v792, v793, v794;
  v795 = (v3 + v1[23]);

  v795[1], v796, v797, v798, v799, v800, v801, v802;
  v803 = (v3 + v1[24]);
  v804 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v804 - 8) + 48))(v803, 1, v804))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v805 = v803 + 2;
    }

    else
    {
      if (!v1045(v803, 1, v22))
      {
        v806 = swift_getEnumCaseMultiPayload();
        if (v806 == 2)
        {
          v803[1], v807, v808, v809, v810, v811, v812, v813;
          v803[3], v814, v815, v816, v817, v818, v819, v820;
          v821 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v822 = sub_1BE04CF34();
          (*(*(v822 - 8) + 8))(v803 + v821, v822);
        }

        else if (v806 <= 1)
        {
        }

        v823 = (v803 + v22[6]);
        if (!v1048(v823, 1, v126))
        {
          v823[1], v824, v825, v826, v827, v828, v829, v830;
          v831 = v126[5];
          v832 = sub_1BE04DA84();
          (*(*(v832 - 8) + 8))(v823 + v831, v832);
          *(v823 + v126[6] + 8), v833, v834, v835, v836, v837, v838, v839;
          *(v823 + v126[7] + 8), v840, v841, v842, v843, v844, v845, v846;
          *(v823 + v126[8] + 8), v847, v848, v849, v850, v851, v852, v853;
        }

        v854 = (v803 + v22[7]);
        if (!(v1047)(v854, 1, v1049))
        {

          v855 = *(v1049 + 28);
          v856 = sub_1BE04AF64();
          v857 = *(v856 - 8);
          if (!(*(v857 + 48))(v854 + v855, 1, v856))
          {
            (*(v857 + 8))(v854 + v855, v856);
          }
        }

        v858 = v803 + v22[10];
        if (!(v1046)(v858, 1, v1050))
        {
          v866 = *(v858 + 2);
          if (v866 != 1)
          {
            v866, v859, v860, v861, v862, v863, v864, v865;
            *(v858 + 4), v867, v868, v869, v870, v871, v872, v873;
            *(v858 + 6), v874, v875, v876, v877, v878, v879, v880;
          }

          v881 = *(v858 + 9);
          if (v881 != 1)
          {
            v881, v859, v860, v861, v862, v863, v864, v865;
            *(v858 + 11), v882, v883, v884, v885, v886, v887, v888;
            *(v858 + 13), v889, v890, v891, v892, v893, v894, v895;
          }

          v896 = *(v1050 + 28);
          v897 = sub_1BE04AF64();
          v898 = *(v897 - 8);
          v899 = *(v898 + 48);
          if (!v899(&v858[v896], 1, v897))
          {
            (*(v898 + 8))(&v858[v896], v897);
          }

          v900 = *(v1050 + 32);
          v22 = v1051;
          if (!v899(&v858[v900], 1, v897))
          {
            (*(v898 + 8))(&v858[v900], v897);
          }
        }

        v901 = (v803 + v22[12]);
        if (*v901)
        {

          v901[4], v902, v903, v904, v905, v906, v907, v908;
        }

        v909 = (v803 + v22[13]);
        if (*v909)
        {

          v909[2], v910, v911, v912, v913, v914, v915, v916;
        }

        *(v803 + v22[14]), v859, v860, v861, v862, v863, v864, v865;
        *(v803 + v22[15]), v917, v918, v919, v920, v921, v922, v923;
      }

      v924 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

      v925 = (v803 + *(v924 + 64));
      v925[1], v926, v927, v928, v929, v930, v931, v932;
      v925[3], v933, v934, v935, v936, v937, v938, v939;
      v805 = v925 + 4;
    }
  }

  v940 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  *(v803 + *(v940 + 28)), v941, v942, v943, v944, v945, v946, v947;
  v948 = (v3 + v1[25]);
  v949 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v949 - 8) + 48))(v948, 1, v949))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v950 = sub_1BE04AA64();
      (*(*(v950 - 8) + 8))(v948, v950);
    }

    else
    {

      v948[2], v951, v952, v953, v954, v955, v956, v957;
    }
  }

  v958 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v948 + *(v958 + 28)), v959, v960, v961, v962, v963, v964, v965;
  v966 = (v3 + v1[26]);

  v966[1], v967, v968, v969, v970, v971, v972, v973;
  v974 = (v3 + v1[27]);
  *v974, v975, v976, v977, v978, v979, v980, v981;
  v974[1], v982, v983, v984, v985, v986, v987, v988;
  *(v3 + v1[28] + 8), v989, v990, v991, v992, v993, v994, v995;
  *(v3 + v1[29] + 8), v996, v997, v998, v999, v1000, v1001, v1002;
  v1003 = (v3 + v1[30]);

  v1003[1], v1004, v1005, v1006, v1007, v1008, v1009, v1010;
  *(v3 + v1[31] + 48), v1011, v1012, v1013, v1014, v1015, v1016, v1017;
  v1018 = (v3 + v1[32]);

  v1018[1], v1019, v1020, v1021, v1022, v1023, v1024, v1025;
  v1026 = v1[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1034 = sub_1BE04E354();
    (*(*(v1034 - 8) + 8))(v3 + v1026, v1034);
  }

  else
  {
    *(v3 + v1026), v1027, v1028, v1029, v1030, v1031, v1032, v1033;
  }

  return swift_deallocObject();
}