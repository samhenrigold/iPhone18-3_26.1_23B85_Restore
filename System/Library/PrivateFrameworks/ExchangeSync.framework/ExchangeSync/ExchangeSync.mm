uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_3(id a1)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t *a1)
{

  return objc_opt_class();
}

id _InfoForNotification(uint64_t a1)
{
  v2 = _NotificationHandlerMap(a1);
  v3 = [v2 objectForKey:a1];

  return v3;
}

void _ReceiveNotificationResponseCallback(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _InfoForNotification(a1);
  v5 = [v4 groupIdentifier];
  if (v5)
  {
    v6 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    [v6 reattainPowerAssertionsForGroupIdentifier:v5];
  }

  v7 = [v4 handler];
  v8 = v7;
  if (v7)
  {
    v9 = (*(v7 + 16))(v7, a1, a2);
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v13 = 138412290;
      v14 = a1;
      _os_log_impl(&dword_24A097000, v10, v11, "No completion block for notification %@", &v13, 0xCu);
    }
  }

  v12 = _NotificationHandlerMap(v9);
  [v12 removeObjectForKey:a1];
}

id _NotificationHandlerMap(uint64_t a1)
{
  if (_NotificationHandlerMap_onceToken != -1)
  {
    _NotificationHandlerMap_cold_1();
  }

  v2 = _NotificationHandlerMap_sNotificationHandlerMap;

  return v2;
}

void sub_24A09D5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A09DAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}