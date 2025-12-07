void sub_1B7B95F04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF8EBC(v3, v4);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v29 = 0;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "_sanitizeIndexesForCurrentVersionIfNeeded complete, kicking off standard indexes", v29, 2u);
      }
    }

    v9 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6, v7);
    isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v9, v10, v11, v12);

    if ((isSpotlightReindexRefactorEnabled & 1) == 0)
    {
      objc_msgSend_setNeedsIndexing_(*(a1 + 32), v14, 1, v15);
      objc_msgSend__setNeedsDeferredIndexing_(*(a1 + 32), v16, 0, v17);
    }

    v18 = objc_alloc(MEMORY[0x1E69A82A8]);
    v20 = objc_msgSend_initWithMaxRowID_totalMessages_(v18, v19, *(a1 + 48), *(a1 + 56));
    objc_msgSend_setInitialTotalChats_(v20, v21, *(a1 + 64), v22);
    v26 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v23, v24, v25);
    objc_msgSend_saveClientState_(v26, v27, v20, v28);

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1B7B96138(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Beginning chat reindexing", buf, 2u);
      }
    }

    v5 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7B9627C;
    v11[3] = &unk_1E7CBB808;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v13 = v7;
    v14 = v9;
    v11[4] = v8;
    v12 = 0;
    objc_msgSend_indexChatsWithReason_completion_(v6, v10, v5, v11);
  }
}

void sub_1B7B9627C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Finished chat reindexing", buf, 2u);
    }
  }

  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Beginning message reindexing", buf, 2u);
      }
    }

    v9 = *(a1 + 32);
    BatchSize = objc_msgSend_reindexFirstBatchSize(MEMORY[0x1E69A7FF8], v5, v6, v7);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7B96444;
    v13[3] = &unk_1E7CBB7E0;
    v11 = *(a1 + 56);
    v15 = *(a1 + 48);
    v14 = *(a1 + 40);
    objc_msgSend_indexNextMessageBatchIfNeeded_reason_completion_(v9, v12, BatchSize, v11, v13);
  }
}

void sub_1B7B96444(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Finished message reindexing", v5, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1B7B96878(void *a1)
{
  v2 = _IMDSpotlightIndexForIndexingReason(a1[6]);
  if (v2)
  {
    v3 = [IMDCoreSpotlightMessageReindexingJob alloc];
    v5 = objc_msgSend_initWithBatchSize_index_delegate_reason_(v3, v4, a1[7], v2, a1[4], a1[6]);
    objc_msgSend_runWithCompletion_(v5, v6, a1[5], v7);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, " Failed to create index!", v10, 2u);
      }
    }

    v9 = a1[5];
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }
}

void sub_1B7B96E7C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_msgSend_stopTimingForKey_(*(a1 + 32), v4, @"CSDeleteAllIndexes", v5);
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Index deletion complete - %@", buf, 0xCu);
    }
  }

  if (v3 && IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, " Version mismatch failed to delete all indexes! %@", buf, 0xCu);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B97060;
    v10[3] = &unk_1E7CB7F60;
    v12 = v9;
    v11 = v3;
    IMDIndexingClientRequest(v10);
  }
}

void sub_1B7B978BC(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = objc_msgSend_timingCollection(*(a1 + 32), v4, v5, v6);
  objc_msgSend_stopTimingForKey_(v7, v8, @"CSIngest", v9);

  v10 = *(a1 + 32);
  v14 = objc_msgSend_indexedCount(v10, v11, v12, v13);
  objc_msgSend_setIndexedCount_(v10, v15, *(a1 + 48) + v14, v16);
  if (v3)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 56);
      v42 = objc_msgSend_indexedCount(*(a1 + 32), v18, v19, v20);
      v46 = objc_msgSend_batchSize(*(a1 + 32), v43, v44, v45);
      if (v46 == objc_msgSend_indexedCount(*(a1 + 32), v47, v48, v49))
      {
        v53 = 0;
      }

      else
      {
        v54 = objc_msgSend_batchSize(*(a1 + 32), v50, v51, v52);
        v53 = v54 - objc_msgSend_indexedCount(*(a1 + 32), v55, v56, v57);
      }

      v58 = 134218754;
      v59 = v41;
      v60 = 2048;
      v61 = v42;
      v62 = 2048;
      v63 = v53;
      v64 = 2112;
      v65 = v3;
      _os_log_error_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_ERROR, "Failed to index %lld items. Batch progress: %lu/%lu, error: %@", &v58, 0x2Au);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 56);
      v25 = objc_msgSend_indexedCount(*(a1 + 32), v21, v22, v23);
      v29 = objc_msgSend_batchSize(*(a1 + 32), v26, v27, v28);
      if (v29 == objc_msgSend_indexedCount(*(a1 + 32), v30, v31, v32))
      {
        v36 = 0;
      }

      else
      {
        v37 = objc_msgSend_batchSize(*(a1 + 32), v33, v34, v35);
        v36 = v37 - objc_msgSend_indexedCount(*(a1 + 32), v38, v39, v40);
      }

      v58 = 134218496;
      v59 = v24;
      v60 = 2048;
      v61 = v25;
      v62 = 2048;
      v63 = v36;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Indexed %lld items. Batch progress: %lu/%lu", &v58, 0x20u);
    }

    goto LABEL_10;
  }

LABEL_11:
  (*(*(a1 + 40) + 16))();
}

void *sub_1B7B97DD0(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__generateSearchableItemsForMessageItemDictionary_chatDictionary_(*(a1 + 32), a2, a2, a3);
  if (result)
  {
    v8 = *(a1 + 32);
    v10 = objc_msgSend_messagesWithItemsGeneratedCount(v8, v5, v6, v7) + 1;

    return objc_msgSend_setMessagesWithItemsGeneratedCount_(v8, v9, v10, v11);
  }

  return result;
}

void sub_1B7B98374(uint64_t a1, void *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696AA08];
    v20[0] = v3;
    v19[0] = v9;
    v19[1] = @"IMDIndexingErrorFailedMessageGUIDs";
    v10 = objc_msgSend_guidsInBatch(*(a1 + 32), v4, v5, v6);
    v14 = objc_msgSend_copy(v10, v11, v12, v13);
    v20[1] = v14;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v20, v19, 2);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v8, v17, @"IMDIndexingErrorDomain", 4, v16);
  }

  else
  {
    v18 = 0;
  }

  objc_msgSend__indexingFinished(*(a1 + 32), v4, v5, v6);
  (*(*(a1 + 40) + 16))();
}

void sub_1B7B98630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B98648(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (v6 || !objc_msgSend__shouldIndexMore(*(a1 + 32), v3, v4, v5))
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v14 = objc_msgSend_timingCollection(*(a1 + 32), v11, v12, v13);
    objc_msgSend_stopTimingForKey_(v14, v15, @"totalTime", v16);

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = objc_msgSend_timingCollection(*(a1 + 32), v18, v19, v20);
        v23 = 138412290;
        v24 = v21;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Timing %@", &v23, 0xCu);
      }
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      (*(v22 + 16))(v22, v6);
    }
  }

  else
  {
    objc_msgSend__indexMoreWithCompletionBlock_(*(a1 + 32), v7, *(*(*(a1 + 48) + 8) + 40), v8);
  }
}

void sub_1B7B98A6C(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = v3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v31, v35, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v10;
          if (objc_msgSend_count(v12, v13, v14, v15) == 2)
          {
            v18 = objc_msgSend_objectAtIndexedSubscript_(v12, v16, 0, v17);
            v21 = objc_msgSend_objectAtIndexedSubscript_(v12, v19, 1, v20);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v24 = *(a1 + 32);
                if (!v24 || objc_msgSend_isEqualToString_(v18, v22, v24, v23))
                {
                  objc_msgSend_setObject_forKeyedSubscript_(v27, v22, v18, v21);
                }
              }
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v11, &v31, v35, 16);
    }

    while (v7);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1B7B98CB4;
  v28[3] = &unk_1E7CB7F60;
  v25 = *(a1 + 40);
  v29 = v27;
  v30 = v25;
  v26 = v27;
  IMDIndexingClientRequest(v28);
}

void sub_1B7B98CB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = objc_msgSend_copy(*(a1 + 32), a2, a3, a4);
  (*(v4 + 16))(v4, v5);
}

void sub_1B7B98DB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E695DFD8];
  v9 = objc_msgSend_allKeys(a2, a2, a3, a4);
  v8 = objc_msgSend_setWithArray_(v5, v6, v9, v7);
  (*(v4 + 16))(v4, v8, 0);
}

void sub_1B7B98EE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E695DFD8];
  v9 = objc_msgSend_allKeys(a2, a2, a3, a4);
  v8 = objc_msgSend_setWithArray_(v5, v6, v9, v7);
  (*(v4 + 16))(v4, v8, 0);
}

void sub_1B7B990EC(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(IMDChatRecordBatchFetcher);
  v5 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v3, @"%K IN %@", v4, *MEMORY[0x1E69A6B70], *(a1 + 32));
  objc_msgSend_setPredicate_(v2, v6, v5, v7);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v2;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v28, v32, 16);
  if (v10)
  {
    v14 = v10;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = objc_msgSend_guid(v17, v11, v12, v13);
        if (objc_msgSend_length(v18, v19, v20, v21))
        {
          v22 = IMCopyIndexableChatDictionaryForRecord(v17, 0);
          v23 = _IMDCoreSpotlightChatUIDForChatDictionary(v22);
          if (objc_msgSend_length(v23, v24, v25, v26))
          {
            objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v27, v18, v23);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v28, v32, 16);
    }

    while (v14);
  }
}

void sub_1B7B99294(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = objc_msgSend_allKeys(v3, v5, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v27, v31, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v11, *(*(&v27 + 1) + 8 * v15), v12);
        if (objc_msgSend_length(v16, v17, v18, v19))
        {
          objc_msgSend_addObject_(v4, v20, v16, v21);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v27, v31, 16);
    }

    while (v13);
  }

  v22 = *(a1 + 40);
  v26 = objc_msgSend_copy(v4, v23, v24, v25);
  (*(v22 + 16))(v22, v26, 0);
}

void sub_1B7B99410(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = IMOSLoggingEnabled();
  if (v13)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v28 = objc_msgSend_count(v9, v18, v19, v20);
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Indexing %lu number of items with Index %@", buf, 0x16u);
    }
  }

  if (IMDCoreSpotlightDisabled(v13, v14, v15, v16))
  {
    if (v12)
    {
      v12[2](v12);
    }
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1B7BA7F04;
    v21[3] = &unk_1E7CB85B8;
    v22 = v11;
    v23 = v9;
    v24 = v10;
    v26 = a3;
    v25 = v12;
    IMDIndexingClientRequest(v21);
  }
}

id sub_1B7B995F0(uint64_t *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v15 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11);
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69A6170]);
  }

  v16 = objc_msgSend_messageRecordBatchSize(MEMORY[0x1E69A7FF8], v12, v13, v14);
  v17 = [IMDMessageRecordBatchFetcher alloc];
  v19 = objc_msgSend_initWithAssociatedChatGUID_sortAscending_(v17, v18, 0, 0);
  objc_msgSend_setLastRowID_(v19, v20, *a1, v21);
  objc_msgSend_setParentedOnly_(v19, v22, 1, v23);
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_1B7AE1AB0;
  v75 = sub_1B7AE2560;
  v76 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v24, v16, v25);
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7B99A60;
  aBlock[3] = &unk_1E7CBB9C0;
  v63 = &v71;
  v64 = a3;
  v62 = &v67;
  v54 = v7;
  v60 = v54;
  v48 = v19;
  v61 = v48;
  v65 = v16;
  v66 = a1;
  v51 = _Block_copy(aBlock);
  do
  {
    context = objc_autoreleasePoolPush();
    v52 = v51[2]();
    objc_msgSend_startTimingForKey_(v54, v26, @"indexCreation", v27);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v28 = v72[5];
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v55, v83, 16);
    if (v32)
    {
      v33 = *v56;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v56 != v33)
          {
            objc_enumerationMutation(v28);
          }

          v35 = *(*(&v55 + 1) + 8 * i);
          v36 = objc_msgSend_objectAtIndexedSubscript_(v35, v30, 0, v31, v48);
          v39 = objc_msgSend_objectAtIndexedSubscript_(v35, v37, 1, v38);
          v40 = v8[2](v8, v36, v39);

          if (v40)
          {
            objc_msgSend_addObjectsFromArray_(v15, v41, v40, v42);
          }
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v55, v83, 16);
      }

      while (v32);
    }

    objc_msgSend_stopTimingForKey_(v54, v43, @"indexCreation", v44);
    objc_autoreleasePoolPop(context);
  }

  while (v52);
  *a2 = v68[3];
  if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = v68[3];
      *buf = 134218498;
      v78 = a3;
      v79 = 2112;
      v80 = v54;
      v81 = 2048;
      v82 = v46;
      _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, "Finished index creation with batch size %lu : %@ - processed %lu messages", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);

  return v15;
}

BOOL sub_1B7B99A60(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
  {
    objc_msgSend_removeAllObjects(*(*(*(a1 + 56) + 8) + 40), a2, a3, a4);
    return 0;
  }

  else
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_1B7AE1AB0;
    v46 = sub_1B7AE2560;
    v47 = 0;
    objc_msgSend_startTimingForKey_(*(a1 + 32), a2, @"sqlQuery", a4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B99CA4;
    block[3] = &unk_1E7CBB970;
    v39 = &v42;
    v5 = *(a1 + 40);
    v41 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    v6 = *(a1 + 48);
    v38 = v5;
    v40 = v6;
    IMDPersistencePerformBlock(block, 1, v7, v8);
    v12 = objc_msgSend_lastObject(v43[5], v9, v10, v11);
    **(a1 + 80) = objc_msgSend_rowID(v12, v13, v14, v15);

    *(*(*(a1 + 48) + 8) + 24) += objc_msgSend_count(v43[5], v16, v17, v18);
    objc_msgSend_stopTimingForKey_(*(a1 + 32), v19, @"sqlQuery", v20);
    objc_msgSend_startTimingForKey_(*(a1 + 32), v21, @"dictionaryConversion", v22);
    objc_msgSend_removeAllObjects(*(*(*(a1 + 56) + 8) + 40), v23, v24, v25);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_1B7B99D0C;
    v36[3] = &unk_1E7CBB998;
    v26 = *(a1 + 56);
    v36[4] = &v42;
    v36[5] = v26;
    IMDPersistencePerformBlock(v36, 1, v27, v28);
    objc_msgSend_stopTimingForKey_(*(a1 + 32), v29, @"dictionaryConversion", v30);
    v34 = objc_msgSend_count(v43[5], v31, v32, v33) != 0;

    _Block_object_dispose(&v42, 8);
  }

  return v34;
}

void sub_1B7B99CA4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[4];
  if (a1[7] >= a1[8] - *(*(a1[6] + 8) + 24))
  {
    objc_msgSend_nextBatchWithSize_(v5, a2, a1[8] - *(*(a1[6] + 8) + 24), a4);
  }

  else
  {
    objc_msgSend_nextBatchWithSize_(v5, a2, a1[7], a4);
  }
  v6 = ;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_1B7B99D0C(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v20, v25, 16);
  if (v4)
  {
    v8 = v4;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = objc_msgSend_chatRecord(v11, v5, v6, v7, v20);
        if (v12)
        {
          v13 = *(*(*(a1 + 40) + 8) + 40);
          v14 = IMCopyIndexableItemDictionaryForRecord(v11);
          v24[0] = v14;
          v15 = IMCopyIndexableChatDictionaryForRecord(v12, 0);
          v24[1] = v15;
          v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v24, 2);
          objc_msgSend_addObject_(v13, v18, v17, v19);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v20, v25, 16);
    }

    while (v8);
  }
}

void sub_1B7B99E94(void *a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a3;
  v9 = objc_msgSend_count(v4, v6, v7, v8);
  if (v9 && !IMDCoreSpotlightDisabled(v9, v10, v11, v12))
  {
    v31 = v5;
    v13 = dispatch_group_create();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = v4;
    v14 = v4;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v41, v47, 16);
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v41 + 1) + 8 * i);
          v21 = IMDMessageRecordCopyMessageForGUID(v20);
          v25 = objc_msgSend_chatRecord(v21, v22, v23, v24);
          v26 = v25;
          if (v21)
          {
            v27 = v25 == 0;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            v28 = IMLogHandleForCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v46 = v20;
              _os_log_error_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_ERROR, "Couldn't find message/chat combo for %@", buf, 0xCu);
            }
          }

          else
          {
            dispatch_group_enter(v13);
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = sub_1B7B9A19C;
            v36[3] = &unk_1E7CBB9E8;
            v37 = v26;
            v38 = v21;
            v40 = a2;
            v39 = v13;
            IMDIndexingClientRequest(v36);

            v28 = v37;
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v29, &v41, v47, 16);
      }

      while (v17);
    }

    v30 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B9A578;
    block[3] = &unk_1E7CB67C0;
    v5 = v31;
    v35 = v31;
    dispatch_group_notify(v13, v30, block);

    v4 = v32;
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1B7B9A19C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7B9A570;
  v4[3] = &unk_1E7CB6C58;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  sub_1B7B9A238(v1, v2, v3, v4);
}

void sub_1B7B9A238(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (IMDCoreSpotlightDisabled(v9, v10, v11, v12))
  {
    if (v9)
    {
      v9[2](v9, 0);
    }
  }

  else
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = sub_1B7AE1AB0;
    v53 = sub_1B7AE2560;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_1B7AE1AB0;
    v47 = sub_1B7AE2560;
    v48 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B9AC94;
    block[3] = &unk_1E7CBBA58;
    v41 = &v49;
    v13 = v8;
    v39 = v13;
    v14 = v7;
    v40 = v14;
    v42 = &v43;
    IMDPersistencePerformBlock(block, 1, v15, v16);
    context = objc_autoreleasePoolPush();
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = [IMDIndexingContext alloc];
    v20 = objc_msgSend_initForReindexing_reason_(v18, v19, 0, a3);
    v24 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v21, v22, v23);
    v26 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_(v24, v25, v50[5], v44[5], v20, v17);

    if (objc_msgSend_count(v26, v27, v28, v29))
    {
      if (IMCoreSpotlightIndexReasonIsIncomingMessage() && objc_msgSend_messageSummarizationEnabled(MEMORY[0x1E69A8090], v30, v31, v32))
      {
        v33 = IMCoreSpotlightCriticalIndex();
      }

      else
      {
        v33 = IMCoreSpotlightIndex();
      }

      v34 = v33;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_1B7B9ADD8;
      v36[3] = &unk_1E7CB67C0;
      v37 = v9;
      sub_1B7B99410(v26, v17, a3, v34, v36);
    }

    else if (v9)
    {
      v9[2](v9, 0);
    }

    objc_autoreleasePoolPop(context);
    sub_1B7B9A594(v14, v13);

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v49, 8);
  }
}

void sub_1B7B9A540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B9A578(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1B7B9A594(void *a1, void *a2)
{
  v3 = a1;
  v7 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v8 = qword_1EDBE5B60;
  v31 = qword_1EDBE5B60;
  if (!qword_1EDBE5B60)
  {
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = sub_1B7BA7F94;
    v37 = &unk_1E7CB6EA8;
    v38 = &v28;
    sub_1B7BA7F94(&v34, v4, v5, v6);
    v8 = *(v29 + 24);
  }

  v9 = v8;
  _Block_object_dispose(&v28, 8);
  v16 = objc_msgSend_sharedManager(v8, v10, v11, v12);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1B7AE1AB0;
  v38 = sub_1B7AE2560;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v17 = qword_1EDBE5B50;
  v43 = qword_1EDBE5B50;
  if (!qword_1EDBE5B50)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = sub_1B7BA8154;
    v31 = &unk_1E7CB6EA8;
    v32 = &v40;
    sub_1B7BA8154(&v28, v13, v14, v15);
    v17 = v41[3];
  }

  v18 = v17;
  _Block_object_dispose(&v40, 8);
  v39 = objc_alloc_init(v17);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1B7AE1AB0;
  v32 = sub_1B7AE2560;
  v33 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B9A878;
  block[3] = &unk_1E7CBBA10;
  v19 = v7;
  v25 = v19;
  v26 = &v34;
  v27 = &v28;
  IMDPersistencePerformBlock(block, 1, v20, v21);
  v23 = *(v29 + 40);
  if (v23)
  {
    objc_msgSend_suggestionsForRequest_withCompletion_(v16, v22, v23, &unk_1F2FA0430);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

void sub_1B7B9A878(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v114[1] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_text(*(a1 + 32), a2, a3, a4);

  if (v5)
  {
    v9 = (a1 + 32);
    v10 = objc_msgSend_text(*(a1 + 32), v6, v7, v8);
    v14 = objc_msgSend_copy(v10, v11, v12, v13);
    objc_msgSend_setTitle_(*(*(*(a1 + 40) + 8) + 40), v15, v14, v16);

    v23 = objc_msgSend_associatedMessageType(*(a1 + 32), v17, v18, v19) >= 2000 && objc_msgSend_associatedMessageType(*(a1 + 32), v20, v21, v22) < 3000;
    v28 = objc_msgSend_associatedMessageType(*(a1 + 32), v20, v21, v22) >= 3000 && objc_msgSend_associatedMessageType(*(a1 + 32), v25, v26, v27) < 4000;
    objc_msgSend_setTapBack_(*(*(*(a1 + 40) + 8) + 40), v25, v23 || v28, v27);
    v35 = objc_msgSend_dateRead(*(a1 + 32), v29, v30, v31);
    if (v35)
    {
      v14 = objc_msgSend_dateRead(*(a1 + 32), v32, v33, v34);
      v36 = objc_alloc(MEMORY[0x1E695DF00]);
      v9 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v36, v37, v38, v39, 0.0);
      v42 = objc_msgSend_isEqual_(v14, v40, v9, v41) ^ 1;
      objc_msgSend_setRead_(*(*(*(a1 + 40) + 8) + 40), v43, v42, v44);
    }

    else
    {
      objc_msgSend_setRead_(*(*(*(a1 + 40) + 8) + 40), v32, 0, v34);
    }

    if (v35)
    {
    }

    objc_msgSend_setEmote_(*(*(*(a1 + 40) + 8) + 40), v45, 0, v46);
    v53 = objc_msgSend_isFromMe(*(a1 + 32), v47, v48, v49);
    if (v53)
    {
      v54 = 0;
      objc_msgSend_setSenderIdentifier_(*(*(*(a1 + 40) + 8) + 40), v50, 0, v52);
    }

    else
    {
      v14 = objc_msgSend_handleRecord(*(a1 + 32), v50, v51, v52);
      v9 = objc_msgSend_canonicalizedURIString(v14, v58, v59, v60);
      v54 = objc_msgSend_copy(v9, v61, v62, v63);
      objc_msgSend_setSenderIdentifier_(*(*(*(a1 + 40) + 8) + 40), v64, v54, v65);
    }

    if ((v53 & 1) == 0)
    {
    }

    v66 = objc_msgSend_text(*(a1 + 32), v55, v56, v57);
    v70 = objc_msgSend_copy(v66, v67, v68, v69);
    objc_msgSend_setSummary_(*(*(*(a1 + 40) + 8) + 40), v71, v70, v72);

    v76 = objc_msgSend_date(*(a1 + 32), v73, v74, v75);
    objc_msgSend_setDateSent_(*(*(*(a1 + 40) + 8) + 40), v77, v76, v78);

    v114[0] = *(*(*(a1 + 40) + 8) + 40);
    v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v79, v114, 1);
    v110 = 0;
    v111 = &v110;
    v112 = 0x2050000000;
    v83 = qword_1EDBE5B40;
    v113 = qword_1EDBE5B40;
    if (!qword_1EDBE5B40)
    {
      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 3221225472;
      v109[2] = sub_1B7BA81AC;
      v109[3] = &unk_1E7CB6EA8;
      v109[4] = &v110;
      sub_1B7BA81AC(v109, v80, v81, v82);
      v83 = v111[3];
    }

    v84 = v83;
    _Block_object_dispose(&v110, 8);
    v85 = [v83 alloc];
    v86 = (a1 + 32);
    if (objc_msgSend_isFromMe(*(a1 + 32), v87, v88, v89))
    {
      v91 = objc_msgSend_initWithType_receivedMessages_(v85, v90, 0, MEMORY[0x1E695E0F0]);
    }

    else
    {
      v91 = objc_msgSend_initWithType_receivedMessages_(v85, v90, 0, v24);
    }

    v93 = *(a1 + 48);
    v92 = a1 + 48;
    v94 = *(v93 + 8);
    v95 = *(v94 + 40);
    *(v94 + 40) = v91;

    if (objc_msgSend_isFromMe(*v86, v96, v97, v98))
    {
      objc_msgSend_setSenderMessages_(*(*(*v92 + 8) + 40), v99, v24, v100);
    }

    else
    {
      objc_msgSend_setSenderMessages_(*(*(*v92 + 8) + 40), v99, 0, v100);
    }

    objc_msgSend_setIncludesDynamicSuggestions_(*(*(*v92 + 8) + 40), v101, 1, v102);
    v106 = objc_msgSend_date(*v86, v103, v104, v105);
    objc_msgSend_setRequestDate_(*(*(*v92 + 8) + 40), v107, v106, v108);
  }

  else
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1B7CF8FAC();
    }
  }
}

