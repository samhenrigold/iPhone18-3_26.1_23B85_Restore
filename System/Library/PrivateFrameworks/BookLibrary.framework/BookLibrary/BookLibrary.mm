uint64_t sub_241D0E208(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = qword_280C4FA88;
  qword_280C4FA88 = v2;

  v4 = BLDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = qword_280C4FA88;
    _os_log_impl(&dword_241D0D000, v4, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: using singelton instance: %@", &v7, 0xCu);
  }

  return objc_msgSend_overrideSharedInstance_(*(a1 + 32), v5, qword_280C4FA88);
}

id sub_241D0E308()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_280C4FA78;
  v7 = qword_280C4FA78;
  if (!qword_280C4FA78)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D0E444;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D0E444(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D0E3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D0E3E8()
{
  v3 = 0;
  v0 = sub_241D0E49C(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

Class sub_241D0E444(uint64_t a1)
{
  sub_241D0E3E8();
  result = objc_getClass("MPMediaQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_280C4FA78 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D1828C();
    return sub_241D0E49C(v3);
  }

  return result;
}

uint64_t sub_241D0E49C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = qword_280C4FA80;
  v6 = qword_280C4FA80;
  if (!qword_280C4FA80)
  {
    v7 = xmmword_278D15910;
    v8 = *off_278D15920;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_280C4FA80 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_241D0E5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_241D0E5C8(uint64_t a1)
{
  if (qword_27EC71288 != -1)
  {
    sub_241D1809C();
  }

  v2 = qword_27EC71280;

  return v2;
}

uint64_t sub_241D0E60C()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = qword_27EC71280;
  qword_27EC71280 = v0;

  objc_msgSend_setMaxConcurrentOperationCount_(qword_27EC71280, v2, -1);
  objc_msgSend_setQualityOfService_(qword_27EC71280, v3, 25);
  v4 = qword_27EC71280;

  return MEMORY[0x2821F9670](v4, sel_setName_, @"com.apple.BookLibrary.NSOperationQueue.HLS");
}

void sub_241D0E88C(uint64_t a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_uiManagerDelegate(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_downloadQueue(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_request(*(a1 + 32), v8, v9);
  v11 = BLDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&dword_241D0D000, v11, OS_LOG_TYPE_DEBUG, "[UIHostServiceProxy]: most recent uiManagerDelegate: %@", buf, 0xCu);
  }

  if (!v4)
  {
LABEL_6:
    v15 = objc_msgSend__topMostViewController(*(a1 + 32), v12, v13);
LABEL_7:
    sub_241D10988();
    if (objc_opt_class())
    {
      if (v15)
      {
        v18 = BLDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v15;
          _os_log_impl(&dword_241D0D000, v18, OS_LOG_TYPE_DEBUG, "[UIHostServiceProxy]: use in-process authenticate with presenter %@", buf, 0xCu);
        }

        sub_241D10988();
        v19 = objc_alloc(objc_opt_class());
        v21 = objc_msgSend_initWithRequest_presentingViewController_(v19, v20, *(a1 + 40), v15);
        v24 = objc_msgSend_performAuthentication(v21, v22, v23);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = sub_241D0EBB0;
        v28[3] = &unk_278D156F0;
        v29 = *(a1 + 48);
        objc_msgSend_addFinishBlock_(v24, v25, v28);
      }

      else
      {
        v24 = objc_msgSend_fallback(*(a1 + 32), v16, v17);
        objc_msgSend_handleAuthenticateRequest_withReply_(v24, v27, *(a1 + 40), *(a1 + 48));
      }
    }

    else
    {
      v24 = BLDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241D0D000, v24, OS_LOG_TYPE_ERROR, "[UIHostServiceProxy]: failed to soft link AMSUI!", buf, 2u);
      }
    }

    goto LABEL_19;
  }

  if (objc_msgSend_downloadQueue_shouldShowAuthenticateForRequest_(v4, v12, v7, v10))
  {
    v15 = objc_msgSend_downloadQueue_viewControllerToPresentAuthenticateUIForRequest_(v4, v14, v7, v10);
    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = BLDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v26, OS_LOG_TYPE_DEBUG, "[UIHostServiceProxy]: client rejected authenticate request.", buf, 2u);
  }

  v15 = MEMORY[0x245CFEDE0](*(a1 + 48));
  if (v15)
  {
    v24 = BLError();
    (v15)[2](v15, 0, v24);
LABEL_19:
  }
}

void sub_241D0EBB0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MEMORY[0x245CFEDE0](*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

void sub_241D0ED94(id *a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_uiManagerDelegate(a1[4], a2, a3);
  v7 = objc_msgSend_downloadQueue(a1[4], v5, v6);
  v12 = objc_msgSend_request(a1[4], v8, v9);
  if (!v4)
  {
LABEL_4:
    v14 = objc_msgSend__topMostViewController(a1[4], v10, v11);
LABEL_5:
    sub_241D10AC0();
    if (objc_opt_class())
    {
      sub_241D10BF8();
      if (objc_opt_class())
      {
        if (v14)
        {
          v17 = BLDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v14;
            _os_log_impl(&dword_241D0D000, v17, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: use in-process dialog with presenter %@", buf, 0xCu);
          }

          sub_241D10AC0();
          v18 = objc_alloc(objc_opt_class());
          v20 = objc_msgSend_initWithRequest_presentingViewController_(v18, v19, a1[5], v14);
          v23 = objc_msgSend_present(v20, v21, v22);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = sub_241D0F090;
          v29[3] = &unk_278D15768;
          v30 = a1[5];
          v31 = a1[6];
          objc_msgSend_addFinishBlock_(v23, v24, v29);
        }

        else
        {
          v27 = objc_msgSend_fallback(a1[4], v15, v16);
          objc_msgSend_handleDialogRequest_withReply_(v27, v28, a1[5], a1[6]);
        }

        goto LABEL_18;
      }
    }

    v25 = BLDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D0D000, v25, OS_LOG_TYPE_ERROR, "[UIHostServiceProxy]: failed to soft link AMSUI!", buf, 2u);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (objc_msgSend_downloadQueue_shouldShowDialogForRequest_(v4, v10, v7, v12))
  {
    v14 = objc_msgSend_downloadQueue_viewControllerToPresentDialogUIForRequest_(v4, v13, v7, v12);
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v26 = BLDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v26, OS_LOG_TYPE_DEBUG, "[UIHostServiceProxy]: client rejected dialog request.", buf, 2u);
  }

  v14 = MEMORY[0x245CFEDE0](a1[6]);
  if (v14)
  {
    v25 = BLError();
    (v14)[2](v14, 0, v25);
    goto LABEL_17;
  }

LABEL_18:
}

