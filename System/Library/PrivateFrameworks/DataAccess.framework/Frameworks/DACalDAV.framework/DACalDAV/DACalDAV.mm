uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{

  return objc_opt_class();
}

void sub_2484B83A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v18 = objc_begin_catch(a1);
      v19 = DALoggingwithCategory();
      v20 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = [v17 accountID];
        LODWORD(buf) = 138543618;
        *(&buf + 4) = v21;
        WORD6(buf) = 2112;
        *(&buf + 14) = v18;
        _os_log_impl(&dword_2484B2000, v19, v20, "Caught an exception while trying to get the calendars for account %{public}@: %@", &buf, 0x16u);
      }

      objc_end_catch();
      JUMPOUT(0x2484B82D4);
    }

    objc_begin_catch(a1);
    JUMPOUT(0x2484B82D8);
  }

  _Unwind_Resume(a1);
}

id getREMStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMStoreClass_softClass;
  v7 = getREMStoreClass_softClass;
  if (!getREMStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getREMStoreClass_block_invoke;
    v3[3] = &unk_278F17668;
    v3[4] = &v4;
    __getREMStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2484BD02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2484BDF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2484BE8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_2484C0118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMStoreClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ReminderKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278F17688;
    v5 = 0;
    ReminderKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    __getREMStoreClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("REMStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMStoreClass_block_invoke_cold_1();
  }

  getREMStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2484C1F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2484C2054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *CalDAVURLHashCallback(void *result)
{
  if (result)
  {
    v1 = [result absoluteString];
    v2 = [v1 length];
    if (v2 < 0x61)
    {
      v3 = v1;
    }

    else
    {
      v3 = [v1 substringFromIndex:v2 - 96];
    }

    v4 = v3;
    v5 = [v3 hash];

    return v5;
  }

  return result;
}

uint64_t createPath(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v2 fileExistsAtPath:v1 isDirectory:0])
  {
    v3 = 1;
  }

  else
  {
    v7 = 0;
    v3 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v7];
    v4 = v7;
    v5 = v4;
    if ((v3 & 1) == 0)
    {
      NSLog(&cfstr_CanTCreatePath.isa, v1, v4);
    }
  }

  return v3;
}

uint64_t checkOrCreatePath(void *a1)
{
  v1 = MEMORY[0x277CCAA00];
  v2 = a1;
  v3 = [v1 defaultManager];
  v4 = [v2 stringByExpandingTildeInPath];

  v8 = 0;
  if (![v3 fileExistsAtPath:v4 isDirectory:&v8] || v8 != 1)
  {
    v6 = [v4 stringByDeletingLastPathComponent];
    if (checkOrCreatePath(v6))
    {
      v5 = [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (([v3 isWritableFileAtPath:v4] & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = 1;
LABEL_9:

  return v5;
}

id generateFilenameForUID(uint64_t a1)
{
  v1 = CalGetRealUIDFromRecurrenceUID();
  if ([v1 length])
  {
    v2 = [v1 stringByAppendingString:@".ics"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *getStringUUID()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v2 = CFUUIDCreateString(v0, v1);
  CFRelease(v1);

  return v2;
}

uint64_t RecordCalendarDiagnostics(uint64_t a1, uint64_t a2)
{
  if (RecordCalendarDiagnostics_onceToken != -1)
  {
    RecordCalendarDiagnostics_cold_1();
  }

  return RecordCalendarDiagnostics_cachedRecordCalendarDiagnostics;
}

uint64_t __RecordCalendarDiagnostics_block_invoke()
{
  result = DAWeakLinkClass();
  RecordCalendarDiagnostics_cachedRecordCalendarDiagnostics = result != 0;
  return result;
}

void sub_2484D7D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 48));
  _Unwind_Resume(a1);
}

void sub_2484D82BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_2484D89A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

BOOL stringLooksLikeAUUID(void *a1)
{
  v1 = MEMORY[0x277CCAD78];
  v2 = a1;
  v3 = [[v1 alloc] initWithUUIDString:v2];

  return v3 != 0;
}

void sub_2484D9A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_2484DA828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_2484DCA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_2484DE874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 48));
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v34 - 160));
  _Unwind_Resume(a1);
}

void sub_2484E0EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _calDAVCalendarServerInviteStatusFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CF7058]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7060]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7068]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7070]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7078]])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _calDAVCalendarServerAccessLevelFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CF7088]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7090]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CF7098]])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __getREMStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MobileCalDAVAccount.m" lineNumber:62 description:{@"Unable to find class %s", "REMStore"}];

  __break(1u);
}

void __getREMStoreClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MobileCalDAVAccount.m" lineNumber:61 description:{@"%s", *a1}];

  __break(1u);
}