void sub_1B7B9AC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B9AC94(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = IMCopyIndexableItemDictionaryForRecord(*(a1 + 32));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);
  if (v5)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_rowID(*(a1 + 32), v10, v11, v12);
      v17 = 134217984;
      v18 = v13;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Getting chat for message id %lld", &v17, 0xCu);
    }
  }

  v5 = objc_msgSend_chatRecord(*(a1 + 32), v6, v7, v8);
  if (v5)
  {
LABEL_7:
    v14 = IMCopyIndexableChatDictionaryForRecord(v5, 0);
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

uint64_t sub_1B7B9ADD8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1B7B9ADF4(void *a1, uint64_t a2, void *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v63 = v5;
  if (objc_msgSend_count(v5, v7, v8, v9))
  {
    v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v10, v11, v12);
    isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v13, v14, v15, v16);

    v18 = IMOSLoggingEnabled();
    if (isUnderFirstDataProtectionLock)
    {
      if (v18)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, " => Before first unlock, skipping indexing", buf, 2u);
        }
      }

      if (v6)
      {
LABEL_8:
        v6[2](v6, 0);
      }
    }

    else
    {
      if (v18)
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v75 = v5;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, " => Nuking messages: %@", buf, 0xCu);
        }
      }

      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = sub_1B7B9B2AC;
      v66[3] = &unk_1E7CBBA80;
      v68 = v6;
      v22 = v5;
      v67 = v22;
      v69 = a2;
      IMDIndexingClientRequest(v66);
      v62 = v22;
      v23 = objc_alloc_init(IMDMessageRecordBatchFetcher);
      v26 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v24, @"%K = %@ AND %K IN %@", v25, *MEMORY[0x1E69A7170], MEMORY[0x1E695E118], *MEMORY[0x1E69A7168], v62);
      objc_msgSend_setPredicate_(v23, v27, v26, v28);

      objc_msgSend_setBatchSize_(v23, v29, 50, v30);
      v34 = objc_msgSend_array(MEMORY[0x1E695DF70], v31, v32, v33);
      do
      {
        v35 = objc_autoreleasePoolPush();
        v39 = objc_msgSend_nextBatch(v23, v36, v37, v38);
        v43 = objc_msgSend_count(v39, v40, v41, v42);
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v44 = v39;
        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v70, buf, 16);
        if (v49)
        {
          v50 = *v71;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v71 != v50)
              {
                objc_enumerationMutation(v44);
              }

              v52 = objc_msgSend_guid(*(*(&v70 + 1) + 8 * i), v46, v47, v48);
              objc_msgSend_addObject_(v34, v53, v52, v54);
            }

            v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v70, buf, 16);
          }

          while (v49);
        }

        objc_autoreleasePoolPop(v35);
      }

      while (v43 >= 0x32);
      v58 = objc_msgSend_copy(v34, v55, v56, v57);

      if (objc_msgSend_count(v58, v59, v60, v61))
      {
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = sub_1B7B9B560;
        v64[3] = &unk_1E7CB6AE0;
        v65 = v58;
        IMDIndexingClientRequest(v64);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Attempted to delete messages without providing guids. Bailing.", buf, 2u);
      }
    }

    if (v6)
    {
      goto LABEL_8;
    }
  }
}

void sub_1B7B9B2AC(void *a1)
{
  v2 = IMCoreSpotlightCriticalIndex();

  if (v2)
  {
    v5 = IMCoreSpotlightCriticalIndex();
    sub_1B7B9B3A8(v5, a1[4], a1[6], a1[5]);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "No Spotlight index available for this platform. Bailing.", buf, 2u);
      }
    }

    v4 = a1[5];
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

void sub_1B7B9B3A8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7BA8204;
  aBlock[3] = &unk_1E7CBB328;
  v10 = v9;
  v20 = v10;
  v11 = _Block_copy(aBlock);
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = objc_msgSend_count(v8, v14, v15, v16);
      v18 = NSStringFromIMCoreSpotlightIndexReason();
      *buf = 134218242;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Deleting %ld messages from index due to %@", buf, 0x16u);
    }
  }

  objc_msgSend_deleteSearchableItemsWithIdentifiers_reason_completionHandler_(v7, v12, v8, a3, v11);
}

void sub_1B7B9B568(void *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (objc_msgSend_count(v1, v2, v3, v4))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v54 = v1;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Attempting to remove messages from CoreRecents. guids={%@}", buf, 0xCu);
      }
    }

    v9 = objc_msgSend_set(MEMORY[0x1E695DFA8], v5, v6, v7);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = v1;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v47, v52, 16);
    if (v14)
    {
      v15 = *v48;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v48 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v47 + 1) + 8 * i);
          v18 = objc_msgSend_referenceURLForMessageGUID_(MEMORY[0x1E69A7FE8], v12, v17, v13);
          objc_msgSend_addObject_(v9, v19, v18, v20);
          v23 = objc_msgSend_deprecatedReferenceURLsForMessageGUID_(MEMORY[0x1E69A7FE8], v21, v17, v22);
          objc_msgSend_addObjectsFromArray_(v9, v24, v23, v25);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v47, v52, 16);
      }

      while (v14);
    }

    v26 = objc_alloc_init(MEMORY[0x1E6998FD8]);
    v51 = *MEMORY[0x1E6998FA8];
    v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, &v51, 1);
    objc_msgSend_setDomains_(v26, v29, v28, v30);

    v34 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v31, v32, v33);
    v38 = objc_msgSend_recentsInstance(v34, v35, v36, v37);

    v40 = IMDIndexingClientRequestQueue(v39);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1B7B9C11C;
    v44[3] = &unk_1E7CBBAA8;
    v45 = v9;
    v46 = v38;
    v41 = v38;
    v42 = v9;
    objc_msgSend_performRecentsSearch_queue_completion_(v41, v43, v26, v40, v44);
  }
}

void sub_1B7B9B850(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v10 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v7, v8, v9);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v10, v11, v12, v13);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, " => Before first unlock, skipping indexing", buf, 2u);
      }
    }

    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else if (objc_msgSend_count(v5, v15, v16, v17))
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v5;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, " => Nuking attachment message parts: %@", buf, 0xCu);
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1B7B9BA8C;
    v20[3] = &unk_1E7CBBA80;
    v22 = v6;
    v21 = v5;
    v23 = a2;
    IMDIndexingClientRequest(v20);
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

uint64_t sub_1B7B9BA8C(uint64_t a1)
{
  v2 = IMCoreSpotlightCriticalIndex();
  if (v2)
  {
    sub_1B7B9B3A8(v2, *(a1 + 32), *(a1 + 48), *(a1 + 40));
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }

  return MEMORY[0x1EEE66C38]();
}

void sub_1B7B9BB0C(void *a1)
{
  v59[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  _IMDCoreRecentsApiInit(v1, v2, v3, v4);
  v5 = objc_autoreleasePoolPush();
  v9 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v6, v7, v8);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v9, v10, v11, v12);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, " => Deleting this chat", buf, 2u);
      }

LABEL_5:
    }
  }

  else
  {
    if (!v1 && IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "IMDCoreSpotlightDeleteCoreRecentsWithHandlesLegacy bailing because we were passed no handles.", buf, 2u);
      }
    }

    if (objc_msgSend_count(v1, v14, v15, v16) >= 2)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_24;
      }

      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "IMDCoreSpotlightDeleteCoreRecentsWithHandlesLegacy bailing because this is a group chat.", buf, 2u);
      }

      goto LABEL_5;
    }

    v22 = objc_msgSend_firstObject(v1, v19, v20, v21);
    v26 = objc_msgSend_canonicalizedURIString(v22, v23, v24, v25);
    if (objc_msgSend_length(v26, v27, v28, v29))
    {
      v30 = objc_alloc_init(MEMORY[0x1E6998FD8]);
      v59[0] = *MEMORY[0x1E6998FB0];
      v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v31, v59, 1);
      objc_msgSend_setDomains_(v30, v33, v32, v34);

      v35 = MEMORY[0x1E6998FD0];
      v58 = v26;
      v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v36, &v58, 1);
      v39 = objc_msgSend_predicateForKey_inCollection_(v35, v38, *MEMORY[0x1E6998F70], v37);

      objc_msgSend_setSearchPredicate_(v30, v40, v39, v41);
      if (v30)
      {
        v45 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v42, v43, v44);
        v49 = objc_msgSend_recentsInstance(v45, v46, v47, v48);

        v50 = dispatch_get_global_queue(0, 0);
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = sub_1B7B9BEF8;
        v54[3] = &unk_1E7CBB2D8;
        v55 = v49;
        v51 = v49;
        objc_msgSend_performRecentsSearch_queue_completion_(v51, v52, v30, v50, v54);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v57 = v22;
        _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_INFO, "performRecentsSearch: not performing recents SEARCH since a valid handleAlias was not found for handleRecord: gi%@", buf, 0xCu);
      }
    }
  }

LABEL_24:
  objc_autoreleasePoolPop(v5);
}

void sub_1B7B9BEF8(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "performRecentsSearch - recents = %@", buf, 0xCu);
    }
  }

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "performRecentsSearch: recents SEARCH failed with error %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v5 && objc_msgSend_count(v5, v7, v8, v9))
    {
      v13 = *(a1 + 32);
      v17 = 0;
      v14 = objc_msgSend_removeRecentContacts_error_(v13, v12, v5, &v17);
      v15 = v17;
      if ((v14 & 1) == 0 && IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = v15;
          _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Removing recents contacts failed with error %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }
}

void sub_1B7B9C11C(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v43 = a3;
  v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = v5;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v45, v51, 16);
  if (v15)
  {
    v16 = *v46;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v45 + 1) + 8 * i);
        v19 = objc_msgSend_metadata(v18, v12, v13, v14);
        v22 = objc_msgSend_objectForKey_(v19, v20, @"corerecents:reference-url", v21);

        if (objc_msgSend_containsObject_(*(a1 + 32), v23, v22, v24))
        {
          objc_msgSend_addObject_(v9, v25, v18, v26);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v45, v51, 16);
    }

    while (v15);
  }

  if (objc_msgSend_count(v9, v27, v28, v29))
  {
    v33 = *(a1 + 40);
    v34 = objc_msgSend_copy(v9, v30, v31, v32);
    v44 = 0;
    objc_msgSend_removeRecentContacts_error_(v33, v35, v34, &v44);
    v36 = v44;

    v37 = IMOSLoggingEnabled();
    if (v36)
    {
      if (v37)
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v50 = v36;
          _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Recent messages remove failed with error %@.", buf, 0xCu);
        }

LABEL_19:
      }
    }

    else if (v37)
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v42 = objc_msgSend_count(v9, v39, v40, v41);
        *buf = 134217984;
        v50 = v42;
        _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Successfully removed %ld messages from CoreRecents.", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }
}

void sub_1B7B9C3B0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B9C360);
  }

  _Unwind_Resume(a1);
}

void sub_1B7B9C3D0(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v10 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v7, v8, v9);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v10, v11, v12, v13);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, " => Before first unlock, skipping indexing", buf, 2u);
      }
    }

    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else if (objc_msgSend_count(v5, v15, v16, v17))
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v5;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, " => Nuking chat: %@", buf, 0xCu);
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1B7B9C60C;
    v20[3] = &unk_1E7CBBAD0;
    v21 = v5;
    v23 = a2;
    v22 = v6;
    IMDIndexingClientRequest(v20);
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

void sub_1B7B9C60C(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v22 = IMCoreSpotlightCriticalIndex();
  objc_msgSend_beginIndexBatch(v22, v2, v3, v4);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = *(a1 + 32);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v26, v34, 16);
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v7, v8, v9);
        objc_msgSend_deleteChatSearchableItemForChatGUID_reason_(v14, v15, v13, *(a1 + 48));

        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = NSStringFromIMCoreSpotlightIndexReason();
            *buf = 138412546;
            v31 = v13;
            v32 = 2112;
            v33 = v17;
            _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Deleting %@ from index due to %@", buf, 0x16u);
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v26, v34, 16);
    }

    while (v10);
  }

  v18 = *(a1 + 32);
  v19 = IMCSIndexReasonFromIMIndexReason();
  objc_msgSend_deleteSearchableItemsWithDomainIdentifiers_reason_completionHandler_(v22, v20, v18, v19, 0);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1B7B9C894;
  v23[3] = &unk_1E7CBB398;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  objc_msgSend_endIndexBatchWithClientState_completionHandler_(v22, v21, 0, v23);
}

void sub_1B7B9C894(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlightDeleteChatGUIDsLegacy: Failed to delete items with domain identifiers %@ with error %@", &v7, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_1B7B9C9A0(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (objc_msgSend_count(v5, v7, v8, v9))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7B9CAF4;
    v11[3] = &unk_1E7CBBAD0;
    v12 = v5;
    v14 = a2;
    v13 = v6;
    IMDIndexingClientRequest(v11);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "No chats to add", buf, 2u);
      }
    }

    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

void sub_1B7B9CAF4(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_count(*(a1 + 32), v6, v7, v8);
      *buf = 134217984;
      v40 = v9;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Adding %lu chats to CoreSpotlight", buf, 0xCu);
    }
  }

  v10 = MEMORY[0x1E695DF70];
  v11 = objc_msgSend_count(*(a1 + 32), v2, v3, v4);
  v14 = objc_msgSend_arrayWithCapacity_(v10, v12, v11, v13);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = *(a1 + 32);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v34, v38, 16);
  if (v20)
  {
    v21 = *v35;
    do
    {
      v22 = 0;
      do
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v34 + 1) + 8 * v22);
        v24 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v17, v18, v19);
        v27 = objc_msgSend_chatSearchableItemForGUID_(v24, v25, v23, v26);

        if (v27)
        {
          objc_msgSend_addObject_(v14, v28, v27, v29);
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v34, v38, 16);
    }

    while (v20);
  }

  v30 = *(a1 + 48);
  v31 = IMCoreSpotlightIndex();
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1B7B9CD60;
  v32[3] = &unk_1E7CB67C0;
  v33 = *(a1 + 40);
  sub_1B7B99410(v14, 0, v30, v31, v32);
}

uint64_t sub_1B7B9CD60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1B7B9CD7C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a4;
  v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v8, v9, v10);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v11, v12, v13, v14);

  if (isUnderFirstDataProtectionLock)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_12;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v20 = " => Before first unlock, skipping re-indexing of messages";
    goto LABEL_10;
  }

  if (objc_msgSend_count(v6, v16, v17, v18))
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1B7B9CF38;
    v21[3] = &unk_1E7CBBAD0;
    v22 = v6;
    v23 = v7;
    v24 = a2;
    IMDIndexingClientRequest(v21);

    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
LABEL_11:

      goto LABEL_12;
    }

    *buf = 0;
    v20 = "Trying to reindex messages with an empty guids array";
LABEL_10:
    _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, v20, buf, 2u);
    goto LABEL_11;
  }

LABEL_12:
  if (v7)
  {
    v7[2](v7);
  }

LABEL_14:
}

void sub_1B7B9CF38(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v6 = objc_msgSend_count(*(a1 + 32), v3, v4, v5);
      *buf = 67109120;
      v44 = v6;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Request to re-index messages with messages count: %d", buf, 8u);
    }
  }

  v7 = IMCoreSpotlightIndex();
  v8 = v7 == 0;

  if (v8)
  {
    v34 = *(a1 + 40);
    if (v34)
    {
      (*(v34 + 16))();
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E69A6170]);
    objc_msgSend_startTimingForKey_(v9, v10, @"total time for indexing messages", v11);
    v12 = objc_alloc(MEMORY[0x1E695DF70]);
    v16 = objc_msgSend_count(*(a1 + 32), v13, v14, v15);
    v19 = objc_msgSend_initWithCapacity_(v12, v17, v16, v18);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = [IMDIndexingContext alloc];
    v23 = objc_msgSend_initForReindexing_reason_(v21, v22, 1, *(a1 + 48));
    v24 = *(a1 + 32);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_1B7B9D218;
    v38[3] = &unk_1E7CBBAF8;
    v25 = v9;
    v39 = v25;
    v40 = v23;
    v41 = v20;
    v42 = v19;
    v26 = v19;
    v27 = v20;
    v28 = v23;
    objc_msgSend_enumerateObjectsUsingBlock_(v24, v29, v38, v30);
    v31 = *(a1 + 48);
    v32 = IMCoreSpotlightIndex();
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1B7B9D2D4;
    v35[3] = &unk_1E7CB7260;
    v36 = v25;
    v37 = *(a1 + 40);
    v33 = v25;
    sub_1B7B99410(v26, v27, v31, v32, v35);
  }
}

void sub_1B7B9D218(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = objc_autoreleasePoolPush();
  objc_msgSend_startTimingForKey_(*(a1 + 32), v4, @"generate indexable item", v5);
  v9 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v6, v7, v8);
  v11 = objc_msgSend_newSearchableItemsForMessageGUID_context_rejectedItems_(v9, v10, v16, *(a1 + 40), *(a1 + 48));

  objc_msgSend_addObjectsFromArray_(*(a1 + 56), v12, v11, v13);
  objc_msgSend_stopTimingForKey_(*(a1 + 32), v14, @"generate indexable item", v15);

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1B7B9D2D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_msgSend_stopTimingForKey_(*(a1 + 32), a2, @"total time for indexing messages", a4);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Done re-indexing messages, time: %@", &v8, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7B9D3C8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v93 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v76 = a2;
  v8 = a4;
  v12 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v9, v10, v11);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v12, v13, v14, v15);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, " => Before first unlock, skipping re-indexing of messages", buf, 2u);
      }
    }

LABEL_6:
    v8[2](v8);
    goto LABEL_37;
  }

  v21 = objc_msgSend_count(v7, v17, v18, v19);
  v22 = IMOSLoggingEnabled();
  if (!v21)
  {
    if (v22)
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Trying to reindex messages with an empty guids array", buf, 2u);
      }
    }

    goto LABEL_6;
  }

  if (v22)
  {
    v26 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v92 = objc_msgSend_count(v7, v27, v28, v29);
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Request to re-index messages with messages count: %d", buf, 8u);
    }
  }

  if (IMDCoreSpotlightDisabled(v22, v23, v24, v25))
  {
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF90A8();
    }

LABEL_15:

    v8[2](v8);
    goto LABEL_37;
  }

  if (!v76)
  {
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF906C();
    }

    goto LABEL_15;
  }

  v32 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v32, v33, @"total time for indexing messages", v34);
  v35 = objc_alloc(MEMORY[0x1E695DF70]);
  v39 = objc_msgSend_count(v7, v36, v37, v38);
  v42 = objc_msgSend_initWithCapacity_(v35, v40, v39, v41);
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = [IMDIndexingContext alloc];
  v46 = objc_msgSend_initForReindexing_reason_(v44, v45, 1, a3);
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = sub_1B7B9D994;
  v85[3] = &unk_1E7CBBAF8;
  v73 = v32;
  v86 = v73;
  v72 = v46;
  v87 = v72;
  v71 = v43;
  v88 = v71;
  v75 = v42;
  v89 = v75;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v47, v85, v48);
  v84 = 0;
  v50 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v49, v76, 1, &v84);
  v74 = v84;
  if (v50)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v51 = v75;
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v80, v90, 16, v71, v72);
    if (v56)
    {
      v57 = *v81;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v81 != v57)
          {
            objc_enumerationMutation(v51);
          }

          v59 = objc_msgSend_attributeSet(*(*(&v80 + 1) + 8 * i), v53, v54, v55);
          v63 = objc_msgSend_collaborationMetadataKey(IMDSharedWithYouMetadataManager, v60, v61, v62);
          objc_msgSend_setValue_forCustomKey_(v59, v64, v50, v63);
        }

        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v53, &v80, v90, 16);
      }

      while (v56);
    }
  }

  else
  {
    v51 = IMLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF8FEC();
    }
  }

  v68 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v65, v66, v67);
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = sub_1B7B9DA50;
  v77[3] = &unk_1E7CB7260;
  v78 = v73;
  v79 = v8;
  v69 = v73;
  objc_msgSend_reIndexWithLocalProofOfInclusionForItemsAsync_completionHandler_(v68, v70, v75, v77);

