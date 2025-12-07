id LogCategory_Unspecified()
{
  if (LogCategory_Unspecified_onceToken != -1)
  {
    LogCategory_Unspecified_cold_1();
  }

  v1 = LogCategory_Unspecified_log;

  return v1;
}

void sub_1DF651670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF6527DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF652970(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1DF653E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
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

void sub_1DF6562B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DF6569D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF656D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id LogCategory_Locations(uint64_t a1)
{
  if (LogCategory_Locations_onceToken != -1)
  {
    LogCategory_Locations_cold_1();
  }

  v2 = LogCategory_Locations_log;

  return v2;
}

id LogCategory_Accessory(uint64_t a1)
{
  if (LogCategory_Accessory_onceToken != -1)
  {
    LogCategory_Accessory_cold_1();
  }

  v2 = LogCategory_Accessory_log;

  return v2;
}

id LogCategory_Traffic(uint64_t a1)
{
  if (LogCategory_Traffic_onceToken != -1)
  {
    LogCategory_Traffic_cold_1();
  }

  v2 = LogCategory_Traffic_log;

  return v2;
}

id LogCategory_Encoder(uint64_t a1)
{
  if (LogCategory_Encoder_onceToken != -1)
  {
    LogCategory_Encoder_cold_1();
  }

  v2 = LogCategory_Encoder_log;

  return v2;
}

id LogCategory_Bluetooth_Session(uint64_t a1)
{
  if (LogCategory_Bluetooth_Session_onceToken != -1)
  {
    LogCategory_Bluetooth_Session_cold_1();
  }

  v2 = LogCategory_Bluetooth_Session_log;

  return v2;
}

id LogCategory_Extensions(uint64_t a1)
{
  if (LogCategory_Extensions_onceToken != -1)
  {
    LogCategory_Extensions_cold_1();
  }

  v2 = LogCategory_Extensions_log;

  return v2;
}

id LogCategory_Extensions_PlaySound(uint64_t a1)
{
  if (LogCategory_Extensions_PlaySound_onceToken != -1)
  {
    LogCategory_Extensions_PlaySound_cold_1();
  }

  v2 = LogCategory_Extensions_PlaySound_log;

  return v2;
}

id LogCategory_SecureLocations(uint64_t a1)
{
  if (LogCategory_SecureLocations_onceToken != -1)
  {
    LogCategory_SecureLocations_cold_1();
  }

  v2 = LogCategory_SecureLocations_log;

  return v2;
}

id LogCategory_HealUCRT(uint64_t a1)
{
  if (LogCategory_HealUCRT_onceToken != -1)
  {
    LogCategory_HealUCRT_cold_1();
  }

  v2 = LogCategory_HealUCRT_log;

  return v2;
}

id LogCategory_DeviceTnL(uint64_t a1)
{
  if (LogCategory_DeviceTnL_onceToken != -1)
  {
    LogCategory_DeviceTnL_cold_1();
  }

  v2 = LogCategory_DeviceTnL_log;

  return v2;
}

id LogCategory_RepairDevice(uint64_t a1)
{
  if (LogCategory_RepairDevice_onceToken != -1)
  {
    LogCategory_RepairDevice_cold_1();
  }

  v2 = LogCategory_RepairDevice_log;

  return v2;
}

id LogCategory_ALFailureAnalytics(uint64_t a1)
{
  if (LogCategory_ALFailureAnalytics_onceToken != -1)
  {
    LogCategory_ALFailureAnalytics_cold_1();
  }

  v2 = LogCategory_ALFailureAnalytics_log;

  return v2;
}

id LogCategory_DisableLocationDisplay(uint64_t a1)
{
  if (LogCategory_DisableLocationDisplay_onceToken != -1)
  {
    LogCategory_DisableLocationDisplay_cold_1();
  }

  v2 = LogCategory_DisableLocationDisplay_log;

  return v2;
}

id LogCategory_AccountRatchet(uint64_t a1)
{
  if (LogCategory_AccountRatchet_onceToken != -1)
  {
    LogCategory_AccountRatchet_cold_1();
  }

  v2 = LogCategory_AccountRatchet_log;

  return v2;
}

id LogCategory_OwnerAuthentication(uint64_t a1)
{
  if (LogCategory_OwnerAuthentication_onceToken != -1)
  {
    LogCategory_OwnerAuthentication_cold_1();
  }

  v2 = LogCategory_OwnerAuthentication_log;

  return v2;
}

id LogCategory_Automation(uint64_t a1)
{
  if (LogCategory_Automation_onceToken != -1)
  {
    LogCategory_Automation_cold_1();
  }

  v2 = LogCategory_Automation_log;

  return v2;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF667D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF669EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1DF66DEE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}