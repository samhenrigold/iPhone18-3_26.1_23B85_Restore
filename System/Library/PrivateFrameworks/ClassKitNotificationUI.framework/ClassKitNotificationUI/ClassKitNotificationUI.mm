uint64_t sub_24351CEEC()
{
  qword_27ED78300 = objc_alloc_init(CLSNotificationBannerDisplayManager);

  return MEMORY[0x2821F96F8]();
}

void sub_24351CFEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_lastBannerTime(*(a1 + 32), a2, a3, a4, a5);
  if (!v6 || (v11 = v6, objc_msgSend_lastBannerTime(*(a1 + 32), v7, v8, v9, v10), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timeIntervalSinceNow(v12, v13, v14, v15, v16), v18 = v17, v12, v11, v18 < -30.0))
  {
    v19 = objc_msgSend_date(MEMORY[0x277CBEAA8], v7, v8, v9, v10);
    objc_msgSend_setLastBannerTime_(*(a1 + 32), v20, v19, v21, v22);

    v23 = *(a1 + 40);
    v24 = *(a1 + 48);

    MEMORY[0x2821F9670](CLSNotificationBanner, sel_showBannerWithTitle_message_completionHandler_, v23, v24, 0);
  }
}

id sub_24351D11C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_connectedScenes(a1, a2, a3, a4, a5);
  objc_msgSend_objectsPassingTest_(v5, v6, &unk_28563EED8, v7, v8);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v39 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v36, v40, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v37;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v9);
        }

        v19 = objc_msgSend_keyWindow(*(*(&v36 + 1) + 8 * i), v12, v13, v14, v15, v36);
        if (v19)
        {
          v34 = v19;
          v25 = v9;
          goto LABEL_11;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v36, v40, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = objc_alloc(MEMORY[0x277D75DA0]);
  v25 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v21, v22, v23, v24);
  objc_msgSend_bounds(v25, v26, v27, v28, v29);
  v34 = objc_msgSend_initWithFrame_(v20, v30, v31, v32, v33);
LABEL_11:

  return v34;
}

uint64_t sub_24351D290(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_activationState(v2, v3, v4, v5, v6))
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t sub_24351D67C()
{
  qword_27ED78320 = dispatch_queue_create("com.apple.ClassKit.banner", 0);

  return MEMORY[0x2821F96F8]();
}

void sub_24351D7C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_bannerSemaphore(qword_27ED78318, a2, a3, a4, a5);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24351D878;
  block[3] = &unk_278DBEF40;
  v8 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_24351D984()
{
  v19[3] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277D74240]);
  objc_msgSend_setLineBreakMode_(v0, v1, 4, v2, v3);
  v7 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], v4, *MEMORY[0x277D76988], v5, v6);
  v8 = *MEMORY[0x277D740A8];
  v19[0] = v7;
  v9 = *MEMORY[0x277D740C0];
  v18[0] = v8;
  v18[1] = v9;
  v14 = objc_msgSend_labelColor(MEMORY[0x277D75348], v10, v11, v12, v13);
  v18[2] = *MEMORY[0x277D74118];
  v19[1] = v14;
  v19[2] = v0;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v19, v18, 3);
  v17 = qword_27ED78330;
  qword_27ED78330 = v16;
}

void sub_24351DAE8()
{
  v19[3] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277D74240]);
  objc_msgSend_setLineBreakMode_(v0, v1, 4, v2, v3);
  v7 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], v4, *MEMORY[0x277D76938], v5, v6);
  v8 = *MEMORY[0x277D740A8];
  v19[0] = v7;
  v9 = *MEMORY[0x277D740C0];
  v18[0] = v8;
  v18[1] = v9;
  v14 = objc_msgSend_labelColor(MEMORY[0x277D75348], v10, v11, v12, v13);
  v18[2] = *MEMORY[0x277D74118];
  v19[1] = v14;
  v19[2] = v0;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v19, v18, 3);
  v17 = qword_27ED78340;
  qword_27ED78340 = v16;
}

uint64_t sub_24351DC4C()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  qword_27ED78350 = objc_msgSend_bundleForClass_(v0, v2, v1, v3, v4);

  return MEMORY[0x2821F96F8]();
}

void sub_24351EFAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setBannerAnimating_(*(a1 + 32), a2, 0, a4, a5);
  objc_msgSend_duration(*(a1 + 40), v6, v7, v8, v9);
  v11 = dispatch_time(0, (v10 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24351F05C;
  block[3] = &unk_278DBEF40;
  block[4] = *(a1 + 32);
  dispatch_after(v11, MEMORY[0x277D85CD0], block);
}

void *sub_24351F05C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_bannerVisible(*(a1 + 32), a2, a3, a4, a5);
  if (result)
  {
    v10 = *(a1 + 32);

    return objc_msgSend_hideBannerQuickly_(v10, v7, 0, v8, v9);
  }

  return result;
}

void sub_24351F0AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_bannerView(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_setAlpha_(v9, v5, v6, v7, v8, 1.0);
}

void sub_24351F2C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setBannerAnimating_(*(a1 + 32), a2, 0, a4, a5);
  objc_msgSend_callCompletionHandler(*(a1 + 40), v6, v7, v8, v9);
  objc_msgSend_removeFromSuperview(*(a1 + 40), v10, v11, v12, v13);
  objc_msgSend_setBannerView_(*(a1 + 32), v14, 0, v15, v16);
  v17 = dispatch_time(0, 500000000);
  v18 = MEMORY[0x277D85CD0];

  dispatch_after(v17, v18, &unk_28563EF78);
}