LABEL_37:
}

void sub_1B7B9D994(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = objc_autoreleasePoolPush();
  objc_msgSend_startTimingForKey_(*(a1 + 32), v4, @"generate indexable item", v5);
  v9 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v6, v7, v8);
  v11 = objc_msgSend_newSearchableItemsForMessageGUID_context_rejectedItems_(v9, v10, v16, *(a1 + 40), *(a1 + 48));

  objc_msgSend_addObjectsFromArray_(*(a1 + 56), v12, v11, v13);
  objc_msgSend_stopTimingForKey_(*(a1 + 32), v14, @"generate indexable item", v15);

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1B7B9DA50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_msgSend_stopTimingForKey_(*(a1 + 32), a2, @"total time for indexing messages", a4);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Done re-indexing messages, time: %@", &v8, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1B7B9DB40(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v5, v6, v7);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v8, v9, v10, v11);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v22 = 136315138;
        v23 = "void IMDCoreSpotlightSetNeedsMessageReindexBlockingLegacy(BOOL, IMCoreSpotlightIndexReason, __strong dispatch_block_t)";
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, " => %s Before first unlock, skipping indexing", &v22, 0xCu);
      }
    }

    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v17 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v13, v14, v15);
    v20 = objc_msgSend_contextWithReason_(IMDIndexingContext, v18, a2, v19);
    objc_msgSend_setNeedsMessageReindexingWithContext_completion_(v17, v21, v20, v4);
  }
}

void sub_1B7B9DCAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v10 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v7, v8, v9);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v10, v11, v12, v13);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v21 = "void IMDCoreSpotlightIndexNextMessageBatchIfNeededBlockingLegacy(BOOL, NSUInteger, IMCoreSpotlightIndexReason, __strong dispatch_block_t)";
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, " => %s Before first unlock, skipping indexing", buf, 0xCu);
      }
    }

    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1B7B9DE40;
    v16[3] = &unk_1E7CBBB20;
    v18 = a2;
    v19 = a3;
    v17 = v6;
    IMDIndexingClientRequest(v16);
  }
}

void sub_1B7B9DE40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, a2, a3, a4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B9DEF8;
  v9[3] = &unk_1E7CB67C0;
  v10 = *(a1 + 32);
  objc_msgSend_indexNextMessageBatchIfNeeded_reason_completion_(v5, v8, v6, v7, v9);
}

uint64_t sub_1B7B9DEF8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1B7B9DF10(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v4 = IMDMessageRecordDeleteBatchOfDeletedMessageGuids(a1, &v18, a3);
  v5 = v18;
  v9 = v5;
  if (v4)
  {
    if (v5 && objc_msgSend_count(v5, v6, v7, v8))
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v14 = objc_msgSend_count(v9, v11, v12, v13);
          *buf = 134217984;
          v20 = v14;
          _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Found %ld messages guids to remove from spotlight", buf, 0xCu);
        }
      }

      sub_1B7B9ADF4(v9, a2, 0);
      v15 = 1;
LABEL_15:

      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Found 0 messages guids to remove from spotlight", buf, 2u);
      }
    }

    v15 = 0;
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

void sub_1B7B9E0BC(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7B9E150;
  aBlock[3] = &unk_1E7CB6A70;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    _IMDPerformBlockWithDelay(v1, 5.0);
  }
}

void sub_1B7B9E150(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  if (sub_1B7B9DF10(2000, v2, &v3))
  {
    sub_1B7B9E0BC(*(a1 + 32));
  }
}

void *sub_1B7B9E198(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [IMDIndexingContext alloc];
  v7 = objc_msgSend_initForReindexing_reason_(v5, v6, 1, 1008);
  v11 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v8, v9, v10);
  v13 = objc_msgSend_newSearchableItemsForMessage_context_rejectedItems_(v11, v12, v4, v7, v3);

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = v14;

  return v14;
}

void sub_1B7B9E294()
{
  v0 = objc_alloc_init(IMDLegacyCoreSpotlightManager);
  v1 = qword_1EBA53A78;
  qword_1EBA53A78 = v0;
}

void sub_1B7B9E5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B9E664()
{
  v0 = dispatch_queue_create(0, 0);
  v1 = qword_1EBA540D0;
  qword_1EBA540D0 = v0;

  v2 = qword_1EBA540D0;
  v3 = dispatch_get_global_queue(2, 0);
  dispatch_set_target_queue(v2, v3);
}

void sub_1B7B9E720()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.imdpersistence.scrutinyMessagesQueue", v2);
  v1 = qword_1EDBE5B98;
  qword_1EDBE5B98 = v0;
}

uint64_t sub_1B7B9E7CC()
{
  result = MEMORY[0x1B8CAFAC0](@"SLCollaborationHandshakeController", @"SocialLayer");
  qword_1EBA540E0 = result;
  return result;
}

void sub_1B7B9E900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B9EA1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_addObject_(*(*(a1 + 32) + 16), a2, *(a1 + 40), a4);
  v8 = objc_msgSend_array(*(*(a1 + 32) + 16), v5, v6, v7);
  IMSetDomainValueForKey();
}

void sub_1B7B9EB84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  objc_msgSend_removeObject_(*(*(a1 + 32) + 16), a2, *(a1 + 40), a4);
  v8 = objc_msgSend_array(*(*(a1 + 32) + 16), v5, v6, v7);
  v12 = objc_msgSend_count(v8, v9, v10, v11);
  if (v12 < 0xC9)
  {
    v16 = v8;
  }

  else
  {
    v13 = v12;
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v23[0] = 67109120;
        v23[1] = 200;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Blocklist size > %d on load, truncating", v23, 8u);
      }
    }

    v16 = objc_msgSend_subarrayWithRange_(v8, v14, v13 - 200, 200);

    v17 = objc_alloc(MEMORY[0x1E695DFA0]);
    v20 = objc_msgSend_initWithArray_(v17, v18, v16, v19);
    v21 = *(a1 + 32);
    v22 = *(v21 + 16);
    *(v21 + 16) = v20;
  }

  IMSetDomainValueForKey();
}

void sub_1B7B9EE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B9EE4C(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageForGUID(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1B7B9F024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B7B9F048(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMCopyIndexableItemDictionaryForRecord(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend_rowID(*(a1 + 32), v9, v10, v11);
      v18 = 134217984;
      v19 = v12;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Getting chat for message id %lld", &v18, 0xCu);
    }
  }

  v13 = objc_msgSend_chatRecord(*(a1 + 32), v5, v6, v7);
  v14 = v13;
  if (v13)
  {
    v15 = IMCopyIndexableChatDictionaryForRecord(v13, 0);
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

void sub_1B7BA03E0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&v3, 8);
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B7BA0514()
{
  v0 = dispatch_queue_create(0, 0);
  v1 = qword_1EBA540F0;
  qword_1EBA540F0 = v0;

  v2 = qword_1EBA540F0;
  v3 = dispatch_get_global_queue(2, 0);
  dispatch_set_target_queue(v2, v3);
}

void sub_1B7BA058C(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = *(a1 + 32);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v31, v35, 16);
  if (v6)
  {
    v7 = *v32;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        objc_msgSend_startTimingWithProfiler_(v9, v4, *(a1 + 40), v5, v31);
        *(*(*(a1 + 120) + 8) + 24) = objc_msgSend_cancelIndexingForItem_(v9, v10, *(a1 + 48), v11);
        v13 = objc_msgSend_auxiliaryItemsForPrimaryAttributes_withItem_chat_context_timingProfiler_rejectedItems_(v9, v12, *(a1 + 56), *(a1 + 48), *(a1 + 64), *(a1 + 72), *(a1 + 40), *(a1 + 80));
        objc_msgSend_addObjectsFromArray_(*(a1 + 88), v14, v13, v15);
        if (*(*(*(a1 + 120) + 8) + 24))
        {
          objc_msgSend_stopProfilingAfterIndexersBailed(*(a1 + 40), v16, v17, v18);

          goto LABEL_11;
        }

        objc_msgSend_indexItem_withChat_context_metadataToUpdate_timingProfiler_(v9, v16, *(a1 + 48), *(a1 + 64), *(a1 + 72), *(a1 + 56), *(a1 + 40));
        objc_msgSend_stopTimingWithProfiler_(v9, v19, *(a1 + 40), v20);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v31, v35, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ((*(*(*(a1 + 120) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_startTimingForKey_(*(a1 + 40), v21, @"post-processor", v23);
  }

  v24 = *(a1 + 96);
  v25 = *(a1 + 48);
  v26 = *(a1 + 64);
  isReindexing = objc_msgSend_isReindexing(*(a1 + 72), v21, v22, v23, v31);
  objc_msgSend__postProcessIndexingForItem_chatDictionary_isReindexing_(v24, v28, v25, v26, isReindexing);
  if ((*(*(*(a1 + 120) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_stopTimingForKey_(*(a1 + 40), v29, @"post-processor", v30);
  }

  dispatch_group_leave(*(a1 + 112));
}

void sub_1B7BA077C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(a1);
    objc_msgSend_abortCurrentTimers(*(v17 + 40), v19, v20, v21);
    *(*(*(v17 + 128) + 8) + 24) = 1;
    *(*(*(v17 + 136) + 8) + 24) = 1;
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = *(v17 + 104);
        LODWORD(buf) = 138412546;
        *(&buf + 4) = v23;
        WORD6(buf) = 2112;
        *(&buf + 14) = v18;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Indexing %@ threw exception %@", &buf, 0x16u);
      }
    }

    objc_end_catch();
    JUMPOUT(0x1B7BA073CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1B7BA0ACC()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_resolvedURL", 1, 0, 0, 0);
  v3 = qword_1EBA54100;
  qword_1EBA54100 = v2;
}

void sub_1B7BA0D98(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v5, v6, v7);
      v9 = 136315650;
      v10 = "[IMDLegacyCoreSpotlightManager _updateItem:withResolvedURL:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlight %s: indexing resolved url searchable item %@ failed with error %@", &v9, 0x20u);
    }
  }
}

void sub_1B7BA1168(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v5, v6, v7);
      v9 = 136315650;
      v10 = "[IMDLegacyCoreSpotlightManager _updateItem:withFPProviderID:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlight %s: Updating FileProviderID for searchable item %@ failed with error %@", &v9, 0x20u);
    }
  }
}

void sub_1B7BA17A0(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v5, v6, v7);
      v9 = 136315650;
      v10 = "[IMDLegacyCoreSpotlightManager _updateItem:withIdentityMap:localIdentity:localIdentityProof:completionHandler:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlight %s: Updating Proof of inclusion for searchable item %@ failed with error %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1B7BA1C78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = IMDIndexingClientRequestQueue(v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BA1D54;
  v10[3] = &unk_1E7CBB3C0;
  v11 = v6;
  v12 = *(a1 + 32);
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_1B7BA1D54(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9550(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v17 = objc_msgSend_uniqueIdentifier(*(a1 + 40), v14, v15, v16);
        v21 = 138412290;
        v22 = v17;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Found resolved URL for item %@", &v21, 0xCu);
      }
    }

    v19 = *(a1 + 40);
    v18 = *(a1 + 48);
    v2 = objc_msgSend_absoluteString(*(a1 + 56), v10, v11, v12);
    objc_msgSend__updateItem_withResolvedURL_(v18, v20, v19, v2);
  }
}

void *sub_1B7BA21B0()
{
  result = MEMORY[0x1B8CAFAD0]("FPProviderForShareURL", @"FileProvider");
  off_1EBA54118 = result;
  return result;
}

void sub_1B7BA21E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = IMDIndexingClientRequestQueue(v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BA22E0;
  v10[3] = &unk_1E7CBB410;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_1B7BA22E0(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_description(*(a1 + 40), v7, v8, v9);
      v42 = 138412546;
      v43 = v5;
      v44 = 2112;
      v45 = v10;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to get FPProviderID:%@ for URL. Error: %@", &v42, 0x16u);
    }
  }

  if (qword_1EBA54130 != -1)
  {
    sub_1B7CF95E8();
  }

  if (off_1EBA54128)
  {
    v11 = off_1EBA54128();
    v15 = objc_msgSend_host(*(a1 + 48), v12, v13, v14);
    v18 = objc_msgSend_containsObject_(v11, v16, v15, v17);
    v19 = IMOSLoggingEnabled();
    if (v18)
    {
      if (v19)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          LOWORD(v42) = 0;
          _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Setting default FileProviderID for URL", &v42, 2u);
        }
      }

      if (qword_1EBA54140 != -1)
      {
        sub_1B7CF9610();
      }

      if (off_1EBA54138 && (off_1EBA54138(), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v42 = 138412290;
            v43 = v21;
            _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Found FileProviderID from FPCloudDocsProviderID(): %@", &v42, 0xCu);
          }
        }

        v23 = v21;

        v5 = v23;
      }

      else
      {
        v23 = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v42 = 138412290;
            v43 = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
            _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "Did not find FileProviderID from FPCloudDocsProviderID(), falling back to default ID: %@", &v42, 0xCu);
          }
        }
      }
    }

    else
    {
      if (v19)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          LOWORD(v42) = 0;
          _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Host for URL not in ValidSharingURLs so not defaulting FPProviderID", &v42, 2u);
        }
      }

      v23 = v5;
    }
  }

  else
  {
LABEL_23:
    v23 = v5;
  }

  v26 = objc_msgSend_filename(*(a1 + 56), v2, v3, v4);
  v30 = objc_msgSend_length(v26, v27, v28, v29) == 0;

  LODWORD(v26) = objc_msgSend_length(v23, v31, v32, v33) == 0;
  v34 = IMOSLoggingEnabled();
  if ((v26 | v30))
  {
    if (v34)
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v40 = objc_msgSend_filename(*(a1 + 56), v37, v38, v39);
        v42 = 138412546;
        v43 = v23;
        v44 = 2112;
        v45 = v40;
        _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_INFO, "Not setting FPProviderID: %@ for URL in CSSI. FileName: %@", &v42, 0x16u);
      }
    }
  }

  else
  {
    if (v34)
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = 138412290;
        v43 = v23;
        _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "Setting FPProviderID: %@ for URL in CSSI", &v42, 0xCu);
      }
    }

    objc_msgSend__updateItem_withFPProviderID_(*(a1 + 64), v35, *(a1 + 72), v23);
  }
}

uint64_t (*sub_1B7BA27C4())(void)
{
  result = MEMORY[0x1B8CAFAD0]("CKValidSharingURLHostnames", @"CloudKit");
  off_1EBA54128 = result;
  return result;
}

uint64_t (*sub_1B7BA27F4())(void)
{
  result = MEMORY[0x1B8CAFAD0]("FPCloudDocsProviderID", @"FileProvider");
  off_1EBA54138 = result;
  return result;
}

void sub_1B7BA3010(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7BA28E8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1B7BA3068(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF974C(v6, v7, v8, v9);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412546;
        v23 = v5;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Fetched localIdentityProof: %@ for localIdentity: %@", buf, 0x16u);
      }
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = objc_msgSend_handleToIdentityMap(*(a1 + 48), v10, v11, v12);
    v18 = *(*(*(a1 + 64) + 8) + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1B7BA324C;
    v20[3] = &unk_1E7CB6AE0;
    v21 = *(a1 + 56);
    objc_msgSend__updateItem_withIdentityMap_localIdentity_localIdentityProof_completionHandler_(v15, v19, v16, v17, v18, v5, v20);

    v7 = v21;
  }
}

void sub_1B7BA3A34()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_isChatAutoDonating", 1, 0, 0, 0);
  v3 = qword_1EDBE5B90;
  qword_1EDBE5B90 = v2;
}

void sub_1B7BA3AD0()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_chatAutoDonatingServerDate", 1, 0, 0, 0);
  v3 = qword_1EDBE5B80;
  qword_1EDBE5B80 = v2;
}

void sub_1B7BA3B6C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_chatStyle", 1, 0, 0, 0);
  v3 = qword_1EDBE5EA8;
  qword_1EDBE5EA8 = v2;
}

void sub_1B7BA3C08()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_localIdentityProof", 0, 0, 1, 0);
  v3 = qword_1EBA54148;
  qword_1EBA54148 = v2;
}

void sub_1B7BA3CA4()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_localIdentity", 0, 0, 1, 0);
  v3 = qword_1EBA54158;
  qword_1EBA54158 = v2;
}

void sub_1B7BA3D40()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_handleToIdentityMap", 0, 0, 1, 0);
  v3 = qword_1EBA54168;
  qword_1EBA54168 = v2;
}

void sub_1B7BA3DDC()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_threadIdentifier", 0, 0, 1, 0);
  v3 = qword_1EBA53A28;
  qword_1EBA53A28 = v2;
}

void sub_1B7BA4008(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v160 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v118 = a2;
  v121 = a3;
  v120 = a4;
  v11 = a6;
  v119 = v10;
  if (IMDCoreSpotlightDisabled(v11, v12, v13, v14))
  {
    v11[2](v11);
    goto LABEL_54;
  }

  v116 = v11;
  group = dispatch_group_create();
  objc_msgSend_beginIndexBatch(v10, v15, v16, v17);
  v21 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v18, v19, v20);
  dispatch_group_enter(group);
  v149[0] = MEMORY[0x1E69E9820];
  v149[1] = 3221225472;
  v149[2] = sub_1B7BA8330;
  v149[3] = &unk_1E7CB6C10;
  v124 = v21;
  v150 = v124;
  v151 = v10;
  v114 = v151;
  objc_msgSend_indexSearchableItems_completionHandler_(v151, v22, v121, v149);
  if (objc_msgSend_count(v120, v23, v24, v25) && (IMCoreSpotlightIndexReasonIsIncomingMessage() & 1) == 0)
  {
    if (objc_msgSend_withdrawDonationsForFailedPreviewGenerations(MEMORY[0x1E69A7FF8], v26, v27, v28))
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v30 = v120;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v145, v159, 16);
      if (v35)
      {
        v36 = *v146;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v146 != v36)
            {
              objc_enumerationMutation(v30);
            }

            v38 = *(*(&v145 + 1) + 8 * i);
            v39 = MEMORY[0x1E696AD98];
            v40 = objc_msgSend_reason(v38, v32, v33, v34);
            v43 = objc_msgSend_numberWithInteger_(v39, v41, v40, v42);
            v49 = objc_msgSend_objectForKeyedSubscript_(v29, v44, v43, v45);
            if (!v49)
            {
              v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
              objc_msgSend_setObject_forKeyedSubscript_(v29, v50, v49, v43);
            }

            v51 = objc_msgSend_proposedIdentifier(v38, v46, v47, v48);
            objc_msgSend_addObject_(v49, v52, v51, v53);
          }

          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v145, v159, 16);
        }

        while (v35);
      }

      v142[0] = MEMORY[0x1E69E9820];
      v142[1] = 3221225472;
      v142[2] = sub_1B7BA842C;
      v142[3] = &unk_1E7CBBD18;
      v143 = v114;
      v144 = a5;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v29, v54, v142, v55);
    }

    else if (IMOSLoggingEnabled())
    {
      v56 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v60 = objc_msgSend_count(v120, v57, v58, v59);
        *buf = 134217984;
        v154 = v60;
        _os_log_impl(&dword_1B7AD5000, v56, OS_LOG_TYPE_INFO, "not deleting %ld items from Spotlight due to override", buf, 0xCu);
      }
    }
  }

  v61 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v26, v27, v28);
  isSpotlightClientStateEnabled = objc_msgSend_isSpotlightClientStateEnabled(v61, v62, v63, v64);

  if (!isSpotlightClientStateEnabled)
  {
    v70 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v66, v67, v68);
    v115 = objc_msgSend_dataUsingEncoding_(v70, v72, 4, v73);
LABEL_27:

    goto LABEL_29;
  }

  if (!v118)
  {
    v115 = 0;
    goto LABEL_29;
  }

  v141 = 0;
  v115 = objc_msgSend_dataWithError_(v118, v66, &v141, v68);
  v69 = v141;
  if (v69)
  {
    v70 = v69;
    v71 = IMLogHandleForCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
    {
      sub_1B7CF9A20();
    }

    goto LABEL_27;
  }

LABEL_29:
  if (IMOSLoggingEnabled())
  {
    v77 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      v81 = objc_msgSend_count(v121, v78, v79, v80);
      v82 = NSStringFromIMCoreSpotlightIndexReason();
      *buf = 134218498;
      v154 = v81;
      v155 = 2112;
      v156 = v82;
      v157 = 2112;
      v158 = v124;
      _os_log_impl(&dword_1B7AD5000, v77, OS_LOG_TYPE_INFO, "Indexing %ld searchable items due to %@ - transaction %@", buf, 0x20u);
    }
  }

  if (objc_msgSend_count(v121, v74, v75, v76))
  {
    if (qword_1EBA53BC0 != -1)
    {
      sub_1B7CF9A9C();
    }

    if (IMOSLoggingEnabled())
    {
      v83 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        v87 = objc_msgSend_count(v121, v84, v85, v86);
        *buf = 134218242;
        v154 = v87;
        v155 = 2112;
        v156 = v124;
        _os_log_impl(&dword_1B7AD5000, v83, OS_LOG_TYPE_INFO, "Donating %ld items to Suggestions with transaction ID %@", buf, 0x16u);
      }
    }

    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    obj = v121;
    v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v88, &v137, v152, 16);
    if (v92)
    {
      v93 = *v138;
      do
      {
        for (j = 0; j != v92; ++j)
        {
          if (*v138 != v93)
          {
            objc_enumerationMutation(obj);
          }

          v95 = *(*(&v137 + 1) + 8 * j);
          if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v89, v90, v91) && IMOSLoggingEnabled())
          {
            v96 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
            {
              v100 = objc_msgSend_uniqueIdentifier(v95, v97, v98, v99);
              v104 = objc_msgSend_domainIdentifier(v95, v101, v102, v103);
              *buf = 138412802;
              v154 = v100;
              v155 = 2112;
              v156 = v104;
              v157 = 2112;
              v158 = v124;
              _os_log_impl(&dword_1B7AD5000, v96, OS_LOG_TYPE_INFO, "Donating item ID %@ domain %@ to Suggestions with transaction ID %@", buf, 0x20u);
            }
          }

          dispatch_group_enter(group);
          v105 = qword_1EBA53BB8;
          v134[0] = MEMORY[0x1E69E9820];
          v134[1] = 3221225472;
          v134[2] = sub_1B7BA86DC;
          v134[3] = &unk_1E7CBBD40;
          v134[4] = v95;
          v135 = v124;
          v136 = group;
          objc_msgSend_suggestionsFromMessage_options_completionHandler_(v105, v106, v95, 3, v134);
        }

        v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v89, &v137, v152, 16);
      }

      while (v92);
    }
  }

  v107 = IMCSIndexReasonFromIMIndexReason();
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = sub_1B7BA8888;
  v129[3] = &unk_1E7CBBD68;
  v108 = v124;
  v130 = v108;
  v131 = v114;
  v109 = v121;
  v132 = v109;
  v133 = group;
  v110 = group;
  objc_msgSend_endIndexBatchWithExpectedClientState_newClientState_reason_completionHandler_(v131, v111, 0, v115, v107, v129);
  v112 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA89D4;
  block[3] = &unk_1E7CB71C0;
  v126 = v109;
  v127 = v108;
  v128 = v116;
  v113 = v108;
  dispatch_group_notify(v110, v112, block);

  v11 = v116;