void sub_241D0F090(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BLDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v16 = 138412290;
    v17 = v6;
    v9 = "[UIHostServiceProxy] received error from AMSSystemAlertDialogTask:  %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    v16 = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v5;
    v9 = "[UIHostServiceProxy] received result from AMSSystemAlertDialogTask for request %@ and calling replay block with result %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 22;
  }

  _os_log_impl(&dword_241D0D000, v10, v11, v9, &v16, v12);
LABEL_7:

  v14 = MEMORY[0x245CFEDE0](*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }
}

void sub_241D0F33C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_uiManagerDelegate(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_downloadQueue(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_request(*(a1 + 32), v8, v9);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_241D0F4EC;
  v24 = &unk_278D157B8;
  v11 = v4;
  v25 = v11;
  v12 = v7;
  v26 = v12;
  v13 = v10;
  v27 = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v30 = v14;
  v28 = v15;
  v29 = v16;
  v17 = MEMORY[0x245CFEDE0](&v21);
  if (!v11)
  {
    goto LABEL_6;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      shouldShowEngagementForRequest = objc_msgSend_downloadQueue_shouldShowEngagementForRequest_(v11, v19, v12, v13, v21, v22, v23, v24, v25, v26, v27, v28);
      v17[2](v17, shouldShowEngagementForRequest);
      goto LABEL_7;
    }

LABEL_6:
    v17[2](v17, 1);
    goto LABEL_7;
  }

  objc_msgSend_downloadQueue_shouldShowEngagementForRequest_engagementRequest_completion_(v11, v18, v12, v13, *(a1 + 40), v17, v21, v22, v23, v24, v25, v26, v27, v28);
LABEL_7:
}

void sub_241D0F4EC(uint64_t a1, const char *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = objc_msgSend_downloadQueue_viewControllerToPresentEngagementUIForRequest_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48));
    if (!v5)
    {
      v5 = objc_msgSend__topMostViewController(*(a1 + 56), v3, v4);
    }

    sub_241D10D30();
    if (objc_opt_class())
    {
      v6 = BLDefaultLog();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          *buf = 138412290;
          v26 = v5;
          _os_log_impl(&dword_241D0D000, v6, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: use in-process engagement with presenter %@", buf, 0xCu);
        }

        v10 = objc_msgSend_defaultBag(MEMORY[0x277CF3300], v8, v9);
        sub_241D10D30();
        v11 = objc_alloc(objc_opt_class());
        v13 = objc_msgSend_initWithRequest_bag_presentingViewController_(v11, v12, *(a1 + 64), v10, v5);
        v16 = objc_msgSend_presentEngagement(v13, v14, v15);
      }

      else
      {
        if (v7)
        {
          *buf = 0;
          _os_log_impl(&dword_241D0D000, v6, OS_LOG_TYPE_DEFAULT, "[UIHostServiceProxy]: Presenter not found for engagement request", buf, 2u);
        }

        v20 = MEMORY[0x277CEE630];
        v10 = BLError();
        v16 = objc_msgSend_promiseWithError_(v20, v21, v10);
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_241D0F81C;
      v23[3] = &unk_278D15790;
      v24 = *(a1 + 72);
      objc_msgSend_addFinishBlock_(v16, v22, v23);
    }

    else
    {
      v18 = BLDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241D0D000, v18, OS_LOG_TYPE_ERROR, "[UIHostServiceProxy]: failed to soft link AMSUI!", buf, 2u);
      }

      v16 = MEMORY[0x245CFEDE0](*(a1 + 72));
      if (v16)
      {
        v19 = BLError();
        (v16)[2](v16, 0, v19);
      }
    }

    goto LABEL_21;
  }

  v17 = BLDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v17, OS_LOG_TYPE_DEBUG, "[UIHostServiceProxy]: client rejected engagement request.", buf, 2u);
  }

  v5 = MEMORY[0x245CFEDE0](*(a1 + 72));
  if (v5)
  {
    v16 = BLError();
    v5[2](v5, 0, v16);
LABEL_21:
  }
}

