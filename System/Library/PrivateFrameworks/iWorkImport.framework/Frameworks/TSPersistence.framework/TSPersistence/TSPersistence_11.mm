void sub_276AEDAA4(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v16, v20, 16);
  if (v5)
  {
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_removeObject_(*(*(a1 + 40) + 24), v4, *(*(&v16 + 1) + 8 * v7++), v16);
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v16, v20, 16);
    }

    while (v5);
  }

  if (!objc_msgSend_count(*(*(a1 + 40) + 32), v8, v9))
  {
    v12 = *(a1 + 40);
    v13 = *(v12 + 32);
    *(v12 + 32) = 0;
  }

  if (!objc_msgSend_count(*(*(a1 + 40) + 24), v10, v11, v16))
  {
    v14 = *(a1 + 40);
    v15 = *(v14 + 24);
    *(v14 + 24) = 0;
  }
}

void sub_276AEDCC0(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v2 = dispatch_group_create();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  obj = *(*(a1 + 32) + 24);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v19, v25, 16);
  if (v4)
  {
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        dispatch_group_enter(v2);
        v8 = *(*(a1 + 32) + 8);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_276AEDF74;
        v18[3] = &unk_27A6E7268;
        v18[6] = v24;
        v18[7] = v23;
        v18[4] = v7;
        v18[5] = v2;
        objc_msgSend_conditionallyBeginAccessingResourcesWithCompletionQueue_completionHandler_(v7, v9, v8, v18);
        ++v6;
      }

      while (v4 != v6);
      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v19, v25, 16);
    }

    while (v4);
  }

  v11 = *(a1 + 40);
  v12 = v11;
  if (!v11)
  {
    v12 = dispatch_get_global_queue(0, 0);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AEE00C;
  block[3] = &unk_27A6E7290;
  v15 = *(a1 + 48);
  v16 = v24;
  v17 = v23;
  dispatch_group_notify(v2, v12, block);
  if (!v11)
  {
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
}

void sub_276AEDF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276AEDF74(uint64_t *a1, const char *a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = objc_msgSend_sharedManager(TSPResourceRequestManager, a2, a3);
    *(*(a1[6] + 8) + 24) |= objc_msgSend_resourceAccessTypeForResourceRequest_(v4, v5, a1[4]);

    *(*(a1[7] + 8) + 24) += objc_msgSend_estimatedDownloadSize(a1[4], v6, v7);
  }

  v8 = a1[5];

  dispatch_group_leave(v8);
}

void sub_276AEE170(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = dispatch_get_global_queue(0, 0);
  }

  v6 = v3;
  v9 = objc_msgSend_count(*(*(a1 + 40) + 24), v4, v5);
  if (v9)
  {
    queue = v6;
    group = dispatch_group_create();
    v37 = dispatch_group_create();
    v41 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v10, v11);
    v42 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v12, v13);
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2020000000;
    v57[3] = 0;
    v38 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v14, v9);
    v39 = objc_msgSend_setWithCapacity_(MEMORY[0x277CBEB58], v15, v9);
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x3032000000;
    v55[3] = sub_276AED57C;
    v55[4] = sub_276AED58C;
    v56 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v16 = *(*(a1 + 40) + 24);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v51, v58, 16);
    if (v20)
    {
      v21 = *v52;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v52 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v51 + 1) + 8 * i);
          v24 = objc_msgSend_progress(v23, v18, v19, queue);
          objc_msgSend_fractionCompleted(v24, v25, v26);
          if (v27 == 1.0)
          {
            v28 = *(*(a1 + 40) + 16);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_276AEE738;
            block[3] = &unk_27A6E2898;
            block[4] = v42;
            block[5] = v23;
            dispatch_async(v28, block);
          }

          else
          {
            dispatch_group_enter(group);
            v29 = *(*(a1 + 40) + 16);
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = sub_276AEE74C;
            v49[3] = &unk_27A6E72B8;
            v49[4] = v23;
            v49[5] = v41;
            v49[6] = v24;
            v49[7] = v42;
            v49[8] = group;
            v49[9] = v57;
            objc_msgSend_conditionallyBeginAccessingResourcesWithCompletionQueue_completionHandler_(v23, v30, v29, v49);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v51, v58, 16);
      }

      while (v20);
    }

    dispatch_group_enter(v37);
    v31 = *(a1 + 40);
    v32 = *(v31 + 16);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_276AEE824;
    v48[3] = &unk_27A6E7358;
    v33 = *(a1 + 48);
    v48[4] = v41;
    v48[5] = v33;
    v48[6] = v42;
    v48[7] = v37;
    v48[8] = v31;
    v48[9] = v39;
    v48[11] = v57;
    v48[12] = v55;
    v48[10] = v38;
    dispatch_group_notify(group, v32, v48);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_276AEED84;
    v45[3] = &unk_27A6E7380;
    v46 = *(a1 + 56);
    v47 = v55;
    v45[4] = v39;
    v45[5] = v38;
    v45[6] = *(a1 + 40);
    dispatch_group_notify(v37, queue, v45);

    _Block_object_dispose(v55, 8);
    _Block_object_dispose(v57, 8);

    v6 = queue;
  }

  else
  {
    v34 = *(a1 + 56);
    if (v34)
    {
      if (v6)
      {
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = sub_276AEEEE8;
        v43[3] = &unk_27A6E3480;
        v44 = v34;
        dispatch_async(v6, v43);
      }

      else
      {
        v35 = objc_msgSend_set(MEMORY[0x277CBEB98], v7, v8);
        (v34)[2](v34, v35, 0);

        v6 = 0;
      }
    }
  }
}

void sub_276AEE74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = objc_msgSend_estimatedDownloadSize(*(a1 + 32), a2, a3);
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    *(*(*(a1 + 72) + 8) + 24) += v7;
    v8 = *(a1 + 40);
    v9 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v6, v7);
    objc_msgSend_setObject_forKey_(v8, v10, v9, *(a1 + 48));
  }

  v11 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, a2);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 56), v12, v11, *(a1 + 32));

  v13 = *(a1 + 64);

  dispatch_group_leave(v13);
}

void sub_276AEE824(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    objc_msgSend_setTotalUnitCount_(*(a1 + 40), v4, *(*(*(a1 + 88) + 8) + 24));
    v5 = *(a1 + 40);
    v7 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v6, *(*(*(a1 + 88) + 8) + 24));
    objc_msgSend_setUserInfoObject_forKey_(v5, v8, v7, @"TSPResourceContextDownloadSizeKey");

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_276AEEA00;
    v21[3] = &unk_27A6E72E0;
    v9 = *(a1 + 32);
    v21[4] = *(a1 + 40);
    v21[5] = &v22;
    objc_msgSend_tsu_enumerateKeysAndObjectsUsingBlock_(v9, v10, v21);
    v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v11, v23[3]);
    objc_msgSend_setFileTotalCount_(*(a1 + 40), v13, v12);

    _Block_object_dispose(&v22, 8);
  }

  v14 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_276AEEB78;
  v17[3] = &unk_27A6E7330;
  v15 = *(a1 + 56);
  v20 = *(a1 + 96);
  v16 = *(a1 + 72);
  v18 = v15;
  v19 = v16;
  objc_msgSend_tsu_enumerateKeysAndObjectsUsingBlock_(v14, v4, v17);
  dispatch_group_leave(*(a1 + 56));
}

void sub_276AEEA00(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v9 = objc_msgSend_longLongValue(v5, v6, v7);
  if (v9 <= 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPResourceContext performResourceAccessUsingQueue:block:]_block_invoke_5");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPResourceContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 226, 0, "Invalid pendingUnitCount (%lld) for progress: %@", v9, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  objc_msgSend_addChild_withPendingUnitCount_(*(a1 + 32), v8, v24, v9);
  v19 = objc_msgSend_fileTotalCount(v24, v17, v18);
  v22 = objc_msgSend_unsignedIntegerValue(v19, v20, v21);

  if (v22 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  *(*(*(a1 + 40) + 8) + 24) += v23;
}

void sub_276AEEB78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_group_enter(*(a1 + 32));
  v7 = *(*(a1 + 40) + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276AEEC84;
  v14[3] = &unk_27A6E7308;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v15 = v6;
  v16 = v8;
  v10 = *(a1 + 64);
  v17 = v5;
  v18 = v9;
  v19 = *(a1 + 32);
  v20 = v10;
  v11 = v5;
  v12 = v6;
  objc_msgSend_performResourceAccessAsynchronouslyUsingQueue_block_(v11, v13, v7, v14);
}

void sub_276AEEC84(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v9 = objc_msgSend_copy(a3, v5, v6);
  if (v17)
  {
    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      v10 = objc_msgSend_copy(v17, v7, v8);
      v11 = *(*(a1 + 72) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  else if ((objc_msgSend_BOOLValue(*(a1 + 32), v7, v8) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 40), v13, *(a1 + 48));
  }

  v14 = *(a1 + 56);
  v15 = _Block_copy(v9);
  objc_msgSend_addObject_(v14, v16, v15);

  dispatch_group_leave(*(a1 + 64));
}

uint64_t sub_276AEED84(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  v5 = objc_msgSend_copy(*(a1 + 32), a2, a3);
  (*(v4 + 16))(v4, v5, *(*(*(a1 + 64) + 8) + 40));

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(a1 + 40);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v18, 16);
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v14 + 1) + 8 * v10) + 16))(*(*(&v14 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v11, &v14, v18, 16);
    }

    while (v8);
  }

  return objc_msgSend_removeResourceRequests_(*(a1 + 48), v12, *(a1 + 32), v14);
}

void sub_276AEEEE8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_set(MEMORY[0x277CBEB98], a2, a3);
  (*(v3 + 16))(v3);
}

void sub_276AEF278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a20, 8);

  _Unwind_Resume(a1);
}

void sub_276AEF2EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v72 = *MEMORY[0x277D85DE8];
  objc_msgSend_tags(*(a1 + 32), a2, a3);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v4 = v67 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v66, v71, 16);
  if (v8)
  {
    v9 = *v67;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v67 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(a1 + 40) + 32);
      v12 = objc_msgSend_hash(*(*(&v66 + 1) + 8 * v10), v6, v7);
      v14 = objc_msgSend_objectForKey_(v11, v13, v12);
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v66, v71, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v19 = *(*(a1 + 40) + 32);
    v20 = objc_msgSend_digestString(*(a1 + 32), v17, v18);
    v23 = objc_msgSend_hash(v20, v21, v22);
    v25 = objc_msgSend_objectForKey_(v19, v24, v23);
    v26 = *(*(a1 + 48) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    if (!*(*(*(a1 + 48) + 8) + 40) && *(a1 + 56) == 1)
    {
      if (objc_msgSend_count(v4, v28, v29))
      {
        v31 = dispatch_semaphore_create(0);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        obj = v4;
        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v62, v70, 16);
        if (v35)
        {
          v36 = *v63;
          while (2)
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v63 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v62 + 1) + 8 * i);
              v39 = objc_msgSend_sharedManager(TSPResourceRequestManager, v33, v34);
              v41 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v40, v38);
              ResourceRequestForTags_resourceContext = objc_msgSend_createResourceRequestForTags_resourceContext_(v39, v42, v41, *(a1 + 40));

              if (ResourceRequestForTags_resourceContext)
              {
                v58 = 0;
                v59 = &v58;
                v60 = 0x2020000000;
                v61 = 0;
                v57[0] = MEMORY[0x277D85DD0];
                v57[1] = 3221225472;
                v57[2] = sub_276AEF79C;
                v57[3] = &unk_27A6E64A8;
                v57[4] = v31;
                v57[5] = &v58;
                objc_msgSend_conditionallyBeginAccessingResourcesWithCompletionQueue_completionHandler_(ResourceRequestForTags_resourceContext, v44, 0, v57);
                dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
                if (*(v59 + 24) == 1)
                {
                  v45 = *(*(a1 + 48) + 8);
                  v46 = *(v45 + 40);
                  *(v45 + 40) = ResourceRequestForTags_resourceContext;
                  v47 = ResourceRequestForTags_resourceContext;

                  _Block_object_dispose(&v58, 8);
                  goto LABEL_25;
                }

                _Block_object_dispose(&v58, 8);
              }
            }

            v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v62, v70, 16);
            if (v35)
            {
              continue;
            }

            break;
          }
        }

LABEL_25:
      }

      v48 = *(*(*(a1 + 48) + 8) + 40);
      if (v48 || (objc_msgSend_sharedManager(TSPResourceRequestManager, v30, 0), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v50, *(a1 + 32)), v51 = objc_claimAutoreleasedReturnValue(), ResourceRequestForDocumentResourceInfos_resourceContext = objc_msgSend_createResourceRequestForDocumentResourceInfos_resourceContext_(v49, v52, v51, *(a1 + 40)), v54 = *(*(a1 + 48) + 8), v55 = *(v54 + 40), *(v54 + 40) = ResourceRequestForDocumentResourceInfos_resourceContext, v55, v51, v49, (v48 = *(*(*(a1 + 48) + 8) + 40)) != 0))
      {
        objc_msgSend_accessQueue_addResourceRequest_(*(a1 + 40), v30, v48);
      }
    }
  }
}

uint64_t sub_276AF06CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276AF06E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

void sub_276AF0838(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 64) & 1) != 0 && !*(v2 + 16))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 56));
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_276AF0910;
    v5[3] = &unk_27A6E73D0;
    v5[4] = *(a1 + 32);
    objc_msgSend_performReadUsingAccessor_(WeakRetained, v4, v5);

    *(*(a1 + 32) + 64) &= ~1u;
    v2 = *(a1 + 32);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(v2 + 16));
}

void sub_276AF0910(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276AF0A1C;
  v14[3] = &unk_27A6E73A8;
  v14[4] = v4;
  v5 = v3;
  v15 = v5;
  v13 = 0;
  v7 = objc_msgSend_newDocumentPropertiesWithURL_zipProvider_error_(v4, v6, v5, v14, &v13);
  v8 = v13;
  v9 = v13;
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = v7;

  v12 = *(a1 + 32);
  if (!*(v12 + 16))
  {
    objc_storeStrong((v12 + 40), v8);
  }
}

id sub_276AF0A1C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v4 & 0xFD;
  if (objc_msgSend_reloadZipArchiveIfNeededWithURLImpl_isLazyLoading_forceReload_error_(*(a1 + 32), a2, *(a1 + 40), (v4 >> 1) & 1, 0, a2))
  {
    v5 = *(*(a1 + 32) + 24);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_276AF1150()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF127C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276AF1354(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  if ((v4 & 2) != 0)
  {
    *(v3 + 64) = v4 & 0xFD;
    objc_msgSend_reloadZipArchiveIfNeededWithURLImpl_isLazyLoading_forceReload_error_(*(a1 + 32), a2, 0, (v4 >> 1) & 1, 0, 0);
LABEL_5:
    v5 = *(*(a1 + 40) + 16);
    goto LABEL_6;
  }

  if (*(v3 + 24))
  {
    objc_msgSend_reloadZipArchiveIfNeededWithURLImpl_isLazyLoading_forceReload_error_(v3, a2, 0, (v4 >> 1) & 1, 0, 0);
    goto LABEL_5;
  }

  v5 = *(*(a1 + 40) + 16);
LABEL_6:

  return v5();
}

void sub_276AF162C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v33 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_276AF1688(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  isLazyLoading_error = objc_msgSend_newZipArchiveFromPackageURL_isLazyLoading_error_(v6, v8, v4, v5, &obj);
  objc_storeStrong((v7 + 40), obj);
  if (isLazyLoading_error)
  {
    v10 = *(a1 + 32);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_276AF1A50;
    v43[3] = &unk_27A6E7420;
    v44 = isLazyLoading_error;
    v11 = *(*(a1 + 40) + 8);
    v42 = *(v11 + 40);
    v13 = objc_msgSend_newDocumentPropertiesWithURL_zipProvider_error_(v10, v12, v4, v43, &v42);
    objc_storeStrong((v11 + 40), v42);
    if (!v13)
    {
      if ((*(a1 + 64) & 1) == 0 && *MEMORY[0x277D81408] != -1)
      {
        sub_276BD6CF4();
      }

      goto LABEL_18;
    }

    v16 = *(a1 + 32);
    v17 = *(v16 + 16);
    if (*(v16 + 64))
    {
      if (v17)
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPPackage reloadZipArchiveIfNeededWithURLImpl:isLazyLoading:forceReload:error:]_block_invoke");
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 413, 0, "expected nil value for '%{public}s'", "_documentProperties");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
        v16 = *(a1 + 32);
      }

      objc_storeStrong((v16 + 16), v13);
      *(*(a1 + 32) + 64) &= ~1u;
    }

    else
    {
      v18 = objc_msgSend_documentUUID(v17, v14, v15);
      v21 = objc_msgSend_documentUUID(v13, v19, v20);
      if ((objc_msgSend_isEqual_(v18, v22, v21) & 1) == 0)
      {

LABEL_15:
        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD6CCC();
        }

        v39 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v31, 0);
        v40 = *(*(a1 + 40) + 8);
        v41 = *(v40 + 40);
        *(v40 + 40) = v39;

        goto LABEL_18;
      }

      v25 = objc_msgSend_versionUUID(*(*(a1 + 32) + 16), v23, v24);
      v28 = objc_msgSend_versionUUID(v13, v26, v27);
      isEqual = objc_msgSend_isEqual_(v25, v29, v28);

      if ((isEqual & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    objc_storeStrong((*(a1 + 32) + 24), isLazyLoading_error);
    *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_18:
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 40), *(*(*(a1 + 40) + 8) + 40));
    if ((*(a1 + 64) & 1) == 0 && *MEMORY[0x277D81408] != -1)
    {
      sub_276BD6D1C();
    }
  }
}

