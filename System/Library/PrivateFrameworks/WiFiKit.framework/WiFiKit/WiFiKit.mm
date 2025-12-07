uint64_t WFCurrentLogLevel(uint64_t a1, uint64_t a2)
{
  if (WFIsInternalInstall___internalInstallOnceToken != -1)
  {
    WFCurrentLogLevel_cold_1();
  }

  if ((WFIsInternalInstall___internalInstall & 1) != 0 || __extraLoggingEnabled == 1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

id WFLogForCategory(unint64_t a1)
{
  if (WFLogForCategory_onceToken != -1)
  {
    WFLogForCategory_cold_1();
  }

  v2 = MEMORY[0x277D86220];
  v3 = MEMORY[0x277D86220];
  if (a1 <= 8)
  {
    v2 = *off_279EBE280[a1];
  }

  return v2;
}

uint64_t OSLogForWFLogLevel(unint64_t a1)
{
  v1 = 0x201011000uLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

float WFScaleRSSI(uint64_t a1)
{
  v1 = a1 + 77.5;
  v2 = fabsf(sqrtf((v1 * v1) + 450.0));
  return (v1 / (v2 + v2)) + 0.5;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, v9, a4, va, 0x16u);
}

void sub_273ED66E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getW5ClientClass_block_invoke(uint64_t a1)
{
  WiFiVelocityLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("W5Client");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getW5ClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getW5ClientClass_block_invoke_cold_1();
    WiFiVelocityLibrary();
  }
}

void WiFiVelocityLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!WiFiVelocityLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __WiFiVelocityLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279EBCDA8;
    v3 = 0;
    WiFiVelocityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!WiFiVelocityLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __WiFiVelocityLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  WiFiVelocityLibraryCore_frameworkLibrary = result;
  return result;
}

void __getW5LogItemRequestClass_block_invoke(uint64_t a1)
{
  WiFiVelocityLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("W5LogItemRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getW5LogItemRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getW5LogItemRequestClass_block_invoke_cold_1();
    [(WFSaveSettingsOperation *)v2 dealloc];
  }
}

void sub_273ED71C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);

  _os_log_impl(a1, v39, v38, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3()
{

  return OSLogForWFLogLevel(1uLL);
}

BOOL OUTLINED_FUNCTION_4()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

void sub_273EDA568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273EDAE44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void _WiFiDeviceClientAssociationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 _joinComplete:a4 userInfo:a3 network:a2];
  }

  else
  {
    v9 = WFLogForCategory(5uLL);
    v10 = OSLogForWFLogLevel(1uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) && v9 && os_log_type_enabled(v9, v11))
    {
      v13 = 136315394;
      v14 = "_WiFiDeviceClientAssociationCallback";
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_273ECD000, v9, v11, "%s: refcon is not of type WFEnterpriseJoinOperation %{public}@", &v13, 0x16u);
    }
  }
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, v9, a4, va, 2u);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, v9, a4, va, 2u);
}

__CFString *stringForIpv6LinkLocalAddress(void *a1)
{
  v1 = a1;
  if ([v1 length] == 16)
  {
    if ([v1 length] >= 2)
    {
      v3 = 0;
      v4 = 0;
      v5 = &stru_2882E4AD8;
      do
      {
        v6 = [v1 subdataWithRange:{v3, 2}];
        v7 = [v6 bytes];
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x", *v7, v7[1]];
        if ([(__CFString *)v8 isEqualToString:@"0000"])
        {

          v8 = @"0";
        }

        if (v4 == ([v1 length] >> 1) - 1)
        {
          v9 = @"%@%@";
        }

        else
        {
          v9 = @"%@%@:";
        }

        v2 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v5, v8];

        ++v4;
        v3 += 2;
        v5 = v2;
      }

      while (v4 < [v1 length] >> 1);
    }

    else
    {
      v2 = &stru_2882E4AD8;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void _WiFiManagerClientServerRestartedCallback(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    v7 = 136315394;
    v8 = "_WiFiManagerClientServerRestartedCallback";
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_273ECD000, v3, v5, "%s: stateMonitor %@", &v7, 0x16u);
  }

  [v2 _updateState];
}

void _WiFiManagerDeviceClientCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v9 = 136315394;
    v10 = "_WiFiManagerDeviceClientCallback";
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s device is available %@", &v9, 0x16u);
  }

  [v4 _updateWithDeviceAttachment:a2];
  [v4 _updateState];
}

void _WiFiDeviceClientPowerCallback(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    v7 = 136315394;
    v8 = "_WiFiDeviceClientPowerCallback";
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_273ECD000, v3, v5, "%s: stateMonitor %@", &v7, 0x16u);
  }

  [v2 _updateState];
}

void _WiFiDeviceLinkExtendedCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 136315394;
    v9 = "_WiFiDeviceLinkExtendedCallback";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: stateMonitor %@", &v8, 0x16u);
  }

  [v3 _updateState];
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, v9, a4, va, 2u);
}

__CFString *WFAssociationErrorCodeToString(unint64_t a1)
{
  if (a1 > 0x15)
  {
    return @"Unknown Error";
  }

  else
  {
    return off_279EBD028[a1];
  }
}

void sub_273EE1F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273EE20D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_273EE381C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273EE98D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273EE9E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273EEA20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273EEA8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273EEAD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_273EEB5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273EEC298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_273EEE3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273EEEE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 64));
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v28 - 152));
  objc_destroyWeak((v28 - 144));
  _Unwind_Resume(a1);
}

void sub_273EEFC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20, id a21)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_273EF0960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_273EF11BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273EF26FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_273EF3044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273EF5D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, id a30)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a30);
  _Unwind_Resume(a1);
}

void sub_273EF6534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273EFBBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_273EFC77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_273F00FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, v9, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_0(void *a1, const char *a2)
{

  return [a1 setOverrideIssue:1];
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return OSLogForWFLogLevel(1uLL);
}

BOOL OUTLINED_FUNCTION_9()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_10()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL NetworkRefIsEqualToNetwork(const void *a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    [v3 attributes];
    v6 = WiFiNetworkCreate();
    v7 = CFEqual(v6, a1);
    v8 = [[WFNetworkScanRecord alloc] initWithNetworkRef:a1];
    v9 = [(WFNetworkScanRecord *)v8 isRandomMACAddressEnabled];
    v10 = v9 ^ [v4 isRandomMACAddressEnabled];
    if (v10 == 1)
    {
      v11 = WFLogForCategory(0);
      v12 = OSLogForWFLogLevel(3uLL);
      v13 = v12;
      if (WFCurrentLogLevel(v12, v14) >= 3 && v11 && os_log_type_enabled(v11, v13))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_273ECD000, v11, v13, "New network's random address enable status changed!", &v39, 2u);
      }
    }

    v15 = [(WFNetworkScanRecord *)v8 randomMACAddress];
    if (v15)
    {
    }

    else
    {
      v16 = [v4 randomMACAddress];

      if (!v16)
      {
        goto LABEL_18;
      }
    }

    v17 = [(WFNetworkScanRecord *)v8 randomMACAddress];
    v18 = [v4 randomMACAddress];
    v19 = [v17 isEqualToString:v18];

    if ((v19 & 1) == 0)
    {
      v20 = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(3uLL);
      v22 = v21;
      if (WFCurrentLogLevel(v21, v23) >= 3 && v20 && os_log_type_enabled(v20, v22))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_273ECD000, v20, v22, "New network's random address changed!", &v39, 2u);
      }

      LOBYTE(v10) = 1;
    }

LABEL_18:
    v24 = [(WFNetworkScanRecord *)v8 privateAddressConfig];
    if (v24)
    {
    }

    else
    {
      v25 = [v4 privateAddressConfig];

      if (!v25)
      {
        goto LABEL_22;
      }
    }

    v26 = [(WFNetworkScanRecord *)v8 privateAddressConfig];
    v27 = [v4 privateAddressConfig];
    v28 = [v26 isEqual:v27];

    if ((v28 & 1) == 0)
    {
      v31 = WFLogForCategory(0);
      v32 = OSLogForWFLogLevel(1uLL);
      v33 = v32;
      if (WFCurrentLogLevel(v32, v34) && v31)
      {
        v35 = v31;
        if (os_log_type_enabled(v35, v33))
        {
          v36 = [v4 privateAddressConfig];
          v37 = [(WFNetworkScanRecord *)v8 privateAddressConfig];
          v39 = 138412546;
          v40 = v36;
          v41 = 2112;
          v42 = v37;
          _os_log_impl(&dword_273ECD000, v35, v33, "new network private address config is not equal: %@ -> %@", &v39, 0x16u);
        }
      }

      goto LABEL_34;
    }

LABEL_22:
    if (v7)
    {
      v29 = v10;
    }

    else
    {
      v29 = 1;
    }

    if ((v29 & 1) == 0)
    {
      Type = WiFiNetworkGetType();
      v5 = WiFiNetworkGetType() == Type;
      if (!v6)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

LABEL_34:
    v5 = 0;
    if (!v6)
    {
LABEL_36:

      goto LABEL_37;
    }

LABEL_35:
    CFRelease(v6);
    goto LABEL_36;
  }

LABEL_37:

  return v5;
}

void sub_273F05448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_273F06D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_273F09C7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_273F0A75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273F0B3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_273F0BA34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_273F0BC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273F0BFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273F0C3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273F0C928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273F0ED94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_WFControlCenterActionStringForAction(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_279EBDCB0[a1];
  }
}

void sub_273F114FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_273F11B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_273F11DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_273F121A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_273F140A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

uint64_t WFWiFiNetworkRefIsEnterprise(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:12];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:13];
  if (!WiFiNetworkGetProperty())
  {
    if (!WiFiNetworkGetProperty())
    {
      WiFiNetworkGetProperty();
      v11 = 0;
      goto LABEL_14;
    }

    v15 = v6;
    v9 = WiFiNetworkGetProperty();
    v10 = [v9 objectForKey:@"IE_KEY_WPA_AUTHSELS"];
    if (([v10 containsObject:v1] & 1) == 0)
    {
      v13 = v10;
      v14 = v2;
LABEL_17:
      v11 = [v13 containsObject:v14] ^ 1;
      goto LABEL_13;
    }

LABEL_12:
    v11 = 1;
    goto LABEL_13;
  }

  v15 = v6;
  v9 = WiFiNetworkGetProperty();
  v10 = [v9 objectForKey:@"IE_KEY_RSN_AUTHSELS"];
  if ([v10 containsObject:v1] & 1) != 0 || (objc_msgSend(v10, "containsObject:", v7) & 1) != 0 || (objc_msgSend(v10, "containsObject:", v8))
  {
    goto LABEL_12;
  }

  if (([v10 containsObject:v2] & 1) == 0 && (objc_msgSend(v10, "containsObject:", v3) & 1) == 0 && (objc_msgSend(v10, "containsObject:", v4) & 1) == 0 && (objc_msgSend(v10, "containsObject:", v5) & 1) == 0)
  {
    v13 = v10;
    v14 = v15;
    goto LABEL_17;
  }

  v11 = 0;
LABEL_13:

  v6 = v15;
LABEL_14:

  return v11;
}

uint64_t OUTLINED_FUNCTION_6_1(void *a1, const char *a2)
{

  return [a1 copyWithZone:v2];
}

void sub_273F169AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_273F16D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, v9, a4, va, 0xCu);
}

void sub_273F182A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_273F19110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void _WiFiManagerNotificationCallback(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a7;
  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(3uLL);
  v14 = v13;
  if (WFCurrentLogLevel(v13, v15) >= 3 && v12 && os_log_type_enabled(v12, v14))
  {
    *buf = 136315650;
    *&buf[4] = "_WiFiManagerNotificationCallback";
    *&buf[12] = 1024;
    *&buf[14] = a4;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    _os_log_impl(&dword_273ECD000, v12, v14, "%s: type %d, id %d", buf, 0x18u);
  }

  switch(a4)
  {
    case 3:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v31 = 0;
      if (a5)
      {
        *(*&buf[8] + 24) = WiFiNetworkCreateCopy();
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = ___WiFiManagerNotificationCallback_block_invoke_3;
      v18[3] = &unk_279EBE040;
      v21 = a3;
      v19 = v11;
      v20 = buf;
      dispatch_async(MEMORY[0x277D85CD0], v18);

      goto LABEL_18;
    case 2:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v31 = 0;
      if (a5)
      {
        *(*&buf[8] + 24) = WiFiNetworkCreateCopy();
      }

      if (a6)
      {
        v16 = [a6 copy];
      }

      else
      {
        v16 = 0;
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = ___WiFiManagerNotificationCallback_block_invoke_2;
      v22[3] = &unk_279EBE018;
      v26 = a3;
      v24 = v16;
      v25 = buf;
      v23 = v11;
      v17 = v16;
      dispatch_async(MEMORY[0x277D85CD0], v22);

LABEL_18:
      _Block_object_dispose(buf, 8);
      break;
    case 0:
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___WiFiManagerNotificationCallback_block_invoke;
      block[3] = &unk_279EBDFF0;
      v28 = v11;
      v29 = a3;
      dispatch_async(MEMORY[0x277D85CD0], block);

      break;
  }
}

void _WiFiManagerDeviceClientCallback_0(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315394;
    v14 = "_WiFiManagerDeviceClientCallback";
    v15 = 2112;
    v16 = a2;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s device is available %@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___WiFiManagerDeviceClientCallback_block_invoke;
  v10[3] = &unk_279EBCFB8;
  v11 = v4;
  v12 = a2;
  v9 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void _WiFiManagerClientManagedAppleIDCabllack(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___WiFiManagerClientManagedAppleIDCabllack_block_invoke;
  v6[3] = &unk_279EBDF00;
  v7 = v4;
  v8 = a2;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void sub_273F1A918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273F1BFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *__WFAssociationStateToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279EBE090[a1];
  }
}

__CFString *__WFAssociationOriginatorToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279EBE078[a1];
  }
}

void sub_273F22C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *WFCaptiveEventToString(uint64_t a1)
{
  v1 = @"Ended";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Started";
  }
}

void sub_273F243BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273F263D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *WFWiFiStateMonitorStringForState(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_279EBE1C0[a1];
  }
}

void OUTLINED_FUNCTION_3_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v13, v12, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_4_3(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 addObserver:v5 selector:a4 name:a5 object:0];
}

id getW5DiagnosticsTestRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getW5DiagnosticsTestRequestClass_softClass;
  v7 = getW5DiagnosticsTestRequestClass_softClass;
  if (!getW5DiagnosticsTestRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getW5DiagnosticsTestRequestClass_block_invoke;
    v3[3] = &unk_279EBCD88;
    v3[4] = &v4;
    __getW5DiagnosticsTestRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_273F298FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273F29EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273F2A720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273F2AF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getW5ClientClass_block_invoke_0(uint64_t a1)
{
  WiFiVelocityLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("W5Client");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getW5ClientClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getW5ClientClass_block_invoke_cold_1();
    WiFiVelocityLibrary_0();
  }
}

void WiFiVelocityLibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!WiFiVelocityLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __WiFiVelocityLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279EBE268;
    v3 = 0;
    WiFiVelocityLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!WiFiVelocityLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __WiFiVelocityLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  WiFiVelocityLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getW5DiagnosticsTestRequestClass_block_invoke(uint64_t a1)
{
  WiFiVelocityLibrary_0();
  result = objc_getClass("W5DiagnosticsTestRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getW5DiagnosticsTestRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getW5DiagnosticsTestRequestClass_block_invoke_cold_1();
    return [(WFSetupViewProvider *)v3 credentialsViewControllerWithContext:v4, v5];
  }

  return result;
}

