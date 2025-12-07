void *_PassKitUIPresentedCallBack(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "_PassKitUIPresentedCallBack", v5, 2u);
    }
  }

  result = [a2 isMemberOfClass:objc_opt_class()];
  if (result)
  {
    return [a2 performSelector:sel__passKitUIPresented];
  }

  return result;
}

void *_PassKitUIDismissedCallBack(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "_PassKitUIDismissedCallBack", v5, 2u);
    }
  }

  result = [a2 isMemberOfClass:objc_opt_class()];
  if (result)
  {
    return [a2 performSelector:sel__passKitUIDismissed];
  }

  return result;
}

void *_TouchIDUIPresentedCallBack(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "void _TouchIDUIPresentedCallBack(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
    }
  }

  result = [a2 isMemberOfClass:objc_opt_class()];
  if (result)
  {
    return [a2 performSelector:sel__passKitUIPresented];
  }

  return result;
}

void *_TouchIDUIDismissedCallBack(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "void _TouchIDUIDismissedCallBack(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
    }
  }

  result = [a2 isMemberOfClass:objc_opt_class()];
  if (result)
  {
    return [a2 performSelector:sel__passKitUIDismissed];
  }

  return result;
}

void *_iTunesStoreDialogWillDisplayCallBack(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "void _iTunesStoreDialogWillDisplayCallBack(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
    }
  }

  result = [a2 isMemberOfClass:objc_opt_class()];
  if (result)
  {
    return [a2 performSelector:sel__iTunesStoreDialogWillDisplay];
  }

  return result;
}

void *_iTunesStoreDialogDidDismissCallBack(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "void _iTunesStoreDialogDidDismissCallBack(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
    }
  }

  result = [a2 isMemberOfClass:objc_opt_class()];
  if (result)
  {
    return [a2 performSelector:sel__iTunesStoreDialogDidDismiss];
  }

  return result;
}

void sub_19079D718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getMSMessageClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMSMessageClass_softClass_1;
  v7 = getMSMessageClass_softClass_1;
  if (!getMSMessageClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMSMessageClass_block_invoke_1;
    v3[3] = &unk_1E72EB968;
    v3[4] = &v4;
    __getMSMessageClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1907A0794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907A09E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getMSMessageClass_block_invoke_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FindMyUICoreLibraryCore_frameworkLibrary_3)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FindMyUICoreLibraryCore_block_invoke_3;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72F7CB0;
    v5 = 0;
    FindMyUICoreLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  if (!FindMyUICoreLibraryCore_frameworkLibrary_3)
  {
    __getMSMessageClass_block_invoke_cold_2_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MSMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMSMessageClass_block_invoke_cold_1_1();
  }

  getMSMessageClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FindMyUICoreLibraryCore_block_invoke_3(uint64_t a1)
{
  result = _sl_dlopen();
  FindMyUICoreLibraryCore_frameworkLibrary_3 = result;
  return result;
}

void sub_1907A2A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907A59F8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1907A5920);
    }

    JUMPOUT(0x1907A58B8);
  }

  _Unwind_Resume(a1);
}

void sub_1907A6184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CKAudioProgressImageCache(uint64_t a1)
{
  if (CKAudioProgressImageCache_once != -1)
  {
    CKAudioProgressImageCache_cold_1();
  }

  v2 = CKAudioProgressImageCache_sAudioProgressImageCache;

  return v2;
}

void __CKAudioProgressImageCache_block_invoke()
{
  v0 = CKDefaultCacheLimit();
  v1 = CKCreateCache(v0);
  v2 = CKAudioProgressImageCache_sAudioProgressImageCache;
  CKAudioProgressImageCache_sAudioProgressImageCache = v1;
}

void sub_1907AC010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDActionClass_block_invoke(uint64_t a1)
{
  DataDetectorsUILibrary_0();
  result = objc_getClass("DDAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDDActionClass_block_invoke_cold_1();
  }

  getDDActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t DataDetectorsUILibrary_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __DataDetectorsUILibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E72F7D90;
    v4 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = DataDetectorsUILibraryCore_frameworkLibrary_0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_0)
  {
    DataDetectorsUILibrary_cold_1_0(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getkDataDetectorsReferenceDateKeySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_0();
  result = dlsym(v2, "kDataDetectorsReferenceDateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsReferenceDateKeySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsLeadingTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_0();
  result = dlsym(v2, "kDataDetectorsLeadingText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsLeadingTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsMiddleTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_0();
  result = dlsym(v2, "kDataDetectorsMiddleText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsMiddleTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsTrailingTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_0();
  result = dlsym(v2, "kDataDetectorsTrailingText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsTrailingTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1907AD6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1907AEEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1907B1F0C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1907B1ECCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1907B4900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1907B4B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1907B5260(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1907BA508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1907BF574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a14, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907C0F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907C1064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907C4C20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1907C5718(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1907C55D8);
  }

  _Unwind_Resume(a1);
}

void sub_1907C66C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1907C9534(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1907C94DCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1907CB9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1907CB99CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1907D01AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id location)
{
  objc_destroyWeak((v54 + 40));
  objc_destroyWeak((v54 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v55 - 224));
  _Unwind_Resume(a1);
}

void sub_1907D1B44(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1907D190CLL);
  }

  _Unwind_Resume(a1);
}

void *____tailspin_dump_output_sync_block_invoke()
{
  result = MEMORY[0x193AF5ED0]("tailspin_dump_output_sync", @"libtailspin.dylib");
  __tailspin_dump_output_sync___tailspin_dump_output_sync = result;
  return result;
}

void ___messagesControllerTelemetryLogHandle_block_invoke()
{
  v0 = MessagesTelemetrySubsystem();
  v1 = os_log_create(v0, "MessagesController");
  v2 = _messagesControllerTelemetryLogHandle_telemetryLogHandle;
  _messagesControllerTelemetryLogHandle_telemetryLogHandle = v1;
}

void ___handleSIMSubcriptionUpdateNotification_block_invoke()
{
  CKResetBlackholeEnabledCache();
  CKResetFilteringSettings();
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:CKMessageFilteringChangedNotification[0] object:0];
}

void sub_1907DA620(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1907DF17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTManagementStateClass_block_invoke(uint64_t a1)
{
  ScreenTimeCoreLibrary();
  result = objc_getClass("STManagementState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTManagementStateClass_block_invoke_cold_1();
  }

  getSTManagementStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ScreenTimeCoreLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!ScreenTimeCoreLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ScreenTimeCoreLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E72F8260;
    v2 = 0;
    ScreenTimeCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ScreenTimeCoreLibraryCore_frameworkLibrary)
  {
    ScreenTimeCoreLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ScreenTimeCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ScreenTimeCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSTCommunicationClientClass_block_invoke(uint64_t a1)
{
  ScreenTimeCoreLibrary();
  result = objc_getClass("STCommunicationClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTCommunicationClientClass_block_invoke_cold_1();
  }

  getSTCommunicationClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1907E2F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL CKSizeApproximatelyEqualToSizeWithTolerance(double a1, double a2, double a3, double a4, double a5)
{
  result = CKFloatApproximatelyEqualToFloatWithTolerance(a1, a3, a5);
  if (result)
  {

    return CKFloatApproximatelyEqualToFloatWithTolerance(a2, a4, a5);
  }

  return result;
}

BOOL CKRectApproximatelyEqualToRectWithTolerance(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  result = CKPointApproximatelyEqualToPointWithTolerance(a1, a2, a5, a6, a9);
  if (result)
  {

    return CKSizeApproximatelyEqualToSizeWithTolerance(a3, a4, a7, a8, a9);
  }

  return result;
}

void sub_1907E7478(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "CKBrowserItem encodeWithCoder caught exception %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x1907E7444);
  }

  _Unwind_Resume(a1);
}

void sub_1907E7F58(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1907E7D54);
  }

  _Unwind_Resume(a1);
}

void sub_1907E8944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907E9F88(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1907E9F5CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1907EB008(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1907EAC7CLL);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v52 - 240), 8);
  _Unwind_Resume(exc_buf);
}

void sub_1907EC67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907EC7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907EECFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907EFA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907F07AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907F1974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907F1D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CKWriteMediaObjectToFileLocation(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 transferGUID];
  v9 = [v5 filename];
  v10 = CKAttachmentDraftURL(v6, v8, v9);

  v11 = [v10 URLByDeletingLastPathComponent];
  [v7 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:0];

  v12 = [v5 fileURL];
  [v7 copyItemAtURL:v12 toURL:v10 error:0];

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_DEBUG, "-> attachmentURL:'%@'", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(0xFu, @"-> attachmentURL:'%@'", v14, v15, v16, v17, v18, v19, v10);
  }

  return v10;
}

id CKWriteRichLinkObjectToFileLocation(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v8 entryItemUUID];
  v10 = [v5 stringWithFormat:@"%@.data", v9];

  v11 = CKAttachmentDraftURL(v7, @"LinkMetadata", v10);

  v12 = [v11 URLByDeletingLastPathComponent];
  [v6 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:0];

  v18 = 0;
  v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v18];

  v14 = v18;
  v17 = 0;
  v15 = 0;
  if ([v13 writeToURL:v11 options:1073741825 error:&v17])
  {
    v15 = v11;
  }

  return v15;
}

id CKPersistentTextForText(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v8 = [v7 mutableCopy];
  v9 = [v7 length];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __CKPersistentTextForText_block_invoke;
  v16[3] = &unk_1E72F46D8;
  v17 = v5;
  v18 = v6;
  v10 = v8;
  v19 = v10;
  v11 = v6;
  v12 = v5;
  [v7 enumerateAttributesInRange:0 options:v9 usingBlock:{0, v16}];
  [v10 ck_addAttribute:*MEMORY[0x1E69A7CF8] from:v7 range:{0, v9}];
  [v10 ck_addAttribute:*MEMORY[0x1E69A7CF0] from:v7 range:{0, v9}];
  [v10 ck_addAttribute:*MEMORY[0x1E69A7D00] from:v7 range:{0, v9}];
  [v10 ck_addAttribute:*MEMORY[0x1E69A7D18] from:v7 range:{0, v9}];
  [v10 ck_addAttribute:*MEMORY[0x1E69A7D08] from:v7 range:{0, v9}];

  v13 = v19;
  v14 = v10;

  return v10;
}

void __CKPersistentTextForText_block_invoke(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:@"PluginDisplayContainer"];
  v9 = [v7 objectForKeyedSubscript:@"MediaObjectForTextAttachment"];
  v10 = [v7 objectForKeyedSubscript:@"AdaptiveImageGlyphMediaObject"];
  v11 = [v7 objectForKeyedSubscript:@"EmbeddedRichLinkConfiguration"];

  if (v9)
  {
    goto LABEL_4;
  }

  v12 = v10;
  if (v12)
  {
    v9 = v12;
LABEL_4:
    v13 = CKWriteMediaObjectToFileLocation(v9, a1[4], a1[5]);
    v14 = a1[6];
    v37 = @"CKCompositionFileURL";
    v38[0] = v13;
    v31 = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    [v14 setAttributes:v15 range:{a3, a4}];

    v16 = [v9 transcoderUserInfo];
    if (v16)
    {
      [a1[6] addAttribute:@"CKCompositionTranscoderUserInfo" value:v16 range:{a3, a4}];
    }

    v17 = v8;
    v18 = [v9 transfer];
    v19 = [v18 attributionInfo];

    if (v19)
    {
      [a1[6] addAttribute:@"CKCompositionAttributionInfo" value:v19 range:{a3, a4}];
    }

    v20 = a4;
    v34 = v10;
    v21 = [v10 transfer];
    v22 = [v21 adaptiveImageGlyphContentIdentifier];
    if (v22)
    {
      [a1[6] addAttribute:@"CKCompositionAdaptiveImageGlyphContentIdentifier" value:v22 range:{a3, v20}];
    }

    v32 = v17;
    v33 = v11;
    v23 = [v21 adaptiveImageGlyphContentDescription];
    if (v23)
    {
      [a1[6] addAttribute:@"CKCompositionAdaptiveImageGlyphContentDescription" value:v23 range:{a3, v20}];
    }

    v24 = [v9 transfer];
    v25 = [v24 stickerUserInfo];

    if (v25)
    {
      [a1[6] addAttribute:@"CKCompositionPersistenceAdaptiveImageStickerUserInfoAttributeName" value:v25 range:{a3, v20}];
    }

    v8 = v32;
    v11 = v33;
    v10 = v34;
    goto LABEL_15;
  }

  v26 = a4;
  if (v11)
  {
    v27 = CKWriteRichLinkObjectToFileLocation(v11, a1[4], a1[5]);
    v28 = a1[6];
    v35 = @"CKCompositionInlineRichLinkItemFileURL";
    v36 = v27;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v28 setAttributes:v29 range:{a3, v26}];
  }

  else if (!v8 && ([a1[6] containsAttribute:*MEMORY[0x1E69A70F8]] & 1) == 0)
  {
    [a1[6] setAttributes:0 range:{a3, a4}];
  }

  v9 = 0;
LABEL_15:
}

id CKTextForPersistentText(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 mutableCopy];
  v8 = [v5 length];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __CKTextForPersistentText_block_invoke;
  v20[3] = &unk_1E72F8608;
  v9 = v7;
  v21 = v9;
  v22 = v6;
  v24 = a3;
  v23 = v5;
  v10 = v5;
  v11 = v6;
  [v10 enumerateAttribute:@"CKCompositionFileURL" inRange:0 options:v8 usingBlock:{0, v20}];
  v12 = [v10 length];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __CKTextForPersistentText_block_invoke_2;
  v18[3] = &unk_1E72F8630;
  v13 = v9;
  v19 = v13;
  [v10 enumerateAttribute:@"CKCompositionInlineRichLinkItemFileURL" inRange:0 options:v12 usingBlock:{0, v18}];
  v14 = [v13 length];
  [v13 ck_addAttribute:*MEMORY[0x1E69A7CF8] from:v10 range:{0, v14}];
  [v13 ck_addAttribute:*MEMORY[0x1E69A7CF0] from:v10 range:{0, v14}];
  [v13 ck_addAttribute:*MEMORY[0x1E69A7D00] from:v10 range:{0, v14}];
  [v13 ck_addAttribute:*MEMORY[0x1E69A7D18] from:v10 range:{0, v14}];
  [v13 ck_addAttribute:*MEMORY[0x1E69A7D08] from:v10 range:{0, v14}];
  [v13 ck_addDisplayableAttributesForIMTextStyleAttributes];
  [v13 ck_addDisplayableAttributeForIMTextEffectAttribute];
  v15 = v19;
  v16 = v13;

  return v13;
}

void __CKTextForPersistentText_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (v7)
  {
    v8 = [*(a1 + 32) attribute:@"CKCompositionTranscoderUserInfo" atIndex:a3 effectiveRange:0];
    v9 = [*(a1 + 32) attribute:@"CKCompositionAttributionInfo" atIndex:a3 effectiveRange:0];
    v10 = [*(a1 + 32) attribute:@"CKCompositionPersistenceAdaptiveImageStickerUserInfoAttributeName" atIndex:a3 effectiveRange:0];
    v11 = [*(a1 + 32) attribute:@"CKCompositionAdaptiveImageGlyphContentIdentifier" atIndex:a3 effectiveRange:0];
    v12 = [*(a1 + 32) attribute:@"CKCompositionAdaptiveImageGlyphContentDescription" atIndex:a3 effectiveRange:0];
    v39 = v11;
    v40 = v12;
    if (v10)
    {
      v33 = a3;
      v34 = v9;
      v35 = v8;
      v36 = a4;
      v37 = objc_alloc(MEMORY[0x1E69A82C0]);
      v13 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A7C98]];
      v32 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A7CB0]];
      v14 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A8420]];
      v15 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A8428]];
      [v10 objectForKeyedSubscript:*MEMORY[0x1E69A8450]];
      v17 = v16 = v10;
      v31 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69A8448]];
      v18 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69A8438]];
      v19 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69A8440]];
      v20 = v37;
      v38 = v7;
      v21 = [v20 initWithStickerID:v13 stickerPackID:v32 fileURL:v7 accessibilityLabel:v14 accessibilityName:v15 searchText:v17 sanitizedPrompt:v31 moodCategory:v18 stickerName:v19];

      v10 = v16;
      v22 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69A7C88]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v21 setStickerEffectType:{objc_msgSend(v22, "integerValue")}];
      }

      v11 = v39;
      [v21 setAdaptiveImageGlyphContentIdentifier:v39];
      [v21 setAdaptiveImageGlyphContentDescription:v40];
      v23 = [*(a1 + 40) mediaObjectWithSticker:v21 stickerUserInfo:v10];

      a4 = v36;
      v7 = v38;
      v9 = v34;
      v8 = v35;
      a3 = v33;
      if (v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      LOBYTE(v30) = *(a1 + 56);
      v23 = [*(a1 + 40) mediaObjectWithFileURL:v7 filename:0 transcoderUserInfo:v8 attributionInfo:v9 adaptiveImageGlyphContentIdentifier:v11 adaptiveImageGlyphContentDescription:v12 hideAttachment:v30];
      if (v23)
      {
LABEL_6:
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v25 = *(a1 + 32);
        if (isKindOfClass)
        {
          v43 = @"AdaptiveImageGlyphMediaObject";
          v44[0] = v23;
          v26 = MEMORY[0x1E695DF20];
          v27 = v44;
          v28 = &v43;
        }

        else
        {
          v41 = @"MediaObjectForTextAttachment";
          v42 = v23;
          v26 = MEMORY[0x1E695DF20];
          v27 = &v42;
          v28 = &v41;
        }

        v29 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
        [v25 setAttributes:v29 range:{a3, a4}];

        v11 = v39;
        goto LABEL_14;
      }
    }

    [*(a1 + 32) setAttributes:0 range:{a3, a4}];
