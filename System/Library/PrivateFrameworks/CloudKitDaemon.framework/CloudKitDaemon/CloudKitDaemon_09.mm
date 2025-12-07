void sub_2251D923C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_2251D9260(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*MEMORY[0x277CBC810] == 1)
  {
    v5 = objc_msgSend_unitTestOverrides(*(a1 + 32), v2, v3);
    v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"EnsureApplyZoneAttributesChangeOperationSuccess");

    if (v7)
    {
      v10 = objc_msgSend_error(WeakRetained, v8, v9);

      if (v10)
      {
        v28 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, *(a1 + 56), *(a1 + 32), @"CKDFetchBatchedRecordsOperation.m", 288, @"Operation returned an unexpected error");
      }
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 40);
    v15 = v13;
    v18 = objc_msgSend_zoneID(v14, v16, v17);
    v23 = objc_msgSend_error(WeakRetained, v19, v20);
    if (v23)
    {
      v24 = @". Error:";
    }

    else
    {
      v24 = &stru_28385ED00;
    }

    v25 = objc_msgSend_error(WeakRetained, v21, v22);
    v26 = v25;
    v30 = 138412802;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &stru_28385ED00;
    }

    v31 = v18;
    v32 = 2112;
    v33 = v24;
    v34 = 2112;
    v35 = v27;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Operation to apply PCS changes completed for zone %@%@%@", &v30, 0x20u);
  }
}

void sub_2251D97DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

void sub_2251D9840(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = MEMORY[0x277CBC878];
  v5 = *MEMORY[0x277CBC878];
  v6 = MEMORY[0x277CBC880];
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v7 = MEMORY[0x277CBC830];
    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      log = v8;
      v43 = objc_opt_class();
      v61 = NSStringFromClass(v43);
      v60 = objc_msgSend_ckShortDescription(v3, v44, v45);
      v48 = objc_msgSend_operationID(WeakRetained, v46, v47);
      objc_msgSend_error(v3, v49, v50);
      *buf = 138544386;
      v74 = v61;
      v75 = 2048;
      v76 = v3;
      v77 = 2114;
      v78 = v60;
      v79 = 2114;
      v80 = v48;
      v82 = v81 = 2112;
      v51 = v82;
      _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Batch Record Fetch request <%{public}@: %p; %{public}@> for operation %{public}@ finished with error %@", buf, 0x34u);
    }

    v10 = objc_msgSend__optionsForZonesWithPendingChangesAfterRequest_(WeakRetained, v9, v3);
    v13 = objc_msgSend_allKeys(v10, v11, v12);
    v16 = objc_msgSend_numRequestsSent(WeakRetained, v14, v15);
    objc_msgSend_setNumRequestsSent_(WeakRetained, v17, v16 + 1);
    v22 = objc_msgSend_error(v3, v18, v19);
    if (!v22 && objc_msgSend_isExecuting(WeakRetained, v20, v21) && (objc_msgSend_isCancelled(WeakRetained, v23, v24) & 1) == 0 && objc_msgSend_fetchAllChanges(WeakRetained, v25, v26) && objc_msgSend_count(v13, v27, v28))
    {
      if (objc_msgSend_numRequestsSent(WeakRetained, v29, v30))
      {
        if (*v6 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v4);
        }

        v33 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
        {
          v56 = v33;
          v59 = objc_msgSend_count(v13, v57, v58);
          *buf = 134218242;
          v74 = v59;
          v75 = 2112;
          v76 = v10;
          _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another fetch changes request for %lu zones with options:\n%@", buf, 0x16u);
        }

        objc_msgSend__sendFetchChangesRequestForZoneIDs_withOptions_previousRequestSchedulerInfo_(WeakRetained, v34, v13, v10, *(a1 + 32));
        v35 = *(a1 + 40);
        v38 = objc_msgSend_callbackQueue(WeakRetained, v36, v37);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2251D9D00;
        block[3] = &unk_278545AB0;
        block[4] = WeakRetained;
        v71 = *(a1 + 32);
        v72 = *(a1 + 64);
        dispatch_group_notify(v35, v38, block);

        v39 = v71;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v40 = *(a1 + 40);
    v41 = objc_msgSend_callbackQueue(WeakRetained, v31, v32);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_2251D9D98;
    v63[3] = &unk_278549748;
    v64 = *(a1 + 32);
    v65 = v3;
    v66 = WeakRetained;
    v67 = v13;
    v68 = v10;
    v69 = *(a1 + 64);
    dispatch_group_notify(v40, v41, v63);

    v39 = v64;
LABEL_19:

    goto LABEL_24;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v5);
  }

  v42 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v52 = v42;
    v55 = objc_msgSend_requestUUID(v3, v53, v54);
    *buf = 138543362;
    v74 = v55;
    _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "Owning operation for request %{public}@ no longer around. Bailing.", buf, 0xCu);
  }

LABEL_24:
}

void sub_2251D9D00(uint64_t a1, const char *a2)
{
  objc_msgSend__handleFetchChangesRequestFinishedWithSchedulerInfo_(*(a1 + 32), a2, *(a1 + 40));
  if (*(a1 + 48) == 1)
  {
    v5 = objc_msgSend_error(*(a1 + 32), v3, v4);

    if (v5)
    {
      objc_msgSend_cancelAndDisablePerRequestCallbackBlocks(*(a1 + 40), v6, v7);
    }

    objc_msgSend_resumeCallbackQueue(*(a1 + 40), v6, v7);
  }

  objc_msgSend_disablePerRequestCallbackBlocks(*(a1 + 40), v3, v4);
  v10 = objc_msgSend_fetchRecordsGroup(*(a1 + 32), v8, v9);
  dispatch_group_leave(v10);
}

void sub_2251D9D98(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D9F54;
  block[3] = &unk_278548978;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v19 = *(a1 + 48);
  v4 = *(&v19 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v23 = v19;
  v22 = v5;
  v24 = *(a1 + 64);
  v6 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v7, v6);
  v10 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v8, v9);
  dispatch_async(v10, v6);

  v13 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v11, v12);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2251DA12C;
  v20[3] = &unk_278545A00;
  v20[4] = *(a1 + 48);
  dispatch_async(v13, v20);

  if (*(a1 + 72) == 1)
  {
    v16 = objc_msgSend_error(*(a1 + 48), v14, v15);

    if (v16)
    {
      objc_msgSend_cancelAndDisablePerRequestCallbackBlocks(*(a1 + 32), v17, v18);
    }

    objc_msgSend_resumeCallbackQueue(*(a1 + 32), v17, v18, v19);
  }

  objc_msgSend_disablePerRequestCallbackBlocks(*(a1 + 32), v14, v15, v19);
}

void sub_2251D9F54(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_isCancelled(*(a1 + 32), a2, a3) & 1) == 0)
  {
    v6 = objc_msgSend_error(*(a1 + 40), v4, v5);

    if (v6)
    {
      v9 = objc_msgSend_error(*(a1 + 40), v7, v8);
      objc_msgSend_setError_(*(a1 + 48), v10, v9);

      v25 = objc_msgSend_perRequestGroup(*(a1 + 32), v11, v12);
      dispatch_group_leave(v25);
    }

    else
    {
      objc_msgSend__handleFetchChangesRequestFinishedWithSchedulerInfo_(*(a1 + 48), v7, *(a1 + 32));
      if (objc_msgSend_fetchAllChanges(*(a1 + 48), v13, v14) && objc_msgSend_count(*(a1 + 56), v15, v16))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v17 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v19 = *(a1 + 56);
          v20 = v17;
          v23 = objc_msgSend_count(v19, v21, v22);
          v24 = *(a1 + 64);
          *buf = 134218242;
          v27 = v23;
          v28 = 2112;
          v29 = v24;
          _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another fetch changes request for %lu zones with options:\n%@", buf, 0x16u);
        }

        objc_msgSend__sendFetchChangesRequestForZoneIDs_withOptions_previousRequestSchedulerInfo_(*(a1 + 48), v18, *(a1 + 56), *(a1 + 64), *(a1 + 32));
      }
    }
  }
}

void sub_2251DA12C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_fetchRecordsGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v3);
}

void sub_2251DA730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251DA788(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2251DA814;
  v4[3] = &unk_2785494C0;
  v5 = *(a1 + 32);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a2, v3, v4);
}

void sub_2251DA814(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v8 = objc_msgSend_shouldFetchAssetContent(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_shouldFetchAssetContent(v5, v9, v10);
    v15 = objc_msgSend_BOOLValue(v12, v13, v14);

    if (v15)
    {
      objc_msgSend_addObject_(*(a1 + 32), v16, v17);
    }
  }
}

void sub_2251DA8B8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setRecordFetcher_(*(a1 + 32), v4, v3);
  v7 = objc_msgSend_recordFetcher(*(a1 + 32), v5, v6);
  objc_msgSend_setUseRecordCache_(v7, v8, 0);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251DA9A4;
  v13[3] = &unk_278549318;
  objc_copyWeak(&v14, (a1 + 40));
  v11 = objc_msgSend_recordFetcher(*(a1 + 32), v9, v10);
  objc_msgSend_setFetchAggregatorCompletionBlock_(v11, v12, v13);

  objc_destroyWeak(&v14);
}

void sub_2251DA9A4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v13 = @" with error: ";
  v14 = &stru_28385ED00;
  if (v3)
  {
    v14 = v3;
  }

  else
  {
    v13 = &stru_28385ED00;
  }

  v15 = 138543618;
  v16 = v13;
  v17 = 2112;
  v18 = v14;
  _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Batched Record fetches finished%{public}@%@", &v15, 0x16u);
  if (v3)
  {
LABEL_5:
    v8 = objc_msgSend_error(WeakRetained, v6, v7);

    if (!v8)
    {
      objc_msgSend_setError_(WeakRetained, v6, v3);
    }
  }

LABEL_7:
  objc_msgSend__noteOperationFinishedBlockEnd(WeakRetained, v6, v7);
  v11 = objc_msgSend_error(WeakRetained, v9, v10);
  objc_msgSend_finishWithError_(WeakRetained, v12, v11);
}

void sub_2251DAB1C(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Waiting for all record fetches to finish...", v8, 2u);
  }

  v5 = objc_msgSend_recordFetcher(*(a1 + 32), v3, v4);
  objc_msgSend_finishIfAppropriate(v5, v6, v7);
}

void sub_2251DC66C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  objc_msgSend_setDidAttemptDugongKeyRoll_(v5, v6, 1);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251DC76C;
  v10[3] = &unk_2785497C0;
  v10[4] = WeakRetained;
  objc_msgSend_setSaveCompletionBlock_(v5, v7, v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2251DC900;
  v9[3] = &unk_278545A00;
  v9[4] = WeakRetained;
  objc_msgSend_setCompletionBlock_(v5, v8, v9);
}

void sub_2251DC76C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v15 = v12;
  if (v9 && v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412546;
      v25 = v9;
      v26 = 2112;
      v27 = v15;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Ignoring key-rolling error for record %@: %@", &v24, 0x16u);
    }

    v19 = objc_msgSend_shareRecordsToUpdateByRecordID(*(a1 + 32), v17, v18);
    v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v9);

    v11 = v21;
  }

  v22 = objc_msgSend_fetchRecordsGroup(*(a1 + 32), v13, v14);
  dispatch_group_enter(v22);

  objc_msgSend__continueHandleFetchedRecord_recordID_(*(a1 + 32), v23, v11, v9);
}

void sub_2251DC900(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_stateTransitionGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v3);
}

void sub_2251DD50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location, id a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  objc_destroyWeak((v53 + 48));
  objc_destroyWeak((v53 + 40));
  objc_destroyWeak((v52 + 48));
  objc_destroyWeak((v52 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a47);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251DD574(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2251DD600;
  v4[3] = &unk_2785494C0;
  v5 = *(a1 + 32);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a2, v3, v4);
}

void sub_2251DD600(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v8 = objc_msgSend_shouldFetchAssetContent(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_shouldFetchAssetContent(v5, v9, v10);
    v15 = objc_msgSend_BOOLValue(v12, v13, v14);

    if (v15)
    {
      objc_msgSend_addObject_(*(a1 + 32), v16, v17);
    }
  }
}

void sub_2251DD6A4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v23 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_loadWeakRetained((a1 + 48));
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    v16 = *(a1 + 56);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Operations/Database/Records/CKDFetchRecordsOperation.m");
    v21 = objc_msgSend_requestUUID(v14, v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v22, v16, WeakRetained, v18, 522, @"Request with UUID %@ invoked progress callout after completion callout.  Progress recordID %@", v21, v9);
  }

  objc_msgSend__handleRecordFetch_recordID_etagMatched_responseCode_(WeakRetained, v12, v23, v9, a4, v10);
}

void sub_2251DD7EC(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v7 = v4;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = objc_msgSend_ckShortDescription(v3, v10, v11);
    *buf = 138543874;
    v34 = v9;
    v35 = 2048;
    v36 = v3;
    v37 = 2114;
    v38 = v12;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Fetch records url request completed. Waiting for all record callbacks to finish before completing request <%{public}@: %p; %{public}@>", buf, 0x20u);
  }

  v13 = objc_msgSend_requestUUID(v3, v5, v6);
  v16 = objc_msgSend_error(v3, v14, v15);
  objc_msgSend_setRequest_(WeakRetained, v17, 0);
  v20 = objc_msgSend_fetchRecordsGroup(WeakRetained, v18, v19);
  v23 = objc_msgSend_callbackQueue(WeakRetained, v21, v22);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251DDA40;
  block[3] = &unk_278546990;
  v30 = v13;
  v31 = v16;
  v32 = WeakRetained;
  v24 = v16;
  v25 = v13;
  dispatch_group_notify(v20, v23, block);

  v28 = objc_msgSend_fetchRecordsGroup(WeakRetained, v26, v27);
  dispatch_group_leave(v28);
}

void sub_2251DDA40(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC830];
  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v29 = 138543362;
    v30 = v5;
    _os_log_impl(&dword_22506F000, v4, OS_LOG_TYPE_INFO, "All record callbacks are complete. Finishing request %{public}@", &v29, 0xCu);
    v6 = *MEMORY[0x277CBC878];
    if (*(a1 + 40))
    {
      if (*v2 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v6);
      }

      goto LABEL_8;
    }

    if (*v2 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }
  }

  else if (*(a1 + 40))
  {
LABEL_8:
    v7 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = *(a1 + 48);
      v15 = objc_msgSend_ckShortDescription(v12, v13, v14);
      v16 = *(a1 + 40);
      v29 = 138544130;
      v30 = v11;
      v31 = 2048;
      v32 = v12;
      v33 = 2114;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Failed to fetch records for <%{public}@: %p; %{public}@>: %@", &v29, 0x2Au);
    }

    objc_msgSend_setError_(*(a1 + 48), v8, *(a1 + 40));
    goto LABEL_15;
  }

  v19 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    v22 = v19;
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = *(a1 + 48);
    v28 = objc_msgSend_ckShortDescription(v25, v26, v27);
    v29 = 138543874;
    v30 = v24;
    v31 = 2048;
    v32 = v25;
    v33 = 2114;
    v34 = v28;
    _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Fetched records for <%{public}@: %p; %{public}@>", &v29, 0x20u);
  }

LABEL_15:
  v20 = *(a1 + 48);
  if (v20)
  {
    v21 = objc_msgSend_stateTransitionGroup(v20, v17, v18);
    dispatch_group_leave(v21);
  }
}

void sub_2251DDCF0(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "All record callbacks are complete. Finishing fetch operation", v6, 2u);
  }

  v5 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v3, v4);
  dispatch_group_leave(v5);
}

uint64_t sub_2251DDDA4(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "All record callbacks are complete. Finishing decrypt operation if any.", v6, 2u);
  }

  return objc_msgSend_finishDecryption(*(a1 + 32), v3, v4);
}

void sub_2251DEA10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void sub_2251DEA34(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (!a2 && WeakRetained)
  {
    v9 = objc_msgSend_errorForRecordID_(WeakRetained, v5, *(a1 + 32));
    if (!v9)
    {
      v10 = objc_msgSend_recordFetchProgressBlock(v6, v7, v8);

      if (v10)
      {
        v11 = objc_msgSend_recordFetchProgressBlock(v6, v7, v8);
        v11[2](v11, *(a1 + 32), 1.0);
      }
    }

    v12 = objc_msgSend_recordFetchCompletionBlock(v6, v7, v8);

    if (v12)
    {
      v15 = objc_msgSend_recordFetchCompletionBlock(v6, v13, v14);
      v16 = v15;
      if (*(a1 + 56))
      {
        v17 = 0;
      }

      else
      {
        v17 = *(a1 + 40);
      }

      (*(v15 + 16))(v15, v17, *(a1 + 32), v9);
    }

    v18 = objc_msgSend_error(v6, v13, v14);

    if (!v18)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2251DEBB0;
      v20[3] = &unk_2785487F8;
      v21 = *(a1 + 40);
      objc_msgSend_updateCloudKitMetrics_(v6, v19, v20);
    }
  }
}

void sub_2251DEBB0(uint64_t a1, void *a2)
{
  v21 = a2;
  v5 = objc_msgSend_recordsDownloaded(v21, v3, v4);
  objc_msgSend_setRecordsDownloaded_(v21, v6, v5 + 1);
  v9 = objc_msgSend_assetCount(*(a1 + 32), v7, v8);
  v12 = objc_msgSend_assetsDownloaded(v21, v10, v11);
  objc_msgSend_setAssetsDownloaded_(v21, v13, v12 + v9);
  v16 = objc_msgSend_assetDiskSize(*(a1 + 32), v14, v15);
  v19 = objc_msgSend_assetsDownloadedFileSize(v21, v17, v18);
  objc_msgSend_setAssetsDownloadedFileSize_(v21, v20, v19 + v16);
}

void sub_2251DEC44(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v11 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 32), v5, v6);
    if (*(a1 + 56))
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = *(a1 + 48);
    v10 = objc_msgSend_errorForRecordID_(*(a1 + 32), v7, v9);
    v11[2](v11, v8, v9, v10);
  }
}

void sub_2251DEEA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251DEEC8(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    v10 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = MEMORY[0x277CBC830];
    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = v12;
      v19 = objc_msgSend_recordID(v15, v17, v18);
      *buf = 138412546;
      v44 = v19;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Couldn't decrypt record %@: %@", buf, 0x16u);
    }

    if (objc_msgSend_wasCached(v5, v13, v14) && CKIsPCSError() && (objc_msgSend_useCachedEtags(WeakRetained, v7, v8) & 1) != 0)
    {
      if (*v10 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 32);
        v24 = v20;
        v27 = objc_msgSend_recordID(v23, v25, v26);
        *buf = 138412290;
        v44 = v27;
        _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Failed to decrypt a record from our cache. Refetching record %@ from the server and trying again", buf, 0xCu);
      }

      v28 = objc_msgSend_recordIDsToRefetch(WeakRetained, v21, v22);
      v31 = objc_msgSend_recordID(v5, v29, v30);
      objc_msgSend_addObject_(v28, v32, v31);

      v35 = objc_msgSend_fetchRecordsGroup(WeakRetained, v33, v34);
      dispatch_group_leave(v35);

      goto LABEL_19;
    }

    if (*(a1 + 40))
    {
      objc_msgSend_setError_forRecordID_(WeakRetained, v7, v6);
    }
  }

  if (objc_msgSend_shouldUpdateTimestampsForFetchedMergeableValues(WeakRetained, v7, v8))
  {
    v38 = objc_msgSend_encryptedValueStore(*(a1 + 32), v36, v37);
    v42 = objc_opt_class();
    v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, &v42, 1);
    objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v38, v41, v40, &unk_28385D5C0);
  }

  objc_msgSend__continueHandleFetchedRecord_recordID_(WeakRetained, v36, v5, *(a1 + 40));
LABEL_19:
}

void sub_2251DF1A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v10 = objc_msgSend_unmergedDeltas(v3, v4, v5);
  v8 = objc_msgSend_allObjects(v10, v6, v7);
  objc_msgSend_mergeLastKnownServerTimestampVectorFromDeltas_(v3, v9, v8);
}

void sub_2251DF334(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2251DF358(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v11 = objc_msgSend_container(WeakRetained, v8, v9);
      v14 = objc_msgSend_pcsManager(v11, v12, v13);
      v17 = objc_msgSend_pcsKeysToRemove(v5, v15, v16);
      v20 = objc_msgSend_pcs(v5, v18, v19);
      v23 = objc_msgSend_protectionEtag(*(a1 + 40), v21, v22);
      v25 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v14, v24, v17, v20, v23, *(a1 + 48));

      if (v25)
      {
        v28 = *(a1 + 48);
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = sub_2251DF6C4;
        v57[3] = &unk_2785498A0;
        v57[4] = v25;
        objc_msgSend_updateCloudKitMetrics_(v28, v26, v57);
      }

      v29 = objc_msgSend_pcs(v5, v26, v27);
      objc_msgSend_setRecordPCS_(*(a1 + 40), v30, v29);
      v33 = objc_msgSend_container(v10, v31, v32);
      v36 = objc_msgSend_pcsManager(v33, v34, v35);
      v39 = objc_msgSend_pcs(v5, v37, v38);
      v56 = 0;
      v41 = objc_msgSend_dataFromRecordPCS_error_(v36, v40, v39, &v56);
      v42 = v56;

      if (v41)
      {
        objc_msgSend_setProtectionData_(*(a1 + 40), v43, v41);
        v45 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v44, v41);
        objc_msgSend_setProtectionEtag_(*(a1 + 40), v46, v45);

        v47 = 0;
      }

      else
      {
        v47 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v43, *MEMORY[0x277CBC120], 5001, v42, @"Failed to create PCS data from fetched PCS while decrypting mergeable values");
      }

      if (v47)
      {
LABEL_15:
        v54 = *(a1 + 32);
        if (v54)
        {
          objc_msgSend_setError_forRecordID_(v10, v53, v47);
          v54 = *(a1 + 32);
        }

        objc_msgSend__continueHandleFetchedRecord_recordID_(v10, v53, *(a1 + 40), v54);
        goto LABEL_21;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v48 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v55 = *(a1 + 32);
        *buf = 138412546;
        v59 = v55;
        v60 = 2112;
        v61 = v6;
        _os_log_error_impl(&dword_22506F000, v48, OS_LOG_TYPE_ERROR, "Failed to fetch PCS to decrypt mergeable value delta record %@: %@", buf, 0x16u);
      }

      if (objc_msgSend_CKIsNotFoundError(v6, v49, v50))
      {
        v52 = v6;
      }

      else
      {
        v52 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v51, *MEMORY[0x277CBC120], 5001, v6, @"Failed to fetch PCS to decrypt mergeable values");
      }

      v47 = v52;
      if (v52)
      {
        goto LABEL_15;
      }
    }

    objc_msgSend__reallyDecryptPropertiesOnRecord_recordID_(v10, v53, *(a1 + 40), *(a1 + 32));
LABEL_21:
  }
}