void sub_276AF1A58()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF1A9C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF1AE0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276AF1BE8(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  objc_storeWeak((*(a1 + 32) + 56), *(a1 + 48));
  v3 = *(a1 + 32);
  v4 = v3[3];

  return objc_msgSend_didReloadZipArchive_packageURL_error_(v3, v2, v4, 0, 0);
}

void sub_276AF1E58(uint64_t a1, void *a2)
{
  v19 = a2;
  if (objc_msgSend_hasPrefix_(v19, v3, @"Index") && objc_msgSend_hasSuffix_(v19, v4, @"iwa"))
  {
    v7 = objc_msgSend_length(@"Index", v5, v6);
    v10 = objc_msgSend_length(v19, v8, v9);
    v13 = objc_msgSend_length(@"iwa", v11, v12);
    v15 = objc_msgSend_substringWithRange_(v19, v14, v7 + 1, -2 - v13 - (v7 - v10));
    if (objc_msgSend_length(v15, v16, v17))
    {
      objc_msgSend_addObject_(*(a1 + 32), v18, v15);
    }
  }
}

void sub_276AF2498()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF2768()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF27AC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF2CF0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF2D34()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF42E4()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF4550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_276AF458C(uint64_t a1, void *__src, size_t __n)
{
  *(a1 + 16) |= 0x10u;
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  v7 = __n;
  if (__n)
  {
    memcpy(&__dst, __src, __n);
  }

  __dst.n128_u8[__n] = 0;
  v5 = *(a1 + 8);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((a1 + 56), &__dst, v5);
  if (v7 < 0)
  {
    operator delete(__dst.n128_u64[0]);
  }
}

void sub_276AF467C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276AF4E90(uint64_t a1, int a2, void *a3, void *a4)
{
  v18 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  objc_msgSend_removeObjectModifyDelegate_(WeakRetained, v9, *(a1 + 40));

  v12 = *(a1 + 56);
  if (a2)
  {
    v13 = objc_msgSend_rootObjectComponentDispatchData(*(a1 + 48), v10, v11);
    objc_opt_class();
    v14 = TSUDynamicCast();
    v17 = objc_msgSend_cachedDataMap(v14, v15, v16);
    (*(v12 + 16))(v12, v18, v13, v17, 0);

LABEL_6:
    goto LABEL_7;
  }

  v13 = v7;
  if (!v7)
  {
    v13 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v10, 0);
  }

  (*(v12 + 16))(v12, 0, 0, 0, v13);
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_7:
}

void sub_276AF54A4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AF5550;
  v7[3] = &unk_27A6E74C0;
  v8 = v4;
  v5 = v4;
  objc_msgSend_enumerateItemsUsingBlock_(a2, v6, v7);
}

void sub_276AF5550(uint64_t a1, void *a2)
{
  v14 = a2;
  if (!objc_msgSend_tsp_isLazyReference(v14, v3, v4))
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  objc_opt_class();
  v5 = TSUDynamicCast();
  v8 = objc_msgSend_objectIfLoaded(v5, v6, v7);

  if (v8)
  {
LABEL_5:
    v11 = *(a1 + 32);
    v12 = objc_msgSend_tsp_publicLoggingDescription(v8, v9, v10);
    objc_msgSend_addObject_(v11, v13, v12);
  }

LABEL_6:
}

uint64_t sub_276AF5DC0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v5 = a1;
  sub_2769BB328(&v5);
  return a1;
}

void sub_276AF5F1C(void *a1)
{
  v2 = sub_2769ABC64((a1[4] + 56), a1 + 5);
  if (!v2)
  {
    v3 = a1[4];
    v4 = a1[5];
    memset(v25, 0, 24);
    v25[3] = v4;
    *v26 = 0u;
    *__p = 0u;
    v28 = 0u;
    v29 = 1;
    sub_276AF6CA8(v3 + 56, a1 + 5, v25);
  }

  v30 = v2 + 3;
  v5 = a1[6];
  v6 = *v5;
  v7 = v5[1];
  while (v6 != v7)
  {
    v8 = *v6++;
    sub_276AF61D4(v30, v8);
  }

  v9 = a1[7];
  if (v9)
  {
    for (i = *(v9 + 16); i; i = *i)
    {
      v11 = v30;
      v13 = v30[5];
      v12 = v30[6];
      if (v13 >= v12)
      {
        v15 = v30[4];
        v16 = v13 - v15;
        v17 = (v13 - v15) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          sub_2769BA860();
        }

        v19 = v12 - v15;
        if (v19 >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          sub_2769BAFA4((v30 + 4), v20);
        }

        v21 = (v13 - v15) >> 3;
        v22 = (8 * v17);
        v23 = (8 * v17 - 8 * v21);
        *v22 = i[2];
        v14 = v22 + 1;
        memcpy(v23, v15, v16);
        v24 = v11[4];
        v11[4] = v23;
        v11[5] = v14;
        v11[6] = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v13 = i[2];
        v14 = v13 + 8;
      }

      v11[5] = v14;
    }
  }
}

void sub_276AF60EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_276AF5DC0(va);
  _Unwind_Resume(a1);
}

void sub_276AF6100(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2769BA860();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_276A73310(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_276AF61D4(void *a1, void *a2)
{
  v3 = a2;
  sub_276AF68E8(a1, &v3);
}

void sub_276AF636C(uint64_t **a1, uint64_t a2)
{
  for (i = *a1; i != a1[1]; ++i)
  {
    v5 = atomic_load((a2 + 8));
    if (v5)
    {
      break;
    }

    sub_276AF69DC(*i);
    v6 = *i;
    *i = 0;
  }
}

void sub_276AF648C(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = v4[4];
  v6 = v4[5];
  if (v6 != v5)
  {
    do
    {
      v8 = *(v6 - 8);
      v6 -= 8;
      v7 = v8;
      if ((*(v8 + 80) & 4) == 0)
      {
        objc_msgSend_visitItemForCycleDetection_(v4, v2, v7);
        v4 = *(a1 + 32);
      }

      v5 = v4[4];
    }

    while (v6 != v5);
    v6 = v4[5];
  }

  while (v6 != v5)
  {
    v10 = *(v6 - 8);
    v6 -= 8;
    v9 = v10;
    if ((*(v10 + 80) & 3) == 1)
    {
      objc_msgSend_runFinalizeHandlerForItem_(v4, v2, v9);
      v4 = *(a1 + 32);
    }

    v5 = v4[4];
  }

  v11 = sub_2769ABC64(v4 + 7, v4 + 2);
  if (!v11)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Root object item should have been set up.", "[TSPFinalizeHandlerQueue runFinalizeHandlers]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFinalizeHandlerQueue.mm", 197);
    v12 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPFinalizeHandlerQueue runFinalizeHandlers]_block_invoke");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFinalizeHandlerQueue.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v14, v16, 197, 1, "Root object item should have been set up.");

    TSUCrashBreakpoint();
    abort();
  }

  *(*(a1 + 32) + 96) = v11 + 3;
  sub_276AF636C(*(*(a1 + 32) + 96), *(*(a1 + 32) + 24));
  *(*(a1 + 32) + 96) = 0;

  objc_autoreleasePoolPop(v3);
}

void sub_276AF6618(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = objc_begin_catch(a1);
    v8 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPFinalizeHandlerQueue runFinalizeHandlers]_block_invoke");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFinalizeHandlerQueue.mm");
    v15 = objc_msgSend_name(v7, v13, v14);
    v19 = objc_msgSend_reason(v7, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v18, v10, v12, 214, 0, "Caught %{public}@ while running finalize handler: %{public}@");

    *(*(*(v2 + 40) + 8) + 24) = 0;
    objc_end_catch();
    JUMPOUT(0x276AF6554);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276AF68E8(void *a1, const void **a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_2769BA860();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_2769BB09C(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = _Block_copy(*a2);
    v13[2] = v12 + 1;
    sub_2769BAFEC(a1, v13);
    v7 = a1[1];
    result = sub_2769BB0E4(v13);
  }

  else
  {
    result = _Block_copy(*a2);
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_276AF69C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2769BB0E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276AF69E8(uint64_t a1)
{
  sub_276AF6A24(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_276AF6A24(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = *(v2 + 10);
      if (v4)
      {
        *(v2 + 11) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 7);
      if (v5)
      {
        *(v2 + 8) = v5;
        operator delete(v5);
      }

      v6 = (v2 + 24);
      sub_2769BB328(&v6);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_276AF6B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_276AF6BD8(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_276AF6BD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a2 + 80);
    if (v3)
    {
      *(a2 + 88) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 56);
    if (v4)
    {
      *(a2 + 64) = v4;
      operator delete(v4);
    }

    v5 = (a2 + 24);
    sub_2769BB328(&v5);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_276AF6C4C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_276AF6A24(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_276AF6D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_276AF6BD8(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_276AF6DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_276AF799C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_276AF79F4()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

TSPCryptoReadChannel *sub_276AF7A38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [TSPCryptoReadChannel alloc];
  v10 = objc_msgSend_cryptoKey(*(a1 + 32), v8, v9);
  Channel_decryptionKey_blockInfos = objc_msgSend_initWithReadChannel_decryptionKey_blockInfos_(v7, v11, v5, v10, v6);

  return Channel_decryptionKey_blockInfos;
}

void sub_276AF7C3C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF81CC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF8210()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF8254()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AF8774()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AF9F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSPSnappyComponentWriteChannel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL sub_276AFA02C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 65560))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Already closed", "[TSPSnappyComponentWriteChannel writeData:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSnappyComponentWriteChannel.mm", 37);
    v4 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPSnappyComponentWriteChannel writeData:]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSnappyComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 37, 1, "Already closed");

    TSUCrashBreakpoint();
    abort();
  }

  v2 = *(a1 + 40);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = sub_276AFA168;
  applier[3] = &unk_27A6E7538;
  applier[4] = v1;
  return dispatch_data_apply(v2, applier);
}

uint64_t sub_276AFA168(uint64_t a1, void *a2, uint64_t a3, char *a4, size_t a5)
{
  for (i = a2; a5; a5 -= v11)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 65552);
    if (v10 >= 0x10000)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Invalid uncompressed length.", "[TSPSnappyComponentWriteChannel writeData:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSnappyComponentWriteChannel.mm", 44);
      v16 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPSnappyComponentWriteChannel writeData:]_block_invoke_2");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSnappyComponentWriteChannel.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v18, v20, 44, 1, "Invalid uncompressed length.");

      TSUCrashBreakpoint();
      abort();
    }

    if (a5 >= 0x10000 - v10)
    {
      v11 = 0x10000 - v10;
    }

    else
    {
      v11 = a5;
    }

    memcpy((v9 + v10 + 16), a4, v11);
    *(*(a1 + 32) + 65552) += v11;
    v14 = *(a1 + 32);
    if (v14[8194] == 0x10000)
    {
      objc_msgSend_writeBlock(v14, v12, v13);
    }

    a4 += v11;
  }

  return 1;
}

void sub_276AFA3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v4 = v3;

  snappy::UncheckedByteArraySink::~UncheckedByteArraySink(va);
  snappy::ByteArraySource::~ByteArraySource(va1);
  _Unwind_Resume(a1);
}

void sub_276AFA498(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4[8195];
  if (v5)
  {
    if (v4[8194])
    {
      objc_msgSend_writeBlock(v4, a2, a3);
      v5 = *(*(a1 + 32) + 65560);
    }

    objc_msgSend_close(v5, a2, a3);
    v6 = *(a1 + 32);
    v7 = *(v6 + 65560);
    *(v6 + 65560) = 0;
  }
}

void sub_276AFA638(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPSnappyReadChannel;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t sub_276AFA85C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276AFA874(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v9 = a4;
  v10 = *(*(*(a1 + 48) + 8) + 24);
  if (v9 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v10 = *(*(*(a1 + 48) + 8) + 24);
  }

  if ((v10 & 1) == 0)
  {
    if (v7)
    {
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      if (v12)
      {
        concat = dispatch_data_create_concat(v12, v7);
        v14 = *(*(a1 + 56) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = concat;
      }

      else
      {
        v16 = v7;
        v15 = *(v11 + 40);
        *(v11 + 40) = v16;
      }
    }

    v17 = *(*(a1 + 56) + 8);
    obj = *(v17 + 40);
    isDone_handler = objc_msgSend_processData_isDone_handler_(*(a1 + 32), v8, &obj, a2, *(a1 + 40));
    objc_storeStrong((v17 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = isDone_handler ^ 1;
  }
}

void sub_276AFAD94()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AFADD8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AFAE1C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AFAF5C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AFAFA0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AFB130()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AFB174()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AFB584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  v40 = v36;

  _Unwind_Resume(a1);
}

void sub_276AFB630()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AFB674()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AFB6B8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && UnsafePointer != -1)
  {
    v3 = v2;
    sub_276BD7000();
    v2 = v3;
  }
}

void sub_276AFB710()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AFBCC0(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v7 = objc_msgSend_storage(a3, v5, v6);
  v10 = objc_msgSend_decryptionInfo(v7, v8, v9);

  v13 = objc_msgSend_encryptionKey(*(a1 + 32), v11, v12);
  v14 = sub_276AB678C(v10, v13, 0x100000);

  if (v14)
  {
    if (UnsafePointer != -1)
    {
      sub_276BD703C();
    }

    objc_msgSend_removeObjectForKey_(*(a1 + 40), v15, v16);
  }
}

void sub_276AFBDC8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AFBE0C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AFBE50(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && UnsafePointer != -1)
  {
    v3 = v2;
    sub_276BD7050();
    v2 = v3;
  }
}

void sub_276AFBEA8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AFC3F0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_276AFC464(uint64_t a1, void *a2)
{
  v16 = a2;
  v5 = objc_msgSend_originalPackage(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_componentZipArchive(v5, v6, v7);
  v11 = objc_msgSend_name(v16, v9, v10);
  v13 = objc_msgSend_entryForName_(v8, v12, v11);
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_size(v13, v14, v15);
}

void sub_276AFC564(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_tsu_pendingUnitCountForIncompleteProgress_(*(a1 + 32), v4, *(*(*(a1 + 56) + 8) + 24));
  objc_msgSend_becomeCurrentWithPendingUnitCount_(*(a1 + 32), v6, v5);
  if (v3)
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, v3);
    }
  }

  else
  {
    v10 = objc_msgSend_zipArchiveWriter(*(a1 + 40), v7, v8);
    v11 = *(a1 + 40);
    v12 = *(v11 + 144);
    v15 = objc_msgSend_writeURL(*(v11 + 152), v13, v14);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = sub_276AFC6D4;
    v21 = &unk_27A6E75F8;
    v16 = *(a1 + 48);
    v22 = *(a1 + 40);
    v23 = v16;
    objc_msgSend_copyEntriesFromZipFileWriter_readingFromURL_options_completionHandler_(v10, v17, v12, v15, 0, &v18);
  }

  objc_msgSend_resignCurrent(*(a1 + 32), v7, v8, v18, v19, v20, v21, v22);
}

void sub_276AFC6D4(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 152);
  *(v5 + 152) = 0;

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

void sub_276AFC89C(id *a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    v6 = a1[4];
    if (v6[20])
    {
      v7 = v6[19];
      if (!v7)
      {
        v8 = MEMORY[0x277D81150];
        v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPFilePackageWriter closeWithQueue:completion:]_block_invoke");
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFilePackageWriter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 281, 0, "invalid nil value for '%{public}s'", "_safeSaveAssistant");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
        v7 = *(a1[4] + 19);
      }

      v15 = objc_msgSend_writeURL(v7, v3, v4);

      if (!v15)
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPFilePackageWriter closeWithQueue:completion:]_block_invoke");
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFilePackageWriter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 282, 0, "invalid nil value for '%{public}s'", "_safeSaveAssistant.writeURL");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
      }

      v46.receiver = a1[4];
      v46.super_class = TSPFilePackageWriter;
      v24 = objc_msgSendSuper2(&v46, sel_zipArchiveWriter);
      v27 = objc_msgSend_entriesCount(v24, v25, v26);

      if (v27)
      {
        v29 = MEMORY[0x277D81150];
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPFilePackageWriter closeWithQueue:completion:]_block_invoke");
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFilePackageWriter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 284, 0, "Only the delayed zip archive writer should have entries");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
      }

      v45.receiver = a1[4];
      v45.super_class = TSPFilePackageWriter;
      v36 = objc_msgSendSuper2(&v45, sel_zipArchiveWriter);
      v37 = dispatch_get_global_queue(0, 0);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_276AFCC94;
      v42[3] = &unk_27A6E7648;
      v42[4] = a1[4];
      v44 = a1[6];
      v43 = a1[5];
      objc_msgSend_closeWithQueue_completion_(v36, v38, v37, v42);

      v39 = v44;
LABEL_13:

      goto LABEL_15;
    }
  }

  v40 = a1[6];
  if (v40)
  {
    v41 = a1[5];
    if (!v41)
    {
      v40[2](v40, v5);
      goto LABEL_15;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276AFCC80;
    block[3] = &unk_27A6E2C78;
    v49 = v40;
    v48 = v5;
    dispatch_async(v41, block);

    v39 = v49;
    goto LABEL_13;
  }

LABEL_15:
}

void sub_276AFCC94(void *a1, const char *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = v4[19];
  v6 = objc_msgSend_URL(v4, a2, a3);
  v16 = 0;
  v8 = objc_msgSend_endSaveWithSuccess_toURL_addingAttributes_error_(v5, v7, 1, v6, 0, &v16);
  v9 = v16;
  if (v9)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v9 = objc_msgSend_tsp_saveDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v10, 0);
  }

  v11 = a1[6];
  if (v11)
  {
    v12 = a1[5];
    if (v12)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276AFCDF0;
      block[3] = &unk_27A6E2C78;
      v15 = v11;
      v14 = v9;
      dispatch_async(v12, block);
    }

    else
    {
      (v11)[2](v11, v9);
    }
  }
}