uint64_t __WFLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.wifikit", "general");
  v1 = _WFLogGeneral;
  _WFLogGeneral = v0;

  v2 = os_log_create("com.apple.wifikit", "alertprovider");
  v3 = _WFLogAlertProvider;
  _WFLogAlertProvider = v2;

  v4 = os_log_create("com.apple.wifikit", "captive");
  v5 = _WFLogCaptive;
  _WFLogCaptive = v4;

  v6 = os_log_create("com.apple.wifikit", "picker");
  v7 = _WFLogPicker;
  _WFLogPicker = v6;

  v8 = os_log_create("com.apple.wifikit", "personalhotspot");
  v9 = _WFLogPersonalHotspot;
  _WFLogPersonalHotspot = v8;

  v10 = os_log_create("com.apple.wifikit", "association");
  v11 = _WFLogAssociation;
  _WFLogAssociation = v10;

  v12 = os_log_create("com.apple.wifikit", "scanning");
  v13 = _WFLogScanning;
  _WFLogScanning = v12;

  v14 = os_log_create("com.apple.wifikit", "controlcenter");
  v15 = _WFLogControlCenter;
  _WFLogControlCenter = v14;

  _WFLogPrivateAddress = os_log_create("com.apple.wifikit", "private-address");

  return MEMORY[0x2821F96F8]();
}

uint64_t __WFIsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  WFIsInternalInstall___internalInstall = result;
  return result;
}

void sub_273F2BFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273F2EDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_WFScanningStateToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_279EBE378[a1];
  }
}

void sub_273F303D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 40));
  _Unwind_Resume(a1);
}

id WFSplitChannelsBetweenBands(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v1;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 flags];
        v13 = v3;
        if ((v12 & 8) == 0)
        {
          v14 = [v11 flags];
          v13 = v4;
          if ((v14 & 0x10) == 0)
          {
            v15 = [v11 flags];
            v13 = v5;
            if ((v15 & 0x2000) == 0)
            {
              continue;
            }
          }
        }

        [v13 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v8);
  }

  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 comparator:&__block_literal_global_7];
  v27 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  [v3 sortUsingDescriptors:v17];

  [v2 addObject:v3];
  if ([v4 count])
  {
    v26 = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    [v4 sortUsingDescriptors:v18];

    [v2 addObject:v4];
  }

  if ([v5 count])
  {
    v25 = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    [v5 sortUsingDescriptors:v19];

    [v2 addObject:v5];
  }

  return v2;
}

void sub_273F312FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273F32440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __WFSplitChannelsBetweenBands_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 channel];
  if (v6 >= [v5 channel])
  {
    v8 = [v4 channel];
    v7 = v8 > [v5 channel];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_273F34778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_273F361A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void _WiFiDeviceClientAssociationCallback_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 _joinComplete:a4 userInfo:a3 network:a2];
  }

  else
  {
    v9 = WFLogForCategory(5uLL);
    v10 = OSLogForWFLogLevel(1uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) && v9 && os_log_type_enabled(v9, v11))
    {
      v13 = 136315394;
      v14 = "_WiFiDeviceClientAssociationCallback";
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_273ECD000, v9, v11, "%s: refcon is not of type WFJoinOperation %{public}@", &v13, 0x16u);
    }
  }
}

void sub_273F3758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *WFPrivateAddressConfigDisableReasonToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_279EBE430 + a1);
  }
}

CFStringRef WFCopyProcessIdentifier()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle && (Identifier = CFBundleGetIdentifier(MainBundle)) != 0)
  {
    v2 = Identifier;
    CFRetain(Identifier);
    return v2;
  }

  else
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = getprogname();
    v6 = getpid();
    return CFStringCreateWithFormat(v4, 0, @"%s (%d)", v5, v6);
  }
}

uint64_t WFValidPasswordForSecurityMode(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
  v6 = [v5 invertedSet];

  v7 = [v3 rangeOfCharacterFromSet:v6];
  if ((a1 - 4) <= 0x3C && ((1 << (a1 - 4)) & 0x1000000000000011) != 0 || a1 == 520 || a1 == 512)
  {
    v9 = v4 == 64 && v7 == 0x7FFFFFFFFFFFFFFFLL;
    v10 = (v4 - 8) < 0x38 || v9;
  }

  else
  {
    v10 = v4 != 0;
  }

  return v10;
}