void sub_2251DF6C4(uint64_t a1, void *a2)
{
  v7 = a2;
  v5 = objc_msgSend_recordKeysRemoved(v7, v3, v4);
  objc_msgSend_setRecordKeysRemoved_(v7, v6, *(a1 + 32) + v5);
}

void sub_2251E01AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_2251E01D8(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Failed to remove anonymous share. error: %@", &v9, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_fetchRecordsGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);
}

void sub_2251E02EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 32), v5, v6);
    if (*(a1 + 64))
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = v7;
    (*(v7 + 16))(v7, v8, *(a1 + 48), *(a1 + 56));
  }
}

void sub_2251E0650(uint64_t a1, uint64_t a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = MEMORY[0x277CBC858];
  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v44 = *(a1 + 32);
    v45 = v7;
    v48 = objc_msgSend_recordID(v44, v46, v47);
    v49 = *(a1 + 40);
    v50 = @" and error: ";
    *buf = 138413058;
    v51 = &stru_28385ED00;
    v58 = v48;
    if (!v4)
    {
      v50 = &stru_28385ED00;
    }

    v59 = 2112;
    if (v4)
    {
      v51 = v4;
    }

    v60 = v49;
    v61 = 2114;
    v62 = v50;
    v63 = 2112;
    v64 = v51;
    _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Prepped PCS data for share %@ with container %@%{public}@%@", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (v4)
  {
    objc_msgSend_setError_forRecordID_(WeakRetained, v9, v4, *(a1 + 48));
  }

  v12 = objc_msgSend_mutableEncryptedPSK(*(a1 + 32), v9, v10);

  if (!v12)
  {
    v15 = objc_msgSend_pcsManager(*(a1 + 40), v13, v14);
    v18 = objc_msgSend_publicPCS(*(a1 + 32), v16, v17);
    v56 = 0;
    v20 = objc_msgSend_sharingIdentityDataFromPCS_error_(v15, v19, v18, &v56);
    v21 = v56;

    v22 = MEMORY[0x277CBC830];
    if (v20)
    {
      v23 = objc_alloc(MEMORY[0x277CBC2E8]);
      v25 = objc_msgSend_initWithData_(v23, v24, v20);
      objc_msgSend_setMutableEncryptedPSK_(*(a1 + 32), v26, v25);
    }

    else
    {
      if (*v5 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v28 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        if (v21)
        {
LABEL_16:
          v29 = *v22;
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_INFO))
          {
            v31 = *(a1 + 48);
            *buf = 138412546;
            v58 = v31;
            v59 = 2112;
            v60 = v21;
            _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Warn: Couldn't get a public sharing identity for share %@: %@", buf, 0x16u);
          }

          if (!v4)
          {
            objc_msgSend_setError_forRecordID_(v11, v30, v21, *(a1 + 48));
          }

LABEL_24:

          goto LABEL_25;
        }

LABEL_22:
        v32 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
        {
          v33 = *(a1 + 32);
          v34 = v32;
          v37 = objc_msgSend_recordID(v33, v35, v36);
          v40 = objc_msgSend_mutableEncryptedPSK(*(a1 + 32), v38, v39);
          v43 = objc_msgSend_data(v40, v41, v42);
          *buf = 138412546;
          v58 = v37;
          v59 = 2112;
          v60 = v43;
          _os_log_impl(&dword_22506F000, v34, OS_LOG_TYPE_INFO, "Public sharing identity for share %@ is %@", buf, 0x16u);
        }

        goto LABEL_24;
      }

      v52 = *(a1 + 32);
      v25 = v28;
      v55 = objc_msgSend_recordID(v52, v53, v54);
      *buf = 138412290;
      v58 = v55;
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Didn't get a sharing identity from the public PCS for share %@", buf, 0xCu);
    }

    v27 = *MEMORY[0x277CBC878];
    if (v21)
    {
      if (*v5 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v27);
      }

      goto LABEL_16;
    }

    if (*v5 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v27);
    }

    goto LABEL_22;
  }

LABEL_25:
  objc_msgSend__decryptPropertiesIfNeededForRecord_record_(v11, v13, *(a1 + 32), *(a1 + 48));
}

void sub_2251E119C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251E11B8(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_225074030;
  v8[4] = sub_2250735A4;
  v9 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2251E12CC;
  v5[3] = &unk_278549940;
  v7 = v8;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_msgSend__addAssetDownloadTaskForRecord_completionBlock_(WeakRetained, v4, v3, v5);

  _Block_object_dispose(v8, 8);
}

void sub_2251E12B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251E12CC(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, *(*(*(a1 + 40) + 8) + 40));
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_2251E2328(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_2251E2344(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v43 = v5;
    if (a2 == 2)
    {
      v35 = objc_opt_new();
      v38 = objc_msgSend_recordPCS(*(a1 + 56), v36, v37);
      objc_msgSend_setRecordPCS_(v35, v39, v38);
      objc_msgSend_setAsset_(v35, v40, v43);
      objc_msgSend_addObject_(*(a1 + 64), v41, v35);
    }

    else
    {
      if (a2 == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v43;
          v12 = objc_msgSend_constructedAssetDownloadURLTemplate(v9, v10, v11);
          if (v12)
          {
            v15 = v12;
            v16 = MEMORY[0x277CBC190];
            v17 = objc_msgSend_constructedAssetDownloadURLTemplate(v9, v13, v14);
            LODWORD(v16) = objc_msgSend__templateURLRequiresAssetKey_(v16, v18, v17);

            if (v16)
            {
              v21 = MEMORY[0x277CBC190];
              v22 = objc_msgSend_constructedAssetDownloadURLTemplate(v9, v19, v20);
              v24 = objc_msgSend__canonicalizeTemplateURL_(v21, v23, v22);

              v29 = objc_msgSend_host(v24, v25, v26);
              if (v29)
              {
                v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v27, v28);
                v33 = objc_msgSend_keyOrErrorForHostname(*(a1 + 32), v31, v32);
                objc_msgSend_setObject_forKeyedSubscript_(v33, v34, v30, v29);
              }
            }
          }
        }

        if (*(a1 + 80) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          objc_msgSend_addObject_(*(a1 + 40), v8, v43);
        }

        else
        {
          objc_msgSend_addObject_(*(a1 + 48), v8, v43);
        }

        goto LABEL_18;
      }

      v35 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v42, *(a1 + 72), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1126, @"Invalid parameters to takeActionOnValue");
    }

LABEL_18:
    v5 = v43;
  }
}

uint64_t sub_2251E2558(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_2251E2574(uint64_t a1)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = objc_msgSend_error(*(a1 + 32), v2, v3);
    (*(v5 + 16))(v5, v6);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_2251E2B30(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_2251E2DE8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2251E2EDC;
  v5[3] = &unk_278548AD0;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, (a1 + 40));
  v5[4] = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v4, v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_2251E2EB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251E2EDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);
  if (v5)
  {
  }

  else
  {
    v16 = objc_msgSend_transcodeServerPublicKey(WeakRetained, v6, v7);

    if (v16)
    {
      v12 = objc_msgSend_transcodeServerPublicKey(WeakRetained, v8, v9);
      v13 = objc_msgSend_keyOrErrorForHostname(v2, v17, v18);
      objc_msgSend_setObject_forKeyedSubscript_(v13, v19, v12, *(a1 + 32));
LABEL_9:

      goto LABEL_10;
    }
  }

  v12 = objc_msgSend_error(WeakRetained, v8, v9);
  v13 = v12;
  if (!v12)
  {
    v13 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 1000, @"No public cert key and no error");
  }

  v14 = objc_msgSend_keyOrErrorForHostname(v2, v10, v11);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v15, v13, *(a1 + 32));

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_10:

  v22 = objc_msgSend_stateTransitionGroup(v2, v20, v21);
  dispatch_group_leave(v22);
}

void sub_2251E3028(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v6 = objc_msgSend_keyOrErrorForHostname(*(a1 + 32), v4, v5);
  objc_msgSend_setKeyOrErrorForHostname_(v3, v7, v6);

  v11 = objc_msgSend_recordFetchProgressBlock(*(a1 + 32), v8, v9);
  if (v11)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2251E334C;
    v36[3] = &unk_278549990;
    v37 = *(a1 + 32);
    objc_msgSend_setDownloadPreparationBlock_(v3, v10, v36);
  }

  else
  {
    objc_msgSend_setDownloadPreparationBlock_(v3, v10, 0);
  }

  v15 = objc_msgSend_recordFetchProgressBlock(*(a1 + 32), v12, v13);
  if (v15)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2251E34D0;
    v34[3] = &unk_2785499B8;
    v35 = *(a1 + 32);
    objc_msgSend_setDownloadProgressBlock_(v3, v14, v34);
  }

  else
  {
    objc_msgSend_setDownloadProgressBlock_(v3, v14, 0);
  }

  v19 = objc_msgSend_recordFetchCommandBlock(*(a1 + 32), v16, v17);
  if (v19)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2251E370C;
    v32[3] = &unk_2785499E0;
    v33 = *(a1 + 32);
    objc_msgSend_setDownloadCommandBlock_(v3, v18, v32);
  }

  else
  {
    objc_msgSend_setDownloadCommandBlock_(v3, v18, 0);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2251E3944;
  v30[3] = &unk_278549A08;
  v31 = *(a1 + 32);
  objc_msgSend_setDownloadCompletionBlock_(v3, v20, v30);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2251E3C64;
  v28[3] = &unk_278549A30;
  v29 = *(a1 + 32);
  objc_msgSend_setUrlFilledOutBlock_(v3, v21, v28);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2251E3F94;
  v26[3] = &unk_2785476F0;
  objc_copyWeak(&v27, &location);
  v26[4] = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v22, v26);
  v25 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v23, v24);
  dispatch_group_enter(v25);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void sub_2251E3324(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2251E334C(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = objc_msgSend_record(v3, v4, v5);
  if (!v8)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1338, @"Expected non-nil record for asset %@", v3);
  }

  v9 = objc_msgSend_downloadTasksByRecordID(*(a1 + 32), v6, v7);
  v12 = objc_msgSend_recordID(v8, v10, v11);
  v14 = objc_msgSend_objectForKey_(v9, v13, v12);

  if (!v14)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1340, @"Expected non-nil download task for record %@", v8);
  }

  v17 = objc_msgSend_progressTracker(v14, v15, v16);
  v25[0] = v3;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v25, 1);
  objc_msgSend_startTrackingItems_(v17, v20, v19);
}

void sub_2251E34D0(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v10 = objc_msgSend_record(v5, v6, v7);
  if (!v10)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1346, @"Expected non-nil record for asset %@", v5);
  }

  v11 = objc_msgSend_downloadTasksByRecordID(*(a1 + 32), v8, v9);
  v14 = objc_msgSend_recordID(v10, v12, v13);
  v16 = objc_msgSend_objectForKey_(v11, v15, v14);

  if (!v16)
  {
    v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1348, @"Expected non-nil download task for record %@", v10);
  }

  v19 = objc_msgSend_progressTracker(v16, v17, v18);
  objc_msgSend_updateProgressWithItem_progress_(v19, v20, v5, a3);
  v22 = v21;

  v25 = objc_msgSend_callbackQueue(*(a1 + 32), v23, v24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251E3694;
  block[3] = &unk_278545E20;
  block[4] = *(a1 + 32);
  v32 = v10;
  v33 = v22;
  v26 = v10;
  dispatch_async(v25, block);
}

void sub_2251E3694(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_recordFetchProgressBlock(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_recordID(*(a1 + 40), v4, v5);
  v7[2](v7, v6, *(a1 + 48));
}

void sub_2251E370C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = objc_msgSend_record(v5, v7, v8);
  if (!v11)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1358, @"Expected non-nil record for asset %@", v5);
  }

  v12 = objc_msgSend_downloadTasksByRecordID(*(a1 + 32), v9, v10);
  v15 = objc_msgSend_recordID(v11, v13, v14);
  v17 = objc_msgSend_objectForKey_(v12, v16, v15);

  if (!v17)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1360, @"Expected non-nil download task for record %@", v11);
  }

  v20 = objc_msgSend_callbackQueue(*(a1 + 32), v18, v19);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251E38CC;
  block[3] = &unk_278546990;
  block[4] = *(a1 + 32);
  v28 = v11;
  v29 = v6;
  v21 = v6;
  v22 = v11;
  dispatch_async(v20, block);
}

void sub_2251E38CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_recordFetchCommandBlock(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_recordID(*(a1 + 40), v4, v5);
  v7[2](v7, v6, *(a1 + 48));
}

void sub_2251E3944(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v11 = objc_msgSend_record(v5, v7, v8);
  if (!v11)
  {
    v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1368, @"Expected non-nil record for asset %@", v5);
  }

  v12 = objc_msgSend_downloadTasksByRecordID(*(a1 + 32), v9, v10);
  v15 = objc_msgSend_recordID(v11, v13, v14);
  v17 = objc_msgSend_objectForKey_(v12, v16, v15);

  if (!v17)
  {
    v44 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1370, @"Expected non-nil download task for record %@", v11);
  }

  v20 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v20);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v35 = v21;
      v38 = objc_msgSend_recordID(v11, v36, v37);
      v41 = objc_msgSend_operationID(*(a1 + 32), v39, v40);
      *buf = 138413058;
      v47 = v5;
      v48 = 2112;
      v49 = v38;
      v50 = 2114;
      v51 = v41;
      v52 = 2112;
      v53 = v6;
      _os_log_error_impl(&dword_22506F000, v35, OS_LOG_TYPE_ERROR, "Failed to download asset %@ for record %@ and operation %{public}@: %@", buf, 0x2Au);
    }

    v24 = *(a1 + 32);
    v25 = objc_msgSend_recordID(v11, v22, v23);
    objc_msgSend_setError_forRecordID_(v24, v26, v6, v25);
    goto LABEL_15;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v20);
  }

  v27 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v25 = v27;
    v31 = objc_msgSend_recordID(v11, v29, v30);
    v34 = objc_msgSend_operationID(*(a1 + 32), v32, v33);
    *buf = 138412802;
    v47 = v5;
    v48 = 2112;
    v49 = v31;
    v50 = 2114;
    v51 = v34;
    _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Downloaded asset %@ for record %@ and operation %{public}@", buf, 0x20u);

LABEL_15:
  }

  objc_msgSend_didDownloadAsset_error_(v17, v28, v5, v6);
}

void sub_2251E3C64(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_asset(v5, v7, v8);
  v12 = objc_msgSend_record(v9, v10, v11);

  if (!v12)
  {
    v45 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v45, v46, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1382, @"Expected non-nil record for urlInfo %@", v5);
  }

  v15 = objc_msgSend_downloadTasksByRecordID(*(a1 + 32), v13, v14);
  v18 = objc_msgSend_recordID(v12, v16, v17);
  v20 = objc_msgSend_objectForKey_(v15, v19, v18);

  if (!v20)
  {
    v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v21, v22);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, *(a1 + 40), *(a1 + 32), @"CKDFetchRecordsOperation.m", 1384, @"Expected non-nil download task for record %@", v12);
  }

  v23 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v23);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v38 = v24;
      v41 = objc_msgSend_recordID(v12, v39, v40);
      v44 = objc_msgSend_operationID(*(a1 + 32), v42, v43);
      *buf = 138413058;
      v50 = v5;
      v51 = 2112;
      v52 = v41;
      v53 = 2114;
      v54 = v44;
      v55 = 2112;
      v56 = v6;
      _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "Failed to fill out download URL info %@ for record %@ and operation %{public}@: %@", buf, 0x2Au);
    }

    v27 = *(a1 + 32);
    v28 = objc_msgSend_recordID(v12, v25, v26);
    objc_msgSend_setError_forRecordID_(v27, v29, v6, v28);
    goto LABEL_15;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v23);
  }

  v30 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v28 = v30;
    v34 = objc_msgSend_recordID(v12, v32, v33);
    v37 = objc_msgSend_operationID(*(a1 + 32), v35, v36);
    *buf = 138412802;
    v50 = v5;
    v51 = 2112;
    v52 = v34;
    v53 = 2114;
    v54 = v37;
    _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "Filled out URL info %@ for record %@ and operation %{public}@", buf, 0x20u);

LABEL_15:
  }

  objc_msgSend_didFillOutURLInfo_error_(v20, v31, v5, v6);
}

void sub_2251E3F94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_msgSend_error(WeakRetained, v3, v4);

  objc_msgSend_setError_(*(a1 + 32), v5, v10);
  objc_msgSend__didDownloadAssetsWithError_(*(a1 + 32), v6, v10);
  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v7, v8);
  dispatch_group_leave(v9);
}

void sub_2251E401C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2251E414C;
  v8[3] = &unk_278547D98;
  objc_copyWeak(&v9, (a1 + 32));
  objc_msgSend_setDeltasFetchedBlock_(v3, v4, v8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2251E4440;
  v6[3] = &unk_278547098;
  objc_copyWeak(&v7, (a1 + 32));
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void sub_2251E4128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_2251E414C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = objc_msgSend_mergeableValueDownloadTasks(WeakRetained, v11, v12);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v7);

    if (!v8 || v9)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v34 = 138412546;
        v35 = v7;
        v36 = 2112;
        v37 = v9;
        _os_log_error_impl(&dword_22506F000, v29, OS_LOG_TYPE_ERROR, "Error fetching mergeable delta %@: %@", &v34, 0x16u);
      }

      v24 = objc_msgSend_recordID(v7, v30, v31);
      objc_msgSend_setError_forRecordID_(v13, v32, v9, v24);
    }

    else
    {
      v17 = *MEMORY[0x277CBC878];
      if (!v16)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v17);
        }

        v33 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          v34 = 138412546;
          v35 = v7;
          v36 = 2112;
          v37 = v8;
          _os_log_fault_impl(&dword_22506F000, v33, OS_LOG_TYPE_FAULT, "No mergeable value task for fetched deltas for %@: %@", &v34, 0x16u);
        }

        goto LABEL_16;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v18 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v34 = 138412546;
        v35 = v7;
        v36 = 2112;
        v37 = v8;
        _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Fetched deltas for mergeable %@: %@", &v34, 0x16u);
      }

      v21 = objc_msgSend_recordValue(v16, v19, v20);
      objc_msgSend_addUnmergedDeltas_(v21, v22, v8);

      v24 = objc_msgSend_CKMap_(v8, v23, &unk_28385D5E0);
      v27 = objc_msgSend_recordValue(v16, v25, v26);
      objc_msgSend_addServerDeltaMetadatas_(v27, v28, v24);
    }

LABEL_16:
  }
}

void sub_2251E4440(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = MEMORY[0x277CBC830];
    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v47 = v4;
      v50 = objc_msgSend_operationID(WeakRetained, v48, v49);
      *buf = 138543362;
      v59 = v50;
      _os_log_debug_impl(&dword_22506F000, v47, OS_LOG_TYPE_DEBUG, "Finished mergeable delta fetch operation for %{public}@", buf, 0xCu);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = WeakRetained;
    v7 = objc_msgSend_mergeableValueDownloadTasks(WeakRetained, v5, v6);
    v10 = objc_msgSend_allValues(v7, v8, v9);

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v54, v62, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v55;
      *&v15 = 138412546;
      v51 = v15;
      do
      {
        v18 = 0;
        do
        {
          if (*v55 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v54 + 1) + 8 * v18);
          v20 = objc_msgSend_recordValue(v19, v13, v14, v51);
          v23 = v20;
          if (v20)
          {
            v24 = objc_msgSend_unmergedDeltas(v20, v21, v22);
            v27 = objc_msgSend_allObjects(v24, v25, v26);
            objc_msgSend_mergeLastKnownServerTimestampVectorFromDeltas_(v23, v28, v27);
          }

          else
          {
            if (*v2 != -1)
            {
              dispatch_once(v2, *MEMORY[0x277CBC878]);
            }

            v31 = *v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_FAULT))
            {
              v36 = v31;
              objc_msgSend_mergeableValueID(v19, v37, v38);
              v40 = v39 = v2;
              v43 = objc_msgSend_operationID(v52, v41, v42);
              *buf = v51;
              v59 = v40;
              v60 = 2114;
              v61 = v43;
              _os_log_fault_impl(&dword_22506F000, v36, OS_LOG_TYPE_FAULT, "No mergeable value delta on download task for %@ in operation %{public}@", buf, 0x16u);

              v2 = v39;
              v3 = MEMORY[0x277CBC830];
            }
          }

          v32 = objc_msgSend_completionBlock(v19, v29, v30);

          if (v32)
          {
            v35 = objc_msgSend_completionBlock(v19, v33, v34);
            v35[2]();
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v54, v62, 16);
      }

      while (v16);
    }

    WeakRetained = v52;
    v46 = objc_msgSend_callbackQueue(v52, v44, v45);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251E47C4;
    block[3] = &unk_278545A00;
    block[4] = v52;
    dispatch_async(v46, block);
  }
}

void sub_2251E47C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_stateTransitionGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v3);
}

void sub_2251E5094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 88));
  _Unwind_Resume(a1);
}

void sub_2251E50D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordFetch_recordID_etagMatched_responseCode_(WeakRetained, v10, v9, v8, 0, v7);

  objc_msgSend_setUserRecord_(WeakRetained, v11, v9);
}

void sub_2251E5170(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v7 = v4;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = objc_msgSend_ckShortDescription(v3, v10, v11);
    *buf = 138543874;
    v33 = v9;
    v34 = 2048;
    v35 = v3;
    v36 = 2114;
    v37 = v12;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Fetch user record url request completed. Waiting for all record callbacks to finish before completing request <%{public}@: %p; %{public}@>", buf, 0x20u);
  }

  v13 = objc_msgSend_requestUUID(v3, v5, v6);
  v16 = objc_msgSend_error(v3, v14, v15);
  objc_msgSend_setRequest_(WeakRetained, v17, 0);
  objc_msgSend_finishDecryption(WeakRetained, v18, v19);
  v22 = objc_msgSend_fetchRecordsGroup(WeakRetained, v20, v21);
  v25 = objc_msgSend_callbackQueue(WeakRetained, v23, v24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251E53A4;
  block[3] = &unk_278546990;
  v29 = v13;
  v30 = v16;
  v31 = WeakRetained;
  v26 = v16;
  v27 = v13;
  dispatch_group_notify(v22, v25, block);
}

void sub_2251E53A4(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC830];
  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v28 = 138543362;
    v29 = v5;
    _os_log_impl(&dword_22506F000, v4, OS_LOG_TYPE_INFO, "All record callbacks are complete. Finishing request %{public}@", &v28, 0xCu);
    v6 = *MEMORY[0x277CBC878];
    if (*(a1 + 40))
    {
      if (*v2 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v6);
      }

      goto LABEL_8;
    }

    if (*v2 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }
  }

  else if (*(a1 + 40))
  {
LABEL_8:
    v7 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = *(a1 + 48);
      v15 = objc_msgSend_ckShortDescription(v12, v13, v14);
      v16 = *(a1 + 40);
      v28 = 138544130;
      v29 = v11;
      v30 = 2048;
      v31 = v12;
      v32 = 2114;
      v33 = v15;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Failed to fetch records for <%{public}@: %p; %{public}@>: %@", &v28, 0x2Au);
    }

    objc_msgSend_setError_(*(a1 + 48), v8, *(a1 + 40));
    goto LABEL_15;
  }

  v19 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    v21 = v19;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = *(a1 + 48);
    v27 = objc_msgSend_ckShortDescription(v24, v25, v26);
    v28 = 138543874;
    v29 = v23;
    v30 = 2048;
    v31 = v24;
    v32 = 2114;
    v33 = v27;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Fetched records for <%{public}@: %p; %{public}@>", &v28, 0x20u);
  }

