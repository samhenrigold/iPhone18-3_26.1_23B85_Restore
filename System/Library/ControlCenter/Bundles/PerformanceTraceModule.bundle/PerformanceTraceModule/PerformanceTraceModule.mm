void sub_29C9DE384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C9DE3AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__performanceTraceGlobalStateDidChange(WeakRetained, v1, v2);
}

uint64_t sub_29C9DE48C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__stopRecording(*(a1 + 32), a2, a3);
  v5 = *(a1 + 32);

  return objc_msgSend__cleanupSessionAndUpdateState_(v5, v4, 0);
}

void sub_29C9DE740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C9DE764(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = sub_29C9DE854(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "User selected plan named %{public}@", &v12, 0xCu);
  }

  objc_msgSend_setUserSelectedTracePlanName_(MEMORY[0x29EDC6100], v5, *(a1 + 32));
  objc_msgSend_setSelectedTracePlanName_(WeakRetained, v6, *(a1 + 32));
  objc_msgSend__recreateMenu(WeakRetained, v7, v8);
  objc_msgSend__updateGlyph(*(a1 + 40), v9, v10);

  return 0;
}

id sub_29C9DE854(uint64_t a1)
{
  if (qword_2A179B9F0 != -1)
  {
    sub_29C9E0AF0();
  }

  v2 = qword_2A179B9E8;

  return v2;
}

void sub_29C9DECB4(uint64_t a1, const char *a2)
{
  objc_msgSend__updateState_(*(a1 + 32), a2, *(a1 + 40));
  v5 = objc_msgSend_performanceTraceSession(*(a1 + 32), v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_performanceTraceSession(*(a1 + 32), v6, v7);
    objc_msgSend_setDelegate_(v8, v9, 0);

    v10 = *(a1 + 32);

    MEMORY[0x2A1C70FE8](v10, sel_setPerformanceTraceSession_, 0);
  }
}

void sub_29C9DF2D4(uint64_t a1)
{
  v2 = sub_29C9DE854(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v2, OS_LOG_TYPE_DEFAULT, "Displaying alert for completed trace", buf, 2u);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9DF39C;
  block[3] = &unk_29F33DD28;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x29EDCA578], block);
}

void sub_29C9DFCF4(uint64_t a1)
{
  v2 = MEMORY[0x29EDC0C88];
  v3 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_INFO, "Collecting power metrics passive trace", buf, 2u);
  }

  v6 = objc_msgSend__passiveTraceConfig(*(a1 + 32), v4, v5);
  v8 = v6;
  if (v6)
  {
    v20[0] = 0;
    v9 = objc_msgSend_collectThenClearCurrentSettingWithTraceNamePrefix_triggerUserNotification_errorOut_(v6, v7, 0, 1, v20);
    v10 = v20[0];
    v11 = v10;
    if (v10)
    {
      v14 = MEMORY[0x29EDCA5F8];
      v15 = 3221225472;
      v16 = sub_29C9DFF60;
      v17 = &unk_29F33DDC8;
      v18 = *(a1 + 32);
      v19 = v10;
      BSDispatchMain();
    }

    v12 = *v2;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C9DD000, v12, OS_LOG_TYPE_DEFAULT, "Completed power metrics passive trace collection", buf, 2u);
    }

    objc_msgSend__updateState_(*(a1 + 32), v13, 0, v14, v15, v16, v17, v18);
  }

  else
  {
    v20[1] = MEMORY[0x29EDCA5F8];
    v20[2] = 3221225472;
    v20[3] = sub_29C9DFEB8;
    v20[4] = &unk_29F33DD28;
    v20[5] = *(a1 + 32);
    BSDispatchMain();
  }
}

void sub_29C9DFEB8(uint64_t a1, const char *a2)
{
  v10 = objc_msgSend__localizedString_(*(a1 + 32), a2, @"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_STOP_ERROR");
  v5 = objc_msgSend_contentModuleContext(*(a1 + 32), v3, v4);
  v7 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v6, v10, 0);
  objc_msgSend_enqueueStatusUpdate_(v5, v8, v7);

  objc_msgSend__updateState_(*(a1 + 32), v9, 0);
}

