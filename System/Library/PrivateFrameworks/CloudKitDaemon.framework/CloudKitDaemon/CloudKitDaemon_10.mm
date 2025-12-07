uint64_t sub_22521889C(uint64_t a1, uint64_t a2)
{
  v3 = PCSPublicIdentityGetPublicID();
  if (v3)
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v3);
  }

  return MEMORY[0x2821F96F8]();
}

void *sub_22521BF8C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_userIdentity(a2, a2, a3);
  v6 = objc_msgSend_lookupInfo(v3, v4, v5);

  if (objc_msgSend_lookupField(v6, v7, v8))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

void sub_22521D520(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordWebSharedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordWebSharedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }
}

void sub_22521D5A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordWebUnsharedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordWebUnsharedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22521D8B4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setRetryPCSFailures_(v3, v4, 0);
  objc_msgSend_setCanSetPreviousProtectionEtag_(v3, v5, 1);
  objc_msgSend_setTrustProtectionData_(v3, v6, 1);
  v7 = objc_opt_new();
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22521DAB8;
  v19[3] = &unk_278549BF0;
  objc_copyWeak(&v21, &location);
  v8 = v7;
  v20 = v8;
  objc_msgSend_setSaveCompletionBlock_(v3, v9, v19);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22521DB3C;
  v15[3] = &unk_278548AD0;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
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

void sub_22521DA78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_22521DAB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleRecordSaved_error_(WeakRetained, v9, v11, v7);

  objc_msgSend_addObject_(*(a1 + 32), v10, v11);
}

void sub_22521DB3C(id *a1)
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
    _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Done saving all records for (un)share operation.%{public}@%@", buf, 0x16u);
  }

  v42 = objc_msgSend_error(v3, v6, v7);
  if (!v42)
  {
    v42 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1000, @"Unknown error when saving record for web sharing");
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

void sub_22521ED70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_recordWebSharedBlock(*(a1 + 32), v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_callbackQueue(*(a1 + 32), v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22521EE60;
    block[3] = &unk_278546990;
    block[4] = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    dispatch_async(v12, block);
  }
}

void sub_22521EE60(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordWebSharedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordWebSharedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, 0, *(a1 + 48));
  }
}

void sub_22521EEEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_recordWebUnsharedBlock(*(a1 + 32), v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_callbackQueue(*(a1 + 32), v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22521EFDC;
    block[3] = &unk_278546990;
    block[4] = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    dispatch_async(v12, block);
  }
}

void sub_22521EFDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordWebUnsharedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordWebUnsharedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22521F060(uint64_t a1, void *a2)
{
  v7 = a2;
  v5 = objc_msgSend_recordKeysRemoved(v7, v3, v4);
  objc_msgSend_setRecordKeysRemoved_(v7, v6, *(a1 + 32) + v5);
}

void sub_22521F24C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setUseCachedEtags_(v3, v4, 0);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22521F3F0;
  v19[3] = &unk_278548CC0;
  objc_copyWeak(&v20, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v5, v19);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_22521F498;
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

void sub_22521F3B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_22521F3F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordFetched_recordID_error_(WeakRetained, v10, v9, v8, v7);

  v13 = objc_msgSend_fetchedRecordIDs(WeakRetained, v11, v12);
  objc_msgSend_addObject_(v13, v14, v8);
}

void sub_22521F498(id *a1)
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
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Done fetching all records for web sharing", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = objc_msgSend_error(WeakRetained, v5, v6);

  if (!v7)
  {
    v7 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1000, @"Couldn't fetch record for web share/unshare.");
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

id sub_22521FF64(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBC7A0];
  v3 = a2;
  v4 = [v2 alloc];
  v7 = objc_msgSend_destinationRecord(v3, v5, v6);
  v10 = objc_msgSend_recordID(v7, v8, v9);
  v12 = objc_msgSend_initWithObject1_object2_(v4, v11, v10, v3);

  return v12;
}

void sub_225220748(uint64_t a1, void *a2)
{
  v33 = a2;
  if ((objc_msgSend_shouldOnlySaveAssetContent(*(a1 + 32), v3, v4) & 1) == 0)
  {
    v7 = objc_msgSend_recordsUploaded(v33, v5, v6);
    objc_msgSend_setRecordsUploaded_(v33, v8, v7 + 1);
  }

  v9 = objc_msgSend_moveChange(*(a1 + 40), v5, v6);
  v12 = objc_msgSend_destinationRecord(v9, v10, v11);
  v15 = objc_msgSend_assetCount(v12, v13, v14);
  v18 = objc_msgSend_assetsUploaded(v33, v16, v17);
  objc_msgSend_setAssetsUploaded_(v33, v19, v18 + v15);

  v22 = objc_msgSend_moveChange(*(a1 + 40), v20, v21);
  v25 = objc_msgSend_destinationRecord(v22, v23, v24);
  v28 = objc_msgSend_assetDiskSize(v25, v26, v27);
  v31 = objc_msgSend_assetsUploadedFileSize(v33, v29, v30);
  objc_msgSend_setAssetsUploadedFileSize_(v33, v32, v31 + v28);
}

void sub_225220AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_225220AF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_moveChangesByDestinationRecordID(v2, v4, v5);
  v9 = objc_msgSend_recordID(v3, v7, v8);

  v11 = objc_msgSend_objectForKeyedSubscript_(v6, v10, v9);

  return v11;
}

void sub_225220B7C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = objc_msgSend_handlersByRecordID(WeakRetained, v16, v17);
  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v14);

  objc_msgSend__handleRecordMoved_handler_responseCode_recordForOplockFailure_destinationServerRecord_moveMarkerServerRecord_(WeakRetained, v21, v14, v20, v15, v12, v13, v11);
}

void sub_225221234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v44 - 240), 8);
  _Block_object_dispose((v44 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_225221288(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      v20 = v9;
      v23 = objc_msgSend_recordID(v19, v21, v22);
      *buf = 138412290;
      v25 = v23;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Failed to decrypt destination record %@", buf, 0xCu);
    }

    v12 = MEMORY[0x277CBC560];
    v13 = *MEMORY[0x277CBC120];
    v14 = objc_msgSend_recordID(*(a1 + 32), v10, v11);
    v16 = objc_msgSend_errorWithDomain_code_format_(v12, v15, v13, 5004, @"Couldn't decrypt destination record returned from the server in response to our move of record %@", v14);
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_225221438(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      v20 = v9;
      v23 = objc_msgSend_recordID(v19, v21, v22);
      *buf = 138412290;
      v25 = v23;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Failed to decrypt move marker record %@", buf, 0xCu);
    }

    v12 = MEMORY[0x277CBC560];
    v13 = *MEMORY[0x277CBC120];
    v14 = objc_msgSend_recordID(*(a1 + 32), v10, v11);
    v16 = objc_msgSend_errorWithDomain_code_format_(v12, v15, v13, 5004, @"Couldn't decrypt move marker record returned from the server in response to our move of record %@", v14);
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2252215E8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(*(*(a1 + 72) + 8) + 40) || *(*(*(a1 + 80) + 8) + 40))
  {
    objc_msgSend_setState_(*(a1 + 32), a2, 12);
    v5 = *(*(*(a1 + 72) + 8) + 40);
    if (!v5)
    {
      v5 = *(*(*(a1 + 80) + 8) + 40);
    }

    objc_msgSend_setError_(*(a1 + 32), v4, v5);
  }

  v6 = objc_msgSend_error(*(a1 + 32), a2, a3);

  if (!v6)
  {
    objc_msgSend__reallyHandleRecordMoved_handler_responseCode_recordForOplockFailure_destinationServerRecord_moveMarkerServerRecord_(*(a1 + 40), v7, *(a1 + 48), *(a1 + 32), *(a1 + 56), *(a1 + 64), *(*(*(a1 + 88) + 8) + 40), *(*(*(a1 + 96) + 8) + 40));
  }

  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v7, v8);
  dispatch_group_leave(v9);
}

uint64_t sub_2252229C0(uint64_t a1, const char *a2)
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

void sub_225222A30(uint64_t a1, void *a2, void *a3)
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
  v24 = objc_msgSend_errorWithDomain_code_userInfo_format_(v12, v23, v13, v14, v16, @"Error moving record %@ on server: %@", v15, v22);

LABEL_14:
  (*(*(a1 + 72) + 16))();
  v34 = objc_msgSend_stateTransitionGroup(*(a1 + 64), v32, v33);
  dispatch_group_leave(v34);
}

void sub_2252238F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

void sub_2252240A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252240CC(uint64_t a1, uint64_t a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v8 = MEMORY[0x277CBC880];
  v9 = MEMORY[0x277CBC830];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v15 = objc_msgSend_recordID(v11, v13, v14);
      v16 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412546;
      v61 = v15;
      v62 = 2112;
      v63 = v16;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Warn: Couldn't prep PCS data %@: %@", buf, 0x16u);
    }
  }

  if (objc_msgSend_publicPCS(*(a1 + 32), v6, v7))
  {
    v19 = objc_msgSend_container(*(a1 + 40), v17, v18);
    v22 = objc_msgSend_pcsManager(v19, v20, v21);
    v25 = objc_msgSend_publicPCS(*(a1 + 32), v23, v24);
    v59 = 0;
    v27 = objc_msgSend_sharingIdentityDataFromPCS_error_(v22, v26, v25, &v59);
    v28 = v59;
    v29 = v59;

    v30 = objc_alloc(MEMORY[0x277CBC2E8]);
    v32 = objc_msgSend_initWithData_(v30, v31, v27);
    objc_msgSend_setMutableEncryptedPSK_(*(a1 + 32), v33, v32);

    v34 = *MEMORY[0x277CBC878];
    if (v29)
    {
      if (*v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v34);
      }

      v35 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
      {
        v36 = *(a1 + 32);
        v37 = v35;
        v40 = objc_msgSend_recordID(v36, v38, v39);
        *buf = 138412546;
        v61 = v40;
        v62 = 2112;
        v63 = v29;
        _os_log_impl(&dword_22506F000, v37, OS_LOG_TYPE_INFO, "Warn: Couldn't get a public sharing identity for share %@: %@", buf, 0x16u);
      }

      v41 = *(*(a1 + 56) + 8);
      v43 = *(v41 + 40);
      v42 = (v41 + 40);
      if (!v43)
      {
        objc_storeStrong(v42, v28);
      }
    }

    else
    {
      if (*v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v34);
      }

      v44 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v45 = *(a1 + 32);
        v46 = v44;
        v49 = objc_msgSend_recordID(v45, v47, v48);
        v52 = objc_msgSend_mutableEncryptedPSK(*(a1 + 32), v50, v51);
        v55 = objc_msgSend_data(v52, v53, v54);
        *buf = 138412546;
        v61 = v49;
        v62 = 2112;
        v63 = v55;
        _os_log_impl(&dword_22506F000, v46, OS_LOG_TYPE_INFO, "Public sharing identity for share %@ is %@", buf, 0x16u);
      }
    }
  }

  objc_msgSend__performCallbackForURL_withShare_error_(*(a1 + 40), v17, *(a1 + 48), *(a1 + 32), *(*(*(a1 + 56) + 8) + 40));
  v58 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v56, v57);
  dispatch_group_leave(v58);
}

void sub_2252252A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak((v44 + 40));
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a43);
  _Unwind_Resume(a1);
}

void sub_225225300(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleShareURLAccepted_forShare_responseCode_(WeakRetained, v10, v9, v8, v7);
}

void sub_22522538C(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = v9;
      v15 = objc_msgSend_error(v3, v13, v14);
      v19 = 138412290;
      v20 = v15;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Error accepting shares: %@", &v19, 0xCu);
    }

    v16 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v17, v16);
  }

  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
  dispatch_group_leave(v18);
}

void sub_225225830(id *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (!v5 || v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 138412290;
    v50 = v9;
    v30 = "Couldn't pull pcsData off fetched share, re-fetching: %@";
    v31 = v27;
    v32 = 12;
    goto LABEL_13;
  }

  v10 = objc_msgSend_publicPCS(v5, v7, v8);
  if (!v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v30 = "Fetched share's PCS data lacked publicPCS, re-fetching";
    v31 = v33;
    v32 = 2;
LABEL_13:
    _os_log_impl(&dword_22506F000, v31, OS_LOG_TYPE_INFO, v30, buf, v32);
LABEL_14:
    v34 = objc_msgSend_container(a1[5], v28, v29);
    v37 = objc_msgSend_pcsCache(v34, v35, v36);
    v40 = objc_msgSend_share(a1[6], v38, v39);
    v43 = objc_msgSend_recordID(v40, v41, v42);
    v44 = a1[5];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_225225AFC;
    v46[3] = &unk_27854A708;
    v46[4] = v44;
    v47 = a1[6];
    v48 = a1[4];
    objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v37, v45, v43, v44, 0, v46);

    goto LABEL_15;
  }

  v13 = v10;
  v14 = a1[4];
  v15 = objc_msgSend_container(a1[5], v11, v12);
  v18 = objc_msgSend_pcsManager(v15, v16, v17);
  objc_msgSend__decryptDataWithPCSBlob_pcsManager_(v14, v19, v13, v18);

  v22 = objc_msgSend_acceptedInProcess(a1[4], v20, v21);
  objc_msgSend_setAcceptedInProcess_(a1[6], v23, v22);
  v26 = objc_msgSend_stateTransitionGroup(a1[5], v24, v25);
  dispatch_group_leave(v26);

LABEL_15:
}

void sub_225225AFC(id *a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (!v5 || (v9 = objc_msgSend_publicPCS(v5, v6, v7), v8) || !v9)
  {
    v17 = objc_msgSend_container(a1[4], v6, v7);
    v20 = objc_msgSend_pcsManager(v17, v18, v19);
    v23 = objc_msgSend_share(a1[5], v21, v22);
    v26 = objc_msgSend_publicProtectionData(v23, v24, v25);
    v29 = objc_msgSend_privateToken(a1[5], v27, v28);
    v42 = 0;
    v10 = objc_msgSend_createSharePCSFromData_sharePrivateKey_error_(v20, v30, v26, v29, &v42);
    v13 = v42;

    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    v31 = a1[6];
    v32 = objc_msgSend_container(a1[4], v11, v12);
    v35 = objc_msgSend_pcsManager(v32, v33, v34);
    objc_msgSend__decryptDataWithPCSBlob_pcsManager_(v31, v36, v10, v35);

    v39 = objc_msgSend_acceptedInProcess(a1[6], v37, v38);
    objc_msgSend_setAcceptedInProcess_(a1[5], v40, v39);
    CFRelease(v10);
    goto LABEL_11;
  }

  v10 = objc_msgSend_publicPCS(v5, v6, v7);
  CFRetain(v10);
  v13 = 0;
  if (v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = v13;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Warn: Couldn't create share PCS data while accepting metadata: %@", buf, 0xCu);
  }

LABEL_11:
  v41 = objc_msgSend_stateTransitionGroup(a1[4], v15, v16);
  dispatch_group_leave(v41);
}

void sub_225226098(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  objc_initWeak(&from, *(a1 + 32));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22522622C;
  v12[3] = &unk_27854A730;
  v13 = *(a1 + 40);
  objc_copyWeak(&v14, &from);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v4, v12);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_225226384;
  v8[3] = &unk_278546EE0;
  objc_copyWeak(&v11, &location);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  objc_msgSend_setCompletionBlock_(v3, v7, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2252261F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_22522622C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = a4;
  v10 = a2;
  v12 = objc_msgSend_objectForKeyedSubscript_(v8, v11, v7);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Accepted share %@ fetched for URL %@", &v16, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__performCallbackForURL_withShare_error_(WeakRetained, v15, v12, v10, v9);
}

void sub_225226384(id *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  v6 = *MEMORY[0x277CBC878];
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v10 = v7;
      v13 = objc_msgSend_error(WeakRetained, v11, v12);
      *buf = 138412290;
      v43 = v13;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Error while fetching accepted shares: %@", buf, 0xCu);
    }

    v14 = objc_msgSend_error(WeakRetained, v8, v9);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "All accepted shares were fetched successfully", buf, 2u);
    }

    v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBC120], 2003, @"Couldn't fetch accepted share from the server");
  }

  v19 = v14;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = objc_msgSend_allKeys(a1[4], v15, v16, 0);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v37, v41, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v38;
    do
    {
      v26 = 0;
      do
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = objc_msgSend_objectForKeyedSubscript_(a1[4], v23, *(*(&v37 + 1) + 8 * v26));
        v30 = objc_msgSend_acceptedShareURLsToFetch(a1[5], v28, v29);
        v32 = objc_msgSend_containsObject_(v30, v31, v27);

        if (v32)
        {
          objc_msgSend__performCallbackForURL_withShare_error_(a1[5], v33, v27, 0, v19);
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v37, v41, 16);
    }

    while (v24);
  }

  v36 = objc_msgSend_stateTransitionGroup(a1[5], v34, v35);
  dispatch_group_leave(v36);
}

void sub_225227328(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CBC878];
  v7 = *MEMORY[0x277CBC880];
  if (v5 || !a2)
  {
    if (v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v10 = v17;
      v13 = objc_msgSend_share(v18, v19, v20);
      v16 = objc_msgSend_recordID(v13, v21, v22);
      v23 = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v5;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Error decrypting the invited PCS on share %@: %@", &v23, 0x16u);
      goto LABEL_7;
    }
  }

  else
  {
    if (v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v13 = objc_msgSend_share(v9, v11, v12);
      v16 = objc_msgSend_recordID(v13, v14, v15);
      v23 = 138412290;
      v24 = v16;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Successfully decrypted the invited PCS on share %@", &v23, 0xCu);
LABEL_7:
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2252287C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252287F8(uint64_t a1, int a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6 || !a2)
  {
    if (v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      v32 = v20;
      v35 = objc_msgSend_share(v31, v33, v34);
      v38 = objc_msgSend_recordID(v35, v36, v37);
      *buf = 138412290;
      v40 = v38;
      _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Couldn't decrypt invited PCS blob for share %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v22 = *(*(*(a1 + 56) + 8) + 40);
    if (!v22)
    {
      v23 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v21, *MEMORY[0x277CBC120], 5004, @"Can not accept share at URL %@ because we couldn't decrypt the share as an invited user", *(a1 + 40));
      v24 = *(*(a1 + 56) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v22 = *(*(*(a1 + 56) + 8) + 40);
    }

    objc_msgSend__performCallbackForURL_withShare_error_(*(a1 + 48), v21, *(a1 + 40), 0, v22);
    v28 = objc_msgSend_shareMetadatasToAcceptByURL(*(a1 + 48), v26, v27);
    objc_msgSend_removeObjectForKey_(v28, v29, *(a1 + 40));
  }

  else
  {
    if (v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 32);
      v13 = v9;
      v16 = objc_msgSend_share(v12, v14, v15);
      v19 = objc_msgSend_recordID(v16, v17, v18);
      *buf = 138412290;
      v40 = v19;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "We were able to decrypt the private PCS for share %@", buf, 0xCu);
    }
  }

  v30 = objc_msgSend_stateTransitionGroup(*(a1 + 48), v10, v11);
  dispatch_group_leave(v30);
}

void sub_225228DAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_225228DD8(uint64_t a1, char a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v7, v8);
  v9 = *MEMORY[0x277CBC878];
  v10 = *MEMORY[0x277CBC880];
  if (v5 || (a2 & 1) == 0)
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      *buf = 138543618;
      v44 = v18;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "User key sync failed for operation %{public}@ with error %@.", buf, 0x16u);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v19 = objc_msgSend_URLsWaitingKRSByServiceType(*(a1 + 40), v16, v17, 0);
    v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, *(a1 + 48));

    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v38, v42, 16);
    if (v23)
    {
      v25 = v23;
      v26 = *v39;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v38 + 1) + 8 * i);
          objc_msgSend__performCallbackForURL_withShare_error_(*(a1 + 40), v24, v28, 0, v5);
          v31 = objc_msgSend_shareMetadatasToAcceptByURL(*(a1 + 40), v29, v30);
          objc_msgSend_removeObjectForKey_(v31, v32, v28);
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v38, v42, 16);
      }

      while (v25);
    }
  }

  else
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v44 = v14;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "User key sync succeeded for operation %{public}@", buf, 0xCu);
    }
  }

  v33 = objc_msgSend_URLsWaitingKRSByServiceType(*(a1 + 40), v12, v13);
  objc_msgSend_removeObjectForKey_(v33, v34, *(a1 + 48));

  v37 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v35, v36);
  dispatch_group_leave(v37);
}

void sub_225229A70(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, *(a1 + 48));
  }
}

void sub_225229AF8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, *(a1 + 48));
  }
}

void sub_225229B80(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_acceptCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, *(a1 + 48));
  }
}

void sub_225229C08(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_225229D64;
  v15[3] = &unk_27854A7D0;
  v15[4] = *(a1 + 32);
  objc_msgSend_setShareMetadataFetchedBlock_(v3, v4, v15);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_225229EAC;
  v12 = &unk_2785476F0;
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v5, &v9);
  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7, v9, v10, v11, v12);
  dispatch_group_enter(v8);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_225229D3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_225229D64(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = v9;
  if (v7)
  {
    if (!v8 || v9)
    {
      if (!v9)
      {
        v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 2003, @"Couldn't get metadata for the share with url %@", v7);
      }

      objc_msgSend__performCallbackForURL_withShare_error_(*(a1 + 32), v10, v7, 0, v12);
    }

    else
    {
      v12 = objc_msgSend_shareMetadatasToAcceptByURL(*(a1 + 32), v10, v11);
      objc_msgSend_setObject_forKeyedSubscript_(v12, v13, v8, v7);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "Missing shareURL in shareMetadataFetchedBlock", buf, 2u);
    }
  }
}