void sub_241D0F81C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MEMORY[0x245CFEDE0](*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

void sub_241D0FAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D0FACC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241D0FAE4(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  sub_241D10118();
  v3 = objc_opt_class();
  v6 = objc_msgSend_sharedApplication(v3, v4, v5);
  v9 = objc_msgSend_connectedScenes(v6, v7, v8);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v60, v64, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v61;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v61 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v60 + 1) + 8 * i);
        if (!objc_msgSend_activationState(v17, v12, v13))
        {
          v18 = objc_msgSend_session(v17, v12, v13);
          v21 = objc_msgSend_role(v18, v19, v20);
          v22 = sub_241D10734();
          isEqualToString = objc_msgSend_isEqualToString_(v21, v23, v22);

          if (isEqualToString)
          {
            v25 = objc_msgSend_delegate(v17, v12, v13);
            if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_window(v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend_rootViewController(v28, v29, v30), v31 = objc_claimAutoreleasedReturnValue(), v28, !v31))
            {
              v34 = 0;
              goto LABEL_31;
            }

            if (*(*(*(a1 + 32) + 8) + 40))
            {
              v34 = v31;
LABEL_31:

              continue;
            }

            while (2)
            {
              v54 = objc_msgSend_presentedViewController(v31, v32, v33);

              if (v54)
              {
                v52 = objc_msgSend_presentedViewController(v31, v55, v56);
                goto LABEL_27;
              }

              sub_241D10250();
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v52 = objc_msgSend_visibleViewController(v31, v57, v58);
LABEL_27:
                v34 = v52;
              }

              else
              {
                sub_241D10388();
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v31 = v31;
                  v59 = objc_msgSend_viewControllerForColumn_(v31, v35, 2);
                  v37 = objc_msgSend_viewControllerForColumn_(v31, v36, 3);
                  v40 = objc_msgSend_traitCollection(v31, v38, v39);
                  v43 = v15;
                  v44 = v25;
                  v45 = a1;
                  v46 = v9;
                  v47 = objc_msgSend_horizontalSizeClass(v40, v41, v42);

                  if (v37)
                  {
                    v48 = v47 == 1;
                  }

                  else
                  {
                    v48 = 0;
                  }

                  v9 = v46;
                  a1 = v45;
                  v25 = v44;
                  v15 = v43;
                  if (v48)
                  {
                    v49 = v37;
                  }

                  else
                  {
                    v49 = v59;
                  }

                  v34 = v49;
                }

                else
                {
                  sub_241D104C0();
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v52 = objc_msgSend_selectedViewController(v31, v50, v51);
                    goto LABEL_27;
                  }

                  v53 = *(*(a1 + 32) + 8);
                  v34 = v31;
                  v31 = *(v53 + 40);
                  *(v53 + 40) = v34;
                }
              }

              v31 = v34;
              if (*(*(*(a1 + 32) + 8) + 40))
              {
                goto LABEL_31;
              }

              continue;
            }
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v60, v64, 16);
    }

    while (v14);
  }
}

