void sub_22525CA10(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_performCallback(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_fetchGroup(*(a1 + 40), v4, v5);
  dispatch_group_leave(v6);
}

void sub_22525CC60(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v2 = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v40, v44, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v41;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        v11 = objc_msgSend_fetchInfosByOrder(*(a1 + 40), v5, v6);
        v12 = MEMORY[0x277CCABB0];
        Order = objc_msgSend_fetchOrder(v10, v13, v14);
        v17 = objc_msgSend_numberWithUnsignedInteger_(v12, v16, Order);
        v19 = objc_msgSend_objectForKeyedSubscript_(v11, v18, v17);

        if (v19)
        {
          v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
          v32 = *(a1 + 40);
          v31 = *(a1 + 48);
          v35 = objc_msgSend_fetchOrder(v10, v33, v34);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v36, v31, v32, @"CKDRecordFetchAggregator.m", 434, @"A fetch info with order %lu already exists. %@", v35, v10, v40);
        }

        v22 = objc_msgSend_fetchInfosByOrder(*(a1 + 40), v20, v21);
        v23 = MEMORY[0x277CCABB0];
        v26 = objc_msgSend_fetchOrder(v10, v24, v25);
        v28 = objc_msgSend_numberWithUnsignedInteger_(v23, v27, v26);
        objc_msgSend_setObject_forKeyedSubscript_(v22, v29, v10, v28);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v40, v44, 16);
    }

    while (v7);
  }

  v39 = objc_msgSend_fetchSource(*(a1 + 40), v37, v38);
  dispatch_source_merge_data(v39, 1uLL);
}

void sub_22525E55C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 96));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_22525E5BC(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_setDeviceCapabiltiesUpdateResult_(WeakRetained, v4, v6);
  }
}

void sub_22525E620(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = objc_msgSend_zoneUsageResults(*(a1 + 32), v7, v8);

    if (!v10)
    {
      v13 = objc_opt_new();
      objc_msgSend_setZoneUsageResults_(*(a1 + 32), v14, v13);
    }

    v15 = objc_msgSend_zoneUsageResults(WeakRetained, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v6, v17);
  }
}

void sub_22525E6E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = objc_msgSend_shareUsageResults(*(a1 + 32), v7, v8);

    if (!v10)
    {
      v13 = objc_opt_new();
      objc_msgSend_setShareUsageResults_(*(a1 + 32), v14, v13);
    }

    v15 = objc_msgSend_shareUsageResults(WeakRetained, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v6, v17);
  }
}

void sub_22525E7B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v18 = WeakRetained;
    v5 = objc_loadWeakRetained((a1 + 40));
    if (v5)
    {
      objc_msgSend_handleRequestCompleted_(v18, v3, v5);
    }

    else
    {
      v8 = MEMORY[0x277CBC560];
      v9 = *MEMORY[0x277CBBF50];
      v10 = objc_msgSend_operationID(v18, v3, v4);
      v12 = objc_msgSend_errorWithDomain_code_format_(v8, v11, v9, 20, @"Operation %@ was cancelled internally by CloudKit", v10);
      objc_msgSend_setError_(v18, v13, v12);
    }

    v14 = objc_msgSend_error(v18, v6, v7);

    if (v14)
    {
      objc_msgSend_invokeCompletionHandlers(v18, v15, v16);
    }

    v17 = objc_msgSend_stateTransitionGroup(v18, v15, v16);
    dispatch_group_leave(v17);

    WeakRetained = v18;
  }
}

void sub_22525F250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22525F27C(uint64_t a1, char a2, void *a3)
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

void sub_22525F520(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  v8 = objc_msgSend_error(*(a1 + 32), v3, v4);
  if (v8 || (objc_msgSend_deviceCapabiltiesUpdateResult(*(a1 + 32), v6, v7), (v1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = objc_msgSend_updateDeviceCapabilitiesCompletionBlock(*(a1 + 32), v6, v7);

    if (v8)
    {

      if (!v9)
      {
        goto LABEL_12;
      }

LABEL_8:
      v10 = *(a1 + 32);
      v11 = objc_msgSend_deviceCapabiltiesUpdateResult(v10, v6, v7);
      v13 = objc_msgSend_errorForResult_fallbackDescription_(v10, v12, v11, @"Failed to save device capabilities");

      if (*MEMORY[0x277CBC810] == 1)
      {
        v16 = objc_msgSend_unitTestOverrides(*(a1 + 32), v14, v15);
        v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"forceDeviceCapabilityUpdateFailure");

        if (v18)
        {
          v19 = MEMORY[0x277CBC560];
          v20 = *MEMORY[0x277CBBF50];
          v21 = objc_msgSend_operationID(*(a1 + 32), v14, v15);
          v23 = objc_msgSend_errorWithDomain_code_format_(v19, v22, v20, 1, @"Forcing a failure to save device capabilties for operation %@", v21);

          v13 = v23;
        }
      }

      v24 = objc_msgSend_updateDeviceCapabilitiesCompletionBlock(*(a1 + 32), v14, v15);
      v27 = objc_msgSend_supportedCapabilities(*(a1 + 32), v25, v26);
      v30 = objc_msgSend_error(*(a1 + 32), v28, v29);
      (v24)[2](v24, v27, v13, v30);

      objc_msgSend_setUpdateDeviceCapabilitiesCompletionBlock_(*(a1 + 32), v31, 0);
      goto LABEL_12;
    }

    if (v9)
    {
      goto LABEL_8;
    }
  }

LABEL_12:
  v32 = objc_msgSend_perZoneUsageCompletionBlock(*(a1 + 32), v6, v7);

  if (v32)
  {
    v35 = objc_msgSend_zoneUsageResults(*(a1 + 32), v33, v34);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_22525F8F0;
    v56[3] = &unk_27854B318;
    v56[4] = *(a1 + 32);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v35, v36, v56);

    v39 = objc_msgSend_zoneUsages(*(a1 + 32), v37, v38);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_22525FA78;
    v55[3] = &unk_27854B340;
    v55[4] = *(a1 + 32);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v39, v40, v55);

    objc_msgSend_setPerZoneUsageCompletionBlock_(*(a1 + 32), v41, 0);
  }

  v42 = objc_msgSend_perShareUsageCompletionBlock(*(a1 + 32), v33, v34);

  if (v42)
  {
    v45 = objc_msgSend_shareUsageResults(*(a1 + 32), v43, v44);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_22525FC20;
    v54[3] = &unk_27854B368;
    v54[4] = *(a1 + 32);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v45, v46, v54);

    v49 = objc_msgSend_shareUsages(*(a1 + 32), v47, v48);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_22525FDA8;
    v53[3] = &unk_27854B390;
    v53[4] = *(a1 + 32);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v49, v50, v53);

    objc_msgSend_setPerShareUsageCompletionBlock_(*(a1 + 32), v51, 0);
  }

  v52 = objc_msgSend_stateTransitionGroup(WeakRetained, v43, v44);
  dispatch_group_leave(v52);

LABEL_17:
}

void sub_22525F8F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v27 = objc_msgSend_errorForResult_fallbackDescription_(v5, v7, a3, @"Failed to save zone usage");
  if (*MEMORY[0x277CBC810] == 1)
  {
    v10 = objc_msgSend_unitTestOverrides(*(a1 + 32), v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"forceZoneUsageUpdateFailure");

    if (v12)
    {
      v13 = MEMORY[0x277CBC560];
      v14 = *MEMORY[0x277CBBF50];
      v15 = objc_msgSend_operationID(*(a1 + 32), v8, v9);
      v17 = objc_msgSend_errorWithDomain_code_format_(v13, v16, v14, 1, @"Forcing a failure to save zone usage for operation %@", v15);

      v27 = v17;
    }
  }

  v18 = objc_msgSend_zoneUsages(*(a1 + 32), v8, v9);
  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v6);

  v23 = objc_msgSend_perZoneUsageCompletionBlock(*(a1 + 32), v21, v22);
  v26 = objc_msgSend_error(*(a1 + 32), v24, v25);
  (v23)[2](v23, v6, v20, v27, v26);
}

void sub_22525FA78(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_zoneUsageResults(*(a1 + 32), v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, v5);

  if (!v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Warn: Did not receive a zone usage result for zone ID %@", buf, 0xCu);
    }

    v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBBF50], 1, @"Failed to save zone usage at %@ for zone ID %@", v6, v5);
    v17 = objc_msgSend_perZoneUsageCompletionBlock(*(a1 + 32), v15, v16);
    v20 = objc_msgSend_error(*(a1 + 32), v18, v19);
    (v17)[2](v17, v5, v6, v14, v20);
  }
}

void sub_22525FC20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v27 = objc_msgSend_errorForResult_fallbackDescription_(v5, v7, a3, @"Failed to save share usage");
  if (*MEMORY[0x277CBC810] == 1)
  {
    v10 = objc_msgSend_unitTestOverrides(*(a1 + 32), v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"forceShareUsageUpdateFailure");

    if (v12)
    {
      v13 = MEMORY[0x277CBC560];
      v14 = *MEMORY[0x277CBBF50];
      v15 = objc_msgSend_operationID(*(a1 + 32), v8, v9);
      v17 = objc_msgSend_errorWithDomain_code_format_(v13, v16, v14, 1, @"Forcing a failure to save share usage for operation %@", v15);

      v27 = v17;
    }
  }

  v18 = objc_msgSend_shareUsages(*(a1 + 32), v8, v9);
  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v6);

  v23 = objc_msgSend_perShareUsageCompletionBlock(*(a1 + 32), v21, v22);
  v26 = objc_msgSend_error(*(a1 + 32), v24, v25);
  (v23)[2](v23, v6, v20, v27, v26);
}

void sub_22525FDA8(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_shareUsageResults(*(a1 + 32), v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, v5);

  if (!v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Warn: Did not receive a share usage result for share ID %@", buf, 0xCu);
    }

    v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBBF50], 1, @"Failed to save share usage at %@ for share ID %@", v6, v5);
    v17 = objc_msgSend_perShareUsageCompletionBlock(*(a1 + 32), v15, v16);
    v20 = objc_msgSend_error(*(a1 + 32), v18, v19);
    (v17)[2](v17, v5, v6, v14, v20);
  }
}

void sub_22526056C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_22526059C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (!v5)
  {
    v8 = objc_msgSend_containerPrivacySettings(v2, v6, v7);
    objc_msgSend_setContainerPrivacySettings_(WeakRetained, v9, v8);
  }

  v10 = objc_msgSend_error(v2, v6, v7);
  objc_msgSend_finishWithError_(WeakRetained, v11, v10);
}

void sub_225260FE8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_discoverUserIdentitiesProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_discoverUserIdentitiesProgressBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_225261258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225261298(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = objc_msgSend_error(WeakRetained, v10, v11);

  if (!v12)
  {
    objc_msgSend__handleDiscoveredIdentity_lookupInfo_responseCode_(WeakRetained, v13, v7, v14, v8);
  }
}

void sub_22526133C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  v7 = *(a1 + 32);
  if (v4)
  {
    v8 = objc_msgSend_error(WeakRetained, v5, v6);
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v11 = objc_msgSend_error(v8, v9, v10);
    (*(v7 + 16))(v7, v11);
  }
}

uint64_t sub_2252616D4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a2;
LABEL_3:

    return objc_msgSend_finishWithError_(v4, a2, v5);
  }

  v7 = objc_msgSend_count(*(a1 + 40), 0, a3);
  v4 = *(a1 + 32);
  if (!v7)
  {
    v5 = 0;
    goto LABEL_3;
  }

  v8 = *(a1 + 40);

  return objc_msgSend__discoverIdentitiesBatched_(v4, a2, v8);
}

void sub_225261B44(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_emailAddresses(v3, v4, v5);
  v8 = objc_msgSend_CKMap_(v6, v7, &unk_28385D880);

  v11 = objc_msgSend_phoneNumbers(v3, v9, v10);
  v13 = objc_msgSend_CKMap_(v11, v12, &unk_28385D8A0);

  v36 = v13;
  v15 = objc_msgSend_arrayByAddingObjectsFromArray_(v8, v14, v13);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v37, v41, 16);
  if (v17)
  {
    v19 = v17;
    v20 = *v38;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        objc_msgSend_addObject_(*(a1 + 32), v18, v22);
        v25 = objc_msgSend_contactIdentifiersByLookupInfo(*(a1 + 40), v23, v24);
        v27 = objc_msgSend_objectForKeyedSubscript_(v25, v26, v22);

        if (!v27)
        {
          v27 = objc_opt_new();
          v32 = objc_msgSend_contactIdentifiersByLookupInfo(*(a1 + 40), v30, v31);
          objc_msgSend_setObject_forKeyedSubscript_(v32, v33, v27, v22);
        }

        v34 = objc_msgSend_identifier(v3, v28, v29);
        objc_msgSend_addObject_(v27, v35, v34);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v37, v41, 16);
    }

    while (v19);
  }
}

id sub_225261D3C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBC7C8];
  v3 = a2;
  v4 = [v2 alloc];
  v7 = objc_msgSend_value(v3, v5, v6);

  v9 = objc_msgSend_initWithEmailAddress_(v4, v8, v7);
  objc_msgSend_setShouldReportMissingIdentity_(v9, v10, 0);

  return v9;
}

id sub_225261DC4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_value(a2, a2, a3);
  v6 = objc_msgSend_stringValue(v3, v4, v5);
  v7 = sub_225405704(v6);

  v8 = objc_alloc(MEMORY[0x277CBC7C8]);
  v10 = objc_msgSend_initWithPhoneNumber_(v8, v9, v7);
  objc_msgSend_setShouldReportMissingIdentity_(v10, v11, 0);

  return v10;
}

void sub_2252621D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_discoverUserIdentitiesProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_discoverUserIdentitiesProgressBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, 0, *(a1 + 40));
  }
}

void sub_225262638(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareParticipantFetchedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

void sub_2252629C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225262A04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleFetchedInfo_withIdentity_error_(WeakRetained, v10, v9, v8, v7);
}

void sub_225262A90(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_finishWithError_(WeakRetained, v4, v3);
}

void sub_225263028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_225263058(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_error(v2, v6, v7);
    objc_msgSend_finishWithError_(WeakRetained, v9, v8);
  }

  else
  {
    v8 = objc_msgSend_userPrivacySettings(v2, v6, v7);
    objc_msgSend__handleRetrievedPrivacySettings_(WeakRetained, v10, v8);
  }
}

void sub_225263288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_2252632B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);
  objc_msgSend_finishWithError_(WeakRetained, v6, v5);
}

void sub_2252635AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_2252635DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);
  objc_msgSend_finishWithError_(WeakRetained, v6, v5);
}

void sub_225263C90(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = 0;
  v5 = objc_msgSend_invocation(*(a1 + 32), a2, a3);
  objc_msgSend_getArgument_atIndex_(v5, v6, &v11, a2);

  if (!v11)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, *(a1 + 56), *(a1 + 32), @"CKDLongLivedOperationPersistedCallback.m", 47, @"Unexpectedly nil reply block for [%@ %@]", *(a1 + 40), *(a1 + 48));
  }
}

void sub_225263D30(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = 0;
  v5 = objc_msgSend_invocation(*(a1 + 32), a2, a3);
  objc_msgSend_getArgument_atIndex_(v5, v6, &v19, a2);

  v7 = v19;
  if (v7)
  {
    v8 = CKOperationProgressCallbackClasses();
    v9 = objc_opt_class();
    if (v9)
    {
      Superclass = v9;
      while ((objc_msgSend_containsObject_(v8, v10, Superclass) & 1) == 0)
      {
        Superclass = class_getSuperclass(Superclass);
        if (!Superclass)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
      v14 = *(a1 + 56);
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v18, v14, v15, @"CKDLongLivedOperationPersistedCallback.m", 68, @"Unsuitable object type %@ for [%@ %@]", v17, *(a1 + 40), *(a1 + 48));
    }
  }
}

void sub_22526457C(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  v9 = 0;
  v5 = *(a1 + 32);
  v7 = objc_msgSend_decodeBytesForKey_returnedLength_(v5, v6, v4, &v9);
  objc_msgSend_setArgument_atIndex_(*(a1 + 40), v8, v7, a2);
}

void sub_2252645FC(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  v5 = CKOperationProgressCallbackClasses();
  v7 = objc_msgSend_decodeObjectOfClasses_forKey_(*(a1 + 32), v6, v5, v4);
  v9 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
  }

  objc_msgSend_setArgument_atIndex_(*(a1 + 40), v8, &v9, a2);
}

void sub_2252646C4(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v7, v6, v4);
  v9 = v8;
  objc_msgSend_UTF8String(v9, v10, v11);
  v13 = __NSMakeSpecialForwardingCaptureBlock();
  objc_msgSend_setArgument_atIndex_(*(a1 + 40), v12, &v13, a2);
}

void sub_225264A74(uint64_t a1, const char *a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  v9 = objc_msgSend_invocation(*(a1 + 32), v7, v8);
  objc_msgSend_getArgument_atIndex_(v9, v10, v12 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

  objc_msgSend_encodeBytes_length_forKey_(*(a1 + 40), v11, v12 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
}

void sub_225264B60(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  v12 = 0;
  v7 = objc_msgSend_invocation(*(a1 + 32), v5, v6);
  objc_msgSend_getArgument_atIndex_(v7, v8, &v12, a2);

  v11 = v12;
  if (!v11)
  {
    v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10);
  }

  objc_msgSend_encodeObject_forKey_(*(a1 + 40), v9, v11, v4);
}

void sub_225264C14(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  aBlock = 0;
  v7 = objc_msgSend_invocation(*(a1 + 32), v5, v6);
  objc_msgSend_getArgument_atIndex_(v7, v8, &aBlock, a2);

  v9 = _Block_signature(aBlock);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v9);
  objc_msgSend_encodeObject_forKey_(*(a1 + 40), v12, v11, v4);
}

id sub_2252666B8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_operationID(v3, v6, v7);

  v10 = objc_msgSend_stringWithFormat_(v2, v9, @"<%@ %@>", v5, v8);

  return v10;
}

void sub_225266F88(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_childOperations(*(a1 + 32), a2, a3);
  objc_sync_enter(v4);
  v7 = objc_msgSend_childOperations(*(a1 + 32), v5, v6);
  objc_msgSend_removeObject_(v7, v8, *(a1 + 40));

  objc_sync_exit(v4);
  v11 = objc_msgSend_finishedChildOperationIDs(*(a1 + 32), v9, v10);
  objc_sync_enter(v11);
  v14 = objc_msgSend_finishedChildOperationIDs(*(a1 + 32), v12, v13);
  v17 = objc_msgSend_operationID(*(a1 + 40), v15, v16);
  objc_msgSend_addObject_(v14, v18, v17);

  objc_sync_exit(v11);
  objc_msgSend_combineMetricsWithOperation_(*(a1 + 32), v19, *(a1 + 40));
  v22 = objc_msgSend_childOperationsGroup(*(a1 + 32), v20, v21);
  dispatch_group_leave(v22);
}

void sub_2252671E4()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);
  v2 = dispatch_queue_create("com.apple.cloudkit.operationcallback.userinteractive", v1);
  v3 = qword_280D54EE0;
  qword_280D54EE0 = v2;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("com.apple.cloudkit.operationcallback.userinitiated", v5);
  v7 = qword_280D54EE8;
  qword_280D54EE8 = v6;

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.cloudkit.operationcallback.default", v8);
  v10 = qword_280D54EF0;
  qword_280D54EF0 = v9;

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);
  v13 = dispatch_queue_create("com.apple.cloudkit.operationcallback.utility", v12);
  v14 = qword_280D54EF8;
  qword_280D54EF8 = v13;

  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_BACKGROUND, 0);
  v16 = dispatch_queue_create("com.apple.cloudkit.operationcallback.background", v15);
  v17 = qword_280D54F00;
  qword_280D54F00 = v16;
}

void sub_225267394(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (objc_msgSend_qualityOfService(*(a1 + 32), v6, v7) <= 32)
  {
    objc_msgSend_allowsCellularAccess(v5, v8, v9, a3, 0);
    objc_msgSend_isUplink(v5, v10, v11);
    v12 = net_qos_guideline();
    v13 = v12;
    if (!v12)
    {
      v14 = 0;
      goto LABEL_11;
    }

    if (v12 == 1)
    {
      v14 = 5;
      goto LABEL_11;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v24 = v13;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Got unexpected result %d back from net_qos_guideline, going with default NST", buf, 8u);
    }
  }

  v14 = 0;
LABEL_11:
  v16 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v8, v5);
  v19 = objc_msgSend_unsignedIntegerValue(v16, v17, v18);

  if (v14 != v19)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v21 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v20, v14);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 48), v22, v21, v5);
}

uint64_t sub_22526755C(uint64_t a1, const char *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  isCancelled = objc_msgSend_isCancelled(*(a1 + 32), a2, a3);
  if (isCancelled)
  {
    isFinished = objc_msgSend_isFinished(*(a1 + 32), v4, v5);
    v8 = *MEMORY[0x277CBC878];
    if (!isFinished)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v8);
      }

      v17 = *MEMORY[0x277CBC850];
      if (os_log_type_enabled(*MEMORY[0x277CBC850], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v17;
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = *(a1 + 32);
        v26 = objc_msgSend_ckShortDescription(v23, v24, v25);
        *buf = 138543874;
        v36 = v22;
        v37 = 2048;
        v38 = v23;
        v39 = 2114;
        v40 = v26;
        _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p; %{public}@> was cancelled before it started", buf, 0x20u);
      }

      objc_msgSend_transitionToExecuting(*(a1 + 32), v18, v19);
      v27 = MEMORY[0x277CBC560];
      v28 = *MEMORY[0x277CBC120];
      v31 = objc_msgSend_operationID(*(a1 + 32), v29, v30);
      v10 = objc_msgSend_errorWithDomain_code_format_(v27, v32, v28, 1, @"Operation %@ was cancelled before it started", v31);

      objc_msgSend_finishWithError_(*(a1 + 32), v33, v10);
      goto LABEL_12;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v9 = *MEMORY[0x277CBC850];
    if (os_log_type_enabled(*MEMORY[0x277CBC850], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = *(a1 + 32);
      v16 = objc_msgSend_ckShortDescription(v13, v14, v15);
      *buf = 138543874;
      v36 = v12;
      v37 = 2048;
      v38 = v13;
      v39 = 2114;
      v40 = v16;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p; %{public}@> is already cancelled and finished but it tried to start again", buf, 0x20u);

LABEL_12:
    }
  }

  return isCancelled;
}