uint64_t WFSecurityModeRequiresPasswordOnly(unint64_t a1)
{
  v1 = (a1 >> 3) & 1;
  if (a1 == 64 || a1 == 512)
  {
    LODWORD(v1) = 1;
  }

  if (a1 == 256)
  {
    LODWORD(v1) = 1;
  }

  if (a1 == 4)
  {
    LODWORD(v1) = 1;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

BOOL WFSecurityModeIsEnterprise(uint64_t a1)
{
  v1 = a1 == 1024;
  if (a1 == 32)
  {
    v1 = 1;
  }

  return a1 == 16 || v1;
}

CFTypeRef WFCreateSecTrustFromCertificateChain(void *a1)
{
  v1 = a1;
  v2 = WFCreateSecTrustFromCertificateChain___eapLibraryPointer;
  if (!WFCreateSecTrustFromCertificateChain___eapLibraryPointer)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/EAP8021X.framework/EAP8021X", 1);
    WFCreateSecTrustFromCertificateChain___eapLibraryPointer = v2;
  }

  if (v2)
  {
    v3 = WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy = dlsym(v2, "EAPSecPolicyCopy");
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v1 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *MEMORY[0x277CBECE8];
    do
    {
      v10 = SecCertificateCreateWithData(v9, [v1 objectAtIndex:v8]);
      if (v10)
      {
        v11 = v10;
        [v4 addObject:v10];
        CFRelease(v11);
      }

      cf = 0;
      if (WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy)
      {
        (WFCreateSecTrustFromCertificateChain___eapSecPolicyCopy)(&cf);
        if (cf)
        {
          [v5 addObject:?];
          CFRelease(cf);
        }
      }

      ++v8;
    }

    while (v7 != v8);
  }

  if ([v4 count])
  {
    cf = 0;
    if (SecTrustCreateWithCertificates(v4, v5, &cf))
    {
      v12 = 0;
    }

    else
    {
      v12 = cf;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t WFWiFiSecurityModeFromOtherSecurityMode(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_273F75C70[a1 - 1];
  }
}

id WFWiFiLocalizedStringFromSecurityMode(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.framework.WiFiKitUI"];
  v3 = v2;
  v4 = @"kWFLocSecurityWEPTitle";
  if (a1 <= 63)
  {
    if (a1 <= 7)
    {
      if (a1 == 1)
      {
        goto LABEL_30;
      }

      if (a1 != 2)
      {
        if (a1 == 4)
        {
          v4 = @"kWFLocSecurityWPAPersonalTitle";
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      v4 = @"kWFLocSecurityDynamicWEPTitle";
      goto LABEL_30;
    }

    switch(a1)
    {
      case 8:
        v4 = @"kWFLocSecurityWPA2PersonalTitle";
        goto LABEL_30;
      case 16:
        v4 = @"kWFLocSecurityWPAEnterpriseTitle";
        goto LABEL_30;
      case 32:
LABEL_22:
        v4 = @"kWFLocSecurityWPA2EnterpriseTitle";
        goto LABEL_30;
    }

LABEL_19:
    v4 = @"kWFLocSecurityNoneTitle";
    goto LABEL_30;
  }

  if (a1 <= 511)
  {
    switch(a1)
    {
      case 64:
        v4 = @"kWFLocSecurityWAPITitle";
        break;
      case 128:
        v4 = @"kWFLocSecurityWAPIEnterpriseTitle";
        break;
      case 256:
        goto LABEL_30;
      default:
        goto LABEL_19;
    }

    goto LABEL_30;
  }

  if (a1 > 1023)
  {
    if (a1 == 1024)
    {
      v4 = @"kWFLocSecurityWPA3EnterpriseTitle";
      goto LABEL_30;
    }

    if (a1 == 1075)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (a1 != 512)
  {
    if (a1 == 520)
    {
      v4 = @"kWFLocSecurityWPA2WPA3PersonalTitle";
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v4 = @"kWFLocSecurityWPA3PersonalTitle";
LABEL_30:
  v5 = [v2 localizedStringForKey:v4 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

  return v5;
}

__CFString *WFStringFromWFSecurityMode(uint64_t a1)
{
  if (a1 <= 63)
  {
    v1 = @"WPA Enterprise";
    v10 = @"WPA2 Enterprise";
    if (a1 != 32)
    {
      v10 = 0;
    }

    if (a1 != 16)
    {
      v1 = v10;
    }

    v11 = @"WPA Personal";
    v12 = @"WPA2 Personal";
    if (a1 != 8)
    {
      v12 = 0;
    }

    if (a1 != 4)
    {
      v11 = v12;
    }

    if (a1 <= 15)
    {
      v1 = v11;
    }

    v5 = @"Open";
    v13 = @"WEP";
    v14 = @"LEAP";
    if (a1 != 2)
    {
      v14 = 0;
    }

    if (a1 != 1)
    {
      v13 = v14;
    }

    if (a1)
    {
      v5 = v13;
    }

    v9 = a1 <= 3;
  }

  else
  {
    v1 = @"Any EAP Encryption";
    v2 = @"OWE";
    if (a1 != 2048)
    {
      v2 = 0;
    }

    if (a1 != 1075)
    {
      v1 = v2;
    }

    v3 = @"WPA3 Transition";
    v4 = @"WPA3 Enterprise";
    if (a1 != 1024)
    {
      v4 = 0;
    }

    if (a1 != 520)
    {
      v3 = v4;
    }

    if (a1 <= 1074)
    {
      v1 = v3;
    }

    v5 = @"WEP 40_128";
    v6 = @"WPA3 Personal";
    if (a1 != 512)
    {
      v6 = 0;
    }

    if (a1 != 256)
    {
      v5 = v6;
    }

    v7 = @"WAPI Personal";
    v8 = @"WAPI Enterprise";
    if (a1 != 128)
    {
      v8 = 0;
    }

    if (a1 != 64)
    {
      v7 = v8;
    }

    if (a1 <= 255)
    {
      v5 = v7;
    }

    v9 = a1 <= 519;
  }

  if (v9)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

__CFString *WFStringFromWFSecurityModeExt(uint64_t a1)
{
  v1 = a1;
  if (a1 > 127)
  {
    if (a1 > 1074)
    {
      if (a1 == 1075)
      {
        v2 = @"Any EAP Encryption";
        goto LABEL_27;
      }

      if (a1 == 2048)
      {
        v2 = @"OWE";
        goto LABEL_27;
      }
    }

    else
    {
      if (a1 == 128)
      {
        v2 = @"WAPI Enterprise";
        goto LABEL_27;
      }

      if (a1 == 256)
      {
        v2 = @"WEP 40_128";
        goto LABEL_27;
      }
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = @"LEAP";
      goto LABEL_27;
    }

    if (a1 == 64)
    {
      v2 = @"WAPI Personal";
      goto LABEL_27;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = @"Open";
      goto LABEL_27;
    }

    if (a1 == 1)
    {
      v2 = @"WEP";
      goto LABEL_27;
    }
  }

  v3 = [MEMORY[0x277CCAB68] string];
  v2 = v3;
  if ((v1 & 0x400) != 0)
  {
    [(__CFString *)v3 appendString:@"'WPA3 Enterprise'"];
    if ((v1 & 0x20) == 0)
    {
LABEL_22:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }
  }

  else if ((v1 & 0x20) == 0)
  {
    goto LABEL_22;
  }

  [(__CFString *)v2 appendString:@"'WPA2 Enterprise'"];
  if ((v1 & 0x10) == 0)
  {
LABEL_23:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_32:
  [(__CFString *)v2 appendString:@"'WPA Enterprise'"];
  if ((v1 & 0x200) == 0)
  {
LABEL_24:
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  [(__CFString *)v2 appendString:@"'WPA3 Personal'"];
  if ((v1 & 8) == 0)
  {
LABEL_25:
    if ((v1 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_34:
  [(__CFString *)v2 appendString:@"'WPA2 Personal'"];
  if ((v1 & 4) != 0)
  {
LABEL_26:
    [(__CFString *)v2 appendString:@"'WPA Personal'"];
  }

LABEL_27:

  return v2;
}

uint64_t WFSSIDIsValid(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 isEqualToString:@" "] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WFAllIdentities(OSStatus *a1)
{
  keys[5] = *MEMORY[0x277D85DE8];
  result = 0;
  v2 = *MEMORY[0x277CDC568];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v2;
  v3 = *MEMORY[0x277CDBEC8];
  keys[2] = *MEMORY[0x277CDC428];
  keys[3] = v3;
  keys[4] = *MEMORY[0x277CDC5D0];
  v4 = *MEMORY[0x277CBED28];
  values[0] = *MEMORY[0x277CDC240];
  values[1] = v4;
  values[2] = *MEMORY[0x277CDC430];
  values[3] = @"com.apple.identities";
  values[4] = v4;
  v5 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = SecItemCopyMatching(v5, &result);
  CFRelease(v5);
  if (v6 == -25300)
  {
LABEL_6:
    v7 = 0;
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v6)
  {
    NSLog(&cfstr_SStatusLd.isa, "WFAllIdentities", a1);
    goto LABEL_6;
  }

  v7 = result;
  if (a1)
  {
LABEL_7:
    *a1 = v6;
  }

LABEL_8:

  return v7;
}

uint64_t WFWAPIRootCertificateListCreate(CFTypeRef *a1)
{
  keys[4] = *MEMORY[0x277D85DE8];
  result = 0;
  v2 = *MEMORY[0x277CDC568];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v2;
  v3 = *MEMORY[0x277CDC5D0];
  keys[2] = *MEMORY[0x277CDC428];
  keys[3] = v3;
  v4 = *MEMORY[0x277CBED28];
  values[0] = *MEMORY[0x277CDC230];
  values[1] = v4;
  values[2] = *MEMORY[0x277CDC430];
  values[3] = v4;
  v5 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = SecItemCopyMatching(v5, &result);
  CFRelease(v5);
  if (v6 != -25300)
  {
    if (v6)
    {
      NSLog(&cfstr_SStatusLd.isa, "WFWAPIRootCertificateListCreate", v6);
    }

    else
    {
      *a1 = result;
    }
  }

  return v6;
}

uint64_t WFWAPIIdentityListCreate(__CFArray **a1, __CFArray **a2)
{
  keys[5] = *MEMORY[0x277D85DE8];
  result = 0;
  v4 = *MEMORY[0x277CDC120];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v4;
  v5 = *MEMORY[0x277CDC428];
  keys[2] = *MEMORY[0x277CDC558];
  keys[3] = v5;
  keys[4] = *MEMORY[0x277CDC5D0];
  values[0] = *MEMORY[0x277CDC238];
  values[1] = @"com.apple.managedconfiguration.wapi-identity";
  v6 = *MEMORY[0x277CDC430];
  v31 = *MEMORY[0x277CBED28];
  v32 = v6;
  v33 = v31;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = SecItemCopyMatching(v8, &result);
  CFRelease(v8);
  if (v9 || !result)
  {
    if (v9 == -25300)
    {
      return v9;
    }

LABEL_24:
    NSLog(&cfstr_SStatusLd.isa, "WFWAPIIdentityListCreate", v9);
    return v9;
  }

  v10 = CFGetTypeID(result);
  if (v10 != CFArrayGetTypeID() || !CFArrayGetCount(result))
  {
    goto LABEL_24;
  }

  if (CFArrayGetCount(result) >= 1)
  {
    v11 = 0;
    Mutable = 0;
    v13 = 0;
    do
    {
      error = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(result, v11);
      if (ValueAtIndex)
      {
        format = kCFPropertyListXMLFormat_v1_0;
        v15 = CFPropertyListCreateWithData(v7, ValueAtIndex, 0, &format, &error);
        if (v15)
        {
          v16 = v15;
          Value = CFDictionaryGetValue(v15, @"certData");
          if (Value)
          {
            v18 = Value;
            v19 = SecCertificateCreateWithData(v7, Value);
            if (v19)
            {
              v20 = v19;
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
              }

              CFArrayAppendValue(Mutable, v20);
              if (!v13)
              {
                v13 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
              }

              *v28 = xmmword_279EBE480;
              v29 = @"certData";
              v21 = CFDictionaryGetValue(v16, @"pemData");
              v27[0] = v20;
              v27[1] = v21;
              v27[2] = v18;
              v22 = CFDictionaryCreate(v7, v28, v27, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFArrayAppendValue(v13, v22);
              CFRelease(v22);
              CFRelease(v20);
            }
          }

          CFRelease(v16);
        }

        else
        {
          NSLog(&cfstr_SCfpropertylis.isa, "WFWAPIIdentityListCreate", error);
        }
      }

      ++v11;
    }

    while (CFArrayGetCount(result) > v11);
    if (!a1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = 0;
  Mutable = 0;
  if (a1)
  {
LABEL_20:
    *a1 = Mutable;
  }

LABEL_21:
  if (a2)
  {
    *a2 = v13;
  }

  return v9;
}

id WFBase64Encode(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v4 = v2 % 3;
  v3 = 4 * (v2 / 3);
  v5 = v3 + 4 * (v2 % 3 != 0);
  if (v5 < v2)
  {
    NSLog(&cfstr_SDataIsTooLarg.isa, "NSString *WFBase64Encode(NSData *__strong)");
LABEL_17:
    v16 = 0;
    goto LABEL_21;
  }

  v6 = v2;
  v7 = malloc_type_malloc(v3 + 4 * (v2 % 3 != 0), 0x100004077774924uLL);
  if (!v7)
  {
    NSLog(&cfstr_SUnableToAlloc.isa, "NSString *WFBase64Encode(NSData *__strong)", v5);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v1 bytes];
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (v11 % 3 == 2)
      {
        v13 = &v8[v10];
        *v13 = WFBase64Encode_DataEncodeTable[((*v9 | (*(v9 - 1) << 8)) >> 6) & 0x3F];
        v10 += 2;
        v13[1] = WFBase64Encode_DataEncodeTable[*v9 & 0x3F];
      }

      else
      {
        if (v11 % 3 == 1)
        {
          v12 = ((*v9 | (*(v9 - 1) << 8)) >> 4) & 0x3F;
        }

        else
        {
          v12 = *v9 >> 2;
        }

        v8[v10++] = WFBase64Encode_DataEncodeTable[v12];
      }

      ++v11;
      ++v9;
      --v6;
    }

    while (v6);
    if (v4 == 2)
    {
      v17 = &v8[v10];
      *v17 = WFBase64Encode_DataEncodeTable[4 * (*(v9 - 1) & 0xF)];
      v15 = v17 + 1;
      goto LABEL_19;
    }

    if (v4 == 1)
    {
      v14 = &v8[v10];
      *v14 = WFBase64Encode_DataEncodeTable[16 * (*(v9 - 1) & 3)];
      v14[1] = 61;
      v15 = v14 + 2;
LABEL_19:
      *v15 = 61;
    }
  }

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v8 length:v5 encoding:1 freeWhenDone:1];
LABEL_21:

  return v16;
}

id WFWAPICertificateBlobString(SecCertificateRef a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    certificateRef = 0;
    v6 = CFGetTypeID(a1);
    if (v6 == SecIdentityGetTypeID())
    {
      v7 = SecIdentityCopyCertificate(a1, &certificateRef) != 0;
      a1 = certificateRef;
      if (!certificateRef)
      {
LABEL_14:
        if (a1)
        {
          CFRelease(a1);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v8 = CFGetTypeID(a1);
      if (v8 != SecCertificateGetTypeID())
      {
LABEL_16:
        v5 = 0;
        goto LABEL_17;
      }

      v7 = 0;
      certificateRef = a1;
    }

    if (v7)
    {
      goto LABEL_14;
    }

    v9 = SecCertificateCopyData(a1);
    v10 = WFBase64Encode(v9);
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
    v12 = [v10 mutableCopy];
    v13 = [v10 length];
    if (v13 >= 0x41)
    {
      v14 = v13 + 1;
      v15 = 64;
      do
      {
        [v12 insertString:@"\n" atIndex:v15];
        v15 += 65;
      }

      while (v15 < v14++);
    }

    [v12 appendString:@"\n"];
    [v12 insertString:@"-----BEGIN ASU CERTIFICATE-----\n" atIndex:0];
    [v12 appendString:@"-----END ASU CERTIFICATE-----\n"];
    [v12 appendString:v11];
    v17 = [v12 rangeOfString:@"-----BEGIN CERTIFICATE-----" options:2];
    [v12 replaceCharactersInRange:v17 withString:{v18, @"-----BEGIN USER CERTIFICATE-----"}];
    v19 = [v12 rangeOfString:@"-----END CERTIFICATE-----" options:2];
    [v12 replaceCharactersInRange:v19 withString:{v20, @"-----END USER CERTIFICATE-----"}];
    v5 = v12;
  }

LABEL_17:

  return v5;
}

unint64_t WFSecurityModeIsWPAPersonal(unint64_t a1)
{
  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return (a1 >> 3) & 1;
  }
}

BOOL WFSecurityModeIsWPAEnterprise(uint64_t a1)
{
  v1 = a1 == 1024;
  if (a1 == 32)
  {
    v1 = 1;
  }

  return a1 == 16 || v1;
}

uint64_t WFSecurityModeIsEquivalentWPA(uint64_t a1, uint64_t a2)
{
  if ((a1 == 4 || (a1 & 8) != 0) && (a2 == 4 || (a2 & 8) != 0) || (a1 == 16 || a1 == 1024 || a1 == 32) && (a2 == 16 || a2 == 32 || a2 == 1024))
  {
    return 1;
  }

  else
  {
    return WFSecurityModeIsEquivalentEAPEncryption(a1, a2);
  }
}

uint64_t WFSecurityModeIsEquivalentEAPEncryption(uint64_t a1, uint64_t a2)
{
  if (a1 == 1075)
  {
    result = 1;
    if (a2 > 1023)
    {
      if (a2 == 1024)
      {
        return result;
      }
    }

    else if (a2 == 16 || a2 == 32)
    {
      return result;
    }

    return 0;
  }

  if (a2 != 1075)
  {
    return 0;
  }

  result = 1;
  if (a1 != 16 && a1 != 32 && a1 != 1024)
  {
    return 0;
  }

  return result;
}

uint64_t WFScanRecordDeleteEnterprisePath()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [@"/var/mobile/Library/Caches/com.apple.wifi/LastEnterpriseNetwork.plist" stringByDeletingLastPathComponent];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [v1 fileExistsAtPath:v0];

  if (v2)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = 0;
    v4 = [v3 removeItemAtPath:@"/var/mobile/Library/Caches/com.apple.wifi/LastEnterpriseNetwork.plist" error:&v11];
    v5 = v11;

    if (v4)
    {
      v2 = 1;
    }

    else
    {
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(3uLL);
      v8 = v7;
      if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_273ECD000, v6, v8, "Removing LastNetworkEnterprise failed with error: %@", buf, 0xCu);
      }

      v2 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v2;
}

__CFString *WFSettingsURLPathForType(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_279EBE498[a1];
  }
}

uint64_t _WFOpenSettingsPathWithPathType(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_279EBE498[a1];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=WIFI&path=%@", v1];
}

void WFOpenSettingsURLWithType(unint64_t a1)
{
  v3 = _WFOpenSettingsPathWithPathType(a1);
  v1 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 openSensitiveURL:v1 withOptions:0];
}

uint64_t WFCompareSecurityModeExt(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1 & 0x430;
  if ((v3 != 0) != ((a2 & 0x430) != 0))
  {
    goto LABEL_4;
  }

  if ((a1 & 0x430) != 0)
  {
    if ((a1 & 0x20) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }

    if ((a1 & 0x20) == (a2 & 0x20))
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    if ((a1 & 0x400) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    if ((a1 & 0x400) == (a2 & 0x400))
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = a1 & 0x20C;
    if ((v3 != 0) != ((a2 & 0x20C) != 0))
    {
LABEL_4:
      if (v3)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    v7 = a1 & 0x200;
    if ((a1 & 0x200 & a2) == 0)
    {
      goto LABEL_36;
    }

    if ((a1 & 0xFFFFFFFFFFFFF9CFLL) == 0)
    {
      return 1;
    }

    if ((a2 & 0xFFFFFFFFFFFFFDFFLL) == 0)
    {
      return -1;
    }

    else
    {
LABEL_36:
      if (v7 == (a2 & 0x200))
      {
        v7 = a1 & 8;
        if (v7 == (a2 & 8))
        {
          if ((a1 & 8) != 0)
          {
            return 0;
          }

          v7 = a1 & 4;
          if (v7 == (a2 & 4))
          {
            v7 = a1 & 1;
            if (v7 == (a2 & 1))
            {
              return 0;
            }
          }
        }
      }

      if (v7)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }
  }
}

BOOL WFIsSecurityModeMatch(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & a1) != 0;
  if (a2 == 512)
  {
    v2 = 0;
  }

  if (a1 == 512)
  {
    v2 = 0;
  }

  return a1 == a2 || v2;
}

uint64_t _WFNetworkUsesSecurityCiphers(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [v9 objectForKeyedSubscript:a2];
  v11 = [v9 objectForKeyedSubscript:v8];

  if (v10)
  {
    v12 = [v7 containsObject:v10];
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = [MEMORY[0x277CBEB98] setWithArray:v11];
    v14 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v12 = [v13 intersectsSet:v14];
  }

LABEL_7:

  return v12;
}

uint64_t WFDetermineNetworkCipherTypeObsolete(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"WPA_IE"];
  v3 = [v1 objectForKey:@"RSN_IE"];

  if (v2 && (_WFNetworkUsesSecurityCiphers(v2, @"IE_KEY_WPA_MCIPHER", @"IE_KEY_WPA_UCIPHERS", &unk_288304FC0) & 1) != 0 || v3 && (_WFNetworkUsesSecurityCiphers(v3, @"IE_KEY_RSN_MCIPHER", @"IE_KEY_RSN_UCIPHERS", &unk_288304FD8) & 1) != 0)
  {
    v4 = 1;
  }

  else if (v2 && (_WFNetworkUsesSecurityCiphers(v2, @"IE_KEY_WPA_MCIPHER", @"IE_KEY_WPA_UCIPHERS", &unk_288304FF0) & 1) != 0 || v3 && _WFNetworkUsesSecurityCiphers(v3, @"IE_KEY_RSN_MCIPHER", @"IE_KEY_RSN_UCIPHERS", &unk_288305008))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *WFConvertEthernetNetworkAddressToString(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%x:%x:%x:%x:%x:%x", *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3], BytePtr[4], BytePtr[5]);

  return v2;
}

void WFErrorLogCurrentCallStackThread(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v17 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_2882E4AD8;
  }

  [MEMORY[0x277CCACC8] callStackSymbols];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    v10 = a2 - 1;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(1uLL);
      v15 = v14;
      if (WFCurrentLogLevel(v14, v16) && v13 && os_log_type_enabled(v13, v15))
      {
        *buf = 138412546;
        v23 = v4;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&dword_273ECD000, v13, v15, "%@%@", buf, 0x16u);
      }

      if (v10 == v8)
      {
        break;
      }

      ++v11;
      ++v8;
      if (v7 == v11)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }
}

void _netServiceCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 ipMonitor];
  if (v4)
  {
    v5 = objc_initWeak(&location, v4);
    v6 = [v4 __wifiServiceID];
    v7 = objc_loadWeakRetained(&location);
    [v7 setServiceID:v6];

    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(3uLL);
    v10 = v9;
    if (WFCurrentLogLevel(v9, v11) >= 3 && v8)
    {
      v12 = v8;
      if (os_log_type_enabled(v12, v10))
      {
        v13 = objc_loadWeakRetained(&location);
        v14 = [v13 serviceID];
        *buf = 136315394;
        v23 = "void _netServiceCallback(SCDynamicStoreRef, CFArrayRef, void *)";
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_273ECD000, v12, v10, "%s- updating service ID %@", buf, 0x16u);
      }
    }

    v15 = objc_loadWeakRetained(&location);
    v16 = [v15 serviceID];
    [v15 monitorNetworkServiceID:v16];

    objc_destroyWeak(&location);
  }

  else
  {
    v17 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(1uLL);
    v19 = v18;
    if (WFCurrentLogLevel(v18, v20) && v17 && os_log_type_enabled(v17, v19))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v17, v19, "callback invoked after object deallocated", buf, 2u);
    }
  }
}

void __ipStoreCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 ipMonitor];
  if (v5)
  {
    v6 = objc_initWeak(&location, v5);
    [v5 _postChangesNotification:a2];

    objc_destroyWeak(&location);
  }

  else
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    v9 = v8;
    if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v7, v9, "callback invoked after object deallocated", buf, 2u);
    }
  }
}

void sub_273F3C794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273F3D11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273F3D80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273F3DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273F3DC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFPropertyListRef OUTLINED_FUNCTION_1_6(CFStringRef key)
{
  v4 = *(v1 + 40);

  return SCDynamicStoreCopyValue(v4, key);
}

CFStringRef OUTLINED_FUNCTION_2_5(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4)
{

  return SCDynamicStoreKeyCreateNetworkServiceEntity(v6, v5, v4, a4);
}

void OUTLINED_FUNCTION_3_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _os_log_impl(a1, v16, v17, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_4_4()
{

  CFRelease(v0);
}

void sub_273F41CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20, id a21)
{
  objc_destroyWeak((v22 + 64));
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_273F43F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273F455D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273F4711C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_273F48FA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, v9, a4, va, 0xCu);
}

void sub_273F4A974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_273F4AB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273F4AE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UserNotificationDidFinish(uint64_t a1, uint64_t a2)
{
  v4 = +[WFUserPromptOperation sharedMapTable];
  v5 = [v4 objectForKey:a1];

  [v5 _notification:a1 didFinishWithResponse:a2];
}

