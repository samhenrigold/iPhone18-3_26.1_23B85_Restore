void sub_188629480(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

void sub_188629490(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Resuming upload queue", v6, 2u);
    if (WeakRetained)
    {
      goto LABEL_5;
    }

LABEL_8:
    objc_msgSend_setSuspended_(0, v3, 0);
    goto LABEL_6;
  }

  if (!WeakRetained)
  {
    goto LABEL_8;
  }

LABEL_5:
  objc_msgSend_setSuspended_(WeakRetained[13], v3, 0);
LABEL_6:
  sub_188629480(WeakRetained, 0);
  objc_msgSend_tickle(WeakRetained, v4, v5);
}

void sub_188629568(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  objc_msgSend_assetRepairSchedulerAllRequestsComplete_(v5, v4, *(a1 + 32));
}

void sub_1886295BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  objc_msgSend_allRemainingRequestableAssets(*(a1 + 32), a2, a3);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v32, v38, 16);
  if (v5)
  {
    v25 = 0;
    v6 = *v33;
LABEL_3:
    v7 = 0;
    v8 = v25;
    v25 += v5;
    while (1)
    {
      if (*v33 != v6)
      {
        objc_enumerationMutation(obj);
      }

      if (v8 >= *(a1 + 40))
      {
        break;
      }

      v9 = *(*(&v32 + 1) + 8 * v7);
      v10 = sub_188627CB8(*(a1 + 32));
      v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v9);

      objc_initWeak(&location, *(a1 + 32));
      v13 = sub_1886284F0(*(a1 + 32));
      objc_msgSend_addObject_(v13, v14, v9);

      v15 = [CKRequestAssetOperation alloc];
      v17 = objc_msgSend_initWithAssetMetadata_requestCallback_(v15, v16, v9, v12);
      objc_initWeak(&from, v17);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_188629904;
      v27[3] = &unk_1E70BF290;
      objc_copyWeak(&v28, &location);
      objc_copyWeak(&v29, &from);
      v27[4] = v9;
      objc_msgSend_setAssetRequestCompletionBlock_(v17, v18, v27);
      objc_msgSend_setCompletionBlock_(v17, v19, &unk_1EFA2F608);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v20 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v9;
        _os_log_impl(&dword_1883EA000, v20, OS_LOG_TYPE_INFO, "Enqueueing asset request for %@", buf, 0xCu);
      }

      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = v21[12];
      }

      v22 = v21;
      objc_msgSend_addOperation_(v22, v23, v17);

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v28);
      objc_destroyWeak(&from);

      objc_destroyWeak(&location);
      ++v8;
      if (v5 == ++v7)
      {
        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v32, v38, 16);
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_1886298C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_188629904(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v8)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_data_repair;
      if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v12 = *(a1 + 32);
      *buf = 138412546;
      v34 = v12;
      v35 = 2112;
      v36 = v8;
      _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Asset request operation for %@ completed with error: %@", buf, 0x16u);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

LABEL_9:
    v13 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 32);
      *buf = 138412290;
      v34 = v24;
      _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "Asset request operation for %@ completed", buf, 0xCu);
    }

    v14 = WeakRetained[10];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188629CAC;
    block[3] = &unk_1E70BF268;
    v15 = *(a1 + 32);
    block[4] = WeakRetained;
    block[5] = v15;
    v32 = a3;
    v29 = v10;
    v30 = v8;
    v31 = v7;
    dispatch_sync(v14, block);
    v16 = WeakRetained[10];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_188629E30;
    v27[3] = &unk_1E70BEEC0;
    v17 = *(a1 + 32);
    v27[4] = WeakRetained;
    v27[5] = v17;
    dispatch_async(v16, v27);
    v20 = objc_msgSend_delegate(WeakRetained, v18, v19);

    if (v20)
    {
      v21 = WeakRetained[11];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_188629E40;
      v26[3] = &unk_1E70BF240;
      v22 = *(a1 + 32);
      v26[4] = WeakRetained;
      v26[5] = v22;
      v26[6] = a3;
      dispatch_async(v21, v26);
    }

    goto LABEL_18;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v23 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
  {
    v25 = *(a1 + 32);
    *buf = 138412290;
    v34 = v25;
    _os_log_error_impl(&dword_1883EA000, v23, OS_LOG_TYPE_ERROR, "Asset request operation for %@ no longer has a reference to self", buf, 0xCu);
  }

LABEL_18:
}

void sub_188629CAC(uint64_t a1)
{
  v2 = sub_1886284F0(*(a1 + 32));
  objc_msgSend_removeObject_(v2, v3, *(a1 + 40));

  v4 = *(a1 + 72);
  if ((objc_msgSend_isCancelled(*(a1 + 48), v5, v6) & 1) != 0 || (objc_msgSend_code(*(a1 + 56), v7, v8) != 1 ? (v9 = v4 == 2) : (v9 = 1), v9))
  {
    v17 = sub_188627CB8(*(a1 + 32));
    objc_msgSend_removeObjectForKey_(v17, v10, *(a1 + 40));
  }

  else
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        v13 = *(a1 + 64);
        v14 = v11;
        if (v12)
        {
          v15 = *(v12 + 80);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = sub_18862BEBC;
          v18[3] = &unk_1E70BC360;
          v19 = v13;
          v20 = v12;
          v21 = v14;
          ck_call_or_dispatch_sync_if_not_key(v15, (v12 + 80), v18);
        }
      }

      return;
    }

    v17 = sub_18862863C(*(a1 + 32));
    objc_msgSend_addObject_(v17, v16, *(a1 + 40));
  }
}

void sub_188629E40(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  objc_msgSend_assetRepairScheduler_completedRequestWithMetadata_result_(v5, v4, *(a1 + 32), *(a1 + 40), *(a1 + 48));
}

void sub_188629E98()
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v0 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1883EA000, v0, OS_LOG_TYPE_INFO, "Asset request completed", v1, 2u);
  }
}

void sub_188629F30(uint64_t a1, const char *a2, uint64_t a3)
{
  v127 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_allRemainingUploadableAssets(*(a1 + 32), a2, a3);
  v92 = objc_msgSend_set(MEMORY[0x1E695DFA8], v5, v6);
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = v4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v118, v126, 16);
  if (v10)
  {
    v11 = 0;
    v12 = *v119;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v119 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v118 + 1) + 8 * v13);
      v15 = objc_msgSend_count(v92, v8, v9);
      if (v15 >= objc_msgSend_repairBatchCountLimit(*(a1 + 32), v16, v17))
      {
        break;
      }

      objc_opt_self();
      v18 = sub_188628578(*(a1 + 32));
      v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v14);

      v21 = objc_opt_class();
      v23 = objc_msgSend_estimatedSizeForAssetOrPackage_(v21, v22, v20);
      objc_msgSend_count(v92, v24, v25);
      objc_opt_self();
      v27 = v23 + v11;
      if (v27 >> 22 <= 0x18)
      {
        objc_msgSend_addObject_(v92, v26, v14);
        v11 = v27;
      }

      if (v10 == ++v13)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v118, v126, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!objc_msgSend_count(v92, v28, v29))
  {
    goto LABEL_47;
  }

  v97 = objc_opt_new();
  v95 = objc_opt_new();
  v96 = objc_opt_new();
  v94 = objc_opt_new();
  v93 = objc_opt_new();
  v91 = objc_opt_new();
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v30 = v92;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v114, v125, 16);
  if (!v32)
  {
    goto LABEL_27;
  }

  v33 = *v115;
  do
  {
    for (i = 0; i != v32; ++i)
    {
      if (*v115 != v33)
      {
        objc_enumerationMutation(v30);
      }

      v35 = *(*(&v114 + 1) + 8 * i);
      v36 = sub_188628578(*(a1 + 32));
      v38 = objc_msgSend_objectForKeyedSubscript_(v36, v37, v35);

      if (v38)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v42 = v96;
        v41 = v97;
        if (isKindOfClass & 1) != 0 || (objc_opt_class(), v43 = objc_opt_isKindOfClass(), v42 = v94, v41 = v95, (v43))
        {
          objc_msgSend_addObject_(v41, v39, v38);
LABEL_21:
          objc_msgSend_addObject_(v42, v44, v35);
        }
      }

      else
      {
        v45 = sub_18862863C(*(a1 + 32));
        v47 = objc_msgSend_containsObject_(v45, v46, v35);

        if (v47)
        {
          objc_opt_class();
          v42 = v93;
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_21;
          }

          objc_opt_class();
          v42 = v91;
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_21;
          }
        }
      }
    }

    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v48, &v114, v125, 16);
  }

  while (v32);
LABEL_27:

  v49 = [CKRepairAssetsOperation alloc];
  v51 = objc_msgSend_initWithAssets_packages_assetMetadata_packageMetadata_unavailableAssets_unavailablePackages_(v49, v50, v97, v95, v96, v94, v93, v91);
  v53 = objc_msgSend_createRepairOperationGroupWithName_(CKAssetRepairOperationUtilities, v52, @"Data Repair");
  objc_msgSend_setGroup_(v51, v54, v53);

  v57 = objc_msgSend_privateCloudDatabase(*(a1 + 40), v55, v56);
  objc_msgSend_setDatabase_(v51, v58, v57);

  v60 = *(a1 + 32);
  if (v60)
  {
    objc_msgSend_setUploadRequestConfiguration_(v51, v59, *(v60 + 72));
  }

  else
  {
    objc_msgSend_setUploadRequestConfiguration_(v51, v59, 0);
  }

  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v51);
  v110[0] = 0;
  v110[1] = v110;
  v110[2] = 0x3032000000;
  v110[3] = sub_1883EE134;
  v110[4] = sub_1883EF75C;
  v111 = 0;
  v108[0] = 0;
  v108[1] = v108;
  v108[2] = 0x2020000000;
  v109 = 1;
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = sub_18862A78C;
  v105[3] = &unk_1E70BF308;
  objc_copyWeak(&v106, &location);
  objc_copyWeak(&v107, &from);
  v105[4] = v110;
  v105[5] = v108;
  objc_msgSend_setRepairAssetsCompletionBlock_(v51, v61, v105);
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = sub_18862B31C;
  v103[3] = &unk_1E70BF330;
  objc_copyWeak(&v104, &location);
  v103[4] = v108;
  v103[5] = v110;
  objc_msgSend_setCompletionBlock_(v51, v62, v103);
  v65 = objc_msgSend_delegate(*(a1 + 32), v63, v64);

  if (v65)
  {
    v68 = objc_msgSend_includedMetadata(v51, v66, v67);
    v71 = objc_msgSend_count(v68, v69, v70);

    v72 = *(a1 + 32);
    if (v72)
    {
      v73 = *(v72 + 88);
    }

    else
    {
      v73 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_18862B408;
    block[3] = &unk_1E70BF2B8;
    block[4] = v72;
    block[5] = v71;
    dispatch_async(v73, block);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v74 = objc_msgSend_includedMetadata(v51, v66, v67);
  v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v98, v124, 16);
  if (v76)
  {
    v77 = *v99;
    do
    {
      for (j = 0; j != v76; ++j)
      {
        if (*v99 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = *(*(&v98 + 1) + 8 * j);
        v80 = sub_188628534(*(a1 + 32));
        objc_msgSend_addObject_(v80, v81, v79);
      }

      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v82, &v98, v124, 16);
    }

    while (v76);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v83 = ck_log_facility_data_repair;
  if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
  {
    v86 = objc_msgSend_includedMetadata(v51, v84, v85);
    *buf = 138412290;
    v123 = v86;
    _os_log_impl(&dword_1883EA000, v83, OS_LOG_TYPE_INFO, "Enqueueing asset upload for %@", buf, 0xCu);
  }

  v87 = *(a1 + 32);
  if (v87)
  {
    v87 = v87[13];
  }

  v88 = v87;
  objc_msgSend_addOperation_(v88, v89, v51);

  objc_destroyWeak(&v104);
  objc_destroyWeak(&v107);
  objc_destroyWeak(&v106);
  _Block_object_dispose(v108, 8);
  _Block_object_dispose(v110, 8);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

LABEL_47:
}

void sub_18862A718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id location, id a58)
{
  objc_destroyWeak((v59 + 48));
  objc_destroyWeak((v58 + 56));
  objc_destroyWeak((v58 + 48));
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a58);
  _Unwind_Resume(a1);
}

void sub_18862A78C(uint64_t a1, void *a2)
{
  v91 = *MEMORY[0x1E69E9840];
  v67 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v66 = a1;
  v5 = objc_loadWeakRetained((a1 + 56));
  v6 = v5;
  v68 = WeakRetained;
  if (WeakRetained)
  {
    v65 = v5;
    if (v67)
    {
      objc_storeStrong((*(*(v66 + 32) + 8) + 40), a2);
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v9 = objc_msgSend_includedMetadata(v65, v7, v8);
      v11 = 0;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v81, v90, 16);
      if (v13)
      {
        v14 = *v82;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v82 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v16 = objc_msgSend_objectForKeyedSubscript_(*(v68 + 16), v12, *(*(&v81 + 1) + 8 * i));
            v19 = objc_msgSend_integerValue(v16, v17, v18);

            if (v11 <= v19)
            {
              v11 = v19;
            }
          }

          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v81, v90, 16);
        }

        while (v13);
      }

      if (objc_msgSend_errorIsRetriableInNearFuture_(CKAssetRepairOperationUtilities, v20, v67) && v11 < objc_msgSend_repairRetryCount(v68, v21, v22))
      {
        *(*(*(v66 + 40) + 8) + 24) = 0;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v25 = objc_msgSend_includedMetadata(v65, v23, v24);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v77, v89, 16);
        if (v27)
        {
          v28 = *v78;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v78 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v77 + 1) + 8 * j);
              v31 = MEMORY[0x1E696AD98];
              v32 = *(v68 + 16);
              v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, v30);
              v37 = objc_msgSend_integerValue(v34, v35, v36);
              v39 = objc_msgSend_numberWithInteger_(v31, v38, v37 + 1);
              objc_msgSend_setObject_forKeyedSubscript_(*(v68 + 16), v40, v39, v30);
            }

            v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v41, &v77, v89, 16);
          }

          while (v27);
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v42 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
        {
          v43 = v42;
          v46 = objc_msgSend_includedMetadata(v65, v44, v45);
          *buf = 138412546;
          v86 = v46;
          v87 = 2112;
          v88 = v67;
          _os_log_error_impl(&dword_1883EA000, v43, OS_LOG_TYPE_ERROR, "Could not upload assets for %@, but will try again: %@", buf, 0x16u);
        }
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v47 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
        {
          v48 = v47;
          v51 = objc_msgSend_includedMetadata(v65, v49, v50);
          *buf = 138412546;
          v86 = v51;
          v87 = 2112;
          v88 = v67;
          _os_log_error_impl(&dword_1883EA000, v48, OS_LOG_TYPE_ERROR, "Could not upload assets for %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v52 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v61 = v52;
        v64 = objc_msgSend_includedMetadata(v65, v62, v63);
        *buf = 138412290;
        v86 = v64;
        _os_log_debug_impl(&dword_1883EA000, v61, OS_LOG_TYPE_DEBUG, "Completed upload for assets %@", buf, 0xCu);
      }
    }

    v53 = *(*(*(v66 + 40) + 8) + 24);
    v54 = v68 + 80;
    v55 = *(v68 + 10);
    if (v53 == 1)
    {
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = sub_18862AE28;
      v75[3] = &unk_1E70BF2E0;
      v56 = &v76;
      objc_copyWeak(&v76, (v66 + 56));
      v75[4] = v68;
      ck_call_or_dispatch_async_if_not_key(v55, v54, v75);

      v59 = objc_msgSend_delegate(v68, v57, v58);

      if (!v59)
      {
LABEL_38:
        objc_destroyWeak(v56);
        v6 = v65;
        goto LABEL_39;
      }

      v60 = *(v68 + 11);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_18862B044;
      block[3] = &unk_1E70BC360;
      v72 = v65;
      v73 = v67;
      v74 = v68;
      dispatch_async(v60, block);

      v55 = v72;
    }

    else
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = sub_18862B1F8;
      v69[3] = &unk_1E70BF2E0;
      v56 = &v70;
      objc_copyWeak(&v70, (v66 + 56));
      v69[4] = v68;
      ck_call_or_dispatch_async_if_not_key(v55, v54, v69);
    }

    goto LABEL_38;
  }

LABEL_39:
}

void sub_18862AE28(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_includedMetadata(WeakRetained, v3, v4);

  obj = v5;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v27, v33, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = sub_188628534(*(a1 + 32));
        objc_msgSend_removeObject_(v12, v13, v11);

        v14 = sub_188627CB8(*(a1 + 32));
        objc_msgSend_removeObjectForKey_(v14, v15, v11);

        v16 = *(a1 + 32);
        v17 = v11;
        v18 = v17;
        if (v16)
        {
          v19 = *(v16 + 80);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = sub_18862C1E8;
          v31[3] = &unk_1E70BEEC0;
          v31[4] = v16;
          v32 = v17;
          ck_call_or_dispatch_sync_if_not_key(v19, (v16 + 80), v31);
        }

        v20 = sub_18862863C(*(a1 + 32));
        objc_msgSend_removeObject_(v20, v21, v18);

        v23 = *(a1 + 32);
        if (v23)
        {
          objc_msgSend_removeObjectForKey_(*(v23 + 128), v22, v18);
        }

        else
        {
          objc_msgSend_removeObjectForKey_(0, v22, v18);
        }

        ++v10;
      }

      while (v8 != v10);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v27, v33, 16);
      v8 = v25;
    }

    while (v25);
  }
}

void sub_18862B044(uint64_t a1, const char *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = objc_msgSend_includedMetadata(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v28, v32, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = *(a1 + 40);
        if (v13)
        {
          v16 = objc_msgSend_code(v13, v7, v8);
          v17 = *(a1 + 40);
          if (v16 == 2)
          {
            v18 = objc_msgSend_userInfo(v17, v14, v15);
            v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"CKPartialErrors");
            v23 = objc_msgSend_repairZoneRecordID(v12, v21, v22);
            v25 = objc_msgSend_objectForKeyedSubscript_(v20, v24, v23);
          }

          else
          {
            v25 = v17;
          }
        }

        else
        {
          v25 = 0;
        }

        v26 = objc_msgSend_delegate(*(a1 + 48), v7, v8);
        objc_msgSend_assetRepairScheduler_completedRepairWithMetadata_error_(v26, v27, *(a1 + 48), v12, v25);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v28, v32, 16);
    }

    while (v9);
  }
}

void sub_18862B1F8(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_includedMetadata(WeakRetained, v3, v4, 0);

  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = sub_188628534(*(a1 + 32));
        objc_msgSend_removeObject_(v12, v13, v11);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v14, &v15, v19, 16);
    }

    while (v8);
  }
}

void sub_18862B31C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_INFO, "Asset upload completed", v6, 2u);
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    objc_msgSend_tickle(WeakRetained, v4, v5);
  }

  else
  {
    sub_18862868C(WeakRetained, 2, *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_18862B408(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  objc_msgSend_assetRepairScheduler_preparingRepairWithIncludedMetadataCount_(v5, v4, *(a1 + 32), *(a1 + 40));
}

void sub_18862B4E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_temporaryAssetDirectory(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v5, v6);
    v10 = objc_msgSend_temporaryAssetDirectory(*(a1 + 32), v8, v9);
    v12 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v7, v11, v10, 0, 0, &unk_1EFA2F628);

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v12;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v31, v39, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v32;
      *&v17 = 138543618;
      v29 = v17;
      do
      {
        v20 = 0;
        do
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v31 + 1) + 8 * v20);
          v30 = 0;
          v22 = objc_msgSend_removeItemAtURL_error_(v7, v16, v21, &v30, v29);
          v23 = v30;
          if (v23 || (v22 & 1) == 0)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v24 = ck_log_facility_data_repair;
            if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
            {
              v25 = v24;
              v28 = objc_msgSend_CKSanitizedPath(v21, v26, v27);
              *buf = v29;
              v36 = v28;
              v37 = 2112;
              v38 = v23;
              _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Error removing repair scheduler cache file at %{public}@: %@", buf, 0x16u);
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v31, v39, 16);
      }

      while (v18);
    }
  }
}

uint64_t sub_18862B734(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
  {
    v8 = v6;
    v11 = objc_msgSend_CKSanitizedPath(v4, v9, v10);
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = v5;
    _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, "Error enumerating repair scheduler cache directory at %{public}@: %@", &v12, 0x16u);
  }

  return 1;
}

void sub_18862BEBC(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v26 = 0;
  v6 = objc_msgSend_clonedAsset_withError_(v3, v5, v4, &v26);
  v7 = v26;
  if (v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v28 = v9;
      v29 = 2112;
      v30 = v7;
      _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, "Unexpected error when cloning asset or package %@: %@", buf, 0x16u);
    }
  }

  else if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 40);
      v19 = v10;
      v22 = objc_msgSend_temporaryAssetDirectory(v18, v20, v21);
      v25 = objc_msgSend_CKSanitizedPath(v22, v23, v24);
      *buf = 138412546;
      v28 = v6;
      v29 = 2114;
      v30 = v25;
      _os_log_debug_impl(&dword_1883EA000, v19, OS_LOG_TYPE_DEBUG, "Cloned asset or package %@ to directory %{public}@", buf, 0x16u);
    }

    v11 = v6;

    v2 = v11;
  }

  if (v2 == *(a1 + 32))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Repair scheduler will attempt to upload non-cloned asset", buf, 2u);
    }
  }

  v13 = sub_188628578(*(a1 + 40));
  objc_msgSend_setObject_forKeyedSubscript_(v13, v14, v2, *(a1 + 48));

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v15 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    *buf = 138412546;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
    _os_log_debug_impl(&dword_1883EA000, v15, OS_LOG_TYPE_DEBUG, "Repair scheduler cached asset %@ for metadata %@", buf, 0x16u);
  }
}

