void sub_29C9EE00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C9EE034(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_29C9EE0EC;
  v5[3] = &unk_29F33EB30;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x29EDCA578], v5);

  objc_destroyWeak(&v7);
}

void sub_29C9EE0EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__updateMenuItemsWithDate_(WeakRetained, v2, *(a1 + 32));
}

void sub_29C9EE680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(va);
  objc_destroyWeak((v24 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_29C9EE6DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend__turnOnSpokenMessages(WeakRetained, v2, v3);
    objc_msgSend__refreshState(v4, v5, v6);
  }

  return 1;
}

uint64_t sub_29C9EE720(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend__muteSpokenMessages(WeakRetained, v2, v3);
    objc_msgSend__refreshState(v4, v5, v6);
  }

  return 1;
}

uint64_t sub_29C9EE764(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend__turnOffSpokenMessagesForTheDay(WeakRetained, v2, v3);
    objc_msgSend__refreshState(v4, v5, v6);
  }

  return 1;
}

void sub_29C9EEF38(uint64_t a1, char a2)
{
  objc_initWeak(&location, *(a1 + 32));
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C9EEFF4;
  v4[3] = &unk_29F33EBA8;
  v6 = a2;
  v4[4] = *(a1 + 32);
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x29EDCA578], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_29C9EEFF4(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = (*(a1 + 48) & 1) == 0 && objc_msgSend_isDeviceInEligibleAnnounceNotificationsConfiguration(*(a1 + 32), a2, a3) && objc_msgSend_contentRenderingMode(*(a1 + 32), v4, v5) != 1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  isExpanded = objc_msgSend_isExpanded(*(a1 + 32), v7, v8);
  objc_msgSend__refreshStateWithSelected_expanded_(WeakRetained, v10, v6, isExpanded);
}

uint64_t sub_29C9EF288(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    objc_msgSend_setSelected_(v4, a2, 0);
    v5 = *(a1 + 32);
    v6 = @"*";
  }

  else
  {
    objc_msgSend_setSelected_(v4, a2, *(a1 + 41));
    v7 = *(a1 + 32);
    if (objc_msgSend_isSelected(v7, v8, v9))
    {
      v6 = @"on";
    }

    else
    {
      v6 = @"off";
    }

    v5 = v7;
  }

  return MEMORY[0x2A1C70FE8](v5, sel_setGlyphState_, v6);
}

void sub_29C9EF48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C9EF4B0(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a2)
  {
    objc_msgSend__turnOnSpokenMessages(WeakRetained, v5, v6);
  }

  else
  {
    objc_msgSend__turnOffSpokenMessagesForTheDay(WeakRetained, v5, v6);
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__refreshState(v10, v8, v9);
}

void sub_29C9EF8A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend__fetchAnnounceSettingsAndRefreshState(WeakRetained, v2, v3);
    WeakRetained = v4;
  }
}