LABEL_15:
  v20 = objc_msgSend_stateTransitionGroup(*(a1 + 48), v17, v18);
  dispatch_group_leave(v20);
}

void sub_2251E5C64(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 480), a2);
  objc_initWeak(&location, *(a1 + 32));
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_2251E5D70;
  v12 = &unk_278547098;
  objc_copyWeak(&v13, &location);
  objc_msgSend_setCompletionBlock_(*(*(a1 + 32) + 480), v5, &v9);
  v8 = objc_msgSend_fetchVersionsGroup(*(a1 + 32), v6, v7, v9, v10, v11, v12);
  dispatch_group_enter(v8);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_2251E5D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251E5D70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_fetchVersionsGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_2251E647C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  objc_destroyWeak((v52 - 160));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251E64CC(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (!v5 || v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v47 = 138412546;
      v48 = v5;
      v49 = 2112;
      v50 = v6;
      _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Couldn't decrypt data for record version %@: %@", &v47, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    v11 = objc_msgSend_container(WeakRetained, v8, v9);
    v14 = objc_msgSend_entitlements(v11, v12, v13);
    hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v14, v15, v16);
    objc_msgSend_setSerializeProtectionData_(v5, v18, hasProtectionDataEntitlement);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = objc_msgSend_container(v10, v19, v20);
      v24 = objc_msgSend_entitlements(v21, v22, v23);
      if (objc_msgSend_hasOutOfProcessUIEntitlement(v24, v25, v26))
      {
        objc_msgSend_setSerializePersonalInfo_(v5, v27, 1);
      }

      else
      {
        v30 = objc_msgSend_container(v10, v27, v28);
        v33 = objc_msgSend_entitlements(v30, v31, v32);
        hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v33, v34, v35);
        objc_msgSend_setSerializePersonalInfo_(v5, v37, hasParticipantPIIEntitlement);
      }

      v40 = objc_msgSend_container(v10, v38, v39);
      shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(v40, v41, v42);
      objc_msgSend_setSerializeOwnerInfo_(v5, v44, shouldSerializeOwnerInfo);
    }

    v45 = *(a1 + 32);
    objc_sync_enter(v45);
    objc_msgSend_addObject_(*(a1 + 32), v46, v5);
    objc_sync_exit(v45);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2251E6740(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = objc_msgSend_recordVersionFetchedBlock(WeakRetained, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_callbackQueue(WeakRetained, v6, v7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251E6848;
    block[3] = &unk_278549B00;
    block[4] = WeakRetained;
    v13 = *(a1 + 32);
    v16 = *(a1 + 72);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v14 = v9;
    v15 = v10;
    dispatch_async(v8, block);
  }

  v11 = objc_msgSend_fetchVersionsGroup(*(a1 + 48), v6, v7);
  dispatch_group_leave(v11);
}

void sub_2251E6848(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordVersionFetchedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 64), *(a1 + 48), *(*(*(a1 + 56) + 8) + 40));
}

void sub_2251E68B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordVersionFetchedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 64), *(a1 + 48), *(*(*(a1 + 56) + 8) + 40));
}

void sub_2251E6B5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2251E6B9C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordVersionsFetchedForID_isDeleted_versions_responseCode_(WeakRetained, v12, v11, a3, v10, v9);
}

void sub_2251E6C38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);
  objc_msgSend_finishDecryption(WeakRetained, v7, v8);
  v11 = objc_msgSend_fetchVersionsGroup(WeakRetained, v9, v10);
  v14 = objc_msgSend_callbackQueue(WeakRetained, v12, v13);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251E6D38;
  v16[3] = &unk_278545898;
  v16[4] = WeakRetained;
  v17 = v6;
  v15 = v6;
  dispatch_group_notify(v11, v14, v16);
}

void sub_2251E7B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251E7BB8(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Failed to remove anonymous share. error: %@", &v9, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_fetchRecordsGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);
}

void sub_2251E7CCC(id *a1, const char *a2, uint64_t a3)
{
  v70 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_fetchAllChanges(a1[4], a2, a3))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = objc_msgSend_clientIsUsingLegacyCKFetchRecordChangesOperationAPI(a1[4], v4, v5) ^ 1;
  }

  v7 = objc_msgSend_serverChangeTokenUpdatedBlock(a1[4], v4, v5);
  if (v7 && (v10 = v7, objc_msgSend_error(a1[4], v8, v9), v11 = objc_claimAutoreleasedReturnValue(), v12 = (v11 == 0) & v6, v11, v10, v12 == 1))
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = a1[5];
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v64, v69, 16);
    if (v54)
    {
      v53 = *v65;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v65 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v64 + 1) + 8 * i);
          v17 = objc_msgSend_objectForKeyedSubscript_(a1[6], v14, v16);
          v19 = objc_msgSend_objectForKeyedSubscript_(a1[7], v18, v16);
          v22 = objc_msgSend_resultServerChangeTokenData(v17, v20, v21);

          v57 = v19;
          if (v22)
          {
            v25 = objc_alloc(MEMORY[0x277CBC670]);
            v28 = objc_msgSend_resultServerChangeTokenData(v17, v26, v27);
            v56 = objc_msgSend_initWithData_(v25, v29, v28);
          }

          else
          {
            v56 = 0;
          }

          v30 = objc_msgSend_serverChangeTokenUpdatedBlock(a1[4], v23, v24);
          v33 = objc_msgSend_resultClientChangeTokenData(v17, v31, v32);
          v36 = objc_msgSend_status(v17, v34, v35);
          hasPendingArchivedRecords = objc_msgSend_hasPendingArchivedRecords(v17, v37, v38);
          v42 = objc_msgSend_syncObligationZoneIDs(v17, v40, v41);
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = sub_2251E8064;
          v62[3] = &unk_278548128;
          v62[4] = a1[4];
          v63 = a1[8];
          (v30)[2](v30, v16, v56, v33, v36, hasPendingArchivedRecords, v42, v57, v62);
        }

        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v64, v69, 16);
      }

      while (v54);
    }
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = a1[5];
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v58, v68, 16);
    if (v44)
    {
      v47 = v44;
      v48 = *v59;
      while (1)
      {
        if (*v59 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v49 = objc_msgSend_perRequestGroup(a1[8], v45, v46);
        dispatch_group_leave(v49);

        if (!--v47)
        {
          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v58, v68, 16);
          if (!v47)
          {
            break;
          }
        }
      }
    }
  }

  v52 = objc_msgSend_fetchRecordsGroup(a1[4], v50, v51);
  dispatch_group_leave(v52);
}

void sub_2251E8064(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v12 = objc_msgSend_operationID(v8, v10, v11);
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Finishing daemon operation %{public}@ due to client-returned error %@", &v14, 0x16u);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v7, v5);
  }

  v13 = objc_msgSend_perRequestGroup(*(a1 + 40), v3, v4);
  dispatch_group_leave(v13);
}

void sub_2251E84E4(id *a1, void *a2, void *a3)
{
  v29 = a2;
  v5 = a3;
  if (objc_msgSend_status(v5, v6, v7) != 3)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(a1[4], v8, v29);

    if (!v9)
    {
      v12 = objc_msgSend_configurationsByRecordZoneID(a1[5], v10, v11);
      v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v29);
      v17 = objc_msgSend_copy(v14, v15, v16);
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = objc_opt_new();
      }

      v20 = v19;

      v21 = objc_alloc(MEMORY[0x277CBC670]);
      v24 = objc_msgSend_resultServerChangeTokenData(v5, v22, v23);
      v26 = objc_msgSend_initWithData_(v21, v25, v24);
      objc_msgSend_setPreviousServerChangeToken_(v20, v27, v26);

      objc_msgSend_setObject_forKeyedSubscript_(a1[6], v28, v20, v29);
    }
  }
}

void sub_2251E8AC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 152));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_2251E8B4C(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (objc_msgSend_isFinished(WeakRetained, v4, v5))
  {

    v8 = MEMORY[0x277CBEBF8];
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleChangedRecords_perRequestSchedulerInfo_(WeakRetained, v7, v8, v6);
}

void sub_2251E8BDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleRecordDelete_recordType_perRequestSchedulerInfo_(WeakRetained, v8, v6, v5, v7);
}

void sub_2251E8C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleAttributesChangedForZone_perRequestSchedulerInfo_(WeakRetained, v5, v3, v4);
}

void sub_2251E9AB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accessWasGrantedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_accessWasGrantedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }
}

void sub_2251E9B3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accessWasRevokedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_accessWasRevokedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251E9E48(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setRetryPCSFailures_(v3, v4, 0);
  objc_msgSend_setCanSetPreviousProtectionEtag_(v3, v5, 1);
  objc_msgSend_setTrustProtectionData_(v3, v6, 1);
  v7 = objc_opt_new();
  objc_initWeak(&location, v3);
  objc_initWeak(&from, *(a1 + 32));
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2251EA04C;
  v19[3] = &unk_278549BF0;
  objc_copyWeak(&v21, &from);
  v8 = v7;
  v20 = v8;
  objc_msgSend_setSaveCompletionBlock_(v3, v9, v19);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2251EA0D0;
  v15[3] = &unk_278548AD0;
  objc_copyWeak(&v17, &from);
  objc_copyWeak(&v18, &location);
  v10 = v8;
  v16 = v10;
  objc_msgSend_setCompletionBlock_(v3, v11, v15);
  v14 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v12, v13);
  dispatch_group_enter(v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251EA00C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2251EA04C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleRecordSaved_error_(WeakRetained, v9, v11, v7);

  objc_msgSend_addObject_(*(a1 + 32), v10, v11);
}

void sub_2251EA0D0(id *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC830];
  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v31 = v5;
    v36 = objc_msgSend_error(v3, v32, v33);
    if (v36)
    {
      v37 = @" Error was ";
    }

    else
    {
      v37 = &stru_28385ED00;
    }

    v38 = objc_msgSend_error(v3, v34, v35);
    v39 = v38;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = &stru_28385ED00;
    }

    *buf = 138543618;
    v49 = v37;
    v50 = 2112;
    v51 = v40;
    _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Done saving all records for record access operation.%{public}@%@", buf, 0x16u);
  }

  v42 = objc_msgSend_error(v3, v6, v7);
  if (!v42)
  {
    v42 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1000, @"Unknown error when saving record for record access");
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = objc_msgSend_recordsToSaveByID(WeakRetained, v8, v9);
  v13 = objc_msgSend_allKeys(v10, v11, v12);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v43, v47, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v44;
    *&v17 = 138412546;
    v41 = v17;
    do
    {
      v20 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v43 + 1) + 8 * v20);
        if ((objc_msgSend_containsObject_(a1[4], v16, v21, v41) & 1) == 0)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v22 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
          {
            *buf = v41;
            v49 = v21;
            v50 = 2112;
            v51 = v42;
            _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Record %@ never received a callback when modifying records. Sending that callback now with error %@", buf, 0x16u);
          }

          v25 = objc_msgSend_error(v3, v23, v24);
          objc_msgSend__handleRecordSaved_error_(WeakRetained, v26, v21, v25);

          objc_msgSend_addObject_(a1[4], v27, v21);
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v43, v47, 16);
    }

    while (v18);
  }

  v30 = objc_msgSend_stateTransitionGroup(WeakRetained, v28, v29);
  dispatch_group_leave(v30);
}

void sub_2251EB4A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_accessWasGrantedBlock(*(a1 + 32), v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_callbackQueue(*(a1 + 32), v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251EB598;
    block[3] = &unk_278546990;
    block[4] = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    dispatch_async(v12, block);
  }
}

void sub_2251EB598(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accessWasGrantedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_accessWasGrantedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, 0, *(a1 + 48));
  }
}

void sub_2251EB624(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_accessWasRevokedBlock(*(a1 + 32), v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_callbackQueue(*(a1 + 32), v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251EB714;
    block[3] = &unk_278546990;
    block[4] = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    dispatch_async(v12, block);
  }
}

void sub_2251EB714(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accessWasRevokedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_accessWasRevokedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251EB798(uint64_t a1, void *a2)
{
  v7 = a2;
  v5 = objc_msgSend_recordKeysRemoved(v7, v3, v4);
  objc_msgSend_setRecordKeysRemoved_(v7, v6, *(a1 + 32) + v5);
}

void sub_2251EB984(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setForcePCSDecrypt_(v3, v4, 1);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2251EBB28;
  v19[3] = &unk_278548CC0;
  objc_copyWeak(&v20, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v5, v19);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_2251EBBD0;
  v15 = &unk_278546EE0;
  objc_copyWeak(&v18, &from);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  objc_msgSend_setCompletionBlock_(v3, v8, &v12);
  v11 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v9, v10, v12, v13, v14, v15);
  dispatch_group_enter(v11);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251EBAF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251EBB28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordFetched_recordID_error_(WeakRetained, v10, v9, v8, v7);

  v13 = objc_msgSend_fetchedRecordIDs(WeakRetained, v11, v12);
  objc_msgSend_addObject_(v13, v14, v8);
}

void sub_2251EBBD0(id *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = MEMORY[0x277CBC830];
  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Done fetching all records for web access", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = objc_msgSend_error(WeakRetained, v5, v6);

  if (!v7)
  {
    v7 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1000, @"Couldn't fetch record for web access grant/revoke.");
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = a1[4];
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v32, v40, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v33;
    *&v14 = 138412546;
    v31 = v14;
    do
    {
      v17 = 0;
      do
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v32 + 1) + 8 * v17);
        v19 = objc_msgSend_fetchedRecordIDs(a1[5], v12, v13, v31, v32);
        v21 = objc_msgSend_containsObject_(v19, v20, v18);

        if ((v21 & 1) == 0)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v22 = *v2;
          if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
          {
            *buf = v31;
            v37 = v18;
            v38 = 2112;
            v39 = v7;
            _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Record %@ was never fetched from the server. Returning error %@", buf, 0x16u);
          }

          objc_msgSend__handleRecordFetched_recordID_error_(a1[5], v23, 0, v18, v7);
          v26 = objc_msgSend_fetchedRecordIDs(a1[5], v24, v25);
          objc_msgSend_addObject_(v26, v27, v18);
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v32, v40, 16);
    }

    while (v15);
  }

  v30 = objc_msgSend_stateTransitionGroup(a1[5], v28, v29);
  dispatch_group_leave(v30);
}

void sub_2251ED51C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 120));
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2251ED558(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v7 = objc_msgSend_sharePCSData(v3, v4, v5);

    if (v7)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v8 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 40);
        v22 = v8;
        v25 = objc_msgSend_zoneID(v21, v23, v24);
        *buf = 138412290;
        v31 = v25;
        _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Fetched zone PCS for zone %@ and it has a share PCS on it. Setting signing PCS for our record to be the per-participant PCS", buf, 0xCu);
      }

      v11 = objc_msgSend_sharePCSData(v3, v9, v10);
      objc_msgSend_myParticipantPCS(v11, v12, v13);
      *(*(*(a1 + 56) + 8) + 24) = PCSFPCopyObject();
    }

    else
    {
      dispatch_group_enter(*(a1 + 32));
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v14 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Record should be of a hierarchical share. Fetching its signing PCS by fetching its record PCS", buf, 2u);
      }

      v17 = objc_msgSend_pcsCache(WeakRetained, v15, v16);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_2251ED7F0;
      v26[3] = &unk_278549C40;
      v29 = *(a1 + 56);
      v27 = v18;
      v28 = *(a1 + 32);
      objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v17, v20, v27, v19, 16, v26);

      v11 = v27;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_2251ED7F0(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v5)
  {
    objc_msgSend_signingPCS(v5, v6, v7);
    *(*(*(a1 + 48) + 8) + 24) = PCSFPCopyObject();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Could not fetch record PCS for record %@. Record may not exist on server. Done with our attempt with fetch signing PCS", &v11, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2251ED918(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBC878];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v3 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v22 = 138412290;
      v23 = v20;
      _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Successfully fetched signing PCS (PPPCS) for record %@", &v22, 0xCu);
    }

    v4 = objc_opt_new();
    objc_msgSend_setRecordPCSData_(*(a1 + 40), v5, v4);

    v6 = *(*(*(a1 + 56) + 8) + 24);
    v9 = objc_msgSend_recordPCSData(*(a1 + 40), v7, v8);
    objc_msgSend_setSigningPCS_(v9, v10, v6);

    v12 = *(*(*(a1 + 56) + 8) + 24);
    if (v12)
    {
      CFRelease(v12);
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      v22 = 138412290;
      v23 = v21;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Could not fetch the signing PCS for record %@", &v22, 0xCu);
    }
  }

  objc_msgSend_setState_(*(a1 + 40), v11, 5);
  v16 = objc_msgSend_pcsGroup(*(a1 + 40), v14, v15);
  dispatch_group_leave(v16);

  v19 = objc_msgSend_stateTransitionGroup(*(a1 + 48), v17, v18);
  dispatch_group_leave(v19);
}

void sub_2251EED6C(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (v5)
  {
    objc_msgSend__addShareToPCSData_withError_(WeakRetained, v8, v5, v6);
    goto LABEL_21;
  }

  v11 = objc_msgSend_domain(v6, v8, v9);
  v12 = *MEMORY[0x277CBC120];
  if (objc_msgSend_isEqualToString_(v11, v13, *MEMORY[0x277CBC120]) && objc_msgSend_code(v6, v14, v15) == 5010)
  {
    v16 = *(a1 + 48);

    if ((v16 & 2) != 0)
    {
      v19 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFDLL;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v22 = *(a1 + 32);
        v23 = v20;
        v26 = objc_msgSend_recordID(v22, v24, v25);
        v54 = 138412546;
        v55 = v26;
        v56 = 2048;
        v57 = v19;
        _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Got an error fetching PCS data locally for record %@. Attempting another network-based fetch with options %lx", &v54, 0x16u);
      }

      objc_msgSend__reallyFetchPCSDataWithOptions_(v10, v21, v19);
      goto LABEL_21;
    }
  }

  else
  {
  }

  if (!v6 || (objc_msgSend_CKIsObjectNotFoundError(v6, v17, v18) & 1) != 0)
  {
    goto LABEL_14;
  }

  v42 = objc_msgSend_domain(v6, v27, v28);
  if (objc_msgSend_isEqualToString_(v42, v43, v12) && objc_msgSend_code(v6, v44, v45) == 5007)
  {
    v46 = *(a1 + 48);

    if ((v46 & 2) != 0)
    {
LABEL_14:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v31 = *(a1 + 32);
        v32 = v29;
        v35 = objc_msgSend_recordID(v31, v33, v34);
        found = objc_msgSend_CKIsNotFoundError(v6, v36, v37);
        v39 = @"no PCS data and no error";
        if (found)
        {
          v39 = @"record does not exist";
        }

        v54 = 138412546;
        v55 = v35;
        v56 = 2114;
        v57 = v39;
        _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Didn't get PCS data for record %@: %{public}@. Fetching the zone PCS and creating new PCS data", &v54, 0x16u);
      }

      objc_msgSend_setRequiresRecordSaveForMergeableDeltas_(*(a1 + 32), v30, 1);
      objc_msgSend__createAndSavePCS(v10, v40, v41);
      goto LABEL_21;
    }
  }

  else
  {
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v47 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v49 = *(a1 + 32);
    v50 = v47;
    v53 = objc_msgSend_recordID(v49, v51, v52);
    v54 = 138412546;
    v55 = v53;
    v56 = 2112;
    v57 = v6;
    _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Got an error fetching PCS data for record %@: %@", &v54, 0x16u);
  }

  objc_msgSend__addShareToPCSData_withError_(v10, v48, 0, v6);
LABEL_21:
}

void sub_2251EF4F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordPCSData(*(a1 + 32), a2, a3);

  v5 = *MEMORY[0x277CBC878];
  if (v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v21 = v6;
      v24 = objc_msgSend_recordPCSData(v20, v22, v23);
      *buf = 138412290;
      v32 = v24;
      _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Using parent PCS data from our current batch %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 40);
      v25 = *(a1 + 48);
      v27 = v10;
      v30 = objc_msgSend_recordID(v25, v28, v29);
      *buf = 138412546;
      v32 = v26;
      v33 = 2112;
      v34 = v30;
      _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Parent record %@ in the same batch didn't have chain PCS data on it for record %@", buf, 0x16u);
    }

    v13 = MEMORY[0x277CBC560];
    v14 = *MEMORY[0x277CBC120];
    v15 = *(a1 + 40);
    v16 = objc_msgSend_recordID(*(a1 + 48), v11, v12);
    v9 = objc_msgSend_errorWithDomain_code_format_(v13, v17, v14, 5001, @"Parent record %@ in the same batch didn't have chain PCS data on it for record %@", v15, v16);
  }

  v18 = *(a1 + 56);
  v19 = objc_msgSend_recordPCSData(*(a1 + 32), v7, v8);
  (*(v18 + 16))(v18, v19, v9);
}

void sub_2251EF9F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharePCSData(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_pcs(v4, v5, v6);

  if (v7)
  {
    v17 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CBC560];
    v11 = *MEMORY[0x277CBC120];
    v12 = *(a1 + 40);
    v13 = objc_msgSend_recordID(*(a1 + 48), v8, v9);
    v17 = objc_msgSend_errorWithDomain_code_format_(v10, v14, v11, 5001, @"Couldn't get PCS data for share %@ to add to record %@", v12, v13);
  }

  v15 = *(a1 + 56);
  v16 = objc_msgSend_sharePCSData(*(a1 + 32), v8, v9);
  (*(v15 + 16))(v15, v16, v17);
}