void *sub_276AFCE58(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_2885C5F38;
  a1[1] = v3;
  size = dispatch_data_get_size(v3);
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = size;
  return a1;
}

void sub_276AFCEA8(id *a1)
{

  snappy::Source::~Source(a1);
}

void sub_276AFCEF0(id *a1)
{
  sub_276AFCEA8(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276AFCF34(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= *(a1 + 16))
  {
    result = 0;
    *a2 = 0;
  }

  else
  {
    if (!*(a1 + 32))
    {
      v5 = dispatch_data_copy_region(*(a1 + 8), v3, (a1 + 40));
      v6 = *(a1 + 32);
      *(a1 + 32) = v5;

      v8 = *(a1 + 32);
      if (!v8)
      {
        v9 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "virtual const char *TSP::SnappySource::Peek(size_t *)");
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSnappySource.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 33, 0, "Couldn't get region");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
        v8 = *(a1 + 32);
      }

      map = dispatch_data_create_map(v8, (a1 + 56), (a1 + 48));
      v17 = *(a1 + 32);
      *(a1 + 32) = map;

      if (!*(a1 + 32))
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "virtual const char *TSP::SnappySource::Peek(size_t *)");
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSnappySource.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 36, 0, "Couldn't map region");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
      }
    }

    v26 = *(a1 + 24);
    v27 = v26 - *(a1 + 40);
    v28 = *(a1 + 48) - v27;
    v29 = *(a1 + 16) - v26;
    if (v28 >= v29)
    {
      v28 = v29;
    }

    *a2 = v28;
    return *(a1 + 56) + v27;
  }

  return result;
}

void sub_276AFD0FC(void *a1, unint64_t a2)
{
  a1[3] = a2;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1 + 5;
    if (v3 > a2 || a1[6] + v3 <= a2)
    {
      a1[4] = 0;

      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }
  }
}

intptr_t sub_276AFD95C(uint64_t a1)
{
  free(*(a1 + 40));
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void sub_276AFDE3C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSPCryptoComponentWriteChannel;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t sub_276AFDEE4(uint64_t a1, void *a2, uint64_t a3, char *a4, unint64_t a5)
{
  v10 = a2;
  if (!*(*(a1 + 32) + 8))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Tried to write data when already closed.", "[TSPCryptoComponentWriteChannel _writeData:isDecryptedData:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm", 170);
    v32 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSPCryptoComponentWriteChannel _writeData:isDecryptedData:]_block_invoke");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v34, v36, 170, 1, "Tried to write data when already closed.");

    TSUCrashBreakpoint();
    abort();
  }

  if (a5)
  {
    while (1)
    {
      v11 = *(a1 + 32);
      if (*(v11 + 64) <= 0x8FuLL)
      {
        if (!objc_msgSend__resetBuffer(v11, v8, v9))
        {
          break;
        }

        v11 = *(a1 + 32);
      }

      v12 = *(v11 + 472);
      v15 = objc_msgSend_preferredBlockSize(*(v11 + 16), v8, v9);
      v16 = *(a1 + 32);
      if (v12 >= v15)
      {
        if (!objc_msgSend__finalizeBlockForClosing_(v16, v13, 0) || !objc_msgSend__initializeBlock(*(a1 + 32), v17, v18))
        {
          break;
        }

        v16 = *(a1 + 32);
        if (*(v16 + 64) <= 0x8FuLL)
        {
          if (!objc_msgSend__resetBuffer(v16, v13, v14))
          {
            break;
          }

          v16 = *(a1 + 32);
        }
      }

      v19 = *(v16 + 64);
      v20 = objc_msgSend_preferredBlockSize(*(v16 + 16), v13, v14);
      if (a5 >= v19 - 16)
      {
        v21 = v19 - 16;
      }

      else
      {
        v21 = a5;
      }

      v22 = *(a1 + 32);
      v23 = *(v22 + 472);
      if (v21 >= v20 - v23)
      {
        v24 = v20 - v23;
      }

      else
      {
        v24 = v21;
      }

      if (*(a1 + 40) == 1)
      {
        *(v22 + 472) = v24 + v23;
        CCHmacUpdate((*(a1 + 32) + 80), a4, v24);
        v22 = *(a1 + 32);
      }

      dataOutMoved = 0;
      if (CCCryptorUpdate(*(v22 + 72), a4, v24, (*(v22 + 40) + *(v22 + 56)), *(v22 + 64), &dataOutMoved))
      {
        break;
      }

      v9 = dataOutMoved;
      if (dataOutMoved)
      {
        v25 = *(a1 + 32);
        v26 = *(v25 + 8);
        subrange = dispatch_data_create_subrange(*(v25 + 48), *(v25 + 56), dataOutMoved);
        objc_msgSend_writeData_(v26, v28, subrange);

        v29 = dataOutMoved;
        *(*(a1 + 32) + 56) += dataOutMoved;
        *(*(a1 + 32) + 64) -= v29;
        *(*(a1 + 32) + 464) += v29;
      }

      a4 += v24;
      a5 -= v24;
      if (!a5)
      {
        goto LABEL_24;
      }
    }

    v30 = 0;
  }

  else
  {
LABEL_24:
    v30 = 1;
  }

  return v30;
}

void sub_276AFE208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_276AFEC80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSPCryptoReadChannel;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t sub_276AFED98(uint64_t a1, unsigned int a2, int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v118 = 0;
    v119 = &v118;
    v120 = 0x2020000000;
    v121 = 1;
    v12 = *(*(a1 + 32) + 32);
    if (v12)
    {
      concat = dispatch_data_create_concat(v12, v9);

      v9 = concat;
    }

    v14 = v9;
    size = dispatch_data_get_size(v9);
    if (size >= 0x14)
    {
      v16 = 20;
    }

    else
    {
      v16 = size;
    }

    v17 = size - v16;
    subrange = dispatch_data_create_subrange(v14, size - v16, v16);
    v19 = *(a1 + 32);
    v20 = *(v19 + 32);
    *(v19 + 32) = subrange;

    v9 = dispatch_data_create_subrange(v14, 0, v17);
    v21 = dispatch_data_get_size(v9);
    if (a2 && !v21)
    {
      v22 = MEMORY[0x277D85CC8];
      v23 = MEMORY[0x277D85CC8];
      v25 = *(*(a1 + 32) + 56);
      if (!v25)
      {
        goto LABEL_37;
      }

      OutputLength = CCCryptorGetOutputLength(v25, 0, 1);
      v27 = OutputLength;
      if (!OutputLength)
      {
        goto LABEL_37;
      }

      v29 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
      *(v119 + 24) = v29 != 0;
      if (v29 || (v30 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPCryptoReadChannel readWithHandler:]_block_invoke"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 122, 0, "Failed to allocate buffer for finalizing decryption"), v33, v31, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36), (v119[3] & 1) != 0))
      {
        dataOutMoved = 0;
        v38 = CCCryptorFinal(*(*(a1 + 32) + 56), v29, v27, &dataOutMoved);
        *(v119 + 24) = v38 == 0;
        if (v38)
        {
          v39 = MEMORY[0x277D81150];
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSPCryptoReadChannel readWithHandler:]_block_invoke");
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 127, 0, "Finalizing decryption failed: CCCryptorFinal status %i", v38);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
        }

        if (dataOutMoved)
        {
          v22 = dispatch_data_create(v29, dataOutMoved, 0, *MEMORY[0x277D85CB0]);

LABEL_37:
          if (*(*(a1 + 32) + 64) != 16)
          {
            v83 = MEMORY[0x277D81150];
            v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSPCryptoReadChannel readWithHandler:]_block_invoke");
            v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v87, v84, v86, 143, 0, "Failed to read and discard the initial random block; only read %zu bytes", *(*(a1 + 32) + 64));

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89);
          }

          (*(*(a1 + 40) + 16))();

LABEL_60:
          v11 = *(v119 + 24);
          _Block_object_dispose(&v118, 8);
          goto LABEL_61;
        }

        free(v29);
      }

      v22 = MEMORY[0x277D85CC8];
      goto LABEL_37;
    }

    dataOutMoved = 0;
    p_dataOutMoved = &dataOutMoved;
    v116 = 0x2020000000;
    v117 = 0;
    v46 = v21 + 16;
    v47 = malloc_type_malloc(v21 + 16, 0x100004077774924uLL);
    v49 = v47;
    if (v47)
    {
      v50 = dispatch_data_create(v47, v46, 0, *MEMORY[0x277D85CB0]);
      *(v119 + 24) = v50 != 0;
      if (v50)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v119 + 24) = 0;
    }

    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSPCryptoReadChannel readWithHandler:]_block_invoke");
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 152, 0, "Failed to allocate buffer for decryption");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
    v50 = 0;
    if ((v119[3] & 1) == 0)
    {
LABEL_57:
      if ((v119[3] & 1) == 0)
      {
        v105 = *(a1 + 40);
        v106 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v58, 0);
        (*(v105 + 16))(v105, 1, 0, v106);
      }

      _Block_object_dispose(&dataOutMoved, 8);
      goto LABEL_60;
    }

LABEL_23:
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = sub_276AFF808;
    applier[3] = &unk_27A6E7698;
    applier[4] = *(a1 + 32);
    applier[5] = &v118;
    applier[7] = v46;
    applier[8] = v49;
    applier[6] = &dataOutMoved;
    dispatch_data_apply(v9, applier);
    if (v119[3])
    {
      v59 = *(a1 + 32);
      v60 = *(v59 + 64);
      v61 = p_dataOutMoved;
      v62 = 16 - v60 >= p_dataOutMoved[3] ? p_dataOutMoved[3] : 16 - v60;
      *(v59 + 64) = v62 + v60;
      v63 = v61[3];
      if (v63 != v62 || a3)
      {
        if (a3)
        {
          v112 = 0;
          v64 = CCCryptorGetOutputLength(*(*(a1 + 32) + 56), 0, 1);
          v66 = v64;
          if (v64 && ((v68 = malloc_type_malloc(v64, 0x100004077774924uLL), *(v119 + 24) = v68 != 0, v68) || (v108 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "[TSPCryptoReadChannel readWithHandler:]_block_invoke"), v69 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm"), v71 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v72, v69, v71, 220, 0, "Failed to allocate buffer for finalizing decryption"), v71, v69, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74), v68 = 0, (v119[3] & 1) != 0)))
          {
            v75 = CCCryptorFinal(*(*(a1 + 32) + 56), v68, v66, &v112);
            *(v119 + 24) = v75 == 0;
            if (v75)
            {
              v109 = MEMORY[0x277D81150];
              v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "[TSPCryptoReadChannel readWithHandler:]_block_invoke");
              v77 = v68;
              v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v80, v76, v79, 224, 0, "Finalizing decryption failed: CCCryptorFinal status %i", v75);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82);
              v68 = v77;
            }
          }

          else
          {
            v68 = 0;
          }

          v91 = *(a1 + 32);
          v92 = *(v91 + 64);
          if (16 - v92 >= v112)
          {
            v93 = v112;
          }

          else
          {
            v93 = 16 - v92;
          }

          *(v91 + 64) = v93 + v92;
          if (*(*(a1 + 32) + 64) != 16)
          {
            v94 = MEMORY[0x277D81150];
            v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "[TSPCryptoReadChannel readWithHandler:]_block_invoke");
            v110 = v68;
            v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v98, v95, v97, 229, 0, "Failed to read and discard the initial random block; only read %zu bytes", *(*(a1 + 32) + 64));

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v99, v100);
            v68 = v110;
          }

          v101 = dispatch_data_create_subrange(v50, v62, p_dataOutMoved[3] - v62);
          if (v112 == v93)
          {
            v102 = a2;
          }

          else
          {
            v102 = 0;
          }

          (*(*(a1 + 40) + 16))(*(a1 + 40), v102, v101, 0);
          if (v112 == v93)
          {
            if (v68)
            {
              free(v68);
            }
          }

          else
          {
            destructor[0] = MEMORY[0x277D85DD0];
            destructor[1] = 3221225472;
            destructor[2] = sub_276AFFAF0;
            destructor[3] = &unk_27A6E4768;
            destructor[4] = v68;
            v103 = dispatch_data_create(&v68[v93], v112 - v93, 0, destructor);
            (*(*(a1 + 40) + 16))();
          }

          v104 = *(*(a1 + 32) + 56);
          if (v104)
          {
            CCCryptorRelease(v104);
            *(*(a1 + 32) + 56) = 0;
          }
        }

        else
        {
          v90 = dispatch_data_create_subrange(v50, v62, v63 - v62);
          (*(*(a1 + 40) + 16))();
        }
      }
    }

    goto LABEL_57;
  }

  (*(*(a1 + 40) + 16))();
  v11 = 0;
LABEL_61:

  return v11 & 1;
}

void sub_276AFF6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276AFF808(void *a1, void *a2, uint64_t a3, char *a4, size_t a5)
{
  v45 = a2;
  while (a5)
  {
    v8 = a1[4];
    if (!*(v8 + 56))
    {
      v11 = v8 + 40;
      v9 = *(v8 + 40);
      v10 = *(v11 + 8);
      v12 = 16 - v10 >= a5 ? a5 : 16 - v10;
      memcpy((v9 + v10), a4, v12);
      *(a1[4] + 48) += v12;
      a4 += v12;
      a5 -= v12;
      v15 = a1[4];
      if (*(v15 + 48) == 16)
      {
        v16 = objc_msgSend_keyData(*(v15 + 16), v13, v14);
        v19 = objc_msgSend_keyLength(*(a1[4] + 16), v17, v18);
        v21 = CCCryptorCreate(1u, 0, 1u, v16, v19, *(a1[4] + 40), (a1[4] + 56));
        if (v21 || !*(a1[4] + 56))
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPCryptoReadChannel readWithHandler:]_block_invoke_2");
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 171, 0, "CCCryptorCreate() failed: %d", v21);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
          *(*(a1[5] + 8) + 24) = 0;
        }
      }
    }

    if (*(*(a1[5] + 8) + 24) == 1)
    {
      v29 = *(a1[4] + 56);
      if (v29 && a5 != 0)
      {
        dataOutMoved = 0;
        v31 = a1[7];
        if (a5 >= v31 - 16)
        {
          v32 = v31 - 16;
        }

        else
        {
          v32 = a5;
        }

        v33 = *(*(a1[6] + 8) + 24);
        v35 = CCCryptorUpdate(v29, a4, v32, (a1[8] + v33), v31 - v33, &dataOutMoved);
        if (v35)
        {
          v36 = MEMORY[0x277D81150];
          v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSPCryptoReadChannel readWithHandler:]_block_invoke_2");
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoReadChannel.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 184, 0, "CCCryptorUpdate() failed: %d", v35);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
          *(*(a1[5] + 8) + 24) = 0;
        }

        a4 += v32;
        a5 -= v32;
        *(*(a1[6] + 8) + 24) += dataOutMoved;
      }
    }
  }

  v43 = *(*(a1[5] + 8) + 24);

  return v43;
}

void sub_276AFFC9C(uint64_t a1, int a2, void *a3, void *a4)
{
  data = a3;
  v7 = a4;
  v8 = v7;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (v7)
    {
      (*(*(a1 + 40) + 16))();
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    else
    {
      size = dispatch_data_get_size(data);
      v10 = size;
      if (!a2 || size)
      {
        v33 = *(*(a1 + 32) + 24);
        v13 = objc_msgSend_count(v33, v11, v12);
        if (v10)
        {
          v14 = v13;
          v15 = 0;
          while (1)
          {
            v16 = *(a1 + 32);
            v17 = *(v16 + 72);
            if (v10 - v15 >= v17)
            {
              v18 = *(v16 + 72);
            }

            else
            {
              v18 = v10 - v15;
            }

            *(v16 + 72) = v17 - v18;
            subrange = dispatch_data_create_subrange(data, v15, v18);
            v15 += v18;
            v20 = *(*(a1 + 32) + 80);
            v21 = (v20 == v14) & a2;
            if (v15 != v10)
            {
              v21 = 0;
            }

            v22 = *(*(a1 + 32) + 72) ? v21 : 1;
            v23 = v20 == v14 ? v22 : 0;
            *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))(*(a1 + 40), v23, v22, subrange, 0);
            if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
            {
              break;
            }

            if (v20 != v14 && ((v22 ^ 1) & 1) == 0)
            {
              objc_msgSend__resetCryptor(*(a1 + 32), v24, v25);
              v27 = *(a1 + 32);
              v28 = *(v27 + 80) + 1;
              *(v27 + 80) = v28;
              v29 = *(a1 + 32);
              if (v28 >= v14)
              {
                *(v29 + 72) = -1;
              }

              else
              {
                v30 = objc_msgSend_objectAtIndexedSubscript_(v33, v26, *(v29 + 80));
                *(*(a1 + 32) + 72) = objc_msgSend_encodedLength(v30, v31, v32);
              }
            }

            if (v15 >= v10)
            {
              goto LABEL_29;
            }
          }
        }

LABEL_29:
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))();
      }
    }
  }
}

void sub_276B00420(uint64_t a1, int a2, void *a3, void *a4)
{
  v11 = a3;
  v9 = a4;
  v10 = *(*(*(a1 + 48) + 8) + 24);
  if (v9 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_setError_(*(a1 + 32), v7, v9);
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v10 = *(*(*(a1 + 48) + 8) + 24);
  }

  if (v11 && (v10 & 1) == 0)
  {
    objc_msgSend_writeData_(*(a1 + 40), v7, v11);
  }

  if (a2)
  {
    objc_msgSend_close(*(a1 + 40), v7, v8);
  }
}

void sub_276B00744(uint64_t a1, const char *a2)
{
  v7 = objc_msgSend_cacheDirectoryURLWithSignature_sharedGroupContainer_(*(a1 + 32), a2, @"com.apple.iWork.DocumentResources", 1);
  v3 = objc_alloc(*(a1 + 32));
  v5 = objc_msgSend_initWithURL_(v3, v4, v7);
  v6 = qword_280A52B18;
  qword_280A52B18 = v5;
}