void sub_18862C1E8(uint64_t a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = sub_188628578(*(a1 + 32));
  v4 = objc_msgSend_objectForKeyedSubscript_(v2, v3, *(a1 + 40));

  v69 = a1;
  v7 = objc_msgSend_temporaryAssetDirectory(*(a1 + 32), v5, v6);

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v4;
      v11 = objc_msgSend_fileURL(v8, v9, v10);
      v14 = objc_msgSend_path(v11, v12, v13);
      v17 = objc_msgSend_temporaryAssetDirectory(*(a1 + 32), v15, v16);
      v20 = objc_msgSend_path(v17, v18, v19);
      hasPrefix = objc_msgSend_hasPrefix_(v14, v21, v20);

      if (!hasPrefix)
      {
LABEL_38:

        goto LABEL_39;
      }

      v25 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v23, v24);
      v28 = objc_msgSend_fileURL(v8, v26, v27);
      v75 = 0;
      objc_msgSend_removeItemAtURL_error_(v25, v29, v28, &v75);
      v30 = v75;

      if (v30)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v31 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v78 = v8;
          *&v78[8] = 2112;
          *&v78[10] = v30;
          _os_log_error_impl(&dword_1883EA000, v31, OS_LOG_TYPE_ERROR, "Error deleting cached asset %@: %@", buf, 0x16u);
        }
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v62 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v78 = v8;
          _os_log_debug_impl(&dword_1883EA000, v62, OS_LOG_TYPE_DEBUG, "Deleted cached asset %@", buf, 0xCu);
        }

        v30 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_39;
      }

      v67 = v4;
      v66 = v4;
      objc_msgSend_itemEnumerator(v66, v32, v33);
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = v74 = 0u;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v71, v76, 16);
      if (v35)
      {
        v38 = v35;
        v39 = 0;
        v40 = *v72;
        while (2)
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v72 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*(&v71 + 1) + 8 * i);
            v43 = objc_msgSend_fileURL(v42, v36, v37);
            v46 = objc_msgSend_path(v43, v44, v45);
            v49 = objc_msgSend_temporaryAssetDirectory(*(v69 + 32), v47, v48);
            v52 = objc_msgSend_path(v49, v50, v51);
            v54 = objc_msgSend_hasPrefix_(v46, v53, v52);

            if (v54)
            {
              v55 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v36, v37);
              v58 = objc_msgSend_fileURL(v42, v56, v57);
              v70 = 0;
              objc_msgSend_removeItemAtURL_error_(v55, v59, v58, &v70);
              v60 = v70;

              if (v60)
              {
                if (ck_log_initialization_predicate != -1)
                {
                  dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                }

                v4 = v67;
                v30 = obj;
                v61 = ck_log_facility_data_repair;
                if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *v78 = v42;
                  *&v78[8] = 2112;
                  *&v78[10] = v60;
                  _os_log_error_impl(&dword_1883EA000, v61, OS_LOG_TYPE_ERROR, "Error deleting cached package item %@: %@", buf, 0x16u);
                }

                goto LABEL_37;
              }

              ++v39;
            }
          }

          v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v71, v76, 16);
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v39 = 0;
      }

      v30 = obj;

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v63 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        *v78 = v39;
        *&v78[4] = 2112;
        *&v78[6] = v66;
        _os_log_debug_impl(&dword_1883EA000, v63, OS_LOG_TYPE_DEBUG, "Deleted %d items from cached package %@", buf, 0x12u);
      }

      v4 = v67;
    }

LABEL_37:

    goto LABEL_38;
  }

LABEL_39:
  if (v4)
  {
    v64 = sub_188628578(*(v69 + 32));
    objc_msgSend_removeObjectForKey_(v64, v65, *(v69 + 40));
  }
}

void sub_18862C8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18862C8E8(uint64_t a1)
{
  v2 = sub_188628470(*(a1 + 32));
  v5 = objc_msgSend_mutableCopy(v2, v3, v4);

  v6 = sub_1886285BC(*(a1 + 32));
  objc_msgSend_minusSet_(v5, v7, v6);

  v8 = sub_18862863C(*(a1 + 32));
  objc_msgSend_minusSet_(v5, v9, v8);

  v10 = sub_1886284F0(*(a1 + 32));
  objc_msgSend_minusSet_(v5, v11, v10);

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
}

void sub_18862CAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18862CAD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3);
  v5 = sub_1886285BC(*(a1 + 32));
  objc_msgSend_unionSet_(v4, v6, v5);

  v7 = sub_18862863C(*(a1 + 32));
  objc_msgSend_unionSet_(v4, v8, v7);

  v9 = sub_188628534(*(a1 + 32));
  objc_msgSend_minusSet_(v4, v10, v9);

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v4;
}

void sub_18862CB94(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = sub_188628578(*(a1 + 32));
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v15, v19, 16);
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = sub_188628578(*(a1 + 32));
        v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v8, v15);

        v12 = objc_opt_class();
        *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_estimatedSizeForAssetOrPackage_(v12, v13, v11);

        ++v7;
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v14, &v15, v19, 16);
    }

    while (v5);
  }
}

void sub_18862CCD8(uint64_t a1)
{
  v4 = sub_188628578(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_count(v4, v2, v3);
}

void sub_18862CE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18862CE60(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  if (v5)
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained((v4 + 64));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = NSTemporaryDirectory();
    v15 = objc_msgSend_stringByAppendingPathComponent_(v13, v14, @"com.apple.cloudkit.upload-request.cache");

    v18 = objc_msgSend_primaryIdentifier(v12, v16, v17);
    v20 = objc_msgSend_stringByAppendingPathComponent_(v15, v19, v18);

    v22 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v21, v20, 1);
    v23 = *(a1 + 32);
    v24 = *(v23 + 48);
    *(v23 + 48) = v22;

    v5 = *(*(a1 + 32) + 48);
    if (!v5)
    {
      v10 = 0;
LABEL_8:
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
      return;
    }

LABEL_2:
    v6 = objc_msgSend_path(v5, a2, a3);
    v26 = 0;
    v7 = CKCreateDirectoryAtPathWithAttributes(v6, 0, &v26);
    v8 = v26;

    if ((v7 & 1) == 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v9 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v28 = v8;
        _os_log_fault_impl(&dword_1883EA000, v9, OS_LOG_TYPE_FAULT, "Could not create temporary asset directory: %@", buf, 0xCu);
      }
    }

    v10 = *(*(a1 + 32) + 48);
    goto LABEL_8;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v25 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v25, OS_LOG_TYPE_DEBUG, "Not returning temporary asset directory due to nil container", buf, 2u);
  }
}

void sub_18862DC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18862DC7C(uint64_t a1, void *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (objc_msgSend_isCancelled(WeakRetained, v7, v8))
    {
      v12 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v10, @"CKInternalErrorDomain", 1, @"Asset request operation was cancelled");
    }

    else
    {
      v12 = 0;
    }

    v15 = objc_msgSend_metadata(v9, v10, v11);
    switch(a3)
    {
      case 2:
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v17 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v18 = "Requested asset delayed with try again later";
          a3 = 2;
LABEL_47:
          _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, v18, buf, 2u);
          break;
        }

        a3 = 2;
        break;
      case 1:
        goto LABEL_43;
      case 0:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v19 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
          {
            v31 = v19;
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            *buf = 138543362;
            v38 = v33;
            _os_log_error_impl(&dword_1883EA000, v31, OS_LOG_TYPE_ERROR, "Expected asset in asset request response, but received %{public}@, so treating as unavailable", buf, 0xCu);

            if (v12)
            {
              goto LABEL_43;
            }
          }

          else if (v12)
          {
            goto LABEL_43;
          }

          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v22, @"CKInternalErrorDomain", 10004, @"Expected asset in asset request response, but received %@", v21);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            if (v5)
            {
              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
              }

              v16 = ck_log_facility_data_repair;
              if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1883EA000, v16, OS_LOG_TYPE_INFO, "Requested asset available", buf, 2u);
              }

              a3 = 0;
              break;
            }

            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v23 = ck_log_facility_data_repair;
            if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1883EA000, v23, OS_LOG_TYPE_ERROR, "Expected asset or package in asset request response, but received nil, so treating as unavailable", buf, 2u);
              if (v12)
              {
                goto LABEL_43;
              }

              goto LABEL_36;
            }

            if (!v12)
            {
LABEL_36:
              v12 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v24, @"CKInternalErrorDomain", 10004, @"Expected package in asset request response, but received nil");
            }

LABEL_43:
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v17 = ck_log_facility_data_repair;
            a3 = 1;
            if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
            {
              break;
            }

            *buf = 0;
            v18 = "Requested asset not available";
            a3 = 1;
            goto LABEL_47;
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v25 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
          {
            v34 = v25;
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            *buf = 138543362;
            v38 = v36;
            _os_log_error_impl(&dword_1883EA000, v34, OS_LOG_TYPE_ERROR, "Expected package in asset request response, but received %{public}@, so treating as unavailable", buf, 0xCu);

            if (v12)
            {
              goto LABEL_43;
            }
          }

          else if (v12)
          {
            goto LABEL_43;
          }

          v26 = objc_opt_class();
          v21 = NSStringFromClass(v26);
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v27, @"CKInternalErrorDomain", 10004, @"Expected package in asset request response, but received %@", v21);
        }
        v12 = ;

        goto LABEL_43;
    }

    objc_msgSend_setState_(v9, v14, 2);
    v30 = objc_msgSend_assetRequestCompletionBlock(v9, v28, v29);
    (v30)[2](v30, v5, a3, v12);

    goto LABEL_49;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v13 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1883EA000, v13, OS_LOG_TYPE_ERROR, "Attempted to process asset request response, but operation was nil", buf, 2u);
  }

LABEL_49:
}

void sub_18862FF94(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Fetching server changes manually", buf, 2u);
  }

  v3 = objc_opt_new();
  objc_msgSend_setForceFetchChanges_(v3, v4, 1);
  v7 = objc_msgSend_repairZoneSyncEngine(*(a1 + 32), v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1886300D0;
  v9[3] = &unk_1E70BC540;
  v10 = *(a1 + 40);
  objc_msgSend_fetchChangesWithOptions_completionHandler_(v7, v8, v3, v9);
}

void sub_1886300D0(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Fetch server changes completed with error %@", &v7, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "Fetch server changes completed successfully", &v7, 2u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void sub_1886304B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_callbackForOverridePoint(*(a1 + 32), a2, a3);

  if (!v4)
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
    objc_msgSend_setCallbackForOverridePoint_(*(a1 + 32), v8, v7);
  }

  v15 = _Block_copy(*(a1 + 40));
  v11 = objc_msgSend_callbackForOverridePoint(*(a1 + 32), v9, v10);
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v12, *(a1 + 48));
  objc_msgSend_setObject_forKeyedSubscript_(v11, v14, v15, v13);
}

void sub_188630724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863073C(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = objc_msgSend_callbackForOverridePoint(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v4, *(a1 + 48));
  v7 = objc_msgSend_objectForKeyedSubscript_(v10, v6, v5);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_188630C70(id *a1, const char *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(a1[4], a2, 0))
  {
    v4 = a1[5];
    if (!v4)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        *v76 = 0;
        _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "Asset was successfully reuploaded, so deleting persisted repair record", v76, 2u);
      }

      v20 = objc_msgSend_database(a1[4], v18, v19);
      v23 = objc_msgSend_repairZoneRecordID(a1[6], v21, v22);
      objc_msgSend_deleteRepairRecord_(v20, v24, v23);

      goto LABEL_40;
    }

    if (objc_msgSend_repairErrorShouldBeMarkedAsBroken_(CKAssetRepairOperationUtilities, v3, v4))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v5 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        *v76 = 0;
        _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "Asset was successfully marked as missing, so deleting persisted repair record", v76, 2u);
      }

      v8 = objc_msgSend_database(a1[4], v6, v7);
      v11 = objc_msgSend_repairZoneRecordID(a1[6], v9, v10);
      objc_msgSend_deleteRepairRecord_(v8, v12, v11);
    }

    else
    {
      v26 = CKCanRetryForError(a1[5]);
      v29 = objc_msgSend_database(a1[4], v27, v28);
      v32 = objc_msgSend_repairZoneRecordID(a1[6], v30, v31);
      v35 = objc_msgSend_recordName(v32, v33, v34);
      v37 = objc_msgSend_delayedSyncCountForRecordName_(v29, v36, v35);
      objc_msgSend_retryableErrorMaxRetryCount(a1[4], v38, v39);
      v41 = v40;

      if (CKErrorIsCode(a1[5], 0x14))
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v42 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
        {
          v43 = a1[5];
          *v76 = 138412290;
          *&v76[4] = v43;
          _os_log_impl(&dword_1883EA000, v42, OS_LOG_TYPE_INFO, "Received repair cancellation %@, rescheduling", v76, 0xCu);
        }

        v46 = CKRetryAfterSecondsForError(a1[5]);
        if (v46 == 0.0)
        {
          objc_msgSend_cancelledErrorRetryTime(a1[4], v44, v45);
          v46 = v47;
        }

        v48 = a1[4];
        v8 = objc_msgSend_repairZoneRecordID(a1[6], v44, v45);
        objc_msgSend_scheduleRecordRepair_withDelay_increasingCount_(v48, v49, v8, 0, v46);
        goto LABEL_38;
      }

      if (v41 > v37)
      {
        v50 = v26;
      }

      else
      {
        v50 = 0;
      }

      if (v50 == 1)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v51 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
        {
          v52 = a1[5];
          *v76 = 138412290;
          *&v76[4] = v52;
          _os_log_impl(&dword_1883EA000, v51, OS_LOG_TYPE_INFO, "Received recoverable repair error %@, rescheduling", v76, 0xCu);
        }

        v55 = CKRetryAfterSecondsForError(a1[5]);
        if (v55 == 0.0)
        {
          objc_msgSend_retryableErrorRetryTime(a1[4], v53, v54);
          v55 = v56;
        }

        v57 = a1[4];
        v8 = objc_msgSend_repairZoneRecordID(a1[6], v53, v54);
        objc_msgSend_scheduleRecordRepair_withDelay_increasingCount_(v57, v58, v8, 1, v55);
        goto LABEL_38;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v60 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        v69 = a1[6];
        v70 = v60;
        v73 = objc_msgSend_repairZoneRecordID(v69, v71, v72);
        v74 = a1[5];
        v75 = @"which is unrecoverable";
        *v76 = 138412802;
        *&v76[4] = v73;
        if (v26)
        {
          v75 = @"after several attempts";
        }

        *&v76[12] = 2112;
        *&v76[14] = v74;
        v77 = 2112;
        v78 = v75;
        _os_log_error_impl(&dword_1883EA000, v70, OS_LOG_TYPE_ERROR, "Could not recover repair record %@ with error %@ %@, so marking locally as unrecoverable", v76, 0x20u);
      }

      v8 = objc_msgSend_database(a1[4], v61, v62, *v76, *&v76[8]);
      v11 = objc_msgSend_repairZoneRecordID(a1[6], v63, v64);
      v67 = objc_msgSend_recordName(v11, v65, v66);
      objc_msgSend_markRecordNameUnrecoverable_(v8, v68, v67);
    }

LABEL_38:
    if (objc_msgSend_errorShouldTriggerNetworkReachabilityEvent_(CKAssetRepairOperationUtilities, v59, a1[5]))
    {
      objc_msgSend_dispatchEvent_(a1[4], v25, 7);
    }

LABEL_40:
    objc_msgSend_invokeCallbackForOverridePoint_withError_onCallbackQueue_(a1[4], v25, 4, a1[5], 1);
    return;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v13 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v14 = v13;
    v16 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v15, 0);
    *v76 = 138543362;
    *&v76[4] = v16;
    _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Upload request repair scheduler attempted to perform function %{public}@, but failed to do so", v76, 0xCu);
  }
}

void sub_188631430(uint64_t a1, const char *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    if (objc_msgSend_isRepairRecordActionable_(*(a1 + 32), v3, *(a1 + 40)))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v4 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v31 = *(a1 + 40);
        v32 = v4;
        v35 = objc_msgSend_recordID(v31, v33, v34);
        v41 = 138412290;
        v42 = v35;
        _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, "Sync engine: repair record %@ was fetched, persisting", &v41, 0xCu);
      }

      v7 = objc_msgSend_database(*(a1 + 32), v5, v6);
      objc_msgSend_persistRepairRecord_(v7, v8, *(a1 + 40));
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v13 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(a1 + 40);
        v37 = v13;
        v40 = objc_msgSend_recordID(v36, v38, v39);
        v41 = 138412290;
        v42 = v40;
        _os_log_debug_impl(&dword_1883EA000, v37, OS_LOG_TYPE_DEBUG, "Sync engine: repair record %@ was fetched but is not actionable, deleting", &v41, 0xCu);
      }

      v16 = objc_msgSend_database(*(a1 + 32), v14, v15);
      v19 = objc_msgSend_recordID(*(a1 + 40), v17, v18);
      objc_msgSend_deleteRepairRecord_(v16, v20, v19);

      v7 = objc_msgSend_repairProcessor(*(a1 + 32), v21, v22);
      v25 = objc_msgSend_recordID(*(a1 + 40), v23, v24);
      objc_msgSend_removeUploadRequestWithRecordID_(v7, v26, v25);
    }

    if ((objc_msgSend_ignoreUploadRequestPushNotifications(CKUploadRequestManager, v27, v28) & 1) == 0)
    {
      objc_msgSend_scheduleOrInvokeRepairsNow(*(a1 + 32), v29, v30);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v12 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v11, 0);
      v41 = 138543362;
      v42 = v12;
      _os_log_debug_impl(&dword_1883EA000, v10, OS_LOG_TYPE_DEBUG, "Sync engine did fetch record attempted to perform function %{public}@, but failed to do so", &v41, 0xCu);
    }
  }
}

void sub_18863185C(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 40);
      v17 = 138412290;
      v18 = v13;
      _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Sync engine: repair record %@ was deleted", &v17, 0xCu);
    }

    v6 = objc_msgSend_database(*(a1 + 32), v4, v5);
    objc_msgSend_deleteRepairRecord_(v6, v7, *(a1 + 40));

    v10 = objc_msgSend_repairProcessor(*(a1 + 32), v8, v9);
    objc_msgSend_removeUploadRequestWithRecordID_(v10, v11, *(a1 + 40));
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v14 = v12;
      v16 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v15, 0);
      v17 = 138543362;
      v18 = v16;
      _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Sync engine record deleted attempted to perform function %{public}@, but failed to do so", &v17, 0xCu);
    }
  }
}

void sub_188631AD0(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    v10 = objc_msgSend_database(*(a1 + 32), v3, v4);
    objc_msgSend_persistSyncEngineMetadata_(v10, v5, *(a1 + 40));
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v7 = v6;
      v9 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v8, 0);
      *buf = 138543362;
      v12 = v9;
      _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "Sync engine did update metadata attempted to perform function %{public}@, but failed to do so", buf, 0xCu);
    }
  }
}

void sub_188631D58(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneName(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_repairZoneID(*(a1 + 40), v5, v6);
  v10 = objc_msgSend_zoneName(v7, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v11, v10);

  if (isEqualToString)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v13 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "Sync engine: repair zone was changed", v14, 2u);
    }
  }
}

void sub_188631F70(uint64_t a1, const char *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    v5 = objc_msgSend_zoneName(*(a1 + 40), v3, v4);
    v8 = objc_msgSend_repairZoneID(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_zoneName(v8, v9, v10);
    isEqualToString = objc_msgSend_isEqualToString_(v5, v12, v11);

    if (isEqualToString)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v23) = 0;
        _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Sync engine: repair zone was deleted", &v23, 2u);
      }

      v17 = objc_msgSend_database(*(a1 + 32), v15, v16);
      objc_msgSend_clearRepairRecords(v17, v18, v19);
      goto LABEL_8;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v17 = v20;
      v22 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v21, 0);
      v23 = 138543362;
      v24 = v22;
      _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Sync engine zone deleted attempted to perform function %{public}@, but failed to do so", &v23, 0xCu);

LABEL_8:
    }
  }
}

void sub_188632294(uint64_t a1, const char *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    v5 = objc_msgSend_zoneName(*(a1 + 40), v3, v4);
    v8 = objc_msgSend_repairZoneID(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_zoneName(v8, v9, v10);
    isEqualToString = objc_msgSend_isEqualToString_(v5, v12, v11);

    if (isEqualToString)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v23) = 0;
        _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Sync engine: repair zone was purged", &v23, 2u);
      }

      v17 = objc_msgSend_database(*(a1 + 32), v15, v16);
      objc_msgSend_clearRepairRecords(v17, v18, v19);
      goto LABEL_8;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v17 = v20;
      v22 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v21, 0);
      v23 = 138543362;
      v24 = v22;
      _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Sync engine zone purged attempted to perform function %{public}@, but failed to do so", &v23, 0xCu);

LABEL_8:
    }
  }
}

void sub_188632598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886325B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_recordType(*(a1 + 32), a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"MissingAsset");

  v9 = *(a1 + 32);
  if (isEqualToString)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(v9, v7, @"hasAssetRecovered");
    if (objc_msgSend_integerValue(v10, v11, v12) >= 1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_data_repair;
      if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v15 = *(a1 + 32);
      v16 = v14;
      v19 = objc_msgSend_recordID(v15, v17, v18);
      v59 = 138412290;
      v60 = v19;
      v20 = "Skipping asset repair record, already recovered: %@";
LABEL_28:
      _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, v20, &v59, 0xCu);