void sub_2251EFAE0(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!objc_msgSend_pcs(v5, v7, v8))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Warn: Failed to fetch share with ID %@. Not adding it to the record PCS: %@", buf, 0x16u);
    }

    if (v6)
    {
      if (objc_msgSend_CKIsNotFoundError(v6, v10, v11))
      {
        v15 = MEMORY[0x277CBC560];
        v16 = *MEMORY[0x277CBC120];
        v17 = *(a1 + 32);
        v18 = objc_msgSend_recordID(*(a1 + 40), v13, v14);
        v20 = objc_msgSend_errorWithDomain_code_format_(v15, v19, v16, 2025, @"Share record %@ referenced by record %@ does not exist on the server", v17, v18);

        v6 = v20;
      }
    }

    else
    {
      v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5001, @"Didn't get PCS data for share %@", *(a1 + 32));
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_2251F0798(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 184));
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2251F07F0(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!objc_msgSend_pcs(v5, v7, v8))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v29 = *(a1 + 40);
      *buf = 138412546;
      v44 = v29;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Warn: Failed to fetch share with ID %@. Not adding it to the record PCS: %@", buf, 0x16u);
    }

    if (v6)
    {
      if (!objc_msgSend_CKIsNotFoundError(v6, v27, v28))
      {
LABEL_18:
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
        v22 = v6;
        goto LABEL_19;
      }

      v32 = MEMORY[0x277CBC560];
      v33 = *MEMORY[0x277CBC120];
      v34 = *(a1 + 40);
      v35 = objc_msgSend_recordID(*(a1 + 48), v30, v31);
      v37 = objc_msgSend_errorWithDomain_code_format_(v32, v36, v33, 2025, @"Share record %@ referenced by record %@ does not exist on the server", v34, v35);

      v6 = v37;
    }

    else
    {
      v38 = MEMORY[0x277CBC560];
      v39 = *MEMORY[0x277CBC120];
      v40 = *(a1 + 40);
      v35 = objc_msgSend_recordID(*(a1 + 48), v27, v28);
      v6 = objc_msgSend_errorWithDomain_code_format_(v38, v41, v39, 5001, @"Didn't get PCS data for share %@ to add to record %@", v40, v35);
    }

    goto LABEL_18;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v12 = objc_msgSend_pcsManager(WeakRetained, v10, v11);
  v15 = objc_msgSend_pcs(v5, v13, v14);
  v18 = objc_msgSend_pcs(*(a1 + 32), v16, v17);
  v42 = v6;
  v20 = objc_msgSend_addSharePCS_toRecordPCS_error_(v12, v19, v15, v18, &v42);
  v21 = v42;
  v22 = v42;

  if ((v20 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      *buf = 138412802;
      v44 = v5;
      v45 = 2112;
      v46 = v25;
      v47 = 2112;
      v48 = v22;
      _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Warn: Error adding share PCS %@ to record PCS %@: %@", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
  }

  objc_msgSend_setSharePCSData_(*(a1 + 32), v23, v5);
LABEL_19:
  dispatch_group_leave(*(a1 + 56));
}

void sub_2251F0B04(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (objc_msgSend_pcs(v5, v8, v9))
  {
    v12 = objc_msgSend_pcsManager(WeakRetained, v10, v11);
    v15 = objc_msgSend_pcs(v5, v13, v14);
    v18 = objc_msgSend_pcs(*(a1 + 32), v16, v17);
    v54 = v6;
    v20 = objc_msgSend_removeSharePCS_fromRecordPCS_error_(v12, v19, v15, v18, &v54);
    v21 = v54;
    v22 = v54;

    if (v20)
    {
      if ((objc_msgSend_didRollRecordPCSMasterKey(WeakRetained, v23, v24) & 1) == 0)
      {
        v27 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v25, v26);
        v30 = objc_msgSend_rollRecordMasterKeysOnUnshare(v27, v28, v29);

        if (v30)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v31 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v49 = *(a1 + 40);
            v50 = v31;
            v53 = objc_msgSend_recordID(v49, v51, v52);
            *buf = 138412290;
            v56 = v53;
            _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Rolling record PCS master key since we removed a share for record %@", buf, 0xCu);
          }

          v34 = objc_msgSend_pcsManager(WeakRetained, v32, v33);
          v37 = objc_msgSend_pcs(*(a1 + 32), v35, v36);
          v40 = objc_msgSend_operation(WeakRetained, v38, v39);
          v42 = objc_msgSend_rollMasterKeyForRecordPCS_forOperation_(v34, v41, v37, v40);
          v43 = *(*(a1 + 64) + 8);
          v44 = *(v43 + 40);
          *(v43 + 40) = v42;

          if (!*(*(*(a1 + 64) + 8) + 40))
          {
            objc_msgSend_setDidRollRecordPCSMasterKey_(WeakRetained, v25, 1);
          }
        }
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v47 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v48 = *(a1 + 32);
        *buf = 138412802;
        v56 = v5;
        v57 = 2112;
        v58 = v48;
        v59 = 2112;
        v60 = v22;
        _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Warn: Error remvoing share PCS %@ from record PCS %@: %@", buf, 0x20u);
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v45 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v46 = *(a1 + 48);
      *buf = 138412546;
      v56 = v46;
      v57 = 2112;
      v58 = v6;
      _os_log_impl(&dword_22506F000, v45, OS_LOG_TYPE_INFO, "Warn: Failed to fetch share with ID %@. Not removing it from the record PCS: %@", buf, 0x16u);
    }

    v22 = v6;
  }

  objc_msgSend_setSharePCSData_(*(a1 + 32), v25, v5);
  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_2251F0EAC(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBC878];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v3 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v5 = *(*(*(a1 + 48) + 8) + 40);
      v13 = 138412290;
      v14 = v5;
      _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Error fetching share PCS and adding it to the record PCS: %@", &v13, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v12 = objc_msgSend_recordID(v8, v10, v11);
      v13 = 138412290;
      v14 = v12;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "All shares have been fetched and the record PCS is updated for %@", &v13, 0xCu);
    }
  }

  return objc_msgSend__fetchParentPCSForData_withError_(*(a1 + 32), v4, *(a1 + 40), *(*(*(a1 + 48) + 8) + 40));
}

void sub_2251F19A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordPCSData(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *MEMORY[0x277CBC878];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v9 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v35 = v9;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Using PCS data for parent from our current batch: %@", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 40);
      v30 = v10;
      v33 = objc_msgSend_recordID(v29, v31, v32);
      *buf = 138412290;
      v35 = v33;
      _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Parent exists in the same batch but it doesn't have any chain PCS data, so we can't save %@", buf, 0xCu);
    }

    v13 = MEMORY[0x277CBC560];
    v14 = *MEMORY[0x277CBC120];
    v15 = objc_msgSend_record(*(a1 + 40), v11, v12);
    v18 = objc_msgSend_parent(v15, v16, v17);
    v21 = objc_msgSend_recordID(v18, v19, v20);
    v24 = objc_msgSend_recordID(*(a1 + 40), v22, v23);
    v26 = objc_msgSend_errorWithDomain_code_format_(v13, v25, v14, 5001, @"Parent record %@ in the same batch didn't have chain PCS data on it for record %@", v21, v24);
    v27 = *(*(a1 + 64) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_2251F1BF4(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CBC878];
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 32);
      v16 = v8;
      v19 = objc_msgSend_record(v15, v17, v18);
      v22 = objc_msgSend_parent(v19, v20, v21);
      v25 = objc_msgSend_recordID(v22, v23, v24);
      v28 = objc_msgSend_recordID(*(a1 + 32), v26, v27);
      v43 = 138412802;
      v44 = v25;
      v45 = 2112;
      v46 = v28;
      v47 = 2112;
      v48 = v5;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Fetched parent PCS data with record ID %@ for record %@: %@", &v43, 0x20u);
    }

    v9 = 48;
    v10 = v5;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 32);
      v30 = v11;
      v33 = objc_msgSend_record(v29, v31, v32);
      v36 = objc_msgSend_parent(v33, v34, v35);
      v39 = objc_msgSend_recordID(v36, v37, v38);
      v42 = objc_msgSend_recordID(*(a1 + 32), v40, v41);
      v43 = 138412546;
      v44 = v39;
      v45 = 2112;
      v46 = v42;
      _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Couldn't get PCS data for parent %@ of record %@", &v43, 0x16u);
    }

    v9 = 56;
    v10 = v6;
  }

  v12 = *(*(a1 + v9) + 8);
  v13 = v10;
  v14 = *(v12 + 40);
  *(v12 + 40) = v13;

  dispatch_group_leave(*(a1 + 40));
}

void sub_2251F1E70(uint64_t a1, const char *a2)
{
  v3 = *(*(*(a1 + 56) + 8) + 40);
  if (v3)
  {
    v4 = objc_msgSend__addParentPCS_toRecordPCS_(*(a1 + 32), a2, v3, *(a1 + 40));
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    objc_msgSend_setParentPCSData_(*(a1 + 40), v7, *(*(*(a1 + 56) + 8) + 40));
    goto LABEL_8;
  }

  v8 = *(*(*(a1 + 64) + 8) + 40);
  if (v8)
  {
    if (!objc_msgSend_CKIsNotFoundError(v8, a2, 0))
    {
      goto LABEL_8;
    }

    v11 = MEMORY[0x277CBC560];
    v12 = *MEMORY[0x277CBC120];
    v13 = objc_msgSend_record(*(a1 + 32), v9, v10);
    v16 = objc_msgSend_parent(v13, v14, v15);
    v19 = objc_msgSend_recordID(v16, v17, v18);
    objc_msgSend_errorWithDomain_code_format_(v11, v20, v12, 2025, @"Parent record %@ does not exist on the server", v19);
  }

  else
  {
    v21 = MEMORY[0x277CBC560];
    v22 = *MEMORY[0x277CBC120];
    v13 = objc_msgSend_record(*(a1 + 32), a2, 0);
    v16 = objc_msgSend_parent(v13, v23, v24);
    v19 = objc_msgSend_recordID(v16, v25, v26);
    objc_msgSend_errorWithDomain_code_format_(v21, v27, v22, 5001, @"Couldn't fetch parent PCS data for parent record %@", v19);
  }
  v28 = ;
  v29 = *(*(a1 + 64) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

LABEL_8:
  v31 = *(a1 + 48);

  dispatch_group_leave(v31);
}

uint64_t sub_2251F1FF0(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBC878];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v3 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v5 = *(*(*(a1 + 48) + 8) + 40);
      v13 = 138412290;
      v14 = v5;
      _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Error fetching parent PCS and adding it to the record PCS: %@", &v13, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v2);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v12 = objc_msgSend_recordID(v8, v10, v11);
      v13 = 138412290;
      v14 = v12;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "All parent records have been fetched and the record PCS is updated for %@", &v13, 0xCu);
    }
  }

  return objc_msgSend__handlePCSData_withError_(*(a1 + 32), v4, *(a1 + 40), *(*(*(a1 + 48) + 8) + 40));
}

void sub_2251F2D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 240), 8);
  _Block_object_dispose((v36 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_2251F2D74(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v9 = a3;
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = v10;
      v15 = objc_msgSend_recordID(v11, v13, v14);
      v18 = objc_msgSend_zoneID(v15, v16, v17);
      v28 = 138412546;
      v29 = v18;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS for zone %@: %@", &v28, 0x16u);
    }

    v19 = *(*(a1 + 64) + 8);
    v21 = *(v19 + 40);
    v20 = (v19 + 40);
    if (!v21)
    {
      v22 = a3;
LABEL_10:
      objc_storeStrong(v20, v22);
    }
  }

  else if (objc_msgSend_pcs(v6, v7, v8) || objc_msgSend_databaseScope(*(a1 + 32), v23, v24) == 3 && (objc_msgSend_pcsData(v6, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
  {
    v20 = (*(*(a1 + 56) + 8) + 40);
    v22 = a2;
    goto LABEL_10;
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_2251F2F30(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 && !v7)
  {
    v9 = (*(*(a1 + 48) + 8) + 40);
    v10 = a2;
LABEL_10:
    objc_storeStrong(v9, v10);
    goto LABEL_11;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v15 = 138412546;
    v16 = v12;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS for share %@: %@", &v15, 0x16u);
  }

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  v9 = (v13 + 40);
  if (!v14)
  {
    v10 = a3;
    goto LABEL_10;
  }

LABEL_11:
  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_2251F3080(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC830];
  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    v20 = v4;
    v23 = objc_msgSend_recordID(v19, v21, v22);
    v24 = 138412290;
    v25 = v23;
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "All PCS data fetched. Creating PCS for record %@", &v24, 0xCu);
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    return objc_msgSend__continueCreateAndSavePCSWithZonePCS_sharePCS_(*(a1 + 40), v5, *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40));
  }

  if (*v2 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *v3;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_recordID(*(a1 + 32), v7, v8);
    v12 = objc_msgSend_zoneID(v9, v10, v11);
    v13 = v12;
    v14 = &stru_28385ED00;
    v15 = @" and share ";
    if (*(a1 + 72))
    {
      v14 = *(*(*(a1 + 64) + 8) + 40);
    }

    else
    {
      v15 = &stru_28385ED00;
    }

    v16 = *(*(*(a1 + 48) + 8) + 40);
    v24 = 138413058;
    v25 = v12;
    v26 = 2114;
    v27 = v15;
    v28 = 2114;
    v29 = v14;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Warn: Couldn't get PCS data for zone %@%{public}@%{public}@. Error was %@", &v24, 0x2Au);
  }

  return objc_msgSend__addShareToPCSData_withError_(*(a1 + 40), v17, 0, *(*(*(a1 + 48) + 8) + 40));
}

void sub_2251F3D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251F3D40(uint64_t a1, void *a2, void *a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (v5 && !v6)
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v11 = objc_msgSend_operation(WeakRetained, v8, v9);
      v14 = objc_msgSend_deviceContext(v11, v12, v13);
      v17 = objc_msgSend_testDeviceReference(v14, v15, v16);
      if (v17)
      {
        v20 = v17;
        v21 = objc_msgSend_protectionData(*(a1 + 32), v18, v19);
        v23 = objc_msgSend_dataUsingEncoding_(@"_NEW_PROTECTION_DATA_PLOX", v22, 4);
        isEqualToData = objc_msgSend_isEqualToData_(v21, v24, v23);

        if (isEqualToData)
        {
          objc_msgSend__createAndSavePCS(v10, v8, v9);
          v26 = 0;
          v6 = 0;
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
      }
    }

    v45 = objc_msgSend_pcsManager(v10, v8, v9);
    v48 = objc_msgSend_protectionData(*(a1 + 32), v46, v47);
    v51 = objc_msgSend_pcs(v5, v49, v50);
    v81 = 0;
    v53 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v45, v52, v48, 1, v51, &v81);
    v6 = v81;

    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v56 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v83 = v6;
        _os_log_impl(&dword_22506F000, v56, OS_LOG_TYPE_INFO, "Warn: Couldn't deserialize record PCS provided by the client: %@", buf, 0xCu);
      }
    }

    if (v53)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v57 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v59 = *(a1 + 32);
        v60 = v57;
        v63 = objc_msgSend_recordID(v59, v61, v62);
        *buf = 138412290;
        v83 = v63;
        _os_log_impl(&dword_22506F000, v60, OS_LOG_TYPE_INFO, "Successfully deserialized client PCS data for record %@", buf, 0xCu);
      }

      v26 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v58, *(a1 + 32));
      objc_msgSend_setPcs_(v26, v64, v53);
      objc_msgSend_setZonePCSData_(v26, v65, v5);
      if (objc_msgSend__canSetPreviousProtectionEtag(v10, v66, v67))
      {
        v70 = objc_msgSend_previousProtectionEtag(*(a1 + 32), v68, v69);
        objc_msgSend_setEtag_(v26, v71, v70);
      }

      else
      {
        objc_msgSend_setEtag_(v26, v68, 0);
      }

      v74 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v72, v73);

      if (v74)
      {
        v77 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v75, v76);
        objc_msgSend_setEtag_(v26, v78, v77);
      }

      objc_msgSend_etag(v26, v75, v76);
    }

    else
    {
      v26 = 0;
      objc_msgSend_etag(0, v54, v55);
    }
    v79 = ;

    if (v53 && v79)
    {
      objc_msgSend__addShareToPCSData_withError_(v10, v80, v26, 0);
    }

    else
    {
      objc_msgSend__fetchExistingPCSForProvidedPCSData_(v10, v80, v26);
      if (!v53)
      {
        goto LABEL_37;
      }
    }

    CFRelease(v53);
    goto LABEL_37;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v30 = *(a1 + 32);
    v31 = v27;
    v34 = objc_msgSend_recordID(v30, v32, v33);
    v37 = objc_msgSend_zoneID(v34, v35, v36);
    *buf = 138412546;
    v83 = v37;
    v84 = 2112;
    v85 = v6;
    _os_log_impl(&dword_22506F000, v31, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS for zone %@: %@", buf, 0x16u);
  }

  if (!v6)
  {
    v38 = MEMORY[0x277CBC560];
    v39 = *MEMORY[0x277CBC120];
    v40 = objc_msgSend_recordID(*(a1 + 32), v28, v29);
    v43 = objc_msgSend_zoneID(v40, v41, v42);
    v6 = objc_msgSend_errorWithDomain_code_format_(v38, v44, v39, 5001, @"Couldn't fetch PCS for zone %@", v43);
  }

  objc_msgSend__addShareToPCSData_withError_(v10, v28, 0, v6);
LABEL_38:
}

void sub_2251F4338(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251F4354(uint64_t a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (v5 && !v6)
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v11 = objc_msgSend_operation(WeakRetained, v8, v9);
      v14 = objc_msgSend_deviceContext(v11, v12, v13);
      v17 = objc_msgSend_testDeviceReference(v14, v15, v16);
      if (v17)
      {
        v20 = v17;
        v21 = objc_msgSend_protectionData(*(a1 + 32), v18, v19);
        v23 = objc_msgSend_dataUsingEncoding_(@"_NEW_PROTECTION_DATA_PLOX", v22, 4);
        isEqualToData = objc_msgSend_isEqualToData_(v21, v24, v23);

        if (isEqualToData)
        {
          objc_msgSend__createAndSavePCS(v10, v8, v9);
          v26 = 0;
          v6 = 0;
LABEL_37:

          goto LABEL_38;
        }
      }

      else
      {
      }
    }

    v30 = objc_msgSend_pcsManager(v10, v8, v9);
    v33 = objc_msgSend_protectionData(*(a1 + 32), v31, v32);
    v36 = objc_msgSend_pcs(v5, v34, v35);
    v66 = 0;
    v38 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v30, v37, v33, 1, v36, &v66);
    v6 = v66;

    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v41 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v68 = v6;
        _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_INFO, "Warn: Couldn't deserialize record PCS provided by the client: %@", buf, 0xCu);
      }
    }

    if (v38)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v42 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v44 = *(a1 + 32);
        v45 = v42;
        v48 = objc_msgSend_recordID(v44, v46, v47);
        *buf = 138412290;
        v68 = v48;
        _os_log_impl(&dword_22506F000, v45, OS_LOG_TYPE_INFO, "Successfully deserialized client PCS data for record %@", buf, 0xCu);
      }

      v26 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v43, *(a1 + 32));
      objc_msgSend_setPcs_(v26, v49, v38);
      objc_msgSend_setSharePCSData_(v26, v50, v5);
      if (objc_msgSend__canSetPreviousProtectionEtag(v10, v51, v52))
      {
        v55 = objc_msgSend_previousProtectionEtag(*(a1 + 32), v53, v54);
        objc_msgSend_setEtag_(v26, v56, v55);
      }

      else
      {
        objc_msgSend_setEtag_(v26, v53, 0);
      }

      v59 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v57, v58);

      if (v59)
      {
        v62 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v60, v61);
        objc_msgSend_setEtag_(v26, v63, v62);
      }

      objc_msgSend_etag(v26, v60, v61);
    }

    else
    {
      v26 = 0;
      objc_msgSend_etag(0, v39, v40);
    }
    v64 = ;

    if (v38 && v64)
    {
      objc_msgSend__addShareToPCSData_withError_(v10, v65, v26, 0);
    }

    else
    {
      objc_msgSend__fetchExistingPCSForProvidedPCSData_(v10, v65, v26);
      if (!v38)
      {
        goto LABEL_37;
      }
    }

    CFRelease(v38);
    goto LABEL_37;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v29 = *(a1 + 40);
    *buf = 138412546;
    v68 = v29;
    v69 = 2112;
    v70 = v6;
    _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS for share %@: %@", buf, 0x16u);
  }

  if (!v6)
  {
    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v28, *MEMORY[0x277CBC120], 5001, @"Couldn't fetch PCS for share %@", *(a1 + 40));
  }

  objc_msgSend__addShareToPCSData_withError_(v10, v28, 0, v6);
LABEL_38:
}

void sub_2251F4908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251F492C(uint64_t a1, void *a2, void *a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v6)
  {
    v13 = objc_msgSend_chainPCSData(v5, v7, v8);

    if (v13)
    {
      if (*MEMORY[0x277CBC810] == 1)
      {
        v16 = objc_msgSend_operation(WeakRetained, v14, v15);
        v19 = objc_msgSend_deviceContext(v16, v17, v18);
        v22 = objc_msgSend_testDeviceReference(v19, v20, v21);
        if (v22)
        {
          v25 = v22;
          v26 = objc_msgSend_protectionData(*(a1 + 32), v23, v24);
          v28 = objc_msgSend_dataUsingEncoding_(@"_NEW_PROTECTION_DATA_PLOX", v27, 4);
          isEqualToData = objc_msgSend_isEqualToData_(v26, v29, v28);

          if (isEqualToData)
          {
            objc_msgSend__createAndSavePCS(WeakRetained, v14, v15);
            v31 = 0;
            v6 = 0;
LABEL_37:

            goto LABEL_38;
          }
        }

        else
        {
        }
      }

      v32 = objc_msgSend_pcsManager(WeakRetained, v14, v15);
      v35 = objc_msgSend_protectionData(*(a1 + 32), v33, v34);
      v38 = objc_msgSend_chainPCSData(v5, v36, v37);
      v41 = objc_msgSend_pcs(v38, v39, v40);
      v71 = 0;
      v43 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v32, v42, v35, 1, v41, &v71);
      v6 = v71;

      if (v6)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v46 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v73 = v6;
          _os_log_impl(&dword_22506F000, v46, OS_LOG_TYPE_INFO, "Warn: Couldn't deserialize record PCS provided by the client: %@", buf, 0xCu);
        }
      }

      if (v43)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v47 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v49 = *(a1 + 32);
          v50 = v47;
          v53 = objc_msgSend_recordID(v49, v51, v52);
          *buf = 138412290;
          v73 = v53;
          _os_log_impl(&dword_22506F000, v50, OS_LOG_TYPE_INFO, "Successfully deserialized client PCS data for record %@", buf, 0xCu);
        }

        v31 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v48, *(a1 + 32));
        objc_msgSend_setPcs_(v31, v54, v43);
        objc_msgSend_setParentPCSData_(v31, v55, v5);
        if (objc_msgSend__canSetPreviousProtectionEtag(WeakRetained, v56, v57))
        {
          v60 = objc_msgSend_previousProtectionEtag(*(a1 + 32), v58, v59);
          objc_msgSend_setEtag_(v31, v61, v60);
        }

        else
        {
          objc_msgSend_setEtag_(v31, v58, 0);
        }

        v64 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v62, v63);

        if (v64)
        {
          v67 = objc_msgSend_previousProtectionEtagFromUnitTest(*(a1 + 32), v65, v66);
          objc_msgSend_setEtag_(v31, v68, v67);
        }

        objc_msgSend_etag(v31, v65, v66);
      }

      else
      {
        v31 = 0;
        objc_msgSend_etag(0, v44, v45);
      }
      v69 = ;

      if (v43 && v69)
      {
        objc_msgSend__addShareToPCSData_withError_(WeakRetained, v70, v31, 0);
      }

      else
      {
        objc_msgSend__fetchExistingPCSForProvidedPCSData_(WeakRetained, v70, v31);
        if (!v43)
        {
          goto LABEL_37;
        }
      }

      CFRelease(v43);
      goto LABEL_37;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    *buf = 138412546;
    v73 = v12;
    v74 = 2112;
    v75 = v6;
    _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS for parent %@: %@", buf, 0x16u);
  }

  if (!v6)
  {
    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5001, @"Couldn't fetch PCS for parent %@", *(a1 + 40));
  }

  objc_msgSend__addShareToPCSData_withError_(WeakRetained, v11, 0, v6);