uint64_t netrbInitIfnetTrafficDescriptor(void *a1, uint64_t a2)
{
  if (!a1 || (v4 = MEMORY[0x2743E2B10](), v5 = MEMORY[0x277D86468], v4 != MEMORY[0x277D86468]))
  {
    NETRBErrorLog("metadata is not dictionary object", a2);
    return 0;
  }

  value = xpc_dictionary_get_value(a1, netrbClientLowLatencyFlowParam);
  if (!value || (v9 = value, MEMORY[0x2743E2B10]() != v5))
  {
    NETRBErrorLog("metadata does not contain low latency flow parameter dictionary.", v8);
    return 0;
  }

  v45 = 0uLL;
  v44 = 0uLL;
  v10 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorIpVersion);
  v11 = MEMORY[0x277D864C8];
  if (v10 && (v12 = v10, MEMORY[0x2743E2B10]() == v11))
  {
    v22 = xpc_uint64_get_value(v12);
    v24 = v22;
    if (v22 != 4 && v22 != 96)
    {
      NETRBErrorLog("IP version (%hhu) is not supported or is invalid", v23);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 1u;
      *(a2 + 9) = v22;
    }

    v25 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorLocalIp);
    v26 = MEMORY[0x277D864C0];
    if (v25 && (v27 = v25, MEMORY[0x2743E2B10]() == v26))
    {
      string_ptr = xpc_string_get_string_ptr(v27);
      if (a2)
      {
        *(a2 + 8) |= 4u;
      }
    }

    else
    {
      NETRBInfoLog("local IP is not present or has incorrect type");
      string_ptr = 0;
    }

    v29 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorRemoteIp);
    if (v29 && (v30 = v29, MEMORY[0x2743E2B10]() == v26))
    {
      v31 = xpc_string_get_string_ptr(v30);
      if (a2)
      {
        *(a2 + 8) |= 8u;
      }
    }

    else
    {
      NETRBInfoLog("remote IP is not present or has incorrect type");
      v31 = 0;
    }

    if (v24 == 4)
    {
      if (string_ptr && inet_pton(2, string_ptr, &v45 + 12) != 1 || v31 && inet_pton(2, v31, &v44 + 12) != 1)
      {
        NETRBErrorLog("local or remote IPv4 address is malformed.", v32);
        return 0;
      }

      if (a2)
      {
        *(a2 + 24) = HIDWORD(v45);
        *(a2 + 40) = HIDWORD(v44);
      }
    }

    else
    {
      if (string_ptr && inet_pton(30, string_ptr, &v45) != 1 || v31 && inet_pton(30, v31, &v44) != 1)
      {
        NETRBErrorLog("local or remote IPv6 address is malformed.", v41);
        return 0;
      }

      if (a2)
      {
        v42 = v44;
        *(a2 + 12) = v45;
        *(a2 + 28) = v42;
      }
    }
  }

  else
  {
    NETRBErrorLog("IP version is not present");
  }

  v13 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorIpProtocol);
  if (v13 && (v14 = v13, MEMORY[0x2743E2B10]() == v11))
  {
    v33 = xpc_uint64_get_value(v14);
    if (v33 != 17 && v33 != 6)
    {
      NETRBErrorLog("IP protocol is not supported or is invalid.", v34);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 2u;
      *(a2 + 10) = v33;
    }
  }

  else
  {
    NETRBInfoLog("IP protocol is not present or has incorrect type");
  }

  v15 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorLocalPort);
  if (v15)
  {
    v16 = v15;
    if (MEMORY[0x2743E2B10]() != v11)
    {
LABEL_21:
      NETRBErrorLog("Local port specified does not have UINT64 type.", v17);
      return 0;
    }

    v18 = xpc_uint64_get_value(v16);
    if (v18 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      NETRBErrorLog("Illegal local port %llu", v19);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x10u;
      *(a2 + 44) = bswap32(v18) >> 16;
    }
  }

  else
  {
    NETRBInfoLog("No local port specified.");
  }

  v20 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorRemotePort);
  if (v20)
  {
    v21 = v20;
    if (MEMORY[0x2743E2B10]() != v11)
    {
      goto LABEL_21;
    }

    v39 = xpc_uint64_get_value(v21);
    if (v39 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      NETRBErrorLog("Illegal remote port %llu", v40);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x20u;
      *(a2 + 46) = bswap32(v39) >> 16;
    }
  }

  else
  {
    NETRBErrorLog("No local port specified.");
  }

  v36 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorConnectionIdleTimeout);
  if (v36)
  {
    v37 = v36;
    if (MEMORY[0x2743E2B10]() != v11)
    {
      NETRBErrorLog("Connection idle timeout does not have UINT64 type.", v38);
      return 0;
    }

    if (xpc_uint64_get_value(v37) >= 0x69781)
    {
      NETRBErrorLog("Connection idle timeout exceeds max limit of %u seconds", v43);
      return 0;
    }
  }

  return 1;
}

uint64_t _NETRBNetworkCopy(uint64_t a1, uint64_t a2)
{
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(Instance + 48) = *(a2 + 48);
  *(Instance + 64) = v6;
  *(Instance + 16) = v4;
  *(Instance + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(Instance + 128) = *(a2 + 128);
  *(Instance + 96) = v8;
  *(Instance + 112) = v9;
  *(Instance + 80) = v7;
  *(Instance + 136) = 0;
  *(Instance + 144) = 0;
  v10 = *(a2 + 136);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = (Instance + 136);
      }

      v14 = *v10;
      v12[2] = *(v10 + 2);
      *v12 = v14;
      *v12 = *v13;
      *v13 = v12;
      v10 = *v10;
      v11 = v12;
    }

    while (v10);
  }

  v15 = *(a2 + 144);
  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = (Instance + 144);
      }

      v19 = v15[1];
      *v17 = *v15;
      v17[1] = v19;
      *v17 = *v18;
      *v18 = v17;
      v15 = *v15;
      v16 = v17;
    }

    while (v15);
  }

  return Instance;
}

