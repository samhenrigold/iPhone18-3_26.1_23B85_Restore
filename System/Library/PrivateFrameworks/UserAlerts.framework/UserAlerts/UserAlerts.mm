id URTLog(uint64_t a1)
{
  if (URTLog_onceToken != -1)
  {
    URTLog_cold_1();
  }

  v2 = URTLog_logger;

  return v2;
}

uint64_t __URTLog_block_invoke()
{
  URTLog_logger = os_log_create("com.apple.UserAlerts", "UserAlerts");

  return MEMORY[0x2821F96F8]();
}

uint64_t _URTUserNotificationRunLoopCallback(uint64_t a1, uint64_t a2)
{
  v4 = URTLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _URTUserNotificationRunLoopCallback_cold_1(a2, v4);
  }

  return [URTUserNotificationPresentation invokeHandlerForUserNotification:a1 responseFlags:a2];
}

void sub_2708371F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *URTDescriptionForAlertPresentationStyle(uint64_t a1)
{
  v1 = @"default";
  if (a1 == 1)
  {
    v1 = @"modal";
  }

  if (a1 == 2)
  {
    return @"full sheet";
  }

  else
  {
    return v1;
  }
}

void sub_270837E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270838510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

__CFString *URTDescriptionForAlertDestination(uint64_t a1)
{
  v1 = @"default";
  if (a1 == 1)
  {
    v1 = @"CarPlay";
  }

  if (a1 == 2)
  {
    return @"Previews";
  }

  else
  {
    return v1;
  }
}

__CFString *URTMachPortNameForAlertDestination(uint64_t a1)
{
  v1 = @"com.apple.CarPlayApp.user-alerts-service";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"com.apple.preview-shell.user-alerts-service";
  }

  else
  {
    return v1;
  }
}

void sub_270839604(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id URTVerifyString(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v3 = v1;
  }

  else
  {
    v4 = URTLog(isKindOfClass);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      URTVerifyString_cold_1(v1, v4);
    }

    v3 = 0;
  }

  return v3;
}

id URTVerifyClass(void *a1, uint64_t a2)
{
  v3 = a1;
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
  }

  else
  {
    v6 = URTLog(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      URTVerifyClass_cold_1(v3, a2, v6);
    }

    v5 = 0;
  }

  return v5;
}

URTAlertPresenter *URTAlertCreate(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(URTAlertPresenter);
  [(URTAlertPresenter *)v6 _addDefaultDestinationAlertFromUserNotificationContents:v5 flags:a1];
  v7 = [v5 objectForKeyedSubscript:@"URTAlertCarPlayHeaderKey"];
  v8 = URTVerifyString(v7);

  v9 = [v5 objectForKeyedSubscript:@"URTAlertCarPlayMessageKey"];
  v10 = URTVerifyString(v9);

  if (v8 | v10)
  {
    objc_initWeak(&location, v6);
    v11 = [[URTAlert alloc] initWithTitle:v8 message:v10];
    v12 = [v5 objectForKeyedSubscript:@"URTAlertCarPlayDefaultButtonTitleKey"];
    v13 = URTVerifyString(v12);

    if (v13)
    {
      v14 = [URTAlertAction alloc];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __URTAlertCreate_block_invoke;
      v33[3] = &unk_279E0BF38;
      objc_copyWeak(&v34, &location);
      v15 = [(URTAlertAction *)v14 initWithTitle:v13 handler:v33];
      [(URTAlert *)v11 setDefaultAction:v15];

      objc_destroyWeak(&v34);
    }

    v16 = [v5 objectForKeyedSubscript:@"URTAlertCarPlayCancelButtonTitleKey"];
    v17 = URTVerifyString(v16);

    if (v17)
    {
      v18 = [URTAlertAction alloc];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __URTAlertCreate_block_invoke_2;
      v31[3] = &unk_279E0BF38;
      objc_copyWeak(&v32, &location);
      v19 = [(URTAlertAction *)v18 initWithTitle:v17 handler:v31];
      [(URTAlert *)v11 setCancelAction:v19];

      objc_destroyWeak(&v32);
    }

    v20 = [v5 objectForKeyedSubscript:@"SBUserNotificationAllowedApplications"];
    v21 = objc_opt_class();
    v22 = URTVerifyClass(v20, v21);

    [(URTAlert *)v11 setAllowedApplicationBundleIDs:v22];
    [(URTAlertPresenter *)v6 addAlert:v11 forDestination:1];

    objc_destroyWeak(&location);
  }

  v23 = [v5 objectForKeyedSubscript:@"URTAlertShowInPreviewsKey"];
  if (!v23)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v26 = URTLog(isKindOfClass);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      URTAlertCreate_cold_1(v23, v26);
    }

LABEL_14:
    goto LABEL_15;
  }

  v25 = [v23 BOOLValue];

  if (v25)
  {
    [(URTAlertPresenter *)v6 _addFromUserNotificationContents:v5 toServiceDestination:2];
  }

LABEL_15:
  [(URTAlertPresenter *)v6 present];
  v27 = [(URTAlertPresenter *)v6 userNotificationPresentation];
  v28 = [v27 error];

  if (v28)
  {
    v29 = 0;
    if (a2)
    {
      *a2 = v28;
    }
  }

  else
  {
    v29 = v6;
  }

  return v29;
}

void sub_27083A8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __URTAlertCreate_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeCallbackForResponseFlags:0];
}

void __URTAlertCreate_block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeCallbackForResponseFlags:1];
}

uint64_t URTAlertCreateRunLoopSource(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  [v5 setCompatibilityCallback:a2];
  v6 = [v5 userNotificationPresentation];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __URTAlertCreateRunLoopSource_block_invoke;
  v10[3] = &unk_279E0BFC0;
  v11 = v5;
  v7 = v5;
  v8 = [v6 createRunLoopSourceOrdered:a3 handler:v10];

  return v8;
}

void sub_27083AD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27083AF60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void _URTUserNotificationRunLoopCallback_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_270835000, a2, OS_LOG_TYPE_DEBUG, "CFUserNotification callback response flags: %lu", &v2, 0xCu);
}

void URTVerifyString_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_270835000, a2, OS_LOG_TYPE_ERROR, "object %@ is not a string", &v2, 0xCu);
}

void URTVerifyClass_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_270835000, log, OS_LOG_TYPE_ERROR, "object %@ is not of class %@", &v3, 0x16u);
}

void URTAlertCreate_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_270835000, a2, OS_LOG_TYPE_ERROR, "object %@ is not a BOOL number", &v2, 0xCu);
}