void sub_2252677D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_shouldCheckAppVersion(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 32);
      v27 = v6;
      v30 = objc_msgSend_operationID(v26, v28, v29);
      v31 = 138543362;
      v32 = v30;
      _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Operation %{public}@ requires checking app version.  Doing so", &v31, 0xCu);
    }

    objc_msgSend__checkAppVersion(*(a1 + 32), v7, v8);
  }

  else
  {
    objc_msgSend__determineNetworkServiceType(*(a1 + 32), v4, v5);
  }

  objc_msgSend_hash(*(a1 + 32), v9, v10);
  kdebug_trace();
  v13 = objc_msgSend_signpost(*(a1 + 32), v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_signpost(*(a1 + 32), v14, v15);
    v19 = objc_msgSend_log(v16, v17, v18);

    v22 = objc_msgSend_signpost(*(a1 + 32), v20, v21);
    v25 = objc_msgSend_identifier(v22, v23, v24);

    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      LOWORD(v31) = 0;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v19, OS_SIGNPOST_EVENT, v25, "CKDOperation", "Start ended", &v31, 2u);
    }
  }
}

void sub_2252679CC(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CBC878];
  if (!v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 32);
      v13 = v9;
      v16 = objc_msgSend_operationID(v12, v14, v15);
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v5;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Operation %{public}@ was told to take action %@", buf, 0x16u);

      if (v5)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_10:
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    dispatch_group_leave(*(a1 + 40));
    goto LABEL_14;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v8 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_10;
  }

  *buf = 138412290;
  v20 = v6;
  _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "Asked client what to do for a daemon operation, it responded with an error %@", buf, 0xCu);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_225267BE8;
  v17[3] = &unk_278545A00;
  v10 = *(a1 + 32);
  v18 = *(a1 + 40);
  objc_msgSend_takeActionOnOperation_proceedBlock_(v5, v11, v10, v17);

LABEL_14:
}

void sub_22526867C(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v2 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 32);
      v5 = v2;
      v8 = objc_msgSend_operationID(v4, v6, v7);
      v9 = 134218242;
      v10 = v3;
      v11 = 2114;
      v12 = v8;
      _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Finished waiting for all (%lu) child operations to finish for operation %{public}@", &v9, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2252687A0(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v2 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v7 = objc_msgSend_operationID(v3, v5, v6);
      v8 = 138543362;
      v9 = v7;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "All state transition locks have been released. Finishing operation %{public}@", &v8, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2252688B8(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "All client callbacks finished for operation %{public}@", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_225269364(uint64_t a1, void *a2)
{
  v28 = a2;
  v5 = objc_msgSend_metricExecuteStartDate(*(a1 + 32), v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7);
    v11 = objc_msgSend_metricExecuteStartDate(*(a1 + 32), v9, v10);
    objc_msgSend_timeIntervalSinceDate_(v8, v12, v11);
    v14 = v13;

    v17 = objc_msgSend_startDate(v28, v15, v16);
    started = objc_msgSend_newRangeWithOperationState_startDate_duration_(v28, v18, 1, v17, v14);

    objc_msgSend_addRange_(v28, v20, started);
  }

  v21 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7);
  v24 = objc_msgSend_startDate(v28, v22, v23);
  objc_msgSend_timeIntervalSinceDate_(v21, v25, v24);
  objc_msgSend_setDuration_(v28, v26, v27);
}

void sub_22526A15C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = *MEMORY[0x277CBC878];
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v11 = v10;
      v14 = objc_msgSend_operationID(WeakRetained, v12, v13);
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v7;
      v15 = "Error fetching container scoped user identifier for operation %{public}@: %@";
LABEL_13:
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, v15, &v20, 0x16u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v11 = v16;
      v14 = objc_msgSend_operationID(WeakRetained, v18, v19);
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v6;
      v15 = "Fetched container scoped user identifier for operation %{public}@: %@";
      goto LABEL_13;
    }
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, v7);
  }
}

void sub_22526A6E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_callbackQueue(WeakRetained, v3, v4);
  v6 = *(a1 + 32);
  ck_call_or_dispatch_async_if_not_key();
}

id sub_22526A7A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
  return objc_opt_self();
}

void sub_22526AAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22526AB14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_22526AFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_22526AFD8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  dispatch_group_leave(*(a1 + 32));
}

void sub_22526B5A0(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_requestCount(v6, v2, v3);
  objc_msgSend_setRequestCount_(v6, v5, v4 + 1);
}

void sub_22526BBF4(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10[0] = *(a1 + 32);
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v10, 1);
  MMCSOperationMetricCombineMetrics();

  if (*(a1 + 40))
  {
    v8 = objc_msgSend_requestOperationCountsByOperationType(*(a1 + 48), v6, v7);
    objc_msgSend_addRequestOperationCountsByOperationType_(v3, v9, v8);
  }
}

uint64_t sub_22526BEE4()
{
  qword_280D54F08 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22526FB40(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v109 = objc_msgSend_startDate(v3, v4, v5);
  objc_msgSend_duration(v3, v6, v7);
  v9 = v8;
  objc_msgSend_queueing(v3, v10, v11);
  v13 = v12;
  objc_msgSend_executing(v3, v14, v15);
  v17 = v16;
  v108 = objc_msgSend_bytesUploaded(v3, v18, v19);
  v107 = objc_msgSend_bytesDownloaded(v3, v20, v21);
  v106 = objc_msgSend_networkServiceType(v3, v22, v23);
  v105 = objc_msgSend_connections(v3, v24, v25);
  v104 = objc_msgSend_connectionsCreated(v3, v26, v27);
  v103 = objc_msgSend_bytesFulfilledByPeers(v3, v28, v29);
  v102 = objc_msgSend_bytesFulfilledLocally(v3, v30, v31);
  v101 = objc_msgSend_bytesResumed(v3, v32, v33);
  v100 = objc_msgSend_totalBytesByChunkProfile(v3, v34, v35);
  v99 = objc_msgSend_chunkCountByChunkProfile(v3, v36, v37);
  v98 = objc_msgSend_fileCountByChunkProfile(v3, v38, v39);
  v97 = objc_msgSend_walrusEnabled(v3, v40, v41);
  v96 = objc_msgSend_zoneishKeysRolled(v3, v42, v43);
  v95 = objc_msgSend_perRecordKeysRolled(v3, v44, v45);
  v94 = objc_msgSend_zoneKeysRolled(v3, v46, v47);
  v93 = objc_msgSend_shareKeysRolled(v3, v48, v49);
  v92 = objc_msgSend_keyRollsSkippedBySizeCheck(v3, v50, v51);
  v91 = objc_msgSend_identitiesRolledOnRecordSave(v3, v52, v53);
  v90 = objc_msgSend_identitiesRolledOnZoneSave(v3, v54, v55);
  v89 = objc_msgSend_failedIdentityRollAttempts(v3, v56, v57);
  v60 = objc_msgSend_zoneKeysRemoved(v3, v58, v59);
  v63 = objc_msgSend_zoneishKeysRemoved(v3, v61, v62);
  v66 = objc_msgSend_recordKeysRemoved(v3, v64, v65);
  v69 = objc_msgSend_keysNotRemoved(v3, v67, v68);
  v72 = objc_msgSend_adopterCapabilityCheckValidationFailures(v3, v70, v71);
  v75 = objc_msgSend_adopterCapabilityCheckValidationFailureTypes(v3, v73, v74);
  v78 = objc_msgSend_adopterCapabilityCheckResult(v3, v76, v77);
  v81 = objc_msgSend_requiredFeatureSetValidationFailures(v3, v79, v80);
  v84 = objc_msgSend_requiredFeatureSetValidationFailureTypes(v3, v82, v83);

  v88 = v97;
  v86 = objc_msgSend_initWithStartDate_duration_queueing_executing_bytesUploaded_bytesDownloaded_networkServiceType_connections_connectionsCreated_bytesFulfilledByPeers_bytesFulfilledLocally_bytesResumed_totalBytesByChunkProfile_chunkCountByChunkProfile_fileCountByChunkProfile_walrusEnabled_zoneishKeysRolled_perRecordKeysRolled_zoneKeysRolled_shareKeysRolled_keyRollsSkippedBySizeCheck_identitiesRolledOnRecordSave_identitiesRolledOnZoneSave_failedIdentityRollAttempts_zoneKeysRemoved_zoneishKeysRemoved_recordKeysRemoved_keysNotRemoved_adopterCapabilityCheckValidationFailures_adopterCapabilityCheckValidationFailureTypes_adopterCapabilityCheckResult_requiredFeatureSetValidationFailures_requiredFeatureSetValidationFailureTypes_(a1, v85, v109, v108, v107, v106, v105, v104, v9, v13, v17, v103, v102, v101, v100, v99, v98, v88, v96, v95, v94, v93, v92, v91, v90, v89, v60, v63, v66, v69, v72, v75, v78, v81, v84);

  return v86;
}

uint64_t sub_2252712A4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_operationCount(v5, v6, v7);
  if (v8 == objc_msgSend_operationCount(v4, v9, v10))
  {
    v13 = 0;
  }

  else
  {
    v14 = objc_msgSend_operationCount(v5, v11, v12);
    if (v14 < objc_msgSend_operationCount(v4, v15, v16))
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

void sub_225271518(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t sub_2252719EC()
{
  qword_280D54FA8 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

void sub_225272280(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_deviceContext(v2, v4, v5);
  v13 = objc_msgSend_logicalDeviceScopedClientProxyForDeviceContext_(v3, v7, v6);

  if (objc_msgSend_hasBeenThrottled(v13, v8, v9))
  {
    objc_msgSend_resetThrottles(v13, v10, v11);
    objc_msgSend_setHasBeenThrottled_(v13, v12, 0);
  }
}

void sub_2252741F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225274298;
  v4[3] = &unk_27854B6A0;
  v4[4] = WeakRetained;
  v5 = *(a1 + 32);
  objc_msgSend__lockedGetSQLCacheWithCompletionHandler_(WeakRetained, v3, v4);
}

void sub_225274298(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_callbackQueue(*(a1 + 32), v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225274380;
  block[3] = &unk_2785457E0;
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

uint64_t sub_225274380(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_2252743A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_callbackQueue(*(a1 + 32), v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225274488;
  block[3] = &unk_2785457E0;
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

uint64_t sub_225274488(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_2252745FC(uint64_t a1, const char *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    goto LABEL_45;
  }

  if ((*(a1 + 80) & 4) == 0)
  {
    goto LABEL_14;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 40);
      *buf = 138543362;
      v45 = v36;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Client requested fetch of parent PCS data for item %{public}@, but the returned item type doesn't support chain PCS data.", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v5 = objc_msgSend_chainPCSData(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_pcs(v5, v6, v7);

  if (v8)
  {
LABEL_14:
    v10 = 1;
    goto LABEL_15;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v38 = *(a1 + 40);
    *buf = 138543362;
    v45 = v38;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "PCS data for %{public}@ was found in the cache, but it doesn't have chain PCS data and the client requested that. Fetching from the server.", buf, 0xCu);
  }

  v10 = 0;
LABEL_15:
  if ((*(a1 + 80) & 8) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if (!objc_msgSend_zoneishPCS(*(a1 + 32), v12, v13))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v14 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          v39 = *(a1 + 40);
          *buf = 138543362;
          v45 = v39;
          _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "PCS data for %{public}@ was found in the cache, but it doesn't have zoneish PCS data and the client requested that. Fetching from the server.", buf, 0xCu);
        }

        v10 = 0;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v15 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v37 = *(a1 + 40);
        *buf = 138543362;
        v45 = v37;
        _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Client requested fetch of zoneish PCS data for item %{public}@, but the returned item type doesn't support zoneish PCS data. Returning item data anyway since it isn't a zone PCS.", buf, 0xCu);
      }
    }
  }

  if ((*(a1 + 80) & 0x10) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!objc_msgSend_signingPCS(*(a1 + 32), v16, v17))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v18 = *MEMORY[0x277CBC858];
        if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_45;
        }

        v19 = *(a1 + 40);
        *buf = 138543362;
        v45 = v19;
        v20 = "Record PCS data for %{public}@ was found in the cache, but it doesn't have per-participant PCS data and the client requested that. Fetching from the server.";
        goto LABEL_47;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = objc_msgSend_sharePCSData(*(a1 + 32), a2, v21);

        if (!v22)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v18 = *MEMORY[0x277CBC858];
          if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_45;
          }

          v40 = *(a1 + 40);
          *buf = 138543362;
          v45 = v40;
          v20 = "Zone PCS data for %{public}@ was found in the cache, but it doesn't have share PCS data and the client requested that. Fetching from the server.";
LABEL_47:
          _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, v20, buf, 0xCu);
          goto LABEL_45;
        }
      }
    }
  }

  if (!v10)
  {
LABEL_45:
    objc_msgSend__lockedCreatePCSCacheFetchOfItem_forOperation_options_fetchCreator_withCompletionHandler_(*(a1 + 48), a2, *(a1 + 40), *(a1 + 56), *(a1 + 80), *(a1 + 72), *(a1 + 64));
    return;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v23 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v29 = v23;
    v32 = objc_msgSend_etag(v27, v30, v31);
    v35 = objc_msgSend_pcsKeyID(*(a1 + 32), v33, v34);
    *buf = 138543874;
    v45 = v28;
    v46 = 2114;
    v47 = v32;
    v48 = 2112;
    v49 = v35;
    _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Returning in-memory cached PCS data. item=%{public}@, protectionInfoTag=%{public}@, pcsKeyID=%@", buf, 0x20u);
  }

  v26 = objc_msgSend_callbackQueue(*(a1 + 48), v24, v25);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_225274BDC;
  v41[3] = &unk_2785456C8;
  v43 = *(a1 + 64);
  v42 = *(a1 + 32);
  dispatch_async(v26, v41);
}

void sub_2252756D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225275710(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v11 = objc_msgSend_pcsData(*(*(*(a1 + 40) + 8) + 40), a2, a3);
  v7 = objc_msgSend_copy(v11, v5, v6);
  v10 = objc_msgSend_error(*(*(*(a1 + 40) + 8) + 40), v8, v9);
  (*(v4 + 16))(v4, v7, v10);
}

void sub_2252757AC(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, *(*(*(a1 + 56) + 8) + 40));
  v7 = objc_msgSend_fetchGroup(*(*(*(a1 + 56) + 8) + 40), v5, v6);
  v10 = objc_msgSend_fetchQueue(*(a1 + 32), v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22527595C;
  block[3] = &unk_27854B718;
  objc_copyWeak(&v15, &from);
  v13 = *(a1 + 40);
  objc_copyWeak(v16, &location);
  v16[1] = *(a1 + 64);
  v14 = *(a1 + 48);
  dispatch_group_notify(v7, v10, block);

  objc_msgSend__lockedAddOutstandingFetch_forItemIDString_databaseScope_(*(a1 + 32), v11, *(*(*(a1 + 56) + 8) + 40), *(a1 + 40), *(a1 + 64));
  objc_destroyWeak(v16);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_225275928(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22527595C(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_fetchError(WeakRetained, v3, v4);

  v6 = *MEMORY[0x277CBC878];
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v7 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      v11 = objc_msgSend_operationID(WeakRetained, v9, v10);
      v12 = *(a1 + 32);
      v15 = objc_msgSend_fetchError(WeakRetained, v13, v14);
      *buf = 138543874;
      v35 = v11;
      v36 = 2114;
      v37 = v12;
      v38 = 2112;
      v39 = v15;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Fetch operation %{public}@ for item %{public}@ finished with error: %@", buf, 0x20u);
LABEL_13:
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v16 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v8 = v16;
      v11 = objc_msgSend_operationID(WeakRetained, v23, v24);
      v25 = *(a1 + 32);
      v15 = objc_msgSend_pcsData(WeakRetained, v26, v27);
      v30 = objc_msgSend_pcsKeyID(v15, v28, v29);
      *buf = 138543874;
      v35 = v11;
      v36 = 2114;
      v37 = v25;
      v38 = 2112;
      v39 = v30;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Fetch operation %{public}@ for item %{public}@ finished with PCS data %@", buf, 0x20u);

      goto LABEL_13;
    }
  }

  v17 = objc_loadWeakRetained((a1 + 56));
  v19 = v17;
  if (v17)
  {
    objc_msgSend__lockedRemoveOutstandingFetch_forItemIDString_databaseScope_(v17, v18, WeakRetained, *(a1 + 32), *(a1 + 64));
    v22 = objc_msgSend_callbackQueue(v19, v20, v21);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_225275C2C;
    v31[3] = &unk_2785456C8;
    v33 = *(a1 + 40);
    v32 = WeakRetained;
    dispatch_async(v22, v31);
  }
}

void sub_225275C2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v8 = objc_msgSend_pcsData(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_error(*(a1 + 32), v5, v6);
  (*(v4 + 16))(v4, v8, v7);
}

void sub_225275E2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_225275E48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  objc_msgSend__lockedHandleMemoryFetchOfItem_pcsData_forOperation_options_fetchCreator_withCompletionHandler_(WeakRetained, v4, *(a1 + 32), v3, *(a1 + 40), *(a1 + 72), *(a1 + 48), *(a1 + 56));
}

void sub_225276024(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = v2;
    v20 = objc_msgSend_operationID(v15, v18, v19);
    v22 = sub_2250A4DF4(*(a1 + 64), v21);
    *buf = 138412802;
    v29 = v16;
    v30 = 2114;
    v31 = v20;
    v32 = 2114;
    v33 = v22;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Fetching PCS for record %@ for operation %{public}@ with options %{public}@", buf, 0x20u);
  }

  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225276234;
  aBlock[3] = &unk_27854B790;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v25 = v6;
  v27 = v7;
  v23 = *(a1 + 40);
  v8 = v23.i64[0];
  v26 = vextq_s8(v23, v23, 8uLL);
  v9 = _Block_copy(aBlock);
  v10 = *(a1 + 48);
  v13 = objc_msgSend_recordMemoryCache(v10, v11, v12);
  objc_msgSend__lockedFetchPCSForItem_memoryCache_forOperation_options_fetchCreator_withCompletionHandler_(v10, v14, v5, v13, *(a1 + 40), *(a1 + 64), v9, *(a1 + 56));
}

void sub_225276234(uint64_t *a1, void *a2)
{
  v3 = a2;
  v10 = objc_opt_new();
  objc_msgSend_setItemID_(v10, v4, a1[4]);
  objc_msgSend_setCache_(v10, v5, a1[5]);
  objc_msgSend_setOptions_(v10, v6, a1[7]);
  v7 = a1[6];
  v8 = objc_opt_class();
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v7, v9, v8, v10, v3);
}

void sub_225276450(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = v2;
    v20 = objc_msgSend_operationID(v15, v18, v19);
    v22 = sub_2250A4DF4(*(a1 + 64), v21);
    *buf = 138412802;
    v29 = v16;
    v30 = 2114;
    v31 = v20;
    v32 = 2114;
    v33 = v22;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Fetching PCS for zone %@ for operation %{public}@ with options %{public}@", buf, 0x20u);
  }

  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225276660;
  aBlock[3] = &unk_27854B790;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v25 = v6;
  v27 = v7;
  v23 = *(a1 + 40);
  v8 = v23.i64[0];
  v26 = vextq_s8(v23, v23, 8uLL);
  v9 = _Block_copy(aBlock);
  v10 = *(a1 + 48);
  v13 = objc_msgSend_zoneMemoryCache(v10, v11, v12);
  objc_msgSend__lockedFetchPCSForItem_memoryCache_forOperation_options_fetchCreator_withCompletionHandler_(v10, v14, v5, v13, *(a1 + 40), *(a1 + 64), v9, *(a1 + 56));
}

void sub_225276660(uint64_t *a1, void *a2)
{
  v3 = a2;
  v10 = objc_opt_new();
  objc_msgSend_setItemID_(v10, v4, a1[4]);
  objc_msgSend_setCache_(v10, v5, a1[5]);
  objc_msgSend_setOptions_(v10, v6, a1[7]);
  v7 = a1[6];
  v8 = objc_opt_class();
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v7, v9, v8, v10, v3);
}

void sub_22527687C(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = v2;
    v20 = objc_msgSend_operationID(v15, v18, v19);
    v22 = sub_2250A4DF4(*(a1 + 64), v21);
    *buf = 138412802;
    v29 = v16;
    v30 = 2114;
    v31 = v20;
    v32 = 2114;
    v33 = v22;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Fetching PCS for share %@ for operation %{public}@ with options %{public}@", buf, 0x20u);
  }

  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225276A8C;
  aBlock[3] = &unk_27854B790;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v25 = v6;
  v27 = v7;
  v23 = *(a1 + 40);
  v8 = v23.i64[0];
  v26 = vextq_s8(v23, v23, 8uLL);
  v9 = _Block_copy(aBlock);
  v10 = *(a1 + 48);
  v13 = objc_msgSend_shareMemoryCache(v10, v11, v12);
  objc_msgSend__lockedFetchPCSForItem_memoryCache_forOperation_options_fetchCreator_withCompletionHandler_(v10, v14, v5, v13, *(a1 + 40), *(a1 + 64), v9, *(a1 + 56));
}

void sub_225276A8C(uint64_t *a1, void *a2)
{
  v3 = a2;
  v10 = objc_opt_new();
  objc_msgSend_setItemID_(v10, v4, a1[4]);
  objc_msgSend_setCache_(v10, v5, a1[5]);
  objc_msgSend_setOptions_(v10, v6, a1[7]);
  v7 = a1[6];
  v8 = objc_opt_class();
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v7, v9, v8, v10, v3);
}

void sub_225276CC4(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v6 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  if (!*(a1 + 40))
  {
    objc_msgSend__lockedInvalidateAllOutstandingPCSFetchesForItemIDString_databaseScope_(*(a1 + 48), v5, v6, *(a1 + 64));
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 40);
    *buf = 138412546;
    *&buf[4] = v23;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Setting record PCS data %@ for %@ on our in-memory cache", buf, 0x16u);
  }

  dispatch_group_enter(v2);
  v10 = objc_msgSend_recordMemoryCache(*(a1 + 48), v8, v9);
  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_22527703C;
  v33[3] = &unk_2785470C0;
  v13 = v2;
  v34 = v13;
  objc_msgSend_setPCSData_forItemID_databaseScope_withCompletionHandler_(v10, v14, v11, v6, v12, v33);

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = sub_225074110;
  v37 = sub_225073614;
  v38 = 0;
  dispatch_group_enter(v13);
  v15 = *(a1 + 48);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_225277044;
  v27[3] = &unk_27854B7E0;
  v31 = buf;
  v16 = v13;
  v28 = v16;
  v29 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = *(a1 + 64);
  v30 = v17;
  v32 = v18;
  objc_msgSend_getSQLCache_(v15, v19, v27);
  if (*(a1 + 56))
  {
    v22 = objc_msgSend_callbackQueue(*(a1 + 48), v20, v21);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_225277190;
    v24[3] = &unk_27854B6F0;
    v25 = *(a1 + 56);
    v26 = buf;
    dispatch_group_notify(v16, v22, v24);
  }

  _Block_object_dispose(buf, 8);
}