LABEL_29:
      v53 = 0;
LABEL_30:
      *(*(*(a1 + 48) + 8) + 24) = v53;

      return;
    }

    v33 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v13, @"confirmedUnrecoverableDevices");
    v36 = objc_msgSend_deviceID(*(a1 + 40), v34, v35);
    v38 = objc_msgSend_containsObject_(v33, v37, v36);

    if (v38)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v39 = ck_log_facility_data_repair;
      if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v40 = *(a1 + 32);
      v16 = v39;
      v19 = objc_msgSend_recordID(v40, v41, v42);
      v59 = 138412290;
      v60 = v19;
      v20 = "Skipping asset repair record, device identifier included: %@";
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v21 = objc_msgSend_recordType(v9, v7, v8);
  v23 = objc_msgSend_isEqualToString_(v21, v22, @"MissingPackage");

  if (v23)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v24, @"hasAssetRecovered");
    if (objc_msgSend_integerValue(v10, v25, v26) >= 1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v28 = ck_log_facility_data_repair;
      if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v29 = *(a1 + 32);
      v16 = v28;
      v19 = objc_msgSend_recordID(v29, v30, v31);
      v59 = 138412290;
      v60 = v19;
      v20 = "Skipping package repair record, already recovered: %@";
      goto LABEL_28;
    }

    v43 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v27, @"confirmedUnrecoverableDevices");
    v46 = objc_msgSend_deviceID(*(a1 + 40), v44, v45);
    v48 = objc_msgSend_containsObject_(v43, v47, v46);

    if (v48)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v49 = ck_log_facility_data_repair;
      if (!os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v50 = *(a1 + 32);
      v16 = v49;
      v19 = objc_msgSend_recordID(v50, v51, v52);
      v59 = 138412290;
      v60 = v19;
      v20 = "Skipping package repair record, device identifier included: %@";
      goto LABEL_28;
    }

LABEL_31:
    v53 = 1;
    goto LABEL_30;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v32 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v54 = *(a1 + 32);
    v55 = v32;
    v58 = objc_msgSend_recordType(v54, v56, v57);
    v59 = 138543362;
    v60 = v58;
    _os_log_debug_impl(&dword_1883EA000, v55, OS_LOG_TYPE_DEBUG, "Skipping unknown repair record with type %{public}@", &v59, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

void sub_188632B5C(uint64_t a1, const char *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 1))
  {
    v3 = *(a1 + 40);
    if (v3 < 0.0)
    {
      v3 = 0.0;
    }

    if (v3 <= 0.0)
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 + 2.0;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
    {
      v27 = 134217984;
      v28 = v4;
      _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "Scheduling upload request in %.1f seconds", &v27, 0xCu);
    }

    v6 = [CKSchedulerActivity alloc];
    v9 = objc_msgSend_activityIdentifierForSchedulingRepairs(*(a1 + 32), v7, v8);
    v12 = objc_msgSend_container(*(a1 + 32), v10, v11);
    v14 = objc_msgSend_initWithIdentifier_container_priority_(v6, v13, v9, v12, 2);

    if (v4 > 0.0)
    {
      v17 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v15, v16, v4);
      objc_msgSend_setEarliestStartDate_(v14, v18, v17);
    }

    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(empty, *MEMORY[0x1E69E9C40], MEMORY[0x1E69E9E08]);
    xpc_dictionary_set_value(empty, *MEMORY[0x1E69E9DB0], MEMORY[0x1E69E9E10]);
    objc_msgSend_setXpcActivityCriteriaOverrides_(v14, v20, empty);
    v23 = objc_msgSend_sharedScheduler(CKScheduler, v21, v22);
    objc_msgSend_submitActivity_(v23, v24, v14);

    goto LABEL_14;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v25 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v14 = v25;
    empty = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v26, 1);
    v27 = 138543362;
    v28 = *&empty;
    _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Upload request schedule repairs attempted to perform function %{public}@, but failed to do so", &v27, 0xCu);
LABEL_14:
  }
}

uint64_t sub_188632E98(uint64_t a1, const char *a2)
{
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 1))
  {
    v5 = *(a1 + 32);

    return objc_msgSend_scheduleRepairsWithDelay_(v5, v3, v4, 0.0);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "Not permitted to schedule upload requests in the current state, so attempting to process them right away", v10, 2u);
    }

    return objc_msgSend_performRepairs(*(a1 + 32), v8, v9);
  }
}

void sub_188633048(uint64_t a1, const char *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 0))
  {
    v5 = objc_msgSend_date(MEMORY[0x1E695DF00], v3, v4);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 40);
      v26 = *(a1 + 48);
      v29 = 138412546;
      v30 = v25;
      v31 = 2048;
      v32 = v26;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Persisting delayed repair for record %@ with a delay of %.1f seconds", &v29, 0x16u);
    }

    v9 = objc_msgSend_database(*(a1 + 32), v7, v8);
    v12 = objc_msgSend_recordName(*(a1 + 40), v10, v11);
    v15 = objc_msgSend_dateByAddingTimeInterval_(v5, v13, v14, *(a1 + 48));
    objc_msgSend_persistDelayedSyncForRecordName_withDate_increasingCount_(v9, v16, v12, v15, *(a1 + 56));

    v18 = objc_msgSend_nextRepairDateForDate_(*(a1 + 32), v17, v5);
    v19 = *(a1 + 32);
    objc_msgSend_timeIntervalSinceDate_(v18, v20, v5);
    if (v23 < 0.0)
    {
      v23 = 0.0;
    }

    objc_msgSend_scheduleRepairsWithDelay_(v19, v21, v22, v23);

    goto LABEL_9;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v24 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v5 = v24;
    v28 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v27, 0);
    v29 = 138543362;
    v30 = v28;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Upload request schedule record repair attempted to perform function %{public}@, but failed to do so", &v29, 0xCu);

LABEL_9:
  }
}

void sub_188633390(uint64_t a1, const char *a2, uint64_t a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_msgSend_database(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_delayedSyncRecordNamesAfterDate_(v5, v6, *(a1 + 40));
  v9 = objc_msgSend_setWithArray_(v4, v8, v7);

  v12 = objc_msgSend_assetRequestCallback(*(a1 + 32), v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_database(*(a1 + 32), v13, v14);
    v18 = objc_msgSend_assetRepairMetadata(v15, v16, v17);

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v19 = v18;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v60, v65, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v61;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v61 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = *(*(&v60 + 1) + 8 * i);
          v28 = objc_msgSend_repairZoneRecordID(v27, v22, v23);
          v31 = objc_msgSend_recordName(v28, v29, v30);
          v33 = objc_msgSend_containsObject_(v9, v32, v31);

          if ((v33 & 1) == 0)
          {
            objc_msgSend_addObject_(*(a1 + 48), v22, v27);
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v60, v65, 16);
      }

      while (v24);
    }
  }

  v34 = objc_msgSend_packageRequestCallback(*(a1 + 32), v13, v14);

  if (v34)
  {
    v37 = objc_msgSend_database(*(a1 + 32), v35, v36);
    v40 = objc_msgSend_packageRepairMetadata(v37, v38, v39);

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v41 = v40;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v56, v64, 16);
    if (v43)
    {
      v46 = v43;
      v47 = *v57;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v57 != v47)
          {
            objc_enumerationMutation(v41);
          }

          v49 = *(*(&v56 + 1) + 8 * j);
          v50 = objc_msgSend_repairZoneRecordID(v49, v44, v45, v56);
          v53 = objc_msgSend_recordName(v50, v51, v52);
          v55 = objc_msgSend_containsObject_(v9, v54, v53);

          if ((v55 & 1) == 0)
          {
            objc_msgSend_addObject_(*(a1 + 48), v44, v49);
          }
        }

        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v44, &v56, v64, 16);
      }

      while (v46);
    }
  }
}

void sub_188633784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18863379C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1886337B4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_repairableAssetsForDate_(*(a1 + 32), a2, *(a1 + 40));
  v6 = objc_msgSend_count(v3, v4, v5);

  if (v6 < 1)
  {
    v18 = objc_msgSend_database(*(a1 + 32), v7, v8);
    v14 = objc_msgSend_earliestDelayedSyncDateAfterDate_(v18, v13, *(a1 + 40));
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v12 = v18;
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 48) + 8);
    v11 = v9;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  return MEMORY[0x1EEE66BB8](v11, v12);
}

void sub_188633950(uint64_t a1, const char *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_canPerformFunction_(*(a1 + 32), a2, 2))
  {
    v5 = objc_msgSend_date(MEMORY[0x1E695DF00], v3, v4);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v30 = v5;
      _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_INFO, "Performing asset repairs with date %{public}@", buf, 0xCu);
    }

    v8 = objc_msgSend_repairableAssetsForDate_(*(a1 + 32), v7, v5);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_188633BE0;
    v28[3] = &unk_1E70BF4D8;
    v28[4] = *(a1 + 32);
    v10 = objc_msgSend_CKCompactMap_(v8, v9, v28);
    v13 = objc_msgSend_repairProcessor(*(a1 + 32), v11, v12);
    hasPendingWork = objc_msgSend_hasPendingWork(v13, v14, v15);

    v19 = objc_msgSend_repairProcessor(*(a1 + 32), v17, v18);
    objc_msgSend_addUploadRequestsWithMetadata_requestBlocks_(v19, v20, v8, v10);

    if ((hasPendingWork & 1) == 0 && !objc_msgSend_count(v8, v21, v22))
    {
      objc_msgSend_dispatchEvent_(*(a1 + 32), v23, 17);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v24 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v25 = v24;
      v27 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v26, 2);
      *buf = 138543362;
      v30 = v27;
      _os_log_debug_impl(&dword_1883EA000, v25, OS_LOG_TYPE_DEBUG, "Upload request perform repairs attempted to perform function %{public}@, but failed to do so", buf, 0xCu);
    }
  }
}

id sub_188633BE0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_assetRequestCallback(*(a1 + 32), v4, v5);
LABEL_5:
    v11 = v6;
    v12 = objc_msgSend_copy(v6, v7, v8);

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_packageRequestCallback(*(a1 + 32), v9, v10);
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

void sub_188633E20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_188633E64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"retry");

  v10 = objc_msgSend_BOOLValue(v7, v8, v9);
  objc_msgSend_respondToStateMachineAction_isRetry_(WeakRetained, v11, a2, v10);
}

void sub_188633F00(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_respondToStateMachineChangeState_enter_(WeakRetained, v3, a2, 1);
}

void sub_188633F54(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_respondToStateMachineChangeState_enter_(WeakRetained, v3, a2, 0);
}

void sub_188634078(uint64_t a1, const char *a2, uint64_t a3)
{
  v116 = *MEMORY[0x1E69E9840];
  switch(*(a1 + 40))
  {
    case 0:
      v4 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v4, sel_registerForRepairScheduler, a3);
      return;
    case 2:
      v79 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v79, sel_openSyncEngine, a3);
      return;
    case 3:
      v30 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v30, sel_closeSyncEngine, a3);
      return;
    case 4:
      v73 = objc_msgSend_database(*(a1 + 32), a2, a3);

      if (!v73)
      {
        v76 = objc_msgSend_createDatabase(*(a1 + 32), v74, v75);
        objc_msgSend_setDatabase_(*(a1 + 32), v77, v76);

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v78 = ck_log_facility_data_repair;
        if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
        {
          v99 = *(a1 + 32);
          v100 = v78;
          v103 = objc_msgSend_database(v99, v101, v102);
          v106 = objc_msgSend_databaseURL(v103, v104, v105);
          v109 = objc_msgSend_path(v106, v107, v108);
          *buf = 138543362;
          v115 = v109;
          _os_log_debug_impl(&dword_1883EA000, v100, OS_LOG_TYPE_DEBUG, "Upload request manager database initialized with path: %{public}@", buf, 0xCu);
        }
      }

      return;
    case 5:
      v31 = *(a1 + 32);

      objc_msgSend_setDatabase_(v31, a2, 0);
      return;
    case 6:
      v35 = [CKAssetRepairScheduler alloc];
      v38 = objc_msgSend_container(*(a1 + 32), v36, v37);
      v41 = objc_msgSend_repairContainerOverrides(*(a1 + 32), v39, v40);
      v43 = objc_msgSend_initWithContainer_repairContainerOverrides_(v35, v42, v38, v41);
      objc_msgSend_setRepairProcessor_(*(a1 + 32), v44, v43);

      v47 = objc_msgSend_assetRepairSchedulerRepairBatchCountLimit(*(a1 + 32), v45, v46);
      v50 = objc_msgSend_repairProcessor(*(a1 + 32), v48, v49);
      objc_msgSend_setRepairBatchCountLimit_(v50, v51, v47);

      objc_msgSend_assetRepairSchedulerDefaultSuspensionTime(*(a1 + 32), v52, v53);
      v55 = v54;
      v58 = objc_msgSend_repairProcessor(*(a1 + 32), v56, v57);
      objc_msgSend_setDefaultSuspensionTime_(v58, v59, v60, v55);

      v63 = objc_msgSend_assetRepairSchedulerRepairRetryCount(*(a1 + 32), v61, v62);
      v66 = objc_msgSend_repairProcessor(*(a1 + 32), v64, v65);
      objc_msgSend_setRepairRetryCount_(v66, v67, v63);

      v68 = *(a1 + 32);
      v110 = objc_msgSend_repairProcessor(v68, v69, v70);
      objc_msgSend_setDelegate_(v110, v71, v68);
      goto LABEL_76;
    case 7:
      v81 = objc_msgSend_repairProcessor(*(a1 + 32), a2, a3);
      objc_msgSend_setDelegate_(v81, v82, 0);

      v84 = *(a1 + 32);

      objc_msgSend_setRepairProcessor_(v84, v83, 0);
      return;
    case 8:
      v85 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v85, sel_cancelScheduledEvent, a3);
      return;
    case 9:
      v110 = objc_msgSend_repairProcessor(*(a1 + 32), a2, a3);
      objc_msgSend_cancelAllOperations(v110, v93, v94);
      goto LABEL_76;
    case 0xALL:
      v88 = objc_msgSend_database(*(a1 + 32), a2, a3);
      v91 = v88;
      if (v88)
      {
        v92 = v88;
      }

      else
      {
        v92 = objc_msgSend_createDatabase(*(a1 + 32), v89, v90);
      }

      v110 = v92;

      objc_msgSend_deleteDatabase(v110, v97, v98);
LABEL_76:

      return;
    case 0xBLL:
      v10 = objc_msgSend_sharedScheduler(CKScheduler, a2, a3);
      v13 = objc_msgSend_activityIdentifierForSchedulingRepairs(*(a1 + 32), v11, v12);
      objc_msgSend_unregisterActivityIdentifier_(v10, v14, v13);

      objc_msgSend_setHasRegisteredActivity_(*(a1 + 32), v15, 0);
      v20 = objc_msgSend_machServiceName(*(a1 + 32), v16, v17);
      if (v20)
      {
        v21 = objc_msgSend_stateQueue(*(a1 + 32), v18, v19);
        dispatch_suspend(v21);

        v24 = objc_msgSend_stateQueue(*(a1 + 32), v22, v23);
        v27 = objc_msgSend_repairContainer(*(a1 + 32), v25, v26);
        v111[0] = MEMORY[0x1E69E9820];
        v111[1] = 3221225472;
        v111[2] = sub_1886349FC;
        v111[3] = &unk_1E70BF550;
        v112 = v20;
        v113 = v24;
        v28 = v24;
        objc_msgSend_pushEnvironmentWithCompletionHandler_(v27, v29, v111);
      }

      return;
    case 0xCLL:
      v72 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v72, sel_checkNetworkReachability, a3);
      return;
    case 0xDLL:
      v33 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v33, sel_registerForNetworkReachability, a3);
      return;
    case 0xELL:
      v8 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v8, sel_unregisterFromNetworkReachability, a3);
      return;
    case 0xFLL:
      v86 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v86, sel_fetchRepairContainerMetadata, a3);
      return;
    case 0x10:
      v87 = *(a1 + 32);

      objc_msgSend_checkAccountStatus(v87, a2, a3);
      return;
    case 0x11:
      v96 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v96, sel_checkAccountID, a3);
      return;
    case 0x12:
      v95 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v95, sel_registerForAccountNotifications, a3);
      return;
    case 0x13:
      v5 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v5, sel_unregisterFromAccountNotifications, a3);
      return;
    case 0x14:
      v34 = *(a1 + 32);

      objc_msgSend_fetchServerChanges_(v34, a2, 0);
      return;
    case 0x15:
      v6 = *(a1 + 32);
      v7 = 0;
      goto LABEL_71;
    case 0x16:
      v6 = *(a1 + 32);
      v7 = 1;
LABEL_71:

      MEMORY[0x1EEE66B58](v6, sel_finishSchedulerCallbackWithDeferral_, v7);
      break;
    case 0x17:
      v32 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v32, sel_scheduleRecurringFetch, a3);
      break;
    case 0x18:
      v9 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v9, sel_scheduleNextSync, a3);
      break;
    case 0x19:
      v80 = *(a1 + 32);

      objc_msgSend_performRepairs(v80, a2, a3);
      break;
    default:
      return;
  }
}

void sub_1886349FC(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    objc_msgSend_ck_singletonConnectionForEnvironmentName_namedDelegatePort_(MEMORY[0x1E698CF30], a2, a2, *(a1 + 32));
  }

  else
  {
    objc_msgSend_ck_singletonConnectionForEnvironmentName_namedDelegatePort_(MEMORY[0x1E698CF30], 0, *MEMORY[0x1E698CF20], *(a1 + 32));
  }
  v3 = ;
  objc_msgSend__setEnabledTopics_(v3, v4, 0);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Cleared all enabled topics from connection %@", &v6, 0xCu);
  }

  dispatch_resume(*(a1 + 40));
}

uint64_t sub_188634BD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 40) == 2)
  {
    v3 = *(result + 48);
    v4 = *(result + 32);
    if (v3 == 1)
    {
      return MEMORY[0x1EEE66B58](v4, sel_registerForFetchAllNotifications, a3);
    }

    else
    {
      return MEMORY[0x1EEE66B58](v4, sel_unregisterFromFetchAllNotifications, a3);
    }
  }

  return result;
}

void sub_188634CA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_stateMachine(*(a1 + 32), a2, a3);
  objc_msgSend_dispatchEvent_(v5, v4, *(a1 + 40));
}

void sub_188634DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188634DF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_stateMachine(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_canPerformFunction_(v5, v4, *(a1 + 48));
}

void sub_188634F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_188634FC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_invokeCallbackForOverridePoint_withError_onCallbackQueue_(WeakRetained, v8, 5, 0, 0);
  if (WeakRetained)
  {
    v11 = objc_msgSend_stateQueue(WeakRetained, v9, v10);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188635150;
    block[3] = &unk_1E70BF5A0;
    block[4] = WeakRetained;
    v14 = v5;
    v15 = v6;
    dispatch_async(v11, block);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Repair XPC activity was called, but self was nil", buf, 2u);
    }

    (*(v6 + 2))(v6, 1);
  }
}

uint64_t sub_188635150(uint64_t a1, const char *a2)
{
  objc_msgSend_invokeCallbackForOverridePoint_withError_onCallbackQueue_(*(a1 + 32), a2, 6, 0, 0);
  v5 = objc_msgSend_observedRepairActivity(*(a1 + 32), v3, v4);

  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_FAULT))
    {
      *v25 = 0;
      _os_log_fault_impl(&dword_1883EA000, v7, OS_LOG_TYPE_FAULT, "Activity triggered while another activity was running", v25, 2u);
    }

    v10 = objc_msgSend_observedRepairActivity(*(a1 + 32), v8, v9);
    v11 = *(a1 + 32);
    v12 = NSStringFromSelector(sel_shouldDefer);
    objc_msgSend_removeObserver_forKeyPath_context_(v10, v13, v11, v12, qword_1EA9108E0);

    objc_msgSend_setObservedRepairActivity_(*(a1 + 32), v14, 0);
    objc_msgSend_setRepairActivityHandler_(*(a1 + 32), v15, 0);
  }

  objc_msgSend_setObservedRepairActivity_(*(a1 + 32), v6, *(a1 + 40));
  v18 = objc_msgSend_observedRepairActivity(*(a1 + 32), v16, v17);
  v19 = *(a1 + 32);
  v20 = NSStringFromSelector(sel_shouldDefer);
  objc_msgSend_addObserver_forKeyPath_options_context_(v18, v21, v19, v20, 0, qword_1EA9108E0);

  objc_msgSend_setRepairActivityHandler_(*(a1 + 32), v22, *(a1 + 48));
  return objc_msgSend_dispatchEvent_(*(a1 + 32), v23, 15);
}

void sub_188635590(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_observedRepairActivity(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  if (v4 != v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Critical error: received KVO call for scheduler activity, but activity is different from the persisted one", v8, 2u);
    }
  }

  if (*(a1 + 48) == 1)
  {
    objc_msgSend_dispatchEvent_(*(a1 + 32), v6, 16);
  }
}

void sub_188635A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_188635A30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = objc_msgSend_stateQueue(WeakRetained, v8, v9);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_188635B30;
    v12[3] = &unk_1E70BF640;
    v13 = v6;
    v14 = v10;
    v15 = v5;
    objc_copyWeak(&v16, (a1 + 32));
    dispatch_async(v11, v12);

    objc_destroyWeak(&v16);
  }
}

