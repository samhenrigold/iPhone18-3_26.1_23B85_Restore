void sub_2371BA58C()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v0 = 0;
    _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton xpc service(locationUI) Interrupted", v0, 2u);
  }
}

void sub_2371BA5EC()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v0 = 0;
    _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton xpc service(locationUI) Invalidated", v0, 2u);
  }
}

void sub_2371BA64C(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = a2;
    _os_log_error_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "#locationButton Error with proxy, error: %@", &v3, 0xCu);
  }
}

void sub_2371BAC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_2371BACD0(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v13 = objc_msgSend_traitCollection(v5, v7, v11, v12, v8, v9);
    hasDifferentColorAppearanceComparedToTraitCollection = objc_msgSend_hasDifferentColorAppearanceComparedToTraitCollection_(v6, v14, v16, v17, v13, v15);

    if (hasDifferentColorAppearanceComparedToTraitCollection)
    {
      v24 = WeakRetained[58];
      v25 = objc_msgSend_traitCollection(v5, v19, v22, v23, v20, v21);
      v30 = objc_msgSend_resolvedColorWithTraitCollection_(v24, v26, v28, v29, v25, v27);
      v31 = WeakRetained[60];
      WeakRetained[60] = v30;

      v32 = WeakRetained[59];
      v38 = objc_msgSend_traitCollection(v5, v33, v36, v37, v34, v35);
      v43 = objc_msgSend_resolvedColorWithTraitCollection_(v32, v39, v41, v42, v38, v40);
      v44 = WeakRetained[61];
      WeakRetained[61] = v43;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v50 = objc_msgSend_traitCollection(v5, v45, v48, v49, v46, v47);
        v51 = WeakRetained[60];
        v52 = WeakRetained[61];
        v53 = 138412802;
        v54 = v50;
        v55 = 2112;
        v56 = v51;
        v57 = 2112;
        v58 = v52;
        _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton traitCollection: %@ backgroundColor:%@ tintColor:%@", &v53, 0x20u);
      }
    }
  }
}

void sub_2371BAE94(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__yieldSlotViewContentForLayerContextID_slotStyle_withYieldBlock_(WeakRetained, v9, v10, v11, a2, v8, v7);
}

void sub_2371BB674(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  v7 = objc_msgSend_locationUIProxy(*(a1 + 32), a2, a5, a6, a3, a4);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2371BB73C;
  v15[3] = &unk_278A27DC8;
  v11 = *(a1 + 72);
  v16 = *(a1 + 64);
  objc_msgSend_getRemoteContentForStyle_layerContext_tag_sandboxExtension_completionHandler_(v7, v12, v13, v14, v8, v11, v9, v10, v15);
}

void sub_2371BB73C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_2371BB834;
    v4[3] = &unk_278A27DA0;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Error: #locationButton remote-imaging suspended. RemoteSlotContent is null", buf, 2u);
  }
}

void sub_2371BC09C(uint64_t a1, void *a2)
{
  v10 = a2;
  objc_msgSend_setAccessibilityContrast_(v10, v2, v4, v5, 0, v3);
  objc_msgSend_setAccessibilityButtonShapes_(v10, v6, v8, v9, 0, v7);
}

double sub_2371BC43C(void *a1, void *a2, double a3)
{
  v25 = 0.0;
  v26 = 0.0;
  v24 = 0.0;
  v5 = a2;
  objc_msgSend_getRed_green_blue_alpha_(a1, v6, v7, v8, &v26, &v25, &v24, 0);
  v22 = 0.0;
  v23 = 0.0;
  v21 = 0.0;
  objc_msgSend_getRed_green_blue_alpha_(v5, v9, v10, v11, &v23, &v22, &v21, 0);

  v12 = (1.0 - a3) * v23 + v26 * a3;
  v13 = v24;
  v14 = (1.0 - a3) * v22 + v25 * a3;
  v15 = (1.0 - a3) * v21;
  if (v12 <= 0.03928)
  {
    v16 = v12 / 12.92;
  }

  else
  {
    v16 = pow((v12 + 0.055) / 1.055, 2.4);
  }

  v17 = v15 + v13 * a3;
  if (v14 <= 0.03928)
  {
    v18 = v14 / 12.92;
  }

  else
  {
    v18 = pow((v14 + 0.055) / 1.055, 2.4);
  }

  if (v17 <= 0.03928)
  {
    v19 = v17 / 12.92;
  }

  else
  {
    v19 = pow((v17 + 0.055) / 1.055, 2.4);
  }

  return v18 * 0.7152 + v16 * 0.2126 + v19 * 0.0722;
}