uint64_t sub_241D0FEF8(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = qword_27EC71290;
  v6 = qword_27EC71290;
  if (!qword_27EC71290)
  {
    v7 = xmmword_278D15800;
    v8 = *off_278D15810;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_27EC71290 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_241D1000C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D10024(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71290 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_241D100BC()
{
  v3 = 0;
  v0 = sub_241D0FEF8(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

id sub_241D10118()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC71298;
  v7 = qword_27EC71298;
  if (!qword_27EC71298)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D101F8;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D101F8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D101E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D101F8(uint64_t a1)
{
  sub_241D100BC();
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC71298 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D180B0();
    return sub_241D10250();
  }

  return result;
}

id sub_241D10250()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712A0;
  v7 = qword_27EC712A0;
  if (!qword_27EC712A0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10330;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10330(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10330(uint64_t a1)
{
  sub_241D100BC();
  result = objc_getClass("UINavigationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D180D8();
    return sub_241D10388();
  }

  return result;
}

id sub_241D10388()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712A8;
  v7 = qword_27EC712A8;
  if (!qword_27EC712A8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10468;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10468(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10468(uint64_t a1)
{
  sub_241D100BC();
  result = objc_getClass("UISplitViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D18100();
    return sub_241D104C0();
  }

  return result;
}

id sub_241D104C0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712B0;
  v7 = qword_27EC712B0;
  if (!qword_27EC712B0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D105A0;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D105A0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D105A0(uint64_t a1)
{
  sub_241D100BC();
  result = objc_getClass("UITabBarController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D18128();
    return sub_241D105F8();
  }

  return result;
}

uint64_t sub_241D105F8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC712B8;
  v6 = qword_27EC712B8;
  if (!qword_27EC712B8)
  {
    v1 = sub_241D100BC();
    v4[3] = dlsym(v1, "UIWindowSceneSessionRoleApplication");
    qword_27EC712B8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D106CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D106E4(uint64_t a1)
{
  v2 = sub_241D100BC();
  result = dlsym(v2, "UIWindowSceneSessionRoleApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC712B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241D10734()
{
  v0 = sub_241D105F8();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    v3 = sub_241D18150();
    return sub_241D10768(v3);
  }
}

uint64_t sub_241D10768(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = qword_27EC712C0;
  v6 = qword_27EC712C0;
  if (!qword_27EC712C0)
  {
    v7 = xmmword_278D15850;
    v8 = *off_278D15860;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_27EC712C0 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_241D1087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D10894(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC712C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_241D1092C()
{
  v3 = 0;
  v0 = sub_241D10768(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

id sub_241D10988()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712C8;
  v7 = qword_27EC712C8;
  if (!qword_27EC712C8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10A68;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10A68(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10A68(uint64_t a1)
{
  sub_241D1092C();
  result = objc_getClass("AMSUIAuthenticateTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D18174();
    return sub_241D10AC0();
  }

  return result;
}

id sub_241D10AC0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712D0;
  v7 = qword_27EC712D0;
  if (!qword_27EC712D0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10BA0;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10BA0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10BA0(uint64_t a1)
{
  sub_241D1092C();
  result = objc_getClass("AMSUIAlertDialogTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D1819C();
    return sub_241D10BF8();
  }

  return result;
}

id sub_241D10BF8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712D8;
  v7 = qword_27EC712D8;
  if (!qword_27EC712D8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10CD8;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10CD8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10CD8(uint64_t a1)
{
  sub_241D1092C();
  result = objc_getClass("AMSSystemAlertDialogTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D181C4();
    return sub_241D10D30();
  }

  return result;
}

id sub_241D10D30()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712E0;
  v7 = qword_27EC712E0;
  if (!qword_27EC712E0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D10E10;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D10E10(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D10DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D10E10(uint64_t a1)
{
  sub_241D1092C();
  result = objc_getClass("AMSUIEngagementTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712E0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241D181EC();
    return sub_241D10E68(v3);
  }

  return result;
}

void sub_241D10E74(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7FCA0];
  v3 = a2;
  v6 = objc_msgSend_activeAccount(v2, v4, v5);
  objc_msgSend_setIdentity_(v3, v7, v6);

  v10 = objc_msgSend_defaultIdentityStore(MEMORY[0x277D7FCA8], v8, v9);
  objc_msgSend_setIdentityStore_(v3, v11, v10);

  v12 = objc_alloc(MEMORY[0x277D7FA48]);
  v14 = objc_msgSend_initWithSystemApplicationType_(v12, v13, 2);
  objc_msgSend_setClientInfo_(v3, v15, v14);

  v16 = objc_alloc(MEMORY[0x277D7FC40]);
  v25 = objc_msgSend_initWithUserInteractionLevel_(v16, v17, 5);
  objc_msgSend_setAuthenticationProvider_(v3, v18, v25);
  v19 = objc_alloc_init(MEMORY[0x277D7FC18]);
  objc_msgSend_setAllowsHandlingNonAuthenticationDialogs_(v19, v20, 0);
  v21 = objc_alloc(MEMORY[0x277D7FC10]);
  v23 = objc_msgSend_initWithConfiguration_(v21, v22, v19);
  objc_msgSend_setStoreDialogResponseHandler_(v3, v24, v23);
}

void sub_241D110CC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 304);
  *(v2 + 304) = 0;
}

void sub_241D111F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241D11218(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (!v6 || v7)
  {
    v11 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_241D0D000, v11, OS_LOG_TYPE_ERROR, "Failed to retrieve acquireSlot URL from the bag.", v13, 2u);
    }

    if (!v7)
    {
      v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v12, *MEMORY[0x277CF32E0], 28, 0);
    }

    objc_msgSend_finishWithError_(v10, v12, v7);
  }

  else
  {
    objc_msgSend__acquireSlotWithURL_(WeakRetained, v9, v6);
  }
}

void sub_241D11614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241D11644(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CF32E0];
    v12 = objc_msgSend_userInfo(v6, v7, v8);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v10, v13, v11, 40, v12);
  }

  else
  {
    objc_opt_class();
    v17 = objc_msgSend_parsedBodyDictionary(v5, v15, v16);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"status");
    v20 = BUDynamicCast();
    v23 = objc_msgSend_integerValue(v20, v21, v22);

    if (!v23)
    {
      goto LABEL_9;
    }

    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CF32E0];
    v12 = objc_msgSend_parsedBodyDictionary(v5, v24, v25);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v28, v27, 40, v12);
  }

  if (v14)
  {
    v29 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v34 = 138412290;
      v35 = v14;
      _os_log_impl(&dword_241D0D000, v29, OS_LOG_TYPE_ERROR, "AcquireSlot returned an error. %@", &v34, 0xCu);
    }

    objc_msgSend_finishWithError_(WeakRetained, v30, v14);
    goto LABEL_12;
  }

LABEL_9:
  v31 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    LOWORD(v34) = 0;
    _os_log_impl(&dword_241D0D000, v31, OS_LOG_TYPE_INFO, "AcquireSlot was successful.", &v34, 2u);
  }

  objc_msgSend_finish(WeakRetained, v32, v33);
LABEL_12:
}

uint64_t sub_241D118C8(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_280C4FA80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241D11960()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712E8;
  v7 = qword_27EC712E8;
  if (!qword_27EC712E8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D11A40;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D11A40(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D11A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D11A40(uint64_t a1)
{
  sub_241D0E3E8();
  result = objc_getClass("MPMediaItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D18214();
    return sub_241D11A98();
  }

  return result;
}

id sub_241D11A98()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712F0;
  v7 = qword_27EC712F0;
  if (!qword_27EC712F0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D11B78;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D11B78(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D11B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D11B78(uint64_t a1)
{
  sub_241D0E3E8();
  result = objc_getClass("MPMediaPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D1823C();
    return sub_241D11BD0();
  }

  return result;
}

id sub_241D11BD0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27EC712F8;
  v7 = qword_27EC712F8;
  if (!qword_27EC712F8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241D11CB0;
    v3[3] = &unk_278D157E0;
    v3[4] = &v4;
    sub_241D11CB0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241D11C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241D11CB0(uint64_t a1)
{
  sub_241D0E3E8();
  result = objc_getClass("MPMediaPropertyPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27EC712F8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_241D18264();
    return sub_241D11D08();
  }

  return result;
}

uint64_t sub_241D11D08()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC71300;
  v6 = qword_27EC71300;
  if (!qword_27EC71300)
  {
    v1 = sub_241D0E3E8();
    v4[3] = dlsym(v1, "MPMediaItemPropertyBitRate");
    qword_27EC71300 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D11DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D11DF4(uint64_t a1)
{
  v2 = sub_241D0E3E8();
  result = dlsym(v2, "MPMediaItemPropertyBitRate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71300 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241D11E44()
{
  v0 = sub_241D11D08();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_241D18150();
    return sub_241D11E78();
  }
}

uint64_t sub_241D11E78()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC71308;
  v6 = qword_27EC71308;
  if (!qword_27EC71308)
  {
    v1 = sub_241D0E3E8();
    v4[3] = dlsym(v1, "MPMediaItemPropertyHLSOfflinePlaybackKeys");
    qword_27EC71308 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D11F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D11F64(uint64_t a1)
{
  v2 = sub_241D0E3E8();
  result = dlsym(v2, "MPMediaItemPropertyHLSOfflinePlaybackKeys");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71308 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241D11FB4()
{
  v0 = sub_241D11E78();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_241D18150();
    return sub_241D11FE8();
  }
}

uint64_t sub_241D11FE8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC71310;
  v6 = qword_27EC71310;
  if (!qword_27EC71310)
  {
    v1 = sub_241D0E3E8();
    v4[3] = dlsym(v1, "MPMediaItemPropertyHLSPlaylistURL");
    qword_27EC71310 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D120BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D120D4(uint64_t a1)
{
  v2 = sub_241D0E3E8();
  result = dlsym(v2, "MPMediaItemPropertyHLSPlaylistURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71310 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241D12124()
{
  v0 = sub_241D11FE8();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_241D18150();
    return sub_241D12158();
  }
}

uint64_t sub_241D12158()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC71318;
  v6 = qword_27EC71318;
  if (!qword_27EC71318)
  {
    v1 = sub_241D0E3E8();
    v4[3] = dlsym(v1, "MPMediaItemPropertyStoreRedownloadParameters");
    qword_27EC71318 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D1222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D12244(uint64_t a1)
{
  v2 = sub_241D0E3E8();
  result = dlsym(v2, "MPMediaItemPropertyStoreRedownloadParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71318 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241D12294()
{
  v0 = sub_241D12158();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_241D18150();
    return sub_241D122C8();
  }
}

uint64_t sub_241D122C8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27EC71320;
  v6 = qword_27EC71320;
  if (!qword_27EC71320)
  {
    v1 = sub_241D0E3E8();
    v4[3] = dlsym(v1, "MPMediaItemPropertyPersistentID");
    qword_27EC71320 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241D1239C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_241D123B4(uint64_t a1)
{
  v2 = sub_241D0E3E8();
  result = dlsym(v2, "MPMediaItemPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27EC71320 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BLHLSKeyFetcher *sub_241D12404()
{
  v0 = sub_241D122C8();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    v3 = sub_241D18150();
    return [(BLHLSKeyFetcher *)v3 init];
  }
}

uint64_t sub_241D12570(uint64_t a1)
{
  qword_27EC71328 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

void sub_241D12758(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_241D0D000, v4, OS_LOG_TYPE_DEFAULT, "Fetch completed for online keys for %llu.", &v8, 0xCu);
  }

  if (v3)
  {
    v6 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 134218242;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_241D0D000, v6, OS_LOG_TYPE_ERROR, "Failed to load streaming HLS key for %llu with error  %@", &v8, 0x16u);
    }
  }
}

void sub_241D12B50(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_title(*(a1 + 32), v8, v9);
    v17 = 138412290;
    v18 = v10;
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_DEFAULT, "Fetch completed for offline keys for '%@'.", &v17, 0xCu);
  }

  if (v6)
  {
    v11 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_msgSend_title(*(a1 + 32), v12, v13);
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_241D0D000, v11, OS_LOG_TYPE_ERROR, "Failed to load offline HLS key for '%@' with error  %@", &v17, 0x16u);
    }
  }

  v15 = MEMORY[0x245CFEDE0](*(a1 + 40));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 16))(v15, v5, v6);
  }
}

void sub_241D1301C(uint64_t a1)
{
  v2 = [BLUIHostServiceProxy alloc];
  v10 = objc_msgSend_initWithUIManager_forRequest_inDownloadQueue_(v2, v3, *(a1 + 32), *(a1 + 40), *(a1 + 48));
  if (*(a1 + 56))
  {
    v4 = *(a1 + 56);
  }

  else
  {
    v4 = &unk_2853E0B10;
  }

  v5 = MEMORY[0x245CFEDE0](v4);
  v8 = objc_msgSend_serviceProxy(*(a1 + 48), v6, v7);
  objc_msgSend_requestDownloadsWithManifestRequest_uiHostProxy_reply_(v8, v9, *(a1 + 40), v10, v5);
}

void sub_241D13204(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = &unk_2853E0B30;
  }

  v10 = MEMORY[0x245CFEDE0](v2);
  v3 = [BLUIHostServiceProxy alloc];
  v5 = objc_msgSend_initWithUIManager_forRequest_inDownloadQueue_(v3, v4, *(a1 + 32), 0, *(a1 + 40));
  v8 = objc_msgSend_serviceProxy(*(a1 + 40), v6, v7);
  objc_msgSend_setAutomaticDownloadEnabled_uiHostProxy_reply_(v8, v9, *(a1 + 56), v5, v10);
}

void sub_241D13498(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  objc_msgSend_setDelegate_queue_(*(*(a1 + 32) + 304), v2, 0, 0);
  v3 = *(a1 + 32);
  v4 = *(v3 + 352);
  *(v3 + 352) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 360);
  *(v5 + 360) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 304);
  *(v7 + 304) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 328);
  *(v9 + 328) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 344);
  *(v11 + 344) = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 392);
  *(v13 + 392) = 0;
}

void sub_241D137E0(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = objc_msgSend_bodyData(a2, v6, v7);
  if (objc_msgSend_length(v8, v9, v10))
  {
    objc_storeStrong((*(a1 + 32) + 336), v8);
    objc_msgSend__createSPCData(*(a1 + 32), v11, v12);
  }

  else
  {
    v13 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138543618;
      v25 = v14;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_241D0D000, v13, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to load certificate data with error:  %@", buf, 0x16u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D7F900];
    if (v5)
    {
      v22 = *MEMORY[0x277CCA7E8];
      v23 = v5;
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &v23, &v22, 1);
      v20 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, v17, -7300, v18);
    }

    else
    {
      v20 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, *MEMORY[0x277D7F900], -7300, 0);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v21, v20);
  }
}

uint64_t sub_241D139D0()
{
  qword_27EC71330 = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

void sub_241D14114(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 312);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D14200;
  v12[3] = &unk_278D15A60;
  v13 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void sub_241D14200(uint64_t a1, const char *a2, uint64_t a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_parsedBodyDictionary(*(a1 + 32), a2, a3);
  if (objc_msgSend_count(v4, v5, v6))
  {
    v8 = objc_msgSend_objectForKey_(v4, v7, @"fairplay-streaming-response");
    if (!_NSIsNSDictionary())
    {
      v29 = BLHLSKeyFetchingLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 48);
        *buf = 138543362;
        v81 = v30;
        _os_log_impl(&dword_241D0D000, v29, OS_LOG_TYPE_ERROR, "[%{public}@]: Invalid response format.", buf, 0xCu);
      }

      v10 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v31, *MEMORY[0x277CF32E0], 39, 0);
      objc_msgSend_finishWithError_(*(a1 + 48), v32, v10);
LABEL_35:

      goto LABEL_36;
    }

    v10 = objc_msgSend_objectForKey_(v8, v9, @"streaming-keys");
    if (_NSIsNSArray())
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v11 = v10;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v74, v84, 16);
      if (v13)
      {
        v14 = v13;
        v15 = *v75;
LABEL_6:
        v16 = 0;
        while (1)
        {
          if (*v75 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v74 + 1) + 8 * v16);
          if (_NSIsNSDictionary())
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v18, &v74, v84, 16);
            if (v14)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }

        v36 = v17;

        if (!v36)
        {
          goto LABEL_30;
        }

        objc_opt_class();
        v38 = objc_msgSend_objectForKey_(v36, v37, @"status");
        v39 = BUDynamicCast();

        if (objc_opt_respondsToSelector())
        {
          v42 = objc_msgSend_integerValue(v39, v40, v41);
          if (v42 == -1004)
          {
            v62 = BLHLSKeyFetchingLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v63 = *(a1 + 48);
              *buf = 138543618;
              v81 = v63;
              v82 = 2114;
              v83 = v36;
              _os_log_impl(&dword_241D0D000, v62, OS_LOG_TYPE_ERROR, "[%{public}@]: Received transfer lock in response: %{public}@", buf, 0x16u);
            }

            objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v64, *MEMORY[0x277CF32E0], 40, 0);
          }

          else
          {
            if (!v42)
            {
              goto LABEL_28;
            }

            v65 = BLHLSKeyFetchingLog();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              v66 = *(a1 + 48);
              *buf = 138543618;
              v81 = v66;
              v82 = 2114;
              v83 = v36;
              _os_log_impl(&dword_241D0D000, v65, OS_LOG_TYPE_ERROR, "[%{public}@]: Received failure in response: %{public}@", buf, 0x16u);
            }

            objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v67, *MEMORY[0x277CF32E0], 39, 0);
          }
          v43 = ;
          objc_msgSend_finishWithError_(*(a1 + 48), v68, v43);
