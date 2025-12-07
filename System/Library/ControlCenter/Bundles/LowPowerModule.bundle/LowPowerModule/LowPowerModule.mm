void sub_29C9CF2AC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isExpanded(*(a1 + 32), a2, a3))
  {
    objc_msgSend__configureMenu(*(a1 + 32), v4, v5);
  }

  v6 = *(a1 + 32);
  if (objc_msgSend_isExpanded(v6, v4, v5))
  {
    objc_msgSend_setSelected_(v6, v7, 0);
  }

  else
  {
    isSelected = objc_msgSend_isSelected(*(a1 + 32), v7, v8);
    objc_msgSend_setSelected_(v6, v12, isSelected);
  }

  v13 = *(a1 + 32);
  v15 = objc_msgSend_glyphState(v13, v9, v10);
  objc_msgSend_setGlyphState_(v13, v14, v15);
}

void sub_29C9CF600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C9CF640(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_toggleLowPowerMode(WeakRetained, v2, v3);

  return 0;
}

uint64_t sub_29C9CF674(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_toggleMobileChargeMode(WeakRetained, v3, v4);

  v5 = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_refreshStateAnimated_(v5, v6, 1);

  return 0;
}

id sub_29C9CF92C(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v3 = qword_2A1A12998;
  v13 = qword_2A1A12998;
  if (!qword_2A1A12998)
  {
    v4 = sub_29C9D0018(a1, a2, a3);
    v11[3] = dlsym(v4, "PowerUIMCMStatusAsNotification");
    qword_2A1A12998 = v11[3];
    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v3)
  {
    sub_29C9D0228(v5, v6, v7);
  }

  v8 = *v3;

  return v8;
}

void sub_29C9CFA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C9CFCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C9CFCC8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v7 = MEMORY[0x29EDB9F48];
    v23 = v5;
    v8 = objc_opt_class();
    v10 = objc_msgSend_bundleForClass_(v7, v9, v8);
    v12 = v10;
    if (v6)
    {
      v13 = @"CONTROL_CENTER_STATUS_LOW_POWER_MODE_ON";
    }

    else
    {
      v13 = @"CONTROL_CENTER_STATUS_LOW_POWER_MODE_OFF";
    }

    if (v6)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, v13, &stru_2A23EED98, 0);

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v19 = objc_msgSend_contentModuleContext(WeakRetained, v17, v18);
    v21 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v20, v15, v14);
    objc_msgSend_enqueueStatusUpdate_(v19, v22, v21);

    v5 = v23;
  }
}

Class sub_29C9CFFC0(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_29C9D0018(a1, a2, a3);
  result = objc_getClass("PowerUISmartChargeClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C9D02D8(result, v5, v6);
  }

  qword_2A1A12990 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C9D0018(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!qword_2A1A129A0)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = sub_29C9D0110;
    v5[4] = &unk_29F33D098;
    v5[5] = v5;
    v6 = xmmword_29F33D080;
    v7 = 0;
    qword_2A1A129A0 = _sl_dlopen();
  }

  v3 = qword_2A1A129A0;
  if (!qword_2A1A129A0)
  {
    sub_29C9D0354(v5, a2, a3);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  return v3;
}

uint64_t sub_29C9D0110(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2A1A129A0 = result;
  return result;
}

void *sub_29C9D0184(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_29C9D0018(a1, a2, a3);
  result = dlsym(v4, "PowerUIMCMStatusAsNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1A12998 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_29C9D01D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_29C9D0228(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v4, "NSString *getPowerUIMCMStatusAsNotification(void)");
  v6 = dlerror();
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v7, v5, @"CCUILowPowerModule.m", 22, @"%s", v6);

  __break(1u);
}

void sub_29C9D02D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v4, "Class getPowerUISmartChargeClientClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"CCUILowPowerModule.m", 21, @"Unable to find class %s", "PowerUISmartChargeClient");

  __break(1u);
}

void sub_29C9D0354(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v5, "void *PowerUILibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"CCUILowPowerModule.m", 20, @"%s", *a1);

  __break(1u);
  JUMPOUT(0x29C9D03D4);
}