void sub_276B01540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBC0];
  v5 = sub_276AB6F50(a1, a2, a3);
  v8 = objc_msgSend_sharedSupportPath(v5, v6, v7);
  v24[0] = v8;
  v24[1] = @"DocumentResources";
  v24[2] = @"Metadata.plist";
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v24, 3);
  v12 = objc_msgSend_fileURLWithPathComponents_(v4, v11, v10);

  v15 = objc_msgSend_sharedRegistryMetadataURL(*(a1 + 32), v13, v14);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;

  if (objc_msgSend_checkResourceIsReachableAndReturnError_(v18, v19, 0))
  {
    v20 = objc_alloc(*(a1 + 32));
    v22 = objc_msgSend_initWithMetadataURL_(v20, v21, v18);
    v23 = qword_280A52B28;
    qword_280A52B28 = v22;
  }
}

void sub_276B0180C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_276B02E14(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v11 << 6);
    if (*(*(a3 + 56) + 8 * v14))
    {
      result = a1(*(*(a3 + 48) + 8 * v14));
      if ((result & 1) == 0)
      {
LABEL_11:
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_276B02F00(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(a2 + 56) + 8 * (v11 | (v9 << 6))) >= 1)
    {
      result = sub_276BDAEE4();
      if (result)
      {
        v12 = 1;
LABEL_13:

        return v12;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_276B02FE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = a1;
  if (*(v6 + 16) && (result = sub_276B04718(a2), v7 = a1, (v9 & 1) != 0) && (v10 = *(*(v6 + 56) + 8 * result), v7 = v10 + a1, __OFADD__(v10, a1)))
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      sub_276B04C54(v7, a2, isUniquelyReferenced_nonNull_native);
      *v3 = v12;
    }

    return v7;
  }

  return result;
}

uint64_t sub_276B0308C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = v2;
      sub_276B05368(a1, sub_276B059F8, 0, isUniquelyReferenced_nonNull_native, &v6);
      return v6;
    }

    else
    {
    }
  }

  else
  {
  }

  return v2;
}

uint64_t sub_276B03138()
{
  v1 = *v0;
  sub_276BDAF74();
  sub_276B05590(v3, v1);
  return sub_276BDAFA4();
}

uint64_t sub_276B03188(uint64_t a1)
{
  v2 = *v1;
  sub_276BDAF74();
  sub_276B05590(v4, v2);
  return sub_276BDAFA4();
}

id TSPIdentifierSet.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Int __swiftcall TSPIdentifierSet.count(for:default:)(Swift::Int64 a1, Swift::Int a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet);
  if (*(v4 + 16))
  {
    v5 = sub_276B04718(a1);
    if (v6)
    {
      if (*(*(v4 + 56) + 8 * v5))
      {
        return *(*(v4 + 56) + 8 * v5);
      }
    }
  }

  return a2;
}

id TSPIdentifierSet.formMerge(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_276B0308C(*(a1 + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet), *(v2 + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet));
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet] = v5;
  v8.receiver = v6;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id TSPIdentifierSet.makeMutableIdentifierSet()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet);
  v2 = type metadata accessor for TSPMutableIdentifierSet();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet] = v1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t TSPIdentifierSet.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet);
  sub_276BDAF74();
  sub_276B05590(v3, v1);
  return sub_276BDAFA4();
}

uint64_t TSPIdentifierSet.isEqual(_:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_276B056B4(a1, v7);
  if (!v8)
  {
    sub_276B0576C(v7);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v4 = sub_276B04504(*(v2 + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet), *&v6[OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet]);

  return v4 & 1;
}

id sub_276B038BC(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[*a1] = MEMORY[0x277D84F98];
  v6.receiver = v2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_276B0391C(char *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&a1[*a3] = MEMORY[0x277D84F98];
  v7.receiver = a1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id TSPMutableIdentifierSet.__allocating_init(capacity:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet] = MEMORY[0x277C9ED00](a1, MEMORY[0x277D84A28], MEMORY[0x277D83B88], MEMORY[0x277D84A38]);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TSPMutableIdentifierSet.init(capacity:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet] = MEMORY[0x277C9ED00](a1, MEMORY[0x277D84A28], MEMORY[0x277D83B88], MEMORY[0x277D84A38]);
  v6.receiver = v2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t TSPMutableIdentifierSet.count.getter()
{
  v1 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

Swift::Int __swiftcall TSPMutableIdentifierSet.count(for:default:)(Swift::Int64 a1, Swift::Int a2)
{
  v5 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {
    v7 = sub_276B04718(a1);
    if (v8)
    {
      if (*(*(v6 + 56) + 8 * v7))
      {
        return *(*(v6 + 56) + 8 * v7);
      }
    }
  }

  return a2;
}

uint64_t TSPMutableIdentifierSet.enumerateIdentifiers(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v6 = *(v2 + v5);

  sub_276B02E14(a1, a2, v6);
}

Swift::Int __swiftcall TSPMutableIdentifierSet.incrementCount(by:for:)(Swift::Int by, Swift::Int64 a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = by;
  if (*(v7 + 16) && (result = sub_276B04718(a2), v8 = by, (v10 & 1) != 0) && (v11 = *(*(v7 + 56) + 8 * result), v8 = v11 + by, __OFADD__(v11, by)))
  {
    __break(1u);
  }

  else
  {
    if (by)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v3 + v6);
      *(v3 + v6) = 0x8000000000000000;
      sub_276B04C54(v8, a2, isUniquelyReferenced_nonNull_native);
      *(v3 + v6) = v13;
    }

    swift_endAccess();
    return v8;
  }

  return result;
}

Swift::Int __swiftcall TSPMutableIdentifierSet.setCount(_:for:)(Swift::Int _, Swift::Int64 a2)
{
  swift_beginAccess();
  v4 = sub_276BDAEC4();
  v5 = sub_276B0521C(_, a2);
  if (v6 & 1 | (v5 == 0))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  swift_endAccess();
  return v7;
}

uint64_t TSPMutableIdentifierSet.merge(_:)(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet);
  v3 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  if (*(v2 + 16))
  {
    if (*(*(v1 + v3) + 16))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = *(v1 + v3);
      *(v1 + v3) = 0x8000000000000000;
      sub_276B05368(v2, sub_276B059F8, 0, isUniquelyReferenced_nonNull_native, &v6);
      *(v1 + v3) = v6;
    }

    else
    {
      *(v1 + v3) = v2;
    }
  }

  return swift_endAccess();
}

id TSPMutableIdentifierSet.makeIdentifierSet()()
{
  v1 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = type metadata accessor for TSPIdentifierSet();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet] = v2;
  v6.receiver = v4;
  v6.super_class = v3;

  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t TSPMutableIdentifierSet.hash.getter()
{
  v1 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  sub_276BDAF74();

  sub_276B05590(&v4, v2);

  return sub_276BDAFA4();
}

uint64_t TSPMutableIdentifierSet.isEqual(_:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_276B056B4(a1, v10);
  if (!v11)
  {
    sub_276B0576C(v10);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v4 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v7 = sub_276B04504(v5, *&v9[v6]);

  return v7 & 1;
}

uint64_t sub_276B04434(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_276BDAF24();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_276B0576C(v10);
  return v8 & 1;
}

id _s13TSPersistence16TSPIdentifierSetCfD_0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_276B04504(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_276B04718(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_276B0460C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_276B04718(*(*(v3 + 48) + 8 * v12));
    if (v15)
    {
      result = sub_276B04504(*(*(a2 + 56) + 8 * v14), v13);
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_276B04718(uint64_t a1)
{
  v2 = sub_276BDAF64();

  return sub_276B04F08(a1, v2);
}

uint64_t sub_276B04780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_276B05724(&qword_280A52310, &qword_276C17300);
  result = sub_276BDAF44();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_276BDAF64();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_276B049E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_276B05724(&qword_280A52318, &unk_276C17308);
  result = sub_276BDAF44();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_276BDAF64();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_276B04C54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_276B04718(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_276B04F74();
    result = v17;
    goto LABEL_8;
  }

  sub_276B04780(v14, a3 & 1);
  result = sub_276B04718(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_276BDAF54();
  __break(1u);
  return result;
}

unint64_t sub_276B04D78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_276B04718(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_276B049E4(v14, a3 & 1);
      result = sub_276B04718(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_276BDAF54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_276B050C0();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_276B04EC4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_276B04F08(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_276B04F74()
{
  v1 = v0;
  sub_276B05724(&qword_280A52310, &qword_276C17300);
  v2 = *v0;
  v3 = sub_276BDAF34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_276B050C0()
{
  v1 = v0;
  sub_276B05724(&qword_280A52318, &unk_276C17308);
  v2 = *v0;
  v3 = sub_276BDAF34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_276B0521C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  result = sub_276B04718(a2);
  v11 = v8[2];
  v12 = __OFADD__(v11, (v10 ^ 1) & 1);
  v13 = v11 + ((v10 ^ 1) & 1);
  if (v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v13)
  {
    sub_276B04780(v13, isUniquelyReferenced_nonNull_native);
    result = sub_276B04718(a2);
    if ((v3 & 1) == (v14 & 1))
    {
      goto LABEL_6;
    }

    result = sub_276BDAF54();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = result;
    sub_276B04F74();
    result = v18;
    v15 = v8;
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v15 = v8;
  if (v3)
  {
LABEL_7:
    v16 = v15[7];
    v17 = *(v16 + 8 * result);
    *(v16 + 8 * result) = a1;
LABEL_12:
    *v4 = v15;
    return v17;
  }

LABEL_10:
  v15[(result >> 6) + 8] |= 1 << result;
  *(v15[6] + 8 * result) = a2;
  *(v15[7] + 8 * result) = a1;
  v19 = v15[2];
  v20 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    v17 = 0;
    v15[2] = v20;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_276B05368(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v37 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v16 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 48) + v16);
    v18 = *(*(a1 + 56) + v16);
    v36[0] = v17;
    v36[1] = v18;
    a2(v35, v36);
    v20 = v35[0];
    v19 = v35[1];
    v21 = *v37;
    v22 = sub_276B04718(v35[0]);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_23;
    }

    v28 = v23;
    if (v21[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v22;
        sub_276B04F74();
        v22 = v31;
      }
    }

    else
    {
      sub_276B04780(v27, a4 & 1);
      v22 = sub_276B04718(v20);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_26;
      }
    }

    v30 = *v37;
    if (v28)
    {
      v12 = (v30[7] + 8 * v22);
      v14 = *v12 + v19;
      if (__OFADD__(*v12, v19))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30[(v22 >> 6) + 8] |= 1 << v22;
      *(v30[6] + 8 * v22) = v20;
      *(v30[7] + 8 * v22) = v19;
      v13 = v30[2];
      v12 = v30 + 2;
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_25;
      }
    }

    v9 &= v9 - 1;
    *v12 = v14;
    a4 = 1;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
    }

    v9 = *(v6 + 8 * v15);
    ++v11;
    if (v9)
    {
      v11 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_276BDAF54();
  __break(1u);
  return result;
}

uint64_t sub_276B05590(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; v3 ^= result)
  {
    v10 = v4;
LABEL_9:
    v11 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
    v12 = *(*(a2 + 56) + v11);
    v8 &= v8 - 1;
    MEMORY[0x277C9ED90](*(*(a2 + 48) + v11));
    MEMORY[0x277C9ED80](v12);
    result = sub_276BDAFA4();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x277C9ED80](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_276B056B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_276B05724(&qword_280A52300, &qword_276C17200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_276B05724(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_276B0576C(uint64_t a1)
{
  v2 = sub_276B05724(&qword_280A52300, &qword_276C17200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_276B057D4(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v22 = v6;
  v23 = v2;
LABEL_6:
  if (v5)
  {
    v25 = v8;
    v10 = v9;
LABEL_12:
    v11 = (v10 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a2 + 56) + v11);
    v5 &= v5 - 1;
    result = MEMORY[0x277C9ED90](*(*(a2 + 48) + v11));
    v13 = 0;
    v14 = 0;
    v15 = 1 << *(v12 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v12 + 64);
    for (i = (v15 + 63) >> 6; v17; v13 ^= result)
    {
      v19 = v14;
LABEL_21:
      v20 = (v19 << 9) | (8 * __clz(__rbit64(v17)));
      v21 = *(*(v12 + 56) + v20);
      v17 &= v17 - 1;
      MEMORY[0x277C9ED90](*(*(v12 + 48) + v20));
      MEMORY[0x277C9ED80](v21);
      result = sub_276BDAFA4();
    }

    while (1)
    {
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v19 >= i)
      {

        MEMORY[0x277C9ED80](v13);

        result = sub_276BDAFA4();
        v8 = result ^ v25;
        v9 = v10;
        v6 = v22;
        v2 = v23;
        goto LABEL_6;
      }

      v17 = *(v12 + 64 + 8 * v19);
      ++v14;
      if (v17)
      {
        v14 = v19;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {

        return MEMORY[0x277C9ED80](v8);
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v25 = v8;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

__n128 sub_276B059F8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_276B05A3C()
{
  result = qword_280A52308;
  if (!qword_280A52308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A52308);
  }

  return result;
}

void *sub_276B05A90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277C9ED00](v2, MEMORY[0x277D84A28], MEMORY[0x277D83B88], MEMORY[0x277D84A38]);
  if (!v2)
  {
    return v3;
  }

  v4 = (a1 + 32);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_276B04718(v6);
    v10 = v3[2];
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      break;
    }

    v14 = v9;
    if (v3[3] >= v13)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      v18 = v8;
      sub_276B04F74();
      v8 = v18;
      if (v14)
      {
        goto LABEL_3;
      }

LABEL_10:
      v3[(v8 >> 6) + 8] |= 1 << v8;
      *(v3[6] + 8 * v8) = v5;
      *(v3[7] + 8 * v8) = 1;
      v16 = v3[2];
      v12 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v12)
      {
        goto LABEL_17;
      }

      v3[2] = v17;
      if (!--v2)
      {
        return v3;
      }
    }

    else
    {
      sub_276B04780(v13, isUniquelyReferenced_nonNull_native);
      v8 = sub_276B04718(v5);
      if ((v14 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

LABEL_9:
      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      *(v3[7] + 8 * v8) = 1;
      if (!--v2)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_276BDAF54();
  __break(1u);
  return result;
}

uint64_t sub_276B05C10(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    if (*(*(a1 + 56) + 8 * v13))
    {
      result = (*(a2 + 16))(a2, *(*(a1 + 48) + 8 * v13));
      if ((result & 1) == 0)
      {
LABEL_11:
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      goto LABEL_11;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_276B05D1C(uint64_t (*a1)(uint64_t, id), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (v11 << 9) | (8 * v12);
    v14 = *(*(a3 + 48) + v13);
    v15 = *(*(a3 + 56) + v13);
    v16 = type metadata accessor for TSPIdentifierSet();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet] = v15;
    v19.receiver = v17;
    v19.super_class = v16;

    v18 = objc_msgSendSuper2(&v19, sel_init);
    LOBYTE(v14) = a1(v14, v18);

    if ((v14 & 1) == 0)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_276B05E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v12 = sub_276B04718(a1);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v11;
  if (v10[3] >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v5 = v10;
      if (v11)
      {
        return sub_276B02FE4(a3, a2);
      }

LABEL_8:
      v18 = MEMORY[0x277C9ED00](1, MEMORY[0x277D84A28], MEMORY[0x277D83B88], MEMORY[0x277D84A38]);
      sub_276B04EC4(v12, a1, v18, v10);
      return sub_276B02FE4(a3, a2);
    }

LABEL_11:
    sub_276B050C0();
    *v5 = v10;
    if (v4)
    {
      return sub_276B02FE4(a3, a2);
    }

    goto LABEL_8;
  }

  sub_276B049E4(v15, isUniquelyReferenced_nonNull_native);
  v16 = sub_276B04718(a1);
  if ((v4 & 1) == (v17 & 1))
  {
    v12 = v16;
    *v5 = v10;
    if (v4)
    {
      return sub_276B02FE4(a3, a2);
    }

    goto LABEL_8;
  }

  result = sub_276BDAF54();
  __break(1u);
  return result;
}

uint64_t sub_276B05FBC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  v60 = v8;
  v56 = v2;
  v57 = v9;
  v55 = v4;
  if (!v7)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_11:
    v12 = v11;
LABEL_12:
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
    v14 = *(*(v3 + 48) + v13);
    v15 = *(*(v3 + 56) + v13);

    sub_276B07774(v10, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    v64 = *v2;
    v19 = sub_276B04718(v14);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_58;
    }

    v23 = v18;
    if (v17[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *v2 = v17;
        if (v18)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v53 = v19;
        sub_276B050C0();
        v19 = v53;
        v17 = v64;
        *v2 = v64;
        if (v23)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_276B049E4(v22, isUniquelyReferenced_nonNull_native);
      v17 = v64;
      v24 = sub_276B04718(v14);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_62;
      }

      v19 = v24;
      *v2 = v64;
      if (v23)
      {
        goto LABEL_21;
      }
    }

    v17[(v19 >> 6) + 8] |= 1 << v19;
    *(v17[6] + 8 * v19) = v14;
    *(v17[7] + 8 * v19) = MEMORY[0x277D84F98];
    v26 = v17[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_61;
    }

    v17[2] = v28;
LABEL_21:
    v7 &= v7 - 1;
    if (!*(v15 + 16))
    {
      goto LABEL_48;
    }

    v29 = v17[7];
    if (*(*(v29 + 8 * v19) + 16))
    {
      break;
    }

    *(v29 + 8 * v19) = v15;
LABEL_48:

    v10 = sub_276B05FAC;
    v11 = v12;
    v8 = v60;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v30 = v19;

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v29 + 8 * v30);
  v58 = v29;
  v59 = v30;
  *(v29 + 8 * v30) = 0x8000000000000000;
  v65 = v32;
  v33 = v15 + 64;
  v34 = 1 << *(v15 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(v15 + 64);
  v37 = (v34 + 63) >> 6;

  v38 = 0;
  v61 = v15;
  while (2)
  {
    if (v36)
    {
      v62 = v31;
LABEL_35:
      v43 = (v38 << 9) | (8 * __clz(__rbit64(v36)));
      v44 = *(*(v15 + 48) + v43);
      v45 = *(*(v15 + 56) + v43);
      v46 = sub_276B04718(v44);
      v48 = v32[2];
      v49 = (v47 & 1) == 0;
      v27 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v27)
      {
        goto LABEL_57;
      }

      v51 = v47;
      if (v32[3] >= v50)
      {
        if (v62)
        {
          goto LABEL_40;
        }

        v63 = v46;
        sub_276B04F74();
        v46 = v63;
        v32 = v65;
        if ((v51 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_41:
        v39 = (v32[7] + 8 * v46);
        v41 = *v39 + v45;
        if (__OFADD__(*v39, v45))
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_276B04780(v50, v62 & 1);
        v46 = sub_276B04718(v44);
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_62;
        }

LABEL_40:
        v32 = v65;
        if (v51)
        {
          goto LABEL_41;
        }

LABEL_27:
        v32[(v46 >> 6) + 8] |= 1 << v46;
        *(v32[6] + 8 * v46) = v44;
        *(v32[7] + 8 * v46) = v45;
        v39 = v32 + 2;
        v40 = v32[2];
        v27 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v27)
        {
          goto LABEL_59;
        }
      }

      v36 &= v36 - 1;
      *v39 = v41;
      v31 = 1;
      v15 = v61;
      continue;
    }

    break;
  }

  while (1)
  {
    v42 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v42 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v42);
    ++v38;
    if (v36)
    {
      v62 = v31;
      v38 = v42;
      goto LABEL_35;
    }
  }

  *(v58 + 8 * v59) = v32;

  v10 = sub_276B05FAC;
  v11 = v12;
  v2 = v56;
  v3 = v57;
  v4 = v55;
  v8 = v60;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_7:
  while (2)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      result = sub_276BDAF54();
      __break(1u);
      return result;
    }

    if (v12 < v8)
    {
      v7 = *(v4 + 8 * v12);
      ++v11;
      if (!v7)
      {
        continue;
      }

      goto LABEL_12;
    }

    break;
  }

  return sub_276B07774(v10, 0);
}

uint64_t sub_276B06440()
{
  v1 = *v0;
  sub_276BDAF74();
  sub_276B057D4(v3, v1);
  return sub_276BDAFA4();
}

uint64_t sub_276B06490(uint64_t a1)
{
  v2 = *v1;
  sub_276BDAF74();
  sub_276B057D4(v4, v2);
  return sub_276BDAFA4();
}

id TSPReferenceMap.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TSPReferenceMap.allReferences(from:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_276B04718(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  v6 = type metadata accessor for TSPIdentifierSet();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet] = v5;
  v9.receiver = v7;
  v9.super_class = v6;

  return objc_msgSendSuper2(&v9, sel_init);
}

id TSPReferenceMap.makeMutableReferenceMap()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap);
  v2 = type metadata accessor for TSPMutableReferenceMap();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap] = v1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t TSPReferenceMap.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap);
  sub_276BDAF74();
  sub_276B057D4(v3, v1);
  return sub_276BDAFA4();
}

uint64_t TSPReferenceMap.isEqual(_:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_276B056B4(a1, v7);
  if (!v8)
  {
    sub_276B0576C(v7);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v4 = sub_276B0460C(*(v2 + OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap), *&v6[OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap]);

  return v4 & 1;
}

id TSPMutableReferenceMap.__allocating_init(capacity:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap] = MEMORY[0x277C9ED00](a1, MEMORY[0x277D84A28], &type metadata for TSPIdentifierSetStruct, MEMORY[0x277D84A38]);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TSPMutableReferenceMap.init(capacity:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap] = MEMORY[0x277C9ED00](a1, MEMORY[0x277D84A28], &type metadata for TSPIdentifierSetStruct, MEMORY[0x277D84A38]);
  v6.receiver = v2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t TSPMutableReferenceMap.count.getter()
{
  v1 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

id TSPMutableReferenceMap.allReferences(from:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_276B04718(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  v8 = type metadata accessor for TSPIdentifierSet();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet] = v7;
  v11.receiver = v9;
  v11.super_class = v8;

  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t TSPMutableReferenceMap.enumerateReferences(_:)(uint64_t (*a1)(uint64_t, id), uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  v6 = *(v2 + v5);

  sub_276B05D1C(a1, a2, v6);
}

Swift::Int __swiftcall TSPMutableReferenceMap.incrementReference(from:to:increment:)(Swift::Int64 from, Swift::Int64 to, Swift::Int increment)
{
  swift_beginAccess();
  v6 = sub_276B05E64(from, to, increment);
  swift_endAccess();
  return v6;
}

uint64_t sub_276B06DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_276B05E64(a1, a2, a3);
  swift_endAccess();
  return v6;
}

uint64_t TSPMutableReferenceMap.replaceReferences(from:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  *(v3 + v8) = 0x8000000000000000;
  sub_276B04D78(v7, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + v8) = v11;
  swift_endAccess();
}

uint64_t TSPMutableReferenceMap.merge(_:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap);
  swift_beginAccess();
  sub_276B05FBC(v1);
  return swift_endAccess();
}

id TSPMutableReferenceMap.makeReferenceMap()()
{
  v1 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = type metadata accessor for TSPReferenceMap();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap] = v2;
  v6.receiver = v4;
  v6.super_class = v3;

  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t TSPMutableReferenceMap.hash.getter()
{
  v1 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  sub_276BDAF74();

  sub_276B057D4(&v4, v2);

  return sub_276BDAFA4();
}

uint64_t TSPMutableReferenceMap.isEqual(_:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_276B056B4(a1, v11);
  if (!v12)
  {
    sub_276B0576C(v11);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v4 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  v7 = *&v10[v6];

  v8 = sub_276B0460C(v5, v7);

  return v8 & 1;
}

uint64_t sub_276B074E4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_276BDAF24();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_276B0576C(v10);
  return v8 & 1;
}

unint64_t sub_276B075D8()
{
  result = qword_280A52330;
  if (!qword_280A52330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A52330);
  }

  return result;
}

void sub_276B0762C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v10 << 9) | (8 * v11);
    v13 = *(*(a1 + 48) + v12);
    v14 = *(*(a1 + 56) + v12);
    v15 = type metadata accessor for TSPIdentifierSet();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet] = v14;
    v18.receiver = v16;
    v18.super_class = v15;

    v17 = objc_msgSendSuper2(&v18, sel_init);
    LOBYTE(v13) = (*(a2 + 16))(a2, v13, v17);

    if ((v13 & 1) == 0)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_11;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_276B07774(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t google::protobuf::util::DefaultFieldComparator::DefaultFieldComparator(uint64_t this)
{
  *this = &unk_2885C6020;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 40) = 0;
  *(this + 32) = this + 40;
  return this;
}

