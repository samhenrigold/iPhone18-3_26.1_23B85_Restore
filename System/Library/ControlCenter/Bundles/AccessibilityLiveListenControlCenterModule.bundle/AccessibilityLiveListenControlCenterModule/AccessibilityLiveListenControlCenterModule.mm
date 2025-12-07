void sub_29C925664(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_29C9256A0(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F70];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  isLiveListenEnabled = objc_msgSend_isLiveListenEnabled(WeakRetained, v3, v4);

  v6 = *MEMORY[0x29EDC7FC0];
  if (!isLiveListenEnabled)
  {
    v6 = 0;
  }

  return v6 | v1;
}

void sub_29C925700(uint64_t a1, char a2, double a3)
{
  objc_copyWeak(v5, (a1 + 32));
  v6 = a2;
  v5[1] = *&a3;
  AXPerformBlockOnMainThread();
  objc_destroyWeak(v5);
}

void sub_29C9257B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setIsLiveListenEnabled_(WeakRetained, v4, v2);

  LODWORD(WeakRetained) = *(a1 + 48);
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = MEMORY[0x29EDC7AC8];
  if (WeakRetained == 1)
  {
    v9 = *(a1 + 40);
    v10 = objc_msgSend_configurationWithPointSize_(MEMORY[0x29EDC7AD0], v5, v6, 30.0);
    v12 = objc_msgSend_systemImageNamed_variableValue_withConfiguration_(v8, v11, @"mic.and.signal.meter.fill", v10, v9);
    objc_msgSend_setGlyphImage_(v7, v13, v12);
  }

  else
  {
    v10 = objc_msgSend_systemImageNamed_(MEMORY[0x29EDC7AC8], v5, @"mic.fill");
    v12 = objc_msgSend_configurationWithPointSize_(MEMORY[0x29EDC7AD0], v14, v15, 30.0);
    v17 = objc_msgSend_imageByApplyingSymbolConfiguration_(v10, v16, v12);
    objc_msgSend_setGlyphImage_(v7, v18, v17);
  }

  v21 = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__updateSelectedStatus(v21, v19, v20);
}