void sub_22527701C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225277044(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_225277130;
    v11[3] = &unk_278548040;
    v9 = *(a1 + 64);
    v13 = *(a1 + 56);
    v12 = *(a1 + 32);
    objc_msgSend_setRecordPCSData_forRecordWithID_databaseScope_withCompletionHandler_(a2, v10, v7, v8, v9, v11);
  }
}

void sub_225277130(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_22527733C(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v6 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  if (!*(a1 + 40))
  {
    objc_msgSend__lockedInvalidateAllOutstandingPCSFetchesForItemIDString_databaseScope_(*(a1 + 48), v5, v6, *(a1 + 64));
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 40);
    v24 = v7;
    v25 = CKDatabaseScopeString();
    *buf = 138412802;
    *&buf[4] = v23;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v38 = v25;
    _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Setting zone PCS data %@ for %{public}@ on our in-memory cache in scope %@", buf, 0x20u);
  }

  dispatch_group_enter(v2);
  v10 = objc_msgSend_zoneMemoryCache(*(a1 + 48), v8, v9);
  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2252776E4;
  v35[3] = &unk_2785470C0;
  v13 = v2;
  v36 = v13;
  objc_msgSend_setPCSData_forItemID_databaseScope_withCompletionHandler_(v10, v14, v11, v6, v12, v35);

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = sub_225074110;
  v39 = sub_225073614;
  v40 = 0;
  dispatch_group_enter(v13);
  v15 = *(a1 + 48);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2252776EC;
  v29[3] = &unk_27854B7E0;
  v33 = buf;
  v16 = v13;
  v30 = v16;
  v31 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = *(a1 + 64);
  v32 = v17;
  v34 = v18;
  objc_msgSend_getSQLCache_(v15, v19, v29);
  if (*(a1 + 56))
  {
    v22 = objc_msgSend_callbackQueue(*(a1 + 48), v20, v21);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_225277838;
    v26[3] = &unk_27854B6F0;
    v27 = *(a1 + 56);
    v28 = buf;
    dispatch_group_notify(v16, v22, v26);
  }

  _Block_object_dispose(buf, 8);
}

void sub_2252776C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252776EC(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2252777D8;
    v11[3] = &unk_278548040;
    v9 = *(a1 + 64);
    v13 = *(a1 + 56);
    v12 = *(a1 + 32);
    objc_msgSend_setZonePCSData_forZoneWithID_databaseScope_withCompletionHandler_(a2, v10, v7, v8, v9, v11);
  }
}

void sub_2252777D8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_2252779E4(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v6 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  if (!*(a1 + 40))
  {
    objc_msgSend__lockedInvalidateAllOutstandingPCSFetchesForItemIDString_databaseScope_(*(a1 + 48), v5, v6, *(a1 + 64));
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 40);
    *buf = 138412546;
    *&buf[4] = v23;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Setting share PCS data %@ for %{public}@ on our in-memory cache", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = sub_225074110;
  v38 = sub_225073614;
  v39 = 0;
  dispatch_group_enter(v2);
  v10 = objc_msgSend_shareMemoryCache(*(a1 + 48), v8, v9);
  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_225277D50;
  v33[3] = &unk_278548040;
  v35 = buf;
  v13 = v2;
  v34 = v13;
  objc_msgSend_setPCSData_forItemID_databaseScope_withCompletionHandler_(v10, v14, v11, v6, v12, v33);

  dispatch_group_enter(v13);
  v15 = *(a1 + 48);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_225277DB0;
  v27[3] = &unk_27854B7E0;
  v31 = buf;
  v16 = v13;
  v28 = v16;
  v29 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = *(a1 + 64);
  v30 = v17;
  v32 = v18;
  objc_msgSend_getSQLCache_(v15, v19, v27);
  if (*(a1 + 56))
  {
    v22 = objc_msgSend_callbackQueue(*(a1 + 48), v20, v21);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225277EFC;
    block[3] = &unk_27854B6F0;
    v25 = *(a1 + 56);
    v26 = buf;
    dispatch_group_notify(v16, v22, block);
  }

  _Block_object_dispose(buf, 8);
}

void sub_225277D50(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_225277DB0(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_225277E9C;
    v11[3] = &unk_278548040;
    v9 = *(a1 + 64);
    v13 = *(a1 + 56);
    v12 = *(a1 + 32);
    objc_msgSend_setSharePCSData_forShareWithID_databaseScope_withCompletionHandler_(a2, v10, v7, v8, v9, v11);
  }
}

void sub_225277E9C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_22527840C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneMemoryCache(*(a1 + 32), a2, a3);
  objc_msgSend_clearCache(v4, v5, v6);

  v9 = objc_msgSend_recordMemoryCache(*(a1 + 32), v7, v8);
  objc_msgSend_clearCache(v9, v10, v11);

  v14 = objc_msgSend_shareMemoryCache(*(a1 + 32), v12, v13);
  objc_msgSend_clearCache(v14, v15, v16);

  v17 = dispatch_semaphore_create(0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_225278514;
  v21[3] = &unk_27854B808;
  v18 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = v17;
  v19 = v17;
  objc_msgSend_getSQLCache_(v18, v20, v21);
  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_225278514(uint64_t a1, void *a2)
{
  objc_msgSend_removePCSDataForItemsInZoneWithID_withCompletionHandler_(a2, a2, *(a1 + 32), 0);
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_22527860C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneMemoryCache(*(a1 + 32), a2, a3);
  objc_msgSend_clearCache(v4, v5, v6);

  v9 = objc_msgSend_recordMemoryCache(*(a1 + 32), v7, v8);
  objc_msgSend_clearCache(v9, v10, v11);

  v14 = objc_msgSend_shareMemoryCache(*(a1 + 32), v12, v13);
  objc_msgSend_clearCache(v14, v15, v16);

  v17 = dispatch_semaphore_create(0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_225278714;
  v21[3] = &unk_27854B808;
  v18 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = v17;
  v19 = v17;
  objc_msgSend_getSQLCache_(v18, v20, v21);
  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_225278714(uint64_t a1, void *a2)
{
  objc_msgSend_removePCSDataForItemsInShareWithID_withCompletionHandler_(a2, a2, *(a1 + 32), 0);
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_2252788E4(id *a1, const char *a2, uint64_t a3)
{
  v88 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_zoneMemoryCache(a1[4], a2, a3);
  hasStatusToReport = objc_msgSend_hasStatusToReport(v4, v5, v6);

  if (hasStatusToReport)
  {
    objc_msgSend_addObject_(a1[5], v8, @"\tIn-memory zone cache:");
    v10 = a1[5];
    v13 = objc_msgSend_zoneMemoryCache(a1[4], v11, v12);
    v16 = objc_msgSend_CKStatusReportArray(v13, v14, v15);
    objc_msgSend_addObject_(v10, v17, v16);
  }

  v18 = objc_msgSend_recordMemoryCache(a1[4], v8, v9);
  v21 = objc_msgSend_hasStatusToReport(v18, v19, v20);

  if (v21)
  {
    objc_msgSend_addObject_(a1[5], v22, @"\tIn-memory record cache:");
    v24 = a1[5];
    v27 = objc_msgSend_recordMemoryCache(a1[4], v25, v26);
    v30 = objc_msgSend_CKStatusReportArray(v27, v28, v29);
    objc_msgSend_addObject_(v24, v31, v30);
  }

  v32 = objc_msgSend_shareMemoryCache(a1[4], v22, v23);
  v35 = objc_msgSend_hasStatusToReport(v32, v33, v34);

  if (v35)
  {
    objc_msgSend_addObject_(a1[5], v36, @"\tIn-memory share cache:");
    v38 = a1[5];
    v41 = objc_msgSend_shareMemoryCache(a1[4], v39, v40);
    v44 = objc_msgSend_CKStatusReportArray(v41, v42, v43);
    objc_msgSend_addObject_(v38, v45, v44);
  }

  if (objc_msgSend_hasStatusToReport(a1[6], v36, v37))
  {
    objc_msgSend_addObject_(a1[5], v46, @"\tSQL cache:");
    v48 = a1[5];
    v51 = objc_msgSend_CKStatusReportArray(a1[6], v49, v50);
    objc_msgSend_addObject_(v48, v52, v51);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v53 = objc_msgSend_outstandingFetches(a1[4], v46, v47);
  v56 = objc_msgSend_allValues(v53, v54, v55);

  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v83, v87, 16);
  if (!v58)
  {
    goto LABEL_18;
  }

  v61 = v58;
  v62 = 0;
  v63 = *v84;
  do
  {
    for (i = 0; i != v61; ++i)
    {
      if (*v84 != v63)
      {
        objc_enumerationMutation(v56);
      }

      v62 += objc_msgSend_count(*(*(&v83 + 1) + 8 * i), v59, v60);
    }

    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v59, &v83, v87, 16);
  }

  while (v61);

  if (v62)
  {
    v67 = MEMORY[0x277CCACA8];
    v68 = a1[5];
    v69 = objc_msgSend_outstandingFetches(a1[4], v65, v66);
    v72 = objc_msgSend_count(v69, v70, v71);
    v74 = objc_msgSend_stringWithFormat_(v67, v73, @"\t%lu outstanding fetch requests for %lu records", v62, v72);
    objc_msgSend_addObject_(v68, v75, v74);

    v76 = MEMORY[0x277CCACA8];
    v77 = a1[5];
    v56 = objc_msgSend_outstandingFetches(a1[4], v78, v79);
    v81 = objc_msgSend_stringWithFormat_(v76, v80, @"\t\t%@", v56);
    objc_msgSend_addObject_(v77, v82, v81);

LABEL_18:
  }
}

void sub_225278DA0(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Clearing all PCS caches", buf, 2u);
  }

  v5 = objc_msgSend_zoneMemoryCache(*(a1 + 32), v3, v4);
  objc_msgSend_clearCache(v5, v6, v7);

  v10 = objc_msgSend_recordMemoryCache(*(a1 + 32), v8, v9);
  objc_msgSend_clearCache(v10, v11, v12);

  v15 = objc_msgSend_shareMemoryCache(*(a1 + 32), v13, v14);
  objc_msgSend_clearCache(v15, v16, v17);

  v18 = dispatch_semaphore_create(0);
  v19 = *(a1 + 32);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_225278F08;
  v22[3] = &unk_27854B830;
  v23 = v18;
  v20 = v18;
  objc_msgSend_getSQLCache_(v19, v21, v22);
  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_225278F08(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_clearCache(a2, a2, a3);
  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

void sub_225279CC8(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 32);
      v19 = v9;
      v22 = objc_msgSend_recordID(v18, v20, v21);
      *buf = 138412546;
      v25 = v22;
      v26 = 2112;
      v27 = v8;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Error fetching PCS data from the database for %@: %@", buf, 0x16u);
    }

    v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
    dispatch_group_leave(v12);
  }

  else
  {
    v13 = objc_msgSend_recordID(*(a1 + 32), v6, v7);
    v16 = objc_msgSend_databaseScope(*(a1 + 32), v14, v15);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_225279E98;
    v23[3] = &unk_27854B8B8;
    v23[4] = *(a1 + 32);
    objc_msgSend_fetchPCSDataForRecordWithID_databaseScope_withCompletionHandler_(v5, v17, v13, v16, v23);
  }
}

void sub_225279E98(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (v5)
  {
    if ((objc_msgSend_fetchOptions(*(a1 + 32), v7, v8) & 4) == 0 || (objc_msgSend_chainPCSData(v5, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v37 = *(a1 + 32);
        v38 = v13;
        v41 = objc_msgSend_recordID(v37, v39, v40);
        *v42 = 138412290;
        *&v42[4] = v41;
        _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "PCS data was fetched from the database for record %@", v42, 0xCu);
      }

      objc_msgSend_setWasFetchedFromCache_(*(a1 + 32), v14, 1);
      objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v15, v5, 0);
      goto LABEL_24;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v32 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v33 = *(a1 + 32);
      v21 = v32;
      v24 = objc_msgSend_recordID(v33, v34, v35);
      *v42 = 138412290;
      *&v42[4] = v24;
      v25 = "PCS data was found in the database, but it didn't have the requested chain PCS. Fetching PCS data from the server for record %@.";
      goto LABEL_22;
    }
  }

  else
  {
    v18 = *MEMORY[0x277CBC878];
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v18);
      }

      v19 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 32);
        v21 = v19;
        v24 = objc_msgSend_recordID(v20, v22, v23);
        *v42 = 138412546;
        *&v42[4] = v24;
        *&v42[12] = 2112;
        *&v42[14] = v9;
        v25 = "Error fetching PCS data from the database for %@: %@";
        v26 = v21;
        v27 = 22;
LABEL_23:
        _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, v25, v42, v27);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v18);
      }

      v28 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v29 = *(a1 + 32);
        v21 = v28;
        v24 = objc_msgSend_recordID(v29, v30, v31);
        *v42 = 138412290;
        *&v42[4] = v24;
        v25 = "No PCS data was found in the database for record %@";
LABEL_22:
        v26 = v21;
        v27 = 12;
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  v36 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v16, v17, *v42, *&v42[8], v43);
  dispatch_group_leave(v36);
}

void sub_22527A2D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = v9;
  if (v7 && !v9)
  {
    v13 = objc_msgSend_recordType(v7, v10, v11);
    objc_msgSend_setServerRecordType_(*(a1 + 32), v14, v13);
  }

  v15 = objc_msgSend_protectionData(v7, v10, v11);
  if (v15)
  {

LABEL_7:
    v21 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v18, v7);
    objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v22, v21, v12);
    goto LABEL_8;
  }

  v19 = objc_msgSend_zoneishKeyID(v7, v16, v17);

  if (v19)
  {
    goto LABEL_7;
  }

  if (v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412290;
      v29 = v12;
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Error fetching PCS data from the server: %@", &v28, 0xCu);
    }
  }

  else if ((objc_msgSend_fetchOptions(*(a1 + 32), v18, v20) & 4) == 0)
  {
    objc_msgSend_setServerRecordHasNoProtectionData_(*(a1 + 32), v27, 1);
  }

  v21 = 0;
  objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v27, 0, v12);
LABEL_8:
  v25 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v23, v24);
  dispatch_group_leave(v25);
}

void sub_22527A72C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22527A8C4;
  v9[3] = &unk_278549BF0;
  objc_copyWeak(&v11, &location);
  v10 = *(a1 + 40);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22527AACC;
  v6[3] = &unk_278548748;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_22527A888(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_22527A8C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = *MEMORY[0x277CBC878];
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v10);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v26 = 138412290;
      v27 = v8;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Got an error trying to save parent chain PCS data: %@", &v26, 0xCu);
    }

    v14 = objc_msgSend_fetchError(WeakRetained, v12, v13);

    if (!v14)
    {
      objc_msgSend_setFetchError_(WeakRetained, v15, v8);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v10);
    }

    v16 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a1 + 32);
      v26 = 138412290;
      v27 = v25;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Successfully saved chain PCS data on record %@", &v26, 0xCu);
    }

    v19 = objc_msgSend_protectionData(v7, v17, v18);

    if (v19)
    {
      objc_msgSend_setRecordPCSData_(WeakRetained, v20, 0);
      objc_msgSend_setDidFetchData_(WeakRetained, v21, 0);
      v23 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v22, v7);
      objc_msgSend__handlePCSDataFetched_withError_(WeakRetained, v24, v23, 0);
    }
  }
}

void sub_22527AACC(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v8 = objc_msgSend_error(v3, v4, v5);
    if (v8)
    {
      v9 = objc_msgSend_fetchError(WeakRetained, v6, v7);

      if (!v9)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v10 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v13 = 138412290;
          v14 = v8;
          _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Failed to save parent chain PCS data: %@", &v13, 0xCu);
        }

        objc_msgSend_setFetchError_(WeakRetained, v11, v8);
      }
    }

    v12 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
    dispatch_group_leave(v12);
  }
}

void sub_22527AF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22527AF44(uint64_t a1, void *a2, void *a3)
{
  v47 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!objc_msgSend_pcs(v47, v7, v8))
  {
    v32 = objc_msgSend_domain(v5, v9, v10);
    v33 = *MEMORY[0x277CBC120];
    if (objc_msgSend_isEqualToString_(v32, v34, *MEMORY[0x277CBC120]))
    {
      v37 = objc_msgSend_code(v5, v35, v36);

      if (v37 == 5007)
      {
        v40 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v38, v33, 5010, v5, @"PCS fetch requested local cache only.");
        objc_msgSend_setFetchError_(WeakRetained, v41, v40);
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    v42 = MEMORY[0x277CBC560];
    v40 = objc_msgSend_recordID(WeakRetained, v38, v39);
    v44 = objc_msgSend_errorWithDomain_code_error_format_(v42, v43, v33, 2003, v5, @"Couldn't fetch zone PCS for record %@ from the server: %@", v40, v5);
    objc_msgSend_setFetchError_(WeakRetained, v45, v44);

    goto LABEL_11;
  }

  v11 = objc_msgSend_recordPCSData(WeakRetained, v9, v10);
  objc_msgSend_setZonePCSData_(v11, v12, v47);

  v15 = objc_msgSend_recordPCSData(WeakRetained, v13, v14);
  v18 = objc_msgSend_zoneishPublicKeyID(v15, v16, v17);
  if (!v18)
  {

    goto LABEL_13;
  }

  v21 = v18;
  v22 = objc_msgSend_zoneishPCS(v47, v19, v20);

  if (v22)
  {
    goto LABEL_13;
  }

  v25 = MEMORY[0x277CBC560];
  v26 = *MEMORY[0x277CBC120];
  v27 = objc_msgSend_recordID(WeakRetained, v23, v24);
  v29 = objc_msgSend_errorWithDomain_code_error_format_(v25, v28, v26, 2003, v5, @"Couldn't fetch record PCS from zone for record %@ from the server: %@", v27, v5);
  objc_msgSend_setFetchError_(WeakRetained, v30, v29);

LABEL_12:
  objc_msgSend_setShouldRetry_(WeakRetained, v31, 0);
LABEL_13:
  v46 = objc_msgSend_stateTransitionGroup(WeakRetained, v23, v24);
  dispatch_group_leave(v46);
}

void sub_22527BA40(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  objc_destroyWeak((v1 - 136));
  _Unwind_Resume(a1);
}

void sub_22527BAC8(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  if (objc_msgSend_pcs(v21, v6, v7))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v13 = objc_msgSend_recordPCSData(WeakRetained, v11, v12);
    objc_msgSend_setParentPCSData_(v13, v14, v21);

LABEL_6:
    goto LABEL_7;
  }

  WeakRetained = objc_msgSend_domain(v5, v8, v9);
  if (!objc_msgSend_isEqualToString_(WeakRetained, v15, *MEMORY[0x277CBC120]))
  {
    goto LABEL_6;
  }

  if (objc_msgSend_code(v5, v16, v17) == 5007)
  {
  }

  else
  {
    v20 = objc_msgSend_code(v5, v18, v19);

    if (v20 != 5010)
    {
      goto LABEL_7;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_7:
  dispatch_group_leave(*(a1 + 32));
}

void sub_22527BBD4(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  if (objc_msgSend_pcs(v21, v6, v7))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v13 = objc_msgSend_recordPCSData(WeakRetained, v11, v12);
    objc_msgSend_setSharePCSData_(v13, v14, v21);

LABEL_6:
    goto LABEL_7;
  }

  WeakRetained = objc_msgSend_domain(v5, v8, v9);
  if (!objc_msgSend_isEqualToString_(WeakRetained, v15, *MEMORY[0x277CBC120]))
  {
    goto LABEL_6;
  }

  if (objc_msgSend_code(v5, v16, v17) == 5007)
  {
  }

  else
  {
    v20 = objc_msgSend_code(v5, v18, v19);

    if (v20 != 5010)
    {
      goto LABEL_7;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_7:
  dispatch_group_leave(*(a1 + 32));
}

void sub_22527BCE0(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = objc_msgSend_shareID(v5, v8, v9);

  if (v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v43 = *(a1 + 32);
      v44 = v13;
      v47 = objc_msgSend_recordID(v43, v45, v46);
      v48 = *(a1 + 40);
      *buf = 138412546;
      v50 = v47;
      v51 = 2112;
      v52 = v48;
      _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Record %@ is in shared zone %@. Using zone PCS data to decrypt it.", buf, 0x16u);
    }
  }

  if (!objc_msgSend_pcs(v5, v11, v12))
  {
    v20 = objc_msgSend_domain(v6, v14, v15);
    if (objc_msgSend_isEqualToString_(v20, v37, *MEMORY[0x277CBC120]))
    {
      if (objc_msgSend_code(v6, v38, v39) == 5007)
      {
      }

      else
      {
        v42 = objc_msgSend_code(v6, v40, v41);

        if (v42 != 5010)
        {
          goto LABEL_16;
        }
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v16 = objc_msgSend_recordPCSData(WeakRetained, v14, v15);
  objc_msgSend_setZonePCSData_(v16, v17, v5);

  v20 = objc_msgSend_recordPCSData(WeakRetained, v18, v19);
  v23 = objc_msgSend_zoneishPublicKeyID(v20, v21, v22);
  if (!v23)
  {
LABEL_13:

    goto LABEL_16;
  }

  v26 = v23;
  v27 = objc_msgSend_zoneishPCS(v5, v24, v25);

  if (!v27)
  {
    v30 = MEMORY[0x277CBC560];
    v31 = *MEMORY[0x277CBC120];
    v32 = objc_msgSend_recordID(WeakRetained, v28, v29);
    v34 = objc_msgSend_errorWithDomain_code_error_format_(v30, v33, v31, 2003, v6, @"Couldn't fetch zoneish PCS from zone for record %@ from the server: %@", v32, v6);
    objc_msgSend_setFetchError_(WeakRetained, v35, v34);

    objc_msgSend_setShouldRetry_(WeakRetained, v36, 0);
  }

LABEL_16:
  dispatch_group_leave(*(a1 + 48));
}

void sub_22527BF94(uint64_t a1)
{
  v88 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v70 = v3;
    v73 = objc_msgSend_recordID(WeakRetained, v71, v72);
    *buf = 138412290;
    v87 = v73;
    _os_log_debug_impl(&dword_22506F000, v70, OS_LOG_TYPE_DEBUG, "All PCS fetches for shared record %@ have finished.", buf, 0xCu);
  }

  v6 = objc_msgSend_recordPCSData(WeakRetained, v4, v5);
  v11 = objc_msgSend_parentPCSData(v6, v7, v8);
  if (v11)
  {
    goto LABEL_8;
  }

  v11 = objc_msgSend_recordPCSData(WeakRetained, v9, v10);
  v14 = objc_msgSend_sharePCSData(v11, v12, v13);
  if (v14)
  {

LABEL_8:
    goto LABEL_9;
  }

  v60 = objc_msgSend_recordPCSData(WeakRetained, v15, v16);
  v63 = objc_msgSend_zonePCSData(v60, v61, v62);

  if (!v63)
  {
    v64 = MEMORY[0x277CBC560];
    v65 = *MEMORY[0x277CBC120];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v66 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 5010, @"PCS fetch requested local cache only");
      objc_msgSend_setFetchError_(WeakRetained, v67, v66);
    }

    else
    {
      v66 = objc_msgSend_recordPCSData(WeakRetained, v17, v18);
      v76 = objc_msgSend_parentID(v66, v74, v75);
      v77 = *(a1 + 32);
      v78 = *(a1 + 40);
      v81 = objc_msgSend_recordID(WeakRetained, v79, v80);
      v83 = objc_msgSend_errorWithDomain_code_format_(v64, v82, v65, 2003, @"Couldn't fetch parent PCS (%@) or share PCS (%@) or any shared zone PCS (%@) for record %@ from the server", v76, v77, v78, v81);
      objc_msgSend_setFetchError_(WeakRetained, v84, v83);
    }

    objc_msgSend_setShouldRetry_(WeakRetained, v85, 0);
    goto LABEL_16;
  }

LABEL_9:
  if ((objc_msgSend_fetchOptions(WeakRetained, v17, v18) & 0x10) != 0)
  {
    v21 = objc_msgSend_recordPCSData(WeakRetained, v19, v20);
    v24 = objc_msgSend_sharePCSData(v21, v22, v23);

    v27 = objc_msgSend_recordPCSData(WeakRetained, v25, v26);
    v30 = v27;
    if (v24)
    {
      v31 = objc_msgSend_sharePCSData(v27, v28, v29);
      v34 = objc_msgSend_myParticipantPCS(v31, v32, v33);
    }

    else
    {
      v40 = objc_msgSend_zonePCSData(v27, v28, v29);
      v43 = objc_msgSend_shareID(v40, v41, v42);

      v46 = objc_msgSend_recordPCSData(WeakRetained, v44, v45);
      v30 = v46;
      if (v43)
      {
        v31 = objc_msgSend_zonePCSData(v46, v47, v48);
        v51 = objc_msgSend_sharePCSData(v31, v49, v50);
        v54 = objc_msgSend_myParticipantPCS(v51, v52, v53);
        v57 = objc_msgSend_recordPCSData(WeakRetained, v55, v56);
        objc_msgSend_setSigningPCS_(v57, v58, v54);

        goto LABEL_15;
      }

      v31 = objc_msgSend_parentPCSData(v46, v47, v48);
      v34 = objc_msgSend_signingPCS(v31, v68, v69);
    }

    v37 = v34;
    v38 = objc_msgSend_recordPCSData(WeakRetained, v35, v36);
    objc_msgSend_setSigningPCS_(v38, v39, v37);

LABEL_15:
  }

LABEL_16:
  v59 = objc_msgSend_stateTransitionGroup(WeakRetained, v19, v20);
  dispatch_group_leave(v59);
}

void sub_22527DA2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 144));
  _Unwind_Resume(a1);
}