{
  *this = &unk_2885C6020;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 40) = 0;
  *(this + 32) = this + 40;
  return this;
}

void google::protobuf::util::DefaultFieldComparator::~DefaultFieldComparator(google::protobuf::util::DefaultFieldComparator *this)
{
  *this = &unk_2885C6020;
  sub_276A579A4(this + 32, *(this + 5));
}

{
  *this = &unk_2885C6020;
  sub_276A579A4(this + 32, *(this + 5));
}

{
  *this = &unk_2885C6020;
  sub_276A579A4(this + 32, *(this + 5));

  JUMPOUT(0x277C9F670);
}

uint64_t google::protobuf::util::DefaultFieldComparator::Compare(google::protobuf::util::DefaultFieldComparator *a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3, uint64_t a4, int a5, int a6)
{
  (*(*a2 + 152))(a2);
  v13 = v12;
  (*(*a3 + 152))(a3);
  v15 = v14;
  v16 = *(a4 + 48);
  if (v16)
  {
    v57 = a4;
    p_p = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v16, memory_order_acquire) != -1)
    {
      v52[0].__r_.__value_.__r.__words[0] = &p_p;
      v52[0].__r_.__value_.__l.__size_ = &v57;
      __p = v52;
      std::__call_once(v16, &__p, sub_2769C149C);
    }
  }

  v17 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 56)];
  if (v17 <= 5)
  {
    if (v17 > 2)
    {
      if (v17 != 3)
      {
        if (v17 != 4)
        {
          if (*(a4 + 60) == 3)
          {
            RepeatedDouble = google::protobuf::Reflection::GetRepeatedDouble(v13, a2, a4, a5);
            Double = google::protobuf::Reflection::GetRepeatedDouble(v15, a3, a4, a6);
          }

          else
          {
            RepeatedDouble = google::protobuf::Reflection::GetDouble(v13, a2, a4);
            Double = google::protobuf::Reflection::GetDouble(v15, a3, a4);
          }

          v47 = google::protobuf::util::DefaultFieldComparator::CompareDouble(a1, a4, RepeatedDouble, Double);
          return !v47;
        }

        if (*(a4 + 60) == 3)
        {
          RepeatedUInt64 = google::protobuf::Reflection::GetRepeatedUInt64(v13, a2, a4, a5);
          RepeatedInt64 = google::protobuf::Reflection::GetRepeatedUInt64(v15, a3, a4, a6);
          goto LABEL_33;
        }

        UInt64 = google::protobuf::Reflection::GetUInt64(v13, a2, a4);
        Int64 = google::protobuf::Reflection::GetUInt64(v15, a3, a4);
LABEL_53:
        v28 = UInt64 == Int64;
        return !v28;
      }

      if (*(a4 + 60) == 3)
      {
        RepeatedUInt32 = google::protobuf::Reflection::GetRepeatedUInt32(v13, a2, a4, a5);
        RepeatedInt32 = google::protobuf::Reflection::GetRepeatedUInt32(v15, a3, a4, a6);
        goto LABEL_28;
      }

      UInt32 = google::protobuf::Reflection::GetUInt32(v13, a2, a4);
      Int32 = google::protobuf::Reflection::GetUInt32(v15, a3, a4);
      goto LABEL_46;
    }

    if (v17 == 1)
    {
      if (*(a4 + 60) == 3)
      {
        RepeatedUInt32 = google::protobuf::Reflection::GetRepeatedInt32(v13, a2, a4, a5);
        RepeatedInt32 = google::protobuf::Reflection::GetRepeatedInt32(v15, a3, a4, a6);
LABEL_28:
        v28 = RepeatedUInt32 == RepeatedInt32;
        return !v28;
      }

      UInt32 = google::protobuf::Reflection::GetInt32(v13, a2, a4);
      Int32 = google::protobuf::Reflection::GetInt32(v15, a3, a4);
LABEL_46:
      v28 = UInt32 == Int32;
      return !v28;
    }

    if (v17 == 2)
    {
      if (*(a4 + 60) == 3)
      {
        RepeatedUInt64 = google::protobuf::Reflection::GetRepeatedInt64(v13, a2, a4, a5);
        RepeatedInt64 = google::protobuf::Reflection::GetRepeatedInt64(v15, a3, a4, a6);
LABEL_33:
        v28 = RepeatedUInt64 == RepeatedInt64;
        return !v28;
      }

      UInt64 = google::protobuf::Reflection::GetInt64(v13, a2, a4);
      Int64 = google::protobuf::Reflection::GetInt64(v15, a3, a4);
      goto LABEL_53;
    }

    goto LABEL_36;
  }

  if (v17 <= 7)
  {
    if (v17 == 6)
    {
      if (*(a4 + 60) == 3)
      {
        RepeatedFloat = google::protobuf::Reflection::GetRepeatedFloat(v13, a2, a4, a5);
        Float = google::protobuf::Reflection::GetRepeatedFloat(v15, a3, a4, a6);
      }

      else
      {
        RepeatedFloat = google::protobuf::Reflection::GetFloat(v13, a2, a4);
        Float = google::protobuf::Reflection::GetFloat(v15, a3, a4);
      }

      v47 = google::protobuf::util::DefaultFieldComparator::CompareFloat(a1, a4, RepeatedFloat, Float);
      return !v47;
    }

    if (*(a4 + 60) == 3)
    {
      RepeatedBool = google::protobuf::Reflection::GetRepeatedBool(v13, a2, a4, a5);
      return RepeatedBool ^ google::protobuf::Reflection::GetRepeatedBool(v15, a3, a4, a6);
    }

    else
    {
      Bool = google::protobuf::Reflection::GetBool(v13, a2, a4);
      return Bool ^ google::protobuf::Reflection::GetBool(v15, a3, a4);
    }
  }

  else
  {
    if (v17 == 8)
    {
      if (*(a4 + 60) == 3)
      {
        RepeatedEnum = google::protobuf::Reflection::GetRepeatedEnum(v13, a2, a4, a5);
        v30 = google::protobuf::Reflection::GetRepeatedEnum(v15, a3, a4, a6);
        v31 = *(RepeatedEnum + 16);
      }

      else
      {
        Enum = google::protobuf::Reflection::GetEnum(v13, a2, a4);
        v30 = google::protobuf::Reflection::GetEnum(v15, a3, a4);
        v31 = *(Enum + 16);
      }

      v28 = v31 == *(v30 + 16);
      return !v28;
    }

    if (v17 != 9)
    {
      if (v17 == 10)
      {
        return 2;
      }

LABEL_36:
      google::protobuf::internal::LogMessage::LogMessage(v52, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/field_comparator.cc", 124);
      v37 = google::protobuf::internal::LogMessage::operator<<(v52, "No comparison code for field ");
      v38 = google::protobuf::internal::LogMessage::operator<<(v37, *(a4 + 8));
      v39 = google::protobuf::internal::LogMessage::operator<<(v38, " of CppType = ");
      v40 = *(a4 + 48);
      if (v40)
      {
        v56 = a4;
        v57 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v40, memory_order_acquire) != -1)
        {
          __p = &v57;
          v54 = &v56;
          p_p = &__p;
          std::__call_once(v40, &p_p, sub_2769C149C);
        }
      }

      v41 = google::protobuf::internal::LogMessage::operator<<(v39, google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 56)]);
      google::protobuf::internal::LogFinisher::operator=(&__p, &v41->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v52[0].__r_.__value_.__l.__data_);
      return 1;
    }

    if (*(a4 + 60) == 3)
    {
      memset(v52, 0, 24);
      __p = 0;
      v54 = 0;
      v55 = 0;
      RepeatedStringReference = google::protobuf::Reflection::GetRepeatedStringReference(v13, a2, a4, a5);
      v33 = google::protobuf::Reflection::GetRepeatedStringReference(v15, a3, a4, a6);
      v34 = a1;
      v35 = a4;
      v36 = RepeatedStringReference;
    }

    else
    {
      memset(v52, 0, 24);
      __p = 0;
      v54 = 0;
      v55 = 0;
      StringReference = google::protobuf::Reflection::GetStringReference(v13, a2, a4);
      v33 = google::protobuf::Reflection::GetStringReference(v15, a3, a4);
      v34 = a1;
      v35 = a4;
      v36 = StringReference;
    }

    v51 = sub_276B07FE0(v34, v35, v36, v33);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p);
    }

    v20 = !v51;
    if (SHIBYTE(v52[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52[0].__r_.__value_.__l.__data_);
    }
  }

  return v20;
}

BOOL sub_276B07FE0(uint64_t a1, uint64_t a2, const void **a3, const void **a4)
{
  v4 = *(a3 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a3[1];
  }

  v6 = *(a4 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = a4[1];
  }

  if (v4 != v6)
  {
    return 0;
  }

  if (v5 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  return memcmp(v8, v9, v4) == 0;
}

uint64_t google::protobuf::util::DefaultFieldComparator::SetDefaultFractionAndMargin(uint64_t this, double a2, double a3)
{
  *(this + 16) = a2;
  *(this + 24) = a3;
  *(this + 13) = 1;
  return this;
}

double *google::protobuf::util::DefaultFieldComparator::SetFractionAndMargin(google::protobuf::util::DefaultFieldComparator *this, std::once_flag::_State_type **a2, double a3, double a4)
{
  v17 = a2;
  v8 = a2[6];
  if (v8)
  {
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v18 = a2;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v16[0].__r_.__value_.__r.__words[0] = &v19;
      v16[0].__r_.__value_.__l.__size_ = &v18;
      v20 = v16;
      std::__call_once(v8, &v20, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 14)] != 6)
  {
    v9 = v17;
    v10 = v17[6];
    if (v10)
    {
      v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v18 = v17;
      if (atomic_load_explicit(v10, memory_order_acquire) != -1)
      {
        v16[0].__r_.__value_.__r.__words[0] = &v19;
        v16[0].__r_.__value_.__l.__size_ = &v18;
        v20 = v16;
        std::__call_once(v10, &v20, sub_2769C149C);
      }
    }

    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v9 + 14)] != 5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/field_comparator.cc", 148);
      v11 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: FieldDescriptor::CPPTYPE_FLOAT == field->cpp_type() || FieldDescriptor::CPPTYPE_DOUBLE == field->cpp_type(): ");
      v12 = google::protobuf::internal::LogMessage::operator<<(v11, "Field has to be float or double type. Field name is: ");
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, v17[1]);
      google::protobuf::internal::LogFinisher::operator=(&v15, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }
  }

  v16[0].__r_.__value_.__r.__words[0] = &v17;
  result = sub_276B083A0(this + 32, &v17, &unk_276C17459, v16);
  result[5] = a3;
  result[6] = a4;
  return result;
}