LABEL_14:

    goto LABEL_15;
  }

  if (([*(a1 + 48) containsAttribute:*MEMORY[0x1E69A70F8]] & 1) == 0)
  {
    [*(a1 + 32) setAttributes:0 range:{a3, a4}];
  }

LABEL_15:
}

void __CKTextForPersistentText_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a2];
    v12 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v12];
    v9 = v12;
    if (v8)
    {
      v10 = *(a1 + 32);
      v13 = @"EmbeddedRichLinkConfiguration";
      v14[0] = v8;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [v10 setAttributes:v11 range:{a3, a4}];
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __CKTextForPersistentText_block_invoke_2_cold_1();
      }
    }
  }
}

void sub_1907F4FD0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1907F4D5CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1907FEBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1907FEDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190800138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1908006D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CKStringFromSearchControllerMode(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @".default";
  }

  else
  {
    return off_1E72F87A0[a1 - 1];
  }
}

__n128 ____kCLLocationCoordinate2DInvalid_block_invoke_0()
{
  result = *MEMORY[0x193AF5ED0]("kCLLocationCoordinate2DInvalid", @"CoreLocation");
  __kCLLocationCoordinate2DInvalid___kCLLocationCoordinate2DInvalid_0 = result;
  return result;
}

void _SMSSubClassificationParamsUpdated(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___SMSSubClassificationParamsUpdated_block_invoke;
  block[3] = &unk_1E72EBA18;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_autoreleasePoolPop(v3);
}

void sub_190807F2C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1908079D8);
  }

  _Unwind_Resume(exc_buf);
}

void CKEnumerateSearchRange(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = a4;
  v10 = 0;
  if (a1 != 0x7FFFFFFFFFFFFFFFLL && a2)
  {
    do
    {
      v9 = xmmword_190DCEFA0;
      v7[2](v7, a1, a2, &v9, &v10);
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if ((a3 & 2) != 0)
      {
        a2 = v9 - a1;
      }

      else
      {
        v8 = a2 + a1;
        a1 = *(&v9 + 1) + v9;
        a2 = v8 - (*(&v9 + 1) + v9);
      }
    }

    while (a1 != 0x7FFFFFFFFFFFFFFFLL && a2 && (v10 & 1) == 0);
  }
}

void CKEnumerateRangeWithIncrement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CKEnumerateRangeWithIncrement_block_invoke;
  v11[3] = &unk_1E72F8928;
  v12 = v9;
  v13 = a4;
  v14 = a3;
  v15 = a1;
  v16 = a2;
  v10 = v9;
  CKEnumerateSearchRange(a1, a2, a4, v11);
}

uint64_t __CKEnumerateRangeWithIncrement_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  if ((*(a1 + 40) & 2) != 0)
  {
    v10 = a2 + a3;
    result = (*(*(a1 + 32) + 16))();
    v8 = *(a1 + 48);
    v9 = v10 - v8;
    v5 = v10 - v8;
  }

  else
  {
    result = (*(*(a1 + 32) + 16))();
    v8 = *(a1 + 48);
    v9 = v8 + v5;
  }

  v11 = *(a1 + 56);
  v12 = v9 - v11 < *(a1 + 64) && v9 >= v11;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (v12)
  {
    v13 = v5;
  }

  *a4 = v13;
  a4[1] = v8;
  return result;
}

void sub_19080DC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19080DE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19080F498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19080FAF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 184));
  _Block_object_dispose((v2 - 176), 8);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1908145A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_190D54800();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60, &qword_190DDDDD0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_19022FD14(v2 + *(a1 + 48), &v15 - v10, &qword_1EAD52E60, &qword_190DDDDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_190D540E0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_190D576B0();
    v14 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1908147A8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = 1;
  v10 = _s11ContentViewVMa(0, a4, a5, a4);
  v11 = *(v10 + 48);
  v12 = &a6[*(v10 + 44)];
  *&a6[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60, &qword_190DDDDD0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DetailsViewConfiguration(0);
  sub_190213EC0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  v13 = a1;
  sub_190D56340();
  _s9ViewModelCMa(0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle) = 0;
  *(v14 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingRemoveAlert) = 0;
  *(v14 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingAddRecipientPopover) = 0;
  *(v14 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingAddRecipientNavigationDestination) = 0;
  v15 = v13;
  sub_190D51C50();
  sub_190D51C50();
  *(v14 + 16) = v15;
  sub_190213EC0(&qword_1EAD53090, _s9ViewModelCMa, &unk_190DE6E60);
  sub_190D56340();

  *v12 = a2;
  v12[1] = a3;
}

uint64_t sub_190814978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = *(a1 + 16);
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40, &qword_190DDB6B0);
  v6 = sub_190D54200();
  v43 = sub_190D58050();
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52DB8, &qword_190DD3BF0);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = *(a1 + 24);
  v49 = v4;
  v50 = v18;
  v41 = v18;
  v51 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52DC0, &qword_190DD3BF8);
  sub_19081E7EC(&qword_1EAD52DC8, &qword_1EAD52DC0, &qword_190DD3BF8, sub_19081D5E0);
  sub_190D562E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();

  v42 = v13;
  v19 = *(v13 + 36);
  v20 = v17;
  v21 = &v17[v19];
  *v21 = xmmword_190DD1D80;
  *(v21 + 1) = xmmword_190DD1D80;
  v21[32] = 0;
  v22 = *&v2[*(a1 + 44)];
  if (v22)
  {
    LOBYTE(v55[0]) = *v2;
    v23 = v39;
    v22(v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
    sub_190D56320();

    v24 = [objc_opt_self() currentDevice];
    v25 = [v24 userInterfaceIdiom];

    if (v25 == 5)
    {
      v26 = sub_190D55DA0();
    }

    else
    {
      v26 = 0;
    }

    v28 = v41;
    v55[0] = v26;
    sub_190D55940();

    (*(v40 + 8))(v23, v4);
    v27 = 0;
  }

  else
  {
    v27 = 1;
    v28 = v41;
  }

  (*(*(v6 - 8) + 56))(v10, v27, 1, v6);
  v29 = sub_190233640(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0, MEMORY[0x1E697FDC0]);
  v55[3] = v28;
  v55[4] = v29;
  v55[2] = swift_getWitnessTable();
  v30 = v43;
  WitnessTable = swift_getWitnessTable();
  v32 = v46;
  sub_19096BC74();
  v33 = v45;
  v34 = *(v45 + 8);
  v34(v10, v30);
  v35 = v17;
  v36 = v44;
  sub_19022FD14(v35, v44, &qword_1EAD52DB8, &qword_190DD3BF0);
  v55[0] = v36;
  v37 = v47;
  (*(v33 + 16))(v47, v32, v30);
  v55[1] = v37;
  v54[0] = v42;
  v54[1] = v30;
  v52 = sub_19081D770();
  v53 = WitnessTable;
  sub_190B74A3C(v55, 2uLL, v54);
  v34(v32, v30);
  sub_19022EEA4(v20, &qword_1EAD52DB8, &qword_190DD3BF0);
  v34(v37, v30);
  return sub_19022EEA4(v36, &qword_1EAD52DB8, &qword_190DD3BF0);
}

uint64_t sub_190814F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, uint64_t a4@<X8>)
{
  v98 = a4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E00, &qword_190DD3C10);
  MEMORY[0x1EEE9AC00](v95);
  v82 = &v70 - v7;
  v8 = _s13AddMemberViewVMa(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = (&v70 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E30, &qword_190DD3C28);
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v70 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E38, &qword_190DD3C30);
  v84 = *(v16 - 8);
  v85 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v70 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E40, &qword_190DD3C38);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v70 - v20;
  v80 = a2;
  v81 = a3;
  v22 = _s11ContentViewVMa(0, a2, a3, v21);
  v72 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v71 = &v70 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  v70 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52DE0, &qword_190DD3C08);
  v74 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v73 = &v70 - v27;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E48, &qword_190DD3C40);
  v78 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v76 = &v70 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52DD8, &qword_190DD3C00);
  v96 = *(v29 - 8);
  v97 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v91 = &v70 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  sub_190D56320();
  v31 = v99;
  swift_getKeyPath();
  v99 = v31;
  sub_190213EC0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  LODWORD(a2) = *(v31 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation);

  if (a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
    sub_190D56320();
    v32 = v99;
    swift_getKeyPath();
    v99 = v32;
    sub_190D51C20();

    v33 = *(v32 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListCollapsible);

    if (v33 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
      sub_190D56330();
      swift_getKeyPath();
      sub_190D56350();

      (*(v70 + 8))(v26, v24);
      v88 = v100;
      v89 = v99;
      v34 = v72;
      v35 = v71;
      (*(v72 + 16))(v71, a1, v22);
      v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v37 = swift_allocObject();
      v38 = v81;
      *(v37 + 16) = v80;
      *(v37 + 24) = v38;
      v39 = (*(v34 + 32))(v37 + v36, v35, v22);
      MEMORY[0x1EEE9AC00](v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E68, &qword_190DD3CD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E70, &qword_190DD3CD8);
      sub_19081DA0C();
      v40 = MEMORY[0x1E6981F48];
      sub_190233640(&qword_1EAD52EA0, &qword_1EAD52E70, &qword_190DD3CD8, MEMORY[0x1E6981F48]);
      v41 = v73;
      sub_190D540C0();
      v42 = sub_190233640(&qword_1EAD52DE8, &qword_1EAD52DE0, &qword_190DD3C08, MEMORY[0x1E697C158]);
      v43 = sub_19081D71C();
      v44 = v76;
      v45 = v90;
      sub_190D55A50();
      (*(v74 + 8))(v41, v45);
      v46 = v78;
      v47 = v93;
      (*(v78 + 16))(v94, v44, v93);
      swift_storeEnumTagMultiPayload();
      v99 = v45;
      v100 = &type metadata for ParticipantsListDisclosureGroupStyle;
      v101 = v42;
      v102 = v43;
      swift_getOpaqueTypeConformance2();
      sub_190233640(&qword_1EAD52DF8, &qword_1EAD52E00, &qword_190DD3C10, v40);
      v48 = v91;
      sub_190D54C50();
      (*(v46 + 8))(v44, v47);
    }

    else
    {
      v51 = v83;
      sub_1908166C4(v83);
      v52 = v86;
      sub_190815E60(v22, v86);
      v53 = v89;
      sub_190816184(v89);
      v54 = v85;
      v55 = *(v84 + 16);
      v56 = v75;
      v55(v75, v51, v85);
      v57 = v88;
      v58 = *(v87 + 16);
      v59 = v77;
      v58(v77, v52, v88);
      v60 = v53;
      v61 = v79;
      sub_19081D8E4(v60, v79);
      v62 = v82;
      v55(v82, v56, v54);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E58, &qword_190DD3C98);
      v58((v62 + *(v63 + 48)), v59, v57);
      sub_19081D8E4(v61, v62 + *(v63 + 64));
      v81 = _s13AddMemberViewVMa;
      sub_19081E9B0(v61, _s13AddMemberViewVMa);
      v87 = *(v87 + 8);
      (v87)(v59, v57);
      v64 = *(v84 + 8);
      v65 = v56;
      v66 = v85;
      v64(v65, v85);
      sub_19022FD14(v62, v94, &qword_1EAD52E00, &qword_190DD3C10);
      swift_storeEnumTagMultiPayload();
      v67 = sub_190233640(&qword_1EAD52DE8, &qword_1EAD52DE0, &qword_190DD3C08, MEMORY[0x1E697C158]);
      v68 = sub_19081D71C();
      v99 = v90;
      v100 = &type metadata for ParticipantsListDisclosureGroupStyle;
      v101 = v67;
      v102 = v68;
      swift_getOpaqueTypeConformance2();
      sub_190233640(&qword_1EAD52DF8, &qword_1EAD52E00, &qword_190DD3C10, MEMORY[0x1E6981F48]);
      v48 = v91;
      sub_190D54C50();
      sub_19022EEA4(v62, &qword_1EAD52E00, &qword_190DD3C10);
      sub_19081E9B0(v89, v81);
      (v87)(v86, v88);
      v64(v83, v66);
    }

    v50 = v98;
    sub_19081E40C(v48, v98, &qword_1EAD52DD8, &qword_190DD3C00);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v50 = v98;
  }

  return (*(v96 + 56))(v50, v49, 1, v97);
}

uint64_t sub_190815C20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = _s13AddMemberViewVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53080, &qword_190DD3FB0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v19 = _s11ContentViewVMa(0, a1, a2, v18);
  sub_190815E60(v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();

  *&v17[*(v12 + 44)] = 0;
  sub_190816184(v10);
  sub_19022FD14(v17, v14, &qword_1EAD53080, &qword_190DD3FB0);
  sub_19081D8E4(v10, v7);
  v20 = v23;
  sub_19022FD14(v14, v23, &qword_1EAD53080, &qword_190DD3FB0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53088, &qword_190DD3FB8);
  sub_19081D8E4(v7, v20 + *(v21 + 48));
  sub_19081E9B0(v10, _s13AddMemberViewVMa);
  sub_19022EEA4(v17, &qword_1EAD53080, &qword_190DD3FB0);
  sub_19081E9B0(v7, _s13AddMemberViewVMa);
  return sub_19022EEA4(v14, &qword_1EAD53080, &qword_190DD3FB0);
}

uint64_t sub_190815E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v16 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  sub_190D56320();
  swift_getKeyPath();
  sub_190213EC0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  v7 = *&v17[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
  sub_190D52690();

  v23 = v7;
  (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  (*(v5 + 32))(v9 + v8, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53098, &qword_190DD3FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD530A0, &qword_190DD3FF8);
  sub_190233640(&qword_1EAD530A8, &qword_1EAD53098, &qword_190DD3FF0, MEMORY[0x1E69E6338]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD530B0, &unk_190DD4000);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0, &qword_190DD7300);
  v12 = sub_19081E674();
  v13 = sub_19081E484();
  v14 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
  v17 = v10;
  v18 = MEMORY[0x1E69E6158];
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  swift_getOpaqueTypeConformance2();
  sub_19081E94C();
  return sub_190D56290();
}

uint64_t sub_190816184@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  sub_190D56320();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  *a1 = v5;
  v2 = _s13AddMemberViewVMa(0);
  _s9ViewModelCMa(0);
  sub_190213EC0(&qword_1EAD53090, _s9ViewModelCMa, &unk_190DE6E60);
  sub_190D56340();
  v3 = *(v2 + 24);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60, &qword_190DDDDD0);
  return swift_storeEnumTagMultiPayload();
}

__n128 sub_1908162B4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E98, &qword_190DD3CE8);
  v24 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v23 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E88, &qword_190DD3CE0);
  v8 = MEMORY[0x1EEE9AC00](v23);
  v10 = &v23 - v9;
  (*(v4 + 16))(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v8);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  (*(v4 + 32))(v12 + v11, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v27 = v13;
  v28 = v14;
  v29 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52EA8, &qword_190DD3CF0);
  sub_19081DBA0();
  sub_190D56030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();

  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 5)
  {
    *&v30 = sub_190D55DA0();
    v17 = sub_190D561E0();
  }

  else
  {
    v17 = 0;
  }

  (*(v24 + 32))(v10, v7, v25);
  *&v10[*(v23 + 36)] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();

  sub_190D56500();
  sub_190D54430();
  v18 = v26;
  sub_19081E40C(v10, v26, &qword_1EAD52E88, &qword_190DD3CE0);
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E68, &qword_190DD3CD0) + 36);
  v20 = v35;
  *(v19 + 64) = v34;
  *(v19 + 80) = v20;
  *(v19 + 96) = v36;
  v21 = v31;
  *v19 = v30;
  *(v19 + 16) = v21;
  result = v33;
  *(v19 + 32) = v32;
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_1908166C4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53118, &qword_190DD40B0);
  MEMORY[0x1EEE9AC00](v29);
  v2 = &v28 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_190DD1D90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  sub_190D56320();
  v4 = v31;
  swift_getKeyPath();
  v31 = v4;
  sub_190213EC0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  v5 = *&v4[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
  sub_190D52690();

  v6 = *(v5 + 16);

  v7 = MEMORY[0x1E69E65A8];
  *(v3 + 56) = MEMORY[0x1E69E6530];
  *(v3 + 64) = v7;
  *(v3 + 32) = v6;
  v8 = sub_1908E9E4C(0xD00000000000001DLL, 0x8000000190E5B240, v3);
  v10 = v9;

  v31 = v8;
  v32 = v10;
  sub_19081E484();
  v11 = sub_190D555F0();
  v13 = v12;
  LOBYTE(v6) = v14;
  sub_190D55480();
  v15 = sub_190D555B0();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_19081E474(v11, v13, v6 & 1);

  v22 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53120, &qword_190DD40B8) + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53128, &qword_190DD40C0) + 28);
  v24 = *MEMORY[0x1E6980FD8];
  v25 = sub_190D55590();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v22 + v23, v24, v25);
  (*(v26 + 56))(v22 + v23, 0, 1, v25);
  *v22 = swift_getKeyPath();
  *v2 = v15;
  *(v2 + 1) = v17;
  v2[16] = v19 & 1;
  *(v2 + 3) = v21;
  LODWORD(v24) = sub_190D54EB0();
  *&v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53130, &qword_190DD40F8) + 36)] = v24;
  v31 = sub_190D55DA0();
  *&v2[*(v29 + 36)] = sub_190D561E0();
  sub_190D53BE0();
  sub_19081EE14();
  sub_190D55910();
  return sub_19022EEA4(v2, &qword_1EAD53118, &qword_190DD40B0);
}