void sub_225229EAC(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v9 = @" with error ";
    v10 = &stru_28385ED00;
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v9 = &stru_28385ED00;
    }

    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Done fetching all share metadata%{public}@%@", &v13, 0x16u);
  }

  if (v5)
  {
    v11 = objc_msgSend_error(*(a1 + 32), v7, v8);

    if (!v11)
    {
      objc_msgSend_setError_(*(a1 + 32), v7, v5);
    }
  }

  v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v7, v8);
  dispatch_group_leave(v12);
}

void sub_22522A134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22522A158(uint64_t a1, void *a2)
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
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_error_impl(&dword_22506F000, v4, OS_LOG_TYPE_ERROR, "Failing to accept anonymous share. %@", &v9, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);
}

void sub_22522ABD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22522AC0C(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2)
  {
    v5 = PCSFPCopyCurrentPrivateKey();
    v8 = objc_msgSend_container(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_pcsManager(v8, v9, v10);
    v12 = *(*(a1 + 40) + 8);
    obj = *(v12 + 40);
    v14 = objc_msgSend_dataFromSharingIdentity_error_(v11, v13, v5, &obj);
    objc_storeStrong((v12 + 40), obj);

    if (v5)
    {
      CFRelease(v5);
    }

    if (v14 && !*(*(*(a1 + 40) + 8) + 40))
    {
      v22 = objc_msgSend_CKBase64URLSafeString(v14, v15, v16);
      v25 = objc_msgSend_baseToken(WeakRetained, v23, v24);
      if (!objc_msgSend_length(v25, v26, v27))
      {

        v25 = 0;
      }

      v29 = objc_msgSend_fullTokenFromBaseToken_privateToken_(MEMORY[0x277CBC5A0], v28, v25, v22);
      v31 = objc_msgSend_shortSharingTokenFromFullToken_(WeakRetained, v30, v29);
      objc_msgSend_setShortToken_(WeakRetained, v32, v31);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v33 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v39 = v33;
        v42 = objc_msgSend_shortToken(WeakRetained, v40, v41);
        *buf = 138543362;
        v45 = v42;
        _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "OON short token reconstructed: %{public}@", buf, 0xCu);
      }

      v36 = objc_msgSend_stateTransitionGroup(WeakRetained, v34, v35);
      dispatch_group_leave(v36);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v17 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v37 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v45 = v37;
        _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "OON share reconstruct: pcs to data conversion failed: %@", buf, 0xCu);
      }

      objc_msgSend_setError_(WeakRetained, v18, *(*(*(a1 + 40) + 8) + 40));
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v38 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v45 = v38;
      _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "OON share reconstruct: selfAdded failed to decrypt: %@", buf, 0xCu);
    }

    v14 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 8003, *(*(*(a1 + 40) + 8) + 40), @"encryptedKey failed to decrypt");
    objc_msgSend_setError_(WeakRetained, v21, v14);
  }
}

void sub_22522B268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22522B288(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    if (v5)
    {
      v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, *(a1 + 48), *(a1 + 32), @"CKDCompleteParticipantVettingOperation.m", 190, @"Vetting token got validated fine, but we got an error: %@", v8);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = v9;
      v16 = objc_msgSend_vettingToken(v12, v14, v15);
      *buf = 138543362;
      v28 = v16;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Vetting token: %{public}@ validated.", buf, 0xCu);
    }
  }

  else
  {
    v17 = MEMORY[0x277CBC560];
    v18 = *MEMORY[0x277CBC120];
    v19 = objc_msgSend_vettingToken(*(*(*(a1 + 40) + 8) + 40), v6, v7);
    v21 = v19;
    if (v8)
    {
      v22 = objc_msgSend_errorWithDomain_code_error_format_(v17, v20, v18, 8011, v8, @"Vetting token %@ validation failed due to auth error", v19);

      v8 = v22;
    }

    else
    {
      v8 = objc_msgSend_errorWithDomain_code_format_(v17, v20, v18, 8002, @"Vetting token %@ invalid. Likely expired.", v19);
    }

    objc_msgSend_setError_(*(*(*(a1 + 40) + 8) + 40), v23, v8);
  }

  v24 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
  dispatch_group_leave(v24);
}

void sub_22522B650(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_2250740A0;
  v19[4] = sub_2250735DC;
  v20 = 0;
  objc_msgSend_setForceDSRefetch_(v3, v4, 1);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22522B870;
  v17[3] = &unk_27854A880;
  objc_copyWeak(&v18, &location);
  v17[4] = *(a1 + 32);
  v17[5] = v19;
  objc_msgSend_setShareMetadataFetchedBlock_(v3, v5, v17);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_22522B9D8;
  v13 = &unk_278549810;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  v14 = v19;
  objc_msgSend_setCompletionBlock_(v3, v6, &v10);
  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v7, v8, v10, v11, v12, v13);
  dispatch_group_enter(v9);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);
  _Block_object_dispose(v19, 8);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_22522B81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v24 - 64));
  objc_destroyWeak((v24 - 56));
  _Unwind_Resume(a1);
}

void sub_22522B870(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    objc_msgSend_setShareMetadata_(WeakRetained, v9, v6);
    v13 = objc_msgSend_callbackQueue(v10, v11, v12);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22522B978;
    v14[3] = &unk_278545898;
    v14[4] = *(a1 + 32);
    v15 = v6;
    dispatch_async(v13, v14);
  }
}

void sub_22522B978(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_verifyProgressShareMetadataFetchedBlock(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = v4;
    v4[2](v4, *(a1 + 40));
    v4 = v5;
  }
}

void sub_22522B9D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_error(v2, v3, v4);

  v8 = *(*(a1 + 32) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11 || (objc_storeStrong(v9, v5), (v10 = *(*(*(a1 + 32) + 8) + 40)) != 0))
  {
    v12 = MEMORY[0x277CBC560];
    v13 = *MEMORY[0x277CBC120];
    v14 = objc_msgSend_shortToken(WeakRetained, v6, v7);
    v16 = objc_msgSend_errorWithDomain_code_error_format_(v12, v15, v13, 8012, v10, @"Couldn't force fetch share metadata for share: %@", v14);
    v17 = *(*(a1 + 32) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    objc_msgSend_setError_(WeakRetained, v19, v5);
  }

  v20 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v20);
}

void sub_22522C1C0(uint64_t a1, char a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = v5;
  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      v38 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v39, *(a1 + 56), *(a1 + 32), @"CKDCompleteParticipantVettingOperation.m", 300, @"OON key-swap validation failed, but without error");
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 40);
      v28 = v23;
      v31 = objc_msgSend_participantID(v27, v29, v30);
      v34 = objc_msgSend_share(*(a1 + 48), v32, v33);
      v37 = objc_msgSend_recordID(v34, v35, v36);
      v40 = 138412802;
      v41 = v31;
      v42 = 2112;
      v43 = v37;
      v44 = 2112;
      v45 = v8;
      _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "Failed to create protection info in OON key-swap for participantID: %@, recordID: %@, error: %@", &v40, 0x20u);
    }

    v13 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 8009, v8, @"Dryrun OON keyswap failed");
    objc_msgSend_setError_(*(a1 + 32), v25, v13);
    goto LABEL_13;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    v13 = v9;
    v16 = objc_msgSend_participantID(v12, v14, v15);
    v19 = objc_msgSend_share(*(a1 + 48), v17, v18);
    v22 = objc_msgSend_recordID(v19, v20, v21);
    v40 = 138412546;
    v41 = v16;
    v42 = 2112;
    v43 = v22;
    _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Created protection info in OON key-swap for participantID: %@, recordID: %@", &v40, 0x16u);

LABEL_13:
  }

  v26 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
  dispatch_group_leave(v26);
}

void sub_22522CB0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_declineCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_declineCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22522D39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_22522D3F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleShareURLDeclined_responseCode_(WeakRetained, v7, v6, v5);
}

void sub_22522D46C(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = v9;
      v15 = objc_msgSend_error(v3, v13, v14);
      v19 = 138412290;
      v20 = v15;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Error declining shares: %@", &v19, 0xCu);
    }

    v16 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v17, v16);
  }

  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
  dispatch_group_leave(v18);
}

void sub_22522DEE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareMetadataFetchedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_shareMetadataFetchedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

void sub_22522EB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, id a28)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a28);
  _Unwind_Resume(a1);
}

void sub_22522EB8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend__handleTokenResolveWithLookupInfo_shareMetadata_responseCode_urlByShortTokenLookupInfos_tokensToFetchByURL_(WeakRetained, v10, v9, v8, v7, *(a1 + 32), *(a1 + 40));
}

void sub_22522EC1C(id *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  v6 = objc_msgSend_error(v3, v4, v5);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v10 = @" with error ";
    v11 = &stru_28385ED00;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v10 = &stru_28385ED00;
    }

    *buf = 138543618;
    v39 = v10;
    v40 = 2112;
    v41 = v11;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Short token metadata request finished%{public}@%@", buf, 0x16u);
  }

  v12 = objc_msgSend_container(a1[4], v8, v9);
  objc_msgSend_clientSDKVersion(v12, v13, v14);
  v15 = CKLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24();

  if (*MEMORY[0x277CBC810] == 1)
  {
    v18 = objc_msgSend_unitTestOverrides(a1[4], v16, v17);
    v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"LegacyErrorHandling");
    v23 = objc_msgSend_BOOLValue(v20, v21, v22);

    if (v23)
    {
      if (!v6)
      {
        goto LABEL_24;
      }

LABEL_16:
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v25 = objc_msgSend_allKeys(a1[5], v16, v17, 0);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v33, v37, 16);
      if (v27)
      {
        v29 = v27;
        v30 = *v34;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v34 != v30)
            {
              objc_enumerationMutation(v25);
            }

            objc_msgSend__performCallbackForURL_withMetadata_error_(WeakRetained, v28, *(*(&v33 + 1) + 8 * i), 0, v6);
          }

          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v33, v37, 16);
        }

        while (v29);
      }

      goto LABEL_24;
    }
  }

  if (!v6)
  {
    goto LABEL_24;
  }

  if (!v15)
  {
    goto LABEL_16;
  }

  v24 = objc_msgSend_error(WeakRetained, v16, v17);

  if (!v24)
  {
    objc_msgSend_setError_(WeakRetained, v16, v6);
  }

LABEL_24:
  v32 = objc_msgSend_stateTransitionGroup(WeakRetained, v16, v17);
  dispatch_group_leave(v32);
}

void sub_22522F71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v34 + 56));
  objc_destroyWeak(&a34);
  objc_destroyWeak((v35 - 144));
  _Unwind_Resume(a1);
}

void sub_22522F754(id *a1)
{
  v83 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_participantStatus(a1[4], v2, v3) == 2)
  {
    v5 = objc_msgSend_parentOperation(WeakRetained, v2, v3);
    v7 = objc_msgSend_checkAndClearUnitTestOverrides_(v5, v6, @"ForceShareAcceptTwice");

    if (v7)
    {
      objc_msgSend_setParticipantStatus_(a1[4], v2, 1);
    }
  }

  v8 = objc_msgSend_privateTokenData(a1[5], v2, v3);
  objc_msgSend_setPrivateToken_(a1[4], v9, v8);

  v12 = objc_msgSend_publicTokenData(a1[5], v10, v11);
  objc_msgSend_setPublicToken_(a1[4], v13, v12);

  v16 = objc_msgSend_container(WeakRetained, v14, v15);
  v19 = objc_msgSend_entitlements(v16, v17, v18);
  hasDisplaysSystemAcceptPromptEntitlement = objc_msgSend_hasDisplaysSystemAcceptPromptEntitlement(v19, v20, v21);
  objc_msgSend_setAcceptedInProcess_(a1[4], v23, hasDisplaysSystemAcceptPromptEntitlement ^ 1u);

  if (objc_msgSend_overwriteContainerPCSServiceIfManatee(WeakRetained, v24, v25))
  {
    v28 = objc_msgSend_callingParticipant(a1[4], v26, v27);
    v31 = objc_msgSend_userIdentity(v28, v29, v30);
    v34 = objc_msgSend_publicKeyVersion(v31, v32, v33);

    v35 = PCSServiceItemGetNameByIndex();
    if (objc_msgSend_length(v35, v36, v37) && PCSServiceItemTypeIsManatee())
    {
      v38 = objc_msgSend_container(WeakRetained, v26, v27);
      v41 = objc_msgSend_pcsManager(v38, v39, v40);
      objc_msgSend_setPCSServiceNameOverwrite_(v41, v42, v35);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v43 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v80 = v35;
        v81 = 2048;
        v82 = v34;
        _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Using the service name %@ from public key version %lu of share metadata because it is manatee and this operation is initiated by another process", buf, 0x16u);
      }
    }
  }

  else
  {
    v35 = 0;
  }

  v44 = objc_msgSend_container(WeakRetained, v26, v27);
  v47 = objc_msgSend_pcsManager(v44, v45, v46);
  if ((objc_msgSend_currentServiceIsManatee(v47, v48, v49) & 1) == 0)
  {

    goto LABEL_23;
  }

  v52 = objc_msgSend_callingParticipant(a1[4], v50, v51);
  v55 = objc_msgSend_acceptanceStatus(v52, v53, v54);

  if (v55 != 1)
  {
LABEL_23:
    objc_msgSend__continueSharePCSPrepForShareMetadata_shareURL_(WeakRetained, v56, a1[4], a1[7]);
    goto LABEL_29;
  }

  if (a1[6] && (objc_msgSend_overwriteContainerPCSServiceIfManatee(WeakRetained, v56, v57) & 1) == 0)
  {
    v58 = objc_msgSend_shareURL(a1[6], v56, v57);
    isEqual = objc_msgSend_isEqual_(v58, v59, a1[7]);

    v61 = *MEMORY[0x277CBC878];
    if (isEqual)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v61);
      }

      v62 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v63 = a1[7];
        *buf = 138412290;
        v80 = v63;
        _os_log_debug_impl(&dword_22506F000, v62, OS_LOG_TYPE_DEBUG, "Share invitation token and client-provided share URL are a match: %@", buf, 0xCu);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v61);
      }

      v64 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v69 = a1[6];
        v70 = v64;
        v73 = objc_msgSend_shareURL(v69, v71, v72);
        v74 = a1[7];
        *buf = 138412546;
        v80 = v73;
        v81 = 2112;
        v82 = v74;
        _os_log_error_impl(&dword_22506F000, v70, OS_LOG_TYPE_ERROR, "Share invitation token URL %@ doesn't match client-provided share URL %@. This will go badly.", buf, 0x16u);
      }
    }
  }

  v65 = objc_msgSend_stateTransitionGroup(WeakRetained, v56, v57);
  dispatch_group_enter(v65);

  v66 = a1[4];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = sub_22522FC24;
  v75[3] = &unk_27854A948;
  v67 = a1[6];
  v76 = a1[7];
  v77 = WeakRetained;
  v78 = a1[4];
  objc_msgSend__prepPPPCSDataForDugongShareMetadata_withInvitationToken_completionHandler_(WeakRetained, v68, v66, v67, v75);

LABEL_29:
}

void sub_22522FC24(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
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

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      *buf = 138412546;
      v24 = v22;
      v25 = 2112;
      v26 = v7;
      _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Warn: Couldn't ingest manatee sharing invitation data for share %@: %@", buf, 0x16u);
      if (v7)
      {
        goto LABEL_13;
      }
    }

    else if (v7)
    {
LABEL_13:
      objc_msgSend__performCallbackForURL_withMetadata_error_(*(a1 + 40), v20, *(a1 + 32), 0, v7);
      goto LABEL_14;
    }

    v7 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 1000, @"No participant protection data for share %@", *(a1 + 32));
    goto LABEL_13;
  }

  if (v9 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v8);
  }

  v10 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Successfully ingested manatee sharing invitation data for share %@", buf, 0xCu);
  }

  v14 = objc_msgSend_callingParticipant(*(a1 + 48), v11, v12);
  objc_msgSend_setProtectionInfo_(v14, v15, v5);

  objc_msgSend__continueSharePCSPrepForShareMetadata_shareURL_(*(a1 + 40), v16, *(a1 + 48), *(a1 + 32));
  v7 = 0;
LABEL_14:
  v21 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v17, v18);
  dispatch_group_leave(v21);
}

void sub_22522FE38(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2)
  {
    v7 = objc_msgSend_callingParticipant(*(a1 + 40), v4, v5);
    v10 = objc_msgSend_permission(v7, v8, v9);
    objc_msgSend_setParticipantPermission_(*(a1 + 40), v11, v10);

    v14 = objc_msgSend_callingParticipant(*(a1 + 40), v12, v13);
    v17 = objc_msgSend_acceptanceStatus(v14, v15, v16);
    objc_msgSend_setParticipantStatus_(*(a1 + 40), v18, v17);

    v21 = objc_msgSend_callingParticipant(*(a1 + 40), v19, v20);
    v24 = objc_msgSend_role(v21, v22, v23);
    objc_msgSend_setParticipantRole_(*(a1 + 40), v25, v24);

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Couldn't find current user on share with anonymous to server participants. Swizzling into share not found.", buf, 2u);
    }

    v30 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v29, *MEMORY[0x277CBC120], 2003, @"Couldn't find this participant on the share for %@", *(a1 + 32));
    objc_msgSend__performCallbackForURL_withMetadata_error_(WeakRetained, v31, *(a1 + 32), 0, v30);
  }

  v32 = objc_msgSend_stateTransitionGroup(WeakRetained, v26, v27);
  dispatch_group_leave(v32);
}

void sub_2252302CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225230300(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (*MEMORY[0x277CBC810] == 1)
  {
    v9 = objc_msgSend_unitTestOverrides(WeakRetained, v6, v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"ForceSharePCSPrepFailure");
    v14 = objc_msgSend_BOOLValue(v11, v12, v13);

    if (v14)
    {
      v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 5004, @"Failing share PCS prep for unit tests");

      v4 = v16;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 32);
    v20 = v17;
    v23 = objc_msgSend_share(v19, v21, v22);
    v26 = objc_msgSend_recordID(v23, v24, v25);
    v29 = objc_msgSend_container(v8, v27, v28);
    v30 = v29;
    v31 = @" and error: ";
    *v36 = 138413058;
    v32 = &stru_28385ED00;
    *&v36[4] = v26;
    *&v36[12] = 2112;
    if (!v4)
    {
      v31 = &stru_28385ED00;
    }

    *&v36[14] = v29;
    if (v4)
    {
      v32 = v4;
    }

    *&v36[22] = 2114;
    v37 = v31;
    v38 = 2112;
    v39 = v32;
    _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Prepped PCS data for share %@ with container %@%{public}@%@", v36, 0x2Au);
  }

  objc_msgSend__continueHandlingFetchedShareMetadata_shareURL_(v8, v18, *(a1 + 32), *(a1 + 40), *v36, *&v36[8]);
  v35 = objc_msgSend_stateTransitionGroup(v8, v33, v34);
  dispatch_group_leave(v35);
}

void sub_225230C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225230C24(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_2252311E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 136));
  _Unwind_Resume(a1);
}

void sub_225231218(uint64_t a1, uint64_t a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (*MEMORY[0x277CBC810] == 1)
  {
    v9 = objc_msgSend_unitTestOverrides(WeakRetained, v6, v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"ForceSharePCSPrepFailure");
    v14 = objc_msgSend_BOOLValue(v11, v12, v13);

    if (v14)
    {
      v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 5004, @"Failing share PCS prep for unit tests");

      v4 = v16;
    }
  }

  v17 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = MEMORY[0x277CBC858];
  v19 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v21 = v19;
    v24 = objc_msgSend_share(v20, v22, v23);
    v27 = objc_msgSend_recordID(v24, v25, v26);
    v28 = *(a1 + 40);
    v29 = @" and error: ";
    v30 = &stru_28385ED00;
    *buf = 138413058;
    v48 = v27;
    if (!v4)
    {
      v29 = &stru_28385ED00;
    }

    v49 = 2112;
    if (v4)
    {
      v30 = v4;
    }

    v50 = v28;
    v51 = 2112;
    v52 = v29;
    v53 = 2112;
    v54 = v30;
    _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Prepped PCS data for share %@ with container %@%@%@", buf, 0x2Au);
  }

  if (!v4)
  {
    goto LABEL_20;
  }

  if (CKIsPCSError() && (objc_msgSend__currentUserIsOONForShareMetadata_(v8, v31, *(a1 + 32)) & 1) != 0)
  {
    if (*v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = v4;
      _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Suppressing error for OON user share metadata fetch. Error was: %@", buf, 0xCu);
    }

LABEL_20:
    v34 = objc_opt_class();
    v36 = *(a1 + 40);
    v35 = *(a1 + 48);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_225231588;
    v41[3] = &unk_27854AA38;
    v42 = *(a1 + 56);
    v43 = v8;
    v44 = *(a1 + 32);
    v37 = *(a1 + 72);
    v45 = *(a1 + 64);
    v46 = v37;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_container_operationConfigurationBlock_(v8, v38, v34, v35, 0, v36, v41);

    v4 = v42;
    goto LABEL_24;
  }

  v39 = *(a1 + 72);
  if (v39)
  {
    (*(v39 + 16))(v39, v4);
  }

  v40 = objc_msgSend_stateTransitionGroup(v8, v31, v32);
  dispatch_group_leave(v40);