LABEL_54:
}

void sub_1B7BA4B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BA4B94(uint64_t a1)
{
  v5 = IMDChatRecordCopyChatForGUID(*(a1 + 32));
  v2 = IMCopyIndexableChatDictionaryForRecord(v5, 1);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1B7BA5050(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v40 = 138412290;
        v41 = v3;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Failed to check if we should sanitize indexes, suspending reindexing: %@", &v40, 0xCu);
      }
    }

    objc_msgSend__suspendReindexingDueToError_(*(a1 + 32), v5, v3, v6);
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))();
    }
  }

  else
  {
    if (v4)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "_sanitizeIndexesForCurrentVersionIfNeeded complete, kicking off standard indexes", &v40, 2u);
      }
    }

    objc_msgSend__setNeedsIndexing_(*(a1 + 32), v5, 1, v6);
    objc_msgSend__setNeedsDeferredIndexing_(*(a1 + 32), v10, 0, v11);
    v15 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v12, v13, v14);
    v16 = objc_alloc(MEMORY[0x1E69A82A8]);
    v18 = objc_msgSend_initWithMaxRowID_totalMessages_(v16, v17, *(a1 + 56), *(a1 + 64));
    objc_msgSend_saveClientState_(v15, v19, v18, v20);

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Beginning message reindexing", &v40, 2u);
      }
    }

    v25 = *(a1 + 32);
    v26 = objc_msgSend_reason(*(a1 + 40), v21, v22, v23);
    objc_msgSend_indexChatsWithReason_(v25, v27, v26, v28);
    v29 = *(a1 + 32);
    BatchSize = objc_msgSend_reindexFirstBatchSize(MEMORY[0x1E69A7FF8], v30, v31, v32);
    v37 = objc_msgSend_reason(*(a1 + 40), v34, v35, v36);
    objc_msgSend_indexNextMessageBatchIfNeeded_reason_completion_(v29, v38, BatchSize, v37, *(a1 + 48));
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_INFO, "Finished message reindexing", &v40, 2u);
      }
    }
  }
}

uint64_t (**sub_1B7BA5340(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4))(void)
{
  v5 = objc_msgSend_searchableIndex(*(a1 + 32), a2, a3, a4);

  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);

    return objc_msgSend__sanitizeIndexesForCurrentVersionIfNeeded_(v8, v6, v9, v7);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to create index!", v12, 2u);
      }
    }

    result = *(a1 + 40);
    if (result)
    {
      return result[2]();
    }
  }

  return result;
}

void sub_1B7BA5884(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7BA5814);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1B7BA590C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_msgSend_stopTimingForKey_(*(a1 + 32), v5, @"CSDeleteAllIndexes", v6);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Index deletion complete - %@", &v10, 0xCu);
    }
  }

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Version mismatch failed to delete all indexes! %@", &v10, 0xCu);
      }
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1B7BA5A9C(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BA5B28;
  v4[3] = &unk_1E7CB8F20;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  IMDIndexingClientRequest(v4);
}

uint64_t sub_1B7BA5B28(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t sub_1B7BA5ED8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  started = objc_msgSend_startTimingForKey_(*(a1 + 32), a2, @"copyAllActiveChats", a4);
  active = IMDChatRecordCopyAllActiveChats(started);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = active;

  v11 = *(a1 + 32);

  return objc_msgSend_stopTimingForKey_(v11, v9, @"copyAllActiveChats", v10);
}

void sub_1B7BA616C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v17 = 134217984;
        v18 = objc_msgSend_count(v3, v9, v10, v11);
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Indexing %ld chat records", &v17, 0xCu);
      }
    }

    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = objc_msgSend_searchableIndex(v13, v5, v6, v7);
    objc_msgSend__indexSearchableChatItems_withReason_index_blocking_(v13, v15, v3, v12, v14, 1);
  }

  else if (v4)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to get chats to index!", &v17, 2u);
    }
  }
}

void sub_1B7BA665C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BA6674(uint64_t a1)
{
  v2 = IMCopyIndexableChatDictionaryForRecord(*(a1 + 32), 1);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

BOOL sub_1B7BA6798(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int64_t a6)
{
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = dispatch_semaphore_create(0);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1B7BA8AD0;
  v20[3] = &unk_1E7CB6AE0;
  v21 = v15;
  v16 = v15;
  sub_1B7BA4008(v14, v13, v12, v11, a5, v20);

  v17 = dispatch_time(0, a6);
  v18 = dispatch_semaphore_wait(v16, v17) != 0;

  return v18;
}

BOOL sub_1B7BA6DD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *&v50[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 56);
  v7 = *a2;
  v8 = objc_msgSend_messageSubBatchSize(MEMORY[0x1E69A7FF8], a2, a3, a4);
  v12 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v9, v10, v11);
  v46 = 0;
  v15 = objc_msgSend_currentClientStateWithError_(v12, v13, &v46, v14);
  v16 = v46;

  if (v16)
  {
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1B7CF9AC4();
    }

    objc_msgSend__suspendReindexingDueToError_(*(a1 + 32), v21, v16, v22);
    v23 = 0;
  }

  else
  {
    v44 = 0;
    IndexedRowID = objc_msgSend_lastIndexedRowID(v15, v17, v18, v19);
    if (v6 - v7 >= v8)
    {
      v24 = v8;
    }

    else
    {
      v24 = v6 - v7;
    }

    v43 = 0;
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = objc_msgSend__copyNewSearchableIndexesForMessagesWithLastRowID_messageRecordCount_messagesWithItemsGeneratedCount_reason_batchSize_timingCollection_rejectedItems_(*(a1 + 32), v26, &IndexedRowID, &v44, &v43, *(a1 + 64), v24, *(a1 + 40), v25);
    v30 = v44;
    if (v44 < v24 && IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v48 = v44;
        v49 = 2048;
        *v50 = v24;
        _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "messageRecordCount (%lu) < current sub batch size (%lu). Reaching the end of indexing all message records.", buf, 0x16u);
      }
    }

    objc_msgSend_startTimingForKey_(*(a1 + 40), v27, @"CSIngest", v28);
    objc_msgSend__indexSearchableItems_rejectedItems_clientState_lastIndexedRowID_messagesInBatch_messagesWithItemsGeneratedCount_batchSize_lastBatch_withIndex_reason_(*(a1 + 32), v32, v29, v25, v15, IndexedRowID, v44, v43, v24, v30 < v24, *(a1 + 48), *(a1 + 64));
    objc_msgSend_stopTimingForKey_(*(a1 + 40), v33, @"CSIngest", v34);
    *a2 += v24;
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v39 = objc_msgSend_count(v29, v36, v37, v38);
        v40 = *a2;
        v41 = (*(a1 + 56) - v40) & ~((*(a1 + 56) - v40) >> 31);
        *buf = 134218496;
        v48 = v39;
        v49 = 1024;
        *v50 = v40;
        v50[2] = 1024;
        *&v50[3] = v41;
        _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "Indexed %lld items. Batch progress: %d/%d", buf, 0x18u);
      }
    }

    v23 = v30 >= v24;
  }

  return v23;
}

id sub_1B7BA7220(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_(*(a1 + 32), a2, a2, a3, *(a1 + 40), *(a1 + 48));
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    ++**(a1 + 56);
  }

  return v4;
}

void sub_1B7BA7554(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = IMOSLoggingEnabled();
  if (v2 == 1)
  {
    if (v3)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Indexing complete!", buf, 2u);
      }
    }

    objc_msgSend__setNeedsIndexing_(*(a1 + 32), v4, 0, v6);
    v11 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v8, v9, v10);
    objc_msgSend_reindexCompletedWithState_reason_(v11, v12, *(a1 + 40), *(a1 + 48));
  }

  else if (v3)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 56);
      *buf = 134217984;
      v32 = v14;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "New lastIndexedRowID is %lu", buf, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v15 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5, v6);
    isSpotlightClientStateEnabled = objc_msgSend_isSpotlightClientStateEnabled(v15, v16, v17, v18);

    if ((isSpotlightClientStateEnabled & 1) == 0)
    {
      v23 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v20, v21, v22);
      v24 = *(a1 + 40);
      v30 = 0;
      objc_msgSend_saveClientState_withError_(v23, v25, v24, &v30);
      v26 = v30;

      if (v26)
      {
        v27 = IMLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF9B38();
        }

        objc_msgSend__suspendReindexingDueToError_(*(a1 + 32), v28, v26, v29);
      }
    }
  }
}

void sub_1B7BA7B00(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BA7B8C;
  v3[3] = &unk_1E7CBB328;
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  objc_msgSend_deleteAllSearchableItemsWithReason_completionHandler_(v1, v2, 1009, v3);
}

void sub_1B7BA7B8C(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Failed to delete all searchable items upon app deletion with error %@. Defaults and client state will not be cleared.", buf, 0xCu);
      }
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v6);
    }
  }

  else
  {
    v9 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v3, v4, v5);
    objc_msgSend_removePersistentDomainForName_(v9, v10, @"com.apple.IMCoreSpotlight", v11);

    v12 = objc_alloc_init(MEMORY[0x1E69A82A8]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7BA7D40;
    v15[3] = &unk_1E7CBB768;
    v16 = v12;
    v13 = *(a1 + 32);
    v17 = 0;
    v18 = v13;
    v14 = v12;
    IMDIndexingClientRequest(v15);
  }
}

uint64_t sub_1B7BA7D40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, a2, a3, a4);
  objc_msgSend_saveClientState_(v5, v6, *(a1 + 32), v7);

  result = *(a1 + 48);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

uint64_t sub_1B7BA7F04(uint64_t a1)
{
  sub_1B7BA6798(*(a1 + 32), 0, *(a1 + 40), *(a1 + 48), *(a1 + 64), 10000000000);
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7BA7F68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

Class sub_1B7BA7F94(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BA7FEC(a1, a2, a3, a4);
  result = objc_getClass("SROSmartRepliesManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF9C08(result, v6, v7, v8);
  }

  qword_1EDBE5B60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B7BA7FEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EDBE5C08)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1B7BA80E0;
    v4[4] = &unk_1E7CB6A70;
    v4[5] = v4;
    v5 = xmmword_1E7CBBCD0;
    v6 = 0;
    qword_1EDBE5C08 = _sl_dlopen();
  }

  if (!qword_1EDBE5C08)
  {
    sub_1B7CF9C84(v4, a2, a3, a4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }
}

uint64_t sub_1B7BA80E0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EDBE5C08 = result;
  return result;
}

Class sub_1B7BA8154(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BA7FEC(a1, a2, a3, a4);
  result = objc_getClass("SROSmartRepliesMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF9D04(result, v6, v7, v8);
  }

  qword_1EDBE5B50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BA81AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BA7FEC(a1, a2, a3, a4);
  result = objc_getClass("SROSmartRepliesSuggestionRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF9D80(result, v6, v7, v8);
  }

  qword_1EDBE5B40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B7BA8204(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "_IMDCoreSpotlightDeleteSearchableItems: deleting for searchable items failed with error %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t sub_1B7BA8300()
{
  result = MEMORY[0x1B8CAFAC0](@"NRURLResolutionManager", @"NewsURLResolution");
  qword_1EBA54110 = result;
  return result;
}

void sub_1B7BA8330(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlightIndexSearchableItems: indexing transaction %@ failed with error %@. Using Index %@", &v7, 0x20u);
    }
  }
}

void sub_1B7BA842C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v10 = objc_msgSend_integerValue(a2, v7, v8, v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BA84EC;
  v14[3] = &unk_1E7CBBCF0;
  v11 = *(a1 + 40);
  v15 = v5;
  v16 = v11;
  v12 = v5;
  objc_msgSend_deleteSearchableItemsWithIdentifiers_reason_completionHandler_(v6, v13, v12, v10, v14);
}

void sub_1B7BA84EC(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = objc_msgSend_count(*(a1 + 32), v6, v7, v8);
        v10 = NSStringFromIMCoreSpotlightIndexReason();
        v16 = 134218498;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        v20 = 2112;
        v21 = v3;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "IMDCoreSpotlightIndexSearchableItems: failed to delete %ld items for reason %@ due to %@", &v16, 0x20u);
      }

LABEL_9:
    }
  }

  else if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v14 = objc_msgSend_count(*(a1 + 32), v11, v12, v13);
      v15 = NSStringFromIMCoreSpotlightIndexReason();
      v16 = 134218242;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "deleted %ld items for reason %@", &v16, 0x16u);
    }

    goto LABEL_9;
  }
}

void sub_1B7BA8678(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7BA8644);
  }

  _Unwind_Resume(a1);
}

void sub_1B7BA869C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_serviceForMessages(MEMORY[0x1E69992A0], a2, a3, a4);
  v5 = qword_1EBA53BB8;
  qword_1EBA53BB8 = v4;
}

void sub_1B7BA86DC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v13, v14, v15) && IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v17, v18, v19);
      v24 = objc_msgSend_domainIdentifier(*(a1 + 32), v21, v22, v23);
      v28 = objc_msgSend_count(v10, v25, v26, v27);
      v32 = objc_msgSend_count(v11, v29, v30, v31);
      v33 = *(a1 + 40);
      v34 = 138413314;
      v35 = v20;
      v36 = 2112;
      v37 = v24;
      v38 = 2048;
      v39 = v28;
      v40 = 2048;
      v41 = v32;
      v42 = 2112;
      v43 = v33;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Finished donating item ID %@ domain %@ to Suggestions with %ld pseudo-contacts %ld pseudo-events transaction ID %@", &v34, 0x34u);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1B7BA8888(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9DFC();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = objc_msgSend_count(*(a1 + 48), v6, v7, v8);
        v10 = *(a1 + 32);
        v11 = 134218242;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "donation of %ld items to spotlight with transaction ID %@ completed", &v11, 0x16u);
      }
    }

    notify_post("com.apple.imdpersistenceagent.notification.spotlightclientstateupdated");
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_1B7BA89D4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v6 = objc_msgSend_count(*(a1 + 32), v3, v4, v5);
      v7 = *(a1 + 40);
      v9 = 134218242;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Finished donating %ld items to Spotlight and Suggestions with transaction ID %@", &v9, 0x16u);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7BA8B2C()
{
  v0 = objc_alloc_init(IMDLegacyCoreSpotlightQueryProvider);
  v1 = qword_1EBA53A40;
  qword_1EBA53A40 = v0;
}

void sub_1B7BA8C44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_reason(*(a1 + 40), a2, a3, a4);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BA8CE8;
  v7[3] = &unk_1E7CBB328;
  v8 = *(a1 + 48);
  sub_1B7B9C9A0(v5, v6, v7);
}

uint64_t sub_1B7BA8CE8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7BA8DDC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  isReindexing = objc_msgSend_isReindexing(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);
  v10 = objc_msgSend_reason(*(a1 + 32), v7, v8, v9);
  if (isReindexing)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7BA8F00;
    v14[3] = &unk_1E7CB67C0;
    v11 = &v15;
    v15 = *(a1 + 48);
    sub_1B7B9CD7C(v6, v10, 0, v14);
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7BA8F14;
    v12[3] = &unk_1E7CBB328;
    v11 = &v13;
    v13 = *(a1 + 48);
    sub_1B7B99E94(v6, v10, v12);
  }
}

uint64_t sub_1B7BA8F14(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7BA8FBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, a2, a3, a4);
  objc_msgSend_deleteAllDonationsForAppDeletionWithCompletion_(v7, v5, *(a1 + 32), v6);
}

void sub_1B7BA90F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_reason(*(a1 + 40), a2, a3, a4);
  v7 = *(a1 + 48);

  sub_1B7B9B850(v5, v6, v7);
}

void sub_1B7BA9210(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_reason(*(a1 + 40), a2, a3, a4);
  v7 = *(a1 + 48);

  sub_1B7B9C3D0(v5, v6, v7);
}

void sub_1B7BA9330(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_reason(*(a1 + 40), a2, a3, a4);
  v7 = *(a1 + 48);

  sub_1B7B9ADF4(v5, v6, v7);
}

void sub_1B7BA9410(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BA94A4;
  v3[3] = &unk_1E7CB67C0;
  v4 = *(a1 + 32);
  sub_1B7B9DCAC(0, v1, v2, v3);
}

void sub_1B7BA9564(uint64_t a1)
{
  v2 = [IMDHandleReindexer alloc];
  v7 = objc_msgSend_initWithHandles_batchDeferralTime_messageAge_reason_(v2, v3, *(a1 + 32), *(a1 + 40), *(a1 + 56), *(a1 + 48));
  objc_msgSend_reindex(v7, v4, v5, v6);
}

void sub_1B7BA96EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_reason(*(a1 + 32), a2, a3, a4);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BA9788;
  v6[3] = &unk_1E7CB67C0;
  v7 = *(a1 + 40);
  sub_1B7B9DB40(0, v5, v6);
}

void sub_1B7BA9C0C(uint64_t a1)
{
  v2 = [IMDIndexingContext alloc];
  v4 = objc_msgSend_initForReindexing_reason_(v2, v3, 1, 1004);
  objc_msgSend_setPreflight_(v4, v5, 1, v6);
  v7 = *(a1 + 56);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BA9CF4;
  v14[3] = &unk_1E7CBBDB8;
  v8 = *(a1 + 32);
  v11 = a1 + 40;
  v9 = *(a1 + 40);
  v10 = *(v11 + 8);
  v14[4] = v8;
  v15 = v4;
  v16 = v7;
  v12 = v4;
  objc_msgSend_copyIndexableMessageDictionariesWithLimit_requireIndexableAttachments_isIndexableBlock_completionHandler_(IMDIndexingUtilities, v13, v10, v7, v14, v9);
}

BOOL sub_1B7BA9CF4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__indexableMessageGUIDsInSpotlight_chatDictionary_context_requireIndexableAttachments_(*(a1 + 32), a2, a2, a3, *(a1 + 40), *(a1 + 48));
  v7 = objc_msgSend_count(v3, v4, v5, v6) != 0;

  return v7;
}

void sub_1B7BA9E28(uint64_t a1)
{
  v2 = [IMDIndexingContext alloc];
  v4 = objc_msgSend_initForReindexing_reason_(v2, v3, 1, 1004);
  objc_msgSend_setPreflight_(v4, v5, 1, v6);
  objc_msgSend_setIgnoreRejections_(v4, v7, *(a1 + 56), v8);
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [IMDThreadSafeMessageDictionaryMapper alloc];
  v11 = *(a1 + 32);
  v12 = objc_alloc_init(MEMORY[0x1E69A6170]);
  v14 = objc_msgSend_initForFetchingMessageGUIDs_timingCollection_(v10, v13, v11, v12);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7BA9FF8;
  aBlock[3] = &unk_1E7CBBE08;
  v34 = v9;
  v15 = v9;
  v16 = _Block_copy(aBlock);
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = sub_1B7BAA0A4;
  v29 = &unk_1E7CBBE30;
  v31 = v4;
  v32 = v16;
  v30 = *(a1 + 40);
  v17 = v4;
  v18 = v16;
  objc_msgSend_processWithBlock_(v14, v19, &v26, v20);
  v21 = *(a1 + 48);
  v25 = objc_msgSend_copy(v15, v22, v23, v24, v26, v27, v28, v29, v30);
  (*(v21 + 16))(v21, v25, 0);
}

void sub_1B7BA9FF8(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (objc_msgSend_count(v5, v6, v7, v8))
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v9, v15, v10);
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v14, v13, v15);
    }

    objc_msgSend_addObjectsFromArray_(v13, v11, v5, v12);
  }
}

void sub_1B7BAA0A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = objc_msgSend__indexableMessageGUIDsInSpotlight_chatDictionary_context_requireIndexableAttachments_(*(a1 + 32), a2, a2, a3, *(a1 + 40), 0);
  (*(v3 + 16))(v3, @"Spotlight", v4);
}

void sub_1B7BAA27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BAA294(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BAA3EC;
  v13[3] = &unk_1E7CBBEA8;
  v16 = *(a1 + 64);
  v3 = *(a1 + 48);
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v4 = (*(v3 + 16))(v3, v2, v13);
  v5 = *(a1 + 32);
  v6 = IMDIndexingClientRequestQueue(v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAA58C;
  v9[3] = &unk_1E7CBBED0;
  v11 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v10 = v7;
  v12 = v8;
  dispatch_group_notify(v5, v6, v9);
}

void sub_1B7BAA3EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BAA4FC;
  v14[3] = &unk_1E7CBBE80;
  v10 = *(a1 + 48);
  v15 = v9;
  v20 = v10;
  v16 = *(a1 + 32);
  v17 = v7;
  v18 = v8;
  v19 = *(a1 + 40);
  v11 = v8;
  v12 = v7;
  v13 = v9;
  IMDIndexingClientRequest(v14);
}

void sub_1B7BAA4FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(*(a1 + 72) + 8);
    v9 = *(v6 + 40);
    v7 = (v6 + 40);
    v8 = v9;
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    objc_storeStrong(v7, v10);
  }

  else
  {
    v11 = *(a1 + 56);
    if (v11)
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), a2, v11, *(a1 + 48));
    }

    else
    {
      v12 = objc_msgSend_set(MEMORY[0x1E695DFD8], a2, 0, a4);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v13, v12, *(a1 + 48));
    }
  }

  v14 = *(a1 + 64);

  dispatch_group_leave(v14);
}

void sub_1B7BAA58C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_copy(*(a1 + 32), a2, a3, a4);
  (*(v5 + 16))(v5, v6, *(*(*(a1 + 48) + 8) + 40));
}

void sub_1B7BAA698(uint64_t a1, NSObject *a2, void *a3)
{
  v5 = a3;
  dispatch_group_enter(a2);
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAA754;
  v9[3] = &unk_1E7CBBF20;
  v10 = v5;
  v7 = v5;
  objc_msgSend_checkForIndexedChatGUIDs_completionBlock_(IMDCoreSpotlightValidationUtilities, v8, v6, v9);
}