LABEL_38:
}

void sub_2251F4F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251F4F60(id *a1, void *a2, void *a3)
{
  v113 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v12 = objc_msgSend_operation(WeakRetained, v8, v9);
  if (v5)
  {
    v13 = objc_msgSend_pcs(v5, v10, v11);
    v15 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v14, v13);
    v18 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v15, v16, v17);

    v21 = objc_msgSend_pcs(a1[4], v19, v20);
    v23 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v22, v21);
    v26 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v23, v24, v25);

    if (*MEMORY[0x277CBC810] == 1)
    {
      v106 = v26;
      v29 = WeakRetained;
      v30 = v5;
      v31 = v18;
      v32 = v6;
      v33 = v12;
      v34 = objc_msgSend_container(v12, v27, v28);
      v37 = objc_msgSend_deviceContext(v34, v35, v36);
      v41 = objc_msgSend_testDeviceReference(v37, v38, v39);
      if (v41)
      {
        v42 = objc_msgSend_objectForKeyedSubscript_(a1[5], v40, @"UNIT_TESTING_FAIL_PCS_ETAG_CHECK");
        v43 = v42 != 0;
      }

      else
      {
        v43 = 0;
      }

      v12 = v33;
      v6 = v32;
      v18 = v31;
      v5 = v30;
      WeakRetained = v29;
      v26 = v106;
    }

    else
    {
      v43 = 0;
    }

    if (!objc_msgSend_isEqualToString_(v26, v27, v18) || v43)
    {
      if (!objc_msgSend_retryPCSFailures(v12, v50, v51))
      {
        v68 = MEMORY[0x277CBC560];
        v69 = v6;
        v70 = v12;
        v71 = *MEMORY[0x277CBC120];
        v72 = objc_msgSend_recordID(a1[5], v58, v59);
        v73 = v71;
        v12 = v70;
        v6 = v69;
        v48 = objc_msgSend_errorWithDomain_code_format_(v68, v74, v73, 5004, @"Attempted PCS data (%@) had a different identifier than the server PCS data (%@) for record %@", v26, v18, v72);

        v47 = 0;
        goto LABEL_32;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v60 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v63 = a1[5];
        v64 = v60;
        v67 = objc_msgSend_recordID(v63, v65, v66);
        *buf = 138543874;
        v108 = v26;
        v109 = 2114;
        v110 = v18;
        v111 = 2112;
        v112 = v67;
        _os_log_impl(&dword_22506F000, v64, OS_LOG_TYPE_INFO, "Attempted PCS data (%{public}@) had a different identifier than the server PCS data (%{public}@) for record %@. Using the server's PCS data", buf, 0x20u);
      }

      objc_msgSend__clearRecordProtectionDataForRecord(WeakRetained, v61, v62);
      v57 = v5;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v52 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v86 = v6;
        v87 = v12;
        v88 = a1[5];
        v89 = v52;
        v92 = objc_msgSend_recordID(v88, v90, v91);
        v95 = objc_msgSend_etag(v5, v93, v94);
        *buf = 138412802;
        v108 = v92;
        v109 = 2114;
        v110 = v26;
        v111 = 2114;
        v112 = v95;
        _os_log_debug_impl(&dword_22506F000, v89, OS_LOG_TYPE_DEBUG, "PCS identifiers for record %@ match (%{public}@), so we'll use %{public}@ as our previous protection etag", buf, 0x20u);

        v12 = v87;
        v6 = v86;
      }

      v55 = objc_msgSend_etag(v5, v53, v54);
      objc_msgSend_setEtag_(a1[4], v56, v55);

      v57 = a1[4];
    }

    v47 = v57;
    v48 = 0;
LABEL_32:

    objc_msgSend__addShareToPCSData_withError_(WeakRetained, v75, v47, v48);
LABEL_33:

    goto LABEL_34;
  }

  if (v6 && !objc_msgSend_CKIsObjectNotFoundError(v6, v10, v11))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v76 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v77 = a1[5];
      v78 = v76;
      v81 = objc_msgSend_recordID(v77, v79, v80);
      *buf = 138412546;
      v108 = v81;
      v109 = 2112;
      v110 = v6;
      _os_log_impl(&dword_22506F000, v78, OS_LOG_TYPE_INFO, "Couldn't fetch PCS data to verify client provided protection data for record %@: %@", buf, 0x16u);
    }

    v48 = v6;
    v47 = 0;
    objc_msgSend__addShareToPCSData_withError_(WeakRetained, v82, 0, v48);
    goto LABEL_33;
  }

  if (!objc_msgSend_CKIsObjectNotFoundError(v6, v10, v11) || objc_msgSend_pcs(a1[4], v44, v45))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v96 = a1[5];
      v97 = v46;
      v100 = objc_msgSend_recordID(v96, v98, v99);
      *buf = 138412290;
      v108 = v100;
      _os_log_debug_impl(&dword_22506F000, v97, OS_LOG_TYPE_DEBUG, "PCS data for record %@ wasn't fetched from the server. Using the client-provided PCS data", buf, 0xCu);
    }

    v47 = a1[4];
    v48 = 0;
    objc_msgSend__addShareToPCSData_withError_(WeakRetained, v49, v47, 0);
    goto LABEL_33;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v83 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v101 = a1[5];
    v102 = v83;
    v105 = objc_msgSend_recordID(v101, v103, v104);
    *buf = 138412290;
    v108 = v105;
    _os_log_debug_impl(&dword_22506F000, v102, OS_LOG_TYPE_DEBUG, "We couldn't deserialize the client-provided PCS and PCS data for record %@ wasn't fetched from the server because the record doesn't exist on the server. Creating new record PCS", buf, 0xCu);
  }

  objc_msgSend__createAndSavePCS(WeakRetained, v84, v85);
LABEL_34:
}

void sub_2251F70C8(uint64_t a1, void *a2)
{
  v7 = a2;
  v5 = objc_msgSend_recordKeysRemoved(v7, v3, v4);
  objc_msgSend_setRecordKeysRemoved_(v7, v6, *(a1 + 32) + v5);
}

void sub_2251F8520(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Unwind_Resume(a1);
}

BOOL sub_2251F85E4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v54 = 0;
  v12 = objc_msgSend__prepareAsset_recordKey_mergeableDeltaID_record_error_(v9, v11, v7, v8, a4, v10, &v54);
  v13 = v54;
  v14 = *MEMORY[0x277CBC878];
  if (v13)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v14);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 40);
      v34 = v15;
      v37 = objc_msgSend_recordID(v33, v35, v36);
      *buf = 138412802;
      v56 = v37;
      v57 = 2114;
      v58 = v8;
      v59 = 2112;
      v60 = v13;
      _os_log_error_impl(&dword_22506F000, v34, OS_LOG_TYPE_ERROR, "Failing save of record %@ due to error preparing asset for upload for key %{public}@: %@", buf, 0x20u);
    }

    objc_msgSend_setState_(*(a1 + 32), v16, 12);
    v17 = MEMORY[0x277CBC560];
    v18 = *MEMORY[0x277CBC120];
    v21 = objc_msgSend_recordID(*(a1 + 40), v19, v20);
    v23 = objc_msgSend_errorWithDomain_code_error_format_(v17, v22, v18, 1021, v13, @"Error preparing asset for upload for key %@ on record %@: %@", v8, v21, v13);
    objc_msgSend_setError_(*(a1 + 32), v24, v23);

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else if (v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v14);
    }

    v25 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 40);
      v39 = v25;
      v42 = objc_msgSend_recordID(v38, v40, v41);
      v45 = objc_msgSend_operationID(*(a1 + 48), v43, v44);
      *buf = 138413058;
      v56 = v7;
      v57 = 2114;
      v58 = v8;
      v59 = 2112;
      v60 = v42;
      v61 = 2114;
      v62 = v45;
      _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Uploading asset %@ for key %{public}@ on record %@ and operation %{public}@", buf, 0x2Au);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v28 = objc_msgSend_batchRank(*(a1 + 32), v26, v27);
    objc_msgSend_setUploadRank_(v7, v29, v28);
    objc_msgSend_addObject_(*(a1 + 56), v30, v7);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v14);
    }

    v31 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v46 = *(a1 + 40);
      v47 = v31;
      v50 = objc_msgSend_recordID(v46, v48, v49);
      v53 = objc_msgSend_operationID(*(a1 + 48), v51, v52);
      *buf = 138413058;
      v56 = v7;
      v57 = 2114;
      v58 = v8;
      v59 = 2112;
      v60 = v50;
      v61 = 2114;
      v62 = v53;
      _os_log_debug_impl(&dword_22506F000, v47, OS_LOG_TYPE_DEBUG, "Skipping asset %@ for key %{public}@ on record %@ and operation %{public}@", buf, 0x2Au);
    }
  }

  return v13 == 0;
}

void sub_2251FCB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251FCBE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_deltasToSave(v4, v5, v6);
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_count(v7, v8, v9);

  v14 = objc_msgSend_pendingReplacementRequests(v4, v10, v11);

  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_count(v14, v12, v13);
}

void sub_2251FDE78(uint64_t a1, void *a2)
{
  v27 = a2;
  if ((objc_msgSend_shouldOnlySaveAssetContent(*(a1 + 32), v3, v4) & 1) == 0)
  {
    v7 = objc_msgSend_recordsUploaded(v27, v5, v6);
    objc_msgSend_setRecordsUploaded_(v27, v8, v7 + 1);
  }

  v9 = objc_msgSend_record(*(a1 + 40), v5, v6);
  v12 = objc_msgSend_assetCount(v9, v10, v11);
  v15 = objc_msgSend_assetsUploaded(v27, v13, v14);
  objc_msgSend_setAssetsUploaded_(v27, v16, v15 + v12);

  v19 = objc_msgSend_record(*(a1 + 40), v17, v18);
  v22 = objc_msgSend_assetDiskSize(v19, v20, v21);
  v25 = objc_msgSend_assetsUploadedFileSize(v27, v23, v24);
  objc_msgSend_setAssetsUploadedFileSize_(v27, v26, v25 + v22);
}

void sub_2251FE068(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_recordsDeleted(v6, v2, v3);
  objc_msgSend_setRecordsDeleted_(v6, v5, v4 + 1);
}

void sub_2251FE3C0(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_retries(v6, v2, v3);
  objc_msgSend_setRetries_(v6, v5, v4 + 1);
}

void sub_2251FEB50(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_retries(v6, v2, v3);
  objc_msgSend_setRetries_(v6, v5, v4 + 1);
}

void sub_2251FEE8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251FEEB0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_msgSend_container(WeakRetained, v3, v4);
  objc_msgSend_setCachedEnvironment_(v5, v6, a2);

  v9 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
  dispatch_group_leave(v9);
}

void sub_2251FF2D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2251FF2FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setError_(WeakRetained, v4, v3);

  v7 = objc_msgSend_stateTransitionGroup(WeakRetained, v5, v6);
  dispatch_group_leave(v7);
}

void sub_2251FF3E0(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_sideEffectRecordIDs(v3, v4, v5);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v25, v29, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = objc_msgSend_handlersByRecordID(*(a1 + 32), v9, v10);
        v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v14);

        if (v17)
        {
          if (objc_msgSend_isDelete(v17, v18, v19))
          {
            objc_msgSend_noteSideEffectRecordPendingDelete_(v3, v20, v14);
          }

          else
          {
            v22 = objc_msgSend_record(v17, v20, v21);
            objc_msgSend_noteSideEffectRecordPendingModify_(v3, v23, v22);
          }
        }

        else
        {
          objc_msgSend_noteSideEffectRecordAbsent_(v3, v18, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v25, v29, 16);
    }

    while (v11);
  }

  if (objc_msgSend_isShare(v3, v9, v10))
  {
    objc_msgSend_setState_(v3, v24, 1);
  }

  else
  {
    objc_msgSend_setState_(v3, v24, 2);
  }
}

void sub_2251FFEE8(uint64_t a1, void *a2)
{
  v10 = a2;
  if (objc_msgSend_isDelete(v10, v3, v4))
  {
    objc_msgSend_setState_(v10, v5, 1);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = objc_msgSend_shareID(v10, v5, v6);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v9, v10, v8);
  }
}

void sub_2251FFF6C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2252000C8;
  v12[3] = &unk_278548AA8;
  v13 = *(a1 + 32);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v4, v12);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2252001FC;
  v8[3] = &unk_278546EE0;
  objc_copyWeak(&v11, &location);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  objc_msgSend_setCompletionBlock_(v3, v7, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_2252000A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2252000C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v10 = a4;
  if (v8)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v9, v8);
    objc_msgSend_updateParticipantsForFetchedShare_error_(v11, v12, v7, v10);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Warn: Got a fetched share callback without a recordID: %@", &v14, 0xCu);
    }
  }
}

void sub_2252001FC(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = objc_msgSend_allValues(a1[4], v6, v7, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v25, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if (objc_msgSend_state(v16, v11, v12) == 10)
          {
            if (objc_msgSend_CKIsObjectNotFoundError(v5, v11, v12))
            {
              objc_msgSend_setState_(v16, v17, 1);
              objc_msgSend_setError_(v16, v18, 0);
            }

            else
            {
              objc_msgSend_setState_(v16, v17, 12);
              objc_msgSend_setError_(v16, v19, v5);
            }
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v21, v25, 16);
      }

      while (v13);
    }
  }

  v20 = objc_msgSend_stateTransitionGroup(a1[5], v6, v7);
  dispatch_group_leave(v20);
}

void sub_22520057C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252005A8(uint64_t a1, char a2, void *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v7, v8);
    v10 = MEMORY[0x277CBC878];
    v11 = *MEMORY[0x277CBC878];
    v12 = MEMORY[0x277CBC880];
    v13 = *MEMORY[0x277CBC880];
    if (v5 || (a2 & 1) == 0)
    {
      if (v13 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v11);
      }

      v56 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v66 = *(a1 + 32);
        v67 = 138543618;
        v68 = v66;
        v69 = 2112;
        v70 = v5;
        _os_log_error_impl(&dword_22506F000, v56, OS_LOG_TYPE_ERROR, "User key sync failed for operation %{public}@: %@", &v67, 0x16u);
      }

      if (!objc_msgSend_isCloudCoreSessionNoLongerValidError(v5, v57, v58))
      {
        objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v59, &unk_28385D660);
      }

      objc_msgSend_setError_(v9, v59, v5);
    }

    else
    {
      if (v13 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v11);
      }

      v14 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        v67 = 138543362;
        v68 = v17;
        _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "User key sync completed successfully for operation %{public}@", &v67, 0xCu);
      }

      v18 = objc_msgSend_container(v9, v15, v16);
      v21 = v18;
      if (v18)
      {
        v22 = objc_msgSend_pcsManager(v18, v19, v20);
        v24 = objc_msgSend_currentIdentityPublicKeyIDForServiceType_error_(v22, v23, 0, 0);

        v27 = objc_msgSend_pcsManager(v21, v25, v26);
        v30 = objc_msgSend_identityManager(v27, v28, v29);
        v32 = objc_msgSend_PCSServiceStringFromCKServiceType_(v30, v31, 0);

        if (v24)
        {
          v35 = *v12 == -1;
          v36 = MEMORY[0x277CBC830];
          if (!v35)
          {
            dispatch_once(MEMORY[0x277CBC880], *v10);
          }

          v37 = *v36;
          if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
          {
            v67 = 138412546;
            v68 = v32;
            v69 = 2112;
            v70 = v24;
            _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "The service %@ has a new current identity with public key ID: %@", &v67, 0x16u);
          }

          objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v38, &unk_28385D680);
          v41 = objc_msgSend_pcsManager(v21, v39, v40);
          v44 = objc_msgSend_identityManager(v41, v42, v43);
          objc_msgSend_identitiesChanged(v44, v45, v46);

          v49 = objc_msgSend_pcsCache(v21, v47, v48);
          objc_msgSend_clearPCSMemoryCaches(v49, v50, v51);

          v54 = objc_msgSend_pcsManager(v21, v52, v53);
          objc_msgSend_setBoundaryKeyData_(v54, v55, 0);
        }

        else if (objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(*(a1 + 40), v33, v34))
        {
          if (*v12 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *v10);
          }

          v62 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v67 = 138412290;
            v68 = v32;
            _os_log_error_impl(&dword_22506F000, v62, OS_LOG_TYPE_ERROR, "User key sync did not populate the current identity for the service %@", &v67, 0xCu);
          }

          objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v63, &unk_28385D6A0);
          objc_msgSend_setError_(v9, v64, 0);
        }
      }
    }

    v65 = objc_msgSend_stateTransitionGroup(v9, v60, v61);
    dispatch_group_leave(v65);
  }
}

void sub_2252009A0(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_2252009E8(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_identitiesRolledOnRecordSave(v6, v2, v3);
  objc_msgSend_setIdentitiesRolledOnRecordSave_(v6, v5, v4 + 1);
}

void sub_225200A30(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_225200E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225200E88(uint64_t a1, void *a2)
{
  v34 = a2;
  if (objc_msgSend_isDelete(v34, v3, v4))
  {
    goto LABEL_8;
  }

  v7 = objc_msgSend_record(v34, v5, v6);
  if (objc_msgSend_hasUpdatedParent(v7, v8, v9))
  {
    v12 = objc_msgSend_record(v34, v10, v11);
    v15 = objc_msgSend_parent(v12, v13, v14);

    if (!v15)
    {
      goto LABEL_6;
    }

    v18 = *(*(*(a1 + 32) + 8) + 40);
    v7 = objc_msgSend_record(v34, v16, v17);
    v21 = objc_msgSend_parent(v7, v19, v20);
    v24 = objc_msgSend_recordID(v21, v22, v23);
    objc_msgSend_addObject_(v18, v25, v24);
  }

LABEL_6:
  v26 = objc_msgSend_record(v34, v16, v17);
  v29 = objc_msgSend_share(v26, v27, v28);

  if (v29)
  {
    v32 = objc_msgSend_record(v34, v30, v31);
    objc_msgSend_setWantsChainPCS_(v32, v33, 1);
  }

LABEL_8:
}

void sub_225201118(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_msgSend_isDelete(v3, v4, v5))
  {
    objc_msgSend_setState_(v3, v6, 5);
  }

  else if (objc_msgSend_useEncryption(*(a1 + 32), v6, v7))
  {
    v10 = objc_msgSend_pcsGroup(v3, v8, v9);
    dispatch_group_enter(v10);

    objc_msgSend_addObject_(*(a1 + 40), v11, v3);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v14 = v12;
      v17 = objc_msgSend_recordID(v3, v15, v16);
      v18 = 138412290;
      v19 = v17;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Skipping fetch of share PCS data for %@ because encryption is disabled", &v18, 0xCu);
    }

    objc_msgSend_setState_(v3, v13, 3);
  }
}

void sub_225201448(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_msgSend_isDelete(v3, v4, v5) && (objc_msgSend__needsSigningPCS(*(a1 + 32), v6, v7) & 1) == 0)
  {
    objc_msgSend_setState_(v3, v6, 5);
  }

  else if (objc_msgSend_useEncryption(*(a1 + 32), v6, v7))
  {
    v10 = objc_msgSend_pcsGroup(v3, v8, v9);
    dispatch_group_enter(v10);

    objc_msgSend_addObject_(*(a1 + 40), v11, v3);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v14 = v12;
      v17 = objc_msgSend_recordID(v3, v15, v16);
      v18 = 138412290;
      v19 = v17;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Skipping fetch of record PCS data for %@ because encryption is disabled", &v18, 0xCu);
    }

    objc_msgSend_setState_(v3, v13, 3);
  }
}

void sub_22520286C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (objc_msgSend_count(v5, v6, v7))
  {
    v9 = objc_msgSend_CKMap_(v5, v8, &unk_28385D6C0);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v10, v9, v11);
  }
}

id sub_2252028FC(uint64_t a1, void *a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"assetReference";
  v3 = objc_msgSend_assetReference(a2, a2, a3);
  v8[0] = v3;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v8, &v7, 1);

  return v5;
}

void sub_22520307C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252030D0(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  if (v7)
  {
    objc_msgSend_setObject_forKey_(*(*(*(a1 + 32) + 8) + 40), v6, v7, v5);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v12 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v5, v10, v11);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "cache clone context for asset with signature %@", &v14, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "received a nil clone context", &v14, 2u);
    }
  }
}

void sub_225203280(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  objc_msgSend_setDatabaseScope_(v3, v4, *(a1 + 48));
  if (objc_msgSend_useClearAssetEncryption(*(a1 + 32), v5, v6))
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1573, @"useClearAssetEncryption should be false!");
  }

  if (objc_msgSend_databaseScope(v3, v7, v8) == 2)
  {
    objc_msgSend_setUseEncryption_(v3, v9, 1);
  }

  else
  {
    v13 = objc_msgSend_databaseScope(v3, v9, v10) == 3;
    objc_msgSend_setUseEncryption_(v3, v14, v13);
  }

  v15 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v11, v12);
  dispatch_group_enter(v15);

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_225203638;
  v33[3] = &unk_278547768;
  objc_copyWeak(&v35, &location);
  v34 = *(a1 + 40);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v16, v33);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2252036E4;
  v29[3] = &unk_278548AD0;
  objc_copyWeak(&v31, &location);
  objc_copyWeak(&v32, &from);
  v30 = *(a1 + 40);
  objc_msgSend_setCompletionBlock_(v3, v17, v29);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = *(a1 + 32);
    v26 = objc_msgSend_ckShortDescription(v23, v24, v25);
    *buf = 134218754;
    v39 = v3;
    v40 = 2114;
    v41 = v22;
    v42 = 2048;
    v43 = v23;
    v44 = 2114;
    v45 = v26;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Starting fetch records operation %p for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_msgSend_hash(*(a1 + 32), v19, v20);
  kdebug_trace();

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v31);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2252035DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void sub_225203638(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v10, v8);

  if (v11)
  {
    objc_msgSend_assetArray_didFetchRecord_error_(WeakRetained, v12, v11, v13, v7);
  }
}

void sub_2252036E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  objc_msgSend__didCompleteRecordFetchOperation_assetArrayByRecordID_(WeakRetained, v3, v2, *(a1 + 32));
  v6 = objc_msgSend_stateTransitionGroup(WeakRetained, v4, v5);
  dispatch_group_leave(v6);
}