void *_NETRBClientCreateInternal(NSObject *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 2000;
  v7 = 0;
  if (!NETRBLogCreate(a1, a2))
  {
    if (__NETRBClientGetTypeID_pred != -1)
    {
      _NETRBClientCreateInternal_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    v7 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x218uLL);
      if (a1)
      {
        v7[2] = a1;
        dispatch_retain(a1);
        if (a2)
        {
          v7[3] = _Block_copy(a2);
        }
      }

      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v10 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        if (__NETRBClientGetXpcQueue_predXpc != -1)
        {
          _NETRBClientCreateInternal_cold_3();
        }

        if (__NETRBClientGetXpcQueue___netrbXpcQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___NETRBClientCreateInternal_block_invoke;
          block[3] = &unk_279EBE800;
          block[6] = v7;
          block[7] = __NETRBClientGetXpcQueue___netrbXpcQueue;
          block[4] = &v18;
          block[5] = &v14;
          block[8] = v10;
          block[9] = a4;
          dispatch_sync(v10, block);
          if (*(v19 + 24) == 1 && (v15[3] | 2) == 0x7D2)
          {
            *(v19 + 24) = 0;
          }
        }

        else
        {
          NETRBErrorLog("unable to create XPC queue");
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }

      if ((v19[3] & 1) == 0)
      {
        CFRelease(v7);
        v7 = 0;
      }
    }

    else
    {
      v11 = __error();
      v12 = strerror(*v11);
      NETRBErrorLog("unable to create client object %s", v12);
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v7;
}

void __NETRBClientRemoveFromList(const void *a1)
{
  if (__netrbClientList && CFArrayGetCount(__netrbClientList) >= 1)
  {
    v2 = 0;
    while (CFArrayGetValueAtIndex(__netrbClientList, v2) != a1)
    {
      if (++v2 >= CFArrayGetCount(__netrbClientList))
      {
        return;
      }
    }

    CFArrayRemoveValueAtIndex(__netrbClientList, v2);
    if (!CFArrayGetCount(__netrbClientList))
    {
      NETRBXPCCleanup();
      NETRBEndPointCleanup();
      CFRelease(__netrbClientList);
      __netrbClientList = 0;
    }
  }
}

uint64_t _NETRBClientDestroy(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (a1)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientDestroy_block_invoke;
      block[3] = &unk_279EBE850;
      block[4] = &v9;
      block[5] = &v5;
      block[6] = a1;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
      if (*(v10 + 24) == 1)
      {
        *(v10 + 24) = v6[3] == 2001;
      }
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

uint64_t __NETRBClientValidateClient(_BYTE *a1)
{
  if (!a1)
  {
    NETRBErrorLog("client handler is NULL");
    return 22;
  }

  if (!a1[288])
  {
    return 22;
  }

  if (!__netrbClientList)
  {
    NETRBErrorLog("client list is empty");
    return 22;
  }

  Count = CFArrayGetCount(__netrbClientList);
  if (!Count)
  {
    NETRBErrorLog("client is not added to the list");
    return 22;
  }

  v3 = Count;
  if (Count < 1)
  {
LABEL_13:
    NETRBErrorLog("unknown client");
    return 22;
  }

  v4 = 0;
  while (CFArrayGetValueAtIndex(__netrbClientList, v4) != a1)
  {
    if (v3 == ++v4)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t _NETRBClientStartService(uint64_t a1, char *__s1, int a3, int a4, void *a5)
{
  v68 = 0;
  v69 = &v68;
  v70 = 0x2000000000;
  v71 = 0;
  if (!a1)
  {
    NETRBErrorLog("client handle cannot be NULL", __s1);
    goto LABEL_23;
  }

  if ((a3 - 205) <= 0xFFFFFFFA)
  {
    NETRBErrorLog("incorrect operation mode %d", __s1);
    goto LABEL_23;
  }

  if ((a4 - 304) <= 0xFFFFFFFB)
  {
    NETRBErrorLog("incorrect bridge type %d", __s1);
    goto LABEL_23;
  }

  if (__s1 && *__s1 && strncmp(__s1, netrbClientAnyExternal, 0x10uLL) && !if_nametoindex(__s1))
  {
    NETRBErrorLog("incorrect external interface name %s", v10);
    goto LABEL_23;
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    NETRBErrorLog("xpc_dictionary_create() failed");
    goto LABEL_23;
  }

  v12 = v11;
  if (!a5 || (v13 = MEMORY[0x2743E2B10](a5), v14 = MEMORY[0x277D86468], v13 != MEMORY[0x277D86468]))
  {
    NETRBErrorLog("incorrect interface object");
LABEL_20:
    v20 = v12;
LABEL_21:
    xpc_release(v20);
    goto LABEL_23;
  }

  value = xpc_dictionary_get_value(a5, netrbClientDeviceType);
  if (!value || (v16 = value, v17 = MEMORY[0x2743E2B10](), v18 = MEMORY[0x277D864C8], v17 != MEMORY[0x277D864C8]) || (v19 = xpc_uint64_get_value(v16), v19 >= 7))
  {
    NETRBErrorLog("device type is incorrect");
    goto LABEL_20;
  }

  v23 = v19;
  xpc_dictionary_set_uint64(v12, netrbXPCDeviceType, v19);
  if (v23 != 1)
  {
    v26 = xpc_dictionary_get_value(a5, netrbClientInterfaceName);
    if (!v26 || (v27 = v26, MEMORY[0x2743E2B10]() != MEMORY[0x277D864C0]) || (string_ptr = xpc_string_get_string_ptr(v27), !if_nametoindex(string_ptr)))
    {
      NETRBErrorLog("interface name is incorrect");
      goto LABEL_20;
    }

    v33 = netrbXPCInterfaceName;
    v34 = xpc_string_get_string_ptr(v27);
    xpc_dictionary_set_string(v12, v33, v34);
  }

  v24 = xpc_dictionary_get_value(a5, netrbClientInterfaceMTU);
  if (v24)
  {
    v25 = v24;
    if (MEMORY[0x2743E2B10]() != v18)
    {
      NETRBErrorLog("incorrect format for interface mtu");
      goto LABEL_20;
    }

    v28 = netrbXPCInterfaceMTU;
    v29 = xpc_uint64_get_value(v25);
    xpc_dictionary_set_uint64(v12, v28, v29);
  }

  v30 = xpc_dictionary_get_value(a5, netrbClientInterfaceInstance);
  if (v30)
  {
    v31 = v30;
    if (MEMORY[0x2743E2B10]() != v18)
    {
      NETRBErrorLog("incorrect format for interface instance");
      goto LABEL_20;
    }

    v35 = netrbXPCInterfaceInstance;
    v36 = xpc_uint64_get_value(v31);
    xpc_dictionary_set_uint64(v12, v35, v36);
  }

  v37 = xpc_dictionary_get_value(a5, netrbClientInterfaceStartAddress);
  if (v37)
  {
    v38 = v37;
    if (MEMORY[0x2743E2B10]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for interface start address");
      goto LABEL_20;
    }

    v39 = netrbXPCStartAddress;
    v40 = xpc_string_get_string_ptr(v38);
    xpc_dictionary_set_string(v12, v39, v40);
  }

  v41 = xpc_dictionary_get_value(a5, netrbClientInterfaceEndAddress);
  if (v41)
  {
    v42 = v41;
    if (MEMORY[0x2743E2B10]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for interface end address");
      goto LABEL_20;
    }

    v43 = netrbXPCEndAddress;
    v44 = xpc_string_get_string_ptr(v42);
    xpc_dictionary_set_string(v12, v43, v44);
  }

  v45 = xpc_dictionary_get_value(a5, netrbClientInterfaceNetworkMask);
  if (v45)
  {
    v46 = v45;
    if (MEMORY[0x2743E2B10]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for interface network mask");
      goto LABEL_20;
    }

    v47 = netrbXPCNetworkMask;
    v48 = xpc_string_get_string_ptr(v46);
    xpc_dictionary_set_string(v12, v47, v48);
  }

  v49 = xpc_dictionary_get_value(a5, netrbClientNatType);
  if (!v49)
  {
    if (a3 != 201)
    {
      xpc_dictionary_set_uint64(v12, netrbXPCNatType, 0x1F5uLL);
LABEL_60:
      v53 = 0;
      goto LABEL_61;
    }

    xpc_dictionary_set_uint64(v12, netrbXPCNatType, 0x1F4uLL);
LABEL_55:
    if (!insert_nat66_params(a5, v12))
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

  v50 = v49;
  if (MEMORY[0x2743E2B10]() != v18)
  {
    NETRBErrorLog("incorrect format for nat type");
    goto LABEL_20;
  }

  v51 = xpc_uint64_get_value(v50);
  v52 = v51;
  if (v51 - 503 <= 0xFFFFFFFC)
  {
    NETRBErrorLog("incorrect nat type %d");
    goto LABEL_20;
  }

  xpc_dictionary_set_uint64(v12, netrbXPCNatType, v51);
  if (v52 == 500)
  {
    goto LABEL_55;
  }

  if (v52 != 502)
  {
    goto LABEL_60;
  }

  v54 = xpc_dictionary_get_value(a5, netrbClientNat64Param);
  if (!v54)
  {
    goto LABEL_60;
  }

  v55 = v54;
  if (MEMORY[0x2743E2B10]() != v14)
  {
    NETRBErrorLog("incorrect format for nat64 param dictionary");
    goto LABEL_20;
  }

  v56 = xpc_dictionary_create(0, 0, 0);
  if (!v56)
  {
    NETRBErrorLog("xpc_dictionary_create() failed for NAT64 dictionary");
    goto LABEL_20;
  }

  v53 = v56;
  v57 = xpc_dictionary_get_value(v55, netrbClientDns64Prefix);
  if (v57)
  {
    v58 = v57;
    if (MEMORY[0x2743E2B10]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for dns64 prefix");
LABEL_82:
      xpc_release(v12);
LABEL_67:
      v20 = v53;
      goto LABEL_21;
    }

    v59 = netrbXPCDns64Prefix;
    v60 = xpc_string_get_string_ptr(v58);
    xpc_dictionary_set_string(v53, v59, v60);
  }

  v61 = xpc_dictionary_get_value(v55, netrbClientRaPrefix);
  if (v61)
  {
    v62 = v61;
    if (MEMORY[0x2743E2B10]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for NAT64 RA prefix");
      goto LABEL_82;
    }

    v63 = netrbXPCRaPrefix;
    v64 = xpc_string_get_string_ptr(v62);
    xpc_dictionary_set_string(v53, v63, v64);
  }

  xpc_dictionary_set_value(v12, netrbXPCNat64Param, v53);
LABEL_61:
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientStartService_block_invoke;
    block[3] = &unk_279EBE898;
    block[4] = &v68;
    block[5] = a1;
    v66 = a3;
    v67 = a4;
    block[6] = v12;
    block[7] = __s1;
    block[8] = __NETRBClientGetQueue___netrbQueue;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  }

  else
  {
    NETRBErrorLog("unable to create framework queue");
  }

  xpc_release(v12);
  if (v53)
  {
    goto LABEL_67;
  }

LABEL_23:
  v21 = *(v69 + 24);
  _Block_object_dispose(&v68, 8);
  return v21;
}

uint64_t insert_nat66_params(void *a1, void *a2)
{
  value = xpc_dictionary_get_value(a1, netrbClientNat66Param);
  if (value)
  {
    v4 = value;
    if (MEMORY[0x2743E2B10]() != MEMORY[0x277D86468])
    {
      NETRBErrorLog("incorrect format for nat66 param dictionary");
      return 0;
    }

    string = xpc_dictionary_get_string(v4, netrbClientRaPrefix);
    if (!string)
    {
      NETRBErrorLog("NAT66 RA prefix is invalid/missing");
      return 0;
    }

    v7 = string;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, netrbXPCRaPrefix, v7);
    xpc_dictionary_set_value(a2, netrbXPCNat66Param, v8);
  }

  return 1;
}

void __NETRBClientResponseHandler(void *a1, int a2, void *a3, uint64_t a4)
{
  NETRBInfoLog("client %p %s xpc response received", a1, off_279EBF0E0[a2 - 1001]);
  if (!__NETRBClientValidateClient(a1))
  {
    if (!a1[2] || !a1[3])
    {
      v15 = "no queue or handler block to send response";
      goto LABEL_9;
    }

    if (a3)
    {
      if (xpc_dictionary_get_uint64(a3, netrbXPCResponse) == 2003)
      {
        v15 = "service object destroyed before service completed";
        goto LABEL_9;
      }

      v17 = xpc_dictionary_create(0, 0, 0);
      if (v17)
      {
        v16 = v17;
        if (xpc_dictionary_get_uint64(a3, netrbXPCResponse) != 2002)
        {
          uint64 = xpc_dictionary_get_uint64(a3, netrbXPCResponse);
          if (uint64 == 2001)
          {
            v23 = 5002;
          }

          else
          {
            v23 = 5003;
          }

          xpc_dictionary_set_uint64(v16, netrbClientNotificationKey, v23);
          if (a2 != 1014 || uint64 != 2000)
          {
            if (a2 == 1014 && uint64 == 2001)
            {
              notification_insert_keys(v16, a3);
            }

            goto LABEL_19;
          }

          v24 = xpc_dictionary_get_uint64(a3, netrbXPCErrorCode);
          if (!v24)
          {
LABEL_19:
            v21 = a1[2];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 0x40000000;
            block[2] = ____NETRBClientResponseHandler_block_invoke;
            block[3] = &__block_descriptor_tmp_228;
            v27 = a2;
            block[4] = a1;
            block[5] = a4;
            block[6] = v16;
            dispatch_async(v21, block);
            return;
          }

          v20 = v24;
          v18 = netrbClientErrorCode;
          v19 = v16;
LABEL_18:
          xpc_dictionary_set_uint64(v19, v18, v20);
          goto LABEL_19;
        }

LABEL_17:
        v18 = netrbClientNotificationKey;
        v19 = v16;
        v20 = 5003;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = xpc_dictionary_create(0, 0, 0);
      if (v16)
      {
        goto LABEL_17;
      }
    }

    NETRBErrorLog("xpc_dictionary_create() failed");
    goto LABEL_10;
  }

  v15 = "client already destroyed";
LABEL_9:
  NETRBDebugLog(v15, v8, v9, v10, v11, v12, v13, v14, v25);
LABEL_10:

  CFRelease(a1);
}

uint64_t _NETRBClientStopService(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (a1)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientStopService_block_invoke;
      block[3] = &unk_279EBE8E0;
      block[4] = &v5;
      block[5] = a1;
      block[6] = __NETRBClientGetQueue___netrbQueue;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t _NETRBClientGetDynamicStoreKey(uint64_t a1, char *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a1)
  {
    if (a2)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ___NETRBClientGetDynamicStoreKey_block_invoke;
        v6[3] = &unk_279EBE908;
        v6[4] = &v7;
        v6[5] = a1;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
        if (*(v8 + 24) == 1)
        {
          strcpy(a2, "com.apple.MobileInternetSharing");
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue", a2);
      }
    }

    else
    {
      NETRBErrorLog("key cannot be NULL", 0);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2);
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t _NETRBClientGetGlobalServiceState(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (__NETRBClientGetQueue_predQueue != -1)
        {
          v7 = a1;
          _NETRBClientCreateInternal_cold_2();
          a1 = v7;
        }

        if (__NETRBClientGetQueue___netrbQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___NETRBClientGetGlobalServiceState_block_invoke;
          block[3] = &unk_279EBE958;
          block[4] = &v13;
          block[5] = &v9;
          block[6] = &v21;
          block[7] = &v17;
          block[8] = a1;
          dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
          if (*(v14 + 24) == 1)
          {
            *(v14 + 24) = v10[3] == 2001;
            *a2 = *(v22 + 6);
            *a3 = *(v18 + 6);
          }
        }

        else
        {
          NETRBErrorLog("unable to create framework queue", a2, a3, v7);
        }
      }

      else
      {
        NETRBErrorLog("reason cannot be NULL", a2, 0);
      }
    }

    else
    {
      NETRBErrorLog("state cannot be NULL", 0, a3);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3);
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

uint64_t _NETRBClientSetGlobalServiceState(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 2000;
  if (a1)
  {
    if ((a2 - 1024) > 0xFFFFFFFB)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientSetGlobalServiceState_block_invoke;
        block[3] = &unk_279EBE9A8;
        v7 = a2;
        block[4] = &v12;
        block[5] = &v8;
        block[6] = a1;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v13 + 24) == 1)
        {
          *(v13 + 24) = v9[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect state %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v4 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t _NETRBClientGetExtName(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (a1)
  {
    if (a2)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ___NETRBClientGetExtName_block_invoke;
        v6[3] = &unk_279EBE9F8;
        v6[4] = &v11;
        v6[5] = &v7;
        v6[6] = a1;
        v6[7] = a2;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
        if (*(v12 + 24) == 1)
        {
          *(v12 + 24) = v8[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue", a2);
      }
    }

    else
    {
      NETRBErrorLog("external name cannot be NULL", 0);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2);
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void *_NETRBClientCopyFixtureForwardedPorts(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    NETRBErrorLog("client handle cannot be NULL");
    goto LABEL_12;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (!__NETRBClientGetQueue___netrbQueue)
  {
    NETRBErrorLog("unable to create framework queue");
LABEL_11:
    v1 = 0;
    goto LABEL_12;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___NETRBClientCopyFixtureForwardedPorts_block_invoke;
  block[3] = &unk_279EBEA48;
  block[4] = &v9;
  block[5] = &v5;
  block[6] = &v17;
  block[7] = &v13;
  block[8] = v1;
  dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  if (*(v10 + 24) != 1 || v6[3] != 2001)
  {
    goto LABEL_11;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v1 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, netrbClientForwardedLowPort, *(v18 + 12));
    xpc_dictionary_set_uint64(v1, netrbClientForwardedHighPort, *(v14 + 12));
  }

  else
  {
    NETRBErrorLog("xpc_dictionary_create() failed");
    *(v10 + 24) = 0;
  }

LABEL_12:
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v1;
}

uint64_t _NETRBClientSetFixtureForwardedPorts(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (a1)
  {
    if (a2 && MEMORY[0x2743E2B10](a2) == MEMORY[0x277D86468])
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ___NETRBClientSetFixtureForwardedPorts_block_invoke;
        v6[3] = &unk_279EBEA98;
        v6[6] = a1;
        v6[7] = a2;
        v6[4] = &v11;
        v6[5] = &v7;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
        if (*(v12 + 24) == 1)
        {
          *(v12 + 24) = v8[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("forwarded ports should be a xpc dictionary");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t _NETRBClientIsAllowedMoreHost(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (a1)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientIsAllowedMoreHost_block_invoke;
      block[3] = &unk_279EBEAE8;
      block[4] = &v9;
      block[5] = &v5;
      block[6] = a1;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
      if (*(v10 + 24) == 1)
      {
        *(v10 + 24) = v6[3] == 2001;
      }
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

uint64_t _NETRBClientAddHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientAddHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    NETRBErrorLog("failed to create xpc dictionary for add host.");
    return 0;
  }
}

uint64_t _NETRBClientAddHostExt(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 2000;
  if (!a2 || MEMORY[0x2743E2B10](a2) != MEMORY[0x277D86468])
  {
    NETRBErrorLog("request is not dictionary object");
LABEL_4:
    *(v22 + 24) = 0;
    goto LABEL_5;
  }

  value = xpc_dictionary_get_value(a2, netrbClientHostIftype);
  if (!value || (v7 = value, v8 = MEMORY[0x2743E2B10](), v9 = MEMORY[0x277D864C8], v8 != MEMORY[0x277D864C8]))
  {
    NETRBErrorLog("netrbIftype does not exist in request.");
    goto LABEL_4;
  }

  v10 = xpc_uint64_get_value(v7);
  v11 = xpc_dictionary_get_value(a2, netrbClientHostDeviceId);
  if (!v11 || (v12 = v11, MEMORY[0x2743E2B10]() != v9))
  {
    NETRBErrorLog("device ID does not exist in request.");
    goto LABEL_4;
  }

  v13 = xpc_uint64_get_value(v12);
  if (a1)
  {
    if ((v10 - 7) > 0xFFFFFFFA)
    {
      v14 = v13;
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientAddHostExt_block_invoke;
        block[3] = &unk_279EBEB38;
        v16 = v10;
        block[6] = a1;
        block[7] = v14;
        block[4] = &v21;
        block[5] = &v17;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v22 + 24) == 1)
        {
          *(v22 + 24) = v18[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect device type value %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

LABEL_5:
  v4 = *(v22 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v4;
}

uint64_t _NETRBClientRemoveHostExt(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 2000;
  if (!a2 || MEMORY[0x2743E2B10](a2) != MEMORY[0x277D86468])
  {
    NETRBErrorLog("request is not dictionary object");
LABEL_4:
    *(v22 + 24) = 0;
    goto LABEL_5;
  }

  value = xpc_dictionary_get_value(a2, netrbClientHostIftype);
  if (!value || (v7 = value, v8 = MEMORY[0x2743E2B10](), v9 = MEMORY[0x277D864C8], v8 != MEMORY[0x277D864C8]))
  {
    NETRBErrorLog("netrbIftype does not exist in request.");
    goto LABEL_4;
  }

  v10 = xpc_uint64_get_value(v7);
  v11 = xpc_dictionary_get_value(a2, netrbClientHostDeviceId);
  if (!v11 || (v12 = v11, MEMORY[0x2743E2B10]() != v9))
  {
    NETRBErrorLog("device ID does not exist in request.");
    goto LABEL_4;
  }

  v13 = xpc_uint64_get_value(v12);
  if (a1)
  {
    if ((v10 - 7) > 0xFFFFFFFA)
    {
      v14 = v13;
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientRemoveHostExt_block_invoke;
        block[3] = &unk_279EBEB88;
        v16 = v10;
        block[6] = a1;
        block[7] = v14;
        block[4] = &v21;
        block[5] = &v17;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v22 + 24) == 1)
        {
          *(v22 + 24) = v18[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect device type value %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

LABEL_5:
  v4 = *(v22 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v4;
}

uint64_t _NETRBClientRemoveHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientRemoveHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    NETRBErrorLog("failed to create xpc dictionary for remove host.");
    return 0;
  }
}

uint64_t _NETRBClientGetHostCount(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (__NETRBClientGetQueue_predQueue != -1)
        {
          v7 = a1;
          _NETRBClientCreateInternal_cold_2();
          a1 = v7;
        }

        if (__NETRBClientGetQueue___netrbQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___NETRBClientGetHostCount_block_invoke;
          block[3] = &unk_279EBEBD8;
          block[4] = &v13;
          block[5] = &v9;
          block[6] = &v21;
          block[7] = &v17;
          block[8] = a1;
          dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
          if (*(v14 + 24) == 1)
          {
            *(v14 + 24) = v10[3] == 2001;
            *a2 = *(v22 + 6);
            *a3 = *(v18 + 6);
          }
        }

        else
        {
          NETRBErrorLog("unable to create framework queue", a2, a3, v7);
        }
      }

      else
      {
        NETRBErrorLog("current cannot be NULL", a2, 0);
      }
    }

    else
    {
      NETRBErrorLog("max cannot be NULL", 0, a3);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3);
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

uint64_t _NETRBClientSetHostCount(uint64_t a1, int a2, int a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 2000;
  if (a1)
  {
    if ((a2 - 7) > 0xFFFFFFFA)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientSetHostCount_block_invoke;
        block[3] = &unk_279EBEC28;
        v9 = a2;
        v10 = a3;
        block[4] = &v15;
        block[5] = &v11;
        block[6] = a1;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v16 + 24) == 1)
        {
          *(v16 + 24) = v12[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect device type value %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t _NETRBClientNewInterface(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  if (!a1)
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3, a4);
    goto LABEL_43;
  }

  v4 = a4;
  v6 = a2;
  v49[3] = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    string = xpc_dictionary_get_string(v4, netrbClientExternalInterface);
  }

  else
  {
    string = 0;
  }

  if ((v6 - 201) < 3)
  {
    if (string)
    {
      NETRBErrorLog("specifying external interface not supported", v8, v9, v10);
      goto LABEL_43;
    }

    if (v4)
    {
      uint64 = xpc_dictionary_get_uint64(v4, netrbClientInterfaceMTU);
      goto LABEL_16;
    }

LABEL_22:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
LABEL_38:
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      v38 = v20;
      _NETRBClientCreateInternal_cold_2();
      v20 = v38;
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientNewInterface_block_invoke;
      block[3] = &unk_279EBEC70;
      block[6] = a1;
      block[7] = string;
      v42 = v25;
      v43 = v23;
      v44 = v4;
      v45 = v24;
      v46 = v22;
      v47 = v21;
      v40 = v6;
      v41 = v20;
      block[4] = &v48;
      block[5] = &v52;
      block[8] = a3;
      block[9] = __NETRBClientGetQueue___netrbQueue;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }

    goto LABEL_43;
  }

  if (v6 != 204)
  {
    NETRBErrorLog("incorrect operation mode %d", v8, v9, v10);
    goto LABEL_43;
  }

  if (!string || !*string)
  {
    NETRBErrorLog("interface must be specified", v8, v9, v10);
    goto LABEL_43;
  }

  if (!v4)
  {
    goto LABEL_22;
  }

  uint64 = 0;
LABEL_16:
  v12 = v49[3];
  v13 = xpc_dictionary_get_string(v4, netrbClientInterfaceStartAddress);
  v14 = xpc_dictionary_get_string(v4, netrbClientInterfaceEndAddress);
  v15 = xpc_dictionary_get_string(v4, netrbClientInterfaceNetworkMask);
  if (v13 && v14 && (v19 = v15) != 0)
  {
    xpc_dictionary_set_string(v12, netrbXPCStartAddress, v13);
    xpc_dictionary_set_string(v12, netrbXPCEndAddress, v14);
    xpc_dictionary_set_string(v12, netrbXPCNetworkMask, v19);
  }

  else if (v13 | v14)
  {
    NETRBErrorLog("All of %s, %s, and %s must be specified", v16, v17, v18);
    goto LABEL_43;
  }

  if (insert_nat66_params(v4, v49[3]))
  {
    v26 = v49[3];
    uuid = xpc_dictionary_get_uuid(v4, netrbClientNetworkIdentifier);
    if (uuid)
    {
      xpc_dictionary_set_uuid(v26, netrbXPCNetworkIdentifier, uuid);
      v28 = xpc_dictionary_get_string(v4, netrbClientInterfaceIPv4Address);
      v29 = xpc_dictionary_get_string(v4, netrbClientInterfaceNetworkMask);
      v32 = v29;
      if (v28 && v29)
      {
        xpc_dictionary_set_string(v26, netrbXPCInterfaceIPv4Address, v28);
        xpc_dictionary_set_string(v26, netrbXPCNetworkMask, v32);
      }

      else if (v28 | v29)
      {
        NETRBErrorLog("%s, and %s must be specified", v30, v31);
        goto LABEL_43;
      }

      v33 = xpc_dictionary_get_string(v4, netrbClientInterfaceIPv6Address);
      if (v33)
      {
        xpc_dictionary_set_string(v26, netrbXPCInterfaceIPv6Address, v33);
      }
    }

    if (xpc_dictionary_get_value(v4, netrbClientAllocateMACAddress))
    {
      v25 = xpc_dictionary_get_BOOL(v4, netrbClientAllocateMACAddress);
    }

    else
    {
      v25 = 1;
    }

    v23 = xpc_dictionary_get_BOOL(v4, netrbClientEnableTSO);
    v22 = xpc_dictionary_get_BOOL(v4, netrbClientEnableIsolation);
    v21 = xpc_dictionary_get_BOOL(v4, netrbClientEnableChecksumOffload);
    v24 = xpc_dictionary_get_BOOL(v4, netrbClientEnableMACNAT);
    LOBYTE(v4) = xpc_dictionary_get_BOOL(v4, netrbClientEnableVirtIOHeader);
    v20 = uint64;
    goto LABEL_38;
  }

LABEL_43:
  v34 = v49[3];
  if (v34)
  {
    xpc_release(v34);
  }

  v35 = *(v53 + 24);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  return v35;
}

uint64_t _NETRBClientAddIPPortForwardingRule(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (cf)
  {
    v8 = a6;
    v10 = a4;
    v11 = a3;
    v12 = a2;
    if (a4 == 2 || a4 == 30)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v14 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientAddIPPortForwardingRule_block_invoke;
        block[3] = &unk_279EBECE8;
        v20 = v12;
        v18 = v11;
        v21 = v10;
        block[6] = cf;
        block[7] = a5;
        v19 = v8;
        block[4] = a7;
        block[5] = &v22;
        block[8] = __NETRBClientGetQueue___netrbQueue;
        CFRetain(cf);
        dispatch_sync(v14, block);
        if ((v23[3] & 1) == 0)
        {
          CFRelease(cf);
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("invalid address family %d", a2, a3, a4, a5, a6, a7);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3, a4, a5, a6, a7);
  }

  v15 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v15;
}

void *netrbMakePortForwardingRuleDict(unsigned int a1, unsigned int a2, unsigned int a3, void *a4, unsigned int a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 != 30 && a3 != 2 || !a4 && a5 || a4 && !a5 || a4 && !inet_ntop(a3, a4, string, 0x2Eu))
  {
    return 0;
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  v10 = v12;
  if (a1)
  {
    xpc_dictionary_set_uint64(v12, netrbXPCPortForwardingRuleProtocol, a1);
  }

  if (a2)
  {
    xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleExternalPort, a2);
  }

  xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleAddressFamily, a3);
  if (a5)
  {
    xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleInternalPort, a5);
  }

  if (a4)
  {
    xpc_dictionary_set_string(v10, netrbXPCPortForwardingRuleInternalAddress, string);
  }

  return v10;
}

uint64_t _NETRBClientRemoveIPPortForwardingRule(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (cf)
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    if (a4 == 2 || a4 == 30)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v10 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientRemoveIPPortForwardingRule_block_invoke;
        block[3] = &unk_279EBED60;
        v15 = v8;
        v14 = v7;
        v16 = v6;
        block[4] = a5;
        block[5] = &v17;
        block[6] = cf;
        block[7] = __NETRBClientGetQueue___netrbQueue;
        CFRetain(cf);
        dispatch_sync(v10, block);
        if ((v18[3] & 1) == 0)
        {
          CFRelease(cf);
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("invalid address family %d", a2, a3, a4, a5);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3, a4, a5);
  }

  v11 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t _NETRBClientGetIPPortForwardingRules(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (cf)
  {
    v4 = a2;
    if (a2 == 2 || a2 == 30)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v6 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientGetIPPortForwardingRules_block_invoke;
        block[3] = &unk_279EBEDD8;
        v10 = v4;
        block[4] = a3;
        block[5] = &v11;
        block[6] = cf;
        block[7] = __NETRBClientGetQueue___netrbQueue;
        CFRetain(cf);
        dispatch_sync(v6, block);
        if ((v12[3] & 1) == 0)
        {
          CFRelease(cf);
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("invalid address family %d", a2, a3);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3);
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

const char *_NETRBIPPortForwardingDictGetDetails(xpc_object_t xdict, _BYTE *a2, _WORD *a3, uint64_t a4, void *a5, _WORD *a6)
{
  if (!xdict)
  {
    NETRBErrorLog("rule is NULL", a2, a3, a4, a5, a6);
    return 0;
  }

  v8 = a4;
  if (a4 != 2 && a4 != 30)
  {
    NETRBErrorLog("invalid address family %d", a2, a3, a4, a5, a6);
    return 0;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleProtocol);
  *a2 = uint64;
  if (!uint64)
  {
    return 0;
  }

  v13 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleExternalPort);
  *a3 = v13;
  if (!v13)
  {
    return 0;
  }

  v14 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleInternalPort);
  *a6 = v14;
  if (!v14)
  {
    return 0;
  }

  if (xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleAddressFamily) != v8)
  {
    NETRBErrorLog("returned address family %d != %d", v15, v16, v17, v18, v19);
    return 0;
  }

  result = xpc_dictionary_get_string(xdict, netrbXPCPortForwardingRuleInternalAddress);
  if (result)
  {
    return (inet_pton(v8, result, a5) != 0);
  }

  return result;
}

uint64_t NETRBClientSendNotification(void *a1)
{
  if (!__netrbClientList || (Count = CFArrayGetCount(__netrbClientList)) == 0)
  {
    NETRBErrorLog("received notification but no clients");
    return 0;
  }

  v3 = Count;
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    NETRBErrorLog("xpc_dictionary_create() failed");
    return 0;
  }

  v5 = v4;
  v6 = netrbClientNotificationKey;
  uint64 = xpc_dictionary_get_uint64(a1, netrbXPCNotification);
  xpc_dictionary_set_uint64(v5, v6, uint64);
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(__netrbClientList, i);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        if (ValueAtIndex[2])
        {
          if (ValueAtIndex[3])
          {
            xpc_retain(v5);
            CFRetain(v10);
            v11 = v10[2];
            v13[0] = MEMORY[0x277D85DD0];
            v13[1] = 0x40000000;
            v13[2] = __NETRBClientSendNotification_block_invoke;
            v13[3] = &__block_descriptor_tmp_179;
            v13[4] = v10;
            v13[5] = v5;
            dispatch_async(v11, v13);
          }
        }
      }
    }
  }

  xpc_release(v5);
  return 1;
}

void __NETRBClientSendNotification_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __NETRBClientSendNotification_block_invoke_2;
  block[3] = &unk_279EBEE00;
  block[4] = v4;
  v3 = *(a1 + 32);
  dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  xpc_release(*(a1 + 40));
  CFRelease(*(a1 + 32));
  _Block_object_dispose(v4, 8);
}

uint64_t __NETRBClientSendNotification_block_invoke_2(uint64_t a1)
{
  result = __NETRBClientValidateClient(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!result)
  {
    v3 = *(*(*(a1 + 40) + 24) + 16);

    return v3();
  }

  return result;
}

uint64_t _NETRBClientModifyLowLatencyFlow(uint64_t a1, void *a2, char a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  inited = netrbInitIfnetTrafficDescriptor(a2, 0);
  *(v12 + 24) = inited;
  if (inited)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 0x40000000;
      v9[2] = ___NETRBClientModifyLowLatencyFlow_block_invoke;
      v9[3] = &unk_279EBEFB8;
      v9[4] = &v11;
      v9[5] = a1;
      v9[6] = a2;
      v10 = a3;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, v9);
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("input xpc dictionary is malformed.");
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t _NETRBCreateNetworkConfiguration(unsigned int a1, void *a2)
{
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 144) = 0;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    if (a1 >= 2)
    {
      if (a1 == 2)
      {
        NETRBErrorLog("%s SPI doesn't support bridged mode");
      }

      else
      {
        NETRBErrorLog("%s: invalid operation mode");
      }

      CFRelease(v5);
      v5 = 0;
      result = 6002;
    }

    else
    {
      *(Instance + 36) = a1;
      result = 0;
      if (a1 == 1)
      {
        v5[10] |= 2u;
        v5[14] |= 4u;
      }
    }
  }

  else
  {
    NETRBErrorLog("%s: _CFRuntimeCreateInstance", "_NETRBCreateNetworkConfiguration");
    result = 6003;
  }

  *a2 = v5;
  return result;
}

uint64_t _NETRBCreateNetwork(void *a1, uint64_t a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8 = 0;
  if (NETRBLogCreate(a1, a2))
  {
    *(v14 + 6) = 6003;
  }

  else
  {
    GlobalClient = __NETRBNetworkCreateGlobalClient();
    *(v14 + 6) = GlobalClient;
    if (GlobalClient)
    {
      NETRBErrorLog("%s: __NETRBNetworkCreateGlobalClient", "_NETRBCreateNetwork");
    }

    else
    {
      _NETRBSerializeNetwork(a1, &v8);
      *(v14 + 6) = 0;
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBCreateNetwork_block_invoke;
        block[3] = &unk_279EBEE70;
        v4 = v8;
        block[6] = a1;
        block[7] = v8;
        block[4] = &v13;
        block[5] = &v9;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if ((v10[3] & 1) == 0)
        {
          NETRBErrorLog("%s: failed", "_NETRBCreateNetwork");
          *(v14 + 6) = 1;
        }
      }

      else
      {
        NETRBErrorLog("%s: unable to create framework queue", "_NETRBCreateNetwork");
        *(v14 + 6) = 6003;
        v4 = v8;
      }

      if (v4)
      {
        xpc_release(v4);
      }
    }
  }

  v5 = *(v14 + 6);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __NETRBNetworkCreateGlobalClient()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (__NETRBNetworkGetServiceQueue_predNetworkQueue != -1)
  {
    __NETRBNetworkCreateGlobalClient_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____NETRBNetworkCreateGlobalClient_block_invoke;
  block[3] = &unk_279EBF040;
  block[4] = &v3;
  dispatch_sync(__NETRBNetworkGetServiceQueue___networkServiceQueue, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t _NETRBSerializeNetwork(void *a1, xpc_object_t *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  *a2 = v4;
  xpc_dictionary_set_data(v4, netrbXPCNetworkSerialization, a1 + 2, 0x78uLL);
  v5 = a1[17];
  if (v5)
  {
    v6 = 0;
    do
    {
      v5 = *v5;
      v6 += 24;
    }

    while (v5);
    v7 = malloc_type_malloc(v6, 0xA056F487uLL);
    bzero(v7, v6);
    v8 = a1[17];
    if (v8)
    {
      v9 = v7;
      do
      {
        v10 = *v8;
        v9[2] = *(v8 + 2);
        *v9 = v10;
        v9 += 3;
        v8 = *v8;
      }

      while (v8);
    }

    xpc_dictionary_set_data(*a2, netrbXPCNetworkSerializationDHCPReservation, v7, v6);
    free(v7);
  }

  v11 = a1[18];
  if (v11)
  {
    v12 = 0;
    do
    {
      v11 = *v11;
      v12 += 32;
    }

    while (v11);
    v13 = malloc_type_malloc(v12, 0x95A4A4E9uLL);
    bzero(v13, v12);
    v14 = a1[18];
    if (v14)
    {
      v15 = v13;
      do
      {
        v16 = v14[1];
        *v15 = *v14;
        v15[1] = v16;
        v15 += 2;
        v14 = *v14;
      }

      while (v14);
    }

    xpc_dictionary_set_data(*a2, netrbXPCNetworkSerializationPortForwarding, v13, v12);
    free(v13);
  }

  return 0;
}

uint64_t _NETRBNetworkStartVirtualMachineInterface(void *a1, void *a2, void *a3)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v27 = 0;
  if (NETRBLogCreate(a1, a2))
  {
    goto LABEL_2;
  }

  GlobalClient = __NETRBNetworkCreateGlobalClient();
  *(v33 + 6) = GlobalClient;
  if (GlobalClient)
  {
    NETRBErrorLog("%s: __NETRBNetworkCreateGlobalClient", "_NETRBNetworkStartVirtualMachineInterface");
    goto LABEL_5;
  }

  if (_NETRBInterfaceGetTypeId_pred != -1)
  {
    _NETRBNetworkStartVirtualMachineInterface_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    NETRBErrorLog("%s: _CFRuntimeCreateInstance", "_NETRBNetworkStartVirtualMachineInterface");
LABEL_2:
    *(v33 + 6) = 6003;
    goto LABEL_5;
  }

  v10 = Instance;
  *(Instance + 48) = 0;
  NETRBInfoLog("%s: adding virtual interface to network %p", "_NETRBNetworkStartVirtualMachineInterface", a1);
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  v11 = __NETRBClientGetQueue___netrbQueue;
  if (!__NETRBClientGetQueue___netrbQueue)
  {
    v13 = 0;
    v14 = 6003;
    NETRBErrorLog("%s: unable to create framework queue");
LABEL_25:
    *(v33 + 6) = v14;
LABEL_26:
    CFRelease(v10);
    goto LABEL_27;
  }

  _NETRBSerializeNetwork(a1, &v27);
  *(v33 + 6) = 0;
  if (a3)
  {
    if (xpc_dictionary_get_value(a3, netrbClientAllocateMACAddress))
    {
      v12 = xpc_dictionary_get_BOOL(a3, netrbClientAllocateMACAddress);
    }

    else
    {
      v12 = 1;
    }

    v16 = xpc_dictionary_get_BOOL(a3, netrbClientEnableTSO);
    v15 = xpc_dictionary_get_BOOL(a3, netrbClientEnableIsolation);
    v19 = xpc_dictionary_get_BOOL(a3, netrbClientEnableChecksumOffload);
    v18 = xpc_dictionary_get_BOOL(a3, netrbClientEnableMACNAT);
    v17 = xpc_dictionary_get_BOOL(a3, netrbClientEnableVirtIOHeader);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v12 = 1;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___NETRBNetworkStartVirtualMachineInterface_block_invoke;
  block[3] = &unk_279EBEEC0;
  v21 = v12;
  v13 = v27;
  block[6] = a1;
  block[7] = v27;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v15;
  v26 = v19;
  block[4] = &v32;
  block[5] = &v28;
  block[8] = a3;
  block[9] = v10;
  dispatch_sync(v11, block);
  if (!*(v29 + 24))
  {
    v14 = 1;
    NETRBErrorLog("%s: _NETRBClientNewInterface");
    goto LABEL_25;
  }

  if (*(v33 + 6))
  {
    goto LABEL_26;
  }

  *a2 = v10;
  CFRetain(a1);
  if (*(v33 + 6))
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v13)
  {
    xpc_release(v13);
  }

LABEL_5:
  v7 = *(v33 + 6);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  return v7;
}

unint64_t _NETRBEtherAton(const char *a1)
{
  v3 = 0;
  v2 = 0;
  sscanf(a1, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &v2, &v2 + 1, &v2 + 2, &v2 + 3, &v3, &v3 + 1);
  return v2 | (v3 << 32);
}

uint64_t _NETRBNetworkSetIPv4Addresses(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *(a1 + 44) = *a2;
  *(a1 + 48) = *a3;
  return 0;
}

uint64_t _NETRBNetworkSetIPv6Prefix(uint64_t a1, _OWORD *a2, int a3)
{
  *(a1 + 60) = *a2;
  *(a1 + 76) = a3;
  return 0;
}

uint64_t _NETRBNetworkAddPortForwardingRule(uint64_t a1, char a2, int a3, __int16 a4, __int16 a5, uint64_t a6)
{
  v11 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
  v12 = v11;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 8) = a2;
  if (a3 == 2 || a3 == 30)
  {
    *(v11 + 9) = a3;
    *(v11 + 5) = a4;
    *(v11 + 6) = a5;
    __memcpy_chk();
    v13 = 0;
    *v12 = *(a1 + 144);
    *(a1 + 144) = v12;
  }

  else
  {
    NETRBErrorLog("%s: invalid address family %u", "_NETRBNetworkAddPortForwardingRule", a3);
    v13 = 6002;
  }

  if (a3 != 2 && a3 != 30)
  {
    free(v12);
  }

  return v13;
}

uint64_t _NETRBNetworkAddDHCPReservation(uint64_t a1, int *a2, _DWORD *a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
  v7 = *a2;
  v6[6] = *(a2 + 2);
  *(v6 + 2) = v7;
  *(v6 + 4) = *a3;
  *v6 = *(a1 + 136);
  *(a1 + 136) = v6;
  return 0;
}

uint64_t _NETRBDeserializeNetworkConfig(void *a1, uint64_t a2)
{
  v23 = 0;
  length = 0;
  v22 = 0;
  data = xpc_dictionary_get_data(a1, netrbXPCNetworkSerialization, &length);
  if (length == 120)
  {
    v5 = *data;
    v6 = data[1];
    v7 = data[3];
    *(a2 + 32) = data[2];
    *(a2 + 48) = v7;
    *a2 = v5;
    *(a2 + 16) = v6;
    v8 = data[4];
    v9 = data[5];
    v10 = data[6];
    *(a2 + 112) = *(data + 14);
    *(a2 + 80) = v9;
    *(a2 + 96) = v10;
    *(a2 + 64) = v8;
    *(a2 + 120) = 0;
    v11 = (a2 + 120);
    *(a2 + 128) = 0;
    v12 = xpc_dictionary_get_data(a1, netrbXPCNetworkSerializationDHCPReservation, &v23);
    if (v12 && v23 >= 0x18)
    {
      v13 = v23 / 0x18;
      v14 = v12 + 16;
      do
      {
        v15 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
        v15[1] = 0;
        v15[2] = 0;
        *v15 = 0;
        v16 = *(v14 - 2);
        *(v15 + 2) = *(v14 - 2);
        *(v15 + 6) = v16;
        v17 = *v14;
        v14 += 6;
        *(v15 + 4) = v17;
        *v15 = *v11;
        *v11 = v15;
        --v13;
      }

      while (v13);
    }

    result = xpc_dictionary_get_data(a1, netrbXPCNetworkSerializationPortForwarding, &v22);
    if (result)
    {
      if (v22 >= 0x20)
      {
        v19 = v22 >> 5;
        v20 = result + 8;
        do
        {
          v21 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
          *v21 = 0u;
          *(v21 + 1) = 0u;
          *(v21 + 4) = *v20;
          *(v21 + 10) = *(v20 + 2);
          *(v21 + 1) = *(v20 + 8);
          *v21 = *(a2 + 128);
          *(a2 + 128) = v21;
          v20 += 32;
          --v19;
        }

        while (v19);
      }

      return 0;
    }
  }

  else
  {
    NETRBErrorLog("%s: invalid serialized network", "_NETRBDeserializeNetworkConfig");
    return 6002;
  }

  return result;
}

uint64_t _NETRBDeserializeNetwork(void *a1, void *a2)
{
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    v6 = _NETRBDeserializeNetworkConfig(a1, Instance + 16);
    if (v6)
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    NETRBErrorLog("%s: _CFRuntimeCreateInstance", "_NETRBDeserializeNetwork");
    v6 = 6003;
  }

  *a2 = v5;
  return v6;
}