void sub_1B7BAA818(uint64_t a1, NSObject *a2, void *a3)
{
  v5 = a3;
  dispatch_group_enter(a2);
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAA8D4;
  v9[3] = &unk_1E7CBBF20;
  v10 = v5;
  v7 = v5;
  objc_msgSend_checkForIndexedMessageGUIDs_completionBlock_(IMDCoreSpotlightValidationUtilities, v8, v6, v9);
}

void sub_1B7BAA998(uint64_t a1, NSObject *a2, void *a3)
{
  v5 = a3;
  dispatch_group_enter(a2);
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAAA54;
  v9[3] = &unk_1E7CBBF20;
  v10 = v5;
  v7 = v5;
  objc_msgSend_checkForIndexedAttachmentGUIDs_completionBlock_(IMDCoreSpotlightValidationUtilities, v8, v6, v9);
}

void sub_1B7BAAFC0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7BAAF38);
  }

  _Unwind_Resume(a1);
}

void sub_1B7BAAFF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = objc_msgSend__stripFZIDPrefix(a2, a2, a3, a4);
  v8 = _IMDCoreSpotlightCNContactForAddress(v19);
  if (v8 && v19)
  {
    v9 = objc_msgSend_sharedInstance(IMDContactCache, v5, v6, v7);
    v12 = objc_msgSend_fullNameForContact_(v9, v10, v8, v11);

    if (!v12)
    {
      v12 = v19;
    }

    objc_msgSend_addObject_(*(a1 + 32), v13, v12, v14);
    objc_msgSend_addObject_(*(a1 + 40), v15, v19, v16);
  }

  else if (v19)
  {
    objc_msgSend_addObject_(*(a1 + 32), v5, v19, v7);
    objc_msgSend_addObject_(*(a1 + 40), v17, v19, v18);
  }
}

void sub_1B7BAB424(uint64_t a1)
{
  v2 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v2)
  {
    v3 = v2;
    CFPreferencesAppSynchronize(v2);
    v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, a1, v5);
    CFPreferencesSetAppValue(@"IMCSIndexReason", v6, v3);

    CFRelease(v3);
  }
}

void sub_1B7BAB4A0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = IMLogHandleForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9F10(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Finished setting need reindexing", v5, 2u);
  }
}

id sub_1B7BAB53C()
{
  v0 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v0)
  {
    v1 = v0;
    CFPreferencesAppSynchronize(v0);
    v2 = CFPreferencesCopyAppValue(@"IMDCoreSpotlightLastFullReindexRequestTime", v1);
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B7BAC5C8(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = IMOSLoggingEnabled();
  if (a2)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(*(*(a1 + 48) + 8) + 40);
      v44 = 138412802;
      v45 = v23;
      v46 = 2112;
      v47 = v15;
      v48 = 2112;
      v49 = v16;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Successfully downloaded file transfer with GUID %@. filePath: %@, livePhotoBundlePath: %@", &v44, 0x20u);
    }
  }

  else
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = *(*(*(a1 + 48) + 8) + 40);
      v44 = 138412802;
      v45 = v24;
      v46 = 2112;
      v47 = v14;
      v48 = 2112;
      v49 = v17;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Failed to download file transfer with GUID %@. suggestedRetryGUID: %@ Error: %@", &v44, 0x20u);
    }
  }

LABEL_10:
  if (v15 | v16)
  {
    v25 = objc_msgSend_pathExtension(v15, v19, v20, v21);
    v26 = IMUTITypeForExtension();
    v27 = *(*(a1 + 56) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    if (v16)
    {
      v29 = v16;
    }

    else
    {
      v29 = v15;
    }

    v30 = v29;
    v31 = objc_alloc(MEMORY[0x1E695DFF8]);
    inited = objc_msgSend_initFileURLWithPath_(v31, v32, v30, v33);
    v35 = *(*(a1 + 64) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = inited;

    if (v16 && IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = *(*(*(a1 + 64) + 8) + 40);
        v44 = 138412290;
        v45 = v38;
        _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "Requested transfer is a live photo. Returning live photo bundle URL. fileURL: %@", &v44, 0xCu);
      }
    }
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a4);
  if (v17)
  {
    v41 = objc_msgSend__createErrorFromSyncError_(*(a1 + 32), v39, v17, v40);
    v42 = *(*(a1 + 80) + 8);
    v43 = *(v42 + 40);
    *(v42 + 40) = v41;
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1B7BAC8F0(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = IMOSLoggingEnabled();
  if (a2)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(*(*(a1 + 40) + 8) + 40);
      v39 = 138412802;
      v40 = v23;
      v41 = 2112;
      v42 = v15;
      v43 = 2112;
      v44 = v16;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Successfully downloaded file transfer with secondary GUID %@. filePath: %@, livePhotoBundlePath: %@", &v39, 0x20u);
    }
  }

  else
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = *(*(*(a1 + 40) + 8) + 40);
      v39 = 138412546;
      v40 = v24;
      v41 = 2112;
      v42 = v17;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Failed to download file transfer with secondary GUID %@. Error: %@", &v39, 0x16u);
    }
  }

LABEL_10:
  if (v15 | v16)
  {
    v25 = objc_msgSend_pathExtension(v15, v19, v20, v21);
    v26 = IMUTITypeForExtension();
    v27 = *(*(a1 + 48) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    if (v16)
    {
      v29 = v16;
    }

    else
    {
      v29 = v15;
    }

    v30 = v29;
    v31 = objc_alloc(MEMORY[0x1E695DFF8]);
    inited = objc_msgSend_initFileURLWithPath_(v31, v32, v30, v33);
    v35 = *(*(a1 + 56) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = inited;

    if (v16 && IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = *(*(*(a1 + 56) + 8) + 40);
        v39 = 138412290;
        v40 = v38;
        _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "Requested transfer is a live photo. Returning live photo bundle URL. fileURL: %@", &v39, 0xCu);
      }
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1B7BADCA8(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = IMOSLoggingEnabled();
  if (a2)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v41 = 138412802;
      v42 = v13;
      v43 = 2112;
      v44 = v15;
      v45 = 2112;
      v46 = v16;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Successfully downloaded file transfer with GUID %@. filePath: %@, livePhotoBundlePath: %@", &v41, 0x20u);
    }
  }

  else
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v41 = 138412802;
      v42 = v13;
      v43 = 2112;
      v44 = v14;
      v45 = 2112;
      v46 = v17;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Failed to download file transfer with GUID %@. suggestedRetryGUID: %@ Error: %@", &v41, 0x20u);
    }
  }

LABEL_10:
  if (v15 | v16)
  {
    v23 = objc_msgSend_pathExtension(v15, v19, v20, v21);
    v24 = IMUTITypeForExtension();
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v25, v24, v13);

    if (v16)
    {
      v26 = v16;
    }

    else
    {
      v26 = v15;
    }

    v27 = v26;
    v28 = objc_alloc(MEMORY[0x1E695DFF8]);
    inited = objc_msgSend_initFileURLWithPath_(v28, v29, v27, v30);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 56) + 8) + 40), v32, inited, v13);

    if (v16 && IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v36 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 56) + 8) + 40), v34, v13, v35);
        v41 = 138412546;
        v42 = v36;
        v43 = 2112;
        v44 = v13;
        _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Requested transfer is a live photo. Returning live photo bundle URL. fileURL: %@ for file transfer guid: %@", &v41, 0x16u);
      }
    }
  }

  objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v19, v14, v13);
  if (v17)
  {
    v39 = objc_msgSend__createErrorFromSyncError_(*(a1 + 32), v37, v17, v38);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 72) + 8) + 40), v40, v39, v13);
  }

  objc_msgSend_addObject_(*(*(*(a1 + 80) + 8) + 40), v37, v13, v38);
  dispatch_group_leave(*(a1 + 40));
}

void sub_1B7BAE018(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v43 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = IMOSLoggingEnabled();
  if (a2)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v37 = 138412802;
      v38 = v13;
      v39 = 2112;
      v40 = v15;
      v41 = 2112;
      v42 = v16;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Successfully downloaded file transfer with secondary GUID %@. filePath: %@, livePhotoBundlePath: %@", &v37, 0x20u);
    }
  }

  else
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v37 = 138412546;
      v38 = v13;
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Failed to download file transfer with secondary GUID %@. Error: %@", &v37, 0x16u);
    }
  }

LABEL_10:
  if (v15 | v16)
  {
    v23 = objc_msgSend_pathExtension(v15, v19, v20, v21);
    v24 = IMUTITypeForExtension();
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v25, v24, v13);

    if (v16)
    {
      v26 = v16;
    }

    else
    {
      v26 = v15;
    }

    v27 = v26;
    v28 = objc_alloc(MEMORY[0x1E695DFF8]);
    inited = objc_msgSend_initFileURLWithPath_(v28, v29, v27, v30);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v32, inited, v13);

    if (v16 && IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v36 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v34, v13, v35);
        v37 = 138412546;
        v38 = v36;
        v39 = 2112;
        v40 = v13;
        _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Requested transfer is a live photo. Returning live photo bundle URL. fileURL: %@ for file transfer guid: %@", &v37, 0x16u);
      }
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void IMDCoreSpotlightDeleteMessageGUIDS(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5, v6);
  v10 = objc_msgSend_contextWithReason_(IMDIndexingContext, v8, a2, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BAF020;
  v13[3] = &unk_1E7CB6C58;
  v14 = v3;
  v11 = v3;
  objc_msgSend_deleteMessageGUIDs_context_completionHandler_(v7, v12, v11, v10, v13);
}

void sub_1B7BAF020(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9F88();
    }
  }
}

void IMDCoreSpotlightDeleteAttachmentGUIDs(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5, v6);
  v10 = objc_msgSend_contextWithReason_(IMDIndexingContext, v8, a2, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BAF16C;
  v13[3] = &unk_1E7CB6C58;
  v14 = v3;
  v11 = v3;
  objc_msgSend_deleteAttachmentGUIDs_context_completionHandler_(v7, v12, v11, v10, v13);
}

void sub_1B7BAF16C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9FFC();
    }
  }
}

void IMDCoreSpotlightDeleteChatGUID(void *a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v7 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5, v6);
  v17[0] = v3;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v17, 1);
  v12 = objc_msgSend_contextWithReason_(IMDIndexingContext, v10, a2, v11);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BAF308;
  v15[3] = &unk_1E7CB6C58;
  v16 = v3;
  v13 = v3;
  objc_msgSend_deleteChatGUIDs_context_completionBlock_(v7, v14, v9, v12, v15);
}

void sub_1B7BAF308(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA070(a1, v3, v4);
    }
  }
}

void IMDCoreSpotlightAddChatGUID(void *a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a1;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a1;
  v6 = objc_msgSend_arrayWithObjects_count_(v3, v5, v7, 1);

  IMDCoreSpotlightAddChatGUIDs(v6, a2);
}

void IMDCoreSpotlightAddChatGUIDs(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5, v6);
  v10 = objc_msgSend_contextWithReason_(IMDIndexingContext, v8, a2, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BAF4F0;
  v13[3] = &unk_1E7CB6C58;
  v14 = v3;
  v11 = v3;
  objc_msgSend_addChatGUIDs_context_completionHandler_(v7, v12, v11, v10, v13);
}

void sub_1B7BAF4F0(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA0FC();
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_count(*(a1 + 32), v6, v7, v8);
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Finished adding %lu chats from CoreSpotlight", &v10, 0xCu);
    }
  }
}

void IMDCoreSpotlightAddMessageGUID(void *a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a1;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a1;
  v6 = objc_msgSend_arrayWithObjects_count_(v3, v5, v7, 1);

  IMDCoreSpotlightAddMessageGUIDs(v6, a2);
}

void IMDCoreSpotlightAddMessageGUIDs(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5, v6);
  v10 = objc_msgSend_contextWithReason_(IMDIndexingContext, v8, a2, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BAF790;
  v13[3] = &unk_1E7CB6C58;
  v14 = v3;
  v11 = v3;
  objc_msgSend_addMessageGUIDs_context_completionHandler_(v7, v12, v11, v10, v13);
}

void sub_1B7BAF790(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA170();
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_count(*(a1 + 32), v6, v7, v8);
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Finished adding %ld message GUIDs to Spotlight", &v10, 0xCu);
    }
  }
}

void IMDCoreSpotlightReIndexForHandles(void *a1, uint64_t a2)
{
  v3 = a1;
  v8 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5, v6);
  objc_msgSend_reindexRecentMessagesWithHandles_batchDeferralTime_messageAge_reason_(v8, v7, v3, 10, a2, 30.0);
}

void sub_1B7BAF934(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA1E4();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_count(*(a1 + 32), v6, v7, v8);
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Finished re-indexing %lu messages", &v11, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void IMDCoreSpotlightReindexAttachment(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_messageRecord(a1, a2, a3, a4);
  v9 = objc_msgSend_guid(v5, v6, v7, v8);
  v11 = v9;
  if (v9)
  {
    v13[0] = v9;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v13, 1);
    IMDCoreSpotlightReindexMessagesWhileBlocking(v12, a2, 1, 0);
  }
}

uint64_t sub_1B7BAFAF4(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v4 = IMDMessageRecordDeleteBatchOfDeletedMessageGuids(a1, &v18, a3);
  v5 = v18;
  v9 = v5;
  if (v4)
  {
    if (v5 && objc_msgSend_count(v5, v6, v7, v8))
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v14 = objc_msgSend_count(v9, v11, v12, v13);
          *buf = 134217984;
          v20 = v14;
          _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Found %ld messages guids to remove from spotlight", buf, 0xCu);
        }
      }

      IMDCoreSpotlightDeleteMessageGUIDS(v9, a2);
      v15 = 1;
LABEL_15:

      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Found 0 messages guids to remove from spotlight", buf, 2u);
      }
    }

    v15 = 0;
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

void IMDCoreSpotlightScheduleUpdateForDeletedMessages(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7BAFD30;
  aBlock[3] = &unk_1E7CB6A70;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    _IMDPerformBlockWithDelay(v1, 5.0);
  }
}

void sub_1B7BAFD30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  if (sub_1B7BAFAF4(2000, v2, &v3))
  {
    IMDCoreSpotlightScheduleUpdateForDeletedMessages(*(a1 + 32));
  }
}

uint64_t sub_1B7BAFD84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);

  return objc_msgSend_count(v5, a2, a3, a4);
}

id IMDSpotlightPriorityIndexerClassesForIndexingContext(void *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v5 = objc_msgSend_reason(v1, v2, v3, v4);
  if ((v5 == 1013 || v5 == 1008) && (objc_msgSend_additionalReasons(v1, v6, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend_count(v9, v10, v11, v12), v9, v13))
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = objc_msgSend_reason(v1, v15, v16, v17);
    v19 = sub_1B7BB0010(v18);
    objc_msgSend_addObjectsFromArray_(v14, v20, v19, v21);

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = objc_msgSend_additionalReasons(v1, v22, v23, v24, 0);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v41, v45, 16);
    if (v27)
    {
      v31 = v27;
      v32 = *v42;
      while (2)
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(v25);
          }

          v34 = objc_msgSend_integerValue(*(*(&v41 + 1) + 8 * i), v28, v29, v30);
          if (v34 != 1013 && v34 != 1008)
          {
            v38 = sub_1B7BB0010(v34);

            goto LABEL_16;
          }

          v35 = sub_1B7BB0010(v34);
          objc_msgSend_addObjectsFromArray_(v14, v36, v35, v37);
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v41, v45, 16);
        if (v31)
        {
          continue;
        }

        break;
      }
    }

    v38 = v14;
LABEL_16:
  }

  else
  {
    v39 = objc_msgSend_reason(v1, v6, v7, v8);
    v38 = sub_1B7BB0010(v39);
  }

  return v38;
}

id sub_1B7BB0010(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1 == 1008)
  {
    v8 = objc_opt_class();
    v2 = MEMORY[0x1E695DEC8];
    v3 = &v8;
    goto LABEL_5;
  }

  if (a1 == 1013)
  {
    v9[0] = objc_opt_class();
    v2 = MEMORY[0x1E695DEC8];
    v3 = v9;
LABEL_5:
    objc_msgSend_arrayWithObjects_count_(v2, v1, v3, 1);
    goto LABEL_7;
  }

  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v7[4] = objc_opt_class();
  v7[5] = objc_opt_class();
  v7[6] = objc_opt_class();
  v7[7] = objc_opt_class();
  v7[8] = objc_opt_class();
  v7[9] = objc_opt_class();
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 10);
  v5 = LABEL_7:;

  return v5;
}

void sub_1B7BB02B8()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_fromMe", 1, 0, 1, 0);
  v3 = qword_1EDBE5E68;
  qword_1EDBE5E68 = v2;
}

void sub_1B7BB0354()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_businessChat", 1, 0, 1, 0);
  v3 = qword_1EDBE5E78;
  qword_1EDBE5E78 = v2;
}

void sub_1B7BB03F0()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_mentionedAddresses", 1, 0, 1, 0);
  v3 = qword_1EDBE5AE0;
  qword_1EDBE5AE0 = v2;
}

void sub_1B7BB048C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_chatUniqueIdentifier", 0, 0, 1, 0);
  v3 = qword_1EDBE5B70;
  qword_1EDBE5B70 = v2;
}

void sub_1B7BB0528()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_chatIsMuted", 0, 0, 1, 0);
  v3 = qword_1EBA53B08;
  qword_1EBA53B08 = v2;
}

void sub_1B7BB05C4()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_isTranslated", 1, 0, 1, 0);
  v3 = qword_1EBA53AF8;
  qword_1EBA53AF8 = v2;
}

void sub_1B7BB0660()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_check_priority", 0, 0, 1, 0);
  v3 = qword_1EBA54180;
  qword_1EBA54180 = v2;
}

void sub_1B7BB07F4()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_suggested_contact_name", 0, 0, 0, 0);
  v3 = qword_1EBA54190;
  qword_1EBA54190 = v2;
}

void sub_1B7BB0890()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_suggested_contact_photo", 0, 0, 0, 0);
  v3 = qword_1EBA541A0;
  qword_1EBA541A0 = v2;
}

void sub_1B7BB092C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_groupPhotoPath", 0, 0, 0, 0);
  v3 = qword_1EDBE5E88;
  qword_1EDBE5E88 = v2;
}

id sub_1B7BB1D8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_handles(a2, a2, a3, a4);
  v8 = objc_msgSend_firstObject(v4, v5, v6, v7);

  return v8;
}

void sub_1B7BB59B8()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_isSyndicatableMedia", 0, 0, 1, 0);
  v3 = qword_1EDBE5C78;
  qword_1EDBE5C78 = v2;
}

void sub_1B7BB5A54()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_livePhotoComplementPath", 0, 0, 1, 0);
  v3 = qword_1EDBE5C50;
  qword_1EDBE5C50 = v2;
}

void sub_1B7BB5AF0()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_momentShareURL", 0, 0, 1, 0);
  v3 = qword_1EBA541B0;
  qword_1EBA541B0 = v2;
}

void sub_1B7BB5B8C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_PHAssetUUID", 0, 0, 1, 0);
  v3 = qword_1EBA541C0;
  qword_1EBA541C0 = v2;
}

id IMCoreSpotlightCriticalIndex()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    IMDIndexingAssertClientRequestQueue();
  }

  if (qword_1EBA53C28 != -1)
  {
    sub_1B7CFA43C();
  }

  v0 = qword_1EBA53C30;

  return v0;
}

void sub_1B7BB5FF4()
{
  v0 = objc_alloc(MEMORY[0x1E6964E78]);
  v2 = objc_msgSend__initWithName_protectionClass_bundleIdentifier_options_(v0, v1, @"com.apple.MobileSMS", 0, @"com.apple.MobileSMS", 32);
  v3 = qword_1EBA53C30;
  qword_1EBA53C30 = v2;
}