void sub_225203E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225203E90(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  if (v7)
  {
    objc_msgSend_setObject_forKey_(*(*(*(a1 + 32) + 8) + 40), v6, v7, v5);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v12 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v5, v10, v11);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "cache clone context for pacakge item with signature %@", &v14, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "received a nil clone context", &v14, 2u);
    }
  }
}

void sub_225204040(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_msgSend_setDatabaseScope_(v3, v4, *(a1 + 48));
  if (objc_msgSend_databaseScope(v3, v5, v6) != 2 && objc_msgSend_databaseScope(v3, v7, v8) != 3)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1666, @"Expected valid source for CKAssetReference");
  }

  objc_msgSend_setUseEncryption_(v3, v7, 1);
  v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
  dispatch_group_enter(v12);

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_225204398;
  v31[3] = &unk_278547768;
  objc_copyWeak(&v33, &location);
  v32 = *(a1 + 40);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v13, v31);
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = sub_225204464;
  v29 = &unk_278547098;
  objc_copyWeak(&v30, &location);
  objc_msgSend_setCompletionBlock_(v3, v14, &v26);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = *(a1 + 32);
    v23 = objc_msgSend_ckShortDescription(v20, v21, v22, v26, v27, v28, v29);
    *buf = 134218754;
    v36 = v3;
    v37 = 2114;
    v38 = v19;
    v39 = 2048;
    v40 = v20;
    v41 = 2114;
    v42 = v23;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Starting fetch records operation %p for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_msgSend_hash(*(a1 + 32), v16, v17);
  kdebug_trace();
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

void sub_22520434C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225204398(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v10, v7);
  if (v12)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v11, v7);
    objc_msgSend_packageArray_didFetchRecord_error_(WeakRetained, v14, v13, v15, v8);
  }
}

void sub_225204464(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_225204584(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_assetsWhichNeedRecordFetch(v3, v4, v5);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v36, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v33;
    v13 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        if (objc_msgSend_useClearAssetEncryption(*(a1 + 32), v9, v10))
        {
          v22 = objc_msgSend_currentHandler(*(v13 + 2192), v16, v17);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, *(a1 + 48), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1701, @"useClearAssetEncryption should be false!");
        }

        if (objc_msgSend_databaseScope(*(a1 + 32), v16, v17) != 1 && objc_msgSend_databaseScope(*(a1 + 32), v18, v19) != 2 && objc_msgSend_databaseScope(*(a1 + 32), v18, v20) != 3)
        {
          v24 = objc_msgSend_currentHandler(*(v13 + 2192), v18, v21);
          v25 = *(a1 + 48);
          v26 = *(a1 + 32);
          v29 = objc_msgSend_databaseScope(v26, v27, v28);
          v30 = v26;
          v13 = 0x277CCA000;
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v31, v25, v30, @"CKDModifyRecordsOperation.m", 1702, @"Expected valid destination for CKAssetReference, not %lu", v29);
        }

        objc_msgSend_setObject_forKey_(*(a1 + 40), v18, v3, v15);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v32, v36, 16);
    }

    while (v11);
  }

  objc_msgSend_setState_(v3, v9, 4);
}

void sub_225204AF8(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = 0;
  v5 = objc_msgSend_prepareAssetsForUploadWithError_(v3, v4, &v19);
  v6 = v19;
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v3;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_22506F000, v7, OS_LOG_TYPE_ERROR, "Error preparing assets for handler %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v5;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v15, v20, 16);
    if (v10)
    {
      v12 = v10;
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend_setObject_forKey_(*(a1 + 32), v11, v3, *(*(&v15 + 1) + 8 * i), v15);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v15, v20, 16);
      }

      while (v12);
    }
  }
}

void sub_225204EB4(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v8, v9);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v12 = objc_msgSend_unitTestOverrides(*(a1 + 32), v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"FailBoundaryKeyFetch");

    if (v14)
    {
      v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 5005, @"Couldn't fetch boundary key because the unit test asked for it");

      v5 = 0;
      v6 = v16;
    }
  }

  v17 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v17);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v25 = v18;
      v28 = objc_msgSend_operationID(WeakRetained, v26, v27);
      *buf = 138543618;
      v40 = v28;
      v41 = 2112;
      v42 = v6;
      _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Error fetching user boundary key for operation %{public}@: %@", buf, 0x16u);
    }

    objc_msgSend_setError_(WeakRetained, v19, v6);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v17);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v29 = v22;
      v32 = objc_msgSend_operationID(WeakRetained, v30, v31);
      v33 = MEMORY[0x277CCACA8];
      v36 = objc_msgSend_length(v5, v34, v35);
      v38 = objc_msgSend_stringWithFormat_(v33, v37, @"<%lu bytes>", v36);
      *buf = 138543618;
      v40 = v32;
      v41 = 2112;
      v42 = v38;
      _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Fetched user boundary key for operation %{public}@: %@", buf, 0x16u);
    }

    objc_msgSend_setCachedGlobalPerUserBoundaryKeyData_(WeakRetained, v23, v5);
  }

  v24 = objc_msgSend_stateTransitionGroup(WeakRetained, v20, v21);
  dispatch_group_leave(v24);
}

void sub_225205588(id *a1, void *a2)
{
  v4 = a2;
  v7 = objc_msgSend_container(a1[4], v5, v6);
  objc_msgSend_clientSDKVersion(v7, v8, v9);
  v10 = CKLinkCheck48d9728e8c354416a38f82379cbb35e3();

  if ((v10 & 1) == 0)
  {
    v13 = objc_msgSend_atomic(a1[4], v11, v12);
    objc_msgSend_setAtomic_(v4, v14, v13);
  }

  objc_initWeak(&location, v4);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_2252058D0;
  v44[3] = &unk_27854A110;
  v15 = a1[4];
  v46[1] = a1[6];
  v44[4] = v15;
  objc_copyWeak(v46, &location);
  v45 = a1[5];
  objc_msgSend_setUploadPreparationBlock_(v4, v16, v44);
  v20 = objc_msgSend_saveProgressBlock(a1[4], v17, v18);
  if (v20)
  {
    v21 = v41;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_225205A40;
    v41[3] = &unk_27854A138;
    v22 = a1[4];
    v43[1] = a1[6];
    v41[4] = v22;
    v10 = v43;
    objc_copyWeak(v43, &location);
    v2 = &v42;
    v42 = a1[5];
  }

  else
  {
    v21 = 0;
  }

  objc_msgSend_setUploadProgressBlock_(v4, v19, v21);

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_225205CE0;
  v38[3] = &unk_27854A160;
  objc_copyWeak(v40, &location);
  v23 = a1[5];
  v24 = a1[4];
  v40[1] = a1[6];
  v38[4] = v24;
  v39 = v23;
  objc_msgSend_setUploadCompletionBlock_(v4, v25, v38);
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = sub_2252065A4;
  v34 = &unk_278546EE0;
  objc_copyWeak(&v37, &location);
  v26 = a1[5];
  v35 = a1[4];
  v36 = v26;
  objc_msgSend_setCompletionBlock_(v4, v27, &v31);
  v30 = objc_msgSend_stateTransitionGroup(a1[4], v28, v29, v31, v32, v33, v34, v35);
  dispatch_group_enter(v30);

  objc_destroyWeak(&v37);
  objc_destroyWeak(v40);
  if (v20)
  {

    objc_destroyWeak(v10);
  }

  objc_destroyWeak(v46);
  objc_destroyWeak(&location);
}

void sub_225205874(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 48));
  objc_destroyWeak((v3 + 48));
  if (v1)
  {
    objc_destroyWeak(v2);
  }

  objc_destroyWeak((v4 + 48));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_2252058D0(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!v5)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v3, v4);
    v14 = *(a1 + 56);
    v15 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v17, v14, v15, @"CKDModifyRecordsOperation.m", 1833, @"Expected non-nil asset for %@", WeakRetained);
  }

  v8 = objc_msgSend_objectForKey_(*(a1 + 40), v3, v5);
  if (!v8)
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1835, @"Expected non-nil handler for %@", v5);
  }

  v9 = objc_msgSend_progressTracker(v8, v6, v7);
  v20[0] = v5;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v20, 1);
  objc_msgSend_startTrackingItems_(v9, v12, v11);
}

void sub_225205A40(uint64_t a1, void *a2, double a3)
{
  v7 = a2;
  if (!v7)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    v26 = *(a1 + 56);
    v27 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v29, v26, v27, @"CKDModifyRecordsOperation.m", 1840, @"Expected non-nil asset for %@", WeakRetained);
  }

  v8 = objc_msgSend_record(v7, v5, v6);
  v11 = objc_msgSend_recordID(v8, v9, v10);

  if (!v11)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1842, @"Expected non-nil recordID for %@", v7);
  }

  v16 = objc_msgSend_objectForKey_(*(a1 + 40), v12, v7);
  if (!v16)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1844, @"Expected non-nil handler for %@", v7);
  }

  v17 = objc_msgSend_progressTracker(v16, v14, v15);
  objc_msgSend_updateProgressWithItem_progress_(v17, v18, v7, a3);
  v20 = v19;

  v23 = objc_msgSend_callbackQueue(*(a1 + 32), v21, v22);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225205C58;
  block[3] = &unk_278545E20;
  block[4] = *(a1 + 32);
  v35 = v11;
  v36 = v20;
  v24 = v11;
  dispatch_async(v23, block);
}

void sub_225205C58(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_saveProgressBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_225205CE0(uint64_t a1, void *a2, void *a3)
{
  v131[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v112 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v5)
  {
    v99 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v99, v100, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1853, @"Expected non-nil asset for %@", WeakRetained);
  }

  v10 = objc_msgSend_record(v5, v7, v8);
  v13 = objc_msgSend_recordID(v10, v11, v12);

  if (!v13)
  {
    v101 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v101, v102, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1855, @"Expected non-nil recordID for %@", v5);
  }

  v18 = objc_msgSend_objectForKey_(*(a1 + 40), v14, v5);
  if (!v18)
  {
    v103 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v103, v104, *(a1 + 56), *(a1 + 32), @"CKDModifyRecordsOperation.m", 1857, @"Expected non-nil handler for %@", v5);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_msgSend_assets(v5, v19, v20);
  }

  else
  {
    v131[0] = v5;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v131, 1);
  }

  v22 = v21;
  if (v6)
  {
LABEL_29:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v91 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v93 = *(v112 + 32);
      v94 = v91;
      v97 = objc_msgSend_operationID(v93, v95, v96);
      *buf = 138413058;
      v123 = v5;
      v124 = 2112;
      v125 = v13;
      v126 = 2114;
      v127 = v97;
      v128 = 2112;
      v129 = v6;
      _os_log_impl(&dword_22506F000, v94, OS_LOG_TYPE_INFO, "Failed to upload asset %@ for record %@ and operation %{public}@: %@", buf, 0x2Au);
    }

    objc_msgSend_setState_(v18, v92, 12);
    objc_msgSend_setError_(v18, v98, v6);
    goto LABEL_34;
  }

  v111 = v18;
  v106 = v13;
  v107 = v5;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v105 = v21;
  v23 = v21;
  v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v118, v130, 16);
  if (!v113)
  {
    goto LABEL_25;
  }

  v27 = *v119;
  v109 = v23;
  v110 = WeakRetained;
  v108 = *v119;
  while (2)
  {
    for (i = 0; i != v113; ++i)
    {
      if (*v119 != v27)
      {
        objc_enumerationMutation(v23);
      }

      v29 = *(*(&v118 + 1) + 8 * i);
      v30 = objc_msgSend_useEncryption(WeakRetained, v25, v26);
      v33 = objc_msgSend_useClearAssetEncryption(WeakRetained, v31, v32);
      v36 = objc_msgSend_mergeableDeltaID(v29, v34, v35);

      if (v36)
      {
        v37 = objc_msgSend_mergeableDeltaID(v29, v25, v26);
        v40 = objc_msgSend_valueID(v37, v38, v39);
        isEncrypted = objc_msgSend_isEncrypted(v40, v41, v42);

        v33 = isEncrypted ^ 1;
        if ((isEncrypted & v30 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if (!v30)
      {
        goto LABEL_21;
      }

      v44 = [CKDWrappingContext alloc];
      v47 = objc_msgSend_record(v29, v45, v46);
      v50 = objc_msgSend_recordID(v47, v48, v49);
      v53 = objc_msgSend_recordKey(v29, v51, v52);
      v56 = objc_msgSend_mergeableDeltaID(v29, v54, v55);
      v59 = objc_msgSend_signature(v29, v57, v58);
      v62 = objc_msgSend_referenceSignature(v29, v60, v61);
      v64 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v44, v63, v50, v53, v56, v59, v62);

      v67 = objc_msgSend_container(*(v112 + 32), v65, v66);
      v70 = objc_msgSend_pcsManager(v67, v68, v69);
      v73 = objc_msgSend_assetKey(v29, v71, v72);
      v76 = objc_msgSend_record(v111, v74, v75);
      v79 = objc_msgSend_recordPCS(v76, v77, v78);
      v117 = 0;
      v81 = objc_msgSend_wrapAssetKey_withRecordPCS_inContext_withError_(v70, v80, v73, v79, v64, &v117);
      v6 = v117;
      objc_msgSend_setWrappedAssetKey_(v29, v82, v81);

      WeakRetained = v110;
      v23 = v109;

      v27 = v108;
      if (v6)
      {

        v13 = v106;
        v5 = v107;
        v18 = v111;
        v22 = v105;
        goto LABEL_29;
      }

LABEL_21:
      if (v33)
      {
        v83 = objc_msgSend_assetKey(v29, v25, v26);
        objc_msgSend_setClearAssetKey_(v29, v84, v83);
      }
    }

    v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v118, v130, 16);
    if (v113)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v18 = v111;
  v87 = objc_msgSend_error(v111, v85, v86);

  if (!v87)
  {
    objc_msgSend_setState_(v111, v88, 5);
  }

  v90 = objc_msgSend_callbackQueue(*(v112 + 32), v88, v89);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22520632C;
  block[3] = &unk_278546990;
  block[4] = *(v112 + 32);
  v115 = v23;
  v13 = v106;
  v116 = v106;
  dispatch_async(v90, block);

  v6 = 0;
  v5 = v107;
  v22 = v105;
LABEL_34:
}

void sub_22520632C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v57 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_uploadCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = *(v3 + 40);
    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v52, v56, 16);
    if (v46)
    {
      v44 = *v53;
      v45 = v3;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v53 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v52 + 1) + 8 * i);
          v10 = objc_msgSend_uploadCompletionBlock(*(v3 + 32), v6, v7);
          v51 = *(v3 + 48);
          v13 = objc_msgSend_recordKey(v9, v11, v12);
          v50 = objc_msgSend_arrayIndex(v9, v14, v15);
          v18 = objc_msgSend_signature(v9, v16, v17);
          v49 = objc_msgSend_size(v9, v19, v20);
          v48 = objc_msgSend_paddedFileSize(v9, v21, v22);
          if (objc_msgSend_shouldOnlySaveAssetContent(*(v3 + 32), v23, v24))
          {
            v47 = objc_msgSend_uploaded(v9, v25, v26);
          }

          else
          {
            v47 = 0;
          }

          shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(*(v3 + 32), v25, v26);
          if (shouldOnlySaveAssetContent)
          {
            v30 = objc_msgSend_uploadReceipt(v9, v27, v28);
            v43 = v30;
          }

          else
          {
            v30 = 0;
          }

          v33 = 0.0;
          if (objc_msgSend_shouldOnlySaveAssetContent(*(v3 + 32), v27, v28))
          {
            objc_msgSend_uploadReceiptExpiration(v9, v31, v32);
            v33 = v34;
          }

          v35 = objc_msgSend_wrappedAssetKey(v9, v31, v32);
          v38 = objc_msgSend_clearAssetKey(v9, v36, v37);
          v41 = objc_msgSend_referenceSignature(v9, v39, v40);
          (v10)[2](v10, v51, v13, v50, v18, v49, v48, v47, v33, v30, v35, v38, v41, 0);

          if (shouldOnlySaveAssetContent)
          {
          }

          v3 = v45;
        }

        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v52, v56, 16);
      }

      while (v46);
    }
  }
}

void sub_2252065A4(id *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      v12 = v8;
      v15 = objc_msgSend_operationID(v11, v13, v14);
      v18 = objc_msgSend_error(WeakRetained, v16, v17);
      *buf = 138543618;
      v41 = v15;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Failed to upload assets for operation %{public}@: %@", buf, 0x16u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = objc_msgSend_objectEnumerator(a1[5], v9, v10, 0);
    v22 = objc_msgSend_allObjects(v19, v20, v21);

    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v35, v39, 16);
    if (v24)
    {
      v26 = v24;
      v27 = *v36;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v35 + 1) + 8 * i);
          objc_msgSend_setState_(v29, v25, 12);
          v32 = objc_msgSend_error(WeakRetained, v30, v31);
          objc_msgSend_setError_(v29, v33, v32);
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v35, v39, 16);
      }

      while (v26);
    }
  }

  v34 = objc_msgSend_stateTransitionGroup(a1[4], v6, v7);
  dispatch_group_leave(v34);
}

void sub_225206ECC(uint64_t a1, void *a2)
{
  v13 = a2;
  if ((objc_msgSend_isDelete(v13, v3, v4) & 1) == 0)
  {
    v9 = objc_msgSend_record(v13, v5, v6);
    if (!v9)
    {
      v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, *(a1 + 40), *(a1 + 32), @"CKDModifyRecordsOperation.m", 2041, @"Expected a non-nil record for handler %@", v13);
    }

    if (objc_msgSend_includeMergeableDeltasInModifyRecordsRequest(*(a1 + 32), v7, v8))
    {
      objc_msgSend_setState_(v13, v10, 8);
    }

    else
    {
      objc_msgSend_setState_(v13, v10, 7);
    }
  }
}

void sub_225207440(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v116 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_haveOutstandingHandlers(*(a1 + 32), a2, a3))
  {
    v6 = objc_opt_new();
    v103 = objc_opt_new();
    v102 = objc_opt_new();
    v99 = objc_opt_new();
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v9 = objc_msgSend_modifyHandlersByZoneID(*(v3 + 32), v7, v8);
    v12 = objc_msgSend_allKeys(v9, v10, v11);

    obj = v12;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v108, v115, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v109;
      v100 = v6;
      v101 = v3;
      v95 = *v109;
      do
      {
        v18 = 0;
        v96 = v16;
        do
        {
          if (*v109 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v108 + 1) + 8 * v18);
          if (objc_msgSend_containsObject_(*(v3 + 40), v15, v19))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v22 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v114 = v19;
              _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Skipping zone %@ because some items in that zone aren't ready to be uploaded yet", buf, 0xCu);
            }
          }

          else
          {
            v98 = v18;
            v23 = objc_msgSend_modifyHandlersByZoneID(*(v3 + 32), v20, v21);
            v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v19);

            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v26 = v25;
            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v104, v112, 16);
            if (v28)
            {
              v31 = v28;
              v32 = *v105;
              do
              {
                v33 = 0;
                do
                {
                  if (*v105 != v32)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v34 = *(*(&v104 + 1) + 8 * v33);
                  if (objc_msgSend_state(v34, v29, v30) == 6)
                  {
                    v35 = objc_msgSend_record(v34, v29, v30);
                    if (objc_msgSend_isDelete(v34, v36, v37))
                    {
                      v40 = objc_msgSend_recordID(v34, v38, v39);

                      if (!v40)
                      {
                        v87 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v41, v42);
                        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v87, v88, *(v3 + 48), *(v3 + 32), @"CKDModifyRecordsOperation.m", 2108, @"Lost a recordID");
                      }

                      v43 = objc_msgSend_recordID(v34, v41, v42);
                      objc_msgSend_addObject_(v103, v44, v43);

                      v47 = objc_msgSend_etag(v34, v45, v46);

                      if (v47)
                      {
                        v50 = objc_msgSend_etag(v34, v48, v49);
                        v53 = objc_msgSend_recordID(v34, v51, v52);
                        objc_msgSend_setObject_forKeyedSubscript_(v102, v54, v50, v53);
                      }

                      if (objc_msgSend__needsSigningPCS(*(v3 + 32), v48, v49))
                      {
                        v57 = objc_msgSend_recordPCSData(v34, v55, v56);
                        v60 = objc_msgSend_signingPCS(v57, v58, v59);

                        if (v60)
                        {
                          v63 = objc_msgSend_recordPCSData(v34, v61, v62);
                          objc_msgSend_signingPCS(v63, v64, v65);
                          v66 = PCSFPCopyCurrentPrivateKey();

                          if (v66)
                          {
                            v69 = objc_msgSend_container(*(v3 + 32), v67, v68);
                            v72 = objc_msgSend_pcsManager(v69, v70, v71);
                            v74 = objc_msgSend_dataFromSharingIdentity_error_(v72, v73, v66, 0);

                            if (v74)
                            {
                              v77 = objc_msgSend_recordID(v34, v75, v76);
                              objc_msgSend_setObject_forKeyedSubscript_(v99, v78, v74, v77);
                            }

                            CFRelease(v66);

                            v6 = v100;
                            v3 = v101;
                          }

                          else
                          {
                            if (*MEMORY[0x277CBC880] != -1)
                            {
                              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                            }

                            v79 = *MEMORY[0x277CBC830];
                            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
                            {
                              v80 = v79;
                              v83 = objc_msgSend_recordPCSData(v34, v81, v82);
                              v86 = objc_msgSend_signingPCS(v83, v84, v85);
                              *buf = 138412290;
                              v114 = v86;
                              _os_log_debug_impl(&dword_22506F000, v80, OS_LOG_TYPE_DEBUG, "Record does have signing PCS %@ but failed to get private key", buf, 0xCu);

                              v3 = v101;
                              v6 = v100;
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      objc_msgSend_addObject_(v6, v38, v35);
                    }
                  }

                  ++v33;
                }

                while (v31 != v33);
                v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v104, v112, 16);
                v31 = v89;
              }

              while (v89);
            }

            v17 = v95;
            v16 = v96;
            v18 = v98;
          }

          ++v18;
        }

        while (v18 != v16);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v108, v115, 16);
      }

      while (v16);
    }

    objc_msgSend_setRecordsToSave_(*(v3 + 32), v90, v6);
    objc_msgSend_setRecordIDsToDelete_(*(v3 + 32), v91, v103);
    objc_msgSend_setRecordIDsToDeleteToEtags_(*(v3 + 32), v92, v102);
    objc_msgSend_setRecordIDsToDeleteToSigningPCSIdentity_(*(v3 + 32), v93, v99);
  }

  v94 = objc_msgSend_stateTransitionGroup(*(v3 + 32), v4, v5);
  dispatch_group_leave(v94);
}

void sub_225208388(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_recordID(v5, v6, v7);
    objc_msgSend__handleDecryptionFailure_forRecordID_(v9, v11, v8, v10);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v16 = v14;
      v19 = objc_msgSend_recordID(v5, v17, v18);
      v20 = 138412290;
      v21 = v19;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Successfully decrypted record %@. Continuing with save of that record", &v20, 0xCu);
    }
  }

  v15 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v12, v13);
  dispatch_group_leave(v15);
}