void sub_188635B30(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v17 = v13;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error fetching repair container device identifier: %@", buf, 0xCu);
    }

    v6 = *(a1 + 40);
    v5 = (a1 + 40);
    objc_msgSend_setDeviceID_(v6, v4, 0);
    objc_msgSend_setCachesDirectory_(*v5, v7, 0);
    objc_msgSend_dispatchEvent_(*v5, v8, 5);
  }

  else
  {
    objc_msgSend_setDeviceID_(*(a1 + 40), a2, *(a1 + 48));
    v11 = objc_msgSend_repairContainer(*(a1 + 40), v9, v10);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_188635CE0;
    v14[3] = &unk_1E70BF618;
    objc_copyWeak(&v15, (a1 + 56));
    objc_msgSend_frameworkCachesDirectoryWithCompletionHandler_(v11, v12, v14);

    objc_destroyWeak(&v15);
  }
}

void sub_188635CE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = objc_msgSend_stateQueue(WeakRetained, v8, v9);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188635DC4;
    block[3] = &unk_1E70BC360;
    v13 = v6;
    v14 = v10;
    v15 = v5;
    dispatch_async(v11, block);
  }
}

uint64_t sub_188635DC4(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error fetching repair container caches directory: %@", &v11, 0xCu);
    }

    objc_msgSend_setDeviceID_(*(a1 + 40), v4, 0);
    objc_msgSend_setCachesDirectory_(*(a1 + 40), v5, 0);
    return objc_msgSend_dispatchEvent_(*(a1 + 40), v6, 5);
  }

  else
  {
    objc_msgSend_setCachesDirectory_(*(a1 + 40), a2, *(a1 + 48));
    v9 = *(a1 + 40);

    return objc_msgSend_dispatchEvent_(v9, v8, 4);
  }
}

void sub_188635FE0(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  v6 = objc_msgSend_stateQueue(v8, v4, v5);
  dispatch_assert_queue_V2(v6);

  if ((a2 & 0x2A) != 0)
  {
    objc_msgSend_dispatchEvent_(v8, v7, 6);
  }

  else
  {
    objc_msgSend_dispatchEvent_(v8, v7, 7);
  }
}

void sub_18863631C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_msgSend_stateQueue(WeakRetained, v3, v4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1886363E4;
    block[3] = &unk_1E70BF668;
    block[4] = v5;
    objc_copyWeak(v8, (a1 + 32));
    v8[1] = *(a1 + 40);
    dispatch_async(v6, block);

    objc_destroyWeak(v8);
  }
}

void sub_1886363E4(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Received account change notification, enqueueing", buf, 2u);
  }

  v5 = objc_msgSend_scheduledAccountStatusCheck(*(a1 + 32), v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_scheduledAccountStatusCheck(*(a1 + 32), v6, v7);
    dispatch_block_cancel(v8);

    objc_msgSend_setScheduledAccountStatusCheck_(*(a1 + 32), v9, 0);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188636598;
  block[3] = &unk_1E70BC680;
  objc_copyWeak(&v17, (a1 + 40));
  v10 = dispatch_block_create(0, block);
  objc_msgSend_setScheduledAccountStatusCheck_(*(a1 + 32), v11, v10);
  v12 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  v15 = objc_msgSend_stateQueue(*(a1 + 32), v13, v14);
  dispatch_after(v12, v15, v10);

  objc_destroyWeak(&v17);
}

void sub_188636598(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Acting on account change notification", v6, 2u);
  }

  objc_msgSend_checkAccountStatus(WeakRetained, v3, v4);
  objc_msgSend_setScheduledAccountStatusCheck_(WeakRetained, v5, 0);
}

void sub_188636870(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_188636894(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = objc_msgSend_stateQueue(WeakRetained, v7, v8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188636960;
    block[3] = &unk_1E70BF240;
    v12 = v5;
    v13 = v9;
    v14 = a2;
    dispatch_async(v10, block);
  }
}

uint64_t sub_188636960(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error fetching account info in upload request manager: %@", &v9, 0xCu);
    }

    return objc_msgSend_dispatchEvent_(*(a1 + 40), v4, 10);
  }

  else
  {
    v6 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      v7 = 8;
    }

    else
    {
      v7 = 9;
    }

    return objc_msgSend_dispatchEvent_(v6, a2, v7);
  }
}

void sub_188636B8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_188636BB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = objc_msgSend_stateQueue(WeakRetained, v8, v9);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_188636CA4;
    v12[3] = &unk_1E70BF6E0;
    v13 = v6;
    v14 = v10;
    v15 = *(a1 + 32);
    v16 = v5;
    dispatch_async(v11, v12);
  }
}

void sub_188636CA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_CKClientSuitableError(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_domain(v4, v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, @"CKErrorDomain"))
  {
    if (objc_msgSend_code(v4, v9, v10) == 9)
    {

LABEL_16:
      objc_msgSend_dispatchEvent_(*(a1 + 40), v13, 9);
      goto LABEL_23;
    }

    v26 = objc_msgSend_code(v4, v11, v12);

    if (v26 == 115)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v15 = objc_msgSend_domain(v4, v13, v14);
  if (objc_msgSend_isEqualToString_(v15, v16, @"CKErrorDomain"))
  {
    if (objc_msgSend_code(v4, v17, v18) == 4)
    {

LABEL_18:
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v28 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        v30 = *(a1 + 32);
        v41 = 138412290;
        v42 = v30;
        _os_log_impl(&dword_1883EA000, v28, OS_LOG_TYPE_INFO, "Error fetching user record ID in upload request manager, treating as network unreachable: %@", &v41, 0xCu);
      }

      objc_msgSend_dispatchEvent_(*(a1 + 40), v29, 7);
      goto LABEL_23;
    }

    v27 = objc_msgSend_code(v4, v19, v20);

    if (v27 == 3)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  if (v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v23 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 32);
      v41 = 138412290;
      v42 = v40;
      _os_log_error_impl(&dword_1883EA000, v23, OS_LOG_TYPE_ERROR, "Error fetching user record ID in upload request manager: %@", &v41, 0xCu);
    }

    objc_msgSend_dispatchEvent_(*(a1 + 40), v24, 11);
  }

  else
  {
    v31 = objc_msgSend_database(*(a1 + 48), v21, v22);
    v34 = objc_msgSend_currentUser(v31, v32, v33);

    v37 = *(a1 + 56);
    if (v37)
    {
      v38 = objc_msgSend_database(*(a1 + 48), v35, v36);
      objc_msgSend_setCurrentUser_(v38, v39, v37);
    }

    if (!v34 || objc_msgSend_isEqual_(v34, v35, *(a1 + 56)))
    {
      objc_msgSend_dispatchEvent_(*(a1 + 40), v35, 12);
    }

    else
    {
      objc_msgSend_dispatchEvent_(*(a1 + 40), v35, 13);
    }
  }

LABEL_23:
  objc_msgSend_invokeCallbackForOverridePoint_withError_onCallbackQueue_(*(a1 + 48), v25, 1, *(a1 + 32), 1);
}

void sub_1886370CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1886370F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_msgSend_stateQueue(WeakRetained, v2, v3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188637190;
  v5[3] = &unk_1E70BC388;
  v5[4] = WeakRetained;
  ck_call_or_dispatch_sync_if_not_key(v4, WeakRetained + 232, v5);
}

uint64_t sub_188637190(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Manually fetching and scheduling changes via notification", v6, 2u);
  }

  return objc_msgSend_manuallyTriggerUploadRequests(*(a1 + 32), v3, v4);
}

void sub_1886389B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188638A54(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_name(v5, v7, v8);
  v11 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v10, 18);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v12, v11);

  if (isEqualToString)
  {
    v16 = objc_msgSend_userInfo(v5, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"function");
    v21 = objc_msgSend_integerValue(v18, v19, v20);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v31 = v22;
      v33 = objc_msgSend_nameFromFunction_(CKUploadRequestManagerStateMachine, v32, v21);
      *buf = 138543362;
      v39 = v33;
      _os_log_error_impl(&dword_1883EA000, v31, OS_LOG_TYPE_ERROR, "Warning: requested permission for function %{public}@, but not allowed in current state", buf, 0xCu);
    }

    v36 = @"function";
    v24 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v23, v21);
    v37 = v24;
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, &v37, &v36, 1);
    v6[2](v6, 28, v26);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v27 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v5;
      _os_log_error_impl(&dword_1883EA000, v27, OS_LOG_TYPE_ERROR, "Unhandled event %@ in state machine", buf, 0xCu);
    }

    v24 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v28, @"CKErrorDomain", 10002, @"Unhandled event %@ in state machine", v5);
    v34 = @"error";
    v35 = v24;
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, &v35, &v34, 1);
    v6[2](v6, 26, v26);
  }

  return 2;
}

uint64_t sub_188638D78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_name(v6, v7, v8);
  v11 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v10, 1);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v12, v11);

  if ((isEqualToString & 1) == 0)
  {
    v16 = objc_msgSend_name(v6, v14, v15);
    v18 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v17, 0);
    v20 = objc_msgSend_isEqualToString_(v16, v19, v18);

    if (!v20)
    {
      v22 = 1;
      goto LABEL_6;
    }

    objc_msgSend_transitionToState_withEvent_(v5, v21, *(a1 + 32), v6);
  }

  v22 = 2;
LABEL_6:

  return v22;
}

uint64_t sub_188638E74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_name(v6, v7, v8);
  v11 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v10, 2);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v12, v11);

  if (isEqualToString)
  {
    objc_msgSend_transitionToState_withEvent_(v5, v14, *(a1 + 32), v6);
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

uint64_t sub_188638F38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  v8 = objc_msgSend_name(a3, v6, v7);
  v10 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v9, 2);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v11, v10);

  if (isEqualToString)
  {
    v5[2](v5, 11, 0);
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t sub_188638FF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_name(v6, v7, v8);
  v11 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v10, 1);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v12, v11);

  if (isEqualToString)
  {
    v16 = 32;
  }

  else
  {
    v17 = objc_msgSend_name(v6, v14, v15);
    v19 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v18, 0);
    v21 = objc_msgSend_isEqualToString_(v17, v20, v19);

    if (v21)
    {
      goto LABEL_5;
    }

    v26 = objc_msgSend_name(v6, v22, v23);
    v28 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v27, 2);
    v30 = objc_msgSend_isEqualToString_(v26, v29, v28);

    if (!v30)
    {
      v24 = 1;
      goto LABEL_6;
    }

    v16 = 40;
  }

  objc_msgSend_transitionToState_withEvent_(v5, v14, *(a1 + v16), v6);
LABEL_5:
  v24 = 2;
LABEL_6:

  return v24;
}

void sub_18863913C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(*(a1[4] + 8) + 24) = 0;
  *(*(a1[5] + 8) + 24) = 0;
  *(*(a1[6] + 8) + 24) = 0;
  *(*(a1[7] + 8) + 24) = 0;
  *(*(a1[8] + 8) + 24) = 0;
  v4 = a4 + 2;
  v5 = a4[2];
  v6 = a4;
  v5();
  (*v4)(v6, 16, 0);
  (*v4)(v6, 12, 0);
}

uint64_t sub_1886391F8(void *a1, void *a2, void *a3, void *a4)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 4);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    v19 = *(a1[6] + 8);
LABEL_3:
    *(v19 + 24) = 1;
LABEL_4:
    if (*(*(a1[6] + 8) + 24) == 1 && *(*(a1[7] + 8) + 24) == 1 && *(*(a1[8] + 8) + 24) == 1)
    {
      if (*(*(a1[9] + 8) + 24) == 1 && (*(*(a1[10] + 8) + 24) & 1) != 0)
      {
        v20 = 4;
      }

      else
      {
        v20 = 5;
      }

      objc_msgSend_transitionToState_withEvent_(v7, v17, a1[v20], v8);
    }

    goto LABEL_22;
  }

  v21 = objc_msgSend_name(v8, v17, v18);
  v23 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v22, 5);
  v25 = objc_msgSend_isEqualToString_(v21, v24, v23);

  if (!v25)
  {
    v29 = objc_msgSend_name(v8, v26, v27);
    v31 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v30, 9);
    v33 = objc_msgSend_isEqualToString_(v29, v32, v31);

    if (v33)
    {
      *(*(a1[7] + 8) + 24) = 1;
      v35 = a1[9];
LABEL_16:
      *(*(v35 + 8) + 24) = 0;
      goto LABEL_4;
    }

    v36 = objc_msgSend_name(v8, v17, v34);
    v38 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v37, 8);
    v40 = objc_msgSend_isEqualToString_(v36, v39, v38);

    if (v40)
    {
      *(*(a1[7] + 8) + 24) = 1;
      v42 = a1[9];
    }

    else
    {
      v45 = objc_msgSend_name(v8, v17, v41);
      v47 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v46, 10);
      v49 = objc_msgSend_isEqualToString_(v45, v48, v47);

      if (v49)
      {
        if (*(*(a1[7] + 8) + 24))
        {
          goto LABEL_22;
        }

        v63 = @"retry";
        v64 = MEMORY[0x1E695E118];
        v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v50, &v64, &v63, 1);
        v9[2](v9, 16, v28);
        goto LABEL_13;
      }

      v52 = objc_msgSend_name(v8, v50, v51);
      v54 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v53, 6);
      v56 = objc_msgSend_isEqualToString_(v52, v55, v54);

      if (!v56)
      {
        v58 = objc_msgSend_name(v8, v17, v57);
        v60 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v59, 7);
        v62 = objc_msgSend_isEqualToString_(v58, v61, v60);

        v43 = 1;
        if (!v62)
        {
          goto LABEL_23;
        }

        *(*(a1[8] + 8) + 24) = 1;
        v35 = a1[10];
        goto LABEL_16;
      }

      *(*(a1[8] + 8) + 24) = 1;
      v42 = a1[10];
    }

    v19 = *(v42 + 8);
    goto LABEL_3;
  }

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v65 = @"retry";
    v66[0] = MEMORY[0x1E695E118];
    v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, v66, &v65, 1);
    v9[2](v9, 15, v28);
LABEL_13:
  }

LABEL_22:
  v43 = 2;
LABEL_23:

  return v43;
}

void sub_188639618(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v4 = a4 + 2;
  v5 = a4[2];
  v6 = a4;
  v5();
  (*v4)(v6, 4, 0);
  (*v4)(v6, 0, 0);
  (*v4)(v6, 2, 0);
}

void sub_1886396B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v5[2](v5, 19, 0);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v5[2](v5, 10, 0);
  }

  v5[2](v5, 5, 0);
  v5[2](v5, 1, 0);
  v5[2](v5, 3, 0);
}

uint64_t sub_188639770(void *a1, void *a2, void *a3, void *a4)
{
  v86[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 13);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    *(*(a1[7] + 8) + 24) = 1;
    objc_msgSend_transitionToState_withEvent_(v7, v17, a1[4], v8);
    goto LABEL_9;
  }

  v19 = objc_msgSend_name(v8, v17, v18);
  v21 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v20, 10);
  v23 = objc_msgSend_isEqualToString_(v19, v22, v21);

  if (v23)
  {
    v85 = @"retry";
    v86[0] = MEMORY[0x1E695E118];
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v86, &v85, 1);
    v9[2](v9, 16, v26);
LABEL_8:

    goto LABEL_9;
  }

  v27 = objc_msgSend_name(v8, v24, v25);
  v29 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v28, 11);
  v31 = objc_msgSend_isEqualToString_(v27, v30, v29);

  if (v31)
  {
    v83 = @"retry";
    v84 = MEMORY[0x1E695E118];
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, &v84, &v83, 1);
    v9[2](v9, 17, v26);
    goto LABEL_8;
  }

  v36 = objc_msgSend_name(v8, v32, v33);
  v38 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v37, 7);
  v40 = objc_msgSend_isEqualToString_(v36, v39, v38);

  if (v40)
  {
    objc_msgSend_transitionToState_withEvent_(v7, v41, a1[5], v8);
    goto LABEL_9;
  }

  v43 = objc_msgSend_name(v8, v41, v42);
  v45 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v44, 15);
  v47 = objc_msgSend_isEqualToString_(v43, v46, v45);

  if (v47)
  {
    v9[2](v9, 21, 0);
    goto LABEL_9;
  }

  v50 = objc_msgSend_name(v8, v48, v49);
  v52 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v51, 2);
  v54 = objc_msgSend_isEqualToString_(v50, v53, v52);

  if (v54)
  {
    v9[2](v9, 8, 0);
    objc_msgSend_transitionToState_withEvent_(v7, v57, a1[6], v8);
    goto LABEL_9;
  }

  v58 = objc_msgSend_name(v8, v55, v56);
  v60 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v59, 14);
  v62 = objc_msgSend_isEqualToString_(v58, v61, v60);

  if (v62)
  {
    v9[2](v9, 20, 0);
    goto LABEL_9;
  }

  v65 = objc_msgSend_name(v8, v63, v64);
  v67 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v66, 18);
  v69 = objc_msgSend_isEqualToString_(v65, v68, v67);

  if (!v69)
  {
    v34 = 1;
    goto LABEL_10;
  }

  v72 = objc_msgSend_userInfo(v8, v70, v71);
  v74 = objc_msgSend_objectForKeyedSubscript_(v72, v73, @"function");
  v77 = objc_msgSend_integerValue(v74, v75, v76);

  if (!v77)
  {
    v81 = @"function";
    v26 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v78, 0);
    v82 = v26;
    v80 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v79, &v82, &v81, 1);
    v9[2](v9, 27, v80);

    goto LABEL_8;
  }

LABEL_9:
  v34 = 2;
LABEL_10:

  return v34;
}

uint64_t sub_188639BEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 9);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    objc_msgSend_transitionToState_withEvent_(v7, v17, *(a1 + 32), v8);
  }

  else
  {
    v19 = objc_msgSend_name(v8, v17, v18);
    v21 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v20, 8);
    v23 = objc_msgSend_isEqualToString_(v19, v22, v21);

    if (v23)
    {
      v9[2](v9, 17, 0);
    }

    else
    {
      v28 = objc_msgSend_name(v8, v24, v25);
      v30 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v29, 12);
      v32 = objc_msgSend_isEqualToString_(v28, v31, v30);

      if (!v32)
      {
        v26 = 1;
        goto LABEL_7;
      }

      objc_msgSend_transitionToState_withEvent_(v7, v33, *(a1 + 40), v8);
    }
  }

  v26 = 2;
LABEL_7:

  return v26;
}

void sub_188639D58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4 + 2;
  v5 = a4[2];
  v6 = a4;
  v5();
  (*v4)(v6, 16, 0);
  (*v4)(v6, 12, 0);
}

uint64_t sub_188639DE8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_name(v6, v7, v8);
  v11 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v10, 9);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v12, v11);

  if (!isEqualToString)
  {
    v19 = objc_msgSend_name(v6, v14, v15);
    v21 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v20, 8);
    v23 = objc_msgSend_isEqualToString_(v19, v22, v21);

    if (v23)
    {
      *(*(a1[5] + 8) + 24) = 1;
    }

    else
    {
      v26 = objc_msgSend_name(v6, v24, v25);
      v28 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v27, 7);
      v30 = objc_msgSend_isEqualToString_(v26, v29, v28);

      if (v30)
      {
        v16 = a1[6];
        goto LABEL_3;
      }

      v33 = objc_msgSend_name(v6, v31, v32);
      v35 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v34, 6);
      v37 = objc_msgSend_isEqualToString_(v33, v36, v35);

      v17 = 1;
      if (!v37)
      {
        goto LABEL_5;
      }

      *(*(a1[6] + 8) + 24) = 1;
    }

    if (*(*(a1[6] + 8) + 24) == 1 && *(*(a1[5] + 8) + 24) == 1)
    {
      objc_msgSend_transitionToState_withEvent_(v5, v24, a1[4], v6);
    }

    goto LABEL_4;
  }

  v16 = a1[5];
LABEL_3:
  *(*(v16 + 8) + 24) = 0;
LABEL_4:
  v17 = 2;
LABEL_5:

  return v17;
}

void sub_188639FB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a3 + 16);
  v6 = a4;
  v5(a3, 2);
  v6[2](v6, 6, 0);
  v6[2](v6, 23, 0);
}

void sub_18863A04C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4 + 2;
  v6 = a4[2];
  v7 = a4;
  v8 = a3;
  v6(v7, 9, 0);
  (*v5)(v7, 7, 0);

  v8[2](v8, 2);
}

uint64_t sub_18863A0E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 9);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    objc_msgSend_transitionToState_withEvent_(v7, v17, *(a1 + 32), v8);
  }

  else
  {
    v19 = objc_msgSend_name(v8, v17, v18);
    v21 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v20, 8);
    v23 = objc_msgSend_isEqualToString_(v19, v22, v21);

    if (v23)
    {
      v9[2](v9, 17, 0);
    }

    else
    {
      v26 = objc_msgSend_name(v8, v24, v25);
      v28 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v27, 12);
      v30 = objc_msgSend_isEqualToString_(v26, v29, v28);

      if ((v30 & 1) == 0)
      {
        v33 = objc_msgSend_name(v8, v31, v32);
        v35 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v34, 17);
        v37 = objc_msgSend_isEqualToString_(v33, v36, v35);

        if ((v37 & 1) == 0)
        {
          v42 = objc_msgSend_name(v8, v38, v39);
          v44 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v43, 3);
          v46 = objc_msgSend_isEqualToString_(v42, v45, v44);

          if (!v46)
          {
            v40 = 1;
            goto LABEL_9;
          }

          v9[2](v9, 9, 0);
          v9[2](v9, 8, 0);
          objc_msgSend_transitionToState_withEvent_(v7, v47, *(a1 + 40), v8);
        }
      }
    }
  }

  v40 = 2;
LABEL_9:

  return v40;
}