__CFDictionary *IMCopyIndexableItemDictionaryForRecord(void *a1)
{
  v238 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = objc_msgSend_initWithCapacity_(v2, v3, 14, v4);
  v235 = 0;
  v236 = 0;
  v233 = 0;
  v234 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  v219 = 0;
  v218 = 0;
  v217 = 0;
  v216 = 0;
  v215 = 0;
  IMDMessageRecordBulkCopy(v1, &v227, 0, 0, &v234, &v236, &v235, 0, 0, &v233, &v232, &v229, &v230, 0, 0, 0, &v231, 0, 0, &v228, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v223, &v224, 0, &v226, &v222, &v225, 0, &v221, 0, 0, 0, 0, &v219, 0, 0, &v218, &v217, &v220, 0, 0, 0, 0, &v216, 0, &v215, 0, 0, 0);
  v6 = v233;
  value = v234;
  v7 = v232;
  v208 = v231;
  v206 = v230;
  v202 = v229;
  v200 = v226;
  v196 = v225;
  v198 = v222;
  v8 = v221;
  v190 = v219;
  v192 = v220;
  v9 = v218;
  v185 = v217;
  v194 = v223;
  v178 = v216;
  v180 = v215;
  if (objc_msgSend_length(v218, v10, v11, v12))
  {
    v16 = IMDMessageRecordCopyMessageForGUID(v9);
    v17 = v16;
    if (v16)
    {
      v186 = IMCopyIndexableItemDictionaryForRecord(v16);
    }

    else
    {
      v186 = 0;
    }
  }

  else
  {
    v186 = 0;
  }

  v18 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v13, v14, v15, v236);
  v22 = v18;
  if (v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = objc_msgSend_date(MEMORY[0x1E695DF00], v19, v20, v21);
  }

  if (v235)
  {
    v27 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v24, v25, v26, v235);
  }

  else
  {
    v27 = 0;
  }

  v183 = v7;
  v31 = JWDecodeCodableObjectWithStandardAllowlist();
  v210 = v9;
  if (v186)
  {
    v188 = v31;
    v32 = v6;
    v33 = v8;
    v34 = v5;
    v35 = objc_msgSend_objectForKey_(v186, v28, @"attributedBody", v30);
    v36 = objc_alloc(MEMORY[0x1E69A8118]);
    v38 = objc_msgSend_initWithMessageBody_messageGUID_(v36, v37, v35, v9);
    v42 = v38;
    if (v185 && (objc_msgSend_messageParts(v38, v39, v40, v41), v43 = objc_claimAutoreleasedReturnValue(), v47 = v1, v48 = objc_msgSend_count(v43, v44, v45, v46), v43, v49 = v48 >= 2, v1 = v47, v49))
    {
      ThreadIdentifierWithComponents = IMMessageCreateThreadIdentifierWithComponents();
      AssociatedMessageGUIDFromThreadIdentifier = IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier();

      v1 = v47;
    }

    else
    {
      AssociatedMessageGUIDFromThreadIdentifier = v210;
    }

    v5 = v34;

    v8 = v33;
    v6 = v32;
    v31 = v188;
  }

  else
  {
    AssociatedMessageGUIDFromThreadIdentifier = 0;
  }

  v52 = MEMORY[0x1E696AD98];
  v53 = objc_msgSend_rowID(v1, v28, v29, v30);
  v56 = objc_msgSend_numberWithLongLong_(v52, v54, v53, v55);
  if (v56)
  {
    CFDictionarySetValue(v5, @"rowID", v56);
  }

  v57 = v23;
  if (v57)
  {
    CFDictionarySetValue(v5, @"time", v57);
  }

  v58 = v27;
  v59 = v210;
  if (v58)
  {
    CFDictionarySetValue(v5, @"timeRead", v58);
  }

  v182 = v58;

  v60 = value;
  if (v60)
  {
    CFDictionarySetValue(v5, @"guid", v60);
  }

  v61 = v6;
  if (v61)
  {
    CFDictionarySetValue(v5, @"plainBody", v61);
  }

  v62 = v31;
  valuea = v62;
  if (v62)
  {
    CFDictionarySetValue(v5, @"attributedBody", v62);
    v62 = valuea;
  }

  v63 = v208;
  v209 = v63;
  if (v63)
  {
    CFDictionarySetValue(v5, @"subject", v63);
    v63 = v209;
  }

  v64 = v206;
  v207 = v64;
  if (v64)
  {
    CFDictionarySetValue(v5, @"service", v64);
    v64 = v207;
  }

  v65 = v202;
  v203 = v65;
  if (v65)
  {
    CFDictionarySetValue(v5, @"flags", v65);
    v65 = v203;
  }

  v68 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v66, v228 != 0, v67);
  if (v68)
  {
    CFDictionarySetValue(v5, @"hasAttachments", v68);
  }

  v71 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v69, v227, v70);
  if (v71)
  {
    CFDictionarySetValue(v5, @"type", v71);
  }

  v72 = v200;
  v201 = v72;
  if (v72)
  {
    CFDictionarySetValue(v5, @"balloonBundleID", v72);
    v72 = v201;
  }

  v73 = v198;
  v199 = v73;
  if (v73)
  {
    CFDictionarySetValue(v5, @"payloadData", v73);
    v73 = v199;
  }

  v74 = v196;
  v197 = v74;
  if (v74)
  {
    CFDictionarySetValue(v5, @"expressiveSendStyleID", v74);
    v74 = v197;
  }

  v77 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v75, v224, v76);
  if (v77)
  {
    CFDictionarySetValue(v5, @"associatedMessageType", v77);
  }

  v78 = v194;
  v195 = v78;
  if (v78)
  {
    CFDictionarySetValue(v5, @"associatedMessageGUID", v78);
    v78 = v195;
  }

  v79 = v192;
  v193 = v79;
  if (v79)
  {
    CFDictionarySetValue(v5, @"syndicationRanges", v79);
    v79 = v193;
  }

  v80 = v190;
  v191 = v80;
  if (v80)
  {
    CFDictionarySetValue(v5, @"destinationCallerID", v80);
    v80 = v191;
  }

  v81 = v186;
  v189 = v81;
  if (v186)
  {
    CFDictionarySetValue(v5, @"threadOriginator", v81);
    v81 = v189;
  }

  v82 = AssociatedMessageGUIDFromThreadIdentifier;
  if (v82)
  {
    CFDictionarySetValue(v5, @"threadOriginatorFormattedGUID", v82);
  }

  v177 = v82;

  v83 = v178;
  if (v83)
  {
    CFDictionarySetValue(v5, @"biaReferenceID", v83);
  }

  v187 = v83;

  v84 = v180;
  if (v84)
  {
    CFDictionarySetValue(v5, @"associatedMessageEmoji", v84);
  }

  v181 = v84;

  if (v8)
  {
    v88 = v8;
    v91 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v89, v88, v90);
    if (v91)
    {
      CFDictionarySetValue(v5, @"messageSummaryInfo", v91);
    }
  }

  v92 = objc_msgSend_handleRecord(v1, v85, v86, v87);
  v96 = v92;
  v184 = v57;
  if (v92)
  {
    v97 = _IMDCoreSpotlightHandleID(v92);
    v98 = v96;
    v102 = objc_msgSend_uncanonicalizedURIString(v96, v99, v100, v101);
    if (v102)
    {
      CFDictionarySetValue(v5, @"uncanonicalizedHandle", v102);
    }

    v103 = v97;
    v96 = v98;
    v59 = v210;
    if (v103)
    {
      v104 = v103;
      CFDictionarySetValue(v5, @"handle", v103);
    }
  }

  if (v228)
  {
    v172 = v96;
    v173 = v61;
    v174 = v60;
    v175 = v8;
    theDict = v5;
    v179 = v1;
    v105 = objc_msgSend_attachmentRecords(v1, v93, v94, v95);
    v106 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v107 = v105;
    v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v211, v237, 16);
    if (v109)
    {
      v110 = v109;
      v111 = *v212;
      do
      {
        for (i = 0; i != v110; ++i)
        {
          if (*v212 != v111)
          {
            objc_enumerationMutation(v107);
          }

          v113 = *(*(&v211 + 1) + 8 * i);
          v114 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v118 = objc_msgSend_attributionInfo(v113, v115, v116, v117);
          objc_msgSend__writeIfNeededForPreviewGenerationStateMigration(v113, v119, v120, v121);
          v125 = objc_msgSend_guid(v113, v122, v123, v124);
          if (v125)
          {
            CFDictionarySetValue(v114, @"guid", v125);
          }

          v129 = objc_msgSend_path(v113, v126, v127, v128);
          if (v129)
          {
            CFDictionarySetValue(v114, @"path", v129);
          }

          v133 = objc_msgSend_transferName(v113, v130, v131, v132);
          if (v133)
          {
            CFDictionarySetValue(v114, @"name", v133);
          }

          v134 = v118;
          if (v134)
          {
            CFDictionarySetValue(v114, @"attributionInfo", v134);
          }

          v135 = MEMORY[0x1E696AD98];
          isCommSafetySensitive = objc_msgSend_isCommSafetySensitive(v113, v136, v137, v138);
          v142 = objc_msgSend_numberWithBool_(v135, v140, isCommSafetySensitive, v141);
          if (v142)
          {
            CFDictionarySetValue(v114, @"isCommSafetySensitive", v142);
          }

          v143 = MEMORY[0x1E696AD98];
          isSticker = objc_msgSend_isSticker(v113, v144, v145, v146);
          v150 = objc_msgSend_numberWithBool_(v143, v148, isSticker, v149);
          if (v150)
          {
            CFDictionarySetValue(v114, @"isSticker", v150);
          }

          v154 = objc_msgSend_utiString(v113, v151, v152, v153);
          if (v154)
          {
            CFDictionarySetValue(v114, @"uti", v154);
          }

          v155 = MEMORY[0x1E696AD98];
          v159 = objc_msgSend_previewGenerationState(v113, v156, v157, v158);
          v162 = objc_msgSend_numberWithInteger_(v155, v160, v159, v161);
          if (v162)
          {
            CFDictionarySetValue(v114, @"previewGenerationState", v162);
          }

          if (objc_msgSend_count(v114, v163, v164, v165))
          {
            objc_msgSend_addObject_(v106, v166, v114, v167);
          }
        }

        v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v168, &v211, v237, 16);
      }

      while (v110);
    }

    v169 = v106;
    v5 = theDict;
    if (v169)
    {
      CFDictionarySetValue(theDict, @"attachments", v169);
    }

    v1 = v179;
    v60 = v174;
    v8 = v175;
    v59 = v210;
    v96 = v172;
    v61 = v173;
    v57 = v184;
  }

  v170 = v5;

  return v170;
}

id _IMDCoreSpotlightHandleID(void *a1)
{
  v4 = a1;
  if (!v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, &stru_1F2FA9728, v8);
    v12 = objc_msgSend_stringWithFormat_(v5, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", v11, @"handle", "NSString *_IMDCoreSpotlightHandleID(IMDHandleRecord *__strong)", v6, 437, v9);

    v13 = IMGetAssertionFailureHandler();
    if (v13)
    {
      v13(v12);
    }

    else
    {
      v17 = objc_msgSend_warning(MEMORY[0x1E69A6138], v14, v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v21 = objc_msgSend_canonicalizedURIString(v4, v1, v2, v3);
  if (!v21)
  {
    v21 = objc_msgSend_uncanonicalizedURIString(v4, v18, v19, v20);
  }

  v22 = objc_msgSend__stripFZIDPrefix(v21, v18, v19, v20);
  v26 = objc_msgSend_im_stripCategoryLabel(v22, v23, v24, v25);

  return v26;
}

__CFDictionary *IMCopyIndexableChatDictionaryForRecord(void *a1, int a2)
{
  v2 = a1;
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = objc_msgSend_initWithCapacity_(v3, v4, 19, v5);
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 1;
  v65 = 0;
  v66 = 0;
  _IMDChatRecordBulkCopy(v2, &v76, 0, &v74, &v73, &v72, 0, &v78, 0, &v77, &v69, &v75, &v71, 0, &v68, 0, 0, 0, 0, &v70, 0, 0, 0, &v67, &v66, &v65, 0, 0);
  v10 = v77;
  v9 = v78;
  v12 = v74;
  v11 = v75;
  v14 = v72;
  v13 = v73;
  v16 = v70;
  v15 = v71;
  value = v69;
  if (v78)
  {
    CFDictionarySetValue(v6, @"guid", v78);
  }

  v64 = v16;
  v62 = v9;
  if (v10)
  {
    CFDictionarySetValue(v6, @"groupName", v10);
  }

  v17 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v76, v8);
  if (v17)
  {
    CFDictionarySetValue(v6, @"style", v17);
  }

  if (v11)
  {
    CFDictionarySetValue(v6, @"loginID", v11);
  }

  v20 = JWDecodeDictionary();
  if (v20)
  {
    CFDictionarySetValue(v6, @"properties", v20);
  }

  if (v14)
  {
    CFDictionarySetValue(v6, @"chatIdentifier", v14);
  }

  if (v15)
  {
    CFDictionarySetValue(v6, @"groupID", v15);
  }

  if (v16)
  {
    CFDictionarySetValue(v6, @"originalGroupID", v16);
  }

  if (v12)
  {
    CFDictionarySetValue(v6, @"accountID", v12);
  }

  v61 = v10;
  if (value)
  {
    CFDictionarySetValue(v6, @"lalh", value);
  }

  v59 = v12;
  v60 = v11;
  v21 = objc_msgSend_objectForKeyedSubscript_(v20, v18, *MEMORY[0x1E69A6B80], v19);
  if (v21)
  {
    CFDictionarySetValue(v6, @"groupPhotoGUID", v21);
  }

  v22 = IMDAttachmentRecordCopyAttachmentForGUID(v21);
  v26 = v22;
  if (v22)
  {
    v27 = objc_msgSend_path(v22, v23, v24, v25);
    if (v27)
    {
      CFDictionarySetValue(v6, @"groupPhotoPath", v27);
    }
  }

  v56 = v14;
  v57 = v13;
  v28 = objc_msgSend_handleRecords(v2, v23, v24, v25);
  v31 = objc_msgSend___imArrayByApplyingBlock_(v28, v29, &unk_1F2FA1250, v30);

  if (v31)
  {
    CFDictionarySetValue(v6, @"participants", v31);
  }

  v34 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v32, v68, v33);
  if (v34)
  {
    CFDictionarySetValue(v6, @"isFiltered", v34);
  }

  v37 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v35, v67, v36);
  if (v37)
  {
    CFDictionarySetValue(v6, @"isBlackholed", v37);
  }

  v40 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v38, v66, v39);
  if (v40)
  {
    CFDictionarySetValue(v6, @"syndicationType", v40);
  }

  v47 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v41, v42, v43, v65);
  v48 = v15;
  if (v47)
  {
    CFDictionarySetValue(v6, @"syndicationDate", v47);
  }

  if (a2)
  {
    Message = IMDChatRecordCopyLastMessage(v2);
    v53 = objc_msgSend_date(Message, v50, v51, v52);
    if (v53)
    {
      CFDictionarySetValue(v6, @"lastMessageDate", v53);
    }

    v48 = v15;
  }

  v54 = objc_msgSend_domainIdentifiers(v2, v44, v45, v46);
  if (v54)
  {
    CFDictionarySetValue(v6, @"DomainIdentifiers", v54);
  }

  return v6;
}

void _IMDCoreRecentsApiInit(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, a2, a3, a4);
  v8 = objc_msgSend_allowsOverrideOfObjects(v4, v5, v6, v7);

  if (v8)
  {
    v18 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v9, v10, v11);
    v15 = objc_msgSend_defaultInstance(MEMORY[0x1E6998FC8], v12, v13, v14);
    objc_msgSend_setRecentsInstance_(v18, v16, v15, v17);
  }
}

void *_IMDCoreSpotlightCNContactForHandleID(void *a1, uint64_t a2)
{
  v2 = _IMDCoreSpotlightCNContactForAddress(a1);
  if (objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v3, v2, v4))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

id _IMDCoreSpotlightCNContactForAddress(void *a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E695C208];
  v8[0] = *MEMORY[0x1E695C330];
  v8[1] = v1;
  v2 = MEMORY[0x1E695DEC8];
  v3 = a1;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, v8, 2);
  v6 = _IMDCoreSpotlightCNContactForAddressWithAdditionalPropertyKeys(v3, v5);

  return v6;
}

id _IMDCoreSpotlightCNContactForHandle(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = IMFileLocationTrimFileName();
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, &stru_1F2FA9728, v5);
    v9 = objc_msgSend_stringWithFormat_(v2, v7, @"Unexpected nil '%@' in %s at %s:%d. %@", v8, @"handle", "CNContact * _Nonnull _IMDCoreSpotlightCNContactForHandle(IMDHandleRecord *__strong _Nonnull)", v3, 458, v6);

    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      v14 = objc_msgSend_warning(MEMORY[0x1E69A6138], v11, v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v15 = _IMDCoreSpotlightHandleID(v1);
  v17 = _IMDCoreSpotlightCNContactForHandleID(v15, v16);

  return v17;
}

uint64_t _IMDCoreSpotlightIsKnownContact(void *a1)
{
  v1 = _IMDCoreSpotlightCNContactForAddress(a1);
  isCNContactAKnownContact = objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v2, v1, v3);

  return isCNContactAKnownContact;
}

id _IMDCoreSpotlightCNContactForAddressWithAdditionalPropertyKeys(void *a1, void *a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v6 = a2;
  if (v3)
  {
    v7 = objc_msgSend_validateAndCleanupID_(MEMORY[0x1E69A7FD0], v4, v3, v5);
    if (!objc_msgSend_length(v7, v8, v9, v10))
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v94 = v3;
          _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Validated Address is nil, we are returning nil. Address: %@", buf, 0xCu);
        }
      }

      v32 = 0;
      goto LABEL_46;
    }

    v13 = MEMORY[0x1E695DF70];
    v14 = objc_msgSend_descriptorForRequiredKeysForStyle_(MEMORY[0x1E695CD80], v11, 0, v12);
    v17 = objc_msgSend_arrayWithObject_(v13, v15, v14, v16);

    if (objc_msgSend_count(v6, v18, v19, v20))
    {
      objc_msgSend_addObjectsFromArray_(v17, v21, v6, v23);
    }

    v24 = objc_msgSend_sharedInstance(IMDContactCache, v21, v22, v23);
    v27 = objc_msgSend_cachedContactForKey_(v24, v25, v7, v26);

    if (v27)
    {
      if (objc_msgSend_areKeysAvailable_(v27, v28, v17, v29))
      {
        v32 = v27;
LABEL_45:

LABEL_46:
        goto LABEL_47;
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v94 = v7;
        _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: No cached contact for ID:%@. We are refetching.", buf, 0xCu);
      }
    }

    v36 = objc_msgSend_predicateForContactsMatchingEmailAddress_(MEMORY[0x1E695CD58], v30, v7, v31);
    v38 = _IMDContactStore(v36, v37);
    v92 = 0;
    v40 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v38, v39, v36, v17, &v92);
    v90 = v92;

    if (v90)
    {
      if (IMOSLoggingEnabled())
      {
        v46 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v50 = objc_msgSend_localizedDescription(v90, v47, v48, v49);
          *buf = 138412290;
          v94 = v50;
          _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Contact Store (email)fetch failed: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v52 = objc_msgSend_firstObject(v40, v41, v42, v43);
      if (v52)
      {
        v53 = objc_msgSend_sharedInstance(IMDContactCache, v44, v51, v45);
        objc_msgSend_cacheContact_forKey_(v53, v54, v52, v7);

        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v94 = v7;
            v95 = 2112;
            v96 = v52;
            _os_log_impl(&dword_1B7AD5000, v55, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Got a Contact for address %@. Caching and returning contact: %@", buf, 0x16u);
          }
        }

        v32 = v52;
        goto LABEL_44;
      }
    }

    v56 = MEMORY[0x1E695CD58];
    v57 = objc_msgSend_phoneNumberWithStringValue_(MEMORY[0x1E695CF50], v44, v7, v45);
    v60 = objc_msgSend_predicateForContactsMatchingPhoneNumber_(v56, v58, v57, v59);

    v63 = _IMDContactStore(v61, v62);
    v91 = 0;
    v65 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v63, v64, v60, v17, &v91);
    v66 = v91;

    if (v66)
    {
      if (IMOSLoggingEnabled())
      {
        v70 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          v74 = objc_msgSend_localizedDescription(v66, v71, v72, v73);
          *buf = 138412290;
          v94 = v74;
          _os_log_impl(&dword_1B7AD5000, v70, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Contact Store (phone)fetch failed: %@", buf, 0xCu);
        }
      }

      v75 = 0;
    }

    else
    {
      v75 = objc_msgSend_firstObject(v65, v67, v68, v69);
      if (v75)
      {
        v81 = objc_msgSend_sharedInstance(IMDContactCache, v78, v79, v80);
        objc_msgSend_cacheContact_forKey_(v81, v82, v75, v7);

        if (IMOSLoggingEnabled())
        {
          v83 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v94 = v7;
            _os_log_impl(&dword_1B7AD5000, v83, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Got a Contact for address %@. Caching and returning contact.", buf, 0xCu);
          }
        }
      }

      else
      {
        v75 = objc_msgSend_createMutableContactWithID_(MEMORY[0x1E69A7FD0], v78, v7, v80);
        if (IMOSLoggingEnabled())
        {
          v87 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v94 = v7;
            v95 = 2112;
            v96 = v75;
            _os_log_impl(&dword_1B7AD5000, v87, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Did not get a Contact for address %@ from Contact Store. Caching mutable contact: %@", buf, 0x16u);
          }
        }

        v88 = objc_msgSend_sharedInstance(IMDContactCache, v84, v85, v86);
        objc_msgSend_cacheContact_forKey_(v88, v89, v75, v7);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v76 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v94 = v75;
        _os_log_impl(&dword_1B7AD5000, v76, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Return contact: %@", buf, 0xCu);
      }
    }

    v32 = v75;

    v40 = v65;
    v36 = v60;
LABEL_44:

    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Address is nil, we are returning nil.", buf, 2u);
    }
  }

  v32 = 0;
LABEL_47:

  return v32;
}

id _IMDCoreSpotlightPerson(void *a1, void *a2, void *a3, void *a4)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8)
  {
    v11 = objc_alloc(MEMORY[0x1E6964E50]);
    v45[0] = v8;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v45, 1);
    v14 = _IMDContactsKindForID(v8, v10);
    v16 = objc_msgSend_initWithDisplayName_handles_handleIdentifier_(v11, v15, v7, v13, v14);
  }

  else
  {
    *buf = xmmword_1E7CBC0A0;
    *&buf[16] = *off_1E7CBC0B0;
    *v42 = 545;
    v20 = MEMORY[0x1E696AEC0];
    v21 = IMFileLocationTrimFileName();
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, &stru_1F2FA9728, v23);
    v27 = objc_msgSend_stringWithFormat_(v20, v25, @"Unexpected nil '%@' in %s at %s:%d. %@", v26, @"handleID", "CSPerson *_IMDCoreSpotlightPerson(NSString *__strong, NSString *__strong, CNContact *__strong, NSString *__strong)", v21, 545, v24);

    v31 = IMGetAssertionFailureHandler();
    if (v31)
    {
      v31(v27);
    }

    else
    {
      v32 = objc_msgSend_warning(MEMORY[0x1E69A6138], v28, v29, v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    v16 = 0;
  }

  v33 = objc_msgSend_identifier(v9, v17, v18, v19);
  objc_msgSend_setContactIdentifier_(v16, v34, v33, v35);

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v36, v37, v38) && IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      *&buf[24] = v8;
      *v42 = 2112;
      *&v42[2] = v9;
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_INFO, "Created CSPerson: %@, fullName: %@, handleID: %@, contact: %@, service: %@", buf, 0x34u);
    }
  }

  return v16;
}

id _IMDContactsKindForID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, &stru_1F2FA9728, v8);
    v12 = objc_msgSend_stringWithFormat_(v5, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", v11, @"handleID", "NSString *_IMDContactsKindForID(NSString *__strong, NSString *__strong)", v6, 566, v9);

    v13 = IMGetAssertionFailureHandler();
    if (v13)
    {
      v13(v12);
    }

    else
    {
      v17 = objc_msgSend_warning(MEMORY[0x1E69A6138], v14, v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v18 = *MEMORY[0x1E695C2B0];
  if ((_IMDCoreSpotlightServiceIsLegacy(v4) & 1) == 0)
  {
    if (objc_msgSend__appearsToBePhoneNumber(v3, v19, v20, v21))
    {
      v25 = MEMORY[0x1E695C330];
    }

    else
    {
      if (!objc_msgSend__appearsToBeEmail(v3, v22, v23, v24))
      {
        goto LABEL_14;
      }

      v25 = MEMORY[0x1E695C208];
    }

    v26 = *v25;

    v18 = v26;
  }

LABEL_14:

  return v18;
}

uint64_t _IMDCoreSpotlightServiceIsLegacy(void *a1)
{
  v1 = qword_1EBA53BA8;
  v4 = a1;
  if (v1 != -1)
  {
    sub_1B7CFA450();
  }

  v5 = objc_msgSend_containsObject_(qword_1EBA53BB0, v2, v4, v3);

  return v5 ^ 1u;
}

void sub_1B7BB821C(uint64_t a1, const char *a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A7AF8];
  v6[0] = *MEMORY[0x1E69A7AF0];
  v6[1] = v2;
  v3 = *MEMORY[0x1E69A7AE8];
  v6[2] = *MEMORY[0x1E69A7AD8];
  v6[3] = v3;
  v6[4] = *MEMORY[0x1E69A7AE0];
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v6, 5);
  v5 = qword_1EBA53BB0;
  qword_1EBA53BB0 = v4;
}