LABEL_59:

          goto LABEL_34;
        }

LABEL_28:
        v43 = objc_msgSend_objectForKey_(v36, v40, @"ckc");
        if (_NSIsNSString())
        {
          v44 = objc_alloc(MEMORY[0x277CBEA90]);
          v46 = objc_msgSend_initWithBase64EncodedString_options_(v44, v45, v43, 0);
        }

        else
        {
          if (!_NSIsNSData())
          {
            goto LABEL_44;
          }

          v46 = v43;
        }

        v51 = v46;
        if (v46)
        {
          v52 = *(a1 + 40);
          v73 = 0;
          v53 = objc_msgSend_persistableContentKeyFromKeyVendorResponse_options_error_(v52, v47, v51, 0, &v73);
          v54 = v73;

          if (v54)
          {
            v55 = BLHLSKeyFetchingLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v56 = *(a1 + 48);
              *buf = 138543362;
              v81 = v56;
              _os_log_impl(&dword_241D0D000, v55, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to create persistable content key from content key context data.", buf, 0xCu);
            }

            objc_msgSend_finishWithError_(*(a1 + 48), v57, v54);
          }

          else
          {
            objc_storeStrong((*(a1 + 48) + 328), v53);
            v69 = BLHLSKeyFetchingLog();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
            {
              v70 = *(a1 + 48);
              *buf = 138543362;
              v81 = v70;
              _os_log_impl(&dword_241D0D000, v69, OS_LOG_TYPE_INFO, "[%{public}@]: Loaded successfully.", buf, 0xCu);
            }

            objc_msgSend_finish(*(a1 + 48), v71, v72);
          }

LABEL_58:
          goto LABEL_59;
        }