void sub_29C9DFF60(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_ERROR))
  {
    sub_29C9E0E14(a1, v2);
  }

  v4 = objc_msgSend__localizedString_(*(a1 + 32), v3, @"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_PROCESSING_ERROR");
  v7 = objc_msgSend_contentModuleContext(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v8, v4, 0);
  objc_msgSend_enqueueStatusUpdate_(v7, v10, v9);

  objc_msgSend__updateState_(*(a1 + 32), v11, 0);
}

void sub_29C9E00FC(uint64_t a1)
{
  v2 = MEMORY[0x29EDC0C88];
  v3 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "Collecting passive trace", buf, 2u);
  }

  v6 = objc_msgSend__passiveTraceConfig(*(a1 + 32), v4, v5);
  v8 = v6;
  if (v6)
  {
    v21 = 0;
    v9 = objc_msgSend_collectLookbackIntervalWithTraceNamePrefix_triggerUserNotification_errorOut_(v6, v7, 0, 1, &v21);
    v10 = v21;
    v11 = v10;
    if (v10)
    {
      v20 = v10;
      BSDispatchMain();
    }

    v12 = *v2;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C9DD000, v12, OS_LOG_TYPE_DEFAULT, "Completed passive trace collection", buf, 2u);
    }
  }

  else
  {
    v11 = objc_msgSend__localizedString_(*(a1 + 32), v7, @"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_START_ERROR");
    v16 = objc_msgSend_contentModuleContext(*(a1 + 32), v14, v15);
    v18 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v17, v11, 0);
    objc_msgSend_enqueueStatusUpdate_(v16, v19, v18);
  }

  objc_msgSend__updateState_(*(a1 + 32), v13, 0);
}

void sub_29C9E02CC(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_ERROR))
  {
    sub_29C9E0E14(a1, v2);
  }

  v4 = objc_msgSend__localizedString_(*(a1 + 32), v3, @"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_PROCESSING_ERROR");
  v7 = objc_msgSend_contentModuleContext(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v8, v4, 0);
  objc_msgSend_enqueueStatusUpdate_(v7, v10, v9);

  objc_msgSend__updateState_(*(a1 + 32), v11, 0);
}