void sub_225208804(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC880];
  if (!v5 || v6)
  {
    if (v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 32);
      v26 = v14;
      v29 = objc_msgSend_recordID(v25, v27, v28);
      *buf = 138412290;
      v36 = v29;
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Failed to decrypt server record %@. Returning as is.", buf, 0xCu);
    }

    objc_msgSend_setState_(*(a1 + 40), v15, 12);
    v16 = MEMORY[0x277CBC560];
    v17 = *MEMORY[0x277CBC120];
    v20 = objc_msgSend_recordID(*(a1 + 32), v18, v19);
    v22 = objc_msgSend_errorWithDomain_code_format_(v16, v21, v17, 5004, @"Couldn't decrypt record returned from the server in response to our save of record %@", v20);
    objc_msgSend_setError_(*(a1 + 40), v23, v22);
  }

  else
  {
    if (v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 32);
      v31 = v10;
      v34 = objc_msgSend_recordID(v30, v32, v33);
      *buf = 138412290;
      v36 = v34;
      _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Successfully decrypted server record from save %@", buf, 0xCu);
    }

    objc_msgSend__reallyHandleRecordSaved_handler_etag_dateStatistics_expirationDate_responseCode_keysAssociatedWithETag_recordForOplockFailure_decryptedServerRecord_(*(a1 + 48), v11, *(a1 + 56), *(a1 + 40), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), v5);
  }

  v24 = objc_msgSend_stateTransitionGroup(*(a1 + 48), v12, v13);
  dispatch_group_leave(v24);
}

void sub_22520A134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_22520A160(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Failed to remove anonymous share. error: %@", &v9, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);
}

uint64_t sub_22520A274(uint64_t a1, const char *a2)
{
  objc_msgSend_setError_(*(a1 + 32), a2, a2);
  v5 = objc_msgSend_error(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_code(v5, v6, v7);

  v10 = *(a1 + 32);
  if (v8 == 2024)
  {
    v11 = 11;
  }

  else
  {
    v11 = 12;
  }

  return objc_msgSend_setState_(v10, v9, v11);
}

void sub_22520A2E4(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC880];
  if (!v5 || v6)
  {
    if (v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v25 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 32);
      v36 = v25;
      v39 = objc_msgSend_recordID(v35, v37, v38);
      *buf = 138412290;
      v45 = v39;
      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Failed to decrypt the server record %@. Returning as is.", buf, 0xCu);

      if (!v7)
      {
        goto LABEL_13;
      }
    }

    else if (!v7)
    {
LABEL_13:
      v28 = MEMORY[0x277CBC560];
      v29 = *MEMORY[0x277CBC120];
      v30 = *(a1 + 40);
      v19 = objc_msgSend_recordID(*(a1 + 32), v26, v27);
      v24 = objc_msgSend_errorWithDomain_code_userInfo_format_(v28, v31, v29, 5004, v30, @"Failed to decrypt the server record %@ returned from oplock failure.", v19);
      goto LABEL_14;
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v26, v7, *MEMORY[0x277CCA7E8]);
    goto LABEL_13;
  }

  if (v9 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v8);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v40 = v10;
    v43 = objc_msgSend_recordID(v5, v41, v42);
    *buf = 138412290;
    v45 = v43;
    _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Successfully decrypted record %@", buf, 0xCu);
  }

  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v11, v5, *MEMORY[0x277CBBFE8]);
  v12 = MEMORY[0x277CBC560];
  v13 = *MEMORY[0x277CBC120];
  v14 = sub_2253962A4(*(a1 + 48));
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v19 = objc_msgSend_error(*(a1 + 48), v17, v18);
  v22 = objc_msgSend_errorDescription(v19, v20, v21);
  v24 = objc_msgSend_errorWithDomain_code_userInfo_format_(v12, v23, v13, v14, v16, @"Error saving record %@ to server: %@", v15, v22);

LABEL_14:
  (*(*(a1 + 72) + 16))();
  v34 = objc_msgSend_stateTransitionGroup(*(a1 + 64), v32, v33);
  dispatch_group_leave(v34);
}

void sub_22520AA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22520AAAC(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Failed to remove anonymous share. error: %@", &v9, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);
}

void sub_22520B8D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_22520B91C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v33 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a6;
  v22 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v26 = objc_msgSend_handlersByRecordID(WeakRetained, v24, v25);
  v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v22);

  v31 = objc_msgSend_record(v28, v29, v30);

  if (v31)
  {
    objc_msgSend__handleRecordSaved_handler_etag_dateStatistics_expirationDate_responseCode_keysAssociatedWithETag_recordForOplockFailure_serverRecord_(WeakRetained, v32, v22, v28, v33, v16, v17, v21, v18, v19, v20);
  }

  else
  {
    objc_msgSend__handleRecordDeleted_handler_responseCode_(WeakRetained, v32, v22, v28, v21);
  }
}

void sub_22520BA7C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleMergeableDeltaSavedForRecordID_key_result_(WeakRetained, v10, v9, v8, v7);
}

void sub_22520BB08(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleReplaceDeltasRequest_result_(WeakRetained, v7, v6, v5);
}

BOOL sub_22520BD54(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_objectForKey_(*(a1 + 32), a2, a2);
  objc_opt_class();
  v3 = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_firstObject(v2, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0))
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_22520BF5C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordsInFlightBlock(*(a1 + 32), a2, a3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22520BFF4;
  v6[3] = &unk_2785470C0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  (v4)[2](v4, v5, v6);
}

void sub_22520BFF4(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v12 = objc_msgSend_operationID(v8, v10, v11);
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Finishing daemon operation %{public}@ due to client-returned error %@", &v14, 0x16u);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v7, v5);
  }

  v13 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v3, v4);
  dispatch_group_leave(v13);
}

void sub_22520CB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22520CB64(uint64_t a1, const char *a2)
{
  objc_msgSend_setRequest_(*(a1 + 32), a2, 0);
  v6 = objc_msgSend_error(*(a1 + 32), v3, v4);
  if (v6)
  {
    objc_msgSend_setError_(*(a1 + 32), v5, v6);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = objc_msgSend_error(WeakRetained, v8, v9);
    objc_msgSend_setError_(*(a1 + 32), v11, v10);
  }

  v14 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v12, v13);
  dispatch_group_leave(v14);
}

void sub_22520D000(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_record(v3, v4, v5);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = objc_msgSend_allKeys(v6, v7, v8);
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v64, v69, 16);
  if (!v59)
  {

LABEL_26:
    objc_msgSend_setState_(v3, v54, 8);
    goto LABEL_27;
  }

  v12 = 0;
  v58 = *v65;
  v55 = v6;
  v56 = v9;
  do
  {
    for (i = 0; i != v59; ++i)
    {
      if (*v65 != v58)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v64 + 1) + 8 * i);
      v15 = objc_msgSend_objectForKeyedSubscript_(v6, v11, v14);
      v18 = v15;
      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v20 = objc_msgSend_encryptedValues(v6, v16, v17);
        v19 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v14);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v19;
        v25 = objc_msgSend_deltasToSave(v22, v23, v24);
        v28 = objc_msgSend_count(v25, v26, v27);

        if (v28)
        {
          v31 = *(a1 + 32);
          v32 = objc_msgSend_deltasToSave(v22, v29, v30);
          v35 = objc_msgSend_allObjects(v32, v33, v34);
          objc_msgSend_addObjectsFromArray_(v31, v36, v35);

          v37 = *(a1 + 40);
          v40 = objc_msgSend_valueID(v22, v38, v39);
          objc_msgSend_setObject_forKeyedSubscript_(v37, v41, v3, v40);

          v12 = 1;
        }

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v42 = objc_msgSend_pendingReplacementRequests(v22, v29, v30);
        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v60, v68, 16);
        if (v44)
        {
          v46 = v44;
          v57 = v19;
          v47 = *v61;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v61 != v47)
              {
                objc_enumerationMutation(v42);
              }

              objc_msgSend_addObject_(*(a1 + 48), v45, *(*(&v60 + 1) + 8 * j));
              v49 = *(a1 + 40);
              v52 = objc_msgSend_valueID(v22, v50, v51);
              objc_msgSend_setObject_forKeyedSubscript_(v49, v53, v3, v52);
            }

            v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v60, v68, 16);
          }

          while (v46);
          v12 = 1;
          v6 = v55;
          v19 = v57;
        }

        v9 = v56;
      }
    }

    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v64, v69, 16);
  }

  while (v59);

  if ((v12 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_27:
}

id sub_22520D308(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_metadata(a2, a2, a3);
  v6 = objc_msgSend_identifier(v3, v4, v5);

  return v6;
}

void sub_22520D358(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22520D540;
  v22[3] = &unk_27854A2C8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v23 = v4;
  v24 = v5;
  objc_msgSend_setUploadDeltaCompletionBlock_(v3, v6, v22);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22520D834;
  v19[3] = &unk_27854A2F0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v20 = v7;
  v21 = v8;
  objc_msgSend_setReplaceDeltasRequestCompletionBlock_(v3, v9, v19);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22520DAB4;
  v16[3] = &unk_278546EE0;
  objc_copyWeak(&v18, &location);
  v15 = *(a1 + 32);
  v10 = v15.i64[0];
  v17 = vextq_s8(v15, v15, 8uLL);
  objc_msgSend_setCompletionBlock_(v3, v11, v16);
  v14 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v12, v13);
  dispatch_group_enter(v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void sub_22520D518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22520D540(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10 = objc_msgSend_valueID(v5, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v11, v10);

  if (v12)
  {
    v13 = *MEMORY[0x277CBC878];
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v14 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v30 = v14;
        v33 = objc_msgSend_metadata(v5, v31, v32);
        v36 = objc_msgSend_identifier(v33, v34, v35);
        v39 = objc_msgSend_operationID(*(a1 + 40), v37, v38);
        v40 = 138412802;
        v41 = v36;
        v42 = 2114;
        v43 = v39;
        v44 = 2112;
        v45 = v6;
        _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "Failed to upload delta, %@, for operation %{public}@: %@", &v40, 0x20u);
      }

      objc_msgSend_setError_(v12, v15, v6);
      objc_msgSend_setState_(v12, v16, 12);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v22 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        v26 = objc_msgSend_metadata(v5, v24, v25);
        v29 = objc_msgSend_identifier(v26, v27, v28);
        v40 = 138412290;
        v41 = v29;
        _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Successfully uploaded delta: %@", &v40, 0xCu);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v21 = objc_msgSend_valueID(v5, v19, v20);
      v40 = 138412290;
      v41 = v21;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "No modify handler for delta: %@", &v40, 0xCu);
    }
  }
}

void sub_22520D834(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10 = objc_msgSend_valueID(v5, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v11, v10);

  if (v12)
  {
    v13 = *MEMORY[0x277CBC878];
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v14 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        v20 = v14;
        v23 = objc_msgSend_operationID(v19, v21, v22);
        v24 = 138412802;
        v25 = v5;
        v26 = 2114;
        v27 = v23;
        v28 = 2112;
        v29 = v6;
        _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Failed to replace deltas %@ for operation %{public}@: %@", &v24, 0x20u);
      }

      objc_msgSend_setError_(v12, v15, v6);
      objc_msgSend_setState_(v12, v16, 12);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v18 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v24 = 138412290;
        v25 = v5;
        _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Successfully replaced deltas: %@", &v24, 0xCu);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = v5;
      _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "No modify handler for replacement request: %@", &v24, 0xCu);
    }
  }
}

void sub_22520DAB4(id *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v30 = a1[4];
      v31 = v8;
      v34 = objc_msgSend_operationID(v30, v32, v33);
      v37 = objc_msgSend_error(WeakRetained, v35, v36);
      *buf = 138543618;
      v44 = v34;
      v45 = 2112;
      v46 = v37;
      _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "Failed to upload delta for operation %{public}@: %@", buf, 0x16u);
    }
  }

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_msgSend_allValues(a1[5], v6, v7);
  v12 = objc_msgSend_setWithArray_(v9, v11, v10);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v12;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v38, v42, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v39;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        if (objc_msgSend_state(v21, v16, v17, v38) == 7)
        {
          objc_msgSend_setState_(v21, v16, 8);
          v24 = objc_msgSend_error(WeakRetained, v22, v23);

          if (v24)
          {
            v25 = objc_msgSend_error(WeakRetained, v16, v17);
            objc_msgSend_setError_(v21, v26, v25);
          }
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v38, v42, 16);
    }

    while (v18);
  }

  v29 = objc_msgSend_stateTransitionGroup(a1[4], v27, v28);
  dispatch_group_leave(v29);
}

uint64_t sub_22520EE0C(uint64_t a1, uint64_t a2, void *a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_21:
      v9 = 0;
      goto LABEL_22;
    }

    v12 = objc_msgSend_fileURL(v4, v10, v11);
    v16 = objc_msgSend_URLByResolvingSymlinksInPath(v12, v13, v14);
    if (!v16)
    {
LABEL_20:

      goto LABEL_21;
    }

    canOpenFileAtURL = objc_msgSend_canOpenFileAtURL_(*(a1 + 40), v15, v16);
    v20 = canOpenFileAtURL;
    if (*MEMORY[0x277CBC810] == 1)
    {
      v21 = objc_msgSend_unitTestOverrides(*(a1 + 32), v18, v19);
      v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"SandboxFailureRoot");

      v26 = objc_msgSend_stringByResolvingSymlinksInPath(v23, v24, v25);
      v27 = v26;
      if (v23)
      {
        v74 = v20;
        v28 = v16;
        v31 = objc_msgSend_path(v28, v29, v30);
        isEqualToString = objc_msgSend_isEqualToString_(v31, v32, @"/");

        if (isEqualToString)
        {
          v36 = v28;
LABEL_18:

          if (v74)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v73 = v28;
          v37 = v28;
          while (1)
          {
            v38 = objc_msgSend_path(v37, v34, v35);
            if (objc_msgSend_isEqualToString_(v38, v39, v23))
            {
              break;
            }

            v42 = objc_msgSend_path(v37, v40, v41);
            v44 = objc_msgSend_isEqualToString_(v42, v43, v27);

            if (v44)
            {
              goto LABEL_24;
            }

            v36 = objc_msgSend_URLByDeletingLastPathComponent(v37, v45, v46);

            v49 = objc_msgSend_path(v36, v47, v48);
            v51 = objc_msgSend_isEqualToString_(v49, v50, @"/");

            v37 = v36;
            if (v51)
            {
              goto LABEL_18;
            }
          }

LABEL_24:
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v53 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v54 = v53;
            v57 = objc_msgSend_path(v73, v55, v56);
            *buf = 138543362;
            v76 = v57;
            _os_log_impl(&dword_22506F000, v54, OS_LOG_TYPE_INFO, "Pretending this is an invalid sandbox path: %{public}@", buf, 0xCu);
          }
        }

LABEL_29:
        v58 = objc_msgSend_directoryContext(*(a1 + 40), v18, v19);
        v61 = objc_msgSend_containerDirectory(v58, v59, v60);

        if (v61 && (objc_msgSend_absoluteString(v16, v62, v63), v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend_absoluteString(v61, v65, v66), v67 = objc_claimAutoreleasedReturnValue(), hasPrefix = objc_msgSend_hasPrefix_(v64, v68, v67), v67, v64, (hasPrefix & 1) == 0))
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v62, *MEMORY[0x277CBBF50], 12, @"Long Lived Operation %@ may not save a record with asset %@, whose fileURL %@ is inaccessible. Note that your app should not be re-installed between enqueueing and resuming a LongLivedOperation, as your container directory will change (it's now %@)", *(a1 + 32), v4, v12, v61);
        }

        else
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v62, *MEMORY[0x277CBBF50], 12, @"Long Lived Operation %@ may not save a record with asset %@, whose fileURL %@ is inaccessible", *(a1 + 32), v4, v12);
        }
        v70 = ;
        v71 = *(*(a1 + 48) + 8);
        v72 = *(v71 + 40);
        *(v71 + 40) = v70;

        goto LABEL_3;
      }

      if ((v20 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (!canOpenFileAtURL)
    {
      goto LABEL_29;
    }

LABEL_19:
    objc_msgSend_setRealPathURL_(v4, v18, v16);
    goto LABEL_20;
  }

  v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v5, *MEMORY[0x277CBBF50], 12, @"Long Lived Operation %@ may not save a record with a CKPackage value.  Found %@", *(a1 + 32), v4);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

LABEL_3:
  v9 = 1;
LABEL_22:

  return v9;
}

uint64_t sub_22520F22C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_boundaryKey(v4, v5, v6), v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && (objc_msgSend_entitlements(*(a1 + 32), v8, v9), v10 = objc_claimAutoreleasedReturnValue(), hasAssetBoundaryKeyEntitlement = objc_msgSend_hasAssetBoundaryKeyEntitlement(v10, v11, v12), v10, (hasAssetBoundaryKeyEntitlement & 1) == 0))
  {
    v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBBF50], 12, @"Usage of [CKAsset boundaryKey] is CloudKit SPI and requires an entitlement. com.apple.private.cloudkit.assetBoundaryKey");
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_2252103A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 152), 8);
  objc_destroyWeak((v29 - 120));
  _Unwind_Resume(a1);
}

void sub_2252103F4(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = objc_msgSend_pcs(v6, v9, v10);
  v12 = *MEMORY[0x277CBC878];
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v17 = objc_msgSend_shareID(v6, v15, v16);
      v18 = *(*(*(a1 + 48) + 8) + 40);
      v27 = 138412546;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Successfully decrypted PCS data for share %@: %@", &v27, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v19 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v22 = v19;
      v25 = objc_msgSend_shareID(v21, v23, v24);
      v27 = 138412546;
      v28 = v25;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Warn: Couldn't decrypt existing share protection data on share %@: %@", &v27, 0x16u);
    }

    objc_msgSend_setState_(WeakRetained, v20, 12);
    if (v7)
    {
      objc_msgSend_setError_(WeakRetained, v26, v7);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_225210630(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    objc_msgSend__fetchSharePCSData(WeakRetained, v3, v4);
  }

  else
  {
    objc_msgSend__prepareDependentPCSUpdateIfNeededForShareWithSharePCS_error_(WeakRetained, v3, *(*(*(a1 + 48) + 8) + 40), 0);
  }

  v7 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v5, v6);
  dispatch_group_leave(v7);
}

void sub_2252109EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_225210A44(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v6)
  {
    v11 = (*(*(a1 + 56) + 8) + 40);
    v12 = a2;
LABEL_3:
    objc_storeStrong(v11, v12);
    goto LABEL_12;
  }

  if (!v7 || objc_msgSend_CKIsObjectNotFoundError(v7, v8, v9))
  {
    dispatch_group_enter(*(a1 + 32));
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_225210C5C;
    v21[3] = &unk_27854A428;
    v21[4] = WeakRetained;
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 56);
    objc_msgSend__fetchRootRecordPublicSharingIdentityWithCompletionHandler_(WeakRetained, v13, v21);

    goto LABEL_12;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v18 = objc_msgSend_shareID(WeakRetained, v16, v17);
    *buf = 138412546;
    v26 = v18;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Fatal error fetching PCS data for share %@: %@. Refusing to save share.", buf, 0x16u);
  }

  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 40);
  v11 = (v19 + 40);
  if (!v20)
  {
    v12 = a3;
    goto LABEL_3;
  }

LABEL_12:
  dispatch_group_leave(*(a1 + 32));
}

void sub_225210C5C(uint64_t a1, void *a2, void *a3)
{
  v112 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (!v6 || objc_msgSend_CKIsObjectNotFoundError(v6, v7, v8))
  {
    if (!v5)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v37 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v81 = *(a1 + 32);
        v82 = v37;
        v85 = objc_msgSend_share(v81, v83, v84);
        v88 = objc_msgSend_rootRecordID(v85, v86, v87);
        *buf = 138412290;
        v107 = v88;
        _os_log_debug_impl(&dword_22506F000, v82, OS_LOG_TYPE_DEBUG, "Didn't get a public sharing identity for root record %@", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v10 = objc_msgSend_share(*(a1 + 32), v7, v8);
    v13 = objc_msgSend_mutableEncryptedPSK(v10, v11, v12);
    v16 = objc_msgSend_data(v13, v14, v15);

    if (!v16 || (objc_msgSend_data(v5, v17, v18), (v19 = objc_claimAutoreleasedReturnValue()) == 0) || (v22 = v19, objc_msgSend_data(v5, v20, v21), v23 = objc_claimAutoreleasedReturnValue(), isEqualToData = objc_msgSend_isEqualToData_(v16, v24, v23), v23, v22, (isEqualToData & 1) != 0))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v26 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v70 = *(a1 + 32);
        v71 = v26;
        v74 = objc_msgSend_share(v70, v72, v73);
        v77 = objc_msgSend_rootRecordID(v74, v75, v76);
        v80 = objc_msgSend_shareID(*(a1 + 32), v78, v79);
        *buf = 138412802;
        v107 = v77;
        v108 = 2112;
        v109 = v80;
        v110 = 2112;
        v111 = v5;
        _os_log_debug_impl(&dword_22506F000, v71, OS_LOG_TYPE_DEBUG, "Setting public sharing identity from root record %@ on share %@: %@", buf, 0x20u);
      }

      v27 = objc_alloc(MEMORY[0x277CBC2E8]);
      v30 = objc_msgSend_data(v5, v28, v29);
      v32 = objc_msgSend_initWithData_(v27, v31, v30);
      v35 = objc_msgSend_share(*(a1 + 32), v33, v34);
      objc_msgSend_setMutableEncryptedPSK_(v35, v36, v32);

LABEL_16:
      dispatch_group_enter(*(a1 + 40));
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = sub_225211240;
      v103[3] = &unk_27854A400;
      v38 = *(a1 + 40);
      v39 = *(a1 + 48);
      v103[4] = *(a1 + 32);
      v105 = *(a1 + 56);
      v104 = v38;
      objc_msgSend_createSharePCSDataWithKRS_(v39, v40, v103);

      goto LABEL_28;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v89 = *(a1 + 32);
      v90 = v41;
      v93 = objc_msgSend_share(v89, v91, v92);
      v96 = objc_msgSend_recordID(v93, v94, v95);
      v99 = objc_msgSend_share(*(a1 + 32), v97, v98);
      v102 = objc_msgSend_rootRecordID(v99, v100, v101);
      *buf = 138412546;
      v107 = v96;
      v108 = 2112;
      v109 = v102;
      _os_log_error_impl(&dword_22506F000, v90, OS_LOG_TYPE_ERROR, "Public sharing identity on share %@ does not match the public sharing identity from its root record (%@). Refusing to save share.", buf, 0x16u);
    }

    v44 = MEMORY[0x277CBC560];
    v45 = *MEMORY[0x277CBC120];
    v46 = objc_msgSend_share(*(a1 + 32), v42, v43);
    v49 = objc_msgSend_recordID(v46, v47, v48);
    v52 = objc_msgSend_share(*(a1 + 32), v50, v51);
    v55 = objc_msgSend_rootRecordID(v52, v53, v54);
    v57 = objc_msgSend_errorWithDomain_code_format_(v44, v56, v45, 1017, @"Public sharing identity on share %@ does not match the public sharing identity from its root record (%@).", v49, v55);

    v9 = v57;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v58 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v62 = *(a1 + 32);
    v63 = v58;
    v66 = objc_msgSend_share(v62, v64, v65);
    v69 = objc_msgSend_rootRecordID(v66, v67, v68);
    *buf = 138412546;
    v107 = v69;
    v108 = 2112;
    v109 = v9;
    _os_log_error_impl(&dword_22506F000, v63, OS_LOG_TYPE_ERROR, "Fatal error fetching PCS data for root record %@: %@. Refusing to save share.", buf, 0x16u);
  }

  v59 = *(*(a1 + 56) + 8);
  v61 = *(v59 + 40);
  v60 = (v59 + 40);
  if (!v61)
  {
    objc_storeStrong(v60, v9);
  }