void sub_276B08218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::util::DefaultFieldComparator::CompareDouble(google::protobuf::util::DefaultFieldComparator *this, const google::protobuf::FieldDescriptor *a2, double a3, double a4)
{
  if (a3 == a4)
  {
    return 1;
  }

  v6 = *(this + 2);
  v4 = v6 != 0;
  if (!v6)
  {
    return v4;
  }

  v7 = *(this + 5);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = (this + 40);
  do
  {
    v9 = v7[4];
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v7;
    }

    v7 = v7[v11];
  }

  while (v7);
  if (v8 != (this + 40) && v8[4] <= a2)
  {
    v12 = (v8 + 5);
  }

  else
  {
LABEL_13:
    if ((*(this + 13) & 1) == 0)
    {
      return vabdd_f64(a3, a4) < 7.10542736e-15;
    }

    v12 = (this + 16);
  }

  return sub_276B08474(a3, a4, *v12, v12[1]);
}

BOOL google::protobuf::util::DefaultFieldComparator::CompareFloat(google::protobuf::util::DefaultFieldComparator *this, const google::protobuf::FieldDescriptor *a2, float a3, float a4)
{
  if (a3 == a4)
  {
    return 1;
  }

  v6 = *(this + 2);
  v4 = v6 != 0;
  if (!v6)
  {
    return v4;
  }

  v7 = *(this + 5);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = (this + 40);
  do
  {
    v9 = v7[4];
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v7;
    }

    v7 = v7[v11];
  }

  while (v7);
  if (v8 != (this + 40) && v8[4] <= a2)
  {
    v12 = (v8 + 5);
  }

  else
  {
LABEL_13:
    if ((*(this + 13) & 1) == 0)
    {
      return vabds_f32(a3, a4) < 0.0000038147;
    }

    v12 = (this + 16);
  }

  v13 = *v12;
  v14 = v12[1];
  return sub_276B084F4(a3, a4, v13, v14);
}

void *sub_276B083A0(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

BOOL sub_276B08474(double a1, double a2, double a3, double a4)
{
  result = 0;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v5 = -a1;
    if (a1 > 0.0)
    {
      v5 = a1;
    }

    v6 = -a2;
    if (a2 > 0.0)
    {
      v6 = a2;
    }

    if (v5 <= v6)
    {
      v5 = v6;
    }

    v7 = v5 * a3;
    if (a1 <= a2)
    {
      v8 = a2 - a1;
    }

    else
    {
      v8 = a1 - a2;
    }

    if (v7 >= a4)
    {
      v9 = v7;
    }

    else
    {
      v9 = a4;
    }

    return v8 <= v9;
  }

  return result;
}

BOOL sub_276B084F4(float a1, float a2, float a3, float a4)
{
  result = 0;
  if ((LODWORD(a1) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(a2) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v5 = -a1;
    if (a1 > 0.0)
    {
      v5 = a1;
    }

    v6 = -a2;
    if (a2 > 0.0)
    {
      v6 = a2;
    }

    if (v5 <= v6)
    {
      v5 = v6;
    }

    v7 = v5 * a3;
    if (a1 <= a2)
    {
      v8 = a2 - a1;
    }

    else
    {
      v8 = a1 - a2;
    }

    if (v7 >= a4)
    {
      v9 = v7;
    }

    else
    {
      v9 = a4;
    }

    return v8 <= v9;
  }

  return result;
}

const char *google::protobuf::FileDescriptor::SyntaxName(int a1)
{
  switch(a1)
  {
    case 0:
      return "unknown";
    case 2:
      return "proto2";
    case 3:
      return "proto3";
  }

  google::protobuf::internal::LogMessage::LogMessage(v4, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 230);
  v2 = google::protobuf::internal::LogMessage::operator<<(v4, "can't reach here.");
  google::protobuf::internal::LogFinisher::operator=(&v3, &v2->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v4[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_276B08610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::DescriptorPool::Tables *google::protobuf::DescriptorPool::Tables::Tables(google::protobuf::DescriptorPool::Tables *this)
{
  v37 = *MEMORY[0x277D85DE8];
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 14) = 1065353216;
  sub_2769AC06C(this + 24, 3uLL);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 1065353216;
  sub_2769AC06C(this + 64, 3uLL);
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 1065353216;
  sub_2769AC06C(this + 104, 3uLL);
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 184) = 0u;
  *(this + 232) = 0u;
  *(this + 44) = 1065353216;
  *(this + 280) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 41) = 0;
  *(this + 84) = 1065353216;
  sub_2769AC06C(this + 304, 3uLL);
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 94) = 1065353216;
  sub_2769AC06C(this + 344, 3uLL);
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = this + 392;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  sub_276A4D46C(v5, "google.protobuf.DoubleValue");
  v6 = 1;
  sub_276A4D46C(v7, "google.protobuf.FloatValue");
  v8 = 2;
  sub_276A4D46C(v9, "google.protobuf.Int64Value");
  v10 = 3;
  sub_276A4D46C(v11, "google.protobuf.UInt64Value");
  v12 = 4;
  sub_276A4D46C(v13, "google.protobuf.Int32Value");
  v14 = 5;
  sub_276A4D46C(v15, "google.protobuf.UInt32Value");
  v16 = 6;
  sub_276A4D46C(v17, "google.protobuf.StringValue");
  v18 = 7;
  sub_276A4D46C(v19, "google.protobuf.BytesValue");
  v20 = 8;
  sub_276A4D46C(v21, "google.protobuf.BoolValue");
  v22 = 9;
  sub_276A4D46C(v23, "google.protobuf.Any");
  v24 = 10;
  sub_276A4D46C(v25, "google.protobuf.FieldMask");
  v26 = 11;
  sub_276A4D46C(v27, "google.protobuf.Duration");
  v28 = 12;
  sub_276A4D46C(v29, "google.protobuf.Timestamp");
  v30 = 13;
  sub_276A4D46C(v31, "google.protobuf.Value");
  v32 = 14;
  sub_276A4D46C(v33, "google.protobuf.ListValue");
  v34 = 15;
  sub_276A4D46C(v35, "google.protobuf.Struct");
  v2 = 0;
  v36 = 16;
  do
  {
    sub_276B286D0(this + 18, &v5[v2], &v5[v2]);
    v2 += 4;
  }

  while (v2 != 64);
  v3 = 64;
  do
  {
    if (*(&v5[v3 - 1] - 1) < 0)
    {
      operator delete(v5[v3 - 4]);
    }

    v3 -= 4;
  }

  while (v3 * 8);
  return this;
}

void sub_276B089C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void **a11, void *a12, void *a13)
{
  while (1)
  {
    v20 = *(v19 - 9);
    v19 -= 4;
    if (v20 < 0)
    {
      operator delete(*v19);
    }

    if (v19 == &a13)
    {
      v21 = *(v13 + 480);
      if (v21)
      {
        *(v13 + 488) = v21;
        operator delete(v21);
      }

      v22 = *(v13 + 456);
      if (v22)
      {
        *(v13 + 464) = v22;
        operator delete(v22);
      }

      v23 = *(v13 + 432);
      if (v23)
      {
        *(v13 + 440) = v23;
        operator delete(v23);
      }

      v24 = *v18;
      if (*v18)
      {
        *(v13 + 416) = v24;
        operator delete(v24);
      }

      sub_276A579A4(v13 + 384, *a11);
      sub_2769BB184(v17);
      sub_2769BB184(v16 + 160);
      sub_276B285E0(&a13);
      a13 = (v16 + 112);
      sub_276B28524(&a13);
      sub_276B28464(&a13);
      a13 = (v16 + 64);
      sub_276B28350(&a13);
      a13 = a12;
      sub_276B282A4(&a13);
      sub_276B2821C(v16);
      sub_2769BB184(v15);
      sub_276B2821C(v14);
      sub_276B2821C((v13 + 24));
      a13 = v13;
      sub_276B281C8(&a13);
      _Unwind_Resume(a1);
    }
  }
}

void google::protobuf::DescriptorPool::Tables::~Tables(google::protobuf::DescriptorPool::Tables *this)
{
  v2 = *(this + 60);
  if (v2)
  {
    *(this + 61) = v2;
    operator delete(v2);
  }

  v3 = *(this + 57);
  if (v3)
  {
    *(this + 58) = v3;
    operator delete(v3);
  }

  v4 = *(this + 54);
  if (v4)
  {
    *(this + 55) = v4;
    operator delete(v4);
  }

  v5 = *(this + 51);
  if (v5)
  {
    *(this + 52) = v5;
    operator delete(v5);
  }

  sub_276A579A4(this + 384, *(this + 49));
  sub_2769BB184(this + 344);
  sub_2769BB184(this + 304);
  v6 = (this + 280);
  sub_276B285E0(&v6);
  v6 = (this + 256);
  sub_276B28524(&v6);
  v6 = (this + 232);
  sub_276B28464(&v6);
  v6 = (this + 208);
  sub_276B28350(&v6);
  v6 = (this + 184);
  sub_276B282A4(&v6);
  sub_276B2821C(this + 18);
  sub_2769BB184(this + 104);
  sub_276B2821C(this + 8);
  sub_276B2821C(this + 3);
  v6 = this;
  sub_276B281C8(&v6);
}

void google::protobuf::FileDescriptorTables::FileDescriptorTables(google::protobuf::FileDescriptorTables *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  sub_276B28F78(this, 3uLL);
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  sub_276B28F78(this + 40, 3uLL);
  operator new();
}

void sub_276B08DD8(_Unwind_Exception *a1)
{
  sub_276B2821C((v1 + 280));
  sub_2769BB184(v4);
  sub_2769BB184(v3);
  sub_2769BB184(v1 + 152);
  sub_276B2917C((v1 + 136));
  sub_2769BB184(v1 + 96);
  sub_276B2917C((v1 + 80));
  sub_2769BB184(v2);
  sub_2769BB184(v1);
  _Unwind_Resume(a1);
}

void google::protobuf::FileDescriptorTables::~FileDescriptorTables(std::mutex *this)
{
  std::mutex::~mutex(this + 5);
  sub_276B2821C(&this[4].__m_.__opaque[16]);
  sub_2769BB184(&this[3].__m_.__opaque[32]);
  sub_2769BB184(&this[3]);
  sub_2769BB184(&this[2].__m_.__opaque[16]);
  sub_276B2917C(this[2].__m_.__opaque);
  sub_2769BB184(&this[1].__m_.__opaque[24]);
  sub_276B2917C(&this[1].__m_.__opaque[8]);
  sub_2769BB184(&this->__m_.__opaque[32]);

  sub_2769BB184(this);
}

void google::protobuf::DescriptorPool::Tables::AddCheckpoint(google::protobuf::DescriptorPool::Tables *this)
{
  sub_276B26258(&v17, this);
  v2 = *(this + 52);
  v3 = *(this + 53);
  if (v2 >= v3)
  {
    v6 = *(this + 51);
    v7 = (v2 - v6) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_2769BA860();
    }

    v9 = v3 - v6;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_276B291C8(this + 408, v10);
    }

    v11 = (32 * v7);
    v12 = v18;
    *v11 = v17;
    v11[1] = v12;
    v5 = 32 * v7 + 32;
    v13 = *(this + 51);
    v14 = *(this + 52) - v13;
    v15 = 32 * v7 - v14;
    memcpy(v11 - v14, v13, v14);
    v16 = *(this + 51);
    *(this + 51) = v15;
    *(this + 52) = v5;
    *(this + 53) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v4 = v18;
    *v2 = v17;
    v2[1] = v4;
    v5 = (v2 + 2);
  }

  *(this + 52) = v5;
}

void *google::protobuf::DescriptorPool::Tables::ClearLastCheckpoint(void *this)
{
  v1 = this[51];
  v2 = this[52] - 32;
  this[52] = v2;
  if (v1 == v2)
  {
    this[55] = this[54];
    this[58] = this[57];
    this[61] = this[60];
  }

  return this;
}

void google::protobuf::DescriptorPool::Tables::RollbackToLastCheckpoint(google::protobuf::DescriptorPool::Tables *this)
{
  v2 = *(this + 52);
  v3 = *(v2 - 12);
  v4 = *(this + 54);
  for (i = *(this + 55); v3 < (i - v4) >> 3; i = *(this + 55))
  {
    sub_276B262D8(v11, *(v4 + 8 * v3));
    sub_276B29210(this + 38, v11);
    ++v3;
    v4 = *(this + 54);
  }

  for (j = *(v2 - 8); ; ++j)
  {
    v7 = *(this + 57);
    if (j >= (*(this + 58) - v7) >> 3)
    {
      break;
    }

    sub_276B262D8(v11, *(v7 + 8 * j));
    sub_276B29210(this + 43, v11);
  }

  v8 = *(v2 - 4);
  v9 = *(this + 60);
  if (v8 < (*(this + 61) - v9) >> 4)
  {
    v10 = 16 * v8;
    do
    {
      sub_276B29370(this + 48, (v9 + v10));
      ++v8;
      v9 = *(this + 60);
      v10 += 16;
    }

    while (v8 < (*(this + 61) - v9) >> 4);
  }

  sub_276B0914C(this + 54, *(v2 - 12));
  sub_276B0914C(this + 57, *(v2 - 8));
  sub_276B0917C(this + 60, *(v2 - 4));
  sub_276B091AC(this + 26, *(v2 - 32));
  sub_276B091DC(this + 29, *(v2 - 28));
  sub_276B0928C(this + 32, *(v2 - 24));
  sub_276B092BC((this + 280), *(v2 - 20));
  sub_276B092EC(this + 23, *(v2 - 16));
  *(this + 52) -= 32;
}

void sub_276B0914C(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_276B293C4(result, a2 - v2);
  }
}

void sub_276B0917C(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_276B29520(result, a2 - v2);
  }
}

void sub_276B091AC(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      sub_276B283A4(result, (*result + 8 * a2));
    }
  }

  else
  {
    sub_276B29684(result, a2 - v2);
  }
}

void sub_276B091DC(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = (v3 - *result) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      result[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_276B29830(result, v5);
  }
}

void sub_276B0928C(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      sub_276B28578(result, (*result + 8 * a2));
    }
  }

  else
  {
    sub_276B29A00(result, a2 - v2);
  }
}

void sub_276B092BC(std::mutex *result, unint64_t a2)
{
  v2 = (*result->__m_.__opaque - result->__m_.__sig) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      sub_276B28634(result, (result->__m_.__sig + 8 * a2));
    }
  }

  else
  {
    sub_276B29BCC(result, a2 - v2);
  }
}