uint64_t _NETRBNetworkGetIPv4Subnet(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 44);
  *a3 = *(result + 48);
  return result;
}

__n128 _NETRBNetworkGetIPv6Prefix(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  result = *(a1 + 60);
  *a2 = result;
  *a3 = *(a1 + 76);
  return result;
}

uint64_t __NETRBClientRelease(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    _Block_release(v2);
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  return NETRBInfoLog("releasing client %p", a1);
}

void notification_insert_keys(void *a1, xpc_object_t xdict)
{
  v16 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, netrbXPCMACAddress);
  if (string)
  {
    xpc_dictionary_set_string(a1, netrbClientMACAddress, string);
  }

  *v15 = 0;
  *&v15[8] = 0;
  uuid = xpc_dictionary_get_uuid(xdict, netrbXPCMACUUID);
  if (uuid)
  {
    *v15 = *uuid;
    xpc_dictionary_set_uuid(a1, netrbClientMACUUID, v15);
  }

  v6 = xpc_dictionary_dup_fd(xdict, netrbXPCInterfaceSocket);
  if (v6 != -1)
  {
    xpc_dictionary_set_uint64(a1, netrbClientSocketFD, v6);
  }

  v7 = xpc_dictionary_get_string(xdict, netrbXPCStartAddress);
  v8 = xpc_dictionary_get_string(xdict, netrbXPCEndAddress);
  v9 = xpc_dictionary_get_string(xdict, netrbXPCNetworkMask);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v9 != 0)
  {
    v12 = v9;
    xpc_dictionary_set_string(a1, netrbClientInterfaceStartAddress, v7);
    xpc_dictionary_set_string(a1, netrbClientInterfaceEndAddress, v8);
    xpc_dictionary_set_string(a1, netrbClientInterfaceNetworkMask, v12);
  }

  value = xpc_dictionary_get_value(xdict, netrbXPCInterfaceMTU);
  if (value)
  {
    xpc_dictionary_set_value(a1, netrbClientInterfaceMTU, value);
  }

  v14 = xpc_dictionary_get_value(xdict, netrbXPCNat66Param);
  if (v14)
  {
    xpc_dictionary_set_value(a1, netrbClientNat66Param, v14);
  }
}