id sub_190816A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F28, &qword_190DD3D50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v75 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F30, &qword_190DD3D58);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v75 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F38, &qword_190DD3D60);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v75 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F40, &qword_190DD3D68);
  MEMORY[0x1EEE9AC00](v87);
  v77 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v75 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F48, &qword_190DD3D70);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v75 - v12;
  v13 = sub_190D54A80();
  v80 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F50, &qword_190DD3D78);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v75 - v18;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F58, &qword_190DD3D80);
  MEMORY[0x1EEE9AC00](v81);
  v21 = &v75 - v20;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F60, &qword_190DD3D88);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v75 - v24;
  v91 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  v92 = v2;
  sub_190D56320();

  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (v26 == 6)
  {
    MEMORY[0x1EEE9AC00](v27);
    v28 = v92;
    *(&v75 - 2) = *(v91 + 16);
    *(&v75 - 2) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52FF0, &qword_190DD3E60);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52FF8, &qword_190DD3E68);
    v30 = sub_19081E354();
    v93 = v29;
    v94 = v30;
    swift_getOpaqueTypeConformance2();
    sub_190D56030();
    sub_190D54A70();
    sub_190233640(&qword_1EAD52FB0, &qword_1EAD52F50, &qword_190DD3D78, MEMORY[0x1E697D680]);
    sub_190213EC0(&qword_1EAD45268, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    sub_190D55720();
    (*(v80 + 8))(v15, v13);
    (*(v17 + 8))(v19, v16);
    v31 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52FA8, &unk_190DD3E40) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD52FB8, &qword_190DDC720);
    sub_190D54470();
    *v31 = swift_getKeyPath();
    v32 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F98, &qword_190DD3E38) + 36)];
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52FC8, &unk_190DD3E50) + 28);
    v34 = *MEMORY[0x1E697DC08];
    v35 = sub_190D53A70();
    (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
    *v32 = swift_getKeyPath();
    v21[*(v81 + 36)] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
    sub_190D56320();
    v36 = v93;
    swift_getKeyPath();
    v93 = v36;
    sub_190213EC0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D51C20();

    LODWORD(v34) = v36[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListExpanded];

    if (v34)
    {
      v37 = 1.57079633;
    }

    else
    {
      v37 = 0.0;
    }

    sub_190D56690();
    v39 = v38;
    v41 = v40;
    v42 = v84;
    sub_19081E40C(v21, v84, &qword_1EAD52F58, &qword_190DD3D80);
    v43 = v85;
    v44 = v42 + *(v86 + 36);
    *v44 = v37;
    *(v44 + 8) = v39;
    *(v44 + 16) = v41;
    v45 = &qword_1EAD52F60;
    v46 = &qword_190DD3D88;
    sub_19081E40C(v42, v43, &qword_1EAD52F60, &qword_190DD3D88);
    sub_19022FD14(v43, v89, &qword_1EAD52F60, &qword_190DD3D88);
    swift_storeEnumTagMultiPayload();
    sub_19081DDC8();
    sub_19081E110();
    sub_190D54C50();
    v47 = v43;
    return sub_19022EEA4(v47, v45, v46);
  }

  v48 = sub_190D55EA0();
  v49 = sub_190A6D390();
  KeyPath = swift_getKeyPath();
  v93 = v48;
  v94 = KeyPath;
  v95 = v49;
  v51 = *MEMORY[0x1E6980E28];
  v52 = sub_190D55390();
  v53 = *(v52 - 8);
  (*(v53 + 104))(v6, v51, v52);
  (*(v53 + 56))(v6, 0, 1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F68, &unk_190DD3DC0);
  sub_19081DD10();
  v54 = v82;
  sub_190D556E0();
  sub_19022EEA4(v6, &qword_1EAD52F28, &qword_190DD3D50);

  v55 = (v54 + *(v83 + 36));
  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F78, &qword_190DD3DD0) + 28);
  v57 = *MEMORY[0x1E69816E0];
  v58 = sub_190D55F00();
  (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
  *v55 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  if (qword_1EAD51C88 != -1)
  {
    swift_once();
  }

  result = [qword_1EAD5D210 detailsGroupHeaderCellChevronColor];
  v60 = v87;
  v61 = v89;
  if (result)
  {

    v62 = sub_190D55CE0();
    v63 = swift_getKeyPath();
    v64 = v78;
    sub_19081E40C(v54, v78, &qword_1EAD52F30, &qword_190DD3D58);
    v65 = (v64 + *(v76 + 36));
    *v65 = v63;
    v65[1] = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
    sub_190D56320();
    v66 = v93;
    swift_getKeyPath();
    v93 = v66;
    sub_190213EC0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D51C20();

    LODWORD(v62) = v66[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListExpanded];

    if (v62)
    {
      v67 = 1.57079633;
    }

    else
    {
      v67 = 0.0;
    }

    sub_190D56690();
    v69 = v68;
    v71 = v70;
    v72 = v77;
    sub_19081E40C(v64, v77, &qword_1EAD52F38, &qword_190DD3D60);
    v73 = v72 + *(v60 + 36);
    *v73 = v67;
    *(v73 + 8) = v69;
    *(v73 + 16) = v71;
    v45 = &qword_1EAD52F40;
    v46 = &qword_190DD3D68;
    v74 = v79;
    sub_19081E40C(v72, v79, &qword_1EAD52F40, &qword_190DD3D68);
    sub_19022FD14(v74, v61, &qword_1EAD52F40, &qword_190DD3D68);
    swift_storeEnumTagMultiPayload();
    sub_19081DDC8();
    sub_19081E110();
    sub_190D54C50();
    v47 = v74;
    return sub_19022EEA4(v47, v45, v46);
  }

  __break(1u);
  return result;
}

id sub_1908176FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F28, &qword_190DD3D50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - v6;
  v8 = sub_190D55EA0();
  _s11ContentViewVMa(0, a2, a3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  if (qword_1EAD51C88 != -1)
  {
    swift_once();
  }

  result = [qword_1EAD5D210 detailsGroupHeaderCellChevronColor];
  if (result)
  {

    v11 = sub_190D55CE0();
    v15[0] = v8;
    v15[1] = v11;
    v12 = *MEMORY[0x1E6980E28];
    v13 = sub_190D55390();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v7, v12, v13);
    (*(v14 + 56))(v7, 0, 1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52FF8, &qword_190DD3E68);
    sub_19081E354();
    sub_190D556E0();
    sub_19022EEA4(v7, &qword_1EAD52F28, &qword_190DD3D50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_190817940@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  v2 = sub_190C118A4();

  v3 = v2[2];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
    sub_190D56320();

    if (qword_1EAD51C80 != -1)
    {
      swift_once();
    }

    v4 = qword_1EAD5D208;
    [qword_1EAD5D208 detailsAvatarPancakeViewOverlapOffset];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
    sub_190D56320();
    sub_190C118A4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
    sub_190D56320();

    [v4 detailsAvatarCutoutDiameter];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
    sub_190D56320();

    [v4 detailsAvatarCutoutDiameter];
    [v4 detailsAvatarDiameter];
    sub_190D55FC0();
    sub_190D55FC0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53048, &qword_190DD3F88);
  sub_19081E4D8();
  sub_190D54C50();
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  *(a1 + 96) = *v12;
  *(a1 + 111) = *&v12[15];
  *a1 = v6;
  *(a1 + 16) = v7;
  result = *&v8;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_190817C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_190D565B0();
  sub_190D53E40();
}

uint64_t sub_190817CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s11ContentViewVMa(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  sub_190D56320();
  swift_getKeyPath();
  sub_190213EC0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  v5[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListExpanded] = (v5[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListExpanded] & 1) == 0;
  swift_getKeyPath();
  sub_190D51C30();
}

uint64_t sub_190817E20@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52EE0, &qword_190DD3D08);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v40 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52EE8, &qword_190DD3D10);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52ED0, &qword_190DD3D00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52EC0, &qword_190DD3CF8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v40 - v15;
  v16 = sub_190D540E0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v46 = a3;
  v21 = _s11ContentViewVMa(0, a2, a3, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();

  sub_1908145A4(v21, v19);
  LOBYTE(v21) = sub_190D540D0();
  (*(v17 + 8))(v19, v16);
  v22 = sub_190D548D0();
  if (v21)
  {
    v41 = v9;
    v23 = v44;
    *v12 = v22;
    *(v12 + 1) = 0;
    v12[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52EF8, &unk_190DD3D20);
    sub_19081837C(v45, v46, &v12[*(v24 + 44)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F00, &qword_190DEC2A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1DA0;
    v26 = sub_190D552C0();
    *(inited + 32) = v26;
    v27 = sub_190D552D0();
    *(inited + 33) = v27;
    v28 = sub_190D552F0();
    sub_190D552F0();
    if (sub_190D552F0() != v26)
    {
      v28 = sub_190D552F0();
    }

    sub_190D552F0();
    if (sub_190D552F0() != v27)
    {
      v28 = sub_190D552F0();
    }

    v29 = v12;
    v30 = v41;
    v31 = v42;
    sub_19081E40C(v29, v42, &qword_1EAD52ED0, &qword_190DD3D00);
    v32 = v31 + *(v23 + 36);
    *v32 = v28;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    *(v32 + 40) = 1;
    v33 = &qword_1EAD52EC0;
    v34 = &qword_190DD3CF8;
    v35 = v31;
    v36 = v43;
    sub_19081E40C(v35, v43, &qword_1EAD52EC0, &qword_190DD3CF8);
    sub_19022FD14(v36, v30, &qword_1EAD52EC0, &qword_190DD3CF8);
    swift_storeEnumTagMultiPayload();
    sub_19081DC58();
    sub_190233640(&qword_1EAD52ED8, &qword_1EAD52EE0, &qword_190DD3D08, MEMORY[0x1E69817F8]);
    sub_190D54C50();
    v37 = v36;
  }

  else
  {
    *v7 = v22;
    *(v7 + 1) = 0x4010000000000000;
    v7[16] = 0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52EF0, &qword_190DD3D18);
    sub_190818FC8(v45, v46, &v7[*(v38 + 44)]);
    v33 = &qword_1EAD52EE0;
    v34 = &qword_190DD3D08;
    sub_19022FD14(v7, v9, &qword_1EAD52EE0, &qword_190DD3D08);
    swift_storeEnumTagMultiPayload();
    sub_19081DC58();
    sub_190233640(&qword_1EAD52ED8, &qword_1EAD52EE0, &qword_190DD3D08, MEMORY[0x1E69817F8]);
    sub_190D54C50();
    v37 = v7;
  }

  return sub_19022EEA4(v37, v33, v34);
}

uint64_t sub_19081837C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F08, &qword_190DD3D30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F10, &qword_190DD3D38);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  *v18 = sub_190D54AD0();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F18, &qword_190DD3D40);
  sub_1908185C0(a2, a3, &v18[*(v19 + 44)]);
  v21 = _s11ContentViewVMa(0, a2, a3, v20);
  sub_190816A70(v21, v12);
  sub_19022FD14(v18, v15, &qword_1EAD52F10, &qword_190DD3D38);
  sub_19022FD14(v12, v9, &qword_1EAD52F08, &qword_190DD3D30);
  sub_19022FD14(v15, a4, &qword_1EAD52F10, &qword_190DD3D38);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F20, &qword_190DD3D48);
  sub_19022FD14(v9, a4 + *(v22 + 48), &qword_1EAD52F08, &qword_190DD3D30);
  sub_19022EEA4(v12, &qword_1EAD52F08, &qword_190DD3D30);
  sub_19022EEA4(v18, &qword_1EAD52F10, &qword_190DD3D38);
  sub_19022EEA4(v9, &qword_1EAD52F08, &qword_190DD3D30);
  return sub_19022EEA4(v15, &qword_1EAD52F10, &qword_190DD3D38);
}

uint64_t sub_1908185C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53018, &qword_190DD3ED8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v13 = _s11ContentViewVMa(0, a1, a2, v12);
  sub_190817940(v33);
  sub_190818844(v13, &v37);
  v14 = v37;
  LOBYTE(a2) = v38;
  v25 = *(&v38 + 1);
  sub_190818C28(v13, v11);
  v30 = v33[4];
  v31 = v33[5];
  *v32 = *v34;
  v26 = v33[0];
  v27 = v33[1];
  *&v32[15] = *&v34[15];
  v28 = v33[2];
  v29 = v33[3];
  sub_19022FD14(v11, v8, &qword_1EAD53018, &qword_190DD3ED8);
  v15 = v30;
  v16 = v31;
  v35[4] = v30;
  v35[5] = v31;
  v17 = *v32;
  v36[0] = *v32;
  *(v36 + 15) = *&v32[15];
  v18 = v26;
  v19 = v27;
  v35[0] = v26;
  v35[1] = v27;
  v20 = v28;
  v21 = v29;
  v35[2] = v28;
  v35[3] = v29;
  *(a3 + 111) = *&v32[15];
  *(a3 + 80) = v16;
  *(a3 + 96) = v17;
  *(a3 + 48) = v21;
  *(a3 + 64) = v15;
  *(a3 + 16) = v19;
  *(a3 + 32) = v20;
  *a3 = v18;
  *(a3 + 120) = v14;
  *(a3 + 136) = a2;
  *(a3 + 144) = v25;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53020, &qword_190DD3EE0);
  sub_19022FD14(v8, a3 + *(v22 + 64), &qword_1EAD53018, &qword_190DD3ED8);
  sub_19022FD14(v35, &v37, &unk_1EAD53028, &qword_190DD3EE8);
  sub_19081BE48(v14, *(&v14 + 1), a2);
  sub_190D52690();
  sub_19022EEA4(v11, &qword_1EAD53018, &qword_190DD3ED8);
  sub_19022EEA4(v8, &qword_1EAD53018, &qword_190DD3ED8);
  sub_19081E474(v14, *(&v14 + 1), a2);

  v41 = v30;
  v42 = v31;
  v43[0] = *v32;
  *(v43 + 15) = *&v32[15];
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  return sub_19022EEA4(&v37, &unk_1EAD53028, &qword_190DD3EE8);
}

id sub_190818844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = sub_190D56ED0();
  v6 = sub_190D56ED0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_190D56F10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_190DD1D90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  sub_190D56320();
  swift_getKeyPath();
  sub_190213EC0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  v9 = *&v30[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
  sub_190D52690();

  v10 = *(v9 + 16);

  v11 = MEMORY[0x1E69E65A8];
  *(v8 + 56) = MEMORY[0x1E69E6530];
  *(v8 + 64) = v11;
  *(v8 + 32) = v10;
  sub_190D56F20();

  sub_19081E484();
  v12 = sub_190D555F0();
  v14 = v13;
  v16 = v15;
  if (qword_1EAD51B78 != -1)
  {
    swift_once();
  }

  result = [qword_1EAD5B380 recipientNameFont];
  if (!result)
  {
    goto LABEL_10;
  }

  sub_190D554B0();
  v17 = sub_190D555B0();
  v19 = v18;
  v21 = v20;

  sub_19081E474(v12, v14, v16 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  if (qword_1EAD51C88 != -1)
  {
    swift_once();
  }

  result = [qword_1EAD5D210 detailsContactCellTitleColor];
  if (result)
  {

    sub_190D55CE0();
    v22 = sub_190D55580();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_19081E474(v17, v19, v21 & 1);

    *v29 = v22;
    *(v29 + 8) = v24;
    *(v29 + 16) = v26 & 1;
    *(v29 + 24) = v28;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_190818C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D540E0();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  v6 = sub_190C11768();
  v8 = v7;

  v43 = v6;
  v44 = v8;
  sub_19081E484();
  v9 = sub_190D555F0();
  v11 = v10;
  v13 = v12;
  sub_190A6D3BC();
  v14 = sub_190D555B0();
  v38 = v15;
  v39 = v16;
  v18 = v17;

  sub_19081E474(v9, v11, v13 & 1);
  v19 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  if (qword_1EAD51C88 != -1)
  {
    swift_once();
  }

  result = [qword_1EAD5D210 detailsContactCellSubTitleColor];
  if (result)
  {

    v43 = sub_190D55CE0();
    v21 = v38;
    v22 = sub_190D55580();
    v24 = v23;
    v37 = v25;
    v36 = v26;
    sub_19081E474(v14, v21, v18 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
    sub_190D56320();

    v27 = v40;
    sub_1908145A4(v19, v40);
    v28 = sub_190D540D0();
    (*(v41 + 8))(v27, v42);
    if (v28)
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    KeyPath = swift_getKeyPath();
    v31 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53018, &qword_190DD3ED8) + 36));
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53038, &qword_190DD3F20) + 28);
    v33 = *MEMORY[0x1E6980FA8];
    v34 = sub_190D55560();
    (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
    result = swift_getKeyPath();
    *v31 = result;
    *a2 = v22;
    *(a2 + 8) = v24;
    *(a2 + 16) = v37 & 1;
    *(a2 + 24) = v36;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = v29;
    *(a2 + 48) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190818FC8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F08, &qword_190DD3D30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53060, &qword_190DD3F90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v19 = _s11ContentViewVMa(0, a2, a3, v18);
  sub_190817940(v41);
  *v17 = sub_190D54AD0();
  *(v17 + 1) = 0x4000000000000000;
  v17[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53068, &qword_190DD3F98);
  sub_19081932C(a2, a3, &v17[*(v20 + 44)]);
  sub_190816A70(v19, v11);
  v38 = v41[4];
  v39 = v41[5];
  *v40 = *v42;
  v34 = v41[0];
  v35 = v41[1];
  *&v40[15] = *&v42[15];
  v36 = v41[2];
  v37 = v41[3];
  sub_19022FD14(v17, v14, &qword_1EAD53060, &qword_190DD3F90);
  v21 = v33;
  sub_19022FD14(v11, v33, &qword_1EAD52F08, &qword_190DD3D30);
  v22 = v38;
  v23 = v39;
  v43[4] = v38;
  v43[5] = v39;
  v24 = *v40;
  v44[0] = *v40;
  *(v44 + 15) = *&v40[15];
  v25 = v34;
  v26 = v35;
  v43[0] = v34;
  v43[1] = v35;
  v27 = v36;
  v28 = v37;
  v43[2] = v36;
  v43[3] = v37;
  *(a4 + 111) = *&v40[15];
  *(a4 + 80) = v23;
  *(a4 + 96) = v24;
  *(a4 + 48) = v28;
  *(a4 + 64) = v22;
  *(a4 + 16) = v26;
  *(a4 + 32) = v27;
  *a4 = v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53070, &qword_190DD3FA0);
  sub_19022FD14(v14, a4 + v29[12], &qword_1EAD53060, &qword_190DD3F90);
  v30 = a4 + v29[16];
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_19022FD14(v21, a4 + v29[20], &qword_1EAD52F08, &qword_190DD3D30);
  sub_19022FD14(v43, v45, &unk_1EAD53028, &qword_190DD3EE8);
  sub_19022EEA4(v11, &qword_1EAD52F08, &qword_190DD3D30);
  sub_19022EEA4(v17, &qword_1EAD53060, &qword_190DD3F90);
  sub_19022EEA4(v21, &qword_1EAD52F08, &qword_190DD3D30);
  sub_19022EEA4(v14, &qword_1EAD53060, &qword_190DD3F90);
  v45[4] = v38;
  v45[5] = v39;
  v46[0] = *v40;
  *(v46 + 15) = *&v40[15];
  v45[0] = v34;
  v45[1] = v35;
  v45[2] = v36;
  v45[3] = v37;
  return sub_19022EEA4(v45, &unk_1EAD53028, &qword_190DD3EE8);
}