void sub_276B092EC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_276B29D70(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

unint64_t google::protobuf::DescriptorPool::Tables::FindByNameHelper(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  std::mutex::lock(*a2);
  if (!a1[11] && !a1[6])
  {
    v18 = a3;
    v19 = a4;
    v17 = sub_276B26328(a1 + 38, &v18);
    if (v17)
    {
      v12 = v17[4];
      if (v12)
      {
        v11 = HIDWORD(v12);
        goto LABEL_20;
      }
    }
  }

  std::mutex::unlock(v8);
  v8 = *a2;
  if (*a2)
  {
    std::mutex::lock(*a2);
    v9 = 0;
  }

  else
  {
LABEL_6:
    v9 = 1;
  }

  if (*(a2 + 8))
  {
    sub_276B29FCC((a1 + 8));
    sub_276B29FCC((a1 + 3));
  }

  v18 = a3;
  v19 = a4;
  v10 = sub_276B26328(a1 + 38, &v18);
  if (v10)
  {
    LODWORD(v12) = *(v10 + 8);
    v11 = *(v10 + 9);
    if (v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *(a2 + 24);
  if (!v13 || (v14 = google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(v13 + 32), v13, a3, a4), v11 = HIDWORD(v14), (LODWORD(v12) = v14) == 0))
  {
    if (google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a2, a3, a4))
    {
      v18 = a3;
      v19 = a4;
      v15 = sub_276B26328(a1 + 38, &v18);
      if (v15)
      {
        v12 = v15[4];
      }

      else
      {
        v12 = 0;
      }

      v11 = HIDWORD(v12);
      if ((v9 & 1) == 0)
      {
        goto LABEL_20;
      }

      return v12 | (v11 << 32);
    }

    LODWORD(v12) = 0;
  }

LABEL_19:
  if ((v9 & 1) == 0)
  {
LABEL_20:
    std::mutex::unlock(v8);
  }

  return v12 | (v11 << 32);
}

uint64_t google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(google::protobuf::DescriptorPool *a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v15 = a3;
  if (!*(a1 + 1))
  {
    return 0;
  }

  sub_276B264AC(&v14, v12);
  if (sub_276B2B1CC((*(a1 + 4) + 64), v12))
  {
    v4 = 0;
  }

  else
  {
    google::protobuf::FileDescriptorProto::FileDescriptorProto(v10, 0);
    if ((google::protobuf::DescriptorPool::IsSubSymbolOfBuiltType(a1, v14, v15) & 1) != 0 || !(*(**(a1 + 1) + 24))(*(a1 + 1), v12, v10) || (v6 = *(a1 + 4), sub_276B280C4(&v9, (v11 & 0xFFFFFFFFFFFFFFFELL), v5), v16 = v9, (v7 = sub_276B26328((v6 + 344), &v16)) != 0) && v7[4] || !google::protobuf::DescriptorPool::BuildFileFromDatabase(a1, v10))
    {
      sub_276B2B2C8((*(a1 + 4) + 64), v12, v12);
      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    google::protobuf::FileDescriptorProto::~FileDescriptorProto(v10);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return v4;
}

void sub_276B09684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 65) < 0)
  {
    operator delete(*(v11 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::FileDescriptorTables::FindParentForFieldsByMap(google::protobuf::FileDescriptorTables *this, const FieldDescriptor *a2)
{
  if (HIBYTE(a2[4].MangledTypeName) != 1)
  {
    v3 = 80;
    return *(&a2->MangledTypeName + v3);
  }

  result = *&a2[6].MangledTypeName;
  if (!result)
  {
    v3 = 40;
    return *(&a2->MangledTypeName + v3);
  }

  return result;
}

uint64_t google::protobuf::FileDescriptorTables::FieldsByLowercaseNamesLazyInitInternal(uint64_t this)
{
  v1 = *(this + 168);
  if (v1)
  {
    v2 = this;
    while (1)
    {
      v3 = v1[4];
      if (*(v3 + 67) != 1)
      {
        break;
      }

      v4 = *(v3 + 96);
      if (!v4)
      {
        v5 = 40;
LABEL_7:
        v4 = *(v3 + v5);
      }

      v6 = *(v3 + 16);
      if (v6[23] < 0)
      {
        v6 = *v6;
      }

      *&v7 = v4;
      sub_276B262D8(&v7 + 1, v6);
      this = sub_276B0977C((v2 + 40), &v7, v1 + 4);
      v1 = *v1;
      if (!v1)
      {
        return this;
      }
    }

    v5 = 80;
    goto LABEL_7;
  }

  return this;
}

uint64_t sub_276B0977C(float *a1, __int128 *a2, uint64_t *a3)
{
  v19 = *a2;
  v4 = *(a2 + 2);
  v5 = *a3;
  v20 = v4;
  v21 = v5;
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = *(&v19 + 1);
    v8 = *(&v19 + 1) + v4;
    do
    {
      v9 = *v7++;
      v6 = 5 * v6 + v9;
    }

    while (v7 < v8);
  }

  v10 = v6 ^ (16777619 * v19);
  v11 = *(a1 + 2);
  if (!*&v11)
  {
    goto LABEL_23;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v6 ^ (16777619 * v19);
    if (v10 >= *&v11)
    {
      v14 = v10 % *&v11;
    }
  }

  else
  {
    v14 = (*&v11 - 1) & v10;
  }

  v15 = *(*a1 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v10)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_23;
    }

LABEL_22:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_23;
    }
  }

  if (!sub_276B2665C(a1, v16 + 2, &v19))
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t google::protobuf::FileDescriptorTables::FieldsByCamelcaseNamesLazyInitInternal(uint64_t this)
{
  v1 = *(this + 168);
  if (v1)
  {
    v2 = this;
    while (1)
    {
      v3 = v1[4];
      if (*(v3 + 67) != 1)
      {
        break;
      }

      v4 = *(v3 + 96);
      if (!v4)
      {
        v5 = 40;
LABEL_7:
        v4 = *(v3 + v5);
      }

      v6 = *(v3 + 24);
      if (v6[23] < 0)
      {
        v6 = *v6;
      }

      *&v7 = v4;
      sub_276B262D8(&v7 + 1, v6);
      this = sub_276B0977C((v2 + 96), &v7, v1 + 4);
      v1 = *v1;
      if (!v1)
      {
        return this;
      }
    }

    v5 = 80;
    goto LABEL_7;
  }

  return this;
}

uint64_t google::protobuf::DescriptorPool::Tables::AddSymbol(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  sub_276B262D8(&v12, a2);
  v13 = v12;
  v14 = a3;
  v15 = a4;
  sub_276B2A0FC((a1 + 304), &v13, &v13);
  v9 = v8;
  if (v8)
  {
    if (v6[23] >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = *v6;
    }

    *&v13 = v10;
    sub_276B09B48(a1 + 432, &v13);
  }

  return v9 & 1;
}

void sub_276B09B48(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2769BA860();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_276B294D8(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t google::protobuf::FileDescriptorTables::AddAliasUnderParent(float *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a3[23] >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  *&v21 = a2;
  sub_276B262D8(&v21 + 1, v8);
  v23 = v21;
  v24 = v22;
  v25 = a4;
  v26 = a5;
  if (v22 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = *(&v23 + 1);
    do
    {
      v11 = *v10++;
      v9 = 5 * v9 + v11;
    }

    while (v10 < *(&v23 + 1) + v22);
  }

  v12 = v9 ^ (16777619 * v21);
  v13 = *(a1 + 2);
  if (!*&v13)
  {
    goto LABEL_26;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v9 ^ (16777619 * v21);
    if (v12 >= *&v13)
    {
      v16 = v12 % *&v13;
    }
  }

  else
  {
    v16 = (*&v13 - 1) & v12;
  }

  v17 = *(*a1 + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v12)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v19 >= *&v13)
      {
        v19 %= *&v13;
      }
    }

    else
    {
      v19 &= *&v13 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_26;
    }

LABEL_25:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_26;
    }
  }

  if (!sub_276B2665C(a1, v18 + 2, &v23))
  {
    goto LABEL_25;
  }

  return 0;
}

uint64_t google::protobuf::DescriptorPool::Tables::AddFile(google::protobuf::DescriptorPool::Tables *this, char **a2)
{
  v4 = *a2;
  if (v4[23] < 0)
  {
    v4 = *v4;
  }

  sub_276B262D8(&v9, v4);
  v10 = v9;
  v11 = a2;
  sub_276B2A374(this + 43, &v10, &v10);
  v6 = v5;
  if (v5)
  {
    v7 = *a2;
    if ((*a2)[23] < 0)
    {
      v7 = *v7;
    }

    *&v10 = v7;
    sub_276B09B48(this + 456, &v10);
  }

  return v6 & 1;
}

uint64_t google::protobuf::FileDescriptorTables::FinalizeTables(google::protobuf::FileDescriptorTables *this)
{
  sub_276B2917C(this + 10);

  return sub_276B2917C(this + 17);
}

uint64_t google::protobuf::FileDescriptorTables::AddFieldByStylizedNames(google::protobuf::FileDescriptorTables *this, char **a2)
{
  v12 = a2;
  if (*(a2 + 67) == 1)
  {
    v4 = a2[12];
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = 5;
  }

  else
  {
    v5 = 10;
  }

  v4 = a2[v5];
LABEL_6:
  v6 = a2[2];
  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  *&v11 = v4;
  sub_276B262D8(&v11 + 1, v6);
  if ((sub_276B0977C(*(this + 10), &v11, &v12) & 1) == 0)
  {
    *&v10 = sub_276B0A0B0(*(this + 10), &v11);
    sub_276B0977C(this + 10, &v11, &v10);
  }

  v7 = a2[3];
  if (v7[23] < 0)
  {
    v7 = *v7;
  }

  *&v10 = v4;
  sub_276B262D8(&v10 + 1, v7);
  result = sub_276B0977C(*(this + 17), &v10, &v12);
  if ((result & 1) == 0)
  {
    v9 = sub_276B0A0B0(*(this + 17), &v10);
    return sub_276B0977C(this + 24, &v10, &v9);
  }

  return result;
}

uint64_t sub_276B0A0B0(void *a1, void *a2)
{
  v4 = a2[2];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a2[1];
    v7 = &v6[v4];
    do
    {
      v8 = *v6++;
      v5 = 5 * v5 + v8;
    }

    while (v6 < v7);
  }

  v9 = a1[1];
  if (v9)
  {
    v10 = v5 ^ (16777619 * *a2);
    v11 = vcnt_s8(v9);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = v5 ^ (16777619 * *a2);
      if (v10 >= *&v9)
      {
        v13 = v10 % *&v9;
      }
    }

    else
    {
      v13 = (*&v9 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v13);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        do
        {
          v16 = v15[1];
          if (v16 == v10)
          {
            if (sub_276B2665C(a1, v15 + 2, a2))
            {
              return v15[5];
            }
          }

          else
          {
            if (v12 > 1)
            {
              if (v16 >= *&v9)
              {
                v16 %= *&v9;
              }
            }

            else
            {
              v16 &= *&v9 - 1;
            }

            if (v16 != v13)
            {
              return 0;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

  return 0;
}

uint64_t google::protobuf::FileDescriptorTables::AddFieldByNumber(int8x8_t *this, const google::protobuf::FieldDescriptor *a2)
{
  v2 = *(a2 + 10);
  v3 = *(a2 + 17);
  v4 = (16777619 * v3) ^ (16777499 * v2);
  v5 = this[20];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (16777619 * v3) ^ (16777499 * v2);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*&this[19] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != v2 || *(v9 + 6) != v3)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t google::protobuf::FileDescriptorTables::AddEnumValueByNumber(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v2 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = v2;
  return sub_276B0A484((a1 + 192), &v4, &v6);
}

uint64_t sub_276B0A484(float *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = (16777619 * v3) ^ (16777499 * *a2);
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (16777619 * v3) ^ (16777499 * *a2);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || *(v9 + 6) != v3)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t google::protobuf::DescriptorPool::Tables::AddExtension(uint64_t **this, const google::protobuf::FieldDescriptor *a2)
{
  v3 = *(a2 + 10);
  v4 = *(a2 + 17);
  v21 = v3;
  v22 = v4;
  v23 = a2;
  sub_276B2A5F4(this + 48, &v21, &v21);
  v6 = v5;
  if (v5)
  {
    v8 = this[61];
    v7 = this[62];
    if (v8 >= v7)
    {
      v10 = this[60];
      v11 = (v8 - v10) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        sub_2769BA860();
      }

      v13 = v7 - v10;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        sub_276B2963C((this + 60), v14);
      }

      v15 = 16 * v11;
      *v15 = v3;
      *(v15 + 8) = v4;
      v9 = 16 * v11 + 16;
      v16 = this[60];
      v17 = this[61] - v16;
      v18 = (16 * v11 - v17);
      memcpy(v18, v16, v17);
      v19 = this[60];
      this[60] = v18;
      this[61] = v9;
      this[62] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v8 = v3;
      *(v8 + 2) = v4;
      v9 = (v8 + 2);
    }

    this[61] = v9;
  }

  return v6 & 1;
}

void google::protobuf::DescriptorPool::Tables::AllocateString(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a3;
  operator new();
}

uint64_t google::protobuf::DescriptorPool::Tables::AllocateBytes(google::protobuf::DescriptorPool::Tables *this, int a2)
{
  v6 = a2;
  if (!a2)
  {
    return 0;
  }

  v3 = *(this + 24);
  if (v3 >= *(this + 25))
  {
    v4 = sub_276B2A6F8(this + 184, &v6);
  }

  else
  {
    sub_276B2A818(*(this + 24), a2);
    v4 = (v3 + 24);
    *(this + 24) = v3 + 24;
  }

  *(this + 24) = v4;
  return *(v4 - 3);
}

void google::protobuf::FileDescriptorTables::BuildLocationsByPath(uint64_t *a1)
{
  v1 = *(a1[1] + 24);
  if (v1 >= 1)
  {
    v3 = 8;
    do
    {
      v4 = *a1;
      v5 = *(*(a1[1] + 32) + v3);
      sub_276B0AE00(&__p, ",", v5 + 6);
      p_p = &__p;
      sub_276B2A9A0((v4 + 280), &__p, &unk_276C17580, &p_p)[5] = v5;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v3 += 8;
      --v1;
    }

    while (v1);
  }
}

void sub_276B0ADE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_276B0AE00@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X1>, int *a3@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return sub_276B2A8DC(*(a3 + 1), (*(a3 + 1) + 4 * *a3), __s, a1);
}