void sub_24351F33C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_bannerSemaphore(qword_27ED78318, a2, a3, a4, a5);
  dispatch_semaphore_signal(v5);

  if (atomic_fetch_add_explicit(&dword_27ED78314, 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    objc_sync_enter(@"CLSNotificationBannerSyncObject");
    v6 = qword_27ED78318;
    qword_27ED78318 = 0;

    objc_sync_exit(@"CLSNotificationBannerSyncObject");
  }
}

void sub_24351F3C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  objc_msgSend_bounds(*(a1 + 40), a2, a3, a4, a5);
  objc_msgSend__hiddenBannerPosition_(v6, v7, v8, v9, v10, v11, v12);
  v14 = v13;
  v19 = objc_msgSend_bannerYPositionConstraint(*(a1 + 32), v15, v16, v17, v18);
  objc_msgSend_setConstant_(v19, v20, v21, v22, v23, v14);

  v32 = objc_msgSend_view(*(a1 + 32), v24, v25, v26, v27);
  objc_msgSend_layoutIfNeeded(v32, v28, v29, v30, v31);
}

void sub_24351F66C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_bannerWidthConstraint(*(a1 + 32), a2, a3, a4, a5);

  if (v6)
  {
    objc_msgSend_bannerWidthForViewSize_(*(a1 + 32), v7, v8, v9, v10, *(a1 + 40), *(a1 + 48));
    v12 = v11;
    v17 = objc_msgSend_bannerWidthConstraint(*(a1 + 32), v13, v14, v15, v16);
    objc_msgSend_setConstant_(v17, v18, v19, v20, v21, v12);
  }

  v22 = objc_msgSend_bannerYPositionConstraint(*(a1 + 32), v7, v8, v9, v10);
  objc_msgSend_constant(v22, v23, v24, v25, v26);
  v28 = v27;

  v29 = *(a1 + 32);
  v34 = objc_msgSend_bannerView(v29, v30, v31, v32, v33);
  objc_msgSend_bounds(v34, v35, v36, v37, v38);
  objc_msgSend__hiddenBannerPosition_(v29, v39, v40, v41, v42, v43, v44);
  v46 = v45;

  if (v28 != v46)
  {
    v51 = *(a1 + 32);
    v52 = objc_msgSend_bannerView(v51, v47, v48, v49, v50);
    objc_msgSend_bounds(v52, v53, v54, v55, v56);
    objc_msgSend__visibleBannerCenterPosition_(v51, v57, v58, v59, v60, v61, v62);
    v64 = v63;
    v69 = objc_msgSend_bannerYPositionConstraint(*(a1 + 32), v65, v66, v67, v68);
    objc_msgSend_setConstant_(v69, v70, v71, v72, v73, v64);
  }

  v78 = objc_msgSend_view(*(a1 + 32), v47, v48, v49, v50);
  objc_msgSend_layoutIfNeeded(v78, v74, v75, v76, v77);
}

void sub_24351FEC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_currentDevice(MEMORY[0x277D75418], a2, a3, a4, a5);
  byte_27ED78310 = objc_msgSend_userInterfaceIdiom(v9, v5, v6, v7, v8) == 1;
}

uint64_t sub_243520188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a4);
  }

  return result;
}

void sub_2435203D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2435203F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = objc_msgSend_previousKeyWindow(WeakRetained, v3, v4, v5, v6);

    if (v7)
    {
      v12 = objc_msgSend_previousKeyWindow(WeakRetained, v8, v9, v10, v11);
      objc_msgSend_makeKeyAndVisible(v12, v13, v14, v15, v16);

      objc_msgSend_setPreviousKeyWindow_(WeakRetained, v17, 0, v18, v19);
    }

    v20 = objc_msgSend_window(WeakRetained, v8, v9, v10, v11);
    objc_msgSend_setRootViewController_(v20, v21, 0, v22, v23);

    v28 = objc_msgSend_window(WeakRetained, v24, v25, v26, v27);
    objc_msgSend_removeFromSuperview(v28, v29, v30, v31, v32);

    objc_msgSend_setWindow_(WeakRetained, v33, 0, v34, v35);
  }
}

void sub_243520568(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], a2, a3, a4, a5);
  v11 = sub_24351D11C(v6, v7, v8, v9, v10);
  objc_msgSend_setPreviousKeyWindow_(*(a1 + 32), v12, v11, v13, v14);

  v15 = objc_alloc(MEMORY[0x277D75DA0]);
  v20 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v16, v17, v18, v19);
  objc_msgSend_bounds(v20, v21, v22, v23, v24);
  v53 = objc_msgSend_initWithFrame_(v15, v25, v26, v27, v28);

  objc_msgSend_setWindow_(*(a1 + 32), v29, v53, v30, v31);
  v32 = objc_opt_new();
  objc_msgSend_setRootViewController_(v53, v33, v32, v34, v35);

  objc_msgSend_setWindowLevel_(v53, v36, v37, v38, v39, *MEMORY[0x277D772B8] + -1.0);
  objc_msgSend_makeKeyAndVisible(v53, v40, v41, v42, v43);
  objc_msgSend_setModalPresentationStyle_(*(a1 + 32), v44, 0, v45, v46);
  v51 = objc_msgSend_rootViewController(v53, v47, v48, v49, v50);
  objc_msgSend_presentViewController_animated_completion_(v51, v52, *(a1 + 32), 1, *(a1 + 40));
}