LABEL_44:
        v58 = BLHLSKeyFetchingLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = *(a1 + 48);
          *buf = 138543362;
          v81 = v59;
          _os_log_impl(&dword_241D0D000, v58, OS_LOG_TYPE_ERROR, "[%{public}@]: Missing content key context data in response.", buf, 0xCu);
        }

        v53 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v60, *MEMORY[0x277CF32E0], 39, 0);
        objc_msgSend_finishWithError_(*(a1 + 48), v61, v53);
        goto LABEL_58;
      }

LABEL_12:

LABEL_30:
      v33 = BLHLSKeyFetchingLog();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v48 = *(a1 + 48);
      *buf = 138543362;
      v81 = v48;
      v35 = "[%{public}@]: Missing streaming key dictionary in response.";
    }

    else
    {
      v33 = BLHLSKeyFetchingLog();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v34 = *(a1 + 48);
      *buf = 138543362;
      v81 = v34;
      v35 = "[%{public}@]: Missing second-level dictionary key in response.";
    }

    _os_log_impl(&dword_241D0D000, v33, OS_LOG_TYPE_ERROR, v35, buf, 0xCu);
LABEL_33:

    v36 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v49, *MEMORY[0x277CF32E0], 39, 0);
    objc_msgSend_finishWithError_(*(a1 + 48), v50, v36);