uint64_t sub_19081932C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53018, &qword_190DD3ED8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v13 = _s11ContentViewVMa(0, a1, a2, v12);
  sub_190818844(v13, v20);
  v14 = v20[0];
  v15 = v20[1];
  v16 = v21;
  v17 = v22;
  sub_190818C28(v13, v11);
  sub_19022FD14(v11, v8, &qword_1EAD53018, &qword_190DD3ED8);
  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53078, &qword_190DD3FA8);
  sub_19022FD14(v8, a3 + *(v18 + 48), &qword_1EAD53018, &qword_190DD3ED8);
  sub_19081BE48(v14, v15, v16);
  sub_190D52690();
  sub_19022EEA4(v11, &qword_1EAD53018, &qword_190DD3ED8);
  sub_19022EEA4(v8, &qword_1EAD53018, &qword_190DD3ED8);
  sub_19081E474(v14, v15, v16);
}

id sub_1908194CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v49 - v9;
  v10 = _s8ListCellVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53100, &qword_190DD4020);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530B0, &unk_190DD4000);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v49 - v16;
  v18 = *a1;
  v17 = *(a1 + 8);
  v55 = *(a1 + 16);
  v56 = v17;
  _s11ContentViewVMa(0, a3, a4, v19);
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  v21 = v67;
  *(v12 + *(v10 + 24)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60, &qword_190DDDDD0);
  swift_storeEnumTagMultiPayload();
  *v12 = v20;
  v12[1] = v21;
  v52 = a3;
  v61 = a3;
  v62 = a4;
  v53 = a4;
  v63 = a2;
  v64 = v20;
  v65 = v56;
  v66 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD530C8, &unk_190DD4010);
  sub_190213EC0(&qword_1EAD530D0, _s8ListCellVMa, &unk_190DD66E4);
  sub_19081E7EC(&qword_1EAD530D8, &qword_1EAD530C8, &unk_190DD4010, sub_19081E868);
  sub_190D557F0();
  sub_19081E9B0(v12, _s8ListCellVMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();

  v22 = [objc_opt_self() currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v24 = 0;
  if (v23 == 5)
  {
    v67 = sub_190D55DA0();
    v24 = sub_190D561E0();
  }

  v25 = v60;
  (*(v57 + 32))(v60, v15, v58);
  *&v25[*(v59 + 36)] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_190DD1D90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  v27 = v67;
  swift_getKeyPath();
  v67 = v27;
  sub_190213EC0(&qword_1EAD53090, _s9ViewModelCMa, &unk_190DE6E60);
  sub_190D51C20();

  v28 = *(v27 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle);
  v29 = v28;

  if (v28 && (v30 = [v29 fullName], v29, v30))
  {
    v31 = sub_190D56F10();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  *(v26 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_19081EA10();
  *(v26 + 64) = v34;
  if (v33)
  {
    v35 = v31;
  }

  else
  {
    v35 = 0;
  }

  v36 = 0xE000000000000000;
  if (v33)
  {
    v36 = v33;
  }

  *(v26 + 32) = v35;
  *(v26 + 40) = v36;
  result = CKFrameworkBundle(v34);
  if (result)
  {
    v38 = result;
    v39 = sub_190D56ED0();
    v40 = sub_190D56ED0();
    v41 = [v38 localizedStringForKey:v39 value:0 table:v40];

    sub_190D56F10();
    v42 = sub_190D56EE0();
    v44 = v43;
    v58 = v43;

    v68 = v42;
    v69 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
    v45 = v49;
    sub_190D56330();
    swift_getKeyPath();
    v46 = v51;
    sub_190D56350();

    v47 = (*(v50 + 8))(v45, v46);
    MEMORY[0x1EEE9AC00](v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
    sub_19081E674();
    sub_19081E484();
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    v48 = v60;
    sub_190D559B0();

    return sub_19022EEA4(v48, &unk_1EAD530B0, &unk_190DD4000);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190819CD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a2;
  v37 = a4;
  v34 = a6;
  v35 = a3;
  v38 = a7;
  v33 = a5;
  v8 = _s11ContentViewVMa(0, a5, a6, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8, &qword_190E02820);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  v17 = sub_190C10D38();

  if (v17)
  {
    (*(v9 + 16))(v12, a1, v8);
    v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v19 = swift_allocObject();
    v20 = v34;
    *(v19 + 16) = v33;
    *(v19 + 24) = v20;
    (*(v9 + 32))(v19 + v18, v12, v8);
    v21 = (v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
    v23 = v35;
    v22 = v36;
    *v21 = v36;
    v21[1] = v23;
    v21[2] = v37;
    v24 = v22;
    sub_190D52690();
    sub_190D56030();
    v25 = sub_190D55D40();
    KeyPath = swift_getKeyPath();
    v27 = &v16[*(v13 + 36)];
    *v27 = KeyPath;
    v27[1] = v25;
    v28 = v38;
    sub_19081EDA4(v16, v38);
    v29 = 0;
    v30 = v28;
  }

  else
  {
    v29 = 1;
    v30 = v38;
  }

  return (*(v14 + 56))(v30, v29, 1, v13);
}

void sub_190819F9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _s11ContentViewVMa(0, a5, a6, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  v7 = [a2 entity];
  if (v7)
  {
    v8 = v7;
    sub_190C1205C(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19081A03C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190213EC0(&qword_1EAD53090, _s9ViewModelCMa, &unk_190DE6E60);
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingRemoveAlert);
  return result;
}

uint64_t sub_19081A114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = _s11ContentViewVMa(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  sub_190D53970();
  v14 = sub_190D539A0();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v8 + 32))(v16 + v15, v10, v7);
  return sub_190D56020();
}

uint64_t sub_19081A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s11ContentViewVMa(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  sub_190D56320();
  sub_190C110E8();
}

id sub_19081A384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a2 = result;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19081A480@<X0>(char *a1@<X8>)
{
  v26 = a1;
  v1 = sub_190D551D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53618, &qword_190DD53D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = sub_190D551B0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  sub_190D551C0();
  if (sub_190D551A0())
  {
    sub_190D551E0();
    (*(v2 + 32))(v10, v4, v1);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  (*(v2 + 56))(v10, v18, 1, v1);
  v19 = *(v12 + 16);
  v19(v14, v17, v11);
  sub_19022FD14(v10, v7, &qword_1EAD53618, &qword_190DD53D8);
  v20 = v7;
  v21 = v26;
  v19(v26, v14, v11);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53620, &unk_190DD53E0);
  sub_19022FD14(v20, &v21[*(v22 + 48)], &qword_1EAD53618, &qword_190DD53D8);
  sub_19022EEA4(v10, &qword_1EAD53618, &qword_190DD53D8);
  v23 = *(v12 + 8);
  v23(v17, v11);
  sub_19022EEA4(v20, &qword_1EAD53618, &qword_190DD53D8);
  return (v23)(v14, v11);
}

id sub_19081A790@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190213EC0(&qword_1EAD53090, _s9ViewModelCMa, &unk_190DE6E60);
  sub_190D51C20();

  v4 = *(v3 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle);
  *a2 = v4;

  return v4;
}

void sub_19081A850(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190C10A24(v1);
}

uint64_t sub_19081A880@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190213EC0(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants);
  return sub_190D52690();
}

uint64_t sub_19081A960(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_190D51CB0();
}

uint64_t sub_19081A9D4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x193AED510](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_19081AA28(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x193AED520](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_19081AAB8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_190D51CB0();
}

uint64_t sub_19081ABE0(uint64_t a1, id *a2)
{
  result = sub_190D56EF0();
  *a2 = 0;
  return result;
}

uint64_t sub_19081AC58@<X0>(uint64_t *a2@<X8>)
{
  sub_190D56F10();
  v3 = sub_190D56ED0();

  *a2 = v3;
  return result;
}

uint64_t sub_19081AC9C()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](v1);
  return sub_190D588C0();
}

uint64_t sub_19081ACE4(uint64_t a1)
{
  v2 = *v1;
  sub_190D58870();
  MEMORY[0x193AF4110](v2);
  return sub_190D588C0();
}

uint64_t sub_19081ADE4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_190D51CB0();
}

uint64_t sub_19081AE50(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD46570, type metadata accessor for Key, &unk_190DD3BA8);
  sub_190213EC0(&qword_1EAD53178, type metadata accessor for Key, &unk_190DD2544);

  return sub_190D585D0();
}

uint64_t sub_19081AF0C(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD536A0, type metadata accessor for Name, &unk_190DD463C);
  sub_190213EC0(&unk_1EAD536A8, type metadata accessor for Name, &unk_190DD45DC);

  return sub_190D585D0();
}

uint64_t sub_19081AFC8(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD52DA8, type metadata accessor for CAMediaTimingFillMode, &unk_190DD3194);
  sub_190213EC0(&qword_1EAD52DB0, type metadata accessor for CAMediaTimingFillMode, &unk_190DD3134);

  return sub_190D585D0();
}

uint64_t sub_19081B084(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD52D78, type metadata accessor for TextStyle, &unk_190DD3A98);
  sub_190213EC0(&qword_1EAD52D80, type metadata accessor for TextStyle, &unk_190DD3A38);

  return sub_190D585D0();
}

uint64_t sub_19081B140(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD53690, type metadata accessor for URLResourceKey, &unk_190DD486C);
  sub_190213EC0(&qword_1EAD53698, type metadata accessor for URLResourceKey, &unk_190DD480C);

  return sub_190D585D0();
}

uint64_t sub_19081B1FC(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD53638, type metadata accessor for OpenExternalURLOptionsKey, &unk_190DD5318);
  sub_190213EC0(&qword_1EAD53640, type metadata accessor for OpenExternalURLOptionsKey, &unk_190DD4E8C);

  return sub_190D585D0();
}

double sub_19081B2B8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_19081B2C4(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD53648, type metadata accessor for Weight, &unk_190DD4D94);
  sub_190213EC0(&qword_1EAD53650, type metadata accessor for Weight, &unk_190DD4D34);
  sub_19081FA44();
  return sub_190D585D0();
}

uint64_t sub_19081B38C(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD52D98, type metadata accessor for CKDefaultsKey, &unk_190DD34C8);
  sub_190213EC0(&qword_1EAD52DA0, type metadata accessor for CKDefaultsKey, &unk_190DD3470);

  return sub_190D585D0();
}

uint64_t sub_19081B448(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD53628, type metadata accessor for FileAttributeKey, &unk_190DD52D4);
  sub_190213EC0(&qword_1EAD53630, type metadata accessor for FileAttributeKey, &unk_190DD4FA0);

  return sub_190D585D0();
}

uint64_t sub_19081B5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_190D58870();
  swift_getWitnessTable();
  sub_190D51CC0();
  return sub_190D588C0();
}

uint64_t sub_19081B624(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD53680, type metadata accessor for DeviceType, &unk_190DD49D0);
  sub_190213EC0(&qword_1EAD53688, type metadata accessor for DeviceType, &unk_190DD4970);

  return sub_190D585D0();
}

uint64_t sub_19081B6E0(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD52D88, type metadata accessor for CLFCommunicationLimit, &unk_190DD389C);
  sub_190213EC0(&qword_1EAD52D90, type metadata accessor for CLFCommunicationLimit, &unk_190DD383C);

  return sub_190D585D0();
}

uint64_t sub_19081B79C(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD44F30, type metadata accessor for AttributeName, &unk_190DD535C);
  sub_190213EC0(&qword_1EAD53678, type metadata accessor for AttributeName, &unk_190DD4AC8);

  return sub_190D585D0();
}

uint64_t sub_19081B858(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD53660, type metadata accessor for TraitKey, &unk_190DD4C3C);
  sub_190213EC0(&unk_1EAD53668, type metadata accessor for TraitKey, &unk_190DD4BDC);

  return sub_190D585D0();
}

uint64_t sub_19081B914@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_190D56ED0();

  *a2 = v3;
  return result;
}

uint64_t sub_19081B95C(uint64_t a1)
{
  sub_190213EC0(&qword_1EAD536E0, type metadata accessor for FeatureKey, &unk_190DD54F0);
  sub_190213EC0(&qword_1EAD536E8, type metadata accessor for FeatureKey, &unk_190DD5490);

  return sub_190D585D0();
}

uint64_t sub_19081BA20()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x193AF4130](*&v1);
}

uint64_t sub_19081BA74()
{
  v0 = sub_190D56F10();
  v1 = MEMORY[0x193AF2960](v0);

  return v1;
}

uint64_t sub_19081BAB0(uint64_t a1)
{
  sub_190D56F10();
  sub_190D56FC0();
}

uint64_t sub_19081BB3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53168, &qword_190DD4108);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_19022FD14(a1, &v5 - v3, &unk_1EAD53168, &qword_190DD4108);
  return sub_190D54780();
}

uint64_t sub_19081BC34@<X0>(uint64_t a1@<X8>)
{
  result = sub_190D547B0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_19081BCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_19081BDB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D547D0();
  *a1 = result;
  return result;
}

uint64_t sub_19081BE10(uint64_t a1)
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

uint64_t sub_19081BE48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_190D50920();
  }

  else
  {
    return sub_190D52690();
  }
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

unint64_t sub_19081BEFC()
{
  result = qword_1EAD521E8;
  if (!qword_1EAD521E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD521D8, &qword_190DE41E0);
    sub_19081BFFC();
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD521E8);
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

unint64_t sub_19081BFFC()
{
  result = qword_1EAD521F0;
  if (!qword_1EAD521F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD521F8, &qword_190DD1DC8);
    sub_19081C088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD521F0);
  }

  return result;
}

unint64_t sub_19081C088()
{
  result = qword_1EAD52200;
  if (!qword_1EAD52200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52208, &qword_190DD1DD0);
    sub_190233640(&qword_1EAD52210, &qword_1EAD52218, &qword_190DD1DD8, MEMORY[0x1E6981880]);
    sub_19081C140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52200);
  }

  return result;
}

unint64_t sub_19081C140()
{
  result = qword_1EAD52220;
  if (!qword_1EAD52220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52228, &qword_190DD1DE0);
    sub_190233640(&qword_1EAD52230, &qword_1EAD52238, &qword_190DD1DE8, MEMORY[0x1E697D680]);
    sub_190233640(&unk_1EAD52240, &qword_1EAD612F0, &unk_190DD1DF0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52220);
  }

  return result;
}

unint64_t sub_19081C224()
{
  result = qword_1EAD52260;
  if (!qword_1EAD52260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD521E0, &qword_190DD1DC0);
    sub_190213EC0(&qword_1EAD52268, _s30AddRecipientsRepresentableViewVMa, &unk_190DE40A0);
    sub_190233640(&qword_1EAD52270, &qword_1EAD52278, &qword_190DD1E00, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52260);
  }

  return result;
}