void sub_22527DAAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527DB04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527DB5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527DBB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527DE00(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22527DE28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527DE80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527E3D0(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 32);
      v19 = v9;
      v22 = objc_msgSend_shareID(v18, v20, v21);
      *buf = 138412546;
      v25 = v22;
      v26 = 2112;
      v27 = v8;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Error fetching PCS data from the database for %@: %@", buf, 0x16u);
    }

    v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
    dispatch_group_leave(v12);
  }

  else
  {
    v13 = objc_msgSend_shareID(*(a1 + 32), v6, v7);
    v16 = objc_msgSend_databaseScope(*(a1 + 32), v14, v15);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_22527E5A0;
    v23[3] = &unk_27854B980;
    v23[4] = *(a1 + 32);
    objc_msgSend_fetchPCSDataForShareWithID_databaseScope_withCompletionHandler_(v5, v17, v13, v16, v23);
  }
}

void sub_22527E5A0(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v25 = *MEMORY[0x277CBC878];
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v25);
      }

      v26 = *MEMORY[0x277CBC858];
      if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v29 = *(a1 + 32);
      v30 = v26;
      v33 = objc_msgSend_shareID(v29, v31, v32);
      *buf = 138412546;
      v49 = v33;
      v50 = 2112;
      v51 = v7;
      v34 = "Error fetching PCS data from the database for %@: %@";
      v35 = v30;
      v36 = 22;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v25);
      }

      v37 = *MEMORY[0x277CBC858];
      if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v44 = *(a1 + 32);
      v30 = v37;
      v33 = objc_msgSend_shareID(v44, v45, v46);
      *buf = 138412290;
      v49 = v33;
      v34 = "No PCS data was found in the database for share %@";
      v35 = v30;
      v36 = 12;
    }

    _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, v34, buf, v36);

LABEL_15:
    v38 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v27, v28);
    dispatch_group_leave(v38);

    goto LABEL_16;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v39 = *(a1 + 32);
    v40 = v8;
    v43 = objc_msgSend_shareID(v39, v41, v42);
    *buf = 138412290;
    v49 = v43;
    _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "PCS data was fetched from the database for share %@", buf, 0xCu);
  }

  v11 = objc_msgSend_container(*(a1 + 32), v9, v10);
  v14 = objc_msgSend_pcsManager(v11, v12, v13);
  v17 = objc_msgSend_shareModificationDate(v5, v15, v16);
  v20 = objc_msgSend_topmostParentOperation(*(a1 + 32), v18, v19);
  v23 = objc_msgSend_operationID(v20, v21, v22);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_22527E8E8;
  v47[3] = &unk_27854B980;
  v47[4] = *(a1 + 32);
  objc_msgSend_decryptPCSDataOnSharePCS_shareModificationDate_requestorOperationID_completionHandler_(v14, v24, v5, v17, v23, v47);

LABEL_16:
}

void sub_22527E8E8(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_pcs(v5, v7, v8);
  if (v6 || !v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 32);
      v17 = v14;
      v20 = objc_msgSend_shareID(v16, v18, v19);
      v21 = 138412546;
      v22 = v20;
      v23 = 2112;
      v24 = v6;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Couldn't decrypt PCS data for share %@ from the database with error %@. Ignoring it and re-fetching from the server", &v21, 0x16u);
    }
  }

  else
  {
    objc_msgSend_setWasFetchedFromCache_(*(a1 + 32), v10, 1);
    objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v11, v5, 0);
  }

  v15 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v12, v13);
  dispatch_group_leave(v15);
}

void sub_22527EB5C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v10 = objc_msgSend_invitedProtectionData(v6, v8, v9);

  v13 = *(a1 + 32);
  if (v7 || !v10)
  {
    objc_msgSend__handlePCSDataFetched_withError_(v13, v11, 0, v7);
    v27 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v25, v26);
    dispatch_group_leave(v27);
  }

  else
  {
    v14 = objc_msgSend_container(v13, v11, v12);
    v17 = objc_msgSend_pcsManager(v14, v15, v16);
    v20 = objc_msgSend_topmostParentOperation(*(a1 + 32), v18, v19);
    v23 = objc_msgSend_operationID(v20, v21, v22);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22527ECA4;
    v28[3] = &unk_27854B980;
    v28[4] = *(a1 + 32);
    objc_msgSend_pcsDataFromFetchedShare_requestorOperationID_completionHandler_(v17, v24, v6, v23, v28);
  }
}

void sub_22527ECA4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), a2, a2, a3);
  v6 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_leave(v6);
}

void sub_22527EF00(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22527EF28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527EF80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527F328(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (v5)
  {
    if ((objc_msgSend_fetchOptions(*(a1 + 32), v7, v8) & 8) == 0 || (objc_msgSend_zoneishPCSData(v5, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v41 = *(a1 + 32);
        v42 = v13;
        v45 = objc_msgSend_zoneID(v41, v43, v44);
        *v46 = 138412290;
        *&v46[4] = v45;
        _os_log_debug_impl(&dword_22506F000, v42, OS_LOG_TYPE_DEBUG, "PCS data was fetched from the database for zone %@", v46, 0xCu);
      }

      objc_msgSend_setWasFetchedFromCache_(*(a1 + 32), v14, 1);
      objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v15, v5, 0);
      goto LABEL_24;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v37 = *(a1 + 32);
      v21 = v36;
      v24 = objc_msgSend_zoneID(v37, v38, v39);
      *v46 = 138412290;
      *&v46[4] = v24;
      v25 = "Zone PCS data was fetched from the database but it didn't have the requested zoneish PCS. Fetching PCS data from the server for zone %@";
      v26 = v21;
      v27 = 12;
      goto LABEL_22;
    }
  }

  else
  {
    v18 = *MEMORY[0x277CBC878];
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v18);
      }

      v19 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 32);
        v21 = v19;
        v24 = objc_msgSend_zoneID(v20, v22, v23);
        *v46 = 138412546;
        *&v46[4] = v24;
        *&v46[12] = 2112;
        *&v46[14] = v9;
        v25 = "Error fetching PCS data from the database for %@: %@";
        v26 = v21;
        v27 = 22;
LABEL_22:
        _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, v25, v46, v27);

        goto LABEL_23;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v18);
      }

      v28 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v29 = *(a1 + 32);
        v21 = v28;
        v32 = objc_msgSend_zoneID(v29, v30, v31);
        objc_msgSend_databaseScope(*(a1 + 32), v33, v34);
        v35 = CKDatabaseScopeString();
        *v46 = 138412546;
        *&v46[4] = v32;
        *&v46[12] = 2112;
        *&v46[14] = v35;
        _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "No PCS data was found in the database for zone %@ with scope %@", v46, 0x16u);

LABEL_23:
      }
    }
  }

LABEL_24:
  v40 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v16, v17, *v46, *&v46[8], v47);
  dispatch_group_leave(v40);
}

void sub_22527F950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22527F980(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = v8;
    v20 = objc_msgSend_zoneID(WeakRetained, v18, v19);
    v21 = v20;
    v22 = @" with error: ";
    *v24 = 138413058;
    v23 = &stru_28385ED00;
    *&v24[4] = v16;
    *&v24[12] = 2112;
    if (!v6)
    {
      v22 = &stru_28385ED00;
    }

    *&v24[14] = v20;
    if (v6)
    {
      v23 = v6;
    }

    *&v24[22] = 2114;
    v25 = v22;
    v26 = 2112;
    v27 = v23;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Fetched PCS for share %@ in order to decrypt zone %@%{public}@%@", v24, 0x2Au);
  }

  if (objc_msgSend_pcs(v5, v9, v10, *v24, *&v24[8]))
  {
    v13 = objc_msgSend_zonePCSData(WeakRetained, v11, v12);
    objc_msgSend_setSharePCSData_(v13, v14, v5);
  }

  else if (v6)
  {
    objc_msgSend_setDependentPCSFetchError_(WeakRetained, v11, v6);
  }

  v15 = objc_msgSend_stateTransitionGroup(WeakRetained, v11, v12);
  dispatch_group_leave(v15);
}

void sub_22527FD38(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_initWeak(&location, v3);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22527FFD8;
  v16[3] = &unk_27854BA20;
  v18 = *(a1 + 48);
  v17 = *(a1 + 32);
  v19 = v20;
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2252801F0;
  v10[3] = &unk_27854BA48;
  v13 = *(a1 + 48);
  objc_copyWeak(&v15, &location);
  v14 = v20;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  objc_msgSend_setCompletionBlock_(v3, v5, v10);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_zoneID(*(a1 + 32), v7, v8);
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Updating zone %@ with new PCS object", buf, 0xCu);
  }

  objc_destroyWeak(&v15);
  _Block_object_dispose(v20, 8);
  objc_destroyWeak(&location);
}

void sub_22527FF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  objc_destroyWeak((v25 + 64));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v26 - 104));
  _Unwind_Resume(a1);
}

void sub_22527FFD8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    v10 = objc_msgSend_zoneID(*(a1 + 32), v7, v8);
    isEqual = objc_msgSend_isEqual_(v6, v11, v10);

    v13 = *MEMORY[0x277CBC878];
    if (isEqual)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v14 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 32);
        v17 = v14;
        v20 = objc_msgSend_zoneID(v16, v18, v19);
        v26 = 138412290;
        v27 = v20;
        _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Successfully saved PCS on zone: %@", &v26, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v15 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        v22 = v15;
        v25 = objc_msgSend_zoneID(v21, v23, v24);
        v26 = 138412546;
        v27 = v6;
        v28 = 2112;
        v29 = v25;
        _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Saved zone ID isn't what we expected: %@ (expected %@)", &v26, 0x16u);
      }
    }
  }
}

uint64_t sub_2252801F0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v7 = objc_msgSend_error(WeakRetained, v5, v6);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && !*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = MEMORY[0x277CBC560];
    v11 = *MEMORY[0x277CBC120];
    v12 = objc_msgSend_zoneID(*(a1 + 32), a2, a3);
    v14 = objc_msgSend_errorWithDomain_code_format_(v10, v13, v11, 5004, @"Couldn't save zone with updated PCS data to the server for zone %@", v12);
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  result = *(a1 + 40);
  if (result)
  {
    v18 = *(result + 16);

    return v18();
  }

  return result;
}

void sub_225280934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225280960(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = objc_msgSend_pcs(v5, v8, v9);
  v12 = v40[3];
  if (v12)
  {
    CFRetain(v12);
  }

  if (!v6 && v40[3])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v46 = 0x2020000000;
    v47 = 0;
    if ((objc_msgSend_fetchOptions(WeakRetained, v10, v11) & 8) == 0)
    {
      v18 = *(*(&buf + 1) + 24);
LABEL_15:
      v19 = *(a1 + 32);
      v20 = v40[3];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_225280DB4;
      v33[3] = &unk_27854BA98;
      v34 = v19;
      p_buf = &buf;
      v37 = &v39;
      v35 = *(a1 + 40);
      objc_msgSend__saveZoneToServer_withPCS_zoneishPCS_previousEtag_completion_(WeakRetained, v21, v34, v20, v18, 0, v33);

      v6 = 0;
LABEL_27:
      _Block_object_dispose(&buf, 8);
      goto LABEL_28;
    }

    v22 = objc_msgSend_container(WeakRetained, v16, v17);
    v25 = objc_msgSend_pcsManager(v22, v23, v24);
    v26 = v40[3];
    v38 = 0;
    v28 = objc_msgSend_createRecordPCSWithZonePCS_sharePCS_createLite_error_(v25, v27, v26, 0, 0, &v38);
    v6 = v38;
    *(*(&buf + 1) + 24) = v28;

    if (!v6)
    {
      v18 = *(*(&buf + 1) + 24);
      if (v18)
      {
        goto LABEL_15;
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *v43 = 138412290;
      v44 = v6;
      _os_log_error_impl(&dword_22506F000, v29, OS_LOG_TYPE_ERROR, "Couldn't create new zoneish PCS: %@", v43, 0xCu);
      if (v6)
      {
        goto LABEL_22;
      }
    }

    else if (v6)
    {
LABEL_22:
      v31 = *(*(&buf + 1) + 24);
      if (v31)
      {
        CFRelease(v31);
        *(*(&buf + 1) + 24) = 0;
      }

      v32 = v40[3];
      if (v32)
      {
        CFRelease(v32);
        v40[3] = 0;
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_27;
    }

    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, *MEMORY[0x277CBC120], 5005, @"Couldn't create a new zoneish PCS");
    goto LABEL_22;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Couldn't create new zone PCS: %@", &buf, 0xCu);
    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 5005, @"Couldn't create a new zone PCS");
  }

LABEL_9:
  v15 = v40[3];
  if (v15)
  {
    CFRelease(v15);
    v40[3] = 0;
  }

  (*(*(a1 + 40) + 16))();
LABEL_28:
  _Block_object_dispose(&v39, 8);
}

void sub_225280D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225280DB4(void *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v6 = a1[4];
      v7 = v5;
      v10 = objc_msgSend_zoneID(v6, v8, v9);
      v34 = 138543618;
      v35 = v10;
      v36 = 2114;
      v37 = v4;
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Failed to save new PCS object to zone %{public}@. Error: %{public}@", &v34, 0x16u);
    }

    v11 = *(*(a1[6] + 8) + 24);
    if (v11)
    {
      CFRelease(v11);
      *(*(a1[6] + 8) + 24) = 0;
    }

    v12 = *(*(a1[7] + 8) + 24);
    if (v12)
    {
      CFRelease(v12);
      *(*(a1[7] + 8) + 24) = 0;
    }

    (*(a1[5] + 16))();
    goto LABEL_25;
  }

  v13 = objc_msgSend_dataWithZone_(CKDZonePCSData, v3, a1[4]);
  objc_msgSend_setPcs_(v13, v14, *(*(a1[7] + 8) + 24));
  v16 = *(*(a1[6] + 8) + 24);
  if (v16)
  {
    objc_msgSend_setZoneishPCS_(v13, v15, v16);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC858];
    if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v18 = *(*(a1[6] + 8) + 24);
    v19 = v17;
    v22 = objc_msgSend_zoneishPublicKeyID(v13, v20, v21);
    v25 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v22, v23, v24);
    v34 = 138412546;
    v35 = v18;
    v36 = 2114;
    v37 = v25;
    _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Saved zoneishPCS is %@. Key ID is %{public}@", &v34, 0x16u);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

LABEL_18:
  v26 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v27 = a1[4];
    v28 = v26;
    v31 = objc_msgSend_zoneID(v27, v29, v30);
    v34 = 138543362;
    v35 = v31;
    _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "Save of new PCS object to zone %{public}@ was successful", &v34, 0xCu);
  }

  v32 = *(*(a1[6] + 8) + 24);
  if (v32)
  {
    CFRelease(v32);
    *(*(a1[6] + 8) + 24) = 0;
  }

  v33 = *(*(a1[7] + 8) + 24);
  if (v33)
  {
    CFRelease(v33);
    *(*(a1[7] + 8) + 24) = 0;
  }

  (*(a1[5] + 16))();

LABEL_25:
}

void sub_22528123C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_container(*(a1 + 32), v10, v11);
  v15 = objc_msgSend_deviceContext(v12, v13, v14);
  v18 = objc_msgSend_testDeviceReference(v15, v16, v17);
  if (v18)
  {
    v21 = v18;
    v22 = objc_msgSend_zoneID(*(a1 + 32), v19, v20);
    v25 = objc_msgSend_zoneName(v22, v23, v24);
    isEqualToString = objc_msgSend_isEqualToString_(v25, v26, @"NoZonePCSOnServer");

    if (isEqualToString)
    {
      objc_msgSend_setProtectionData_(v7, v28, 0);
    }
  }

  else
  {
  }

  v30 = objc_msgSend_protectionData(v7, v28, v29);

  if (v30)
  {
    if (CKIsPCSError())
    {
      v34 = v9;
    }

    else
    {
      v34 = 0;
    }

    v48 = objc_msgSend_dataWithZone_(CKDZonePCSData, v33, v7);
    objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v49, v48, v34);
  }

  else
  {
    v35 = objc_msgSend_zoneID(v7, v31, v32);
    isDefaultRecordZoneID = objc_msgSend_isDefaultRecordZoneID(v35, v36, v37);

    if (isDefaultRecordZoneID)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v40 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Found a default zone with NULL PCS data. Creating new PCS data and saving it", buf, 2u);
      }

      v43 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v41, v42);
      dispatch_group_enter(v43);

      v44 = *(a1 + 32);
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = sub_22528170C;
      v74[3] = &unk_27854B9D0;
      v74[4] = v44;
      objc_msgSend__saveNewPCSOnZone_completion_(v44, v45, v7, v74);
      v34 = 0;
    }

    else
    {
      if (v9)
      {
        v50 = v9;
      }

      else
      {
        v50 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v39, *MEMORY[0x277CBC120], 5001, @"Couldn't fetch zone PCS for %@ from the server", v8);
      }

      v34 = v50;
      v51 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v52 = MEMORY[0x277CBC858];
      v53 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v68 = *(a1 + 32);
        v69 = v53;
        v72 = objc_msgSend_zoneID(v68, v70, v71);
        *buf = 138412546;
        v76 = v72;
        v77 = 2112;
        v78 = v34;
        _os_log_debug_impl(&dword_22506F000, v69, OS_LOG_TYPE_DEBUG, "Error fetching PCS data for zone %@ from the server: %@", buf, 0x16u);
      }

      if (objc_msgSend_isSystemRecordZoneID(v8, v54, v55) && objc_msgSend_CKIsNotFoundError(v34, v56, v57))
      {
        if (*v51 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v58 = *v52;
        if (os_log_type_enabled(*v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "systemZone was not found. Creating systemZone and saving it", buf, 2u);
        }

        v61 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v59, v60);
        dispatch_group_enter(v61);

        v62 = *(a1 + 32);
        v65 = objc_msgSend_systemRecordZone(MEMORY[0x277CBC5E8], v63, v64);
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = sub_22528176C;
        v73[3] = &unk_27854B9D0;
        v73[4] = *(a1 + 32);
        objc_msgSend__saveNewPCSOnZone_completion_(v62, v66, v65, v73);
      }

      else
      {
        objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v56, 0, v34);
      }
    }

    v48 = 0;
  }

  v67 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v46, v47);
  dispatch_group_leave(v67);
}

void sub_22528170C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), a2, a2, a3);
  v6 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_leave(v6);
}

void sub_22528176C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), a2, a2, a3);
  v6 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_leave(v6);
}

void sub_2252821AC(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

void sub_2252824A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252824CC(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v7 = objc_msgSend_domain(v3, v4, v5);
    if (objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x277CBBF50]))
    {
      v11 = objc_msgSend_code(v3, v9, v10);

      if (v11 == 14)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v22 = v12;
      v25 = objc_msgSend_zoneID(WeakRetained, v23, v24);
      *buf = 138412546;
      v27 = v25;
      v28 = 2112;
      v29 = v3;
      _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Error saving zone/zoneish PCS to the server for zone %@: %@", buf, 0x16u);
    }

    v15 = MEMORY[0x277CBC560];
    v16 = *MEMORY[0x277CBC120];
    v17 = objc_msgSend_zoneID(WeakRetained, v13, v14);
    v19 = objc_msgSend_errorWithDomain_code_format_(v15, v18, v16, 5001, @"Failed to save PCS for zone %@ to the server: %@", v17, v3);
    objc_msgSend_setFetchError_(WeakRetained, v20, v19);
  }