void *__NETRBNetworkRelease(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    value = 0;
    if (__NETRBClientValidateClient(_NETRBNetworkClient))
    {
      NETRBErrorLog("%s: invalid network global client", "__NETRBNetworkRelease");
    }

    else
    {
      _NETRBSerializeNetwork(a1, &value);
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x401uLL);
      xpc_dictionary_set_string(v2, netrbXPCClientID, (_NETRBNetworkClient + 32));
      v3 = value;
      xpc_dictionary_set_value(v2, netrbXPCNetworkObject, value);
      NETRBXPCSetupAndSend(0, v2, &__block_literal_global_265);
      if (v2)
      {
        xpc_release(v2);
      }

      if (v3)
      {
        xpc_release(v3);
      }
    }
  }

  while (1)
  {
    v4 = *(a1 + 136);
    if (!v4)
    {
      break;
    }

    *(a1 + 136) = *v4;
    free(v4);
  }

  while (1)
  {
    result = *(a1 + 144);
    if (!result)
    {
      break;
    }

    *(a1 + 144) = *result;
    free(result);
  }

  return result;
}

void __NETRBInterfaceRelease(uint64_t a1)
{
  value = 0;
  if (__NETRBClientValidateClient(_NETRBNetworkClient))
  {
    NETRBErrorLog("%s: invalid network global client");
  }

  else if (*(a1 + 56))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x3FFuLL);
    xpc_dictionary_set_string(v2, netrbXPCClientID, (_NETRBNetworkClient + 32));
    xpc_dictionary_set_uint64(v2, netrbXPCInterfaceId, *(a1 + 48));
    _NETRBSerializeNetwork(*(a1 + 56), &value);
    v3 = value;
    xpc_dictionary_set_value(v2, netrbXPCNetworkObject, value);
    NETRBXPCSetupAndSend(0, v2, &__block_literal_global_282);
    if (v2)
    {
      xpc_release(v2);
    }

    if (v3)
    {
      xpc_release(v3);
    }

    if (__NETRBNetworkGetServiceQueue_predNetworkQueue != -1)
    {
      ____NETRBNetworkCreateGlobalClient_block_invoke_cold_1();
    }

    dispatch_sync(__NETRBNetworkGetServiceQueue___networkServiceQueue, &__block_literal_global_285);
    v4 = *(a1 + 56);

    CFRelease(v4);
  }

  else
  {
    NETRBErrorLog("%s: no associated network");
  }
}

uint64_t NETRBLogCreate(uint64_t a1, uint64_t a2)
{
  if (NETRBLogCreate_predLog != -1)
  {
    NETRBLogCreate_cold_1();
  }

  if (NETRBLogCreate_error)
  {
    return 12;
  }

  else
  {
    return 0;
  }
}

void __NETRBLogCreate_block_invoke()
{
  __netrbLog = os_log_create("com.apple.MobileInternetSharing", "framework.netrb");
  if (!__netrbLog)
  {
    NETRBLogCreate_error = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __NETRBLogCreate_block_invoke_cold_1();
    }
  }
}

uint64_t NETRBXPCEndPointCreate(dispatch_queue_t targetq, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__netrbReceiverConnection)
  {
    NETRBDebugLog("xpc endpoint connection already exists", a2, a3, a4, a5, a6, a7, a8, v12);
  }

  else
  {
    v9 = xpc_connection_create(0, targetq);
    __netrbReceiverConnection = v9;
    if (!v9)
    {
      NETRBErrorLog("unable to create xpc endpoint connection");
      return 0;
    }

    v10 = v9;
    NETRBInfoLog("listener connection %p created", v9);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __NETRBXPCEndPointCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_72;
    handler[4] = v10;
    handler[5] = targetq;
    xpc_connection_set_event_handler(v10, handler);
    xpc_connection_resume(__netrbReceiverConnection);
  }

  return 1;
}

void __NETRBXPCEndPointCreate_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2743E2B10](a2);
  v5 = *(a1 + 32);
  if (v5 && (v5 == __netrbReceiverConnection ? (v6 = v4 == MEMORY[0x277D86480]) : (v6 = 0), v6))
  {
    if (a2 == MEMORY[0x277D86420])
    {
      NETRBInfoLog("received XPC_ERROR_TERMINATION_IMMINENT for %p");
    }

    else if (a2 == MEMORY[0x277D863F8])
    {
      NETRBInfoLog("XPC_ERROR_CONNECTION_INVALID for %p");
    }
  }

  else if (v4 == MEMORY[0x277D86450])
  {
    v7 = *(a1 + 40);
    NETRBInfoLog("new notification connection %p from daemon", a2);
    if (__netrbNotificationConnection)
    {
      xpc_connection_cancel(__netrbNotificationConnection);
      xpc_release(__netrbNotificationConnection);
      __netrbNotificationConnection = 0;
    }

    __netrbNotificationConnection = xpc_retain(a2);
    xpc_connection_set_target_queue(a2, v7);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ____NETRBXPCNewNotificationConnection_block_invoke;
    handler[3] = &__block_descriptor_tmp_86;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }
}

BOOL NETRBXPCCreate(dispatch_queue_t targetq, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__netrbConnection)
  {
    NETRBDebugLog("xpc connection %p to daemon already exists", a2, a3, a4, a5, a6, a7, a8, __netrbConnection);
    return 1;
  }

  __netrbConnection = xpc_connection_create_mach_service(netrbXPCService, targetq, 2uLL);
  if (!__netrbConnection)
  {
    goto LABEL_7;
  }

  if (MEMORY[0x2743E2B10]() != MEMORY[0x277D86450])
  {
    if (__netrbConnection)
    {
      xpc_release(__netrbConnection);
LABEL_8:
      result = 0;
      __netrbConnection = 0;
      return result;
    }

LABEL_7:
    NETRBErrorLog("unable to create connection to daemon %s", netrbXPCService);
    goto LABEL_8;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __NETRBXPCCreate_block_invoke;
  handler[3] = &__block_descriptor_tmp_77;
  handler[4] = __netrbConnection;
  handler[5] = a2;
  xpc_connection_set_event_handler(__netrbConnection, handler);
  NETRBInfoLog("connection %p to daemon created", __netrbConnection);
  xpc_connection_resume(__netrbConnection);
  return __netrbConnection != 0;
}

void __NETRBXPCCreate_block_invoke(uint64_t a1, xpc_object_t object)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __NETRBXPCCreate_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_76;
  v3 = *(a1 + 32);
  v4[4] = object;
  v4[5] = v3;
  xpc_retain(object);
  dispatch_async(*(a1 + 40), v4);
}

void __NETRBXPCCreate_block_invoke_2(uint64_t a1)
{
  if (MEMORY[0x2743E2B10](*(a1 + 32)) == MEMORY[0x277D86480])
  {
    v2 = *(a1 + 40);
    if (v2 == __netrbConnection)
    {
      string = xpc_dictionary_get_string(*(a1 + 32), *MEMORY[0x277D86400]);
      NETRBErrorLog("xpc connection %p to daemon error: %s", v2, string);
      NETRBXPCCleanup();
    }
  }

  else
  {
    NETRBErrorLog("unrecognized event");
  }

  v4 = *(a1 + 32);

  xpc_release(v4);
}

BOOL NETRBXPCCleanup()
{
  v0 = __netrbConnection;
  if (__netrbConnection)
  {
    NETRBInfoLog("cleaning up connection %p to daemon", __netrbConnection);
    xpc_connection_cancel(__netrbConnection);
    xpc_release(__netrbConnection);
    __netrbConnection = 0;
  }

  return v0 != 0;
}

uint64_t NETRBXPCSetupAndSend(NSObject *a1, xpc_object_t xdict, uint64_t a3)
{
  if (xpc_dictionary_get_uint64(xdict, netrbXPCKey) == 1000)
  {
    if (!__netrbReceiverConnection)
    {
      return 0;
    }

    xpc_dictionary_set_connection(xdict, netrbXPCClientComm, __netrbReceiverConnection);
  }

  if (a1)
  {
    v13 = __netrbConnection != 0;
    if (__netrbConnection)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = ____NETRBXPCSendMessage_block_invoke;
      handler[3] = &unk_279EBF1F8;
      handler[4] = a3;
      xpc_connection_send_message_with_reply(__netrbConnection, xdict, a1, handler);
    }

    else
    {
      NETRBDebugLog("connection to daemon does not exist", v6, v7, v8, v9, v10, v11, v12, v22);
    }

    return v13;
  }

  if (!__netrbConnection)
  {
    NETRBDebugLog("connection to daemon does not exist", v6, v7, v8, v9, v10, v11, v12, v22);
    return 0;
  }

  v14 = xpc_connection_send_message_with_reply_sync(__netrbConnection, xdict);
  v15 = v14;
  v16 = MEMORY[0x277D86468];
  if (v14)
  {
    v17 = MEMORY[0x2743E2B10](v14);
    if (v17 != MEMORY[0x277D86480])
    {
      v18 = v17;
      if (v17 == v16)
      {
        if (xpc_dictionary_get_uint64(v15, netrbXPCResponse) == 2002)
        {
          NETRBErrorLog("error: aborting XPC connection to daemon");
          NETRBXPCCleanup();
        }

        v18 = MEMORY[0x277D86468];
      }

      else
      {
        NETRBErrorLog("unknown response");
        NETRBXPCCleanup();
      }

      goto LABEL_18;
    }

    string = xpc_dictionary_get_string(v15, *MEMORY[0x277D86400]);
    NETRBErrorLog("xpc_connection_send_message_with_reply_sync() received %s", string);
    NETRBXPCCleanup();
  }

  else
  {
    NETRBXPCCleanup();
    NETRBErrorLog("NULL response from xpc_connection_send_message_with_reply_sync");
  }

  v18 = MEMORY[0x277D86480];