LABEL_28:
  dispatch_group_leave(*(a1 + 40));
}

void sub_225211240(uint64_t a1, void *a2, void *a3)
{
  v98 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 || !v7)
  {
    v79 = v7;
    v80 = v6;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v81 = objc_opt_new();
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v15 = objc_msgSend_share(*(a1 + 32), v13, v14);
    v18 = objc_msgSend_participants(v15, v16, v17);

    obj = v18;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v88, v93, 16);
    if (v20)
    {
      v23 = v20;
      v24 = MEMORY[0x277CBC880];
      v25 = *v89;
      v26 = MEMORY[0x277CBC830];
      do
      {
        v27 = 0;
        do
        {
          if (*v89 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v88 + 1) + 8 * v27);
          v29 = objc_msgSend_protectionInfo(v28, v21, v22);

          if (v29)
          {
            if (*v24 != -1)
            {
              dispatch_once(v24, *MEMORY[0x277CBC878]);
            }

            v30 = *v26;
            if (os_log_type_enabled(*v26, OS_LOG_TYPE_INFO))
            {
              v32 = v30;
              v35 = objc_msgSend_participantID(v28, v33, v34);
              v38 = objc_msgSend_shareID(*(a1 + 32), v36, v37);
              *buf = 138412546;
              v95 = v35;
              v96 = 2112;
              v97 = v38;
              _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Removing protectionInfo from existing share participant %@ because share PCS was re-created for share %@.", buf, 0x16u);
            }

            objc_msgSend_setProtectionInfo_(v28, v31, 0);
            if (objc_msgSend_role(v28, v39, v40) != 1 && (objc_msgSend_isCurrentUser(v28, v21, v22) & 1) == 0)
            {
              objc_msgSend_addObject_(v81, v21, v28);
            }
          }

          ++v27;
        }

        while (v23 != v27);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v88, v93, 16);
      }

      while (v23);
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v12 = v81;
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v41, &v84, v92, 16);
    if (v42)
    {
      v43 = v42;
      v44 = MEMORY[0x277CBC880];
      v45 = *v85;
      v46 = MEMORY[0x277CBC830];
      do
      {
        v47 = 0;
        obja = v43;
        do
        {
          if (*v85 != v45)
          {
            objc_enumerationMutation(v12);
          }

          v48 = *(*(&v84 + 1) + 8 * v47);
          if (*v44 != -1)
          {
            dispatch_once(v44, *MEMORY[0x277CBC878]);
          }

          v49 = *v46;
          if (os_log_type_enabled(*v46, OS_LOG_TYPE_INFO))
          {
            v52 = v49;
            objc_msgSend_participantID(v48, v53, v54);
            v55 = v45;
            v57 = v56 = v44;
            objc_msgSend_shareID(*(a1 + 32), v58, v59);
            v60 = a1;
            v61 = v46;
            v63 = v62 = v12;
            *buf = 138412546;
            v95 = v57;
            v96 = 2112;
            v97 = v63;
            _os_log_impl(&dword_22506F000, v52, OS_LOG_TYPE_INFO, "Removing and re-adding existing share participant %@ because share PCS was re-created for share %@.", buf, 0x16u);

            v12 = v62;
            v46 = v61;
            a1 = v60;

            v44 = v56;
            v45 = v55;
            v43 = obja;
          }

          v64 = objc_msgSend_share(*(a1 + 32), v50, v51);
          objc_msgSend_removeParticipant_(v64, v65, v48);

          v68 = objc_msgSend_share(*(a1 + 32), v66, v67);
          objc_msgSend_addParticipant_(v68, v69, v48);

          ++v47;
        }

        while (v43 != v47);
        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v70, &v84, v92, 16);
      }

      while (v43);
    }

    v8 = v79;
    v6 = v80;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v71 = *(a1 + 32);
      v72 = v9;
      v75 = objc_msgSend_share(v71, v73, v74);
      v78 = objc_msgSend_recordID(v75, v76, v77);
      *buf = 138412546;
      v95 = v78;
      v96 = 2112;
      v97 = v8;
      _os_log_error_impl(&dword_22506F000, v72, OS_LOG_TYPE_ERROR, "Fatal error creating new share PCS data share %@: %@. Refusing to save share.", buf, 0x16u);
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = v8;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_225211770(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend__prepareDependentPCSUpdateIfNeededForShareWithSharePCS_error_(WeakRetained, v2, *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 40) + 8) + 40));
  v5 = objc_msgSend_operation(WeakRetained, v3, v4);
  v8 = objc_msgSend_stateTransitionGroup(v5, v6, v7);
  dispatch_group_leave(v8);
}

void sub_225211BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225211C08(uint64_t a1, char a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (*MEMORY[0x277CBC810] == 1)
  {
    v9 = objc_msgSend_unitTestOverrides(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"SimultateSharePCSCreateKRSFailure");

    if (v11)
    {
      v13 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 5000, @"SimultateSharePCSCreateKRSFailure set.");

      v14 = v13 == 0;
      v5 = v13;
      goto LABEL_11;
    }
  }

  v14 = v5 == 0;
  if (v5 || (a2 & 1) == 0)
  {
LABEL_11:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v29 = v21;
      v32 = objc_msgSend_shareID(WeakRetained, v30, v31);
      v33 = *(a1 + 40);
      *buf = 138412546;
      v41 = v32;
      v42 = 2114;
      v43 = v33;
      _os_log_error_impl(&dword_22506F000, v29, OS_LOG_TYPE_ERROR, "Failed to KRS for share %@ with service name %{public}@.", buf, 0x16u);

      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else if (!v14)
    {
LABEL_16:
      v20 = *(*(a1 + 48) + 16);
      goto LABEL_17;
    }

    v24 = MEMORY[0x277CBC560];
    v25 = *MEMORY[0x277CBC120];
    v26 = *(a1 + 40);
    v27 = objc_msgSend_shareID(WeakRetained, v22, v23);
    v5 = objc_msgSend_errorWithDomain_code_format_(v24, v28, v25, 5000, @"Couldn't get a current public %@ identity for the owner to create share PCS for share %@.", v26, v27);

    goto LABEL_16;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v34 = v15;
    v37 = objc_msgSend_shareID(WeakRetained, v35, v36);
    v38 = *(a1 + 40);
    *buf = 138412546;
    v41 = v37;
    v42 = 2114;
    v43 = v38;
    _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "KRS successful for share %@ with service name %{public}@. Retrying share PCS creation.", buf, 0x16u);
  }

  v39 = 0;
  v17 = objc_msgSend__createNewSharePCSDataWithError_(WeakRetained, v16, &v39);
  v5 = v39;
  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = *(*(a1 + 48) + 16);
LABEL_17:
  v20();
}

void sub_2252121F0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v8 = objc_msgSend_encryptedPublicSharingKey(a2, v6, v7);
  (*(v4 + 16))(v4, v8, v5);
}

void sub_2252132A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak((v28 + 80));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v29 - 160));
  _Block_object_dispose((v29 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_2252132F0(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v10 = objc_msgSend_pcs(v5, v8, v9);
  if (!v6 && v10)
  {
    v13 = objc_msgSend_copy(v5, v11, v12);
    v16 = objc_msgSend_share(*(a1 + 40), v14, v15);
    v19 = objc_msgSend_currentUserParticipant(v16, v17, v18);
    v22 = objc_msgSend_role(v19, v20, v21);

    if (v22 == 1)
    {
      v23 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v24 = MEMORY[0x277CBC830];
      v25 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v65 = v25;
        v68 = objc_msgSend_shareID(WeakRetained, v66, v67);
        *buf = 138412290;
        v71 = v68;
        _os_log_debug_impl(&dword_22506F000, v65, OS_LOG_TYPE_DEBUG, "Adding invited PCS to zone PCS for zone-wide share %@", buf, 0xCu);
      }

      v28 = objc_msgSend_pcsManager(WeakRetained, v26, v27);
      v31 = objc_msgSend_pcs(*(a1 + 48), v29, v30);
      v34 = objc_msgSend_pcs(v13, v32, v33);
      v69 = 0;
      v36 = objc_msgSend_addSharePCS_toRecordPCS_error_(v28, v35, v31, v34, &v69);
      v6 = v69;

      if (v36)
      {
        if (*v23 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v39 = *v24;
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
        {
          v42 = *(a1 + 40);
          v43 = v39;
          v46 = objc_msgSend_shareID(v42, v44, v45);
          *buf = 138412290;
          v71 = v46;
          _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Updating signing key on invited pcs for zone-wide share %@", buf, 0xCu);
        }

        v47 = objc_msgSend_pcsManager(WeakRetained, v40, v41);
        v50 = objc_msgSend_pcs(*(a1 + 48), v48, v49);
        v53 = objc_msgSend_pcs(v13, v51, v52);
        LOBYTE(v50) = objc_msgSend_updateSigningIdentityOnPCS_usingSignedPCS_(v47, v54, v50, v53);

        if ((v50 & 1) != 0 || v6)
        {
          goto LABEL_22;
        }

        v55 = @"Couldn't update signing key on invited pcs for share %@";
        goto LABEL_21;
      }

      if (!v6)
      {
        v55 = @"Couldn't add invited PCS to zone PCS for zone-wide share %@";
LABEL_21:
        v56 = MEMORY[0x277CBC560];
        v57 = *MEMORY[0x277CBC120];
        v58 = objc_msgSend_shareID(WeakRetained, v37, v38);
        v6 = objc_msgSend_errorWithDomain_code_format_(v56, v59, v57, 5001, v55, v58);
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_22:
    v60 = *(*(a1 + 64) + 8);
    v61 = *(v60 + 40);
    *(v60 + 40) = v13;

    goto LABEL_23;
  }

  if (!v6)
  {
    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5001, @"Didn't get PCS data for zone %@", *(a1 + 32));
  }

LABEL_23:
  v62 = *(*(a1 + 72) + 8);
  v63 = *(v62 + 40);
  *(v62 + 40) = v6;
  v64 = v6;

  dispatch_group_leave(*(a1 + 56));
}

void sub_22521368C(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = objc_msgSend__rollShareAndZonePCSIfNeededForSharePCS_zonePCSData_(WeakRetained, v3, *(a1 + 32), *(*(*(a1 + 48) + 8) + 40));
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v9 = objc_msgSend__handleSharePCSData_zonePCSData_(v4, v8, *(a1 + 32), *(*(*(a1 + 48) + 8) + 40));
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v14 = v12;
    v17 = objc_msgSend_shareID(v4, v15, v16);
    v18 = v17;
    v19 = @" with error: ";
    v20 = *(*(*(a1 + 40) + 8) + 40);
    if (!v20)
    {
      v19 = &stru_28385ED00;
      v20 = &stru_28385ED00;
    }

    v32 = 138412802;
    v33 = v17;
    v34 = 2114;
    v35 = v19;
    v36 = 2112;
    v37 = v20;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Done updating pcs for share %@%{public}@%@", &v32, 0x20u);
  }

  v21 = *(*(*(a1 + 40) + 8) + 40);
  if (v21)
  {
    objc_msgSend_setError_(v4, v13, v21);
    objc_msgSend_setState_(v4, v22, 12);
  }

  else
  {
    objc_msgSend_setState_(v4, v13, 2);
  }

  v25 = objc_msgSend_pcsGroup(v4, v23, v24);
  dispatch_group_leave(v25);

  v28 = objc_msgSend_operation(v4, v26, v27);
  v31 = objc_msgSend_stateTransitionGroup(v28, v29, v30);
  dispatch_group_leave(v31);
}

void sub_225213D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225213D70(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (v3)
  {
    objc_msgSend_setError_(WeakRetained, v5, v3);
    objc_msgSend_setState_(v7, v8, 12);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = objc_msgSend_operation(WeakRetained, v5, v6);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_225213EA4;
    v13[3] = &unk_27854A518;
    objc_copyWeak(&v17, (a1 + 48));
    v16 = *(a1 + 40);
    v10 = v9;
    v11 = *(a1 + 32);
    v14 = v10;
    v15 = v11;
    objc_msgSend__addPublicKeyToSelfParticipantWithCompletionHandler_(v7, v12, v13);

    objc_destroyWeak(&v17);
  }
}

void sub_225213EA4(uint64_t a1, void *a2)
{
  v109 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (!v3)
  {
    v106 = 0;
    v8 = objc_msgSend__setupParticipantsProtectionInfos_(WeakRetained, v5, &v106);
    v9 = v106;
    v11 = v9;
    if (v8)
    {
      v105 = v9;
      updated = objc_msgSend__updateSharePublicPCSWithError_(v6, v10, &v105);
      v13 = v105;

      if ((updated & 1) == 0)
      {
        objc_msgSend_setError_(v6, v14, v13);
        objc_msgSend_setState_(v6, v50, 12);
        (*(*(a1 + 48) + 16))();
        v11 = v13;
        goto LABEL_37;
      }

      v104 = v13;
      v15 = objc_msgSend__serializePCSDataForShareWithError_(v6, v14, &v104);
      v11 = v104;

      if (v15)
      {
        v94 = v11;
        v17 = objc_msgSend_container(*(a1 + 32), v10, v16);
        v20 = objc_msgSend_options(v17, v18, v19);
        if (objc_msgSend_useAnonymousToServerShareParticipants(v20, v21, v22))
        {
          v25 = objc_msgSend_share(v6, v23, v24);
          v28 = objc_msgSend_currentUserParticipant(v25, v26, v27);
          v31 = objc_msgSend_role(v28, v29, v30);

          if (v31 != 1)
          {
LABEL_24:
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v51 = objc_msgSend_share(v6, v32, v33);
            v54 = objc_msgSend_addedParticipants(v51, v52, v53);

            v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v96, v107, 16);
            if (v56)
            {
              v59 = v56;
              v60 = *v97;
              do
              {
                for (i = 0; i != v59; ++i)
                {
                  if (*v97 != v60)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v62 = *(*(&v96 + 1) + 8 * i);
                  v63 = objc_msgSend_container(*(a1 + 32), v57, v58);
                  v66 = objc_msgSend_entitlements(v63, v64, v65);
                  hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v66, v67, v68);
                  objc_msgSend_setCreatedInProcess_(v62, v70, hasOutOfProcessUIEntitlement ^ 1u);
                }

                v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v96, v107, 16);
              }

              while (v59);
            }

            v73 = objc_msgSend_sharePCSData(v6, v71, v72);
            v76 = objc_msgSend_invitedPCS(v73, v74, v75);

            if (v76)
            {
              v79 = objc_msgSend_share(v6, v77, v78);
              v82 = objc_msgSend_sharePCSData(v6, v80, v81);
              v85 = objc_msgSend_invitedPCS(v82, v83, v84);
              v88 = objc_msgSend_pcsManager(v6, v86, v87);
              objc_msgSend__decryptPersonalInfoWithPCSBlob_pcsManager_(v79, v89, v85, v88);
            }

            objc_msgSend__alignParticipantPermissions(v6, v77, v78);
            if (objc_msgSend_state(v6, v90, v91) == 5)
            {
              v92 = *(a1 + 48);
              v95.receiver = *(a1 + 40);
              v95.super_class = CKDModifyShareHandler;
              objc_msgSendSuper2(&v95, sel_prepareForSaveWithCompletionHandler_, v92);
            }

            else
            {
              (*(*(a1 + 48) + 16))();
            }

            v11 = v94;
            goto LABEL_37;
          }

          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v34 = objc_msgSend_share(v6, v32, v33);
          v17 = objc_msgSend_allParticipants(v34, v35, v36);

          v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v37, &v100, v108, 16);
          if (v38)
          {
            v41 = v38;
            v93 = v6;
            v42 = *v101;
            v43 = MEMORY[0x277CBC810];
            do
            {
              for (j = 0; j != v41; ++j)
              {
                if (*v101 != v42)
                {
                  objc_enumerationMutation(v17);
                }

                v45 = *(*(&v100 + 1) + 8 * j);
                if (objc_msgSend_role(v45, v39, v40) != 1)
                {
                  objc_msgSend_setIsAnonymousInvitedParticipant_(v45, v39, 1);
                  if (*v43 == 1)
                  {
                    v46 = objc_msgSend_unitTestOverrides(*(a1 + 32), v39, v40);
                    v48 = objc_msgSend_objectForKeyedSubscript_(v46, v47, @"ForceSendPublicKeyForAnonymousParticipants");

                    if (v48)
                    {
                      objc_msgSend_setForceSendPublicKeyForAnonymousParticipants_(v45, v39, 1);
                    }
                  }
                }
              }

              v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v39, &v100, v108, 16);
            }

            while (v41);
            v6 = v93;
            v3 = 0;
          }
        }

        else
        {
        }

        goto LABEL_24;
      }
    }

    objc_msgSend_setError_(v6, v10, v11);
    objc_msgSend_setState_(v6, v49, 12);
    (*(*(a1 + 48) + 16))();
LABEL_37:

    goto LABEL_38;
  }

  objc_msgSend_setError_(WeakRetained, v5, v3);
  objc_msgSend_setState_(v6, v7, 12);
  (*(*(a1 + 48) + 16))();
LABEL_38:
}

void sub_22521460C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225214638(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!a2 || v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      v26 = v18;
      v29 = objc_msgSend_participantID(v25, v27, v28);
      v32 = objc_msgSend_shareID(WeakRetained, v30, v31);
      *buf = 138543874;
      v34 = v29;
      v35 = 2114;
      v36 = v32;
      v37 = 2114;
      v38 = v5;
      _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Failed to decrypt self participant PCS for participant %{public}@ on share %{public}@, error: %{public}@", buf, 0x20u);

      if (v5)
      {
        goto LABEL_17;
      }
    }

    else if (v5)
    {
LABEL_17:
      (*(*(a1 + 40) + 16))();

      goto LABEL_18;
    }

    v21 = MEMORY[0x277CBC560];
    v22 = *MEMORY[0x277CBC120];
    v23 = objc_msgSend_participantID(*(a1 + 32), v19, v20);
    v5 = objc_msgSend_errorWithDomain_code_format_(v21, v24, v22, 5005, @"Couldn't decrypt self PPPCS for participant %@ when setting up other participants", v23);

    goto LABEL_17;
  }

  v7 = PCSFPGetOwnerIdentity();
  WeakRetained[19] = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = WeakRetained[18];
  if (v8)
  {
    CFRetain(v8);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v14 = objc_msgSend_participantID(v10, v12, v13);
    v17 = objc_msgSend_shareID(WeakRetained, v15, v16);
    *buf = 138543874;
    v34 = a2;
    v35 = 2112;
    v36 = v14;
    v37 = 2114;
    v38 = v17;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Successfully decrypted self participant PCS %{public}@ for participant %@ on share %{public}@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_18:
}

void sub_225216FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225216FDC(uint64_t a1, char a2, void *a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = objc_msgSend_operation(WeakRetained, v7, v8);
  if (v5 || (a2 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v36 = v33;
      v39 = objc_msgSend_operationID(v11, v37, v38);
      *buf = 138543618;
      v73 = v39;
      v74 = 2112;
      v75 = v5;
      _os_log_impl(&dword_22506F000, v36, OS_LOG_TYPE_INFO, "User key sync failed for operation %{public}@ with error %@", buf, 0x16u);
    }

    if (!v5)
    {
      v40 = MEMORY[0x277CBC560];
      v41 = *MEMORY[0x277CBC120];
      v42 = objc_msgSend_shareID(WeakRetained, v34, v35);
      v5 = objc_msgSend_errorWithDomain_code_format_(v40, v43, v41, 5000, @"Couldn't get a current public CloudDocs identity for the owner on share %@", v42);
    }
  }

  else
  {
    v12 = objc_msgSend_pcsManager(WeakRetained, v9, v10);
    v13 = *(a1 + 56);
    v71 = 0;
    v15 = objc_msgSend_participantPublicKeyForServiceType_error_(v12, v14, v13, &v71);
    v5 = v71;
    v18 = objc_msgSend_userIdentity(*(a1 + 32), v16, v17);
    objc_msgSend_setPublicSharingKey_(v18, v19, v15);

    v20 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = MEMORY[0x277CBC830];
    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v25 = v22;
      v28 = objc_msgSend_operationID(v11, v26, v27);
      v29 = *(a1 + 32);
      *buf = 138543618;
      v73 = v28;
      v74 = 2112;
      v75 = v29;
      _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "User key sync succeeded for operation %{public}@. Obtained the public sharing key for participant %@ on a retry", buf, 0x16u);
    }

    v30 = objc_msgSend_protectionInfo(*(a1 + 32), v23, v24);
    if (v30)
    {
    }

    else
    {
      v44 = objc_msgSend_share(WeakRetained, v31, v32);
      v47 = objc_msgSend_addedParticipants(v44, v45, v46);
      v49 = objc_msgSend_containsObject_(v47, v48, *(a1 + 32));

      if ((v49 & 1) == 0)
      {
        objc_msgSend_setIsALegacyPublicShareThatNeedsOwnerPPPCSUpgrade_(WeakRetained, v50, 1);
        v53 = objc_msgSend_share(WeakRetained, v51, v52);
        v56 = objc_msgSend_privatePCS(v53, v54, v55);

        if (v56)
        {
          v59 = *(a1 + 32);
          v60 = objc_msgSend_share(WeakRetained, v57, v58);
          v63 = objc_msgSend_privatePCS(v60, v61, v62);
          v65 = objc_msgSend__ensurePrivateParticipant_isInInvitedSharePCS_(WeakRetained, v64, v59, v63);

          v5 = v65;
        }

        else
        {
          if (*v20 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v66 = *v21;
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
          {
            v67 = v66;
            v70 = objc_msgSend_shareID(WeakRetained, v68, v69);
            *buf = 138412290;
            v73 = v70;
            _os_log_debug_impl(&dword_22506F000, v67, OS_LOG_TYPE_DEBUG, "Couldn't get a private PCS for the share %@, so we can't upgrade our owner's PPPCS", buf, 0xCu);
          }
        }
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}