LABEL_11:
  v21 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_leave(v21);
}

void sub_2252826B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_225285800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225285824(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = objc_msgSend_opQueue(WeakRetained, v6, v7);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22528590C;
    v10[3] = &unk_278546550;
    v11 = v8;
    v12 = v4;
    dispatch_async(v9, v10);
  }

  else
  {
    v4[2](v4);
  }
}

uint64_t sub_22528590C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__lockedFetchesAreReady(*(a1 + 32), a2, a3);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_2252864C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_fetchCoalescer(WeakRetained, v1, v2);
  objc_msgSend_coalesce_(v3, v4, 0);
}

void sub_225286964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22528698C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_fetchCoalescer(WeakRetained, v1, v2);
  objc_msgSend_coalesce_(v3, v4, 0);
}

void sub_225286B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_225286B90(uint64_t a1, const char *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = objc_msgSend_queuedFetches(*(a1 + 32), a2, a3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v37, v41, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v38;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v38 != v10)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v37 + 1) + 8 * v11);
      v13 = objc_msgSend_operationID(*(a1 + 40), v7, v8);
      v15 = objc_msgSend_dependentOperationListContainsOperationID_(v12, v14, v13);

      if (v15)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v37, v41, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = objc_msgSend_equivalentRunningFetch(v12, v7, v8);
    v16 = objc_msgSend_runningOperationID(v17, v18, v19);

    if (!v16)
    {
      return;
    }

    v22 = *(*(*(a1 + 48) + 8) + 40);
    while (1)
    {
      v23 = objc_msgSend_operationID(v22, v20, v21);
      isEqualToString = objc_msgSend_isEqualToString_(v16, v24, v23);

      if (isEqualToString)
      {
        break;
      }

      v28 = *(*(*(a1 + 48) + 8) + 40);
      v29 = objc_msgSend_parentOperation(v28, v26, v27);

      if (v28 == v29)
      {
        v35 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v30, v31);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, *(a1 + 64), *(a1 + 32), @"CKDPCSFetchAggregator.m", 231, @"I am my parent?");
      }

      v32 = objc_msgSend_parentOperation(*(*(*(a1 + 48) + 8) + 40), v30, v31);
      v33 = *(*(a1 + 48) + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = v32;

      v22 = *(*(*(a1 + 48) + 8) + 40);
      if (!v22)
      {
        goto LABEL_18;
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
LABEL_9:
    v16 = v4;
  }

LABEL_18:
}

void sub_225286ED0(uint64_t a1, const char *a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(MEMORY[0x277CBC6C0], a2, a3);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_log(v4, v5, v6);
    v11 = objc_msgSend_identifier(v7, v9, v10);
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v8))
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v50 = v13;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PCSFetchAggregator", "Enqueuing fetch of record %@", buf, 0xCu);
      }
    }
  }

  v14 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 32);
    *buf = 138412290;
    v50 = v16;
    _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Enqueuing fetch of record %@", buf, 0xCu);
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = objc_opt_class();
  v21 = objc_msgSend__lockedGetQueuedFetchForOperation_ofClass_(v17, v20, v18, v19);
  v22 = *(a1 + 32);
  v23 = *(a1 + 48);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_225287290;
  v46[3] = &unk_27854BB10;
  v24 = v7;
  v47 = v24;
  v48 = *(a1 + 56);
  objc_msgSend_addRequestForRecordID_forOperation_withCompletionHandler_(v21, v25, v22, v23, v46);
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(*(a1 + 48), v26, v27), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v28, v29, @"DelayPCSRecordFetch"), v30 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend_BOOLValue(v30, v31, v32), v30, v28, v33))
  {
    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v34, OS_LOG_TYPE_INFO, "Posting notification now", buf, 2u);
    }

    v37 = objc_msgSend_defaultCenter(MEMORY[0x277CCA9A0], v35, v36);
    objc_msgSend_postNotificationName_object_(v37, v38, @"com.apple.cloudkit.DelayPCSRecordFetch", 0);

    v39 = dispatch_time(0, 1000000000);
    v42 = objc_msgSend_opQueue(*(a1 + 40), v40, v41);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225287380;
    block[3] = &unk_278545A00;
    block[4] = *(a1 + 40);
    dispatch_after(v39, v42, block);
  }

  else
  {
    v43 = objc_msgSend_fetchCoalescer(*(a1 + 40), v26, v27);
    objc_msgSend_coalesce_(v43, v44, 0);
  }
}

void sub_225287290(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_msgSend_log(v12, v9, v10);
    v16 = objc_msgSend_identifier(*(a1 + 32), v14, v15);
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v13))
      {
        *v18 = 0;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v13, OS_SIGNPOST_INTERVAL_END, v17, "PCSFetchAggregator", "", v18, 2u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_225287380(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_fetchCoalescer(*(a1 + 32), a2, a3);
  objc_msgSend_coalesce_(v4, v3, 0);
}

void sub_2252874C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(MEMORY[0x277CBC6C0], a2, a3);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_log(v4, v5, v6);
    v11 = objc_msgSend_identifier(v7, v9, v10);
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v8))
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v34 = v13;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PCSFetchAggregator", "Enqueuing fetch of share %@", buf, 0xCu);
      }
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    *buf = 138412290;
    v34 = v15;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Enqueuing fetch of share %@", buf, 0xCu);
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = objc_opt_class();
  v20 = objc_msgSend__lockedGetQueuedFetchForOperation_ofClass_(v16, v19, v17, v18);
  v21 = *(a1 + 32);
  v22 = *(a1 + 48);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22528772C;
  v29[3] = &unk_27854BB38;
  v30 = v7;
  v31 = v21;
  v32 = *(a1 + 56);
  v23 = v7;
  objc_msgSend_addRequestForRecordID_forOperation_withCompletionHandler_(v20, v24, v31, v22, v29);
  v27 = objc_msgSend_fetchCoalescer(*(a1 + 40), v25, v26);
  objc_msgSend_coalesce_(v27, v28, 0);
}

void sub_22528772C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_msgSend_log(v12, v9, v10);
    v16 = objc_msgSend_identifier(*(a1 + 32), v14, v15);
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v13, OS_SIGNPOST_INTERVAL_END, v17, "PCSFetchAggregator", "", buf, 2u);
      }
    }
  }

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBC120], 2003, @"Record with ID %@ is not a share", *(a1 + 40));

      v7 = 0;
      v11 = v19;
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_225287980(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(MEMORY[0x277CBC6C0], a2, a3);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_log(v4, v5, v6);
    v11 = objc_msgSend_identifier(v7, v9, v10);
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v8))
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v36 = v13;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PCSFetchAggregator", "Enqueuing fetch of zone %@", buf, 0xCu);
      }
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    *buf = 138412290;
    v36 = v15;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Enqueuing fetch of zone %@", buf, 0xCu);
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = objc_opt_class();
  v20 = objc_msgSend__lockedGetQueuedFetchForOperation_ofClass_(v16, v19, v17, v18);
  v21 = *(a1 + 32);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = sub_225287BCC;
  v32 = &unk_27854BB60;
  v33 = v7;
  v22 = *(a1 + 48);
  v34 = *(a1 + 56);
  v23 = v7;
  objc_msgSend_addRequestForZoneID_forOperation_withCompletionHandler_(v20, v24, v21, v22, &v29);
  v27 = objc_msgSend_fetchCoalescer(*(a1 + 40), v25, v26, v29, v30, v31, v32);
  objc_msgSend_coalesce_(v27, v28, 0);
}

void sub_225287BCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_msgSend_log(v12, v9, v10);
    v16 = objc_msgSend_identifier(*(a1 + 32), v14, v15);
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v13))
      {
        *v18 = 0;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v13, OS_SIGNPOST_INTERVAL_END, v17, "PCSFetchAggregator", "", v18, 2u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_225287D44(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 134217984;
    v35 = v5;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "PCSFetchAggregator %p was cancelled", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = objc_msgSend_queuedFetches(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v28, v33, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_cancelFetchOperation(*(*(&v28 + 1) + 8 * i), v9, v10);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v28, v33, 16);
    }

    while (v11);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = objc_msgSend_runningFetches(*(a1 + 32), v14, v15, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v24, v32, 16);
  if (v18)
  {
    v21 = v18;
    v22 = *v25;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_cancelFetchOperation(*(*(&v24 + 1) + 8 * j), v19, v20);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v24, v32, 16);
    }

    while (v21);
  }
}

id CKBasicStringForIdentitySet(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v5, v6, @"Identity Set: %p\n", a2);
  objc_msgSend_appendFormat_(v5, v7, @"Primary service name: %@\n", v3);
  v8 = PCSIdentitySetCopyCurrentIdentityWithError();
  if (v8)
  {
    v10 = v8;
    objc_msgSend_appendFormat_(v5, v9, @"Current key: %p\n", v8);
    v11 = PCSIdentityGetPublicKey();
    objc_msgSend_appendFormat_(v5, v12, @"\tpublic-key: %@\n", v11);
    KeyID = PCSIdentityGetKeyID();
    objc_msgSend_appendFormat_(v5, v14, @"\tkeyid: %@\n", KeyID);
    if (PCSIdentityIsFullManatee())
    {
      objc_msgSend_appendFormat_(v5, v15, @"\tmanatee: %@\n", @"yes");
    }

    else
    {
      objc_msgSend_appendFormat_(v5, v15, @"\tmanatee: %@\n", @"no");
    }

    v16 = PCSGetPublicIdentitites();
    PublicKey = PCSIdentityGetPublicKey();
    if (CFDictionaryGetValueIfPresent(v16, PublicKey, 0))
    {
      objc_msgSend_appendFormat_(v5, v18, @"\tis public identity\n");
    }

    CFRelease(v10);
  }

  else
  {
    objc_msgSend_appendFormat_(v5, v9, @"No current key for the given service name.");
    v11 = 0;
  }

  v21 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v19, v20);
  isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v21, v22, v23);

  if (isAppleInternalInstall)
  {
    v25 = objc_opt_new();
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v29 = v11;
    v26 = v25;
    PCSIdentitySetEnumeratePublicKeys();
    if (v31[3])
    {
      objc_msgSend_appendFormat_(v5, v27, @"Additional public keys (%lu):\n%@", v31[3], v26);
    }

    _Block_object_dispose(&v30, 8);
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

void sub_2252883E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22528AD70(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], a2, a2);
  if (v3)
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v3);
  }

  return MEMORY[0x2821F96F8]();
}

void sub_22528B214(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "service: %{public}@ <%{public}@>", &v6, 0x16u);
  }
}

void sub_22528B680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_22528B6B0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = objc_msgSend_password(*(a1 + 32), a2, a3);
    if ((objc_msgSend_isEqualToString_(*(a1 + 40), v5, v4) & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v6 = *(a1 + 48);

  return dispatch_semaphore_signal(v6);
}

uint64_t sub_22528B770(uint64_t a1, uint64_t a2)
{
  qword_280D58378 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_22528CB0C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "service: %{public}@ <%{public}@>", &v6, 0x16u);
  }
}

void sub_22528CD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22528CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ExternalForm = PCSIdentitySetCreateExternalForm();
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  return ExternalForm;
}

uint64_t sub_22528CE74(uint64_t a1, uint64_t a2)
{
  qword_280D58388 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22528E69C()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  qword_280D58398 = objc_msgSend_initWithObjects_(v0, v1, @"ForceSecurityErrorOnIdentityValidation", @"MasqueradeAsManateeIdentity", @"RefetchPCSIdentitySet", @"IdentityFetchLimit", @"ForceNoIdentitySetError", 0);

  return MEMORY[0x2821F96F8]();
}

void *sub_22528EBE8(uint64_t a1, void *a2)
{
  result = objc_msgSend_isEqualToString_(a2, a2, *(a1 + 32));
  if ((result & 1) == 0)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    return objc_msgSend_appendFormat_(*(a1 + 40), v5, @"\t%@\n", a2);
  }

  return result;
}

void sub_22528EF70(uint64_t a1, const char *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_syncStatus(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_BOOLValue(v4, v5, v6);

  v10 = objc_msgSend_syncError(*(a1 + 32), v8, v9);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    v15 = v11;
    v18 = objc_msgSend_requestorOperationID(v14, v16, v17);
    v19 = *(a1 + 40);
    v22 = objc_msgSend_serviceName(*(a1 + 32), v20, v21);
    v23 = v22;
    v29 = 138544642;
    v24 = @" NO";
    v30 = v18;
    v31 = 2114;
    v32 = v19;
    v33 = 2114;
    if (v7)
    {
      v24 = @" YES";
    }

    v34 = v22;
    if (v10)
    {
      v25 = @" error: ";
    }

    else
    {
      v25 = &stru_28385ED00;
    }

    v35 = 2114;
    if (v10)
    {
      v26 = v10;
    }

    else
    {
      v26 = &stru_28385ED00;
    }

    v36 = v24;
    v37 = 2114;
    v38 = v25;
    v39 = 2112;
    v40 = v26;
    _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "User key sync completion for operation %{public}@ calling out to waiter operation %{public}@ for service %{public}@ with success:%{public}@%{public}@%@", &v29, 0x3Eu);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    v28 = objc_msgSend_KRSReturnedExistingIdentity(*(a1 + 32), v12, v13);
    (*(v27 + 16))(v27, v7, v10, v28);
  }
}

uint64_t sub_22528F2E0()
{
  qword_280D583A8 = objc_alloc_init(CKDPCSKeySyncManager);

  return MEMORY[0x2821F96F8]();
}

void sub_22528FF70(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8 = objc_msgSend_keySyncQueue(*(a1 + 32), v6, v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22529003C;
  block[3] = &unk_278545AB0;
  v13 = a2;
  v11 = *(a1 + 40);
  v12 = v5;
  v9 = v5;
  dispatch_async(v8, block);
}

void sub_22529003C(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC858];
  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 48))
    {
      v6 = &stru_28385ED00;
    }

    else
    {
      v6 = @"un";
    }

    v7 = *(a1 + 32);
    v8 = v4;
    v11 = objc_msgSend_serviceName(v7, v9, v10);
    v14 = objc_msgSend_requestorOperationID(*(a1 + 32), v12, v13);
    v15 = *(a1 + 40);
    *buf = 138544130;
    v72 = v6;
    v73 = 2114;
    v74 = v11;
    v75 = 2114;
    v76 = v14;
    v77 = 2112;
    v78 = v15;
    _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Finished user key sync %{public}@successfully for service %{public}@ for operation %{public}@. Error: %@", buf, 0x2Au);
  }

  v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(a1 + 48));
  objc_msgSend_setSyncStatus_(*(a1 + 32), v17, v16);

  if (*(a1 + 48) != 1 || *(a1 + 40))
  {
    v21 = objc_msgSend_isManatee(*(a1 + 32), v18, v19) ? 5009 : 5000;
    v22 = *MEMORY[0x277CBC120];
    v23 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], v21, *(a1 + 40), @"Failed user key sync");
    objc_msgSend_setSyncError_(*(a1 + 32), v24, v23);

    if (objc_msgSend_code(*(a1 + 40), v25, v26) == 228)
    {
      if ((objc_msgSend_racedWithGuitarfishRepairCallback(*(a1 + 32), v18, v19) & 1) == 0)
      {
        v29 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v27, v28);
        v32 = objc_msgSend_serviceName(*(a1 + 32), v30, v31);
        v70 = v32;
        v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v33, &v70, 1);
        objc_msgSend_addServicesNeedingDBRReauthentication_(v29, v35, v34);
      }

      v36 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, v22, 10006, @"User key sync failed due to DBR account re-auth needed. Direct user to settings to re-auth their account.");
      objc_msgSend_setSyncError_(*(a1 + 32), v37, v36);
    }
  }

  if (*(a1 + 48) == 1)
  {
    v38 = objc_msgSend_date(MEMORY[0x277CBEAA8], v18, v19);
    objc_msgSend_setCompletionDate_(*(a1 + 32), v39, v38);

    if (*v2 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v40 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v41 = *(a1 + 32);
      v42 = v40;
      v45 = objc_msgSend_completionDate(v41, v43, v44);
      objc_msgSend_timeIntervalSince1970(v45, v46, v47);
      v49 = v48;
      v52 = objc_msgSend_serviceName(*(a1 + 32), v50, v51);
      v55 = objc_msgSend_requestorOperationID(*(a1 + 32), v53, v54);
      *buf = 134218498;
      v72 = v49;
      v73 = 2114;
      v74 = v52;
      v75 = 2114;
      v76 = v55;
      _os_log_impl(&dword_22506F000, v42, OS_LOG_TYPE_INFO, "Setting user key sync completion date %f for service %{public}@ requested by operation %{public}@", buf, 0x20u);
    }

    if (*MEMORY[0x277CBC810] == 1)
    {
      if (*v2 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v56 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "Notifying identity watchers of successful user key sync", buf, 2u);
      }

      v59 = objc_msgSend_syncGroup(*(a1 + 32), v57, v58);
      dispatch_group_enter(v59);

      v62 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v60, v61);
      v65 = MEMORY[0x277D85DD0];
      v66 = 3221225472;
      v67 = sub_225290514;
      v68 = &unk_278545A00;
      v69 = *(a1 + 32);
      objc_msgSend_noteUserKeySyncWithCompletionHandler_(v62, v63, &v65);
    }
  }

  v64 = objc_msgSend_syncGroup(*(a1 + 32), v18, v19, v65, v66, v67, v68);
  dispatch_group_leave(v64);
}

void sub_225290514(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Finished notifying identity watchers of successful user key sync", v6, 2u);
  }

  v5 = objc_msgSend_syncGroup(*(a1 + 32), v3, v4);
  dispatch_group_leave(v5);
}

void sub_2252905CC(id *a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_syncGroup(a1[4], v4, v5);
  dispatch_group_enter(v6);

  v9 = objc_msgSend_keySyncQueue(a1[5], v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252906C0;
  block[3] = &unk_278546990;
  v12 = v3;
  v13 = a1[4];
  v14 = a1[6];
  v10 = v3;
  dispatch_async(v9, block);
}

void sub_2252906C0(id *a1, const char *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v7 = a1[5];
      v8 = v4;
      v11 = objc_msgSend_serviceName(v7, v9, v10);
      v14 = objc_msgSend_requestorOperationID(a1[5], v12, v13);
      if (objc_msgSend_returnedExistingIdentity(a1[4], v15, v16))
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      isManatee = objc_msgSend_isManatee(a1[5], v17, v18);
      *v31 = 138544130;
      if (isManatee)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      *&v31[4] = v11;
      v32 = 2114;
      v33 = v14;
      v34 = 2114;
      v35 = v19;
      v36 = 2114;
      v37 = v21;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "User key sync for service %{public}@ for operation %{public}@ returned existing identity: %{public}@. Service is manatee: %{public}@", v31, 0x2Au);
    }

    v22 = objc_msgSend_returnedExistingIdentity(a1[4], v5, v6, *v31);
    objc_msgSend_setKRSReturnedExistingIdentity_(a1[5], v23, v22);
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v24 = objc_msgSend__pcsTestOverrideForKey_(a1[6], a2, @"ForceKRSReturnExistingIdentityValue");
    v27 = v24;
    if (v24)
    {
      v28 = objc_msgSend_BOOLValue(v24, v25, v26);
      objc_msgSend_setKRSReturnedExistingIdentity_(a1[5], v29, v28);
    }
  }

  v30 = objc_msgSend_syncGroup(a1[5], a2, a3);
  dispatch_group_leave(v30);
}

uint64_t sub_225290BB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v5 = objc_msgSend_keySyncTrackerByServiceNameByAccount(*(a1 + 32), a2, a3);
  objc_sync_enter(v5);
  v7 = objc_msgSend__on_queue_getKeySyncTrackerByServicenameForAccountDSID_(*v4, v6, *(a1 + 40));
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *(a1 + 48));
  v14 = objc_msgSend_completionDate(v9, v10, v11);
  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = objc_msgSend_completionDate(v9, v12, v13);
      LODWORD(v15) = objc_msgSend_compare_(v15, v17, v16) == -1;
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v21 = objc_msgSend_completionDate(v9, v19, v20);
    objc_msgSend_timeIntervalSince1970(v21, v22, v23);
    v25 = v24;
    objc_msgSend_timeIntervalSince1970(*(a1 + 56), v26, v27);
    v29 = @"E";
    v31 = 134218498;
    v32 = v25;
    if (v15)
    {
      v29 = @"Ine";
    }

    v33 = 2048;
    v34 = v28;
    v35 = 2112;
    v36 = v29;
    _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Compared tracker completion date %f to decryptee modification date %f. %@ligible for user key sync", &v31, 0x20u);
  }

  objc_sync_exit(v5);
  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, v15 ^ 1);
  }

  return result;
}

void sub_225290F1C(uint64_t a1, char a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  v8 = v10;
  v9 = v7;
  if (!v10 && (a2 & 1) == 0)
  {
    if (*(a1 + 48))
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], 0, *MEMORY[0x277CBBF50], 5009, @"Failed user key sync for service %@", *(a1 + 32));
    }

    else
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], 0, *MEMORY[0x277CBBF50], 5000, @"Failed user key sync for service %@", *(a1 + 32));
    }
    v8 = ;
  }

  v11 = v8;
  (*(*(a1 + 40) + 16))();
}

void sub_225291768(uint64_t a1, const char *a2, uint64_t a3)
{
  v100[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 104) == 1)
  {
    v4 = objc_msgSend_keySyncTrackerByServiceNameByAccount(*(a1 + 32), a2, a3);
    objc_sync_enter(v4);
    v7 = objc_msgSend_keySyncTrackerByServiceNameByAccount(*(a1 + 32), v5, v6);
    objc_msgSend_removeAllObjects(v7, v8, v9);

    objc_sync_exit(v4);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225291E3C;
  aBlock[3] = &unk_27854BCA0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 96);
  v12 = *(a1 + 48);
  v92 = *(a1 + 105);
  *&v13 = *(a1 + 88);
  *(&v13 + 1) = v11;
  *&v14 = v10;
  *(&v14 + 1) = v12;
  v90 = v14;
  v91 = v13;
  v15 = _Block_copy(aBlock);
  v17 = objc_msgSend_syncTrackerForAccountDSID_requestorOperationID_service_manatee_testOverrideProvider_(*(a1 + 32), v16, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 105), *(a1 + 80));
  v20 = objc_msgSend_state(v17, v18, v19);
  if (v20 <= 1)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v23 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
        {
          v26 = *(a1 + 72);
          v27 = v23;
          v30 = objc_msgSend_requestorOperationID(v17, v28, v29);
          *buf = 138543618;
          v94 = v26;
          v95 = 2112;
          v96 = v30;
          _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "A user key sync for service %{public}@ is already in progress due to operation %@, queueing ourselves behind it", buf, 0x16u);
        }

        v31 = objc_msgSend_keySyncQueue(*(a1 + 32), v24, v25);
        objc_msgSend_waitOnSyncWithQueue_waiterOperationID_handler_(v17, v32, v31, *(a1 + 64), v15);
      }

      goto LABEL_36;
    }