uint64_t _IMDCoreSpotlightMessageMentionsMe(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _IMDCoreSpotlightTokensMentionedInMessage(v3);
  if (objc_msgSend_count(v5, v6, v7, v8))
  {
    v9 = _IMDCoreSpotlightTokensForMeIncludingCallerID(v4);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7BB85DC;
    v15[3] = &unk_1E7CBC0F8;
    v10 = v9;
    v16 = v10;
    v17 = &v18;
    objc_msgSend_enumerateObjectsUsingBlock_(v5, v11, v15, v12);
    v13 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_1B7BB83EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _IMDCoreSpotlightTokensMentionedInMessage(void *a1)
{
  v1 = MEMORY[0x1E695DF70];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = *MEMORY[0x1E69A70F8];
  v8 = objc_msgSend_length(v2, v5, v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7BB8624;
  v16[3] = &unk_1E7CBAE78;
  v17 = v3;
  v9 = v3;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v2, v10, v4, 0, v8, 0, v16);

  v14 = objc_msgSend_copy(v9, v11, v12, v13);

  return v14;
}

id _IMDCoreSpotlightTokensForMeIncludingCallerID(void *a1)
{
  v1 = a1;
  v3 = _IMDContactStore(v1, v2);
  v4 = IMMentionContactKeysForMe();
  v20 = 0;
  v6 = objc_msgSend__crossPlatformUnifiedMeContactWithKeysToFetch_error_(v3, v5, v4, &v20);

  v7 = IMMentionMeTokensForContact();
  v11 = objc_msgSend_mutableCopy(v7, v8, v9, v10);
  if (objc_msgSend_length(v1, v12, v13, v14))
  {
    objc_msgSend_addObject_(v11, v15, v1, v17);
  }

  v18 = objc_msgSend_copy(v11, v15, v16, v17);

  return v18;
}

void *sub_1B7BB85DC(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_containsObject_(*(a1 + 32), a2, a2, a4);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1B7BB8624(uint64_t a1, void *a2)
{
  v10 = a2;
  if (MEMORY[0x1B8CAF9C0]())
  {
    v3 = IMNormalizePhoneNumber();
  }

  else
  {
    v3 = v10;
  }

  v7 = v3;
  if (objc_msgSend_length(v3, v4, v5, v6))
  {
    objc_msgSend_addObject_(*(a1 + 32), v8, v7, v9);
  }
}

id _IMDCoreRecentsKindForHandleID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, &stru_1F2FA9728, v8);
    v12 = objc_msgSend_stringWithFormat_(v5, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", v11, @"handleID", "NSString *_IMDCoreRecentsKindForHandleID(NSString *__strong, NSString *__strong)", v6, 652, v9);

    v13 = IMGetAssertionFailureHandler();
    if (v13)
    {
      v13(v12);
    }

    else
    {
      v17 = objc_msgSend_warning(MEMORY[0x1E69A6138], v14, v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v18 = *MEMORY[0x1E6998F50];
  if ((_IMDCoreSpotlightServiceIsLegacy(v4) & 1) == 0)
  {
    if (objc_msgSend__appearsToBePhoneNumber(v3, v19, v20, v21))
    {
      v25 = MEMORY[0x1E6998F60];
    }

    else
    {
      if (!objc_msgSend__appearsToBeEmail(v3, v22, v23, v24))
      {
        goto LABEL_14;
      }

      v25 = MEMORY[0x1E6998F48];
    }

    v26 = *v25;

    v18 = v26;
  }

LABEL_14:

  return v18;
}

id sub_1B7BB883C()
{
  if (!qword_1EDBE5E50 && (IMIsRunningInUnitTesting() & 1) == 0)
  {
    v2 = objc_msgSend_stringByAppendingString_(*MEMORY[0x1E69A77E0], v0, @"pendingNicknamesKeyStore.db", v1);
    v6 = objc_msgSend_stringByResolvingAndStandardizingPath(v2, v3, v4, v5);

    v7 = objc_alloc(MEMORY[0x1E69A5670]);
    v9 = objc_msgSend_initWithPath_storeName_dataProtectionClass_(v7, v8, v6, @"pendingNicknameUpdatesStore", 0);
    v10 = qword_1EDBE5E50;
    qword_1EDBE5E50 = v9;
  }

  v11 = qword_1EDBE5E50;

  return v11;
}

id sub_1B7BB88E8()
{
  if (!qword_1EDBE5E58 && (IMIsRunningInUnitTesting() & 1) == 0)
  {
    v2 = objc_msgSend_stringByAppendingString_(*MEMORY[0x1E69A77E0], v0, @"handledNicknamesKeyStore.db", v1);
    v6 = objc_msgSend_stringByResolvingAndStandardizingPath(v2, v3, v4, v5);

    v7 = objc_alloc(MEMORY[0x1E69A5670]);
    v9 = objc_msgSend_initWithPath_storeName_dataProtectionClass_(v7, v8, v6, @"handledNicknamesStore", 0);
    v10 = qword_1EDBE5E58;
    qword_1EDBE5E58 = v9;
  }

  v11 = qword_1EDBE5E58;

  return v11;
}

id sub_1B7BB8994(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (IMSharedHelperCurrentRegionRequiresKnownSenderForNickname() && !_IMDCoreSpotlightIsKnownContact(v4))
  {
    v13 = 0;
    goto LABEL_25;
  }

  v23 = 0;
  v6 = objc_msgSend_dataForKey_error_(v3, v5, v4, &v23);
  v10 = v23;
  if (!v10)
  {
    if (objc_msgSend_length(v6, v7, v8, v9))
    {
      v14 = MEMORY[0x1E696ACD0];
      v15 = IMNicknameUnarchivingClasses();
      v22 = 0;
      v12 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v14, v16, v15, v6, &v22);
      v17 = v22;

      v18 = IMOSLoggingEnabled();
      if (v17)
      {
        if (v18)
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v25 = v17;
            _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "We got an error unarchiving the nickname dictionary %@", buf, 0xCu);
          }
        }

        goto LABEL_9;
      }

      if (v18)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v25 = v4;
          v26 = 2112;
          v27 = v12;
          _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "We have a nickname dictionary for %@ %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v12 = v12;
    v13 = v12;
    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "We got an error loading the nickname info from the kv store for notifications %@", buf, 0xCu);
    }
  }

  v12 = 0;
LABEL_9:
  v13 = 0;
LABEL_24:

LABEL_25:

  return v13;
}

id _IMDNicknameInfoForAddress(void *a1)
{
  v1 = a1;
  v2 = sub_1B7BB883C();
  v3 = sub_1B7BB8994(v2, v1);

  if (!objc_msgSend_count(v3, v4, v5, v6))
  {
    v7 = sub_1B7BB88E8();
    v8 = sub_1B7BB8994(v7, v1);

    v3 = v8;
  }

  return v3;
}

id _IMDContactNameForNickname(void *a1, uint64_t a2)
{
  v6 = a1;
  if (qword_1EBA53BD8 != -1)
  {
    sub_1B7CFA464();
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_firstName(v6, v3, v4, v5);
  v12 = objc_msgSend_lastName(v6, v9, v10, v11);
  v15 = objc_msgSend_stringWithFormat_(v7, v13, @"%d-%@-%@", v14, a2, v8, v12);

  v18 = objc_msgSend_objectForKey_(qword_1EBA53BE0, v16, v15, v17);
  v22 = objc_msgSend_null(MEMORY[0x1E695DFB0], v19, v20, v21);

  if (v18 == v22)
  {
    v26 = 0;
  }

  else if (v18)
  {
    v26 = v18;
  }

  else
  {
    if (v6)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695CF18]);
      v31 = objc_msgSend_firstName(v6, v28, v29, v30);
      objc_msgSend_setGivenName_(v27, v32, v31, v33);

      v37 = objc_msgSend_lastName(v6, v34, v35, v36);
      objc_msgSend_setFamilyName_(v27, v38, v37, v39);

      v26 = objc_msgSend_stringFromContact_style_(MEMORY[0x1E695CD80], v40, v27, 0);
    }

    else
    {
      v26 = 0;
    }

    if (objc_msgSend_length(v26, v23, v24, v25) && a2)
    {
      v44 = MEMORY[0x1E696AEC0];
      v45 = IMSharedUtilitiesFrameworkBundle();
      v47 = objc_msgSend_localizedStringForKey_value_table_(v45, v46, @"MAYBE", &stru_1F2FA9728, @"IMSharedUtilities");
      v50 = objc_msgSend_localizedStringWithFormat_(v44, v48, v47, v49, v26);

      v26 = v50;
    }

    v51 = qword_1EBA53BE0;
    if (v26)
    {
      objc_msgSend_setObject_forKey_(qword_1EBA53BE0, v41, v26, v15);
    }

    else
    {
      v52 = objc_msgSend_null(MEMORY[0x1E695DFB0], v41, v42, v43);
      objc_msgSend_setObject_forKey_(v51, v53, v52, v15);
    }
  }

  return v26;
}

void sub_1B7BB8F54()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1EBA53BE0;
  qword_1EBA53BE0 = v0;
}

id _IMDCoreSpotlightChatUIDForChatDictionary(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_valueForKey_(v1, v2, @"style", v3);

  if (v4)
  {
    v7 = objc_msgSend_valueForKey_(v1, v5, @"style", v6);
    v11 = objc_msgSend_charValue(v7, v8, v9, v10);

    if (v11 == 45)
    {
      objc_msgSend_valueForKey_(v1, v12, @"chatIdentifier", v13);
      goto LABEL_6;
    }

    if (v11 == 43)
    {
      objc_msgSend_valueForKey_(v1, v12, @"groupID", v13);
      v4 = LABEL_6:;
      goto LABEL_8;
    }

    v4 = 0;
  }

LABEL_8:

  return v4;
}

uint64_t IMDCoreSpotlightPhotoAtPathIsScreenshot(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], a2, a1, a4);
  v5 = IMIsScreenshotURL();

  return v5;
}

void IMDCoreSpotlightURLFromAttributedMessageBody(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_length(v1, v2, v3, v4);
  if (v1)
  {
    v7 = v5;
    v8 = *MEMORY[0x1E69A5FB0];
    if (objc_msgSend_attribute_existsInRange_(v1, v6, *MEMORY[0x1E69A5FB0], 0, v5))
    {
      v52 = 0;
      v53 = 0;
      v10 = objc_msgSend_attribute_atIndex_longestEffectiveRange_inRange_(v1, v9, v8, 0, &v52, 0, v7);
      objc_opt_class();
      v11 = 0;
      if (objc_opt_isKindOfClass())
      {
        v11 = 0;
        if (!v52 && v53 == v7)
        {
          v11 = v10;
        }
      }

      goto LABEL_21;
    }

    if (objc_msgSend_attribute_existsInRange_(v1, v9, *MEMORY[0x1E69A5F48], 0, v7))
    {
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = sub_1B7AE1AE0;
      v56 = sub_1B7AE2578;
      v57 = 0;
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = sub_1B7BB951C;
      v51[3] = &unk_1E7CBC148;
      v51[4] = &v52;
      objc_msgSend_enumerateAttributesInRange_options_usingBlock_(v1, v12, 0, v7, 0, v51);
      v13 = _IMDCopyDDScannerResultFromAttributedStringData(v53[5]);
      v17 = objc_msgSend_coreResult(v13, v14, v15, v16);
      v11 = v17;
      if (v17)
      {
        v63 = 0;
        v64 = &v63;
        v65 = 0x2020000000;
        v21 = off_1EBA541D8;
        v66 = off_1EBA541D8;
        if (!off_1EBA541D8)
        {
          v58 = MEMORY[0x1E69E9820];
          v59 = 3221225472;
          v60 = sub_1B7BBA1A0;
          v61 = &unk_1E7CB6EA8;
          v62 = &v63;
          v22 = sub_1B7BBA1F0(v17, v18, v19, v20);
          v23 = dlsym(v22, "DDResultGetCategory");
          *(v62[1] + 24) = v23;
          off_1EBA541D8 = *(v62[1] + 24);
          v21 = v64[3];
        }

        _Block_object_dispose(&v63, 8);
        if (v21)
        {
          v27 = v21(v11);
          if (v27 != 1)
          {
            v11 = 0;
            goto LABEL_20;
          }

          v63 = 0;
          v64 = &v63;
          v65 = 0x2020000000;
          v31 = off_1EBA541E8;
          v66 = off_1EBA541E8;
          if (!off_1EBA541E8)
          {
            v58 = MEMORY[0x1E69E9820];
            v59 = 3221225472;
            v60 = sub_1B7BBA35C;
            v61 = &unk_1E7CB6EA8;
            v62 = &v63;
            v32 = sub_1B7BBA1F0(v27, v28, v29, v30);
            v33 = dlsym(v32, "DDResultCopyExtractedURLWithOptions");
            *(v62[1] + 24) = v33;
            off_1EBA541E8 = *(v62[1] + 24);
            v31 = v64[3];
          }

          _Block_object_dispose(&v63, 8);
          if (v31)
          {
            v37 = v31(v11, 0);
            v11 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v38, v37, v39);

            goto LABEL_20;
          }

          v41 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v34, v35, v36);
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v47, "CFStringRef _DDResultCopyExtractedURLWithOptions(DDResultRef, DDResultURLExtractionOptions)", v48);
          v49 = dlerror();
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v41, v50, v44, @"IMDCoreSpotlightIndexHelpers.m", 78, @"%s", v49);
        }

        else
        {
          v41 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v24, v25, v26);
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v42, "DDResultCategory _DDResultGetCategory(DDResultRef)", v43);
          v45 = dlerror();
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v41, v46, v44, @"IMDCoreSpotlightIndexHelpers.m", 77, @"%s", v45);
        }

        __break(1u);
        return;
      }

LABEL_20:

      _Block_object_dispose(&v52, 8);
      goto LABEL_21;
    }
  }

  v11 = 0;
LABEL_21:

  v40 = v11;
}

void sub_1B7BB94DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose((v15 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BB951C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  v8 = *MEMORY[0x1E69A5F48];
  v17 = v7;
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v9, *MEMORY[0x1E69A5F48], v10);

  if (v11)
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(v17, v12, v8, v13);
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a5 = 1;
  }
}

id _IMDCopyDDScannerResultFromAttributedStringData(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!objc_msgSend_length(v1, v2, v3, v4))
  {
    v12 = 0;
    goto LABEL_17;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E696ACD0]);
  v22 = 0;
  v8 = objc_msgSend_initForReadingFromData_error_(v6, v7, v1, &v22);
  v9 = v22;
  if (v8)
  {
    if (!qword_1EBA541D0)
    {
      qword_1EBA541D0 = MEMORY[0x1B8CAFAC0](@"DDScannerResult", @"DataDetectorsCore");
    }

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v8, v11, v10, @"dd-result");
    objc_msgSend_finishDecoding(v8, v13, v14, v15);
    if (v12)
    {
      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v20 = objc_msgSend_error(v8, v17, v18, v19);
        *buf = 138412546;
        v24 = v1;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Could not unarchive DDScannerResult data: %@ error: %@", buf, 0x16u);
      }

LABEL_14:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Could not create keyed unarchiver due to error: %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_16:

  objc_autoreleasePoolPop(v5);
LABEL_17:

  return v12;
}

void sub_1B7BB97EC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7BB978CLL);
  }

  _Unwind_Resume(a1);
}

id _IMDCoreSpotlightStrippedBody(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = objc_msgSend_objectForKey_(a1, v6, a2, v7);
  if (!v9)
  {
    v9 = v5;
  }

  v10 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v9, v8, *MEMORY[0x1E69A5F00], &stru_1F2FA9728);
  v12 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v10, v11, *MEMORY[0x1E69A5F20], &stru_1F2FA9728);

  return v12;
}

void sub_1B7BB9A0C()
{
  v0 = objc_alloc_init(IMDCoreSpotlightDispatchObject);
  v1 = qword_1EDBE7940;
  qword_1EDBE7940 = v0;
}

id _IMDCoreSpotlightFullNameForContact(void *a1, int a2)
{
  v3 = a1;
  v7 = v3;
  if (v3)
  {
    if (a2)
    {
      v8 = objc_msgSend_nickname(v3, v4, v5, v6);
      v12 = objc_msgSend_length(v8, v9, v10, v11);
    }

    else
    {
      v8 = 0;
      v12 = objc_msgSend_length(0, v4, v5, v6);
    }

    if (!v12)
    {
      v14 = objc_msgSend_stringFromContact_style_(MEMORY[0x1E695CD80], v13, v7, 0);

      v8 = v14;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id _IMDCoreSpotlightNicknameForAddress(void *a1)
{
  v1 = _IMDNicknameInfoForAddress(a1);
  if (objc_msgSend_count(v1, v2, v3, v4))
  {
    v5 = objc_alloc(MEMORY[0x1E69A8190]);
    v8 = objc_msgSend_initWithDictionaryRepresentation_(v5, v6, v1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1B7BB9BF4(uint64_t a1)
{
  if (qword_1EBA53BD0 != -1)
  {
    sub_1B7CFA48C();
  }

  v2 = qword_1EBA53BC8;

  return v2;
}

void sub_1B7BB9C38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_serviceForContacts(MEMORY[0x1E69992A0], a2, a3, a4);
  v5 = qword_1EBA53BC8;
  qword_1EBA53BC8 = v4;
}

id _IMDCoreSpotlightSuggestedNameForAddress(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v5 = objc_msgSend_length(v1, v2, v3, v4);
  if (v5)
  {
    v6 = sub_1B7BB9BF4(v5);
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_1B7AE1AE0;
    v26 = sub_1B7AE2578;
    v27 = 0;
    v7 = dispatch_semaphore_create(0);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7BB9F58;
    v18[3] = &unk_1E7CBC170;
    v19 = 0;
    v21 = &v22;
    v8 = v7;
    v20 = v8;
    objc_msgSend_namesForDetail_limitTo_prependMaybe_onlySignificant_withCompletion_(v6, v9, v1, 1, 0, 0, v18);
    v10 = dispatch_time(0, 400000000);
    if (dispatch_semaphore_wait(v8, v10) && IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Suggestion service request timed out", buf, 2u);
      }
    }

    if (objc_msgSend_length(v23[5], v11, v12, v13))
    {
      v15 = v23[5];
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v29 = v15;
          v30 = 2112;
          v31 = v1;
          _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Using suggested name %@ for handle %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_1B7BB9F58(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v9 = a3;
  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v22 = 138412546;
        v23 = v11;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Error fetching suggested name for handle %@ Error: %@", &v22, 0x16u);
      }
    }
  }

  else if (objc_msgSend_count(v5, v6, v7, v8))
  {
    v15 = objc_msgSend_firstObject(v5, v12, v13, v14);
    v19 = objc_msgSend_copy(v15, v16, v17, v18);
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void *sub_1B7BBA1A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B7BBA1F0(a1, a2, a3, a4);
  result = dlsym(v5, "DDResultGetCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EBA541D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1B7BBA1F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EBA541E0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1B7BBA2E8;
    v6[4] = &unk_1E7CB6A70;
    v6[5] = v6;
    v7 = xmmword_1E7CBC190;
    v8 = 0;
    qword_1EBA541E0 = _sl_dlopen();
  }

  v4 = qword_1EBA541E0;
  if (!qword_1EBA541E0)
  {
    sub_1B7CFA4A0(v6, a2, a3, a4);
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  return v4;
}

uint64_t sub_1B7BBA2E8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EBA541E0 = result;
  return result;
}

void *sub_1B7BBA35C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B7BBA1F0(a1, a2, a3, a4);
  result = dlsym(v5, "DDResultCopyExtractedURLWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EBA541E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1B7BBA71C(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_searchableItems(*(a1 + 32), v8, v9, v10);
      v15 = objc_msgSend_count(v11, v12, v13, v14);
      v19 = objc_msgSend_transactionID(*(a1 + 32), v16, v17, v18);
      v24 = 134218498;
      v25 = v15;
      v26 = 2112;
      v27 = v19;
      v28 = 1024;
      v29 = a2 ^ 1;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Finished indexing %ld items to Spotlight and Suggestions with transaction ID %@ successfully %{BOOL}d", &v24, 0x1Cu);
    }
  }

  if (a2)
  {
    v20 = objc_msgSend__timeoutError(IMDCoreSpotlightIndexingJob, v4, v5, v6);
    v21 = *(a1 + 32);
    v22 = *(v21 + 56);
    *(v21 + 56) = v20;
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1B7BBA888(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_transactionID(*(a1 + 32), v5, v6, v7);
      v12 = objc_msgSend_index(*(a1 + 32), v9, v10, v11);
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlightIndexSearchableItems: indexing transaction %@ failed with error %@. Using Index %@", &v13, 0x20u);
    }
  }
}

void sub_1B7BBACF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = IMCoreSpotlightCriticalIndex();
  v11 = objc_msgSend_integerValue(v6, v8, v9, v10);

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BBADD8;
  v15[3] = &unk_1E7CB6C10;
  v12 = *(a1 + 32);
  v16 = v5;
  v17 = v12;
  v13 = v5;
  objc_msgSend_deleteSearchableItemsWithIdentifiers_reason_completionHandler_(v7, v14, v13, v11, v15);
}

void sub_1B7BBADD8(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = objc_msgSend_count(*(a1 + 32), v6, v7, v8);
        v13 = objc_msgSend_context(*(a1 + 40), v10, v11, v12);
        objc_msgSend_reason(v13, v14, v15, v16);
        v17 = NSStringFromIMCoreSpotlightIndexReason();
        v34 = 134218498;
        v35 = v9;
        v36 = 2112;
        v37 = v17;
        v38 = 2112;
        v39 = v3;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "failed to delete %ld items for reason %@ due to %@", &v34, 0x20u);
      }

LABEL_9:
    }
  }

  else if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v21 = objc_msgSend_count(*(a1 + 32), v18, v19, v20);
      v25 = objc_msgSend_context(*(a1 + 40), v22, v23, v24);
      objc_msgSend_reason(v25, v26, v27, v28);
      v29 = NSStringFromIMCoreSpotlightIndexReason();
      v33 = objc_msgSend_transactionID(*(a1 + 40), v30, v31, v32);
      v34 = 134218498;
      v35 = v21;
      v36 = 2112;
      v37 = v29;
      v38 = 2112;
      v39 = v33;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Deleted %ld items for reason %@ with transaction ID %@", &v34, 0x20u);
    }

    goto LABEL_9;
  }
}