unint64_t sub_19081C30C()
{
  result = qword_1EAD52280;
  if (!qword_1EAD52280)
  {
    sub_190D54080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52280);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_19081C410(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19081C430(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PlatterMaterialBackgroundView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlatterMaterialBackgroundView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_19081C52C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_19081C580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_19081C678(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19081C698(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

void sub_19081C7BC(uint64_t a1)
{
  sub_19081C9B4(319, &qword_1EAD52C00, type metadata accessor for DetailsViewConfiguration, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    sub_19081C9B4(319, &qword_1EAD52C08, _s9ViewModelCMa, MEMORY[0x1E6981AA0]);
    if (v2 <= 0x3F)
    {
      sub_19081C950(319);
      if (v3 <= 0x3F)
      {
        sub_19081C9B4(319, &qword_1EAD52C10, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19081C950(uint64_t a1)
{
  if (!qword_1EAD44E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E20, qword_190DDB640);
    v1 = sub_190D58050();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD44E10);
    }
  }
}

void sub_19081C9B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_19081D5E0()
{
  result = qword_1EAD52DD0;
  if (!qword_1EAD52DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52DD8, &qword_190DD3C00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52DE0, &qword_190DD3C08);
    sub_190233640(&qword_1EAD52DE8, &qword_1EAD52DE0, &qword_190DD3C08, MEMORY[0x1E697C158]);
    sub_19081D71C();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD52DF8, &qword_1EAD52E00, &qword_190DD3C10, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52DD0);
  }

  return result;
}

unint64_t sub_19081D71C()
{
  result = qword_1EAD52DF0;
  if (!qword_1EAD52DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52DF0);
  }

  return result;
}

unint64_t sub_19081D770()
{
  result = qword_1EAD52E08;
  if (!qword_1EAD52E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52DB8, &qword_190DD3BF0);
    sub_19081D828();
    sub_190233640(&unk_1EAD52E20, &qword_1EAD594B0, &qword_190DD3C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52E08);
  }

  return result;
}

unint64_t sub_19081D828()
{
  result = qword_1EAD52E10;
  if (!qword_1EAD52E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52E18, &qword_190DD3C18);
    sub_19081E7EC(&qword_1EAD52DC8, &qword_1EAD52DC0, &qword_190DD3BF8, sub_19081D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52E10);
  }

  return result;
}

uint64_t sub_19081D8E4(uint64_t a1, uint64_t a2)
{
  v4 = _s13AddMemberViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19081D948@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  _s11ContentViewVMa(0, v4, v5, a1);

  return sub_190815C20(v4, v5, a2);
}

double sub_19081D9D4@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = _s11ContentViewVMa(0, *(v2 + 16), *(v2 + 24), a1);
  *&result = sub_1908162B4(v4, a2).n128_u64[0];
  return result;
}

unint64_t sub_19081DA0C()
{
  result = qword_1EAD52E78;
  if (!qword_1EAD52E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52E68, &qword_190DD3CD0);
    sub_19081DA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52E78);
  }

  return result;
}

unint64_t sub_19081DA98()
{
  result = qword_1EAD52E80;
  if (!qword_1EAD52E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52E88, &qword_190DD3CE0);
    sub_190233640(&qword_1EAD52E90, &qword_1EAD52E98, &qword_190DD3CE8, MEMORY[0x1E697D680]);
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52E80);
  }

  return result;
}

unint64_t sub_19081DBA0()
{
  result = qword_1EAD52EB0;
  if (!qword_1EAD52EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52EA8, &qword_190DD3CF0);
    sub_19081DC58();
    sub_190233640(&qword_1EAD52ED8, &qword_1EAD52EE0, &qword_190DD3D08, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52EB0);
  }

  return result;
}

unint64_t sub_19081DC58()
{
  result = qword_1EAD52EB8;
  if (!qword_1EAD52EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52EC0, &qword_190DD3CF8);
    sub_190233640(&qword_1EAD52EC8, &qword_1EAD52ED0, &qword_190DD3D00, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52EB8);
  }

  return result;
}

unint64_t sub_19081DD10()
{
  result = qword_1EAD467C0;
  if (!qword_1EAD467C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52F68, &unk_190DD3DC0);
    sub_190233640(&unk_1EAD46798, &qword_1EAD52F70, &qword_190DDA2F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD467C0);
  }

  return result;
}

unint64_t sub_19081DDC8()
{
  result = qword_1EAD52F80;
  if (!qword_1EAD52F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52F60, &qword_190DD3D88);
    sub_19081DE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52F80);
  }

  return result;
}

unint64_t sub_19081DE54()
{
  result = qword_1EAD52F88;
  if (!qword_1EAD52F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52F58, &qword_190DD3D80);
    sub_19081DEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52F88);
  }

  return result;
}

unint64_t sub_19081DEE0()
{
  result = qword_1EAD52F90;
  if (!qword_1EAD52F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52F98, &qword_190DD3E38);
    sub_19081DF98();
    sub_190233640(&qword_1EAD45200, &qword_1EAD52FC8, &unk_190DD3E50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52F90);
  }

  return result;
}

unint64_t sub_19081DF98()
{
  result = qword_1EAD52FA0;
  if (!qword_1EAD52FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52FA8, &unk_190DD3E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52F50, &qword_190DD3D78);
    sub_190D54A80();
    sub_190233640(&qword_1EAD52FB0, &qword_1EAD52F50, &qword_190DD3D78, MEMORY[0x1E697D680]);
    sub_190213EC0(&qword_1EAD45268, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&unk_1EAD451F0, &unk_1EAD52FB8, &qword_190DDC720, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52FA0);
  }

  return result;
}

unint64_t sub_19081E110()
{
  result = qword_1EAD52FD0;
  if (!qword_1EAD52FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52F40, &qword_190DD3D68);
    sub_19081E19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52FD0);
  }

  return result;
}

unint64_t sub_19081E19C()
{
  result = qword_1EAD52FD8;
  if (!qword_1EAD52FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52F38, &qword_190DD3D60);
    sub_19081E254();
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8, &unk_190DDF770, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52FD8);
  }

  return result;
}

unint64_t sub_19081E254()
{
  result = qword_1EAD52FE0;
  if (!qword_1EAD52FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52F30, &qword_190DD3D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52F68, &unk_190DD3DC0);
    sub_19081DD10();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&unk_1EAD46788, &qword_1EAD52F78, &qword_190DD3DD0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD52FE0);
  }

  return result;
}

unint64_t sub_19081E354()
{
  result = qword_1EAD53000;
  if (!qword_1EAD53000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52FF8, &qword_190DD3E68);
    sub_190233640(&qword_1EAD53008, &qword_1EAD53010, &qword_190DD3E70, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53000);
  }

  return result;
}

uint64_t sub_19081E40C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_19081E474(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_19081E484()
{
  result = qword_1EAD46750;
  if (!qword_1EAD46750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46750);
  }

  return result;
}

unint64_t sub_19081E4D8()
{
  result = qword_1EAD53050;
  if (!qword_1EAD53050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD53048, &qword_190DD3F88);
    sub_19081E564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53050);
  }

  return result;
}

unint64_t sub_19081E564()
{
  result = qword_1EAD45F68;
  if (!qword_1EAD45F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45F68);
  }

  return result;
}

id sub_19081E5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(_s11ContentViewVMa(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1908194CC(a1, v9, v6, v7, a3);
}

unint64_t sub_19081E674()
{
  result = qword_1EAD530C0;
  if (!qword_1EAD530C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD530B0, &unk_190DD4000);
    _s8ListCellVMa(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD530C8, &unk_190DD4010);
    sub_190213EC0(&qword_1EAD530D0, _s8ListCellVMa, &unk_190DD66E4);
    sub_19081E7EC(&qword_1EAD530D8, &qword_1EAD530C8, &unk_190DD4010, sub_19081E868);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD530C0);
  }

  return result;
}

uint64_t sub_19081E7EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19081E868()
{
  result = qword_1EAD530E0;
  if (!qword_1EAD530E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD530E8, &qword_190E02820);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8, &unk_190DDF770, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD530E0);
  }

  return result;
}

unint64_t sub_19081E94C()
{
  result = qword_1EAD530F8;
  if (!qword_1EAD530F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD530F8);
  }

  return result;
}

uint64_t sub_19081E9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_19081EA10()
{
  result = qword_1EAD45190;
  if (!qword_1EAD45190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45190);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s11ContentViewVMa(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v5[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);
  v11 = v5[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70, &unk_190DE4070);
  (*(*(v12 - 8) + 8))(v4 + v7 + v11, v12);
  if (*(v4 + v7 + v5[11]))
  {
  }

  v13 = v5[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60, &qword_190DDDDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_190D540E0();
    (*(*(v14 - 8) + 8))(v4 + v7 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v4, v7 + v8, v6 | 7);
}

uint64_t sub_19081EC54(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(_s11ContentViewVMa(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

void sub_19081ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(_s11ContentViewVMa(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);

  sub_190819F9C(v4 + v8, v10, v11, v12, v5, v6);
}

uint64_t sub_19081EDA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8, &qword_190E02820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19081EE14()
{
  result = qword_1EAD53138;
  if (!qword_1EAD53138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD53118, &qword_190DD40B0);
    sub_19081EECC();
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53138);
  }

  return result;
}

unint64_t sub_19081EECC()
{
  result = qword_1EAD53140;
  if (!qword_1EAD53140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD53130, &qword_190DD40F8);
    sub_19081EF84();
    sub_190233640(&qword_1EAD45208, &qword_1EAD53160, &qword_190DD4100, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53140);
  }

  return result;
}

unint64_t sub_19081EF84()
{
  result = qword_1EAD53148;
  if (!qword_1EAD53148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD53120, &qword_190DD40B8);
    sub_190233640(&unk_1EAD53150, &qword_1EAD53128, &qword_190DD40C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53148);
  }

  return result;
}

unint64_t sub_19081FA44()
{
  result = qword_1EAD53658;
  if (!qword_1EAD53658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53658);
  }

  return result;
}

uint64_t sub_19081FBEC()
{
  sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
  result = sub_190D57D60();
  qword_1EAD9D938 = result;
  return result;
}

void sub_19081FC34()
{
  if (qword_1EAD518A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD9D938;
  sub_190D573A0();
  v2 = v1;

  qword_1EAD9D940 = v2;
}

Swift::Void __swiftcall CKAudioController.setupMediaRemoteCommandCenter()()
{
  v0 = [objc_opt_self() sharedCommandCenter];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = [v0 playCommand];
  v38 = sub_190820498;
  v39 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1908204BC;
  v37 = &block_descriptor;
  v3 = _Block_copy(&aBlock);
  sub_190D50920();

  v4 = [v2 addTargetWithHandler_];
  _Block_release(v3);

  sub_190D58140();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v5 = [v0 pauseCommand];
  v38 = sub_190820514;
  v39 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1908204BC;
  v37 = &block_descriptor_3;
  v6 = _Block_copy(&aBlock);
  sub_190D50920();

  v7 = [v5 addTargetWithHandler_];
  _Block_release(v6);

  sub_190D58140();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v8 = [v0 stopCommand];
  v38 = sub_190820598;
  v39 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1908204BC;
  v37 = &block_descriptor_6;
  v9 = _Block_copy(&aBlock);
  sub_190D50920();

  v10 = [v8 addTargetWithHandler_];
  _Block_release(v9);

  sub_190D58140();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v11 = [v0 changePlaybackPositionCommand];
  v38 = sub_190820690;
  v39 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1908204BC;
  v37 = &block_descriptor_9;
  v12 = _Block_copy(&aBlock);
  sub_190D50920();

  v13 = [v11 addTargetWithHandler_];
  _Block_release(v12);

  sub_190D58140();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v14 = [v0 skipBackwardCommand];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_190DD55F0;
  if (qword_1EAD518A0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EAD9D938;
  *(v15 + 32) = qword_1EAD9D938;
  sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
  v17 = v16;
  v18 = sub_190D57160();

  [v14 setPreferredIntervals_];

  v19 = [v0 skipBackwardCommand];
  v38 = sub_190820760;
  v39 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1908204BC;
  v37 = &block_descriptor_12;
  v20 = _Block_copy(&aBlock);
  sub_190D50920();

  v21 = [v19 addTargetWithHandler_];
  _Block_release(v20);

  sub_190D58140();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v22 = [v0 skipForwardCommand];
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_190DD55F0;
  *(v23 + 32) = v17;
  v24 = sub_190D57160();

  [v22 setPreferredIntervals_];

  v25 = [v0 skipForwardCommand];
  v38 = sub_190820854;
  v39 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1908204BC;
  v37 = &block_descriptor_15;
  v26 = _Block_copy(&aBlock);
  sub_190D50920();

  v27 = [v25 addTargetWithHandler_];
  _Block_release(v26);

  sub_190D58140();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v28 = [v0 playCommand];
  [v28 setEnabled_];

  v29 = [v0 pauseCommand];
  [v29 setEnabled_];

  v30 = [v0 stopCommand];
  [v30 setEnabled_];

  v31 = [v0 changePlaybackPositionCommand];
  [v31 setEnabled_];

  v32 = [v0 skipForwardCommand];
  [v32 setEnabled_];

  v33 = [v0 skipBackwardCommand];
  [v33 setEnabled_];
}

uint64_t sub_1908204BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_190820538(uint64_t a1, uint64_t a2, const char **a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *a3;
    v6 = Strong;
    [Strong v5];
  }

  return 0;
}

id sub_1908205BC(void *a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = a1;
  result = [v6 audioPlayer];
  if (result)
  {
    v9 = result;
    [v4 positionTime];
    [v9 setCurrentTime_];

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_190820698(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong currentMediaObjectTime];
    if (qword_1EAD518A8 != -1)
    {
      v7 = v4;
      swift_once();
      v4 = v7;
    }

    v5 = v4 - *&qword_1EAD9D940;
    if (v5 < 0.0)
    {
      v5 = 0.0;
    }

    [v3 setCurrentTime_];
  }

  return 0;
}

uint64_t sub_190820768(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong currentMediaObjectTime];
    if (qword_1EAD518A8 != -1)
    {
      v8 = v4;
      swift_once();
      v4 = v8;
    }

    v5 = v4 + *&qword_1EAD9D940;
    [v3 currentMediaObjectDuration];
    if (v6 <= v5)
    {
      [v3 stop];
    }

    else
    {
      [v3 setCurrentTime_];
    }
  }

  return 0;
}

Swift::Void __swiftcall CKAudioController.setCurrentMediaPlayerInfo()()
{
  v1 = [v0 currentIndex];
  v2 = [v0 mediaObjects];
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  v4 = sub_190D57180();

  v5 = *(v4 + 16);

  if (v1 < v5 && ([v0 currentIndex] & 0x8000000000000000) == 0)
  {
    v6 = [v0 mediaObjects];
    if (!v6)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v7 = v6;
    v8 = sub_190D57180();

    v9 = [v0 currentIndex];
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *(v8 + 16))
    {
      sub_19021834C(v8 + 32 * v9 + 32, aBlock);

      sub_1902188FC(0, &qword_1EAD53830, off_1E72E4880);
      if (!swift_dynamicCast())
      {
        return;
      }

      v10 = v50[0];
      v11 = [v50[0] transfer];
      if (v11)
      {
        v12 = [v11 IMMessage];
        swift_unknownObjectRelease();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        v14 = objc_allocWithZone(MEMORY[0x1E69705D8]);
        aBlock[4] = sub_190820E4C;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_190820F74;
        aBlock[3] = &block_descriptor_21;
        v15 = _Block_copy(aBlock);
        v16 = v12;
        v17 = [v14 initWithBoundsSize:v15 requestHandler:{200.0, 200.0}];
        _Block_release(v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53838, &unk_190DF1300);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_190DD5600;
        v19 = sub_190D56F10();
        *(inited + 32) = v19;
        *(inited + 40) = v20;
        v21 = CKFrameworkBundle(v19);
        if (v21)
        {
          v22 = v21;
          v23 = sub_190D56ED0();
          v24 = sub_190D56ED0();
          v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

          v26 = sub_190D56F10();
          v28 = v27;

          v29 = MEMORY[0x1E69E6158];
          *(inited + 72) = MEMORY[0x1E69E6158];
          *(inited + 48) = v26;
          *(inited + 56) = v28;
          *(inited + 80) = sub_190D56F10();
          *(inited + 88) = v30;
          if (v16 && (v31 = [v16 senderName]) != 0)
          {
            v32 = v31;
            v33 = sub_190D56F10();
            v35 = v34;

            v36 = (inited + 96);
            *(inited + 120) = v29;
            if (v35)
            {
              *v36 = v33;
LABEL_16:
              *(inited + 104) = v35;
              *(inited + 128) = sub_190D56F10();
              *(inited + 136) = v37;
              [v0 currentMediaObjectDuration];
              v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
              v40 = sub_1902188FC(0, &qword_1EAD46510, 0x1E696AD98);
              *(inited + 168) = v40;
              *(inited + 144) = v39;
              *(inited + 176) = sub_190D56F10();
              *(inited + 184) = v41;
              [v0 currentMediaObjectTime];
              v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
              *(inited + 216) = v40;
              *(inited + 192) = v43;
              *(inited + 224) = sub_190D56F10();
              *(inited + 232) = v44;
              *(inited + 264) = MEMORY[0x1E69E6810];
              *(inited + 240) = 1;
              *(inited + 272) = sub_190D56F10();
              *(inited + 280) = v45;
              *(inited + 312) = sub_1902188FC(0, &unk_1EAD53840, 0x1E69705D8);
              *(inited + 288) = v17;
              v46 = v17;
              sub_190820FDC(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DF00, &qword_190DD5610);
              swift_arrayDestroy();
              v47 = [objc_opt_self() defaultCenter];
              v48 = sub_190D56D60();

              [v47 setNowPlayingInfo_];

              return;
            }
          }

          else
          {
            v36 = (inited + 96);
            *(inited + 120) = v29;
          }

          *v36 = 0;
          v35 = 0xE000000000000000;
          goto LABEL_16;
        }

LABEL_23:
        __break(1u);
        return;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }
}

Swift::Void __swiftcall CKAudioController.clearMediaPlayerInfo()()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 setNowPlayingInfo_];
}