LABEL_31:
    if (*(a1 + 109))
    {
      objc_msgSend_performKeySyncWithSyncTracker_testableSyncConfig_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(*(a1 + 32), v21, v17, 2, *(a1 + 107), *(a1 + 80), *(a1 + 64), v15);
    }

    else if (*(a1 + 110))
    {
      objc_msgSend_performKeySyncWithSyncTracker_testableSyncConfig_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(*(a1 + 32), v21, v17, 3, *(a1 + 107), *(a1 + 80), *(a1 + 64), v15);
    }

    else
    {
      objc_msgSend_performKeySyncWithSyncTracker_testableSyncConfig_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(*(a1 + 32), v21, v17, *(a1 + 111), *(a1 + 107), *(a1 + 80), *(a1 + 64), v15);
    }

    goto LABEL_36;
  }

  if (v20 == 3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v74 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v76 = *(a1 + 72);
      v77 = v74;
      v80 = objc_msgSend_requestorOperationID(v17, v78, v79);
      *buf = 138543618;
      v94 = v76;
      v95 = 2112;
      v96 = v80;
      _os_log_impl(&dword_22506F000, v77, OS_LOG_TYPE_INFO, "No longer throttled for user key sync for service %{public}@, operation %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  if (v20 != 2)
  {
    goto LABEL_36;
  }

  if ((*(a1 + 106) & 1) != 0 || *(a1 + 107) != 1 || *(a1 + 108) != 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v81 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v82 = *(a1 + 72);
      v83 = v81;
      v86 = objc_msgSend_requestorOperationID(v17, v84, v85);
      *buf = 138543618;
      v94 = v82;
      v95 = 2112;
      v96 = v86;
      _os_log_impl(&dword_22506F000, v83, OS_LOG_TYPE_INFO, "Ignoring user key sync throttling for service %{public}@, operation %@", buf, 0x16u);
    }

LABEL_30:
    v87 = objc_msgSend_createSyncTrackerForAccountDSID_requestorOperationID_service_manatee_testOverrideProvider_(*(a1 + 32), v75, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 105), *(a1 + 80));

    v17 = v87;
    goto LABEL_31;
  }

  v33 = objc_msgSend_completionDate(v17, v21, v22);
  objc_msgSend_timeIntervalSinceNow(v33, v34, v35);
  v37 = v36;

  objc_msgSend_timeIntervalSinceNow(*(a1 + 48), v38, v39);
  v40 = fabs(v37);
  *(*(*(a1 + 96) + 8) + 24) = fabs(v41);
  v42 = MEMORY[0x277CBC560];
  v43 = *MEMORY[0x277CBBF68];
  v99 = *MEMORY[0x277CBBF68];
  v46 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v44, v45, 1800.0 - v40);
  v100[0] = v46;
  v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, v100, &v99, 1);
  v49 = *MEMORY[0x277CBC120];
  v88 = objc_msgSend_errorWithDomain_code_userInfo_format_(v42, v50, *MEMORY[0x277CBC120], 5012, v48, @"PCS Sync throttled");

  if (*(a1 + 105))
  {
    v53 = 5008;
  }

  else
  {
    v53 = 2008;
  }

  v54 = MEMORY[0x277CBC560];
  v97[0] = v43;
  v55 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v51, v52, 1800.0 - v40);
  v97[1] = *MEMORY[0x277CCA7E8];
  v98[0] = v55;
  v98[1] = v88;
  v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v56, v98, v97, 2);
  v58 = *(a1 + 72);
  v61 = objc_msgSend_requestorOperationID(v17, v59, v60);
  v63 = objc_msgSend_errorWithDomain_code_userInfo_format_(v54, v62, v49, v53, v57, @"Recently completed user key sync for the %@ service %f seconds ago for operation %@. Throttling...", v58, *&v40, v61);

  objc_msgSend_setKeySyncResult_(*(a1 + 40), v64, 0x283865F20);
  v67 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v65, v66, v40);
  objc_msgSend_setThrottledDurationSec_(*(a1 + 40), v68, v67);

  v71 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v69, v70, *(*(*(a1 + 96) + 8) + 24));
  objc_msgSend_setKeySyncDurationSec_(*(a1 + 40), v72, v71);

  v73 = *(a1 + 88);
  if (v73)
  {
    (*(v73 + 16))(v73, 0, v63, *(a1 + 40));
  }

LABEL_36:
}

uint64_t sub_225291E3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21 = a3;
  if (((v21 == 0) & a2) != 0)
  {
    v8 = &off_27854DFC0;
  }

  else
  {
    v8 = &off_27854DFC8;
  }

  objc_msgSend_setKeySyncResult_(*(a1 + 32), v7, *v8);
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v9, v10);
  *(*(*(a1 + 56) + 8) + 24) = fabs(v11);
  v14 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v12, v13, *(*(*(a1 + 56) + 8) + 24));
  objc_msgSend_setKeySyncDurationSec_(*(a1 + 32), v15, v14);

  if (*(a1 + 64) == 1)
  {
    v17 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v16, a4);
    objc_msgSend_setKRSReturnedExistingIdentity_(*(a1 + 32), v18, v17);
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    (*(v19 + 16))(v19, a2, v21, *(a1 + 32));
  }

  return MEMORY[0x2821F9730]();
}

uint64_t sub_225292434(uint64_t a1, const char *a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  obj = objc_msgSend_keySyncTrackerByServiceNameByAccount(*(a1 + 32), a2, a3);
  objc_sync_enter(obj);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = objc_msgSend_keySyncTrackerByServiceNameByAccount(*v3, v4, v5);
  v9 = objc_msgSend_allValues(v6, v7, v8);

  v31 = v9;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v39, v46, 16);
  if (v33)
  {
    v32 = *v40;
    v13 = MEMORY[0x277CBC880];
    v14 = MEMORY[0x277CBC830];
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(v31);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v16 = objc_msgSend_allValues(v15, v11, v12);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v35, v45, 16);
        if (v18)
        {
          v19 = *v36;
          do
          {
            v20 = 0;
            do
            {
              if (*v36 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v35 + 1) + 8 * v20);
              if (*v13 != -1)
              {
                dispatch_once(v13, *MEMORY[0x277CBC878]);
              }

              v22 = *v14;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                v27 = objc_msgSend_serviceName(v21, v23, v24);
                *buf = 138412290;
                v44 = v27;
                _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Key sync tracker for service: %@ raced with guitarfish repair callback.", buf, 0xCu);
              }

              objc_msgSend_setRacedWithGuitarfishRepairCallback_(v21, v25, 1);
              ++v20;
            }

            while (v18 != v20);
            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v26, &v35, v45, 16);
          }

          while (v18);
        }
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v11, &v39, v46, 16);
    }

    while (v33);
  }

  objc_sync_exit(obj);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

__CFString *sub_225292788(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_27854C4C0[a1 - 1];
  }
}

__CFString *sub_2252927B0(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Current Service";
  }

  else
  {
    return off_27854C4F0[a1 - 1];
  }
}

__CFString *CKStringFromSharePermission(char a1, uint64_t a2)
{
  v3 = objc_opt_new();
  v5 = v3;
  if (a1)
  {
    objc_msgSend_addObject_(v3, v4, @"ReadOnly");
  }

  else
  {
    objc_msgSend_addObject_(v3, v4, @"ReadWrite");
  }

  if ((a1 & 2) != 0)
  {
    objc_msgSend_addObject_(v5, v6, @"OON");
  }

  if ((a1 & 4) != 0)
  {
    objc_msgSend_addObject_(v5, v6, @"Anonymous");
  }

  if (objc_msgSend_count(v5, v6, v7))
  {
    v9 = objc_msgSend_componentsJoinedByString_(v5, v8, @"|");
  }

  else
  {
    v9 = @"none";
  }

  return v9;
}

void sub_225292E54(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_account(*(a1 + 32), a2, a3);
  objc_msgSend_setAccount_(*(a1 + 32), v5, *(a1 + 40));
  v8 = objc_msgSend_identityManager(*(a1 + 32), v6, v7);
  objc_msgSend_updateAccount_(v8, v9, *(a1 + 40));

  v12 = objc_msgSend_accountID(*(a1 + 40), v10, v11);
  v15 = objc_msgSend_accountID(v4, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v16, v15);

  if ((isEqualToString & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v34 = 0;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Account information changed. Clearing PCS caches", v34, 2u);
    }

    objc_msgSend_setBoundaryKeyData_(*(a1 + 32), v19, 0);
    if (!objc_msgSend_accountType(*(a1 + 40), v20, v21))
    {
      v24 = objc_msgSend_undecryptablePCSDataHashes(*(a1 + 32), v22, v23);
      objc_msgSend_removeAllObjects(v24, v25, v26);

      v29 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v27, v28);
      v32 = objc_msgSend_uuid(*(a1 + 32), v30, v31);
      objc_msgSend_clearServicesAndPublicKeysForManagerUUID_(v29, v33, v32);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_225293724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22529373C(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_copy(*(*(a1 + 32) + 64), a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_225294ABC(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v7 = v5;
  if (!a2 || v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Error decrypting the per-participant PCS: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = a1[4];
    v9 = a1[5];
    v18 = 0;
    v10 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v8, v6, v9, 5, a2, &v18);
    v11 = v18;
    v7 = v11;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = *MEMORY[0x277CBC878];
    v14 = *MEMORY[0x277CBC880];
    if (v12)
    {
      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v15 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v10;
        _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Successfully invited PCS: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v17 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v7;
        _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Error decrypting the invited PCS: %@", buf, 0xCu);
        if (!v10)
        {
          goto LABEL_22;
        }
      }

      else if (!v10)
      {
        goto LABEL_22;
      }
    }

    CFRelease(v10);
  }

LABEL_22:
  (*(a1[6] + 16))();
}

uint64_t sub_225295240(void *a1)
{
  result = PCSFPAddPublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_22529717C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    result = PCSFPAddPublicIdentityWithShareFlags();
  }

  else
  {
    result = PCSFPAddPublicIdentity();
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_2252971CC(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_synchronizeQueue(*(a1 + 32), v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252972FC;
  block[3] = &unk_27854BD68;
  v21 = a2;
  v15 = v7;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = v8;
  v19 = *(a1 + 32);
  v20 = *(a1 + 56);
  v22 = *(a1 + 64);
  v12 = v8;
  v13 = v7;
  dispatch_async(v11, block);
}

void sub_2252972FC(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 1 && !*(a1 + 32))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      *buf = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "User key sync succeeded for service %{public}@ and operation %{public}@. Retrying zone PCS creation.", buf, 0x16u);
    }

    objc_msgSend__locked_createZonePCSWithSyncKeyRegistryRetry_requestorOperationID_keySyncAnalytics_createV2PCS_completionHandler_(*(a1 + 64), v10, 0, *(a1 + 48), *(a1 + 56), *(a1 + 81), *(a1 + 72));
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v2 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 32);
      *buf = 138543874;
      v20 = v12;
      v21 = 2114;
      v22 = v11;
      v23 = 2112;
      v24 = v13;
      _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "User key sync failed for service %{public}@ and operation %{public}@. Won't retry zone PCS creation due to error: %@.", buf, 0x20u);
    }

    objc_msgSend_setOverallResult_(*(a1 + 56), v3, @"failure");
    objc_msgSend_setError_(*(a1 + 56), v4, *(a1 + 32));
    objc_msgSend_sendCoreAnalyticsEventForKeySync_(CKDPCSKeySyncManager, v5, *(a1 + 56));
    v8 = objc_msgSend_callbackQueue(*(a1 + 64), v6, v7);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22529756C;
    v16[3] = &unk_2785456C8;
    v18 = *(a1 + 72);
    v17 = *(a1 + 32);
    dispatch_async(v8, v16);
  }
}

uint64_t sub_22529756C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

uint64_t sub_225297590(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_2252979D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225297A00(void *a1)
{
  *(*(a1[4] + 8) + 40) = PCSFPCopyExported();

  return MEMORY[0x2821F96F8]();
}

void sub_225297C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = PCSPublicIdentityCopyPublicKey();
  objc_msgSend_addObject_(v2, v3, v4);
}

void sub_2252986D8(uint64_t a1, const char *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    objc_msgSend_setIsCurrentUser_(*(a1 + 32), a2, 1);
    objc_msgSend_setCallingParticipant_(*(a1 + 40), v3, *(a1 + 32));
    v6 = objc_msgSend_acceptanceStatus(*(a1 + 32), v4, v5);
    v9 = MEMORY[0x277CBC880];
    v10 = MEMORY[0x277CBC858];
    if (v6 == 2)
    {
      v11 = objc_msgSend_userIdentity(*(a1 + 32), v7, v8);
      v14 = objc_msgSend_userRecordID(v11, v12, v13);
      v17 = objc_msgSend_recordName(v14, v15, v16);

      if (*v9 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v18 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(a1 + 32);
        v30 = v18;
        v33 = objc_msgSend_participantID(v29, v31, v32);
        v34 = 138412546;
        v35 = v33;
        v36 = 2112;
        v37 = v17;
        _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Stingray share is already accepted by participant %@, filling anonymousID %@ for share metadata.", &v34, 0x16u);
      }

      objc_msgSend_fillAnonymousCKUserID_(*(a1 + 40), v19, v17);
    }

    if (*v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 40);
      v22 = v20;
      v25 = objc_msgSend_callingParticipant(v21, v23, v24);
      v28 = objc_msgSend_recordID(*(a1 + 48), v26, v27);
      v34 = 138412546;
      v35 = v25;
      v36 = 2112;
      v37 = v28;
      _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Found current participant %@ on anonymous to server share %@", &v34, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_22529B130(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22529B194(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t sub_22529B1B4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t sub_22529B1E0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_22529B20C(uint64_t a1, uint64_t a2, __CFString *cf)
{
  v63 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v9 = &stru_28385ED00;
    v10 = @"un";
    v11 = *(*(*(a1 + 80) + 8) + 24);
    if (a2)
    {
      v10 = &stru_28385ED00;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = @". Error: ";
    if (cf)
    {
      v9 = cf;
    }

    else
    {
      v15 = &stru_28385ED00;
    }

    *buf = 138544898;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2114;
    v54 = v11;
    v55 = 2114;
    v56 = v13;
    v57 = 2114;
    v58 = v14;
    v59 = 2114;
    v60 = v15;
    v61 = 2112;
    v62 = v9;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Finished unwrapping PCS with data %{public}@ %@successfully with identities %{public}@ for service %{public}@ operation %{public}@.%{public}@%@", buf, 0x48u);
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    goto LABEL_16;
  }

  if (!cf)
  {
    *(*(*(a1 + 88) + 8) + 24) = a2;
    v8 = *(*(*(a1 + 88) + 8) + 24);
    if (v8)
    {
      CFRetain(v8);
    }

    goto LABEL_26;
  }

LABEL_16:
  v16 = objc_opt_class();
  v18 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v16, v17, cf, 5004, @"Failed to decrypt PCS data with user identities");
  v19 = *(*(a1 + 96) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v23 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v21, v22);
  if (objc_msgSend_isAppleInternalInstall(v23, v24, v25))
  {
    v26 = *(a1 + 104);

    if (v26)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v29 = objc_msgSend_identityManager(*(a1 + 56), v27, v28);
      FullKeychainIdentitySetWithError = objc_msgSend_createFullKeychainIdentitySetWithError_(v29, v30, 0);

      v54 = FullKeychainIdentitySetWithError;
      if (*(*&buf[8] + 24))
      {
        if (*v6 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v32 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v39 = *(*(*(a1 + 80) + 8) + 24);
          v40 = *(*&buf[8] + 24);
          *v49 = 138412546;
          v50 = v39;
          v51 = 2112;
          v52 = v40;
          _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Decryption with identity set %@ failed. Attempting to decrypt using all identities in the keychain %@", v49, 0x16u);
        }

        dispatch_group_enter(*(a1 + 64));
        v35 = objc_msgSend_synchronizeQueue(*(a1 + 56), v33, v34);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22529B600;
        block[3] = &unk_27854BE58;
        v47 = buf;
        v42 = *(a1 + 72);
        v43 = *(a1 + 32);
        v36 = *(a1 + 40);
        v37 = *(a1 + 56);
        v38 = *(a1 + 64);
        v44 = v36;
        v45 = v37;
        v48 = *(a1 + 96);
        v46 = v38;
        dispatch_async(v35, block);
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
  }

LABEL_26:
  dispatch_group_leave(*(a1 + 64));
}

void sub_22529B5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22529B600(uint64_t a1, const char *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277D42F48];
  v8[0] = *MEMORY[0x277D42F58];
  v8[1] = v4;
  v9[0] = v3;
  v9[1] = MEMORY[0x277CBEC28];
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v9, v8, 2);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync();
}

void sub_22529B744(uint64_t a1, uint64_t a2, void *cf)
{
  v26 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  else if (a2)
  {
    PCSFPGetUnwrapPublicIdentity();
    v5 = PCSPublicIdentityGetServiceName();
    if ((objc_msgSend_isEqualToString_(*(a1 + 32), v6, v5) & 1) == 0)
    {
      v9 = *(a1 + 32);
      v10 = objc_msgSend_containerID(*(a1 + 40), v7, v8);
      v13 = objc_msgSend_responsibleBundleID(*(a1 + 40), v11, v12);
      CKWarnForIncorrectServiceIdentity(v9, v10, v13);

      v14 = objc_opt_class();
      v16 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v14, v15, 0, 5004, @"Could not decrypt PCS data with the selected identity. A key to decrypt this data does exist, but it will not be used.");
      v17 = *(*(a1 + 56) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        v22 = 138543618;
        v23 = v5;
        v24 = 2114;
        v25 = v21;
        _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Was able to decrypt pcs with %{public}@ key in the keychain, but not the %{public}@ key. Possibly a misconfigured client set up.", &v22, 0x16u);
      }
    }
  }

  v20 = *(*(*(a1 + 64) + 8) + 24);
  if (v20)
  {
    CFRelease(v20);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_22529B914(uint64_t a1)
{
  v127 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC858];
  if (*(*(*(a1 + 120) + 8) + 40))
  {
    goto LABEL_2;
  }

  if (!*(*(*(a1 + 128) + 8) + 24) && !*(a1 + 32))
  {
    v64 = objc_opt_class();
    v66 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v64, v65, *(*(*(a1 + 144) + 8) + 24), 5004, @"Failed to decrypt PCS data with user identities");
    v67 = *(*(a1 + 120) + 8);
    v68 = *(v67 + 40);
    *(v67 + 40) = v66;

LABEL_2:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = *v2;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(*(*(a1 + 120) + 8) + 40);
      v5 = *(a1 + 64);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138413058;
      v120 = v4;
      v121 = 2112;
      v122 = v6;
      v123 = 2112;
      v124 = v5;
      v125 = 2112;
      v126 = v7;
      _os_log_error_impl(&dword_22506F000, v3, OS_LOG_TYPE_ERROR, "Error creating PCS: %@.\nIdentity %@\nPEM data was %@\nPCS data %@.", buf, 0x2Au);
    }

    goto LABEL_12;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *v2;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (*(*(*(a1 + 128) + 8) + 24))
    {
      v82 = @"PCS";
    }

    else
    {
      v82 = @"PPPCS data";
    }

    v83 = *(a1 + 40);
    v84 = *(a1 + 48);
    *buf = 138543874;
    v120 = v82;
    v121 = 2112;
    v122 = v83;
    v123 = 2114;
    v124 = v84;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Created %{public}@ using identity %@ \nFrom data %{public}@", buf, 0x20u);
  }

  v9 = objc_alloc_init(CKDPCSData);
  v10 = *(*(a1 + 136) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  objc_msgSend_setPcs_(*(*(*(a1 + 136) + 8) + 40), v12, *(*(*(a1 + 128) + 8) + 24));
  objc_msgSend_setPcsData_(*(*(*(a1 + 136) + 8) + 40), v13, *(a1 + 32));
LABEL_12:
  v15 = objc_opt_new();
  if (*(*(*(a1 + 128) + 8) + 24))
  {
    v16 = PCSShareProtectionCopyPublicKeys();
    v117[1] = MEMORY[0x277D85DD0];
    v117[2] = 3221225472;
    v117[3] = sub_22529C288;
    v117[4] = &unk_27854A5B8;
    v118 = v15;
    CKCFArrayForEach();
    if (v16)
    {
      CFRelease(v16);
    }
  }

  v17 = *(*(*(a1 + 152) + 8) + 24);
  if (v17)
  {
    CFRelease(v17);
    *(*(*(a1 + 152) + 8) + 24) = 0;
  }

  v18 = *(*(*(a1 + 128) + 8) + 24);
  if (v18)
  {
    CFRelease(v18);
    *(*(*(a1 + 128) + 8) + 24) = 0;
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v19 = *(a1 + 56);
    v20 = *(a1 + 184);
    v21 = *(*(a1 + 120) + 8);
    v117[0] = *(v21 + 40);
    objc_msgSend__checkUnitTestOverridesForDecryptionFailuresWithState_error_(v19, v14, (v20 & 1) == 0, v117);
    objc_storeStrong((v21 + 40), v117[0]);
    if (*(*(*(a1 + 120) + 8) + 40))
    {
      v22 = *(*(a1 + 136) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = 0;
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22529C2E8;
  aBlock[3] = &unk_27854BEF8;
  v105 = *(a1 + 72);
  v106 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = *(a1 + 56);
  v107 = v24;
  v108 = v25;
  v26 = *(a1 + 168);
  v113 = *(a1 + 160);
  v114 = v26;
  v27 = *(a1 + 96);
  v28 = *(a1 + 144);
  v109 = v27;
  v112 = v28;
  v111 = *(a1 + 112);
  v29 = *(a1 + 48);
  v30 = *(a1 + 176);
  v110 = v29;
  v115 = v30;
  v116 = *(a1 + 185);
  v31 = _Block_copy(aBlock);
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = sub_22529CA30;
  v94[3] = &unk_27854BF48;
  v32 = *(a1 + 120);
  v103 = *(a1 + 168);
  v33 = *(a1 + 56);
  v101 = v32;
  v94[4] = v33;
  v102 = *(a1 + 136);
  v95 = *(a1 + 80);
  v96 = *(a1 + 72);
  v97 = *(a1 + 88);
  v98 = *(a1 + 48);
  v99 = *(a1 + 104);
  v100 = *(a1 + 112);
  v34 = _Block_copy(v94);
  v37 = objc_msgSend_domain(*(*(*(a1 + 120) + 8) + 40), v35, v36);
  if (objc_msgSend_isEqualToString_(v37, v38, *MEMORY[0x277CBC120]))
  {
    v43 = objc_msgSend_code(*(*(*(a1 + 120) + 8) + 40), v39, v40) != 5000 && objc_msgSend_code(*(*(*(a1 + 120) + 8) + 40), v41, v42) != 5004;
  }

  else
  {
    v43 = 1;
  }

  if (*(*(*(a1 + 120) + 8) + 40) && !v43 && *(a1 + 184) == 1)
  {
    if (*(a1 + 96) && (*(a1 + 176) - 3) <= 1)
    {
      v46 = objc_msgSend_identityManager(*(a1 + 56), v44, v45);
      v48 = objc_msgSend_PCSServiceStringFromCKServiceType_(v46, v47, *(a1 + 168));

      IsManatee = objc_msgSend_serviceTypeIsManatee_(*(a1 + 56), v49, *(a1 + 168));
      v53 = objc_msgSend_userKeySyncNotifier(*(a1 + 56), v51, v52);
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = sub_22529CF10;
      v90 = &unk_27854BF98;
      v91 = *(a1 + 56);
      v92 = v31;
      v93 = v34;
      v56 = _Block_copy(&v87);
      if (v53)
      {
        v57 = objc_msgSend_account(*(a1 + 56), v54, v55, v87, v88, v89, v90, v91, v92);
        v60 = objc_msgSend_dsid(v57, v58, v59);
        objc_msgSend_getKeySyncEligibilityForService_isManatee_accountDSID_lastModifiedDate_testOverrideProvider_completionHandler_(v53, v61, v48, IsManatee, v60, *(a1 + 96), *(a1 + 56), v56);
      }

      else
      {
        v57 = objc_msgSend_sharedManager(CKDPCSKeySyncManager, v54, v55, v87, v88, v89, v90, v91, v92);
        v60 = objc_msgSend_account(*(a1 + 56), v73, v74);
        v77 = objc_msgSend_dsid(v60, v75, v76);
        v78 = IsManatee;
        v79 = v48;
        v80 = v77;
        objc_msgSend_getKeySyncEligibilityForService_isManatee_accountDSID_lastModifiedDate_testOverrideProvider_completionHandler_(v57, v81, v79, v78, v77, *(a1 + 96), *(a1 + 56), v56);

        v48 = v79;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v63 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v85 = *(a1 + 72);
        v86 = *(a1 + 96);
        *buf = 138543618;
        v120 = v85;
        v121 = 2114;
        v122 = v86;
        _os_log_debug_impl(&dword_22506F000, v63, OS_LOG_TYPE_DEBUG, "Either the PCS object is not zonePCS or PPPCS, or the PCS blob lacks the lastModifiedDate. PCS object type %{public}@. lastModifiedDate:%{public}@", buf, 0x16u);
      }

      (*(v31 + 2))(v31, 1);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v62 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 184))
      {
        v69 = @"YES";
      }

      else
      {
        v69 = @"NO";
      }

      v70 = @" Error:";
      v71 = *(*(*(a1 + 120) + 8) + 40);
      *buf = 138543874;
      if (!v71)
      {
        v70 = &stru_28385ED00;
      }

      v120 = v69;
      if (v71)
      {
        v72 = v71;
      }

      else
      {
        v72 = &stru_28385ED00;
      }

      v121 = 2114;
      v122 = v70;
      v123 = 2112;
      v124 = v72;
      _os_log_debug_impl(&dword_22506F000, v62, OS_LOG_TYPE_DEBUG, "Either successfully decrypted the PCS or we are not allowed to sync key registry. canSyncKeyRegistry:%{public}@.%{public}@%@", buf, 0x20u);
    }

    v34[2](v34);
  }
}

uint64_t sub_22529C288(uint64_t a1, uint64_t a2)
{
  v3 = PCSPublicIdentityGetPublicID();
  if (v3)
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v3);
  }

  return MEMORY[0x2821F96F8]();
}