void sub_29C9E04F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v77 = *MEMORY[0x29EDCA608];
  if (objc_msgSend_state(*(a1 + 32), a2, a3) != *(a1 + 40))
  {
    v4 = *MEMORY[0x29EDC0C88];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4;
      v7 = objc_opt_class();
      v10 = objc_msgSend_state(*(a1 + 32), v8, v9);
      v12 = objc_msgSend_displayNameForState_(v7, v11, v10);
      v15 = objc_msgSend_state(*(a1 + 32), v13, v14);
      v16 = objc_opt_class();
      v18 = objc_msgSend_displayNameForState_(v16, v17, *(a1 + 40));
      v19 = *(a1 + 40);
      v69 = 138544130;
      v70 = v12;
      v71 = 2048;
      v72 = v15;
      v73 = 2114;
      v74 = v18;
      v75 = 2048;
      v76 = v19;
      _os_log_impl(&dword_29C9DD000, v6, OS_LOG_TYPE_DEFAULT, "State changed from %{public}@ (%lu) to %{public}@ (%lu)", &v69, 0x2Au);
    }

    objc_msgSend_setState_(*(a1 + 32), v5, *(a1 + 40));
    v22 = *(a1 + 40);
    if (v22 <= 1)
    {
      if (v22)
      {
        if (v22 != 1)
        {
          return;
        }

        v23 = objc_msgSend__localizedString_(*(a1 + 32), v20, @"CONTROL_CENTER_SUBTITLE_PERFORMANCE_TRACE_STARTING");
        objc_msgSend__updateSubtitle_(*(a1 + 32), v40, v23);
        objc_msgSend_setSelected_(*(a1 + 32), v41, 1);
        v44 = objc_msgSend_buttonView(*(a1 + 32), v42, v43);
        objc_msgSend_setEnabled_(v44, v45, 0);
      }

      else
      {
        v61 = MEMORY[0x29EDC6100];
        v62 = objc_msgSend_selectedTracePlanName(*(a1 + 32), v20, v21);
        v23 = objc_msgSend_displayNameForTracePlanName_(v61, v63, v62);

        objc_msgSend__updateSubtitle_(*(a1 + 32), v64, v23);
        objc_msgSend_setSelected_(*(a1 + 32), v65, 0);
        v44 = objc_msgSend_buttonView(*(a1 + 32), v66, v67);
        objc_msgSend_setEnabled_(v44, v68, 1);
      }

      goto LABEL_17;
    }

    switch(v22)
    {
      case 2:
        v23 = objc_msgSend__localizedString_(*(a1 + 32), v20, @"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_STARTED");
        v48 = objc_msgSend_contentModuleContext(*(a1 + 32), v46, v47);
        v50 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v49, v23, 0);
        objc_msgSend_enqueueStatusUpdate_(v48, v51, v50);

        v25 = objc_msgSend__localizedString_(*(a1 + 32), v52, @"CONTROL_CENTER_SUBTITLE_PERFORMANCE_TRACE_RUNNING");
        objc_msgSend__updateSubtitle_(*(a1 + 32), v53, v25);
        objc_msgSend_setSelected_(*(a1 + 32), v54, 1);
        v38 = objc_msgSend_buttonView(*(a1 + 32), v55, v56);
        objc_msgSend_setEnabled_(v38, v57, 1);
        break;
      case 3:
        objc_msgSend_setSelected_(*(a1 + 32), v20, 1);
        v23 = objc_msgSend_buttonView(*(a1 + 32), v58, v59);
        objc_msgSend_setEnabled_(v23, v60, 0);
        goto LABEL_17;
      case 4:
        v23 = objc_msgSend__localizedString_(*(a1 + 32), v20, @"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_PROCESSING");
        v25 = objc_msgSend__localizedString_(*(a1 + 32), v24, @"CONTROL_CENTER_SUBTITLE_PERFORMANCE_TRACE_PROCESSING");
        objc_msgSend_selectedTracePlanIsPassive(*(a1 + 32), v26, v27);
        objc_msgSend__updateSubtitle_(*(a1 + 32), v28, v25);
        objc_msgSend_setSelected_(*(a1 + 32), v29, 1);
        v32 = objc_msgSend_contentModuleContext(*(a1 + 32), v30, v31);
        v34 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v33, v23, 0);
        objc_msgSend_enqueueStatusUpdate_(v32, v35, v34);

        v38 = objc_msgSend_buttonView(*(a1 + 32), v36, v37);
        objc_msgSend_setEnabled_(v38, v39, 0);
        break;
      default:
        return;
    }

LABEL_17:
  }
}

uint64_t sub_29C9E0A58()
{
  qword_2A179B9E8 = os_log_create("com.apple.ControlCenter", "PerformanceTraceModule");

  return MEMORY[0x2A1C71028]();
}

void sub_29C9E0AA8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_29C9E0AC8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_29C9E0C3C(uint64_t a1, NSObject *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v4 = sub_29C9E0AE4();
  v7 = objc_msgSend_state(v4, v5, v6);
  objc_msgSend_displayNameForState_(v2, v8, v7);
  objc_claimAutoreleasedReturnValue();
  v9 = sub_29C9E0AE4();
  v12 = 138412546;
  v13 = v2;
  v14 = 2048;
  v15 = objc_msgSend_state(v9, v10, v11);
  _os_log_error_impl(&dword_29C9DD000, a2, OS_LOG_TYPE_ERROR, "Button tapped while state was not one of Running or Not Running: %@ (%lu)", &v12, 0x16u);
}

void sub_29C9E0D6C(void *a1)
{
  v2 = a1;
  v3 = sub_29C9E0AE4();
  v6 = objc_msgSend_selectedTracePlanName(v3, v4, v5);
  sub_29C9E0A9C();
  sub_29C9E0AA8(&dword_29C9DD000, v7, v8, "Failed to start passive trace for %{public}@ config: %{public}@", v9, v10, v11, v12);
}

void sub_29C9E0E14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_29C9E0AE4();
  v7 = objc_msgSend_selectedTracePlanName(v4, v5, v6);
  sub_29C9E0A9C();
  sub_29C9E0AA8(&dword_29C9DD000, v8, v9, "Failed to collect passive trace for %{public}@ config: %{public}@", v10, v11, v12, v13);
}