id sub_190820F74(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = sub_190D50920();
  v7 = v5(v6, a2, a3);

  return v7;
}

unint64_t sub_190820FDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A68, &qword_190DD57F0);
    v3 = sub_190D585A0();
    v4 = a1 + 32;
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v4, &v13, &qword_1EAD5DF00, &qword_190DD5610);
      v5 = v13;
      v6 = v14;
      result = sub_19022DCEC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_190824530(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19082110C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53980, &unk_190DD5AF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53988, &qword_190DD5730);
    v7 = sub_190D585A0();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v8, v5, &qword_1EAD53980, &unk_190DD5AF0);
      result = sub_190877CAC();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_190D50B80();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

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

unint64_t sub_1908212D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538E8, &qword_190DD56A8);
    v3 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_190D52690();
      v9 = v7;
      result = sub_19022DCEC(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 16 * result);
      *v13 = v9;
      v13[1] = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1908213F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A60, &qword_190DD57E8);
  v3 = sub_190D585A0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  result = sub_190875CC8(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v22 = v6;
    v23 = v5;
    return v3;
  }

  v11 = (a1 + 104);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v12 = v3[7] + 32 * result;
    *v12 = v5;
    *(v12 + 8) = v6;
    *(v12 + 16) = v7;
    *(v12 + 24) = v8 & 1;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 40;
    v4 = *(v11 - 4);
    v17 = *(v11 - 3);
    v18 = *(v11 - 2);
    v7 = *(v11 - 1);
    v8 = *v11;
    v19 = v5;
    v20 = v6;
    result = sub_190875CC8(v4);
    v11 = v16;
    v6 = v18;
    v5 = v17;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_190821534(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD539A0, &qword_190DD5748);
  v3 = sub_190D585A0();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_190875CC8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_190875CC8(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_190821644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5BC90, &unk_190DECAC0);
    v3 = sub_190D585A0();
    v4 = a1 + 32;
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v4, v13, &qword_1EAD53A00, &unk_190E00370);
      result = sub_190875C84(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_190824530(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_190821780(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538A8, &qword_190DD5668);
    v3 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1908789E0();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_190821870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53898, &qword_190DD5660);
    v3 = sub_190D585A0();
    v4 = a1 + 32;
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v4, &v11, &qword_1EAD538A0, &qword_190E00380);
      v5 = v11;
      result = sub_1908789E0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_190824530(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_190821998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A48, &unk_190DD8990);
    v3 = sub_190D585A0();
    v4 = a1 + 32;
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v4, &v11, &qword_1EAD53A50, &unk_190DD8980);
      v5 = v11;
      result = sub_1908789E0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_190824530(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_190821AD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538C0, &qword_190DD5680);
    v3 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_190D52690();
      sub_190D52690();
      result = sub_19022DCEC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_190821C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E1C0, &qword_190DD57C0);
  v3 = sub_190D585A0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1908789E4();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_190D52690();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;
    sub_190D52690();
    v8 = sub_1908789E4();
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_190821D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53970, &qword_190DD5720);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53978, &qword_190DD5728);
    v7 = sub_190D585A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_19022FD14(v9, v5, &qword_1EAD53970, &qword_190DD5720);
      v11 = *v5;
      result = sub_1908789EC();
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_190D50B80();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
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

unint64_t sub_190821EFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53878, &qword_190DD5640);
    v3 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 3);
      v17 = *(i - 5);
      v18 = v5;
      v19 = *(i - 8);
      v6 = *i;
      sub_19081BE58(&v17, v16);
      v7 = v6;
      result = sub_190875D94(&v17);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 40 * result;
      v11 = v17;
      v12 = v18;
      *(v10 + 32) = v19;
      *v10 = v11;
      *(v10 + 16) = v12;
      *(v3[7] + 8 * result) = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19082203C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A38, &qword_190DD57D8);
    v3 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_190D52690();
      swift_unknownObjectRetain();
      result = sub_19022DCEC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_190822154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E1E0, &qword_190DD56C8);
    v3 = sub_190D585A0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1908789E4();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_190822248(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      sub_190D52690();
      result = sub_19022DCEC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_19082233C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD538B0, &qword_190DD5670);
    v3 = sub_190D585A0();
    v4 = a1 + 32;
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v4, &v11, &qword_1EAD538B8, &qword_190DD5678);
      v5 = v11;
      result = sub_1908789E0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_190824530(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_190822464(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD539F0, &qword_190DD5798);
  v3 = sub_190D585A0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_190875CC8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_190D50920();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;
    sub_190D50920();
    v8 = sub_190875CC8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_19082256C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A30, &unk_190DD57C8);
  v3 = sub_190D585A0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1908789E8();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_190D52690();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;
    sub_190D52690();
    v8 = sub_1908789E8();
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_190822688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD538F0, &qword_190DD56B0);
    v3 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_190D52690();
      v9 = v7;
      result = sub_19022DCEC(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 16 * result;
      *v13 = v9;
      *(v13 + 8) = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1908227B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A78, &qword_190DD5800);
    v3 = sub_190D585A0();
    v4 = a1 + 32;
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v4, v13, &qword_1EAD53A80, &qword_190DD5808);
      result = sub_190875C84(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 16 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1908228E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A08, &qword_190DD57A0);
    v3 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      sub_190D52690();
      result = sub_190875FB8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1908229DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53A10, &qword_190DD57A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E230, &qword_190DD57B0);
    v7 = sub_190D585A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v9, v5, &unk_1EAD53A10, &qword_190DD57A8);
      result = sub_190875EE0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_190D519C0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

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

unint64_t sub_190822BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53850, &qword_190DD5618);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E190, &qword_190DD5620);
    v7 = sub_190D585A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v9, v5, &unk_1EAD53850, &qword_190DD5618);
      result = sub_190875BAC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_190D52E90();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

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

void *sub_190822DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53868, &qword_190DD5630);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53870, &qword_190DD5638);
  v7 = sub_190D585A0();
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = *(v3 + 72);
  v25 = *(v2 + 48);
  v26 = v9;
  sub_190D50920();
  sub_19022FD14(a1 + v8, v5, &qword_1EAD53868, &qword_190DD5630);
  v10 = sub_190876008(v5);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  v24 = sub_190D515F0();
  v13 = *(v24 - 8);
  v14 = *(v13 + 32);
  v15 = *(v13 + 72);
  v16 = a1 + v26 + v8;
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v14(v7[6] + v15 * v12, v5, v24);
    result = memmove((v7[7] + 168 * v12), &v5[v25], 0xA8uLL);
    v18 = v7[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v7[2] = v20;
    if (!--v6)
    {
      goto LABEL_8;
    }

    v21 = v16 + v26;
    sub_19022FD14(v16, v5, &qword_1EAD53868, &qword_190DD5630);
    v12 = sub_190876008(v5);
    v16 = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_190823014(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      sub_190D52690();
      v10 = v9;
      result = sub_19022DCEC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_190823110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53960, &unk_190DED600);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53968, &qword_190DD5718);
    v7 = sub_190D585A0();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v8, v5, &qword_1EAD53960, &unk_190DED600);
      result = sub_190877D10();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_190D50B80();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

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

unint64_t sub_1908232DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53950, &unk_190DF0940);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53958, &qword_190DD5710);
    v7 = sub_190D585A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_19022FD14(v9, v5, &qword_1EAD53950, &unk_190DF0940);
      v11 = *v5;
      result = sub_1908760E0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_190D50B80();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
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

unint64_t sub_1908234B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53940, &qword_190DD5700);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53948, &qword_190DD5708);
    v7 = sub_190D585A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v9, v5, &qword_1EAD53940, &qword_190DD5700);
      v11 = *v5;
      result = sub_19087614C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_190D50B80();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

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

unint64_t sub_1908236A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53930, &qword_190DD56F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53938, &qword_190DD56F8);
    v7 = sub_190D585A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v9, v5, &qword_1EAD53930, &qword_190DD56F0);
      v11 = *v5;
      result = sub_190876190(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_190D50B80();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

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

unint64_t sub_190823888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD539E0, &qword_190DD5788);
    v3 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1908789E0();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_190823980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD539D0, &qword_190DD5778);
    v3 = sub_190D585A0();
    v4 = a1 + 32;
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v4, &v11, &unk_1EAD5E540, &qword_190DD5780);
      v5 = v11;
      result = sub_190876288(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_190824530(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_190823AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E210, &qword_190DD5770);
    v3 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_190824730(v5, v6, *(i - 8));
      sub_190D52690();
      result = sub_190876340(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_190823BCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD539B8, &qword_190DD5760);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD539C0, &qword_190DD5768);
    v7 = sub_190D585A0();
    v23 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v8, v5, &qword_1EAD539B8, &qword_190DD5760);
      v10 = *v5;
      v11 = *(v5 + 1);
      v12 = v5[16];
      result = sub_190876340(*v5, v11, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v7[6] + 24 * result;
      *v16 = v10;
      *(v16 + 8) = v11;
      *(v16 + 16) = v12;
      v17 = v7[7];
      v18 = sub_190D51840();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, &v5[v23], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v8 += v9;
      if (!--v6)
      {

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

unint64_t sub_190823DD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53920, &qword_190DD56E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53928, &qword_190DD56E8);
    v7 = sub_190D585A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v9, v5, &qword_1EAD53920, &qword_190DD56E0);
      v11 = *v5;
      result = sub_190876444(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_190D50B80();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

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

unint64_t sub_190823FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E270, &unk_190DD5810);
    v3 = sub_190D585A0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_190875CC8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19082409C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A70, &qword_190DD57F8);
    v3 = sub_190D585A0();
    sub_190D50920();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1908789E0();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19082419C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53998, &qword_190DD5740);
  v3 = sub_190D585A0();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1908789E8();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_190D50920();
    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;
    sub_190D50920();
    result = sub_1908789E8();
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1908242AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53880, &qword_190DD5648);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53888, &qword_190DD5650);
    v7 = sub_190D585A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_190D50920();
    while (1)
    {
      sub_19022FD14(v9, v5, &qword_1EAD53880, &qword_190DD5648);
      result = sub_190876598(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53890, &qword_190DD5658);
      sub_1908244C0(v5, v14 + *(*(v15 - 8) + 72) * v13);
      v16 = v7[7];
      v17 = sub_190D51840();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

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

uint64_t sub_1908244C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53890, &qword_190DD5658);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_190824530(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_190824540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53910, &qword_190DD56D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53918, &qword_190DD56D8);
    v7 = sub_190D585A0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_19022FD14(v9, v5, &qword_1EAD53910, &qword_190DD56D0);
      v11 = *v5;
      result = sub_1908789EC();
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_190D50B80();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
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

id sub_190824730(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    return result;
  }

  return sub_190D52690();
}

uint64_t sub_190824788()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD9D948);
  __swift_project_value_buffer(v10, qword_1EAD9D948);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t sub_190824A6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080, qword_190DD5FF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8, &qword_190DD5AE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_190D51460();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AF0, &qword_190DD5AE8);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53980, &unk_190DD5AF0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_190DD1D90;
  sub_190D51430();
  (*(v5 + 56))(v3, 1, 1, v4);
  sub_190D50B30();
  sub_190D50B70();
  v9 = sub_19082110C(v8);
  swift_setDeallocating();
  sub_190825590(v8 + v7);
  result = swift_deallocClassInstance();
  qword_1EAD9D960 = v9;
  return result;
}

unint64_t sub_190824D08()
{
  result = qword_1EAD45AE8;
  if (!qword_1EAD45AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45AE8);
  }

  return result;
}

uint64_t sub_190824D5C()
{
  sub_190D58870();
  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_190824DC0(uint64_t a1)
{
  sub_190D58870();
  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_190824E0C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_190D585F0();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_190824E7C()
{
  result = qword_1EAD53A88;
  if (!qword_1EAD53A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53A88);
  }

  return result;
}

unint64_t sub_190824ED4()
{
  result = qword_1EAD53A90;
  if (!qword_1EAD53A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53A90);
  }

  return result;
}

unint64_t sub_190824F2C()
{
  result = qword_1EAD53A98;
  if (!qword_1EAD53A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53A98);
  }

  return result;
}

unint64_t sub_190824F90()
{
  result = qword_1EAD53AA0;
  if (!qword_1EAD53AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53AA0);
  }

  return result;
}

unint64_t sub_190824FE4()
{
  result = qword_1EAD53AA8;
  if (!qword_1EAD53AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53AA8);
  }

  return result;
}

unint64_t sub_190825038()
{
  result = qword_1EAD45AF0;
  if (!qword_1EAD45AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45AF0);
  }

  return result;
}

unint64_t sub_190825090()
{
  result = qword_1EAD53AB0;
  if (!qword_1EAD53AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53AB0);
  }

  return result;
}

uint64_t sub_1908250E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD518B0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D50CF0();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9D948);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1908251E0()
{
  result = qword_1EAD53AB8;
  if (!qword_1EAD53AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53AB8);
  }

  return result;
}

uint64_t sub_190825234(uint64_t a1)
{
  v2 = sub_1908251E0();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_190825284()
{
  result = qword_1EAD53AC0;
  if (!qword_1EAD53AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53AC0);
  }

  return result;
}

unint64_t sub_1908252DC()
{
  result = qword_1EAD53AC8;
  if (!qword_1EAD53AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53AC8);
  }

  return result;
}

unint64_t sub_190825334()
{
  result = qword_1EAD53AD0;
  if (!qword_1EAD53AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53AD0);
  }

  return result;
}

uint64_t sub_190825388()
{
  if (qword_1EAD518B8 != -1)
  {
    swift_once();
  }

  return sub_190D52690();
}

uint64_t sub_1908253E4(uint64_t a1)
{
  v2 = sub_190825090();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_190825434()
{
  result = qword_1EAD53AD8;
  if (!qword_1EAD53AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD53AE0, &qword_190DD5A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53AD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationAttribute(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ConversationAttribute(_WORD *result, int a2, int a3)
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

uint64_t sub_190825590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53980, &unk_190DD5AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1908258E0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int128 a32, uint64_t a33, uint64_t a34, __int128 a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v43 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultSize];
  *v43 = a3;
  v43[1] = a4;
  *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBackgroundLayerOutset] = a5;
  *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBubbleColor] = a1;
  *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultThinkingDotColor] = a2;
  *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultThinkingDotOpacity] = a6;
  *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBubbleOpacity] = a7;
  v44 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleFrame];
  *v44 = a8;
  v44[1] = a9;
  v44[2] = a10;
  *(v44 + 3) = a17;
  v45 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleGrowOffset];
  *v45 = a18;
  *(v45 + 1) = a19;
  v46 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleFrame];
  *v46 = a20;
  *(v46 + 2) = a21;
  *(v46 + 3) = a22;
  v47 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleGrowOffset];
  *v47 = a23;
  *(v47 + 1) = a24;
  v48 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleFrame];
  *v48 = a25;
  *(v48 + 2) = a26;
  *(v48 + 3) = a27;
  v49 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleGrowOffset];
  *v49 = a28;
  *(v49 + 1) = a29;
  v50 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleAnchorPoint];
  *v50 = a30;
  *(v50 + 1) = a31;
  v51 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageFrame];
  *v51 = a32;
  *(v51 + 2) = a33;
  *(v51 + 3) = a34;
  v52 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageSquareFrame];
  *v52 = a35;
  *(v52 + 2) = a36;
  *(v52 + 3) = a37;
  *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageTrailingSpace] = a38;
  v53 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotsOffset];
  *v53 = a39;
  *(v53 + 1) = a40;
  *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotDiameter] = a41;
  *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotSpace] = a42;
  v55.receiver = v42;
  v55.super_class = type metadata accessor for CKTypingIndicatorVisualConfiguration();
  return objc_msgSendSuper2(&v55, sel_init);
}

id CKTypingIndicatorVisualConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTypingIndicatorVisualConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTypingIndicatorVisualConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190825D4C()
{
  if (qword_1EAD518D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAD53B08;
  qword_1EAD53AF8 = qword_1EAD53B08;

  return v1;
}

id sub_190825DF8()
{
  result = sub_190825E18();
  qword_1EAD53B00 = result;
  return result;
}

id sub_190825E18()
{
  if (qword_1EAD518C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD53AF8;
  v1 = *(qword_1EAD53AF8 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleFrame);
  v2 = *(qword_1EAD53AF8 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleFrame + 8);
  v3 = *(qword_1EAD53AF8 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleFrame + 16);
  v4 = *(qword_1EAD53AF8 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleFrame + 24);
  v71.origin.x = v1;
  v71.origin.y = v2;
  v71.size.width = v3;
  v71.size.height = v4;
  MidX = CGRectGetMidX(v71);
  v72.origin.x = v1;
  v72.origin.y = v2;
  v72.size.width = v3;
  v72.size.height = v4;
  v68 = v4 + 2.0;
  v69 = v3 + 2.0;
  v67 = MidX - (v3 + 2.0) * 0.5 + 0.5;
  v66 = CGRectGetMidY(v72) - (v4 + 2.0) * 0.5 + 0.5;
  v6 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleFrame);
  v7 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleFrame + 8);
  v8 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleFrame + 16);
  v9 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleFrame + 24);
  v73.origin.x = v6;
  v73.origin.y = v7;
  v73.size.width = v8;
  v73.size.height = v9;
  v10 = CGRectGetMidX(v73);
  v74.origin.x = v6;
  v74.origin.y = v7;
  v74.size.width = v8;
  v74.size.height = v9;
  v64 = v9 + 2.0;
  v65 = v8 + 2.0;
  v62 = CGRectGetMidY(v74) - (v9 + 2.0) * 0.5 + 0.5;
  v63 = v10 - (v8 + 2.0) * 0.5 + 0.5;
  v11 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleFrame);
  v12 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleFrame + 8);
  v13 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleFrame + 16);
  v14 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleFrame + 24);
  v75.origin.x = v11;
  v75.origin.y = v12;
  v75.size.width = v13;
  v75.size.height = v14;
  v15 = CGRectGetMidX(v75);
  v76.origin.x = v11;
  v76.origin.y = v12;
  v76.size.width = v13;
  v76.size.height = v14;
  MidY = CGRectGetMidY(v76);
  v17 = v13 + 2.0;
  v18 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBubbleColor);
  v19 = v14 + 2.0;
  v20 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultThinkingDotColor);
  v21 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultThinkingDotOpacity);
  v60 = MidY - (v14 + 2.0) * 0.5 + 0.5;
  v61 = v15 - (v13 + 2.0) * 0.5 + 0.5;
  v22 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultSize);
  v23 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultSize + 8);
  v24 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBubbleOpacity);
  v26 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleGrowOffset);
  v25 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleGrowOffset + 8);
  v49 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleGrowOffset + 8);
  v50 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleGrowOffset);
  v58 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleGrowOffset + 8);
  v59 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleGrowOffset);
  v55 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleAnchorPoint + 8);
  v56 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleAnchorPoint);
  v27 = (v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageFrame);
  v28 = (v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageSquareFrame);
  v57 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageTrailingSpace);
  v53 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotsOffset + 8);
  v54 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotsOffset);
  v51 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotSpace);
  v52 = *(v0 + OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotDiameter);
  v29 = type metadata accessor for CKTypingIndicatorVisualConfiguration();
  v47 = v28[1];
  v48 = *v28;
  v45 = v27[1];
  v46 = *v27;
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultSize];
  *v31 = v22;
  *(v31 + 1) = v23;
  *&v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBackgroundLayerOutset] = 0x4020000000000000;
  *&v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBubbleColor] = v18;
  *&v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultThinkingDotColor] = v20;
  *&v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultThinkingDotOpacity] = v21;
  *&v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBubbleOpacity] = v24;
  v32 = &v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleFrame];
  *v32 = v67;
  v32[1] = v66;
  v32[2] = v69;
  v32[3] = v68;
  v33 = &v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleGrowOffset];
  *v33 = v26;
  *(v33 + 1) = v25;
  v34 = &v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleFrame];
  *v34 = v63;
  v34[1] = v62;
  v34[2] = v65;
  v34[3] = v64;
  v35 = &v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleGrowOffset];
  *v35 = v50;
  *(v35 + 1) = v49;
  v36 = &v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleFrame];
  *v36 = v61;
  v36[1] = v60;
  v36[2] = v17;
  v36[3] = v19;
  v37 = &v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleGrowOffset];
  *v37 = v59;
  *(v37 + 1) = v58;
  v38 = &v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleAnchorPoint];
  *v38 = v56;
  *(v38 + 1) = v55;
  v39 = &v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageFrame];
  *v39 = v46;
  *(v39 + 1) = v45;
  v40 = &v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageSquareFrame];
  *v40 = v48;
  *(v40 + 1) = v47;
  *&v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageTrailingSpace] = v57;
  v41 = &v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotsOffset];
  *v41 = v54;
  *(v41 + 1) = v53;
  *&v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotDiameter] = v52;
  *&v30[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotSpace] = v51;
  v70.receiver = v30;
  v70.super_class = v29;
  v42 = v18;
  v43 = v20;
  return objc_msgSendSuper2(&v70, sel_init);
}

id sub_19082627C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_190826318(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id sub_19082637C()
{
  result = sub_19082639C();
  qword_1EAD53B08 = result;
  return result;
}

id sub_19082639C()
{
  result = [objc_opt_self() sharedBehaviors];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = [result theme];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  [v1 transcriptTypingIndicatorSmallBubbleFrame];
  v4 = v3;
  v6 = v5;
  v69 = v8;
  v70 = v7;
  [v1 transcriptTypingIndicatorMediumBubbleSize];
  v71 = v9;
  v11 = v10;
  [v1 transcriptTypingIndicatorMediumBubbleOffset];
  v63 = v13;
  v64 = v12;
  [v1 transcriptTypingIndicatorLargeBubbleSize];
  v15 = v14;
  v17 = v16;
  [v1 transcriptTypingIndicatorLargeBubbleOffset];
  v67 = v4;
  v19 = v4 + v18;
  v21 = v6 + v20;
  [v1 transcriptTypingIndicatorThinkingDotDiameter];
  v23 = v22;
  [v1 transcriptTypingIndicatorThinkingDotSpace];
  v25 = v24;
  v65 = v21;
  v66 = v19;
  v73.origin.x = v19;
  v73.origin.y = v21;
  v73.size.width = v15;
  v73.size.height = v17;
  MaxX = CGRectGetMaxX(v73);
  v68 = v17;
  v27 = CGPointPxRound((MaxX - (v23 * 3.0 + v25 + v25)) * 0.5);
  v29 = v28;
  [v1 transcriptTypingIndicatorDefaultSize];
  v62 = v30;
  v32 = v31;
  result = [v2 transcriptTypingIndicatorBubbleColor];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v33 = result;
  v59 = v27;
  v60 = v25;
  v61 = v23;
  result = [v2 transcriptTypingIndicatorDotColor];
  if (result)
  {
    v34 = result;
    [v2 transcriptTypingIndicatorOpacity];
    v36 = v35;
    [v1 transcriptTypingIndicatorLargeBubbleGrowOffset];
    v38 = v37;
    v40 = v39;
    v41 = type metadata accessor for CKTypingIndicatorVisualConfiguration();
    v42 = objc_allocWithZone(v41);
    v43 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultSize];
    *v43 = v62;
    *(v43 + 1) = v32;
    *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBackgroundLayerOutset] = 0x4020000000000000;
    *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBubbleColor] = v33;
    *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultThinkingDotColor] = v34;
    *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultThinkingDotOpacity] = 0x3FDCCCCCCCCCCCCDLL;
    *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_defaultBubbleOpacity] = v36;
    v44 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleFrame];
    *v44 = v67;
    v44[1] = v6;
    *(v44 + 2) = v70;
    *(v44 + 3) = v69;
    *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_smallBubbleGrowOffset] = xmmword_190DD5B00;
    v45 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleFrame];
    *v45 = v67 + v64;
    v45[1] = v6 + v63;
    *(v45 + 2) = v71;
    *(v45 + 3) = v11;
    *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_mediumBubbleGrowOffset] = xmmword_190DD5B10;
    v46 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleFrame];
    *v46 = v66;
    v46[1] = v65;
    v46[2] = v15;
    v46[3] = v68;
    v47 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleGrowOffset];
    *v47 = v38;
    *(v47 + 1) = v40;
    *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_largeBubbleAnchorPoint] = xmmword_190DD5B20;
    v48 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageFrame];
    *v48 = xmmword_190DD5B30;
    *(v48 + 1) = xmmword_190DD5B40;
    v49 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageSquareFrame];
    __asm { FMOV            V1.2D, #27.0 }

    *v49 = xmmword_190DD5B50;
    *(v49 + 1) = _Q1;
    *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_iconImageTrailingSpace] = 0x4020000000000000;
    v55 = &v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotsOffset];
    *v55 = v59;
    *(v55 + 1) = v29;
    *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotDiameter] = v61;
    *&v42[OBJC_IVAR____TtC7ChatKit36CKTypingIndicatorVisualConfiguration_thinkingDotSpace] = v60;
    v72.receiver = v42;
    v72.super_class = v41;
    v56 = v33;
    v57 = v34;
    v58 = objc_msgSendSuper2(&v72, sel_init);

    return v58;
  }

LABEL_9:
  __break(1u);
  return result;
}

double CGPointPxRound(double a1)
{
  v2 = CKMainScreenScale_once_105;
  v3 = &__block_literal_global_299;
  if (v2 != -1)
  {
    dispatch_once(&CKMainScreenScale_once_105, &__block_literal_global_299);
  }

  v4 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_105 != 0.0)
  {
    v4 = *&CKMainScreenScale_sMainScreenScale_105;
  }

  return round(a1 * v4) / v4;
}

void TapbackPickerViewController.tapbackPreviewDidChange(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490, &qword_190E08180);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v42 - v1;
  v3 = sub_190D51C00();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F90();
  if (!v47[3])
  {
    v18 = &unk_1EAD551C0;
    v19 = &unk_190DD9790;
    v20 = v47;
    goto LABEL_8;
  }

  sub_1902188FC(0, &qword_1EAD466C0, off_1E72E50B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v7 = v46;
  v8 = [v46 transferGUID];
  if (!v8)
  {

    return;
  }

  v9 = v8;
  v10 = sub_190D56F10();
  v12 = v11;

  v45 = v10;
  sub_190826DB8(v10, v12);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  v16 = v13;
  v17 = sub_19098B4C0();
  v44 = v16;
  v47[0] = v16;
  v47[1] = v15;
  sub_190D53440();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {

    v18 = &qword_1EAD55490;
    v19 = &qword_190E08180;
    v20 = v2;
LABEL_8:
    sub_19022EEA4(v20, v18, v19);
    return;
  }

  (*(v4 + 32))(v6, v2, v3);
  v21 = sub_19098B380();
  v22 = sub_190D51BB0();
  v23 = [v21 cellForItemAtIndexPath_];

  v24 = v12;
  if (!v23)
  {
    (*(v4 + 8))(v6, v3);

LABEL_20:

    return;
  }

  type metadata accessor for TapbackPickerCollectionViewCell();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
    v27 = v25;
    swift_beginAccess();
    v28 = *(v27 + v26);
    if (!v28)
    {
      (*(v4 + 8))(v6, v3);

      return;
    }

    type metadata accessor for TapbackStickerView();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v30 = v29;
      v31 = qword_1EAD52010;
      v43 = v28;
      if (v31 != -1)
      {
        swift_once();
      }

      v32 = sub_190D53040();
      __swift_project_value_buffer(v32, qword_1EAD9E5F0);
      sub_190D52690();
      sub_190D52690();
      v33 = sub_190D53020();
      v34 = sub_190D576C0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v42[0] = v33;
        v36 = v35;
        v46 = swift_slowAlloc();
        v42[1] = v30;
        v37 = v46;
        *v36 = 136315394;
        v38 = sub_19021D9F8(v44, v15, &v46);
        LODWORD(v44) = v34;
        v39 = v38;

        *(v36 + 4) = v39;
        *(v36 + 12) = 2080;
        v40 = v45;
        *(v36 + 14) = sub_19021D9F8(v45, v24, &v46);
        v41 = v42[0];
        _os_log_impl(&dword_19020E000, v42[0], v44, "Updating sticker content in identifier: %s, with transferGUID: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v37, -1, -1);
        MEMORY[0x193AF7A40](v36, -1, -1);
      }

      else
      {

        v40 = v45;
      }

      sub_190B5553C(v40, v24);

      sub_190B55FA8();
    }

    else
    {
    }
  }

  else
  {
  }

  (*(v4 + 8))(v6, v3);
}

void sub_190826DB8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58620, &qword_190DE2630);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = sub_19098B4C0();
  sub_190D53430();

  v32 = 1;
  sub_190D532C0();
  if (v7)
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v26 = v3;
    v27 = v2;
    v31 = 1;
    v25 = v5;
    v8 = sub_190D532D0();
    v9 = v8;
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (v8 + 40);
      v28 = v8;
      while (v11 < *(v9 + 16))
      {
        v14 = *(v12 - 1);
        v13 = *v12;
        sub_190D52690();
        v15 = sub_19082772C(v14, v13);
        if (v15)
        {
          v16 = v15;
          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (v17)
          {
            v18 = [v17 transferGUID];
            v19 = sub_190D56F10();
            v21 = v20;

            if (v19 == v29 && v21 == v30)
            {

LABEL_19:
              (*(v26 + 8))(v25, v27);

              return;
            }

            v23 = sub_190D58760();

            if (v23)
            {
              goto LABEL_19;
            }

            v9 = v28;
          }

          else
          {
          }
        }

        else
        {
        }

        ++v11;
        v12 += 2;
        if (v10 == v11)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:

      (*(v26 + 8))(v25, v27);
    }
  }
}

char *sub_190827134(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = a3[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x1E69DC7F8]) init];
  }

  v8 = Strong;
  v9 = sub_190D56ED0();
  v10 = sub_190D51BB0();
  v11 = [a1 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v10];

  type metadata accessor for TapbackPickerCollectionViewCell();
  v12 = swift_dynamicCastClassUnconditional();
  sub_190827254(v12, v5, v6);

  return v12;
}

void sub_190827254(char *a1, uint64_t a2, unint64_t a3)
{
  if (a2 == 0xD00000000000001BLL && 0x8000000190E5AC10 == a3 || (v5 = a1, v6 = sub_190D58760(), a1 = v5, (v6 & 1) != 0))
  {

    sub_190827448(a1);
  }

  else
  {
    v7 = sub_19082772C(a2, a3);
    if (v7)
    {
      oslog = v7;
      sub_190827C70(v5, v7);
    }

    else
    {
      if (qword_1EAD52010 != -1)
      {
        swift_once();
      }

      v8 = sub_190D53040();
      __swift_project_value_buffer(v8, qword_1EAD9E5F0);
      sub_190D52690();
      oslog = sub_190D53020();
      v9 = sub_190D576A0();

      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v13 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_19021D9F8(a2, a3, &v13);
        _os_log_impl(&dword_19020E000, oslog, v9, "Could not find tapback for itemIdentifier=%s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x193AF7A40](v11, -1, -1);
        MEMORY[0x193AF7A40](v10, -1, -1);
      }
    }
  }
}

id sub_190827448(char *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TapbackEmojiKeyboardGlyphView()) init];
  v3 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v4 = *&a1[v3];
  *&a1[v3] = v2;
  if (v4)
  {
    v5 = v2;
    v6 = v4;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      v9 = *&a1[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView];
      sub_1902188FC(0, &qword_1EAD46530, 0x1E69DD250);
      v10 = v9;
      v11 = sub_190D57D90();

      if (v11)
      {
        [v6 removeFromSuperview];
      }
    }

    v12 = *&a1[v3];
    if (v12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v21 = v2;
    v12 = v2;
    if (v2)
    {
LABEL_6:
      v13 = v12;
      [v13 setTranslatesAutoresizingMaskIntoConstraints_];
      [*&a1[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView] addSubview_];
      sub_190BD231C();

      v2 = v13;
    }
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong tapbackPickerCellCenterPointDidChange_];
    Strong = swift_unknownObjectRelease();
  }

  result = CKFrameworkBundle(Strong);
  if (result)
  {
    v16 = result;
    v17 = sub_190D56ED0();
    v18 = sub_190D56ED0();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    if (!v19)
    {
      sub_190D56F10();
      v19 = sub_190D56ED0();
    }

    [a1 setAccessibilityLabel_];

    v20 = sub_190D56ED0();
    [a1 setAccessibilityIdentifier_];

    return [a1 setSelected_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_19082772C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerItems;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  sub_190D52690();
  v11 = 0;
  v45 = a2;
LABEL_4:
  if (v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return 0;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
LABEL_9:
      v13 = *(*(v5 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));
      if (v13 >> 62)
      {
        v14 = sub_190D581C0();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 &= v9 - 1;
      if (v14)
      {
        v42 = v10;
        v43 = v6;
        v44 = v5;
        sub_190D52690();
        v15 = 0;
        v16 = a1;
        v47 = v14;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x193AF3B90](v15, v13);
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v17 = *(v13 + 8 * v15 + 32);
          }

          v18 = v17;
          v19 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_53;
          }

          objc_opt_self();
          v20 = swift_dynamicCastObjCClass();
          if (v20)
          {
            break;
          }

          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (v25)
          {
            v26 = v25;
            v27 = v18;
            v28 = [v26 associatedMessageEmoji];
            v29 = sub_190D56F10();
            v24 = v30;

            v31 = v29;
          }

          else
          {
            objc_opt_self();
            v32 = swift_dynamicCastObjCClass();
            if (!v32)
            {
              sub_190D582B0();

              swift_getObjectType();
              v41 = sub_190D58980();
              MEMORY[0x193AF28B0](v41);

              goto LABEL_57;
            }

            v33 = v32;
            v34 = v18;
            v35 = [v33 stickerIdentifier];
            v36 = sub_190D56F10();
            v38 = v37;

            MEMORY[0x193AF28B0](v36, v38);

            v31 = 0x3A72656B63697453;
            v24 = 0xE900000000000020;
          }

          a2 = v45;
          v16 = a1;
          if (v31 == a1)
          {
            goto LABEL_43;
          }

LABEL_44:
          v39 = sub_190D58760();

          if (v39)
          {

            return v18;
          }

          ++v15;
          if (v19 == v47)
          {

            v6 = v43;
            v5 = v44;
            v10 = v42;
            goto LABEL_4;
          }
        }

        v21 = v20;
        v22 = v18;
        v23 = [v21 associatedMessageType];
        if (v23 > 2002)
        {
          switch(v23)
          {
            case 2003:

              v24 = 0xE200000000000000;
              if (v16 != 24936)
              {
                goto LABEL_44;
              }

              break;
            case 2004:

              v24 = 0xEB000000006E6F69;
              if (v16 != 0x74616D616C637865)
              {
                goto LABEL_44;
              }

              break;
            case 2005:

              v24 = 0xEC0000006B72614DLL;
              if (v16 != 0x6E6F697473657571)
              {
                goto LABEL_44;
              }

              break;
            default:
              goto LABEL_57;
          }
        }

        else
        {
          switch(v23)
          {
            case 2000:

              v24 = 0xE500000000000000;
              if (v16 != 0x7472616568)
              {
                goto LABEL_44;
              }

              break;
            case 2001:

              v24 = 0xE800000000000000;
              if (v16 != 0x705573626D756874)
              {
                goto LABEL_44;
              }

              break;
            case 2002:

              v24 = 0xEA00000000006E77;
              if (v16 != 0x6F4473626D756874)
              {
                goto LABEL_44;
              }

              break;
            default:
              goto LABEL_57;
          }
        }

LABEL_43:
        if (v24 == a2)
        {

          return v18;
        }

        goto LABEL_44;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_57:
  result = sub_190D58510();
  __break(1u);
  return result;
}

