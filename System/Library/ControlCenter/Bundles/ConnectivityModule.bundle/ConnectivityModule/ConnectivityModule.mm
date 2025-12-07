void sub_29C96259C(uint64_t a1, const char *a2)
{
  objc_msgSend_setDelegate_(*(*(a1 + 32) + 1128), a2, 0);
  v3 = *(a1 + 32);
  v4 = *(v3 + 1128);
  *(v3 + 1128) = 0;
}

uint64_t sub_29C962BF8(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_refresh(*(*(a1 + 32) + 1128), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 1128);

  return objc_msgSend_setDelegate_(v6, v4, v5);
}

void sub_29C962EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_29C962F14(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_airplaneMode(*(*(a1 + 32) + 1128), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_29C963EA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_view(*(a1 + 32), a2, a3);
  objc_msgSend_layoutIfNeeded(v5, v3, v4);
}

void sub_29C964958(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__initializeExpandedView(*(a1 + 32), a2, a3);
  v10 = objc_msgSend_view(*(a1 + 32), v4, v5);
  objc_msgSend_setNeedsLayout(v10, v6, v7);
  objc_msgSend_layoutIfNeeded(v10, v8, v9);
}

void sub_29C9671A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && _NETRBClientCreate())
  {
    v2 = *MEMORY[0x29EDC0C90];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C90], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_29C961000, v2, OS_LOG_TYPE_DEFAULT, "[Hotspot] Starting hotspot service", v3, 2u);
    }

    _NETRBClientSetGlobalServiceState();
    _NETRBClientDestroy();
  }
}

void sub_29C967324(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_29C967340(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  isDiscoverable = objc_msgSend_isDiscoverable(WeakRetained, v5, v6);

  if (isDiscoverable != a2)
  {
    v8 = *MEMORY[0x29EDC0C90];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C90], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = a2;
      _os_log_impl(&dword_29C961000, v8, OS_LOG_TYPE_DEFAULT, "[Hotspot] Hotspot discoverability changed to %d", buf, 8u);
    }

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = sub_29C96747C;
    v9[3] = &unk_29F337440;
    objc_copyWeak(&v10, (a1 + 32));
    v11 = a2;
    dispatch_async(MEMORY[0x29EDCA578], v9);
    objc_destroyWeak(&v10);
  }
}

void sub_29C96747C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setDiscoverable_(WeakRetained, v3, *(a1 + 40));

  v6 = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__updateState(v6, v4, v5);
}

void sub_29C9675B4(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v19 = 0;
    v3 = _NETRBClientCreate();
    v4 = v3;
    if (v3)
    {
      v18 = 0;
      v17 = 0;
      _NETRBClientGetGlobalServiceState();
      _NETRBClientGetHostCount();
      _NETRBClientDestroy();
      v16 = 0;
      v15 = 0;
      v5 = _CTServerConnectionCreateWithIdentifier();
      if (v5)
      {
        v6 = v5;
        _CTServerConnectionGetCellularDataSettings();
        CFRelease(v6);
        v7 = HIBYTE(v16) == 1;
        v8 = v16 == 1;
        v9 = v15 == 1;
      }

      else
      {
        v9 = 0;
        v8 = 0;
        v7 = 0;
      }

      v10 = *MEMORY[0x29EDC0C90];
      if (os_log_type_enabled(*MEMORY[0x29EDC0C90], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134350336;
        v21 = WeakRetained;
        v22 = 1024;
        v23 = 0;
        v24 = 1024;
        v25 = 0;
        v26 = 1024;
        v27 = v7;
        v28 = 1024;
        v29 = v8;
        v30 = 1024;
        v31 = v9;
        _os_log_impl(&dword_29C961000, v10, OS_LOG_TYPE_DEFAULT, "[Hotspot] (%{public}p) Evaluating state... (shouldShowTethering: %d, isDataPrevented: %d, isCellularDataCapable: %d, isCellularDataEnabled: %d, isAirplaneModeEnabled: %d)", buf, 0x2Au);
      }

      v4 = (!v7 || !v8 || v9) | 1;
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = sub_29C967838;
    block[3] = &unk_29F337490;
    objc_copyWeak(&v12, (a1 + 40));
    v14 = v4 & 1;
    v13 = v19;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x29EDCA578], block);
    objc_destroyWeak(&v12);
  }
}

void sub_29C967838(uint64_t a1)
{
  v46 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  isHotspotRestricted = objc_msgSend__isHotspotRestricted(WeakRetained, v3, v4);
  v6 = MEMORY[0x29EDC0C90];
  v7 = *MEMORY[0x29EDC0C90];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C90], OS_LOG_TYPE_DEFAULT))
  {
    v36 = 134349312;
    v37 = WeakRetained;
    v38 = 1024;
    v39 = isHotspotRestricted;
    _os_log_impl(&dword_29C961000, v7, OS_LOG_TYPE_DEFAULT, "[Hotspot] (%{public}p) Evaluating state... (isHotspotRestricted: %d)", &v36, 0x12u);
  }

  objc_msgSend_setInoperative_(WeakRetained, v8, (*(a1 + 52) | isHotspotRestricted) & 1);
  objc_msgSend_setConnections_(WeakRetained, v9, *(a1 + 48));
  if (*(a1 + 52))
  {
    objc_msgSend_setEnabled_(WeakRetained, v10, 0);
  }

  else
  {
    objc_msgSend_setEnabled_(WeakRetained, v10, *(a1 + 48) != 0);
  }

  v13 = objc_msgSend_subtitleText(WeakRetained, v11, v12);
  objc_msgSend_setSubtitle_(WeakRetained, v14, v13);

  v17 = objc_msgSend__glyphImageForCurrentState(*(a1 + 32), v15, v16);
  objc_msgSend_setGlyphImage_(WeakRetained, v18, v17);

  isDiscoverable = objc_msgSend_isDiscoverable(WeakRetained, v19, v20);
  v23 = isDiscoverable;
  v24 = 0;
  if ((*(a1 + 52) & 1) == 0 && isDiscoverable)
  {
    v24 = *(a1 + 48) == 0;
  }

  objc_msgSend_setUseAlternateBackground_(WeakRetained, v22, v24);
  v25 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    isInoperative = objc_msgSend_isInoperative(WeakRetained, v27, v28);
    isEnabled = objc_msgSend_isEnabled(WeakRetained, v30, v31);
    v35 = objc_msgSend_connections(WeakRetained, v33, v34);
    v36 = 134350080;
    v37 = WeakRetained;
    v38 = 1024;
    v39 = isInoperative;
    v40 = 1024;
    v41 = isEnabled;
    v42 = 1024;
    v43 = v23;
    v44 = 1024;
    v45 = v35;
    _os_log_impl(&dword_29C961000, v26, OS_LOG_TYPE_DEFAULT, "[Hotspot] (%{public}p) Updated state [ inoperative: %d enabled: %d discoverable: %d connections: %d ]", &v36, 0x24u);
  }
}