void sub_1B7BBAFB8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7BBAF80);
  }

  _Unwind_Resume(a1);
}

void sub_1B7BBB348(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_serviceForMessages(MEMORY[0x1E69992A0], a2, a3, a4);
  v5 = qword_1EBA53B38;
  qword_1EBA53B38 = v4;
}

void sub_1B7BBB388(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v13, v14, v15) && IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v40 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v20, v21, v22);
      v26 = objc_msgSend_domainIdentifier(*(a1 + 32), v23, v24, v25);
      v30 = objc_msgSend_count(v10, v27, v28, v29);
      v34 = objc_msgSend_count(v11, v31, v32, v33);
      v38 = objc_msgSend_transactionID(*(a1 + 40), v35, v36, v37);
      *buf = 138413314;
      v42 = v40;
      v43 = 2112;
      v44 = v26;
      v45 = 2048;
      v46 = v30;
      v47 = 2048;
      v48 = v34;
      v49 = 2112;
      v50 = v38;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Finished donating item ID %@ domain %@ to Suggestions with %ld pseudo-contacts %ld pseudo-events transaction ID %@", buf, 0x34u);
    }
  }

  v39 = objc_msgSend_group(*(a1 + 40), v16, v17, v18);
  dispatch_group_leave(v39);
}

void sub_1B7BBB8C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v8 = a2;
  v12 = objc_msgSend_context(v7, v9, v10, v11);
  v16 = objc_msgSend_oldestFullReindexMessageGUID(v12, v13, v14, v15);
  v19 = objc_msgSend_objectForKeyedSubscript_(v8, v17, v16, v18);

  if (v19)
  {
    v23 = objc_msgSend_integerValue(v19, v20, v21, v22);
    v27 = objc_msgSend_clientState(*v6, v24, v25, v26);
    objc_msgSend_setLastIndexedRowID_(v27, v28, v23, v29);
  }

  else
  {
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA5D4(v6, v5, v30, v31);
    }
  }
}

void sub_1B7BBBC24(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA728(a1, v3, v4, v5);
    }

    v6 = *(a1 + 32);
    v7 = v3;
    v8 = *(v6 + 56);
    *(v6 + 56) = v7;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = objc_msgSend_searchableItems(*(a1 + 32), v10, v11, v12);
        v17 = objc_msgSend_count(v13, v14, v15, v16);
        v21 = objc_msgSend_transactionID(*(a1 + 32), v18, v19, v20);
        v51 = 134218242;
        v52 = v17;
        v53 = 2112;
        v54 = v21;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "indexing of %ld items to spotlight with transaction ID %@ completed", &v51, 0x16u);
      }
    }

    notify_post("com.apple.imdpersistenceagent.notification.spotlightclientstateupdated");
    v25 = objc_msgSend_sharedPublisher(IMDSpotlightActivityPublisher, v22, v23, v24);
    v29 = objc_msgSend_searchableItems(*(a1 + 32), v26, v27, v28);
    v33 = objc_msgSend_context(*(a1 + 32), v30, v31, v32);
    objc_msgSend_publishItems_context_(v25, v34, v29, v33);

    v8 = objc_msgSend_sharedPublisher(IMDSpotlightActivityPublisher, v35, v36, v37);
    v41 = objc_msgSend_rejectedItems(*(a1 + 32), v38, v39, v40);
    v45 = objc_msgSend_context(*(a1 + 32), v42, v43, v44);
    objc_msgSend_publishRejections_context_(v8, v46, v41, v45);
  }

  v50 = objc_msgSend_group(*(a1 + 32), v47, v48, v49);
  dispatch_group_leave(v50);
}

void sub_1B7BBCB7C()
{
  v0 = [IMDCoreSpotlightRichLinkIndexer alloc];
  v2 = objc_msgSend_initWithClass_linkType_linkSubtype_prefix_(v0, v1, 0, 0, 0, 0);
  v3 = qword_1EBA541F0;
  qword_1EBA541F0 = v2;
}

void sub_1B7BBCD44()
{
  v142[15] = *MEMORY[0x1E69E9840];
  v141[0] = @"LPiTunesMediaSongMetadata";
  v3 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v4 = qword_1EBA54260;
  v140 = qword_1EBA54260;
  if (!qword_1EBA54260)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BBFDF0;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BBFDF0(&v132, v0, v1, v2);
    v4 = v138[3];
  }

  v5 = v4;
  _Block_object_dispose(&v137, 8);
  v7 = objc_msgSend_initWithClass_linkType_prefix_(v3, v6, v4, *MEMORY[0x1E6963B30], @"song");
  v142[0] = v7;
  v141[1] = @"LPiTunesMediaAlbumMetadata";
  v11 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v12 = qword_1EBA54270;
  v140 = qword_1EBA54270;
  if (!qword_1EBA54270)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BBFFB0;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BBFFB0(&v132, v8, v9, v10);
    v12 = v138[3];
  }

  v13 = v12;
  _Block_object_dispose(&v137, 8);
  v15 = objc_msgSend_initWithClass_linkType_prefix_(v11, v14, v12, *MEMORY[0x1E6963AE0], @"album");
  v142[1] = v15;
  v141[2] = @"LPiTunesMediaArtistMetadata";
  v19 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v20 = qword_1EBA54278;
  v140 = qword_1EBA54278;
  if (!qword_1EBA54278)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC0008;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC0008(&v132, v16, v17, v18);
    v20 = v138[3];
  }

  v21 = v20;
  _Block_object_dispose(&v137, 8);
  v23 = objc_msgSend_initWithClass_linkType_prefix_(v19, v22, v20, *MEMORY[0x1E6963AE8], @"artist");
  v142[2] = v23;
  v141[3] = @"LPiTunesMediaMusicVideoMetadata";
  v27 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v28 = qword_1EBA54280;
  v140 = qword_1EBA54280;
  if (!qword_1EBA54280)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC0060;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC0060(&v132, v24, v25, v26);
    v28 = v138[3];
  }

  v29 = v28;
  _Block_object_dispose(&v137, 8);
  v31 = objc_msgSend_initWithClass_linkType_prefix_(v27, v30, v28, *MEMORY[0x1E6963B00], @"music video");
  v142[3] = v31;
  v141[4] = @"LPiTunesMediaPodcastEpisodeMetadata";
  v35 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v36 = qword_1EBA54288;
  v140 = qword_1EBA54288;
  if (!qword_1EBA54288)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC00B8;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC00B8(&v132, v32, v33, v34);
    v36 = v138[3];
  }

  v37 = v36;
  _Block_object_dispose(&v137, 8);
  v38 = *MEMORY[0x1E6963B18];
  v40 = objc_msgSend_initWithClass_linkType_linkSubtype_prefix_(v35, v39, v36, *MEMORY[0x1E6963B18], @"episode", @"podcast episode");
  v142[4] = v40;
  v141[5] = @"LPiTunesMediaPodcastMetadata";
  v44 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v45 = qword_1EBA54290;
  v140 = qword_1EBA54290;
  if (!qword_1EBA54290)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC0110;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC0110(&v132, v41, v42, v43);
    v45 = v138[3];
  }

  v46 = v45;
  _Block_object_dispose(&v137, 8);
  v131 = objc_msgSend_initWithClass_linkType_prefix_(v44, v47, v45, v38, @"podcast");
  v142[5] = v131;
  v141[6] = @"LPiTunesMediaTVEpisodeMetadata";
  v51 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v52 = qword_1EBA54298;
  v140 = qword_1EBA54298;
  if (!qword_1EBA54298)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC0168;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC0168(&v132, v48, v49, v50);
    v52 = v138[3];
  }

  v53 = v52;
  _Block_object_dispose(&v137, 8);
  v54 = *MEMORY[0x1E6963B28];
  v130 = objc_msgSend_initWithClass_linkType_linkSubtype_prefix_(v51, v55, v52, *MEMORY[0x1E6963B28], @"episode", @"tv show episode");
  v142[6] = v130;
  v141[7] = @"LPiTunesMediaTVSeasonMetadata";
  v59 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v60 = qword_1EBA542A0;
  v140 = qword_1EBA542A0;
  if (!qword_1EBA542A0)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC01C0;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC01C0(&v132, v56, v57, v58);
    v60 = v138[3];
  }

  v61 = v60;
  _Block_object_dispose(&v137, 8);
  v129 = objc_msgSend_initWithClass_linkType_linkSubtype_prefix_(v59, v62, v60, v54, @"season", @"tv show");
  v142[7] = v129;
  v141[8] = @"LPiTunesMediaPlaylistMetadata";
  v66 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v67 = qword_1EBA542A8;
  v140 = qword_1EBA542A8;
  if (!qword_1EBA542A8)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC0218;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC0218(&v132, v63, v64, v65);
    v67 = v138[3];
  }

  v68 = v67;
  _Block_object_dispose(&v137, 8);
  v128 = objc_msgSend_initWithClass_linkType_prefix_(v66, v69, v67, *MEMORY[0x1E6963B10], @"playlist");
  v142[8] = v128;
  v141[9] = @"LPiTunesMediaMovieMetadata";
  v73 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v74 = qword_1EBA542B0;
  v140 = qword_1EBA542B0;
  if (!qword_1EBA542B0)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC0270;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC0270(&v132, v70, v71, v72);
    v74 = v138[3];
  }

  v75 = v74;
  _Block_object_dispose(&v137, 8);
  v76 = *MEMORY[0x1E6963AF8];
  v127 = objc_msgSend_initWithClass_linkType_prefix_(v73, v77, v74, *MEMORY[0x1E6963AF8], @"movie");
  v142[9] = v127;
  v141[10] = @"LPiTunesMediaMovieBundleMetadata";
  v81 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v82 = qword_1EBA542B8;
  v140 = qword_1EBA542B8;
  if (!qword_1EBA542B8)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC02C8;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC02C8(&v132, v78, v79, v80);
    v82 = v138[3];
  }

  v83 = v82;
  _Block_object_dispose(&v137, 8);
  v85 = objc_msgSend_initWithClass_linkType_linkSubtype_prefix_(v81, v84, v82, v76, @"bundle", @"movie bundle");
  v142[10] = v85;
  v141[11] = @"LPiTunesMediaRadioMetadata";
  v89 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v90 = qword_1EBA542C0;
  v140 = qword_1EBA542C0;
  if (!qword_1EBA542C0)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC0320;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC0320(&v132, v86, v87, v88);
    v90 = v138[3];
  }

  v91 = v90;
  _Block_object_dispose(&v137, 8);
  v126 = objc_msgSend_initWithClass_linkType_prefix_(v89, v92, v90, *MEMORY[0x1E6963B20], @"radio station");
  v142[11] = v126;
  v141[12] = @"LPAppleTVMetadata";
  v96 = [IMDCoreSpotlightAppleTVLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v97 = qword_1EBA542C8;
  v140 = qword_1EBA542C8;
  if (!qword_1EBA542C8)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC0378;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC0378(&v132, v93, v94, v95);
    v97 = v138[3];
  }

  v98 = v97;
  _Block_object_dispose(&v137, 8);
  v100 = objc_msgSend_initWithClass_linkType_prefix_(v96, v99, v97, 0, 0);
  v142[12] = v100;
  v141[13] = @"LPAppleNewsMetadata";
  v104 = [IMDCoreSpotlightNewsLinkIndexer alloc];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v105 = qword_1EBA542D0;
  v140 = qword_1EBA542D0;
  if (!qword_1EBA542D0)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC03D0;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC03D0(&v132, v101, v102, v103);
    v105 = v138[3];
  }

  v106 = v105;
  _Block_object_dispose(&v137, 8);
  v108 = objc_msgSend_initWithClass_linkType_prefix_(v104, v107, v105, *MEMORY[0x1E6963B08], @"news");
  v142[13] = v108;
  v141[14] = @"LPMapMetadata";
  v112 = [IMDCoreSpotlightMapsLinkIndexer alloc];
  v113 = v85;
  v114 = v40;
  v115 = v31;
  v116 = v23;
  v117 = v15;
  v118 = v7;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v119 = qword_1EBA542D8;
  v140 = qword_1EBA542D8;
  if (!qword_1EBA542D8)
  {
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = sub_1B7BC0428;
    v135 = &unk_1E7CB6EA8;
    v136 = &v137;
    sub_1B7BC0428(&v132, v109, v110, v111);
    v119 = v138[3];
  }

  v120 = v119;
  _Block_object_dispose(&v137, 8);
  v122 = objc_msgSend_initWithClass_linkType_prefix_(v112, v121, v119, *MEMORY[0x1E6963AF0], @"map");
  v142[14] = v122;
  v124 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v123, v142, v141, 15);
  v125 = qword_1EBA54200;
  qword_1EBA54200 = v124;
}

void sub_1B7BBDA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BBE0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BBE6F0()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_lpTitle", 1, 0, 0, 0);
  v3 = qword_1EBA54210;
  qword_1EBA54210 = v2;
}

void sub_1B7BBE78C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_lpRichMedia", 1, 0, 1, 0);
  v3 = qword_1EBA54220;
  qword_1EBA54220 = v2;
}

void sub_1B7BBE828()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_lpPluginPaths", 0, 0, 1, 1);
  v3 = qword_1EBA54230;
  qword_1EBA54230 = v2;
}

void sub_1B7BBE8C4()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_lpDescription", 1, 0, 0, 0);
  v3 = qword_1EBA54240;
  qword_1EBA54240 = v2;
}

void sub_1B7BBF4EC()
{
  v86[15] = *MEMORY[0x1E69E9840];
  v85[0] = @"Episode";
  v0 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v84 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v1, @"LPiTunesMediaTVEpisodeMetadata", v2);
  v83 = objc_msgSend_initWithOGType_indexer_(v0, v3, @"Episode", v84);
  v86[0] = v83;
  v85[1] = @"video.episode";
  v4 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v82 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v5, @"LPiTunesMediaTVEpisodeMetadata", v6);
  v81 = objc_msgSend_initWithOGType_indexer_(v4, v7, @"video.episode", v82);
  v86[1] = v81;
  v85[2] = @"Show";
  v8 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v80 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v9, @"LPiTunesMediaTVSeasonMetadata", v10);
  v79 = objc_msgSend_initWithOGType_indexer_(v8, v11, @"Show", v80);
  v86[2] = v79;
  v85[3] = @"video.tv_show";
  v12 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v78 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v13, @"LPiTunesMediaTVSeasonMetadata", v14);
  v77 = objc_msgSend_initWithOGType_indexer_(v12, v15, @"video.tv_show", v78);
  v86[3] = v77;
  v85[4] = @"Movie";
  v16 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v76 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v17, @"LPiTunesMediaMovieMetadata", v18);
  v75 = objc_msgSend_initWithOGType_indexer_(v16, v19, @"Movie", v76);
  v86[4] = v75;
  v85[5] = @"video.movie";
  v20 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v74 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v21, @"LPiTunesMediaMovieMetadata", v22);
  v73 = objc_msgSend_initWithOGType_indexer_(v20, v23, @"video.movie", v74);
  v86[5] = v73;
  v85[6] = @"music.song";
  v24 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v72 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v25, @"LPiTunesMediaSongMetadata", v26);
  v71 = objc_msgSend_initWithOGType_indexer_(v24, v27, @"music.song", v72);
  v86[6] = v71;
  v85[7] = @"music.album";
  v28 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v70 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v29, @"LPiTunesMediaAlbumMetadata", v30);
  v69 = objc_msgSend_initWithOGType_indexer_(v28, v31, @"music.album", v70);
  v86[7] = v69;
  v85[8] = @"music.playlist";
  v32 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v68 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v33, @"LPiTunesMediaPlaylistMetadata", v34);
  v67 = objc_msgSend_initWithOGType_indexer_(v32, v35, @"music.playlist", v68);
  v86[8] = v67;
  v85[9] = @"music.radio_station";
  v36 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v66 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v37, @"LPiTunesMediaRadioMetadata", v38);
  v40 = objc_msgSend_initWithOGType_indexer_(v36, v39, @"music.radio_station", v66);
  v86[9] = v40;
  v85[10] = @"video.other";
  v41 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v44 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v42, @"LPiTunesMediaMovieMetadata", v43);
  v46 = objc_msgSend_initWithOGType_indexer_(v41, v45, @"video.other", v44);
  v86[10] = v46;
  v85[11] = @"article";
  v47 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v50 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v48, @"LPAppleNewsMetadata", v49);
  v52 = objc_msgSend_initWithOGType_indexer_(v47, v51, @"article", v50);
  v86[11] = v52;
  v85[12] = @"book";
  v53 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v54 = *MEMORY[0x1E6963B38];
  v56 = objc_msgSend_initWithOGType_prefix_linkType_linkSubType_(v53, v55, @"book", @"book", *MEMORY[0x1E6963B38], @"book");
  v86[12] = v56;
  v85[13] = @"profile";
  v57 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v59 = objc_msgSend_initWithOGType_prefix_linkType_linkSubType_(v57, v58, @"profile", @"profile", v54, @"profile");
  v86[13] = v59;
  v85[14] = @"recipe";
  v60 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v62 = objc_msgSend_initWithOGType_prefix_linkType_linkSubType_(v60, v61, @"recipe", @"recipe", v54, @"recipe");
  v86[14] = v62;
  v64 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v63, v86, v85, 15);
  v65 = qword_1EBA54250;
  qword_1EBA54250 = v64;
}

Class sub_1B7BBFDF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaSongMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFA8CC(result, v6, v7, v8);
  }

  qword_1EBA54260 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B7BBFE48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EBA54268)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1B7BBFF3C;
    v4[4] = &unk_1E7CB6A70;
    v4[5] = v4;
    v5 = xmmword_1E7CBC220;
    v6 = 0;
    qword_1EBA54268 = _sl_dlopen();
  }

  if (!qword_1EBA54268)
  {
    sub_1B7CFA948(v4, a2, a3, a4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }
}

uint64_t sub_1B7BBFF3C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EBA54268 = result;
  return result;
}

Class sub_1B7BBFFB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaAlbumMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFA9C8(result, v6, v7, v8);
  }

  qword_1EBA54270 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0008(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaArtistMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAA44(result, v6, v7, v8);
  }

  qword_1EBA54278 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0060(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaMusicVideoMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAAC0(result, v6, v7, v8);
  }

  qword_1EBA54280 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC00B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaPodcastEpisodeMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAB3C(result, v6, v7, v8);
  }

  qword_1EBA54288 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0110(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaPodcastMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFABB8(result, v6, v7, v8);
  }

  qword_1EBA54290 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0168(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaTVEpisodeMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAC34(result, v6, v7, v8);
  }

  qword_1EBA54298 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC01C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaTVSeasonMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFACB0(result, v6, v7, v8);
  }

  qword_1EBA542A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0218(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaPlaylistMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAD2C(result, v6, v7, v8);
  }

  qword_1EBA542A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0270(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaMovieMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFADA8(result, v6, v7, v8);
  }

  qword_1EBA542B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC02C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaMovieBundleMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAE24(result, v6, v7, v8);
  }

  qword_1EBA542B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0320(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPiTunesMediaRadioMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAEA0(result, v6, v7, v8);
  }

  qword_1EBA542C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0378(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPAppleTVMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAF1C(result, v6, v7, v8);
  }

  qword_1EBA542C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC03D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPAppleNewsMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAF98(result, v6, v7, v8);
  }

  qword_1EBA542D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0428(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPMapMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFB014(result, v6, v7, v8);
  }

  qword_1EBA542D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0480(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_1B7BBFE48(a1, a2, a3, a4);
  result = objc_getClass("LPLinkMetadataPresentationTransformer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFB090(result, v6, v7, v8);
  }

  qword_1EBA542E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B7BC1284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, int a28, __int16 a29, uint64_t a30)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1B7BC1214);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B7BC1404(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_stopMainTimerAndLogAfterFailure(WeakRetained, v3, v4, v5);

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_messageGUID(*(a1 + 32), v7, v8, v9);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Timed out indexing %@, likely have a hung thread, exiting!", &v11, 0xCu);
    }
  }

  exit(1);
}

uint64_t sub_1B7BC1A24(void *a1)
{
  v1 = a1;
  if (IMDSpotlightIndexingUsesPartialIndexersForIndexingContext(v1, v2, v3, v4))
  {
    v8 = 1;
  }

  else
  {
    v8 = IMDSpotlightIndexingIncludesTextContentForIndexingContext(v1, v5, v6, v7) ^ 1;
  }

  return v8;
}

void sub_1B7BC3238(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v10 = a3;
  objc_msgSend_addObjectsFromArray_(v5, v6, a2, v7);
  objc_msgSend_addObjectsFromArray_(*(a1 + 40), v8, v10, v9);
}

void sub_1B7BC35F4(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = IMDIndexingErrorRequestWasDeferred(v3);
    v6 = IMLogHandleForCategory();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = objc_msgSend_messageGUIDs(*(a1 + 32), v8, v9, v10);
        v26 = 134217984;
        v27 = objc_msgSend_count(v11, v12, v13, v14);
        v15 = "%ld messages scheduled for indexing";
LABEL_7:
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, v15, &v26, 0xCu);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB10C(a1, v4, v7, v22);
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_messageGUIDs(*(a1 + 32), v16, v17, v18);
      v26 = 134217984;
      v27 = objc_msgSend_count(v11, v19, v20, v21);
      v15 = "Finished index %ld messages due to selective reindexing request";
      goto LABEL_7;
    }
  }

  objc_msgSend__leaveGroup(*(a1 + 32), v23, v24, v25);
}

void sub_1B7BC3900(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = IMDIndexingErrorRequestWasDeferred(v3);
    v6 = IMLogHandleForCategory();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = objc_msgSend_chatGUIDs(*(a1 + 32), v8, v9, v10);
        v26 = 134217984;
        v27 = objc_msgSend_count(v11, v12, v13, v14);
        v15 = "%ld chats scheduled for indexing";
LABEL_7:
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, v15, &v26, 0xCu);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB1A4(a1, v4, v7, v22);
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_chatGUIDs(*(a1 + 32), v16, v17, v18);
      v26 = 134217984;
      v27 = objc_msgSend_count(v11, v19, v20, v21);
      v15 = "Finished index %ld chats due to selective reindexing request";
      goto LABEL_7;
    }
  }

  objc_msgSend__leaveGroup(*(a1 + 32), v23, v24, v25);
}