void sub_18863A300(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v5 = a4;
  v8 = objc_msgSend_name(v20, v6, v7);
  v10 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v9, 16);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v11, v10);

  if ((isEqualToString & 1) != 0 || (objc_msgSend_name(v20, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v16, 3), v17 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_isEqualToString_(v15, v18, v17), v17, v15, (v19 & 1) == 0))
  {
    v5[2](v5, 24, 0);
  }
}

uint64_t sub_18863A400(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 15);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    objc_msgSend_transitionToState_withEvent_(v7, v17, *(a1 + 32), v8);
  }

  else
  {
    v20 = objc_msgSend_name(v8, v17, v18);
    v22 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v21, 18);
    v24 = objc_msgSend_isEqualToString_(v20, v23, v22);

    if (!v24 || (objc_msgSend_userInfo(v8, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v27, v28, @"function"), v29 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend_integerValue(v29, v30, v31), v29, v27, v32 != 1))
    {
      v19 = 1;
      goto LABEL_8;
    }

    v38 = @"function";
    v34 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v33, 1);
    v39[0] = v34;
    v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v35, v39, &v38, 1);
    v9[2](v9, 27, v36);
  }

  v19 = 2;
LABEL_8:

  return v19;
}

void sub_18863A5E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(a3 + 16);
  v6 = a4;
  v5(a3, 3);
  v6[2](v6, 25, 0);
}

void sub_18863A664(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = a4 + 2;
  v7 = a4[2];
  v8 = a4;
  v9 = a3;
  if (v5 == 1)
  {
    v7(v8, 9, 0);
    v7 = *v6;
  }

  v7(v8, 21, 0);

  v9[2](v9, 3);
}

uint64_t sub_18863A718(uint64_t a1, void *a2, void *a3, void *a4)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 17);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v19 = objc_msgSend_name(v8, v17, v18);
    v21 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v20, 16);
    v23 = objc_msgSend_isEqualToString_(v19, v22, v21);

    if (!v23)
    {
      v27 = objc_msgSend_name(v8, v17, v24);
      v29 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v28, 18);
      v31 = objc_msgSend_isEqualToString_(v27, v30, v29);

      if (v31)
      {
        v34 = objc_msgSend_userInfo(v8, v32, v33);
        v36 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"function");
        v39 = objc_msgSend_integerValue(v36, v37, v38);

        if (v39 == 2)
        {
          v49 = @"function";
          v25 = 2;
          v41 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v40, 2);
          v50[0] = v41;
          v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v42, v50, &v49, 1);
          v9[2](v9, 27, v43);

          goto LABEL_7;
        }
      }

      else
      {
        v44 = objc_msgSend_name(v8, v32, v33);
        v46 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v45, 15);
        v48 = objc_msgSend_isEqualToString_(v44, v47, v46);

        if (v48)
        {
          goto LABEL_6;
        }
      }

      v25 = 1;
      goto LABEL_7;
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  objc_msgSend_transitionToState_withEvent_(v7, v17, *(a1 + 32), v8);
LABEL_6:
  v25 = 2;
LABEL_7:

  return v25;
}

void sub_18863ADD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 - 64));
  _Unwind_Resume(a1);
}

uint64_t sub_18863AE08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"function");

  v10 = objc_msgSend_integerValue(v7, v8, v9);
  v12 = WeakRetained;
  if (v10 == *(a1 + 48))
  {
    v11 = WeakRetained;
    if (a2 == 27)
    {
      v13 = 1;
    }

    else
    {
      if (a2 != 28)
      {
        goto LABEL_7;
      }

      v13 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = v13;
    v11 = objc_msgSend_setInternalActionHandler_(WeakRetained, WeakRetained, 0);
    v12 = WeakRetained;
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](v11, v12);
}

void sub_18863B0C8(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 <= 26)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v15 = v9;
      v17 = objc_msgSend_nameFromResponseAction_(CKUploadRequestManagerStateMachine, v16, a2);
      v18 = @" with userInfo ";
      v19 = &stru_1EFA32970;
      *v20 = 138543874;
      *&v20[4] = v17;
      if (v5)
      {
        v19 = v5;
      }

      else
      {
        v18 = &stru_1EFA32970;
      }

      *&v20[12] = 2114;
      *&v20[14] = v18;
      v21 = 2112;
      v22 = v19;
      _os_log_debug_impl(&dword_1883EA000, v15, OS_LOG_TYPE_DEBUG, "Invoking state action %{public}@%{public}@%@", v20, 0x20u);
    }
  }

  v10 = objc_msgSend_internalActionHandler(WeakRetained, v6, v7, *v20, *&v20[8]);

  if (v10)
  {
    v13 = objc_msgSend_internalActionHandler(WeakRetained, v11, v12);
    (v13)[2](v13, a2, v5);
  }

  v14 = objc_msgSend_actionHandler(WeakRetained, v11, v12);
  (v14)[2](v14, a2, v5);
}

uint64_t sub_18863B2A0(uint64_t a1, void *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = objc_loadWeakRetained((a1 + 72));
  v7 = 0x1E6999000uLL;
  v12 = objc_msgSend_enterState(MEMORY[0x1E6999530], v8, v9);
  if (v12 == v4)
  {
    isEqualToString = 1;
  }

  else
  {
    v15 = objc_msgSend_exitState(MEMORY[0x1E6999530], v10, v11);
    if (v15 == v4)
    {
      isEqualToString = 1;
    }

    else
    {
      v2 = objc_msgSend_initialTransition(MEMORY[0x1E6999530], v13, v14);
      if (v2 == v4)
      {
        isEqualToString = 1;
      }

      else
      {
        v18 = objc_msgSend_name(v4, v16, v17);
        objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v19, 18);
        v20 = a1;
        v21 = WeakRetained;
        v23 = v22 = v6;
        isEqualToString = objc_msgSend_isEqualToString_(v18, v24, v23);

        v6 = v22;
        WeakRetained = v21;
        a1 = v20;
        v7 = 0x1E6999000;
      }
    }
  }

  v28 = objc_msgSend_userInfo(v4, v26, v27);
  v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"uuid");

  if ((isEqualToString & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v33 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v68 = v33;
      *buf = 138412802;
      v84 = v4;
      v85 = 2048;
      v86 = objc_msgSend_hash(v30, v69, v70);
      v87 = 2112;
      v88 = v6;
      _os_log_debug_impl(&dword_1883EA000, v68, OS_LOG_TYPE_DEBUG, "Processing event %@ (hash %lu) in state %@", buf, 0x20u);
    }
  }

  v34 = objc_msgSend_initialTransition(*(v7 + 1328), v31, v32);

  if (v34 == v4)
  {
    objc_msgSend_setEventCausingTransition_(WeakRetained, v35, 0);
LABEL_37:
    v42 = 2;
    goto LABEL_38;
  }

  v37 = objc_msgSend_enterState(*(v7 + 1328), v35, v36);

  if (v37 == v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v43 = ck_log_facility_data_repair;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v73 = objc_msgSend_eventCausingTransition(WeakRetained, v44, v45);
      if (v73)
      {
        v79 = MEMORY[0x1E696AEC0];
        v2 = objc_msgSend_eventCausingTransition(WeakRetained, v71, v72);
        v74 = objc_msgSend_stringWithFormat_(v79, v80, @" with event %@", v2);
      }

      else
      {
        v74 = &stru_1EFA32970;
      }

      *buf = 138412546;
      v84 = v6;
      v85 = 2112;
      v86 = v74;
      _os_log_debug_impl(&dword_1883EA000, v43, OS_LOG_TYPE_DEBUG, "Entering state %@%@", buf, 0x16u);
      if (v73)
      {
      }
    }

    if (!*(a1 + 32))
    {
      goto LABEL_37;
    }

    v48 = objc_msgSend_enterStateHandler(WeakRetained, v46, v47);

    v49 = *(a1 + 32);
    v54 = objc_msgSend_eventCausingTransition(WeakRetained, v50, v51);
    if (v48)
    {
      v55 = objc_msgSend_enterStateHandler(WeakRetained, v52, v53);
LABEL_33:
      v66 = v55;
      (*(v49 + 16))(v49, v54, v55, *(a1 + 40));

LABEL_36:
      goto LABEL_37;
    }

LABEL_35:
    (*(v49 + 16))(v49, v54, &unk_1EFA2F908, *(a1 + 40));
    goto LABEL_36;
  }

  v40 = objc_msgSend_exitState(*(v7 + 1328), v38, v39);

  if (v40 == v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v56 = ck_log_facility_data_repair;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v77 = objc_msgSend_eventCausingTransition(WeakRetained, v57, v58);
      if (v77)
      {
        v81 = MEMORY[0x1E696AEC0];
        v2 = objc_msgSend_eventCausingTransition(WeakRetained, v75, v76);
        v78 = objc_msgSend_stringWithFormat_(v81, v82, @" with event %@", v2);
      }

      else
      {
        v78 = &stru_1EFA32970;
      }

      *buf = 138412546;
      v84 = v6;
      v85 = 2112;
      v86 = v78;
      _os_log_debug_impl(&dword_1883EA000, v56, OS_LOG_TYPE_DEBUG, "Exiting state %@%@", buf, 0x16u);
      if (v77)
      {
      }
    }

    if (!*(a1 + 48))
    {
      goto LABEL_37;
    }

    v61 = objc_msgSend_exitStateHandler(WeakRetained, v59, v60);

    v49 = *(a1 + 48);
    v54 = objc_msgSend_eventCausingTransition(WeakRetained, v62, v63);
    if (v61)
    {
      v55 = objc_msgSend_exitStateHandler(WeakRetained, v64, v65);
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  v41 = *(a1 + 56);
  if (v41)
  {
    v42 = (*(v41 + 16))(v41, WeakRetained, v4, *(a1 + 40));
  }

  else
  {
    v42 = 1;
  }

LABEL_38:

  return v42;
}

void sub_18863D2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18863D2E4(uint64_t a1, void *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"LastFetchedDate");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

void sub_18863D338(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error getting next fetch date: %@", &v4, 0xCu);
    }
  }
}

void sub_18863D510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863D528(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"CurrentUser");
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v10 = 0;
    v7 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v4, v6, v5, v3, &v10);
    v8 = v10;
    if (v8)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v9 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v8;
        _os_log_error_impl(&dword_1883EA000, v9, OS_LOG_TYPE_ERROR, "Error unarchiving current user: %@", buf, 0xCu);
      }
    }

    else
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
    }
  }
}

void sub_18863D684(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error getting current user: %@", &v4, 0xCu);
    }
  }
}

void sub_18863D8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863D910(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v44 = a2;
  v41 = objc_msgSend_objectForKeyedSubscript_(v44, v3, @"MissingAsset");
  v6 = objc_msgSend_allValues(v41, v4, v5);
  v42 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = v6;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v47, v53, 16);
  if (v45)
  {
    v9 = *v48;
    v10 = &ck_log_initialization_predicate;
    v43 = *v48;
    do
    {
      v11 = 0;
      do
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v47 + 1) + 8 * v11);
        v13 = *(a1 + 32);
        v14 = objc_opt_class();
        v46 = 0;
        v16 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v13, v15, v14, v12, &v46);
        v18 = v46;
        if (v18)
        {
          if (*v10 != -1)
          {
            dispatch_once(v10, ck_log_initialization_block);
          }

          v19 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v52 = v18;
            v35 = v19;
            v36 = "Asset metadata decoding error: %@";
            v37 = 12;
            goto LABEL_20;
          }
        }

        else if (v16)
        {
          v21 = objc_msgSend_objectForKeyedSubscript_(v44, v17, @"Unrecoverable");
          objc_msgSend_repairZoneRecordID(v16, v22, v23);
          v24 = a1;
          v26 = v25 = v7;
          objc_msgSend_recordName(v26, v27, v28);
          v30 = v29 = v10;
          v32 = objc_msgSend_objectForKey_(v21, v31, v30);

          v10 = v29;
          v7 = v25;
          a1 = v24;
          v9 = v43;

          if (!v32)
          {
            objc_msgSend_addObject_(v42, v33, v16);
          }
        }

        else
        {
          if (*v10 != -1)
          {
            dispatch_once(v10, ck_log_initialization_block);
          }

          v34 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v35 = v34;
            v36 = "Asset metadata is nil";
            v37 = 2;
LABEL_20:
            _os_log_error_impl(&dword_1883EA000, v35, OS_LOG_TYPE_ERROR, v36, buf, v37);
          }
        }

        ++v11;
      }

      while (v45 != v11);
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v20, &v47, v53, 16);
      v45 = v38;
    }

    while (v38);
  }

  v39 = *(*(a1 + 40) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v42;
}

void sub_18863DC44(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading asset repair metadata: %@", &v4, 0xCu);
    }
  }
}

void sub_18863DEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863DED0(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v39 = a2;
  v36 = objc_msgSend_objectForKeyedSubscript_(v39, v3, @"MissingPackage");
  v6 = objc_msgSend_allValues(v36, v4, v5);
  v37 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v6;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v42, v48, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v43;
    v11 = off_1E70BA000;
    v38 = a1;
    do
    {
      v12 = 0;
      do
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * v12);
        v14 = *(a1 + 32);
        v15 = objc_opt_class();
        v41 = 0;
        v17 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v14, v16, v15, v13, &v41);
        v19 = v41;
        if (v19)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v20 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v19;
            _os_log_error_impl(&dword_1883EA000, v20, OS_LOG_TYPE_ERROR, "Package metadata decoding error: %@", buf, 0xCu);
          }
        }

        else
        {
          v21 = objc_msgSend_objectForKeyedSubscript_(v39, v18, @"Unrecoverable");
          objc_msgSend_repairZoneRecordID(v17, v22, v23);
          v25 = v24 = v11;
          objc_msgSend_recordName(v25, v26, v27);
          v29 = v28 = v10;
          v31 = objc_msgSend_objectForKey_(v21, v30, v29);

          v10 = v28;
          v11 = v24;
          a1 = v38;

          if (!v31)
          {
            objc_msgSend_addObject_(v37, v32, v17);
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v42, v48, 16);
    }

    while (v9);
  }

  v34 = *(*(a1 + 40) + 8);
  v35 = *(v34 + 40);
  *(v34 + 40) = v37;
}

void sub_18863E18C(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading package repair metadata: %@", &v4, 0xCu);
    }
  }
}

void sub_18863E3F0(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"Unrecoverable");
  v7 = objc_msgSend_objectForKey_(v5, v6, a1[4]);

  if (!v7)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(v3, v8, @"MissingAsset");
    v11 = objc_msgSend_objectForKeyedSubscript_(v3, v10, @"MissingPackage");
    v13 = objc_msgSend_objectForKeyedSubscript_(v9, v12, a1[4]);

    v15 = a1[4];
    if (v13)
    {
      v16 = objc_msgSend_objectForKeyedSubscript_(v9, v14, v15);
      v17 = a1[5];
      v18 = objc_opt_class();
      v19 = &v29;
      objc_msgSend_unarchivedObjectOfClass_fromData_error_(v17, v20, v18, v16, &v29, v28, 0);
    }

    else
    {
      v21 = objc_msgSend_objectForKeyedSubscript_(v11, v14, v15);

      if (!v21)
      {
        goto LABEL_11;
      }

      v16 = objc_msgSend_objectForKeyedSubscript_(v11, v22, a1[4]);
      v23 = a1[5];
      v24 = objc_opt_class();
      v19 = &v28;
      objc_msgSend_unarchivedObjectOfClass_fromData_error_(v23, v25, v24, v16, &v28, 0, v29);
    }
    v21 = ;
    v26 = *v19;

    if (v26)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v27 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v26;
        _os_log_error_impl(&dword_1883EA000, v27, OS_LOG_TYPE_ERROR, "Metadata decoding error: %@", buf, 0xCu);
      }

      goto LABEL_12;
    }

LABEL_11:
    objc_storeStrong((*(a1[6] + 8) + 40), v21);
    v26 = 0;
LABEL_12:
  }
}

void sub_18863E644(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error reading metadata for record %{public}@: %@", &v6, 0x16u);
    }
  }
}

BOOL sub_18863E8C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(v2, v4, @"Unrecoverable");
  v7 = objc_msgSend_objectForKey_(v5, v6, v3);

  return v7 == 0;
}

uint64_t sub_18863E934(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = objc_msgSend_objectForKeyedSubscript_(v5, v7, a2);
  v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v9, v6);

  v12 = objc_msgSend_compare_(v8, v11, v10);
  return v12;
}

void sub_18863EB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863EB88(uint64_t a1, void *a2)
{
  v20 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v20, v3, @"Scheduler");
  v6 = objc_msgSend_sortedDelayedSyncRecordsForDatabase_(*(a1 + 32), v5, v20);
  v10 = 0;
  if (objc_msgSend_count(v6, v7, v8))
  {
    do
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(v6, v9, v10);
      v13 = objc_msgSend_objectForKeyedSubscript_(v4, v12, v11);

      v15 = objc_msgSend_compare_(v13, v14, *(a1 + 40));
      if (v15 == 1)
      {
        break;
      }

      ++v10;
    }

    while (v10 < objc_msgSend_count(v6, v9, v16));
  }

  v17 = objc_msgSend_subarrayWithRange_(v6, v9, 0, v10);
  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

void sub_18863EC9C(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading scheduled activities before date: %@", &v4, 0xCu);
    }
  }
}

void sub_18863EEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863EEB8(uint64_t a1, void *a2)
{
  v22 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v22, v3, @"Scheduler");
  v6 = objc_msgSend_sortedDelayedSyncRecordsForDatabase_(*(a1 + 32), v5, v22);
  v11 = 0;
  if (objc_msgSend_count(v6, v7, v8))
  {
    do
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(v6, v9, v11);
      v14 = objc_msgSend_objectForKeyedSubscript_(v4, v13, v12);

      v16 = objc_msgSend_compare_(v14, v15, *(a1 + 40));
      if (v16 == 1)
      {
        break;
      }

      ++v11;
    }

    while (v11 < objc_msgSend_count(v6, v9, v10));
  }

  v17 = objc_msgSend_count(v6, v9, v10);
  v19 = objc_msgSend_subarrayWithRange_(v6, v18, v11, v17 - v11);
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

void sub_18863EFD4(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading scheduled activities after date: %@", &v4, 0xCu);
    }
  }
}

void sub_18863F254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863F26C(uint64_t a1, void *a2)
{
  v13 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v13, v3, @"Unrecoverable");
  v6 = objc_msgSend_objectForKey_(v4, v5, *(a1 + 32));

  if (!v6)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v13, v7, @"Scheduler");
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, *(a1 + 32));
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_18863F324(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading scheduled activities for fetching record date: %@", &v4, 0xCu);
    }
  }
}

void sub_18863F4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863F4F8(uint64_t a1, void *a2)
{
  v13 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v13, v3, @"Unrecoverable");
  v6 = objc_msgSend_objectForKey_(v4, v5, *(a1 + 32));

  if (!v6)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v13, v7, @"SchedulerCount");
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, *(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_integerValue(v10, v11, v12);
  }
}

void sub_18863F5B4(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading scheduled activities for fetching record count: %@", &v4, 0xCu);
    }
  }
}

void sub_18863F78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18863F7A4(uint64_t a1, void *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"SyncEngineMetadata");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

void sub_18863F7F8(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading sync engine metadata: %@", &v4, 0xCu);
    }
  }
}

id sub_18863F97C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v5, *(a1 + 32), @"LastFetchedDate");

  return v4;
}

void sub_18863F9CC(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error setting next fetch date: %@", &v4, 0xCu);
    }
  }
}

id sub_18863FB50(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v6 = v4;
  v7 = *(a1 + 32);
  if (v7)
  {
    v13 = 0;
    v8 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v5, v7, 1, &v13);
    v10 = v13;
    if (v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Error archiving current user: %@", buf, 0xCu);
      }
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v6, v9, v8, @"CurrentUser");
    }
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v5, 0, @"CurrentUser");
  }

  return v6;
}

void sub_18863FCB8(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error setting current user: %@", &v4, 0xCu);
    }
  }
}

id sub_18863FE8C(uint64_t a1, void *a2, uint64_t a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v7 = objc_msgSend_recordType(*(a1 + 32), v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, @"MissingAsset"))
  {
  }

  else
  {
    v11 = objc_msgSend_recordType(*(a1 + 32), v9, v10);
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"MissingPackage");

    if (!isEqualToString)
    {
      goto LABEL_22;
    }
  }

  v14 = objc_opt_class();
  v16 = objc_msgSend_repairRecordToMetadata_(v14, v15, *(a1 + 32));
  v78 = 0;
  v18 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v17, v16, 1, &v78);
  v21 = v78;
  if (v21)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = v22;
      v27 = objc_msgSend_recordID(v23, v25, v26);
      *buf = 138412546;
      v80 = v27;
      v81 = 2112;
      v82 = v21;
      _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "Error encoding repair record %@: %@", buf, 0x16u);
    }

    goto LABEL_21;
  }

  v28 = objc_msgSend_recordType(*(a1 + 32), v19, v20);
  v30 = objc_msgSend_objectForKeyedSubscript_(v4, v29, v28);
  v33 = v30;
  if (!v30)
  {
    v30 = MEMORY[0x1E695E0F8];
  }

  v34 = objc_msgSend_mutableCopy(v30, v31, v32);

  v37 = objc_msgSend_recordID(*(a1 + 32), v35, v36);
  v40 = objc_msgSend_recordName(v37, v38, v39);
  v42 = objc_msgSend_objectForKeyedSubscript_(v34, v41, v40);
  if (!v42)
  {

    v54 = v34;
    goto LABEL_15;
  }

  v45 = v42;
  objc_msgSend_recordID(*(a1 + 32), v43, v44);
  v77 = v16;
  v47 = v46 = v4;
  v50 = objc_msgSend_recordName(v47, v48, v49);
  v52 = objc_msgSend_objectForKeyedSubscript_(v34, v51, v50);
  isEqual = objc_msgSend_isEqual_(v18, v53, v52);

  v4 = v46;
  v16 = v77;

  v54 = v34;
  if ((isEqual & 1) == 0)
  {
LABEL_15:
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v55 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v68 = *(a1 + 32);
      v69 = v55;
      v72 = objc_msgSend_recordType(v68, v70, v71);
      v75 = objc_msgSend_recordID(*(a1 + 32), v73, v74);
      *buf = 138543618;
      v80 = v72;
      v81 = 2112;
      v82 = v75;
      _os_log_debug_impl(&dword_1883EA000, v69, OS_LOG_TYPE_DEBUG, "Persisting %{public}@ record %@", buf, 0x16u);
    }

    v58 = objc_msgSend_recordID(*(a1 + 32), v56, v57);
    v61 = objc_msgSend_recordName(v58, v59, v60);
    objc_msgSend_setObject_forKeyedSubscript_(v54, v62, v18, v61);

    v65 = objc_msgSend_recordType(*(a1 + 32), v63, v64);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v66, v54, v65);
  }

  v21 = 0;