LABEL_24:
}

void sub_225231588(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_msgSend_setFullRecordsToFetch_(v3, v4, *(a1 + 32));
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_2250740B0;
  v26[4] = sub_2250735E4;
  v27 = 0;
  objc_initWeak(&location, v3);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2252318A4;
  v24[3] = &unk_27854A9E8;
  v24[4] = v26;
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v5, v24);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22523192C;
  v19[3] = &unk_27854AA10;
  objc_copyWeak(&v23, &location);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v22 = v26;
  v19[4] = v6;
  v20 = v7;
  v21 = *(a1 + 64);
  objc_msgSend_setCompletionBlock_(v3, v8, v19);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_msgSend_operationID(v3, v10, v11);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = *(a1 + 56);
    v18 = objc_msgSend_ckShortDescription(v15, v16, v17);
    *buf = 138544130;
    v29 = v12;
    v30 = 2114;
    v31 = v14;
    v32 = 2048;
    v33 = v15;
    v34 = 2114;
    v35 = v18;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Starting fetch records operation %{public}@ for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
  _Block_object_dispose(v26, 8);
}

void sub_22523185C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v24 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252318A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (!v11)
    {
      objc_storeStrong(v10, a4);
    }
  }
}

void sub_22523192C(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  v6 = MEMORY[0x277CBC880];
  v7 = MEMORY[0x277CBC830];
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v11 = v8;
      v14 = objc_msgSend_error(WeakRetained, v12, v13);
      v42 = 138412290;
      v43 = v14;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Error fetching records: %@", &v42, 0xCu);
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v15 = objc_msgSend_error(WeakRetained, v9, v10);
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }
  }

  if (*v6 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    v26 = v18;
    v29 = objc_msgSend_operationID(WeakRetained, v27, v28);
    v30 = *(*(*(a1 + 56) + 8) + 40);
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = *(a1 + 32);
    v36 = objc_msgSend_ckShortDescription(v33, v34, v35);
    v42 = 138544386;
    v43 = v29;
    v44 = 2112;
    v45 = v30;
    v46 = 2114;
    v47 = v32;
    v48 = 2048;
    v49 = v33;
    v50 = 2114;
    v51 = v36;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Fetch records operation %{public}@ completed with error: %@ for <%{public}@: %p; %{public}@>", &v42, 0x34u);
  }

  if (*(*(*(a1 + 56) + 8) + 40) && CKIsPCSError() && objc_msgSend__currentUserIsOONForShareMetadata_(*(a1 + 32), v19, *(a1 + 40)))
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
    {
      v37 = v21;
      v40 = objc_msgSend_operationID(WeakRetained, v38, v39);
      v41 = *(*(*(a1 + 56) + 8) + 40);
      v42 = 138543618;
      v43 = v40;
      v44 = 2112;
      v45 = v41;
      _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Suppressing error for OON user fetch with operationID %{public}@. Error was: %@", &v42, 0x16u);
    }

    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = 0;
  }

  v24 = *(a1 + 48);
  if (v24)
  {
    (*(v24 + 16))(v24, *(*(*(a1 + 56) + 8) + 40));
  }

  v25 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v19, v20);
  dispatch_group_leave(v25);
}

void sub_225233284(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareParticipantKeyFetchedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_shareParticipantKeyFetchedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

void sub_225233970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  objc_destroyWeak((v30 + 88));
  objc_destroyWeak((v31 - 112));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2252339D4(uint64_t a1, uint64_t a2, void *a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v9 = WeakRetained;
  if (a2 && !v5)
  {
    v10 = objc_msgSend_pcsManager(WeakRetained, v7, v8);
    v11 = *(*(a1 + 64) + 8);
    obj = *(v11 + 40);
    v5 = objc_msgSend_sharingIdentityDataFromPCS_error_(v10, v12, a2, &obj);
    objc_storeStrong((v11 + 40), obj);

    v15 = *(*(*(a1 + 64) + 8) + 40);
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = v5 == 0;
    }

    if (v16)
    {
      if (!v15)
      {
        v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 5005, @"Couldn't get sharing identity data for per-participant PCS");
        v18 = *(*(a1 + 64) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v21 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138543362;
        v92 = v21;
        _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Couldn't get sharing identity data for per-participant PCS. Error: %{public}@", buf, 0xCu);
      }

      goto LABEL_52;
    }

    v23 = MEMORY[0x277CCACA8];
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = objc_msgSend_CKBase64URLSafeString(v5, v13, v14);
    v29 = objc_msgSend_containerScopedUserID(v9, v27, v28);
    v32 = v29;
    if (v24)
    {
      v33 = objc_msgSend_recordName(*(a1 + 32), v30, v31);
      v36 = objc_msgSend_CKBase64EncodedURLSafeString(v33, v34, v35);
      v38 = objc_msgSend_stringWithFormat_(v23, v37, @"v4:%@:%@:%@:%@", v25, v26, v32, v36);
      v39 = *(*(a1 + 72) + 8);
      v40 = *(v39 + 40);
      *(v39 + 40) = v38;
    }

    else
    {
      v41 = objc_msgSend_stringWithFormat_(v23, v30, @"v2:%@:%@:%@", v25, v26, v29);
      v42 = *(*(a1 + 72) + 8);
      v33 = *(v42 + 40);
      *(v42 + 40) = v41;
    }

    v45 = objc_msgSend_deviceContext(v9, v43, v44);
    v48 = objc_msgSend_testDeviceReference(v45, v46, v47);

    if (!v48)
    {
LABEL_34:
      v71 = objc_msgSend_dataUsingEncoding_(*(*(*(a1 + 72) + 8) + 40), v49, 4);
      v74 = objc_msgSend_CKBase64URLSafeString(v71, v72, v73);
      v75 = *(*(a1 + 80) + 8);
      v76 = *(v75 + 40);
      *(v75 + 40) = v74;

      v22 = *(*(a1 + 56) + 16);
      goto LABEL_53;
    }

    v50 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v51 = MEMORY[0x277CBC830];
    v52 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "Verifying decryption of the invited PCS using the exported per-participant PCS key", buf, 2u);
    }

    v55 = objc_msgSend_pcsManager(v9, v53, v54);
    v56 = *(*(a1 + 64) + 8);
    v89 = *(v56 + 40);
    v58 = objc_msgSend_createSharingIdentityFromData_error_(v55, v57, v5, &v89);
    objc_storeStrong((v56 + 40), v89);

    if (*(*(*(a1 + 64) + 8) + 40) || !v58)
    {
      if (*v50 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v77 = *v51;
      if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22506F000, v77, OS_LOG_TYPE_ERROR, "Couldn't create a participant identity from the exported per participant key", buf, 2u);
      }

      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v79 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v78, *MEMORY[0x277CBC120], 5005, @"Couldn't create a participant identity from the exported per participant key");
        v80 = *(*(a1 + 64) + 8);
        v81 = *(v80 + 40);
        *(v80 + 40) = v79;
      }

      if (!v58)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v61 = objc_msgSend_pcsManager(v9, v59, v60);
      v64 = objc_msgSend_invitedProtectionData(*(a1 + 48), v62, v63);
      v65 = *(*(a1 + 64) + 8);
      v88 = *(v65 + 40);
      v67 = objc_msgSend_createSharePCSFromData_sharingIdentity_error_(v61, v66, v64, v58, &v88);
      objc_storeStrong((v65 + 40), v88);

      v68 = *MEMORY[0x277CBC878];
      v69 = *v50;
      if (!*(*(*(a1 + 64) + 8) + 40) && v67)
      {
        if (v69 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v68);
        }

        v70 = *v51;
        if (os_log_type_enabled(*v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v92 = v67;
          _os_log_debug_impl(&dword_22506F000, v70, OS_LOG_TYPE_DEBUG, "Successfully decrypted the share invited PCS: %@", buf, 0xCu);
        }

        CFRelease(v58);
        CFRelease(v67);
        goto LABEL_34;
      }

      if (v69 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v68);
      }

      v82 = *v51;
      if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
      {
        v87 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138543362;
        v92 = v87;
        _os_log_error_impl(&dword_22506F000, v82, OS_LOG_TYPE_ERROR, "Couldn't create a participant identity from the exported per participant key: %{public}@", buf, 0xCu);
      }

      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v84 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v83, *MEMORY[0x277CBC120], 5005, @"Couldn't decrypt the share invitedPCS using per-participant PCS");
        v85 = *(*(a1 + 64) + 8);
        v86 = *(v85 + 40);
        *(v85 + 40) = v84;
      }

      if (v67)
      {
        CFRelease(v67);
      }
    }

    CFRelease(v58);
LABEL_52:
    v22 = *(*(a1 + 56) + 16);
    goto LABEL_53;
  }

  if (!v5)
  {
    v5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 5004, @"Couldn't decrypt our per-participant PCS");
  }

  v22 = *(*(a1 + 56) + 16);
LABEL_53:
  v22();
}

void sub_225234478(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__performCallbackForShareID_withParticipantKey_error_(*(a1 + 32), a2, *(a1 + 40), a2, a3);
  v6 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_leave(v6);
}

void sub_225234768(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252348EC;
  v9[3] = &unk_278548CC0;
  objc_copyWeak(&v10, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v4, v9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225234978;
  v6[3] = &unk_278548748;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2252348B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2252348EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleFetchedShare_withID_error_(WeakRetained, v10, v9, v8, v7);
}

void sub_225234978(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = v4;
    v15 = objc_msgSend_operationID(WeakRetained, v13, v14);
    v20 = objc_msgSend_error(v3, v16, v17);
    if (v20)
    {
      v21 = @" with error ";
    }

    else
    {
      v21 = &stru_28385ED00;
    }

    v22 = objc_msgSend_error(v3, v18, v19);
    v23 = v22;
    *v25 = 138543874;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &stru_28385ED00;
    }

    *&v25[4] = v15;
    v26 = 2114;
    v27 = v21;
    v28 = 2112;
    v29 = v24;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Fetch share participant key operation %{public}@ finished%{public}@%@", v25, 0x20u);
  }

  v7 = objc_msgSend_error(v3, v5, v6, *v25);
  objc_msgSend_setError_(WeakRetained, v8, v7);

  v11 = objc_msgSend_stateTransitionGroup(WeakRetained, v9, v10);
  dispatch_group_leave(v11);
}

void sub_225234CD8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225234E5C;
  v9[3] = &unk_278548FA8;
  objc_copyWeak(&v10, &location);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225234FB4;
  v6[3] = &unk_278548748;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_225234E20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_225234E5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Error updating share %@ on the server: %@", &v20, 0x16u);
    }
  }

  else
  {
    v14 = objc_msgSend_shareIDs(WeakRetained, v10, v11);
    objc_msgSend_addObject_(v14, v15, v7);

    v18 = objc_msgSend_sharesNeedingUpdateByID(v12, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v19, 0, v7);
  }
}

void sub_225234FB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "All shares have been updated on the server", v15, 2u);
  }

  v6 = objc_msgSend_error(WeakRetained, v4, v5);

  if (!v6)
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v12 = objc_msgSend_error(v9, v10, v11);
    objc_msgSend_setError_(WeakRetained, v13, v12);
  }

  v14 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
  dispatch_group_leave(v14);
}

void sub_2252354A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_participantVettingProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_participantVettingProgressBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40));
  }
}

void sub_225236518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, id a26, ...)
{
  va_start(va, a26);
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225236574(uint64_t a1, uint64_t a2, void *a3)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (objc_msgSend_code(v5, v7, v8) != 1)
  {
    v14 = MEMORY[0x277CBC560];
    v15 = *MEMORY[0x277CBC120];
    v16 = objc_msgSend_participantID(WeakRetained, v9, v10);
    a2 = objc_msgSend_errorWithDomain_code_format_(v14, v17, v15, 8010, @"Unknown error while trying to initiate vetting process for participant %@: %@", v16, v5);

    goto LABEL_23;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    if (a2 == 1)
    {
      v18 = MEMORY[0x277CBC560];
      v19 = *MEMORY[0x277CBC120];
      v56 = *MEMORY[0x277CBBF38];
      v20 = objc_msgSend_container(*(a1 + 32), v9, v10);
      v23 = objc_msgSend_account(v20, v21, v22);
      v26 = objc_msgSend_primaryEmail(v23, v24, v25);
      v57[0] = v26;
      v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v57, &v56, 1);
      v31 = objc_msgSend_participantID(WeakRetained, v29, v30);
      a2 = objc_msgSend_errorWithDomain_code_userInfo_format_(v18, v32, v19, 8007, v28, @"The address of participant %@ is already vetted to caller", v31);

      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (a2 == 2)
  {
    if (_os_feature_enabled_impl())
    {
      v34 = @"This address is vetted to a different Apple Account";
    }

    else
    {
      v34 = @"This address is vetted to a different Apple ID";
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 8008, v34);
    goto LABEL_22;
  }

  if (a2 == 3)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 8006, @"This account has too many vetted email addresses and another cannot be added");
    a2 = LABEL_22:;
    goto LABEL_23;
  }

  if (a2 != 5)
  {
LABEL_19:
    v35 = MEMORY[0x277CBC560];
    v36 = *MEMORY[0x277CBC120];
    v37 = objc_msgSend_participantID(WeakRetained, v9, v10);
    a2 = objc_msgSend_errorWithDomain_code_format_(v35, v38, v36, 8001, @"Error code %ld while trying to initiate vetting process for participant %@", a2, v37);

    goto LABEL_23;
  }

  v11 = *MEMORY[0x277CBC878];
  if (*(a1 + 56))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Received LoginRequired from the server, but this was a second attempt, not trying to re-authenticate the user again", buf, 2u);
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 2012, @"Unable to vet due to failed authentification even after successful authentication attempt, giving up");
    goto LABEL_22;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v11);
  }

  v39 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Received LoginRequired from the server, trying to re-authenticate the user", buf, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v53 = objc_msgSend_address(WeakRetained, v40, v41);
  v42 = CKLocalizedString();

  v45 = objc_msgSend_container(*(a1 + 32), v43, v44, v53);
  v48 = objc_msgSend_account(v45, v46, v47);
  v51 = objc_msgSend_container(*(a1 + 32), v49, v50);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_225236A28;
  v54[3] = &unk_27854AAD8;
  v54[4] = WeakRetained;
  objc_msgSend_renewCloudKitAuthTokenWithReason_shouldForce_container_failedToken_completionHandler_(v48, v52, v42, 1, v51, 0, v54);

  a2 = 0;
LABEL_23:
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    objc_msgSend__handleVettingInitiationProgress_(WeakRetained, v9, a2);
  }
}

void sub_225236A28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a3 || !a2)
  {
    v8 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 2012, a3, @"User session has expired and we were unable to re-authenticate user during vetting");
    objc_msgSend__handleVettingInitiationProgress_(*(a1 + 32), v6, v8);
    objc_msgSend_finishWithError_(*(a1 + 32), v7, v8);
  }

  else
  {
    v5 = *(a1 + 32);

    objc_msgSend__sendRequest_(v5, a2, 1, a4, 0);
  }
}

void sub_225236ADC(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = objc_loadWeakRetained((a1 + 48));
    v6 = objc_msgSend_error(v3, v4, v5);
    objc_msgSend_finishWithError_(WeakRetained, v7, v6);
  }
}

void sub_2252370B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_bundleIDsFetchedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

void sub_22523739C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2252374F8;
  v15[3] = &unk_27854A7D0;
  v15[4] = *(a1 + 32);
  objc_msgSend_setShareMetadataFetchedBlock_(v3, v4, v15);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_225237674;
  v12 = &unk_2785476F0;
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v5, &v9);
  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7, v9, v10, v11, v12);
  dispatch_group_enter(v8);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_2252374D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2252374F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = v9;
  if (!v8 || v9)
  {
    if (!v9)
    {
      v11 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 2003, @"Couldn't get metadata for the share with url %@", v7);
    }

    objc_msgSend__performCallbackForURL_withAppBundleIDs_daemonBundleIDs_error_(*(a1 + 32), v10, v7, 0, 0, v11);
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
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Fetched share metadata for URL: %@", buf, 0xCu);
    }

    v11 = objc_msgSend_shareMetadatasByURL(*(a1 + 32), v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v15, v8, v7);
  }
}

void sub_225237674(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v9 = @" with error ";
    v10 = &stru_28385ED00;
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v9 = &stru_28385ED00;
    }

    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Done fetching all share metadata%{public}@%@", &v13, 0x16u);
  }

  if (v5)
  {
    v11 = objc_msgSend_error(*(a1 + 32), v7, v8);

    if (!v11)
    {
      objc_msgSend_setError_(*(a1 + 32), v7, v5);
    }
  }

  v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v7, v8);
  dispatch_group_leave(v12);
}

void sub_225237B54(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225237C34;
  v5[3] = &unk_278546EE0;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v4, v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_225237C18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_225237C34(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = objc_msgSend_bundleIDs(WeakRetained, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v40, v50, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v41;
    v13 = *MEMORY[0x277CBC978];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        if (objc_msgSend_hasPrefix_(v15, v10, v13))
        {
          v18 = objc_msgSend_length(v13, v16, v17);
          v20 = objc_msgSend_substringFromIndex_(v15, v19, v18);
          if (objc_msgSend_length(v20, v21, v22))
          {
            objc_msgSend_addObject_(v4, v23, v20);
          }
        }

        else
        {
          objc_msgSend_addObject_(v3, v16, v15);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v40, v50, 16);
    }

    while (v11);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v24 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v26 = v24;
    v31 = objc_msgSend_error(WeakRetained, v27, v28);
    if (v31)
    {
      v32 = @" with error ";
    }

    else
    {
      v32 = &stru_28385ED00;
    }

    v33 = objc_msgSend_error(WeakRetained, v29, v30);
    v34 = v33;
    v35 = *(a1 + 32);
    if (v33)
    {
      v36 = v33;
    }

    else
    {
      v36 = &stru_28385ED00;
    }

    *buf = 138543874;
    v45 = v32;
    v46 = 2112;
    v47 = v36;
    v48 = 2112;
    v49 = v35;
    _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Fetched registered bundleIDs%{public}@%@ for URL %@", buf, 0x20u);
  }

  objc_msgSend__performCallbackForURL_withAppBundleIDs_daemonBundleIDs_error_(*(a1 + 40), v25, *(a1 + 32), v3, v4, 0);
  v39 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v37, v38);
  dispatch_group_leave(v39);
}

void sub_225238580(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareRequestAccessCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_shareRequestAccessCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2252391E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location)
{
  objc_destroyWeak((v50 + 40));
  objc_destroyWeak((v50 + 32));
  objc_destroyWeak((v49 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a43);
  _Unwind_Resume(a1);
}

void sub_225239238(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleShareAccessRequestedForURL_responseCode_(WeakRetained, v7, v6, v5);
}

void sub_2252392B0(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = v9;
      v15 = objc_msgSend_error(v3, v13, v14);
      v19 = 138412290;
      v20 = v15;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Error requesting access to share: %@", &v19, 0xCu);
    }

    v16 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_setError_(WeakRetained, v17, v16);
  }

  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
  dispatch_group_leave(v18);
}

void sub_2252399B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_subscriptionFetchedProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_subscriptionFetchedProgressBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

void sub_225239CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak((v18 - 72));
  _Unwind_Resume(a1);
}

void sub_225239CFC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleSubscriptionFetched_withID_responseCode_(WeakRetained, v10, v9, v8, v7);
}

void sub_225239D88(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277CBC560];
  v6 = *MEMORY[0x277CBC120];
  v7 = sub_2253962A4(v3);
  v10 = objc_msgSend_request(WeakRetained, v8, v9);
  v11 = sub_225395734(v10, v3);
  v14 = objc_msgSend_error(v3, v12, v13);

  v17 = objc_msgSend_errorDescription(v14, v15, v16);
  v19 = objc_msgSend_errorWithDomain_code_userInfo_format_(v5, v18, v6, v7, v11, @"Error fetching all subscriptions from server: %@", v17);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v20 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v25 = v20;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v30 = objc_msgSend_ckShortDescription(WeakRetained, v28, v29);
    *buf = 138544130;
    v32 = v27;
    v33 = 2048;
    v34 = WeakRetained;
    v35 = 2114;
    v36 = v30;
    v37 = 2112;
    v38 = v19;
    _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Fetch subscriptions operation <%{public}@: %p; %{public}@> hit top-level error %@", buf, 0x2Au);
  }

  v23 = objc_msgSend_error(WeakRetained, v21, v22);

  if (!v23)
  {
    objc_msgSend_setError_(WeakRetained, v24, v19);
  }
}

void sub_225239FB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (!v4)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v10 = objc_msgSend_error(v7, v8, v9);
    objc_msgSend_setError_(WeakRetained, v11, v10);
  }

  v12 = objc_msgSend_error(WeakRetained, v5, v6);
  objc_msgSend_finishWithError_(WeakRetained, v13, v12);
}