LABEL_34:

    goto LABEL_35;
  }

  v19 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    *buf = 138543618;
    v81 = v20;
    v82 = 2112;
    v83 = v21;
    _os_log_impl(&dword_241D0D000, v19, OS_LOG_TYPE_ERROR, "[%{public}@]: Key server request returned error:  %@", buf, 0x16u);
  }

  v23 = MEMORY[0x277CCA9B8];
  v24 = *MEMORY[0x277CF32E0];
  v25 = *(a1 + 56);
  if (v25)
  {
    v78 = *MEMORY[0x277CCA7E8];
    v79 = v25;
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v79, &v78, 1);
    v8 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v27, v24, 39, v26);
  }

  else
  {
    v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v22, *MEMORY[0x277CF32E0], 39, 0);
  }

  objc_msgSend_finishWithError_(*(a1 + 48), v28, v8);
LABEL_36:
}

void sub_241D14C7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 312);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D14D64;
  v11[3] = &unk_278D15A60;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

uint64_t sub_241D14D64(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3 && !*(a1 + 40))
  {
    v9 = *(a1 + 48);

    return MEMORY[0x2821F9670](v9, sel__ksq_fetchCKCDataUsingSPC_forKeyRequest_, v3);
  }

  else
  {
    v4 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 48) + 384);
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_241D0D000, v4, OS_LOG_TYPE_ERROR, "Failed to create SPC data for %@ with error:  %@", &v10, 0x16u);
    }

    return objc_msgSend_processContentKeyResponseError_(*(a1 + 56), v7, *(a1 + 40));
  }
}

void sub_241D15274(void *a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_URLRequest(a1, v9, v10);
    *buf = 134218242;
    v20 = a1;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_241D0D000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadManifestRequest] Start download manifest request %p: urlRequest=%@", buf, 0x16u);
  }

  v14 = objc_msgSend_sharedInstance(BLDownloadQueue, v12, v13);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_241D153E8;
  v17[3] = &unk_278D15AD8;
  v17[4] = a1;
  v18 = v6;
  v15 = v6;
  objc_msgSend_addDownloadsWithManifestRequest_uiManager_completion_(v14, v16, a1, v7, v17);
}

void sub_241D153E8(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BLServiceLog();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    v16 = 134218242;
    v17 = v9;
    v18 = 2112;
    v19 = v6;
    v10 = "[DownloadManifestRequest] addDownloadsWithManifestRequest for request %p returned error:  %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    v16 = 134218242;
    v17 = v13;
    v18 = 2112;
    v19 = v5;
    v10 = "[DownloadManifestRequest] addDownloadsWithManifestRequest for request %p completed with response %@.";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_241D0D000, v11, v12, v10, &v16, 0x16u);
LABEL_7:

  v14 = MEMORY[0x245CFEDE0](*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }
}

void sub_241D15D34(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 304);
  *(v2 + 304) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 312);
  *(v4 + 312) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 320);
  *(v6 + 320) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 328);
  *(v8 + 328) = 0;
}

void sub_241D15EA0(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    v8 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1 + 32) + 320);
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_241D0D000, v8, OS_LOG_TYPE_ERROR, "Metadata request for item %@ failed with error  %@", &v14, 0x16u);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v10, v7);
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = objc_msgSend_hlsAsset(a2, v5, v6);
    objc_msgSend__performStreamingKeyRequestForHLSAsset_(v11, v13, v12);
  }
}

void sub_241D160F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 328);
  v8 = a3;
  objc_msgSend_finishAssetResourceLoadingRequest_withError_(a2, v6, v5, v8);
  objc_msgSend_finishWithError_(*(a1 + 32), v7, v8);
}

void sub_241D16338(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(a1 + 32) + 328))
  {
    v4 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_241D0D000, v4, OS_LOG_TYPE_DEFAULT, "metadata request - returning nil store metadata", v13, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
  v5 = *(a1 + 32);
  v6 = *(v5 + 320);
  *(v5 + 320) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 304);
  *(v7 + 304) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 328);
  *(v9 + 328) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 312);
  *(v11 + 312) = 0;
}