LABEL_21:

LABEL_22:

  return v4;
}

void sub_1886402B0(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v9 = objc_msgSend_recordID(v5, v7, v8);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Error saving repair record %@: %@", &v10, 0x16u);
    }
  }
}

id sub_1886404C0(uint64_t a1, void *a2, uint64_t a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v5 = @"MissingAsset";
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v6, @"MissingAsset");
  v10 = objc_msgSend_recordName(*(a1 + 32), v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v11, v10);

  if (v12 || (v5 = @"MissingPackage", objc_msgSend_objectForKeyedSubscript_(v4, v13, @"MissingPackage"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_recordName(*(a1 + 32), v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v14, v18, v17), v19 = objc_claimAutoreleasedReturnValue(), v19, v17, v14, v19))
  {
    v20 = v5;
    if (v20)
    {
      v21 = v20;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v22 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v83 = *(a1 + 32);
        v84 = 138412290;
        v85 = v83;
        _os_log_debug_impl(&dword_1883EA000, v22, OS_LOG_TYPE_DEBUG, "Deleting repair record %@", &v84, 0xCu);
      }

      v24 = objc_msgSend_objectForKeyedSubscript_(v4, v23, v21);
      v27 = objc_msgSend_mutableCopy(v24, v25, v26);

      v30 = objc_msgSend_recordName(*(a1 + 32), v28, v29);
      objc_msgSend_removeObjectForKey_(v27, v31, v30);

      objc_msgSend_setObject_forKeyedSubscript_(v4, v32, v27, v21);
      v34 = objc_msgSend_objectForKeyedSubscript_(v4, v33, @"Scheduler");
      v37 = objc_msgSend_recordName(*(a1 + 32), v35, v36);
      v39 = objc_msgSend_objectForKey_(v34, v38, v37);

      if (v39)
      {
        v41 = objc_msgSend_objectForKeyedSubscript_(v4, v40, @"Scheduler");
        v44 = objc_msgSend_mutableCopy(v41, v42, v43);

        v47 = objc_msgSend_recordName(*(a1 + 32), v45, v46);
        objc_msgSend_removeObjectForKey_(v44, v48, v47);

        objc_msgSend_setObject_forKeyedSubscript_(v4, v49, v44, @"Scheduler");
      }

      v50 = objc_msgSend_objectForKeyedSubscript_(v4, v40, @"SchedulerCount");
      v53 = objc_msgSend_recordName(*(a1 + 32), v51, v52);
      v55 = objc_msgSend_objectForKey_(v50, v54, v53);

      if (v55)
      {
        v57 = objc_msgSend_objectForKeyedSubscript_(v4, v56, @"SchedulerCount");
        v60 = objc_msgSend_mutableCopy(v57, v58, v59);

        v63 = objc_msgSend_recordName(*(a1 + 32), v61, v62);
        objc_msgSend_removeObjectForKey_(v60, v64, v63);

        objc_msgSend_setObject_forKeyedSubscript_(v4, v65, v60, @"SchedulerCount");
      }

      v66 = objc_msgSend_objectForKeyedSubscript_(v4, v56, @"Unrecoverable");
      v69 = objc_msgSend_recordName(*(a1 + 32), v67, v68);
      v71 = objc_msgSend_objectForKey_(v66, v70, v69);

      if (v71)
      {
        v73 = objc_msgSend_objectForKeyedSubscript_(v4, v72, @"Unrecoverable");
        v76 = objc_msgSend_mutableCopy(v73, v74, v75);

        v79 = objc_msgSend_recordName(*(a1 + 32), v77, v78);
        objc_msgSend_removeObjectForKey_(v76, v80, v79);

        objc_msgSend_setObject_forKeyedSubscript_(v4, v81, v76, @"Unrecoverable");
      }
    }
  }

  return v4;
}

void sub_1886408D4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error deleting repair record %@: %@", &v6, 0x16u);
    }
  }
}

id sub_1886409EC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_mutableCopy(a2, a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v4, 0, @"MissingAsset");
  objc_msgSend_setObject_forKeyedSubscript_(v3, v5, 0, @"MissingPackage");
  objc_msgSend_setObject_forKeyedSubscript_(v3, v6, 0, @"Scheduler");
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, 0, @"SchedulerCount");
  objc_msgSend_setObject_forKeyedSubscript_(v3, v8, 0, @"Unrecoverable");

  return v3;
}

void sub_188640A90(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error clearing repair records: %@", &v4, 0xCu);
    }
  }
}

id sub_188640C98(uint64_t a1, void *a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"Scheduler");
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  v12 = v9;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v10, v11);
  }

  v14 = v13;

  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, *(a1 + 32));
  if (!v16 || (v18 = v16, v19 = *(a1 + 40), objc_msgSend_objectForKeyedSubscript_(v14, v17, *(a1 + 32)), v20 = objc_claimAutoreleasedReturnValue(), LOBYTE(v19) = objc_msgSend_isEqual_(v19, v21, v20), v20, v18, (v19 & 1) == 0))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v23 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(a1 + 32);
      v47 = *(a1 + 40);
      v48 = 138543618;
      v49 = v46;
      v50 = 2114;
      v51 = v47;
      _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Persisting delayed sync for record %{public}@ with date %{public}@", &v48, 0x16u);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v14, v24, *(a1 + 40), *(a1 + 32));
    objc_msgSend_setObject_forKeyedSubscript_(v4, v25, v14, @"Scheduler");
  }

  if (*(a1 + 48) == 1)
  {
    v26 = objc_msgSend_objectForKeyedSubscript_(v4, v22, @"SchedulerCount");
    v29 = objc_msgSend_mutableCopy(v26, v27, v28);
    v32 = v29;
    if (v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v30, v31);
    }

    v34 = v33;

    v35 = MEMORY[0x1E696AD98];
    v37 = objc_msgSend_objectForKeyedSubscript_(v34, v36, *(a1 + 32));
    v40 = objc_msgSend_integerValue(v37, v38, v39);
    v42 = objc_msgSend_numberWithInteger_(v35, v41, v40 + 1);
    objc_msgSend_setObject_forKeyedSubscript_(v34, v43, v42, *(a1 + 32));

    objc_msgSend_setObject_forKeyedSubscript_(v4, v44, v34, @"SchedulerCount");
  }

  return v4;
}

void sub_188640F18(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error saving delayed sync for record %{public}@: %@", &v6, 0x16u);
    }
  }
}

id sub_188641108(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"Scheduler");
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  v12 = v9;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v10, v11);
  }

  v14 = v13;

  v16 = objc_msgSend_objectForKeyedSubscript_(v4, v15, @"SchedulerCount");
  v19 = objc_msgSend_mutableCopy(v16, v17, v18);
  v22 = v19;
  if (v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v20, v21);
  }

  v24 = v23;

  v26 = objc_msgSend_objectForKeyedSubscript_(v14, v25, *(a1 + 32));

  if (v26)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v27 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(a1 + 32);
      v34 = 138543362;
      v35 = v33;
      _os_log_debug_impl(&dword_1883EA000, v27, OS_LOG_TYPE_DEBUG, "Deleting delayed sync for record %{public}@", &v34, 0xCu);
    }

    objc_msgSend_removeObjectForKey_(v14, v28, *(a1 + 32));
    objc_msgSend_removeObjectForKey_(v24, v29, *(a1 + 32));
    objc_msgSend_setObject_forKeyedSubscript_(v4, v30, v14, @"Scheduler");
    objc_msgSend_setObject_forKeyedSubscript_(v4, v31, v24, @"SchedulerCount");
  }

  return v4;
}

void sub_188641304(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error deleting delayed sync for record %{public}@: %@", &v6, 0x16u);
    }
  }
}

id sub_18864141C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_mutableCopy(a2, a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v4, 0, @"Scheduler");
  objc_msgSend_setObject_forKeyedSubscript_(v3, v5, 0, @"SchedulerCount");

  return v3;
}

void sub_18864147C(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error clearing scheduled activities: %@", &v4, 0xCu);
    }
  }
}

id sub_188641650(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"Unrecoverable");
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  objc_msgSend_setObject_forKeyedSubscript_(v12, v13, MEMORY[0x1E695E118], *(a1 + 32));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v12, @"Unrecoverable");

  return v4;
}

void sub_18864170C(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error marking record %{public}@ unrecoverable: %@", &v6, 0x16u);
    }
  }
}

id sub_1886418AC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v5, *(a1 + 32), @"SyncEngineMetadata");
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Persisting sync engine metadata", v8, 2u);
  }

  return v4;
}

void sub_18864197C(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error saving sync engine metadata: %@", &v4, 0xCu);
    }
  }
}

void sub_188641A84(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error clearing database: %@", &v4, 0xCu);
    }
  }
}

void sub_188641BF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v7 = objc_msgSend_databaseURL(*(a1 + 32), v5, v6);
  v19 = 0;
  objc_msgSend_removeItemAtURL_error_(v4, v8, v7, &v19);
  v9 = v19;

  if (v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v15 = objc_msgSend_databaseURL(v11, v13, v14);
      v18 = objc_msgSend_CKSanitizedPath(v15, v16, v17);
      *buf = 138543362;
      v21 = v18;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Could not delete upload request database at %{public}@", buf, 0xCu);
    }
  }
}

void sub_188641F00(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, Class aClassa, uint64_t a14, __int128 buf, int a16, __int16 a17, __int16 a18, void *a19)
{
  aClass = v20;
  if (a2 == 1)
  {
    v21 = objc_begin_catch(a1);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_data_repair;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v30 = NSStringFromClass(aClass);
      v33 = objc_msgSend_name(v21, v31, v32);
      v36 = objc_msgSend_reason(v21, v34, v35);
      LODWORD(buf) = 138543874;
      *(&buf + 4) = v30;
      WORD6(buf) = 2114;
      *(&buf + 14) = v33;
      a18 = 2114;
      a19 = v36;
      _os_log_fault_impl(&dword_1883EA000, v22, OS_LOG_TYPE_FAULT, "Could not unarchive data for %{public}@ due to %{public}@: %{public}@", &buf, 0x20u);
    }

    v23 = NSStringFromClass(aClass);
    v26 = objc_msgSend_name(v21, v24, v25);
    v37 = objc_msgSend_reason(v21, v27, v28);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v29, @"CKErrorDomain", 12, @"Could not unarchive data for %@ due to %@: %@");
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    if (!v19)
    {
      JUMPOUT(0x188641EACLL);
    }

    JUMPOUT(0x188641EA0);
  }

  _Unwind_Resume(a1);
}

void sub_1886421B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v7 = objc_msgSend_databaseURL(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_URLByDeletingLastPathComponent(v7, v8, v9);
  v55 = 0;
  v13 = objc_msgSend_path(v10, v11, v12);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v4, v14, v13, &v55);

  if (!objc_msgSend_firstInvocation(*(a1 + 32), v16, v17) || (isDirectory & 1) != 0)
  {
    if (!isDirectory)
    {
      v33 = &stru_1EFA32970;
      v34 = @"could not be found";
LABEL_16:
      v37 = *(a1 + 40);
      v22 = objc_msgSend_errorWithDomain_code_error_URL_format_(CKPrettyError, v18, @"CKErrorDomain", 10000, 0, v10, @"UploadRequest cache directory %@%@", v34, v33);
      (*(v37 + 16))(v37, v22);
      goto LABEL_29;
    }

LABEL_7:
    if (v55)
    {
      v53 = 0;
      v23 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v18, v7, 0, &v53);
      v24 = v53;
      v22 = v24;
      if (v24 && objc_msgSend_code(v24, v25, v26) != 260)
      {
        v38 = *(a1 + 40);
        v39 = objc_msgSend_errorWithDomain_code_error_URL_format_(CKPrettyError, v25, @"CKErrorDomain", 10000, v22, v7, @"Could not open UploadRequest cache");
        (*(v38 + 16))(v38, v39);

        v27 = MEMORY[0x1E695E0F8];
        goto LABEL_28;
      }

      if (v23)
      {
        v52 = 0;
        v27 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v25, v23, 0, 0, &v52);
        v28 = v52;

        if (v28)
        {
          v30 = *(a1 + 40);
          v31 = objc_msgSend_errorWithDomain_code_error_format_(CKPrettyError, v29, @"CKErrorDomain", 10000, v28, @"UploadRequest cache appears to be corrupt, deleting for future retry");
          (*(v30 + 16))(v30, v31);

          objc_msgSend_removeItemAtURL_error_(v4, v32, v7, 0);
          v22 = v28;
LABEL_28:

          goto LABEL_29;
        }

        v22 = 0;
      }

      else
      {
        v27 = MEMORY[0x1E695E0F8];
      }

      v40 = (*(*(a1 + 48) + 16))();
      v23 = v40;
      if (!v40 || (objc_msgSend_isEqualToDictionary_(v40, v41, v27) & 1) != 0)
      {
LABEL_22:
        (*(*(a1 + 40) + 16))();
        goto LABEL_28;
      }

      v51 = 0;
      v43 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v42, v23, 200, 0, &v51);
      v44 = v51;

      if (v44)
      {
        v46 = *(a1 + 40);
        v47 = objc_msgSend_errorWithDomain_code_error_format_(CKPrettyError, v45, @"CKErrorDomain", 10000, v44, @"Could not serialize UploadRequest cache");
        (*(v46 + 16))(v46, v47);
        v22 = v44;
      }

      else
      {
        v50 = 0;
        objc_msgSend_writeToURL_options_error_(v43, v45, v7, 1, &v50);
        v22 = v50;
        if (!v22)
        {

          goto LABEL_22;
        }

        v49 = *(a1 + 40);
        v47 = objc_msgSend_errorWithDomain_code_error_URL_format_(CKPrettyError, v48, @"CKErrorDomain", 10000, v22, v7, @"Could not persist UploadRequest cache");
        (*(v49 + 16))(v49, v47);
      }

      goto LABEL_28;
    }

    v33 = @" but is not a directory";
    v34 = @"exists";
    goto LABEL_16;
  }

  v54 = 0;
  v19 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v4, v18, v10, 1, 0, &v54);
  v20 = v54;
  v22 = v20;
  if (v19 && !v20)
  {
    v55 = 1;
    objc_msgSend_setFirstInvocation_(*(a1 + 32), v21, 0);
    goto LABEL_7;
  }

  v35 = *(a1 + 40);
  v36 = objc_msgSend_errorWithDomain_code_error_URL_format_(CKPrettyError, v21, @"CKErrorDomain", 10000, v20, v10, @"Could not create UploadRequest cache directory");
  (*(v35 + 16))(v35, v36);

LABEL_29:
}

void sub_188642BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188642BD8(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading all data: %@", &v4, 0xCu);
    }
  }
}

void sub_188642F04(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v9 = a3;
  if (v6)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = v12;
    if (!v12)
    {
      v3 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v7, v8);
      v13 = objc_msgSend_bundleIdentifier(v3, v14, v15);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_18864302C;
    v18[3] = &unk_1E70BC540;
    v19 = *(a1 + 56);
    objc_msgSend_reportTelemetryEventWithEventType_event_bundleIdentifier_completionHandler_(v6, v16, v10, v11, v13, v18);
    if (!v12)
    {
    }
  }

  else
  {
    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, v9);
    }
  }
}

uint64_t sub_18864302C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_188643B44()
{
  v0 = objc_opt_new();
  v1 = qword_1ED4B62A8;
  qword_1ED4B62A8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_188644268(uint64_t a1, void *a2, void *a3)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_containerInfo(v5, v7, v8);
  v12 = objc_msgSend_setupInfo(*(a1 + 32), v10, v11);
  v13 = v9;
  v16 = objc_msgSend_containerID(v13, v14, v15);
  v19 = objc_msgSend_containerID(v12, v17, v18);
  isEqual = objc_msgSend_isEqual_(v16, v20, v19);

  if (!isEqual)
  {
    goto LABEL_9;
  }

  v24 = objc_msgSend_containerOptions(v13, v22, v23);
  v27 = objc_msgSend_containerOptions(v12, v25, v26);
  v30 = objc_msgSend_accountOverrideInfo(v24, v28, v29);
  v33 = objc_msgSend_accountOverrideInfo(v27, v31, v32);
  v34 = CKObjectsAreBothNilOrEqual(v30, v33);

  if (!v34)
  {

LABEL_9:
    goto LABEL_10;
  }

  v37 = objc_msgSend_persona(v24, v35, v36);
  v40 = objc_msgSend_persona(v27, v38, v39);
  v41 = CKObjectsAreBothNilOrEqual(v37, v40);

  if ((v41 & 1) == 0)
  {
LABEL_10:
    v56 = MEMORY[0x1E695E0F0];
    goto LABEL_11;
  }

  v44 = objc_msgSend_record(*(a1 + 40), v42, v43);
  v47 = objc_msgSend_recordType(v5, v45, v46);
  v50 = v47;
  if (v44 && v47 && (objc_msgSend_recordType(v44, v48, v49), v51 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v50, v52, v51), v51, !isEqualToString))
  {
    v56 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v54 = _Block_copy(v6);
    v58[0] = v54;
    v56 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v55, v58, 1);
  }

LABEL_11:

  return v56;
}

void sub_1886444CC(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Invoking record change handler with record change: %@", &v4, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(a1 + 40));
}

id sub_188644614(void *a1, uint64_t a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v8, v9);
  v13 = objc_msgSend_untrustedEntitlements(v10, v11, v12);
  v15 = sub_188401184(v13, v14);

  if (v15)
  {
    if (qword_1ED4B62D0 != -1)
    {
      dispatch_once(&qword_1ED4B62D0, &unk_1EFA2FBA8);
    }

    v16 = a1;
    objc_sync_enter(v16);
    v17 = [CKAPSMachServiceConnectionKey alloc];
    v19 = objc_msgSend_initWithEnvironmentName_namedDelegatePort_(v17, v18, v6, v7);
    v21 = objc_msgSend_objectForKeyedSubscript_(qword_1ED4B62B8, v20, v19);

    if (!v21)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v23 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v35 = 138543618;
        v36 = v7;
        v37 = 2114;
        v38 = v6;
        _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Creating new singleton APSConnection on port %{public}@ with environment %{public}@", &v35, 0x16u);
      }

      v24 = objc_alloc(MEMORY[0x1E698CF30]);
      v26 = objc_msgSend_initWithEnvironmentName_namedDelegatePort_queue_(v24, v25, v6, v7, qword_1ED4B62C8);
      v27 = [CKAPSMachServiceConnectionDelegate alloc];
      v29 = objc_msgSend_initWithConnection_key_(v27, v28, v26, v19);
      objc_msgSend_setDelegate_(v26, v30, v29);
      objc_msgSend_setObject_forKeyedSubscript_(qword_1ED4B62B8, v31, v26, v19);
      objc_msgSend_setObject_forKeyedSubscript_(qword_1ED4B62C0, v32, v29, v19);
    }

    v33 = objc_msgSend_objectForKeyedSubscript_(qword_1ED4B62B8, v22, v19);

    objc_sync_exit(v16);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

void sub_1886448AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  v4 = qword_1ED4B62B8;
  qword_1ED4B62B8 = v3;

  v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
  v8 = qword_1ED4B62C0;
  qword_1ED4B62C0 = v7;

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.cloudkit.apsconnection.machservice", v11);
  v10 = qword_1ED4B62C8;
  qword_1ED4B62C8 = v9;
}

uint64_t sub_188645714(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA912C40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1886457AC(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v2 = qword_1EA912C40;
  v22 = qword_1EA912C40;
  if (!qword_1EA912C40)
  {
    v16[1] = MEMORY[0x1E69E9820];
    v16[2] = 3221225472;
    v16[3] = sub_188645714;
    v16[4] = &unk_1E70BBE68;
    v17 = &v19;
    v18 = v16;
    v23 = xmmword_1E70BFDA0;
    v24 = *off_1E70BFDB0;
    v25 = 0;
    v20[3] = _sl_dlopen();
    qword_1EA912C40 = *(v17[1] + 24);
    v2 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v2)
  {
    v5 = v16[0];
    if (!v16[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    a1 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v3, v4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v9, "void *BackgroundSystemTasksLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(a1, v11, v10, @"CKBackgroundSystemTasks.m", 11, @"%s", v16[0]);

    __break(1u);
  }

  free(v5);
LABEL_5:
  result = objc_getClass("BGRepeatingSystemTaskRequest");
  *(*(a1[4] + 8) + 24) = result;
  if (!*(*(a1[4] + 8) + 24))
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v13, "Class getBGRepeatingSystemTaskRequestClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v12, v15, v14, @"CKBackgroundSystemTasks.m", 14, @"Unable to find class %s", "BGRepeatingSystemTaskRequest");

    __break(1u);
  }

  qword_1EA919C08 = *(*(a1[4] + 8) + 24);
  return result;
}

void sub_1886459E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CKBackgroundTaskStateDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BFDF0[a1];
  }
}