void sub_22529C2E8(uint64_t a1, unsigned int a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = @"dis";
    v27 = *(a1 + 48);
    if (a2)
    {
      v26 = @"en";
    }

    *buf = 138544130;
    v39 = v24;
    v40 = 2114;
    v41 = v25;
    v42 = 2114;
    v43 = v27;
    v44 = 2114;
    v45 = v26;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Attempting user key sync before retrying %{public}@ PCS decryption for service %{public}@ and operation %{public}@, with throttling %{public}@abled.", buf, 0x2Au);
  }

  v30 = a2;
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend__checkPCSTestOverrideForKey_(*(a1 + 56), v5, @"DisallowKRSToBePerformed"))
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, *(a1 + 96), *(a1 + 56), @"CKDPCSManager.m", 1742, @"KRS is not allowed from unit test override");
  }

  v8 = *(a1 + 104);
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22529C5BC;
  v31[3] = &unk_27854BED0;
  v11 = *(a1 + 48);
  v12 = *(a1 + 88);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v10;
  *(&v17 + 1) = v13;
  v32 = v17;
  v33 = v16;
  v18 = *(a1 + 80);
  v19 = *(a1 + 72);
  v36 = vextq_s8(*(a1 + 104), *(a1 + 104), 8uLL);
  v37 = *(a1 + 120);
  v20 = *(a1 + 64);
  *&v21 = v19;
  *(&v21 + 1) = v20;
  *&v22 = v18;
  *(&v22 + 1) = v12;
  v35 = v22;
  v34 = v21;
  objc_msgSend_synchronizeUserKeyRegistryForServiceType_resourceLastModifiedDate_outdatedPublicKeyID_shouldThrottle_context_requestorOperationID_completionHandler_(v10, v23, v8, v9, 0, v30, 0x28387E920, v11, v31);
}

void sub_22529C5BC(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_synchronizeQueue(*(a1 + 32), v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22529C75C;
  block[3] = &unk_27854BEA8;
  v33 = a2;
  v26 = v7;
  v24 = *(a1 + 32);
  v12 = *(a1 + 88);
  v13 = *(&v24 + 1);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  v27 = v24;
  v28 = v16;
  v29 = v8;
  v17 = *(a1 + 80);
  v18 = *(a1 + 64);
  v32 = *(a1 + 96);
  v34 = *(a1 + 112);
  v19 = *(a1 + 72);
  *&v20 = v18;
  *(&v20 + 1) = v19;
  *&v21 = v17;
  *(&v21 + 1) = v12;
  v31 = v21;
  v30 = v20;
  v22 = v8;
  v23 = v7;
  dispatch_async(v11, block);
}

void sub_22529C75C(uint64_t a1, const char *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 128) == 1 && !*(a1 + 32))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v18 = *(a1 + 64);
      *buf = 138543874;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      v26 = 2114;
      v27 = v18;
      _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "User key sync succeeded for service %{public}@ and operation %{public}@. Retrying %{public}@ PCS decryption.", buf, 0x20u);
    }

    objc_msgSend__locked_createPCSFromData_ofType_usingPCSServiceType_tryDecryptingWithOtherServices_withSyncKeyRegistryRetry_lastModifiedDate_keySyncAnalytics_requestorOperationID_completionHandler_(*(a1 + 40), v11, *(a1 + 80), *(a1 + 112), *(a1 + 120), *(a1 + 129), 0, *(a1 + 88), *(a1 + 72), *(a1 + 56), *(a1 + 96));
  }

  else
  {
    objc_msgSend__locked_markMissingIdentitiesFromFailedDecryptError_serviceName_(*(a1 + 40), a2, *(*(*(a1 + 104) + 8) + 24), *(a1 + 48));
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = *(a1 + 64);
      v15 = *(a1 + 32);
      *buf = 138544130;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      v26 = 2114;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "User key sync failed for service %{public}@ and operation %{public}@. Won't retry %{public}@ PCS decryption due to error: %@.", buf, 0x2Au);
    }

    objc_msgSend_setOverallResult_(*(a1 + 72), v4, @"failure");
    objc_msgSend_setError_(*(a1 + 72), v5, *(a1 + 32));
    objc_msgSend_sendCoreAnalyticsEventForKeySync_(CKDPCSKeySyncManager, v6, *(a1 + 72));
    v9 = objc_msgSend_callbackQueue(*(a1 + 40), v7, v8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22529CA0C;
    block[3] = &unk_2785456C8;
    v21 = *(a1 + 96);
    v20 = *(a1 + 32);
    dispatch_async(v9, block);
  }
}

uint64_t sub_22529CA0C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void sub_22529CA30(uint64_t a1, const char *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 88) + 8) + 40) && !*(*(*(a1 + 96) + 8) + 40) && !*(a1 + 112) && objc_msgSend_currentServiceIsManatee(*(a1 + 32), a2, a3))
  {
    objc_msgSend__locked_markMissingIdentitiesFromFailedDecryptError_serviceName_(*(a1 + 32), a2, *(*(*(a1 + 104) + 8) + 24), *(a1 + 40));
    if (objc_msgSend_code(*(*(*(a1 + 88) + 8) + 40), v4, v5) == 5000)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v8 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "Failed to decrypt PCS data even after user key sync because we have no identities. Returning retryable failure.", buf, 2u);
      }

      v9 = objc_opt_class();
      v10 = 5008;
      objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v9, v11, *(*(*(a1 + 104) + 8) + 24), 5008, @"Failed to decrypt. Keys unavailable even after synchronization");
    }

    else
    {
      if (objc_msgSend_code(*(*(*(a1 + 88) + 8) + 40), v6, v7) != 5004)
      {
        goto LABEL_19;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v12 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 40);
        v30 = *(a1 + 48);
        v32 = *(a1 + 56);
        *buf = 138543874;
        v38 = v30;
        v39 = 2114;
        v40 = v31;
        v41 = 2114;
        v42 = v32;
        _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Failed to decrypt %{public}@ PCS data even after user key sync for service %{public}@ operation %{public}@. Returning permanent failure.", buf, 0x20u);
      }

      objc_msgSend_markUndecryptablePCS_(*(a1 + 32), v13, *(a1 + 64));
      v14 = objc_opt_class();
      v10 = 5011;
      objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v14, v15, *(*(*(a1 + 104) + 8) + 24), 5011, @"Failed to decrypt. Keys unavailable even after synchronization");
    }
    v16 = ;
    v17 = *(*(a1 + 88) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (!*(*(*(a1 + 88) + 8) + 40))
    {
      v19 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], v10, *(*(*(a1 + 104) + 8) + 24), @"Failed to decrypt. Keys unavailable even after synchronization");
      v20 = *(*(a1 + 88) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }
  }

LABEL_19:
  v22 = *(*(*(a1 + 88) + 8) + 40);
  if (v22 && !*(*(*(a1 + 96) + 8) + 40) && objc_msgSend_code(v22, a2, a3) == 5011 && !*(a1 + 112))
  {
    v23 = *(a1 + 32);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_22529CE84;
    v36[3] = &unk_278545A00;
    v36[4] = v23;
    objc_msgSend__onSynchronizeQueue_(v23, a2, v36);
  }

  v24 = *(a1 + 72);
  if (v24)
  {
    if (*(*(*(a1 + 96) + 8) + 40) && !*(*(*(a1 + 88) + 8) + 40))
    {
      v25 = &off_27854DFC0;
    }

    else
    {
      v25 = &off_27854DFC8;
    }

    objc_msgSend_setOverallResult_(v24, a2, *v25);
    objc_msgSend_setError_(*(a1 + 72), v26, *(*(*(a1 + 88) + 8) + 40));
    objc_msgSend_sendCoreAnalyticsEventForKeySync_(CKDPCSKeySyncManager, v27, *(a1 + 72));
  }

  v28 = *(*(*(a1 + 104) + 8) + 24);
  if (v28)
  {
    CFRelease(v28);
    *(*(*(a1 + 104) + 8) + 24) = 0;
  }

  v29 = objc_msgSend_callbackQueue(*(a1 + 32), a2, a3);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_22529CEE0;
  v33[3] = &unk_27854BF20;
  v34 = *(a1 + 80);
  v35 = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
  dispatch_async(v29, v33);
}

void sub_22529CE84(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3);
  objc_msgSend_setLastMissingManateeIdentityErrorDateForCurrentService_(*(a1 + 32), v4, v5);
}

uint64_t sub_22529CEE0(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_22529CF10(id *a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v5 = objc_msgSend_synchronizeQueue(a1[4], a2, a3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22529CFD4;
  block[3] = &unk_27854BF70;
  v9 = v3;
  v7 = a1[5];
  v8 = a1[6];
  dispatch_async(v5, block);
}

uint64_t sub_22529CFD4(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_22529D55C(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  v6 = objc_alloc_init(CKDZonePCSData);
  v9 = objc_msgSend_pcs(v5, v7, v8);

  objc_msgSend_setPcs_(v6, v10, v9);
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v6, v12);
  }
}

void sub_22529D6CC(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v8 = objc_msgSend_pcsData(a2, v6, v7);
    (*(v3 + 16))(v3, v8, v5);
  }
}

void sub_22529D87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22529D894(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_identityManager(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_PCSServiceStringFromCKServiceType_(v4, v5, *(a1 + 48));

  v9 = objc_msgSend_identityManager(*(a1 + 32), v7, v8);
  v10 = *(a1 + 48);
  v11 = *(*(a1 + 40) + 8);
  obj = *(v11 + 40);
  v13 = objc_msgSend_copyIdentitySetWithType_options_error_(v9, v12, v10, 0, &obj);
  objc_storeStrong((v11 + 40), obj);

  if (!v13 || *(*(*(a1 + 40) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v15 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v25 = v6;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Warn: No identity set for service %{public}@: %@", buf, 0x16u);
    }

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v16 = MEMORY[0x277CBC560];
      v17 = *MEMORY[0x277CBC120];
      v18 = sub_2252927B0(*(a1 + 48));
      v20 = objc_msgSend_errorWithDomain_code_format_(v16, v19, v17, 5000, @"Failed to preflight a %@ identity", v18);
      v21 = *(*(a1 + 40) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }
  }
}

void sub_22529DCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22529DD28(uint64_t a1, const char *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277D42F48];
  v11[0] = *MEMORY[0x277D42F58];
  v11[1] = v4;
  v12[0] = v3;
  v12[1] = MEMORY[0x277CBEC38];
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v12, v11, 2);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v10 = v9;
  PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync();
}

void sub_22529DEA8(void *a1, const void *a2, void *cf)
{
  v41 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = *(*(a1[8] + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(a1[8] + 8) + 24) = 0;
  }

  v7 = sub_225292788(a1[10]);
  if (!a2 || cf)
  {
    v9 = objc_opt_class();
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"Failed to unwrap %@ data", v7);
    v13 = objc_msgSend_noMatchingIdentityErrorForPCSError_withErrorCode_description_(v9, v12, cf, 5004, v11);
    v14 = *(a1[9] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (!*(*(a1[9] + 8) + 40))
    {
      v17 = MEMORY[0x277CBC560];
      v18 = *MEMORY[0x277CBC120];
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"Couldn't unwrap %@ object from data", v7);
      v21 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(v17, v20, v18, 5004, 0, cf, 0, 0, v19);
      v22 = *(a1[9] + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v25 = *(*(a1[9] + 8) + 40);
      v26 = *(*(a1[8] + 8) + 24);
      v27 = a1[5];
      v28 = a1[6];
      *buf = 138413314;
      v32 = v7;
      v33 = 2112;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = v27;
      v39 = 2112;
      v40 = v28;
      _os_log_error_impl(&dword_22506F000, v24, OS_LOG_TYPE_ERROR, "Error unwrapping %@: %@.\nIdentity %@\nPEM data was %@\nZone PCS data %@.", buf, 0x34u);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v29 = *(*(a1[8] + 8) + 24);
      v30 = a1[6];
      *buf = 138413058;
      v32 = v7;
      v33 = 2112;
      v34 = v29;
      v35 = 2114;
      v36 = v30;
      v37 = 2112;
      v38 = a2;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Unwrapped %@ using identity %@ from data %{public}@: %@.", buf, 0x2Au);
    }

    CFRetain(a2);
    (*(a1[7] + 16))();
    CFRelease(a2);
  }
}

void sub_22529F5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22529F614(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

uint64_t sub_22529F65C(void *a1)
{
  result = PCSFPRollMasterKey();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_22529F6A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v9 = a2;
  if (v2 == 1)
  {
    v5 = objc_msgSend_zoneishKeysRolled(v9, v3, v4);
    objc_msgSend_setZoneishKeysRolled_(v9, v6, v5 + 1);
  }

  else
  {
    v7 = objc_msgSend_perRecordKeysRolled(v9, v3, v4);
    objc_msgSend_setPerRecordKeysRolled_(v9, v8, v7 + 1);
  }
}

void sub_22529FA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22529FA98(void *a1, const char *a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = a1[6];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v6 = off_27D71F848;
  v18 = off_27D71F848;
  if (!off_27D71F848)
  {
    v7 = sub_2252B4EE4(a1, a2, a3);
    v16[3] = dlsym(v7, "MarkForCounterSigning");
    off_27D71F848 = v16[3];
    v6 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (v6)
  {
    *(*(a1[4] + 8) + 24) = v6(v4, v5);
  }

  else
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "_Bool CKMarkForCounterSigning(PCSShareProtectionRef, PCSShareProtectionRef)");
    v13 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v14, v12, @"CKDPCSManager.m", 66, @"%s", v13);

    __break(1u);
  }
}