void sub_22523A69C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_saveCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22523A9DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_deleteCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_deleteCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22523B124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak((v42 + 40));
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a41);
  _Unwind_Resume(a1);
}

void sub_22523BC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22523BC4C(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(*(a1 + 32), v7, v8), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v10, v11, @"FailZonePCSDecryptionOnZoneAggregation"), v12 = objc_claimAutoreleasedReturnValue(), v12, v10, v12))
  {

    v14 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 5004, 0, @"Unit test Zone PCS decryption failure");

    v6 = v14;
  }

  else if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      *buf = 138412290;
      v49 = v18;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Fetched pcs info for zone %@", buf, 0xCu);
    }

    v19 = objc_msgSend_zonePCSDataByZoneID(WeakRetained, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v19, v20, v5, *(a1 + 40));
    goto LABEL_24;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v21 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 40);
    *buf = 138412546;
    v49 = v24;
    v50 = 2112;
    v51 = v6;
    _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS data for zone %@: %@", buf, 0x16u);
  }

  if (v6)
  {
    v25 = objc_msgSend_error(WeakRetained, v22, v23);

    if (!v25)
    {
      if (objc_msgSend_CKIsNotFoundError(v6, v22, v23))
      {
        v30 = objc_msgSend_userInfo(v6, v26, v27);
        if (v30)
        {
          v31 = objc_msgSend_userInfo(v6, v28, v29);
          v19 = objc_msgSend_mutableCopy(v31, v32, v33);
        }

        else
        {
          v19 = objc_opt_new();
        }

        objc_msgSend_setObject_forKeyedSubscript_(v19, v35, *(a1 + 40), *MEMORY[0x277CBBF58]);
        v36 = MEMORY[0x277CBC560];
        v37 = *MEMORY[0x277CBC120];
        v40 = objc_msgSend_code(v6, v38, v39);
        v43 = objc_msgSend_localizedDescription(v6, v41, v42);
        v45 = objc_msgSend_errorWithDomain_code_userInfo_format_(v36, v44, v37, v40, v19, @"%@", v43);

        objc_msgSend_setError_(WeakRetained, v46, v45);
      }

      else
      {
        v19 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 5001, 0, @"Error fetching PCS data for zone %@", *(a1 + 40));
        objc_msgSend_setError_(WeakRetained, v34, v19);
      }

      v5 = 0;
LABEL_24:

      goto LABEL_25;
    }
  }

  v5 = 0;
LABEL_25:
  v47 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v22, v23);
  dispatch_group_leave(v47);
}

void sub_22523C87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_22523C8C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleZoneSavedWithID_responseCode_(WeakRetained, v7, v6, v5);
}

void sub_22523C93C(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v6 = objc_msgSend_error(v3, v4, v5);

    if (!v6)
    {
LABEL_19:
      v29 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
      dispatch_group_leave(v29);

      goto LABEL_20;
    }

    v9 = objc_msgSend_error(v3, v7, v8);
    if ((objc_msgSend_needsSynchronizeSigningIdentities(WeakRetained, v10, v11) & 1) == 0)
    {
      v16 = objc_msgSend_domain(v9, v12, v13);
      if (v16 == *MEMORY[0x277CBC120] && objc_msgSend_code(v9, v14, v15) == 5000)
      {
        v19 = objc_msgSend_description(v9, v17, v18);
        v22 = objc_msgSend_lowercaseString(v19, v20, v21);
        v24 = objc_msgSend_containsString_(v22, v23, @"failed to create cryptographic signature");

        if (v24)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v25 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v30 = 138412290;
            v31 = v9;
            _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Signing identity missing when modifying record zone: %@", &v30, 0xCu);
          }

          objc_msgSend_setNeedsSynchronizeSigningIdentities_(WeakRetained, v26, 1);
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v30 = 138412290;
      v31 = v9;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Error modifying record zone: %@", &v30, 0xCu);
    }

    objc_msgSend_setError_(WeakRetained, v28, v9);
    goto LABEL_18;
  }

LABEL_20:
}

void sub_22523CD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22523CDC4(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = *MEMORY[0x277CBC878];
    v8 = *MEMORY[0x277CBC880];
    if (v5 || (a2 & 1) == 0)
    {
      if (v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v12 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        v18 = 138543618;
        v19 = v17;
        v20 = 2112;
        v21 = v5;
        _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "User key sync to update signing identities failed for operation %{public}@: %@", &v18, 0x16u);
      }

      objc_msgSend_setError_(WeakRetained, v13, v5);
    }

    else
    {
      if (v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v9 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v18 = 138543362;
        v19 = v11;
        _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "User key sync to update signing identities succeeded for operation %{public}@", &v18, 0xCu);
      }
    }

    objc_msgSend_setDidSynchronizeSigningIdentities_(WeakRetained, v10, 1);
    v16 = objc_msgSend_stateTransitionGroup(WeakRetained, v14, v15);
    dispatch_group_leave(v16);
  }
}

void sub_22523D270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22523D29C(uint64_t a1, char a2, void *a3, void *a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = MEMORY[0x277CBC878];
    v11 = *MEMORY[0x277CBC878];
    v12 = MEMORY[0x277CBC880];
    v13 = *MEMORY[0x277CBC880];
    if (v7 || (a2 & 1) == 0)
    {
      if (v13 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v11);
      }

      v39 = MEMORY[0x277CBC830];
      v40 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v42 = *(a1 + 32);
        v68 = 138543618;
        v69 = v42;
        v70 = 2112;
        v71 = v7;
        _os_log_impl(&dword_22506F000, v40, OS_LOG_TYPE_INFO, "User key sync failed for operation %{public}@ with error %@", &v68, 0x16u);
      }

      objc_msgSend_setCurrentError_(WeakRetained, v41, v7);
      if (!objc_msgSend_isCloudCoreSessionNoLongerValidError(v7, v43, v44))
      {
        objc_msgSend_setError_(v8, v45, v7);
        objc_msgSend_setOverallResult_(v8, v47, @"failure");
        if (*(a1 + 64) != 1 || !objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(*(a1 + 40), v46, v48))
        {
          goto LABEL_37;
        }

        if (*v12 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v10);
        }

        v49 = *v39;
        if (os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
        {
          v64 = v49;
          v67 = objc_msgSend_operationID(WeakRetained, v65, v66);
          v68 = 138412290;
          v69 = v67;
          _os_log_error_impl(&dword_22506F000, v64, OS_LOG_TYPE_ERROR, "Failing operation %@ due to the failed user key sync.", &v68, 0xCu);
        }

        objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v50, &unk_28385D760);
      }

      objc_msgSend_setError_(WeakRetained, v45, v7);
LABEL_37:
      objc_msgSend_setKeySyncAnalytics_(WeakRetained, v46, v8);
      v63 = objc_msgSend_stateTransitionGroup(WeakRetained, v61, v62);
      dispatch_group_leave(v63);

      goto LABEL_38;
    }

    if (v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v68 = 138543362;
      v69 = v17;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "User key sync succeeded for operation %{public}@", &v68, 0xCu);
    }

    v18 = objc_msgSend_container(WeakRetained, v15, v16);
    v21 = objc_msgSend_pcsManager(v18, v19, v20);
    v23 = objc_msgSend_currentIdentityPublicKeyIDForServiceType_error_(v21, v22, 0, 0);

    if (v23 && (objc_msgSend_isEqualToString_(v23, v24, *(a1 + 48)) & 1) == 0)
    {
      v51 = objc_msgSend_container(WeakRetained, v24, v25);
      v54 = objc_msgSend_pcsManager(v51, v52, v53);
      v57 = objc_msgSend_identityManager(v54, v55, v56);
      v35 = objc_msgSend_PCSServiceStringFromCKServiceType_(v57, v58, 0);

      if (*v12 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v59 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v68 = 138412546;
        v69 = v35;
        v70 = 2112;
        v71 = v23;
        _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "The service %@ has a new current identity with public key ID: %@", &v68, 0x16u);
      }

      objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v60, &unk_28385D780);
    }

    else
    {
      if (*(a1 + 64) != 1 || !objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(*(a1 + 40), v24, v25))
      {
        goto LABEL_36;
      }

      v27 = objc_msgSend_container(WeakRetained, v24, v26);
      v30 = objc_msgSend_pcsManager(v27, v28, v29);
      v33 = objc_msgSend_identityManager(v30, v31, v32);
      v35 = objc_msgSend_PCSServiceStringFromCKServiceType_(v33, v34, 0);

      if (*v12 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v36 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v68 = 138412290;
        v69 = v35;
        _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "User key sync did not populate the current identity for the service %@", &v68, 0xCu);
      }

      objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v37, &unk_28385D7A0);
      objc_msgSend_setError_(WeakRetained, v38, 0);
    }

LABEL_36:
    objc_msgSend_setZoneWaitingOnKeyRegistrySync_(WeakRetained, v24, 0);

    goto LABEL_37;
  }

LABEL_38:
}

void sub_22523D79C(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_22523D7E4(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_identitiesRolledOnZoneSave(v6, v2, v3);
  objc_msgSend_setIdentitiesRolledOnZoneSave_(v6, v5, v4 + 1);
}

void sub_22523D82C(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_22523E15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22523E188(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (!a2 || v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 32);
      v29 = 138412546;
      v30 = v27;
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Warn: Couldn't decrypt pcs data for zone %@: %@", &v29, 0x16u);
    }
  }

  else
  {
    v10 = objc_msgSend_targetZone(WeakRetained, v7, v8);
    v13 = objc_msgSend_protectionData(v10, v11, v12);
    v15 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v14, v13);

    v18 = objc_msgSend_targetZone(v9, v16, v17);
    v20 = objc_msgSend_dataWithZone_(CKDZonePCSData, v19, v18);

    objc_msgSend_setPcs_(v20, v21, a2);
    objc_msgSend_setEtag_(v20, v22, v15);
    objc_msgSend_setPCSData_forFetchedZoneID_(v9, v23, v20, *(a1 + 32));
  }

  v28 = objc_msgSend_stateTransitionGroup(v9, v24, v25);
  dispatch_group_leave(v28);
}

void sub_22523F0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22523F104(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_23;
  }

  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_checkAndClearUnitTestOverrides_(WeakRetained, v8, @"FakePCSDecryptionFailure"))
  {
    v11 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 5004, 0, @"TEST PCS decrypt failure");

    v6 = v11;
  }

  objc_msgSend_noteOperationDidFinishWaitingOnPCS(v10, v8, v9);
  objc_msgSend_setError_(v10, v12, v6);
  if (!v6)
  {
    v15 = objc_msgSend_pcs(v5, v13, v14);
    v18 = objc_msgSend_zone(v10, v16, v17);
    objc_msgSend_setZonePCS_(v18, v19, v15);

    v22 = objc_msgSend_zone(v10, v20, v21);
    v25 = objc_msgSend_zoneishProtectionData(v22, v23, v24);
    if (!v25)
    {
LABEL_15:

      goto LABEL_16;
    }

    v28 = v25;
    v29 = objc_msgSend_pcs(v5, v26, v27);

    if (v29)
    {
      v30 = objc_msgSend_container(v10, v13, v14);
      v33 = objc_msgSend_pcsManager(v30, v31, v32);
      v36 = objc_msgSend_zone(v10, v34, v35);
      v39 = objc_msgSend_zoneishProtectionData(v36, v37, v38);
      v42 = objc_msgSend_pcs(v5, v40, v41);
      v58 = 0;
      v44 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v33, v43, v39, 1, v42, &v58);
      v22 = v58;

      v47 = objc_msgSend_zone(v10, v45, v46);
      objc_msgSend_setZoneishPCS_(v47, v48, v44);

      if (v44)
      {
        CFRelease(v44);
      }

      if (v22)
      {
        objc_msgSend_setError_(v10, v49, v22);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v50 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v60 = v22;
          _os_log_error_impl(&dword_22506F000, v50, OS_LOG_TYPE_ERROR, "Failed to decode zoneishPCS data: %@", buf, 0xCu);
        }
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v51 = objc_msgSend_error(v10, v13, v14);

  if (!v51)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v54 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v54, OS_LOG_TYPE_DEBUG, "PCS successfully decrypted, updating cache.", buf, 2u);
    }

    objc_msgSend_updatePCSCache(v10, v55, v56);
  }

  v57 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v52, v53);
  dispatch_group_leave(v57);

LABEL_23:
}

void sub_22523F77C(uint64_t a1, void *a2)
{
  v11 = a2;
  v5 = objc_msgSend_zoneKeysRemoved(v11, v3, v4);
  objc_msgSend_setZoneKeysRemoved_(v11, v6, *(a1 + 32) + v5);
  v9 = objc_msgSend_zoneishKeysRemoved(v11, v7, v8);
  objc_msgSend_setZoneishKeysRemoved_(v11, v10, *(a1 + 40) + v9);
}

void sub_22523F9EC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22523FABC;
  v5[3] = &unk_27854ACB8;
  objc_copyWeak(&v6, &location);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_22523FAA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22523FABC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_checkAndClearUnitTestOverrides_(WeakRetained, v11, @"FakeZoneSaveFailure"))
    {
      v14 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 2000, 0, @"TEST Save Zone failure");

      v9 = v14;
    }

    v15 = *MEMORY[0x277CBC878];
    v16 = *MEMORY[0x277CBC880];
    if (v8 && !v9)
    {
      if (v16 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v15);
      }

      v17 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v24 = v17;
        v27 = objc_msgSend_zoneID(v8, v25, v26);
        v28 = 138412290;
        v29 = v27;
        _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Saved PCS changes to the server for zone %@", &v28, 0xCu);
      }

      objc_msgSend_setZone_(v12, v18, v8);
      v9 = 0;
      goto LABEL_18;
    }

    if (v16 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = v9;
      _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Failed to save PCS changes to the server for zone %@: %@", &v28, 0x16u);
      if (v9)
      {
        goto LABEL_17;
      }
    }

    else if (v9)
    {
LABEL_17:
      objc_msgSend_setError_(v12, v22, v9);
LABEL_18:
      v23 = objc_msgSend_stateTransitionGroup(v12, v19, v20);
      dispatch_group_leave(v23);

      goto LABEL_19;
    }

    v9 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], 5002, 0, @"Failed to save updated PCS to the server");
    goto LABEL_17;
  }

LABEL_19:
}

void sub_2252407EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225240810(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(WeakRetained, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v11, v12, @"ForceServerConfigFetchFailure"), v13 = objc_claimAutoreleasedReturnValue(), v13, v11, v13))
    {

      v5 = 0;
    }

    else if (v5 && !v6)
    {
LABEL_10:
      dispatch_group_leave(*(a1 + 32));
      goto LABEL_15;
    }

    if (!v6)
    {
      v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1000, @"Failed to fetch global server configuration to determine device capability checking enablement.");
    }

    objc_msgSend_setState_(v10, v8, 0xFFFFFFFFLL);
    objc_msgSend_finishWithError_(v10, v14, v6);
    goto LABEL_10;
  }

  dispatch_group_leave(*(a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v16 = 0;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Self has been deallocated after fetching server configuration", v16, 2u);
  }

LABEL_15:
}

void sub_225240F7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 168));
  objc_destroyWeak((v6 - 160));
  _Unwind_Resume(a1);
}

void sub_225240FF4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleSupportedDeviceCapabilitiesCheckedForZoneID_capabilitySet_result_responseCode_(WeakRetained, v13, v12, v11, v10, v9);
}

void sub_22524109C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleContinuation_(WeakRetained, v4, v3);
}

void sub_2252410F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = MEMORY[0x277CBC560];
  v12 = *MEMORY[0x277CBC120];
  v13 = sub_2253962A4(v8);
  v16 = objc_msgSend_request(WeakRetained, v14, v15);
  v17 = sub_225395734(v16, v8);
  v20 = objc_msgSend_error(v8, v18, v19);

  v23 = objc_msgSend_errorDescription(v20, v21, v22);
  v25 = objc_msgSend_errorWithDomain_code_userInfo_format_(v11, v24, v12, v13, v17, @"Error checking supported device capabilities with server: %@", v23);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v28 = v26;
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v33 = objc_msgSend_ckShortDescription(WeakRetained, v31, v32);
    *buf = 138544386;
    v35 = v30;
    v36 = 2048;
    v37 = WeakRetained;
    v38 = 2114;
    v39 = v33;
    v40 = 2112;
    v41 = v25;
    v42 = 2112;
    v43 = v7;
    _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "Check supported device capabilities operation <%{public}@: %p; %{public}@> received an error: %@ for zone: %@", buf, 0x34u);
  }

  objc_msgSend__handleError_forZoneID_capabilitySet_(WeakRetained, v27, v25, v7, v9);
}

void sub_22524133C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v13 = v11;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v18 = objc_msgSend_ckShortDescription(WeakRetained, v16, v17);
    v19 = 138544386;
    v20 = v15;
    v21 = 2048;
    v22 = WeakRetained;
    v23 = 2114;
    v24 = v18;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Warn: Check supported device capabilities operation <%{public}@: %p; %{public}@> validation of the server response failed. Error: %@ for zone: %@", &v19, 0x34u);
  }

  objc_msgSend__handleError_forZoneID_capabilitySet_(WeakRetained, v12, v7, v8, v9);
}

void sub_2252414DC(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = v4;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v18 = objc_msgSend_ckShortDescription(WeakRetained, v16, v17);
    v21 = objc_msgSend_error(v3, v19, v20);
    v22 = 138544130;
    v23 = v15;
    v24 = 2048;
    v25 = WeakRetained;
    v26 = 2114;
    v27 = v18;
    v28 = 2112;
    v29 = v21;
    _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Check supported device capabilities operation <%{public}@: %p; %{public}@> finished with error %@", &v22, 0x2Au);
  }

  v7 = objc_msgSend_error(WeakRetained, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_error(v3, v8, v9);
    objc_msgSend_setError_(WeakRetained, v11, v10);
  }

  v12 = objc_msgSend_stateTransitionGroup(WeakRetained, v8, v9);
  dispatch_group_leave(v12);
}

void sub_225241BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225241D34;
  v14[3] = &unk_27854ADC8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = v4;
  v16 = v5;
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v6, v14);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2252422D8;
  v10[3] = &unk_278546EE0;
  objc_copyWeak(&v13, &location);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  objc_msgSend_setCompletionBlock_(v3, v9, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_225241D10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_225241D34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v99 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v81 = a4;
  v77 = v7;
  v9 = objc_opt_new();
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v80 = a1;
  v10 = *(a1 + 32);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v89, v98, 16);
  if (v12)
  {
    v16 = v12;
    if (v77)
    {
      v17 = v81 == 0;
    }

    else
    {
      v17 = 0;
    }

    v18 = !v17;
    v19 = *v90;
    v83 = *MEMORY[0x277CBBF50];
    *&v15 = 138543618;
    v72 = v15;
    v75 = v9;
    v76 = v8;
    v74 = v10;
    v73 = v18;
    v79 = *v90;
    do
    {
      v20 = 0;
      v78 = v16;
      do
      {
        if (*v90 != v19)
        {
          objc_enumerationMutation(v10);
        }

        v84 = v20;
        v21 = *(*(&v89 + 1) + 8 * v20);
        v22 = objc_msgSend_result(v21, v13, v14, v72);
        v25 = objc_msgSend_shareID(v22, v23, v24);
        isEqual = objc_msgSend_isEqual_(v25, v26, v8);

        if (isEqual)
        {
          objc_msgSend_addObject_(v9, v13, v21);
          if (v18)
          {
            found = objc_msgSend_CKIsNotFoundError(v81, v28, v29);
            v31 = *MEMORY[0x277CBC878];
            if (found)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v31);
              }

              v32 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
              {
                *buf = v72;
                v95 = v8;
                v96 = 2112;
                v97 = v81;
                _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Warn: Failed to validate share usage from the server, shareID %{public}@ not found: %@", buf, 0x16u);
              }

              v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, v83, 161, @"Deleted or invalid share in device capability check response");
              objc_msgSend_setError_(v21, v35, v34);
              objc_msgSend_reportClientValidationError_(*(v80 + 40), v36, @"shareNotFound");
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v31);
              }

              v68 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
              {
                *buf = v72;
                v95 = v8;
                v96 = 2112;
                v97 = v81;
                _os_log_impl(&dword_22506F000, v68, OS_LOG_TYPE_INFO, "Warn: Failed to validate share usage from the server, failed to fetch share with shareID %{public}@: %@", buf, 0x16u);
              }

              v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v69, v83, 161, @"Failed to fetch share when validating device capability check response");
              objc_msgSend_setError_(v21, v70, v34);
            }

            goto LABEL_44;
          }

          v82 = v21;
          v37 = objc_msgSend_result(v21, v28, v29);
          v34 = objc_msgSend_userID(v37, v38, v39);

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v42 = objc_msgSend_participants(v77, v40, v41);
          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v85, v93, 16);
          if (v44)
          {
            v47 = v44;
            v48 = *v86;
LABEL_22:
            v49 = 0;
            while (1)
            {
              if (*v86 != v48)
              {
                objc_enumerationMutation(v42);
              }

              v50 = *(*(&v85 + 1) + 8 * v49);
              v51 = objc_msgSend_userIdentity(v50, v45, v46);
              v54 = objc_msgSend_userRecordID(v51, v52, v53);
              v57 = objc_msgSend_recordName(v54, v55, v56);
              isEqualToString = objc_msgSend_isEqualToString_(v57, v58, v34);

              if (isEqualToString)
              {
                break;
              }

              if (v47 == ++v49)
              {
                v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v85, v93, 16);
                if (v47)
                {
                  goto LABEL_22;
                }

                goto LABEL_28;
              }
            }

            v60 = v50;

            if (!v60)
            {
              goto LABEL_32;
            }

            v9 = v75;
            v8 = v76;
            v10 = v74;
            v18 = v73;
            v16 = v78;
            v19 = v79;
            if (objc_msgSend_acceptanceStatus(v60, v61, v62) == 2)
            {
              goto LABEL_38;
            }
          }

          else
          {
LABEL_28:

            v60 = 0;
LABEL_32:
            v9 = v75;
            v8 = v76;
            v10 = v74;
            v18 = v73;
            v16 = v78;
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v63 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            *buf = v72;
            v95 = v34;
            v96 = 2114;
            v97 = v8;
            _os_log_impl(&dword_22506F000, v63, OS_LOG_TYPE_INFO, "Warn: Failed to validate share usage from the server, userID %{public}@ is not an accepted participant of the share with shareID: %{public}@", buf, 0x16u);
          }

          v65 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v64, v83, 161, @"Obsolete share participant in device capability check response");
          objc_msgSend_setError_(v82, v66, v65);
          objc_msgSend_reportClientValidationError_(*(v80 + 40), v67, @"invalidParticipant");

          v19 = v79;