LABEL_18:
  if (v18 == v16)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  (*(a3 + 16))(a3, v20);
  if (v15)
  {
    xpc_release(v15);
  }

  return 1;
}

BOOL NETRBEndPointCleanup()
{
  v0 = __netrbReceiverConnection;
  if (__netrbReceiverConnection)
  {
    NETRBInfoLog("cleaning up listener connection %p", __netrbReceiverConnection);
    xpc_connection_cancel(__netrbReceiverConnection);
    xpc_release(__netrbReceiverConnection);
    __netrbReceiverConnection = 0;
  }

  return v0 != 0;
}

uint64_t _MISAttach(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  if (__MISDGetQueue_predQueue != -1)
  {
    _MISAttach_cold_1();
  }

  v2 = __MISDGetQueue___misdQueue;
  if (!__MISDGetQueue___misdQueue)
  {
    return 12;
  }

  *a1 = 0;
  v3 = _NETRBClientCreate(v2, &__block_literal_global_13, 0);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  *a1 = v4;
  return result;
}

uint64_t _MISDetach(uint64_t a1)
{
  v1 = 22;
  if (a1)
  {
    if (_NETRBClientDestroy(a1))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v1;
}

uint64_t _MISIsServiceAvailable(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v4 = 0;
    result = _NETRBClientGetGlobalServiceState(result, &v4 + 1, &v4);
    if (result)
    {
      if (HIDWORD(v4) == 1022)
      {
        return 0;
      }

      if (HIDWORD(v4) == 1023)
      {
        return 1;
      }

      result = xpc_dictionary_create(0, 0, 0);
      if (result)
      {
        v2 = result;
        xpc_dictionary_set_uint64(result, netrbClientDeviceType, 1uLL);
        started = _NETRBClientStartService(v1, 0, 201, 301, v2);
        xpc_release(v2);
        if (started)
        {
          result = _NETRBClientGetGlobalServiceState(v1, &v4 + 1, &v4);
          if (result)
          {
            return HIDWORD(v4) == 1023;
          }

          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t _MISGetGlobalServiceState(uint64_t a1, _DWORD *a2, int *a3)
{
  v5 = 0;
  v3 = 22;
  if (a1)
  {
    if (!a3)
    {
      a3 = &v5;
    }

    if (_NETRBClientGetGlobalServiceState(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISGetDynamicStoreKey(uint64_t a1, char *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 22;
  }

  memset(v4, 0, sizeof(v4));
  if (!_NETRBClientGetDynamicStoreKey(a1, v4))
  {
    return 22;
  }

  snprintf(a2, 0x100uLL, "%s", v4);
  return 0;
}

uint64_t _MISSetGlobalServiceState(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if (_NETRBClientSetGlobalServiceState(a1, a2))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISStartServiceDHCP(uint64_t a1, const char *a2, _OWORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  xpc_dictionary_set_string(v5, netrbClientInterfaceName, a2);
  v7 = netrbClientDeviceType;
  v8 = strlen(a2);
  if (!strncmp("ap1", a2, v8))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  xpc_dictionary_set_uint64(v6, v7, v9);
  started = _NETRBClientStartService(a1, 0, 201, 302, v6);
  xpc_release(v6);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPLocal(uint64_t a1, const char *a2, _OWORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  xpc_dictionary_set_string(v5, netrbClientInterfaceName, a2);
  v7 = netrbClientDeviceType;
  v8 = strlen(a2);
  if (!strncmp("ap1", a2, v8))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  xpc_dictionary_set_uint64(v6, v7, v9);
  started = _NETRBClientStartService(a1, 0, 203, 302, v6);
  xpc_release(v6);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPCustom(uint64_t a1, const char *a2, unsigned int a3, unsigned int a4, int a5, _OWORD *a6)
{
  if (!a1)
  {
    return 22;
  }

  a6[14] = 0u;
  a6[15] = 0u;
  a6[12] = 0u;
  a6[13] = 0u;
  a6[10] = 0u;
  a6[11] = 0u;
  a6[8] = 0u;
  a6[9] = 0u;
  a6[6] = 0u;
  a6[7] = 0u;
  a6[4] = 0u;
  a6[5] = 0u;
  a6[2] = 0u;
  a6[3] = 0u;
  *a6 = 0u;
  a6[1] = 0u;
  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  xpc_dictionary_set_string(v11, netrbClientInterfaceName, a2);
  xpc_dictionary_set_uint64(v12, netrbClientInterfaceMTU, a3);
  xpc_dictionary_set_uint64(v12, netrbClientInterfaceInstance, a4);
  v13 = netrbClientDeviceType;
  v14 = strlen(a2);
  if (!strncmp("ap1", a2, v14))
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  xpc_dictionary_set_uint64(v12, v13, v15);
  if (a5 == 1)
  {
    v16 = 203;
  }

  else
  {
    v16 = 201;
  }

  started = _NETRBClientStartService(a1, 0, v16, 302, v12);
  xpc_release(v12);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStartServiceDHCPWithOptions(uint64_t a1, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  if (!a1)
  {
    return 22;
  }

  a9[14] = 0u;
  a9[15] = 0u;
  a9[12] = 0u;
  a9[13] = 0u;
  a9[10] = 0u;
  a9[11] = 0u;
  a9[8] = 0u;
  a9[9] = 0u;
  a9[6] = 0u;
  a9[7] = 0u;
  a9[4] = 0u;
  a9[5] = 0u;
  a9[2] = 0u;
  a9[3] = 0u;
  *a9 = 0u;
  a9[1] = 0u;
  v15 = xpc_dictionary_create(0, 0, 0);
  if (!v15)
  {
    return 12;
  }

  v16 = v15;
  xpc_dictionary_set_string(v15, netrbClientInterfaceName, a2);
  xpc_dictionary_set_uint64(v16, netrbClientDeviceType, a3);
  xpc_dictionary_set_uint64(v16, netrbClientInterfaceMTU, a4);
  xpc_dictionary_set_uint64(v16, netrbClientInterfaceInstance, a5);
  if (a6 == 1)
  {
    v17 = 203;
  }

  else
  {
    v17 = 201;
  }

  started = _NETRBClientStartService(a1, 0, v17, 302, v16);
  xpc_release(v16);
  if (started)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISStopService(uint64_t a1)
{
  v1 = 22;
  if (a1)
  {
    if (_NETRBClientStopService(a1))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v1;
}

uint64_t _MISSetFixtureForwardedPorts(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!a1)
  {
    return 22;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  xpc_dictionary_set_uint64(v6, netrbClientForwardedLowPort, a2);
  xpc_dictionary_set_uint64(v7, netrbClientForwardedHighPort, a3);
  v8 = _NETRBClientSetFixtureForwardedPorts(a1, v7);
  xpc_release(v7);
  if (v8)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t _MISGetFixtureForwardedPorts(void *a1, _WORD *a2, _WORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  v5 = _NETRBClientCopyFixtureForwardedPorts(a1);
  if (!v5)
  {
    return 22;
  }

  v6 = v5;
  if (MEMORY[0x2743E2B10]() != MEMORY[0x277D86468])
  {
    return 22;
  }

  *a2 = xpc_dictionary_get_uint64(v6, netrbClientForwardedLowPort);
  uint64 = xpc_dictionary_get_uint64(v6, netrbClientForwardedHighPort);
  result = 0;
  *a3 = uint64;
  return result;
}

uint64_t _MISIsAllowedMoreHost(uint64_t a1)
{
  if (a1)
  {
    return _NETRBClientIsAllowedMoreHost(a1);
  }

  else
  {
    return 22;
  }
}

uint64_t _MISAddHost(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v3 = a2 + 1;
    }

    else
    {
      v3 = 0;
    }

    if (_NETRBClientAddHost(a1, v3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISRemoveHost(uint64_t a1, int a2)
{
  v2 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v3 = a2 + 1;
    }

    else
    {
      v3 = 0;
    }

    if (_NETRBClientRemoveHost(a1, v3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v2;
}

uint64_t _MISGetHostCount(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = 22;
  if (a1)
  {
    if (_NETRBClientGetHostCount(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISSetHostCount(uint64_t a1, int a2, int a3)
{
  v3 = 22;
  if (a1)
  {
    if ((a2 - 1) < 5)
    {
      v4 = a2 + 1;
    }

    else
    {
      v4 = 0;
    }

    if (_NETRBClientSetHostCount(a1, v4, a3))
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v3;
}

uint64_t _MISGetExt(uint64_t a1, char *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 22;
  }

  v4[0] = 0;
  v4[1] = 0;
  if (!_NETRBClientGetExtName(a1, v4))
  {
    return 22;
  }

  snprintf(a2, 0x10uLL, "%s", v4);
  return 0;
}

uint64_t WFSecurityModeFromScanDictionary(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:5];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:12];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:13];
  v48 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v43 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v41 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v46 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v42 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v45 = [MEMORY[0x277CCABB0] numberWithInt:18];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
    v21 = 0;
    if (!a2)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  v7 = [v3 objectForKey:@"WEP"];

  if (v7)
  {
    v8 = [v3 objectForKey:@"WEP"];
    v9 = [v8 BOOLValue];

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v40 = a2;
  v11 = [v3 objectForKey:@"RSN_IE"];

  if (!v11)
  {
    v20 = 16;
    v21 = v10;
    goto LABEL_52;
  }

  v39 = v5;
  v12 = [v3 objectForKey:@"RSN_IE"];
  v13 = [v12 objectForKey:@"IE_KEY_RSN_AUTHSELS"];
  v14 = [v12 objectForKey:@"IE_KEY_RSN_CAPS"];
  v15 = [v14 objectForKey:@"MFP_REQUIRED"];
  v16 = [v14 objectForKey:@"MFP_CAPABLE"];
  if (v15)
  {
    v19 = v15 != *MEMORY[0x277CBED28] || v16 != *MEMORY[0x277CBED28] || v16 == 0;
  }

  else
  {
    v19 = 1;
  }

  v38 = v6;
  if (([v13 containsObject:v47] & 1) != 0 || objc_msgSend(v13, "containsObject:", v44))
  {
    v22 = 1;
    v23 = 1024;
    v10 = 1024;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  if (([v13 containsObject:v4] & 1) != 0 || (objc_msgSend(v13, "containsObject:", v39) & 1) != 0 || objc_msgSend(v13, "containsObject:", v38))
  {
    if ((v19 | [v13 containsObject:v4]))
    {
      v23 |= 0x20uLL;
      if (!v22)
      {
        v10 = 32;
      }

      v22 = 1;
    }

    else
    {
      if (!v22)
      {
        v10 = 1024;
      }

      v22 = 1;
      v23 = 1056;
    }
  }

  if (([v13 containsObject:v46] & 1) != 0 || objc_msgSend(v13, "containsObject:", v42))
  {
    if (!v22)
    {
      v10 = 512;
    }

    v23 |= 0x200uLL;
    v24 = [v13 containsObject:v45];
  }

  else
  {
    v24 = [v13 containsObject:v45];
    if (!v22)
    {
      v25 = 0;
      v26 = 2048;
      goto LABEL_39;
    }
  }

  v25 = 1;
  v26 = v10;
LABEL_39:
  v27 = v25 | v24;
  if (v24)
  {
    v28 = v23 | 0x800;
  }

  else
  {
    v28 = v23;
  }

  if (v24)
  {
    v20 = v26;
  }

  else
  {
    v20 = v10;
  }

  if (([v13 containsObject:v48] & 1) != 0 || (objc_msgSend(v13, "containsObject:", v43) & 1) != 0 || objc_msgSend(v13, "containsObject:", v41))
  {
    if (!v27)
    {
      v20 = 8;
    }

    v10 = v28 | 8;
  }

  else
  {
    if (v20 == 1)
    {
      v10 = 1075;
    }

    else
    {
      v10 = 32;
    }

    if (v27)
    {
      v10 = v28;
    }

    else
    {
      v20 = v10;
    }
  }

  v6 = v38;
  v5 = v39;

  v21 = v20;
LABEL_52:
  v29 = [v3 objectForKey:@"WPA_IE"];

  if (v29)
  {
    v30 = [v3 objectForKey:@"WPA_IE"];
    v31 = [v30 objectForKey:@"IE_KEY_WPA_AUTHSELS"];
    v32 = [v31 containsObject:v4];
    if (v11)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    if (v32)
    {
      v10 = v10 & 0xFEE | 0x10;
    }

    else
    {
      v10 &= 0xFFEu;
    }

    if (v32)
    {
      v21 = v20;
    }

    if ([v31 containsObject:v48])
    {
      if (!v33)
      {
        v21 = 4;
      }

      v10 |= 4uLL;
    }

    else
    {
      v34 = 16;
      if (v21 == 1)
      {
        v34 = 1075;
      }

      if (!v33)
      {
        v10 = v34;
        v21 = v34;
      }
    }

    a2 = v40;
  }

  else
  {
    a2 = v40;
  }

  v35 = [v3 objectForKey:@"WAPI"];
  if (v35)
  {
    v36 = v35;
    if (([v35 intValue] & 8) != 0)
    {
      v10 = 128;
    }

    else
    {
      v10 = 64;
    }

    v21 = v10;
  }

  if (a2)
  {
LABEL_77:
    *a2 = v10;
  }

LABEL_78:

  return v21;
}

id WFUserNameFromEnterpriseProfile(void *a1)
{
  v1 = [a1 objectForKey:@"EAPClientConfiguration"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:@"UserName"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id WFGetCarNameFromCarPlayNetworkUUID(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CF8A68]);
    v3 = v2;
    if (v2)
    {
      v4 = [v2 vehicleNameForWiFiUUID:v1];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v4;
}

uint64_t WFIsValidIPv4Address(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if ([v3 isValidIPv4Address] && objc_msgSend(v5, "isValidSubnetMask"))
    {
      if ([v3 hasPrefix:@"169.254."])
      {
        v6 = [v5 isEqualToString:@"255.255.0.0"] ^ 1;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t WFIsValidIPv6Address(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  v6[0] = 0;
  v7 = 0;
  v6[1] = 0;
  if (!v1 || (CFStringGetCString(v1, buffer, 46, 0x600u), inet_pton(30, buffer, v6) != 1) || LOBYTE(v6[0]) == 254 && (BYTE1(v6[0]) & 0xC0) == 0x80)
  {
    v4 = 0;
  }

  else
  {
    v3 = LOBYTE(v6[0]) != 255 || (BYTE1(v6[0]) & 0xF0) == 48;
    v4 = (BYTE1(v6[0]) & 0xF) != 2 || v3;
  }

  return v4;
}

BOOL WFScanRecordArchiveToEnterprisePath(void *a1)
{
  [a1 attributes];
  v1 = WiFiNetworkCreate();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = WiFiNetworkArchiveToPath() != 0;
  CFRelease(v2);
  return v3;
}