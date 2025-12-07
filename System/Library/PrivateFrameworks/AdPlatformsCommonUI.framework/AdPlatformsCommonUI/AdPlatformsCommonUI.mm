uint64_t sub_23E74B1A0()
{
  qword_280CCE8D8 = objc_alloc_init(APClientInfoUI);

  return MEMORY[0x2821F96F8]();
}

void sub_23E74B318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_23E74B334(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CE3898];
  v5 = a3;
  v7 = objc_msgSend_remoteObjectInterfaceWithProtocol_(v4, v6, &unk_285121AB0);
  v10 = objc_msgSend__remoteObjectRegistry(a1, v8, v9);
  objc_msgSend_registerExportedObject_interface_(v10, v11, v5, v7);

  return v7;
}

void sub_23E74B3C0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9 = objc_msgSend__remoteObjectRegistry(a1, v6, v7);
  objc_msgSend_unregisterExportedObject_interface_(v9, v8, a1, v5);
}

id sub_23E74B428(void *a1, const char *a2)
{
  v3 = objc_msgSend_remoteObjectInterfaceWithProtocol_(MEMORY[0x277CE3898], a2, &unk_285121BC8);
  v6 = objc_msgSend__remoteObjectRegistry(a1, v4, v5);
  v8 = objc_msgSend_remoteObjectProxyWithInterface_(v6, v7, v3);

  return v8;
}

void *sub_23E74B4A8(void *a1, const char *a2)
{
  objc_msgSend__setInputDelegate_(a1, a2, a1);
  objc_msgSend__setResourceLoadDelegate_(a1, v3, a1);
  result = objc_msgSend_isAppleInternalInstall(MEMORY[0x277CE4AD0], v4, v5);
  if (result)
  {

    return MEMORY[0x2821F9670](a1, sel__setObservedRenderingProgressEvents_, 455);
  }

  return result;
}

void sub_23E74B518(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  sub_23E74B71C(APWebViewResourceLoadCAReporter, v9, v10, a6);
  if (v10)
  {
    if ((byte_27E34F750 & 1) == 0 && objc_msgSend_code(v10, v11, v12) == -1002 && (objc_msgSend_domain(v10, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277CCA738]), v15, isEqualToString))
    {
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"WebKit custom protocols were not registered. Proxy is running: %d", *MEMORY[0x277CE9768]);
      APSimulateCrash();
      byte_27E34F750 = 1;
    }

    else
    {
      v20 = APLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_msgSend_domain(v10, v21, v22);
        v26 = objc_msgSend_code(v10, v24, v25);
        v29 = objc_msgSend_originalURL(v9, v27, v28);
        v32 = objc_msgSend_host(v29, v30, v31);
        *buf = 141559042;
        v34 = 1752392040;
        v35 = 2048;
        v36 = a1;
        v37 = 2114;
        v38 = v23;
        v39 = 2048;
        v40 = v26;
        v41 = 2114;
        v42 = v32;
        _os_log_impl(&dword_23E74A000, v20, OS_LOG_TYPE_ERROR, "WebView (%{mask.hash}p) request failed: %{public}@:%ld. Host: %{public}@", buf, 0x34u);
      }
    }
  }
}

void sub_23E74B71C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v12 = objc_msgSend_originalURL(v6, v10, v11);
  v15 = objc_msgSend_scheme(v12, v13, v14);
  if (objc_msgSend_isEqualToString_(v15, v16, @"blob"))
  {
    v19 = objc_msgSend_originalURL(v6, v17, v18);
    v22 = objc_msgSend_resourceSpecifier(v19, v20, v21);
    hasPrefix = objc_msgSend_hasPrefix_(v22, v23, @"null");

    if (hasPrefix)
    {
      goto LABEL_17;
    }

    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (!objc_msgSend_code(v7, v25, v26))
  {
    v28 = objc_msgSend_domain(v7, v25, v27);
    if (!objc_msgSend_length(v28, v29, v30))
    {
      v33 = objc_msgSend_description(v7, v31, v32);
      if (objc_msgSend_isEqualToString_(v33, v34, @"Redirection to URL with a scheme that is not HTTP(S)"))
      {
        v37 = objc_msgSend_originalURL(v6, v35, v36);
        isHTTPOrHTTPSURL = objc_msgSend__isHTTPOrHTTPSURL_(v9, v38, v37);

        if ((isHTTPOrHTTPSURL & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v49 = -1;
  v50 = 0;
  v48 = 0;
  objc_msgSend__parseResourceLoadResultForError_response_result_errorDomain_errorCode_(v9, v25, v7, v8, &v50, &v48, &v49);
  v41 = v48;
  if (v50)
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_23E74B9B8;
    v47[3] = &unk_278C5A198;
    v47[4] = v50;
    objc_msgSend_sendEventLazy_eventPayloadBuilder_(MEMORY[0x277CE4AB0], v40, @"wk.resource.result", v47);
    if (v50 != 1)
    {
      v42 = MEMORY[0x277CE4AB0];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_23E74BA6C;
      v44[3] = &unk_278C5A1C0;
      v45 = v41;
      v46 = v49;
      objc_msgSend_sendEventLazy_eventPayloadBuilder_(v42, v43, @"wk.resource.error", v44);
    }
  }

LABEL_17:
}

id sub_23E74B9B8(uint64_t a1, const char *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"result";
  v2 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, *(a1 + 32));
  v7[0] = v2;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v7, &v6, 1);

  return v4;
}

id sub_23E74BA6C(uint64_t a1, const char *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%ld", *(a1 + 40), @"domain", @"error", *(a1 + 32));
  v7[1] = v2;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v7, &v6, 2);

  return v4;
}

void sub_23E74BEAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_sharedInputModeController(MEMORY[0x277D75688], v1, v2);
  v6 = objc_msgSend_normalizedEnabledInputModeIdentifiers(v3, v4, v5);
  objc_msgSend_setUserKeyboards_(WeakRetained, v7, v6);
}