LABEL_38:

LABEL_44:
        }

        v20 = v84 + 1;
      }

      while (v84 + 1 != v16);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v89, v98, 16);
    }

    while (v16);
  }

  objc_msgSend_removeObjectsInArray_(*(v80 + 32), v71, v9);
}

void sub_2252422D8(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  v6 = MEMORY[0x277CBC880];
  v7 = MEMORY[0x277CBC830];
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = v5;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Warn: Failed to fetch shares for participant validation: %@", buf, 0xCu);
    }
  }

  v41 = a1;
  v42 = v5;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(a1 + 32);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v45, v53, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v46;
    v15 = *MEMORY[0x277CBBF50];
    v16 = 0x277CBC000uLL;
    do
    {
      v17 = 0;
      do
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v45 + 1) + 8 * v17);
        v19 = objc_msgSend_result(v18, v11, v12, v41, v42);
        v44 = objc_msgSend_userID(v19, v20, v21);

        if (*v6 != -1)
        {
          dispatch_once(v6, *MEMORY[0x277CBC878]);
        }

        v22 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
        {
          v24 = v22;
          v27 = objc_msgSend_result(v18, v25, v26);
          objc_msgSend_shareID(v27, v28, v29);
          v30 = v16;
          v31 = v13;
          v32 = v15;
          v33 = v14;
          v35 = v34 = v7;
          *buf = 138543618;
          v50 = v44;
          v51 = 2114;
          v52 = v35;
          _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Warn: Failed to validate share usage of participant %{public}@ for shareID %{public}@", buf, 0x16u);

          v7 = v34;
          v14 = v33;
          v15 = v32;
          v13 = v31;
          v16 = v30;

          v6 = MEMORY[0x277CBC880];
        }

        v36 = objc_msgSend_errorWithDomain_code_format_(*(v16 + 1376), v23, v15, 161, @"Failed to validate share participant in device capability check response");
        objc_msgSend_setError_(v18, v37, v36);

        ++v17;
      }

      while (v13 != v17);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v45, v53, 16);
    }

    while (v13);
  }

  v40 = objc_msgSend_stateTransitionGroup(*(v41 + 40), v38, v39);
  dispatch_group_leave(v40);
}

void sub_225242B5C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = objc_msgSend_unsignedIntegerValue(*(*(&v14 + 1) + 8 * v11), v7, v8, v14);
        objc_msgSend_addAdopterCapabilityCheckResult_(v3, v13, v12);
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v14, v18, 16);
    }

    while (v9);
  }
}

void sub_225243158(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_serverChangeTokenUpdatedBlock(*(a1 + 32), a2, a3);
  if (v4 && (v7 = v4, v8 = objc_msgSend_shouldReturnServerChangeTokensToAdopter(*(a1 + 32), v5, v6), v7, v8))
  {
    v9 = objc_msgSend_serverChangeTokenUpdatedBlock(*(a1 + 32), v5, v6);
    v10 = *(a1 + 56);
    v11 = *(a1 + 40);
    v14 = objc_msgSend_error(*(a1 + 32), v12, v13);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = sub_225243298;
    v22 = &unk_278548128;
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    (v9)[2](v9, v11, v10, v14, &v19);
  }

  else
  {
    v17 = objc_msgSend_perRequestGroup(*(a1 + 48), v5, v6);
    dispatch_group_leave(v17);
  }

  v18 = objc_msgSend_fetchZonesGroup(*(a1 + 32), v15, v16, v19, v20, v21, v22, v23);
  dispatch_group_leave(v18);
}

void sub_225243298(uint64_t a1, void *a2)
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

void sub_2252439AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 160));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 144));
  objc_destroyWeak((v3 - 136));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_225243AA4(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v6 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v7 = objc_msgSend_unitTestOverrides(WeakRetained, v4, v5);
      v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"PipelineMetasyncRequestsForever");
      v10 = v9 != 0;
    }

    else
    {
      v10 = 0;
    }

    v16 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = MEMORY[0x277CBC830];
    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      log = v18;
      v50 = objc_opt_class();
      v64 = NSStringFromClass(v50);
      v63 = objc_msgSend_ckShortDescription(v3, v51, v52);
      v55 = objc_msgSend_operationID(WeakRetained, v53, v54);
      objc_msgSend_error(v3, v56, v57);
      *buf = 138544386;
      v76 = v64;
      v77 = 2048;
      v78 = v3;
      v79 = 2114;
      v80 = v63;
      v81 = 2114;
      v82 = v55;
      v84 = v83 = 2112;
      v58 = v84;
      _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Fetch database changes request <%{public}@: %p; %{public}@> for operation %{public}@ finished with error %@", buf, 0x34u);
    }

    v21 = objc_msgSend_numRequestsSent(WeakRetained, v19, v20);
    objc_msgSend_setNumRequestsSent_(WeakRetained, v22, v21 + 1);
    v27 = objc_msgSend_error(v3, v23, v24);
    if (!v27 && objc_msgSend_isExecuting(WeakRetained, v25, v26) && (objc_msgSend_isCancelled(WeakRetained, v28, v29) & 1) == 0 && objc_msgSend_fetchAllChanges(WeakRetained, v30, v31) && (objc_msgSend_status(v3, v32, v33) != 2 || v10))
    {
      if (objc_msgSend_numRequestsSent(WeakRetained, v34, v35))
      {
        if (*v16 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v38 = *v17;
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
        {
          v59 = v38;
          v62 = objc_msgSend_serverChangeTokenData(v3, v60, v61);
          *buf = 138543362;
          v76 = v62;
          _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another fetch request with change token %{public}@", buf, 0xCu);
        }

        v41 = objc_msgSend_serverChangeTokenData(v3, v39, v40);
        objc_msgSend__sendFetchDatabaseChangesRequestWithChangeToken_previousRequestSchedulerInfo_(WeakRetained, v42, v41, v6);

        v43 = *(a1 + 32);
        v46 = objc_msgSend_callbackQueue(WeakRetained, v44, v45);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_225243FB4;
        block[3] = &unk_278545AB0;
        block[4] = WeakRetained;
        v73 = v6;
        v74 = *(a1 + 64);
        dispatch_group_notify(v43, v46, block);

        v47 = v73;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v48 = *(a1 + 32);
    v49 = objc_msgSend_callbackQueue(WeakRetained, v36, v37);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_22524404C;
    v66[3] = &unk_27854AE18;
    v67 = v6;
    v68 = v3;
    v69 = WeakRetained;
    v70 = v10;
    v71 = *(a1 + 64);
    dispatch_group_notify(v48, v49, v66);

    v47 = v67;
LABEL_26:

    goto LABEL_27;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v15 = objc_msgSend_requestUUID(v3, v13, v14);
    *buf = 138543362;
    v76 = v15;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Owning operation for request %{public}@ no longer around. Bailing.", buf, 0xCu);
  }

LABEL_27:
}

void sub_225243FB4(uint64_t a1, const char *a2)
{
  objc_msgSend__handleFetchDatabaseChangesRequestFinishedWithSchedulerInfo_(*(a1 + 32), a2, *(a1 + 40));
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
  v10 = objc_msgSend_fetchZonesGroup(*(a1 + 32), v8, v9);
  dispatch_group_leave(v10);
}

void sub_22524404C(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252441D4;
  block[3] = &unk_2785494E8;
  v19 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v20 = v2;
  v21 = v3;
  v22 = *(a1 + 56);
  v4 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v5, v4);
  v8 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v6, v7);
  dispatch_async(v8, v4);

  v11 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v9, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2252443CC;
  v17[3] = &unk_278545A00;
  v17[4] = *(a1 + 48);
  dispatch_async(v11, v17);

  if (*(a1 + 57) == 1)
  {
    v14 = objc_msgSend_error(*(a1 + 48), v12, v13);

    if (v14)
    {
      objc_msgSend_cancelAndDisablePerRequestCallbackBlocks(*(a1 + 32), v15, v16);
    }

    objc_msgSend_resumeCallbackQueue(*(a1 + 32), v15, v16);
  }

  objc_msgSend_disablePerRequestCallbackBlocks(*(a1 + 32), v12, v13);
}

void sub_2252441D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_isCancelled(*(a1 + 32), a2, a3) & 1) == 0)
  {
    v6 = objc_msgSend_error(*(a1 + 40), v4, v5);

    if (v6)
    {
      v9 = objc_msgSend_error(*(a1 + 40), v7, v8);
      objc_msgSend_setError_(*(a1 + 48), v10, v9);

      v28 = objc_msgSend_perRequestGroup(*(a1 + 32), v11, v12);
      dispatch_group_leave(v28);
    }

    else
    {
      objc_msgSend__handleFetchDatabaseChangesRequestFinishedWithSchedulerInfo_(*(a1 + 48), v7, *(a1 + 32));
      if (objc_msgSend_fetchAllChanges(*(a1 + 48), v13, v14) && (objc_msgSend_status(*(a1 + 40), v15, v16) != 2 || *(a1 + 56) == 1))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v17 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v23 = *(a1 + 40);
          v24 = v17;
          v27 = objc_msgSend_serverChangeTokenData(v23, v25, v26);
          *buf = 138412290;
          v30 = v27;
          _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another fetch request with change token %@", buf, 0xCu);
        }

        v20 = *(a1 + 48);
        v21 = objc_msgSend_serverChangeTokenData(*(a1 + 40), v18, v19);
        objc_msgSend__sendFetchDatabaseChangesRequestWithChangeToken_previousRequestSchedulerInfo_(v20, v22, v21, *(a1 + 32));
      }
    }
  }
}

void sub_2252443CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_fetchZonesGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v3);
}

void sub_225244410(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  if (v8)
  {
    objc_initWeak(&location, v8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225244594;
    block[3] = &unk_2785496D0;
    objc_copyWeak(&v20, &location);
    block[4] = WeakRetained;
    v18 = v5;
    v19 = v6;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    objc_msgSend_addPerRequestCallbackBlock_(v8, v10, v9);
    v13 = objc_msgSend_perRequestCallbackGroup(v8, v11, v12);
    v16 = objc_msgSend_perRequestCallbackQueue(v8, v14, v15);
    dispatch_group_async(v13, v16, v9);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_225244578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225244594(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v8 = objc_msgSend_recordZoneWithIDChangedBlock(*(a1 + 32), v6, v7);

    if (v8)
    {
      v11 = objc_msgSend_recordZoneWithIDChangedBlock(*(a1 + 32), v9, v10);
      (*(v11 + 2))(v11, *(a1 + 40), *(a1 + 48));
    }
  }
}

void sub_225244640(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    objc_initWeak(&location, v5);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_2252447A4;
    v17 = &unk_278546EE0;
    objc_copyWeak(&v20, &location);
    v18 = WeakRetained;
    v19 = v3;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v14);
    objc_msgSend_addPerRequestCallbackBlock_(v5, v7, v6, v14, v15, v16, v17, v18);
    v10 = objc_msgSend_perRequestCallbackGroup(v5, v8, v9);
    v13 = objc_msgSend_perRequestCallbackQueue(v5, v11, v12);
    dispatch_group_async(v10, v13, v6);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_225244788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252447A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v18 = objc_msgSend_container(*(a1 + 32), v6, v7);
    v10 = objc_msgSend_recordCache(v18, v8, v9);
    objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v10, v11, v18, *(a1 + 40));

    v14 = objc_msgSend_recordZoneWithIDWasDeletedBlock(*(a1 + 32), v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_recordZoneWithIDWasDeletedBlock(*(a1 + 32), v15, v16);
      v17[2](v17, *(a1 + 40));
    }
  }
}

void sub_225244880(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    objc_initWeak(&location, v5);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_2252449E4;
    v17 = &unk_278546EE0;
    objc_copyWeak(&v20, &location);
    v18 = WeakRetained;
    v19 = v3;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v14);
    objc_msgSend_addPerRequestCallbackBlock_(v5, v7, v6, v14, v15, v16, v17, v18);
    v10 = objc_msgSend_perRequestCallbackGroup(v5, v8, v9);
    v13 = objc_msgSend_perRequestCallbackQueue(v5, v11, v12);
    dispatch_group_async(v10, v13, v6);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_2252449C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252449E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v18 = objc_msgSend_container(*(a1 + 32), v6, v7);
    v10 = objc_msgSend_recordCache(v18, v8, v9);
    objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v10, v11, v18, *(a1 + 40));

    v14 = objc_msgSend_recordZoneWithIDWasPurgedBlock(*(a1 + 32), v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_recordZoneWithIDWasPurgedBlock(*(a1 + 32), v15, v16);
      v17[2](v17, *(a1 + 40));
    }
  }
}

void sub_225244AC0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    objc_initWeak(&location, v5);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_225244C24;
    v17 = &unk_278546EE0;
    objc_copyWeak(&v20, &location);
    v18 = WeakRetained;
    v19 = v3;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v14);
    objc_msgSend_addPerRequestCallbackBlock_(v5, v7, v6, v14, v15, v16, v17, v18);
    v10 = objc_msgSend_perRequestCallbackGroup(v5, v8, v9);
    v13 = objc_msgSend_perRequestCallbackQueue(v5, v11, v12);
    dispatch_group_async(v10, v13, v6);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_225244C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225244C24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v18 = objc_msgSend_container(*(a1 + 32), v6, v7);
    v10 = objc_msgSend_recordCache(v18, v8, v9);
    objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v10, v11, v18, *(a1 + 40));

    v14 = objc_msgSend_recordZoneWithIDWasDeletedDueToEncryptedDataResetBlock(*(a1 + 32), v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_recordZoneWithIDWasDeletedDueToEncryptedDataResetBlock(*(a1 + 32), v15, v16);
      v17[2](v17, *(a1 + 40));
    }
  }
}

void sub_225244D00(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    objc_initWeak(&location, v5);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225244E78;
    block[3] = &unk_2785496D0;
    objc_copyWeak(&v18, &location);
    block[4] = WeakRetained;
    v16 = v3;
    v6 = v5;
    v17 = v6;
    v7 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    objc_msgSend_addPerRequestCallbackBlock_(v6, v8, v7);
    v11 = objc_msgSend_perRequestCallbackGroup(v6, v9, v10);
    v14 = objc_msgSend_perRequestCallbackQueue(v6, v12, v13);
    dispatch_group_async(v11, v14, v7);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void sub_225244E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225244E78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    MEMORY[0x2821F9670](v6, sel__handleAnonymousZoneDataObjects_schedulerInfo_, v7);
  }
}

void sub_2252451A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2252451CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252453D0;
  block[3] = &unk_27854AEB8;
  objc_copyWeak(&v26, &location);
  block[4] = *(a1 + 40);
  objc_copyWeak(&v27, (a1 + 56));
  v7 = v5;
  v8 = *(a1 + 48);
  v24 = v7;
  v25 = v8;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v10, v9);
  v13 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), v11, v12);
  v16 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v14, v15);
  dispatch_group_async(v13, v16, v9);

  v19 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v17, v18);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2252458A4;
  v20[3] = &unk_2785476F0;
  objc_copyWeak(&v22, (a1 + 56));
  v21 = *(a1 + 32);
  dispatch_async(v19, v20);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void sub_2252453AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2252453D0(id *a1)
{
  v75 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v8 = objc_msgSend_unitTestOverrides(a1[4], v6, v7);
      v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"FailAnonymousShareDecryption");

      if (v10)
      {
        v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBBF50], 1000, @"Unable to decrypt encrypted anonymous share.");
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v13 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v66 = a1[4];
          v67 = v13;
          v70 = objc_msgSend_operationID(v66, v68, v69);
          v71 = 138543618;
          v72 = v70;
          v73 = 2112;
          v74 = v12;
          _os_log_error_impl(&dword_22506F000, v67, OS_LOG_TYPE_ERROR, "Override FailAnonymousShareDecryption: Finishing daemon operation %{public}@ due to client-returned error %@", &v71, 0x16u);
        }

        objc_msgSend_finishWithError_(a1[4], v14, v12);
      }
    }

    v16 = objc_loadWeakRetained(a1 + 8);
    if (!a1[5])
    {
      v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBBF50], 1000, @"Unable to decrypt encrypted anonymous share.");
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v61 = a1[4];
        v62 = v32;
        v65 = objc_msgSend_operationID(v61, v63, v64);
        v71 = 138543618;
        v72 = v65;
        v73 = 2112;
        v74 = v25;
        _os_log_error_impl(&dword_22506F000, v62, OS_LOG_TYPE_ERROR, "Finishing daemon operation %{public}@ due to client-returned error %@", &v71, 0x16u);
      }

      objc_msgSend_finishWithError_(a1[4], v33, v25);
      goto LABEL_32;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v53 = a1[5];
      v54 = v17;
      v57 = objc_msgSend_zoneID(v53, v55, v56);
      v60 = objc_msgSend_parentZoneID(a1[5], v58, v59);
      v71 = 138412546;
      v72 = v57;
      v73 = 2112;
      v74 = v60;
      _os_log_debug_impl(&dword_22506F000, v54, OS_LOG_TYPE_DEBUG, "Handling encrypted anonymous share processing for zone with ID %@, parent zone ID %@", &v71, 0x16u);
    }

    if (objc_msgSend_changeType(a1[6], v18, v19) == 1)
    {
      v22 = objc_msgSend_recordZoneWithIDChangedBlock(v16, v20, v21);

      if (v22)
      {
        v25 = objc_msgSend_recordZoneWithIDChangedBlock(v16, v23, v24);
        v28 = objc_msgSend_zoneID(a1[5], v26, v27);
        v31 = objc_msgSend_parentZoneID(a1[5], v29, v30);
        (v25)[2](v25, v28, v31);

LABEL_32:
      }
    }

    else if (objc_msgSend_changeType(a1[6], v20, v21) == 2)
    {
      if (objc_msgSend_deleteType(a1[6], v34, v35) == 2)
      {
        v38 = objc_msgSend_recordZoneWithIDWasPurgedBlock(v16, v36, v37);

        if (!v38)
        {
          goto LABEL_33;
        }

        v41 = objc_msgSend_recordZoneWithIDWasPurgedBlock(v16, v39, v40);
      }

      else if (objc_msgSend_deleteType(a1[6], v36, v37) == 3)
      {
        v46 = objc_msgSend_recordZoneWithIDWasDeletedDueToEncryptedDataResetBlock(v16, v44, v45);

        if (!v46)
        {
          goto LABEL_33;
        }

        v41 = objc_msgSend_recordZoneWithIDWasDeletedDueToEncryptedDataResetBlock(v16, v47, v48);
      }

      else
      {
        v49 = objc_msgSend_recordZoneWithIDWasDeletedBlock(v16, v44, v45);

        if (!v49)
        {
          goto LABEL_33;
        }

        v41 = objc_msgSend_recordZoneWithIDWasDeletedBlock(v16, v50, v51);
      }

      v25 = v41;
      v52 = objc_msgSend_zoneID(a1[5], v42, v43);
      (v25[2])(v25, v52);

      goto LABEL_32;
    }

LABEL_33:
  }
}

void sub_2252458A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), v2, v3);
  dispatch_group_leave(v4);

  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_msgSend_fetchZonesGroup(WeakRetained, v5, v6);
    dispatch_group_leave(v8);

    v7 = WeakRetained;
  }
}

void sub_225245FA4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22524610C;
  v11[3] = &unk_27854AF08;
  objc_copyWeak(&v12, &location);
  objc_msgSend_setRecordChangedBlock_(v3, v4, v11);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252461B0;
  v9[3] = &unk_278547098;
  objc_copyWeak(&v10, &location);
  objc_msgSend_setCompletionBlock_(v3, v5, v9);
  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7);
  dispatch_group_enter(v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_2252460DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_22524610C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v8 && CKIsPCSError())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = objc_msgSend_mutableCorruptRecords(WeakRetained, v10, v11);
    objc_msgSend_addObject_(v12, v13, v7);
  }
}