void sub_188645D4C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v1 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v2 = v1;
      v5 = objc_msgSend_ckShortDescription(WeakRetained, v3, v4);
      *buf = 138412290;
      v8 = v5;
      _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "[%@] Handling activity expiration", buf, 0xCu);
    }

    sub_188645E6C(WeakRetained);
  }
}

void sub_188645E6C(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = NSStringFromSelector(sel_state);
    objc_msgSend_willChangeValueForKey_(a1, v3, v2);

    os_unfair_lock_lock((a1 + 8));
    if (*(a1 + 16) == 1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v4 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
      {
        v5 = v4;
        v8 = objc_msgSend_ckShortDescription(a1, v6, v7);
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "[%@] Expiring", buf, 0xCu);
      }

      *(a1 + 16) = 2;
      os_unfair_lock_unlock((a1 + 8));
      v9 = NSStringFromSelector(sel_state);
      objc_msgSend_didChangeValueForKey_(a1, v10, v9);

      v13 = objc_msgSend_expirationHandler(a1, v11, v12);
      v14 = v13;
      if (v13)
      {
        (*(v13 + 16))(v13);
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 8));
      v16 = NSStringFromSelector(sel_state);
      objc_msgSend_didChangeValueForKey_(a1, v15, v16);
    }
  }
}

void sub_18864698C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1886469AC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleActivityUpdate_(WeakRetained, v4, v3);
}

void *sub_18864768C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    result = objc_msgSend_count(*(v4 + 24), a2, a3);
  }

  else
  {
    result = objc_msgSend_count(0, a2, a3);
  }

  if (result)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 24);
    }

    else
    {
      v9 = 0;
    }

    return objc_msgSend_addProperty_value_shouldRedact_(v7, v6, @"subscriptionInfos", v9, 0);
  }

  return result;
}

void sub_1886477C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886477E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[6];
  }

  v5 = v2;
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_count(v5, v3, v4) > 1;
}

void sub_18864790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188647A30(uint64_t result)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 8) != *(result + 40))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(result + 40);
      v6 = *(result + 32);
      v7[0] = 67109378;
      v7[1] = v5;
      v8 = 2112;
      v9 = v6;
      _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Setting useOpportunisticPushTopics=%d for %@", v7, 0x12u);
    }

    *(*(result + 32) + 8) = *(result + 40);
    sub_188647B44(*(result + 32), v3, v4);
  }
}

void sub_188647B44(uint64_t a1, const char *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_msgSend_queue(a1, a2, a3);
    dispatch_assert_queue_V2(v4);

    v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = objc_msgSend_allKeys(*(a1 + 48), v8, v9);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v28, v32, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v29;
      do
      {
        v17 = 0;
        do
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v28 + 1) + 8 * v17);
          v19 = objc_msgSend_set(MEMORY[0x1E695DFA8], v13, v14);
          objc_msgSend_setObject_forKeyedSubscript_(v7, v20, v19, v18);

          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v28, v32, 16);
      }

      while (v15);
    }

    v21 = *(a1 + 24);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_188648BE4;
    v26[3] = &unk_1E70BFF30;
    v27 = v7;
    v22 = v7;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v21, v23, v26);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_188648E2C;
    v25[3] = &unk_1E70BFF58;
    v25[4] = a1;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v22, v24, v25);
  }
}

void sub_188648124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v26 - 144));
  _Unwind_Resume(a1);
}

void sub_188648144(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2)
  {
    a2 = *MEMORY[0x1E698CF20];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = v2;
  dispatch_resume(*(a1 + 32));
}

void sub_1886481B8(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_notification_listener;
  if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v16 = 138412802;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Starting to listen to subscription %@ for database %@ in %@", &v16, 0x20u);
  }

  v6 = objc_alloc_init(CKSubscriptionInfo);
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v7, *(a1 + 32), 40);
    objc_storeStrong(p_isa + 1, *(a1 + 40));
    objc_storeStrong(p_isa + 2, *(a1 + 56));
    objc_storeStrong(p_isa + 3, *(*(*(a1 + 80) + 8) + 40));
    objc_setProperty_nonatomic_copy(p_isa, v9, *(a1 + 64), 32);
  }

  v11 = objc_msgSend_uniqueKeyForSubscriptionID_inDatabase_(*(a1 + 48), v7, *(a1 + 32), *(a1 + 40));
  v12 = *(a1 + 48);
  if (v12)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(v12 + 24), v10, p_isa, v11);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(0, v10, p_isa, v11);
  }

  sub_18841F3D0(*(a1 + 48), v13, v14);
  v15 = *(a1 + 72);
  if (v15)
  {
    (*(v15 + 16))(v15, 0);
  }
}

void sub_188648594(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_notification_listener;
  if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v13 = 138412802;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Stopping listening to subscription %@ for database %@ in %@", &v13, 0x20u);
  }

  v8 = objc_msgSend_uniqueKeyForSubscriptionID_inDatabase_(*(a1 + 48), v3, *(a1 + 32), *(a1 + 40));
  v9 = *(a1 + 48);
  if (v9)
  {
    objc_msgSend_removeObjectForKey_(*(v9 + 24), v7, v8);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(0, v7, v8);
  }

  sub_18841F3D0(*(a1 + 48), v10, v11);
  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, 0);
  }
}

void sub_1886487E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188648800(uint64_t a1, const char *a2)
{
  v7 = objc_msgSend_uniqueKeyForSubscriptionID_inDatabase_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[3];
  }

  v4 = v3;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, v7);
  *(*(*(a1 + 56) + 8) + 24) = v6 != 0;
}

void sub_188648B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188648B70(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = a1[5];
  v8 = v2;
  v5 = objc_msgSend_objectForKeyedSubscript_(v8, v4, v3);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_188648BE4(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v10 = objc_msgSend_applicationBundleIdentifierForPush(v7, v8, v9);

  if (v10)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
    {
      if (v5)
      {
        v24 = v5[5];
      }

      else
      {
        v24 = 0;
      }

      *v26 = 138543618;
      *&v26[4] = v10;
      *&v26[12] = 2112;
      *&v26[14] = v24;
      v25 = v11;
      _os_log_debug_impl(&dword_1883EA000, v25, OS_LOG_TYPE_DEBUG, "Using bundle identifier %{public}@ for push notifications for subscription: %@", v26, 0x16u);
    }

    v13 = *(a1 + 32);
    if (v5)
    {
      objc_msgSend_objectForKeyedSubscript_(v13, v12, v5[3], *v26, *&v26[8], v27);
    }

    else
    {
      objc_msgSend_objectForKeyedSubscript_(v13, v12, 0, *v26, *&v26[8], v27);
    }
    v16 = ;
    if (!v16)
    {
      v16 = objc_msgSend_set(MEMORY[0x1E695DFA8], v14, v15);
      v18 = *(a1 + 32);
      if (v5)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v18, v17, v16, v5[3]);
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(v18, v17, v16, 0);
      }
    }

    v19 = objc_msgSend_stringByAppendingString_(@"com.apple.icloud-container.", v14, v10);
    objc_msgSend_addObject_(v16, v20, v19);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v21 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_INFO))
    {
      if (v5)
      {
        v22 = v5[5];
      }

      else
      {
        v22 = 0;
      }

      *v26 = 138412290;
      *&v26[4] = v22;
      v23 = v21;
      _os_log_impl(&dword_1883EA000, v23, OS_LOG_TYPE_INFO, "No container bundle ID for push notifications for subscription: %@", v26, 0xCu);
    }
  }
}

void sub_188648E2C(CKSourceCodeLocation *a1, void *a2, void *a3)
{
  v109[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v95 = a3;
  fileURL = a1[1]._fileURL;
  if (fileURL)
  {
    fileURL = fileURL[1]._urlString;
  }

  v7 = fileURL;
  v94 = v5;
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v5);

  if (objc_msgSend_count(v95, v10, v11) && !v9)
  {
    v14 = objc_msgSend_machServiceName(a1[1]._fileURL, v12, v13);

    if (v14)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
      {
        v78 = a1[1]._fileURL;
        v79 = v17;
        v82 = objc_msgSend_machServiceName(v78, v80, v81);
        *buf = 138543362;
        *&buf[4] = v82;
        _os_log_debug_impl(&dword_1883EA000, v79, OS_LOG_TYPE_DEBUG, "Creating APS connection with mach service name %{public}@", buf, 0xCu);
      }

      v20 = MEMORY[0x1E698CF30];
      v21 = objc_msgSend_machServiceName(a1[1]._fileURL, v18, v19);
      v23 = objc_msgSend_ck_singletonConnectionForEnvironmentName_namedDelegatePort_(v20, v22, v5, v21);

      v25 = a1[1]._fileURL;
      if (v25)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v25[1]._urlString, v24, v23, v5);
LABEL_12:
        v26 = a1[1]._fileURL;
        v9 = v23;
        if (v26)
        {
          v29 = objc_msgSend_queue(v26, v27, v28);
          dispatch_assert_queue_V2(v29);

          v32 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31);
          objc_initWeak(&location, v26);
          v35 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v33, v34);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = sub_188649640;
          v107 = &unk_1E70BFF80;
          objc_copyWeak(v109, &location);
          v36 = v9;
          v108 = v36;
          v38 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v35, v37, @"CKAPSMachServiceConnectionDidReceivePublicTokenNotification", v36, 0, buf);

          objc_msgSend_addObject_(v32, v39, v38);
          v42 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v40, v41);
          v102[0] = MEMORY[0x1E69E9820];
          v102[1] = 3221225472;
          v102[2] = sub_1886496C4;
          v102[3] = &unk_1E70BFF80;
          objc_copyWeak(&v104, &location);
          v43 = v36;
          v103 = v43;
          v45 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v42, v44, @"CKAPSMachServiceConnectionDidReceiveIncomingMessageNotification", v43, 0, v102);

          objc_msgSend_addObject_(v32, v46, v45);
          v49 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v47, v48);
          v99[0] = MEMORY[0x1E69E9820];
          v99[1] = 3221225472;
          v99[2] = sub_188649748;
          v99[3] = &unk_1E70BFF80;
          objc_copyWeak(&v101, &location);
          v50 = v43;
          v100 = v50;
          v52 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v49, v51, @"CKAPSMachServiceConnectionDidChangeConnectedStatusNotification", v50, 0, v99);

          objc_msgSend_addObject_(v32, v53, v52);
          v56 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v54, v55);
          v96[0] = MEMORY[0x1E69E9820];
          v96[1] = 3221225472;
          v96[2] = sub_1886497DC;
          v96[3] = &unk_1E70BFF80;
          objc_copyWeak(&v98, &location);
          v97 = v50;
          v58 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v56, v57, @"CKAPSMachServiceConnectionDidReconnectNotification", v97, 0, v96);

          objc_msgSend_addObject_(v32, v59, v58);
          v64 = objc_msgSend_notificationObservers(v26, v60, v61);
          v65 = v64;
          if (!v64)
          {
            v65 = objc_msgSend_array(MEMORY[0x1E695DEC8], v62, v63);
          }

          v66 = objc_msgSend_arrayByAddingObjectsFromArray_(v65, v62, v32);
          objc_msgSend_setNotificationObservers_(v26, v67, v66);

          if (!v64)
          {
          }

          objc_destroyWeak(&v98);
          objc_destroyWeak(&v101);

          objc_destroyWeak(&v104);
          objc_destroyWeak(v109);
          objc_destroyWeak(&location);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v83 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v15, v16);
      v84 = [CKSignificantIssue alloc];
      v85 = [CKSourceCodeLocation alloc];
      a1 = objc_msgSend_initWithFilePath_lineNumber_(v85, v86, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/Services/Scheduler/CKNotificationListener.m", 380);
      v23 = @"BUG IN CLIENT OF CLOUDKIT: When using CKNotificationListener in a daemon, you must supply an APS mach service name to [CKNotificationListener initWithMachServiceName:]. Otherwise, your process won't be launched for push notifications. See header comments in CKNotificationListener_Private.h.";
      v88 = objc_msgSend_initWithSourceCodeLocation_format_(v84, v87, a1, @"BUG IN CLIENT OF CLOUDKIT: When using CKNotificationListener in a daemon, you must supply an APS mach service name to [CKNotificationListener initWithMachServiceName:]. Otherwise, your process won't be launched for push notifications. See header comments in CKNotificationListener_Private.h.");
      objc_msgSend_handleSignificantIssue_actions_(v83, v89, v88, 0);

      v91 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v90, @"BUG IN CLIENT OF CLOUDKIT: When using CKNotificationListener in a daemon, you must supply an APS mach service name to [CKNotificationListener initWithMachServiceName:]. Otherwise, your process won't be launched for push notifications. See header comments in CKNotificationListener_Private.h.");
      objc_msgSend_UTF8String(v91, v92, v93);
      _os_crash();
      __break(1u);
    }

    objc_msgSend_setObject_forKeyedSubscript_(0, v24, v23, v94);
    goto LABEL_12;
  }

LABEL_19:
  if (v9)
  {
    v68 = v9;
    objc_sync_enter(v68);
    if (objc_msgSend_useOpportunisticPushTopics(a1[1]._fileURL, v69, v70))
    {
      v73 = objc_msgSend_allObjects(v95, v71, v72);
      v74 = 0;
      objc_msgSend_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_(v68, v75, 0, 0, v73, 0);
    }

    else
    {
      v74 = objc_msgSend_allObjects(v95, v71, v72);
      v73 = 0;
      objc_msgSend_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_(v68, v76, v74, 0, 0, 0);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v77 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      *&buf[4] = v74;
      *&buf[12] = 2112;
      *&buf[14] = v73;
      *&buf[22] = 2112;
      v107 = v68;
      _os_log_debug_impl(&dword_1883EA000, v77, OS_LOG_TYPE_DEBUG, "Setting enabled topics %@, opportunistic topics %@ on %@", buf, 0x20u);
    }

    objc_sync_exit(v68);
  }
}

void sub_188649640(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a2, a2, a3);
  v8 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"publicToken");

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_connection_didReceivePublicToken_(WeakRetained, v7, *(a1 + 32), v8);
}

void sub_1886496C4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a2, a2, a3);
  v8 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"message");

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_connection_didReceiveIncomingMessage_(WeakRetained, v7, *(a1 + 32), v8);
}

void sub_188649748(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a2, a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"connected");
  v9 = objc_msgSend_BOOLValue(v6, v7, v8);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_connection_didChangeConnectedStatus_(WeakRetained, v10, *(a1 + 32), v9);
}

void sub_1886497DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_connectionDidReconnect_(WeakRetained, v2, *(a1 + 32));
}

void sub_188649B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188649BA0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  if (objc_msgSend_isEqual_(a3, v8, *(a1 + 32)))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_188649D5C(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  group = dispatch_group_create();
  v58 = objc_msgSend_notificationFromRemoteNotificationDictionary_(CKNotification, v2, *(a1 + 32));
  v3 = &unk_1886FE000;
  if (v58)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
    {
      v52 = *(a1 + 40);
      *v88 = 138412546;
      *&v88[4] = v58;
      *&v88[12] = 2112;
      *&v88[14] = v52;
      _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Received CKNotification: %@ for %@", v88, 0x16u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = v5[3];
    }

    v6 = v5;
    v9 = objc_msgSend_allValues(v6, v7, v8);
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = sub_18864A5C8;
    v81[3] = &unk_1E70BFFD0;
    v82 = *(a1 + 48);
    v10 = v58;

    v83 = v10;
    v57 = objc_msgSend_CKFilter_(v9, v11, v81);

    if (objc_msgSend_count(v57, v12, v13))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
      {
        v53 = v14;
        v56 = objc_msgSend_count(v57, v54, v55);
        *v88 = 134217984;
        *&v88[4] = v56;
        _os_log_debug_impl(&dword_1883EA000, v53, OS_LOG_TYPE_DEBUG, "Delivering notification for up to %lu listeners", v88, 0xCu);
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = v57;
      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v77, v90, 16);
      if (v62)
      {
        v61 = *v78;
        do
        {
          v16 = 0;
          do
          {
            if (*v78 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v77 + 1) + 8 * v16);
            v18 = dispatch_group_create();
            *v88 = 0;
            *&v88[8] = v88;
            *&v88[16] = 0x2020000000;
            v89 = 0;
            v21 = objc_msgSend_testDeviceID(v10, v19, v20);
            if (v17)
            {
              v22 = *(v17 + 16);
            }

            else
            {
              v22 = 0;
            }

            v23 = v22;
            v26 = objc_msgSend_deviceContext(v23, v24, v25);
            v29 = objc_msgSend_testDeviceReferenceProtocol(v26, v27, v28);
            v32 = objc_msgSend_deviceID(v29, v30, v31);

            if (CKObjectsAreBothNilOrEqual(v21, v32))
            {
              v35 = objc_msgSend_subscriptionOwnerUserRecordID(v10, v33, v34);
              v36 = v35 == 0;

              if (v36)
              {
                if (ck_log_initialization_predicate != -1)
                {
                  dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                }

                v44 = ck_log_facility_notification_listener;
                if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_1883EA000, v44, OS_LOG_TYPE_DEBUG, "No user record ID in notification", buf, 2u);
                }

                *(*&v88[8] + 24) = 1;
              }

              else
              {
                dispatch_group_enter(group);
                dispatch_group_enter(v18);
                if (ck_log_initialization_predicate != -1)
                {
                  dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                }

                v37 = ck_log_facility_notification_listener;
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  v48 = objc_msgSend_subscriptionOwnerUserRecordID(v10, v38, v39);
                  *buf = 138412546;
                  v85 = v48;
                  v86 = 2112;
                  v87 = v17;
                  _os_log_debug_impl(&dword_1883EA000, v37, OS_LOG_TYPE_DEBUG, "Checking notification's user record ID %@ against container user record ID for %@", buf, 0x16u);
                }

                if (v17)
                {
                  v40 = *(v17 + 16);
                }

                else
                {
                  v40 = 0;
                }

                v41 = v40;
                v72[0] = MEMORY[0x1E69E9820];
                v72[1] = 3221225472;
                v72[2] = sub_18864A71C;
                v72[3] = &unk_1E70BFFF8;
                v72[4] = v17;
                v76 = v88;
                v73 = v10;
                v74 = group;
                v75 = v18;
                objc_msgSend_fetchUserRecordIDWithCompletionHandler_(v41, v42, v72);
              }
            }

            else
            {
              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
              }

              v43 = ck_log_facility_notification_listener;
              if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&dword_1883EA000, v43, OS_LOG_TYPE_DEBUG, "Notification was destined for a different test device", buf, 2u);
              }

              *(*&v88[8] + 24) = 0;
            }

            v45 = *(a1 + 40);
            if (v45)
            {
              v46 = *(v45 + 40);
            }

            else
            {
              v46 = 0;
            }

            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_18864A9B0;
            block[3] = &unk_1E70C0020;
            v71 = v88;
            v67 = v10;
            v68 = *(a1 + 32);
            v69 = v17;
            v70 = *(a1 + 56);
            dispatch_group_notify(v18, v46, block);

            _Block_object_dispose(v88, 8);
            ++v16;
          }

          while (v62 != v16);
          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v77, v90, 16);
          v62 = v49;
        }

        while (v49);
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v50 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
      {
        *v88 = 0;
        _os_log_debug_impl(&dword_1883EA000, v50, OS_LOG_TYPE_DEBUG, "No matching subscriptions for notification.", v88, 2u);
      }
    }

    v3 = &unk_1886FE000;
  }

  v51 = dispatch_get_global_queue(0, 0);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = v3[137];
  v63[2] = sub_18864AC58;
  v63[3] = &unk_1E70BC2E8;
  v65 = *(a1 + 64);
  v64 = *(a1 + 56);
  dispatch_group_notify(group, v51, v63);
}

void sub_18864A5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18864A5C8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5 && (!v4 ? (isEqualToString = objc_msgSend_isEqualToString_(v5, v3, 0)) : (isEqualToString = objc_msgSend_isEqualToString_(v5, v3, *(v4 + 3))), !isEqualToString) || objc_msgSend_conformsToProtocol_(*(a1 + 40), v3, &unk_1EFA97480) && ((v11 = objc_msgSend_databaseScope(*(a1 + 40), v7, v8), !v4) ? (v12 = objc_msgSend_databaseScope(0, v9, v10)) : (v12 = objc_msgSend_databaseScope(*(v4 + 1), v9, v10)), v11 != v12))
  {
    isEqual = 0;
  }

  else
  {
    if (v4)
    {
      v13 = *(v4 + 5);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v17 = objc_msgSend_subscriptionID(*(a1 + 40), v15, v16);
    if (objc_msgSend_isEqual_(v14, v18, v17))
    {
      if (v4)
      {
        v19 = *(v4 + 1);
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v23 = objc_msgSend_container(v20, v21, v22);
      v26 = objc_msgSend_containerID(v23, v24, v25);
      v29 = objc_msgSend_containerID(*(a1 + 40), v27, v28);

      isEqual = objc_msgSend_isEqual_(v26, v30, v29);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

void sub_18864A71C(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = a3;
  if (v5)
  {
    v9 = objc_msgSend_subscriptionOwnerUserRecordID(*(a1 + 40), v6, v7);
    isEqual = objc_msgSend_isEqual_(v9, v10, v5);

    if (isEqual)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 32);
        v24 = 138412290;
        v25 = v17;
        _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "Container user is equal to subscription user for %@", &v24, 0xCu);
      }

      v13 = 1;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v16 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 40);
        v19 = v16;
        v22 = objc_msgSend_subscriptionOwnerUserRecordID(v18, v20, v21);
        v23 = *(a1 + 32);
        v24 = 138412802;
        v25 = v5;
        v26 = 2112;
        v27 = v22;
        v28 = 2112;
        v29 = v23;
        _os_log_debug_impl(&dword_1883EA000, v19, OS_LOG_TYPE_DEBUG, "Container user %@ is not equal to subscription user %@ for %@", &v24, 0x20u);
      }

      v13 = 0;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_notification_listener;
    v13 = 1;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v24 = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, "Couldn't fetch user record ID to compare to notification for %@: %@", &v24, 0x16u);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = v13;
  dispatch_group_leave(*(a1 + 48));
  dispatch_group_leave(*(a1 + 56));
}