void sub_22529FC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252A0248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A0274(void *a1)
{
  result = PCSFPUpdateZoneKey();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A07B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A07E0(void *a1)
{
  result = PCSFPRemovePrivateKey();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_2252A0BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A0C28(void *a1)
{
  result = PCSFPRemovePrivateKey();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_2252A0E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A0EB4(void *a1)
{
  *(*(a1[4] + 8) + 40) = PCSFPCopyExported();

  return MEMORY[0x2821F96F8]();
}

void sub_2252A1788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252A17B4(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

uint64_t sub_2252A17FC(void *a1)
{
  result = PCSFPUpdateIdentityAndRollZoneKey();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A183C(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_zoneKeysRolled(v6, v2, v3);
  objc_msgSend_setZoneKeysRolled_(v6, v5, v4 + 1);
}

void sub_2252A29B4(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

void sub_2252A29FC(uint64_t a1, void *a2)
{
  v10 = a2;
  v4 = objc_msgSend_shareKeysRolled(v10, v2, v3);
  objc_msgSend_setShareKeysRolled_(v10, v5, v4 + 1);
  v8 = objc_msgSend_zoneKeysRolled(v10, v6, v7);
  objc_msgSend_setZoneKeysRolled_(v10, v9, v8 + 1);
}

void sub_2252A2BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2252A2BD8(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = PCSFPCopyAvailableMasterKeyIDs();
  if (objc_msgSend_count(v2, v3, v4) == 1)
  {
    *(*(a1[4] + 8) + 24) = PCSFPRollMasterKey();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Warn: PCS does not have a single primary key, skipping primary key replacement. keys: %@", &v6, 0xCu);
    }
  }
}

void sub_2252A41A8(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

void sub_2252A46D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A46F0(void *a1)
{
  result = PCSFPAddPublicIdentityWithShareFlags();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A4A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void *sub_2252A4AB0(void *result, CFTypeRef cf, char a3)
{
  if ((a3 & 0x20) != 0)
  {
    v3 = result;
    if (!*(*(result[4] + 8) + 24))
    {
      result = CFRetain(cf);
      *(*(v3[4] + 8) + 24) = result;
    }
  }

  return result;
}

void sub_2252A4AFC(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = PCSFPRemovePublicIdentity();
  v3 = *MEMORY[0x277CBC878];
  if (v2)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v3);
    }

    v4 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v5 = *(*(a1[4] + 8) + 24);
      v6 = a1[7];
      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Removed parent zone PCS identity %@ from child zone PCS %@", &v15, 0x16u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v3);
    }

    v7 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1[4] + 8) + 24);
      v10 = a1[7];
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Warn: Unable to remove parent zone identity %@ from child zone PCS %@", &v15, 0x16u);
    }

    if (!*(*(a1[5] + 8) + 40))
    {
      v11 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 5002, @"Couldn't remove a parent zone PCS identity from the child zone.");
      v12 = *(a1[5] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  v14 = *(*(a1[4] + 8) + 24);
  if (v14)
  {
    CFRelease(v14);
    *(*(a1[4] + 8) + 24) = 0;
  }
}

void sub_2252A532C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 240), 8);
  _Block_object_dispose((v38 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A5378(uint64_t a1, const char *a2, uint64_t a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 72) != 1)
  {
    v16[0] = *MEMORY[0x277D42F78];
    v4 = objc_msgSend_identityManager(*(a1 + 56), a2, a3);
    v7 = objc_msgSend_serviceName(v4, v5, v6);
    v8 = *MEMORY[0x277D42F98];
    v9 = *(a1 + 64);
    v17[0] = v7;
    v17[1] = v9;
    v10 = *MEMORY[0x277D42F58];
    v16[1] = v8;
    v16[2] = v10;
    v17[2] = *MEMORY[0x277D42F60];
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v17, v16, 3);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  result = PCSFPCreate();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_2252A54C8(void *a1)
{
  result = PCSFPAddSharePCS();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_2252A5504(void *a1)
{
  result = PCSFPAddSharePCS();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A5B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_2252A5B80(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D42F80];
  if (*(a1 + 48) == 1)
  {
    v4 = *MEMORY[0x277D42F88];

    v3 = v4;
  }

  v6 = *MEMORY[0x277D42F58];
  v7[0] = *MEMORY[0x277D42F60];
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v2, v7, &v6, 1);
  *(*(*(a1 + 32) + 8) + 24) = PCSFPCreate();
}

uint64_t sub_2252A5C84(void *a1)
{
  result = PCSFPAddEncryptedSharePCS();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_2252A5CD0(void *a1)
{
  result = PCSFPAddSharePCS();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A603C(void *a1)
{
  *(*(a1[4] + 8) + 40) = PCSFPCopyExported();

  return MEMORY[0x2821F96F8]();
}

void sub_2252A6590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252A67C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252A6CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A6D14(uint64_t a1)
{
  result = PCSFPAddPublicIdentityWithShareFlags();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_2252A726C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252A7298(void *a1)
{
  result = PCSFPRemoveSharePCS();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252A7AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_2252A7B7C(void *a1, const char *a2, uint64_t a3)
{
  v98 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(*(*(a1[4] + 8) + 40), a2, a3))
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v6 = *(*(a1[4] + 8) + 40);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v85, v97, 16);
    if (v8)
    {
      v9 = v8;
      v10 = *v86;
      v74 = *MEMORY[0x277CBC120];
      v11 = MEMORY[0x277CBC880];
      v12 = MEMORY[0x277CBC858];
      do
      {
        v13 = 0;
        do
        {
          if (*v86 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v85 + 1) + 8 * v13);
          v84 = 0;
          if (PCSFPRemoveMasterKey())
          {
            v16 = v84 == 0;
          }

          else
          {
            v16 = 0;
          }

          if (v16)
          {
            if (*v11 != -1)
            {
              dispatch_once(v11, *MEMORY[0x277CBC878]);
            }

            v21 = *v12;
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
            {
              v22 = a1[10];
              *buf = 138543618;
              v92 = v14;
              v93 = 2112;
              v94 = v22;
              _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Removed primary key with ID %{public}@ from PCS %@", buf, 0x16u);
            }

            ++*(*(a1[5] + 8) + 24);
          }

          else
          {
            v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, v74, 5005, @"Unspecified failure.");
            if (*v11 != -1)
            {
              dispatch_once(v11, *MEMORY[0x277CBC878]);
            }

            v18 = *v12;
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
            {
              v19 = a1[10];
              *buf = 138543874;
              v92 = v14;
              v93 = 2112;
              v94 = v19;
              v95 = 2112;
              v96 = v17;
              _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Warn: Failed to remove primary key with ID %{public}@ from PCS %@: %@", buf, 0x20u);
            }
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v20, &v85, v97, 16);
      }

      while (v9);
    }
  }

  if (objc_msgSend_count(*(*(a1[6] + 8) + 40), v4, v5))
  {
    v25 = PCSFPCopyKeyIDs();
    v26 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v27 = v25;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v80, v90, 16);
    if (v29)
    {
      v30 = v29;
      v31 = *v81;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v81 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v80 + 1) + 8 * i);
          v34 = PCSFPCopyPrivateKey();
          v36 = PCSIdentityCopyCurrentKeyFingerprint();
          if (v34)
          {
            CFRelease(v34);
          }

          objc_msgSend_setObject_forKey_(v26, v35, v33, v36);
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v37, &v80, v90, 16);
      }

      while (v30);
    }

    v73 = v27;

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = *(*(a1[6] + 8) + 40);
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v76, v89, 16);
    if (v39)
    {
      v41 = v39;
      v42 = *v77;
      v43 = MEMORY[0x277CBC880];
      v44 = MEMORY[0x277CBC858];
      do
      {
        v45 = 0;
        do
        {
          if (*v77 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v76 + 1) + 8 * v45);
          v47 = objc_msgSend_objectForKey_(v26, v40, v46);
          if (!v47)
          {
            if (*v43 != -1)
            {
              dispatch_once(v43, *MEMORY[0x277CBC878]);
            }

            v51 = *v44;
            if (os_log_type_enabled(*v44, OS_LOG_TYPE_INFO))
            {
              v52 = a1[10];
              *buf = 138543618;
              v92 = v46;
              v93 = 2114;
              v94 = v52;
              _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Warn: Failed to remove private key with public key ID %{public}@. No matching public key found in the PCS %{public}@", buf, 0x16u);
            }

            v53 = PCSFPCopyDiagnostic();
            if (*v43 != -1)
            {
              dispatch_once(v43, *MEMORY[0x277CBC878]);
            }

            v54 = *v44;
            if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEBUG))
            {
LABEL_64:
              *buf = 138543362;
              v92 = v53;
              _os_log_debug_impl(&dword_22506F000, v54, OS_LOG_TYPE_DEBUG, "PCS diagnostics: %{public}@", buf, 0xCu);
            }

LABEL_61:

            goto LABEL_62;
          }

          v48 = PCSFPRemovePrivateKey();
          v49 = *MEMORY[0x277CBC878];
          if (!v48)
          {
            if (*v43 != -1)
            {
              dispatch_once(v43, v49);
            }

            v55 = *v44;
            if (os_log_type_enabled(*v44, OS_LOG_TYPE_INFO))
            {
              v56 = a1[10];
              *buf = 138543874;
              v92 = v47;
              v93 = 2114;
              v94 = v46;
              v95 = 2114;
              v96 = v56;
              _os_log_impl(&dword_22506F000, v55, OS_LOG_TYPE_INFO, "Warn: Failed to remove private key with public key %{public}@ (keyID: %{public}@) from PCS %{public}@", buf, 0x20u);
            }

            v53 = PCSFPCopyDiagnostic();
            if (*v43 != -1)
            {
              dispatch_once(v43, *MEMORY[0x277CBC878]);
            }

            v54 = *v44;
            if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_64;
            }

            goto LABEL_61;
          }

          if (*v43 != -1)
          {
            dispatch_once(v43, v49);
          }

          v50 = *v44;
          if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEBUG))
          {
            v57 = a1[10];
            *buf = 138543874;
            v92 = v47;
            v93 = 2114;
            v94 = v46;
            v95 = 2112;
            v96 = v57;
            _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Removed private key with public key %{public}@ (keyID: %{public}@) from PCS %@", buf, 0x20u);
          }

          ++*(*(a1[7] + 8) + 24);
LABEL_62:

          ++v45;
        }

        while (v41 != v45);
        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v76, v89, 16);
        v41 = v58;
      }

      while (v58);
    }
  }

  if (objc_msgSend_count(*(*(a1[8] + 8) + 40), v23, v24))
  {
    v59 = PCSFPCopyPublicIdentities();
    if (v59)
    {
      CKCFArrayForEach();
      if (!objc_msgSend_count(*(*(a1[8] + 8) + 40), v60, v61))
      {
LABEL_86:

        return;
      }

      v62 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v63 = MEMORY[0x277CBC858];
      v64 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v65 = *(*(a1[8] + 8) + 40);
        v66 = a1[10];
        *buf = 138543618;
        v92 = v65;
        v93 = 2114;
        v94 = v66;
        _os_log_impl(&dword_22506F000, v64, OS_LOG_TYPE_INFO, "Failed to remove sharees with keyIDs: %{public}@ from PCS because no matching public identities were found in the PCS %{public}@", buf, 0x16u);
      }

      v67 = PCSFPCopyDiagnostic();
      if (*v62 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v68 = *v63;
      if (!os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
      {
LABEL_85:

        goto LABEL_86;
      }

      *buf = 138543362;
      v92 = v67;
    }

    else
    {
      v69 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v70 = MEMORY[0x277CBC858];
      v71 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v72 = a1[10];
        *buf = 138543362;
        v92 = v72;
        _os_log_impl(&dword_22506F000, v71, OS_LOG_TYPE_INFO, "Warn: Failed to remove sharees from PCS, the PCS has no public identities: %{public}@", buf, 0xCu);
      }

      v67 = PCSFPCopyDiagnostic();
      if (*v69 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v68 = *v70;
      if (!os_log_type_enabled(*v70, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_85;
      }

      *buf = 138543362;
      v92 = v67;
    }

    _os_log_debug_impl(&dword_22506F000, v68, OS_LOG_TYPE_DEBUG, "PCS diagnostics: %{public}@", buf, 0xCu);
    goto LABEL_85;
  }
}

void sub_2252A857C(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = PCSPublicIdentityCopyCurrentKeyFingerprint();
  if (objc_msgSend_containsObject_(*(*(a1[4] + 8) + 40), v4, v3))
  {
    if (PCSFPRemovePublicIdentity())
    {
      ++*(*(a1[5] + 8) + 24);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v5 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v7 = a1[6];
        v14 = 138543618;
        v15 = v3;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Removed sharee public identity for keyID %{public}@ from PCS %@", &v14, 0x16u);
      }
    }

    else
    {
      v8 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v9 = MEMORY[0x277CBC858];
      v10 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v11 = a1[6];
        v14 = 138543618;
        v15 = v3;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Failed to remove the sharee public identity matching keyID %{public}@ from PCS %@", &v14, 0x16u);
      }

      v12 = PCSFPCopyDiagnostic();
      if (*v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138543362;
        v15 = v12;
        _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "PCS diagnostics: %{public}@", &v14, 0xCu);
      }
    }

    objc_msgSend_removeObject_(*(*(a1[4] + 8) + 40), v6, v3);
  }
}

void sub_2252A87EC(uint64_t a1, void *a2)
{
  v7 = a2;
  v5 = objc_msgSend_keysNotRemoved(v7, v3, v4);
  objc_msgSend_setKeysNotRemoved_(v7, v6, *(a1 + 32) + v5);
}

uint64_t sub_2252A948C(void *a1)
{
  result = PCSFPAddPublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_2252A9BD8(void *a1)
{
  result = PCSFPAddPrivateKey();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_2252A9C18(void *a1)
{
  result = PCSFPAddPublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252AA2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252AA328(void *a1)
{
  *(*(a1[4] + 8) + 40) = PCSFPCopyExported();

  return MEMORY[0x2821F96F8]();
}

void sub_2252AA7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
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

uint64_t sub_2252AA814(void *a1)
{
  result = PCSFPCreateWithExported();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252AAC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2252AAC6C(void *a1, const char *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v5 = *MEMORY[0x277D42F58];
  v6[0] = v3;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, &v5, 1);
  *(*(a1[6] + 8) + 24) = PCSObjectCreateFromExportedWithIdentitiesAndOptions();
}

uint64_t sub_2252ABD00(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_2252ABD2C(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  dispatch_assert_queue_V2(v7);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  v11 = objc_msgSend_pcs(v8, v9, v10);

  if (v11)
  {
    objc_msgSend_setMyParticipantPCS_(*(a1 + 40), v12, v11);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 48);
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = v11;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Successfully decrypted a per-participant PCS using our %{public}@ identity: %@", buf, 0x16u);
    }
  }

  v14 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252ABF04;
  block[3] = &unk_27854C238;
  v20 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = *(a1 + 64);
  v19 = v15;
  v21 = v16;
  dispatch_async(v14, block);
}

uint64_t sub_2252ABF04(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_2252ABF30(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  dispatch_assert_queue_V2(*(a1 + 32));
  objc_storeStrong((*(*(a1 + 88) + 8) + 40), a3);
  v11 = objc_msgSend_pcs(v7, v9, v10);

  if (v11)
  {
    objc_msgSend_setMyParticipantPCS_(*(a1 + 40), v12, v11);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 48);
      v15 = v13;
      v18 = objc_msgSend_identityManager(v14, v16, v17);
      v20 = objc_msgSend_PCSServiceStringFromCKServiceType_(v18, v19, *(a1 + 104));
      *buf = 138543618;
      v57 = v20;
      v58 = 2112;
      v59 = v11;
      _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Successfully decrypted a per-participant PCS using our %{public}@ identity: %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  if (*(a1 + 120) != 1)
  {
LABEL_12:
    v35 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2252AC544;
    block[3] = &unk_27854C238;
    v28 = v48;
    v48[0] = *(a1 + 80);
    v31 = &v47;
    v36 = *(a1 + 40);
    v37 = *(a1 + 88);
    v47 = v36;
    v48[1] = v37;
    dispatch_async(v35, block);
    goto LABEL_13;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v21 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v38 = *(a1 + 48);
    v39 = *(a1 + 56);
    v40 = v21;
    v43 = objc_msgSend_identityManager(v38, v41, v42);
    v45 = objc_msgSend_PCSServiceStringFromCKServiceType_(v43, v44, *(a1 + 112));
    *buf = 138412546;
    v57 = v39;
    v58 = 2114;
    v59 = v45;
    _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Attempting decryption of per-participant PCS for share %@ using our %{public}@ identity", buf, 0x16u);
  }

  v24 = objc_msgSend_myParticipantPCSData(*(a1 + 40), v22, v23);
  v25 = *(a1 + 112);
  v26 = *(a1 + 64);
  v27 = *(a1 + 72);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_2252AC308;
  v49[3] = &unk_27854C288;
  v28 = &v50;
  v29 = *(a1 + 32);
  v30 = *(a1 + 88);
  v50 = v29;
  v53 = v30;
  v31 = v51;
  v32 = *(a1 + 40);
  v33 = *(a1 + 48);
  v51[0] = v32;
  v51[1] = v33;
  v54 = *(a1 + 112);
  v55 = 0;
  v52 = *(a1 + 80);
  objc_msgSend__createPCSFromData_ofType_usingPCSServiceType_tryDecryptingWithOtherServices_withSyncKeyRegistryRetry_lastModifiedDate_requestorOperationID_completionHandler_(WeakRetained, v34, v24, 4, v25, 0, 1, v26, v27, v49);

LABEL_13:
}

void sub_2252AC308(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  dispatch_assert_queue_V2(v7);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  v11 = objc_msgSend_pcs(v8, v9, v10);

  if (v11)
  {
    objc_msgSend_setMyParticipantPCS_(*(a1 + 40), v12, v11);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 48);
      v18 = v13;
      v21 = objc_msgSend_identityManager(v17, v19, v20);
      v23 = objc_msgSend_PCSServiceStringFromCKServiceType_(v21, v22, *(a1 + 72));
      v24 = *(a1 + 80);
      *buf = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Successfully decrypted a per-participant PCS using our %{public}@ identity: %@", buf, 0x16u);
    }
  }

  v14 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252AC518;
  block[3] = &unk_27854C238;
  v27 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = *(a1 + 64);
  v26 = v15;
  v28 = v16;
  dispatch_async(v14, block);
}

uint64_t sub_2252AC518(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

uint64_t sub_2252AC544(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

uint64_t sub_2252AC570(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_2252AC70C(uint64_t a1, void *a2, void *a3)
{
  v125 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_callbackQueue(*(a1 + 32), v7, v8);
  dispatch_assert_queue_V2(v9);

  v12 = objc_msgSend_myParticipantPCS(v5, v10, v11);
  v13 = MEMORY[0x277CBC880];
  v14 = MEMORY[0x277CBC858];
  if (!v12)
  {
    v35 = 0;
    goto LABEL_20;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Trying to unlock PCS blobs for the share using our PPPCS", buf, 2u);
  }

  v18 = *(a1 + 32);
  v19 = objc_msgSend_pcsData(v5, v16, v17);
  v22 = objc_msgSend_myParticipantPCS(v5, v20, v21);
  v120 = 0;
  v24 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_logFailure_error_(v18, v23, v19, 5, v22, 1, &v120);
  v25 = v120;

  if (v24)
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Successfully decrypted the invited share PCS using our per-participant PCS", buf, 2u);
    }
  }

  v27 = *(a1 + 32);
  v30 = objc_msgSend_publicPCSData(v5, v28, v29);
  v33 = objc_msgSend_myParticipantPCS(v5, v31, v32);
  v119 = 0;
  v35 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_logFailure_error_(v27, v34, v30, 0, v33, 0, &v119);
  v36 = v119;

  if (v35)
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Successfully decrypted the public share PCS using our per-participant PCS", buf, 2u);
    }
  }

  if (!v24)
  {
LABEL_20:
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      v106 = *(a1 + 64);
      v107 = v38;
      v108 = sub_2252927B0(v106);
      *buf = 138543362;
      v122 = v108;
      _os_log_debug_impl(&dword_22506F000, v107, OS_LOG_TYPE_DEBUG, "Trying to unlock the invited PCS using our %{public}@ service identity", buf, 0xCu);
    }

    v41 = *(a1 + 32);
    v42 = objc_msgSend_pcsData(v5, v39, v40);
    v43 = *(a1 + 64);
    v118 = 0;
    v24 = objc_msgSend_createSharePCSFromData_ofType_withService_logFailure_error_(v41, v44, v42, 5, v43, 0, &v118);
    v45 = v118;

    if (v24)
    {
      if (*v13 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v46 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Successfully decrypted the invited share PCS using our identity", buf, 2u);
      }
    }

    if (v35)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if (v35)
  {
LABEL_35:
    v54 = v24 == 0;
    goto LABEL_36;
  }

LABEL_30:
  if (*v13 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v47 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
  {
    v111 = *(a1 + 64);
    v112 = v47;
    v113 = sub_2252927B0(v111);
    *buf = 138543362;
    v122 = v113;
    _os_log_debug_impl(&dword_22506F000, v112, OS_LOG_TYPE_DEBUG, "Trying to unlock the public PCS using our %{public}@ service identity", buf, 0xCu);
  }

  v50 = *(a1 + 32);
  v51 = objc_msgSend_publicPCSData(v5, v48, v49);
  v52 = *(a1 + 64);
  v117 = 0;
  v35 = objc_msgSend_createSharePCSFromData_ofType_withService_logFailure_error_(v50, v53, v51, 0, v52, 0, &v117);

  if (v35)
  {
    goto LABEL_35;
  }

  if (*(a1 + 40))
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v79 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v79, OS_LOG_TYPE_DEBUG, "Trying to unlock the public PCS using the public sharing key", buf, 2u);
    }

    v82 = *(a1 + 32);
    v83 = objc_msgSend_publicPCSData(v5, v80, v81);
    v84 = *(a1 + 40);
    v116 = 0;
    v35 = objc_msgSend_createSharePCSFromData_sharePrivateKey_error_(v82, v85, v83, v84, &v116);
  }

  else
  {
    v35 = 0;
  }

  v54 = v24 == 0;
  if (v24 && !v35)
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v94 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v94, OS_LOG_TYPE_DEBUG, "Trying to unlock the public PCS using the decrypted invited PCS", buf, 2u);
    }

    v97 = *(a1 + 32);
    v98 = objc_msgSend_publicPCSData(v5, v95, v96);
    v115 = 0;
    v35 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v97, v99, v98, 0, v24, &v115);
    v100 = v115;

    v101 = *MEMORY[0x277CBC878];
    v102 = *v13;
    if (!v35 || v100)
    {
      if (v102 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v101);
      }

      v103 = *v14;
      if (!os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_99;
      }

      v109 = *(a1 + 48);
      *buf = 138412290;
      v122 = v109;
      v105 = "Couldn't decrypt public PCS for share %@ using the private PCS. Oh well, moving on.";
    }

    else
    {
      if (v102 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v101);
      }

      v103 = *v14;
      if (!os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_99;
      }

      v104 = *(a1 + 48);
      *buf = 138412290;
      v122 = v104;
      v105 = "Successfully decrypted the public PCS for share %@ using the private PCS";
    }

    _os_log_impl(&dword_22506F000, v103, OS_LOG_TYPE_INFO, v105, buf, 0xCu);
LABEL_99:
  }

  if (!v35)
  {
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v110 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v110, OS_LOG_TYPE_INFO, "Failed to decrypt the public share PCS using our identity", buf, 2u);
    }

    v72 = 0;
    v35 = 0;
    goto LABEL_54;
  }

LABEL_36:
  if (*v13 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v55 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
  {
    v58 = *(a1 + 48);
    *buf = 138412290;
    v122 = v58;
    _os_log_impl(&dword_22506F000, v55, OS_LOG_TYPE_INFO, "We were able to decrypt the share public PCS using our identity for share %@", buf, 0xCu);
  }

  if (v54)
  {
    if (objc_msgSend_publicPermission(v5, v56, v57) != 1 && objc_msgSend_publicPermission(v5, v59, v60))
    {
      v63 = *(a1 + 32);
      v64 = objc_msgSend_pcsData(v5, v61, v62);
      v114 = 0;
      v24 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_logFailure_error_(v63, v65, v64, 5, v35, 0, &v114);
      v66 = v114;

      v67 = *MEMORY[0x277CBC878];
      v68 = *v13;
      if (v24 && !v66)
      {
        if (v68 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v67);
        }

        v69 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
        {
          v70 = *(a1 + 48);
          *buf = 138412290;
          v122 = v70;
          _os_log_impl(&dword_22506F000, v69, OS_LOG_TYPE_INFO, "Unlocked private share PCS for share %@ using the public PCS", buf, 0xCu);
        }

        goto LABEL_67;
      }

      if (v68 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v67);
      }

      v86 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        v87 = *(a1 + 48);
        *buf = 138412546;
        v122 = v87;
        v123 = 2112;
        v124 = v66;
        _os_log_impl(&dword_22506F000, v86, OS_LOG_TYPE_INFO, "Couldn't decrypt share private PCS with public PCS for share %@: %@", buf, 0x16u);
      }

      goto LABEL_66;
    }

    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v71 = *v14;
    v72 = 1;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
    {
      v73 = *(a1 + 48);
      v74 = v71;
      v77 = objc_msgSend_publicPermission(v5, v75, v76);
      *buf = 138412546;
      v122 = v73;
      v123 = 2048;
      v124 = v77;
      _os_log_impl(&dword_22506F000, v74, OS_LOG_TYPE_INFO, "We were able to decrypt the public share PCS for %@ with our identity, but since the share permission is %ld we can't decrypt the private PCS. This might not go well...", buf, 0x16u);
    }

    v24 = 0;
LABEL_54:
    v78 = v24 != 0;
    goto LABEL_69;
  }

LABEL_66:
  if (v24)
  {
LABEL_67:
    objc_msgSend_setPublicPCS_(v5, v56, v35);
    objc_msgSend_setInvitedPCS_(v5, v88, v24);
    CFRelease(v24);
    v89 = 0;
    goto LABEL_77;
  }

  v78 = 0;
  v72 = 1;
LABEL_69:
  if (*v13 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v90 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
  {
    v92 = *(a1 + 48);
    *buf = 138412290;
    v122 = v92;
    _os_log_impl(&dword_22506F000, v90, OS_LOG_TYPE_INFO, "Warn: Couldn't unlock the private share PCS for share %@", buf, 0xCu);
  }

  v89 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v91, *MEMORY[0x277CBC120], 5004, v6, @"Couldn't unlock the private share PCS for share %@", *(a1 + 48));
  if (!v78)
  {
    if (!v72)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  CFRelease(v24);
  if (v72)
  {
LABEL_77:
    CFRelease(v35);
  }

LABEL_78:
  v93 = *(a1 + 56);
  if (v93)
  {
    (*(v93 + 16))(v93, v5, v89);
  }
}