void sub_2252461B0(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Done checking PCS for records in all zones", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_msgSend_stateTransitionGroup(WeakRetained, v4, v5);
  dispatch_group_leave(v6);
}

void sub_225246370(uint64_t a1, void *a2)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225246468;
  v10[3] = &unk_27854AF30;
  v10[4] = *(a1 + 32);
  v3 = a2;
  objc_msgSend_setRecordZoneFetchedProgressBlock_(v3, v4, v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225246620;
  v9[3] = &unk_278545A00;
  v9[4] = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v5, v9);

  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7);
  dispatch_group_enter(v8);
}

void sub_225246468(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = *MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC880];
  if (!v7 || v9)
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v19 = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Error fetching zone %@: %@", &v19, 0x16u);
    }
  }

  else
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v19 = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Zone with ID %@ was fetched: %@", &v19, 0x16u);
    }

    v16 = objc_msgSend_fetchedZones(*(a1 + 32), v14, v15);
    objc_msgSend_addObject_(v16, v17, v7);
  }
}

void sub_225246620(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Done fetching zones", v6, 2u);
  }

  v5 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v3, v4);
  dispatch_group_leave(v5);
}

void sub_2252495DC(uint64_t a1, void *a2)
{
  v11 = a2;
  v5 = objc_msgSend_zoneKeysRemoved(v11, v3, v4);
  objc_msgSend_setZoneKeysRemoved_(v11, v6, *(a1 + 32) + v5);
  v9 = objc_msgSend_zoneishKeysRemoved(v11, v7, v8);
  objc_msgSend_setZoneishKeysRemoved_(v11, v10, *(a1 + 40) + v9);
}

void sub_22524964C(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

void sub_225249694(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_zoneKeysRolled(v6, v2, v3);
  objc_msgSend_setZoneKeysRolled_(v6, v5, v4 + 1);
}

void sub_225249B80(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  objc_initWeak(&from, *(a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225249D04;
  v9[3] = &unk_27854ACB8;
  objc_copyWeak(&v10, &from);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225249D7C;
  v6[3] = &unk_278548748;
  objc_copyWeak(&v7, &from);
  objc_copyWeak(&v8, &location);
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_225249CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_225249D04(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordZoneSaved_error_(WeakRetained, v8, v7, v6);
}

void sub_225249D7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (!v4)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v10 = objc_msgSend_error(v7, v8, v9);
    objc_msgSend_setError_(WeakRetained, v11, v10);
  }

  v12 = objc_msgSend_stateTransitionGroup(WeakRetained, v5, v6);
  dispatch_group_leave(v12);
}

void sub_22524A15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a36, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22524A1B8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = objc_msgSend_zoneID(a2, a2, a3);
  objc_msgSend_addObject_(v4, v6, v5);

  if (!--*(*(*(a1 + 48) + 8) + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    objc_msgSend_fetchZonesFromServer_(*(a1 + 32), v7, *(*(*(a1 + 40) + 8) + 40));
    v10 = objc_msgSend_stateTransitionGroup(WeakRetained, v8, v9);
    dispatch_group_leave(v10);
  }
}

void sub_22524A7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22524A7F0(uint64_t a1, void *a2)
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

void sub_22524ADE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v37 - 184), 8);
  _Block_object_dispose((v37 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_22524AE40(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v8, v9);

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v12 = objc_msgSend_zoneishProtectionData(*(a1 + 32), v10, v11);
    if (v12 && (v15 = v12, v16 = objc_msgSend_pcs(v5, v13, v14), v15, v16))
    {
      v18 = objc_msgSend_container(*(a1 + 40), v13, v17);
      v21 = objc_msgSend_pcsManager(v18, v19, v20);
      v24 = objc_msgSend_zoneishProtectionData(*(a1 + 32), v22, v23);
      v27 = objc_msgSend_pcs(v5, v25, v26);
      v28 = *(*(a1 + 56) + 8);
      obj = *(v28 + 40);
      v30 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v21, v29, v24, 1, v27, &obj);
      objc_storeStrong((v28 + 40), obj);

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v32 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v36 = *(*(*(a1 + 56) + 8) + 40);
          *buf = 138412290;
          v39 = v36;
          _os_log_error_impl(&dword_22506F000, v32, OS_LOG_TYPE_ERROR, "Couldn't decode zoneishPCS data: %@", buf, 0xCu);
        }
      }

      objc_msgSend_setZoneishPCS_(v5, v31, v30);
      if (v30)
      {
        CFRelease(v30);
      }
    }

    else
    {
      objc_msgSend_setZoneishPCS_(v5, v13, 0);
    }
  }

  v33 = *(*(a1 + 64) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v5;
  v35 = v5;

  dispatch_group_leave(*(a1 + 48));
}

void sub_22524B08C(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v12 = objc_msgSend_zoneID(v8, v10, v11);
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Warn: Failed to decrypt zone %@ with Reminders identity: %@", &v13, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_22524B1C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pcs(*(*(*(a1 + 56) + 8) + 40), a2, a3);
  v9 = objc_msgSend_zoneishPCS(*(*(*(a1 + 56) + 8) + 40), v5, v6);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v10 = objc_msgSend_unitTestOverrides(*(a1 + 32), v7, v8);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"FailZonePCSDecryptionOnZoneFetch");

    if (v12)
    {
      v13 = objc_msgSend_dataUsingEncoding_(@"EncryptionBreaker", v7, 4);
      objc_msgSend_setProtectionData_(*(a1 + 40), v14, v13);

      v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 5004, @"Couldn't decode zone PCS data");
      v17 = *(*(a1 + 64) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v9 = 0;
      v4 = 0;
    }
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v45 = *(a1 + 40);
      v46 = v19;
      v49 = objc_msgSend_zoneID(v45, v47, v48);
      v50 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412546;
      v53 = v49;
      v54 = 2112;
      v55 = v50;
      _os_log_error_impl(&dword_22506F000, v46, OS_LOG_TYPE_ERROR, "Error handling zone PCS for zone %@: %@", buf, 0x16u);
    }

    v22 = *(a1 + 32);
    v23 = objc_msgSend_zoneID(*(a1 + 40), v20, v21);
    objc_msgSend_setPCSData_forFetchedZoneID_(v22, v24, 0, v23);
  }

  else
  {
    objc_msgSend_setZonePCS_(*(a1 + 40), v7, v4);
    objc_msgSend_setZoneishPCS_(*(a1 + 40), v32, v9);
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v35 = *(*(a1 + 64) + 8);
    obj = *(v35 + 40);
    v37 = objc_msgSend__locked_checkAndUpdateZonePCSIfNeededForZone_error_(v33, v36, v34, &obj);
    objc_storeStrong((v35 + 40), obj);
    v38 = *(*(*(a1 + 64) + 8) + 40);
    if (v37)
    {
      if (!v38)
      {
        v39 = *(a1 + 40);
        v40 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(*(a1 + 32), v25, v26);
        v43 = objc_msgSend_zoneID(*(a1 + 40), v41, v42);
        objc_msgSend_setObject_forKeyedSubscript_(v40, v44, v39, v43);

        *(*(*(a1 + 72) + 8) + 24) = 0;
      }
    }

    else if (!v38)
    {
      objc_msgSend__cachePCSOnRecordZone_(*(a1 + 32), v25, *(a1 + 40));
    }
  }

  if (objc_msgSend_ignorePCSFailures(*(a1 + 32), v25, v26))
  {
    v29 = *(*(a1 + 64) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = 0;
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    objc_msgSend__locked_callbackForRecordZone_zoneID_error_(*(a1 + 32), v27, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 64) + 8) + 40));
  }

  v31 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v27, v28);
  dispatch_group_leave(v31);
}

void sub_22524B9E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_22524BA58(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        v15 = [CKDAnonymousZoneDataObject alloc];
        v17 = objc_msgSend_initWithEncryptedData_(v15, v16, v14, v22);
        objc_msgSend_addObject_(v7, v18, v17);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v19, &v22, v26, 16);
    }

    while (v11);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleAnonymousZoneDataObjects_responsecode_(WeakRetained, v21, v7, v6);
}

void sub_22524BBC4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordZoneFetch_zoneID_responseCode_error_(WeakRetained, v13, v12, v11, v10, v9);
}

void sub_22524BC6C(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277CBC560];
  v6 = *MEMORY[0x277CBC120];
  v7 = sub_2253962A4(v3);
  v10 = objc_msgSend_request(WeakRetained, v8, v9);
  v11 = sub_225395734(v10, v3);
  v14 = objc_msgSend_error(v3, v12, v13);

  v17 = objc_msgSend_errorDescription(v14, v15, v16);
  v19 = objc_msgSend_errorWithDomain_code_userInfo_format_(v5, v18, v6, v7, v11, @"Error fetching all record zones from server: %@", v17);

  v20 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v21 = MEMORY[0x277CBC830];
  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v32 = v22;
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v37 = objc_msgSend_ckShortDescription(WeakRetained, v35, v36);
    *buf = 138544130;
    v39 = v34;
    v40 = 2048;
    v41 = WeakRetained;
    v42 = 2114;
    v43 = v37;
    v44 = 2112;
    v45 = v19;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Fetch record zones operation <%{public}@: %p; %{public}@> hit top-level error %@", buf, 0x2Au);
  }

  v25 = objc_msgSend_error(WeakRetained, v23, v24);

  if (v25)
  {
    if (*v20 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
    {
      v28 = v27;
      v31 = objc_msgSend_error(WeakRetained, v29, v30);
      *buf = 138412546;
      v39 = v19;
      v40 = 2112;
      v41 = v31;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Not propagating operation error: %@, in favor of preceding error: %@", buf, 0x16u);
    }
  }

  else
  {
    objc_msgSend_setError_(WeakRetained, v26, v19);
  }
}

void sub_22524BF3C(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = MEMORY[0x277CBC830];
  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v25 = v6;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v30 = objc_msgSend_ckShortDescription(WeakRetained, v28, v29);
    v33 = objc_msgSend_error(v3, v31, v32);
    v34 = 138544130;
    v35 = v27;
    v36 = 2048;
    v37 = WeakRetained;
    v38 = 2114;
    v39 = v30;
    v40 = 2112;
    v41 = v33;
    _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Fetch record zones operation <%{public}@: %p; %{public}@> request finished with error %@", &v34, 0x2Au);
  }

  v9 = objc_msgSend_error(WeakRetained, v7, v8);

  v12 = objc_msgSend_error(v3, v10, v11);
  v14 = v12;
  if (!v9)
  {
    objc_msgSend_setError_(WeakRetained, v13, v12);
    goto LABEL_12;
  }

  if (v14)
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      v14 = v17;
      v20 = objc_msgSend_error(v3, v18, v19);
      v23 = objc_msgSend_error(WeakRetained, v21, v22);
      v34 = 138412546;
      v35 = v20;
      v36 = 2112;
      v37 = v23;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Not propagating operation request error: %@, in favor of preceding error: %@", &v34, 0x16u);

LABEL_12:
    }
  }

  v24 = objc_msgSend_stateTransitionGroup(WeakRetained, v15, v16);
  dispatch_group_leave(v24);
}

void sub_22524CE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22524CE50(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v7, v8);
  v9 = *MEMORY[0x277CBC878];
  v10 = *MEMORY[0x277CBC880];
  if (v5 || (a2 & 1) == 0)
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = 138543618;
      v21 = v19;
      v22 = 2112;
      v23 = v5;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "User key sync to update signing identities failed for operation %{public}@: %@", &v20, 0x16u);
    }

    objc_msgSend_setError_(WeakRetained, v15, v5);
  }

  else
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v20 = 138543362;
      v21 = v13;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "User key sync to update signing identities succeeded for operation %{public}@", &v20, 0xCu);
    }
  }

  objc_msgSend_setDidSynchronizeSigningIdentities_(WeakRetained, v12, 1);
  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v16, v17);
  dispatch_group_leave(v18);
}

void sub_22524D388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22524D3B8(uint64_t a1, char a2, void *a3, void *a4)
{
  v103 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v10, v11);
  v12 = MEMORY[0x277CBC878];
  v13 = *MEMORY[0x277CBC878];
  v14 = MEMORY[0x277CBC880];
  v15 = *MEMORY[0x277CBC880];
  if (!v7 && (a2 & 1) != 0)
  {
    if (v15 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v13);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      *buf = 138543362;
      v100 = v19;
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "User key sync succeeded for operation %{public}@", buf, 0xCu);
    }

    v20 = objc_msgSend_container(WeakRetained, v17, v18);
    v23 = objc_msgSend_pcsManager(v20, v21, v22);
    v25 = objc_msgSend_currentIdentityPublicKeyIDForServiceType_error_(v23, v24, 0, 0);

    if (v25 && (objc_msgSend_isEqualToString_(v25, v26, *(a1 + 48)) & 1) == 0)
    {
      v72 = objc_msgSend_container(WeakRetained, v26, v27);
      v75 = objc_msgSend_pcsManager(v72, v73, v74);
      v78 = objc_msgSend_identityManager(v75, v76, v77);
      v37 = objc_msgSend_PCSServiceStringFromCKServiceType_(v78, v79, 0);

      if (*v14 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v80 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v100 = v37;
        v101 = 2112;
        v102 = v25;
        _os_log_debug_impl(&dword_22506F000, v80, OS_LOG_TYPE_DEBUG, "The service %@ has a new current identity with public key ID: %@", buf, 0x16u);
      }

      objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v81, &unk_28385D820);
    }

    else
    {
      if (*(a1 + 64) != 1 || !objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(*(a1 + 40), v26, v27))
      {
        goto LABEL_44;
      }

      v29 = objc_msgSend_container(WeakRetained, v26, v28);
      v32 = objc_msgSend_pcsManager(v29, v30, v31);
      v35 = objc_msgSend_identityManager(v32, v33, v34);
      v37 = objc_msgSend_PCSServiceStringFromCKServiceType_(v35, v36, 0);

      if (*v14 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v38 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v100 = v37;
        _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "User key sync did not populate the current identity for the service %@", buf, 0xCu);
      }

      objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v39, &unk_28385D840);
      objc_msgSend_setError_(WeakRetained, v40, 0);
    }

LABEL_44:
    objc_msgSend_setDidSynchronizeUserKeyRegistry_(WeakRetained, v26, 1);
    v84 = objc_msgSend_zonesWaitingOnKeyRegistrySync(WeakRetained, v82, v83);
    objc_msgSend_removeAllObjects(v84, v85, v86);

    goto LABEL_45;
  }

  if (v15 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v13);
  }

  v41 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v43 = *(a1 + 32);
    *buf = 138543618;
    v100 = v43;
    v101 = 2112;
    v102 = v7;
    _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_INFO, "User key sync failed for operation %{public}@ with error %@", buf, 0x16u);
  }

  objc_msgSend_setDidSynchronizeUserKeyRegistry_(WeakRetained, v42, 0);
  v46 = objc_msgSend_container(WeakRetained, v44, v45);
  v49 = objc_msgSend_pcsManager(v46, v47, v48);
  IsManatee = objc_msgSend_currentServiceIsManatee(v49, v50, v51);

  if (IsManatee)
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v55 = objc_msgSend_zonesWaitingOnKeyRegistrySync(WeakRetained, v53, v54, 0);
    v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v94, v98, 16);
    if (v57)
    {
      v60 = v57;
      v61 = *v95;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v95 != v61)
          {
            objc_enumerationMutation(v55);
          }

          v63 = *(*(&v94 + 1) + 8 * i);
          v64 = objc_msgSend_retryableErrorsByZoneID(WeakRetained, v58, v59);
          objc_msgSend_setObject_forKeyedSubscript_(v64, v65, v7, v63);
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v58, &v94, v98, 16);
      }

      while (v60);
    }

    v12 = MEMORY[0x277CBC878];
    v14 = MEMORY[0x277CBC880];
  }

  if (objc_msgSend_isCloudCoreSessionNoLongerValidError(v7, v53, v54))
  {
    goto LABEL_30;
  }

  objc_msgSend_setError_(v8, v66, v7);
  objc_msgSend_setOverallResult_(v8, v68, @"failure");
  if (*(a1 + 64) == 1 && objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(*(a1 + 40), v67, v69))
  {
    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v12);
    }

    v70 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v90 = v70;
      v93 = objc_msgSend_operationID(WeakRetained, v91, v92);
      *buf = 138412290;
      v100 = v93;
      _os_log_error_impl(&dword_22506F000, v90, OS_LOG_TYPE_ERROR, "Failing operation %@ due to the failed user key sync.", buf, 0xCu);
    }

    objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v71, &unk_28385D800);
LABEL_30:
    objc_msgSend_setError_(WeakRetained, v66, v7);
  }

LABEL_45:
  objc_msgSend_setKeySyncAnalytics_(WeakRetained, v67, v8);
  v89 = objc_msgSend_stateTransitionGroup(WeakRetained, v87, v88);
  dispatch_group_leave(v89);
}

void sub_22524D9D4(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_22524DA1C(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_identitiesRolledOnZoneSave(v6, v2, v3);
  objc_msgSend_setIdentitiesRolledOnZoneSave_(v6, v5, v4 + 1);
}

void sub_22524DA64(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_22524E418(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v10 = objc_msgSend_saveCompletionBlock(*(a1 + 32), v5, v6);
    v9 = objc_msgSend_zoneID(*(a1 + 40), v7, v8);
    (*(v10 + 2))(v10, v9, 0, *(a1 + 48));
  }
}

void sub_22524F1EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_22524F22C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_saveCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), 0);
  }
}

void sub_22524F2B4(uint64_t a1, void *a2)
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

void sub_22524F3C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_saveCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

void sub_22524F774(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_deleteCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_deleteCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22524FFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 - 144));
  _Unwind_Resume(a1);
}

void sub_225250008(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v24 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v19 = WeakRetained;
  if (WeakRetained)
  {
    v20 = objc_msgSend_recordZonesByZoneID(WeakRetained, v17, v18);
    v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v24);

    if (v22)
    {
      objc_msgSend__handleRecordZoneSaved_responseCode_serverCapabilities_expirationDate_expired_etag_(v19, v23, v24, v13, a4, v14, a6, v15);
    }

    else
    {
      objc_msgSend__handleRecordZoneDeleted_responseCode_(v19, v23, v24, v13);
    }
  }
}

void sub_22525010C(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v6 = objc_msgSend_error(v3, v4, v5);

    if (!v6)
    {
LABEL_19:
      v29 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
      dispatch_group_leave(v29);

      goto LABEL_20;
    }

    v9 = objc_msgSend_error(v3, v7, v8);
    if ((objc_msgSend_needsSynchronizeSigningIdentities(WeakRetained, v10, v11) & 1) == 0)
    {
      v16 = objc_msgSend_domain(v9, v12, v13);
      if (v16 == *MEMORY[0x277CBC120] && objc_msgSend_code(v9, v14, v15) == 5000)
      {
        v19 = objc_msgSend_description(v9, v17, v18);
        v22 = objc_msgSend_lowercaseString(v19, v20, v21);
        v24 = objc_msgSend_containsString_(v22, v23, @"failed to create cryptographic signature");

        if (v24)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v25 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v30 = 138412290;
            v31 = v9;
            _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Signing identity missing when modifying record zones: %@", &v30, 0xCu);
          }

          objc_msgSend_setNeedsSynchronizeSigningIdentities_(WeakRetained, v26, 1);
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v30 = 138412290;
      v31 = v9;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Error modifying record zones: %@", &v30, 0xCu);
    }

    objc_msgSend_setError_(WeakRetained, v28, v9);
    goto LABEL_18;
  }

LABEL_20:
}

void sub_225250C9C(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5 || v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 32);
      v28 = v14;
      v31 = objc_msgSend_parent(v27, v29, v30);
      v34 = objc_msgSend_zoneID(v31, v32, v33);
      *buf = 138412546;
      v37 = v34;
      v38 = 2112;
      v39 = v8;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Failed fetching parent PCS for zone's parent %@: %@", buf, 0x16u);
    }

    v17 = MEMORY[0x277CBC560];
    v18 = *MEMORY[0x277CBC120];
    v19 = objc_msgSend_zoneID(*(a1 + 32), v15, v16);
    v11 = objc_msgSend_errorWithDomain_code_userInfo_format_(v17, v20, v18, 5005, 0, @"Unable to fetch parent zone's PCS for zone %@. Ensure the parent zone is saved in the same batch or already exists on the server.", v19);

    objc_msgSend_setError_(*(a1 + 40), v21, v11);
  }

  else
  {
    v9 = objc_msgSend__addParentPCS_toZonePCS_(*(a1 + 40), v7, v5, *(a1 + 48));
    if (v9)
    {
      v11 = v9;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v12 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v37 = v11;
        v13 = "Error adding fetched parent PCS to child zone's PCS: %@";
LABEL_21:
        _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, v13, buf, 0xCu);
      }
    }

    else
    {
      v24 = *(a1 + 32);
      v23 = *(a1 + 40);
      v25 = *(a1 + 48);
      v35 = 0;
      updated = objc_msgSend__updateZone_withNewPCS_error_(v23, v10, v24, v25, &v35);
      v11 = v35;
      if ((updated & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v12 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v37 = v11;
          v13 = "Error updating zone with new PCS: %@";
          goto LABEL_21;
        }
      }
    }
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))();
  }
}