void sub_18864A9B0(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(*(a1[8] + 8) + 24) == 1)
  {
    v2 = _os_activity_create(&dword_1883EA000, "client/notification-listener-receive", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v21.opaque[0] = 0;
    v21.opaque[1] = 0;
    os_activity_scope_enter(v2, &v21);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = a1[5];
      *buf = 138412546;
      v23 = v4;
      v24 = 2114;
      v25 = v5;
      _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEFAULT, "Running handler for notification %@: %{public}@", buf, 0x16u);
    }

    v6 = a1[6];
    if (v6)
    {
      v7 = *(v6 + 32);
      if (v7)
      {
        v8 = a1[6];
        if (v8)
        {
          v9 = *(v8 + 40) == 0;

          if (!v9)
          {
            v10 = a1[6];
            if (v10)
            {
              v10 = v10[4];
            }

            v11 = v10;
            v12 = a1[4];
            v13 = a1[6];
            if (v13)
            {
              v13 = v13[5];
            }

            v14 = v13;
            (v11[2].isa)(v11, v12, v14);

LABEL_19:
            os_activity_scope_leave(&v21);

            return;
          }
        }

        else
        {
        }
      }
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = a1[6];
      if (v15)
      {
        v16 = *(v15 + 32);
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      v18 = _Block_copy(v17);
      v19 = v18;
      v20 = a1[6];
      if (v20)
      {
        v20 = *(v20 + 40);
      }

      *buf = 138412802;
      v23 = v15;
      v24 = 2048;
      v25 = v18;
      v26 = 2048;
      v27 = v20;
      _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Tried to notify for info %@, but a necessary property is missing: %p %p", buf, 0x20u);
    }

    goto LABEL_19;
  }
}

uint64_t sub_18864AC58(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_18864B6C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_18864BB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a18, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_18864BB78(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = objc_msgSend_handlersByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_identifier(*(a1 + 40), v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v11, v7, v6);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_18864BBFC(void **a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v46 = 138412290;
    v47 = v5;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEFAULT, "Submitting activity %@", &v46, 0xCu);
  }

  v6 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(a1[5], v3, v4);
  v9 = objc_msgSend_identifier(a1[4], v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v6, v10, v9);

  if ((objc_msgSend_isXPCActivityPending_(a1[5], v12, v11) & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v46) = 0;
      _os_log_debug_impl(&dword_1883EA000, v19, OS_LOG_TYPE_DEBUG, "Dropping cached non-pending xpc_activity", &v46, 2u);
    }

    v22 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(a1[5], v20, v21);
    v25 = objc_msgSend_identifier(a1[4], v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v26, 0, v25);

    v16 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  if (!v11)
  {
    v16 = 0;
LABEL_15:
    v27 = 1;
    goto LABEL_16;
  }

  v15 = xpc_activity_copy_criteria(v11);
  v16 = v15;
  if (v15)
  {
    v17 = xpc_dictionary_get_double(v15, "ck_submitted_time");
    v18 = a1 + 6;
    xpc_dictionary_set_double(a1[6], "ck_submitted_time", v17);
    if (xpc_equal(v16, *v18))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v34 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
      {
        v35 = a1[4];
        v46 = 138412290;
        v47 = v35;
        _os_log_debug_impl(&dword_1883EA000, v34, OS_LOG_TYPE_DEBUG, "Not modifying criteria of identical existing XPC activity for %@", &v46, 0xCu);
      }

LABEL_33:
      v43 = a1[7];
      if (v43)
      {
        v44 = a1[5];
        if (v44)
        {
          v45 = *(v44 + 2);
        }

        else
        {
          v45 = 0;
        }

        dispatch_async(v45, v43);
      }

      goto LABEL_37;
    }

LABEL_28:
    v36 = xpc_copy_short_description();
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v37 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
    {
      v38 = a1[4];
      v39 = v37;
      v42 = objc_msgSend_identifier(v38, v40, v41);
      v46 = 138543618;
      v47 = v42;
      v48 = 2080;
      v49 = v36;
      _os_log_impl(&dword_1883EA000, v39, OS_LOG_TYPE_DEFAULT, "Modifying criteria of existing activity %{public}@ with criteria: %s", &v46, 0x16u);
    }

    free(v36);
    xpc_activity_set_criteria(v11, *v18);
    goto LABEL_33;
  }

  v27 = 0;
LABEL_16:
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v13, v14);
  v18 = a1 + 6;
  xpc_dictionary_set_double(a1[6], "ck_submitted_time", v28);
  if ((v27 & 1) == 0)
  {
    goto LABEL_28;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v29 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v46) = 0;
    _os_log_debug_impl(&dword_1883EA000, v29, OS_LOG_TYPE_DEBUG, "Submitting activity without an existing xpc_activity, will register", &v46, 2u);
  }

  v32 = a1[5];
  v33 = objc_msgSend_identifier(a1[4], v30, v31);
  sub_18864C064(v32, v33, a1[6], a1[7]);

LABEL_37:
}

void sub_18864C064(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_13;
  }

  dispatch_assert_queue_V2(*(a1 + 24));
  v10 = objc_opt_class();
  v12 = objc_msgSend_xpcActivityIdentifierForCKActivityIdentifier_(v10, v11, v7);
  if (objc_msgSend_isEqual_(v12, v13, v7))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_scheduler;
    if (!os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    *buf = 138543362;
    *&buf[4] = v7;
    v17 = "Calling xpc_activity_register for activity %{public}@";
    v18 = v14;
    v19 = 12;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_scheduler;
    if (!os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    v17 = "Calling xpc_activity_register for activity %{public}@ (xpc_activity %{public}@)";
    v18 = v20;
    v19 = 22;
  }

  _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
LABEL_10:
  if (__sTestOverridesAvailable == 1)
  {
    v21 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16);
    objc_msgSend_postNotificationName_object_(v21, v22, @"CKSchedulerWillRegisterXPCActivityNotification", v12);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = sub_1883EE190;
  v39 = sub_1883EF77C;
  v40 = _Block_copy(v9);
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  dispatch_suspend(*(a1 + 24));
  v23 = v12;
  v26 = objc_msgSend_UTF8String(v12, v24, v25);
  v27 = *MEMORY[0x1E69E9C50];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_18864D53C;
  v29[3] = &unk_1E70C00D0;
  v29[4] = a1;
  v30 = v7;
  v31 = v8;
  v33 = v35;
  v28 = v12;
  v32 = v28;
  v34 = buf;
  xpc_activity_register(v26, v27, v29);

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(buf, 8);

LABEL_13:
}

void sub_18864C3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18864C3D0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v5 = objc_msgSend_nullableContainer(v2, v3, v4);
  v8 = objc_msgSend_deviceContext(v5, v6, v7);
  v11 = objc_msgSend_testDeviceReferenceProtocol(v8, v9, v10);

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v15 = objc_msgSend_containerID(v2, v12, v13);
    isTestContainer = objc_msgSend_isTestContainer(v15, v16, v17);

    v14 = isTestContainer ^ 1u;
  }

  return v14;
}

id sub_18864C470(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7);
  v11 = objc_msgSend_containerID(v4, v9, v10);
  isAppleInternal = objc_msgSend_isAppleInternal(v11, v12, v13);

  if (isAppleInternal)
  {
    v17 = objc_msgSend_identifier(v4, v15, v16);
    v19 = objc_msgSend_CKStringByReplacingUUIDsWithString_(v17, v18, @"<uuid>");
    objc_msgSend_setObject_forKeyedSubscript_(v8, v20, v19, @"activityIdentifier");

    v23 = objc_msgSend_containerID(v4, v21, v22);
    v26 = objc_msgSend_containerIdentifier(v23, v24, v25);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v27, v26, @"containerIdentifier");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v8, v15, @"<redacted>", @"activityIdentifier");
    objc_msgSend_setObject_forKeyedSubscript_(v8, v30, @"ThirdPartyContainer", @"containerIdentifier");
  }

  v31 = MEMORY[0x1E696AD98];
  v32 = objc_msgSend_priority(v4, v28, v29);
  v34 = objc_msgSend_numberWithInteger_(v31, v33, v32);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v35, v34, @"priority");

  if (objc_msgSend_userRequestedBackupTask(v4, v36, v37))
  {
    v40 = MEMORY[0x1E696AD98];
    v41 = objc_msgSend_userRequestedBackupTask(v4, v38, v39);
    v43 = objc_msgSend_numberWithBool_(v40, v42, v41);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v44, v43, @"userRequestedBackupTask");
  }

  if (objc_msgSend_expectedTransferSizeBytes(v4, v38, v39))
  {
    v47 = MEMORY[0x1E696AD98];
    v48 = objc_msgSend_expectedTransferSizeBytes(v4, v45, v46);
    v50 = objc_msgSend_numberWithUnsignedInteger_(v47, v49, v48);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v51, v50, @"transferSizeBytes");
  }

  if (v5)
  {
    string = xpc_dictionary_get_string(v5, *MEMORY[0x1E69E9D68]);
    if (string)
    {
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v53, string);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v55, v54, @"xpcActivityPriority");
    }

    int64 = xpc_dictionary_get_int64(v5, *MEMORY[0x1E69E9C98]);
    v58 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v57, int64);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v59, v58, @"xpcActivityGracePeriod");

    v60 = xpc_dictionary_get_int64(v5, *MEMORY[0x1E69E9C68]);
    v62 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v61, v60);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v63, v62, @"xpcActivityDelay");
  }

  return v8;
}

void sub_18864C81C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v6 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v5, v4, *(a1 + 40));
}

void sub_18864CB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v24 - 112));
  _Unwind_Resume(a1);
}

void sub_18864CB88(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 64);
    v17 = 138543618;
    v18 = v14;
    v19 = 1024;
    v20 = v15;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Registering CK activity %{public}@ replaceExistingHandler=%d", &v17, 0x12u);
  }

  if ((*(a1 + 64) & 1) != 0 || (objc_msgSend_handlersByCKActivityIdentifier(*(a1 + 40), v3, v4), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v5, v6, *(a1 + 32)), v7 = objc_claimAutoreleasedReturnValue(), v7, v5, !v7))
  {
    v9 = _Block_copy(*(a1 + 48));
    v12 = objc_msgSend_handlersByCKActivityIdentifier(*(a1 + 40), v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v13, v9, *(a1 + 32));
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v16 = *(a1 + 32);
      v17 = 138412290;
      v18 = v16;
      _os_log_fault_impl(&dword_1883EA000, v8, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF CLOUDKIT: Registering a handler for a CKScheduler activity identifier that has already been registered (%@).", &v17, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_18864CD74(uint64_t a1, const char *a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  if (!v6)
  {
    sub_18864C064(*(a1 + 32), *(a1 + 40), 0, 0);
  }

  v8 = *(a1 + 40);
  v10 = @"activityIdentifier";
  v11[0] = v8;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v11, &v10, 1);
  AnalyticsSendEvent();
}

void sub_18864D108(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEFAULT, "Unregistering handler for CK activity %{public}@", &v8, 0xCu);
  }

  v6 = objc_msgSend_handlersByCKActivityIdentifier(*(a1 + 40), v3, v4);
  objc_msgSend_removeObjectForKey_(v6, v7, *(a1 + 32));
}

void sub_18864D37C(uint64_t a1, const char *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v22 = 138543362;
      v23 = v10;
      _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling activity %{public}@", &v22, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 40);
      v22 = 138543362;
      v23 = v21;
      _os_log_debug_impl(&dword_1883EA000, v11, OS_LOG_TYPE_DEBUG, "Cancelling unknown activity %{public}@", &v22, 0xCu);
    }
  }

  v12 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), v8, v9);
  objc_msgSend_removeObjectForKey_(v12, v13, *(a1 + 40));

  v14 = objc_opt_class();
  v16 = objc_msgSend_xpcActivityIdentifierForCKActivityIdentifier_(v14, v15, *(a1 + 40));
  v17 = v16;
  v20 = objc_msgSend_UTF8String(v17, v18, v19);
  xpc_activity_unregister(v20);
}

void sub_18864D53C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18864D640;
  block[3] = &unk_1E70C00A8;
  v11 = v3;
  v12 = v5;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v9 = *(a1 + 56);
  v7 = v9;
  v15 = v9;
  v16 = *(a1 + 72);
  v8 = v4;
  dispatch_sync(v6, block);
}

void sub_18864D640(uint64_t a1)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = xpc_activity_get_state(*(a1 + 32));
  v3 = *(a1 + 32);
  v6 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 40), v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v7, v3, *(a1 + 48));

  if (v2 == 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v75 = *(a1 + 48);
      *buf = 138543362;
      *&buf[4] = v75;
      _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Being told to run activity %{public}@", buf, 0xCu);
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    v80 = *(a1 + 48);
    v17 = v16;
    if (!v15)
    {
      goto LABEL_47;
    }

    dispatch_assert_queue_V2(v15[1]);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v78 = _os_activity_create(&dword_1883EA000, "client/scheduler-run", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v78, &state);
    v79 = objc_msgSend_date(MEMORY[0x1E695DF00], v18, v19);
    v22 = objc_msgSend_handlersByCKActivityIdentifier(v15, v20, v21);
    v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, v80);

    v25 = objc_opt_class();
    v27 = objc_msgSend_activityFromXPCActivity_(v25, v26, v17);
    v28 = v27;
    if (v24)
    {
      if (v27)
      {
        objc_initWeak(&location, v15);
        objc_copyWeak(&v83, &location);
        v77 = v24;
        v29 = v80;
        v81 = v29;
        v30 = v28;
        v31 = v28;
        v82 = v31;
        v76 = xpc_activity_add_eligibility_changed_handler();
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v32 = ck_log_facility_scheduler;
        if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v29;
          _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, "Will run scheduler activity %{public}@", buf, 0xCu);
        }

        if (xpc_activity_set_state(v17, 4))
        {
          v33 = v31;
          v34 = sub_18864C3D0(CKScheduler, v31);
          v35 = v29;
          v36 = 0.0;
          v28 = v30;
          v24 = v77;
          if (v34)
          {
            v37 = xpc_activity_copy_criteria(v17);
            v38 = sub_18864C470(CKScheduler, v33, v37);
            v39 = v37;
            v40 = xpc_dictionary_get_double(v37, "ck_submitted_time");
            objc_msgSend_timeIntervalSinceReferenceDate(v79, v41, v42);
            v36 = v43 - v40;
            v46 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v44, v45, v36);
            objc_msgSend_setObject_forKeyedSubscript_(v38, v47, v46, @"durationFromSubmitToRun");

            AnalyticsSendEvent();
          }

          v48 = v15[2];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = sub_18864E0A4;
          v87 = &unk_1E70C0170;
          v88 = v33;
          v94 = v77;
          v89 = v78;
          v90 = v15;
          v91 = v35;
          v92 = v17;
          v95 = v76;
          v93 = v79;
          v96 = v36;
          dispatch_async(v48, buf);
        }

        else
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v28 = v30;
          v55 = ck_log_facility_scheduler;
          v24 = v77;
          if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v29;
            _os_log_error_impl(&dword_1883EA000, v55, OS_LOG_TYPE_ERROR, "Failed to set state to CONTINUE for activity %{public}@", buf, 0xCu);
          }
        }

        objc_destroyWeak(&v83);
        objc_destroyWeak(&location);
        goto LABEL_46;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v53 = ck_log_facility_scheduler;
      if (!os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_46;
      }

      *buf = 138543362;
      *&buf[4] = v80;
      v54 = "No scheduler activity when trying to run activity %{public}@";
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v53 = ck_log_facility_scheduler;
      if (!os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_46;
      }

      *buf = 138543362;
      *&buf[4] = v80;
      v54 = "No handler when trying to run activity %{public}@";
    }

    _os_log_fault_impl(&dword_1883EA000, v53, OS_LOG_TYPE_FAULT, v54, buf, 0xCu);
LABEL_46:

    os_activity_scope_leave(&state);
LABEL_47:

    goto LABEL_48;
  }

  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v49 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
    {
      v50 = *(a1 + 48);
      v51 = v49;
      v52 = CKStringForXPCActivityState(v2);
      *buf = 138543618;
      *&buf[4] = v50;
      *&buf[12] = 2114;
      *&buf[14] = v52;
      _os_log_impl(&dword_1883EA000, v51, OS_LOG_TYPE_INFO, "Received callback for activity %{public}@ with state [%{public}@]", buf, 0x16u);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v74 = *(a1 + 48);
      *buf = 138543362;
      *&buf[4] = v74;
      _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "Checking in for activity %{public}@", buf, 0xCu);
    }

    if (*(a1 + 56))
    {
      v11 = xpc_copy_short_description();
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 48);
        *buf = 138543618;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = v11;
        _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEFAULT, "Submitting activity criteria for %{public}@: %s", buf, 0x16u);
      }

      free(v11);
      xpc_activity_set_criteria(*(a1 + 32), *(a1 + 56));
    }
  }

LABEL_48:
  v56 = *(*(a1 + 72) + 8);
  if ((*(v56 + 24) & 1) == 0)
  {
    if (__sTestOverridesAvailable == 1)
    {
      v57 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
      objc_msgSend_postNotificationName_object_(v57, v58, @"CKSchedulerDidRegisterXPCActivityNotification", *(a1 + 64));

      v56 = *(*(a1 + 72) + 8);
    }

    *(v56 + 24) = 1;
    v59 = *(a1 + 40);
    if (v59)
    {
      v60 = *(v59 + 24);
    }

    else
    {
      v60 = 0;
    }

    dispatch_resume(v60);
    if (__sTestOverridesAvailable == 1)
    {
      objc_msgSend_delayAfterXPCActivityRegister(*(a1 + 40), v61, v62);
      if (v65 > 0.0)
      {
        v66 = MEMORY[0x1E696AF00];
        objc_msgSend_delayAfterXPCActivityRegister(*(a1 + 40), v63, v64);
        objc_msgSend_sleepForTimeInterval_(v66, v67, v68);
      }
    }
  }

  v69 = *(*(*(a1 + 80) + 8) + 40);
  if (v69)
  {
    v70 = *(a1 + 40);
    if (v70)
    {
      v71 = *(v70 + 16);
    }

    else
    {
      v71 = 0;
    }

    dispatch_async(v71, v69);
    v72 = *(*(a1 + 80) + 8);
    v73 = *(v72 + 40);
    *(v72 + 40) = 0;
  }
}

void sub_18864DECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_18864DF20(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  should_defer = xpc_activity_should_defer(v3);

  if (should_defer)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEFAULT, "Should defer activity %{public}@", buf, 0xCu);
    }

    if (WeakRetained)
    {
      v8 = WeakRetained[1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_18864E098;
      block[3] = &unk_1E70BC388;
      v10 = *(a1 + 40);
      dispatch_async(v8, block);
    }
  }
}

void sub_18864E0A4(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = objc_msgSend_identifier(v3, v5, v6);
    *buf = 138543362;
    v23 = v7;
    _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEFAULT, "Running scheduler activity %{public}@", buf, 0xCu);
  }

  v8 = *(a1 + 80);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18864E290;
  v15[3] = &unk_1E70C0148;
  v9 = *(a1 + 32);
  *&v10 = *(a1 + 40);
  *(&v10 + 1) = *(a1 + 48);
  v14 = v10;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v16 = v14;
  v17 = v13;
  v20 = *(a1 + 88);
  v18 = *(a1 + 32);
  v19 = *(a1 + 72);
  v21 = *(a1 + 96);
  (*(v8 + 16))(v8, v9, v15);
}

void sub_18864E290(uint64_t a1, uint64_t a2)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18864E50C;
  block[3] = &unk_1E70C0120;
  v33 = *(a1 + 48);
  v36 = a2;
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v34 = v6;
  v35 = v7;
  v37 = *(a1 + 80);
  dispatch_async(v5, block);
  if (sub_18864C3D0(CKScheduler, *(a1 + 64)))
  {
    v8 = xpc_activity_copy_criteria(*(a1 + 56));
    v9 = sub_18864C470(CKScheduler, *(a1 + 64), v8);
    v12 = objc_msgSend_date(MEMORY[0x1E695DF00], v10, v11);
    v13 = xpc_dictionary_get_double(v8, "ck_submitted_time");
    objc_msgSend_timeIntervalSinceReferenceDate(v12, v14, v15);
    v19 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, v16 - v13);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v20, v19, @"durationFromSubmitToComplete");

    objc_msgSend_timeIntervalSinceDate_(v12, v21, *(a1 + 72));
    v24 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v22, v23);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v25, v24, @"durationFromRunToComplete");

    if (*(a1 + 88) != 0.0)
    {
      v28 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v26, v27);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v29, v28, @"durationFromSubmitToRun");
    }

    v30 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v26, a2);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v31, v30, @"result");

    AnalyticsSendEvent();
  }

  os_activity_scope_leave(&state);
}