void sub_241D165DC(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v8 = BLError();
    }

    v30 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v8;
      _os_log_impl(&dword_241D0D000, v30, OS_LOG_TYPE_ERROR, "Failed to retreive bag with error  %@", buf, 0xCu);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v31, v8);
  }

  else
  {
    v8 = objc_msgSend_stringForBagKey_(v5, v7, @"fps-cert");
    v10 = objc_msgSend_stringForBagKey_(v5, v9, @"audiobook-fps-request");
    v11 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_msgSend_title(*(*(a1 + 32) + 312), v12, v13);
      *buf = 138412290;
      v52 = v14;
      _os_log_impl(&dword_241D0D000, v11, OS_LOG_TYPE_DEFAULT, "Received bag for '%@'.", buf, 0xCu);
    }

    if (objc_msgSend_length(v8, v15, v16) && objc_msgSend_length(v10, v17, v18))
    {
      v20 = objc_msgSend__responseDictionaryForKeyCertificateURL_keyServerURL_(*(a1 + 32), v19, v8, v10);
      v21 = objc_alloc(MEMORY[0x277D7FC20]);
      v23 = objc_msgSend_initWithItemResponseDictionary_urlBag_(v21, v22, v20, v5);
      objc_storeStrong((*(a1 + 32) + 328), v23);
      v24 = BLHLSKeyFetchingLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_msgSend_title(*(*(a1 + 32) + 312), v25, v26);
        *buf = 138412290;
        v52 = v27;
        _os_log_impl(&dword_241D0D000, v24, OS_LOG_TYPE_DEFAULT, "Successfully read meta data for '%@' from the bag", buf, 0xCu);
      }

      objc_msgSend_finish(*(a1 + 32), v28, v29);
    }

    else
    {
      v32 = *(*(a1 + 32) + 312);
      v33 = sub_241D12294();
      v20 = objc_msgSend_valueForProperty_(v32, v34, v33);

      if (!objc_msgSend_length(v20, v35, v36))
      {
        v37 = BLHLSKeyFetchingLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v40 = objc_msgSend_title(*(*(a1 + 32) + 312), v38, v39);
          *buf = 138412290;
          v52 = v40;
          _os_log_impl(&dword_241D0D000, v37, OS_LOG_TYPE_ERROR, "Missing buy parameters for item %@", buf, 0xCu);
        }
      }

      v41 = objc_alloc(MEMORY[0x277D7FA40]);
      v43 = objc_msgSend_initWithRequestContext_buyParametersString_includeKeybagSyncData_(v41, v42, *(a1 + 40), v20, 1);
      v44 = *(a1 + 32);
      v45 = *(v44 + 320);
      *(v44 + 320) = v43;

      v46 = *(a1 + 32);
      v47 = *(v46 + 320);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_241D169C4;
      v49[3] = &unk_278D15B78;
      v49[4] = v46;
      v50 = v5;
      objc_msgSend_performRequestWithResponseHandler_(v47, v48, v49);
    }
  }
}

void sub_241D169C4(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 32) + 312);
      v30 = 138412546;
      v31 = v8;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_ERROR, "Purchase request for item %@ failed with error  %@", &v30, 0x16u);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v9, v6);
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277D7FB10]);
    v13 = objc_msgSend_date(MEMORY[0x277CBEAA8], v11, v12);
    v15 = objc_msgSend_initWithResponseDictionary_requestDate_urlBag_(v10, v14, v5, v13, *(a1 + 40));

    v18 = objc_msgSend_items(v15, v16, v17);
    v21 = objc_msgSend_firstObject(v18, v19, v20);
    v22 = *(a1 + 32);
    v23 = *(v22 + 328);
    *(v22 + 328) = v21;

    v24 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_msgSend_title(*(*(a1 + 32) + 312), v25, v26);
      v30 = 138412290;
      v31 = v27;
      _os_log_impl(&dword_241D0D000, v24, OS_LOG_TYPE_DEFAULT, "Successfully fetched meta data from buy product request for '%@'", &v30, 0xCu);
    }

    objc_msgSend_finish(*(a1 + 32), v28, v29);
  }
}

void sub_241D17228(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v4 = objc_msgSend_defaultIdentityStore(MEMORY[0x277D7FCA8], v2, v3);
  objc_msgSend_synchronize(v4, v5, v6);

  v7 = *(a1 + 32);
  v8 = *(v7 + 352);
  *(v7 + 352) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 304);
  *(v9 + 304) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 312);
  *(v11 + 312) = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 344);
  *(v13 + 344) = 0;
}

void sub_241D17498(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_hlsAsset(v5, v7, v8);
  v10 = *(a1 + 32);
  v11 = *(v10 + 320);
  *(v10 + 320) = v9;

  v12 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_msgSend_title(*(*(a1 + 32) + 336), v13, v14);
    v26 = 138412802;
    v27 = v15;
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_241D0D000, v12, OS_LOG_TYPE_DEFAULT, "Received asset info for '%@' (%@, %@).", &v26, 0x20u);
  }

  if (!v6)
  {
    v23 = *(a1 + 32);
    if (v23[40])
    {
      objc_msgSend__performOfflineKeyRequest(v23, v16, v17);
      goto LABEL_9;
    }

    v6 = BLError();
    if (!v6)
    {
      objc_msgSend__performOfflineKeyRequest(*(a1 + 32), v24, v25);
      goto LABEL_9;
    }
  }

  v18 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_msgSend_title(*(*(a1 + 32) + 336), v19, v20);
    v26 = 138412546;
    v27 = v21;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_241D0D000, v18, OS_LOG_TYPE_ERROR, "Metadata request for '%@' failed with error  %@", &v26, 0x16u);
  }

  objc_msgSend_finishWithError_(*(a1 + 32), v22, v6);
LABEL_9:
}

void sub_241D179B0(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(a1 + 32) + 352), a2);
  v6 = a2;
  v8 = a3;
  objc_msgSend_finishWithError_(*(a1 + 32), v7, v8);
}

void sub_241D17C08(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MEMORY[0x245CFEDE0](*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

void sub_241D17DB4(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BLDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v16 = 138412290;
    v17 = v6;
    v9 = "[UIHostServiceProxy] received error from AMSSystemAlertDialogTask:  %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    v16 = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v5;
    v9 = "[UIHostServiceProxy] received result from AMSSystemAlertDialogTask for request %@ and calling replay block with result %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 22;
  }

  _os_log_impl(&dword_241D0D000, v10, v11, v9, &v16, v12);
LABEL_7:

  v14 = MEMORY[0x245CFEDE0](*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }
}

void sub_241D1801C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MEMORY[0x245CFEDE0](*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

uint64_t sub_241D18150()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return sub_241D18174();
}