void sub_225251390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2252513F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v7, v8);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
  v14 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void sub_2252514A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v146 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_pcs(*(*(*(a1 + 64) + 8) + 40), a2, a3);
  v7 = 0x277CBC000uLL;
  v8 = MEMORY[0x277CBC120];
  if (*MEMORY[0x277CBC810] != 1)
  {
    goto LABEL_8;
  }

  v9 = objc_msgSend_deviceContext(*(a1 + 32), v4, v5);
  v12 = objc_msgSend_testDeviceReference(v9, v10, v11);
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_zoneID(*(a1 + 40), v13, v14);
    v19 = objc_msgSend_zoneName(v16, v17, v18);
    isEqualToString = objc_msgSend_isEqualToString_(v19, v20, @"NO_ZONE_PCS_FOR_YOU");

    if (!isEqualToString)
    {
      goto LABEL_6;
    }

    v24 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v22, *v8, 5005, @"Couldn't create a new PCSShareProtectionRef because unit testing");
    v25 = *(*(a1 + 72) + 8);
    v9 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

LABEL_6:
  v26 = objc_msgSend_unitTestOverrides(*(a1 + 48), v22, v23);
  v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, @"ForceAddCKIdentityToZonePCS");

  if (v28)
  {
    v29 = objc_msgSend_pcsManager(*(a1 + 32), v4, v5);
    v31 = objc_msgSend_addIdentityForService_toPCS_(v29, v30, 3, v6);
    v32 = *(*(a1 + 72) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;
  }

LABEL_8:
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v72 = *(a1 + 40);
      v73 = v34;
      v76 = objc_msgSend_zoneID(v72, v74, v75);
      v77 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412546;
      v143 = v76;
      v144 = 2112;
      v145 = v77;
      _os_log_error_impl(&dword_22506F000, v73, OS_LOG_TYPE_ERROR, "Couldn't create a PCS object for the zone %@: %@", buf, 0x16u);
    }

    v37 = 0;
    v38 = 0;
    goto LABEL_53;
  }

  v39 = objc_msgSend_pcsManager(*(a1 + 32), v4, v5);
  v40 = *(*(a1 + 72) + 8);
  obj = *(v40 + 40);
  v38 = objc_msgSend_dataFromZonePCS_error_(v39, v41, v6, &obj);
  objc_storeStrong((v40 + 40), obj);

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v43 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v121 = *(a1 + 40);
      v122 = v43;
      v125 = objc_msgSend_zoneID(v121, v123, v124);
      v126 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412546;
      v143 = v125;
      v144 = 2112;
      v145 = v126;
      _os_log_error_impl(&dword_22506F000, v122, OS_LOG_TYPE_ERROR, "Error creating PCS data for zone %@: %@", buf, 0x16u);
    }

    v37 = 0;
    goto LABEL_53;
  }

  if (!objc_msgSend__shouldUseZoneishPCSForZone_(*(a1 + 48), v42, *(a1 + 40)))
  {
    v37 = 0;
    v49 = 0;
    goto LABEL_28;
  }

  v46 = objc_msgSend_pcsManager(*(a1 + 32), v44, v45);
  v47 = *(*(a1 + 72) + 8);
  v140 = *(v47 + 40);
  v49 = objc_msgSend_createRecordPCSWithZonePCS_sharePCS_createLite_error_(v46, v48, v6, 0, 0, &v140);
  objc_storeStrong((v47 + 40), v140);

  v50 = MEMORY[0x277CBC878];
  v51 = *MEMORY[0x277CBC878];
  v52 = MEMORY[0x277CBC880];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v51);
    }

    v8 = MEMORY[0x277CBC120];
    v53 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v127 = *(a1 + 40);
      v128 = v53;
      v131 = objc_msgSend_zoneID(v127, v129, v130);
      v132 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412546;
      v143 = v131;
      v144 = 2112;
      v145 = v132;
      _os_log_error_impl(&dword_22506F000, v128, OS_LOG_TYPE_ERROR, "Couldn't create a zoneish PCS for zone %@: %@", buf, 0x16u);
    }

    v54 = 0;
    v37 = 0;
    goto LABEL_49;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v51);
  }

  v95 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v98 = *(a1 + 40);
    v99 = v95;
    v102 = objc_msgSend_zoneID(v98, v100, v101);
    v104 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v103, v49);
    v107 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v104, v105, v106);
    *buf = 138412546;
    v143 = v102;
    v144 = 2112;
    v145 = v107;
    _os_log_impl(&dword_22506F000, v99, OS_LOG_TYPE_INFO, "Created zoneish PCS for zone %@ with key %@", buf, 0x16u);

    v7 = 0x277CBC000;
  }

  v108 = objc_msgSend_pcsManager(*(a1 + 32), v96, v97);
  v109 = *(*(a1 + 72) + 8);
  v139 = *(v109 + 40);
  v37 = objc_msgSend_dataFromRecordPCS_error_(v108, v110, v49, &v139);
  objc_storeStrong((v109 + 40), v139);

  if (v37 && !*(*(*(a1 + 72) + 8) + 40))
  {
LABEL_28:
    v55 = objc_msgSend_deviceContext(*(a1 + 32), v44, v45);
    v58 = objc_msgSend_testDeviceReference(v55, v56, v57);
    if (v58)
    {
      v61 = v58;
      v62 = objc_msgSend_zoneID(*(a1 + 40), v59, v60);
      v65 = objc_msgSend_zoneName(v62, v63, v64);
      v67 = objc_msgSend_isEqualToString_(v65, v66, @"NO_ZONE_PCS_FOR_SERVER");

      if (v67)
      {
        objc_msgSend_setProtectionData_(*(a1 + 40), v68, 0);
        objc_msgSend_setProtectionEtag_(*(a1 + 40), v69, 0);
        objc_msgSend_setPreviousProtectionEtag_(*(a1 + 40), v70, 0);
        objc_msgSend_setZoneishProtectionData_(*(a1 + 40), v71, 0);
        v54 = 1;
        v7 = 0x277CBC000;
        v8 = MEMORY[0x277CBC120];
        goto LABEL_49;
      }
    }

    else
    {
    }

    objc_msgSend_setProtectionData_(*(a1 + 40), v68, v38);
    v80 = objc_msgSend_protectionData(*(a1 + 40), v78, v79);
    v82 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v81, v80);
    objc_msgSend_setProtectionEtag_(*(a1 + 40), v83, v82);

    v86 = objc_msgSend_deviceContext(*(a1 + 32), v84, v85);
    v89 = objc_msgSend_testDeviceReference(v86, v87, v88);
    if (v89)
    {
      v92 = v89;
      v93 = objc_msgSend_previousProtectionEtag(*(a1 + 40), v90, v91);

      v8 = MEMORY[0x277CBC120];
      if (v93)
      {
LABEL_48:
        objc_msgSend_setZoneishProtectionData_(*(a1 + 40), v94, v37);
        objc_msgSend_setZonePCS_(*(a1 + 40), v112, v6);
        objc_msgSend_setZoneishPCS_(*(a1 + 40), v113, v49);
        v54 = 1;
        v7 = 0x277CBC000;
        goto LABEL_49;
      }
    }

    else
    {

      v8 = MEMORY[0x277CBC120];
    }

    objc_msgSend_setPreviousProtectionEtag_(*(a1 + 40), v94, 0);
    goto LABEL_48;
  }

  if (*v52 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *v50);
  }

  v8 = MEMORY[0x277CBC120];
  v111 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    v133 = *(a1 + 40);
    v134 = v111;
    v137 = objc_msgSend_zoneID(v133, v135, v136);
    v138 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 138412546;
    v143 = v137;
    v144 = 2112;
    v145 = v138;
    _os_log_error_impl(&dword_22506F000, v134, OS_LOG_TYPE_ERROR, "Couldn't create data from zoneish PCS for zone %@: %@", buf, 0x16u);
  }

  v54 = 0;
LABEL_49:
  if (v49)
  {
    CFRelease(v49);
  }

  if (v54)
  {
    v114 = 0;
    goto LABEL_54;
  }

LABEL_53:
  v115 = *(v7 + 1376);
  v116 = *v8;
  v117 = *(*(*(a1 + 72) + 8) + 40);
  v118 = objc_msgSend_zoneID(*(a1 + 40), v35, v36);
  v114 = objc_msgSend_errorWithDomain_code_error_format_(v115, v119, v116, 5005, v117, @"Couldn't create new PCS blob for zone %@", v118);

LABEL_54:
  v120 = *(a1 + 56);
  if (v120)
  {
    (*(v120 + 16))(v120, v114);
  }
}

void sub_225251FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_225252000(uint64_t a1, void *a2, void *a3)
{
  v196 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (v5)
  {
    v9 = MEMORY[0x277CBC880];
    v183 = v6;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = v10;
      v17 = objc_msgSend_zoneID(v13, v15, v16);
      *buf = 138412290;
      v193 = v17;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Fetched pcs info for zone %@. Continuing with save for that zone.", buf, 0xCu);
    }

    v18 = objc_msgSend_pcsData(v5, v11, v12);
    v21 = objc_msgSend_etag(v5, v19, v20);
    if (objc_msgSend_hasUpdatedParent(*(a1 + 32), v22, v23))
    {
      if (*v9 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v26 = MEMORY[0x277CBC830];
      v27 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v163 = v27;
        v166 = objc_msgSend_zoneID(v5, v164, v165);
        *buf = 138412290;
        v193 = v166;
        _os_log_debug_impl(&dword_22506F000, v163, OS_LOG_TYPE_DEBUG, "Removing previous parent zone from zone %@", buf, 0xCu);
      }

      v30 = objc_msgSend_container(*(a1 + 40), v28, v29);
      v33 = objc_msgSend_pcsManager(v30, v31, v32);
      v36 = objc_msgSend_pcs(v5, v34, v35);
      v191 = 0;
      v38 = objc_msgSend_removeParentZonePCSFromChildZonePCS_error_(v33, v37, v36, &v191);
      v39 = v191;

      if ((v38 & 1) == 0)
      {
        if (*v9 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v40 = *v26;
        if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
        {
          v167 = v40;
          v170 = objc_msgSend_zoneID(v5, v168, v169);
          *buf = 138412546;
          v193 = v170;
          v194 = 2112;
          v195 = v39;
          _os_log_error_impl(&dword_22506F000, v167, OS_LOG_TYPE_ERROR, "Error removing parent PCS from zone PCS %@: %@", buf, 0x16u);
        }

        if (!*(*(*(a1 + 64) + 8) + 40))
        {
          v43 = MEMORY[0x277CBC560];
          v44 = *MEMORY[0x277CBC120];
          v45 = objc_msgSend_zoneID(v5, v41, v42);
          v47 = objc_msgSend_errorWithDomain_code_error_format_(v43, v46, v44, 5001, v39, @"Couldn't remove previous parent PCS data from zone %@", v45);
          v48 = *(*(a1 + 64) + 8);
          v49 = *(v48 + 40);
          *(v48 + 40) = v47;
        }
      }
    }

    if ((objc_msgSend_hasUpdatedParent(*(a1 + 32), v24, v25) & 1) != 0 || !v18)
    {
      v52 = objc_msgSend_container(*(a1 + 40), v50, v51);
      v55 = objc_msgSend_pcsManager(v52, v53, v54);
      v58 = objc_msgSend_pcs(v5, v56, v57);
      v59 = *(*(a1 + 64) + 8);
      obj = *(v59 + 40);
      v61 = objc_msgSend_dataFromZonePCS_error_(v55, v60, v58, &obj);
      objc_storeStrong((v59 + 40), obj);

      v63 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v62, v61);

      v21 = v63;
      v18 = v61;
    }

    objc_msgSend_setProtectionData_(*(a1 + 32), v50, v18);
    objc_msgSend_setProtectionEtag_(*(a1 + 32), v64, v21);
    v67 = objc_msgSend_etag(v5, v65, v66);
    v70 = objc_msgSend_container(*(a1 + 40), v68, v69);
    v73 = objc_msgSend_deviceContext(v70, v71, v72);
    v76 = objc_msgSend_testDeviceReference(v73, v74, v75);
    if (v76)
    {
      v79 = v76;
      v80 = v9;
      v81 = objc_msgSend_previousProtectionEtag(*(a1 + 32), v77, v78);

      if (v81)
      {
        v70 = objc_msgSend_previousProtectionEtag(*(a1 + 32), v82, v83);

        if (objc_msgSend_isEqualToString_(v70, v84, @"NO_ETAG_FOR_YOU"))
        {
          v67 = 0;
          v9 = v80;
LABEL_31:

LABEL_34:
          objc_msgSend_setPreviousProtectionEtag_(*(a1 + 32), v82, v67);
          v93 = objc_msgSend_pcs(v5, v91, v92);
          objc_msgSend_setZonePCS_(*(a1 + 32), v94, v93);
          v97 = objc_msgSend_zonePCSModificationDate(v5, v95, v96);
          objc_msgSend_setZonePCSModificationDate_(*(a1 + 32), v98, v97);

          v101 = objc_msgSend_zoneishPCS(v5, v99, v100);
          v104 = objc_msgSend_zoneishPCSData(v5, v102, v103);
          if (v101 | v104)
          {
            v106 = v104;
            objc_msgSend__setEncryptionScopeNoSideEffects_(*(a1 + 32), v105, 1);
            if (v101 && !v106)
            {
              v109 = objc_msgSend_container(*(a1 + 40), v107, v108);
              v112 = objc_msgSend_pcsManager(v109, v110, v111);
              v113 = *(*(a1 + 64) + 8);
              v189 = *(v113 + 40);
              v106 = objc_msgSend_dataFromRecordPCS_error_(v112, v114, v101, &v189);
              objc_storeStrong((v113 + 40), v189);
            }

            objc_msgSend_setZoneishPCS_(*(a1 + 32), v107, v101);
          }

          else if (objc_msgSend__shouldUseZoneishPCSForZone_(*(a1 + 40), v105, *(a1 + 32)))
          {
            v117 = objc_msgSend_container(*(a1 + 40), v115, v116);
            v120 = objc_msgSend_pcsManager(v117, v118, v119);
            v123 = objc_msgSend_pcs(v5, v121, v122);
            v124 = *(*(a1 + 64) + 8);
            v188 = *(v124 + 40);
            v126 = objc_msgSend_createRecordPCSWithZonePCS_sharePCS_createLite_error_(v120, v125, v123, 0, 0, &v188);
            objc_storeStrong((v124 + 40), v188);

            if (!v126 || *(*(*(a1 + 64) + 8) + 40))
            {
              if (*v9 != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v127 = *MEMORY[0x277CBC858];
              if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
              {
                v171 = *(a1 + 32);
                v172 = v127;
                v175 = objc_msgSend_zoneID(v171, v173, v174);
                v176 = *(*(*(a1 + 64) + 8) + 40);
                *buf = 138412546;
                v193 = v175;
                v194 = 2112;
                v195 = v176;
                _os_log_error_impl(&dword_22506F000, v172, OS_LOG_TYPE_ERROR, "Couldn't create a per-zone PCS for zone %@: %@", buf, 0x16u);
              }

              if (!*(*(*(a1 + 64) + 8) + 40))
              {
                v129 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v128, *MEMORY[0x277CBC120], 5005, @"Couldn't create a per-zone PCS for zone");
                v130 = *(*(a1 + 64) + 8);
                v131 = *(v130 + 40);
                *(v130 + 40) = v129;
              }
            }

            if (*v9 != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v132 = *MEMORY[0x277CBC858];
            if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
            {
              v135 = *(a1 + 32);
              v136 = v132;
              v139 = objc_msgSend_zoneID(v135, v137, v138);
              v141 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v140, v126);
              v144 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v141, v142, v143);
              *buf = 138412546;
              v193 = v139;
              v194 = 2112;
              v195 = v144;
              _os_log_impl(&dword_22506F000, v136, OS_LOG_TYPE_INFO, "Created per-zone PCS for zone %@ with key %@", buf, 0x16u);
            }

            v145 = objc_msgSend_container(*(a1 + 40), v133, v134);
            v148 = objc_msgSend_pcsManager(v145, v146, v147);
            v149 = *(*(a1 + 64) + 8);
            v187 = *(v149 + 40);
            v106 = objc_msgSend_dataFromRecordPCS_error_(v148, v150, v126, &v187);
            objc_storeStrong((v149 + 40), v187);

            if (!v106 || *(*(*(a1 + 64) + 8) + 40))
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v152 = *MEMORY[0x277CBC858];
              if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
              {
                v177 = *(a1 + 32);
                v178 = v152;
                v181 = objc_msgSend_zoneID(v177, v179, v180);
                v182 = *(*(*(a1 + 64) + 8) + 40);
                *buf = 138412546;
                v193 = v181;
                v194 = 2112;
                v195 = v182;
                _os_log_error_impl(&dword_22506F000, v178, OS_LOG_TYPE_ERROR, "Couldn't create data from per-zone PCS for zone %@: %@", buf, 0x16u);
              }

              if (!*(*(*(a1 + 64) + 8) + 40))
              {
                v153 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v151, *MEMORY[0x277CBC120], 5005, @"Couldn't serialize a per-zone PCS for zone");
                v154 = *(*(a1 + 64) + 8);
                v155 = *(v154 + 40);
                *(v154 + 40) = v153;
              }
            }

            objc_msgSend_setZoneishPCS_(*(a1 + 32), v151, v126);
            if (v126)
            {
              CFRelease(v126);
            }
          }

          else
          {
            v106 = 0;
          }

          objc_msgSend_setZoneishProtectionData_(*(a1 + 32), v115, v106);

          v6 = v183;
          goto LABEL_64;
        }

        v67 = v70;
      }

      v9 = v80;
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v85 = *(*(*(a1 + 56) + 8) + 40);
  if (v85 && !objc_msgSend_CKIsNotFoundError(v85, v7, v8))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v156 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v157 = *(a1 + 32);
      v158 = v156;
      v161 = objc_msgSend_zoneID(v157, v159, v160);
      v162 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412546;
      v193 = v161;
      v194 = 2112;
      v195 = v162;
      _os_log_impl(&dword_22506F000, v158, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS data for zone %@: %@. Refusing to save zone.", buf, 0x16u);
    }
  }

  else if (objc_msgSend_databaseScope(*(a1 + 40), v7, v8) == 2)
  {
    dispatch_group_enter(*(a1 + 48));
    v87 = *(a1 + 32);
    v86 = *(a1 + 40);
    v184[0] = MEMORY[0x277D85DD0];
    v184[1] = 3221225472;
    v184[2] = sub_225252B4C;
    v184[3] = &unk_278548040;
    v186 = *(a1 + 64);
    v185 = *(a1 + 48);
    objc_msgSend__createNewPCSForZone_completionHandler_(v86, v88, v87, v184);
    v89 = *(*(a1 + 56) + 8);
    v90 = *(v89 + 40);
    *(v89 + 40) = 0;
  }

LABEL_64:
  dispatch_group_leave(*(a1 + 48));
}

void sub_225252B4C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_225252BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a1 + 56) + 8) + 40);
  if (v4)
  {
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    if (v6)
    {
      if (!objc_msgSend_CKIsNotFoundError(v6, v4, a3))
      {
        goto LABEL_6;
      }

      v4 = *(*(*(a1 + 56) + 8) + 40);
      v5 = *(*(a1 + 64) + 8);
    }

    objc_storeStrong((v5 + 40), v4);
  }

LABEL_6:
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v14 = objc_msgSend_zoneID(v10, v12, v13);
      v15 = *(*(*(a1 + 64) + 8) + 40);
      v31 = 138412546;
      v32 = v14;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Not saving zone %@ due to a PCS error: %@", &v31, 0x16u);
    }

    v16 = objc_msgSend_recordZonesToSave(*(a1 + 40), v8, v9);
    objc_sync_enter(v16);
    v19 = objc_msgSend_recordZonesToSave(*(a1 + 40), v17, v18);
    objc_msgSend_removeObject_(v19, v20, *(a1 + 32));

    objc_sync_exit(v16);
    v23 = objc_msgSend_saveCompletionBlock(*(a1 + 40), v21, v22);

    if (v23)
    {
      v26 = objc_msgSend_saveCompletionBlock(*(a1 + 40), v24, v25);
      v29 = objc_msgSend_zoneID(*(a1 + 32), v27, v28);
      (v26)[2](v26, v29, *(a1 + 32), *(*(*(a1 + 64) + 8) + 40));
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_2252533B4(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = a1;
  v3 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v33, v37, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = objc_msgSend_parent(v11, v6, v7);
        if (v12)
        {
          v13 = v12;
          v14 = objc_msgSend_parent(v11, v6, v7);
          v17 = objc_msgSend_zoneID(v14, v15, v16);

          if (v17)
          {
            dispatch_group_enter(v2);
            v18 = *(v26 + 40);
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = sub_225253678;
            v31[3] = &unk_278545A00;
            v32 = v2;
            objc_msgSend__handleParentPCSForZone_completion_(v18, v19, v11, v31);
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v33, v37, 16);
    }

    while (v8);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v20 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Waiting to fetch parent zone PCS data", buf, 2u);
  }

  v23 = objc_msgSend_callbackQueue(*(v26 + 40), v21, v22);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225253680;
  block[3] = &unk_278545898;
  v24 = *(v26 + 32);
  v25 = *(v26 + 40);
  v28 = v24;
  v29 = v25;
  dispatch_group_notify(v2, v23, block);
}