void sub_276B0AE44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void *google::protobuf::FileDescriptorTables::GetSourceLocation(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v11[0] = a1;
  v11[1] = a3;
  v5 = (a1 + 272);
  v10 = v11;
  if (atomic_load_explicit(v5, memory_order_acquire) != -1)
  {
    __p.__r_.__value_.__r.__words[0] = google::protobuf::FileDescriptorTables::BuildLocationsByPath;
    __p.__r_.__value_.__l.__size_ = &v10;
    p_p = &__p;
    std::__call_once(v5, &p_p, sub_276B2AC20);
  }

  sub_276B0AF3C(&__p, ",", a2);
  v6 = sub_276B2AC30((a1 + 280), &__p);
  if (v6)
  {
    v7 = v6[5];
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_276B0AF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_276B0AF3C@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X1>, unsigned int **a3@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return sub_276B2A8DC(*a3, a3[1], __s, a1);
}

void sub_276B0AF78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorPool::DescriptorPool(google::protobuf::DescriptorPool *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  operator new();
}

void google::protobuf::DescriptorPool::DescriptorPool(google::protobuf::DescriptorPool *this, const google::protobuf::DescriptorPool *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  operator new();
}

void google::protobuf::DescriptorPool::~DescriptorPool(char **this)
{
  v2 = *this;
  if (v2)
  {
    std::mutex::~mutex(v2);
    MEMORY[0x277C9F670]();
  }

  sub_276B2AD2C((this + 6), this[7]);
  v3 = this[4];
  this[4] = 0;
  if (v3)
  {
    google::protobuf::DescriptorPool::Tables::~Tables(v3);
    MEMORY[0x277C9F670]();
  }
}

void google::protobuf::DescriptorPool::AddUnusedImportTrackFile(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_276A07B90(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v7 = __p;
  *(sub_276B2AD90((a1 + 48), __p, &unk_276C17580, &v7) + 56) = a3;
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276B0B2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorPool::ClearUnusedImportTrackFiles(char **this)
{
  v1 = this + 7;
  sub_276B2AD2C((this + 6), this[7]);
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

BOOL google::protobuf::DescriptorPool::InternalIsFileLoaded(uint64_t a1, uint64_t *a2, const char *a3)
{
  v5 = *a1;
  if (*a1)
  {
    std::mutex::lock(*a1);
  }

  v6 = *(a1 + 32);
  sub_276B280C4(&v10, a2, a3);
  v11 = v10;
  v7 = sub_276B26328((v6 + 344), &v11);
  if (!v7)
  {
    v8 = 0;
    if (!v5)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v8 = v7[4] != 0;
  if (v5)
  {
LABEL_5:
    std::mutex::unlock(v5);
  }

  return v8;
}

void sub_276B0B390(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::mutex::unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B0B3AC()
{
  if ((atomic_load_explicit(&qword_2812FE3D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2812FE3D8))
  {
    operator new();
  }

  return qword_2812FE3D0;
}

void sub_276B0B43C(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v1, 0xA1C40F4AD4952);
  __cxa_guard_abort(&qword_2812FE3D8);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::internal_generated_pool(google::protobuf::DescriptorPool *this)
{
  if ((atomic_load_explicit(&qword_280A52D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A52D38))
  {
    sub_276B0B504();
  }

  return qword_280A52D30;
}

uint64_t google::protobuf::DescriptorPool::generated_pool(google::protobuf::DescriptorPool *this)
{
  v1 = google::protobuf::DescriptorPool::internal_generated_pool(this);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  return v1;
}

void google::protobuf::DescriptorPool::InternalAddGeneratedFile(google::protobuf::DescriptorPool *this, const void *a2)
{
  v2 = a2;
  v4 = sub_276B0B3AC();
  google::protobuf::EncodedDescriptorDatabase::Add(v4, this, v2);
}

void sub_276B0B634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::FindFileByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v5 = *a1;
  if (*a1)
  {
    std::mutex::lock(*a1);
  }

  if (*(a1 + 8))
  {
    sub_276B29FCC(*(a1 + 32) + 64);
    sub_276B29FCC(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 32);
  sub_276B280C4(&v15, a2, a3);
  v16 = v15;
  v7 = sub_276B26328((v6 + 344), &v16);
  if (!v7 || (FileByName = v7[4]) == 0)
  {
    v10 = *(a1 + 24);
    if (!v10 || (FileByName = google::protobuf::DescriptorPool::FindFileByName(v10, a2)) == 0)
    {
      sub_276B280C4(&v16, a2, v8);
      if (!google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(a1, v16, *(&v16 + 1)) || (v12 = *(a1 + 32), sub_276B280C4(&v15, a2, v11), v16 = v15, (v13 = sub_276B26328((v12 + 344), &v16)) == 0) || (FileByName = v13[4]) == 0)
      {
        FileByName = 0;
      }
    }
  }

  if (v5)
  {
    std::mutex::unlock(v5);
  }

  return FileByName;
}

void sub_276B0B758(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::mutex::unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(google::protobuf::DescriptorPool *a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  if (!*(a1 + 1))
  {
    return 0;
  }

  sub_276B264AC(v9, v7);
  if (sub_276B2B1CC((*(a1 + 4) + 24), v7))
  {
    v4 = 0;
  }

  else
  {
    google::protobuf::FileDescriptorProto::FileDescriptorProto(v6, 0);
    if ((*(**(a1 + 1) + 16))(*(a1 + 1), v7, v6) && google::protobuf::DescriptorPool::BuildFileFromDatabase(a1, v6))
    {
      v4 = 1;
    }

    else
    {
      sub_276B2B2C8((*(a1 + 4) + 24), v7, v7);
      v4 = 0;
    }

    google::protobuf::FileDescriptorProto::~FileDescriptorProto(v6);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return v4;
}

void sub_276B0B860(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::DescriptorPool::FindFileContainingSymbol(uint64_t a1, uint64_t *a2, const char *a3)
{
  v5 = *a1;
  if (*a1)
  {
    std::mutex::lock(*a1);
  }

  if (*(a1 + 8))
  {
    sub_276B29FCC(*(a1 + 32) + 64);
    sub_276B29FCC(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 32);
  sub_276B280C4(&v16, a2, a3);
  v18 = v16;
  v7 = sub_276B26328((v6 + 304), &v18);
  if (v7)
  {
    v17 = *(v7 + 2);
    if (v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0uLL;
  }

  v10 = *(a1 + 24);
  if (!v10 || (FileContainingSymbol = google::protobuf::DescriptorPool::FindFileContainingSymbol(v10, a2)) == 0)
  {
    sub_276B280C4(&v18, a2, v8);
    if (google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a1, v18, *(&v18 + 1)))
    {
      v12 = *(a1 + 32);
      sub_276B280C4(&v16, a2, v11);
      v18 = v16;
      v13 = sub_276B26328((v12 + 304), &v18);
      if (!v13)
      {
        FileContainingSymbol = 0;
        *(&v17 + 1) = 0;
        if (!v5)
        {
          return FileContainingSymbol;
        }

        goto LABEL_17;
      }

      v14 = v13[5];
      *&v17 = v13[4];
      *(&v17 + 1) = v14;
      if (v17)
      {
LABEL_7:
        FileContainingSymbol = sub_276B0B9EC(&v17);
        if (!v5)
        {
          return FileContainingSymbol;
        }

        goto LABEL_17;
      }
    }

    FileContainingSymbol = 0;
  }

  if (v5)
  {
LABEL_17:
    std::mutex::unlock(v5);
  }

  return FileContainingSymbol;
}

void sub_276B0B9CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::mutex::unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B0B9EC(uint64_t a1)
{
  v1 = 0;
  v2 = *a1;
  if (*a1 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 != 1)
      {
        if (v2 == 2)
        {
          v3 = *(a1 + 8) + 40;
          return *v3;
        }

        return v1;
      }

      goto LABEL_12;
    }

    if (v2 != 3)
    {
      if (v2 != 4)
      {
        return v1;
      }

LABEL_12:
      v4 = *(a1 + 8);
LABEL_18:
      v3 = v4 + 16;
      return *v3;
    }

LABEL_16:
    v4 = *(*(a1 + 8) + 16);
    goto LABEL_18;
  }

  if (v2 <= 6)
  {
    if (v2 == 5)
    {
      v4 = *(*(a1 + 8) + 24);
      goto LABEL_18;
    }

    if (v2 != 6)
    {
      return v1;
    }

    goto LABEL_12;
  }

  if (v2 == 7)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = a1 + 8;
    return *v3;
  }

  return v1;
}

uint64_t google::protobuf::DescriptorPool::FindMessageTypeByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::DescriptorPool::FindFieldByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) != 2)
  {
    return 0;
  }

  result = v5;
  if (*(v5 + 67) == 1)
  {
    return 0;
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::FindExtensionByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) != 2)
  {
    return 0;
  }

  result = v5;
  if ((*(v5 + 67) & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::FindOneofByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::DescriptorPool::FindEnumTypeByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::DescriptorPool::FindEnumValueByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::DescriptorPool::FindServiceByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::DescriptorPool::FindMethodByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::DescriptorPool::FindExtensionByNumber(std::mutex **this, const google::protobuf::Descriptor *a2, uint64_t a3)
{
  if (!*(a2 + 31))
  {
    return 0;
  }

  v6 = *this;
  if (!*this)
  {
    goto LABEL_10;
  }

  std::mutex::lock(*this);
  v7 = this[4];
  v17 = a2;
  v18 = a3;
  v8 = sub_276B265AC(&v7[6], &v17);
  if (v7[6].__m_.__opaque == v8)
  {
    std::mutex::unlock(v6);
  }

  else
  {
    ExtensionByNumber = v8[6];
    std::mutex::unlock(v6);
    if (ExtensionByNumber)
    {
      return ExtensionByNumber;
    }
  }

  v6 = *this;
  if (*this)
  {
    std::mutex::lock(*this);
    v10 = 0;
  }

  else
  {
LABEL_10:
    v10 = 1;
  }

  if (this[1])
  {
    sub_276B29FCC(&this[4][1]);
    sub_276B29FCC(&this[4]->__m_.__opaque[16]);
  }

  v11 = this[4];
  v17 = a2;
  v18 = a3;
  v12 = sub_276B265AC(&v11[6], &v17);
  if (v11[6].__m_.__opaque == v12 || (ExtensionByNumber = v12[6]) == 0)
  {
    v13 = this[3];
    if (!v13 || (ExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(v13, a2, a3)) == 0)
    {
      if (!google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(this, a2, a3) || (v14 = this[4], v17 = a2, v18 = a3, v15 = sub_276B265AC(&v14[6], &v17), v14[6].__m_.__opaque == v15) || (ExtensionByNumber = v15[6]) == 0)
      {
        ExtensionByNumber = 0;
      }
    }
  }

  if ((v10 & 1) == 0)
  {
    std::mutex::unlock(v6);
  }

  return ExtensionByNumber;
}

BOOL google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(google::protobuf::DescriptorPool *this, const google::protobuf::Descriptor *a2, uint64_t a3)
{
  if (!*(this + 1))
  {
    return 0;
  }

  google::protobuf::FileDescriptorProto::FileDescriptorProto(v12, 0);
  v9 = ((*(**(this + 1) + 32))(*(this + 1), *(a2 + 1), a3, v12) & 1) != 0 && ((v7 = *(this + 4), sub_276B280C4(&v11, (v13 & 0xFFFFFFFFFFFFFFFELL), v6), v14 = v11, (v8 = sub_276B26328((v7 + 344), &v14)) == 0) || !v8[4]) && google::protobuf::DescriptorPool::BuildFileFromDatabase(this, v12) != 0;
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(v12);
  return v9;
}

void sub_276B0BF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::InternalFindExtensionByNumberNoLock(google::protobuf::DescriptorPool *this, const google::protobuf::Descriptor *a2, int a3)
{
  if (!*(a2 + 31))
  {
    return 0;
  }

  v6 = *(this + 4);
  v10 = a2;
  v11 = a3;
  v7 = sub_276B265AC(v6 + 384, &v10);
  if ((v6 + 392) == v7 || (result = v7[6]) == 0)
  {
    v9 = *(this + 3);
    if (!v9)
    {
      return 0;
    }

    result = google::protobuf::DescriptorPool::InternalFindExtensionByNumberNoLock(v9, a2, a3);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::FindExtensionByPrintableName(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a2 + 124))
  {
    return 0;
  }

  result = google::protobuf::DescriptorPool::FindExtensionByName(a1, a3, a3);
  if (!result || *(result + 80) != a2)
  {
    if (*(*(a2 + 32) + 72) != 1)
    {
      return 0;
    }

    result = google::protobuf::DescriptorPool::FindMessageTypeByName(a1, a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v9 = *(result + 128);
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = 152 * v9;
      while (1)
      {
        v12 = *(v8 + 80);
        if (*(v12 + v10 + 80) == a2)
        {
          v13 = *(v12 + v10 + 48);
          if (v13)
          {
            v14 = v12 + v10;
            v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v13, memory_order_acquire) != -1)
            {
              v17[0] = &v15;
              v17[1] = &v14;
              v16 = v17;
              std::__call_once(v13, &v16, sub_2769C149C);
            }
          }

          if (*(v12 + v10 + 56) == 11 && *(v12 + v10 + 60) == 1 && google::protobuf::FieldDescriptor::message_type((v12 + v10)) == v8)
          {
            break;
          }
        }

        v10 += 152;
        if (v11 == v10)
        {
          return 0;
        }
      }

      return v12 + v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_276B0C1A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v4 = a1;
    v5 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v2, memory_order_acquire) != -1)
    {
      v7[0] = &v5;
      v7[1] = &v4;
      v6 = v7;
      std::__call_once(v2, &v6, sub_2769C149C);
    }
  }

  return *(a1 + 56);
}

uint64_t google::protobuf::FieldDescriptor::message_type(google::protobuf::FieldDescriptor *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v4 = this;
    if (atomic_load_explicit(v2, memory_order_acquire) != -1)
    {
      v6[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v6[1] = &v4;
      v5 = v6;
      std::__call_once(v2, &v5, sub_276B2F244);
    }
  }

  return *(this + 13);
}

void google::protobuf::DescriptorPool::FindAllExtensions(uint64_t a1, google::protobuf::Descriptor *a2, uint64_t a3)
{
  v4 = a2;
  v26 = a2;
  v6 = *a1;
  if (*a1)
  {
    std::mutex::lock(*a1);
  }

  if (*(a1 + 8))
  {
    sub_276B29FCC(*(a1 + 32) + 64);
    sub_276B29FCC(*(a1 + 32) + 24);
    if (*(a1 + 8))
    {
      v7 = sub_276B2AE7C((*(a1 + 32) + 104), &v26);
      v4 = v26;
      if (!v7)
      {
        v24 = 0;
        v25 = 0;
        __p = 0;
        if ((*(**(a1 + 8) + 40))(*(a1 + 8), *(v26 + 1), &__p))
        {
          v8 = __p;
          v9 = v24;
          while (v8 != v9)
          {
            v10 = *v8;
            v11 = *(a1 + 32);
            v27 = v26;
            v28 = v10;
            v12 = sub_276B265AC(v11 + 384, &v27);
            if ((v11 + 392) == v12 || !v12[6])
            {
              google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(a1, v26, v10);
            }

            ++v8;
          }

          sub_276B2AF68((*(a1 + 32) + 104), &v26, &v26);
        }

        if (__p)
        {
          v24 = __p;
          operator delete(__p);
        }

        v4 = v26;
      }
    }
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 392);
  if (v14)
  {
    v15 = (v13 + 392);
    v16 = (v13 + 392);
    do
    {
      v17 = v14[4];
      if (v17 >= v4)
      {
        if (v17 <= v4)
        {
          v18 = *(v14 + 10);
          if (v18 >= 0)
          {
            v16 = v14;
          }

          v14 = (v14 + ((v18 >> 28) & 8));
        }

        else
        {
          v16 = v14;
        }
      }

      else
      {
        ++v14;
      }

      v14 = *v14;
    }

    while (v14);
    if (v16 != v15)
    {
      do
      {
        if (v16[4] != v4)
        {
          break;
        }

        sub_276B23B7C(a3, v16 + 6);
        v19 = v16[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v16[2];
            v21 = *v20 == v16;
            v16 = v20;
          }

          while (!v21);
        }

        v16 = v20;
      }

      while (v20 != v15);
    }
  }

  v22 = *(a1 + 24);
  if (v22)
  {
    google::protobuf::DescriptorPool::FindAllExtensions(v22, v26, a3);
  }

  if (v6)
  {
    std::mutex::unlock(v6);
  }
}

void sub_276B0C4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v10)
  {
    std::mutex::unlock(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::Descriptor::FindFieldByNumber(google::protobuf::Descriptor *this, int a2)
{
  v2 = *(*(this + 2) + 144);
  v3 = v2[20];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (16777619 * a2) ^ (16777499 * this);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (16777619 * a2) ^ (16777499 * this);
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = (*&v3 - 1) & v4;
  }

  v7 = *(*&v2[19] + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (!v8)
  {
    return 0;
  }

  while (1)
  {
    v9 = v8[1];
    if (v4 == v9)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v6)
    {
      return 0;
    }

LABEL_20:
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (v8[2] != this || *(v8 + 6) != a2)
  {
    goto LABEL_20;
  }

  v12 = v8[4];
  if (!v12)
  {
    return 0;
  }

  if (*(v12 + 67))
  {
    return 0;
  }

  else
  {
    return v8[4];
  }
}

uint64_t google::protobuf::Descriptor::FindFieldByLowercaseName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v8, a2, a3);
  v5 = v8;
  v11 = v4;
  v12 = google::protobuf::FileDescriptorTables::FieldsByLowercaseNamesLazyInitStatic;
  if (atomic_load_explicit((v4 + 88), memory_order_acquire) != -1)
  {
    v9 = &v12;
    *&v10 = &v11;
    v13 = &v9;
    v7 = v5;
    std::__call_once((v4 + 88), &v13, sub_276B26638);
    v5 = v7;
  }

  v9 = a1;
  v10 = v5;
  result = sub_276B0A0B0((v4 + 40), &v9);
  if (result)
  {
    if (*(result + 67))
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::Descriptor::FindFieldByCamelcaseName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v8, a2, a3);
  v5 = v8;
  v11 = v4;
  if (atomic_load_explicit((v4 + 144), memory_order_acquire) != -1)
  {
    v9 = google::protobuf::FileDescriptorTables::FieldsByCamelcaseNamesLazyInitStatic;
    *&v10 = &v11;
    v12 = &v9;
    v7 = v5;
    std::__call_once((v4 + 144), &v12, sub_276B2664C);
    v5 = v7;
  }

  v9 = a1;
  v10 = v5;
  result = sub_276B0A0B0((v4 + 96), &v9);
  if (result)
  {
    if (*(result + 67))
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::Descriptor::FindFieldByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
  v5 = v17;
  v19[0] = a1;
  v19[1] = v17;
  v19[2] = v18;
  if (v18 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5;
      v5 = (v5 + 1);
      v6 = 5 * v6 + v7;
    }

    while (v5 < (v17 + v18));
  }

  v8 = v4[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v6 ^ (16777619 * a1);
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v9 >= *&v8)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v9;
  }

  v13 = *(*v4 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (!*v13)
  {
    return 0;
  }

  while (1)
  {
    v15 = v14[1];
    if (v9 == v15)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      return 0;
    }

LABEL_21:
    v14 = *v14;
    if (!v14)
    {
      return 0;
    }
  }

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) != 2)
  {
    return 0;
  }

  if (*(v14[6] + 67))
  {
    return 0;
  }

  else
  {
    return v14[6];
  }
}

uint64_t google::protobuf::Descriptor::FindOneofByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
  v5 = v17;
  v19[0] = a1;
  v19[1] = v17;
  v19[2] = v18;
  if (v18 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5;
      v5 = (v5 + 1);
      v6 = 5 * v6 + v7;
    }

    while (v5 < (v17 + v18));
  }

  v8 = v4[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v6 ^ (16777619 * a1);
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v9 >= *&v8)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v9;
  }

  v13 = *(*v4 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (!*v13)
  {
    return 0;
  }

  while (1)
  {
    v15 = v14[1];
    if (v9 == v15)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      return 0;
    }

LABEL_21:
    v14 = *v14;
    if (!v14)
    {
      return 0;
    }
  }

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 3)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::Descriptor::FindExtensionByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
  v5 = v17;
  v19[0] = a1;
  v19[1] = v17;
  v19[2] = v18;
  if (v18 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5;
      v5 = (v5 + 1);
      v6 = 5 * v6 + v7;
    }

    while (v5 < (v17 + v18));
  }

  v8 = v4[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v6 ^ (16777619 * a1);
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v9 >= *&v8)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v9;
  }

  v13 = *(*v4 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (!*v13)
  {
    return 0;
  }

  while (1)
  {
    v15 = v14[1];
    if (v9 == v15)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      return 0;
    }

LABEL_21:
    v14 = *v14;
    if (!v14)
    {
      return 0;
    }
  }

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) != 2)
  {
    return 0;
  }

  if (*(v14[6] + 67))
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::Descriptor::FindExtensionByLowercaseName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v8, a2, a3);
  v5 = v8;
  v11 = v4;
  v12 = google::protobuf::FileDescriptorTables::FieldsByLowercaseNamesLazyInitStatic;
  if (atomic_load_explicit((v4 + 88), memory_order_acquire) != -1)
  {
    v9 = &v12;
    *&v10 = &v11;
    v13 = &v9;
    v7 = v5;
    std::__call_once((v4 + 88), &v13, sub_276B26638);
    v5 = v7;
  }

  v9 = a1;
  v10 = v5;
  result = sub_276B0A0B0((v4 + 40), &v9);
  if (result)
  {
    if (!*(result + 67))
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::Descriptor::FindExtensionByCamelcaseName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v8, a2, a3);
  v5 = v8;
  v11 = v4;
  if (atomic_load_explicit((v4 + 144), memory_order_acquire) != -1)
  {
    v9 = google::protobuf::FileDescriptorTables::FieldsByCamelcaseNamesLazyInitStatic;
    *&v10 = &v11;
    v12 = &v9;
    v7 = v5;
    std::__call_once((v4 + 144), &v12, sub_276B2664C);
    v5 = v7;
  }

  v9 = a1;
  v10 = v5;
  result = sub_276B0A0B0((v4 + 96), &v9);
  if (result)
  {
    if (!*(result + 67))
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::Descriptor::FindNestedTypeByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
  v5 = v17;
  v19[0] = a1;
  v19[1] = v17;
  v19[2] = v18;
  if (v18 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5;
      v5 = (v5 + 1);
      v6 = 5 * v6 + v7;
    }

    while (v5 < (v17 + v18));
  }

  v8 = v4[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v6 ^ (16777619 * a1);
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v9 >= *&v8)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v9;
  }

  v13 = *(*v4 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (!*v13)
  {
    return 0;
  }

  while (1)
  {
    v15 = v14[1];
    if (v9 == v15)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      return 0;
    }

LABEL_21:
    v14 = *v14;
    if (!v14)
    {
      return 0;
    }
  }

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 1)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::Descriptor::FindEnumTypeByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
  v5 = v17;
  v19[0] = a1;
  v19[1] = v17;
  v19[2] = v18;
  if (v18 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5;
      v5 = (v5 + 1);
      v6 = 5 * v6 + v7;
    }

    while (v5 < (v17 + v18));
  }

  v8 = v4[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v6 ^ (16777619 * a1);
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v9 >= *&v8)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v9;
  }

  v13 = *(*v4 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (!*v13)
  {
    return 0;
  }

  while (1)
  {
    v15 = v14[1];
    if (v9 == v15)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      return 0;
    }

LABEL_21:
    v14 = *v14;
    if (!v14)
    {
      return 0;
    }
  }

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 4)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::Descriptor::FindEnumValueByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
  v5 = v17;
  v19[0] = a1;
  v19[1] = v17;
  v19[2] = v18;
  if (v18 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5;
      v5 = (v5 + 1);
      v6 = 5 * v6 + v7;
    }

    while (v5 < (v17 + v18));
  }

  v8 = v4[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v6 ^ (16777619 * a1);
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v9 >= *&v8)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v9;
  }

  v13 = *(*v4 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (!*v13)
  {
    return 0;
  }

  while (1)
  {
    v15 = v14[1];
    if (v9 == v15)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      return 0;
    }

LABEL_21:
    v14 = *v14;
    if (!v14)
    {
      return 0;
    }
  }

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 5)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}