void sub_190827C70(_BYTE *a1, void *a2)
{
  v3 = v2;
  v6 = sub_190900050();
  v8 = v7;
  v9 = *(v3 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier + 8);
  if (v9)
  {
    if (*(v3 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier) == v6 && v9 == v8)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_190D58760();
    }
  }

  else
  {
    v11 = 0;
  }

  v35 = v11;
  v12 = _s7ChatKit16TapbackViewUtilsC4view3for10isSelectedSo09CKTapbackD8Protocol_So6UIViewCXcSo9IMTapbackCSg_SbtFZ_0(a2, v11 & 1);
  [v12 setDelegate_];
  v13 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v14 = *&a1[v13];
  *&a1[v13] = v12;
  if (v14)
  {
    v34 = v6;
    v15 = v12;
    v16 = v14;
    v17 = [v16 superview];
    if (v17)
    {
      v18 = v17;
      v19 = *&a1[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView];
      sub_1902188FC(0, &qword_1EAD46530, 0x1E69DD250);
      v20 = v19;
      v21 = sub_190D57D90();

      if (v21)
      {
        [v16 removeFromSuperview];
      }
    }

    v22 = *&a1[v13];
    v23 = v12;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v32 = v12;
    v22 = v12;
    v23 = v12;
    if (v12)
    {
LABEL_14:
      v23 = v22;
      [v23 setTranslatesAutoresizingMaskIntoConstraints_];
      [*&a1[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackBlurContainerView] addSubview_];
      sub_190BD231C();
    }
  }

  v24 = *(v3 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackBackgroundColor);
  v25 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectedTapbackBackgroundColor;
  swift_beginAccess();
  a1[v25] = v24;
  sub_190BD0F24();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong tapbackPickerCellCenterPointDidChange_];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v28 = *&a1[OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_gradientView];
  v29 = swift_unknownObjectWeakLoadStrong();
  [v28 setReferenceView_];

  [a1 setNeedsLayout];
  sub_1908C04C4();
  if (v30)
  {
    v31 = sub_190D56ED0();
  }

  else
  {
    v31 = 0;
  }

  [a1 setAccessibilityLabel_];

  v33 = sub_190D56ED0();

  [a1 setAccessibilityIdentifier_];

  [a1 setSelected_];
}

uint64_t sub_190828028()
{
  v1 = [objc_opt_self() classicTapbackOptions];
  sub_1902188FC(0, &qword_1EAD53BB8, 0x1E69A7FB0);
  v2 = sub_190D57180();

  if (v2 >> 62)
  {
    sub_1902188FC(0, &qword_1EAD55560, 0x1E69A82E8);
    sub_190D52690();
    v3 = sub_190D58530();
  }

  else
  {
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &qword_1EAD55560, 0x1E69A82E8);
    v3 = v2;
  }

  v4 = OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerItems;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + v4);
  *(v0 + v4) = 0x8000000000000000;
  sub_190C1BD5C(v3, 0, isUniquelyReferenced_nonNull_native);
  *(v0 + v4) = v12;
  swift_endAccess();
  v6 = *(v0 + OBJC_IVAR___CKTapbackPickerViewController_contentProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___CKTapbackPickerViewController_contentProvider), *(v0 + OBJC_IVAR___CKTapbackPickerViewController_contentProvider + 24));
  v7 = *(v6 + 8);
  v8 = *(v0 + OBJC_IVAR___CKTapbackPickerViewController_ckChatItem);
  v9 = v7();

  swift_beginAccess();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + v4);
  *(v0 + v4) = 0x8000000000000000;
  sub_190C1BD5C(v9, 1, v10);
  *(v0 + v4) = v13;
  return swift_endAccess();
}

id sub_19082824C()
{
  result = [*(v0 + OBJC_IVAR___CKTapbackPickerViewController_ckChatItem) visibleAssociatedMessageChatItems];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v44 = v0;
  sub_1902188FC(0, &qword_1EAD44F88, off_1E72E47F8);
  v3 = sub_190D57180();

  v46 = MEMORY[0x1E69E7CC0];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_22:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v4 = sub_190D581C0();
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_4:
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AF3B90](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    MEMORY[0x193AF29E0]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v6 = v46;
  }

  while (v5 != v4);
LABEL_23:

  if (!(v6 >> 62))
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_25;
    }

LABEL_44:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_45;
  }

LABEL_43:
  v10 = sub_190D581C0();
  if (!v10)
  {
    goto LABEL_44;
  }

LABEL_25:
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = v11;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193AF3B90](v13, v6);
      }

      else
      {
        if (v13 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v14 = *(v6 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v16 = [v14 acknowledgments];
      if (v16)
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        goto LABEL_45;
      }
    }

    v17 = v16;
    sub_1902188FC(0, &qword_1EAD5E5E0, 0x1E69A5BE0);
    v18 = sub_190D57180();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1908356F0(0, v12[2] + 1, 1, v12);
    }

    v20 = v12[2];
    v19 = v12[3];
    if (v20 >= v19 >> 1)
    {
      v12 = sub_1908356F0((v19 > 1), v20 + 1, 1, v12);
    }

    v12[2] = v20 + 1;
    v12[v20 + 4] = v18;
  }

  while (v11 != v10);
LABEL_45:

  sub_19086D20C(v12);
  v22 = v21;

  if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
  {
    result = sub_190D581C0();
    v23 = result;
    if (result)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v23 = *(v22 + 16);
    if (v23)
    {
LABEL_48:
      if (v23 < 1)
      {
        __break(1u);
        return result;
      }

      v24 = 0;
      v25 = v22 & 0xC000000000000001;
      v26 = &selRef_systemFontOfSize_weight_design_;
      v27 = &selRef_isCharacterCountHidden;
      v28 = &selRef_chatItemsChanged_;
      v43 = v22 & 0xC000000000000001;
      v45 = (v44 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier);
      do
      {
        if (v25)
        {
          v29 = MEMORY[0x193AF3B90](v24, v22);
        }

        else
        {
          v29 = *(v22 + 8 * v24 + 32);
        }

        v30 = v29;
        v31 = [v29 v26[67]];
        if (v31)
        {
          v32 = v31;
          v33 = [v30 v27[151]];
          v34 = [v32 v28[152]];
          if (v33 & 1) == 0 || (v34)
          {
          }

          else
          {
            v35 = sub_190900050();
            v36 = v22;
            v37 = v23;
            v38 = v26;
            v39 = v28;
            v40 = v27;
            v42 = v41;

            *v45 = v35;
            v45[1] = v42;
            v27 = v40;
            v28 = v39;
            v26 = v38;
            v23 = v37;
            v22 = v36;
            v25 = v43;
          }
        }

        else
        {
        }

        ++v24;
      }

      while (v23 != v24);
    }
  }
}

void sub_1908286F0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490, &qword_190E08180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_190D51C00();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19098B4C0();
  v21[0] = a1;
  v21[1] = a2;
  sub_190D53440();

  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    v17 = sub_19098B380();
    v18 = sub_190D51BB0();
    v19 = [v17 cellForItemAtIndexPath_];

    if (v19)
    {
      type metadata accessor for TapbackPickerCollectionViewCell();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {

        sub_190D58510();
        __break(1u);
        return;
      }

      sub_190827254(v20, a1, a2);
    }

    (*(v8 + 8))(v10, v7);
    return;
  }

  sub_19022EEA4(v6, &qword_1EAD55490, &qword_190E08180);
  if (qword_1EAD52010 != -1)
  {
    swift_once();
  }

  v12 = sub_190D53040();
  __swift_project_value_buffer(v12, qword_1EAD9E5F0);
  sub_190D52690();
  v13 = sub_190D53020();
  v14 = sub_190D576A0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_19021D9F8(a1, a2, v21);
    _os_log_impl(&dword_19020E000, v13, v14, "Could not find index path for itemIdentifier=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x193AF7A40](v16, -1, -1);
    MEMORY[0x193AF7A40](v15, -1, -1);
  }
}

void sub_190828A74()
{
  v1 = v0;
  v2 = OBJC_IVAR___CKTapbackPickerViewController_ckChatItem;
  v29 = *&v0[OBJC_IVAR___CKTapbackPickerViewController_ckChatItem];
  v3 = [v29 serviceName];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() serviceWithName_];

    if (v5)
    {
      v6 = [v5 __ck_displayColor];

      v1[OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackBackgroundColor] = v6;
      return;
    }

    if (qword_1EAD52010 != -1)
    {
      swift_once();
    }

    v21 = sub_190D53040();
    __swift_project_value_buffer(v21, qword_1EAD9E5F0);
    v8 = v1;
    v9 = sub_190D53020();
    v10 = sub_190D576A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315138;
      v22 = [*&v1[v2] IMChatItem];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 guid];

        if (v24)
        {
          v25 = sub_190D56F10();
          v27 = v26;

          v28 = sub_19021D9F8(v25, v27, &v30);

          *(v11 + 4) = v28;
          v20 = "service not found on chatItem with imChatItem.guid: %s";
          goto LABEL_16;
        }

        goto LABEL_23;
      }

LABEL_22:

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }
  }

  else
  {
    if (qword_1EAD52010 != -1)
    {
      swift_once();
    }

    v7 = sub_190D53040();
    __swift_project_value_buffer(v7, qword_1EAD9E5F0);
    v8 = v0;
    v9 = sub_190D53020();
    v10 = sub_190D576A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315138;
      v13 = [*&v1[v2] IMChatItem];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 guid];

        if (v15)
        {
          v16 = sub_190D56F10();
          v18 = v17;

          v19 = sub_19021D9F8(v16, v18, &v30);

          *(v11 + 4) = v19;
          v20 = "service name not found on chatItem with imChatItem.guid: %s";
LABEL_16:
          _os_log_impl(&dword_19020E000, v9, v10, v20, v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v12);
          MEMORY[0x193AF7A40](v12, -1, -1);
          MEMORY[0x193AF7A40](v11, -1, -1);

          return;
        }
      }

      else
      {

        __break(1u);
      }

      __break(1u);
      goto LABEL_22;
    }
  }
}

uint64_t sub_190828E38()
{
  sub_1908299B4();
  sub_190D532E0();
  v38 = OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerItems;
  v39 = v0;
  swift_beginAccess();
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = v1;
    v5 = *(&unk_1F0400C98 + v2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53BB0, &qword_190DD5BA8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_190DD1D90;
    *(v6 + 32) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58620, &qword_190DE2630);
    sub_190D532B0();

    v7 = *(v39 + v38);
    if (!*(v7 + 16))
    {
      break;
    }

    v8 = sub_1908789E4();
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = *(*(v7 + 56) + 8 * v8);
    sub_190D52690();
    if (!(v10 >> 62))
    {
      goto LABEL_9;
    }

LABEL_6:
    v11 = sub_190D581C0();
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_7:

LABEL_2:
    sub_190D53290();

    v1 = 1;
    v2 = 1u;
    if (v4)
    {
      result = UIAccessibilityIsVoiceOverRunning();
      if ((result & 1) == 0)
      {
        result = sub_190D532A0();
        if (result >= 1)
        {
          return sub_190D53290();
        }
      }

      return result;
    }
  }

  v10 = v3;
  if (v3 >> 62)
  {
    goto LABEL_6;
  }

LABEL_9:
  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_10:
  v41 = v3;
  sub_19082DBB4(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v40 = v4;
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x193AF3B90](v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        v17 = v14;
        v18 = [v16 associatedMessageType];
        if (v18 > 2002)
        {
          switch(v18)
          {
            case 2003:

              v19 = 0xE200000000000000;
              v20 = 24936;
              break;
            case 2004:

              v20 = 0x74616D616C637865;
              v19 = 0xEB000000006E6F69;
              break;
            case 2005:

              v20 = 0x6E6F697473657571;
              v19 = 0xEC0000006B72614DLL;
              break;
            default:
              goto LABEL_44;
          }
        }

        else
        {
          switch(v18)
          {
            case 2000:

              v19 = 0xE500000000000000;
              v20 = 0x7472616568;
              break;
            case 2001:

              v19 = 0xE800000000000000;
              v20 = 0x705573626D756874;
              break;
            case 2002:

              v19 = 0xEA00000000006E77;
              v20 = 0x6F4473626D756874;
              break;
            default:
              goto LABEL_44;
          }
        }
      }

      else
      {
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          v22 = v21;
          v23 = v14;
          v24 = [v22 associatedMessageEmoji];
          v20 = sub_190D56F10();
          v19 = v25;
        }

        else
        {
          objc_opt_self();
          v26 = swift_dynamicCastObjCClass();
          if (!v26)
          {
            sub_190D582B0();

            swift_getObjectType();
            v37 = sub_190D58980();
            MEMORY[0x193AF28B0](v37);

            goto LABEL_44;
          }

          v27 = v26;
          v28 = v14;
          v29 = [v27 stickerIdentifier];
          v30 = sub_190D56F10();
          v32 = v31;

          MEMORY[0x193AF28B0](v30, v32);

          v20 = 0x3A72656B63697453;
          v19 = 0xE900000000000020;
        }
      }

      v34 = *(v41 + 16);
      v33 = *(v41 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_19082DBB4((v33 > 1), v34 + 1, 1);
      }

      ++v12;
      *(v41 + 16) = v34 + 1;
      v35 = v41 + 16 * v34;
      *(v35 + 32) = v20;
      *(v35 + 40) = v19;
      if (v11 == v12)
      {

        v3 = MEMORY[0x1E69E7CC0];
        v4 = v40;
        goto LABEL_2;
      }
    }
  }

  __break(1u);
LABEL_44:
  result = sub_190D58510();
  __break(1u);
  return result;
}

void sub_190829404()
{
  v1 = sub_190D51C00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0;
  v5 = sub_19098B380();
  v6 = [v5 indexPathsForVisibleItems];

  v7 = sub_190D57180();
  v15 = *(v7 + 16);
  if (v15)
  {
    v8 = 0;
    v9 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = 0x8000000190E5AC10;
    v10 = (v2 + 8);
    while (v8 < *(v7 + 16))
    {
      (*(v2 + 16))(v4, v9 + *(v2 + 72) * v8, v1);
      v11 = sub_19098B4C0();
      sub_190D533E0();

      if (v18)
      {
        if (v17 == 0xD00000000000001BLL && v18 == v14)
        {

          (*v10)(v4, v1);
LABEL_13:

          return;
        }

        v12 = sub_190D58760();

        (*v10)(v4, v1);
        if (v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        (*v10)(v4, v1);
      }

      if (v15 == ++v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
  }
}

void *sub_190829658(uint64_t a1, unint64_t a2)
{
  v3 = sub_1908296A4(a1, a2);
  sub_1908297D4(&unk_1F0400BF0);
  return v3;
}

void *sub_1908296A4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_190AC2DF0(v5, 0);
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

  result = sub_190D58340();
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
        v10 = sub_190D57050();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_190AC2DF0(v10, 0);
        result = sub_190D58290();
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

uint64_t sub_1908297D4(uint64_t result)
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

  result = sub_1908298C0(result, v11, 1, v3);
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

char *sub_1908298C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53BC0, &unk_190DD5BB0);
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

unint64_t sub_1908299B4()
{
  result = qword_1EAD53BA8;
  if (!qword_1EAD53BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53BA8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_190829A4C(void *a1)
{
  type metadata accessor for TapbackPickerCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_190D56ED0();
  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v3];

  v5 = CKFrameworkBundle(v4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_190D56ED0();
    v8 = sub_190D56ED0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    if (!v9)
    {
      sub_190D56F10();
      v9 = sub_190D56ED0();
    }

    [a1 setAccessibilityLabel_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for DynamicClockRepresentable(uint64_t a1)
{
  result = qword_1EAD53BD0;
  if (!qword_1EAD53BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}