void sub_225253680(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v10 = 134217984;
    v11 = objc_msgSend_count(v5, v7, v8);
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Completed fetching all PCS data (including parent PCS) for %ld zones.", &v10, 0xCu);
  }

  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v3, v4);
  dispatch_group_leave(v9);
}

void sub_225253DBC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v10 = objc_msgSend_saveCompletionBlock(*(a1 + 32), v5, v6);
    v9 = objc_msgSend_zoneID(*(a1 + 40), v7, v8);
    (*(v10 + 2))(v10, v9, *(a1 + 40), *(a1 + 48));
  }
}

void sub_225254B00(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v15 = v2;
    v18 = objc_msgSend_record(WeakRetained, v16, v17);
    v21 = objc_msgSend_recordID(v18, v19, v20);
    v22 = 138412290;
    v23 = v21;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Decrypt of record %@ is complete", &v22, 0xCu);
  }

  v5 = objc_msgSend_callback(WeakRetained, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_callback(WeakRetained, v6, v7);
    v11 = objc_msgSend_record(WeakRetained, v9, v10);
    v14 = objc_msgSend_error(WeakRetained, v12, v13);
    (v8)[2](v8, v11, v14);
  }
}

void sub_2252550CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225255104(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend__recordInfoWasDecrypted_nextSteps_(v2, v3, WeakRetained, *(a1 + 40));
}

void sub_2252562EC(id *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v36 = a1[4];
    v37 = v9;
    v40 = objc_msgSend_recordID(v36, v38, v39);
    v41 = @" with error: ";
    v42 = &stru_28385ED00;
    *buf = 138412802;
    v44 = v40;
    if (v6)
    {
      v42 = v6;
    }

    else
    {
      v41 = &stru_28385ED00;
    }

    v45 = 2114;
    v46 = v41;
    v47 = 2112;
    v48 = v42;
    _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Got PCS data from fetched share %@%{public}@%@", buf, 0x20u);
  }

  if (objc_msgSend_pcs(v5, v10, v11))
  {
    v13 = objc_msgSend__decryptRecordPCSForRecord_usingSharePCS_(a1[5], v12, a1[4], v5);
    objc_msgSend_setError_(a1[6], v14, v13);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v20 = a1[4];
      v21 = v17;
      v24 = objc_msgSend_share(v20, v22, v23);
      v27 = objc_msgSend_recordID(v24, v25, v26);
      *buf = 138412290;
      v44 = v27;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Couldn't get a PCS for our current share %@", buf, 0xCu);
    }

    v28 = a1[5];
    v29 = objc_msgSend_recordID(a1[4], v18, v19);
    v32 = objc_msgSend_recordID(a1[4], v30, v31);
    v13 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v28, v33, v6, v29, 5001, @"Record %@ has items that require encryption but no share protection data was found", v32);

    objc_msgSend_setError_(a1[6], v34, v13);
  }

  v35 = objc_msgSend_decryptGroup(a1[6], v15, v16);
  dispatch_group_leave(v35);
}

void sub_225256590(id *a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v36 = a1[4];
    log = v9;
    v39 = objc_msgSend_recordID(v36, v37, v38);
    v42 = objc_msgSend_recordID(a1[4], v40, v41);
    v45 = objc_msgSend_zoneID(v42, v43, v44);
    v48 = objc_msgSend_etag(v5, v46, v47);
    *buf = 134219010;
    v51 = v36;
    v52 = 2112;
    v53 = v39;
    v54 = 2112;
    v55 = v45;
    v56 = 2114;
    v57 = v48;
    v58 = 2112;
    v59 = v6;
    _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Fetched zone PCS data. Record %p recordID %@ zoneID %@ zone PCS etag %{public}@%@", buf, 0x34u);
  }

  if (objc_msgSend_pcs(v5, v10, v11))
  {
    v13 = objc_msgSend__decryptRecordPCSForRecord_usingZonePCS_(a1[5], v12, a1[4], v5);
    objc_msgSend_setError_(a1[6], v14, v13);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v20 = a1[4];
      v21 = v17;
      v24 = objc_msgSend_recordID(v20, v22, v23);
      v27 = objc_msgSend_zoneID(v24, v25, v26);
      *buf = 138412290;
      v51 = v27;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Couldn't fetch a PCS for zone %@", buf, 0xCu);
    }

    v28 = a1[5];
    v29 = objc_msgSend_recordID(a1[4], v18, v19);
    v32 = objc_msgSend_recordID(a1[4], v30, v31);
    v13 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v28, v33, v6, v29, 5001, @"Record %@ has items that require encryption but no zone protection data was found", v32);

    objc_msgSend_setError_(a1[6], v34, v13);
  }

  v35 = objc_msgSend_decryptGroup(a1[6], v15, v16);
  dispatch_group_leave(v35);
}

void sub_225257B68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_225257B98(id *a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v36 = a1[4];
    log = v9;
    v39 = objc_msgSend_recordID(v36, v37, v38);
    v42 = objc_msgSend_share(a1[4], v40, v41);
    v45 = objc_msgSend_recordID(v42, v43, v44);
    v48 = objc_msgSend_etag(v5, v46, v47);
    *buf = 134219010;
    v51 = v36;
    v52 = 2112;
    v53 = v39;
    v54 = 2112;
    v55 = v45;
    v56 = 2114;
    v57 = v48;
    v58 = 2112;
    v59 = v6;
    _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Fetched share PCS data. Record %p recordID %@ shareID %@ share PCS etag %{public}@%@", buf, 0x34u);
  }

  if (objc_msgSend_pcs(v5, v10, v11))
  {
    v13 = objc_msgSend__decryptRecordPCSForRecord_usingSharePCS_(a1[5], v12, a1[4], v5);
    objc_msgSend_setError_(a1[6], v14, v13);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v20 = a1[4];
      v21 = v17;
      v24 = objc_msgSend_share(v20, v22, v23);
      v27 = objc_msgSend_recordID(v24, v25, v26);
      *buf = 138412290;
      v51 = v27;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Couldn't fetch a PCS for share %@", buf, 0xCu);
    }

    v28 = a1[5];
    v29 = objc_msgSend_recordID(a1[4], v18, v19);
    v32 = objc_msgSend_recordID(a1[4], v30, v31);
    v13 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v28, v33, v6, v29, 5001, @"Record %@ has items that require encryption but no share protection data was found", v32);

    objc_msgSend_setError_(a1[6], v34, v13);
  }

  v35 = objc_msgSend_decryptGroup(a1[6], v15, v16);
  dispatch_group_leave(v35);
}

void sub_225257E74(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8 || (objc_msgSend_chainPCSData(v5, v6, v7), v33 = objc_claimAutoreleasedReturnValue(), v33, !v33))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = v9;
      v16 = objc_msgSend_parent(v12, v14, v15);
      v19 = objc_msgSend_recordID(v16, v17, v18);
      *buf = 138412290;
      v48 = v19;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Couldn't fetch a PCS for parent record %@", buf, 0xCu);
    }

    v20 = *(a1 + 40);
    WeakRetained = objc_msgSend_recordID(*(a1 + 32), v10, v11);
    v24 = objc_msgSend_recordID(*(a1 + 32), v22, v23);
    v27 = objc_msgSend_parent(*(a1 + 32), v25, v26);
    v30 = objc_msgSend_recordID(v27, v28, v29);
    v32 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v20, v31, v8, WeakRetained, 5001, @"Record %@ has items that require encryption but no protection data was found for parent %@", v24, v30);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v40 = v34;
      v43 = objc_msgSend_recordID(v5, v41, v42);
      v46 = objc_msgSend_recordID(*(a1 + 32), v44, v45);
      *buf = 138412546;
      v48 = v43;
      v49 = 2112;
      v50 = v46;
      _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Fetched parent PCS data from record %@ for record %@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v32 = objc_msgSend__decryptRecordPCSForRecord_usingChainPCS_(WeakRetained, v35, *(a1 + 32), v5);
  }

  objc_msgSend_setError_(*(a1 + 48), v36, v32);
  v39 = objc_msgSend_decryptGroup(*(a1 + 48), v37, v38);
  dispatch_group_leave(v39);
}

void sub_225258150(id *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v36 = a1[4];
    v37 = v9;
    v40 = objc_msgSend_recordID(v36, v38, v39);
    v41 = @" with error: ";
    v42 = &stru_28385ED00;
    *buf = 138412802;
    v44 = v40;
    if (v6)
    {
      v42 = v6;
    }

    else
    {
      v41 = &stru_28385ED00;
    }

    v45 = 2114;
    v46 = v41;
    v47 = 2112;
    v48 = v42;
    _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Got PCS data from fetched share %@%{public}@%@", buf, 0x20u);
  }

  if (objc_msgSend_pcs(v5, v10, v11))
  {
    v13 = objc_msgSend__decryptRecordPCSForRecord_usingSharePCS_(a1[5], v12, a1[4], v5);
    objc_msgSend_setError_(a1[6], v14, v13);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v20 = a1[4];
      v21 = v17;
      v24 = objc_msgSend_share(v20, v22, v23);
      v27 = objc_msgSend_recordID(v24, v25, v26);
      *buf = 138412290;
      v44 = v27;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Couldn't get a PCS for our current share %@", buf, 0xCu);
    }

    v28 = a1[5];
    v29 = objc_msgSend_recordID(a1[4], v18, v19);
    v32 = objc_msgSend_recordID(a1[4], v30, v31);
    v13 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v28, v33, v6, v29, 5001, @"Record %@ has items that require encryption but no share protection data was found", v32);

    objc_msgSend_setError_(a1[6], v34, v13);
  }

  v35 = objc_msgSend_decryptGroup(a1[6], v15, v16);
  dispatch_group_leave(v35);
}

void sub_2252583F4(id *a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v46 = a1[4];
    log = v9;
    v49 = objc_msgSend_recordID(v46, v47, v48);
    v52 = objc_msgSend_recordID(a1[4], v50, v51);
    v55 = objc_msgSend_zoneID(v52, v53, v54);
    v58 = objc_msgSend_etag(v5, v56, v57);
    *buf = 134219010;
    v61 = v46;
    v62 = 2112;
    v63 = v49;
    v64 = 2112;
    v65 = v55;
    v66 = 2114;
    v67 = v58;
    v68 = 2112;
    v69 = v6;
    _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Fetched zone PCS data. Record %p recordID %@ zoneID %@ zone PCS etag %{public}@%@", buf, 0x34u);
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v12 = objc_msgSend_unitTestOverrides(a1[5], v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"SimulateZonePCSNotFoundOnRecordFetch");

    if (v14)
    {

      v15 = MEMORY[0x277CBC560];
      v16 = *MEMORY[0x277CBC120];
      v19 = objc_msgSend_recordID(a1[4], v17, v18);
      v21 = objc_msgSend_errorWithDomain_code_format_(v15, v20, v16, 2036, @"Record %@ has items that require encryption but no shared zone protection data was found", v19);

      v5 = 0;
      v6 = v21;
    }
  }

  if (objc_msgSend_pcs(v5, v10, v11))
  {
    v23 = objc_msgSend__decryptRecordPCSForRecord_usingZonePCS_(a1[5], v22, a1[4], v5);
    objc_msgSend_setError_(a1[6], v24, v23);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v30 = a1[4];
      v31 = v27;
      v34 = objc_msgSend_recordID(v30, v32, v33);
      v37 = objc_msgSend_zoneID(v34, v35, v36);
      *buf = 138412290;
      v61 = v37;
      _os_log_impl(&dword_22506F000, v31, OS_LOG_TYPE_INFO, "Couldn't fetch a PCS for zone %@", buf, 0xCu);
    }

    v38 = a1[5];
    v39 = objc_msgSend_recordID(a1[4], v28, v29);
    v42 = objc_msgSend_recordID(a1[4], v40, v41);
    v23 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v38, v43, v6, v39, 5001, @"Record %@ has items that require encryption but no shared zone protection data was found", v42);

    objc_msgSend_setError_(a1[6], v44, v23);
  }

  v45 = objc_msgSend_decryptGroup(a1[6], v25, v26);
  dispatch_group_leave(v45);
}

id sub_22525A1D0(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_isCancelled(*(a1 + 32), a2, a3) & 1) == 0)
  {
    v6 = objc_msgSend_outstandingDecryptions(*(a1 + 32), v4, v5);
    v9 = objc_msgSend_count(v6, v7, v8);

    if (v9)
    {
      v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
      v15 = *(a1 + 48);
      v16 = *(a1 + 32);
      v19 = objc_msgSend_operationID(v16, v17, v18);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v20, v15, v16, @"CKDDecryptRecordsOperation.m", 685, @"Decrypt operation %@ finished but there were still outstanding decryptions", v19);
    }
  }

  v12 = *(a1 + 40);
  v21.receiver = *(a1 + 32);
  v21.super_class = CKDDecryptRecordsOperation;
  return objc_msgSendSuper2(&v21, sel__finishOnCallbackQueueWithError_, v12);
}

void sub_22525A554()
{
  v0 = qword_280D58370;
  qword_280D58370 = &unk_2838C9200;
}

void sub_22525A8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_22525A938(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_loadWeakRetained((a1 + 48));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v39 = v9;
    *buf = 138412546;
    v44 = v5;
    v45 = 2048;
    v46 = objc_msgSend_code(v6, v40, v41);
    _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Fetched registered bundleIDs %@ with response code %ld", buf, 0x16u);
  }

  if (objc_msgSend_code(v6, v10, v11) != 1)
  {
    v13 = MEMORY[0x277CBC560];
    v14 = *MEMORY[0x277CBC120];
    v15 = sub_2253962A4(v6);
    sub_225395734(v8, v6);
    v42 = v5;
    v17 = v16 = v8;
    v20 = objc_msgSend_error(v6, v18, v19);
    v23 = objc_msgSend_errorDescription(v20, v21, v22);
    v25 = objc_msgSend_errorWithDomain_code_userInfo_format_(v13, v24, v14, v15, v17, @"Error fetching registered bundle IDs from server: %@", v23);
    objc_msgSend_setError_(WeakRetained, v26, v25);

    v8 = v16;
    v5 = v42;
  }

  objc_msgSend_setBundleIDs_(WeakRetained, v12, v5);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v29 = *(a1 + 32);
    v30 = objc_msgSend_containerID(v29, v27, v28);
    v33 = objc_msgSend_containerIdentifier(v30, v31, v32);
    v35 = objc_msgSend__unitTestBundleIDsByContainerID_(v29, v34, v33);

    if (objc_msgSend_count(v35, v36, v37))
    {
      objc_msgSend_setBundleIDs_(WeakRetained, v38, v35);
    }
  }
}

void sub_22525ABBC(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v9 = v4;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = objc_msgSend_ckShortDescription(WeakRetained, v12, v13);
    v17 = objc_msgSend_error(v3, v15, v16);
    v18 = 138544130;
    v19 = v11;
    v20 = 2048;
    v21 = WeakRetained;
    v22 = 2114;
    v23 = v14;
    v24 = 2112;
    v25 = v17;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Fetch registered bundleIDs operation <%{public}@: %p; %{public}@> finished with error %@", &v18, 0x2Au);
  }

  v7 = objc_msgSend_error(v3, v5, v6);
  objc_msgSend_finishWithError_(WeakRetained, v8, v7);
}

void sub_22525B0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_22525B14C(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v25 = v7;
    *buf = 134218240;
    v29 = a2;
    v30 = 2048;
    v31 = objc_msgSend_code(v5, v26, v27);
    _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Fetched quota (%llu) with response code %ld", buf, 0x16u);
  }

  if (objc_msgSend_code(v5, v8, v9) != 1)
  {
    v11 = MEMORY[0x277CBC560];
    v12 = *MEMORY[0x277CBC120];
    v13 = sub_2253962A4(v5);
    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = sub_225395734(v14, v5);
    v18 = objc_msgSend_error(v5, v16, v17);
    v21 = objc_msgSend_errorDescription(v18, v19, v20);
    v23 = objc_msgSend_errorWithDomain_code_userInfo_format_(v11, v22, v12, v13, v15, @"Error fetching user quota from server: %@", v21);
    objc_msgSend_setError_(WeakRetained, v24, v23);
  }

  objc_msgSend_setQuotaAvailable_(WeakRetained, v10, a2);
}

void sub_22525B344(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v9 = v4;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = objc_msgSend_ckShortDescription(WeakRetained, v12, v13);
    v17 = objc_msgSend_error(v3, v15, v16);
    v18 = 138544130;
    v19 = v11;
    v20 = 2048;
    v21 = WeakRetained;
    v22 = 2114;
    v23 = v14;
    v24 = 2112;
    v25 = v17;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Fetch quota operation <%{public}@: %p; %{public}@> finished with error %@", &v18, 0x2Au);
  }

  v7 = objc_msgSend_error(v3, v5, v6);
  objc_msgSend_finishWithError_(WeakRetained, v8, v7);
}

void sub_22525B8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_22525B94C(id *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v10 = objc_msgSend_unitTestOverrides(a1[4], v7, v8);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"DropToken");

    if (v12)
    {

      v5 = 0;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v31 = v13;
    *buf = 138412546;
    v35 = v5;
    v36 = 2048;
    v37 = objc_msgSend_code(v6, v32, v33);
    _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Fetched web auth token (%@) with response code %ld", buf, 0x16u);
  }

  if (objc_msgSend_code(v6, v14, v15) != 1)
  {
    v17 = MEMORY[0x277CBC560];
    v18 = *MEMORY[0x277CBC120];
    v19 = sub_2253962A4(v6);
    v20 = objc_loadWeakRetained(a1 + 6);
    v21 = sub_225395734(v20, v6);
    v24 = objc_msgSend_error(v6, v22, v23);
    v27 = objc_msgSend_errorDescription(v24, v25, v26);
    v29 = objc_msgSend_errorWithDomain_code_userInfo_format_(v17, v28, v18, v19, v21, @"Error fetching web auth token from server: %@", v27);
    objc_msgSend_setError_(WeakRetained, v30, v29);
  }

  objc_msgSend_setWebAuthToken_(WeakRetained, v16, v5);
}

void sub_22525BB9C(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v9 = v4;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = objc_msgSend_ckShortDescription(WeakRetained, v12, v13);
    v17 = objc_msgSend_error(v3, v15, v16);
    v18 = 138544130;
    v19 = v11;
    v20 = 2048;
    v21 = WeakRetained;
    v22 = 2114;
    v23 = v14;
    v24 = 2112;
    v25 = v17;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Fetch web auth token operation <%{public}@: %p; %{public}@> finished with error %@", &v18, 0x2Au);
  }

  v7 = objc_msgSend_error(v3, v5, v6);
  objc_msgSend_finishWithError_(WeakRetained, v8, v7);
}

void sub_22525C2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22525C2F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_msgSend_osActivity(WeakRetained, v2, v3, 0, 0);
    os_activity_scope_enter(v5, &v8);

    objc_msgSend__recordFetchesAvailable(v4, v6, v7);
    os_activity_scope_leave(&v8);
  }
}

void sub_22525C370(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_msgSend_osActivity(WeakRetained, v2, v3, 0, 0);
    os_activity_scope_enter(v5, &v8);

    objc_msgSend__flushFetchedRecordsToConsumerLocked(v4, v6, v7);
    os_activity_scope_leave(&v8);
  }
}

void sub_22525C54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22525C568(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = objc_msgSend_fetchInfosByOrder(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_allValues(v5, v6, v7);

  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v50, v54, 16);
  if (v12)
  {
    v13 = *v51;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_state(*(*(&v50 + 1) + 8 * i), v10, v11);
        ++*(&v55 + v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v50, v54, 16);
    }

    while (v12);
    v16 = *(&v55 + 1);
    v12 = v55;
    v17 = *(&v56 + 1);
    v18 = v56;
    v19 = v57;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
  }

  v20 = *(a1 + 40);
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"notStarted=%lu", v12);
  objc_msgSend_addObject_(v20, v23, v22);

  v24 = *(a1 + 40);
  v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"waitingForFetch=%lu", v16);
  objc_msgSend_addObject_(v24, v27, v26);

  v28 = *(a1 + 40);
  v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v29, @"fetchingFromServer=%lu", v18);
  objc_msgSend_addObject_(v28, v31, v30);

  v32 = *(a1 + 40);
  v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"needsCallback=%lu", v17);
  objc_msgSend_addObject_(v32, v35, v34);

  v36 = *(a1 + 40);
  v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"finished=%lu", v19);
  objc_msgSend_addObject_(v36, v39, v38);

  v40 = MEMORY[0x277CCACA8];
  v42 = objc_msgSend_componentsJoinedByString_(*(a1 + 40), v41, @", ");
  v45 = objc_msgSend_fetchInfosByOrder(*(a1 + 32), v43, v44);
  v47 = objc_msgSend_stringWithFormat_(v40, v46, @"fetchInfos (%@) = %@", v42, v45);
  v48 = *(*(a1 + 48) + 8);
  v49 = *(v48 + 40);
  *(v48 + 40) = v47;

  objc_autoreleasePoolPop(v2);
}